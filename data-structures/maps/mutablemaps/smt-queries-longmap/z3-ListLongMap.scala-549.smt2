; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14594 () Bool)

(assert start!14594)

(declare-fun b!138122 () Bool)

(declare-fun b_free!2981 () Bool)

(declare-fun b_next!2981 () Bool)

(assert (=> b!138122 (= b_free!2981 (not b_next!2981))))

(declare-fun tp!11406 () Bool)

(declare-fun b_and!8617 () Bool)

(assert (=> b!138122 (= tp!11406 b_and!8617)))

(declare-fun b!138131 () Bool)

(declare-fun b_free!2983 () Bool)

(declare-fun b_next!2983 () Bool)

(assert (=> b!138131 (= b_free!2983 (not b_next!2983))))

(declare-fun tp!11404 () Bool)

(declare-fun b_and!8619 () Bool)

(assert (=> b!138131 (= tp!11404 b_and!8619)))

(declare-fun mapIsEmpty!4751 () Bool)

(declare-fun mapRes!4751 () Bool)

(assert (=> mapIsEmpty!4751 mapRes!4751))

(declare-fun mapNonEmpty!4751 () Bool)

(declare-fun mapRes!4752 () Bool)

(declare-fun tp!11405 () Bool)

(declare-fun e!90009 () Bool)

(assert (=> mapNonEmpty!4751 (= mapRes!4752 (and tp!11405 e!90009))))

(declare-datatypes ((V!3523 0))(
  ( (V!3524 (val!1498 Int)) )
))
(declare-datatypes ((array!4844 0))(
  ( (array!4845 (arr!2290 (Array (_ BitVec 32) (_ BitVec 64))) (size!2561 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1110 0))(
  ( (ValueCellFull!1110 (v!3247 V!3523)) (EmptyCell!1110) )
))
(declare-datatypes ((array!4846 0))(
  ( (array!4847 (arr!2291 (Array (_ BitVec 32) ValueCell!1110)) (size!2562 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1128 0))(
  ( (LongMapFixedSize!1129 (defaultEntry!2916 Int) (mask!7244 (_ BitVec 32)) (extraKeys!2673 (_ BitVec 32)) (zeroValue!2767 V!3523) (minValue!2767 V!3523) (_size!613 (_ BitVec 32)) (_keys!4673 array!4844) (_values!2899 array!4846) (_vacant!613 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!916 0))(
  ( (Cell!917 (v!3248 LongMapFixedSize!1128)) )
))
(declare-datatypes ((LongMap!916 0))(
  ( (LongMap!917 (underlying!469 Cell!916)) )
))
(declare-fun thiss!992 () LongMap!916)

(declare-fun mapValue!4751 () ValueCell!1110)

(declare-fun mapKey!4752 () (_ BitVec 32))

(declare-fun mapRest!4752 () (Array (_ BitVec 32) ValueCell!1110))

(assert (=> mapNonEmpty!4751 (= (arr!2291 (_values!2899 (v!3248 (underlying!469 thiss!992)))) (store mapRest!4752 mapKey!4752 mapValue!4751))))

(declare-fun b!138116 () Bool)

(declare-fun e!90006 () Bool)

(declare-fun e!90011 () Bool)

(assert (=> b!138116 (= e!90006 e!90011)))

(declare-fun b!138117 () Bool)

(declare-fun e!90005 () Bool)

(declare-fun e!90001 () Bool)

(assert (=> b!138117 (= e!90005 (and e!90001 mapRes!4751))))

(declare-fun condMapEmpty!4752 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1128)

(declare-fun mapDefault!4752 () ValueCell!1110)

(assert (=> b!138117 (= condMapEmpty!4752 (= (arr!2291 (_values!2899 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1110)) mapDefault!4752)))))

(declare-fun b!138118 () Bool)

(declare-fun tp_is_empty!2907 () Bool)

(assert (=> b!138118 (= e!90001 tp_is_empty!2907)))

(declare-fun mapIsEmpty!4752 () Bool)

(assert (=> mapIsEmpty!4752 mapRes!4752))

(declare-fun b!138119 () Bool)

(assert (=> b!138119 (= e!90009 tp_is_empty!2907)))

(declare-fun b!138120 () Bool)

(declare-fun e!90007 () Bool)

(assert (=> b!138120 (= e!90007 tp_is_empty!2907)))

(declare-fun b!138121 () Bool)

(declare-fun e!90010 () Bool)

(declare-fun e!90012 () Bool)

(assert (=> b!138121 (= e!90010 (and e!90012 mapRes!4752))))

(declare-fun condMapEmpty!4751 () Bool)

(declare-fun mapDefault!4751 () ValueCell!1110)

(assert (=> b!138121 (= condMapEmpty!4751 (= (arr!2291 (_values!2899 (v!3248 (underlying!469 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1110)) mapDefault!4751)))))

(declare-fun mapNonEmpty!4752 () Bool)

(declare-fun tp!11403 () Bool)

(assert (=> mapNonEmpty!4752 (= mapRes!4751 (and tp!11403 e!90007))))

(declare-fun mapValue!4752 () ValueCell!1110)

(declare-fun mapRest!4751 () (Array (_ BitVec 32) ValueCell!1110))

(declare-fun mapKey!4751 () (_ BitVec 32))

(assert (=> mapNonEmpty!4752 (= (arr!2291 (_values!2899 newMap!16)) (store mapRest!4751 mapKey!4751 mapValue!4752))))

(declare-fun e!90002 () Bool)

(declare-fun array_inv!1415 (array!4844) Bool)

(declare-fun array_inv!1416 (array!4846) Bool)

(assert (=> b!138122 (= e!90002 (and tp!11406 tp_is_empty!2907 (array_inv!1415 (_keys!4673 (v!3248 (underlying!469 thiss!992)))) (array_inv!1416 (_values!2899 (v!3248 (underlying!469 thiss!992)))) e!90010))))

(declare-fun b!138123 () Bool)

(declare-fun res!66161 () Bool)

(declare-fun e!90013 () Bool)

(assert (=> b!138123 (=> (not res!66161) (not e!90013))))

(assert (=> b!138123 (= res!66161 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7244 newMap!16)) (_size!613 (v!3248 (underlying!469 thiss!992)))))))

(declare-fun res!66163 () Bool)

(assert (=> start!14594 (=> (not res!66163) (not e!90013))))

(declare-fun valid!540 (LongMap!916) Bool)

(assert (=> start!14594 (= res!66163 (valid!540 thiss!992))))

(assert (=> start!14594 e!90013))

(assert (=> start!14594 e!90006))

(assert (=> start!14594 true))

(declare-fun e!90008 () Bool)

(assert (=> start!14594 e!90008))

(declare-fun b!138124 () Bool)

(assert (=> b!138124 (= e!90011 e!90002)))

(declare-fun b!138125 () Bool)

(assert (=> b!138125 (= e!90012 tp_is_empty!2907)))

(declare-fun b!138126 () Bool)

(declare-fun e!90014 () Bool)

(declare-fun e!90004 () Bool)

(assert (=> b!138126 (= e!90014 e!90004)))

(declare-fun res!66166 () Bool)

(assert (=> b!138126 (=> (not res!66166) (not e!90004))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2646 0))(
  ( (tuple2!2647 (_1!1333 (_ BitVec 64)) (_2!1333 V!3523)) )
))
(declare-datatypes ((List!1748 0))(
  ( (Nil!1745) (Cons!1744 (h!2351 tuple2!2646) (t!6292 List!1748)) )
))
(declare-datatypes ((ListLongMap!1727 0))(
  ( (ListLongMap!1728 (toList!879 List!1748)) )
))
(declare-fun lt!72263 () ListLongMap!1727)

(declare-fun contains!909 (ListLongMap!1727 (_ BitVec 64)) Bool)

(assert (=> b!138126 (= res!66166 (contains!909 lt!72263 (select (arr!2290 (_keys!4673 (v!3248 (underlying!469 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2648 0))(
  ( (tuple2!2649 (_1!1334 Bool) (_2!1334 LongMapFixedSize!1128)) )
))
(declare-fun lt!72265 () tuple2!2648)

(declare-fun update!201 (LongMapFixedSize!1128 (_ BitVec 64) V!3523) tuple2!2648)

(declare-fun get!1513 (ValueCell!1110 V!3523) V!3523)

(declare-fun dynLambda!434 (Int (_ BitVec 64)) V!3523)

(assert (=> b!138126 (= lt!72265 (update!201 newMap!16 (select (arr!2290 (_keys!4673 (v!3248 (underlying!469 thiss!992)))) from!355) (get!1513 (select (arr!2291 (_values!2899 (v!3248 (underlying!469 thiss!992)))) from!355) (dynLambda!434 (defaultEntry!2916 (v!3248 (underlying!469 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!138127 () Bool)

(declare-fun res!66164 () Bool)

(assert (=> b!138127 (=> (not res!66164) (not e!90013))))

(declare-fun valid!541 (LongMapFixedSize!1128) Bool)

(assert (=> b!138127 (= res!66164 (valid!541 newMap!16))))

(declare-fun b!138128 () Bool)

(assert (=> b!138128 (= e!90013 e!90014)))

(declare-fun res!66162 () Bool)

(assert (=> b!138128 (=> (not res!66162) (not e!90014))))

(declare-fun lt!72264 () ListLongMap!1727)

(assert (=> b!138128 (= res!66162 (and (= lt!72264 lt!72263) (not (= (select (arr!2290 (_keys!4673 (v!3248 (underlying!469 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2290 (_keys!4673 (v!3248 (underlying!469 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1423 (LongMapFixedSize!1128) ListLongMap!1727)

(assert (=> b!138128 (= lt!72263 (map!1423 newMap!16))))

(declare-fun getCurrentListMap!548 (array!4844 array!4846 (_ BitVec 32) (_ BitVec 32) V!3523 V!3523 (_ BitVec 32) Int) ListLongMap!1727)

(assert (=> b!138128 (= lt!72264 (getCurrentListMap!548 (_keys!4673 (v!3248 (underlying!469 thiss!992))) (_values!2899 (v!3248 (underlying!469 thiss!992))) (mask!7244 (v!3248 (underlying!469 thiss!992))) (extraKeys!2673 (v!3248 (underlying!469 thiss!992))) (zeroValue!2767 (v!3248 (underlying!469 thiss!992))) (minValue!2767 (v!3248 (underlying!469 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2916 (v!3248 (underlying!469 thiss!992)))))))

(declare-fun b!138129 () Bool)

(assert (=> b!138129 (= e!90004 (not (or (bvsge (size!2561 (_keys!4673 (v!3248 (underlying!469 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!2561 (_keys!4673 (v!3248 (underlying!469 thiss!992))))) (bvsle from!355 (size!2561 (_keys!4673 (v!3248 (underlying!469 thiss!992))))))))))

(declare-fun arrayContainsKey!0 (array!4844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!138129 (arrayContainsKey!0 (_keys!4673 (v!3248 (underlying!469 thiss!992))) (select (arr!2290 (_keys!4673 (v!3248 (underlying!469 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!4362 0))(
  ( (Unit!4363) )
))
(declare-fun lt!72266 () Unit!4362)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!138 (array!4844 array!4846 (_ BitVec 32) (_ BitVec 32) V!3523 V!3523 (_ BitVec 64) (_ BitVec 32) Int) Unit!4362)

(assert (=> b!138129 (= lt!72266 (lemmaListMapContainsThenArrayContainsFrom!138 (_keys!4673 (v!3248 (underlying!469 thiss!992))) (_values!2899 (v!3248 (underlying!469 thiss!992))) (mask!7244 (v!3248 (underlying!469 thiss!992))) (extraKeys!2673 (v!3248 (underlying!469 thiss!992))) (zeroValue!2767 (v!3248 (underlying!469 thiss!992))) (minValue!2767 (v!3248 (underlying!469 thiss!992))) (select (arr!2290 (_keys!4673 (v!3248 (underlying!469 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2916 (v!3248 (underlying!469 thiss!992)))))))

(declare-fun b!138130 () Bool)

(declare-fun res!66165 () Bool)

(assert (=> b!138130 (=> (not res!66165) (not e!90013))))

(assert (=> b!138130 (= res!66165 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2561 (_keys!4673 (v!3248 (underlying!469 thiss!992)))))))))

(assert (=> b!138131 (= e!90008 (and tp!11404 tp_is_empty!2907 (array_inv!1415 (_keys!4673 newMap!16)) (array_inv!1416 (_values!2899 newMap!16)) e!90005))))

(assert (= (and start!14594 res!66163) b!138130))

(assert (= (and b!138130 res!66165) b!138127))

(assert (= (and b!138127 res!66164) b!138123))

(assert (= (and b!138123 res!66161) b!138128))

(assert (= (and b!138128 res!66162) b!138126))

(assert (= (and b!138126 res!66166) b!138129))

(assert (= (and b!138121 condMapEmpty!4751) mapIsEmpty!4752))

(assert (= (and b!138121 (not condMapEmpty!4751)) mapNonEmpty!4751))

(get-info :version)

(assert (= (and mapNonEmpty!4751 ((_ is ValueCellFull!1110) mapValue!4751)) b!138119))

(assert (= (and b!138121 ((_ is ValueCellFull!1110) mapDefault!4751)) b!138125))

(assert (= b!138122 b!138121))

(assert (= b!138124 b!138122))

(assert (= b!138116 b!138124))

(assert (= start!14594 b!138116))

(assert (= (and b!138117 condMapEmpty!4752) mapIsEmpty!4751))

(assert (= (and b!138117 (not condMapEmpty!4752)) mapNonEmpty!4752))

(assert (= (and mapNonEmpty!4752 ((_ is ValueCellFull!1110) mapValue!4752)) b!138120))

(assert (= (and b!138117 ((_ is ValueCellFull!1110) mapDefault!4752)) b!138118))

(assert (= b!138131 b!138117))

(assert (= start!14594 b!138131))

(declare-fun b_lambda!6225 () Bool)

(assert (=> (not b_lambda!6225) (not b!138126)))

(declare-fun t!6289 () Bool)

(declare-fun tb!2505 () Bool)

(assert (=> (and b!138122 (= (defaultEntry!2916 (v!3248 (underlying!469 thiss!992))) (defaultEntry!2916 (v!3248 (underlying!469 thiss!992)))) t!6289) tb!2505))

(declare-fun result!4109 () Bool)

(assert (=> tb!2505 (= result!4109 tp_is_empty!2907)))

(assert (=> b!138126 t!6289))

(declare-fun b_and!8621 () Bool)

(assert (= b_and!8617 (and (=> t!6289 result!4109) b_and!8621)))

(declare-fun t!6291 () Bool)

(declare-fun tb!2507 () Bool)

(assert (=> (and b!138131 (= (defaultEntry!2916 newMap!16) (defaultEntry!2916 (v!3248 (underlying!469 thiss!992)))) t!6291) tb!2507))

(declare-fun result!4113 () Bool)

(assert (= result!4113 result!4109))

(assert (=> b!138126 t!6291))

(declare-fun b_and!8623 () Bool)

(assert (= b_and!8619 (and (=> t!6291 result!4113) b_and!8623)))

(declare-fun m!165389 () Bool)

(assert (=> mapNonEmpty!4752 m!165389))

(declare-fun m!165391 () Bool)

(assert (=> b!138128 m!165391))

(declare-fun m!165393 () Bool)

(assert (=> b!138128 m!165393))

(declare-fun m!165395 () Bool)

(assert (=> b!138128 m!165395))

(declare-fun m!165397 () Bool)

(assert (=> b!138131 m!165397))

(declare-fun m!165399 () Bool)

(assert (=> b!138131 m!165399))

(declare-fun m!165401 () Bool)

(assert (=> mapNonEmpty!4751 m!165401))

(assert (=> b!138129 m!165391))

(assert (=> b!138129 m!165391))

(declare-fun m!165403 () Bool)

(assert (=> b!138129 m!165403))

(assert (=> b!138129 m!165391))

(declare-fun m!165405 () Bool)

(assert (=> b!138129 m!165405))

(declare-fun m!165407 () Bool)

(assert (=> b!138127 m!165407))

(declare-fun m!165409 () Bool)

(assert (=> start!14594 m!165409))

(assert (=> b!138126 m!165391))

(declare-fun m!165411 () Bool)

(assert (=> b!138126 m!165411))

(declare-fun m!165413 () Bool)

(assert (=> b!138126 m!165413))

(declare-fun m!165415 () Bool)

(assert (=> b!138126 m!165415))

(declare-fun m!165417 () Bool)

(assert (=> b!138126 m!165417))

(assert (=> b!138126 m!165391))

(assert (=> b!138126 m!165415))

(assert (=> b!138126 m!165391))

(assert (=> b!138126 m!165417))

(declare-fun m!165419 () Bool)

(assert (=> b!138126 m!165419))

(assert (=> b!138126 m!165413))

(declare-fun m!165421 () Bool)

(assert (=> b!138122 m!165421))

(declare-fun m!165423 () Bool)

(assert (=> b!138122 m!165423))

(check-sat (not b!138129) tp_is_empty!2907 (not b_next!2981) (not b_next!2983) b_and!8621 (not mapNonEmpty!4752) (not b_lambda!6225) (not b!138122) (not b!138127) (not mapNonEmpty!4751) (not start!14594) b_and!8623 (not b!138131) (not b!138126) (not b!138128))
(check-sat b_and!8621 b_and!8623 (not b_next!2981) (not b_next!2983))
