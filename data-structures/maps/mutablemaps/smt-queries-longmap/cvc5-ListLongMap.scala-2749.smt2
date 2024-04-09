; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40340 () Bool)

(assert start!40340)

(declare-fun b!442840 () Bool)

(declare-fun res!262423 () Bool)

(declare-fun e!260604 () Bool)

(assert (=> b!442840 (=> (not res!262423) (not e!260604))))

(declare-datatypes ((array!27243 0))(
  ( (array!27244 (arr!13067 (Array (_ BitVec 32) (_ BitVec 64))) (size!13419 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27243)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442840 (= res!262423 (or (= (select (arr!13067 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13067 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19221 () Bool)

(declare-fun mapRes!19221 () Bool)

(declare-fun tp!37203 () Bool)

(declare-fun e!260607 () Bool)

(assert (=> mapNonEmpty!19221 (= mapRes!19221 (and tp!37203 e!260607))))

(declare-fun mapKey!19221 () (_ BitVec 32))

(declare-datatypes ((V!16747 0))(
  ( (V!16748 (val!5910 Int)) )
))
(declare-datatypes ((ValueCell!5522 0))(
  ( (ValueCellFull!5522 (v!8157 V!16747)) (EmptyCell!5522) )
))
(declare-datatypes ((array!27245 0))(
  ( (array!27246 (arr!13068 (Array (_ BitVec 32) ValueCell!5522)) (size!13420 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27245)

(declare-fun mapValue!19221 () ValueCell!5522)

(declare-fun mapRest!19221 () (Array (_ BitVec 32) ValueCell!5522))

(assert (=> mapNonEmpty!19221 (= (arr!13068 _values!549) (store mapRest!19221 mapKey!19221 mapValue!19221))))

(declare-fun b!442841 () Bool)

(declare-fun e!260605 () Bool)

(declare-fun tp_is_empty!11731 () Bool)

(assert (=> b!442841 (= e!260605 tp_is_empty!11731)))

(declare-fun b!442842 () Bool)

(declare-fun res!262426 () Bool)

(assert (=> b!442842 (=> (not res!262426) (not e!260604))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!442842 (= res!262426 (validKeyInArray!0 k!794))))

(declare-fun b!442843 () Bool)

(declare-fun e!260608 () Bool)

(assert (=> b!442843 (= e!260604 e!260608)))

(declare-fun res!262428 () Bool)

(assert (=> b!442843 (=> (not res!262428) (not e!260608))))

(declare-fun lt!203244 () array!27243)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27243 (_ BitVec 32)) Bool)

(assert (=> b!442843 (= res!262428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203244 mask!1025))))

(assert (=> b!442843 (= lt!203244 (array!27244 (store (arr!13067 _keys!709) i!563 k!794) (size!13419 _keys!709)))))

(declare-fun b!442844 () Bool)

(assert (=> b!442844 (= e!260607 tp_is_empty!11731)))

(declare-fun b!442845 () Bool)

(declare-fun res!262422 () Bool)

(assert (=> b!442845 (=> (not res!262422) (not e!260604))))

(declare-datatypes ((List!7817 0))(
  ( (Nil!7814) (Cons!7813 (h!8669 (_ BitVec 64)) (t!13583 List!7817)) )
))
(declare-fun arrayNoDuplicates!0 (array!27243 (_ BitVec 32) List!7817) Bool)

(assert (=> b!442845 (= res!262422 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7814))))

(declare-fun b!442846 () Bool)

(declare-fun res!262425 () Bool)

(assert (=> b!442846 (=> (not res!262425) (not e!260604))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!442846 (= res!262425 (and (= (size!13420 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13419 _keys!709) (size!13420 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442847 () Bool)

(assert (=> b!442847 (= e!260608 false)))

(declare-fun lt!203243 () Bool)

(assert (=> b!442847 (= lt!203243 (arrayNoDuplicates!0 lt!203244 #b00000000000000000000000000000000 Nil!7814))))

(declare-fun b!442848 () Bool)

(declare-fun res!262424 () Bool)

(assert (=> b!442848 (=> (not res!262424) (not e!260604))))

(assert (=> b!442848 (= res!262424 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13419 _keys!709))))))

(declare-fun b!442849 () Bool)

(declare-fun res!262430 () Bool)

(assert (=> b!442849 (=> (not res!262430) (not e!260604))))

(declare-fun arrayContainsKey!0 (array!27243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442849 (= res!262430 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19221 () Bool)

(assert (=> mapIsEmpty!19221 mapRes!19221))

(declare-fun b!442839 () Bool)

(declare-fun res!262421 () Bool)

(assert (=> b!442839 (=> (not res!262421) (not e!260604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442839 (= res!262421 (validMask!0 mask!1025))))

(declare-fun res!262427 () Bool)

(assert (=> start!40340 (=> (not res!262427) (not e!260604))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40340 (= res!262427 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13419 _keys!709))))))

(assert (=> start!40340 e!260604))

(assert (=> start!40340 true))

(declare-fun e!260606 () Bool)

(declare-fun array_inv!9474 (array!27245) Bool)

(assert (=> start!40340 (and (array_inv!9474 _values!549) e!260606)))

(declare-fun array_inv!9475 (array!27243) Bool)

(assert (=> start!40340 (array_inv!9475 _keys!709)))

(declare-fun b!442850 () Bool)

(declare-fun res!262429 () Bool)

(assert (=> b!442850 (=> (not res!262429) (not e!260604))))

(assert (=> b!442850 (= res!262429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442851 () Bool)

(assert (=> b!442851 (= e!260606 (and e!260605 mapRes!19221))))

(declare-fun condMapEmpty!19221 () Bool)

(declare-fun mapDefault!19221 () ValueCell!5522)

