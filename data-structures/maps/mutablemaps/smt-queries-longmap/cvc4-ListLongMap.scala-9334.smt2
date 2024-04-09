; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111480 () Bool)

(assert start!111480)

(declare-fun b_free!30101 () Bool)

(declare-fun b_next!30101 () Bool)

(assert (=> start!111480 (= b_free!30101 (not b_next!30101))))

(declare-fun tp!105779 () Bool)

(declare-fun b_and!48371 () Bool)

(assert (=> start!111480 (= tp!105779 b_and!48371)))

(declare-fun b!1318884 () Bool)

(declare-fun e!752568 () Bool)

(assert (=> b!1318884 (= e!752568 (not true))))

(declare-datatypes ((V!52997 0))(
  ( (V!52998 (val!18035 Int)) )
))
(declare-datatypes ((tuple2!23364 0))(
  ( (tuple2!23365 (_1!11692 (_ BitVec 64)) (_2!11692 V!52997)) )
))
(declare-datatypes ((List!30554 0))(
  ( (Nil!30551) (Cons!30550 (h!31759 tuple2!23364) (t!44211 List!30554)) )
))
(declare-datatypes ((ListLongMap!21033 0))(
  ( (ListLongMap!21034 (toList!10532 List!30554)) )
))
(declare-fun lt!586495 () ListLongMap!21033)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8623 (ListLongMap!21033 (_ BitVec 64)) Bool)

(assert (=> b!1318884 (contains!8623 lt!586495 k!1164)))

(declare-datatypes ((Unit!43382 0))(
  ( (Unit!43383) )
))
(declare-fun lt!586494 () Unit!43382)

(declare-fun minValue!1279 () V!52997)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!106 ((_ BitVec 64) (_ BitVec 64) V!52997 ListLongMap!21033) Unit!43382)

(assert (=> b!1318884 (= lt!586494 (lemmaInListMapAfterAddingDiffThenInBefore!106 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586495))))

(declare-datatypes ((array!88741 0))(
  ( (array!88742 (arr!42840 (Array (_ BitVec 32) (_ BitVec 64))) (size!43391 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88741)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52997)

(declare-datatypes ((ValueCell!17062 0))(
  ( (ValueCellFull!17062 (v!20663 V!52997)) (EmptyCell!17062) )
))
(declare-datatypes ((array!88743 0))(
  ( (array!88744 (arr!42841 (Array (_ BitVec 32) ValueCell!17062)) (size!43392 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88743)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun +!4491 (ListLongMap!21033 tuple2!23364) ListLongMap!21033)

(declare-fun getCurrentListMapNoExtraKeys!6206 (array!88741 array!88743 (_ BitVec 32) (_ BitVec 32) V!52997 V!52997 (_ BitVec 32) Int) ListLongMap!21033)

(declare-fun get!21571 (ValueCell!17062 V!52997) V!52997)

(declare-fun dynLambda!3528 (Int (_ BitVec 64)) V!52997)

(assert (=> b!1318884 (= lt!586495 (+!4491 (+!4491 (getCurrentListMapNoExtraKeys!6206 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23365 (select (arr!42840 _keys!1609) from!2000) (get!21571 (select (arr!42841 _values!1337) from!2000) (dynLambda!3528 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23365 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1318885 () Bool)

(declare-fun res!875410 () Bool)

(assert (=> b!1318885 (=> (not res!875410) (not e!752568))))

(assert (=> b!1318885 (= res!875410 (not (= (select (arr!42840 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1318886 () Bool)

(declare-fun res!875409 () Bool)

(assert (=> b!1318886 (=> (not res!875409) (not e!752568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88741 (_ BitVec 32)) Bool)

(assert (=> b!1318886 (= res!875409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318887 () Bool)

(declare-fun e!752572 () Bool)

(declare-fun e!752569 () Bool)

(declare-fun mapRes!55529 () Bool)

(assert (=> b!1318887 (= e!752572 (and e!752569 mapRes!55529))))

(declare-fun condMapEmpty!55529 () Bool)

(declare-fun mapDefault!55529 () ValueCell!17062)

