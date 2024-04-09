; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110290 () Bool)

(assert start!110290)

(declare-fun b_free!29301 () Bool)

(declare-fun b_next!29301 () Bool)

(assert (=> start!110290 (= b_free!29301 (not b_next!29301))))

(declare-fun tp!103068 () Bool)

(declare-fun b_and!47507 () Bool)

(assert (=> start!110290 (= tp!103068 b_and!47507)))

(declare-fun b!1304998 () Bool)

(declare-fun e!744420 () Bool)

(declare-fun tp_is_empty!34941 () Bool)

(assert (=> b!1304998 (= e!744420 tp_is_empty!34941)))

(declare-fun b!1304999 () Bool)

(declare-fun e!744418 () Bool)

(assert (=> b!1304999 (= e!744418 true)))

(declare-datatypes ((V!51691 0))(
  ( (V!51692 (val!17545 Int)) )
))
(declare-datatypes ((tuple2!22806 0))(
  ( (tuple2!22807 (_1!11413 (_ BitVec 64)) (_2!11413 V!51691)) )
))
(declare-datatypes ((List!29955 0))(
  ( (Nil!29952) (Cons!29951 (h!31160 tuple2!22806) (t!43564 List!29955)) )
))
(declare-datatypes ((ListLongMap!20475 0))(
  ( (ListLongMap!20476 (toList!10253 List!29955)) )
))
(declare-fun lt!584124 () ListLongMap!20475)

(declare-fun minValue!1387 () V!51691)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8332 (ListLongMap!20475 (_ BitVec 64)) Bool)

(declare-fun +!4470 (ListLongMap!20475 tuple2!22806) ListLongMap!20475)

(assert (=> b!1304999 (not (contains!8332 (+!4470 lt!584124 (tuple2!22807 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!43170 0))(
  ( (Unit!43171) )
))
(declare-fun lt!584122 () Unit!43170)

(declare-fun addStillNotContains!494 (ListLongMap!20475 (_ BitVec 64) V!51691 (_ BitVec 64)) Unit!43170)

(assert (=> b!1304999 (= lt!584122 (addStillNotContains!494 lt!584124 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!51691)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16572 0))(
  ( (ValueCellFull!16572 (v!20165 V!51691)) (EmptyCell!16572) )
))
(declare-datatypes ((array!86865 0))(
  ( (array!86866 (arr!41915 (Array (_ BitVec 32) ValueCell!16572)) (size!42466 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86865)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86867 0))(
  ( (array!86868 (arr!41916 (Array (_ BitVec 32) (_ BitVec 64))) (size!42467 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86867)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6187 (array!86867 array!86865 (_ BitVec 32) (_ BitVec 32) V!51691 V!51691 (_ BitVec 32) Int) ListLongMap!20475)

(assert (=> b!1304999 (= lt!584124 (getCurrentListMapNoExtraKeys!6187 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!54018 () Bool)

(declare-fun mapRes!54018 () Bool)

(assert (=> mapIsEmpty!54018 mapRes!54018))

(declare-fun b!1305000 () Bool)

(declare-fun res!866699 () Bool)

(declare-fun e!744422 () Bool)

(assert (=> b!1305000 (=> (not res!866699) (not e!744422))))

(assert (=> b!1305000 (= res!866699 (and (= (size!42466 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42467 _keys!1741) (size!42466 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1305001 () Bool)

(declare-fun res!866700 () Bool)

(assert (=> b!1305001 (=> (not res!866700) (not e!744422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1305001 (= res!866700 (not (validKeyInArray!0 (select (arr!41916 _keys!1741) from!2144))))))

(declare-fun b!1305002 () Bool)

(declare-fun res!866695 () Bool)

(assert (=> b!1305002 (=> (not res!866695) (not e!744422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86867 (_ BitVec 32)) Bool)

(assert (=> b!1305002 (= res!866695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1305003 () Bool)

(declare-fun e!744423 () Bool)

(assert (=> b!1305003 (= e!744423 (and e!744420 mapRes!54018))))

(declare-fun condMapEmpty!54018 () Bool)

(declare-fun mapDefault!54018 () ValueCell!16572)

(assert (=> b!1305003 (= condMapEmpty!54018 (= (arr!41915 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16572)) mapDefault!54018)))))

(declare-fun b!1305004 () Bool)

(declare-fun res!866697 () Bool)

(assert (=> b!1305004 (=> (not res!866697) (not e!744422))))

(assert (=> b!1305004 (= res!866697 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42467 _keys!1741))))))

(declare-fun mapNonEmpty!54018 () Bool)

(declare-fun tp!103069 () Bool)

(declare-fun e!744421 () Bool)

(assert (=> mapNonEmpty!54018 (= mapRes!54018 (and tp!103069 e!744421))))

(declare-fun mapValue!54018 () ValueCell!16572)

(declare-fun mapKey!54018 () (_ BitVec 32))

(declare-fun mapRest!54018 () (Array (_ BitVec 32) ValueCell!16572))

(assert (=> mapNonEmpty!54018 (= (arr!41915 _values!1445) (store mapRest!54018 mapKey!54018 mapValue!54018))))

(declare-fun b!1305005 () Bool)

(assert (=> b!1305005 (= e!744421 tp_is_empty!34941)))

(declare-fun b!1305006 () Bool)

(assert (=> b!1305006 (= e!744422 (not e!744418))))

(declare-fun res!866701 () Bool)

(assert (=> b!1305006 (=> res!866701 e!744418)))

(assert (=> b!1305006 (= res!866701 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1305006 (not (contains!8332 (ListLongMap!20476 Nil!29952) k0!1205))))

(declare-fun lt!584123 () Unit!43170)

(declare-fun emptyContainsNothing!234 ((_ BitVec 64)) Unit!43170)

(assert (=> b!1305006 (= lt!584123 (emptyContainsNothing!234 k0!1205))))

(declare-fun b!1305008 () Bool)

(declare-fun res!866696 () Bool)

(assert (=> b!1305008 (=> (not res!866696) (not e!744422))))

(declare-datatypes ((List!29956 0))(
  ( (Nil!29953) (Cons!29952 (h!31161 (_ BitVec 64)) (t!43565 List!29956)) )
))
(declare-fun arrayNoDuplicates!0 (array!86867 (_ BitVec 32) List!29956) Bool)

(assert (=> b!1305008 (= res!866696 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29953))))

(declare-fun b!1305009 () Bool)

(declare-fun res!866703 () Bool)

(assert (=> b!1305009 (=> (not res!866703) (not e!744422))))

(declare-fun getCurrentListMap!5210 (array!86867 array!86865 (_ BitVec 32) (_ BitVec 32) V!51691 V!51691 (_ BitVec 32) Int) ListLongMap!20475)

(assert (=> b!1305009 (= res!866703 (contains!8332 (getCurrentListMap!5210 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1305007 () Bool)

(declare-fun res!866698 () Bool)

(assert (=> b!1305007 (=> (not res!866698) (not e!744422))))

(assert (=> b!1305007 (= res!866698 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42467 _keys!1741))))))

(declare-fun res!866702 () Bool)

(assert (=> start!110290 (=> (not res!866702) (not e!744422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110290 (= res!866702 (validMask!0 mask!2175))))

(assert (=> start!110290 e!744422))

(assert (=> start!110290 tp_is_empty!34941))

(assert (=> start!110290 true))

(declare-fun array_inv!31697 (array!86865) Bool)

(assert (=> start!110290 (and (array_inv!31697 _values!1445) e!744423)))

(declare-fun array_inv!31698 (array!86867) Bool)

(assert (=> start!110290 (array_inv!31698 _keys!1741)))

(assert (=> start!110290 tp!103068))

(assert (= (and start!110290 res!866702) b!1305000))

(assert (= (and b!1305000 res!866699) b!1305002))

(assert (= (and b!1305002 res!866695) b!1305008))

(assert (= (and b!1305008 res!866696) b!1305007))

(assert (= (and b!1305007 res!866698) b!1305009))

(assert (= (and b!1305009 res!866703) b!1305004))

(assert (= (and b!1305004 res!866697) b!1305001))

(assert (= (and b!1305001 res!866700) b!1305006))

(assert (= (and b!1305006 (not res!866701)) b!1304999))

(assert (= (and b!1305003 condMapEmpty!54018) mapIsEmpty!54018))

(assert (= (and b!1305003 (not condMapEmpty!54018)) mapNonEmpty!54018))

(get-info :version)

(assert (= (and mapNonEmpty!54018 ((_ is ValueCellFull!16572) mapValue!54018)) b!1305005))

(assert (= (and b!1305003 ((_ is ValueCellFull!16572) mapDefault!54018)) b!1304998))

(assert (= start!110290 b!1305003))

(declare-fun m!1196061 () Bool)

(assert (=> b!1305001 m!1196061))

(assert (=> b!1305001 m!1196061))

(declare-fun m!1196063 () Bool)

(assert (=> b!1305001 m!1196063))

(declare-fun m!1196065 () Bool)

(assert (=> b!1305009 m!1196065))

(assert (=> b!1305009 m!1196065))

(declare-fun m!1196067 () Bool)

(assert (=> b!1305009 m!1196067))

(declare-fun m!1196069 () Bool)

(assert (=> start!110290 m!1196069))

(declare-fun m!1196071 () Bool)

(assert (=> start!110290 m!1196071))

(declare-fun m!1196073 () Bool)

(assert (=> start!110290 m!1196073))

(declare-fun m!1196075 () Bool)

(assert (=> b!1305008 m!1196075))

(declare-fun m!1196077 () Bool)

(assert (=> b!1305006 m!1196077))

(declare-fun m!1196079 () Bool)

(assert (=> b!1305006 m!1196079))

(declare-fun m!1196081 () Bool)

(assert (=> mapNonEmpty!54018 m!1196081))

(declare-fun m!1196083 () Bool)

(assert (=> b!1304999 m!1196083))

(assert (=> b!1304999 m!1196083))

(declare-fun m!1196085 () Bool)

(assert (=> b!1304999 m!1196085))

(declare-fun m!1196087 () Bool)

(assert (=> b!1304999 m!1196087))

(declare-fun m!1196089 () Bool)

(assert (=> b!1304999 m!1196089))

(declare-fun m!1196091 () Bool)

(assert (=> b!1305002 m!1196091))

(check-sat (not mapNonEmpty!54018) (not b_next!29301) (not b!1305008) (not b!1305006) (not b!1305002) (not b!1305009) tp_is_empty!34941 (not b!1305001) (not start!110290) (not b!1304999) b_and!47507)
(check-sat b_and!47507 (not b_next!29301))
