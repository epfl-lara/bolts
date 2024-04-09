; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40338 () Bool)

(assert start!40338)

(declare-fun b!442800 () Bool)

(declare-fun e!260587 () Bool)

(declare-fun e!260591 () Bool)

(assert (=> b!442800 (= e!260587 e!260591)))

(declare-fun res!262397 () Bool)

(assert (=> b!442800 (=> (not res!262397) (not e!260591))))

(declare-datatypes ((array!27239 0))(
  ( (array!27240 (arr!13065 (Array (_ BitVec 32) (_ BitVec 64))) (size!13417 (_ BitVec 32))) )
))
(declare-fun lt!203237 () array!27239)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27239 (_ BitVec 32)) Bool)

(assert (=> b!442800 (= res!262397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203237 mask!1025))))

(declare-fun _keys!709 () array!27239)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442800 (= lt!203237 (array!27240 (store (arr!13065 _keys!709) i!563 k!794) (size!13417 _keys!709)))))

(declare-fun b!442801 () Bool)

(declare-fun res!262394 () Bool)

(assert (=> b!442801 (=> (not res!262394) (not e!260587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442801 (= res!262394 (validMask!0 mask!1025))))

(declare-fun b!442802 () Bool)

(declare-fun res!262395 () Bool)

(assert (=> b!442802 (=> (not res!262395) (not e!260587))))

(assert (=> b!442802 (= res!262395 (or (= (select (arr!13065 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13065 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442803 () Bool)

(declare-fun e!260590 () Bool)

(declare-fun tp_is_empty!11729 () Bool)

(assert (=> b!442803 (= e!260590 tp_is_empty!11729)))

(declare-fun b!442804 () Bool)

(declare-fun res!262400 () Bool)

(assert (=> b!442804 (=> (not res!262400) (not e!260587))))

(declare-datatypes ((List!7816 0))(
  ( (Nil!7813) (Cons!7812 (h!8668 (_ BitVec 64)) (t!13582 List!7816)) )
))
(declare-fun arrayNoDuplicates!0 (array!27239 (_ BitVec 32) List!7816) Bool)

(assert (=> b!442804 (= res!262400 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7813))))

(declare-fun res!262399 () Bool)

(assert (=> start!40338 (=> (not res!262399) (not e!260587))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40338 (= res!262399 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13417 _keys!709))))))

(assert (=> start!40338 e!260587))

(assert (=> start!40338 true))

(declare-datatypes ((V!16743 0))(
  ( (V!16744 (val!5909 Int)) )
))
(declare-datatypes ((ValueCell!5521 0))(
  ( (ValueCellFull!5521 (v!8156 V!16743)) (EmptyCell!5521) )
))
(declare-datatypes ((array!27241 0))(
  ( (array!27242 (arr!13066 (Array (_ BitVec 32) ValueCell!5521)) (size!13418 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27241)

(declare-fun e!260586 () Bool)

(declare-fun array_inv!9472 (array!27241) Bool)

(assert (=> start!40338 (and (array_inv!9472 _values!549) e!260586)))

(declare-fun array_inv!9473 (array!27239) Bool)

(assert (=> start!40338 (array_inv!9473 _keys!709)))

(declare-fun b!442805 () Bool)

(declare-fun res!262391 () Bool)

(assert (=> b!442805 (=> (not res!262391) (not e!260587))))

(declare-fun arrayContainsKey!0 (array!27239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442805 (= res!262391 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!442806 () Bool)

(declare-fun e!260589 () Bool)

(assert (=> b!442806 (= e!260589 tp_is_empty!11729)))

(declare-fun b!442807 () Bool)

(declare-fun res!262396 () Bool)

(assert (=> b!442807 (=> (not res!262396) (not e!260587))))

(assert (=> b!442807 (= res!262396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442808 () Bool)

(declare-fun mapRes!19218 () Bool)

(assert (=> b!442808 (= e!260586 (and e!260589 mapRes!19218))))

(declare-fun condMapEmpty!19218 () Bool)

(declare-fun mapDefault!19218 () ValueCell!5521)

