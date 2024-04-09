; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!604 () Bool)

(assert start!604)

(declare-fun b_free!77 () Bool)

(declare-fun b_next!77 () Bool)

(assert (=> start!604 (= b_free!77 (not b_next!77))))

(declare-fun tp!449 () Bool)

(declare-fun b_and!215 () Bool)

(assert (=> start!604 (= tp!449 b_and!215)))

(declare-fun b!3742 () Bool)

(declare-fun res!5342 () Bool)

(declare-fun e!1879 () Bool)

(assert (=> b!3742 (=> (not res!5342) (not e!1879))))

(declare-datatypes ((array!243 0))(
  ( (array!244 (arr!114 (Array (_ BitVec 32) (_ BitVec 64))) (size!176 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!243)

(declare-datatypes ((List!68 0))(
  ( (Nil!65) (Cons!64 (h!630 (_ BitVec 64)) (t!2195 List!68)) )
))
(declare-fun arrayNoDuplicates!0 (array!243 (_ BitVec 32) List!68) Bool)

(assert (=> b!3742 (= res!5342 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!65))))

(declare-fun mapNonEmpty!191 () Bool)

(declare-fun mapRes!191 () Bool)

(declare-fun tp!448 () Bool)

(declare-fun e!1877 () Bool)

(assert (=> mapNonEmpty!191 (= mapRes!191 (and tp!448 e!1877))))

(declare-datatypes ((V!383 0))(
  ( (V!384 (val!83 Int)) )
))
(declare-datatypes ((ValueCell!61 0))(
  ( (ValueCellFull!61 (v!1170 V!383)) (EmptyCell!61) )
))
(declare-fun mapValue!191 () ValueCell!61)

(declare-fun mapRest!191 () (Array (_ BitVec 32) ValueCell!61))

(declare-datatypes ((array!245 0))(
  ( (array!246 (arr!115 (Array (_ BitVec 32) ValueCell!61)) (size!177 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!245)

(declare-fun mapKey!191 () (_ BitVec 32))

(assert (=> mapNonEmpty!191 (= (arr!115 _values!1492) (store mapRest!191 mapKey!191 mapValue!191))))

(declare-fun b!3743 () Bool)

(declare-fun e!1880 () Bool)

(declare-fun tp_is_empty!155 () Bool)

(assert (=> b!3743 (= e!1880 tp_is_empty!155)))

(declare-fun res!5341 () Bool)

(assert (=> start!604 (=> (not res!5341) (not e!1879))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!604 (= res!5341 (validMask!0 mask!2250))))

(assert (=> start!604 e!1879))

(assert (=> start!604 tp!449))

(assert (=> start!604 true))

(declare-fun e!1876 () Bool)

(declare-fun array_inv!81 (array!245) Bool)

(assert (=> start!604 (and (array_inv!81 _values!1492) e!1876)))

(assert (=> start!604 tp_is_empty!155))

(declare-fun array_inv!82 (array!243) Bool)

(assert (=> start!604 (array_inv!82 _keys!1806)))

(declare-fun b!3744 () Bool)

(assert (=> b!3744 (= e!1879 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!383)

(declare-fun lt!516 () Bool)

(declare-fun minValue!1434 () V!383)

(declare-datatypes ((tuple2!60 0))(
  ( (tuple2!61 (_1!30 (_ BitVec 64)) (_2!30 V!383)) )
))
(declare-datatypes ((List!69 0))(
  ( (Nil!66) (Cons!65 (h!631 tuple2!60) (t!2196 List!69)) )
))
(declare-datatypes ((ListLongMap!65 0))(
  ( (ListLongMap!66 (toList!48 List!69)) )
))
(declare-fun contains!18 (ListLongMap!65 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!7 (array!243 array!245 (_ BitVec 32) (_ BitVec 32) V!383 V!383 (_ BitVec 32) Int) ListLongMap!65)

(assert (=> b!3744 (= lt!516 (contains!18 (getCurrentListMap!7 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun mapIsEmpty!191 () Bool)

(assert (=> mapIsEmpty!191 mapRes!191))

(declare-fun b!3745 () Bool)

(assert (=> b!3745 (= e!1876 (and e!1880 mapRes!191))))

(declare-fun condMapEmpty!191 () Bool)

(declare-fun mapDefault!191 () ValueCell!61)

