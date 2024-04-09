; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39684 () Bool)

(assert start!39684)

(declare-fun b_free!9943 () Bool)

(declare-fun b_next!9943 () Bool)

(assert (=> start!39684 (= b_free!9943 (not b_next!9943))))

(declare-fun tp!35357 () Bool)

(declare-fun b_and!17617 () Bool)

(assert (=> start!39684 (= tp!35357 b_and!17617)))

(declare-fun b!425852 () Bool)

(declare-fun e!252724 () Bool)

(declare-fun tp_is_empty!11095 () Bool)

(assert (=> b!425852 (= e!252724 tp_is_empty!11095)))

(declare-fun b!425854 () Bool)

(declare-fun res!249543 () Bool)

(declare-fun e!252727 () Bool)

(assert (=> b!425854 (=> (not res!249543) (not e!252727))))

(declare-datatypes ((array!26015 0))(
  ( (array!26016 (arr!12454 (Array (_ BitVec 32) (_ BitVec 64))) (size!12806 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26015)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15899 0))(
  ( (V!15900 (val!5592 Int)) )
))
(declare-datatypes ((ValueCell!5204 0))(
  ( (ValueCellFull!5204 (v!7835 V!15899)) (EmptyCell!5204) )
))
(declare-datatypes ((array!26017 0))(
  ( (array!26018 (arr!12455 (Array (_ BitVec 32) ValueCell!5204)) (size!12807 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26017)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!425854 (= res!249543 (and (= (size!12807 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12806 _keys!709) (size!12807 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18264 () Bool)

(declare-fun mapRes!18264 () Bool)

(assert (=> mapIsEmpty!18264 mapRes!18264))

(declare-fun b!425855 () Bool)

(declare-fun e!252726 () Bool)

(assert (=> b!425855 (= e!252726 tp_is_empty!11095)))

(declare-fun b!425856 () Bool)

(declare-fun res!249542 () Bool)

(assert (=> b!425856 (=> (not res!249542) (not e!252727))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425856 (= res!249542 (or (= (select (arr!12454 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12454 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425857 () Bool)

(declare-fun res!249544 () Bool)

(assert (=> b!425857 (=> (not res!249544) (not e!252727))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425857 (= res!249544 (validKeyInArray!0 k!794))))

(declare-fun b!425858 () Bool)

(declare-fun e!252723 () Bool)

(assert (=> b!425858 (= e!252723 (not true))))

(declare-fun minValue!515 () V!15899)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!194802 () array!26015)

(declare-fun lt!194801 () array!26017)

(declare-fun zeroValue!515 () V!15899)

(declare-fun v!412 () V!15899)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7288 0))(
  ( (tuple2!7289 (_1!3654 (_ BitVec 64)) (_2!3654 V!15899)) )
))
(declare-datatypes ((List!7333 0))(
  ( (Nil!7330) (Cons!7329 (h!8185 tuple2!7288) (t!12785 List!7333)) )
))
(declare-datatypes ((ListLongMap!6215 0))(
  ( (ListLongMap!6216 (toList!3123 List!7333)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1324 (array!26015 array!26017 (_ BitVec 32) (_ BitVec 32) V!15899 V!15899 (_ BitVec 32) Int) ListLongMap!6215)

(declare-fun +!1280 (ListLongMap!6215 tuple2!7288) ListLongMap!6215)

(assert (=> b!425858 (= (getCurrentListMapNoExtraKeys!1324 lt!194802 lt!194801 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1280 (getCurrentListMapNoExtraKeys!1324 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7289 k!794 v!412)))))

(declare-datatypes ((Unit!12463 0))(
  ( (Unit!12464) )
))
(declare-fun lt!194805 () Unit!12463)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!482 (array!26015 array!26017 (_ BitVec 32) (_ BitVec 32) V!15899 V!15899 (_ BitVec 32) (_ BitVec 64) V!15899 (_ BitVec 32) Int) Unit!12463)

(assert (=> b!425858 (= lt!194805 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!482 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!425859 () Bool)

(declare-fun res!249534 () Bool)

(assert (=> b!425859 (=> (not res!249534) (not e!252727))))

(declare-datatypes ((List!7334 0))(
  ( (Nil!7331) (Cons!7330 (h!8186 (_ BitVec 64)) (t!12786 List!7334)) )
))
(declare-fun arrayNoDuplicates!0 (array!26015 (_ BitVec 32) List!7334) Bool)

(assert (=> b!425859 (= res!249534 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7331))))

(declare-fun b!425860 () Bool)

(declare-fun res!249536 () Bool)

(assert (=> b!425860 (=> (not res!249536) (not e!252727))))

(declare-fun arrayContainsKey!0 (array!26015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425860 (= res!249536 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!425861 () Bool)

(declare-fun res!249546 () Bool)

(declare-fun e!252725 () Bool)

(assert (=> b!425861 (=> (not res!249546) (not e!252725))))

(assert (=> b!425861 (= res!249546 (arrayNoDuplicates!0 lt!194802 #b00000000000000000000000000000000 Nil!7331))))

(declare-fun b!425862 () Bool)

(declare-fun res!249535 () Bool)

(assert (=> b!425862 (=> (not res!249535) (not e!252727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26015 (_ BitVec 32)) Bool)

(assert (=> b!425862 (= res!249535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425863 () Bool)

(declare-fun res!249539 () Bool)

(assert (=> b!425863 (=> (not res!249539) (not e!252727))))

(assert (=> b!425863 (= res!249539 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12806 _keys!709))))))

(declare-fun b!425864 () Bool)

(assert (=> b!425864 (= e!252725 e!252723)))

(declare-fun res!249537 () Bool)

(assert (=> b!425864 (=> (not res!249537) (not e!252723))))

(assert (=> b!425864 (= res!249537 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194803 () ListLongMap!6215)

(assert (=> b!425864 (= lt!194803 (getCurrentListMapNoExtraKeys!1324 lt!194802 lt!194801 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!425864 (= lt!194801 (array!26018 (store (arr!12455 _values!549) i!563 (ValueCellFull!5204 v!412)) (size!12807 _values!549)))))

(declare-fun lt!194804 () ListLongMap!6215)

(assert (=> b!425864 (= lt!194804 (getCurrentListMapNoExtraKeys!1324 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!249545 () Bool)

(assert (=> start!39684 (=> (not res!249545) (not e!252727))))

(assert (=> start!39684 (= res!249545 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12806 _keys!709))))))

(assert (=> start!39684 e!252727))

(assert (=> start!39684 tp_is_empty!11095))

(assert (=> start!39684 tp!35357))

(assert (=> start!39684 true))

(declare-fun e!252722 () Bool)

(declare-fun array_inv!9076 (array!26017) Bool)

(assert (=> start!39684 (and (array_inv!9076 _values!549) e!252722)))

(declare-fun array_inv!9077 (array!26015) Bool)

(assert (=> start!39684 (array_inv!9077 _keys!709)))

(declare-fun b!425853 () Bool)

(declare-fun res!249541 () Bool)

(assert (=> b!425853 (=> (not res!249541) (not e!252727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425853 (= res!249541 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!18264 () Bool)

(declare-fun tp!35358 () Bool)

(assert (=> mapNonEmpty!18264 (= mapRes!18264 (and tp!35358 e!252726))))

(declare-fun mapValue!18264 () ValueCell!5204)

(declare-fun mapRest!18264 () (Array (_ BitVec 32) ValueCell!5204))

(declare-fun mapKey!18264 () (_ BitVec 32))

(assert (=> mapNonEmpty!18264 (= (arr!12455 _values!549) (store mapRest!18264 mapKey!18264 mapValue!18264))))

(declare-fun b!425865 () Bool)

(assert (=> b!425865 (= e!252722 (and e!252724 mapRes!18264))))

(declare-fun condMapEmpty!18264 () Bool)

(declare-fun mapDefault!18264 () ValueCell!5204)

