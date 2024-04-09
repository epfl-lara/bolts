; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111474 () Bool)

(assert start!111474)

(declare-fun b_free!30095 () Bool)

(declare-fun b_next!30095 () Bool)

(assert (=> start!111474 (= b_free!30095 (not b_next!30095))))

(declare-fun tp!105762 () Bool)

(declare-fun b_and!48359 () Bool)

(assert (=> start!111474 (= tp!105762 b_and!48359)))

(declare-fun b!1318779 () Bool)

(declare-fun e!752524 () Bool)

(declare-fun tp_is_empty!35915 () Bool)

(assert (=> b!1318779 (= e!752524 tp_is_empty!35915)))

(declare-fun b!1318780 () Bool)

(declare-fun e!752523 () Bool)

(assert (=> b!1318780 (= e!752523 (not true))))

(declare-datatypes ((V!52989 0))(
  ( (V!52990 (val!18032 Int)) )
))
(declare-datatypes ((tuple2!23358 0))(
  ( (tuple2!23359 (_1!11689 (_ BitVec 64)) (_2!11689 V!52989)) )
))
(declare-datatypes ((List!30549 0))(
  ( (Nil!30546) (Cons!30545 (h!31754 tuple2!23358) (t!44200 List!30549)) )
))
(declare-datatypes ((ListLongMap!21027 0))(
  ( (ListLongMap!21028 (toList!10529 List!30549)) )
))
(declare-fun lt!586476 () ListLongMap!21027)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8620 (ListLongMap!21027 (_ BitVec 64)) Bool)

(assert (=> b!1318780 (contains!8620 lt!586476 k!1164)))

(declare-datatypes ((Unit!43376 0))(
  ( (Unit!43377) )
))
(declare-fun lt!586477 () Unit!43376)

(declare-fun minValue!1279 () V!52989)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!103 ((_ BitVec 64) (_ BitVec 64) V!52989 ListLongMap!21027) Unit!43376)

(assert (=> b!1318780 (= lt!586477 (lemmaInListMapAfterAddingDiffThenInBefore!103 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586476))))

(declare-datatypes ((array!88729 0))(
  ( (array!88730 (arr!42834 (Array (_ BitVec 32) (_ BitVec 64))) (size!43385 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88729)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52989)

(declare-datatypes ((ValueCell!17059 0))(
  ( (ValueCellFull!17059 (v!20660 V!52989)) (EmptyCell!17059) )
))
(declare-datatypes ((array!88731 0))(
  ( (array!88732 (arr!42835 (Array (_ BitVec 32) ValueCell!17059)) (size!43386 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88731)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun +!4488 (ListLongMap!21027 tuple2!23358) ListLongMap!21027)

(declare-fun getCurrentListMapNoExtraKeys!6203 (array!88729 array!88731 (_ BitVec 32) (_ BitVec 32) V!52989 V!52989 (_ BitVec 32) Int) ListLongMap!21027)

(declare-fun get!21566 (ValueCell!17059 V!52989) V!52989)

(declare-fun dynLambda!3525 (Int (_ BitVec 64)) V!52989)

(assert (=> b!1318780 (= lt!586476 (+!4488 (+!4488 (getCurrentListMapNoExtraKeys!6203 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23359 (select (arr!42834 _keys!1609) from!2000) (get!21566 (select (arr!42835 _values!1337) from!2000) (dynLambda!3525 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23359 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1318781 () Bool)

(declare-fun res!875339 () Bool)

(assert (=> b!1318781 (=> (not res!875339) (not e!752523))))

(assert (=> b!1318781 (= res!875339 (and (= (size!43386 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43385 _keys!1609) (size!43386 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!875340 () Bool)

(assert (=> start!111474 (=> (not res!875340) (not e!752523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111474 (= res!875340 (validMask!0 mask!2019))))

(assert (=> start!111474 e!752523))

(declare-fun array_inv!32293 (array!88729) Bool)

(assert (=> start!111474 (array_inv!32293 _keys!1609)))

(assert (=> start!111474 true))

(assert (=> start!111474 tp_is_empty!35915))

(declare-fun e!752525 () Bool)

(declare-fun array_inv!32294 (array!88731) Bool)

(assert (=> start!111474 (and (array_inv!32294 _values!1337) e!752525)))

(assert (=> start!111474 tp!105762))

(declare-fun b!1318782 () Bool)

(declare-fun res!875338 () Bool)

(assert (=> b!1318782 (=> (not res!875338) (not e!752523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318782 (= res!875338 (validKeyInArray!0 (select (arr!42834 _keys!1609) from!2000)))))

(declare-fun b!1318783 () Bool)

(declare-fun e!752527 () Bool)

(assert (=> b!1318783 (= e!752527 tp_is_empty!35915)))

(declare-fun b!1318784 () Bool)

(declare-fun res!875344 () Bool)

(assert (=> b!1318784 (=> (not res!875344) (not e!752523))))

(assert (=> b!1318784 (= res!875344 (not (= (select (arr!42834 _keys!1609) from!2000) k!1164)))))

(declare-fun mapNonEmpty!55520 () Bool)

(declare-fun mapRes!55520 () Bool)

(declare-fun tp!105761 () Bool)

(assert (=> mapNonEmpty!55520 (= mapRes!55520 (and tp!105761 e!752527))))

(declare-fun mapValue!55520 () ValueCell!17059)

(declare-fun mapRest!55520 () (Array (_ BitVec 32) ValueCell!17059))

(declare-fun mapKey!55520 () (_ BitVec 32))

(assert (=> mapNonEmpty!55520 (= (arr!42835 _values!1337) (store mapRest!55520 mapKey!55520 mapValue!55520))))

(declare-fun b!1318785 () Bool)

(assert (=> b!1318785 (= e!752525 (and e!752524 mapRes!55520))))

(declare-fun condMapEmpty!55520 () Bool)

(declare-fun mapDefault!55520 () ValueCell!17059)

