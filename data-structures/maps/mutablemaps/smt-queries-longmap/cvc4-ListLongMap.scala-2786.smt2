; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40616 () Bool)

(assert start!40616)

(declare-fun b_free!10619 () Bool)

(declare-fun b_next!10619 () Bool)

(assert (=> start!40616 (= b_free!10619 (not b_next!10619))))

(declare-fun tp!37676 () Bool)

(declare-fun b_and!18645 () Bool)

(assert (=> start!40616 (= tp!37676 b_and!18645)))

(declare-fun b!447902 () Bool)

(declare-fun res!266225 () Bool)

(declare-fun e!262885 () Bool)

(assert (=> b!447902 (=> (not res!266225) (not e!262885))))

(declare-datatypes ((array!27681 0))(
  ( (array!27682 (arr!13283 (Array (_ BitVec 32) (_ BitVec 64))) (size!13635 (_ BitVec 32))) )
))
(declare-fun lt!204060 () array!27681)

(declare-datatypes ((List!7940 0))(
  ( (Nil!7937) (Cons!7936 (h!8792 (_ BitVec 64)) (t!13710 List!7940)) )
))
(declare-fun arrayNoDuplicates!0 (array!27681 (_ BitVec 32) List!7940) Bool)

(assert (=> b!447902 (= res!266225 (arrayNoDuplicates!0 lt!204060 #b00000000000000000000000000000000 Nil!7937))))

(declare-fun b!447903 () Bool)

(declare-fun res!266219 () Bool)

(declare-fun e!262884 () Bool)

(assert (=> b!447903 (=> (not res!266219) (not e!262884))))

(declare-fun _keys!709 () array!27681)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447903 (= res!266219 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!447904 () Bool)

(assert (=> b!447904 (= e!262885 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17047 0))(
  ( (V!17048 (val!6023 Int)) )
))
(declare-fun minValue!515 () V!17047)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5635 0))(
  ( (ValueCellFull!5635 (v!8274 V!17047)) (EmptyCell!5635) )
))
(declare-datatypes ((array!27683 0))(
  ( (array!27684 (arr!13284 (Array (_ BitVec 32) ValueCell!5635)) (size!13636 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27683)

(declare-fun zeroValue!515 () V!17047)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7830 0))(
  ( (tuple2!7831 (_1!3925 (_ BitVec 64)) (_2!3925 V!17047)) )
))
(declare-datatypes ((List!7941 0))(
  ( (Nil!7938) (Cons!7937 (h!8793 tuple2!7830) (t!13711 List!7941)) )
))
(declare-datatypes ((ListLongMap!6757 0))(
  ( (ListLongMap!6758 (toList!3394 List!7941)) )
))
(declare-fun lt!204059 () ListLongMap!6757)

(declare-fun v!412 () V!17047)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1574 (array!27681 array!27683 (_ BitVec 32) (_ BitVec 32) V!17047 V!17047 (_ BitVec 32) Int) ListLongMap!6757)

(assert (=> b!447904 (= lt!204059 (getCurrentListMapNoExtraKeys!1574 lt!204060 (array!27684 (store (arr!13284 _values!549) i!563 (ValueCellFull!5635 v!412)) (size!13636 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204061 () ListLongMap!6757)

(assert (=> b!447904 (= lt!204061 (getCurrentListMapNoExtraKeys!1574 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447905 () Bool)

(declare-fun res!266222 () Bool)

(assert (=> b!447905 (=> (not res!266222) (not e!262884))))

(assert (=> b!447905 (= res!266222 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13635 _keys!709))))))

(declare-fun b!447906 () Bool)

(declare-fun res!266221 () Bool)

(assert (=> b!447906 (=> (not res!266221) (not e!262884))))

(assert (=> b!447906 (= res!266221 (and (= (size!13636 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13635 _keys!709) (size!13636 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447907 () Bool)

(declare-fun e!262883 () Bool)

(declare-fun e!262886 () Bool)

(declare-fun mapRes!19569 () Bool)

(assert (=> b!447907 (= e!262883 (and e!262886 mapRes!19569))))

(declare-fun condMapEmpty!19569 () Bool)

(declare-fun mapDefault!19569 () ValueCell!5635)

