; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111486 () Bool)

(assert start!111486)

(declare-fun b_free!30107 () Bool)

(declare-fun b_next!30107 () Bool)

(assert (=> start!111486 (= b_free!30107 (not b_next!30107))))

(declare-fun tp!105797 () Bool)

(declare-fun b_and!48383 () Bool)

(assert (=> start!111486 (= tp!105797 b_and!48383)))

(declare-fun b!1318989 () Bool)

(declare-fun res!875485 () Bool)

(declare-fun e!752613 () Bool)

(assert (=> b!1318989 (=> (not res!875485) (not e!752613))))

(declare-datatypes ((array!88753 0))(
  ( (array!88754 (arr!42846 (Array (_ BitVec 32) (_ BitVec 64))) (size!43397 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88753)

(declare-datatypes ((List!30559 0))(
  ( (Nil!30556) (Cons!30555 (h!31764 (_ BitVec 64)) (t!44222 List!30559)) )
))
(declare-fun arrayNoDuplicates!0 (array!88753 (_ BitVec 32) List!30559) Bool)

(assert (=> b!1318989 (= res!875485 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30556))))

(declare-fun b!1318990 () Bool)

(declare-fun res!875482 () Bool)

(assert (=> b!1318990 (=> (not res!875482) (not e!752613))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318990 (= res!875482 (validKeyInArray!0 (select (arr!42846 _keys!1609) from!2000)))))

(declare-fun mapIsEmpty!55538 () Bool)

(declare-fun mapRes!55538 () Bool)

(assert (=> mapIsEmpty!55538 mapRes!55538))

(declare-fun b!1318991 () Bool)

(declare-fun e!752615 () Bool)

(declare-fun tp_is_empty!35927 () Bool)

(assert (=> b!1318991 (= e!752615 tp_is_empty!35927)))

(declare-fun b!1318992 () Bool)

(declare-fun res!875486 () Bool)

(assert (=> b!1318992 (=> (not res!875486) (not e!752613))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88753 (_ BitVec 32)) Bool)

(assert (=> b!1318992 (= res!875486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318993 () Bool)

(declare-fun res!875483 () Bool)

(assert (=> b!1318993 (=> (not res!875483) (not e!752613))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53005 0))(
  ( (V!53006 (val!18038 Int)) )
))
(declare-datatypes ((ValueCell!17065 0))(
  ( (ValueCellFull!17065 (v!20666 V!53005)) (EmptyCell!17065) )
))
(declare-datatypes ((array!88755 0))(
  ( (array!88756 (arr!42847 (Array (_ BitVec 32) ValueCell!17065)) (size!43398 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88755)

(assert (=> b!1318993 (= res!875483 (and (= (size!43398 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43397 _keys!1609) (size!43398 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!875488 () Bool)

(assert (=> start!111486 (=> (not res!875488) (not e!752613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111486 (= res!875488 (validMask!0 mask!2019))))

(assert (=> start!111486 e!752613))

(declare-fun array_inv!32303 (array!88753) Bool)

(assert (=> start!111486 (array_inv!32303 _keys!1609)))

(assert (=> start!111486 true))

(assert (=> start!111486 tp_is_empty!35927))

(declare-fun e!752617 () Bool)

(declare-fun array_inv!32304 (array!88755) Bool)

(assert (=> start!111486 (and (array_inv!32304 _values!1337) e!752617)))

(assert (=> start!111486 tp!105797))

(declare-fun b!1318994 () Bool)

(declare-fun res!875484 () Bool)

(assert (=> b!1318994 (=> (not res!875484) (not e!752613))))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1318994 (= res!875484 (not (= (select (arr!42846 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1318995 () Bool)

(assert (=> b!1318995 (= e!752613 (not true))))

(declare-datatypes ((tuple2!23370 0))(
  ( (tuple2!23371 (_1!11695 (_ BitVec 64)) (_2!11695 V!53005)) )
))
(declare-datatypes ((List!30560 0))(
  ( (Nil!30557) (Cons!30556 (h!31765 tuple2!23370) (t!44223 List!30560)) )
))
(declare-datatypes ((ListLongMap!21039 0))(
  ( (ListLongMap!21040 (toList!10535 List!30560)) )
))
(declare-fun lt!586513 () ListLongMap!21039)

(declare-fun contains!8626 (ListLongMap!21039 (_ BitVec 64)) Bool)

(assert (=> b!1318995 (contains!8626 lt!586513 k!1164)))

(declare-datatypes ((Unit!43388 0))(
  ( (Unit!43389) )
))
(declare-fun lt!586512 () Unit!43388)

(declare-fun minValue!1279 () V!53005)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!109 ((_ BitVec 64) (_ BitVec 64) V!53005 ListLongMap!21039) Unit!43388)

(assert (=> b!1318995 (= lt!586512 (lemmaInListMapAfterAddingDiffThenInBefore!109 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586513))))

(declare-fun zeroValue!1279 () V!53005)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4494 (ListLongMap!21039 tuple2!23370) ListLongMap!21039)

(declare-fun getCurrentListMapNoExtraKeys!6209 (array!88753 array!88755 (_ BitVec 32) (_ BitVec 32) V!53005 V!53005 (_ BitVec 32) Int) ListLongMap!21039)

(declare-fun get!21576 (ValueCell!17065 V!53005) V!53005)

(declare-fun dynLambda!3531 (Int (_ BitVec 64)) V!53005)

(assert (=> b!1318995 (= lt!586513 (+!4494 (+!4494 (getCurrentListMapNoExtraKeys!6209 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23371 (select (arr!42846 _keys!1609) from!2000) (get!21576 (select (arr!42847 _values!1337) from!2000) (dynLambda!3531 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23371 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1318996 () Bool)

(declare-fun e!752614 () Bool)

(assert (=> b!1318996 (= e!752614 tp_is_empty!35927)))

(declare-fun b!1318997 () Bool)

(assert (=> b!1318997 (= e!752617 (and e!752615 mapRes!55538))))

(declare-fun condMapEmpty!55538 () Bool)

(declare-fun mapDefault!55538 () ValueCell!17065)

