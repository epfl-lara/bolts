; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!728 () Bool)

(assert start!728)

(declare-fun b_free!161 () Bool)

(declare-fun b_next!161 () Bool)

(assert (=> start!728 (= b_free!161 (not b_next!161))))

(declare-fun tp!707 () Bool)

(declare-fun b_and!303 () Bool)

(assert (=> start!728 (= tp!707 b_and!303)))

(declare-fun b!5131 () Bool)

(declare-fun res!6091 () Bool)

(declare-fun e!2748 () Bool)

(assert (=> b!5131 (=> (not res!6091) (not e!2748))))

(declare-datatypes ((array!411 0))(
  ( (array!412 (arr!196 (Array (_ BitVec 32) (_ BitVec 64))) (size!258 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!411)

(declare-datatypes ((List!125 0))(
  ( (Nil!122) (Cons!121 (h!687 (_ BitVec 64)) (t!2256 List!125)) )
))
(declare-fun arrayNoDuplicates!0 (array!411 (_ BitVec 32) List!125) Bool)

(assert (=> b!5131 (= res!6091 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!122))))

(declare-fun b!5132 () Bool)

(declare-fun res!6090 () Bool)

(assert (=> b!5132 (=> (not res!6090) (not e!2748))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5132 (= res!6090 (validKeyInArray!0 k!1278))))

(declare-fun b!5133 () Bool)

(declare-fun e!2751 () Bool)

(declare-fun tp_is_empty!239 () Bool)

(assert (=> b!5133 (= e!2751 tp_is_empty!239)))

(declare-fun b!5134 () Bool)

(declare-fun e!2752 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!5134 (= e!2752 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!6093 () Bool)

(assert (=> start!728 (=> (not res!6093) (not e!2748))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!728 (= res!6093 (validMask!0 mask!2250))))

(assert (=> start!728 e!2748))

(assert (=> start!728 tp!707))

(assert (=> start!728 true))

(declare-datatypes ((V!495 0))(
  ( (V!496 (val!125 Int)) )
))
(declare-datatypes ((ValueCell!103 0))(
  ( (ValueCellFull!103 (v!1214 V!495)) (EmptyCell!103) )
))
(declare-datatypes ((array!413 0))(
  ( (array!414 (arr!197 (Array (_ BitVec 32) ValueCell!103)) (size!259 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!413)

(declare-fun e!2750 () Bool)

(declare-fun array_inv!139 (array!413) Bool)

(assert (=> start!728 (and (array_inv!139 _values!1492) e!2750)))

(assert (=> start!728 tp_is_empty!239))

(declare-fun array_inv!140 (array!411) Bool)

(assert (=> start!728 (array_inv!140 _keys!1806)))

(declare-fun b!5135 () Bool)

(declare-fun res!6092 () Bool)

(assert (=> b!5135 (=> (not res!6092) (not e!2748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!411 (_ BitVec 32)) Bool)

(assert (=> b!5135 (= res!6092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5136 () Bool)

(declare-fun e!2749 () Bool)

(assert (=> b!5136 (= e!2749 (or (not (= (size!258 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))) (bvsle #b00000000000000000000000000000000 (size!258 _keys!1806))))))

(declare-fun b!5137 () Bool)

(declare-fun e!2747 () Bool)

(declare-fun mapRes!323 () Bool)

(assert (=> b!5137 (= e!2750 (and e!2747 mapRes!323))))

(declare-fun condMapEmpty!323 () Bool)

(declare-fun mapDefault!323 () ValueCell!103)

