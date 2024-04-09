; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38576 () Bool)

(assert start!38576)

(declare-fun b_free!9105 () Bool)

(declare-fun b_next!9105 () Bool)

(assert (=> start!38576 (= b_free!9105 (not b_next!9105))))

(declare-fun tp!32438 () Bool)

(declare-fun b_and!16509 () Bool)

(assert (=> start!38576 (= tp!32438 b_and!16509)))

(declare-fun b!398941 () Bool)

(declare-fun e!240998 () Bool)

(declare-fun tp_is_empty!9987 () Bool)

(assert (=> b!398941 (= e!240998 tp_is_empty!9987)))

(declare-fun b!398942 () Bool)

(declare-fun e!241002 () Bool)

(declare-fun e!241001 () Bool)

(assert (=> b!398942 (= e!241002 e!241001)))

(declare-fun res!229427 () Bool)

(assert (=> b!398942 (=> (not res!229427) (not e!241001))))

(declare-datatypes ((array!23853 0))(
  ( (array!23854 (arr!11373 (Array (_ BitVec 32) (_ BitVec 64))) (size!11725 (_ BitVec 32))) )
))
(declare-fun lt!187503 () array!23853)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23853 (_ BitVec 32)) Bool)

(assert (=> b!398942 (= res!229427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187503 mask!1025))))

(declare-fun _keys!709 () array!23853)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398942 (= lt!187503 (array!23854 (store (arr!11373 _keys!709) i!563 k0!794) (size!11725 _keys!709)))))

(declare-fun b!398943 () Bool)

(declare-fun res!229422 () Bool)

(assert (=> b!398943 (=> (not res!229422) (not e!241002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398943 (= res!229422 (validMask!0 mask!1025))))

(declare-fun b!398944 () Bool)

(declare-fun res!229425 () Bool)

(assert (=> b!398944 (=> (not res!229425) (not e!241002))))

(assert (=> b!398944 (= res!229425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398945 () Bool)

(declare-fun res!229428 () Bool)

(assert (=> b!398945 (=> (not res!229428) (not e!241002))))

(assert (=> b!398945 (= res!229428 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11725 _keys!709))))))

(declare-fun b!398946 () Bool)

(assert (=> b!398946 (= e!241001 (not true))))

(declare-fun e!241000 () Bool)

(assert (=> b!398946 e!241000))

(declare-fun c!54539 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!398946 (= c!54539 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14421 0))(
  ( (V!14422 (val!5038 Int)) )
))
(declare-fun minValue!515 () V!14421)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4650 0))(
  ( (ValueCellFull!4650 (v!7281 V!14421)) (EmptyCell!4650) )
))
(declare-datatypes ((array!23855 0))(
  ( (array!23856 (arr!11374 (Array (_ BitVec 32) ValueCell!4650)) (size!11726 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23855)

(declare-fun zeroValue!515 () V!14421)

(declare-datatypes ((Unit!12051 0))(
  ( (Unit!12052) )
))
(declare-fun lt!187502 () Unit!12051)

(declare-fun v!412 () V!14421)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!288 (array!23853 array!23855 (_ BitVec 32) (_ BitVec 32) V!14421 V!14421 (_ BitVec 32) (_ BitVec 64) V!14421 (_ BitVec 32) Int) Unit!12051)

(assert (=> b!398946 (= lt!187502 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!288 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16602 () Bool)

(declare-fun mapRes!16602 () Bool)

(assert (=> mapIsEmpty!16602 mapRes!16602))

(declare-fun b!398947 () Bool)

(declare-fun res!229417 () Bool)

(assert (=> b!398947 (=> (not res!229417) (not e!241002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398947 (= res!229417 (validKeyInArray!0 k0!794))))

(declare-fun b!398948 () Bool)

(declare-fun res!229418 () Bool)

(assert (=> b!398948 (=> (not res!229418) (not e!241002))))

(declare-fun arrayContainsKey!0 (array!23853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398948 (= res!229418 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!398949 () Bool)

(declare-datatypes ((tuple2!6600 0))(
  ( (tuple2!6601 (_1!3310 (_ BitVec 64)) (_2!3310 V!14421)) )
))
(declare-datatypes ((List!6555 0))(
  ( (Nil!6552) (Cons!6551 (h!7407 tuple2!6600) (t!11737 List!6555)) )
))
(declare-datatypes ((ListLongMap!5527 0))(
  ( (ListLongMap!5528 (toList!2779 List!6555)) )
))
(declare-fun call!27976 () ListLongMap!5527)

(declare-fun call!27977 () ListLongMap!5527)

(assert (=> b!398949 (= e!241000 (= call!27976 call!27977))))

(declare-fun mapNonEmpty!16602 () Bool)

(declare-fun tp!32439 () Bool)

(assert (=> mapNonEmpty!16602 (= mapRes!16602 (and tp!32439 e!240998))))

(declare-fun mapRest!16602 () (Array (_ BitVec 32) ValueCell!4650))

(declare-fun mapKey!16602 () (_ BitVec 32))

(declare-fun mapValue!16602 () ValueCell!4650)

(assert (=> mapNonEmpty!16602 (= (arr!11374 _values!549) (store mapRest!16602 mapKey!16602 mapValue!16602))))

(declare-fun b!398950 () Bool)

(declare-fun res!229423 () Bool)

(assert (=> b!398950 (=> (not res!229423) (not e!241002))))

(declare-datatypes ((List!6556 0))(
  ( (Nil!6553) (Cons!6552 (h!7408 (_ BitVec 64)) (t!11738 List!6556)) )
))
(declare-fun arrayNoDuplicates!0 (array!23853 (_ BitVec 32) List!6556) Bool)

(assert (=> b!398950 (= res!229423 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6553))))

(declare-fun b!398951 () Bool)

(declare-fun res!229419 () Bool)

(assert (=> b!398951 (=> (not res!229419) (not e!241001))))

(assert (=> b!398951 (= res!229419 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11725 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!398952 () Bool)

(declare-fun res!229420 () Bool)

(assert (=> b!398952 (=> (not res!229420) (not e!241001))))

(assert (=> b!398952 (= res!229420 (arrayNoDuplicates!0 lt!187503 #b00000000000000000000000000000000 Nil!6553))))

(declare-fun res!229421 () Bool)

(assert (=> start!38576 (=> (not res!229421) (not e!241002))))

(assert (=> start!38576 (= res!229421 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11725 _keys!709))))))

(assert (=> start!38576 e!241002))

(assert (=> start!38576 tp_is_empty!9987))

(assert (=> start!38576 tp!32438))

(assert (=> start!38576 true))

(declare-fun e!240999 () Bool)

(declare-fun array_inv!8322 (array!23855) Bool)

(assert (=> start!38576 (and (array_inv!8322 _values!549) e!240999)))

(declare-fun array_inv!8323 (array!23853) Bool)

(assert (=> start!38576 (array_inv!8323 _keys!709)))

(declare-fun b!398953 () Bool)

(declare-fun res!229424 () Bool)

(assert (=> b!398953 (=> (not res!229424) (not e!241002))))

(assert (=> b!398953 (= res!229424 (and (= (size!11726 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11725 _keys!709) (size!11726 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!27973 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!996 (array!23853 array!23855 (_ BitVec 32) (_ BitVec 32) V!14421 V!14421 (_ BitVec 32) Int) ListLongMap!5527)

(assert (=> bm!27973 (= call!27976 (getCurrentListMapNoExtraKeys!996 (ite c!54539 _keys!709 lt!187503) (ite c!54539 _values!549 (array!23856 (store (arr!11374 _values!549) i!563 (ValueCellFull!4650 v!412)) (size!11726 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398954 () Bool)

(declare-fun res!229426 () Bool)

(assert (=> b!398954 (=> (not res!229426) (not e!241002))))

(assert (=> b!398954 (= res!229426 (or (= (select (arr!11373 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11373 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398955 () Bool)

(declare-fun e!240997 () Bool)

(assert (=> b!398955 (= e!240997 tp_is_empty!9987)))

(declare-fun b!398956 () Bool)

(declare-fun +!1072 (ListLongMap!5527 tuple2!6600) ListLongMap!5527)

(assert (=> b!398956 (= e!241000 (= call!27977 (+!1072 call!27976 (tuple2!6601 k0!794 v!412))))))

(declare-fun bm!27974 () Bool)

(assert (=> bm!27974 (= call!27977 (getCurrentListMapNoExtraKeys!996 (ite c!54539 lt!187503 _keys!709) (ite c!54539 (array!23856 (store (arr!11374 _values!549) i!563 (ValueCellFull!4650 v!412)) (size!11726 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398957 () Bool)

(assert (=> b!398957 (= e!240999 (and e!240997 mapRes!16602))))

(declare-fun condMapEmpty!16602 () Bool)

(declare-fun mapDefault!16602 () ValueCell!4650)

(assert (=> b!398957 (= condMapEmpty!16602 (= (arr!11374 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4650)) mapDefault!16602)))))

(assert (= (and start!38576 res!229421) b!398943))

(assert (= (and b!398943 res!229422) b!398953))

(assert (= (and b!398953 res!229424) b!398944))

(assert (= (and b!398944 res!229425) b!398950))

(assert (= (and b!398950 res!229423) b!398945))

(assert (= (and b!398945 res!229428) b!398947))

(assert (= (and b!398947 res!229417) b!398954))

(assert (= (and b!398954 res!229426) b!398948))

(assert (= (and b!398948 res!229418) b!398942))

(assert (= (and b!398942 res!229427) b!398952))

(assert (= (and b!398952 res!229420) b!398951))

(assert (= (and b!398951 res!229419) b!398946))

(assert (= (and b!398946 c!54539) b!398956))

(assert (= (and b!398946 (not c!54539)) b!398949))

(assert (= (or b!398956 b!398949) bm!27974))

(assert (= (or b!398956 b!398949) bm!27973))

(assert (= (and b!398957 condMapEmpty!16602) mapIsEmpty!16602))

(assert (= (and b!398957 (not condMapEmpty!16602)) mapNonEmpty!16602))

(get-info :version)

(assert (= (and mapNonEmpty!16602 ((_ is ValueCellFull!4650) mapValue!16602)) b!398941))

(assert (= (and b!398957 ((_ is ValueCellFull!4650) mapDefault!16602)) b!398955))

(assert (= start!38576 b!398957))

(declare-fun m!393607 () Bool)

(assert (=> b!398948 m!393607))

(declare-fun m!393609 () Bool)

(assert (=> b!398946 m!393609))

(declare-fun m!393611 () Bool)

(assert (=> b!398954 m!393611))

(declare-fun m!393613 () Bool)

(assert (=> b!398947 m!393613))

(declare-fun m!393615 () Bool)

(assert (=> b!398956 m!393615))

(declare-fun m!393617 () Bool)

(assert (=> mapNonEmpty!16602 m!393617))

(declare-fun m!393619 () Bool)

(assert (=> b!398942 m!393619))

(declare-fun m!393621 () Bool)

(assert (=> b!398942 m!393621))

(declare-fun m!393623 () Bool)

(assert (=> b!398950 m!393623))

(declare-fun m!393625 () Bool)

(assert (=> bm!27973 m!393625))

(declare-fun m!393627 () Bool)

(assert (=> bm!27973 m!393627))

(declare-fun m!393629 () Bool)

(assert (=> b!398944 m!393629))

(declare-fun m!393631 () Bool)

(assert (=> start!38576 m!393631))

(declare-fun m!393633 () Bool)

(assert (=> start!38576 m!393633))

(declare-fun m!393635 () Bool)

(assert (=> b!398943 m!393635))

(declare-fun m!393637 () Bool)

(assert (=> b!398952 m!393637))

(assert (=> bm!27974 m!393625))

(declare-fun m!393639 () Bool)

(assert (=> bm!27974 m!393639))

(check-sat (not mapNonEmpty!16602) (not bm!27974) (not start!38576) (not b!398942) (not b!398947) (not b!398952) (not bm!27973) b_and!16509 (not b_next!9105) (not b!398950) (not b!398956) tp_is_empty!9987 (not b!398946) (not b!398943) (not b!398948) (not b!398944))
(check-sat b_and!16509 (not b_next!9105))
