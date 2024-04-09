; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21064 () Bool)

(assert start!21064)

(declare-fun b_free!5583 () Bool)

(declare-fun b_next!5583 () Bool)

(assert (=> start!21064 (= b_free!5583 (not b_next!5583))))

(declare-fun tp!19807 () Bool)

(declare-fun b_and!12419 () Bool)

(assert (=> start!21064 (= tp!19807 b_and!12419)))

(declare-fun res!103435 () Bool)

(declare-fun e!137779 () Bool)

(assert (=> start!21064 (=> (not res!103435) (not e!137779))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21064 (= res!103435 (validMask!0 mask!1149))))

(assert (=> start!21064 e!137779))

(declare-datatypes ((V!6907 0))(
  ( (V!6908 (val!2767 Int)) )
))
(declare-datatypes ((ValueCell!2379 0))(
  ( (ValueCellFull!2379 (v!4757 V!6907)) (EmptyCell!2379) )
))
(declare-datatypes ((array!10090 0))(
  ( (array!10091 (arr!4789 (Array (_ BitVec 32) ValueCell!2379)) (size!5114 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10090)

(declare-fun e!137774 () Bool)

(declare-fun array_inv!3161 (array!10090) Bool)

(assert (=> start!21064 (and (array_inv!3161 _values!649) e!137774)))

(assert (=> start!21064 true))

(declare-fun tp_is_empty!5445 () Bool)

(assert (=> start!21064 tp_is_empty!5445))

(declare-datatypes ((array!10092 0))(
  ( (array!10093 (arr!4790 (Array (_ BitVec 32) (_ BitVec 64))) (size!5115 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10092)

(declare-fun array_inv!3162 (array!10092) Bool)

(assert (=> start!21064 (array_inv!3162 _keys!825)))

(assert (=> start!21064 tp!19807))

(declare-fun b!211673 () Bool)

(declare-fun res!103433 () Bool)

(declare-fun e!137776 () Bool)

(assert (=> b!211673 (=> (not res!103433) (not e!137776))))

(declare-datatypes ((tuple2!4182 0))(
  ( (tuple2!4183 (_1!2101 (_ BitVec 64)) (_2!2101 V!6907)) )
))
(declare-fun lt!108943 () tuple2!4182)

(declare-datatypes ((List!3096 0))(
  ( (Nil!3093) (Cons!3092 (h!3734 tuple2!4182) (t!8047 List!3096)) )
))
(declare-datatypes ((ListLongMap!3109 0))(
  ( (ListLongMap!3110 (toList!1570 List!3096)) )
))
(declare-fun lt!108941 () ListLongMap!3109)

(declare-fun lt!108944 () ListLongMap!3109)

(declare-fun +!563 (ListLongMap!3109 tuple2!4182) ListLongMap!3109)

(assert (=> b!211673 (= res!103433 (= lt!108941 (+!563 lt!108944 lt!108943)))))

(declare-fun b!211674 () Bool)

(declare-fun res!103428 () Bool)

(assert (=> b!211674 (=> (not res!103428) (not e!137779))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!211674 (= res!103428 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5115 _keys!825))))))

(declare-fun b!211675 () Bool)

(declare-fun e!137780 () Bool)

(declare-fun mapRes!9254 () Bool)

(assert (=> b!211675 (= e!137774 (and e!137780 mapRes!9254))))

(declare-fun condMapEmpty!9254 () Bool)

(declare-fun mapDefault!9254 () ValueCell!2379)

(assert (=> b!211675 (= condMapEmpty!9254 (= (arr!4789 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2379)) mapDefault!9254)))))

(declare-fun b!211676 () Bool)

(declare-fun lt!108937 () ListLongMap!3109)

(declare-fun lt!108942 () ListLongMap!3109)

(assert (=> b!211676 (= e!137776 (= lt!108937 (+!563 lt!108942 lt!108943)))))

(declare-fun b!211677 () Bool)

(declare-fun e!137777 () Bool)

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!211677 (= e!137777 (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!211677 e!137776))

(declare-fun res!103437 () Bool)

(assert (=> b!211677 (=> (not res!103437) (not e!137776))))

(declare-fun lt!108939 () ListLongMap!3109)

(assert (=> b!211677 (= res!103437 (= lt!108937 (+!563 lt!108939 lt!108943)))))

(declare-fun zeroValue!615 () V!6907)

(assert (=> b!211677 (= lt!108943 (tuple2!4183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!9254 () Bool)

(declare-fun tp!19808 () Bool)

(declare-fun e!137778 () Bool)

(assert (=> mapNonEmpty!9254 (= mapRes!9254 (and tp!19808 e!137778))))

(declare-fun mapValue!9254 () ValueCell!2379)

(declare-fun mapKey!9254 () (_ BitVec 32))

(declare-fun mapRest!9254 () (Array (_ BitVec 32) ValueCell!2379))

(assert (=> mapNonEmpty!9254 (= (arr!4789 _values!649) (store mapRest!9254 mapKey!9254 mapValue!9254))))

(declare-fun b!211678 () Bool)

(declare-fun res!103432 () Bool)

(assert (=> b!211678 (=> (not res!103432) (not e!137779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10092 (_ BitVec 32)) Bool)

(assert (=> b!211678 (= res!103432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!211679 () Bool)

(assert (=> b!211679 (= e!137778 tp_is_empty!5445)))

(declare-fun b!211680 () Bool)

(declare-fun res!103431 () Bool)

(assert (=> b!211680 (=> (not res!103431) (not e!137779))))

(assert (=> b!211680 (= res!103431 (= (select (arr!4790 _keys!825) i!601) k0!843))))

(declare-fun b!211681 () Bool)

(assert (=> b!211681 (= e!137780 tp_is_empty!5445)))

(declare-fun mapIsEmpty!9254 () Bool)

(assert (=> mapIsEmpty!9254 mapRes!9254))

(declare-fun b!211682 () Bool)

(assert (=> b!211682 (= e!137779 (not e!137777))))

(declare-fun res!103434 () Bool)

(assert (=> b!211682 (=> res!103434 e!137777)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!211682 (= res!103434 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6907)

(declare-fun getCurrentListMap!1098 (array!10092 array!10090 (_ BitVec 32) (_ BitVec 32) V!6907 V!6907 (_ BitVec 32) Int) ListLongMap!3109)

(assert (=> b!211682 (= lt!108941 (getCurrentListMap!1098 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108940 () array!10090)

(assert (=> b!211682 (= lt!108937 (getCurrentListMap!1098 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211682 (and (= lt!108939 lt!108942) (= lt!108942 lt!108939))))

(declare-fun v!520 () V!6907)

(assert (=> b!211682 (= lt!108942 (+!563 lt!108944 (tuple2!4183 k0!843 v!520)))))

(declare-datatypes ((Unit!6425 0))(
  ( (Unit!6426) )
))
(declare-fun lt!108938 () Unit!6425)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!215 (array!10092 array!10090 (_ BitVec 32) (_ BitVec 32) V!6907 V!6907 (_ BitVec 32) (_ BitVec 64) V!6907 (_ BitVec 32) Int) Unit!6425)

(assert (=> b!211682 (= lt!108938 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!215 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!497 (array!10092 array!10090 (_ BitVec 32) (_ BitVec 32) V!6907 V!6907 (_ BitVec 32) Int) ListLongMap!3109)

(assert (=> b!211682 (= lt!108939 (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211682 (= lt!108940 (array!10091 (store (arr!4789 _values!649) i!601 (ValueCellFull!2379 v!520)) (size!5114 _values!649)))))

(assert (=> b!211682 (= lt!108944 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211683 () Bool)

(declare-fun res!103430 () Bool)

(assert (=> b!211683 (=> (not res!103430) (not e!137779))))

(assert (=> b!211683 (= res!103430 (and (= (size!5114 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5115 _keys!825) (size!5114 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!211684 () Bool)

(declare-fun res!103436 () Bool)

(assert (=> b!211684 (=> (not res!103436) (not e!137779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!211684 (= res!103436 (validKeyInArray!0 k0!843))))

(declare-fun b!211685 () Bool)

(declare-fun res!103429 () Bool)

(assert (=> b!211685 (=> (not res!103429) (not e!137779))))

(declare-datatypes ((List!3097 0))(
  ( (Nil!3094) (Cons!3093 (h!3735 (_ BitVec 64)) (t!8048 List!3097)) )
))
(declare-fun arrayNoDuplicates!0 (array!10092 (_ BitVec 32) List!3097) Bool)

(assert (=> b!211685 (= res!103429 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3094))))

(assert (= (and start!21064 res!103435) b!211683))

(assert (= (and b!211683 res!103430) b!211678))

(assert (= (and b!211678 res!103432) b!211685))

(assert (= (and b!211685 res!103429) b!211674))

(assert (= (and b!211674 res!103428) b!211684))

(assert (= (and b!211684 res!103436) b!211680))

(assert (= (and b!211680 res!103431) b!211682))

(assert (= (and b!211682 (not res!103434)) b!211677))

(assert (= (and b!211677 res!103437) b!211673))

(assert (= (and b!211673 res!103433) b!211676))

(assert (= (and b!211675 condMapEmpty!9254) mapIsEmpty!9254))

(assert (= (and b!211675 (not condMapEmpty!9254)) mapNonEmpty!9254))

(get-info :version)

(assert (= (and mapNonEmpty!9254 ((_ is ValueCellFull!2379) mapValue!9254)) b!211679))

(assert (= (and b!211675 ((_ is ValueCellFull!2379) mapDefault!9254)) b!211681))

(assert (= start!21064 b!211675))

(declare-fun m!239443 () Bool)

(assert (=> b!211684 m!239443))

(declare-fun m!239445 () Bool)

(assert (=> b!211677 m!239445))

(declare-fun m!239447 () Bool)

(assert (=> start!21064 m!239447))

(declare-fun m!239449 () Bool)

(assert (=> start!21064 m!239449))

(declare-fun m!239451 () Bool)

(assert (=> start!21064 m!239451))

(declare-fun m!239453 () Bool)

(assert (=> b!211676 m!239453))

(declare-fun m!239455 () Bool)

(assert (=> b!211673 m!239455))

(declare-fun m!239457 () Bool)

(assert (=> b!211680 m!239457))

(declare-fun m!239459 () Bool)

(assert (=> b!211685 m!239459))

(declare-fun m!239461 () Bool)

(assert (=> b!211682 m!239461))

(declare-fun m!239463 () Bool)

(assert (=> b!211682 m!239463))

(declare-fun m!239465 () Bool)

(assert (=> b!211682 m!239465))

(declare-fun m!239467 () Bool)

(assert (=> b!211682 m!239467))

(declare-fun m!239469 () Bool)

(assert (=> b!211682 m!239469))

(declare-fun m!239471 () Bool)

(assert (=> b!211682 m!239471))

(declare-fun m!239473 () Bool)

(assert (=> b!211682 m!239473))

(declare-fun m!239475 () Bool)

(assert (=> mapNonEmpty!9254 m!239475))

(declare-fun m!239477 () Bool)

(assert (=> b!211678 m!239477))

(check-sat (not b!211682) (not start!21064) b_and!12419 (not b!211677) (not b!211685) (not b!211673) (not b!211678) (not b!211684) (not b!211676) (not b_next!5583) (not mapNonEmpty!9254) tp_is_empty!5445)
(check-sat b_and!12419 (not b_next!5583))
(get-model)

(declare-fun d!57987 () Bool)

(declare-fun e!137804 () Bool)

(assert (=> d!57987 e!137804))

(declare-fun res!103473 () Bool)

(assert (=> d!57987 (=> (not res!103473) (not e!137804))))

(declare-fun lt!108978 () ListLongMap!3109)

(declare-fun contains!1406 (ListLongMap!3109 (_ BitVec 64)) Bool)

(assert (=> d!57987 (= res!103473 (contains!1406 lt!108978 (_1!2101 lt!108943)))))

(declare-fun lt!108977 () List!3096)

(assert (=> d!57987 (= lt!108978 (ListLongMap!3110 lt!108977))))

(declare-fun lt!108980 () Unit!6425)

(declare-fun lt!108979 () Unit!6425)

(assert (=> d!57987 (= lt!108980 lt!108979)))

(declare-datatypes ((Option!258 0))(
  ( (Some!257 (v!4762 V!6907)) (None!256) )
))
(declare-fun getValueByKey!252 (List!3096 (_ BitVec 64)) Option!258)

(assert (=> d!57987 (= (getValueByKey!252 lt!108977 (_1!2101 lt!108943)) (Some!257 (_2!2101 lt!108943)))))

(declare-fun lemmaContainsTupThenGetReturnValue!141 (List!3096 (_ BitVec 64) V!6907) Unit!6425)

(assert (=> d!57987 (= lt!108979 (lemmaContainsTupThenGetReturnValue!141 lt!108977 (_1!2101 lt!108943) (_2!2101 lt!108943)))))

(declare-fun insertStrictlySorted!143 (List!3096 (_ BitVec 64) V!6907) List!3096)

(assert (=> d!57987 (= lt!108977 (insertStrictlySorted!143 (toList!1570 lt!108942) (_1!2101 lt!108943) (_2!2101 lt!108943)))))

(assert (=> d!57987 (= (+!563 lt!108942 lt!108943) lt!108978)))

(declare-fun b!211729 () Bool)

(declare-fun res!103472 () Bool)

(assert (=> b!211729 (=> (not res!103472) (not e!137804))))

(assert (=> b!211729 (= res!103472 (= (getValueByKey!252 (toList!1570 lt!108978) (_1!2101 lt!108943)) (Some!257 (_2!2101 lt!108943))))))

(declare-fun b!211730 () Bool)

(declare-fun contains!1407 (List!3096 tuple2!4182) Bool)

(assert (=> b!211730 (= e!137804 (contains!1407 (toList!1570 lt!108978) lt!108943))))

(assert (= (and d!57987 res!103473) b!211729))

(assert (= (and b!211729 res!103472) b!211730))

(declare-fun m!239515 () Bool)

(assert (=> d!57987 m!239515))

(declare-fun m!239517 () Bool)

(assert (=> d!57987 m!239517))

(declare-fun m!239519 () Bool)

(assert (=> d!57987 m!239519))

(declare-fun m!239521 () Bool)

(assert (=> d!57987 m!239521))

(declare-fun m!239523 () Bool)

(assert (=> b!211729 m!239523))

(declare-fun m!239525 () Bool)

(assert (=> b!211730 m!239525))

(assert (=> b!211676 d!57987))

(declare-fun d!57989 () Bool)

(declare-fun res!103481 () Bool)

(declare-fun e!137814 () Bool)

(assert (=> d!57989 (=> res!103481 e!137814)))

(assert (=> d!57989 (= res!103481 (bvsge #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> d!57989 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3094) e!137814)))

(declare-fun b!211741 () Bool)

(declare-fun e!137813 () Bool)

(declare-fun call!20041 () Bool)

(assert (=> b!211741 (= e!137813 call!20041)))

(declare-fun bm!20038 () Bool)

(declare-fun c!35713 () Bool)

(assert (=> bm!20038 (= call!20041 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35713 (Cons!3093 (select (arr!4790 _keys!825) #b00000000000000000000000000000000) Nil!3094) Nil!3094)))))

(declare-fun b!211742 () Bool)

(declare-fun e!137816 () Bool)

(assert (=> b!211742 (= e!137816 e!137813)))

(assert (=> b!211742 (= c!35713 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211743 () Bool)

(declare-fun e!137815 () Bool)

(declare-fun contains!1408 (List!3097 (_ BitVec 64)) Bool)

(assert (=> b!211743 (= e!137815 (contains!1408 Nil!3094 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211744 () Bool)

(assert (=> b!211744 (= e!137814 e!137816)))

(declare-fun res!103480 () Bool)

(assert (=> b!211744 (=> (not res!103480) (not e!137816))))

(assert (=> b!211744 (= res!103480 (not e!137815))))

(declare-fun res!103482 () Bool)

(assert (=> b!211744 (=> (not res!103482) (not e!137815))))

(assert (=> b!211744 (= res!103482 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211745 () Bool)

(assert (=> b!211745 (= e!137813 call!20041)))

(assert (= (and d!57989 (not res!103481)) b!211744))

(assert (= (and b!211744 res!103482) b!211743))

(assert (= (and b!211744 res!103480) b!211742))

(assert (= (and b!211742 c!35713) b!211741))

(assert (= (and b!211742 (not c!35713)) b!211745))

(assert (= (or b!211741 b!211745) bm!20038))

(declare-fun m!239527 () Bool)

(assert (=> bm!20038 m!239527))

(declare-fun m!239529 () Bool)

(assert (=> bm!20038 m!239529))

(assert (=> b!211742 m!239527))

(assert (=> b!211742 m!239527))

(declare-fun m!239531 () Bool)

(assert (=> b!211742 m!239531))

(assert (=> b!211743 m!239527))

(assert (=> b!211743 m!239527))

(declare-fun m!239533 () Bool)

(assert (=> b!211743 m!239533))

(assert (=> b!211744 m!239527))

(assert (=> b!211744 m!239527))

(assert (=> b!211744 m!239531))

(assert (=> b!211685 d!57989))

(declare-fun d!57991 () Bool)

(declare-fun e!137817 () Bool)

(assert (=> d!57991 e!137817))

(declare-fun res!103484 () Bool)

(assert (=> d!57991 (=> (not res!103484) (not e!137817))))

(declare-fun lt!108982 () ListLongMap!3109)

(assert (=> d!57991 (= res!103484 (contains!1406 lt!108982 (_1!2101 lt!108943)))))

(declare-fun lt!108981 () List!3096)

(assert (=> d!57991 (= lt!108982 (ListLongMap!3110 lt!108981))))

(declare-fun lt!108984 () Unit!6425)

(declare-fun lt!108983 () Unit!6425)

(assert (=> d!57991 (= lt!108984 lt!108983)))

(assert (=> d!57991 (= (getValueByKey!252 lt!108981 (_1!2101 lt!108943)) (Some!257 (_2!2101 lt!108943)))))

(assert (=> d!57991 (= lt!108983 (lemmaContainsTupThenGetReturnValue!141 lt!108981 (_1!2101 lt!108943) (_2!2101 lt!108943)))))

(assert (=> d!57991 (= lt!108981 (insertStrictlySorted!143 (toList!1570 lt!108939) (_1!2101 lt!108943) (_2!2101 lt!108943)))))

(assert (=> d!57991 (= (+!563 lt!108939 lt!108943) lt!108982)))

(declare-fun b!211746 () Bool)

(declare-fun res!103483 () Bool)

(assert (=> b!211746 (=> (not res!103483) (not e!137817))))

(assert (=> b!211746 (= res!103483 (= (getValueByKey!252 (toList!1570 lt!108982) (_1!2101 lt!108943)) (Some!257 (_2!2101 lt!108943))))))

(declare-fun b!211747 () Bool)

(assert (=> b!211747 (= e!137817 (contains!1407 (toList!1570 lt!108982) lt!108943))))

(assert (= (and d!57991 res!103484) b!211746))

(assert (= (and b!211746 res!103483) b!211747))

(declare-fun m!239535 () Bool)

(assert (=> d!57991 m!239535))

(declare-fun m!239537 () Bool)

(assert (=> d!57991 m!239537))

(declare-fun m!239539 () Bool)

(assert (=> d!57991 m!239539))

(declare-fun m!239541 () Bool)

(assert (=> d!57991 m!239541))

(declare-fun m!239543 () Bool)

(assert (=> b!211746 m!239543))

(declare-fun m!239545 () Bool)

(assert (=> b!211747 m!239545))

(assert (=> b!211677 d!57991))

(declare-fun bm!20041 () Bool)

(declare-fun call!20044 () ListLongMap!3109)

(assert (=> bm!20041 (= call!20044 (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!211772 () Bool)

(declare-fun e!137833 () Bool)

(declare-fun e!137838 () Bool)

(assert (=> b!211772 (= e!137833 e!137838)))

(assert (=> b!211772 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun res!103493 () Bool)

(declare-fun lt!109001 () ListLongMap!3109)

(assert (=> b!211772 (= res!103493 (contains!1406 lt!109001 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211772 (=> (not res!103493) (not e!137838))))

(declare-fun b!211774 () Bool)

(declare-fun e!137837 () Bool)

(assert (=> b!211774 (= e!137833 e!137837)))

(declare-fun c!35723 () Bool)

(assert (=> b!211774 (= c!35723 (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun b!211775 () Bool)

(declare-fun res!103494 () Bool)

(declare-fun e!137836 () Bool)

(assert (=> b!211775 (=> (not res!103494) (not e!137836))))

(assert (=> b!211775 (= res!103494 (not (contains!1406 lt!109001 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!211776 () Bool)

(declare-fun e!137834 () Bool)

(assert (=> b!211776 (= e!137834 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211776 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!211777 () Bool)

(declare-fun e!137835 () ListLongMap!3109)

(assert (=> b!211777 (= e!137835 (ListLongMap!3110 Nil!3093))))

(declare-fun b!211778 () Bool)

(declare-fun e!137832 () ListLongMap!3109)

(assert (=> b!211778 (= e!137832 call!20044)))

(declare-fun b!211779 () Bool)

(assert (=> b!211779 (= e!137836 e!137833)))

(declare-fun c!35724 () Bool)

(assert (=> b!211779 (= c!35724 e!137834)))

(declare-fun res!103496 () Bool)

(assert (=> b!211779 (=> (not res!103496) (not e!137834))))

(assert (=> b!211779 (= res!103496 (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun b!211780 () Bool)

(declare-fun lt!109004 () Unit!6425)

(declare-fun lt!109002 () Unit!6425)

(assert (=> b!211780 (= lt!109004 lt!109002)))

(declare-fun lt!109000 () (_ BitVec 64))

(declare-fun lt!108999 () ListLongMap!3109)

(declare-fun lt!109003 () (_ BitVec 64))

(declare-fun lt!109005 () V!6907)

(assert (=> b!211780 (not (contains!1406 (+!563 lt!108999 (tuple2!4183 lt!109003 lt!109005)) lt!109000))))

(declare-fun addStillNotContains!106 (ListLongMap!3109 (_ BitVec 64) V!6907 (_ BitVec 64)) Unit!6425)

(assert (=> b!211780 (= lt!109002 (addStillNotContains!106 lt!108999 lt!109003 lt!109005 lt!109000))))

(assert (=> b!211780 (= lt!109000 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!2566 (ValueCell!2379 V!6907) V!6907)

(declare-fun dynLambda!533 (Int (_ BitVec 64)) V!6907)

(assert (=> b!211780 (= lt!109005 (get!2566 (select (arr!4789 lt!108940) #b00000000000000000000000000000000) (dynLambda!533 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!211780 (= lt!109003 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211780 (= lt!108999 call!20044)))

(assert (=> b!211780 (= e!137832 (+!563 call!20044 (tuple2!4183 (select (arr!4790 _keys!825) #b00000000000000000000000000000000) (get!2566 (select (arr!4789 lt!108940) #b00000000000000000000000000000000) (dynLambda!533 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!211781 () Bool)

(assert (=> b!211781 (= e!137835 e!137832)))

(declare-fun c!35725 () Bool)

(assert (=> b!211781 (= c!35725 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!57993 () Bool)

(assert (=> d!57993 e!137836))

(declare-fun res!103495 () Bool)

(assert (=> d!57993 (=> (not res!103495) (not e!137836))))

(assert (=> d!57993 (= res!103495 (not (contains!1406 lt!109001 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57993 (= lt!109001 e!137835)))

(declare-fun c!35722 () Bool)

(assert (=> d!57993 (= c!35722 (bvsge #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> d!57993 (validMask!0 mask!1149)))

(assert (=> d!57993 (= (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109001)))

(declare-fun b!211773 () Bool)

(assert (=> b!211773 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> b!211773 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5114 lt!108940)))))

(declare-fun apply!195 (ListLongMap!3109 (_ BitVec 64)) V!6907)

(assert (=> b!211773 (= e!137838 (= (apply!195 lt!109001 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)) (get!2566 (select (arr!4789 lt!108940) #b00000000000000000000000000000000) (dynLambda!533 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!211782 () Bool)

(assert (=> b!211782 (= e!137837 (= lt!109001 (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!211783 () Bool)

(declare-fun isEmpty!501 (ListLongMap!3109) Bool)

(assert (=> b!211783 (= e!137837 (isEmpty!501 lt!109001))))

(assert (= (and d!57993 c!35722) b!211777))

(assert (= (and d!57993 (not c!35722)) b!211781))

(assert (= (and b!211781 c!35725) b!211780))

(assert (= (and b!211781 (not c!35725)) b!211778))

(assert (= (or b!211780 b!211778) bm!20041))

(assert (= (and d!57993 res!103495) b!211775))

(assert (= (and b!211775 res!103494) b!211779))

(assert (= (and b!211779 res!103496) b!211776))

(assert (= (and b!211779 c!35724) b!211772))

(assert (= (and b!211779 (not c!35724)) b!211774))

(assert (= (and b!211772 res!103493) b!211773))

(assert (= (and b!211774 c!35723) b!211782))

(assert (= (and b!211774 (not c!35723)) b!211783))

(declare-fun b_lambda!7713 () Bool)

(assert (=> (not b_lambda!7713) (not b!211780)))

(declare-fun t!8051 () Bool)

(declare-fun tb!2911 () Bool)

(assert (=> (and start!21064 (= defaultEntry!657 defaultEntry!657) t!8051) tb!2911))

(declare-fun result!5005 () Bool)

(assert (=> tb!2911 (= result!5005 tp_is_empty!5445)))

(assert (=> b!211780 t!8051))

(declare-fun b_and!12423 () Bool)

(assert (= b_and!12419 (and (=> t!8051 result!5005) b_and!12423)))

(declare-fun b_lambda!7715 () Bool)

(assert (=> (not b_lambda!7715) (not b!211773)))

(assert (=> b!211773 t!8051))

(declare-fun b_and!12425 () Bool)

(assert (= b_and!12423 (and (=> t!8051 result!5005) b_and!12425)))

(declare-fun m!239547 () Bool)

(assert (=> bm!20041 m!239547))

(assert (=> b!211781 m!239527))

(assert (=> b!211781 m!239527))

(assert (=> b!211781 m!239531))

(declare-fun m!239549 () Bool)

(assert (=> b!211775 m!239549))

(assert (=> b!211782 m!239547))

(assert (=> b!211773 m!239527))

(declare-fun m!239551 () Bool)

(assert (=> b!211773 m!239551))

(assert (=> b!211773 m!239527))

(declare-fun m!239553 () Bool)

(assert (=> b!211773 m!239553))

(assert (=> b!211773 m!239551))

(declare-fun m!239555 () Bool)

(assert (=> b!211773 m!239555))

(declare-fun m!239557 () Bool)

(assert (=> b!211773 m!239557))

(assert (=> b!211773 m!239555))

(assert (=> b!211772 m!239527))

(assert (=> b!211772 m!239527))

(declare-fun m!239559 () Bool)

(assert (=> b!211772 m!239559))

(assert (=> b!211776 m!239527))

(assert (=> b!211776 m!239527))

(assert (=> b!211776 m!239531))

(declare-fun m!239561 () Bool)

(assert (=> d!57993 m!239561))

(assert (=> d!57993 m!239447))

(declare-fun m!239563 () Bool)

(assert (=> b!211780 m!239563))

(assert (=> b!211780 m!239527))

(declare-fun m!239565 () Bool)

(assert (=> b!211780 m!239565))

(declare-fun m!239567 () Bool)

(assert (=> b!211780 m!239567))

(assert (=> b!211780 m!239551))

(assert (=> b!211780 m!239551))

(assert (=> b!211780 m!239555))

(assert (=> b!211780 m!239557))

(assert (=> b!211780 m!239563))

(declare-fun m!239569 () Bool)

(assert (=> b!211780 m!239569))

(assert (=> b!211780 m!239555))

(declare-fun m!239571 () Bool)

(assert (=> b!211783 m!239571))

(assert (=> b!211682 d!57993))

(declare-fun bm!20042 () Bool)

(declare-fun call!20045 () ListLongMap!3109)

(assert (=> bm!20042 (= call!20045 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!211786 () Bool)

(declare-fun e!137840 () Bool)

(declare-fun e!137845 () Bool)

(assert (=> b!211786 (= e!137840 e!137845)))

(assert (=> b!211786 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun res!103497 () Bool)

(declare-fun lt!109008 () ListLongMap!3109)

(assert (=> b!211786 (= res!103497 (contains!1406 lt!109008 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211786 (=> (not res!103497) (not e!137845))))

(declare-fun b!211788 () Bool)

(declare-fun e!137844 () Bool)

(assert (=> b!211788 (= e!137840 e!137844)))

(declare-fun c!35727 () Bool)

(assert (=> b!211788 (= c!35727 (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun b!211789 () Bool)

(declare-fun res!103498 () Bool)

(declare-fun e!137843 () Bool)

(assert (=> b!211789 (=> (not res!103498) (not e!137843))))

(assert (=> b!211789 (= res!103498 (not (contains!1406 lt!109008 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!211790 () Bool)

(declare-fun e!137841 () Bool)

(assert (=> b!211790 (= e!137841 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211790 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!211791 () Bool)

(declare-fun e!137842 () ListLongMap!3109)

(assert (=> b!211791 (= e!137842 (ListLongMap!3110 Nil!3093))))

(declare-fun b!211792 () Bool)

(declare-fun e!137839 () ListLongMap!3109)

(assert (=> b!211792 (= e!137839 call!20045)))

(declare-fun b!211793 () Bool)

(assert (=> b!211793 (= e!137843 e!137840)))

(declare-fun c!35728 () Bool)

(assert (=> b!211793 (= c!35728 e!137841)))

(declare-fun res!103500 () Bool)

(assert (=> b!211793 (=> (not res!103500) (not e!137841))))

(assert (=> b!211793 (= res!103500 (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun b!211794 () Bool)

(declare-fun lt!109011 () Unit!6425)

(declare-fun lt!109009 () Unit!6425)

(assert (=> b!211794 (= lt!109011 lt!109009)))

(declare-fun lt!109007 () (_ BitVec 64))

(declare-fun lt!109010 () (_ BitVec 64))

(declare-fun lt!109012 () V!6907)

(declare-fun lt!109006 () ListLongMap!3109)

(assert (=> b!211794 (not (contains!1406 (+!563 lt!109006 (tuple2!4183 lt!109010 lt!109012)) lt!109007))))

(assert (=> b!211794 (= lt!109009 (addStillNotContains!106 lt!109006 lt!109010 lt!109012 lt!109007))))

(assert (=> b!211794 (= lt!109007 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!211794 (= lt!109012 (get!2566 (select (arr!4789 _values!649) #b00000000000000000000000000000000) (dynLambda!533 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!211794 (= lt!109010 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211794 (= lt!109006 call!20045)))

(assert (=> b!211794 (= e!137839 (+!563 call!20045 (tuple2!4183 (select (arr!4790 _keys!825) #b00000000000000000000000000000000) (get!2566 (select (arr!4789 _values!649) #b00000000000000000000000000000000) (dynLambda!533 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!211795 () Bool)

(assert (=> b!211795 (= e!137842 e!137839)))

(declare-fun c!35729 () Bool)

(assert (=> b!211795 (= c!35729 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!57995 () Bool)

(assert (=> d!57995 e!137843))

(declare-fun res!103499 () Bool)

(assert (=> d!57995 (=> (not res!103499) (not e!137843))))

(assert (=> d!57995 (= res!103499 (not (contains!1406 lt!109008 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57995 (= lt!109008 e!137842)))

(declare-fun c!35726 () Bool)

(assert (=> d!57995 (= c!35726 (bvsge #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> d!57995 (validMask!0 mask!1149)))

(assert (=> d!57995 (= (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109008)))

(declare-fun b!211787 () Bool)

(assert (=> b!211787 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> b!211787 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5114 _values!649)))))

(assert (=> b!211787 (= e!137845 (= (apply!195 lt!109008 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)) (get!2566 (select (arr!4789 _values!649) #b00000000000000000000000000000000) (dynLambda!533 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!211796 () Bool)

(assert (=> b!211796 (= e!137844 (= lt!109008 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!211797 () Bool)

(assert (=> b!211797 (= e!137844 (isEmpty!501 lt!109008))))

(assert (= (and d!57995 c!35726) b!211791))

(assert (= (and d!57995 (not c!35726)) b!211795))

(assert (= (and b!211795 c!35729) b!211794))

(assert (= (and b!211795 (not c!35729)) b!211792))

(assert (= (or b!211794 b!211792) bm!20042))

(assert (= (and d!57995 res!103499) b!211789))

(assert (= (and b!211789 res!103498) b!211793))

(assert (= (and b!211793 res!103500) b!211790))

(assert (= (and b!211793 c!35728) b!211786))

(assert (= (and b!211793 (not c!35728)) b!211788))

(assert (= (and b!211786 res!103497) b!211787))

(assert (= (and b!211788 c!35727) b!211796))

(assert (= (and b!211788 (not c!35727)) b!211797))

(declare-fun b_lambda!7717 () Bool)

(assert (=> (not b_lambda!7717) (not b!211794)))

(assert (=> b!211794 t!8051))

(declare-fun b_and!12427 () Bool)

(assert (= b_and!12425 (and (=> t!8051 result!5005) b_and!12427)))

(declare-fun b_lambda!7719 () Bool)

(assert (=> (not b_lambda!7719) (not b!211787)))

(assert (=> b!211787 t!8051))

(declare-fun b_and!12429 () Bool)

(assert (= b_and!12427 (and (=> t!8051 result!5005) b_and!12429)))

(declare-fun m!239573 () Bool)

(assert (=> bm!20042 m!239573))

(assert (=> b!211795 m!239527))

(assert (=> b!211795 m!239527))

(assert (=> b!211795 m!239531))

(declare-fun m!239575 () Bool)

(assert (=> b!211789 m!239575))

(assert (=> b!211796 m!239573))

(assert (=> b!211787 m!239527))

(declare-fun m!239577 () Bool)

(assert (=> b!211787 m!239577))

(assert (=> b!211787 m!239527))

(declare-fun m!239579 () Bool)

(assert (=> b!211787 m!239579))

(assert (=> b!211787 m!239577))

(assert (=> b!211787 m!239555))

(declare-fun m!239581 () Bool)

(assert (=> b!211787 m!239581))

(assert (=> b!211787 m!239555))

(assert (=> b!211786 m!239527))

(assert (=> b!211786 m!239527))

(declare-fun m!239583 () Bool)

(assert (=> b!211786 m!239583))

(assert (=> b!211790 m!239527))

(assert (=> b!211790 m!239527))

(assert (=> b!211790 m!239531))

(declare-fun m!239585 () Bool)

(assert (=> d!57995 m!239585))

(assert (=> d!57995 m!239447))

(declare-fun m!239587 () Bool)

(assert (=> b!211794 m!239587))

(assert (=> b!211794 m!239527))

(declare-fun m!239589 () Bool)

(assert (=> b!211794 m!239589))

(declare-fun m!239591 () Bool)

(assert (=> b!211794 m!239591))

(assert (=> b!211794 m!239577))

(assert (=> b!211794 m!239577))

(assert (=> b!211794 m!239555))

(assert (=> b!211794 m!239581))

(assert (=> b!211794 m!239587))

(declare-fun m!239593 () Bool)

(assert (=> b!211794 m!239593))

(assert (=> b!211794 m!239555))

(declare-fun m!239595 () Bool)

(assert (=> b!211797 m!239595))

(assert (=> b!211682 d!57995))

(declare-fun d!57997 () Bool)

(declare-fun e!137851 () Bool)

(assert (=> d!57997 e!137851))

(declare-fun res!103503 () Bool)

(assert (=> d!57997 (=> (not res!103503) (not e!137851))))

(assert (=> d!57997 (= res!103503 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5114 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5114 _values!649))))))))

(declare-fun lt!109015 () Unit!6425)

(declare-fun choose!1087 (array!10092 array!10090 (_ BitVec 32) (_ BitVec 32) V!6907 V!6907 (_ BitVec 32) (_ BitVec 64) V!6907 (_ BitVec 32) Int) Unit!6425)

(assert (=> d!57997 (= lt!109015 (choose!1087 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!57997 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> d!57997 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!215 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!109015)))

(declare-fun call!20051 () ListLongMap!3109)

(declare-fun bm!20047 () Bool)

(assert (=> bm!20047 (= call!20051 (getCurrentListMapNoExtraKeys!497 _keys!825 (array!10091 (store (arr!4789 _values!649) i!601 (ValueCellFull!2379 v!520)) (size!5114 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun call!20050 () ListLongMap!3109)

(declare-fun e!137850 () Bool)

(declare-fun b!211804 () Bool)

(assert (=> b!211804 (= e!137850 (= call!20051 (+!563 call!20050 (tuple2!4183 k0!843 v!520))))))

(declare-fun b!211805 () Bool)

(assert (=> b!211805 (= e!137851 e!137850)))

(declare-fun c!35732 () Bool)

(assert (=> b!211805 (= c!35732 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun b!211806 () Bool)

(assert (=> b!211806 (= e!137850 (= call!20051 call!20050))))

(declare-fun bm!20048 () Bool)

(assert (=> bm!20048 (= call!20050 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and d!57997 res!103503) b!211805))

(assert (= (and b!211805 c!35732) b!211804))

(assert (= (and b!211805 (not c!35732)) b!211806))

(assert (= (or b!211804 b!211806) bm!20047))

(assert (= (or b!211804 b!211806) bm!20048))

(declare-fun m!239597 () Bool)

(assert (=> d!57997 m!239597))

(assert (=> bm!20047 m!239463))

(declare-fun m!239599 () Bool)

(assert (=> bm!20047 m!239599))

(declare-fun m!239601 () Bool)

(assert (=> b!211804 m!239601))

(assert (=> bm!20048 m!239473))

(assert (=> b!211682 d!57997))

(declare-fun d!57999 () Bool)

(declare-fun e!137852 () Bool)

(assert (=> d!57999 e!137852))

(declare-fun res!103505 () Bool)

(assert (=> d!57999 (=> (not res!103505) (not e!137852))))

(declare-fun lt!109017 () ListLongMap!3109)

(assert (=> d!57999 (= res!103505 (contains!1406 lt!109017 (_1!2101 (tuple2!4183 k0!843 v!520))))))

(declare-fun lt!109016 () List!3096)

(assert (=> d!57999 (= lt!109017 (ListLongMap!3110 lt!109016))))

(declare-fun lt!109019 () Unit!6425)

(declare-fun lt!109018 () Unit!6425)

(assert (=> d!57999 (= lt!109019 lt!109018)))

(assert (=> d!57999 (= (getValueByKey!252 lt!109016 (_1!2101 (tuple2!4183 k0!843 v!520))) (Some!257 (_2!2101 (tuple2!4183 k0!843 v!520))))))

(assert (=> d!57999 (= lt!109018 (lemmaContainsTupThenGetReturnValue!141 lt!109016 (_1!2101 (tuple2!4183 k0!843 v!520)) (_2!2101 (tuple2!4183 k0!843 v!520))))))

(assert (=> d!57999 (= lt!109016 (insertStrictlySorted!143 (toList!1570 lt!108944) (_1!2101 (tuple2!4183 k0!843 v!520)) (_2!2101 (tuple2!4183 k0!843 v!520))))))

(assert (=> d!57999 (= (+!563 lt!108944 (tuple2!4183 k0!843 v!520)) lt!109017)))

(declare-fun b!211807 () Bool)

(declare-fun res!103504 () Bool)

(assert (=> b!211807 (=> (not res!103504) (not e!137852))))

(assert (=> b!211807 (= res!103504 (= (getValueByKey!252 (toList!1570 lt!109017) (_1!2101 (tuple2!4183 k0!843 v!520))) (Some!257 (_2!2101 (tuple2!4183 k0!843 v!520)))))))

(declare-fun b!211808 () Bool)

(assert (=> b!211808 (= e!137852 (contains!1407 (toList!1570 lt!109017) (tuple2!4183 k0!843 v!520)))))

(assert (= (and d!57999 res!103505) b!211807))

(assert (= (and b!211807 res!103504) b!211808))

(declare-fun m!239603 () Bool)

(assert (=> d!57999 m!239603))

(declare-fun m!239605 () Bool)

(assert (=> d!57999 m!239605))

(declare-fun m!239607 () Bool)

(assert (=> d!57999 m!239607))

(declare-fun m!239609 () Bool)

(assert (=> d!57999 m!239609))

(declare-fun m!239611 () Bool)

(assert (=> b!211807 m!239611))

(declare-fun m!239613 () Bool)

(assert (=> b!211808 m!239613))

(assert (=> b!211682 d!57999))

(declare-fun b!211851 () Bool)

(declare-fun e!137883 () Bool)

(declare-fun e!137886 () Bool)

(assert (=> b!211851 (= e!137883 e!137886)))

(declare-fun res!103531 () Bool)

(assert (=> b!211851 (=> (not res!103531) (not e!137886))))

(declare-fun lt!109071 () ListLongMap!3109)

(assert (=> b!211851 (= res!103531 (contains!1406 lt!109071 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211851 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun b!211852 () Bool)

(declare-fun e!137887 () ListLongMap!3109)

(declare-fun e!137881 () ListLongMap!3109)

(assert (=> b!211852 (= e!137887 e!137881)))

(declare-fun c!35749 () Bool)

(assert (=> b!211852 (= c!35749 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211853 () Bool)

(declare-fun e!137891 () Bool)

(assert (=> b!211853 (= e!137891 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20063 () Bool)

(declare-fun call!20070 () Bool)

(assert (=> bm!20063 (= call!20070 (contains!1406 lt!109071 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!211854 () Bool)

(declare-fun e!137885 () Bool)

(declare-fun e!137888 () Bool)

(assert (=> b!211854 (= e!137885 e!137888)))

(declare-fun c!35748 () Bool)

(assert (=> b!211854 (= c!35748 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211855 () Bool)

(declare-fun call!20067 () ListLongMap!3109)

(assert (=> b!211855 (= e!137887 (+!563 call!20067 (tuple2!4183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun bm!20064 () Bool)

(declare-fun call!20068 () ListLongMap!3109)

(declare-fun call!20072 () ListLongMap!3109)

(assert (=> bm!20064 (= call!20068 call!20072)))

(declare-fun b!211857 () Bool)

(declare-fun e!137884 () Bool)

(declare-fun e!137879 () Bool)

(assert (=> b!211857 (= e!137884 e!137879)))

(declare-fun res!103525 () Bool)

(assert (=> b!211857 (= res!103525 call!20070)))

(assert (=> b!211857 (=> (not res!103525) (not e!137879))))

(declare-fun bm!20065 () Bool)

(assert (=> bm!20065 (= call!20072 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211858 () Bool)

(assert (=> b!211858 (= e!137884 (not call!20070))))

(declare-fun b!211859 () Bool)

(declare-fun e!137889 () ListLongMap!3109)

(declare-fun call!20066 () ListLongMap!3109)

(assert (=> b!211859 (= e!137889 call!20066)))

(declare-fun b!211860 () Bool)

(declare-fun call!20071 () ListLongMap!3109)

(assert (=> b!211860 (= e!137881 call!20071)))

(declare-fun b!211861 () Bool)

(declare-fun c!35747 () Bool)

(assert (=> b!211861 (= c!35747 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!211861 (= e!137881 e!137889)))

(declare-fun bm!20066 () Bool)

(declare-fun c!35745 () Bool)

(assert (=> bm!20066 (= call!20067 (+!563 (ite c!35745 call!20072 (ite c!35749 call!20068 call!20066)) (ite (or c!35745 c!35749) (tuple2!4183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!211862 () Bool)

(declare-fun e!137880 () Bool)

(assert (=> b!211862 (= e!137880 (= (apply!195 lt!109071 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!211863 () Bool)

(declare-fun res!103529 () Bool)

(assert (=> b!211863 (=> (not res!103529) (not e!137885))))

(assert (=> b!211863 (= res!103529 e!137883)))

(declare-fun res!103532 () Bool)

(assert (=> b!211863 (=> res!103532 e!137883)))

(assert (=> b!211863 (= res!103532 (not e!137891))))

(declare-fun res!103528 () Bool)

(assert (=> b!211863 (=> (not res!103528) (not e!137891))))

(assert (=> b!211863 (= res!103528 (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun bm!20067 () Bool)

(declare-fun call!20069 () Bool)

(assert (=> bm!20067 (= call!20069 (contains!1406 lt!109071 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!58001 () Bool)

(assert (=> d!58001 e!137885))

(declare-fun res!103527 () Bool)

(assert (=> d!58001 (=> (not res!103527) (not e!137885))))

(assert (=> d!58001 (= res!103527 (or (bvsge #b00000000000000000000000000000000 (size!5115 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))))

(declare-fun lt!109065 () ListLongMap!3109)

(assert (=> d!58001 (= lt!109071 lt!109065)))

(declare-fun lt!109064 () Unit!6425)

(declare-fun e!137882 () Unit!6425)

(assert (=> d!58001 (= lt!109064 e!137882)))

(declare-fun c!35750 () Bool)

(declare-fun e!137890 () Bool)

(assert (=> d!58001 (= c!35750 e!137890)))

(declare-fun res!103524 () Bool)

(assert (=> d!58001 (=> (not res!103524) (not e!137890))))

(assert (=> d!58001 (= res!103524 (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> d!58001 (= lt!109065 e!137887)))

(assert (=> d!58001 (= c!35745 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58001 (validMask!0 mask!1149)))

(assert (=> d!58001 (= (getCurrentListMap!1098 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109071)))

(declare-fun b!211856 () Bool)

(assert (=> b!211856 (= e!137888 e!137880)))

(declare-fun res!103526 () Bool)

(assert (=> b!211856 (= res!103526 call!20069)))

(assert (=> b!211856 (=> (not res!103526) (not e!137880))))

(declare-fun bm!20068 () Bool)

(assert (=> bm!20068 (= call!20071 call!20067)))

(declare-fun bm!20069 () Bool)

(assert (=> bm!20069 (= call!20066 call!20068)))

(declare-fun b!211864 () Bool)

(assert (=> b!211864 (= e!137890 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211865 () Bool)

(declare-fun lt!109078 () Unit!6425)

(assert (=> b!211865 (= e!137882 lt!109078)))

(declare-fun lt!109076 () ListLongMap!3109)

(assert (=> b!211865 (= lt!109076 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109072 () (_ BitVec 64))

(assert (=> b!211865 (= lt!109072 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109084 () (_ BitVec 64))

(assert (=> b!211865 (= lt!109084 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109066 () Unit!6425)

(declare-fun addStillContains!171 (ListLongMap!3109 (_ BitVec 64) V!6907 (_ BitVec 64)) Unit!6425)

(assert (=> b!211865 (= lt!109066 (addStillContains!171 lt!109076 lt!109072 zeroValue!615 lt!109084))))

(assert (=> b!211865 (contains!1406 (+!563 lt!109076 (tuple2!4183 lt!109072 zeroValue!615)) lt!109084)))

(declare-fun lt!109075 () Unit!6425)

(assert (=> b!211865 (= lt!109075 lt!109066)))

(declare-fun lt!109068 () ListLongMap!3109)

(assert (=> b!211865 (= lt!109068 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109077 () (_ BitVec 64))

(assert (=> b!211865 (= lt!109077 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109085 () (_ BitVec 64))

(assert (=> b!211865 (= lt!109085 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109082 () Unit!6425)

(declare-fun addApplyDifferent!171 (ListLongMap!3109 (_ BitVec 64) V!6907 (_ BitVec 64)) Unit!6425)

(assert (=> b!211865 (= lt!109082 (addApplyDifferent!171 lt!109068 lt!109077 minValue!615 lt!109085))))

(assert (=> b!211865 (= (apply!195 (+!563 lt!109068 (tuple2!4183 lt!109077 minValue!615)) lt!109085) (apply!195 lt!109068 lt!109085))))

(declare-fun lt!109067 () Unit!6425)

(assert (=> b!211865 (= lt!109067 lt!109082)))

(declare-fun lt!109083 () ListLongMap!3109)

(assert (=> b!211865 (= lt!109083 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109081 () (_ BitVec 64))

(assert (=> b!211865 (= lt!109081 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109079 () (_ BitVec 64))

(assert (=> b!211865 (= lt!109079 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109080 () Unit!6425)

(assert (=> b!211865 (= lt!109080 (addApplyDifferent!171 lt!109083 lt!109081 zeroValue!615 lt!109079))))

(assert (=> b!211865 (= (apply!195 (+!563 lt!109083 (tuple2!4183 lt!109081 zeroValue!615)) lt!109079) (apply!195 lt!109083 lt!109079))))

(declare-fun lt!109069 () Unit!6425)

(assert (=> b!211865 (= lt!109069 lt!109080)))

(declare-fun lt!109073 () ListLongMap!3109)

(assert (=> b!211865 (= lt!109073 (getCurrentListMapNoExtraKeys!497 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109074 () (_ BitVec 64))

(assert (=> b!211865 (= lt!109074 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109070 () (_ BitVec 64))

(assert (=> b!211865 (= lt!109070 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211865 (= lt!109078 (addApplyDifferent!171 lt!109073 lt!109074 minValue!615 lt!109070))))

(assert (=> b!211865 (= (apply!195 (+!563 lt!109073 (tuple2!4183 lt!109074 minValue!615)) lt!109070) (apply!195 lt!109073 lt!109070))))

(declare-fun b!211866 () Bool)

(declare-fun Unit!6427 () Unit!6425)

(assert (=> b!211866 (= e!137882 Unit!6427)))

(declare-fun b!211867 () Bool)

(declare-fun res!103530 () Bool)

(assert (=> b!211867 (=> (not res!103530) (not e!137885))))

(assert (=> b!211867 (= res!103530 e!137884)))

(declare-fun c!35746 () Bool)

(assert (=> b!211867 (= c!35746 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!211868 () Bool)

(assert (=> b!211868 (= e!137889 call!20071)))

(declare-fun b!211869 () Bool)

(assert (=> b!211869 (= e!137886 (= (apply!195 lt!109071 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)) (get!2566 (select (arr!4789 _values!649) #b00000000000000000000000000000000) (dynLambda!533 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!211869 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5114 _values!649)))))

(assert (=> b!211869 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun b!211870 () Bool)

(assert (=> b!211870 (= e!137879 (= (apply!195 lt!109071 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!211871 () Bool)

(assert (=> b!211871 (= e!137888 (not call!20069))))

(assert (= (and d!58001 c!35745) b!211855))

(assert (= (and d!58001 (not c!35745)) b!211852))

(assert (= (and b!211852 c!35749) b!211860))

(assert (= (and b!211852 (not c!35749)) b!211861))

(assert (= (and b!211861 c!35747) b!211868))

(assert (= (and b!211861 (not c!35747)) b!211859))

(assert (= (or b!211868 b!211859) bm!20069))

(assert (= (or b!211860 bm!20069) bm!20064))

(assert (= (or b!211860 b!211868) bm!20068))

(assert (= (or b!211855 bm!20064) bm!20065))

(assert (= (or b!211855 bm!20068) bm!20066))

(assert (= (and d!58001 res!103524) b!211864))

(assert (= (and d!58001 c!35750) b!211865))

(assert (= (and d!58001 (not c!35750)) b!211866))

(assert (= (and d!58001 res!103527) b!211863))

(assert (= (and b!211863 res!103528) b!211853))

(assert (= (and b!211863 (not res!103532)) b!211851))

(assert (= (and b!211851 res!103531) b!211869))

(assert (= (and b!211863 res!103529) b!211867))

(assert (= (and b!211867 c!35746) b!211857))

(assert (= (and b!211867 (not c!35746)) b!211858))

(assert (= (and b!211857 res!103525) b!211870))

(assert (= (or b!211857 b!211858) bm!20063))

(assert (= (and b!211867 res!103530) b!211854))

(assert (= (and b!211854 c!35748) b!211856))

(assert (= (and b!211854 (not c!35748)) b!211871))

(assert (= (and b!211856 res!103526) b!211862))

(assert (= (or b!211856 b!211871) bm!20067))

(declare-fun b_lambda!7721 () Bool)

(assert (=> (not b_lambda!7721) (not b!211869)))

(assert (=> b!211869 t!8051))

(declare-fun b_and!12431 () Bool)

(assert (= b_and!12429 (and (=> t!8051 result!5005) b_and!12431)))

(declare-fun m!239615 () Bool)

(assert (=> bm!20066 m!239615))

(assert (=> d!58001 m!239447))

(declare-fun m!239617 () Bool)

(assert (=> b!211855 m!239617))

(declare-fun m!239619 () Bool)

(assert (=> b!211865 m!239619))

(declare-fun m!239621 () Bool)

(assert (=> b!211865 m!239621))

(declare-fun m!239623 () Bool)

(assert (=> b!211865 m!239623))

(declare-fun m!239625 () Bool)

(assert (=> b!211865 m!239625))

(declare-fun m!239627 () Bool)

(assert (=> b!211865 m!239627))

(declare-fun m!239629 () Bool)

(assert (=> b!211865 m!239629))

(declare-fun m!239631 () Bool)

(assert (=> b!211865 m!239631))

(assert (=> b!211865 m!239627))

(declare-fun m!239633 () Bool)

(assert (=> b!211865 m!239633))

(declare-fun m!239635 () Bool)

(assert (=> b!211865 m!239635))

(assert (=> b!211865 m!239527))

(declare-fun m!239637 () Bool)

(assert (=> b!211865 m!239637))

(assert (=> b!211865 m!239473))

(declare-fun m!239639 () Bool)

(assert (=> b!211865 m!239639))

(assert (=> b!211865 m!239631))

(declare-fun m!239641 () Bool)

(assert (=> b!211865 m!239641))

(assert (=> b!211865 m!239623))

(declare-fun m!239643 () Bool)

(assert (=> b!211865 m!239643))

(assert (=> b!211865 m!239625))

(declare-fun m!239645 () Bool)

(assert (=> b!211865 m!239645))

(declare-fun m!239647 () Bool)

(assert (=> b!211865 m!239647))

(assert (=> b!211864 m!239527))

(assert (=> b!211864 m!239527))

(assert (=> b!211864 m!239531))

(declare-fun m!239649 () Bool)

(assert (=> bm!20067 m!239649))

(assert (=> bm!20065 m!239473))

(assert (=> b!211851 m!239527))

(assert (=> b!211851 m!239527))

(declare-fun m!239651 () Bool)

(assert (=> b!211851 m!239651))

(assert (=> b!211869 m!239527))

(declare-fun m!239653 () Bool)

(assert (=> b!211869 m!239653))

(assert (=> b!211869 m!239577))

(assert (=> b!211869 m!239577))

(assert (=> b!211869 m!239555))

(assert (=> b!211869 m!239581))

(assert (=> b!211869 m!239527))

(assert (=> b!211869 m!239555))

(declare-fun m!239655 () Bool)

(assert (=> b!211862 m!239655))

(assert (=> b!211853 m!239527))

(assert (=> b!211853 m!239527))

(assert (=> b!211853 m!239531))

(declare-fun m!239657 () Bool)

(assert (=> bm!20063 m!239657))

(declare-fun m!239659 () Bool)

(assert (=> b!211870 m!239659))

(assert (=> b!211682 d!58001))

(declare-fun b!211872 () Bool)

(declare-fun e!137896 () Bool)

(declare-fun e!137899 () Bool)

(assert (=> b!211872 (= e!137896 e!137899)))

(declare-fun res!103540 () Bool)

(assert (=> b!211872 (=> (not res!103540) (not e!137899))))

(declare-fun lt!109093 () ListLongMap!3109)

(assert (=> b!211872 (= res!103540 (contains!1406 lt!109093 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211872 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun b!211873 () Bool)

(declare-fun e!137900 () ListLongMap!3109)

(declare-fun e!137894 () ListLongMap!3109)

(assert (=> b!211873 (= e!137900 e!137894)))

(declare-fun c!35755 () Bool)

(assert (=> b!211873 (= c!35755 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211874 () Bool)

(declare-fun e!137904 () Bool)

(assert (=> b!211874 (= e!137904 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20070 () Bool)

(declare-fun call!20077 () Bool)

(assert (=> bm!20070 (= call!20077 (contains!1406 lt!109093 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!211875 () Bool)

(declare-fun e!137898 () Bool)

(declare-fun e!137901 () Bool)

(assert (=> b!211875 (= e!137898 e!137901)))

(declare-fun c!35754 () Bool)

(assert (=> b!211875 (= c!35754 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211876 () Bool)

(declare-fun call!20074 () ListLongMap!3109)

(assert (=> b!211876 (= e!137900 (+!563 call!20074 (tuple2!4183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun bm!20071 () Bool)

(declare-fun call!20075 () ListLongMap!3109)

(declare-fun call!20079 () ListLongMap!3109)

(assert (=> bm!20071 (= call!20075 call!20079)))

(declare-fun b!211878 () Bool)

(declare-fun e!137897 () Bool)

(declare-fun e!137892 () Bool)

(assert (=> b!211878 (= e!137897 e!137892)))

(declare-fun res!103534 () Bool)

(assert (=> b!211878 (= res!103534 call!20077)))

(assert (=> b!211878 (=> (not res!103534) (not e!137892))))

(declare-fun bm!20072 () Bool)

(assert (=> bm!20072 (= call!20079 (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211879 () Bool)

(assert (=> b!211879 (= e!137897 (not call!20077))))

(declare-fun b!211880 () Bool)

(declare-fun e!137902 () ListLongMap!3109)

(declare-fun call!20073 () ListLongMap!3109)

(assert (=> b!211880 (= e!137902 call!20073)))

(declare-fun b!211881 () Bool)

(declare-fun call!20078 () ListLongMap!3109)

(assert (=> b!211881 (= e!137894 call!20078)))

(declare-fun b!211882 () Bool)

(declare-fun c!35753 () Bool)

(assert (=> b!211882 (= c!35753 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!211882 (= e!137894 e!137902)))

(declare-fun c!35751 () Bool)

(declare-fun bm!20073 () Bool)

(assert (=> bm!20073 (= call!20074 (+!563 (ite c!35751 call!20079 (ite c!35755 call!20075 call!20073)) (ite (or c!35751 c!35755) (tuple2!4183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!211883 () Bool)

(declare-fun e!137893 () Bool)

(assert (=> b!211883 (= e!137893 (= (apply!195 lt!109093 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!211884 () Bool)

(declare-fun res!103538 () Bool)

(assert (=> b!211884 (=> (not res!103538) (not e!137898))))

(assert (=> b!211884 (= res!103538 e!137896)))

(declare-fun res!103541 () Bool)

(assert (=> b!211884 (=> res!103541 e!137896)))

(assert (=> b!211884 (= res!103541 (not e!137904))))

(declare-fun res!103537 () Bool)

(assert (=> b!211884 (=> (not res!103537) (not e!137904))))

(assert (=> b!211884 (= res!103537 (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun bm!20074 () Bool)

(declare-fun call!20076 () Bool)

(assert (=> bm!20074 (= call!20076 (contains!1406 lt!109093 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!58003 () Bool)

(assert (=> d!58003 e!137898))

(declare-fun res!103536 () Bool)

(assert (=> d!58003 (=> (not res!103536) (not e!137898))))

(assert (=> d!58003 (= res!103536 (or (bvsge #b00000000000000000000000000000000 (size!5115 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))))

(declare-fun lt!109087 () ListLongMap!3109)

(assert (=> d!58003 (= lt!109093 lt!109087)))

(declare-fun lt!109086 () Unit!6425)

(declare-fun e!137895 () Unit!6425)

(assert (=> d!58003 (= lt!109086 e!137895)))

(declare-fun c!35756 () Bool)

(declare-fun e!137903 () Bool)

(assert (=> d!58003 (= c!35756 e!137903)))

(declare-fun res!103533 () Bool)

(assert (=> d!58003 (=> (not res!103533) (not e!137903))))

(assert (=> d!58003 (= res!103533 (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> d!58003 (= lt!109087 e!137900)))

(assert (=> d!58003 (= c!35751 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58003 (validMask!0 mask!1149)))

(assert (=> d!58003 (= (getCurrentListMap!1098 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109093)))

(declare-fun b!211877 () Bool)

(assert (=> b!211877 (= e!137901 e!137893)))

(declare-fun res!103535 () Bool)

(assert (=> b!211877 (= res!103535 call!20076)))

(assert (=> b!211877 (=> (not res!103535) (not e!137893))))

(declare-fun bm!20075 () Bool)

(assert (=> bm!20075 (= call!20078 call!20074)))

(declare-fun bm!20076 () Bool)

(assert (=> bm!20076 (= call!20073 call!20075)))

(declare-fun b!211885 () Bool)

(assert (=> b!211885 (= e!137903 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211886 () Bool)

(declare-fun lt!109100 () Unit!6425)

(assert (=> b!211886 (= e!137895 lt!109100)))

(declare-fun lt!109098 () ListLongMap!3109)

(assert (=> b!211886 (= lt!109098 (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109094 () (_ BitVec 64))

(assert (=> b!211886 (= lt!109094 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109106 () (_ BitVec 64))

(assert (=> b!211886 (= lt!109106 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109088 () Unit!6425)

(assert (=> b!211886 (= lt!109088 (addStillContains!171 lt!109098 lt!109094 zeroValue!615 lt!109106))))

(assert (=> b!211886 (contains!1406 (+!563 lt!109098 (tuple2!4183 lt!109094 zeroValue!615)) lt!109106)))

(declare-fun lt!109097 () Unit!6425)

(assert (=> b!211886 (= lt!109097 lt!109088)))

(declare-fun lt!109090 () ListLongMap!3109)

(assert (=> b!211886 (= lt!109090 (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109099 () (_ BitVec 64))

(assert (=> b!211886 (= lt!109099 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109107 () (_ BitVec 64))

(assert (=> b!211886 (= lt!109107 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109104 () Unit!6425)

(assert (=> b!211886 (= lt!109104 (addApplyDifferent!171 lt!109090 lt!109099 minValue!615 lt!109107))))

(assert (=> b!211886 (= (apply!195 (+!563 lt!109090 (tuple2!4183 lt!109099 minValue!615)) lt!109107) (apply!195 lt!109090 lt!109107))))

(declare-fun lt!109089 () Unit!6425)

(assert (=> b!211886 (= lt!109089 lt!109104)))

(declare-fun lt!109105 () ListLongMap!3109)

(assert (=> b!211886 (= lt!109105 (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109103 () (_ BitVec 64))

(assert (=> b!211886 (= lt!109103 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109101 () (_ BitVec 64))

(assert (=> b!211886 (= lt!109101 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109102 () Unit!6425)

(assert (=> b!211886 (= lt!109102 (addApplyDifferent!171 lt!109105 lt!109103 zeroValue!615 lt!109101))))

(assert (=> b!211886 (= (apply!195 (+!563 lt!109105 (tuple2!4183 lt!109103 zeroValue!615)) lt!109101) (apply!195 lt!109105 lt!109101))))

(declare-fun lt!109091 () Unit!6425)

(assert (=> b!211886 (= lt!109091 lt!109102)))

(declare-fun lt!109095 () ListLongMap!3109)

(assert (=> b!211886 (= lt!109095 (getCurrentListMapNoExtraKeys!497 _keys!825 lt!108940 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109096 () (_ BitVec 64))

(assert (=> b!211886 (= lt!109096 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109092 () (_ BitVec 64))

(assert (=> b!211886 (= lt!109092 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211886 (= lt!109100 (addApplyDifferent!171 lt!109095 lt!109096 minValue!615 lt!109092))))

(assert (=> b!211886 (= (apply!195 (+!563 lt!109095 (tuple2!4183 lt!109096 minValue!615)) lt!109092) (apply!195 lt!109095 lt!109092))))

(declare-fun b!211887 () Bool)

(declare-fun Unit!6428 () Unit!6425)

(assert (=> b!211887 (= e!137895 Unit!6428)))

(declare-fun b!211888 () Bool)

(declare-fun res!103539 () Bool)

(assert (=> b!211888 (=> (not res!103539) (not e!137898))))

(assert (=> b!211888 (= res!103539 e!137897)))

(declare-fun c!35752 () Bool)

(assert (=> b!211888 (= c!35752 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!211889 () Bool)

(assert (=> b!211889 (= e!137902 call!20078)))

(declare-fun b!211890 () Bool)

(assert (=> b!211890 (= e!137899 (= (apply!195 lt!109093 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)) (get!2566 (select (arr!4789 lt!108940) #b00000000000000000000000000000000) (dynLambda!533 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!211890 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5114 lt!108940)))))

(assert (=> b!211890 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(declare-fun b!211891 () Bool)

(assert (=> b!211891 (= e!137892 (= (apply!195 lt!109093 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!211892 () Bool)

(assert (=> b!211892 (= e!137901 (not call!20076))))

(assert (= (and d!58003 c!35751) b!211876))

(assert (= (and d!58003 (not c!35751)) b!211873))

(assert (= (and b!211873 c!35755) b!211881))

(assert (= (and b!211873 (not c!35755)) b!211882))

(assert (= (and b!211882 c!35753) b!211889))

(assert (= (and b!211882 (not c!35753)) b!211880))

(assert (= (or b!211889 b!211880) bm!20076))

(assert (= (or b!211881 bm!20076) bm!20071))

(assert (= (or b!211881 b!211889) bm!20075))

(assert (= (or b!211876 bm!20071) bm!20072))

(assert (= (or b!211876 bm!20075) bm!20073))

(assert (= (and d!58003 res!103533) b!211885))

(assert (= (and d!58003 c!35756) b!211886))

(assert (= (and d!58003 (not c!35756)) b!211887))

(assert (= (and d!58003 res!103536) b!211884))

(assert (= (and b!211884 res!103537) b!211874))

(assert (= (and b!211884 (not res!103541)) b!211872))

(assert (= (and b!211872 res!103540) b!211890))

(assert (= (and b!211884 res!103538) b!211888))

(assert (= (and b!211888 c!35752) b!211878))

(assert (= (and b!211888 (not c!35752)) b!211879))

(assert (= (and b!211878 res!103534) b!211891))

(assert (= (or b!211878 b!211879) bm!20070))

(assert (= (and b!211888 res!103539) b!211875))

(assert (= (and b!211875 c!35754) b!211877))

(assert (= (and b!211875 (not c!35754)) b!211892))

(assert (= (and b!211877 res!103535) b!211883))

(assert (= (or b!211877 b!211892) bm!20074))

(declare-fun b_lambda!7723 () Bool)

(assert (=> (not b_lambda!7723) (not b!211890)))

(assert (=> b!211890 t!8051))

(declare-fun b_and!12433 () Bool)

(assert (= b_and!12431 (and (=> t!8051 result!5005) b_and!12433)))

(declare-fun m!239661 () Bool)

(assert (=> bm!20073 m!239661))

(assert (=> d!58003 m!239447))

(declare-fun m!239663 () Bool)

(assert (=> b!211876 m!239663))

(declare-fun m!239665 () Bool)

(assert (=> b!211886 m!239665))

(declare-fun m!239667 () Bool)

(assert (=> b!211886 m!239667))

(declare-fun m!239669 () Bool)

(assert (=> b!211886 m!239669))

(declare-fun m!239671 () Bool)

(assert (=> b!211886 m!239671))

(declare-fun m!239673 () Bool)

(assert (=> b!211886 m!239673))

(declare-fun m!239675 () Bool)

(assert (=> b!211886 m!239675))

(declare-fun m!239677 () Bool)

(assert (=> b!211886 m!239677))

(assert (=> b!211886 m!239673))

(declare-fun m!239679 () Bool)

(assert (=> b!211886 m!239679))

(declare-fun m!239681 () Bool)

(assert (=> b!211886 m!239681))

(assert (=> b!211886 m!239527))

(declare-fun m!239683 () Bool)

(assert (=> b!211886 m!239683))

(assert (=> b!211886 m!239469))

(declare-fun m!239685 () Bool)

(assert (=> b!211886 m!239685))

(assert (=> b!211886 m!239677))

(declare-fun m!239687 () Bool)

(assert (=> b!211886 m!239687))

(assert (=> b!211886 m!239669))

(declare-fun m!239689 () Bool)

(assert (=> b!211886 m!239689))

(assert (=> b!211886 m!239671))

(declare-fun m!239691 () Bool)

(assert (=> b!211886 m!239691))

(declare-fun m!239693 () Bool)

(assert (=> b!211886 m!239693))

(assert (=> b!211885 m!239527))

(assert (=> b!211885 m!239527))

(assert (=> b!211885 m!239531))

(declare-fun m!239695 () Bool)

(assert (=> bm!20074 m!239695))

(assert (=> bm!20072 m!239469))

(assert (=> b!211872 m!239527))

(assert (=> b!211872 m!239527))

(declare-fun m!239697 () Bool)

(assert (=> b!211872 m!239697))

(assert (=> b!211890 m!239527))

(declare-fun m!239699 () Bool)

(assert (=> b!211890 m!239699))

(assert (=> b!211890 m!239551))

(assert (=> b!211890 m!239551))

(assert (=> b!211890 m!239555))

(assert (=> b!211890 m!239557))

(assert (=> b!211890 m!239527))

(assert (=> b!211890 m!239555))

(declare-fun m!239701 () Bool)

(assert (=> b!211883 m!239701))

(assert (=> b!211874 m!239527))

(assert (=> b!211874 m!239527))

(assert (=> b!211874 m!239531))

(declare-fun m!239703 () Bool)

(assert (=> bm!20070 m!239703))

(declare-fun m!239705 () Bool)

(assert (=> b!211891 m!239705))

(assert (=> b!211682 d!58003))

(declare-fun d!58005 () Bool)

(declare-fun e!137905 () Bool)

(assert (=> d!58005 e!137905))

(declare-fun res!103543 () Bool)

(assert (=> d!58005 (=> (not res!103543) (not e!137905))))

(declare-fun lt!109109 () ListLongMap!3109)

(assert (=> d!58005 (= res!103543 (contains!1406 lt!109109 (_1!2101 lt!108943)))))

(declare-fun lt!109108 () List!3096)

(assert (=> d!58005 (= lt!109109 (ListLongMap!3110 lt!109108))))

(declare-fun lt!109111 () Unit!6425)

(declare-fun lt!109110 () Unit!6425)

(assert (=> d!58005 (= lt!109111 lt!109110)))

(assert (=> d!58005 (= (getValueByKey!252 lt!109108 (_1!2101 lt!108943)) (Some!257 (_2!2101 lt!108943)))))

(assert (=> d!58005 (= lt!109110 (lemmaContainsTupThenGetReturnValue!141 lt!109108 (_1!2101 lt!108943) (_2!2101 lt!108943)))))

(assert (=> d!58005 (= lt!109108 (insertStrictlySorted!143 (toList!1570 lt!108944) (_1!2101 lt!108943) (_2!2101 lt!108943)))))

(assert (=> d!58005 (= (+!563 lt!108944 lt!108943) lt!109109)))

(declare-fun b!211893 () Bool)

(declare-fun res!103542 () Bool)

(assert (=> b!211893 (=> (not res!103542) (not e!137905))))

(assert (=> b!211893 (= res!103542 (= (getValueByKey!252 (toList!1570 lt!109109) (_1!2101 lt!108943)) (Some!257 (_2!2101 lt!108943))))))

(declare-fun b!211894 () Bool)

(assert (=> b!211894 (= e!137905 (contains!1407 (toList!1570 lt!109109) lt!108943))))

(assert (= (and d!58005 res!103543) b!211893))

(assert (= (and b!211893 res!103542) b!211894))

(declare-fun m!239707 () Bool)

(assert (=> d!58005 m!239707))

(declare-fun m!239709 () Bool)

(assert (=> d!58005 m!239709))

(declare-fun m!239711 () Bool)

(assert (=> d!58005 m!239711))

(declare-fun m!239713 () Bool)

(assert (=> d!58005 m!239713))

(declare-fun m!239715 () Bool)

(assert (=> b!211893 m!239715))

(declare-fun m!239717 () Bool)

(assert (=> b!211894 m!239717))

(assert (=> b!211673 d!58005))

(declare-fun d!58007 () Bool)

(declare-fun res!103548 () Bool)

(declare-fun e!137913 () Bool)

(assert (=> d!58007 (=> res!103548 e!137913)))

(assert (=> d!58007 (= res!103548 (bvsge #b00000000000000000000000000000000 (size!5115 _keys!825)))))

(assert (=> d!58007 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!137913)))

(declare-fun b!211903 () Bool)

(declare-fun e!137914 () Bool)

(declare-fun e!137912 () Bool)

(assert (=> b!211903 (= e!137914 e!137912)))

(declare-fun lt!109119 () (_ BitVec 64))

(assert (=> b!211903 (= lt!109119 (select (arr!4790 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109120 () Unit!6425)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10092 (_ BitVec 64) (_ BitVec 32)) Unit!6425)

(assert (=> b!211903 (= lt!109120 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!109119 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!211903 (arrayContainsKey!0 _keys!825 lt!109119 #b00000000000000000000000000000000)))

(declare-fun lt!109118 () Unit!6425)

(assert (=> b!211903 (= lt!109118 lt!109120)))

(declare-fun res!103549 () Bool)

(declare-datatypes ((SeekEntryResult!720 0))(
  ( (MissingZero!720 (index!5050 (_ BitVec 32))) (Found!720 (index!5051 (_ BitVec 32))) (Intermediate!720 (undefined!1532 Bool) (index!5052 (_ BitVec 32)) (x!22136 (_ BitVec 32))) (Undefined!720) (MissingVacant!720 (index!5053 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10092 (_ BitVec 32)) SeekEntryResult!720)

(assert (=> b!211903 (= res!103549 (= (seekEntryOrOpen!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!720 #b00000000000000000000000000000000)))))

(assert (=> b!211903 (=> (not res!103549) (not e!137912))))

(declare-fun bm!20079 () Bool)

(declare-fun call!20082 () Bool)

(assert (=> bm!20079 (= call!20082 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!211904 () Bool)

(assert (=> b!211904 (= e!137914 call!20082)))

(declare-fun b!211905 () Bool)

(assert (=> b!211905 (= e!137912 call!20082)))

(declare-fun b!211906 () Bool)

(assert (=> b!211906 (= e!137913 e!137914)))

(declare-fun c!35759 () Bool)

(assert (=> b!211906 (= c!35759 (validKeyInArray!0 (select (arr!4790 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!58007 (not res!103548)) b!211906))

(assert (= (and b!211906 c!35759) b!211903))

(assert (= (and b!211906 (not c!35759)) b!211904))

(assert (= (and b!211903 res!103549) b!211905))

(assert (= (or b!211905 b!211904) bm!20079))

(assert (=> b!211903 m!239527))

(declare-fun m!239719 () Bool)

(assert (=> b!211903 m!239719))

(declare-fun m!239721 () Bool)

(assert (=> b!211903 m!239721))

(assert (=> b!211903 m!239527))

(declare-fun m!239723 () Bool)

(assert (=> b!211903 m!239723))

(declare-fun m!239725 () Bool)

(assert (=> bm!20079 m!239725))

(assert (=> b!211906 m!239527))

(assert (=> b!211906 m!239527))

(assert (=> b!211906 m!239531))

(assert (=> b!211678 d!58007))

(declare-fun d!58009 () Bool)

(assert (=> d!58009 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!21064 d!58009))

(declare-fun d!58011 () Bool)

(assert (=> d!58011 (= (array_inv!3161 _values!649) (bvsge (size!5114 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!21064 d!58011))

(declare-fun d!58013 () Bool)

(assert (=> d!58013 (= (array_inv!3162 _keys!825) (bvsge (size!5115 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!21064 d!58013))

(declare-fun d!58015 () Bool)

(assert (=> d!58015 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!211684 d!58015))

(declare-fun b!211914 () Bool)

(declare-fun e!137920 () Bool)

(assert (=> b!211914 (= e!137920 tp_is_empty!5445)))

(declare-fun condMapEmpty!9260 () Bool)

(declare-fun mapDefault!9260 () ValueCell!2379)

(assert (=> mapNonEmpty!9254 (= condMapEmpty!9260 (= mapRest!9254 ((as const (Array (_ BitVec 32) ValueCell!2379)) mapDefault!9260)))))

(declare-fun mapRes!9260 () Bool)

(assert (=> mapNonEmpty!9254 (= tp!19808 (and e!137920 mapRes!9260))))

(declare-fun b!211913 () Bool)

(declare-fun e!137919 () Bool)

(assert (=> b!211913 (= e!137919 tp_is_empty!5445)))

(declare-fun mapNonEmpty!9260 () Bool)

(declare-fun tp!19817 () Bool)

(assert (=> mapNonEmpty!9260 (= mapRes!9260 (and tp!19817 e!137919))))

(declare-fun mapRest!9260 () (Array (_ BitVec 32) ValueCell!2379))

(declare-fun mapValue!9260 () ValueCell!2379)

(declare-fun mapKey!9260 () (_ BitVec 32))

(assert (=> mapNonEmpty!9260 (= mapRest!9254 (store mapRest!9260 mapKey!9260 mapValue!9260))))

(declare-fun mapIsEmpty!9260 () Bool)

(assert (=> mapIsEmpty!9260 mapRes!9260))

(assert (= (and mapNonEmpty!9254 condMapEmpty!9260) mapIsEmpty!9260))

(assert (= (and mapNonEmpty!9254 (not condMapEmpty!9260)) mapNonEmpty!9260))

(assert (= (and mapNonEmpty!9260 ((_ is ValueCellFull!2379) mapValue!9260)) b!211913))

(assert (= (and mapNonEmpty!9254 ((_ is ValueCellFull!2379) mapDefault!9260)) b!211914))

(declare-fun m!239727 () Bool)

(assert (=> mapNonEmpty!9260 m!239727))

(declare-fun b_lambda!7725 () Bool)

(assert (= b_lambda!7721 (or (and start!21064 b_free!5583) b_lambda!7725)))

(declare-fun b_lambda!7727 () Bool)

(assert (= b_lambda!7719 (or (and start!21064 b_free!5583) b_lambda!7727)))

(declare-fun b_lambda!7729 () Bool)

(assert (= b_lambda!7715 (or (and start!21064 b_free!5583) b_lambda!7729)))

(declare-fun b_lambda!7731 () Bool)

(assert (= b_lambda!7717 (or (and start!21064 b_free!5583) b_lambda!7731)))

(declare-fun b_lambda!7733 () Bool)

(assert (= b_lambda!7723 (or (and start!21064 b_free!5583) b_lambda!7733)))

(declare-fun b_lambda!7735 () Bool)

(assert (= b_lambda!7713 (or (and start!21064 b_free!5583) b_lambda!7735)))

(check-sat (not d!57993) (not bm!20038) (not bm!20065) (not b!211729) (not b!211743) (not b!211790) (not b!211795) (not bm!20074) (not b!211730) (not b_next!5583) (not mapNonEmpty!9260) (not bm!20066) (not b!211772) (not b!211869) (not b!211876) (not d!58001) (not d!57997) (not d!57995) (not b!211883) (not b!211853) (not b!211872) (not b!211794) b_and!12433 (not b!211804) (not b!211851) (not bm!20042) (not bm!20063) (not b_lambda!7733) (not b!211864) (not b_lambda!7725) (not b!211870) (not b!211906) (not b!211903) (not bm!20079) (not bm!20072) (not b!211886) (not b!211780) (not d!58005) (not b!211893) (not b!211891) (not b!211874) (not b!211787) (not b!211746) (not b!211744) (not b!211773) (not b!211796) (not b_lambda!7735) (not b!211890) (not b_lambda!7727) (not b!211786) (not b!211865) (not bm!20067) (not d!58003) (not b!211808) (not bm!20073) (not b!211742) (not b!211789) (not bm!20070) (not b!211894) (not b!211862) (not b!211855) (not d!57987) (not b!211776) (not b!211775) (not b!211781) (not b!211807) (not bm!20048) (not d!57991) (not bm!20047) (not bm!20041) (not b!211747) (not b!211885) (not b!211797) (not b!211783) (not b_lambda!7731) tp_is_empty!5445 (not b_lambda!7729) (not d!57999) (not b!211782))
(check-sat b_and!12433 (not b_next!5583))
