; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111470 () Bool)

(assert start!111470)

(declare-fun b_free!30091 () Bool)

(declare-fun b_next!30091 () Bool)

(assert (=> start!111470 (= b_free!30091 (not b_next!30091))))

(declare-fun tp!105749 () Bool)

(declare-fun b_and!48351 () Bool)

(assert (=> start!111470 (= tp!105749 b_and!48351)))

(declare-fun b!1318709 () Bool)

(declare-fun res!875294 () Bool)

(declare-fun e!752494 () Bool)

(assert (=> b!1318709 (=> (not res!875294) (not e!752494))))

(declare-datatypes ((array!88721 0))(
  ( (array!88722 (arr!42830 (Array (_ BitVec 32) (_ BitVec 64))) (size!43381 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88721)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1318709 (= res!875294 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43381 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318710 () Bool)

(declare-fun res!875292 () Bool)

(assert (=> b!1318710 (=> (not res!875292) (not e!752494))))

(declare-datatypes ((V!52985 0))(
  ( (V!52986 (val!18030 Int)) )
))
(declare-datatypes ((ValueCell!17057 0))(
  ( (ValueCellFull!17057 (v!20658 V!52985)) (EmptyCell!17057) )
))
(declare-datatypes ((array!88723 0))(
  ( (array!88724 (arr!42831 (Array (_ BitVec 32) ValueCell!17057)) (size!43382 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88723)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1318710 (= res!875292 (and (= (size!43382 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43381 _keys!1609) (size!43382 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318711 () Bool)

(declare-fun res!875296 () Bool)

(assert (=> b!1318711 (=> (not res!875296) (not e!752494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88721 (_ BitVec 32)) Bool)

(assert (=> b!1318711 (= res!875296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318712 () Bool)

(declare-fun res!875293 () Bool)

(assert (=> b!1318712 (=> (not res!875293) (not e!752494))))

(declare-datatypes ((List!30545 0))(
  ( (Nil!30542) (Cons!30541 (h!31750 (_ BitVec 64)) (t!44192 List!30545)) )
))
(declare-fun arrayNoDuplicates!0 (array!88721 (_ BitVec 32) List!30545) Bool)

(assert (=> b!1318712 (= res!875293 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30542))))

(declare-fun b!1318713 () Bool)

(declare-fun res!875291 () Bool)

(assert (=> b!1318713 (=> (not res!875291) (not e!752494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318713 (= res!875291 (validKeyInArray!0 (select (arr!42830 _keys!1609) from!2000)))))

(declare-fun b!1318714 () Bool)

(declare-fun e!752495 () Bool)

(declare-fun tp_is_empty!35911 () Bool)

(assert (=> b!1318714 (= e!752495 tp_is_empty!35911)))

(declare-fun b!1318715 () Bool)

(declare-fun res!875290 () Bool)

(assert (=> b!1318715 (=> (not res!875290) (not e!752494))))

(declare-fun zeroValue!1279 () V!52985)

(declare-fun minValue!1279 () V!52985)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23354 0))(
  ( (tuple2!23355 (_1!11687 (_ BitVec 64)) (_2!11687 V!52985)) )
))
(declare-datatypes ((List!30546 0))(
  ( (Nil!30543) (Cons!30542 (h!31751 tuple2!23354) (t!44193 List!30546)) )
))
(declare-datatypes ((ListLongMap!21023 0))(
  ( (ListLongMap!21024 (toList!10527 List!30546)) )
))
(declare-fun contains!8618 (ListLongMap!21023 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5482 (array!88721 array!88723 (_ BitVec 32) (_ BitVec 32) V!52985 V!52985 (_ BitVec 32) Int) ListLongMap!21023)

(assert (=> b!1318715 (= res!875290 (contains!8618 (getCurrentListMap!5482 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1318716 () Bool)

(declare-fun res!875289 () Bool)

(assert (=> b!1318716 (=> (not res!875289) (not e!752494))))

(assert (=> b!1318716 (= res!875289 (not (= (select (arr!42830 _keys!1609) from!2000) k!1164)))))

(declare-fun mapIsEmpty!55514 () Bool)

(declare-fun mapRes!55514 () Bool)

(assert (=> mapIsEmpty!55514 mapRes!55514))

(declare-fun b!1318717 () Bool)

(assert (=> b!1318717 (= e!752494 (not true))))

(declare-fun lt!586464 () ListLongMap!21023)

(assert (=> b!1318717 (contains!8618 lt!586464 k!1164)))

(declare-datatypes ((Unit!43372 0))(
  ( (Unit!43373) )
))
(declare-fun lt!586465 () Unit!43372)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!101 ((_ BitVec 64) (_ BitVec 64) V!52985 ListLongMap!21023) Unit!43372)

(assert (=> b!1318717 (= lt!586465 (lemmaInListMapAfterAddingDiffThenInBefore!101 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586464))))

(declare-fun +!4486 (ListLongMap!21023 tuple2!23354) ListLongMap!21023)

(declare-fun getCurrentListMapNoExtraKeys!6201 (array!88721 array!88723 (_ BitVec 32) (_ BitVec 32) V!52985 V!52985 (_ BitVec 32) Int) ListLongMap!21023)

(declare-fun get!21564 (ValueCell!17057 V!52985) V!52985)

(declare-fun dynLambda!3523 (Int (_ BitVec 64)) V!52985)

(assert (=> b!1318717 (= lt!586464 (+!4486 (+!4486 (getCurrentListMapNoExtraKeys!6201 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23355 (select (arr!42830 _keys!1609) from!2000) (get!21564 (select (arr!42831 _values!1337) from!2000) (dynLambda!3523 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun mapNonEmpty!55514 () Bool)

(declare-fun tp!105750 () Bool)

(declare-fun e!752493 () Bool)

(assert (=> mapNonEmpty!55514 (= mapRes!55514 (and tp!105750 e!752493))))

(declare-fun mapRest!55514 () (Array (_ BitVec 32) ValueCell!17057))

(declare-fun mapKey!55514 () (_ BitVec 32))

(declare-fun mapValue!55514 () ValueCell!17057)

(assert (=> mapNonEmpty!55514 (= (arr!42831 _values!1337) (store mapRest!55514 mapKey!55514 mapValue!55514))))

(declare-fun b!1318718 () Bool)

(assert (=> b!1318718 (= e!752493 tp_is_empty!35911)))

(declare-fun b!1318719 () Bool)

(declare-fun e!752496 () Bool)

(assert (=> b!1318719 (= e!752496 (and e!752495 mapRes!55514))))

(declare-fun condMapEmpty!55514 () Bool)

(declare-fun mapDefault!55514 () ValueCell!17057)

