; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40628 () Bool)

(assert start!40628)

(declare-fun b_free!10631 () Bool)

(declare-fun b_next!10631 () Bool)

(assert (=> start!40628 (= b_free!10631 (not b_next!10631))))

(declare-fun tp!37713 () Bool)

(declare-fun b_and!18657 () Bool)

(assert (=> start!40628 (= tp!37713 b_and!18657)))

(declare-fun b!448172 () Bool)

(declare-fun res!266439 () Bool)

(declare-fun e!262990 () Bool)

(assert (=> b!448172 (=> (not res!266439) (not e!262990))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448172 (= res!266439 (bvsle from!863 i!563))))

(declare-fun b!448173 () Bool)

(declare-fun res!266437 () Bool)

(declare-fun e!262992 () Bool)

(assert (=> b!448173 (=> (not res!266437) (not e!262992))))

(declare-datatypes ((array!27705 0))(
  ( (array!27706 (arr!13295 (Array (_ BitVec 32) (_ BitVec 64))) (size!13647 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27705)

(assert (=> b!448173 (= res!266437 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13647 _keys!709))))))

(declare-fun mapIsEmpty!19587 () Bool)

(declare-fun mapRes!19587 () Bool)

(assert (=> mapIsEmpty!19587 mapRes!19587))

(declare-fun b!448175 () Bool)

(declare-fun res!266442 () Bool)

(assert (=> b!448175 (=> (not res!266442) (not e!262992))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27705 (_ BitVec 32)) Bool)

(assert (=> b!448175 (= res!266442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448176 () Bool)

(declare-fun res!266436 () Bool)

(assert (=> b!448176 (=> (not res!266436) (not e!262992))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448176 (= res!266436 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!19587 () Bool)

(declare-fun tp!37712 () Bool)

(declare-fun e!262995 () Bool)

(assert (=> mapNonEmpty!19587 (= mapRes!19587 (and tp!37712 e!262995))))

(declare-fun mapKey!19587 () (_ BitVec 32))

(declare-datatypes ((V!17063 0))(
  ( (V!17064 (val!6029 Int)) )
))
(declare-datatypes ((ValueCell!5641 0))(
  ( (ValueCellFull!5641 (v!8280 V!17063)) (EmptyCell!5641) )
))
(declare-datatypes ((array!27707 0))(
  ( (array!27708 (arr!13296 (Array (_ BitVec 32) ValueCell!5641)) (size!13648 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27707)

(declare-fun mapRest!19587 () (Array (_ BitVec 32) ValueCell!5641))

(declare-fun mapValue!19587 () ValueCell!5641)

(assert (=> mapNonEmpty!19587 (= (arr!13296 _values!549) (store mapRest!19587 mapKey!19587 mapValue!19587))))

(declare-fun b!448177 () Bool)

(declare-fun res!266440 () Bool)

(assert (=> b!448177 (=> (not res!266440) (not e!262990))))

(declare-fun lt!204115 () array!27705)

(declare-datatypes ((List!7952 0))(
  ( (Nil!7949) (Cons!7948 (h!8804 (_ BitVec 64)) (t!13722 List!7952)) )
))
(declare-fun arrayNoDuplicates!0 (array!27705 (_ BitVec 32) List!7952) Bool)

(assert (=> b!448177 (= res!266440 (arrayNoDuplicates!0 lt!204115 #b00000000000000000000000000000000 Nil!7949))))

(declare-fun b!448178 () Bool)

(assert (=> b!448178 (= e!262992 e!262990)))

(declare-fun res!266438 () Bool)

(assert (=> b!448178 (=> (not res!266438) (not e!262990))))

(assert (=> b!448178 (= res!266438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204115 mask!1025))))

(assert (=> b!448178 (= lt!204115 (array!27706 (store (arr!13295 _keys!709) i!563 k!794) (size!13647 _keys!709)))))

(declare-fun b!448179 () Bool)

(assert (=> b!448179 (= e!262990 false)))

(declare-fun minValue!515 () V!17063)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7842 0))(
  ( (tuple2!7843 (_1!3931 (_ BitVec 64)) (_2!3931 V!17063)) )
))
(declare-datatypes ((List!7953 0))(
  ( (Nil!7950) (Cons!7949 (h!8805 tuple2!7842) (t!13723 List!7953)) )
))
(declare-datatypes ((ListLongMap!6769 0))(
  ( (ListLongMap!6770 (toList!3400 List!7953)) )
))
(declare-fun lt!204114 () ListLongMap!6769)

(declare-fun zeroValue!515 () V!17063)

(declare-fun v!412 () V!17063)

(declare-fun getCurrentListMapNoExtraKeys!1580 (array!27705 array!27707 (_ BitVec 32) (_ BitVec 32) V!17063 V!17063 (_ BitVec 32) Int) ListLongMap!6769)

(assert (=> b!448179 (= lt!204114 (getCurrentListMapNoExtraKeys!1580 lt!204115 (array!27708 (store (arr!13296 _values!549) i!563 (ValueCellFull!5641 v!412)) (size!13648 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204113 () ListLongMap!6769)

(assert (=> b!448179 (= lt!204113 (getCurrentListMapNoExtraKeys!1580 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448180 () Bool)

(declare-fun tp_is_empty!11969 () Bool)

(assert (=> b!448180 (= e!262995 tp_is_empty!11969)))

(declare-fun b!448181 () Bool)

(declare-fun e!262994 () Bool)

(declare-fun e!262993 () Bool)

(assert (=> b!448181 (= e!262994 (and e!262993 mapRes!19587))))

(declare-fun condMapEmpty!19587 () Bool)

(declare-fun mapDefault!19587 () ValueCell!5641)

