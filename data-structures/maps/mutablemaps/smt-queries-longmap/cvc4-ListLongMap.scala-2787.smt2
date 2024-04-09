; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40622 () Bool)

(assert start!40622)

(declare-fun b_free!10625 () Bool)

(declare-fun b_next!10625 () Bool)

(assert (=> start!40622 (= b_free!10625 (not b_next!10625))))

(declare-fun tp!37694 () Bool)

(declare-fun b_and!18651 () Bool)

(assert (=> start!40622 (= tp!37694 b_and!18651)))

(declare-fun res!266328 () Bool)

(declare-fun e!262937 () Bool)

(assert (=> start!40622 (=> (not res!266328) (not e!262937))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27693 0))(
  ( (array!27694 (arr!13289 (Array (_ BitVec 32) (_ BitVec 64))) (size!13641 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27693)

(assert (=> start!40622 (= res!266328 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13641 _keys!709))))))

(assert (=> start!40622 e!262937))

(declare-fun tp_is_empty!11963 () Bool)

(assert (=> start!40622 tp_is_empty!11963))

(assert (=> start!40622 tp!37694))

(assert (=> start!40622 true))

(declare-datatypes ((V!17055 0))(
  ( (V!17056 (val!6026 Int)) )
))
(declare-datatypes ((ValueCell!5638 0))(
  ( (ValueCellFull!5638 (v!8277 V!17055)) (EmptyCell!5638) )
))
(declare-datatypes ((array!27695 0))(
  ( (array!27696 (arr!13290 (Array (_ BitVec 32) ValueCell!5638)) (size!13642 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27695)

(declare-fun e!262941 () Bool)

(declare-fun array_inv!9626 (array!27695) Bool)

(assert (=> start!40622 (and (array_inv!9626 _values!549) e!262941)))

(declare-fun array_inv!9627 (array!27693) Bool)

(assert (=> start!40622 (array_inv!9627 _keys!709)))

(declare-fun b!448037 () Bool)

(declare-fun res!266332 () Bool)

(assert (=> b!448037 (=> (not res!266332) (not e!262937))))

(declare-datatypes ((List!7946 0))(
  ( (Nil!7943) (Cons!7942 (h!8798 (_ BitVec 64)) (t!13716 List!7946)) )
))
(declare-fun arrayNoDuplicates!0 (array!27693 (_ BitVec 32) List!7946) Bool)

(assert (=> b!448037 (= res!266332 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7943))))

(declare-fun b!448038 () Bool)

(declare-fun e!262936 () Bool)

(assert (=> b!448038 (= e!262936 false)))

(declare-fun minValue!515 () V!17055)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17055)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!204086 () array!27693)

(declare-fun v!412 () V!17055)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7836 0))(
  ( (tuple2!7837 (_1!3928 (_ BitVec 64)) (_2!3928 V!17055)) )
))
(declare-datatypes ((List!7947 0))(
  ( (Nil!7944) (Cons!7943 (h!8799 tuple2!7836) (t!13717 List!7947)) )
))
(declare-datatypes ((ListLongMap!6763 0))(
  ( (ListLongMap!6764 (toList!3397 List!7947)) )
))
(declare-fun lt!204088 () ListLongMap!6763)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1577 (array!27693 array!27695 (_ BitVec 32) (_ BitVec 32) V!17055 V!17055 (_ BitVec 32) Int) ListLongMap!6763)

(assert (=> b!448038 (= lt!204088 (getCurrentListMapNoExtraKeys!1577 lt!204086 (array!27696 (store (arr!13290 _values!549) i!563 (ValueCellFull!5638 v!412)) (size!13642 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204087 () ListLongMap!6763)

(assert (=> b!448038 (= lt!204087 (getCurrentListMapNoExtraKeys!1577 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448039 () Bool)

(declare-fun res!266323 () Bool)

(assert (=> b!448039 (=> (not res!266323) (not e!262936))))

(assert (=> b!448039 (= res!266323 (arrayNoDuplicates!0 lt!204086 #b00000000000000000000000000000000 Nil!7943))))

(declare-fun b!448040 () Bool)

(declare-fun res!266325 () Bool)

(assert (=> b!448040 (=> (not res!266325) (not e!262937))))

(assert (=> b!448040 (= res!266325 (and (= (size!13642 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13641 _keys!709) (size!13642 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448041 () Bool)

(declare-fun res!266330 () Bool)

(assert (=> b!448041 (=> (not res!266330) (not e!262937))))

(assert (=> b!448041 (= res!266330 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13641 _keys!709))))))

(declare-fun b!448042 () Bool)

(declare-fun e!262938 () Bool)

(declare-fun mapRes!19578 () Bool)

(assert (=> b!448042 (= e!262941 (and e!262938 mapRes!19578))))

(declare-fun condMapEmpty!19578 () Bool)

(declare-fun mapDefault!19578 () ValueCell!5638)

