; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38594 () Bool)

(assert start!38594)

(declare-fun b_free!9123 () Bool)

(declare-fun b_next!9123 () Bool)

(assert (=> start!38594 (= b_free!9123 (not b_next!9123))))

(declare-fun tp!32493 () Bool)

(declare-fun b_and!16527 () Bool)

(assert (=> start!38594 (= tp!32493 b_and!16527)))

(declare-fun b!399400 () Bool)

(declare-fun res!229742 () Bool)

(declare-fun e!241192 () Bool)

(assert (=> b!399400 (=> (not res!229742) (not e!241192))))

(declare-datatypes ((array!23889 0))(
  ( (array!23890 (arr!11391 (Array (_ BitVec 32) (_ BitVec 64))) (size!11743 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23889)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399400 (= res!229742 (or (= (select (arr!11391 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11391 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!399401 () Bool)

(declare-fun e!241189 () Bool)

(declare-fun tp_is_empty!10005 () Bool)

(assert (=> b!399401 (= e!241189 tp_is_empty!10005)))

(declare-fun b!399402 () Bool)

(declare-fun res!229750 () Bool)

(assert (=> b!399402 (=> (not res!229750) (not e!241192))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399402 (= res!229750 (validMask!0 mask!1025))))

(declare-fun b!399403 () Bool)

(declare-fun e!241186 () Bool)

(assert (=> b!399403 (= e!241192 e!241186)))

(declare-fun res!229752 () Bool)

(assert (=> b!399403 (=> (not res!229752) (not e!241186))))

(declare-fun lt!187556 () array!23889)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23889 (_ BitVec 32)) Bool)

(assert (=> b!399403 (= res!229752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187556 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!399403 (= lt!187556 (array!23890 (store (arr!11391 _keys!709) i!563 k0!794) (size!11743 _keys!709)))))

(declare-fun b!399404 () Bool)

(declare-fun res!229747 () Bool)

(assert (=> b!399404 (=> (not res!229747) (not e!241192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399404 (= res!229747 (validKeyInArray!0 k0!794))))

(declare-fun res!229751 () Bool)

(assert (=> start!38594 (=> (not res!229751) (not e!241192))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38594 (= res!229751 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11743 _keys!709))))))

(assert (=> start!38594 e!241192))

(assert (=> start!38594 tp_is_empty!10005))

(assert (=> start!38594 tp!32493))

(assert (=> start!38594 true))

(declare-datatypes ((V!14445 0))(
  ( (V!14446 (val!5047 Int)) )
))
(declare-datatypes ((ValueCell!4659 0))(
  ( (ValueCellFull!4659 (v!7290 V!14445)) (EmptyCell!4659) )
))
(declare-datatypes ((array!23891 0))(
  ( (array!23892 (arr!11392 (Array (_ BitVec 32) ValueCell!4659)) (size!11744 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23891)

(declare-fun e!241187 () Bool)

(declare-fun array_inv!8336 (array!23891) Bool)

(assert (=> start!38594 (and (array_inv!8336 _values!549) e!241187)))

(declare-fun array_inv!8337 (array!23889) Bool)

(assert (=> start!38594 (array_inv!8337 _keys!709)))

(declare-fun b!399405 () Bool)

(declare-fun res!229741 () Bool)

(assert (=> b!399405 (=> (not res!229741) (not e!241186))))

(declare-datatypes ((List!6570 0))(
  ( (Nil!6567) (Cons!6566 (h!7422 (_ BitVec 64)) (t!11752 List!6570)) )
))
(declare-fun arrayNoDuplicates!0 (array!23889 (_ BitVec 32) List!6570) Bool)

(assert (=> b!399405 (= res!229741 (arrayNoDuplicates!0 lt!187556 #b00000000000000000000000000000000 Nil!6567))))

(declare-fun b!399406 () Bool)

(declare-fun res!229746 () Bool)

(assert (=> b!399406 (=> (not res!229746) (not e!241192))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!399406 (= res!229746 (and (= (size!11744 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11743 _keys!709) (size!11744 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399407 () Bool)

(declare-fun res!229749 () Bool)

(assert (=> b!399407 (=> (not res!229749) (not e!241192))))

(declare-fun arrayContainsKey!0 (array!23889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399407 (= res!229749 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!399408 () Bool)

(assert (=> b!399408 (= e!241186 (not true))))

(declare-fun e!241191 () Bool)

(assert (=> b!399408 e!241191))

(declare-fun c!54566 () Bool)

(assert (=> b!399408 (= c!54566 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14445)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((Unit!12061 0))(
  ( (Unit!12062) )
))
(declare-fun lt!187557 () Unit!12061)

(declare-fun zeroValue!515 () V!14445)

(declare-fun v!412 () V!14445)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!293 (array!23889 array!23891 (_ BitVec 32) (_ BitVec 32) V!14445 V!14445 (_ BitVec 32) (_ BitVec 64) V!14445 (_ BitVec 32) Int) Unit!12061)

(assert (=> b!399408 (= lt!187557 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!293 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((tuple2!6616 0))(
  ( (tuple2!6617 (_1!3318 (_ BitVec 64)) (_2!3318 V!14445)) )
))
(declare-datatypes ((List!6571 0))(
  ( (Nil!6568) (Cons!6567 (h!7423 tuple2!6616) (t!11753 List!6571)) )
))
(declare-datatypes ((ListLongMap!5543 0))(
  ( (ListLongMap!5544 (toList!2787 List!6571)) )
))
(declare-fun call!28031 () ListLongMap!5543)

(declare-fun call!28030 () ListLongMap!5543)

(declare-fun b!399409 () Bool)

(declare-fun +!1079 (ListLongMap!5543 tuple2!6616) ListLongMap!5543)

(assert (=> b!399409 (= e!241191 (= call!28030 (+!1079 call!28031 (tuple2!6617 k0!794 v!412))))))

(declare-fun bm!28027 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1003 (array!23889 array!23891 (_ BitVec 32) (_ BitVec 32) V!14445 V!14445 (_ BitVec 32) Int) ListLongMap!5543)

(assert (=> bm!28027 (= call!28030 (getCurrentListMapNoExtraKeys!1003 (ite c!54566 lt!187556 _keys!709) (ite c!54566 (array!23892 (store (arr!11392 _values!549) i!563 (ValueCellFull!4659 v!412)) (size!11744 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399410 () Bool)

(declare-fun res!229745 () Bool)

(assert (=> b!399410 (=> (not res!229745) (not e!241192))))

(assert (=> b!399410 (= res!229745 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11743 _keys!709))))))

(declare-fun b!399411 () Bool)

(declare-fun e!241190 () Bool)

(assert (=> b!399411 (= e!241190 tp_is_empty!10005)))

(declare-fun mapNonEmpty!16629 () Bool)

(declare-fun mapRes!16629 () Bool)

(declare-fun tp!32492 () Bool)

(assert (=> mapNonEmpty!16629 (= mapRes!16629 (and tp!32492 e!241189))))

(declare-fun mapValue!16629 () ValueCell!4659)

(declare-fun mapKey!16629 () (_ BitVec 32))

(declare-fun mapRest!16629 () (Array (_ BitVec 32) ValueCell!4659))

(assert (=> mapNonEmpty!16629 (= (arr!11392 _values!549) (store mapRest!16629 mapKey!16629 mapValue!16629))))

(declare-fun b!399412 () Bool)

(declare-fun res!229744 () Bool)

(assert (=> b!399412 (=> (not res!229744) (not e!241186))))

(assert (=> b!399412 (= res!229744 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11743 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!399413 () Bool)

(assert (=> b!399413 (= e!241187 (and e!241190 mapRes!16629))))

(declare-fun condMapEmpty!16629 () Bool)

(declare-fun mapDefault!16629 () ValueCell!4659)

(assert (=> b!399413 (= condMapEmpty!16629 (= (arr!11392 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4659)) mapDefault!16629)))))

(declare-fun bm!28028 () Bool)

(assert (=> bm!28028 (= call!28031 (getCurrentListMapNoExtraKeys!1003 (ite c!54566 _keys!709 lt!187556) (ite c!54566 _values!549 (array!23892 (store (arr!11392 _values!549) i!563 (ValueCellFull!4659 v!412)) (size!11744 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16629 () Bool)

(assert (=> mapIsEmpty!16629 mapRes!16629))

(declare-fun b!399414 () Bool)

(declare-fun res!229748 () Bool)

(assert (=> b!399414 (=> (not res!229748) (not e!241192))))

(assert (=> b!399414 (= res!229748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399415 () Bool)

(assert (=> b!399415 (= e!241191 (= call!28031 call!28030))))

(declare-fun b!399416 () Bool)

(declare-fun res!229743 () Bool)

(assert (=> b!399416 (=> (not res!229743) (not e!241192))))

(assert (=> b!399416 (= res!229743 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6567))))

(assert (= (and start!38594 res!229751) b!399402))

(assert (= (and b!399402 res!229750) b!399406))

(assert (= (and b!399406 res!229746) b!399414))

(assert (= (and b!399414 res!229748) b!399416))

(assert (= (and b!399416 res!229743) b!399410))

(assert (= (and b!399410 res!229745) b!399404))

(assert (= (and b!399404 res!229747) b!399400))

(assert (= (and b!399400 res!229742) b!399407))

(assert (= (and b!399407 res!229749) b!399403))

(assert (= (and b!399403 res!229752) b!399405))

(assert (= (and b!399405 res!229741) b!399412))

(assert (= (and b!399412 res!229744) b!399408))

(assert (= (and b!399408 c!54566) b!399409))

(assert (= (and b!399408 (not c!54566)) b!399415))

(assert (= (or b!399409 b!399415) bm!28027))

(assert (= (or b!399409 b!399415) bm!28028))

(assert (= (and b!399413 condMapEmpty!16629) mapIsEmpty!16629))

(assert (= (and b!399413 (not condMapEmpty!16629)) mapNonEmpty!16629))

(get-info :version)

(assert (= (and mapNonEmpty!16629 ((_ is ValueCellFull!4659) mapValue!16629)) b!399401))

(assert (= (and b!399413 ((_ is ValueCellFull!4659) mapDefault!16629)) b!399411))

(assert (= start!38594 b!399413))

(declare-fun m!393913 () Bool)

(assert (=> b!399416 m!393913))

(declare-fun m!393915 () Bool)

(assert (=> bm!28027 m!393915))

(declare-fun m!393917 () Bool)

(assert (=> bm!28027 m!393917))

(declare-fun m!393919 () Bool)

(assert (=> mapNonEmpty!16629 m!393919))

(declare-fun m!393921 () Bool)

(assert (=> b!399404 m!393921))

(declare-fun m!393923 () Bool)

(assert (=> b!399409 m!393923))

(declare-fun m!393925 () Bool)

(assert (=> b!399408 m!393925))

(declare-fun m!393927 () Bool)

(assert (=> b!399400 m!393927))

(declare-fun m!393929 () Bool)

(assert (=> b!399407 m!393929))

(declare-fun m!393931 () Bool)

(assert (=> start!38594 m!393931))

(declare-fun m!393933 () Bool)

(assert (=> start!38594 m!393933))

(declare-fun m!393935 () Bool)

(assert (=> b!399403 m!393935))

(declare-fun m!393937 () Bool)

(assert (=> b!399403 m!393937))

(declare-fun m!393939 () Bool)

(assert (=> b!399402 m!393939))

(declare-fun m!393941 () Bool)

(assert (=> b!399414 m!393941))

(assert (=> bm!28028 m!393915))

(declare-fun m!393943 () Bool)

(assert (=> bm!28028 m!393943))

(declare-fun m!393945 () Bool)

(assert (=> b!399405 m!393945))

(check-sat (not bm!28027) (not b_next!9123) (not b!399403) (not b!399402) (not b!399407) tp_is_empty!10005 (not mapNonEmpty!16629) (not b!399409) b_and!16527 (not b!399416) (not b!399404) (not start!38594) (not b!399414) (not bm!28028) (not b!399405) (not b!399408))
(check-sat b_and!16527 (not b_next!9123))
