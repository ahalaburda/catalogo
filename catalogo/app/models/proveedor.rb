class Proveedor < ActiveRecord::Base
	has_many :productos_detalles

	validates :descripcion,
		:presence => {
			message: 'Este campo es requerido'},
		:length => {
			:maximum => 20,
			:too_long => 'debe tener como maximo %{count} caracteres'}

	validates :direccion,
		:presence => {
			message: 'Este campo es requerido'},
		:length => {
			:maximum => 50,
			:too_long => 'Debe tener como maximo %{count} caracteres'}

	validates :sucursal,
		:presence => {
			message: 'Este campo es requerido'},
    :length => {
			:maximum => 20,
			:too_long => 'debe tener como maximo %{count} caracteres'}


	validates :vendedor,
		:presence => {
			message: 'Este campo es requerido'},
		:length => {
			:maximum => 50,
			:too_long => 'Debe tener como maximo %{count} caracteres'}


	validates :telefono,
		:presence => {
			message: 'Este campo es requerido'},
		:length => {
			:maximum => 20,
			:too_long => 'debe tener como maximo %{count} caracteres'},
		:format => {
			with: /\A[0-9]+\z/,
			message: 'solo permite numeros'}
	validates :celular,
		:presence => {
			message: 'Este campo es requerido'},
		:length => {
			:maximum => 20,
			:too_long => 'debe tener como maximo %{count} caracteres'},
		:format => {
			with: /\A[0-9]+\z/,
			message: 'solo permite numeros'}

	validates :email,
		:presence =>{
				message: 'Este campo es requerido'},
		:length =>{
				:maximum => 50,
				:too_long => 'Debe tener como maximo %{count} caracteres'}
end
