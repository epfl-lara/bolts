; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84690 () Bool)

(assert start!84690)

(declare-fun b_free!20073 () Bool)

(declare-fun b_next!20073 () Bool)

(assert (=> start!84690 (= b_free!20073 (not b_next!20073))))

(declare-fun tp!70015 () Bool)

(declare-fun b_and!32235 () Bool)

(assert (=> start!84690 (= tp!70015 b_and!32235)))

(declare-fun b!989980 () Bool)

(declare-fun e!558256 () Bool)

(declare-fun e!558257 () Bool)

(declare-fun mapRes!36982 () Bool)

(assert (=> b!989980 (= e!558256 (and e!558257 mapRes!36982))))

(declare-fun condMapEmpty!36982 () Bool)

(declare-datatypes ((V!36035 0))(
  ( (V!36036 (val!11695 Int)) )
))
(declare-datatypes ((ValueCell!11163 0))(
  ( (ValueCellFull!11163 (v!14265 V!36035)) (EmptyCell!11163) )
))
(declare-datatypes ((array!62527 0))(
  ( (array!62528 (arr!30111 (Array (_ BitVec 32) ValueCell!11163)) (size!30591 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62527)

(declare-fun mapDefault!36982 () ValueCell!11163)

(assert (=> b!989980 (= condMapEmpty!36982 (= (arr!30111 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11163)) mapDefault!36982)))))

(declare-fun b!989981 () Bool)

(declare-fun e!558254 () Bool)

(declare-fun tp_is_empty!23289 () Bool)

(assert (=> b!989981 (= e!558254 tp_is_empty!23289)))

(declare-fun b!989982 () Bool)

(declare-fun res!662105 () Bool)

(declare-fun e!558252 () Bool)

(assert (=> b!989982 (=> (not res!662105) (not e!558252))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62529 0))(
  ( (array!62530 (arr!30112 (Array (_ BitVec 32) (_ BitVec 64))) (size!30592 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62529)

(assert (=> b!989982 (= res!662105 (and (= (size!30591 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30592 _keys!1544) (size!30591 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989983 () Bool)

(declare-fun e!558253 () Bool)

(assert (=> b!989983 (= e!558252 e!558253)))

(declare-fun res!662108 () Bool)

(assert (=> b!989983 (=> (not res!662108) (not e!558253))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!989983 (= res!662108 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30112 _keys!1544) from!1932))))))

(declare-fun lt!439183 () V!36035)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15648 (ValueCell!11163 V!36035) V!36035)

(declare-fun dynLambda!1877 (Int (_ BitVec 64)) V!36035)

(assert (=> b!989983 (= lt!439183 (get!15648 (select (arr!30111 _values!1278) from!1932) (dynLambda!1877 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!36035)

(declare-datatypes ((tuple2!15004 0))(
  ( (tuple2!15005 (_1!7512 (_ BitVec 64)) (_2!7512 V!36035)) )
))
(declare-datatypes ((List!20954 0))(
  ( (Nil!20951) (Cons!20950 (h!22112 tuple2!15004) (t!29931 List!20954)) )
))
(declare-datatypes ((ListLongMap!13715 0))(
  ( (ListLongMap!13716 (toList!6873 List!20954)) )
))
(declare-fun lt!439185 () ListLongMap!13715)

(declare-fun zeroValue!1220 () V!36035)

(declare-fun getCurrentListMapNoExtraKeys!3521 (array!62529 array!62527 (_ BitVec 32) (_ BitVec 32) V!36035 V!36035 (_ BitVec 32) Int) ListLongMap!13715)

(assert (=> b!989983 (= lt!439185 (getCurrentListMapNoExtraKeys!3521 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!989984 () Bool)

(declare-fun res!662103 () Bool)

(assert (=> b!989984 (=> (not res!662103) (not e!558252))))

(assert (=> b!989984 (= res!662103 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!989985 () Bool)

(declare-fun res!662109 () Bool)

(assert (=> b!989985 (=> (not res!662109) (not e!558252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62529 (_ BitVec 32)) Bool)

(assert (=> b!989985 (= res!662109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!989986 () Bool)

(assert (=> b!989986 (= e!558253 (not (bvslt from!1932 (size!30591 _values!1278))))))

(declare-fun lt!439182 () ListLongMap!13715)

(declare-fun getCurrentListMap!3882 (array!62529 array!62527 (_ BitVec 32) (_ BitVec 32) V!36035 V!36035 (_ BitVec 32) Int) ListLongMap!13715)

(assert (=> b!989986 (= lt!439182 (getCurrentListMap!3882 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439186 () tuple2!15004)

(declare-fun lt!439184 () tuple2!15004)

(declare-fun +!3051 (ListLongMap!13715 tuple2!15004) ListLongMap!13715)

(assert (=> b!989986 (= (+!3051 (+!3051 lt!439185 lt!439186) lt!439184) (+!3051 (+!3051 lt!439185 lt!439184) lt!439186))))

(assert (=> b!989986 (= lt!439184 (tuple2!15005 (select (arr!30112 _keys!1544) from!1932) lt!439183))))

(assert (=> b!989986 (= lt!439186 (tuple2!15005 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32808 0))(
  ( (Unit!32809) )
))
(declare-fun lt!439187 () Unit!32808)

(declare-fun addCommutativeForDiffKeys!705 (ListLongMap!13715 (_ BitVec 64) V!36035 (_ BitVec 64) V!36035) Unit!32808)

(assert (=> b!989986 (= lt!439187 (addCommutativeForDiffKeys!705 lt!439185 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30112 _keys!1544) from!1932) lt!439183))))

(declare-fun b!989987 () Bool)

(declare-fun res!662104 () Bool)

(assert (=> b!989987 (=> (not res!662104) (not e!558252))))

(assert (=> b!989987 (= res!662104 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30592 _keys!1544))))))

(declare-fun mapNonEmpty!36982 () Bool)

(declare-fun tp!70014 () Bool)

(assert (=> mapNonEmpty!36982 (= mapRes!36982 (and tp!70014 e!558254))))

(declare-fun mapValue!36982 () ValueCell!11163)

(declare-fun mapRest!36982 () (Array (_ BitVec 32) ValueCell!11163))

(declare-fun mapKey!36982 () (_ BitVec 32))

(assert (=> mapNonEmpty!36982 (= (arr!30111 _values!1278) (store mapRest!36982 mapKey!36982 mapValue!36982))))

(declare-fun b!989988 () Bool)

(declare-fun res!662110 () Bool)

(assert (=> b!989988 (=> (not res!662110) (not e!558252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989988 (= res!662110 (validKeyInArray!0 (select (arr!30112 _keys!1544) from!1932)))))

(declare-fun b!989989 () Bool)

(assert (=> b!989989 (= e!558257 tp_is_empty!23289)))

(declare-fun res!662107 () Bool)

(assert (=> start!84690 (=> (not res!662107) (not e!558252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84690 (= res!662107 (validMask!0 mask!1948))))

(assert (=> start!84690 e!558252))

(assert (=> start!84690 true))

(assert (=> start!84690 tp_is_empty!23289))

(declare-fun array_inv!23121 (array!62527) Bool)

(assert (=> start!84690 (and (array_inv!23121 _values!1278) e!558256)))

(assert (=> start!84690 tp!70015))

(declare-fun array_inv!23122 (array!62529) Bool)

(assert (=> start!84690 (array_inv!23122 _keys!1544)))

(declare-fun mapIsEmpty!36982 () Bool)

(assert (=> mapIsEmpty!36982 mapRes!36982))

(declare-fun b!989990 () Bool)

(declare-fun res!662106 () Bool)

(assert (=> b!989990 (=> (not res!662106) (not e!558252))))

(declare-datatypes ((List!20955 0))(
  ( (Nil!20952) (Cons!20951 (h!22113 (_ BitVec 64)) (t!29932 List!20955)) )
))
(declare-fun arrayNoDuplicates!0 (array!62529 (_ BitVec 32) List!20955) Bool)

(assert (=> b!989990 (= res!662106 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20952))))

(assert (= (and start!84690 res!662107) b!989982))

(assert (= (and b!989982 res!662105) b!989985))

(assert (= (and b!989985 res!662109) b!989990))

(assert (= (and b!989990 res!662106) b!989987))

(assert (= (and b!989987 res!662104) b!989988))

(assert (= (and b!989988 res!662110) b!989984))

(assert (= (and b!989984 res!662103) b!989983))

(assert (= (and b!989983 res!662108) b!989986))

(assert (= (and b!989980 condMapEmpty!36982) mapIsEmpty!36982))

(assert (= (and b!989980 (not condMapEmpty!36982)) mapNonEmpty!36982))

(get-info :version)

(assert (= (and mapNonEmpty!36982 ((_ is ValueCellFull!11163) mapValue!36982)) b!989981))

(assert (= (and b!989980 ((_ is ValueCellFull!11163) mapDefault!36982)) b!989989))

(assert (= start!84690 b!989980))

(declare-fun b_lambda!15183 () Bool)

(assert (=> (not b_lambda!15183) (not b!989983)))

(declare-fun t!29930 () Bool)

(declare-fun tb!6827 () Bool)

(assert (=> (and start!84690 (= defaultEntry!1281 defaultEntry!1281) t!29930) tb!6827))

(declare-fun result!13647 () Bool)

(assert (=> tb!6827 (= result!13647 tp_is_empty!23289)))

(assert (=> b!989983 t!29930))

(declare-fun b_and!32237 () Bool)

(assert (= b_and!32235 (and (=> t!29930 result!13647) b_and!32237)))

(declare-fun m!917487 () Bool)

(assert (=> start!84690 m!917487))

(declare-fun m!917489 () Bool)

(assert (=> start!84690 m!917489))

(declare-fun m!917491 () Bool)

(assert (=> start!84690 m!917491))

(declare-fun m!917493 () Bool)

(assert (=> b!989986 m!917493))

(declare-fun m!917495 () Bool)

(assert (=> b!989986 m!917495))

(assert (=> b!989986 m!917493))

(declare-fun m!917497 () Bool)

(assert (=> b!989986 m!917497))

(declare-fun m!917499 () Bool)

(assert (=> b!989986 m!917499))

(declare-fun m!917501 () Bool)

(assert (=> b!989986 m!917501))

(declare-fun m!917503 () Bool)

(assert (=> b!989986 m!917503))

(assert (=> b!989986 m!917495))

(declare-fun m!917505 () Bool)

(assert (=> b!989986 m!917505))

(assert (=> b!989986 m!917499))

(declare-fun m!917507 () Bool)

(assert (=> b!989990 m!917507))

(declare-fun m!917509 () Bool)

(assert (=> b!989985 m!917509))

(assert (=> b!989988 m!917493))

(assert (=> b!989988 m!917493))

(declare-fun m!917511 () Bool)

(assert (=> b!989988 m!917511))

(assert (=> b!989983 m!917493))

(declare-fun m!917513 () Bool)

(assert (=> b!989983 m!917513))

(declare-fun m!917515 () Bool)

(assert (=> b!989983 m!917515))

(declare-fun m!917517 () Bool)

(assert (=> b!989983 m!917517))

(assert (=> b!989983 m!917513))

(assert (=> b!989983 m!917517))

(declare-fun m!917519 () Bool)

(assert (=> b!989983 m!917519))

(declare-fun m!917521 () Bool)

(assert (=> mapNonEmpty!36982 m!917521))

(check-sat tp_is_empty!23289 (not b!989986) (not mapNonEmpty!36982) (not start!84690) (not b!989990) (not b_lambda!15183) (not b!989985) (not b!989983) b_and!32237 (not b_next!20073) (not b!989988))
(check-sat b_and!32237 (not b_next!20073))
