; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39332 () Bool)

(assert start!39332)

(declare-fun b_free!9591 () Bool)

(declare-fun b_next!9591 () Bool)

(assert (=> start!39332 (= b_free!9591 (not b_next!9591))))

(declare-fun tp!34302 () Bool)

(declare-fun b_and!17075 () Bool)

(assert (=> start!39332 (= tp!34302 b_and!17075)))

(declare-fun b!416527 () Bool)

(declare-fun res!242549 () Bool)

(declare-fun e!248629 () Bool)

(assert (=> b!416527 (=> (not res!242549) (not e!248629))))

(declare-datatypes ((array!25321 0))(
  ( (array!25322 (arr!12107 (Array (_ BitVec 32) (_ BitVec 64))) (size!12459 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25321)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416527 (= res!242549 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!416528 () Bool)

(declare-fun res!242558 () Bool)

(assert (=> b!416528 (=> (not res!242558) (not e!248629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416528 (= res!242558 (validKeyInArray!0 k0!794))))

(declare-fun b!416529 () Bool)

(declare-fun res!242557 () Bool)

(assert (=> b!416529 (=> (not res!242557) (not e!248629))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25321 (_ BitVec 32)) Bool)

(assert (=> b!416529 (= res!242557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-datatypes ((V!15429 0))(
  ( (V!15430 (val!5416 Int)) )
))
(declare-datatypes ((tuple2!6992 0))(
  ( (tuple2!6993 (_1!3506 (_ BitVec 64)) (_2!3506 V!15429)) )
))
(declare-datatypes ((List!7045 0))(
  ( (Nil!7042) (Cons!7041 (h!7897 tuple2!6992) (t!12309 List!7045)) )
))
(declare-datatypes ((ListLongMap!5919 0))(
  ( (ListLongMap!5920 (toList!2975 List!7045)) )
))
(declare-fun call!28948 () ListLongMap!5919)

(declare-fun e!248625 () Bool)

(declare-fun call!28949 () ListLongMap!5919)

(declare-fun v!412 () V!15429)

(declare-fun b!416530 () Bool)

(declare-fun +!1187 (ListLongMap!5919 tuple2!6992) ListLongMap!5919)

(assert (=> b!416530 (= e!248625 (= call!28949 (+!1187 call!28948 (tuple2!6993 k0!794 v!412))))))

(declare-fun b!416531 () Bool)

(declare-fun res!242562 () Bool)

(declare-fun e!248624 () Bool)

(assert (=> b!416531 (=> (not res!242562) (not e!248624))))

(declare-fun lt!190787 () array!25321)

(declare-datatypes ((List!7046 0))(
  ( (Nil!7043) (Cons!7042 (h!7898 (_ BitVec 64)) (t!12310 List!7046)) )
))
(declare-fun arrayNoDuplicates!0 (array!25321 (_ BitVec 32) List!7046) Bool)

(assert (=> b!416531 (= res!242562 (arrayNoDuplicates!0 lt!190787 #b00000000000000000000000000000000 Nil!7043))))

(declare-fun b!416532 () Bool)

(declare-fun e!248628 () Bool)

(assert (=> b!416532 (= e!248628 true)))

(declare-fun lt!190790 () V!15429)

(declare-fun lt!190788 () tuple2!6992)

(declare-fun lt!190796 () ListLongMap!5919)

(assert (=> b!416532 (= (+!1187 lt!190796 lt!190788) (+!1187 (+!1187 lt!190796 (tuple2!6993 k0!794 lt!190790)) lt!190788))))

(declare-fun lt!190789 () V!15429)

(assert (=> b!416532 (= lt!190788 (tuple2!6993 k0!794 lt!190789))))

(declare-datatypes ((Unit!12273 0))(
  ( (Unit!12274) )
))
(declare-fun lt!190792 () Unit!12273)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!10 (ListLongMap!5919 (_ BitVec 64) V!15429 V!15429) Unit!12273)

(assert (=> b!416532 (= lt!190792 (addSameAsAddTwiceSameKeyDiffValues!10 lt!190796 k0!794 lt!190790 lt!190789))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5028 0))(
  ( (ValueCellFull!5028 (v!7659 V!15429)) (EmptyCell!5028) )
))
(declare-datatypes ((array!25323 0))(
  ( (array!25324 (arr!12108 (Array (_ BitVec 32) ValueCell!5028)) (size!12460 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25323)

(declare-fun lt!190794 () V!15429)

(declare-fun get!5989 (ValueCell!5028 V!15429) V!15429)

(assert (=> b!416532 (= lt!190790 (get!5989 (select (arr!12108 _values!549) from!863) lt!190794))))

(declare-fun lt!190793 () ListLongMap!5919)

(assert (=> b!416532 (= lt!190793 (+!1187 lt!190796 (tuple2!6993 (select (arr!12107 lt!190787) from!863) lt!190789)))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416532 (= lt!190789 (get!5989 (select (store (arr!12108 _values!549) i!563 (ValueCellFull!5028 v!412)) from!863) lt!190794))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!672 (Int (_ BitVec 64)) V!15429)

(assert (=> b!416532 (= lt!190794 (dynLambda!672 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15429)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!190791 () array!25323)

(declare-fun zeroValue!515 () V!15429)

(declare-fun getCurrentListMapNoExtraKeys!1178 (array!25321 array!25323 (_ BitVec 32) (_ BitVec 32) V!15429 V!15429 (_ BitVec 32) Int) ListLongMap!5919)

(assert (=> b!416532 (= lt!190796 (getCurrentListMapNoExtraKeys!1178 lt!190787 lt!190791 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17736 () Bool)

(declare-fun mapRes!17736 () Bool)

(declare-fun tp!34301 () Bool)

(declare-fun e!248623 () Bool)

(assert (=> mapNonEmpty!17736 (= mapRes!17736 (and tp!34301 e!248623))))

(declare-fun mapValue!17736 () ValueCell!5028)

(declare-fun mapKey!17736 () (_ BitVec 32))

(declare-fun mapRest!17736 () (Array (_ BitVec 32) ValueCell!5028))

(assert (=> mapNonEmpty!17736 (= (arr!12108 _values!549) (store mapRest!17736 mapKey!17736 mapValue!17736))))

(declare-fun b!416533 () Bool)

(declare-fun res!242553 () Bool)

(assert (=> b!416533 (=> (not res!242553) (not e!248629))))

(assert (=> b!416533 (= res!242553 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7043))))

(declare-fun b!416534 () Bool)

(declare-fun e!248627 () Bool)

(assert (=> b!416534 (= e!248624 e!248627)))

(declare-fun res!242560 () Bool)

(assert (=> b!416534 (=> (not res!242560) (not e!248627))))

(assert (=> b!416534 (= res!242560 (= from!863 i!563))))

(assert (=> b!416534 (= lt!190793 (getCurrentListMapNoExtraKeys!1178 lt!190787 lt!190791 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416534 (= lt!190791 (array!25324 (store (arr!12108 _values!549) i!563 (ValueCellFull!5028 v!412)) (size!12460 _values!549)))))

(declare-fun lt!190795 () ListLongMap!5919)

(assert (=> b!416534 (= lt!190795 (getCurrentListMapNoExtraKeys!1178 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416535 () Bool)

(declare-fun tp_is_empty!10743 () Bool)

(assert (=> b!416535 (= e!248623 tp_is_empty!10743)))

(declare-fun b!416536 () Bool)

(declare-fun res!242550 () Bool)

(assert (=> b!416536 (=> (not res!242550) (not e!248629))))

(assert (=> b!416536 (= res!242550 (and (= (size!12460 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12459 _keys!709) (size!12460 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!416537 () Bool)

(declare-fun res!242552 () Bool)

(assert (=> b!416537 (=> (not res!242552) (not e!248629))))

(assert (=> b!416537 (= res!242552 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12459 _keys!709))))))

(declare-fun mapIsEmpty!17736 () Bool)

(assert (=> mapIsEmpty!17736 mapRes!17736))

(declare-fun b!416538 () Bool)

(assert (=> b!416538 (= e!248627 (not e!248628))))

(declare-fun res!242556 () Bool)

(assert (=> b!416538 (=> res!242556 e!248628)))

(assert (=> b!416538 (= res!242556 (validKeyInArray!0 (select (arr!12107 _keys!709) from!863)))))

(assert (=> b!416538 e!248625))

(declare-fun c!55025 () Bool)

(assert (=> b!416538 (= c!55025 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190797 () Unit!12273)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!398 (array!25321 array!25323 (_ BitVec 32) (_ BitVec 32) V!15429 V!15429 (_ BitVec 32) (_ BitVec 64) V!15429 (_ BitVec 32) Int) Unit!12273)

(assert (=> b!416538 (= lt!190797 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!398 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416539 () Bool)

(declare-fun e!248622 () Bool)

(declare-fun e!248621 () Bool)

(assert (=> b!416539 (= e!248622 (and e!248621 mapRes!17736))))

(declare-fun condMapEmpty!17736 () Bool)

(declare-fun mapDefault!17736 () ValueCell!5028)

(assert (=> b!416539 (= condMapEmpty!17736 (= (arr!12108 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5028)) mapDefault!17736)))))

(declare-fun b!416540 () Bool)

(assert (=> b!416540 (= e!248625 (= call!28948 call!28949))))

(declare-fun b!416541 () Bool)

(declare-fun res!242559 () Bool)

(assert (=> b!416541 (=> (not res!242559) (not e!248629))))

(assert (=> b!416541 (= res!242559 (or (= (select (arr!12107 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12107 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416542 () Bool)

(declare-fun res!242555 () Bool)

(assert (=> b!416542 (=> (not res!242555) (not e!248629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416542 (= res!242555 (validMask!0 mask!1025))))

(declare-fun bm!28946 () Bool)

(assert (=> bm!28946 (= call!28949 (getCurrentListMapNoExtraKeys!1178 (ite c!55025 lt!190787 _keys!709) (ite c!55025 lt!190791 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416543 () Bool)

(declare-fun res!242561 () Bool)

(assert (=> b!416543 (=> (not res!242561) (not e!248624))))

(assert (=> b!416543 (= res!242561 (bvsle from!863 i!563))))

(declare-fun b!416544 () Bool)

(assert (=> b!416544 (= e!248629 e!248624)))

(declare-fun res!242551 () Bool)

(assert (=> b!416544 (=> (not res!242551) (not e!248624))))

(assert (=> b!416544 (= res!242551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190787 mask!1025))))

(assert (=> b!416544 (= lt!190787 (array!25322 (store (arr!12107 _keys!709) i!563 k0!794) (size!12459 _keys!709)))))

(declare-fun b!416545 () Bool)

(assert (=> b!416545 (= e!248621 tp_is_empty!10743)))

(declare-fun bm!28945 () Bool)

(assert (=> bm!28945 (= call!28948 (getCurrentListMapNoExtraKeys!1178 (ite c!55025 _keys!709 lt!190787) (ite c!55025 _values!549 lt!190791) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!242554 () Bool)

(assert (=> start!39332 (=> (not res!242554) (not e!248629))))

(assert (=> start!39332 (= res!242554 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12459 _keys!709))))))

(assert (=> start!39332 e!248629))

(assert (=> start!39332 tp_is_empty!10743))

(assert (=> start!39332 tp!34302))

(assert (=> start!39332 true))

(declare-fun array_inv!8828 (array!25323) Bool)

(assert (=> start!39332 (and (array_inv!8828 _values!549) e!248622)))

(declare-fun array_inv!8829 (array!25321) Bool)

(assert (=> start!39332 (array_inv!8829 _keys!709)))

(assert (= (and start!39332 res!242554) b!416542))

(assert (= (and b!416542 res!242555) b!416536))

(assert (= (and b!416536 res!242550) b!416529))

(assert (= (and b!416529 res!242557) b!416533))

(assert (= (and b!416533 res!242553) b!416537))

(assert (= (and b!416537 res!242552) b!416528))

(assert (= (and b!416528 res!242558) b!416541))

(assert (= (and b!416541 res!242559) b!416527))

(assert (= (and b!416527 res!242549) b!416544))

(assert (= (and b!416544 res!242551) b!416531))

(assert (= (and b!416531 res!242562) b!416543))

(assert (= (and b!416543 res!242561) b!416534))

(assert (= (and b!416534 res!242560) b!416538))

(assert (= (and b!416538 c!55025) b!416530))

(assert (= (and b!416538 (not c!55025)) b!416540))

(assert (= (or b!416530 b!416540) bm!28946))

(assert (= (or b!416530 b!416540) bm!28945))

(assert (= (and b!416538 (not res!242556)) b!416532))

(assert (= (and b!416539 condMapEmpty!17736) mapIsEmpty!17736))

(assert (= (and b!416539 (not condMapEmpty!17736)) mapNonEmpty!17736))

(get-info :version)

(assert (= (and mapNonEmpty!17736 ((_ is ValueCellFull!5028) mapValue!17736)) b!416535))

(assert (= (and b!416539 ((_ is ValueCellFull!5028) mapDefault!17736)) b!416545))

(assert (= start!39332 b!416539))

(declare-fun b_lambda!8925 () Bool)

(assert (=> (not b_lambda!8925) (not b!416532)))

(declare-fun t!12308 () Bool)

(declare-fun tb!3221 () Bool)

(assert (=> (and start!39332 (= defaultEntry!557 defaultEntry!557) t!12308) tb!3221))

(declare-fun result!5961 () Bool)

(assert (=> tb!3221 (= result!5961 tp_is_empty!10743)))

(assert (=> b!416532 t!12308))

(declare-fun b_and!17077 () Bool)

(assert (= b_and!17075 (and (=> t!12308 result!5961) b_and!17077)))

(declare-fun m!405751 () Bool)

(assert (=> b!416527 m!405751))

(declare-fun m!405753 () Bool)

(assert (=> b!416544 m!405753))

(declare-fun m!405755 () Bool)

(assert (=> b!416544 m!405755))

(declare-fun m!405757 () Bool)

(assert (=> b!416529 m!405757))

(declare-fun m!405759 () Bool)

(assert (=> mapNonEmpty!17736 m!405759))

(declare-fun m!405761 () Bool)

(assert (=> bm!28946 m!405761))

(declare-fun m!405763 () Bool)

(assert (=> b!416538 m!405763))

(assert (=> b!416538 m!405763))

(declare-fun m!405765 () Bool)

(assert (=> b!416538 m!405765))

(declare-fun m!405767 () Bool)

(assert (=> b!416538 m!405767))

(declare-fun m!405769 () Bool)

(assert (=> b!416528 m!405769))

(declare-fun m!405771 () Bool)

(assert (=> bm!28945 m!405771))

(declare-fun m!405773 () Bool)

(assert (=> b!416533 m!405773))

(declare-fun m!405775 () Bool)

(assert (=> start!39332 m!405775))

(declare-fun m!405777 () Bool)

(assert (=> start!39332 m!405777))

(declare-fun m!405779 () Bool)

(assert (=> b!416532 m!405779))

(declare-fun m!405781 () Bool)

(assert (=> b!416532 m!405781))

(declare-fun m!405783 () Bool)

(assert (=> b!416532 m!405783))

(declare-fun m!405785 () Bool)

(assert (=> b!416532 m!405785))

(declare-fun m!405787 () Bool)

(assert (=> b!416532 m!405787))

(declare-fun m!405789 () Bool)

(assert (=> b!416532 m!405789))

(declare-fun m!405791 () Bool)

(assert (=> b!416532 m!405791))

(assert (=> b!416532 m!405783))

(declare-fun m!405793 () Bool)

(assert (=> b!416532 m!405793))

(assert (=> b!416532 m!405787))

(declare-fun m!405795 () Bool)

(assert (=> b!416532 m!405795))

(assert (=> b!416532 m!405791))

(declare-fun m!405797 () Bool)

(assert (=> b!416532 m!405797))

(declare-fun m!405799 () Bool)

(assert (=> b!416532 m!405799))

(declare-fun m!405801 () Bool)

(assert (=> b!416532 m!405801))

(declare-fun m!405803 () Bool)

(assert (=> b!416532 m!405803))

(declare-fun m!405805 () Bool)

(assert (=> b!416530 m!405805))

(declare-fun m!405807 () Bool)

(assert (=> b!416541 m!405807))

(declare-fun m!405809 () Bool)

(assert (=> b!416534 m!405809))

(assert (=> b!416534 m!405801))

(declare-fun m!405811 () Bool)

(assert (=> b!416534 m!405811))

(declare-fun m!405813 () Bool)

(assert (=> b!416542 m!405813))

(declare-fun m!405815 () Bool)

(assert (=> b!416531 m!405815))

(check-sat (not start!39332) (not b!416532) (not b!416527) (not b!416533) (not b!416531) (not b!416544) (not bm!28946) (not bm!28945) tp_is_empty!10743 b_and!17077 (not b!416538) (not b!416529) (not b!416542) (not b!416530) (not b_next!9591) (not b_lambda!8925) (not mapNonEmpty!17736) (not b!416528) (not b!416534))
(check-sat b_and!17077 (not b_next!9591))
