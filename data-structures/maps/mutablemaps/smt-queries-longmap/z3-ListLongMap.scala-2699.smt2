; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40022 () Bool)

(assert start!40022)

(declare-fun b_free!10281 () Bool)

(declare-fun b_next!10281 () Bool)

(assert (=> start!40022 (= b_free!10281 (not b_next!10281))))

(declare-fun tp!36371 () Bool)

(declare-fun b_and!18239 () Bool)

(assert (=> start!40022 (= tp!36371 b_and!18239)))

(declare-fun b!435717 () Bool)

(declare-fun res!256848 () Bool)

(declare-fun e!257372 () Bool)

(assert (=> b!435717 (=> (not res!256848) (not e!257372))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435717 (= res!256848 (bvsle from!863 i!563))))

(declare-fun b!435718 () Bool)

(declare-fun e!257374 () Bool)

(declare-fun e!257369 () Bool)

(assert (=> b!435718 (= e!257374 (not e!257369))))

(declare-fun res!256855 () Bool)

(assert (=> b!435718 (=> res!256855 e!257369)))

(declare-datatypes ((array!26669 0))(
  ( (array!26670 (arr!12781 (Array (_ BitVec 32) (_ BitVec 64))) (size!13133 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26669)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435718 (= res!256855 (not (validKeyInArray!0 (select (arr!12781 _keys!709) from!863))))))

(declare-datatypes ((V!16349 0))(
  ( (V!16350 (val!5761 Int)) )
))
(declare-datatypes ((tuple2!7564 0))(
  ( (tuple2!7565 (_1!3792 (_ BitVec 64)) (_2!3792 V!16349)) )
))
(declare-datatypes ((List!7607 0))(
  ( (Nil!7604) (Cons!7603 (h!8459 tuple2!7564) (t!13345 List!7607)) )
))
(declare-datatypes ((ListLongMap!6491 0))(
  ( (ListLongMap!6492 (toList!3261 List!7607)) )
))
(declare-fun lt!200790 () ListLongMap!6491)

(declare-fun lt!200797 () ListLongMap!6491)

(assert (=> b!435718 (= lt!200790 lt!200797)))

(declare-fun lt!200788 () ListLongMap!6491)

(declare-fun lt!200793 () tuple2!7564)

(declare-fun +!1405 (ListLongMap!6491 tuple2!7564) ListLongMap!6491)

(assert (=> b!435718 (= lt!200797 (+!1405 lt!200788 lt!200793))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!200796 () array!26669)

(declare-fun zeroValue!515 () V!16349)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!16349)

(declare-datatypes ((ValueCell!5373 0))(
  ( (ValueCellFull!5373 (v!8004 V!16349)) (EmptyCell!5373) )
))
(declare-datatypes ((array!26671 0))(
  ( (array!26672 (arr!12782 (Array (_ BitVec 32) ValueCell!5373)) (size!13134 (_ BitVec 32))) )
))
(declare-fun lt!200801 () array!26671)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1444 (array!26669 array!26671 (_ BitVec 32) (_ BitVec 32) V!16349 V!16349 (_ BitVec 32) Int) ListLongMap!6491)

(assert (=> b!435718 (= lt!200790 (getCurrentListMapNoExtraKeys!1444 lt!200796 lt!200801 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16349)

(assert (=> b!435718 (= lt!200793 (tuple2!7565 k0!794 v!412))))

(declare-fun _values!549 () array!26671)

(assert (=> b!435718 (= lt!200788 (getCurrentListMapNoExtraKeys!1444 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12903 0))(
  ( (Unit!12904) )
))
(declare-fun lt!200802 () Unit!12903)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!584 (array!26669 array!26671 (_ BitVec 32) (_ BitVec 32) V!16349 V!16349 (_ BitVec 32) (_ BitVec 64) V!16349 (_ BitVec 32) Int) Unit!12903)

(assert (=> b!435718 (= lt!200802 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!584 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435719 () Bool)

(declare-fun e!257373 () Unit!12903)

(declare-fun Unit!12905 () Unit!12903)

(assert (=> b!435719 (= e!257373 Unit!12905)))

(declare-fun mapNonEmpty!18771 () Bool)

(declare-fun mapRes!18771 () Bool)

(declare-fun tp!36372 () Bool)

(declare-fun e!257366 () Bool)

(assert (=> mapNonEmpty!18771 (= mapRes!18771 (and tp!36372 e!257366))))

(declare-fun mapRest!18771 () (Array (_ BitVec 32) ValueCell!5373))

(declare-fun mapValue!18771 () ValueCell!5373)

(declare-fun mapKey!18771 () (_ BitVec 32))

(assert (=> mapNonEmpty!18771 (= (arr!12782 _values!549) (store mapRest!18771 mapKey!18771 mapValue!18771))))

(declare-fun b!435720 () Bool)

(declare-fun e!257370 () Bool)

(assert (=> b!435720 (= e!257369 e!257370)))

(declare-fun res!256860 () Bool)

(assert (=> b!435720 (=> res!256860 e!257370)))

(assert (=> b!435720 (= res!256860 (= k0!794 (select (arr!12781 _keys!709) from!863)))))

(assert (=> b!435720 (not (= (select (arr!12781 _keys!709) from!863) k0!794))))

(declare-fun lt!200799 () Unit!12903)

(assert (=> b!435720 (= lt!200799 e!257373)))

(declare-fun c!55682 () Bool)

(assert (=> b!435720 (= c!55682 (= (select (arr!12781 _keys!709) from!863) k0!794))))

(declare-fun lt!200791 () ListLongMap!6491)

(declare-fun lt!200794 () ListLongMap!6491)

(assert (=> b!435720 (= lt!200791 lt!200794)))

(declare-fun lt!200798 () tuple2!7564)

(assert (=> b!435720 (= lt!200794 (+!1405 lt!200797 lt!200798))))

(declare-fun lt!200795 () V!16349)

(assert (=> b!435720 (= lt!200798 (tuple2!7565 (select (arr!12781 _keys!709) from!863) lt!200795))))

(declare-fun get!6379 (ValueCell!5373 V!16349) V!16349)

(declare-fun dynLambda!832 (Int (_ BitVec 64)) V!16349)

(assert (=> b!435720 (= lt!200795 (get!6379 (select (arr!12782 _values!549) from!863) (dynLambda!832 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435721 () Bool)

(declare-fun res!256849 () Bool)

(declare-fun e!257367 () Bool)

(assert (=> b!435721 (=> (not res!256849) (not e!257367))))

(declare-datatypes ((List!7608 0))(
  ( (Nil!7605) (Cons!7604 (h!8460 (_ BitVec 64)) (t!13346 List!7608)) )
))
(declare-fun arrayNoDuplicates!0 (array!26669 (_ BitVec 32) List!7608) Bool)

(assert (=> b!435721 (= res!256849 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7605))))

(declare-fun b!435722 () Bool)

(assert (=> b!435722 (= e!257372 e!257374)))

(declare-fun res!256852 () Bool)

(assert (=> b!435722 (=> (not res!256852) (not e!257374))))

(assert (=> b!435722 (= res!256852 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!435722 (= lt!200791 (getCurrentListMapNoExtraKeys!1444 lt!200796 lt!200801 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!435722 (= lt!200801 (array!26672 (store (arr!12782 _values!549) i!563 (ValueCellFull!5373 v!412)) (size!13134 _values!549)))))

(declare-fun lt!200800 () ListLongMap!6491)

(assert (=> b!435722 (= lt!200800 (getCurrentListMapNoExtraKeys!1444 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435723 () Bool)

(declare-fun res!256856 () Bool)

(assert (=> b!435723 (=> (not res!256856) (not e!257367))))

(assert (=> b!435723 (= res!256856 (and (= (size!13134 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13133 _keys!709) (size!13134 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!435724 () Bool)

(declare-fun Unit!12906 () Unit!12903)

(assert (=> b!435724 (= e!257373 Unit!12906)))

(declare-fun lt!200792 () Unit!12903)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26669 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12903)

(assert (=> b!435724 (= lt!200792 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!435724 false))

(declare-fun mapIsEmpty!18771 () Bool)

(assert (=> mapIsEmpty!18771 mapRes!18771))

(declare-fun b!435725 () Bool)

(declare-fun res!256858 () Bool)

(assert (=> b!435725 (=> (not res!256858) (not e!257372))))

(assert (=> b!435725 (= res!256858 (arrayNoDuplicates!0 lt!200796 #b00000000000000000000000000000000 Nil!7605))))

(declare-fun b!435726 () Bool)

(declare-fun res!256853 () Bool)

(assert (=> b!435726 (=> (not res!256853) (not e!257367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435726 (= res!256853 (validMask!0 mask!1025))))

(declare-fun res!256850 () Bool)

(assert (=> start!40022 (=> (not res!256850) (not e!257367))))

(assert (=> start!40022 (= res!256850 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13133 _keys!709))))))

(assert (=> start!40022 e!257367))

(declare-fun tp_is_empty!11433 () Bool)

(assert (=> start!40022 tp_is_empty!11433))

(assert (=> start!40022 tp!36371))

(assert (=> start!40022 true))

(declare-fun e!257371 () Bool)

(declare-fun array_inv!9282 (array!26671) Bool)

(assert (=> start!40022 (and (array_inv!9282 _values!549) e!257371)))

(declare-fun array_inv!9283 (array!26669) Bool)

(assert (=> start!40022 (array_inv!9283 _keys!709)))

(declare-fun b!435727 () Bool)

(assert (=> b!435727 (= e!257367 e!257372)))

(declare-fun res!256854 () Bool)

(assert (=> b!435727 (=> (not res!256854) (not e!257372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26669 (_ BitVec 32)) Bool)

(assert (=> b!435727 (= res!256854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200796 mask!1025))))

(assert (=> b!435727 (= lt!200796 (array!26670 (store (arr!12781 _keys!709) i!563 k0!794) (size!13133 _keys!709)))))

(declare-fun b!435728 () Bool)

(declare-fun res!256847 () Bool)

(assert (=> b!435728 (=> (not res!256847) (not e!257367))))

(assert (=> b!435728 (= res!256847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435729 () Bool)

(declare-fun res!256857 () Bool)

(assert (=> b!435729 (=> (not res!256857) (not e!257367))))

(assert (=> b!435729 (= res!256857 (validKeyInArray!0 k0!794))))

(declare-fun b!435730 () Bool)

(declare-fun e!257368 () Bool)

(assert (=> b!435730 (= e!257371 (and e!257368 mapRes!18771))))

(declare-fun condMapEmpty!18771 () Bool)

(declare-fun mapDefault!18771 () ValueCell!5373)

(assert (=> b!435730 (= condMapEmpty!18771 (= (arr!12782 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5373)) mapDefault!18771)))))

(declare-fun b!435731 () Bool)

(declare-fun res!256846 () Bool)

(assert (=> b!435731 (=> (not res!256846) (not e!257367))))

(assert (=> b!435731 (= res!256846 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13133 _keys!709))))))

(declare-fun b!435732 () Bool)

(assert (=> b!435732 (= e!257368 tp_is_empty!11433)))

(declare-fun b!435733 () Bool)

(assert (=> b!435733 (= e!257370 true)))

(assert (=> b!435733 (= lt!200794 (+!1405 (+!1405 lt!200788 lt!200798) lt!200793))))

(declare-fun lt!200789 () Unit!12903)

(declare-fun addCommutativeForDiffKeys!408 (ListLongMap!6491 (_ BitVec 64) V!16349 (_ BitVec 64) V!16349) Unit!12903)

(assert (=> b!435733 (= lt!200789 (addCommutativeForDiffKeys!408 lt!200788 k0!794 v!412 (select (arr!12781 _keys!709) from!863) lt!200795))))

(declare-fun b!435734 () Bool)

(declare-fun res!256859 () Bool)

(assert (=> b!435734 (=> (not res!256859) (not e!257367))))

(assert (=> b!435734 (= res!256859 (or (= (select (arr!12781 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12781 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435735 () Bool)

(assert (=> b!435735 (= e!257366 tp_is_empty!11433)))

(declare-fun b!435736 () Bool)

(declare-fun res!256851 () Bool)

(assert (=> b!435736 (=> (not res!256851) (not e!257367))))

(declare-fun arrayContainsKey!0 (array!26669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!435736 (= res!256851 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40022 res!256850) b!435726))

(assert (= (and b!435726 res!256853) b!435723))

(assert (= (and b!435723 res!256856) b!435728))

(assert (= (and b!435728 res!256847) b!435721))

(assert (= (and b!435721 res!256849) b!435731))

(assert (= (and b!435731 res!256846) b!435729))

(assert (= (and b!435729 res!256857) b!435734))

(assert (= (and b!435734 res!256859) b!435736))

(assert (= (and b!435736 res!256851) b!435727))

(assert (= (and b!435727 res!256854) b!435725))

(assert (= (and b!435725 res!256858) b!435717))

(assert (= (and b!435717 res!256848) b!435722))

(assert (= (and b!435722 res!256852) b!435718))

(assert (= (and b!435718 (not res!256855)) b!435720))

(assert (= (and b!435720 c!55682) b!435724))

(assert (= (and b!435720 (not c!55682)) b!435719))

(assert (= (and b!435720 (not res!256860)) b!435733))

(assert (= (and b!435730 condMapEmpty!18771) mapIsEmpty!18771))

(assert (= (and b!435730 (not condMapEmpty!18771)) mapNonEmpty!18771))

(get-info :version)

(assert (= (and mapNonEmpty!18771 ((_ is ValueCellFull!5373) mapValue!18771)) b!435735))

(assert (= (and b!435730 ((_ is ValueCellFull!5373) mapDefault!18771)) b!435732))

(assert (= start!40022 b!435730))

(declare-fun b_lambda!9399 () Bool)

(assert (=> (not b_lambda!9399) (not b!435720)))

(declare-fun t!13344 () Bool)

(declare-fun tb!3695 () Bool)

(assert (=> (and start!40022 (= defaultEntry!557 defaultEntry!557) t!13344) tb!3695))

(declare-fun result!6909 () Bool)

(assert (=> tb!3695 (= result!6909 tp_is_empty!11433)))

(assert (=> b!435720 t!13344))

(declare-fun b_and!18241 () Bool)

(assert (= b_and!18239 (and (=> t!13344 result!6909) b_and!18241)))

(declare-fun m!423611 () Bool)

(assert (=> b!435724 m!423611))

(declare-fun m!423613 () Bool)

(assert (=> b!435728 m!423613))

(declare-fun m!423615 () Bool)

(assert (=> b!435725 m!423615))

(declare-fun m!423617 () Bool)

(assert (=> b!435729 m!423617))

(declare-fun m!423619 () Bool)

(assert (=> b!435721 m!423619))

(declare-fun m!423621 () Bool)

(assert (=> b!435726 m!423621))

(declare-fun m!423623 () Bool)

(assert (=> start!40022 m!423623))

(declare-fun m!423625 () Bool)

(assert (=> start!40022 m!423625))

(declare-fun m!423627 () Bool)

(assert (=> b!435736 m!423627))

(declare-fun m!423629 () Bool)

(assert (=> mapNonEmpty!18771 m!423629))

(declare-fun m!423631 () Bool)

(assert (=> b!435722 m!423631))

(declare-fun m!423633 () Bool)

(assert (=> b!435722 m!423633))

(declare-fun m!423635 () Bool)

(assert (=> b!435722 m!423635))

(declare-fun m!423637 () Bool)

(assert (=> b!435718 m!423637))

(declare-fun m!423639 () Bool)

(assert (=> b!435718 m!423639))

(declare-fun m!423641 () Bool)

(assert (=> b!435718 m!423641))

(declare-fun m!423643 () Bool)

(assert (=> b!435718 m!423643))

(assert (=> b!435718 m!423637))

(declare-fun m!423645 () Bool)

(assert (=> b!435718 m!423645))

(declare-fun m!423647 () Bool)

(assert (=> b!435718 m!423647))

(declare-fun m!423649 () Bool)

(assert (=> b!435727 m!423649))

(declare-fun m!423651 () Bool)

(assert (=> b!435727 m!423651))

(assert (=> b!435720 m!423637))

(declare-fun m!423653 () Bool)

(assert (=> b!435720 m!423653))

(declare-fun m!423655 () Bool)

(assert (=> b!435720 m!423655))

(declare-fun m!423657 () Bool)

(assert (=> b!435720 m!423657))

(assert (=> b!435720 m!423655))

(assert (=> b!435720 m!423653))

(declare-fun m!423659 () Bool)

(assert (=> b!435720 m!423659))

(declare-fun m!423661 () Bool)

(assert (=> b!435733 m!423661))

(assert (=> b!435733 m!423661))

(declare-fun m!423663 () Bool)

(assert (=> b!435733 m!423663))

(assert (=> b!435733 m!423637))

(assert (=> b!435733 m!423637))

(declare-fun m!423665 () Bool)

(assert (=> b!435733 m!423665))

(declare-fun m!423667 () Bool)

(assert (=> b!435734 m!423667))

(check-sat (not b!435724) (not b!435726) (not b!435736) (not b!435720) (not b!435729) (not b_lambda!9399) (not b!435718) b_and!18241 (not start!40022) (not mapNonEmpty!18771) (not b!435725) (not b!435721) (not b!435727) (not b!435728) tp_is_empty!11433 (not b!435722) (not b!435733) (not b_next!10281))
(check-sat b_and!18241 (not b_next!10281))
