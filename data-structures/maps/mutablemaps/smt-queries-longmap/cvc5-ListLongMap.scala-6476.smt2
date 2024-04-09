; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82724 () Bool)

(assert start!82724)

(declare-fun b_free!18829 () Bool)

(declare-fun b_next!18829 () Bool)

(assert (=> start!82724 (= b_free!18829 (not b_next!18829))))

(declare-fun tp!65607 () Bool)

(declare-fun b_and!30335 () Bool)

(assert (=> start!82724 (= tp!65607 b_and!30335)))

(declare-fun b!964130 () Bool)

(declare-fun res!645428 () Bool)

(declare-fun e!543579 () Bool)

(assert (=> b!964130 (=> (not res!645428) (not e!543579))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33825 0))(
  ( (V!33826 (val!10866 Int)) )
))
(declare-datatypes ((ValueCell!10334 0))(
  ( (ValueCellFull!10334 (v!13424 V!33825)) (EmptyCell!10334) )
))
(declare-datatypes ((array!59335 0))(
  ( (array!59336 (arr!28532 (Array (_ BitVec 32) ValueCell!10334)) (size!29012 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59335)

(declare-datatypes ((array!59337 0))(
  ( (array!59338 (arr!28533 (Array (_ BitVec 32) (_ BitVec 64))) (size!29013 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59337)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!964130 (= res!645428 (and (= (size!29012 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29013 _keys!1686) (size!29012 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964131 () Bool)

(declare-fun e!543582 () Bool)

(declare-fun e!543580 () Bool)

(declare-fun mapRes!34441 () Bool)

(assert (=> b!964131 (= e!543582 (and e!543580 mapRes!34441))))

(declare-fun condMapEmpty!34441 () Bool)

(declare-fun mapDefault!34441 () ValueCell!10334)

