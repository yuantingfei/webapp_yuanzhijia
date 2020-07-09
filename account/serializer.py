from rest_framework import serializers
from models import Module,Role,Permission,Account

class ModuleSerializer(serializers.ModelSerializer):
	class Meta:
		model = Module
		fields = '__all__'

class RoleSerializer(serializers.ModelSerializer):
	class Meta:
		model = Role
		fields = '__all__'


class AccountSerializer(serializers.ModelSerializer):
	class Meta:
		model = Account
		fields = '__all__'