; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39890 () Bool)

(assert start!39890)

(declare-fun b_free!10149 () Bool)

(declare-fun b_next!10149 () Bool)

(assert (=> start!39890 (= b_free!10149 (not b_next!10149))))

(declare-fun tp!35976 () Bool)

(declare-fun b_and!17975 () Bool)

(assert (=> start!39890 (= tp!35976 b_and!17975)))

(declare-fun b!431625 () Bool)

(declare-datatypes ((Unit!12697 0))(
  ( (Unit!12698) )
))
(declare-fun e!255388 () Unit!12697)

(declare-fun Unit!12699 () Unit!12697)

(assert (=> b!431625 (= e!255388 Unit!12699)))

(declare-fun b!431626 () Bool)

(declare-fun res!253886 () Bool)

(declare-fun e!255394 () Bool)

(assert (=> b!431626 (=> (not res!253886) (not e!255394))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431626 (= res!253886 (validMask!0 mask!1025))))

(declare-fun res!253880 () Bool)

(assert (=> start!39890 (=> (not res!253880) (not e!255394))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26415 0))(
  ( (array!26416 (arr!12654 (Array (_ BitVec 32) (_ BitVec 64))) (size!13006 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26415)

(assert (=> start!39890 (= res!253880 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13006 _keys!709))))))

(assert (=> start!39890 e!255394))

(declare-fun tp_is_empty!11301 () Bool)

(assert (=> start!39890 tp_is_empty!11301))

(assert (=> start!39890 tp!35976))

(assert (=> start!39890 true))

(declare-datatypes ((V!16173 0))(
  ( (V!16174 (val!5695 Int)) )
))
(declare-datatypes ((ValueCell!5307 0))(
  ( (ValueCellFull!5307 (v!7938 V!16173)) (EmptyCell!5307) )
))
(declare-datatypes ((array!26417 0))(
  ( (array!26418 (arr!12655 (Array (_ BitVec 32) ValueCell!5307)) (size!13007 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26417)

(declare-fun e!255393 () Bool)

(declare-fun array_inv!9200 (array!26417) Bool)

(assert (=> start!39890 (and (array_inv!9200 _values!549) e!255393)))

(declare-fun array_inv!9201 (array!26415) Bool)

(assert (=> start!39890 (array_inv!9201 _keys!709)))

(declare-fun b!431627 () Bool)

(declare-fun res!253888 () Bool)

(assert (=> b!431627 (=> (not res!253888) (not e!255394))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431627 (= res!253888 (or (= (select (arr!12654 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12654 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18573 () Bool)

(declare-fun mapRes!18573 () Bool)

(declare-fun tp!35975 () Bool)

(declare-fun e!255390 () Bool)

(assert (=> mapNonEmpty!18573 (= mapRes!18573 (and tp!35975 e!255390))))

(declare-fun mapRest!18573 () (Array (_ BitVec 32) ValueCell!5307))

(declare-fun mapValue!18573 () ValueCell!5307)

(declare-fun mapKey!18573 () (_ BitVec 32))

(assert (=> mapNonEmpty!18573 (= (arr!12655 _values!549) (store mapRest!18573 mapKey!18573 mapValue!18573))))

(declare-fun b!431628 () Bool)

(declare-fun res!253876 () Bool)

(declare-fun e!255387 () Bool)

(assert (=> b!431628 (=> (not res!253876) (not e!255387))))

(assert (=> b!431628 (= res!253876 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18573 () Bool)

(assert (=> mapIsEmpty!18573 mapRes!18573))

(declare-fun b!431629 () Bool)

(declare-fun res!253887 () Bool)

(assert (=> b!431629 (=> (not res!253887) (not e!255394))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!431629 (= res!253887 (and (= (size!13007 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13006 _keys!709) (size!13007 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!431630 () Bool)

(declare-fun e!255389 () Bool)

(assert (=> b!431630 (= e!255387 e!255389)))

(declare-fun res!253878 () Bool)

(assert (=> b!431630 (=> (not res!253878) (not e!255389))))

(assert (=> b!431630 (= res!253878 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!197832 () array!26417)

(declare-fun minValue!515 () V!16173)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7446 0))(
  ( (tuple2!7447 (_1!3733 (_ BitVec 64)) (_2!3733 V!16173)) )
))
(declare-datatypes ((List!7499 0))(
  ( (Nil!7496) (Cons!7495 (h!8351 tuple2!7446) (t!13105 List!7499)) )
))
(declare-datatypes ((ListLongMap!6373 0))(
  ( (ListLongMap!6374 (toList!3202 List!7499)) )
))
(declare-fun lt!197831 () ListLongMap!6373)

(declare-fun zeroValue!515 () V!16173)

(declare-fun lt!197819 () array!26415)

(declare-fun getCurrentListMapNoExtraKeys!1396 (array!26415 array!26417 (_ BitVec 32) (_ BitVec 32) V!16173 V!16173 (_ BitVec 32) Int) ListLongMap!6373)

(assert (=> b!431630 (= lt!197831 (getCurrentListMapNoExtraKeys!1396 lt!197819 lt!197832 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16173)

(assert (=> b!431630 (= lt!197832 (array!26418 (store (arr!12655 _values!549) i!563 (ValueCellFull!5307 v!412)) (size!13007 _values!549)))))

(declare-fun lt!197818 () ListLongMap!6373)

(assert (=> b!431630 (= lt!197818 (getCurrentListMapNoExtraKeys!1396 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431631 () Bool)

(assert (=> b!431631 (= e!255390 tp_is_empty!11301)))

(declare-fun b!431632 () Bool)

(declare-fun e!255392 () Bool)

(declare-fun e!255386 () Bool)

(assert (=> b!431632 (= e!255392 e!255386)))

(declare-fun res!253890 () Bool)

(assert (=> b!431632 (=> res!253890 e!255386)))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!431632 (= res!253890 (= k0!794 (select (arr!12654 _keys!709) from!863)))))

(assert (=> b!431632 (not (= (select (arr!12654 _keys!709) from!863) k0!794))))

(declare-fun lt!197825 () Unit!12697)

(assert (=> b!431632 (= lt!197825 e!255388)))

(declare-fun c!55484 () Bool)

(assert (=> b!431632 (= c!55484 (= (select (arr!12654 _keys!709) from!863) k0!794))))

(declare-fun lt!197827 () ListLongMap!6373)

(assert (=> b!431632 (= lt!197831 lt!197827)))

(declare-fun lt!197824 () ListLongMap!6373)

(declare-fun lt!197826 () tuple2!7446)

(declare-fun +!1348 (ListLongMap!6373 tuple2!7446) ListLongMap!6373)

(assert (=> b!431632 (= lt!197827 (+!1348 lt!197824 lt!197826))))

(declare-fun lt!197820 () V!16173)

(assert (=> b!431632 (= lt!197826 (tuple2!7447 (select (arr!12654 _keys!709) from!863) lt!197820))))

(declare-fun get!6291 (ValueCell!5307 V!16173) V!16173)

(declare-fun dynLambda!788 (Int (_ BitVec 64)) V!16173)

(assert (=> b!431632 (= lt!197820 (get!6291 (select (arr!12655 _values!549) from!863) (dynLambda!788 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431633 () Bool)

(declare-fun e!255391 () Bool)

(assert (=> b!431633 (= e!255393 (and e!255391 mapRes!18573))))

(declare-fun condMapEmpty!18573 () Bool)

(declare-fun mapDefault!18573 () ValueCell!5307)

(assert (=> b!431633 (= condMapEmpty!18573 (= (arr!12655 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5307)) mapDefault!18573)))))

(declare-fun b!431634 () Bool)

(declare-fun res!253881 () Bool)

(assert (=> b!431634 (=> (not res!253881) (not e!255394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26415 (_ BitVec 32)) Bool)

(assert (=> b!431634 (= res!253881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431635 () Bool)

(assert (=> b!431635 (= e!255386 true)))

(declare-fun lt!197829 () tuple2!7446)

(declare-fun lt!197828 () ListLongMap!6373)

(assert (=> b!431635 (= lt!197827 (+!1348 (+!1348 lt!197828 lt!197826) lt!197829))))

(declare-fun lt!197830 () Unit!12697)

(declare-fun addCommutativeForDiffKeys!363 (ListLongMap!6373 (_ BitVec 64) V!16173 (_ BitVec 64) V!16173) Unit!12697)

(assert (=> b!431635 (= lt!197830 (addCommutativeForDiffKeys!363 lt!197828 k0!794 v!412 (select (arr!12654 _keys!709) from!863) lt!197820))))

(declare-fun b!431636 () Bool)

(declare-fun res!253883 () Bool)

(assert (=> b!431636 (=> (not res!253883) (not e!255394))))

(declare-fun arrayContainsKey!0 (array!26415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431636 (= res!253883 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!431637 () Bool)

(assert (=> b!431637 (= e!255389 (not e!255392))))

(declare-fun res!253879 () Bool)

(assert (=> b!431637 (=> res!253879 e!255392)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431637 (= res!253879 (not (validKeyInArray!0 (select (arr!12654 _keys!709) from!863))))))

(declare-fun lt!197821 () ListLongMap!6373)

(assert (=> b!431637 (= lt!197821 lt!197824)))

(assert (=> b!431637 (= lt!197824 (+!1348 lt!197828 lt!197829))))

(assert (=> b!431637 (= lt!197821 (getCurrentListMapNoExtraKeys!1396 lt!197819 lt!197832 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!431637 (= lt!197829 (tuple2!7447 k0!794 v!412))))

(assert (=> b!431637 (= lt!197828 (getCurrentListMapNoExtraKeys!1396 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197822 () Unit!12697)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!540 (array!26415 array!26417 (_ BitVec 32) (_ BitVec 32) V!16173 V!16173 (_ BitVec 32) (_ BitVec 64) V!16173 (_ BitVec 32) Int) Unit!12697)

(assert (=> b!431637 (= lt!197822 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!540 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431638 () Bool)

(declare-fun res!253882 () Bool)

(assert (=> b!431638 (=> (not res!253882) (not e!255394))))

(declare-datatypes ((List!7500 0))(
  ( (Nil!7497) (Cons!7496 (h!8352 (_ BitVec 64)) (t!13106 List!7500)) )
))
(declare-fun arrayNoDuplicates!0 (array!26415 (_ BitVec 32) List!7500) Bool)

(assert (=> b!431638 (= res!253882 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7497))))

(declare-fun b!431639 () Bool)

(declare-fun res!253889 () Bool)

(assert (=> b!431639 (=> (not res!253889) (not e!255394))))

(assert (=> b!431639 (= res!253889 (validKeyInArray!0 k0!794))))

(declare-fun b!431640 () Bool)

(declare-fun res!253884 () Bool)

(assert (=> b!431640 (=> (not res!253884) (not e!255394))))

(assert (=> b!431640 (= res!253884 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13006 _keys!709))))))

(declare-fun b!431641 () Bool)

(declare-fun Unit!12700 () Unit!12697)

(assert (=> b!431641 (= e!255388 Unit!12700)))

(declare-fun lt!197823 () Unit!12697)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26415 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12697)

(assert (=> b!431641 (= lt!197823 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431641 false))

(declare-fun b!431642 () Bool)

(assert (=> b!431642 (= e!255391 tp_is_empty!11301)))

(declare-fun b!431643 () Bool)

(declare-fun res!253877 () Bool)

(assert (=> b!431643 (=> (not res!253877) (not e!255387))))

(assert (=> b!431643 (= res!253877 (arrayNoDuplicates!0 lt!197819 #b00000000000000000000000000000000 Nil!7497))))

(declare-fun b!431644 () Bool)

(assert (=> b!431644 (= e!255394 e!255387)))

(declare-fun res!253885 () Bool)

(assert (=> b!431644 (=> (not res!253885) (not e!255387))))

(assert (=> b!431644 (= res!253885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197819 mask!1025))))

(assert (=> b!431644 (= lt!197819 (array!26416 (store (arr!12654 _keys!709) i!563 k0!794) (size!13006 _keys!709)))))

(assert (= (and start!39890 res!253880) b!431626))

(assert (= (and b!431626 res!253886) b!431629))

(assert (= (and b!431629 res!253887) b!431634))

(assert (= (and b!431634 res!253881) b!431638))

(assert (= (and b!431638 res!253882) b!431640))

(assert (= (and b!431640 res!253884) b!431639))

(assert (= (and b!431639 res!253889) b!431627))

(assert (= (and b!431627 res!253888) b!431636))

(assert (= (and b!431636 res!253883) b!431644))

(assert (= (and b!431644 res!253885) b!431643))

(assert (= (and b!431643 res!253877) b!431628))

(assert (= (and b!431628 res!253876) b!431630))

(assert (= (and b!431630 res!253878) b!431637))

(assert (= (and b!431637 (not res!253879)) b!431632))

(assert (= (and b!431632 c!55484) b!431641))

(assert (= (and b!431632 (not c!55484)) b!431625))

(assert (= (and b!431632 (not res!253890)) b!431635))

(assert (= (and b!431633 condMapEmpty!18573) mapIsEmpty!18573))

(assert (= (and b!431633 (not condMapEmpty!18573)) mapNonEmpty!18573))

(get-info :version)

(assert (= (and mapNonEmpty!18573 ((_ is ValueCellFull!5307) mapValue!18573)) b!431631))

(assert (= (and b!431633 ((_ is ValueCellFull!5307) mapDefault!18573)) b!431642))

(assert (= start!39890 b!431633))

(declare-fun b_lambda!9267 () Bool)

(assert (=> (not b_lambda!9267) (not b!431632)))

(declare-fun t!13104 () Bool)

(declare-fun tb!3563 () Bool)

(assert (=> (and start!39890 (= defaultEntry!557 defaultEntry!557) t!13104) tb!3563))

(declare-fun result!6645 () Bool)

(assert (=> tb!3563 (= result!6645 tp_is_empty!11301)))

(assert (=> b!431632 t!13104))

(declare-fun b_and!17977 () Bool)

(assert (= b_and!17975 (and (=> t!13104 result!6645) b_and!17977)))

(declare-fun m!419783 () Bool)

(assert (=> b!431643 m!419783))

(declare-fun m!419785 () Bool)

(assert (=> b!431626 m!419785))

(declare-fun m!419787 () Bool)

(assert (=> b!431634 m!419787))

(declare-fun m!419789 () Bool)

(assert (=> start!39890 m!419789))

(declare-fun m!419791 () Bool)

(assert (=> start!39890 m!419791))

(declare-fun m!419793 () Bool)

(assert (=> b!431627 m!419793))

(declare-fun m!419795 () Bool)

(assert (=> b!431638 m!419795))

(declare-fun m!419797 () Bool)

(assert (=> b!431630 m!419797))

(declare-fun m!419799 () Bool)

(assert (=> b!431630 m!419799))

(declare-fun m!419801 () Bool)

(assert (=> b!431630 m!419801))

(declare-fun m!419803 () Bool)

(assert (=> mapNonEmpty!18573 m!419803))

(declare-fun m!419805 () Bool)

(assert (=> b!431644 m!419805))

(declare-fun m!419807 () Bool)

(assert (=> b!431644 m!419807))

(declare-fun m!419809 () Bool)

(assert (=> b!431637 m!419809))

(declare-fun m!419811 () Bool)

(assert (=> b!431637 m!419811))

(declare-fun m!419813 () Bool)

(assert (=> b!431637 m!419813))

(declare-fun m!419815 () Bool)

(assert (=> b!431637 m!419815))

(assert (=> b!431637 m!419809))

(declare-fun m!419817 () Bool)

(assert (=> b!431637 m!419817))

(declare-fun m!419819 () Bool)

(assert (=> b!431637 m!419819))

(assert (=> b!431632 m!419809))

(declare-fun m!419821 () Bool)

(assert (=> b!431632 m!419821))

(declare-fun m!419823 () Bool)

(assert (=> b!431632 m!419823))

(declare-fun m!419825 () Bool)

(assert (=> b!431632 m!419825))

(assert (=> b!431632 m!419823))

(assert (=> b!431632 m!419821))

(declare-fun m!419827 () Bool)

(assert (=> b!431632 m!419827))

(declare-fun m!419829 () Bool)

(assert (=> b!431635 m!419829))

(assert (=> b!431635 m!419829))

(declare-fun m!419831 () Bool)

(assert (=> b!431635 m!419831))

(assert (=> b!431635 m!419809))

(assert (=> b!431635 m!419809))

(declare-fun m!419833 () Bool)

(assert (=> b!431635 m!419833))

(declare-fun m!419835 () Bool)

(assert (=> b!431639 m!419835))

(declare-fun m!419837 () Bool)

(assert (=> b!431641 m!419837))

(declare-fun m!419839 () Bool)

(assert (=> b!431636 m!419839))

(check-sat (not b_lambda!9267) (not b_next!10149) (not b!431634) tp_is_empty!11301 (not b!431641) (not b!431639) (not b!431643) (not b!431635) (not b!431632) (not b!431626) (not b!431638) (not mapNonEmpty!18573) (not start!39890) (not b!431636) (not b!431644) b_and!17977 (not b!431637) (not b!431630))
(check-sat b_and!17977 (not b_next!10149))
