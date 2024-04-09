; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83006 () Bool)

(assert start!83006)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun b!968362 () Bool)

(declare-datatypes ((V!34201 0))(
  ( (V!34202 (val!11007 Int)) )
))
(declare-datatypes ((ValueCell!10475 0))(
  ( (ValueCellFull!10475 (v!13565 V!34201)) (EmptyCell!10475) )
))
(declare-datatypes ((array!59877 0))(
  ( (array!59878 (arr!28803 (Array (_ BitVec 32) ValueCell!10475)) (size!29283 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59877)

(declare-fun e!545765 () Bool)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!59879 0))(
  ( (array!59880 (arr!28804 (Array (_ BitVec 32) (_ BitVec 64))) (size!29284 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59879)

(assert (=> b!968362 (= e!545765 (and (= (size!29283 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29284 _keys!1717) (size!29283 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011) (= (size!29284 _keys!1717) (bvadd #b00000000000000000000000000000001 mask!2147)) (bvsgt #b00000000000000000000000000000000 (size!29284 _keys!1717))))))

(declare-fun mapNonEmpty!34864 () Bool)

(declare-fun mapRes!34864 () Bool)

(declare-fun tp!66433 () Bool)

(declare-fun e!545763 () Bool)

(assert (=> mapNonEmpty!34864 (= mapRes!34864 (and tp!66433 e!545763))))

(declare-fun mapValue!34864 () ValueCell!10475)

(declare-fun mapKey!34864 () (_ BitVec 32))

(declare-fun mapRest!34864 () (Array (_ BitVec 32) ValueCell!10475))

(assert (=> mapNonEmpty!34864 (= (arr!28803 _values!1425) (store mapRest!34864 mapKey!34864 mapValue!34864))))

(declare-fun b!968363 () Bool)

(declare-fun e!545767 () Bool)

(declare-fun tp_is_empty!21913 () Bool)

(assert (=> b!968363 (= e!545767 tp_is_empty!21913)))

(declare-fun b!968364 () Bool)

(assert (=> b!968364 (= e!545763 tp_is_empty!21913)))

(declare-fun res!648389 () Bool)

(assert (=> start!83006 (=> (not res!648389) (not e!545765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83006 (= res!648389 (validMask!0 mask!2147))))

(assert (=> start!83006 e!545765))

(assert (=> start!83006 true))

(declare-fun e!545764 () Bool)

(declare-fun array_inv!22193 (array!59877) Bool)

(assert (=> start!83006 (and (array_inv!22193 _values!1425) e!545764)))

(declare-fun array_inv!22194 (array!59879) Bool)

(assert (=> start!83006 (array_inv!22194 _keys!1717)))

(declare-fun mapIsEmpty!34864 () Bool)

(assert (=> mapIsEmpty!34864 mapRes!34864))

(declare-fun b!968365 () Bool)

(assert (=> b!968365 (= e!545764 (and e!545767 mapRes!34864))))

(declare-fun condMapEmpty!34864 () Bool)

(declare-fun mapDefault!34864 () ValueCell!10475)

