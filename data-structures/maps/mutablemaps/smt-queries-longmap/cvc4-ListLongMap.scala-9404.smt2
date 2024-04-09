; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111958 () Bool)

(assert start!111958)

(declare-fun b_free!30521 () Bool)

(declare-fun b_next!30521 () Bool)

(assert (=> start!111958 (= b_free!30521 (not b_next!30521))))

(declare-fun tp!107044 () Bool)

(declare-fun b_and!49147 () Bool)

(assert (=> start!111958 (= tp!107044 b_and!49147)))

(declare-fun b!1326297 () Bool)

(declare-fun res!880355 () Bool)

(declare-fun e!755978 () Bool)

(assert (=> b!1326297 (=> (not res!880355) (not e!755978))))

(declare-datatypes ((array!89549 0))(
  ( (array!89550 (arr!43243 (Array (_ BitVec 32) (_ BitVec 64))) (size!43794 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89549)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53557 0))(
  ( (V!53558 (val!18245 Int)) )
))
(declare-datatypes ((ValueCell!17272 0))(
  ( (ValueCellFull!17272 (v!20876 V!53557)) (EmptyCell!17272) )
))
(declare-datatypes ((array!89551 0))(
  ( (array!89552 (arr!43244 (Array (_ BitVec 32) ValueCell!17272)) (size!43795 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89551)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1326297 (= res!880355 (and (= (size!43795 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43794 _keys!1609) (size!43795 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56163 () Bool)

(declare-fun mapRes!56163 () Bool)

(declare-fun tp!107043 () Bool)

(declare-fun e!755977 () Bool)

(assert (=> mapNonEmpty!56163 (= mapRes!56163 (and tp!107043 e!755977))))

(declare-fun mapRest!56163 () (Array (_ BitVec 32) ValueCell!17272))

(declare-fun mapKey!56163 () (_ BitVec 32))

(declare-fun mapValue!56163 () ValueCell!17272)

(assert (=> mapNonEmpty!56163 (= (arr!43244 _values!1337) (store mapRest!56163 mapKey!56163 mapValue!56163))))

(declare-fun b!1326298 () Bool)

(declare-fun res!880352 () Bool)

(assert (=> b!1326298 (=> (not res!880352) (not e!755978))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326298 (= res!880352 (validKeyInArray!0 (select (arr!43243 _keys!1609) from!2000)))))

(declare-fun b!1326299 () Bool)

(assert (=> b!1326299 (= e!755978 (not true))))

(declare-datatypes ((tuple2!23690 0))(
  ( (tuple2!23691 (_1!11855 (_ BitVec 64)) (_2!11855 V!53557)) )
))
(declare-datatypes ((List!30856 0))(
  ( (Nil!30853) (Cons!30852 (h!32061 tuple2!23690) (t!44855 List!30856)) )
))
(declare-datatypes ((ListLongMap!21359 0))(
  ( (ListLongMap!21360 (toList!10695 List!30856)) )
))
(declare-fun lt!589996 () ListLongMap!21359)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8788 (ListLongMap!21359 (_ BitVec 64)) Bool)

(assert (=> b!1326299 (contains!8788 lt!589996 k!1164)))

(declare-datatypes ((Unit!43626 0))(
  ( (Unit!43627) )
))
(declare-fun lt!589994 () Unit!43626)

(declare-fun lt!589992 () V!53557)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!220 ((_ BitVec 64) (_ BitVec 64) V!53557 ListLongMap!21359) Unit!43626)

(assert (=> b!1326299 (= lt!589994 (lemmaInListMapAfterAddingDiffThenInBefore!220 k!1164 (select (arr!43243 _keys!1609) from!2000) lt!589992 lt!589996))))

(declare-fun lt!589991 () ListLongMap!21359)

(assert (=> b!1326299 (contains!8788 lt!589991 k!1164)))

(declare-fun zeroValue!1279 () V!53557)

(declare-fun lt!589990 () Unit!43626)

(assert (=> b!1326299 (= lt!589990 (lemmaInListMapAfterAddingDiffThenInBefore!220 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589991))))

(declare-fun lt!589993 () ListLongMap!21359)

(assert (=> b!1326299 (contains!8788 lt!589993 k!1164)))

(declare-fun minValue!1279 () V!53557)

(declare-fun lt!589995 () Unit!43626)

(assert (=> b!1326299 (= lt!589995 (lemmaInListMapAfterAddingDiffThenInBefore!220 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589993))))

(declare-fun +!4610 (ListLongMap!21359 tuple2!23690) ListLongMap!21359)

(assert (=> b!1326299 (= lt!589993 (+!4610 lt!589991 (tuple2!23691 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1326299 (= lt!589991 (+!4610 lt!589996 (tuple2!23691 (select (arr!43243 _keys!1609) from!2000) lt!589992)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21833 (ValueCell!17272 V!53557) V!53557)

(declare-fun dynLambda!3647 (Int (_ BitVec 64)) V!53557)

(assert (=> b!1326299 (= lt!589992 (get!21833 (select (arr!43244 _values!1337) from!2000) (dynLambda!3647 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6328 (array!89549 array!89551 (_ BitVec 32) (_ BitVec 32) V!53557 V!53557 (_ BitVec 32) Int) ListLongMap!21359)

(assert (=> b!1326299 (= lt!589996 (getCurrentListMapNoExtraKeys!6328 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1326300 () Bool)

(declare-fun e!755979 () Bool)

(declare-fun e!755980 () Bool)

(assert (=> b!1326300 (= e!755979 (and e!755980 mapRes!56163))))

(declare-fun condMapEmpty!56163 () Bool)

(declare-fun mapDefault!56163 () ValueCell!17272)

