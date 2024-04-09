; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131758 () Bool)

(assert start!131758)

(declare-fun res!1058531 () Bool)

(declare-fun e!858125 () Bool)

(assert (=> start!131758 (=> (not res!1058531) (not e!858125))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131758 (= res!1058531 (validMask!0 mask!926))))

(assert (=> start!131758 e!858125))

(assert (=> start!131758 true))

(declare-datatypes ((V!58729 0))(
  ( (V!58730 (val!18935 Int)) )
))
(declare-datatypes ((ValueCell!17947 0))(
  ( (ValueCellFull!17947 (v!21733 V!58729)) (EmptyCell!17947) )
))
(declare-datatypes ((array!102625 0))(
  ( (array!102626 (arr!49510 (Array (_ BitVec 32) ValueCell!17947)) (size!50061 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102625)

(declare-fun e!858124 () Bool)

(declare-fun array_inv!38445 (array!102625) Bool)

(assert (=> start!131758 (and (array_inv!38445 _values!470) e!858124)))

(declare-datatypes ((array!102627 0))(
  ( (array!102628 (arr!49511 (Array (_ BitVec 32) (_ BitVec 64))) (size!50062 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102627)

(declare-fun array_inv!38446 (array!102627) Bool)

(assert (=> start!131758 (array_inv!38446 _keys!618)))

(declare-fun mapIsEmpty!58276 () Bool)

(declare-fun mapRes!58276 () Bool)

(assert (=> mapIsEmpty!58276 mapRes!58276))

(declare-fun b!1542362 () Bool)

(declare-fun e!858123 () Bool)

(declare-fun tp_is_empty!37715 () Bool)

(assert (=> b!1542362 (= e!858123 tp_is_empty!37715)))

(declare-fun b!1542363 () Bool)

(assert (=> b!1542363 (= e!858125 false)))

(declare-fun lt!665747 () Bool)

(declare-datatypes ((List!36031 0))(
  ( (Nil!36028) (Cons!36027 (h!37473 (_ BitVec 64)) (t!50732 List!36031)) )
))
(declare-fun arrayNoDuplicates!0 (array!102627 (_ BitVec 32) List!36031) Bool)

(assert (=> b!1542363 (= lt!665747 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36028))))

(declare-fun mapNonEmpty!58276 () Bool)

(declare-fun tp!110804 () Bool)

(assert (=> mapNonEmpty!58276 (= mapRes!58276 (and tp!110804 e!858123))))

(declare-fun mapRest!58276 () (Array (_ BitVec 32) ValueCell!17947))

(declare-fun mapKey!58276 () (_ BitVec 32))

(declare-fun mapValue!58276 () ValueCell!17947)

(assert (=> mapNonEmpty!58276 (= (arr!49510 _values!470) (store mapRest!58276 mapKey!58276 mapValue!58276))))

(declare-fun b!1542364 () Bool)

(declare-fun e!858127 () Bool)

(assert (=> b!1542364 (= e!858124 (and e!858127 mapRes!58276))))

(declare-fun condMapEmpty!58276 () Bool)

(declare-fun mapDefault!58276 () ValueCell!17947)

