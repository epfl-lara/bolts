; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40640 () Bool)

(assert start!40640)

(declare-fun b_free!10643 () Bool)

(declare-fun b_next!10643 () Bool)

(assert (=> start!40640 (= b_free!10643 (not b_next!10643))))

(declare-fun tp!37748 () Bool)

(declare-fun b_and!18669 () Bool)

(assert (=> start!40640 (= tp!37748 b_and!18669)))

(declare-fun b!448442 () Bool)

(declare-fun res!266653 () Bool)

(declare-fun e!263098 () Bool)

(assert (=> b!448442 (=> (not res!266653) (not e!263098))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448442 (= res!266653 (validMask!0 mask!1025))))

(declare-fun b!448443 () Bool)

(declare-fun e!263099 () Bool)

(declare-fun tp_is_empty!11981 () Bool)

(assert (=> b!448443 (= e!263099 tp_is_empty!11981)))

(declare-fun b!448444 () Bool)

(declare-fun res!266651 () Bool)

(assert (=> b!448444 (=> (not res!266651) (not e!263098))))

(declare-datatypes ((array!27729 0))(
  ( (array!27730 (arr!13307 (Array (_ BitVec 32) (_ BitVec 64))) (size!13659 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27729)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17079 0))(
  ( (V!17080 (val!6035 Int)) )
))
(declare-datatypes ((ValueCell!5647 0))(
  ( (ValueCellFull!5647 (v!8286 V!17079)) (EmptyCell!5647) )
))
(declare-datatypes ((array!27731 0))(
  ( (array!27732 (arr!13308 (Array (_ BitVec 32) ValueCell!5647)) (size!13660 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27731)

(assert (=> b!448444 (= res!266651 (and (= (size!13660 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13659 _keys!709) (size!13660 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19605 () Bool)

(declare-fun mapRes!19605 () Bool)

(assert (=> mapIsEmpty!19605 mapRes!19605))

(declare-fun b!448445 () Bool)

(declare-fun res!266650 () Bool)

(assert (=> b!448445 (=> (not res!266650) (not e!263098))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448445 (= res!266650 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13659 _keys!709))))))

(declare-fun b!448446 () Bool)

(declare-fun res!266648 () Bool)

(declare-fun e!263101 () Bool)

(assert (=> b!448446 (=> (not res!266648) (not e!263101))))

(declare-fun lt!204169 () array!27729)

(declare-datatypes ((List!7961 0))(
  ( (Nil!7958) (Cons!7957 (h!8813 (_ BitVec 64)) (t!13731 List!7961)) )
))
(declare-fun arrayNoDuplicates!0 (array!27729 (_ BitVec 32) List!7961) Bool)

(assert (=> b!448446 (= res!266648 (arrayNoDuplicates!0 lt!204169 #b00000000000000000000000000000000 Nil!7958))))

(declare-fun b!448447 () Bool)

(declare-fun res!266655 () Bool)

(assert (=> b!448447 (=> (not res!266655) (not e!263098))))

(assert (=> b!448447 (= res!266655 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7958))))

(declare-fun mapNonEmpty!19605 () Bool)

(declare-fun tp!37749 () Bool)

(assert (=> mapNonEmpty!19605 (= mapRes!19605 (and tp!37749 e!263099))))

(declare-fun mapValue!19605 () ValueCell!5647)

(declare-fun mapKey!19605 () (_ BitVec 32))

(declare-fun mapRest!19605 () (Array (_ BitVec 32) ValueCell!5647))

(assert (=> mapNonEmpty!19605 (= (arr!13308 _values!549) (store mapRest!19605 mapKey!19605 mapValue!19605))))

(declare-fun b!448448 () Bool)

(declare-fun res!266657 () Bool)

(assert (=> b!448448 (=> (not res!266657) (not e!263098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27729 (_ BitVec 32)) Bool)

(assert (=> b!448448 (= res!266657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448449 () Bool)

(declare-fun e!263103 () Bool)

(assert (=> b!448449 (= e!263103 tp_is_empty!11981)))

(declare-fun b!448450 () Bool)

(declare-fun res!266654 () Bool)

(assert (=> b!448450 (=> (not res!266654) (not e!263098))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448450 (= res!266654 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!448451 () Bool)

(declare-fun res!266656 () Bool)

(assert (=> b!448451 (=> (not res!266656) (not e!263101))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!448451 (= res!266656 (bvsle from!863 i!563))))

(declare-fun res!266649 () Bool)

(assert (=> start!40640 (=> (not res!266649) (not e!263098))))

(assert (=> start!40640 (= res!266649 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13659 _keys!709))))))

(assert (=> start!40640 e!263098))

(assert (=> start!40640 tp_is_empty!11981))

(assert (=> start!40640 tp!37748))

(assert (=> start!40640 true))

(declare-fun e!263102 () Bool)

(declare-fun array_inv!9636 (array!27731) Bool)

(assert (=> start!40640 (and (array_inv!9636 _values!549) e!263102)))

(declare-fun array_inv!9637 (array!27729) Bool)

(assert (=> start!40640 (array_inv!9637 _keys!709)))

(declare-fun b!448452 () Bool)

(assert (=> b!448452 (= e!263098 e!263101)))

(declare-fun res!266647 () Bool)

(assert (=> b!448452 (=> (not res!266647) (not e!263101))))

(assert (=> b!448452 (= res!266647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204169 mask!1025))))

(assert (=> b!448452 (= lt!204169 (array!27730 (store (arr!13307 _keys!709) i!563 k!794) (size!13659 _keys!709)))))

(declare-fun b!448453 () Bool)

(assert (=> b!448453 (= e!263101 false)))

(declare-fun minValue!515 () V!17079)

(declare-fun defaultEntry!557 () Int)

(declare-fun v!412 () V!17079)

(declare-fun zeroValue!515 () V!17079)

(declare-datatypes ((tuple2!7850 0))(
  ( (tuple2!7851 (_1!3935 (_ BitVec 64)) (_2!3935 V!17079)) )
))
(declare-datatypes ((List!7962 0))(
  ( (Nil!7959) (Cons!7958 (h!8814 tuple2!7850) (t!13732 List!7962)) )
))
(declare-datatypes ((ListLongMap!6777 0))(
  ( (ListLongMap!6778 (toList!3404 List!7962)) )
))
(declare-fun lt!204167 () ListLongMap!6777)

(declare-fun getCurrentListMapNoExtraKeys!1584 (array!27729 array!27731 (_ BitVec 32) (_ BitVec 32) V!17079 V!17079 (_ BitVec 32) Int) ListLongMap!6777)

(assert (=> b!448453 (= lt!204167 (getCurrentListMapNoExtraKeys!1584 lt!204169 (array!27732 (store (arr!13308 _values!549) i!563 (ValueCellFull!5647 v!412)) (size!13660 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204168 () ListLongMap!6777)

(assert (=> b!448453 (= lt!204168 (getCurrentListMapNoExtraKeys!1584 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448454 () Bool)

(declare-fun res!266652 () Bool)

(assert (=> b!448454 (=> (not res!266652) (not e!263098))))

(assert (=> b!448454 (= res!266652 (or (= (select (arr!13307 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13307 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448455 () Bool)

(assert (=> b!448455 (= e!263102 (and e!263103 mapRes!19605))))

(declare-fun condMapEmpty!19605 () Bool)

(declare-fun mapDefault!19605 () ValueCell!5647)

