; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131776 () Bool)

(assert start!131776)

(declare-fun mapIsEmpty!58303 () Bool)

(declare-fun mapRes!58303 () Bool)

(assert (=> mapIsEmpty!58303 mapRes!58303))

(declare-fun mapNonEmpty!58303 () Bool)

(declare-fun tp!110831 () Bool)

(declare-fun e!858259 () Bool)

(assert (=> mapNonEmpty!58303 (= mapRes!58303 (and tp!110831 e!858259))))

(declare-datatypes ((V!58753 0))(
  ( (V!58754 (val!18944 Int)) )
))
(declare-datatypes ((ValueCell!17956 0))(
  ( (ValueCellFull!17956 (v!21742 V!58753)) (EmptyCell!17956) )
))
(declare-datatypes ((array!102661 0))(
  ( (array!102662 (arr!49528 (Array (_ BitVec 32) ValueCell!17956)) (size!50079 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102661)

(declare-fun mapValue!58303 () ValueCell!17956)

(declare-fun mapRest!58303 () (Array (_ BitVec 32) ValueCell!17956))

(declare-fun mapKey!58303 () (_ BitVec 32))

(assert (=> mapNonEmpty!58303 (= (arr!49528 _values!470) (store mapRest!58303 mapKey!58303 mapValue!58303))))

(declare-fun res!1058610 () Bool)

(declare-fun e!858261 () Bool)

(assert (=> start!131776 (=> (not res!1058610) (not e!858261))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131776 (= res!1058610 (validMask!0 mask!926))))

(assert (=> start!131776 e!858261))

(assert (=> start!131776 true))

(declare-fun e!858258 () Bool)

(declare-fun array_inv!38459 (array!102661) Bool)

(assert (=> start!131776 (and (array_inv!38459 _values!470) e!858258)))

(declare-datatypes ((array!102663 0))(
  ( (array!102664 (arr!49529 (Array (_ BitVec 32) (_ BitVec 64))) (size!50080 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102663)

(declare-fun array_inv!38460 (array!102663) Bool)

(assert (=> start!131776 (array_inv!38460 _keys!618)))

(declare-fun b!1542524 () Bool)

(declare-fun res!1058611 () Bool)

(assert (=> b!1542524 (=> (not res!1058611) (not e!858261))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542524 (= res!1058611 (and (= (size!50079 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50080 _keys!618) (size!50079 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542525 () Bool)

(declare-fun e!858262 () Bool)

(declare-fun tp_is_empty!37733 () Bool)

(assert (=> b!1542525 (= e!858262 tp_is_empty!37733)))

(declare-fun b!1542526 () Bool)

(declare-fun res!1058612 () Bool)

(assert (=> b!1542526 (=> (not res!1058612) (not e!858261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102663 (_ BitVec 32)) Bool)

(assert (=> b!1542526 (= res!1058612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542527 () Bool)

(assert (=> b!1542527 (= e!858259 tp_is_empty!37733)))

(declare-fun b!1542528 () Bool)

(assert (=> b!1542528 (= e!858258 (and e!858262 mapRes!58303))))

(declare-fun condMapEmpty!58303 () Bool)

(declare-fun mapDefault!58303 () ValueCell!17956)

