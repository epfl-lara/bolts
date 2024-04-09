; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111476 () Bool)

(assert start!111476)

(declare-fun b_free!30097 () Bool)

(declare-fun b_next!30097 () Bool)

(assert (=> start!111476 (= b_free!30097 (not b_next!30097))))

(declare-fun tp!105767 () Bool)

(declare-fun b_and!48363 () Bool)

(assert (=> start!111476 (= tp!105767 b_and!48363)))

(declare-fun mapIsEmpty!55523 () Bool)

(declare-fun mapRes!55523 () Bool)

(assert (=> mapIsEmpty!55523 mapRes!55523))

(declare-fun b!1318814 () Bool)

(declare-fun res!875363 () Bool)

(declare-fun e!752540 () Bool)

(assert (=> b!1318814 (=> (not res!875363) (not e!752540))))

(declare-datatypes ((array!88733 0))(
  ( (array!88734 (arr!42836 (Array (_ BitVec 32) (_ BitVec 64))) (size!43387 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88733)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!52993 0))(
  ( (V!52994 (val!18033 Int)) )
))
(declare-fun zeroValue!1279 () V!52993)

(declare-datatypes ((ValueCell!17060 0))(
  ( (ValueCellFull!17060 (v!20661 V!52993)) (EmptyCell!17060) )
))
(declare-datatypes ((array!88735 0))(
  ( (array!88736 (arr!42837 (Array (_ BitVec 32) ValueCell!17060)) (size!43388 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88735)

(declare-fun minValue!1279 () V!52993)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23360 0))(
  ( (tuple2!23361 (_1!11690 (_ BitVec 64)) (_2!11690 V!52993)) )
))
(declare-datatypes ((List!30550 0))(
  ( (Nil!30547) (Cons!30546 (h!31755 tuple2!23360) (t!44203 List!30550)) )
))
(declare-datatypes ((ListLongMap!21029 0))(
  ( (ListLongMap!21030 (toList!10530 List!30550)) )
))
(declare-fun contains!8621 (ListLongMap!21029 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5484 (array!88733 array!88735 (_ BitVec 32) (_ BitVec 32) V!52993 V!52993 (_ BitVec 32) Int) ListLongMap!21029)

(assert (=> b!1318814 (= res!875363 (contains!8621 (getCurrentListMap!5484 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!55523 () Bool)

(declare-fun tp!105768 () Bool)

(declare-fun e!752539 () Bool)

(assert (=> mapNonEmpty!55523 (= mapRes!55523 (and tp!105768 e!752539))))

(declare-fun mapKey!55523 () (_ BitVec 32))

(declare-fun mapValue!55523 () ValueCell!17060)

(declare-fun mapRest!55523 () (Array (_ BitVec 32) ValueCell!17060))

(assert (=> mapNonEmpty!55523 (= (arr!42837 _values!1337) (store mapRest!55523 mapKey!55523 mapValue!55523))))

(declare-fun res!875361 () Bool)

(assert (=> start!111476 (=> (not res!875361) (not e!752540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111476 (= res!875361 (validMask!0 mask!2019))))

(assert (=> start!111476 e!752540))

(declare-fun array_inv!32295 (array!88733) Bool)

(assert (=> start!111476 (array_inv!32295 _keys!1609)))

(assert (=> start!111476 true))

(declare-fun tp_is_empty!35917 () Bool)

(assert (=> start!111476 tp_is_empty!35917))

(declare-fun e!752538 () Bool)

(declare-fun array_inv!32296 (array!88735) Bool)

(assert (=> start!111476 (and (array_inv!32296 _values!1337) e!752538)))

(assert (=> start!111476 tp!105767))

(declare-fun b!1318815 () Bool)

(declare-fun res!875362 () Bool)

(assert (=> b!1318815 (=> (not res!875362) (not e!752540))))

(assert (=> b!1318815 (= res!875362 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43387 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318816 () Bool)

(declare-fun res!875366 () Bool)

(assert (=> b!1318816 (=> (not res!875366) (not e!752540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88733 (_ BitVec 32)) Bool)

(assert (=> b!1318816 (= res!875366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318817 () Bool)

(declare-fun e!752541 () Bool)

(assert (=> b!1318817 (= e!752541 tp_is_empty!35917)))

(declare-fun b!1318818 () Bool)

(declare-fun res!875368 () Bool)

(assert (=> b!1318818 (=> (not res!875368) (not e!752540))))

(assert (=> b!1318818 (= res!875368 (and (= (size!43388 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43387 _keys!1609) (size!43388 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318819 () Bool)

(declare-fun res!875365 () Bool)

(assert (=> b!1318819 (=> (not res!875365) (not e!752540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318819 (= res!875365 (validKeyInArray!0 (select (arr!42836 _keys!1609) from!2000)))))

(declare-fun b!1318820 () Bool)

(assert (=> b!1318820 (= e!752539 tp_is_empty!35917)))

(declare-fun b!1318821 () Bool)

(declare-fun res!875367 () Bool)

(assert (=> b!1318821 (=> (not res!875367) (not e!752540))))

(assert (=> b!1318821 (= res!875367 (not (= (select (arr!42836 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1318822 () Bool)

(declare-fun res!875364 () Bool)

(assert (=> b!1318822 (=> (not res!875364) (not e!752540))))

(declare-datatypes ((List!30551 0))(
  ( (Nil!30548) (Cons!30547 (h!31756 (_ BitVec 64)) (t!44204 List!30551)) )
))
(declare-fun arrayNoDuplicates!0 (array!88733 (_ BitVec 32) List!30551) Bool)

(assert (=> b!1318822 (= res!875364 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30548))))

(declare-fun b!1318823 () Bool)

(assert (=> b!1318823 (= e!752540 (not true))))

(declare-fun lt!586483 () ListLongMap!21029)

(assert (=> b!1318823 (contains!8621 lt!586483 k!1164)))

(declare-datatypes ((Unit!43378 0))(
  ( (Unit!43379) )
))
(declare-fun lt!586482 () Unit!43378)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!104 ((_ BitVec 64) (_ BitVec 64) V!52993 ListLongMap!21029) Unit!43378)

(assert (=> b!1318823 (= lt!586482 (lemmaInListMapAfterAddingDiffThenInBefore!104 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586483))))

(declare-fun +!4489 (ListLongMap!21029 tuple2!23360) ListLongMap!21029)

(declare-fun getCurrentListMapNoExtraKeys!6204 (array!88733 array!88735 (_ BitVec 32) (_ BitVec 32) V!52993 V!52993 (_ BitVec 32) Int) ListLongMap!21029)

(declare-fun get!21569 (ValueCell!17060 V!52993) V!52993)

(declare-fun dynLambda!3526 (Int (_ BitVec 64)) V!52993)

(assert (=> b!1318823 (= lt!586483 (+!4489 (+!4489 (getCurrentListMapNoExtraKeys!6204 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23361 (select (arr!42836 _keys!1609) from!2000) (get!21569 (select (arr!42837 _values!1337) from!2000) (dynLambda!3526 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23361 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1318824 () Bool)

(assert (=> b!1318824 (= e!752538 (and e!752541 mapRes!55523))))

(declare-fun condMapEmpty!55523 () Bool)

(declare-fun mapDefault!55523 () ValueCell!17060)

