; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131898 () Bool)

(assert start!131898)

(declare-fun b!1543622 () Bool)

(declare-fun res!1059159 () Bool)

(declare-fun e!859176 () Bool)

(assert (=> b!1543622 (=> (not res!1059159) (not e!859176))))

(declare-datatypes ((array!102885 0))(
  ( (array!102886 (arr!49640 (Array (_ BitVec 32) (_ BitVec 64))) (size!50191 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102885)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102885 (_ BitVec 32)) Bool)

(assert (=> b!1543622 (= res!1059159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58486 () Bool)

(declare-fun mapRes!58486 () Bool)

(declare-fun tp!111014 () Bool)

(declare-fun e!859173 () Bool)

(assert (=> mapNonEmpty!58486 (= mapRes!58486 (and tp!111014 e!859173))))

(declare-fun mapKey!58486 () (_ BitVec 32))

(declare-datatypes ((V!58917 0))(
  ( (V!58918 (val!19005 Int)) )
))
(declare-datatypes ((ValueCell!18017 0))(
  ( (ValueCellFull!18017 (v!21803 V!58917)) (EmptyCell!18017) )
))
(declare-fun mapValue!58486 () ValueCell!18017)

(declare-fun mapRest!58486 () (Array (_ BitVec 32) ValueCell!18017))

(declare-datatypes ((array!102887 0))(
  ( (array!102888 (arr!49641 (Array (_ BitVec 32) ValueCell!18017)) (size!50192 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102887)

(assert (=> mapNonEmpty!58486 (= (arr!49641 _values!470) (store mapRest!58486 mapKey!58486 mapValue!58486))))

(declare-fun mapIsEmpty!58486 () Bool)

(assert (=> mapIsEmpty!58486 mapRes!58486))

(declare-fun b!1543623 () Bool)

(declare-fun e!859175 () Bool)

(declare-fun tp_is_empty!37855 () Bool)

(assert (=> b!1543623 (= e!859175 tp_is_empty!37855)))

(declare-fun res!1059161 () Bool)

(assert (=> start!131898 (=> (not res!1059161) (not e!859176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131898 (= res!1059161 (validMask!0 mask!926))))

(assert (=> start!131898 e!859176))

(assert (=> start!131898 true))

(declare-fun e!859177 () Bool)

(declare-fun array_inv!38537 (array!102887) Bool)

(assert (=> start!131898 (and (array_inv!38537 _values!470) e!859177)))

(declare-fun array_inv!38538 (array!102885) Bool)

(assert (=> start!131898 (array_inv!38538 _keys!618)))

(declare-fun b!1543624 () Bool)

(declare-fun res!1059160 () Bool)

(assert (=> b!1543624 (=> (not res!1059160) (not e!859176))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543624 (= res!1059160 (and (= (size!50192 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50191 _keys!618) (size!50192 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543625 () Bool)

(assert (=> b!1543625 (= e!859177 (and e!859175 mapRes!58486))))

(declare-fun condMapEmpty!58486 () Bool)

(declare-fun mapDefault!58486 () ValueCell!18017)

