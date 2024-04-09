; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38672 () Bool)

(assert start!38672)

(declare-fun b_free!9201 () Bool)

(declare-fun b_next!9201 () Bool)

(assert (=> start!38672 (= b_free!9201 (not b_next!9201))))

(declare-fun tp!32726 () Bool)

(declare-fun b_and!16605 () Bool)

(assert (=> start!38672 (= tp!32726 b_and!16605)))

(declare-datatypes ((V!14549 0))(
  ( (V!14550 (val!5086 Int)) )
))
(declare-fun minValue!515 () V!14549)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!54683 () Bool)

(declare-datatypes ((ValueCell!4698 0))(
  ( (ValueCellFull!4698 (v!7329 V!14549)) (EmptyCell!4698) )
))
(declare-datatypes ((array!24041 0))(
  ( (array!24042 (arr!11467 (Array (_ BitVec 32) ValueCell!4698)) (size!11819 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24041)

(declare-datatypes ((array!24043 0))(
  ( (array!24044 (arr!11468 (Array (_ BitVec 32) (_ BitVec 64))) (size!11820 (_ BitVec 32))) )
))
(declare-fun lt!187790 () array!24043)

(declare-fun zeroValue!515 () V!14549)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6686 0))(
  ( (tuple2!6687 (_1!3353 (_ BitVec 64)) (_2!3353 V!14549)) )
))
(declare-datatypes ((List!6635 0))(
  ( (Nil!6632) (Cons!6631 (h!7487 tuple2!6686) (t!11817 List!6635)) )
))
(declare-datatypes ((ListLongMap!5613 0))(
  ( (ListLongMap!5614 (toList!2822 List!6635)) )
))
(declare-fun call!28264 () ListLongMap!5613)

(declare-fun v!412 () V!14549)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!24043)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!28261 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1036 (array!24043 array!24041 (_ BitVec 32) (_ BitVec 32) V!14549 V!14549 (_ BitVec 32) Int) ListLongMap!5613)

(assert (=> bm!28261 (= call!28264 (getCurrentListMapNoExtraKeys!1036 (ite c!54683 lt!187790 _keys!709) (ite c!54683 (array!24042 (store (arr!11467 _values!549) i!563 (ValueCellFull!4698 v!412)) (size!11819 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun call!28265 () ListLongMap!5613)

(declare-fun bm!28262 () Bool)

(assert (=> bm!28262 (= call!28265 (getCurrentListMapNoExtraKeys!1036 (ite c!54683 _keys!709 lt!187790) (ite c!54683 _values!549 (array!24042 (store (arr!11467 _values!549) i!563 (ValueCellFull!4698 v!412)) (size!11819 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401389 () Bool)

(declare-fun e!242009 () Bool)

(declare-fun e!242010 () Bool)

(declare-fun mapRes!16746 () Bool)

(assert (=> b!401389 (= e!242009 (and e!242010 mapRes!16746))))

(declare-fun condMapEmpty!16746 () Bool)

(declare-fun mapDefault!16746 () ValueCell!4698)

(assert (=> b!401389 (= condMapEmpty!16746 (= (arr!11467 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4698)) mapDefault!16746)))))

(declare-fun b!401390 () Bool)

(declare-fun e!242011 () Bool)

(assert (=> b!401390 (= e!242011 (= call!28265 call!28264))))

(declare-fun mapIsEmpty!16746 () Bool)

(assert (=> mapIsEmpty!16746 mapRes!16746))

(declare-fun b!401391 () Bool)

(declare-fun res!231149 () Bool)

(declare-fun e!242005 () Bool)

(assert (=> b!401391 (=> (not res!231149) (not e!242005))))

(declare-datatypes ((List!6636 0))(
  ( (Nil!6633) (Cons!6632 (h!7488 (_ BitVec 64)) (t!11818 List!6636)) )
))
(declare-fun arrayNoDuplicates!0 (array!24043 (_ BitVec 32) List!6636) Bool)

(assert (=> b!401391 (= res!231149 (arrayNoDuplicates!0 lt!187790 #b00000000000000000000000000000000 Nil!6633))))

(declare-fun b!401392 () Bool)

(declare-fun res!231150 () Bool)

(declare-fun e!242007 () Bool)

(assert (=> b!401392 (=> (not res!231150) (not e!242007))))

(assert (=> b!401392 (= res!231150 (or (= (select (arr!11468 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11468 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!401393 () Bool)

(declare-fun tp_is_empty!10083 () Bool)

(assert (=> b!401393 (= e!242010 tp_is_empty!10083)))

(declare-fun b!401395 () Bool)

(declare-fun res!231148 () Bool)

(assert (=> b!401395 (=> (not res!231148) (not e!242007))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401395 (= res!231148 (validKeyInArray!0 k0!794))))

(declare-fun b!401396 () Bool)

(declare-fun res!231156 () Bool)

(assert (=> b!401396 (=> (not res!231156) (not e!242005))))

(assert (=> b!401396 (= res!231156 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11820 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401397 () Bool)

(declare-fun +!1105 (ListLongMap!5613 tuple2!6686) ListLongMap!5613)

(assert (=> b!401397 (= e!242011 (= call!28264 (+!1105 call!28265 (tuple2!6687 k0!794 v!412))))))

(declare-fun b!401398 () Bool)

(assert (=> b!401398 (= e!242005 (not true))))

(assert (=> b!401398 e!242011))

(assert (=> b!401398 (= c!54683 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12107 0))(
  ( (Unit!12108) )
))
(declare-fun lt!187791 () Unit!12107)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!316 (array!24043 array!24041 (_ BitVec 32) (_ BitVec 32) V!14549 V!14549 (_ BitVec 32) (_ BitVec 64) V!14549 (_ BitVec 32) Int) Unit!12107)

(assert (=> b!401398 (= lt!187791 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!316 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401399 () Bool)

(declare-fun res!231154 () Bool)

(assert (=> b!401399 (=> (not res!231154) (not e!242007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24043 (_ BitVec 32)) Bool)

(assert (=> b!401399 (= res!231154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!401400 () Bool)

(declare-fun res!231145 () Bool)

(assert (=> b!401400 (=> (not res!231145) (not e!242007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401400 (= res!231145 (validMask!0 mask!1025))))

(declare-fun b!401401 () Bool)

(declare-fun e!242008 () Bool)

(assert (=> b!401401 (= e!242008 tp_is_empty!10083)))

(declare-fun res!231155 () Bool)

(assert (=> start!38672 (=> (not res!231155) (not e!242007))))

(assert (=> start!38672 (= res!231155 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11820 _keys!709))))))

(assert (=> start!38672 e!242007))

(assert (=> start!38672 tp_is_empty!10083))

(assert (=> start!38672 tp!32726))

(assert (=> start!38672 true))

(declare-fun array_inv!8388 (array!24041) Bool)

(assert (=> start!38672 (and (array_inv!8388 _values!549) e!242009)))

(declare-fun array_inv!8389 (array!24043) Bool)

(assert (=> start!38672 (array_inv!8389 _keys!709)))

(declare-fun b!401394 () Bool)

(assert (=> b!401394 (= e!242007 e!242005)))

(declare-fun res!231147 () Bool)

(assert (=> b!401394 (=> (not res!231147) (not e!242005))))

(assert (=> b!401394 (= res!231147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187790 mask!1025))))

(assert (=> b!401394 (= lt!187790 (array!24044 (store (arr!11468 _keys!709) i!563 k0!794) (size!11820 _keys!709)))))

(declare-fun b!401402 () Bool)

(declare-fun res!231152 () Bool)

(assert (=> b!401402 (=> (not res!231152) (not e!242007))))

(declare-fun arrayContainsKey!0 (array!24043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401402 (= res!231152 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!401403 () Bool)

(declare-fun res!231146 () Bool)

(assert (=> b!401403 (=> (not res!231146) (not e!242007))))

(assert (=> b!401403 (= res!231146 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11820 _keys!709))))))

(declare-fun b!401404 () Bool)

(declare-fun res!231151 () Bool)

(assert (=> b!401404 (=> (not res!231151) (not e!242007))))

(assert (=> b!401404 (= res!231151 (and (= (size!11819 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11820 _keys!709) (size!11819 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401405 () Bool)

(declare-fun res!231153 () Bool)

(assert (=> b!401405 (=> (not res!231153) (not e!242007))))

(assert (=> b!401405 (= res!231153 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6633))))

(declare-fun mapNonEmpty!16746 () Bool)

(declare-fun tp!32727 () Bool)

(assert (=> mapNonEmpty!16746 (= mapRes!16746 (and tp!32727 e!242008))))

(declare-fun mapRest!16746 () (Array (_ BitVec 32) ValueCell!4698))

(declare-fun mapValue!16746 () ValueCell!4698)

(declare-fun mapKey!16746 () (_ BitVec 32))

(assert (=> mapNonEmpty!16746 (= (arr!11467 _values!549) (store mapRest!16746 mapKey!16746 mapValue!16746))))

(assert (= (and start!38672 res!231155) b!401400))

(assert (= (and b!401400 res!231145) b!401404))

(assert (= (and b!401404 res!231151) b!401399))

(assert (= (and b!401399 res!231154) b!401405))

(assert (= (and b!401405 res!231153) b!401403))

(assert (= (and b!401403 res!231146) b!401395))

(assert (= (and b!401395 res!231148) b!401392))

(assert (= (and b!401392 res!231150) b!401402))

(assert (= (and b!401402 res!231152) b!401394))

(assert (= (and b!401394 res!231147) b!401391))

(assert (= (and b!401391 res!231149) b!401396))

(assert (= (and b!401396 res!231156) b!401398))

(assert (= (and b!401398 c!54683) b!401397))

(assert (= (and b!401398 (not c!54683)) b!401390))

(assert (= (or b!401397 b!401390) bm!28261))

(assert (= (or b!401397 b!401390) bm!28262))

(assert (= (and b!401389 condMapEmpty!16746) mapIsEmpty!16746))

(assert (= (and b!401389 (not condMapEmpty!16746)) mapNonEmpty!16746))

(get-info :version)

(assert (= (and mapNonEmpty!16746 ((_ is ValueCellFull!4698) mapValue!16746)) b!401401))

(assert (= (and b!401389 ((_ is ValueCellFull!4698) mapDefault!16746)) b!401393))

(assert (= start!38672 b!401389))

(declare-fun m!395239 () Bool)

(assert (=> b!401400 m!395239))

(declare-fun m!395241 () Bool)

(assert (=> mapNonEmpty!16746 m!395241))

(declare-fun m!395243 () Bool)

(assert (=> b!401395 m!395243))

(declare-fun m!395245 () Bool)

(assert (=> start!38672 m!395245))

(declare-fun m!395247 () Bool)

(assert (=> start!38672 m!395247))

(declare-fun m!395249 () Bool)

(assert (=> b!401394 m!395249))

(declare-fun m!395251 () Bool)

(assert (=> b!401394 m!395251))

(declare-fun m!395253 () Bool)

(assert (=> b!401391 m!395253))

(declare-fun m!395255 () Bool)

(assert (=> b!401402 m!395255))

(declare-fun m!395257 () Bool)

(assert (=> bm!28262 m!395257))

(declare-fun m!395259 () Bool)

(assert (=> bm!28262 m!395259))

(declare-fun m!395261 () Bool)

(assert (=> b!401392 m!395261))

(declare-fun m!395263 () Bool)

(assert (=> b!401397 m!395263))

(declare-fun m!395265 () Bool)

(assert (=> b!401399 m!395265))

(declare-fun m!395267 () Bool)

(assert (=> b!401405 m!395267))

(declare-fun m!395269 () Bool)

(assert (=> b!401398 m!395269))

(assert (=> bm!28261 m!395257))

(declare-fun m!395271 () Bool)

(assert (=> bm!28261 m!395271))

(check-sat tp_is_empty!10083 (not mapNonEmpty!16746) (not start!38672) (not b!401397) (not b!401405) (not b!401399) (not b!401394) (not b_next!9201) (not bm!28261) (not b!401391) (not b!401395) (not b!401400) b_and!16605 (not b!401398) (not bm!28262) (not b!401402))
(check-sat b_and!16605 (not b_next!9201))
