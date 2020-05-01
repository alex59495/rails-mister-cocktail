import 'select2'
import 'select2/dist/css/select2.css';
import $ from 'jquery'

const dropDownList = () => {
  if ($('#dose_ingredient_id')) {
    $('#dose_ingredient_id').select2();
  }
    
}
export { dropDownList };