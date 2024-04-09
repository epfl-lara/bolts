; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38564 () Bool)

(assert start!38564)

(declare-fun b_free!9093 () Bool)

(declare-fun b_next!9093 () Bool)

(assert (=> start!38564 (= b_free!9093 (not b_next!9093))))

(declare-fun tp!32402 () Bool)

(declare-fun b_and!16497 () Bool)

(assert (=> start!38564 (= tp!32402 b_and!16497)))

(declare-fun b!398635 () Bool)

(declare-fun e!240874 () Bool)

(declare-fun e!240876 () Bool)

(assert (=> b!398635 (= e!240874 e!240876)))

(declare-fun res!229208 () Bool)

(assert (=> b!398635 (=> (not res!229208) (not e!240876))))

(declare-datatypes ((array!23829 0))(
  ( (array!23830 (arr!11361 (Array (_ BitVec 32) (_ BitVec 64))) (size!11713 (_ BitVec 32))) )
))
(declare-fun lt!187467 () array!23829)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23829 (_ BitVec 32)) Bool)

(assert (=> b!398635 (= res!229208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187467 mask!1025))))

(declare-fun _keys!709 () array!23829)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398635 (= lt!187467 (array!23830 (store (arr!11361 _keys!709) i!563 k0!794) (size!11713 _keys!709)))))

(declare-fun b!398636 () Bool)

(declare-fun res!229201 () Bool)

(assert (=> b!398636 (=> (not res!229201) (not e!240874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398636 (= res!229201 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16584 () Bool)

(declare-fun mapRes!16584 () Bool)

(declare-fun tp!32403 () Bool)

(declare-fun e!240872 () Bool)

(assert (=> mapNonEmpty!16584 (= mapRes!16584 (and tp!32403 e!240872))))

(declare-fun mapKey!16584 () (_ BitVec 32))

(declare-datatypes ((V!14405 0))(
  ( (V!14406 (val!5032 Int)) )
))
(declare-datatypes ((ValueCell!4644 0))(
  ( (ValueCellFull!4644 (v!7275 V!14405)) (EmptyCell!4644) )
))
(declare-fun mapValue!16584 () ValueCell!4644)

(declare-datatypes ((array!23831 0))(
  ( (array!23832 (arr!11362 (Array (_ BitVec 32) ValueCell!4644)) (size!11714 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23831)

(declare-fun mapRest!16584 () (Array (_ BitVec 32) ValueCell!4644))

(assert (=> mapNonEmpty!16584 (= (arr!11362 _values!549) (store mapRest!16584 mapKey!16584 mapValue!16584))))

(declare-fun b!398637 () Bool)

(declare-fun res!229205 () Bool)

(assert (=> b!398637 (=> (not res!229205) (not e!240876))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!398637 (= res!229205 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11713 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!398638 () Bool)

(declare-datatypes ((tuple2!6588 0))(
  ( (tuple2!6589 (_1!3304 (_ BitVec 64)) (_2!3304 V!14405)) )
))
(declare-datatypes ((List!6544 0))(
  ( (Nil!6541) (Cons!6540 (h!7396 tuple2!6588) (t!11726 List!6544)) )
))
(declare-datatypes ((ListLongMap!5515 0))(
  ( (ListLongMap!5516 (toList!2773 List!6544)) )
))
(declare-fun call!27941 () ListLongMap!5515)

(declare-fun v!412 () V!14405)

(declare-fun e!240871 () Bool)

(declare-fun call!27940 () ListLongMap!5515)

(declare-fun +!1068 (ListLongMap!5515 tuple2!6588) ListLongMap!5515)

(assert (=> b!398638 (= e!240871 (= call!27940 (+!1068 call!27941 (tuple2!6589 k0!794 v!412))))))

(declare-fun b!398640 () Bool)

(declare-fun res!229210 () Bool)

(assert (=> b!398640 (=> (not res!229210) (not e!240874))))

(declare-fun arrayContainsKey!0 (array!23829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398640 (= res!229210 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun minValue!515 () V!14405)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14405)

(declare-fun bm!27937 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!991 (array!23829 array!23831 (_ BitVec 32) (_ BitVec 32) V!14405 V!14405 (_ BitVec 32) Int) ListLongMap!5515)

(assert (=> bm!27937 (= call!27940 (getCurrentListMapNoExtraKeys!991 lt!187467 (array!23832 (store (arr!11362 _values!549) i!563 (ValueCellFull!4644 v!412)) (size!11714 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!27938 () Bool)

(assert (=> bm!27938 (= call!27941 (getCurrentListMapNoExtraKeys!991 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398641 () Bool)

(declare-fun tp_is_empty!9975 () Bool)

(assert (=> b!398641 (= e!240872 tp_is_empty!9975)))

(declare-fun mapIsEmpty!16584 () Bool)

(assert (=> mapIsEmpty!16584 mapRes!16584))

(declare-fun b!398642 () Bool)

(declare-fun res!229206 () Bool)

(assert (=> b!398642 (=> (not res!229206) (not e!240874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398642 (= res!229206 (validKeyInArray!0 k0!794))))

(declare-fun b!398643 () Bool)

(declare-fun res!229202 () Bool)

(assert (=> b!398643 (=> (not res!229202) (not e!240874))))

(assert (=> b!398643 (= res!229202 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11713 _keys!709))))))

(declare-fun b!398644 () Bool)

(assert (=> b!398644 (= e!240876 (not true))))

(assert (=> b!398644 e!240871))

(declare-fun c!54521 () Bool)

(assert (=> b!398644 (= c!54521 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12045 0))(
  ( (Unit!12046) )
))
(declare-fun lt!187466 () Unit!12045)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!285 (array!23829 array!23831 (_ BitVec 32) (_ BitVec 32) V!14405 V!14405 (_ BitVec 32) (_ BitVec 64) V!14405 (_ BitVec 32) Int) Unit!12045)

(assert (=> b!398644 (= lt!187466 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!285 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398645 () Bool)

(declare-fun e!240873 () Bool)

(assert (=> b!398645 (= e!240873 tp_is_empty!9975)))

(declare-fun b!398646 () Bool)

(declare-fun res!229207 () Bool)

(assert (=> b!398646 (=> (not res!229207) (not e!240874))))

(assert (=> b!398646 (= res!229207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398647 () Bool)

(declare-fun res!229212 () Bool)

(assert (=> b!398647 (=> (not res!229212) (not e!240876))))

(declare-datatypes ((List!6545 0))(
  ( (Nil!6542) (Cons!6541 (h!7397 (_ BitVec 64)) (t!11727 List!6545)) )
))
(declare-fun arrayNoDuplicates!0 (array!23829 (_ BitVec 32) List!6545) Bool)

(assert (=> b!398647 (= res!229212 (arrayNoDuplicates!0 lt!187467 #b00000000000000000000000000000000 Nil!6542))))

(declare-fun b!398648 () Bool)

(declare-fun res!229204 () Bool)

(assert (=> b!398648 (=> (not res!229204) (not e!240874))))

(assert (=> b!398648 (= res!229204 (or (= (select (arr!11361 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11361 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398649 () Bool)

(declare-fun e!240875 () Bool)

(assert (=> b!398649 (= e!240875 (and e!240873 mapRes!16584))))

(declare-fun condMapEmpty!16584 () Bool)

(declare-fun mapDefault!16584 () ValueCell!4644)

(assert (=> b!398649 (= condMapEmpty!16584 (= (arr!11362 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4644)) mapDefault!16584)))))

(declare-fun res!229211 () Bool)

(assert (=> start!38564 (=> (not res!229211) (not e!240874))))

(assert (=> start!38564 (= res!229211 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11713 _keys!709))))))

(assert (=> start!38564 e!240874))

(assert (=> start!38564 tp_is_empty!9975))

(assert (=> start!38564 tp!32402))

(assert (=> start!38564 true))

(declare-fun array_inv!8316 (array!23831) Bool)

(assert (=> start!38564 (and (array_inv!8316 _values!549) e!240875)))

(declare-fun array_inv!8317 (array!23829) Bool)

(assert (=> start!38564 (array_inv!8317 _keys!709)))

(declare-fun b!398639 () Bool)

(declare-fun res!229203 () Bool)

(assert (=> b!398639 (=> (not res!229203) (not e!240874))))

(assert (=> b!398639 (= res!229203 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6542))))

(declare-fun b!398650 () Bool)

(declare-fun res!229209 () Bool)

(assert (=> b!398650 (=> (not res!229209) (not e!240874))))

(assert (=> b!398650 (= res!229209 (and (= (size!11714 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11713 _keys!709) (size!11714 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398651 () Bool)

(assert (=> b!398651 (= e!240871 (= call!27940 call!27941))))

(assert (= (and start!38564 res!229211) b!398636))

(assert (= (and b!398636 res!229201) b!398650))

(assert (= (and b!398650 res!229209) b!398646))

(assert (= (and b!398646 res!229207) b!398639))

(assert (= (and b!398639 res!229203) b!398643))

(assert (= (and b!398643 res!229202) b!398642))

(assert (= (and b!398642 res!229206) b!398648))

(assert (= (and b!398648 res!229204) b!398640))

(assert (= (and b!398640 res!229210) b!398635))

(assert (= (and b!398635 res!229208) b!398647))

(assert (= (and b!398647 res!229212) b!398637))

(assert (= (and b!398637 res!229205) b!398644))

(assert (= (and b!398644 c!54521) b!398638))

(assert (= (and b!398644 (not c!54521)) b!398651))

(assert (= (or b!398638 b!398651) bm!27937))

(assert (= (or b!398638 b!398651) bm!27938))

(assert (= (and b!398649 condMapEmpty!16584) mapIsEmpty!16584))

(assert (= (and b!398649 (not condMapEmpty!16584)) mapNonEmpty!16584))

(get-info :version)

(assert (= (and mapNonEmpty!16584 ((_ is ValueCellFull!4644) mapValue!16584)) b!398641))

(assert (= (and b!398649 ((_ is ValueCellFull!4644) mapDefault!16584)) b!398645))

(assert (= start!38564 b!398649))

(declare-fun m!393403 () Bool)

(assert (=> b!398639 m!393403))

(declare-fun m!393405 () Bool)

(assert (=> b!398646 m!393405))

(declare-fun m!393407 () Bool)

(assert (=> bm!27937 m!393407))

(declare-fun m!393409 () Bool)

(assert (=> bm!27937 m!393409))

(declare-fun m!393411 () Bool)

(assert (=> mapNonEmpty!16584 m!393411))

(declare-fun m!393413 () Bool)

(assert (=> b!398642 m!393413))

(declare-fun m!393415 () Bool)

(assert (=> bm!27938 m!393415))

(declare-fun m!393417 () Bool)

(assert (=> b!398636 m!393417))

(declare-fun m!393419 () Bool)

(assert (=> b!398640 m!393419))

(declare-fun m!393421 () Bool)

(assert (=> b!398648 m!393421))

(declare-fun m!393423 () Bool)

(assert (=> b!398647 m!393423))

(declare-fun m!393425 () Bool)

(assert (=> b!398638 m!393425))

(declare-fun m!393427 () Bool)

(assert (=> b!398644 m!393427))

(declare-fun m!393429 () Bool)

(assert (=> start!38564 m!393429))

(declare-fun m!393431 () Bool)

(assert (=> start!38564 m!393431))

(declare-fun m!393433 () Bool)

(assert (=> b!398635 m!393433))

(declare-fun m!393435 () Bool)

(assert (=> b!398635 m!393435))

(check-sat (not b_next!9093) tp_is_empty!9975 (not b!398639) (not b!398646) (not b!398647) (not bm!27938) (not b!398644) (not start!38564) (not b!398638) (not b!398635) (not mapNonEmpty!16584) (not b!398640) (not b!398636) b_and!16497 (not bm!27937) (not b!398642))
(check-sat b_and!16497 (not b_next!9093))
