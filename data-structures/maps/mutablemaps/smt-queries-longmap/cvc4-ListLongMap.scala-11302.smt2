; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131752 () Bool)

(assert start!131752)

(declare-fun mapIsEmpty!58267 () Bool)

(declare-fun mapRes!58267 () Bool)

(assert (=> mapIsEmpty!58267 mapRes!58267))

(declare-fun b!1542308 () Bool)

(declare-fun e!858078 () Bool)

(declare-fun tp_is_empty!37709 () Bool)

(assert (=> b!1542308 (= e!858078 tp_is_empty!37709)))

(declare-fun b!1542309 () Bool)

(declare-fun res!1058504 () Bool)

(declare-fun e!858081 () Bool)

(assert (=> b!1542309 (=> (not res!1058504) (not e!858081))))

(declare-datatypes ((array!102613 0))(
  ( (array!102614 (arr!49504 (Array (_ BitVec 32) (_ BitVec 64))) (size!50055 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102613)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58721 0))(
  ( (V!58722 (val!18932 Int)) )
))
(declare-datatypes ((ValueCell!17944 0))(
  ( (ValueCellFull!17944 (v!21730 V!58721)) (EmptyCell!17944) )
))
(declare-datatypes ((array!102615 0))(
  ( (array!102616 (arr!49505 (Array (_ BitVec 32) ValueCell!17944)) (size!50056 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102615)

(assert (=> b!1542309 (= res!1058504 (and (= (size!50056 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50055 _keys!618) (size!50056 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058503 () Bool)

(assert (=> start!131752 (=> (not res!1058503) (not e!858081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131752 (= res!1058503 (validMask!0 mask!926))))

(assert (=> start!131752 e!858081))

(assert (=> start!131752 true))

(declare-fun e!858080 () Bool)

(declare-fun array_inv!38439 (array!102615) Bool)

(assert (=> start!131752 (and (array_inv!38439 _values!470) e!858080)))

(declare-fun array_inv!38440 (array!102613) Bool)

(assert (=> start!131752 (array_inv!38440 _keys!618)))

(declare-fun b!1542310 () Bool)

(declare-fun e!858082 () Bool)

(assert (=> b!1542310 (= e!858082 tp_is_empty!37709)))

(declare-fun b!1542311 () Bool)

(declare-fun res!1058502 () Bool)

(assert (=> b!1542311 (=> (not res!1058502) (not e!858081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102613 (_ BitVec 32)) Bool)

(assert (=> b!1542311 (= res!1058502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542312 () Bool)

(assert (=> b!1542312 (= e!858080 (and e!858082 mapRes!58267))))

(declare-fun condMapEmpty!58267 () Bool)

(declare-fun mapDefault!58267 () ValueCell!17944)

