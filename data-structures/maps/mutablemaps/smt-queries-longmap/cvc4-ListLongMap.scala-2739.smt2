; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40264 () Bool)

(assert start!40264)

(declare-fun b_free!10523 () Bool)

(declare-fun b_next!10523 () Bool)

(assert (=> start!40264 (= b_free!10523 (not b_next!10523))))

(declare-fun tp!37097 () Bool)

(declare-fun b_and!18509 () Bool)

(assert (=> start!40264 (= tp!37097 b_and!18509)))

(declare-fun b!441713 () Bool)

(declare-fun res!261647 () Bool)

(declare-fun e!260028 () Bool)

(assert (=> b!441713 (=> (not res!261647) (not e!260028))))

(declare-datatypes ((array!27137 0))(
  ( (array!27138 (arr!13015 (Array (_ BitVec 32) (_ BitVec 64))) (size!13367 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27137)

(declare-datatypes ((List!7792 0))(
  ( (Nil!7789) (Cons!7788 (h!8644 (_ BitVec 64)) (t!13556 List!7792)) )
))
(declare-fun arrayNoDuplicates!0 (array!27137 (_ BitVec 32) List!7792) Bool)

(assert (=> b!441713 (= res!261647 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7789))))

(declare-fun b!441714 () Bool)

(declare-fun e!260027 () Bool)

(declare-fun tp_is_empty!11675 () Bool)

(assert (=> b!441714 (= e!260027 tp_is_empty!11675)))

(declare-fun b!441715 () Bool)

(declare-fun res!261645 () Bool)

(assert (=> b!441715 (=> (not res!261645) (not e!260028))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16671 0))(
  ( (V!16672 (val!5882 Int)) )
))
(declare-datatypes ((ValueCell!5494 0))(
  ( (ValueCellFull!5494 (v!8125 V!16671)) (EmptyCell!5494) )
))
(declare-datatypes ((array!27139 0))(
  ( (array!27140 (arr!13016 (Array (_ BitVec 32) ValueCell!5494)) (size!13368 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27139)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!441715 (= res!261645 (and (= (size!13368 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13367 _keys!709) (size!13368 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19134 () Bool)

(declare-fun mapRes!19134 () Bool)

(assert (=> mapIsEmpty!19134 mapRes!19134))

(declare-fun b!441716 () Bool)

(declare-fun e!260030 () Bool)

(assert (=> b!441716 (= e!260030 (not true))))

(declare-fun minValue!515 () V!16671)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!203004 () array!27137)

(declare-fun zeroValue!515 () V!16671)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!203006 () array!27139)

(declare-fun v!412 () V!16671)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7752 0))(
  ( (tuple2!7753 (_1!3886 (_ BitVec 64)) (_2!3886 V!16671)) )
))
(declare-datatypes ((List!7793 0))(
  ( (Nil!7790) (Cons!7789 (h!8645 tuple2!7752) (t!13557 List!7793)) )
))
(declare-datatypes ((ListLongMap!6679 0))(
  ( (ListLongMap!6680 (toList!3355 List!7793)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1537 (array!27137 array!27139 (_ BitVec 32) (_ BitVec 32) V!16671 V!16671 (_ BitVec 32) Int) ListLongMap!6679)

(declare-fun +!1488 (ListLongMap!6679 tuple2!7752) ListLongMap!6679)

(assert (=> b!441716 (= (getCurrentListMapNoExtraKeys!1537 lt!203004 lt!203006 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1488 (getCurrentListMapNoExtraKeys!1537 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7753 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13091 0))(
  ( (Unit!13092) )
))
(declare-fun lt!203007 () Unit!13091)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!666 (array!27137 array!27139 (_ BitVec 32) (_ BitVec 32) V!16671 V!16671 (_ BitVec 32) (_ BitVec 64) V!16671 (_ BitVec 32) Int) Unit!13091)

(assert (=> b!441716 (= lt!203007 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!666 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441717 () Bool)

(declare-fun e!260026 () Bool)

(assert (=> b!441717 (= e!260026 e!260030)))

(declare-fun res!261648 () Bool)

(assert (=> b!441717 (=> (not res!261648) (not e!260030))))

(assert (=> b!441717 (= res!261648 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!203005 () ListLongMap!6679)

(assert (=> b!441717 (= lt!203005 (getCurrentListMapNoExtraKeys!1537 lt!203004 lt!203006 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!441717 (= lt!203006 (array!27140 (store (arr!13016 _values!549) i!563 (ValueCellFull!5494 v!412)) (size!13368 _values!549)))))

(declare-fun lt!203003 () ListLongMap!6679)

(assert (=> b!441717 (= lt!203003 (getCurrentListMapNoExtraKeys!1537 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441718 () Bool)

(declare-fun res!261654 () Bool)

(assert (=> b!441718 (=> (not res!261654) (not e!260028))))

(assert (=> b!441718 (= res!261654 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13367 _keys!709))))))

(declare-fun b!441719 () Bool)

(declare-fun res!261652 () Bool)

(assert (=> b!441719 (=> (not res!261652) (not e!260028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441719 (= res!261652 (validKeyInArray!0 k!794))))

(declare-fun b!441720 () Bool)

(assert (=> b!441720 (= e!260028 e!260026)))

(declare-fun res!261649 () Bool)

(assert (=> b!441720 (=> (not res!261649) (not e!260026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27137 (_ BitVec 32)) Bool)

(assert (=> b!441720 (= res!261649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203004 mask!1025))))

(assert (=> b!441720 (= lt!203004 (array!27138 (store (arr!13015 _keys!709) i!563 k!794) (size!13367 _keys!709)))))

(declare-fun b!441721 () Bool)

(declare-fun res!261650 () Bool)

(assert (=> b!441721 (=> (not res!261650) (not e!260028))))

(assert (=> b!441721 (= res!261650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441722 () Bool)

(declare-fun res!261656 () Bool)

(assert (=> b!441722 (=> (not res!261656) (not e!260028))))

(assert (=> b!441722 (= res!261656 (or (= (select (arr!13015 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13015 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441723 () Bool)

(declare-fun e!260031 () Bool)

(declare-fun e!260029 () Bool)

(assert (=> b!441723 (= e!260031 (and e!260029 mapRes!19134))))

(declare-fun condMapEmpty!19134 () Bool)

(declare-fun mapDefault!19134 () ValueCell!5494)

