; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40642 () Bool)

(assert start!40642)

(declare-fun b_free!10645 () Bool)

(declare-fun b_next!10645 () Bool)

(assert (=> start!40642 (= b_free!10645 (not b_next!10645))))

(declare-fun tp!37754 () Bool)

(declare-fun b_and!18671 () Bool)

(assert (=> start!40642 (= tp!37754 b_and!18671)))

(declare-fun b!448487 () Bool)

(declare-fun res!266683 () Bool)

(declare-fun e!263119 () Bool)

(assert (=> b!448487 (=> (not res!266683) (not e!263119))))

(declare-datatypes ((array!27733 0))(
  ( (array!27734 (arr!13309 (Array (_ BitVec 32) (_ BitVec 64))) (size!13661 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27733)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17083 0))(
  ( (V!17084 (val!6036 Int)) )
))
(declare-datatypes ((ValueCell!5648 0))(
  ( (ValueCellFull!5648 (v!8287 V!17083)) (EmptyCell!5648) )
))
(declare-datatypes ((array!27735 0))(
  ( (array!27736 (arr!13310 (Array (_ BitVec 32) ValueCell!5648)) (size!13662 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27735)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!448487 (= res!266683 (and (= (size!13662 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13661 _keys!709) (size!13662 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448488 () Bool)

(declare-fun e!263118 () Bool)

(declare-fun tp_is_empty!11983 () Bool)

(assert (=> b!448488 (= e!263118 tp_is_empty!11983)))

(declare-fun b!448489 () Bool)

(declare-fun e!263116 () Bool)

(assert (=> b!448489 (= e!263119 e!263116)))

(declare-fun res!266689 () Bool)

(assert (=> b!448489 (=> (not res!266689) (not e!263116))))

(declare-fun lt!204176 () array!27733)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27733 (_ BitVec 32)) Bool)

(assert (=> b!448489 (= res!266689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204176 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448489 (= lt!204176 (array!27734 (store (arr!13309 _keys!709) i!563 k!794) (size!13661 _keys!709)))))

(declare-fun b!448490 () Bool)

(declare-fun res!266688 () Bool)

(assert (=> b!448490 (=> (not res!266688) (not e!263119))))

(assert (=> b!448490 (= res!266688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19608 () Bool)

(declare-fun mapRes!19608 () Bool)

(assert (=> mapIsEmpty!19608 mapRes!19608))

(declare-fun b!448491 () Bool)

(assert (=> b!448491 (= e!263116 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17083)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17083)

(declare-datatypes ((tuple2!7852 0))(
  ( (tuple2!7853 (_1!3936 (_ BitVec 64)) (_2!3936 V!17083)) )
))
(declare-datatypes ((List!7963 0))(
  ( (Nil!7960) (Cons!7959 (h!8815 tuple2!7852) (t!13733 List!7963)) )
))
(declare-datatypes ((ListLongMap!6779 0))(
  ( (ListLongMap!6780 (toList!3405 List!7963)) )
))
(declare-fun lt!204178 () ListLongMap!6779)

(declare-fun v!412 () V!17083)

(declare-fun getCurrentListMapNoExtraKeys!1585 (array!27733 array!27735 (_ BitVec 32) (_ BitVec 32) V!17083 V!17083 (_ BitVec 32) Int) ListLongMap!6779)

(assert (=> b!448491 (= lt!204178 (getCurrentListMapNoExtraKeys!1585 lt!204176 (array!27736 (store (arr!13310 _values!549) i!563 (ValueCellFull!5648 v!412)) (size!13662 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204177 () ListLongMap!6779)

(assert (=> b!448491 (= lt!204177 (getCurrentListMapNoExtraKeys!1585 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448492 () Bool)

(declare-fun e!263121 () Bool)

(assert (=> b!448492 (= e!263121 tp_is_empty!11983)))

(declare-fun b!448493 () Bool)

(declare-fun res!266687 () Bool)

(assert (=> b!448493 (=> (not res!266687) (not e!263119))))

(declare-datatypes ((List!7964 0))(
  ( (Nil!7961) (Cons!7960 (h!8816 (_ BitVec 64)) (t!13734 List!7964)) )
))
(declare-fun arrayNoDuplicates!0 (array!27733 (_ BitVec 32) List!7964) Bool)

(assert (=> b!448493 (= res!266687 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7961))))

(declare-fun b!448494 () Bool)

(declare-fun res!266693 () Bool)

(assert (=> b!448494 (=> (not res!266693) (not e!263119))))

(declare-fun arrayContainsKey!0 (array!27733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448494 (= res!266693 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!448496 () Bool)

(declare-fun res!266690 () Bool)

(assert (=> b!448496 (=> (not res!266690) (not e!263119))))

(assert (=> b!448496 (= res!266690 (or (= (select (arr!13309 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13309 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448497 () Bool)

(declare-fun res!266686 () Bool)

(assert (=> b!448497 (=> (not res!266686) (not e!263116))))

(assert (=> b!448497 (= res!266686 (arrayNoDuplicates!0 lt!204176 #b00000000000000000000000000000000 Nil!7961))))

(declare-fun b!448498 () Bool)

(declare-fun res!266691 () Bool)

(assert (=> b!448498 (=> (not res!266691) (not e!263119))))

(assert (=> b!448498 (= res!266691 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13661 _keys!709))))))

(declare-fun b!448499 () Bool)

(declare-fun res!266684 () Bool)

(assert (=> b!448499 (=> (not res!266684) (not e!263116))))

(assert (=> b!448499 (= res!266684 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19608 () Bool)

(declare-fun tp!37755 () Bool)

(assert (=> mapNonEmpty!19608 (= mapRes!19608 (and tp!37755 e!263118))))

(declare-fun mapValue!19608 () ValueCell!5648)

(declare-fun mapKey!19608 () (_ BitVec 32))

(declare-fun mapRest!19608 () (Array (_ BitVec 32) ValueCell!5648))

(assert (=> mapNonEmpty!19608 (= (arr!13310 _values!549) (store mapRest!19608 mapKey!19608 mapValue!19608))))

(declare-fun b!448500 () Bool)

(declare-fun e!263117 () Bool)

(assert (=> b!448500 (= e!263117 (and e!263121 mapRes!19608))))

(declare-fun condMapEmpty!19608 () Bool)

(declare-fun mapDefault!19608 () ValueCell!5648)

