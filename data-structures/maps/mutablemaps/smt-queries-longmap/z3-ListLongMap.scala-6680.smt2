; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84082 () Bool)

(assert start!84082)

(declare-fun b_free!19809 () Bool)

(declare-fun b_next!19809 () Bool)

(assert (=> start!84082 (= b_free!19809 (not b_next!19809))))

(declare-fun tp!68951 () Bool)

(declare-fun b_and!31719 () Bool)

(assert (=> start!84082 (= tp!68951 b_and!31719)))

(declare-fun b!982550 () Bool)

(declare-fun res!657638 () Bool)

(declare-fun e!553875 () Bool)

(assert (=> b!982550 (=> (not res!657638) (not e!553875))))

(declare-datatypes ((array!61699 0))(
  ( (array!61700 (arr!29703 (Array (_ BitVec 32) (_ BitVec 64))) (size!30183 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61699)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61699 (_ BitVec 32)) Bool)

(assert (=> b!982550 (= res!657638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982551 () Bool)

(declare-fun res!657633 () Bool)

(assert (=> b!982551 (=> (not res!657633) (not e!553875))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982551 (= res!657633 (validKeyInArray!0 (select (arr!29703 _keys!1544) from!1932)))))

(declare-fun b!982552 () Bool)

(declare-fun res!657632 () Bool)

(assert (=> b!982552 (=> (not res!657632) (not e!553875))))

(declare-datatypes ((V!35459 0))(
  ( (V!35460 (val!11479 Int)) )
))
(declare-datatypes ((ValueCell!10947 0))(
  ( (ValueCellFull!10947 (v!14041 V!35459)) (EmptyCell!10947) )
))
(declare-datatypes ((array!61701 0))(
  ( (array!61702 (arr!29704 (Array (_ BitVec 32) ValueCell!10947)) (size!30184 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61701)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982552 (= res!657632 (and (= (size!30184 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30183 _keys!1544) (size!30184 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982553 () Bool)

(declare-fun res!657634 () Bool)

(assert (=> b!982553 (=> (not res!657634) (not e!553875))))

(declare-datatypes ((List!20716 0))(
  ( (Nil!20713) (Cons!20712 (h!21874 (_ BitVec 64)) (t!29483 List!20716)) )
))
(declare-fun arrayNoDuplicates!0 (array!61699 (_ BitVec 32) List!20716) Bool)

(assert (=> b!982553 (= res!657634 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20713))))

(declare-fun b!982554 () Bool)

(declare-fun res!657639 () Bool)

(assert (=> b!982554 (=> (not res!657639) (not e!553875))))

(assert (=> b!982554 (= res!657639 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982555 () Bool)

(declare-fun e!553877 () Bool)

(assert (=> b!982555 (= e!553877 (not true))))

(declare-datatypes ((tuple2!14812 0))(
  ( (tuple2!14813 (_1!7416 (_ BitVec 64)) (_2!7416 V!35459)) )
))
(declare-datatypes ((List!20717 0))(
  ( (Nil!20714) (Cons!20713 (h!21875 tuple2!14812) (t!29484 List!20717)) )
))
(declare-datatypes ((ListLongMap!13523 0))(
  ( (ListLongMap!13524 (toList!6777 List!20717)) )
))
(declare-fun lt!436191 () ListLongMap!13523)

(declare-fun lt!436195 () tuple2!14812)

(declare-fun lt!436193 () tuple2!14812)

(declare-fun +!2975 (ListLongMap!13523 tuple2!14812) ListLongMap!13523)

(assert (=> b!982555 (= (+!2975 (+!2975 lt!436191 lt!436195) lt!436193) (+!2975 (+!2975 lt!436191 lt!436193) lt!436195))))

(declare-fun lt!436192 () V!35459)

(assert (=> b!982555 (= lt!436193 (tuple2!14813 (select (arr!29703 _keys!1544) from!1932) lt!436192))))

(declare-fun zeroValue!1220 () V!35459)

(assert (=> b!982555 (= lt!436195 (tuple2!14813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32625 0))(
  ( (Unit!32626) )
))
(declare-fun lt!436194 () Unit!32625)

(declare-fun addCommutativeForDiffKeys!637 (ListLongMap!13523 (_ BitVec 64) V!35459 (_ BitVec 64) V!35459) Unit!32625)

(assert (=> b!982555 (= lt!436194 (addCommutativeForDiffKeys!637 lt!436191 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29703 _keys!1544) from!1932) lt!436192))))

(declare-fun b!982556 () Bool)

(declare-fun res!657636 () Bool)

(assert (=> b!982556 (=> (not res!657636) (not e!553875))))

(assert (=> b!982556 (= res!657636 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30183 _keys!1544))))))

(declare-fun b!982557 () Bool)

(declare-fun e!553876 () Bool)

(declare-fun e!553880 () Bool)

(declare-fun mapRes!36314 () Bool)

(assert (=> b!982557 (= e!553876 (and e!553880 mapRes!36314))))

(declare-fun condMapEmpty!36314 () Bool)

(declare-fun mapDefault!36314 () ValueCell!10947)

(assert (=> b!982557 (= condMapEmpty!36314 (= (arr!29704 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10947)) mapDefault!36314)))))

(declare-fun mapIsEmpty!36314 () Bool)

(assert (=> mapIsEmpty!36314 mapRes!36314))

(declare-fun b!982558 () Bool)

(declare-fun tp_is_empty!22857 () Bool)

(assert (=> b!982558 (= e!553880 tp_is_empty!22857)))

(declare-fun res!657635 () Bool)

(assert (=> start!84082 (=> (not res!657635) (not e!553875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84082 (= res!657635 (validMask!0 mask!1948))))

(assert (=> start!84082 e!553875))

(assert (=> start!84082 true))

(assert (=> start!84082 tp_is_empty!22857))

(declare-fun array_inv!22841 (array!61701) Bool)

(assert (=> start!84082 (and (array_inv!22841 _values!1278) e!553876)))

(assert (=> start!84082 tp!68951))

(declare-fun array_inv!22842 (array!61699) Bool)

(assert (=> start!84082 (array_inv!22842 _keys!1544)))

(declare-fun b!982549 () Bool)

(assert (=> b!982549 (= e!553875 e!553877)))

(declare-fun res!657637 () Bool)

(assert (=> b!982549 (=> (not res!657637) (not e!553877))))

(assert (=> b!982549 (= res!657637 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29703 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15428 (ValueCell!10947 V!35459) V!35459)

(declare-fun dynLambda!1809 (Int (_ BitVec 64)) V!35459)

(assert (=> b!982549 (= lt!436192 (get!15428 (select (arr!29704 _values!1278) from!1932) (dynLambda!1809 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35459)

(declare-fun getCurrentListMapNoExtraKeys!3436 (array!61699 array!61701 (_ BitVec 32) (_ BitVec 32) V!35459 V!35459 (_ BitVec 32) Int) ListLongMap!13523)

(assert (=> b!982549 (= lt!436191 (getCurrentListMapNoExtraKeys!3436 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapNonEmpty!36314 () Bool)

(declare-fun tp!68950 () Bool)

(declare-fun e!553879 () Bool)

(assert (=> mapNonEmpty!36314 (= mapRes!36314 (and tp!68950 e!553879))))

(declare-fun mapKey!36314 () (_ BitVec 32))

(declare-fun mapRest!36314 () (Array (_ BitVec 32) ValueCell!10947))

(declare-fun mapValue!36314 () ValueCell!10947)

(assert (=> mapNonEmpty!36314 (= (arr!29704 _values!1278) (store mapRest!36314 mapKey!36314 mapValue!36314))))

(declare-fun b!982559 () Bool)

(assert (=> b!982559 (= e!553879 tp_is_empty!22857)))

(assert (= (and start!84082 res!657635) b!982552))

(assert (= (and b!982552 res!657632) b!982550))

(assert (= (and b!982550 res!657638) b!982553))

(assert (= (and b!982553 res!657634) b!982556))

(assert (= (and b!982556 res!657636) b!982551))

(assert (= (and b!982551 res!657633) b!982554))

(assert (= (and b!982554 res!657639) b!982549))

(assert (= (and b!982549 res!657637) b!982555))

(assert (= (and b!982557 condMapEmpty!36314) mapIsEmpty!36314))

(assert (= (and b!982557 (not condMapEmpty!36314)) mapNonEmpty!36314))

(get-info :version)

(assert (= (and mapNonEmpty!36314 ((_ is ValueCellFull!10947) mapValue!36314)) b!982559))

(assert (= (and b!982557 ((_ is ValueCellFull!10947) mapDefault!36314)) b!982558))

(assert (= start!84082 b!982557))

(declare-fun b_lambda!14877 () Bool)

(assert (=> (not b_lambda!14877) (not b!982549)))

(declare-fun t!29482 () Bool)

(declare-fun tb!6617 () Bool)

(assert (=> (and start!84082 (= defaultEntry!1281 defaultEntry!1281) t!29482) tb!6617))

(declare-fun result!13215 () Bool)

(assert (=> tb!6617 (= result!13215 tp_is_empty!22857)))

(assert (=> b!982549 t!29482))

(declare-fun b_and!31721 () Bool)

(assert (= b_and!31719 (and (=> t!29482 result!13215) b_and!31721)))

(declare-fun m!909987 () Bool)

(assert (=> mapNonEmpty!36314 m!909987))

(declare-fun m!909989 () Bool)

(assert (=> b!982549 m!909989))

(declare-fun m!909991 () Bool)

(assert (=> b!982549 m!909991))

(declare-fun m!909993 () Bool)

(assert (=> b!982549 m!909993))

(declare-fun m!909995 () Bool)

(assert (=> b!982549 m!909995))

(assert (=> b!982549 m!909991))

(assert (=> b!982549 m!909995))

(declare-fun m!909997 () Bool)

(assert (=> b!982549 m!909997))

(declare-fun m!909999 () Bool)

(assert (=> b!982550 m!909999))

(assert (=> b!982555 m!909989))

(declare-fun m!910001 () Bool)

(assert (=> b!982555 m!910001))

(declare-fun m!910003 () Bool)

(assert (=> b!982555 m!910003))

(declare-fun m!910005 () Bool)

(assert (=> b!982555 m!910005))

(assert (=> b!982555 m!910005))

(declare-fun m!910007 () Bool)

(assert (=> b!982555 m!910007))

(assert (=> b!982555 m!909989))

(declare-fun m!910009 () Bool)

(assert (=> b!982555 m!910009))

(assert (=> b!982555 m!910001))

(declare-fun m!910011 () Bool)

(assert (=> start!84082 m!910011))

(declare-fun m!910013 () Bool)

(assert (=> start!84082 m!910013))

(declare-fun m!910015 () Bool)

(assert (=> start!84082 m!910015))

(assert (=> b!982551 m!909989))

(assert (=> b!982551 m!909989))

(declare-fun m!910017 () Bool)

(assert (=> b!982551 m!910017))

(declare-fun m!910019 () Bool)

(assert (=> b!982553 m!910019))

(check-sat (not b!982555) (not b!982551) (not b_lambda!14877) b_and!31721 (not b!982553) (not mapNonEmpty!36314) (not b!982550) (not b!982549) (not start!84082) (not b_next!19809) tp_is_empty!22857)
(check-sat b_and!31721 (not b_next!19809))
