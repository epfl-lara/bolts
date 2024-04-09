; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131626 () Bool)

(assert start!131626)

(declare-fun res!1058067 () Bool)

(declare-fun e!857369 () Bool)

(assert (=> start!131626 (=> (not res!1058067) (not e!857369))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131626 (= res!1058067 (validMask!0 mask!926))))

(assert (=> start!131626 e!857369))

(assert (=> start!131626 true))

(declare-datatypes ((V!58613 0))(
  ( (V!58614 (val!18891 Int)) )
))
(declare-datatypes ((ValueCell!17903 0))(
  ( (ValueCellFull!17903 (v!21688 V!58613)) (EmptyCell!17903) )
))
(declare-datatypes ((array!102447 0))(
  ( (array!102448 (arr!49426 (Array (_ BitVec 32) ValueCell!17903)) (size!49977 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102447)

(declare-fun e!857368 () Bool)

(declare-fun array_inv!38371 (array!102447) Bool)

(assert (=> start!131626 (and (array_inv!38371 _values!470) e!857368)))

(declare-datatypes ((array!102449 0))(
  ( (array!102450 (arr!49427 (Array (_ BitVec 32) (_ BitVec 64))) (size!49978 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102449)

(declare-fun array_inv!38372 (array!102449) Bool)

(assert (=> start!131626 (array_inv!38372 _keys!618)))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun b!1541440 () Bool)

(assert (=> b!1541440 (= e!857369 (and (= (size!49977 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49978 _keys!618) (size!49977 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011) (= (size!49978 _keys!618) (bvadd #b00000000000000000000000000000001 mask!926)) (bvsgt #b00000000000000000000000000000000 (size!49978 _keys!618))))))

(declare-fun b!1541441 () Bool)

(declare-fun e!857370 () Bool)

(declare-fun tp_is_empty!37627 () Bool)

(assert (=> b!1541441 (= e!857370 tp_is_empty!37627)))

(declare-fun mapIsEmpty!58129 () Bool)

(declare-fun mapRes!58129 () Bool)

(assert (=> mapIsEmpty!58129 mapRes!58129))

(declare-fun b!1541442 () Bool)

(declare-fun e!857371 () Bool)

(assert (=> b!1541442 (= e!857371 tp_is_empty!37627)))

(declare-fun mapNonEmpty!58129 () Bool)

(declare-fun tp!110657 () Bool)

(assert (=> mapNonEmpty!58129 (= mapRes!58129 (and tp!110657 e!857371))))

(declare-fun mapKey!58129 () (_ BitVec 32))

(declare-fun mapRest!58129 () (Array (_ BitVec 32) ValueCell!17903))

(declare-fun mapValue!58129 () ValueCell!17903)

(assert (=> mapNonEmpty!58129 (= (arr!49426 _values!470) (store mapRest!58129 mapKey!58129 mapValue!58129))))

(declare-fun b!1541443 () Bool)

(assert (=> b!1541443 (= e!857368 (and e!857370 mapRes!58129))))

(declare-fun condMapEmpty!58129 () Bool)

(declare-fun mapDefault!58129 () ValueCell!17903)

