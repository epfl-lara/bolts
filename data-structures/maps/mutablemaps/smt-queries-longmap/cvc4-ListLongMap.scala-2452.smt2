; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38542 () Bool)

(assert start!38542)

(declare-fun b!398114 () Bool)

(declare-fun e!240652 () Bool)

(declare-fun tp_is_empty!9953 () Bool)

(assert (=> b!398114 (= e!240652 tp_is_empty!9953)))

(declare-fun b!398115 () Bool)

(declare-fun res!228832 () Bool)

(declare-fun e!240650 () Bool)

(assert (=> b!398115 (=> (not res!228832) (not e!240650))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398115 (= res!228832 (validMask!0 mask!1025))))

(declare-fun b!398116 () Bool)

(declare-fun res!228834 () Bool)

(assert (=> b!398116 (=> (not res!228834) (not e!240650))))

(declare-datatypes ((array!23787 0))(
  ( (array!23788 (arr!11340 (Array (_ BitVec 32) (_ BitVec 64))) (size!11692 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23787)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398116 (= res!228834 (or (= (select (arr!11340 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11340 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398117 () Bool)

(declare-fun res!228830 () Bool)

(assert (=> b!398117 (=> (not res!228830) (not e!240650))))

(declare-datatypes ((List!6529 0))(
  ( (Nil!6526) (Cons!6525 (h!7381 (_ BitVec 64)) (t!11711 List!6529)) )
))
(declare-fun arrayNoDuplicates!0 (array!23787 (_ BitVec 32) List!6529) Bool)

(assert (=> b!398117 (= res!228830 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6526))))

(declare-fun b!398118 () Bool)

(declare-fun e!240654 () Bool)

(declare-fun e!240651 () Bool)

(declare-fun mapRes!16551 () Bool)

(assert (=> b!398118 (= e!240654 (and e!240651 mapRes!16551))))

(declare-fun condMapEmpty!16551 () Bool)

(declare-datatypes ((V!14375 0))(
  ( (V!14376 (val!5021 Int)) )
))
(declare-datatypes ((ValueCell!4633 0))(
  ( (ValueCellFull!4633 (v!7264 V!14375)) (EmptyCell!4633) )
))
(declare-datatypes ((array!23789 0))(
  ( (array!23790 (arr!11341 (Array (_ BitVec 32) ValueCell!4633)) (size!11693 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23789)

(declare-fun mapDefault!16551 () ValueCell!4633)

