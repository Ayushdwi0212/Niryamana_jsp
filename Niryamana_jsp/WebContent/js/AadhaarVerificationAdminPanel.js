Vue.component("Aadhaar-table", {
	template: ``,

			data() {
				return {isVisible: false}
			}
})

new Vue({
	el: '#content',
	data: {
		AadhaarData: {
			UID: '',
			AadhaarImage: '',
			userImage: '',
		},

		AadhaarDataArray: [],
	},
})