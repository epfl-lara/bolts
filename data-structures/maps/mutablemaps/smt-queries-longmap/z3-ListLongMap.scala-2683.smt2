; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39926 () Bool)

(assert start!39926)

(declare-fun b_free!10185 () Bool)

(declare-fun b_next!10185 () Bool)

(assert (=> start!39926 (= b_free!10185 (not b_next!10185))))

(declare-fun tp!36084 () Bool)

(declare-fun b_and!18047 () Bool)

(assert (=> start!39926 (= tp!36084 b_and!18047)))

(declare-fun b!432741 () Bool)

(declare-datatypes ((Unit!12754 0))(
  ( (Unit!12755) )
))
(declare-fun e!255926 () Unit!12754)

(declare-fun Unit!12756 () Unit!12754)

(assert (=> b!432741 (= e!255926 Unit!12756)))

(declare-fun b!432742 () Bool)

(declare-fun res!254700 () Bool)

(declare-fun e!255927 () Bool)

(assert (=> b!432742 (=> (not res!254700) (not e!255927))))

(declare-datatypes ((array!26483 0))(
  ( (array!26484 (arr!12688 (Array (_ BitVec 32) (_ BitVec 64))) (size!13040 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26483)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16221 0))(
  ( (V!16222 (val!5713 Int)) )
))
(declare-datatypes ((ValueCell!5325 0))(
  ( (ValueCellFull!5325 (v!7956 V!16221)) (EmptyCell!5325) )
))
(declare-datatypes ((array!26485 0))(
  ( (array!26486 (arr!12689 (Array (_ BitVec 32) ValueCell!5325)) (size!13041 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26485)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!432742 (= res!254700 (and (= (size!13041 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13040 _keys!709) (size!13041 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18627 () Bool)

(declare-fun mapRes!18627 () Bool)

(assert (=> mapIsEmpty!18627 mapRes!18627))

(declare-fun b!432743 () Bool)

(declare-fun res!254691 () Bool)

(assert (=> b!432743 (=> (not res!254691) (not e!255927))))

(declare-datatypes ((List!7528 0))(
  ( (Nil!7525) (Cons!7524 (h!8380 (_ BitVec 64)) (t!13170 List!7528)) )
))
(declare-fun arrayNoDuplicates!0 (array!26483 (_ BitVec 32) List!7528) Bool)

(assert (=> b!432743 (= res!254691 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7525))))

(declare-fun b!432744 () Bool)

(declare-fun e!255930 () Bool)

(declare-fun tp_is_empty!11337 () Bool)

(assert (=> b!432744 (= e!255930 tp_is_empty!11337)))

(declare-fun b!432745 () Bool)

(declare-fun e!255932 () Bool)

(declare-fun e!255929 () Bool)

(assert (=> b!432745 (= e!255932 e!255929)))

(declare-fun res!254695 () Bool)

(assert (=> b!432745 (=> res!254695 e!255929)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!432745 (= res!254695 (= k0!794 (select (arr!12688 _keys!709) from!863)))))

(assert (=> b!432745 (not (= (select (arr!12688 _keys!709) from!863) k0!794))))

(declare-fun lt!198640 () Unit!12754)

(assert (=> b!432745 (= lt!198640 e!255926)))

(declare-fun c!55538 () Bool)

(assert (=> b!432745 (= c!55538 (= (select (arr!12688 _keys!709) from!863) k0!794))))

(declare-datatypes ((tuple2!7478 0))(
  ( (tuple2!7479 (_1!3749 (_ BitVec 64)) (_2!3749 V!16221)) )
))
(declare-datatypes ((List!7529 0))(
  ( (Nil!7526) (Cons!7525 (h!8381 tuple2!7478) (t!13171 List!7529)) )
))
(declare-datatypes ((ListLongMap!6405 0))(
  ( (ListLongMap!6406 (toList!3218 List!7529)) )
))
(declare-fun lt!198630 () ListLongMap!6405)

(declare-fun lt!198632 () ListLongMap!6405)

(assert (=> b!432745 (= lt!198630 lt!198632)))

(declare-fun lt!198639 () ListLongMap!6405)

(declare-fun lt!198629 () tuple2!7478)

(declare-fun +!1364 (ListLongMap!6405 tuple2!7478) ListLongMap!6405)

(assert (=> b!432745 (= lt!198632 (+!1364 lt!198639 lt!198629))))

(declare-fun lt!198637 () V!16221)

(assert (=> b!432745 (= lt!198629 (tuple2!7479 (select (arr!12688 _keys!709) from!863) lt!198637))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6316 (ValueCell!5325 V!16221) V!16221)

(declare-fun dynLambda!801 (Int (_ BitVec 64)) V!16221)

(assert (=> b!432745 (= lt!198637 (get!6316 (select (arr!12689 _values!549) from!863) (dynLambda!801 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432746 () Bool)

(declare-fun res!254697 () Bool)

(declare-fun e!255928 () Bool)

(assert (=> b!432746 (=> (not res!254697) (not e!255928))))

(declare-fun lt!198641 () array!26483)

(assert (=> b!432746 (= res!254697 (arrayNoDuplicates!0 lt!198641 #b00000000000000000000000000000000 Nil!7525))))

(declare-fun b!432748 () Bool)

(declare-fun res!254688 () Bool)

(assert (=> b!432748 (=> (not res!254688) (not e!255927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26483 (_ BitVec 32)) Bool)

(assert (=> b!432748 (= res!254688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432749 () Bool)

(assert (=> b!432749 (= e!255929 true)))

(declare-fun lt!198633 () ListLongMap!6405)

(declare-fun lt!198631 () tuple2!7478)

(assert (=> b!432749 (= lt!198632 (+!1364 (+!1364 lt!198633 lt!198629) lt!198631))))

(declare-fun lt!198642 () Unit!12754)

(declare-fun v!412 () V!16221)

(declare-fun addCommutativeForDiffKeys!375 (ListLongMap!6405 (_ BitVec 64) V!16221 (_ BitVec 64) V!16221) Unit!12754)

(assert (=> b!432749 (= lt!198642 (addCommutativeForDiffKeys!375 lt!198633 k0!794 v!412 (select (arr!12688 _keys!709) from!863) lt!198637))))

(declare-fun b!432750 () Bool)

(declare-fun e!255931 () Bool)

(declare-fun e!255934 () Bool)

(assert (=> b!432750 (= e!255931 (and e!255934 mapRes!18627))))

(declare-fun condMapEmpty!18627 () Bool)

(declare-fun mapDefault!18627 () ValueCell!5325)

(assert (=> b!432750 (= condMapEmpty!18627 (= (arr!12689 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5325)) mapDefault!18627)))))

(declare-fun b!432751 () Bool)

(declare-fun res!254696 () Bool)

(assert (=> b!432751 (=> (not res!254696) (not e!255927))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432751 (= res!254696 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13040 _keys!709))))))

(declare-fun b!432752 () Bool)

(declare-fun e!255933 () Bool)

(assert (=> b!432752 (= e!255933 (not e!255932))))

(declare-fun res!254689 () Bool)

(assert (=> b!432752 (=> res!254689 e!255932)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432752 (= res!254689 (not (validKeyInArray!0 (select (arr!12688 _keys!709) from!863))))))

(declare-fun lt!198635 () ListLongMap!6405)

(assert (=> b!432752 (= lt!198635 lt!198639)))

(assert (=> b!432752 (= lt!198639 (+!1364 lt!198633 lt!198631))))

(declare-fun minValue!515 () V!16221)

(declare-fun zeroValue!515 () V!16221)

(declare-fun lt!198638 () array!26485)

(declare-fun getCurrentListMapNoExtraKeys!1408 (array!26483 array!26485 (_ BitVec 32) (_ BitVec 32) V!16221 V!16221 (_ BitVec 32) Int) ListLongMap!6405)

(assert (=> b!432752 (= lt!198635 (getCurrentListMapNoExtraKeys!1408 lt!198641 lt!198638 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!432752 (= lt!198631 (tuple2!7479 k0!794 v!412))))

(assert (=> b!432752 (= lt!198633 (getCurrentListMapNoExtraKeys!1408 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198636 () Unit!12754)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!552 (array!26483 array!26485 (_ BitVec 32) (_ BitVec 32) V!16221 V!16221 (_ BitVec 32) (_ BitVec 64) V!16221 (_ BitVec 32) Int) Unit!12754)

(assert (=> b!432752 (= lt!198636 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!552 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432753 () Bool)

(assert (=> b!432753 (= e!255928 e!255933)))

(declare-fun res!254699 () Bool)

(assert (=> b!432753 (=> (not res!254699) (not e!255933))))

(assert (=> b!432753 (= res!254699 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!432753 (= lt!198630 (getCurrentListMapNoExtraKeys!1408 lt!198641 lt!198638 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!432753 (= lt!198638 (array!26486 (store (arr!12689 _values!549) i!563 (ValueCellFull!5325 v!412)) (size!13041 _values!549)))))

(declare-fun lt!198628 () ListLongMap!6405)

(assert (=> b!432753 (= lt!198628 (getCurrentListMapNoExtraKeys!1408 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!432754 () Bool)

(declare-fun res!254692 () Bool)

(assert (=> b!432754 (=> (not res!254692) (not e!255927))))

(declare-fun arrayContainsKey!0 (array!26483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432754 (= res!254692 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!432755 () Bool)

(declare-fun res!254690 () Bool)

(assert (=> b!432755 (=> (not res!254690) (not e!255928))))

(assert (=> b!432755 (= res!254690 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18627 () Bool)

(declare-fun tp!36083 () Bool)

(assert (=> mapNonEmpty!18627 (= mapRes!18627 (and tp!36083 e!255930))))

(declare-fun mapKey!18627 () (_ BitVec 32))

(declare-fun mapValue!18627 () ValueCell!5325)

(declare-fun mapRest!18627 () (Array (_ BitVec 32) ValueCell!5325))

(assert (=> mapNonEmpty!18627 (= (arr!12689 _values!549) (store mapRest!18627 mapKey!18627 mapValue!18627))))

(declare-fun res!254693 () Bool)

(assert (=> start!39926 (=> (not res!254693) (not e!255927))))

(assert (=> start!39926 (= res!254693 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13040 _keys!709))))))

(assert (=> start!39926 e!255927))

(assert (=> start!39926 tp_is_empty!11337))

(assert (=> start!39926 tp!36084))

(assert (=> start!39926 true))

(declare-fun array_inv!9226 (array!26485) Bool)

(assert (=> start!39926 (and (array_inv!9226 _values!549) e!255931)))

(declare-fun array_inv!9227 (array!26483) Bool)

(assert (=> start!39926 (array_inv!9227 _keys!709)))

(declare-fun b!432747 () Bool)

(declare-fun res!254694 () Bool)

(assert (=> b!432747 (=> (not res!254694) (not e!255927))))

(assert (=> b!432747 (= res!254694 (or (= (select (arr!12688 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12688 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432756 () Bool)

(declare-fun res!254687 () Bool)

(assert (=> b!432756 (=> (not res!254687) (not e!255927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432756 (= res!254687 (validMask!0 mask!1025))))

(declare-fun b!432757 () Bool)

(declare-fun res!254686 () Bool)

(assert (=> b!432757 (=> (not res!254686) (not e!255927))))

(assert (=> b!432757 (= res!254686 (validKeyInArray!0 k0!794))))

(declare-fun b!432758 () Bool)

(assert (=> b!432758 (= e!255927 e!255928)))

(declare-fun res!254698 () Bool)

(assert (=> b!432758 (=> (not res!254698) (not e!255928))))

(assert (=> b!432758 (= res!254698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198641 mask!1025))))

(assert (=> b!432758 (= lt!198641 (array!26484 (store (arr!12688 _keys!709) i!563 k0!794) (size!13040 _keys!709)))))

(declare-fun b!432759 () Bool)

(declare-fun Unit!12757 () Unit!12754)

(assert (=> b!432759 (= e!255926 Unit!12757)))

(declare-fun lt!198634 () Unit!12754)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26483 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12754)

(assert (=> b!432759 (= lt!198634 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432759 false))

(declare-fun b!432760 () Bool)

(assert (=> b!432760 (= e!255934 tp_is_empty!11337)))

(assert (= (and start!39926 res!254693) b!432756))

(assert (= (and b!432756 res!254687) b!432742))

(assert (= (and b!432742 res!254700) b!432748))

(assert (= (and b!432748 res!254688) b!432743))

(assert (= (and b!432743 res!254691) b!432751))

(assert (= (and b!432751 res!254696) b!432757))

(assert (= (and b!432757 res!254686) b!432747))

(assert (= (and b!432747 res!254694) b!432754))

(assert (= (and b!432754 res!254692) b!432758))

(assert (= (and b!432758 res!254698) b!432746))

(assert (= (and b!432746 res!254697) b!432755))

(assert (= (and b!432755 res!254690) b!432753))

(assert (= (and b!432753 res!254699) b!432752))

(assert (= (and b!432752 (not res!254689)) b!432745))

(assert (= (and b!432745 c!55538) b!432759))

(assert (= (and b!432745 (not c!55538)) b!432741))

(assert (= (and b!432745 (not res!254695)) b!432749))

(assert (= (and b!432750 condMapEmpty!18627) mapIsEmpty!18627))

(assert (= (and b!432750 (not condMapEmpty!18627)) mapNonEmpty!18627))

(get-info :version)

(assert (= (and mapNonEmpty!18627 ((_ is ValueCellFull!5325) mapValue!18627)) b!432744))

(assert (= (and b!432750 ((_ is ValueCellFull!5325) mapDefault!18627)) b!432760))

(assert (= start!39926 b!432750))

(declare-fun b_lambda!9303 () Bool)

(assert (=> (not b_lambda!9303) (not b!432745)))

(declare-fun t!13169 () Bool)

(declare-fun tb!3599 () Bool)

(assert (=> (and start!39926 (= defaultEntry!557 defaultEntry!557) t!13169) tb!3599))

(declare-fun result!6717 () Bool)

(assert (=> tb!3599 (= result!6717 tp_is_empty!11337)))

(assert (=> b!432745 t!13169))

(declare-fun b_and!18049 () Bool)

(assert (= b_and!18047 (and (=> t!13169 result!6717) b_and!18049)))

(declare-fun m!420827 () Bool)

(assert (=> b!432747 m!420827))

(declare-fun m!420829 () Bool)

(assert (=> b!432748 m!420829))

(declare-fun m!420831 () Bool)

(assert (=> b!432758 m!420831))

(declare-fun m!420833 () Bool)

(assert (=> b!432758 m!420833))

(declare-fun m!420835 () Bool)

(assert (=> b!432749 m!420835))

(assert (=> b!432749 m!420835))

(declare-fun m!420837 () Bool)

(assert (=> b!432749 m!420837))

(declare-fun m!420839 () Bool)

(assert (=> b!432749 m!420839))

(assert (=> b!432749 m!420839))

(declare-fun m!420841 () Bool)

(assert (=> b!432749 m!420841))

(declare-fun m!420843 () Bool)

(assert (=> b!432759 m!420843))

(declare-fun m!420845 () Bool)

(assert (=> b!432757 m!420845))

(assert (=> b!432752 m!420839))

(declare-fun m!420847 () Bool)

(assert (=> b!432752 m!420847))

(assert (=> b!432752 m!420839))

(declare-fun m!420849 () Bool)

(assert (=> b!432752 m!420849))

(declare-fun m!420851 () Bool)

(assert (=> b!432752 m!420851))

(declare-fun m!420853 () Bool)

(assert (=> b!432752 m!420853))

(declare-fun m!420855 () Bool)

(assert (=> b!432752 m!420855))

(declare-fun m!420857 () Bool)

(assert (=> b!432756 m!420857))

(declare-fun m!420859 () Bool)

(assert (=> mapNonEmpty!18627 m!420859))

(declare-fun m!420861 () Bool)

(assert (=> b!432746 m!420861))

(declare-fun m!420863 () Bool)

(assert (=> b!432743 m!420863))

(declare-fun m!420865 () Bool)

(assert (=> b!432754 m!420865))

(declare-fun m!420867 () Bool)

(assert (=> b!432753 m!420867))

(declare-fun m!420869 () Bool)

(assert (=> b!432753 m!420869))

(declare-fun m!420871 () Bool)

(assert (=> b!432753 m!420871))

(assert (=> b!432745 m!420839))

(declare-fun m!420873 () Bool)

(assert (=> b!432745 m!420873))

(declare-fun m!420875 () Bool)

(assert (=> b!432745 m!420875))

(declare-fun m!420877 () Bool)

(assert (=> b!432745 m!420877))

(assert (=> b!432745 m!420877))

(assert (=> b!432745 m!420875))

(declare-fun m!420879 () Bool)

(assert (=> b!432745 m!420879))

(declare-fun m!420881 () Bool)

(assert (=> start!39926 m!420881))

(declare-fun m!420883 () Bool)

(assert (=> start!39926 m!420883))

(check-sat tp_is_empty!11337 (not b!432753) (not b!432752) (not b!432757) b_and!18049 (not b!432746) (not b!432759) (not b!432745) (not mapNonEmpty!18627) (not b!432743) (not b!432748) (not b!432754) (not b!432758) (not start!39926) (not b!432749) (not b!432756) (not b_next!10185) (not b_lambda!9303))
(check-sat b_and!18049 (not b_next!10185))
