; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84684 () Bool)

(assert start!84684)

(declare-fun b_free!20067 () Bool)

(declare-fun b_next!20067 () Bool)

(assert (=> start!84684 (= b_free!20067 (not b_next!20067))))

(declare-fun tp!69997 () Bool)

(declare-fun b_and!32223 () Bool)

(assert (=> start!84684 (= tp!69997 b_and!32223)))

(declare-fun b!989875 () Bool)

(declare-fun res!662034 () Bool)

(declare-fun e!558201 () Bool)

(assert (=> b!989875 (=> (not res!662034) (not e!558201))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62515 0))(
  ( (array!62516 (arr!30105 (Array (_ BitVec 32) (_ BitVec 64))) (size!30585 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62515)

(assert (=> b!989875 (= res!662034 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30585 _keys!1544))))))

(declare-fun b!989876 () Bool)

(declare-fun e!558203 () Bool)

(assert (=> b!989876 (= e!558201 e!558203)))

(declare-fun res!662031 () Bool)

(assert (=> b!989876 (=> (not res!662031) (not e!558203))))

(assert (=> b!989876 (= res!662031 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30105 _keys!1544) from!1932))))))

(declare-datatypes ((V!36027 0))(
  ( (V!36028 (val!11692 Int)) )
))
(declare-fun lt!439131 () V!36027)

(declare-datatypes ((ValueCell!11160 0))(
  ( (ValueCellFull!11160 (v!14262 V!36027)) (EmptyCell!11160) )
))
(declare-datatypes ((array!62517 0))(
  ( (array!62518 (arr!30106 (Array (_ BitVec 32) ValueCell!11160)) (size!30586 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62517)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15644 (ValueCell!11160 V!36027) V!36027)

(declare-fun dynLambda!1875 (Int (_ BitVec 64)) V!36027)

(assert (=> b!989876 (= lt!439131 (get!15644 (select (arr!30106 _values!1278) from!1932) (dynLambda!1875 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!36027)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!36027)

(declare-datatypes ((tuple2!14998 0))(
  ( (tuple2!14999 (_1!7509 (_ BitVec 64)) (_2!7509 V!36027)) )
))
(declare-datatypes ((List!20948 0))(
  ( (Nil!20945) (Cons!20944 (h!22106 tuple2!14998) (t!29919 List!20948)) )
))
(declare-datatypes ((ListLongMap!13709 0))(
  ( (ListLongMap!13710 (toList!6870 List!20948)) )
))
(declare-fun lt!439133 () ListLongMap!13709)

(declare-fun getCurrentListMapNoExtraKeys!3519 (array!62515 array!62517 (_ BitVec 32) (_ BitVec 32) V!36027 V!36027 (_ BitVec 32) Int) ListLongMap!13709)

(assert (=> b!989876 (= lt!439133 (getCurrentListMapNoExtraKeys!3519 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!989877 () Bool)

(declare-fun res!662037 () Bool)

(assert (=> b!989877 (=> (not res!662037) (not e!558201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989877 (= res!662037 (validKeyInArray!0 (select (arr!30105 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36973 () Bool)

(declare-fun mapRes!36973 () Bool)

(assert (=> mapIsEmpty!36973 mapRes!36973))

(declare-fun b!989879 () Bool)

(assert (=> b!989879 (= e!558203 (not true))))

(declare-fun lt!439132 () ListLongMap!13709)

(declare-fun getCurrentListMap!3879 (array!62515 array!62517 (_ BitVec 32) (_ BitVec 32) V!36027 V!36027 (_ BitVec 32) Int) ListLongMap!13709)

(assert (=> b!989879 (= lt!439132 (getCurrentListMap!3879 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439130 () tuple2!14998)

(declare-fun lt!439128 () tuple2!14998)

(declare-fun +!3048 (ListLongMap!13709 tuple2!14998) ListLongMap!13709)

(assert (=> b!989879 (= (+!3048 (+!3048 lt!439133 lt!439130) lt!439128) (+!3048 (+!3048 lt!439133 lt!439128) lt!439130))))

(assert (=> b!989879 (= lt!439128 (tuple2!14999 (select (arr!30105 _keys!1544) from!1932) lt!439131))))

(assert (=> b!989879 (= lt!439130 (tuple2!14999 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32802 0))(
  ( (Unit!32803) )
))
(declare-fun lt!439129 () Unit!32802)

(declare-fun addCommutativeForDiffKeys!702 (ListLongMap!13709 (_ BitVec 64) V!36027 (_ BitVec 64) V!36027) Unit!32802)

(assert (=> b!989879 (= lt!439129 (addCommutativeForDiffKeys!702 lt!439133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30105 _keys!1544) from!1932) lt!439131))))

(declare-fun b!989880 () Bool)

(declare-fun res!662033 () Bool)

(assert (=> b!989880 (=> (not res!662033) (not e!558201))))

(assert (=> b!989880 (= res!662033 (and (= (size!30586 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30585 _keys!1544) (size!30586 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989881 () Bool)

(declare-fun e!558199 () Bool)

(declare-fun tp_is_empty!23283 () Bool)

(assert (=> b!989881 (= e!558199 tp_is_empty!23283)))

(declare-fun b!989882 () Bool)

(declare-fun res!662035 () Bool)

(assert (=> b!989882 (=> (not res!662035) (not e!558201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62515 (_ BitVec 32)) Bool)

(assert (=> b!989882 (= res!662035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!989883 () Bool)

(declare-fun res!662038 () Bool)

(assert (=> b!989883 (=> (not res!662038) (not e!558201))))

(assert (=> b!989883 (= res!662038 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!989884 () Bool)

(declare-fun e!558200 () Bool)

(assert (=> b!989884 (= e!558200 tp_is_empty!23283)))

(declare-fun res!662032 () Bool)

(assert (=> start!84684 (=> (not res!662032) (not e!558201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84684 (= res!662032 (validMask!0 mask!1948))))

(assert (=> start!84684 e!558201))

(assert (=> start!84684 true))

(assert (=> start!84684 tp_is_empty!23283))

(declare-fun e!558198 () Bool)

(declare-fun array_inv!23115 (array!62517) Bool)

(assert (=> start!84684 (and (array_inv!23115 _values!1278) e!558198)))

(assert (=> start!84684 tp!69997))

(declare-fun array_inv!23116 (array!62515) Bool)

(assert (=> start!84684 (array_inv!23116 _keys!1544)))

(declare-fun b!989878 () Bool)

(assert (=> b!989878 (= e!558198 (and e!558199 mapRes!36973))))

(declare-fun condMapEmpty!36973 () Bool)

(declare-fun mapDefault!36973 () ValueCell!11160)

(assert (=> b!989878 (= condMapEmpty!36973 (= (arr!30106 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11160)) mapDefault!36973)))))

(declare-fun b!989885 () Bool)

(declare-fun res!662036 () Bool)

(assert (=> b!989885 (=> (not res!662036) (not e!558201))))

(declare-datatypes ((List!20949 0))(
  ( (Nil!20946) (Cons!20945 (h!22107 (_ BitVec 64)) (t!29920 List!20949)) )
))
(declare-fun arrayNoDuplicates!0 (array!62515 (_ BitVec 32) List!20949) Bool)

(assert (=> b!989885 (= res!662036 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20946))))

(declare-fun mapNonEmpty!36973 () Bool)

(declare-fun tp!69996 () Bool)

(assert (=> mapNonEmpty!36973 (= mapRes!36973 (and tp!69996 e!558200))))

(declare-fun mapRest!36973 () (Array (_ BitVec 32) ValueCell!11160))

(declare-fun mapValue!36973 () ValueCell!11160)

(declare-fun mapKey!36973 () (_ BitVec 32))

(assert (=> mapNonEmpty!36973 (= (arr!30106 _values!1278) (store mapRest!36973 mapKey!36973 mapValue!36973))))

(assert (= (and start!84684 res!662032) b!989880))

(assert (= (and b!989880 res!662033) b!989882))

(assert (= (and b!989882 res!662035) b!989885))

(assert (= (and b!989885 res!662036) b!989875))

(assert (= (and b!989875 res!662034) b!989877))

(assert (= (and b!989877 res!662037) b!989883))

(assert (= (and b!989883 res!662038) b!989876))

(assert (= (and b!989876 res!662031) b!989879))

(assert (= (and b!989878 condMapEmpty!36973) mapIsEmpty!36973))

(assert (= (and b!989878 (not condMapEmpty!36973)) mapNonEmpty!36973))

(get-info :version)

(assert (= (and mapNonEmpty!36973 ((_ is ValueCellFull!11160) mapValue!36973)) b!989884))

(assert (= (and b!989878 ((_ is ValueCellFull!11160) mapDefault!36973)) b!989881))

(assert (= start!84684 b!989878))

(declare-fun b_lambda!15177 () Bool)

(assert (=> (not b_lambda!15177) (not b!989876)))

(declare-fun t!29918 () Bool)

(declare-fun tb!6821 () Bool)

(assert (=> (and start!84684 (= defaultEntry!1281 defaultEntry!1281) t!29918) tb!6821))

(declare-fun result!13635 () Bool)

(assert (=> tb!6821 (= result!13635 tp_is_empty!23283)))

(assert (=> b!989876 t!29918))

(declare-fun b_and!32225 () Bool)

(assert (= b_and!32223 (and (=> t!29918 result!13635) b_and!32225)))

(declare-fun m!917379 () Bool)

(assert (=> start!84684 m!917379))

(declare-fun m!917381 () Bool)

(assert (=> start!84684 m!917381))

(declare-fun m!917383 () Bool)

(assert (=> start!84684 m!917383))

(declare-fun m!917385 () Bool)

(assert (=> b!989885 m!917385))

(declare-fun m!917387 () Bool)

(assert (=> b!989879 m!917387))

(declare-fun m!917389 () Bool)

(assert (=> b!989879 m!917389))

(declare-fun m!917391 () Bool)

(assert (=> b!989879 m!917391))

(declare-fun m!917393 () Bool)

(assert (=> b!989879 m!917393))

(declare-fun m!917395 () Bool)

(assert (=> b!989879 m!917395))

(declare-fun m!917397 () Bool)

(assert (=> b!989879 m!917397))

(assert (=> b!989879 m!917387))

(declare-fun m!917399 () Bool)

(assert (=> b!989879 m!917399))

(assert (=> b!989879 m!917389))

(assert (=> b!989879 m!917395))

(declare-fun m!917401 () Bool)

(assert (=> b!989882 m!917401))

(declare-fun m!917403 () Bool)

(assert (=> mapNonEmpty!36973 m!917403))

(assert (=> b!989877 m!917387))

(assert (=> b!989877 m!917387))

(declare-fun m!917405 () Bool)

(assert (=> b!989877 m!917405))

(assert (=> b!989876 m!917387))

(declare-fun m!917407 () Bool)

(assert (=> b!989876 m!917407))

(declare-fun m!917409 () Bool)

(assert (=> b!989876 m!917409))

(declare-fun m!917411 () Bool)

(assert (=> b!989876 m!917411))

(assert (=> b!989876 m!917407))

(assert (=> b!989876 m!917411))

(declare-fun m!917413 () Bool)

(assert (=> b!989876 m!917413))

(check-sat tp_is_empty!23283 (not b!989879) (not b!989882) (not b!989885) b_and!32225 (not b_lambda!15177) (not start!84684) (not b!989876) (not mapNonEmpty!36973) (not b!989877) (not b_next!20067))
(check-sat b_and!32225 (not b_next!20067))
