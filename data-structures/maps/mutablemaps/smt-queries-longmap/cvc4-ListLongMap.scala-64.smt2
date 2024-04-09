; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!920 () Bool)

(assert start!920)

(declare-fun b_free!293 () Bool)

(declare-fun b_next!293 () Bool)

(assert (=> start!920 (= b_free!293 (not b_next!293))))

(declare-fun tp!1112 () Bool)

(declare-fun b_and!441 () Bool)

(assert (=> start!920 (= tp!1112 b_and!441)))

(declare-fun res!7570 () Bool)

(declare-fun e!4333 () Bool)

(assert (=> start!920 (=> (not res!7570) (not e!4333))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!920 (= res!7570 (validMask!0 mask!2250))))

(assert (=> start!920 e!4333))

(assert (=> start!920 tp!1112))

(assert (=> start!920 true))

(declare-datatypes ((V!671 0))(
  ( (V!672 (val!191 Int)) )
))
(declare-datatypes ((ValueCell!169 0))(
  ( (ValueCellFull!169 (v!1283 V!671)) (EmptyCell!169) )
))
(declare-datatypes ((array!671 0))(
  ( (array!672 (arr!323 (Array (_ BitVec 32) ValueCell!169)) (size!385 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!671)

(declare-fun e!4334 () Bool)

(declare-fun array_inv!241 (array!671) Bool)

(assert (=> start!920 (and (array_inv!241 _values!1492) e!4334)))

(declare-fun tp_is_empty!371 () Bool)

(assert (=> start!920 tp_is_empty!371))

(declare-datatypes ((array!673 0))(
  ( (array!674 (arr!324 (Array (_ BitVec 32) (_ BitVec 64))) (size!386 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!673)

(declare-fun array_inv!242 (array!673) Bool)

(assert (=> start!920 (array_inv!242 _keys!1806)))

(declare-fun mapIsEmpty!530 () Bool)

(declare-fun mapRes!530 () Bool)

(assert (=> mapIsEmpty!530 mapRes!530))

(declare-fun b!7722 () Bool)

(assert (=> b!7722 (= e!4333 false)))

(declare-fun minValue!1434 () V!671)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!671)

(declare-fun lt!1578 () Bool)

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((tuple2!202 0))(
  ( (tuple2!203 (_1!101 (_ BitVec 64)) (_2!101 V!671)) )
))
(declare-datatypes ((List!222 0))(
  ( (Nil!219) (Cons!218 (h!784 tuple2!202) (t!2359 List!222)) )
))
(declare-datatypes ((ListLongMap!207 0))(
  ( (ListLongMap!208 (toList!119 List!222)) )
))
(declare-fun contains!94 (ListLongMap!207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!78 (array!673 array!671 (_ BitVec 32) (_ BitVec 32) V!671 V!671 (_ BitVec 32) Int) ListLongMap!207)

(assert (=> b!7722 (= lt!1578 (contains!94 (getCurrentListMap!78 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7723 () Bool)

(declare-fun res!7567 () Bool)

(assert (=> b!7723 (=> (not res!7567) (not e!4333))))

(assert (=> b!7723 (= res!7567 (and (= (size!385 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!386 _keys!1806) (size!385 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7724 () Bool)

(declare-fun e!4336 () Bool)

(assert (=> b!7724 (= e!4334 (and e!4336 mapRes!530))))

(declare-fun condMapEmpty!530 () Bool)

(declare-fun mapDefault!530 () ValueCell!169)

