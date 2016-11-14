var/global/update_ready = 0
var/global/updater_key = ""

/client/proc/update_server()
	set category = "Server"
	set name = "Update Server"
	if (!usr.client.holder)
		return
	var/confirm = alert("�� ������ �������� ������?", "��������, �����", "��� ��������", "����� ������", "��������")
	if(confirm == "��������")
		if(update_ready == 1)
			update_ready = 0
			message_admins("[key_name_admin(usr)] ������� ���������� ������� � ����� ������.")
			log_game("[key_name_admin(usr)] ������� ���������� ������� � ����� ������.")
			to_world("<span class='danger'>[usr.key] ������� ���������� ������� � ����� ������.</span>")
		else
			return
	if(confirm == "��� ��������")
		message_admins("[key_name_admin(usr)] ����������� ���������� ������� � ����� �������� ������.")
		log_game("[key_name_admin(usr)] ����������� ���������� ������� � ����� �������� ������.")
		to_world("<span class='danger'>[usr.key] ����������� ���������� ������� � ����� �������� ������. ������ ����� ���������� �� ���� �����, � ����� ������������� �������.</span>")
		updater_key = usr.key
		update_ready = 1
	if(confirm == "����� ������")
		updater_key = usr.key
		update_ready = 1
		reboot_updating()

/proc/reboot_updating()
	if(update_ready == 0)
		return
	to_world("<span class='danger'><FONT size=5>��������, ������������&#255; ���������&#255; �������!</FONT><br>���������� ������ ��������� �����, ����� ���� ������ ����� ������������� �������. ���������: [updater_key]</span>.")
	shell("sh update_server.sh")
