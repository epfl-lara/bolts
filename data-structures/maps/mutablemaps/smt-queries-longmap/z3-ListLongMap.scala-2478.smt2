; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38696 () Bool)

(assert start!38696)

(declare-fun b_free!9225 () Bool)

(declare-fun b_next!9225 () Bool)

(assert (=> start!38696 (= b_free!9225 (not b_next!9225))))

(declare-fun tp!32799 () Bool)

(declare-fun b_and!16629 () Bool)

(assert (=> start!38696 (= tp!32799 b_and!16629)))

(declare-fun b!402001 () Bool)

(declare-fun res!231580 () Bool)

(declare-fun e!242263 () Bool)

(assert (=> b!402001 (=> (not res!231580) (not e!242263))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402001 (= res!231580 (validKeyInArray!0 k0!794))))

(declare-fun b!402002 () Bool)

(declare-fun e!242262 () Bool)

(declare-fun tp_is_empty!10107 () Bool)

(assert (=> b!402002 (= e!242262 tp_is_empty!10107)))

(declare-fun mapIsEmpty!16782 () Bool)

(declare-fun mapRes!16782 () Bool)

(assert (=> mapIsEmpty!16782 mapRes!16782))

(declare-fun c!54719 () Bool)

(declare-datatypes ((V!14581 0))(
  ( (V!14582 (val!5098 Int)) )
))
(declare-datatypes ((tuple2!6706 0))(
  ( (tuple2!6707 (_1!3363 (_ BitVec 64)) (_2!3363 V!14581)) )
))
(declare-datatypes ((List!6653 0))(
  ( (Nil!6650) (Cons!6649 (h!7505 tuple2!6706) (t!11835 List!6653)) )
))
(declare-datatypes ((ListLongMap!5633 0))(
  ( (ListLongMap!5634 (toList!2832 List!6653)) )
))
(declare-fun call!28337 () ListLongMap!5633)

(declare-fun minValue!515 () V!14581)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4710 0))(
  ( (ValueCellFull!4710 (v!7341 V!14581)) (EmptyCell!4710) )
))
(declare-datatypes ((array!24085 0))(
  ( (array!24086 (arr!11489 (Array (_ BitVec 32) ValueCell!4710)) (size!11841 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24085)

(declare-fun zeroValue!515 () V!14581)

(declare-datatypes ((array!24087 0))(
  ( (array!24088 (arr!11490 (Array (_ BitVec 32) (_ BitVec 64))) (size!11842 (_ BitVec 32))) )
))
(declare-fun lt!187863 () array!24087)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!28333 () Bool)

(declare-fun v!412 () V!14581)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!24087)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1045 (array!24087 array!24085 (_ BitVec 32) (_ BitVec 32) V!14581 V!14581 (_ BitVec 32) Int) ListLongMap!5633)

(assert (=> bm!28333 (= call!28337 (getCurrentListMapNoExtraKeys!1045 (ite c!54719 _keys!709 lt!187863) (ite c!54719 _values!549 (array!24086 (store (arr!11489 _values!549) i!563 (ValueCellFull!4710 v!412)) (size!11841 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402003 () Bool)

(declare-fun res!231578 () Bool)

(assert (=> b!402003 (=> (not res!231578) (not e!242263))))

(assert (=> b!402003 (= res!231578 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11842 _keys!709))))))

(declare-fun b!402004 () Bool)

(declare-fun e!242259 () Bool)

(assert (=> b!402004 (= e!242259 tp_is_empty!10107)))

(declare-fun call!28336 () ListLongMap!5633)

(declare-fun e!242258 () Bool)

(declare-fun b!402005 () Bool)

(declare-fun +!1112 (ListLongMap!5633 tuple2!6706) ListLongMap!5633)

(assert (=> b!402005 (= e!242258 (= call!28336 (+!1112 call!28337 (tuple2!6707 k0!794 v!412))))))

(declare-fun b!402006 () Bool)

(assert (=> b!402006 (= e!242258 (= call!28337 call!28336))))

(declare-fun b!402007 () Bool)

(declare-fun res!231577 () Bool)

(declare-fun e!242257 () Bool)

(assert (=> b!402007 (=> (not res!231577) (not e!242257))))

(assert (=> b!402007 (= res!231577 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11842 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun bm!28334 () Bool)

(assert (=> bm!28334 (= call!28336 (getCurrentListMapNoExtraKeys!1045 (ite c!54719 lt!187863 _keys!709) (ite c!54719 (array!24086 (store (arr!11489 _values!549) i!563 (ValueCellFull!4710 v!412)) (size!11841 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402008 () Bool)

(assert (=> b!402008 (= e!242263 e!242257)))

(declare-fun res!231582 () Bool)

(assert (=> b!402008 (=> (not res!231582) (not e!242257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24087 (_ BitVec 32)) Bool)

(assert (=> b!402008 (= res!231582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187863 mask!1025))))

(assert (=> b!402008 (= lt!187863 (array!24088 (store (arr!11490 _keys!709) i!563 k0!794) (size!11842 _keys!709)))))

(declare-fun mapNonEmpty!16782 () Bool)

(declare-fun tp!32798 () Bool)

(assert (=> mapNonEmpty!16782 (= mapRes!16782 (and tp!32798 e!242262))))

(declare-fun mapKey!16782 () (_ BitVec 32))

(declare-fun mapValue!16782 () ValueCell!4710)

(declare-fun mapRest!16782 () (Array (_ BitVec 32) ValueCell!4710))

(assert (=> mapNonEmpty!16782 (= (arr!11489 _values!549) (store mapRest!16782 mapKey!16782 mapValue!16782))))

(declare-fun res!231588 () Bool)

(assert (=> start!38696 (=> (not res!231588) (not e!242263))))

(assert (=> start!38696 (= res!231588 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11842 _keys!709))))))

(assert (=> start!38696 e!242263))

(assert (=> start!38696 tp_is_empty!10107))

(assert (=> start!38696 tp!32799))

(assert (=> start!38696 true))

(declare-fun e!242260 () Bool)

(declare-fun array_inv!8400 (array!24085) Bool)

(assert (=> start!38696 (and (array_inv!8400 _values!549) e!242260)))

(declare-fun array_inv!8401 (array!24087) Bool)

(assert (=> start!38696 (array_inv!8401 _keys!709)))

(declare-fun b!402009 () Bool)

(declare-fun res!231584 () Bool)

(assert (=> b!402009 (=> (not res!231584) (not e!242263))))

(assert (=> b!402009 (= res!231584 (and (= (size!11841 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11842 _keys!709) (size!11841 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402010 () Bool)

(assert (=> b!402010 (= e!242257 (not true))))

(assert (=> b!402010 e!242258))

(assert (=> b!402010 (= c!54719 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12121 0))(
  ( (Unit!12122) )
))
(declare-fun lt!187862 () Unit!12121)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!323 (array!24087 array!24085 (_ BitVec 32) (_ BitVec 32) V!14581 V!14581 (_ BitVec 32) (_ BitVec 64) V!14581 (_ BitVec 32) Int) Unit!12121)

(assert (=> b!402010 (= lt!187862 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!323 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402011 () Bool)

(assert (=> b!402011 (= e!242260 (and e!242259 mapRes!16782))))

(declare-fun condMapEmpty!16782 () Bool)

(declare-fun mapDefault!16782 () ValueCell!4710)

(assert (=> b!402011 (= condMapEmpty!16782 (= (arr!11489 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4710)) mapDefault!16782)))))

(declare-fun b!402012 () Bool)

(declare-fun res!231581 () Bool)

(assert (=> b!402012 (=> (not res!231581) (not e!242263))))

(declare-datatypes ((List!6654 0))(
  ( (Nil!6651) (Cons!6650 (h!7506 (_ BitVec 64)) (t!11836 List!6654)) )
))
(declare-fun arrayNoDuplicates!0 (array!24087 (_ BitVec 32) List!6654) Bool)

(assert (=> b!402012 (= res!231581 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6651))))

(declare-fun b!402013 () Bool)

(declare-fun res!231585 () Bool)

(assert (=> b!402013 (=> (not res!231585) (not e!242257))))

(assert (=> b!402013 (= res!231585 (arrayNoDuplicates!0 lt!187863 #b00000000000000000000000000000000 Nil!6651))))

(declare-fun b!402014 () Bool)

(declare-fun res!231579 () Bool)

(assert (=> b!402014 (=> (not res!231579) (not e!242263))))

(assert (=> b!402014 (= res!231579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402015 () Bool)

(declare-fun res!231586 () Bool)

(assert (=> b!402015 (=> (not res!231586) (not e!242263))))

(declare-fun arrayContainsKey!0 (array!24087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402015 (= res!231586 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!402016 () Bool)

(declare-fun res!231587 () Bool)

(assert (=> b!402016 (=> (not res!231587) (not e!242263))))

(assert (=> b!402016 (= res!231587 (or (= (select (arr!11490 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11490 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402017 () Bool)

(declare-fun res!231583 () Bool)

(assert (=> b!402017 (=> (not res!231583) (not e!242263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402017 (= res!231583 (validMask!0 mask!1025))))

(assert (= (and start!38696 res!231588) b!402017))

(assert (= (and b!402017 res!231583) b!402009))

(assert (= (and b!402009 res!231584) b!402014))

(assert (= (and b!402014 res!231579) b!402012))

(assert (= (and b!402012 res!231581) b!402003))

(assert (= (and b!402003 res!231578) b!402001))

(assert (= (and b!402001 res!231580) b!402016))

(assert (= (and b!402016 res!231587) b!402015))

(assert (= (and b!402015 res!231586) b!402008))

(assert (= (and b!402008 res!231582) b!402013))

(assert (= (and b!402013 res!231585) b!402007))

(assert (= (and b!402007 res!231577) b!402010))

(assert (= (and b!402010 c!54719) b!402005))

(assert (= (and b!402010 (not c!54719)) b!402006))

(assert (= (or b!402005 b!402006) bm!28334))

(assert (= (or b!402005 b!402006) bm!28333))

(assert (= (and b!402011 condMapEmpty!16782) mapIsEmpty!16782))

(assert (= (and b!402011 (not condMapEmpty!16782)) mapNonEmpty!16782))

(get-info :version)

(assert (= (and mapNonEmpty!16782 ((_ is ValueCellFull!4710) mapValue!16782)) b!402002))

(assert (= (and b!402011 ((_ is ValueCellFull!4710) mapDefault!16782)) b!402004))

(assert (= start!38696 b!402011))

(declare-fun m!395647 () Bool)

(assert (=> b!402010 m!395647))

(declare-fun m!395649 () Bool)

(assert (=> mapNonEmpty!16782 m!395649))

(declare-fun m!395651 () Bool)

(assert (=> bm!28333 m!395651))

(declare-fun m!395653 () Bool)

(assert (=> bm!28333 m!395653))

(declare-fun m!395655 () Bool)

(assert (=> b!402014 m!395655))

(declare-fun m!395657 () Bool)

(assert (=> b!402001 m!395657))

(declare-fun m!395659 () Bool)

(assert (=> b!402012 m!395659))

(declare-fun m!395661 () Bool)

(assert (=> b!402016 m!395661))

(declare-fun m!395663 () Bool)

(assert (=> b!402008 m!395663))

(declare-fun m!395665 () Bool)

(assert (=> b!402008 m!395665))

(declare-fun m!395667 () Bool)

(assert (=> b!402013 m!395667))

(declare-fun m!395669 () Bool)

(assert (=> b!402017 m!395669))

(declare-fun m!395671 () Bool)

(assert (=> b!402015 m!395671))

(declare-fun m!395673 () Bool)

(assert (=> start!38696 m!395673))

(declare-fun m!395675 () Bool)

(assert (=> start!38696 m!395675))

(declare-fun m!395677 () Bool)

(assert (=> b!402005 m!395677))

(assert (=> bm!28334 m!395651))

(declare-fun m!395679 () Bool)

(assert (=> bm!28334 m!395679))

(check-sat (not bm!28334) (not start!38696) (not mapNonEmpty!16782) (not b!402010) (not b!402012) tp_is_empty!10107 (not b_next!9225) (not b!402013) (not b!402008) (not b!402005) (not b!402015) (not b!402017) b_and!16629 (not b!402014) (not bm!28333) (not b!402001))
(check-sat b_and!16629 (not b_next!9225))
