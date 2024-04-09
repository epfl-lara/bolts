; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110914 () Bool)

(assert start!110914)

(declare-fun b_free!29713 () Bool)

(declare-fun b_next!29713 () Bool)

(assert (=> start!110914 (= b_free!29713 (not b_next!29713))))

(declare-fun tp!104461 () Bool)

(declare-fun b_and!47931 () Bool)

(assert (=> start!110914 (= tp!104461 b_and!47931)))

(declare-fun b!1312566 () Bool)

(declare-fun res!871524 () Bool)

(declare-fun e!748685 () Bool)

(assert (=> b!1312566 (=> (not res!871524) (not e!748685))))

(declare-datatypes ((array!87837 0))(
  ( (array!87838 (arr!42394 (Array (_ BitVec 32) (_ BitVec 64))) (size!42945 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87837)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312566 (= res!871524 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42945 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312567 () Bool)

(assert (=> b!1312567 (= e!748685 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52361 0))(
  ( (V!52362 (val!17796 Int)) )
))
(declare-fun minValue!1296 () V!52361)

(declare-fun zeroValue!1296 () V!52361)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585520 () Bool)

(declare-datatypes ((ValueCell!16823 0))(
  ( (ValueCellFull!16823 (v!20421 V!52361)) (EmptyCell!16823) )
))
(declare-datatypes ((array!87839 0))(
  ( (array!87840 (arr!42395 (Array (_ BitVec 32) ValueCell!16823)) (size!42946 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87839)

(declare-datatypes ((tuple2!23118 0))(
  ( (tuple2!23119 (_1!11569 (_ BitVec 64)) (_2!11569 V!52361)) )
))
(declare-datatypes ((List!30278 0))(
  ( (Nil!30275) (Cons!30274 (h!31483 tuple2!23118) (t!43891 List!30278)) )
))
(declare-datatypes ((ListLongMap!20787 0))(
  ( (ListLongMap!20788 (toList!10409 List!30278)) )
))
(declare-fun contains!8495 (ListLongMap!20787 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5365 (array!87837 array!87839 (_ BitVec 32) (_ BitVec 32) V!52361 V!52361 (_ BitVec 32) Int) ListLongMap!20787)

(assert (=> b!1312567 (= lt!585520 (contains!8495 (getCurrentListMap!5365 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312568 () Bool)

(declare-fun res!871522 () Bool)

(assert (=> b!1312568 (=> (not res!871522) (not e!748685))))

(declare-datatypes ((List!30279 0))(
  ( (Nil!30276) (Cons!30275 (h!31484 (_ BitVec 64)) (t!43892 List!30279)) )
))
(declare-fun arrayNoDuplicates!0 (array!87837 (_ BitVec 32) List!30279) Bool)

(assert (=> b!1312568 (= res!871522 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30276))))

(declare-fun b!1312569 () Bool)

(declare-fun e!748684 () Bool)

(declare-fun tp_is_empty!35443 () Bool)

(assert (=> b!1312569 (= e!748684 tp_is_empty!35443)))

(declare-fun b!1312570 () Bool)

(declare-fun res!871523 () Bool)

(assert (=> b!1312570 (=> (not res!871523) (not e!748685))))

(assert (=> b!1312570 (= res!871523 (and (= (size!42946 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42945 _keys!1628) (size!42946 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54793 () Bool)

(declare-fun mapRes!54793 () Bool)

(assert (=> mapIsEmpty!54793 mapRes!54793))

(declare-fun b!1312571 () Bool)

(declare-fun e!748682 () Bool)

(assert (=> b!1312571 (= e!748682 tp_is_empty!35443)))

(declare-fun b!1312572 () Bool)

(declare-fun res!871526 () Bool)

(assert (=> b!1312572 (=> (not res!871526) (not e!748685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87837 (_ BitVec 32)) Bool)

(assert (=> b!1312572 (= res!871526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312573 () Bool)

(declare-fun e!748681 () Bool)

(assert (=> b!1312573 (= e!748681 (and e!748682 mapRes!54793))))

(declare-fun condMapEmpty!54793 () Bool)

(declare-fun mapDefault!54793 () ValueCell!16823)

