; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40606 () Bool)

(assert start!40606)

(declare-fun b_free!10609 () Bool)

(declare-fun b_next!10609 () Bool)

(assert (=> start!40606 (= b_free!10609 (not b_next!10609))))

(declare-fun tp!37646 () Bool)

(declare-fun b_and!18635 () Bool)

(assert (=> start!40606 (= tp!37646 b_and!18635)))

(declare-fun b!447677 () Bool)

(declare-fun res!266045 () Bool)

(declare-fun e!262796 () Bool)

(assert (=> b!447677 (=> (not res!266045) (not e!262796))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447677 (= res!266045 (validKeyInArray!0 k!794))))

(declare-fun b!447678 () Bool)

(declare-fun res!266036 () Bool)

(assert (=> b!447678 (=> (not res!266036) (not e!262796))))

(declare-datatypes ((array!27661 0))(
  ( (array!27662 (arr!13273 (Array (_ BitVec 32) (_ BitVec 64))) (size!13625 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27661)

(declare-datatypes ((List!7932 0))(
  ( (Nil!7929) (Cons!7928 (h!8784 (_ BitVec 64)) (t!13702 List!7932)) )
))
(declare-fun arrayNoDuplicates!0 (array!27661 (_ BitVec 32) List!7932) Bool)

(assert (=> b!447678 (= res!266036 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7929))))

(declare-fun b!447680 () Bool)

(declare-fun res!266041 () Bool)

(assert (=> b!447680 (=> (not res!266041) (not e!262796))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447680 (= res!266041 (validMask!0 mask!1025))))

(declare-fun b!447681 () Bool)

(declare-fun e!262794 () Bool)

(assert (=> b!447681 (= e!262796 e!262794)))

(declare-fun res!266038 () Bool)

(assert (=> b!447681 (=> (not res!266038) (not e!262794))))

(declare-fun lt!204014 () array!27661)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27661 (_ BitVec 32)) Bool)

(assert (=> b!447681 (= res!266038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204014 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447681 (= lt!204014 (array!27662 (store (arr!13273 _keys!709) i!563 k!794) (size!13625 _keys!709)))))

(declare-fun b!447682 () Bool)

(declare-fun e!262797 () Bool)

(declare-fun tp_is_empty!11947 () Bool)

(assert (=> b!447682 (= e!262797 tp_is_empty!11947)))

(declare-fun mapNonEmpty!19554 () Bool)

(declare-fun mapRes!19554 () Bool)

(declare-fun tp!37647 () Bool)

(assert (=> mapNonEmpty!19554 (= mapRes!19554 (and tp!37647 e!262797))))

(declare-fun mapKey!19554 () (_ BitVec 32))

(declare-datatypes ((V!17035 0))(
  ( (V!17036 (val!6018 Int)) )
))
(declare-datatypes ((ValueCell!5630 0))(
  ( (ValueCellFull!5630 (v!8269 V!17035)) (EmptyCell!5630) )
))
(declare-fun mapRest!19554 () (Array (_ BitVec 32) ValueCell!5630))

(declare-datatypes ((array!27663 0))(
  ( (array!27664 (arr!13274 (Array (_ BitVec 32) ValueCell!5630)) (size!13626 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27663)

(declare-fun mapValue!19554 () ValueCell!5630)

(assert (=> mapNonEmpty!19554 (= (arr!13274 _values!549) (store mapRest!19554 mapKey!19554 mapValue!19554))))

(declare-fun mapIsEmpty!19554 () Bool)

(assert (=> mapIsEmpty!19554 mapRes!19554))

(declare-fun b!447683 () Bool)

(declare-fun res!266040 () Bool)

(assert (=> b!447683 (=> (not res!266040) (not e!262794))))

(assert (=> b!447683 (= res!266040 (arrayNoDuplicates!0 lt!204014 #b00000000000000000000000000000000 Nil!7929))))

(declare-fun b!447684 () Bool)

(declare-fun e!262793 () Bool)

(assert (=> b!447684 (= e!262793 tp_is_empty!11947)))

(declare-fun b!447685 () Bool)

(declare-fun res!266035 () Bool)

(assert (=> b!447685 (=> (not res!266035) (not e!262796))))

(assert (=> b!447685 (= res!266035 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13625 _keys!709))))))

(declare-fun res!266039 () Bool)

(assert (=> start!40606 (=> (not res!266039) (not e!262796))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40606 (= res!266039 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13625 _keys!709))))))

(assert (=> start!40606 e!262796))

(assert (=> start!40606 tp_is_empty!11947))

(assert (=> start!40606 tp!37646))

(assert (=> start!40606 true))

(declare-fun e!262795 () Bool)

(declare-fun array_inv!9614 (array!27663) Bool)

(assert (=> start!40606 (and (array_inv!9614 _values!549) e!262795)))

(declare-fun array_inv!9615 (array!27661) Bool)

(assert (=> start!40606 (array_inv!9615 _keys!709)))

(declare-fun b!447679 () Bool)

(declare-fun res!266042 () Bool)

(assert (=> b!447679 (=> (not res!266042) (not e!262796))))

(assert (=> b!447679 (= res!266042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447686 () Bool)

(declare-fun res!266037 () Bool)

(assert (=> b!447686 (=> (not res!266037) (not e!262796))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!447686 (= res!266037 (and (= (size!13626 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13625 _keys!709) (size!13626 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447687 () Bool)

(declare-fun res!266046 () Bool)

(assert (=> b!447687 (=> (not res!266046) (not e!262794))))

(assert (=> b!447687 (= res!266046 (bvsle from!863 i!563))))

(declare-fun b!447688 () Bool)

(assert (=> b!447688 (= e!262795 (and e!262793 mapRes!19554))))

(declare-fun condMapEmpty!19554 () Bool)

(declare-fun mapDefault!19554 () ValueCell!5630)

