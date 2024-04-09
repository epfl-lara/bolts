; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84578 () Bool)

(assert start!84578)

(declare-fun b_free!20031 () Bool)

(declare-fun b_next!20031 () Bool)

(assert (=> start!84578 (= b_free!20031 (not b_next!20031))))

(declare-fun tp!69882 () Bool)

(declare-fun b_and!32149 () Bool)

(assert (=> start!84578 (= tp!69882 b_and!32149)))

(declare-fun b!988722 () Bool)

(declare-fun res!661393 () Bool)

(declare-fun e!557556 () Bool)

(assert (=> b!988722 (=> (not res!661393) (not e!557556))))

(declare-datatypes ((array!62443 0))(
  ( (array!62444 (arr!30071 (Array (_ BitVec 32) (_ BitVec 64))) (size!30551 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62443)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62443 (_ BitVec 32)) Bool)

(assert (=> b!988722 (= res!661393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!988723 () Bool)

(declare-fun e!557554 () Bool)

(assert (=> b!988723 (= e!557556 e!557554)))

(declare-fun res!661395 () Bool)

(assert (=> b!988723 (=> (not res!661395) (not e!557554))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!988723 (= res!661395 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30071 _keys!1544) from!1932))))))

(declare-datatypes ((V!35979 0))(
  ( (V!35980 (val!11674 Int)) )
))
(declare-datatypes ((ValueCell!11142 0))(
  ( (ValueCellFull!11142 (v!14241 V!35979)) (EmptyCell!11142) )
))
(declare-datatypes ((array!62445 0))(
  ( (array!62446 (arr!30072 (Array (_ BitVec 32) ValueCell!11142)) (size!30552 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62445)

(declare-fun lt!438558 () V!35979)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15622 (ValueCell!11142 V!35979) V!35979)

(declare-fun dynLambda!1868 (Int (_ BitVec 64)) V!35979)

(assert (=> b!988723 (= lt!438558 (get!15622 (select (arr!30072 _values!1278) from!1932) (dynLambda!1868 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35979)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35979)

(declare-datatypes ((tuple2!14974 0))(
  ( (tuple2!14975 (_1!7497 (_ BitVec 64)) (_2!7497 V!35979)) )
))
(declare-datatypes ((List!20925 0))(
  ( (Nil!20922) (Cons!20921 (h!22083 tuple2!14974) (t!29876 List!20925)) )
))
(declare-datatypes ((ListLongMap!13685 0))(
  ( (ListLongMap!13686 (toList!6858 List!20925)) )
))
(declare-fun lt!438554 () ListLongMap!13685)

(declare-fun getCurrentListMapNoExtraKeys!3508 (array!62443 array!62445 (_ BitVec 32) (_ BitVec 32) V!35979 V!35979 (_ BitVec 32) Int) ListLongMap!13685)

(assert (=> b!988723 (= lt!438554 (getCurrentListMapNoExtraKeys!3508 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988724 () Bool)

(declare-fun e!557552 () Bool)

(declare-fun tp_is_empty!23247 () Bool)

(assert (=> b!988724 (= e!557552 tp_is_empty!23247)))

(declare-fun b!988725 () Bool)

(declare-fun res!661389 () Bool)

(assert (=> b!988725 (=> (not res!661389) (not e!557556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988725 (= res!661389 (validKeyInArray!0 (select (arr!30071 _keys!1544) from!1932)))))

(declare-fun b!988726 () Bool)

(declare-fun res!661392 () Bool)

(assert (=> b!988726 (=> (not res!661392) (not e!557556))))

(assert (=> b!988726 (= res!661392 (and (= (size!30552 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30551 _keys!1544) (size!30552 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!988727 () Bool)

(declare-fun e!557553 () Bool)

(declare-fun mapRes!36912 () Bool)

(assert (=> b!988727 (= e!557553 (and e!557552 mapRes!36912))))

(declare-fun condMapEmpty!36912 () Bool)

(declare-fun mapDefault!36912 () ValueCell!11142)

(assert (=> b!988727 (= condMapEmpty!36912 (= (arr!30072 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11142)) mapDefault!36912)))))

(declare-fun b!988728 () Bool)

(declare-fun e!557551 () Bool)

(assert (=> b!988728 (= e!557551 tp_is_empty!23247)))

(declare-fun mapNonEmpty!36912 () Bool)

(declare-fun tp!69881 () Bool)

(assert (=> mapNonEmpty!36912 (= mapRes!36912 (and tp!69881 e!557551))))

(declare-fun mapRest!36912 () (Array (_ BitVec 32) ValueCell!11142))

(declare-fun mapKey!36912 () (_ BitVec 32))

(declare-fun mapValue!36912 () ValueCell!11142)

(assert (=> mapNonEmpty!36912 (= (arr!30072 _values!1278) (store mapRest!36912 mapKey!36912 mapValue!36912))))

(declare-fun b!988730 () Bool)

(declare-fun res!661394 () Bool)

(assert (=> b!988730 (=> (not res!661394) (not e!557556))))

(declare-datatypes ((List!20926 0))(
  ( (Nil!20923) (Cons!20922 (h!22084 (_ BitVec 64)) (t!29877 List!20926)) )
))
(declare-fun arrayNoDuplicates!0 (array!62443 (_ BitVec 32) List!20926) Bool)

(assert (=> b!988730 (= res!661394 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20923))))

(declare-fun b!988731 () Bool)

(assert (=> b!988731 (= e!557554 (not true))))

(declare-fun lt!438553 () ListLongMap!13685)

(declare-fun getCurrentListMap!3872 (array!62443 array!62445 (_ BitVec 32) (_ BitVec 32) V!35979 V!35979 (_ BitVec 32) Int) ListLongMap!13685)

(assert (=> b!988731 (= lt!438553 (getCurrentListMap!3872 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438556 () tuple2!14974)

(declare-fun lt!438557 () tuple2!14974)

(declare-fun +!3040 (ListLongMap!13685 tuple2!14974) ListLongMap!13685)

(assert (=> b!988731 (= (+!3040 (+!3040 lt!438554 lt!438556) lt!438557) (+!3040 (+!3040 lt!438554 lt!438557) lt!438556))))

(assert (=> b!988731 (= lt!438557 (tuple2!14975 (select (arr!30071 _keys!1544) from!1932) lt!438558))))

(assert (=> b!988731 (= lt!438556 (tuple2!14975 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32767 0))(
  ( (Unit!32768) )
))
(declare-fun lt!438555 () Unit!32767)

(declare-fun addCommutativeForDiffKeys!695 (ListLongMap!13685 (_ BitVec 64) V!35979 (_ BitVec 64) V!35979) Unit!32767)

(assert (=> b!988731 (= lt!438555 (addCommutativeForDiffKeys!695 lt!438554 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30071 _keys!1544) from!1932) lt!438558))))

(declare-fun mapIsEmpty!36912 () Bool)

(assert (=> mapIsEmpty!36912 mapRes!36912))

(declare-fun b!988732 () Bool)

(declare-fun res!661391 () Bool)

(assert (=> b!988732 (=> (not res!661391) (not e!557556))))

(assert (=> b!988732 (= res!661391 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30551 _keys!1544))))))

(declare-fun b!988729 () Bool)

(declare-fun res!661390 () Bool)

(assert (=> b!988729 (=> (not res!661390) (not e!557556))))

(assert (=> b!988729 (= res!661390 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!661396 () Bool)

(assert (=> start!84578 (=> (not res!661396) (not e!557556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84578 (= res!661396 (validMask!0 mask!1948))))

(assert (=> start!84578 e!557556))

(assert (=> start!84578 true))

(assert (=> start!84578 tp_is_empty!23247))

(declare-fun array_inv!23089 (array!62445) Bool)

(assert (=> start!84578 (and (array_inv!23089 _values!1278) e!557553)))

(assert (=> start!84578 tp!69882))

(declare-fun array_inv!23090 (array!62443) Bool)

(assert (=> start!84578 (array_inv!23090 _keys!1544)))

(assert (= (and start!84578 res!661396) b!988726))

(assert (= (and b!988726 res!661392) b!988722))

(assert (= (and b!988722 res!661393) b!988730))

(assert (= (and b!988730 res!661394) b!988732))

(assert (= (and b!988732 res!661391) b!988725))

(assert (= (and b!988725 res!661389) b!988729))

(assert (= (and b!988729 res!661390) b!988723))

(assert (= (and b!988723 res!661395) b!988731))

(assert (= (and b!988727 condMapEmpty!36912) mapIsEmpty!36912))

(assert (= (and b!988727 (not condMapEmpty!36912)) mapNonEmpty!36912))

(get-info :version)

(assert (= (and mapNonEmpty!36912 ((_ is ValueCellFull!11142) mapValue!36912)) b!988728))

(assert (= (and b!988727 ((_ is ValueCellFull!11142) mapDefault!36912)) b!988724))

(assert (= start!84578 b!988727))

(declare-fun b_lambda!15117 () Bool)

(assert (=> (not b_lambda!15117) (not b!988723)))

(declare-fun t!29875 () Bool)

(declare-fun tb!6801 () Bool)

(assert (=> (and start!84578 (= defaultEntry!1281 defaultEntry!1281) t!29875) tb!6801))

(declare-fun result!13591 () Bool)

(assert (=> tb!6801 (= result!13591 tp_is_empty!23247)))

(assert (=> b!988723 t!29875))

(declare-fun b_and!32151 () Bool)

(assert (= b_and!32149 (and (=> t!29875 result!13591) b_and!32151)))

(declare-fun m!915935 () Bool)

(assert (=> b!988722 m!915935))

(declare-fun m!915937 () Bool)

(assert (=> start!84578 m!915937))

(declare-fun m!915939 () Bool)

(assert (=> start!84578 m!915939))

(declare-fun m!915941 () Bool)

(assert (=> start!84578 m!915941))

(declare-fun m!915943 () Bool)

(assert (=> b!988731 m!915943))

(declare-fun m!915945 () Bool)

(assert (=> b!988731 m!915945))

(assert (=> b!988731 m!915943))

(declare-fun m!915947 () Bool)

(assert (=> b!988731 m!915947))

(declare-fun m!915949 () Bool)

(assert (=> b!988731 m!915949))

(assert (=> b!988731 m!915947))

(declare-fun m!915951 () Bool)

(assert (=> b!988731 m!915951))

(declare-fun m!915953 () Bool)

(assert (=> b!988731 m!915953))

(declare-fun m!915955 () Bool)

(assert (=> b!988731 m!915955))

(assert (=> b!988731 m!915953))

(assert (=> b!988725 m!915943))

(assert (=> b!988725 m!915943))

(declare-fun m!915957 () Bool)

(assert (=> b!988725 m!915957))

(declare-fun m!915959 () Bool)

(assert (=> b!988730 m!915959))

(declare-fun m!915961 () Bool)

(assert (=> mapNonEmpty!36912 m!915961))

(assert (=> b!988723 m!915943))

(declare-fun m!915963 () Bool)

(assert (=> b!988723 m!915963))

(declare-fun m!915965 () Bool)

(assert (=> b!988723 m!915965))

(declare-fun m!915967 () Bool)

(assert (=> b!988723 m!915967))

(assert (=> b!988723 m!915963))

(assert (=> b!988723 m!915967))

(declare-fun m!915969 () Bool)

(assert (=> b!988723 m!915969))

(check-sat (not mapNonEmpty!36912) (not b_lambda!15117) (not b!988722) (not b!988725) (not b!988723) (not b_next!20031) tp_is_empty!23247 (not start!84578) (not b!988731) b_and!32151 (not b!988730))
(check-sat b_and!32151 (not b_next!20031))
