; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39512 () Bool)

(assert start!39512)

(declare-fun b_free!9771 () Bool)

(declare-fun b_next!9771 () Bool)

(assert (=> start!39512 (= b_free!9771 (not b_next!9771))))

(declare-fun tp!34841 () Bool)

(declare-fun b_and!17435 () Bool)

(assert (=> start!39512 (= tp!34841 b_and!17435)))

(declare-fun b!421837 () Bool)

(declare-fun res!246339 () Bool)

(declare-fun e!251054 () Bool)

(assert (=> b!421837 (=> (not res!246339) (not e!251054))))

(declare-datatypes ((array!25673 0))(
  ( (array!25674 (arr!12283 (Array (_ BitVec 32) (_ BitVec 64))) (size!12635 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25673)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25673 (_ BitVec 32)) Bool)

(assert (=> b!421837 (= res!246339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421838 () Bool)

(declare-fun res!246336 () Bool)

(assert (=> b!421838 (=> (not res!246336) (not e!251054))))

(declare-datatypes ((List!7196 0))(
  ( (Nil!7193) (Cons!7192 (h!8048 (_ BitVec 64)) (t!12640 List!7196)) )
))
(declare-fun arrayNoDuplicates!0 (array!25673 (_ BitVec 32) List!7196) Bool)

(assert (=> b!421838 (= res!246336 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7193))))

(declare-fun b!421839 () Bool)

(declare-fun res!246333 () Bool)

(assert (=> b!421839 (=> (not res!246333) (not e!251054))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15669 0))(
  ( (V!15670 (val!5506 Int)) )
))
(declare-datatypes ((ValueCell!5118 0))(
  ( (ValueCellFull!5118 (v!7749 V!15669)) (EmptyCell!5118) )
))
(declare-datatypes ((array!25675 0))(
  ( (array!25676 (arr!12284 (Array (_ BitVec 32) ValueCell!5118)) (size!12636 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25675)

(assert (=> b!421839 (= res!246333 (and (= (size!12636 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12635 _keys!709) (size!12636 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!421840 () Bool)

(declare-fun e!251051 () Bool)

(assert (=> b!421840 (= e!251051 true)))

(declare-datatypes ((tuple2!7154 0))(
  ( (tuple2!7155 (_1!3587 (_ BitVec 64)) (_2!3587 V!15669)) )
))
(declare-datatypes ((List!7197 0))(
  ( (Nil!7194) (Cons!7193 (h!8049 tuple2!7154) (t!12641 List!7197)) )
))
(declare-datatypes ((ListLongMap!6081 0))(
  ( (ListLongMap!6082 (toList!3056 List!7197)) )
))
(declare-fun lt!193757 () ListLongMap!6081)

(declare-fun lt!193759 () V!15669)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!193766 () tuple2!7154)

(declare-fun +!1258 (ListLongMap!6081 tuple2!7154) ListLongMap!6081)

(assert (=> b!421840 (= (+!1258 lt!193757 lt!193766) (+!1258 (+!1258 lt!193757 (tuple2!7155 k0!794 lt!193759)) lt!193766))))

(declare-fun lt!193765 () V!15669)

(assert (=> b!421840 (= lt!193766 (tuple2!7155 k0!794 lt!193765))))

(declare-datatypes ((Unit!12419 0))(
  ( (Unit!12420) )
))
(declare-fun lt!193758 () Unit!12419)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!74 (ListLongMap!6081 (_ BitVec 64) V!15669 V!15669) Unit!12419)

(assert (=> b!421840 (= lt!193758 (addSameAsAddTwiceSameKeyDiffValues!74 lt!193757 k0!794 lt!193759 lt!193765))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!193763 () V!15669)

(declare-fun get!6113 (ValueCell!5118 V!15669) V!15669)

(assert (=> b!421840 (= lt!193759 (get!6113 (select (arr!12284 _values!549) from!863) lt!193763))))

(declare-fun lt!193760 () ListLongMap!6081)

(declare-fun lt!193764 () array!25673)

(assert (=> b!421840 (= lt!193760 (+!1258 lt!193757 (tuple2!7155 (select (arr!12283 lt!193764) from!863) lt!193765)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15669)

(assert (=> b!421840 (= lt!193765 (get!6113 (select (store (arr!12284 _values!549) i!563 (ValueCellFull!5118 v!412)) from!863) lt!193763))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!736 (Int (_ BitVec 64)) V!15669)

(assert (=> b!421840 (= lt!193763 (dynLambda!736 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15669)

(declare-fun zeroValue!515 () V!15669)

(declare-fun lt!193762 () array!25675)

(declare-fun getCurrentListMapNoExtraKeys!1257 (array!25673 array!25675 (_ BitVec 32) (_ BitVec 32) V!15669 V!15669 (_ BitVec 32) Int) ListLongMap!6081)

(assert (=> b!421840 (= lt!193757 (getCurrentListMapNoExtraKeys!1257 lt!193764 lt!193762 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421841 () Bool)

(declare-fun res!246330 () Bool)

(assert (=> b!421841 (=> (not res!246330) (not e!251054))))

(assert (=> b!421841 (= res!246330 (or (= (select (arr!12283 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12283 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!29485 () Bool)

(declare-fun c!55295 () Bool)

(declare-fun call!29488 () ListLongMap!6081)

(assert (=> bm!29485 (= call!29488 (getCurrentListMapNoExtraKeys!1257 (ite c!55295 _keys!709 lt!193764) (ite c!55295 _values!549 lt!193762) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421842 () Bool)

(declare-fun e!251056 () Bool)

(assert (=> b!421842 (= e!251054 e!251056)))

(declare-fun res!246338 () Bool)

(assert (=> b!421842 (=> (not res!246338) (not e!251056))))

(assert (=> b!421842 (= res!246338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193764 mask!1025))))

(assert (=> b!421842 (= lt!193764 (array!25674 (store (arr!12283 _keys!709) i!563 k0!794) (size!12635 _keys!709)))))

(declare-fun b!421843 () Bool)

(declare-fun res!246331 () Bool)

(assert (=> b!421843 (=> (not res!246331) (not e!251056))))

(assert (=> b!421843 (= res!246331 (bvsle from!863 i!563))))

(declare-fun b!421844 () Bool)

(declare-fun e!251055 () Bool)

(assert (=> b!421844 (= e!251056 e!251055)))

(declare-fun res!246340 () Bool)

(assert (=> b!421844 (=> (not res!246340) (not e!251055))))

(assert (=> b!421844 (= res!246340 (= from!863 i!563))))

(assert (=> b!421844 (= lt!193760 (getCurrentListMapNoExtraKeys!1257 lt!193764 lt!193762 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421844 (= lt!193762 (array!25676 (store (arr!12284 _values!549) i!563 (ValueCellFull!5118 v!412)) (size!12636 _values!549)))))

(declare-fun lt!193761 () ListLongMap!6081)

(assert (=> b!421844 (= lt!193761 (getCurrentListMapNoExtraKeys!1257 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421845 () Bool)

(assert (=> b!421845 (= e!251055 (not e!251051))))

(declare-fun res!246337 () Bool)

(assert (=> b!421845 (=> res!246337 e!251051)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421845 (= res!246337 (validKeyInArray!0 (select (arr!12283 _keys!709) from!863)))))

(declare-fun e!251053 () Bool)

(assert (=> b!421845 e!251053))

(assert (=> b!421845 (= c!55295 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!193767 () Unit!12419)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!460 (array!25673 array!25675 (_ BitVec 32) (_ BitVec 32) V!15669 V!15669 (_ BitVec 32) (_ BitVec 64) V!15669 (_ BitVec 32) Int) Unit!12419)

(assert (=> b!421845 (= lt!193767 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!460 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18006 () Bool)

(declare-fun mapRes!18006 () Bool)

(declare-fun tp!34842 () Bool)

(declare-fun e!251057 () Bool)

(assert (=> mapNonEmpty!18006 (= mapRes!18006 (and tp!34842 e!251057))))

(declare-fun mapValue!18006 () ValueCell!5118)

(declare-fun mapRest!18006 () (Array (_ BitVec 32) ValueCell!5118))

(declare-fun mapKey!18006 () (_ BitVec 32))

(assert (=> mapNonEmpty!18006 (= (arr!12284 _values!549) (store mapRest!18006 mapKey!18006 mapValue!18006))))

(declare-fun b!421846 () Bool)

(declare-fun e!251059 () Bool)

(declare-fun tp_is_empty!10923 () Bool)

(assert (=> b!421846 (= e!251059 tp_is_empty!10923)))

(declare-fun b!421847 () Bool)

(declare-fun call!29489 () ListLongMap!6081)

(assert (=> b!421847 (= e!251053 (= call!29488 call!29489))))

(declare-fun b!421848 () Bool)

(assert (=> b!421848 (= e!251057 tp_is_empty!10923)))

(declare-fun b!421849 () Bool)

(declare-fun res!246332 () Bool)

(assert (=> b!421849 (=> (not res!246332) (not e!251054))))

(assert (=> b!421849 (= res!246332 (validKeyInArray!0 k0!794))))

(declare-fun b!421850 () Bool)

(declare-fun res!246334 () Bool)

(assert (=> b!421850 (=> (not res!246334) (not e!251056))))

(assert (=> b!421850 (= res!246334 (arrayNoDuplicates!0 lt!193764 #b00000000000000000000000000000000 Nil!7193))))

(declare-fun b!421851 () Bool)

(declare-fun e!251058 () Bool)

(assert (=> b!421851 (= e!251058 (and e!251059 mapRes!18006))))

(declare-fun condMapEmpty!18006 () Bool)

(declare-fun mapDefault!18006 () ValueCell!5118)

(assert (=> b!421851 (= condMapEmpty!18006 (= (arr!12284 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5118)) mapDefault!18006)))))

(declare-fun b!421852 () Bool)

(declare-fun res!246341 () Bool)

(assert (=> b!421852 (=> (not res!246341) (not e!251054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421852 (= res!246341 (validMask!0 mask!1025))))

(declare-fun b!421853 () Bool)

(declare-fun res!246342 () Bool)

(assert (=> b!421853 (=> (not res!246342) (not e!251054))))

(declare-fun arrayContainsKey!0 (array!25673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421853 (= res!246342 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18006 () Bool)

(assert (=> mapIsEmpty!18006 mapRes!18006))

(declare-fun b!421854 () Bool)

(declare-fun res!246335 () Bool)

(assert (=> b!421854 (=> (not res!246335) (not e!251054))))

(assert (=> b!421854 (= res!246335 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12635 _keys!709))))))

(declare-fun bm!29486 () Bool)

(assert (=> bm!29486 (= call!29489 (getCurrentListMapNoExtraKeys!1257 (ite c!55295 lt!193764 _keys!709) (ite c!55295 lt!193762 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421855 () Bool)

(assert (=> b!421855 (= e!251053 (= call!29489 (+!1258 call!29488 (tuple2!7155 k0!794 v!412))))))

(declare-fun res!246329 () Bool)

(assert (=> start!39512 (=> (not res!246329) (not e!251054))))

(assert (=> start!39512 (= res!246329 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12635 _keys!709))))))

(assert (=> start!39512 e!251054))

(assert (=> start!39512 tp_is_empty!10923))

(assert (=> start!39512 tp!34841))

(assert (=> start!39512 true))

(declare-fun array_inv!8946 (array!25675) Bool)

(assert (=> start!39512 (and (array_inv!8946 _values!549) e!251058)))

(declare-fun array_inv!8947 (array!25673) Bool)

(assert (=> start!39512 (array_inv!8947 _keys!709)))

(assert (= (and start!39512 res!246329) b!421852))

(assert (= (and b!421852 res!246341) b!421839))

(assert (= (and b!421839 res!246333) b!421837))

(assert (= (and b!421837 res!246339) b!421838))

(assert (= (and b!421838 res!246336) b!421854))

(assert (= (and b!421854 res!246335) b!421849))

(assert (= (and b!421849 res!246332) b!421841))

(assert (= (and b!421841 res!246330) b!421853))

(assert (= (and b!421853 res!246342) b!421842))

(assert (= (and b!421842 res!246338) b!421850))

(assert (= (and b!421850 res!246334) b!421843))

(assert (= (and b!421843 res!246331) b!421844))

(assert (= (and b!421844 res!246340) b!421845))

(assert (= (and b!421845 c!55295) b!421855))

(assert (= (and b!421845 (not c!55295)) b!421847))

(assert (= (or b!421855 b!421847) bm!29486))

(assert (= (or b!421855 b!421847) bm!29485))

(assert (= (and b!421845 (not res!246337)) b!421840))

(assert (= (and b!421851 condMapEmpty!18006) mapIsEmpty!18006))

(assert (= (and b!421851 (not condMapEmpty!18006)) mapNonEmpty!18006))

(get-info :version)

(assert (= (and mapNonEmpty!18006 ((_ is ValueCellFull!5118) mapValue!18006)) b!421848))

(assert (= (and b!421851 ((_ is ValueCellFull!5118) mapDefault!18006)) b!421846))

(assert (= start!39512 b!421851))

(declare-fun b_lambda!9105 () Bool)

(assert (=> (not b_lambda!9105) (not b!421840)))

(declare-fun t!12639 () Bool)

(declare-fun tb!3401 () Bool)

(assert (=> (and start!39512 (= defaultEntry!557 defaultEntry!557) t!12639) tb!3401))

(declare-fun result!6321 () Bool)

(assert (=> tb!3401 (= result!6321 tp_is_empty!10923)))

(assert (=> b!421840 t!12639))

(declare-fun b_and!17437 () Bool)

(assert (= b_and!17435 (and (=> t!12639 result!6321) b_and!17437)))

(declare-fun m!411685 () Bool)

(assert (=> b!421855 m!411685))

(declare-fun m!411687 () Bool)

(assert (=> bm!29486 m!411687))

(declare-fun m!411689 () Bool)

(assert (=> b!421849 m!411689))

(declare-fun m!411691 () Bool)

(assert (=> b!421845 m!411691))

(assert (=> b!421845 m!411691))

(declare-fun m!411693 () Bool)

(assert (=> b!421845 m!411693))

(declare-fun m!411695 () Bool)

(assert (=> b!421845 m!411695))

(declare-fun m!411697 () Bool)

(assert (=> b!421840 m!411697))

(declare-fun m!411699 () Bool)

(assert (=> b!421840 m!411699))

(declare-fun m!411701 () Bool)

(assert (=> b!421840 m!411701))

(declare-fun m!411703 () Bool)

(assert (=> b!421840 m!411703))

(declare-fun m!411705 () Bool)

(assert (=> b!421840 m!411705))

(declare-fun m!411707 () Bool)

(assert (=> b!421840 m!411707))

(declare-fun m!411709 () Bool)

(assert (=> b!421840 m!411709))

(declare-fun m!411711 () Bool)

(assert (=> b!421840 m!411711))

(assert (=> b!421840 m!411697))

(declare-fun m!411713 () Bool)

(assert (=> b!421840 m!411713))

(declare-fun m!411715 () Bool)

(assert (=> b!421840 m!411715))

(assert (=> b!421840 m!411709))

(declare-fun m!411717 () Bool)

(assert (=> b!421840 m!411717))

(declare-fun m!411719 () Bool)

(assert (=> b!421840 m!411719))

(assert (=> b!421840 m!411715))

(declare-fun m!411721 () Bool)

(assert (=> b!421840 m!411721))

(declare-fun m!411723 () Bool)

(assert (=> b!421844 m!411723))

(assert (=> b!421844 m!411705))

(declare-fun m!411725 () Bool)

(assert (=> b!421844 m!411725))

(declare-fun m!411727 () Bool)

(assert (=> b!421853 m!411727))

(declare-fun m!411729 () Bool)

(assert (=> b!421841 m!411729))

(declare-fun m!411731 () Bool)

(assert (=> b!421837 m!411731))

(declare-fun m!411733 () Bool)

(assert (=> b!421842 m!411733))

(declare-fun m!411735 () Bool)

(assert (=> b!421842 m!411735))

(declare-fun m!411737 () Bool)

(assert (=> bm!29485 m!411737))

(declare-fun m!411739 () Bool)

(assert (=> mapNonEmpty!18006 m!411739))

(declare-fun m!411741 () Bool)

(assert (=> start!39512 m!411741))

(declare-fun m!411743 () Bool)

(assert (=> start!39512 m!411743))

(declare-fun m!411745 () Bool)

(assert (=> b!421852 m!411745))

(declare-fun m!411747 () Bool)

(assert (=> b!421838 m!411747))

(declare-fun m!411749 () Bool)

(assert (=> b!421850 m!411749))

(check-sat (not bm!29486) (not b!421849) (not start!39512) (not b!421837) (not b!421840) b_and!17437 (not b!421845) (not b!421850) (not b!421853) (not b!421852) (not b!421844) (not bm!29485) (not b!421838) (not b_lambda!9105) (not b!421855) (not mapNonEmpty!18006) (not b_next!9771) (not b!421842) tp_is_empty!10923)
(check-sat b_and!17437 (not b_next!9771))
