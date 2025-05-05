abstract class ILoginFormRepository{
  Future <bool> login({required String email,required password});
  Future <void> storetoken({required String token});
}