; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21134 () Bool)

(assert start!21134)

(declare-fun b_free!5613 () Bool)

(declare-fun b_next!5613 () Bool)

(assert (=> start!21134 (= b_free!5613 (not b_next!5613))))

(declare-fun tp!19904 () Bool)

(declare-fun b_and!12473 () Bool)

(assert (=> start!21134 (= tp!19904 b_and!12473)))

(declare-fun b!212575 () Bool)

(declare-fun res!103979 () Bool)

(declare-fun e!138310 () Bool)

(assert (=> b!212575 (=> (not res!103979) (not e!138310))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!10152 0))(
  ( (array!10153 (arr!4818 (Array (_ BitVec 32) (_ BitVec 64))) (size!5143 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10152)

(assert (=> b!212575 (= res!103979 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5143 _keys!825))))))

(declare-fun mapIsEmpty!9305 () Bool)

(declare-fun mapRes!9305 () Bool)

(assert (=> mapIsEmpty!9305 mapRes!9305))

(declare-fun b!212576 () Bool)

(declare-fun res!103982 () Bool)

(assert (=> b!212576 (=> (not res!103982) (not e!138310))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212576 (= res!103982 (validKeyInArray!0 k0!843))))

(declare-datatypes ((V!6947 0))(
  ( (V!6948 (val!2782 Int)) )
))
(declare-datatypes ((tuple2!4208 0))(
  ( (tuple2!4209 (_1!2114 (_ BitVec 64)) (_2!2114 V!6947)) )
))
(declare-datatypes ((List!3120 0))(
  ( (Nil!3117) (Cons!3116 (h!3758 tuple2!4208) (t!8075 List!3120)) )
))
(declare-datatypes ((ListLongMap!3135 0))(
  ( (ListLongMap!3136 (toList!1583 List!3120)) )
))
(declare-fun lt!109663 () ListLongMap!3135)

(declare-fun b!212577 () Bool)

(declare-fun e!138312 () Bool)

(declare-fun lt!109658 () tuple2!4208)

(declare-fun lt!109661 () ListLongMap!3135)

(declare-fun +!576 (ListLongMap!3135 tuple2!4208) ListLongMap!3135)

(assert (=> b!212577 (= e!138312 (= lt!109663 (+!576 lt!109661 lt!109658)))))

(declare-fun e!138311 () Bool)

(assert (=> b!212577 e!138311))

(declare-fun res!103985 () Bool)

(assert (=> b!212577 (=> (not res!103985) (not e!138311))))

(declare-fun lt!109660 () ListLongMap!3135)

(declare-fun lt!109659 () ListLongMap!3135)

(assert (=> b!212577 (= res!103985 (= lt!109659 (+!576 lt!109660 lt!109658)))))

(declare-fun minValue!615 () V!6947)

(assert (=> b!212577 (= lt!109658 (tuple2!4209 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!212578 () Bool)

(declare-fun res!103980 () Bool)

(assert (=> b!212578 (=> (not res!103980) (not e!138310))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10152 (_ BitVec 32)) Bool)

(assert (=> b!212578 (= res!103980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!212579 () Bool)

(declare-fun res!103983 () Bool)

(assert (=> b!212579 (=> (not res!103983) (not e!138310))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2394 0))(
  ( (ValueCellFull!2394 (v!4780 V!6947)) (EmptyCell!2394) )
))
(declare-datatypes ((array!10154 0))(
  ( (array!10155 (arr!4819 (Array (_ BitVec 32) ValueCell!2394)) (size!5144 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10154)

(assert (=> b!212579 (= res!103983 (and (= (size!5144 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5143 _keys!825) (size!5144 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!212580 () Bool)

(declare-fun e!138309 () Bool)

(declare-fun tp_is_empty!5475 () Bool)

(assert (=> b!212580 (= e!138309 tp_is_empty!5475)))

(declare-fun b!212581 () Bool)

(declare-fun e!138313 () Bool)

(assert (=> b!212581 (= e!138313 (and e!138309 mapRes!9305))))

(declare-fun condMapEmpty!9305 () Bool)

(declare-fun mapDefault!9305 () ValueCell!2394)

(assert (=> b!212581 (= condMapEmpty!9305 (= (arr!4819 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2394)) mapDefault!9305)))))

(declare-fun b!212582 () Bool)

(declare-fun res!103987 () Bool)

(assert (=> b!212582 (=> (not res!103987) (not e!138310))))

(assert (=> b!212582 (= res!103987 (= (select (arr!4818 _keys!825) i!601) k0!843))))

(declare-fun b!212583 () Bool)

(declare-fun lt!109656 () ListLongMap!3135)

(assert (=> b!212583 (= e!138311 (= lt!109659 (+!576 lt!109656 lt!109658)))))

(declare-fun res!103986 () Bool)

(assert (=> start!21134 (=> (not res!103986) (not e!138310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21134 (= res!103986 (validMask!0 mask!1149))))

(assert (=> start!21134 e!138310))

(declare-fun array_inv!3179 (array!10154) Bool)

(assert (=> start!21134 (and (array_inv!3179 _values!649) e!138313)))

(assert (=> start!21134 true))

(assert (=> start!21134 tp_is_empty!5475))

(declare-fun array_inv!3180 (array!10152) Bool)

(assert (=> start!21134 (array_inv!3180 _keys!825)))

(assert (=> start!21134 tp!19904))

(declare-fun b!212584 () Bool)

(assert (=> b!212584 (= e!138310 (not e!138312))))

(declare-fun res!103984 () Bool)

(assert (=> b!212584 (=> res!103984 e!138312)))

(assert (=> b!212584 (= res!103984 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6947)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1109 (array!10152 array!10154 (_ BitVec 32) (_ BitVec 32) V!6947 V!6947 (_ BitVec 32) Int) ListLongMap!3135)

(assert (=> b!212584 (= lt!109663 (getCurrentListMap!1109 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109657 () array!10154)

(assert (=> b!212584 (= lt!109659 (getCurrentListMap!1109 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212584 (and (= lt!109660 lt!109656) (= lt!109656 lt!109660))))

(declare-fun v!520 () V!6947)

(assert (=> b!212584 (= lt!109656 (+!576 lt!109661 (tuple2!4209 k0!843 v!520)))))

(declare-datatypes ((Unit!6451 0))(
  ( (Unit!6452) )
))
(declare-fun lt!109662 () Unit!6451)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!226 (array!10152 array!10154 (_ BitVec 32) (_ BitVec 32) V!6947 V!6947 (_ BitVec 32) (_ BitVec 64) V!6947 (_ BitVec 32) Int) Unit!6451)

(assert (=> b!212584 (= lt!109662 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!226 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!508 (array!10152 array!10154 (_ BitVec 32) (_ BitVec 32) V!6947 V!6947 (_ BitVec 32) Int) ListLongMap!3135)

(assert (=> b!212584 (= lt!109660 (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212584 (= lt!109657 (array!10155 (store (arr!4819 _values!649) i!601 (ValueCellFull!2394 v!520)) (size!5144 _values!649)))))

(assert (=> b!212584 (= lt!109661 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212585 () Bool)

(declare-fun e!138308 () Bool)

(assert (=> b!212585 (= e!138308 tp_is_empty!5475)))

(declare-fun b!212586 () Bool)

(declare-fun res!103981 () Bool)

(assert (=> b!212586 (=> (not res!103981) (not e!138310))))

(declare-datatypes ((List!3121 0))(
  ( (Nil!3118) (Cons!3117 (h!3759 (_ BitVec 64)) (t!8076 List!3121)) )
))
(declare-fun arrayNoDuplicates!0 (array!10152 (_ BitVec 32) List!3121) Bool)

(assert (=> b!212586 (= res!103981 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3118))))

(declare-fun mapNonEmpty!9305 () Bool)

(declare-fun tp!19903 () Bool)

(assert (=> mapNonEmpty!9305 (= mapRes!9305 (and tp!19903 e!138308))))

(declare-fun mapRest!9305 () (Array (_ BitVec 32) ValueCell!2394))

(declare-fun mapValue!9305 () ValueCell!2394)

(declare-fun mapKey!9305 () (_ BitVec 32))

(assert (=> mapNonEmpty!9305 (= (arr!4819 _values!649) (store mapRest!9305 mapKey!9305 mapValue!9305))))

(assert (= (and start!21134 res!103986) b!212579))

(assert (= (and b!212579 res!103983) b!212578))

(assert (= (and b!212578 res!103980) b!212586))

(assert (= (and b!212586 res!103981) b!212575))

(assert (= (and b!212575 res!103979) b!212576))

(assert (= (and b!212576 res!103982) b!212582))

(assert (= (and b!212582 res!103987) b!212584))

(assert (= (and b!212584 (not res!103984)) b!212577))

(assert (= (and b!212577 res!103985) b!212583))

(assert (= (and b!212581 condMapEmpty!9305) mapIsEmpty!9305))

(assert (= (and b!212581 (not condMapEmpty!9305)) mapNonEmpty!9305))

(get-info :version)

(assert (= (and mapNonEmpty!9305 ((_ is ValueCellFull!2394) mapValue!9305)) b!212585))

(assert (= (and b!212581 ((_ is ValueCellFull!2394) mapDefault!9305)) b!212580))

(assert (= start!21134 b!212581))

(declare-fun m!240399 () Bool)

(assert (=> b!212577 m!240399))

(declare-fun m!240401 () Bool)

(assert (=> b!212577 m!240401))

(declare-fun m!240403 () Bool)

(assert (=> start!21134 m!240403))

(declare-fun m!240405 () Bool)

(assert (=> start!21134 m!240405))

(declare-fun m!240407 () Bool)

(assert (=> start!21134 m!240407))

(declare-fun m!240409 () Bool)

(assert (=> b!212578 m!240409))

(declare-fun m!240411 () Bool)

(assert (=> b!212583 m!240411))

(declare-fun m!240413 () Bool)

(assert (=> b!212576 m!240413))

(declare-fun m!240415 () Bool)

(assert (=> b!212584 m!240415))

(declare-fun m!240417 () Bool)

(assert (=> b!212584 m!240417))

(declare-fun m!240419 () Bool)

(assert (=> b!212584 m!240419))

(declare-fun m!240421 () Bool)

(assert (=> b!212584 m!240421))

(declare-fun m!240423 () Bool)

(assert (=> b!212584 m!240423))

(declare-fun m!240425 () Bool)

(assert (=> b!212584 m!240425))

(declare-fun m!240427 () Bool)

(assert (=> b!212584 m!240427))

(declare-fun m!240429 () Bool)

(assert (=> b!212582 m!240429))

(declare-fun m!240431 () Bool)

(assert (=> b!212586 m!240431))

(declare-fun m!240433 () Bool)

(assert (=> mapNonEmpty!9305 m!240433))

(check-sat (not mapNonEmpty!9305) tp_is_empty!5475 (not b!212576) (not start!21134) (not b_next!5613) b_and!12473 (not b!212584) (not b!212577) (not b!212578) (not b!212583) (not b!212586))
(check-sat b_and!12473 (not b_next!5613))
(get-model)

(declare-fun d!58053 () Bool)

(assert (=> d!58053 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!212576 d!58053))

(declare-fun b!212633 () Bool)

(declare-fun e!138344 () Bool)

(declare-fun e!138346 () Bool)

(assert (=> b!212633 (= e!138344 e!138346)))

(declare-fun c!35811 () Bool)

(assert (=> b!212633 (= c!35811 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20126 () Bool)

(declare-fun call!20129 () Bool)

(assert (=> bm!20126 (= call!20129 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35811 (Cons!3117 (select (arr!4818 _keys!825) #b00000000000000000000000000000000) Nil!3118) Nil!3118)))))

(declare-fun b!212634 () Bool)

(declare-fun e!138345 () Bool)

(declare-fun contains!1412 (List!3121 (_ BitVec 64)) Bool)

(assert (=> b!212634 (= e!138345 (contains!1412 Nil!3118 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212635 () Bool)

(assert (=> b!212635 (= e!138346 call!20129)))

(declare-fun b!212636 () Bool)

(assert (=> b!212636 (= e!138346 call!20129)))

(declare-fun d!58055 () Bool)

(declare-fun res!104022 () Bool)

(declare-fun e!138343 () Bool)

(assert (=> d!58055 (=> res!104022 e!138343)))

(assert (=> d!58055 (= res!104022 (bvsge #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(assert (=> d!58055 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3118) e!138343)))

(declare-fun b!212637 () Bool)

(assert (=> b!212637 (= e!138343 e!138344)))

(declare-fun res!104021 () Bool)

(assert (=> b!212637 (=> (not res!104021) (not e!138344))))

(assert (=> b!212637 (= res!104021 (not e!138345))))

(declare-fun res!104023 () Bool)

(assert (=> b!212637 (=> (not res!104023) (not e!138345))))

(assert (=> b!212637 (= res!104023 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!58055 (not res!104022)) b!212637))

(assert (= (and b!212637 res!104023) b!212634))

(assert (= (and b!212637 res!104021) b!212633))

(assert (= (and b!212633 c!35811) b!212635))

(assert (= (and b!212633 (not c!35811)) b!212636))

(assert (= (or b!212635 b!212636) bm!20126))

(declare-fun m!240471 () Bool)

(assert (=> b!212633 m!240471))

(assert (=> b!212633 m!240471))

(declare-fun m!240473 () Bool)

(assert (=> b!212633 m!240473))

(assert (=> bm!20126 m!240471))

(declare-fun m!240475 () Bool)

(assert (=> bm!20126 m!240475))

(assert (=> b!212634 m!240471))

(assert (=> b!212634 m!240471))

(declare-fun m!240477 () Bool)

(assert (=> b!212634 m!240477))

(assert (=> b!212637 m!240471))

(assert (=> b!212637 m!240471))

(assert (=> b!212637 m!240473))

(assert (=> b!212586 d!58055))

(declare-fun d!58057 () Bool)

(declare-fun e!138349 () Bool)

(assert (=> d!58057 e!138349))

(declare-fun res!104029 () Bool)

(assert (=> d!58057 (=> (not res!104029) (not e!138349))))

(declare-fun lt!109697 () ListLongMap!3135)

(declare-fun contains!1413 (ListLongMap!3135 (_ BitVec 64)) Bool)

(assert (=> d!58057 (= res!104029 (contains!1413 lt!109697 (_1!2114 lt!109658)))))

(declare-fun lt!109696 () List!3120)

(assert (=> d!58057 (= lt!109697 (ListLongMap!3136 lt!109696))))

(declare-fun lt!109698 () Unit!6451)

(declare-fun lt!109699 () Unit!6451)

(assert (=> d!58057 (= lt!109698 lt!109699)))

(declare-datatypes ((Option!260 0))(
  ( (Some!259 (v!4785 V!6947)) (None!258) )
))
(declare-fun getValueByKey!254 (List!3120 (_ BitVec 64)) Option!260)

(assert (=> d!58057 (= (getValueByKey!254 lt!109696 (_1!2114 lt!109658)) (Some!259 (_2!2114 lt!109658)))))

(declare-fun lemmaContainsTupThenGetReturnValue!143 (List!3120 (_ BitVec 64) V!6947) Unit!6451)

(assert (=> d!58057 (= lt!109699 (lemmaContainsTupThenGetReturnValue!143 lt!109696 (_1!2114 lt!109658) (_2!2114 lt!109658)))))

(declare-fun insertStrictlySorted!145 (List!3120 (_ BitVec 64) V!6947) List!3120)

(assert (=> d!58057 (= lt!109696 (insertStrictlySorted!145 (toList!1583 lt!109656) (_1!2114 lt!109658) (_2!2114 lt!109658)))))

(assert (=> d!58057 (= (+!576 lt!109656 lt!109658) lt!109697)))

(declare-fun b!212642 () Bool)

(declare-fun res!104028 () Bool)

(assert (=> b!212642 (=> (not res!104028) (not e!138349))))

(assert (=> b!212642 (= res!104028 (= (getValueByKey!254 (toList!1583 lt!109697) (_1!2114 lt!109658)) (Some!259 (_2!2114 lt!109658))))))

(declare-fun b!212643 () Bool)

(declare-fun contains!1414 (List!3120 tuple2!4208) Bool)

(assert (=> b!212643 (= e!138349 (contains!1414 (toList!1583 lt!109697) lt!109658))))

(assert (= (and d!58057 res!104029) b!212642))

(assert (= (and b!212642 res!104028) b!212643))

(declare-fun m!240479 () Bool)

(assert (=> d!58057 m!240479))

(declare-fun m!240481 () Bool)

(assert (=> d!58057 m!240481))

(declare-fun m!240483 () Bool)

(assert (=> d!58057 m!240483))

(declare-fun m!240485 () Bool)

(assert (=> d!58057 m!240485))

(declare-fun m!240487 () Bool)

(assert (=> b!212642 m!240487))

(declare-fun m!240489 () Bool)

(assert (=> b!212643 m!240489))

(assert (=> b!212583 d!58057))

(declare-fun d!58059 () Bool)

(declare-fun e!138350 () Bool)

(assert (=> d!58059 e!138350))

(declare-fun res!104031 () Bool)

(assert (=> d!58059 (=> (not res!104031) (not e!138350))))

(declare-fun lt!109701 () ListLongMap!3135)

(assert (=> d!58059 (= res!104031 (contains!1413 lt!109701 (_1!2114 lt!109658)))))

(declare-fun lt!109700 () List!3120)

(assert (=> d!58059 (= lt!109701 (ListLongMap!3136 lt!109700))))

(declare-fun lt!109702 () Unit!6451)

(declare-fun lt!109703 () Unit!6451)

(assert (=> d!58059 (= lt!109702 lt!109703)))

(assert (=> d!58059 (= (getValueByKey!254 lt!109700 (_1!2114 lt!109658)) (Some!259 (_2!2114 lt!109658)))))

(assert (=> d!58059 (= lt!109703 (lemmaContainsTupThenGetReturnValue!143 lt!109700 (_1!2114 lt!109658) (_2!2114 lt!109658)))))

(assert (=> d!58059 (= lt!109700 (insertStrictlySorted!145 (toList!1583 lt!109661) (_1!2114 lt!109658) (_2!2114 lt!109658)))))

(assert (=> d!58059 (= (+!576 lt!109661 lt!109658) lt!109701)))

(declare-fun b!212644 () Bool)

(declare-fun res!104030 () Bool)

(assert (=> b!212644 (=> (not res!104030) (not e!138350))))

(assert (=> b!212644 (= res!104030 (= (getValueByKey!254 (toList!1583 lt!109701) (_1!2114 lt!109658)) (Some!259 (_2!2114 lt!109658))))))

(declare-fun b!212645 () Bool)

(assert (=> b!212645 (= e!138350 (contains!1414 (toList!1583 lt!109701) lt!109658))))

(assert (= (and d!58059 res!104031) b!212644))

(assert (= (and b!212644 res!104030) b!212645))

(declare-fun m!240491 () Bool)

(assert (=> d!58059 m!240491))

(declare-fun m!240493 () Bool)

(assert (=> d!58059 m!240493))

(declare-fun m!240495 () Bool)

(assert (=> d!58059 m!240495))

(declare-fun m!240497 () Bool)

(assert (=> d!58059 m!240497))

(declare-fun m!240499 () Bool)

(assert (=> b!212644 m!240499))

(declare-fun m!240501 () Bool)

(assert (=> b!212645 m!240501))

(assert (=> b!212577 d!58059))

(declare-fun d!58061 () Bool)

(declare-fun e!138351 () Bool)

(assert (=> d!58061 e!138351))

(declare-fun res!104033 () Bool)

(assert (=> d!58061 (=> (not res!104033) (not e!138351))))

(declare-fun lt!109705 () ListLongMap!3135)

(assert (=> d!58061 (= res!104033 (contains!1413 lt!109705 (_1!2114 lt!109658)))))

(declare-fun lt!109704 () List!3120)

(assert (=> d!58061 (= lt!109705 (ListLongMap!3136 lt!109704))))

(declare-fun lt!109706 () Unit!6451)

(declare-fun lt!109707 () Unit!6451)

(assert (=> d!58061 (= lt!109706 lt!109707)))

(assert (=> d!58061 (= (getValueByKey!254 lt!109704 (_1!2114 lt!109658)) (Some!259 (_2!2114 lt!109658)))))

(assert (=> d!58061 (= lt!109707 (lemmaContainsTupThenGetReturnValue!143 lt!109704 (_1!2114 lt!109658) (_2!2114 lt!109658)))))

(assert (=> d!58061 (= lt!109704 (insertStrictlySorted!145 (toList!1583 lt!109660) (_1!2114 lt!109658) (_2!2114 lt!109658)))))

(assert (=> d!58061 (= (+!576 lt!109660 lt!109658) lt!109705)))

(declare-fun b!212646 () Bool)

(declare-fun res!104032 () Bool)

(assert (=> b!212646 (=> (not res!104032) (not e!138351))))

(assert (=> b!212646 (= res!104032 (= (getValueByKey!254 (toList!1583 lt!109705) (_1!2114 lt!109658)) (Some!259 (_2!2114 lt!109658))))))

(declare-fun b!212647 () Bool)

(assert (=> b!212647 (= e!138351 (contains!1414 (toList!1583 lt!109705) lt!109658))))

(assert (= (and d!58061 res!104033) b!212646))

(assert (= (and b!212646 res!104032) b!212647))

(declare-fun m!240503 () Bool)

(assert (=> d!58061 m!240503))

(declare-fun m!240505 () Bool)

(assert (=> d!58061 m!240505))

(declare-fun m!240507 () Bool)

(assert (=> d!58061 m!240507))

(declare-fun m!240509 () Bool)

(assert (=> d!58061 m!240509))

(declare-fun m!240511 () Bool)

(assert (=> b!212646 m!240511))

(declare-fun m!240513 () Bool)

(assert (=> b!212647 m!240513))

(assert (=> b!212577 d!58061))

(declare-fun d!58063 () Bool)

(declare-fun e!138352 () Bool)

(assert (=> d!58063 e!138352))

(declare-fun res!104035 () Bool)

(assert (=> d!58063 (=> (not res!104035) (not e!138352))))

(declare-fun lt!109709 () ListLongMap!3135)

(assert (=> d!58063 (= res!104035 (contains!1413 lt!109709 (_1!2114 (tuple2!4209 k0!843 v!520))))))

(declare-fun lt!109708 () List!3120)

(assert (=> d!58063 (= lt!109709 (ListLongMap!3136 lt!109708))))

(declare-fun lt!109710 () Unit!6451)

(declare-fun lt!109711 () Unit!6451)

(assert (=> d!58063 (= lt!109710 lt!109711)))

(assert (=> d!58063 (= (getValueByKey!254 lt!109708 (_1!2114 (tuple2!4209 k0!843 v!520))) (Some!259 (_2!2114 (tuple2!4209 k0!843 v!520))))))

(assert (=> d!58063 (= lt!109711 (lemmaContainsTupThenGetReturnValue!143 lt!109708 (_1!2114 (tuple2!4209 k0!843 v!520)) (_2!2114 (tuple2!4209 k0!843 v!520))))))

(assert (=> d!58063 (= lt!109708 (insertStrictlySorted!145 (toList!1583 lt!109661) (_1!2114 (tuple2!4209 k0!843 v!520)) (_2!2114 (tuple2!4209 k0!843 v!520))))))

(assert (=> d!58063 (= (+!576 lt!109661 (tuple2!4209 k0!843 v!520)) lt!109709)))

(declare-fun b!212648 () Bool)

(declare-fun res!104034 () Bool)

(assert (=> b!212648 (=> (not res!104034) (not e!138352))))

(assert (=> b!212648 (= res!104034 (= (getValueByKey!254 (toList!1583 lt!109709) (_1!2114 (tuple2!4209 k0!843 v!520))) (Some!259 (_2!2114 (tuple2!4209 k0!843 v!520)))))))

(declare-fun b!212649 () Bool)

(assert (=> b!212649 (= e!138352 (contains!1414 (toList!1583 lt!109709) (tuple2!4209 k0!843 v!520)))))

(assert (= (and d!58063 res!104035) b!212648))

(assert (= (and b!212648 res!104034) b!212649))

(declare-fun m!240515 () Bool)

(assert (=> d!58063 m!240515))

(declare-fun m!240517 () Bool)

(assert (=> d!58063 m!240517))

(declare-fun m!240519 () Bool)

(assert (=> d!58063 m!240519))

(declare-fun m!240521 () Bool)

(assert (=> d!58063 m!240521))

(declare-fun m!240523 () Bool)

(assert (=> b!212648 m!240523))

(declare-fun m!240525 () Bool)

(assert (=> b!212649 m!240525))

(assert (=> b!212584 d!58063))

(declare-fun b!212674 () Bool)

(declare-fun e!138367 () Bool)

(declare-fun lt!109726 () ListLongMap!3135)

(declare-fun isEmpty!503 (ListLongMap!3135) Bool)

(assert (=> b!212674 (= e!138367 (isEmpty!503 lt!109726))))

(declare-fun b!212675 () Bool)

(declare-fun e!138370 () ListLongMap!3135)

(declare-fun call!20132 () ListLongMap!3135)

(assert (=> b!212675 (= e!138370 call!20132)))

(declare-fun b!212676 () Bool)

(declare-fun e!138372 () ListLongMap!3135)

(assert (=> b!212676 (= e!138372 e!138370)))

(declare-fun c!35821 () Bool)

(assert (=> b!212676 (= c!35821 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!58065 () Bool)

(declare-fun e!138373 () Bool)

(assert (=> d!58065 e!138373))

(declare-fun res!104047 () Bool)

(assert (=> d!58065 (=> (not res!104047) (not e!138373))))

(assert (=> d!58065 (= res!104047 (not (contains!1413 lt!109726 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58065 (= lt!109726 e!138372)))

(declare-fun c!35820 () Bool)

(assert (=> d!58065 (= c!35820 (bvsge #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(assert (=> d!58065 (validMask!0 mask!1149)))

(assert (=> d!58065 (= (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109726)))

(declare-fun b!212677 () Bool)

(declare-fun e!138369 () Bool)

(assert (=> b!212677 (= e!138373 e!138369)))

(declare-fun c!35822 () Bool)

(declare-fun e!138371 () Bool)

(assert (=> b!212677 (= c!35822 e!138371)))

(declare-fun res!104044 () Bool)

(assert (=> b!212677 (=> (not res!104044) (not e!138371))))

(assert (=> b!212677 (= res!104044 (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun b!212678 () Bool)

(assert (=> b!212678 (= e!138369 e!138367)))

(declare-fun c!35823 () Bool)

(assert (=> b!212678 (= c!35823 (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun b!212679 () Bool)

(declare-fun res!104046 () Bool)

(assert (=> b!212679 (=> (not res!104046) (not e!138373))))

(assert (=> b!212679 (= res!104046 (not (contains!1413 lt!109726 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!212680 () Bool)

(declare-fun lt!109730 () Unit!6451)

(declare-fun lt!109727 () Unit!6451)

(assert (=> b!212680 (= lt!109730 lt!109727)))

(declare-fun lt!109731 () (_ BitVec 64))

(declare-fun lt!109729 () ListLongMap!3135)

(declare-fun lt!109732 () (_ BitVec 64))

(declare-fun lt!109728 () V!6947)

(assert (=> b!212680 (not (contains!1413 (+!576 lt!109729 (tuple2!4209 lt!109732 lt!109728)) lt!109731))))

(declare-fun addStillNotContains!108 (ListLongMap!3135 (_ BitVec 64) V!6947 (_ BitVec 64)) Unit!6451)

(assert (=> b!212680 (= lt!109727 (addStillNotContains!108 lt!109729 lt!109732 lt!109728 lt!109731))))

(assert (=> b!212680 (= lt!109731 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!2578 (ValueCell!2394 V!6947) V!6947)

(declare-fun dynLambda!535 (Int (_ BitVec 64)) V!6947)

(assert (=> b!212680 (= lt!109728 (get!2578 (select (arr!4819 _values!649) #b00000000000000000000000000000000) (dynLambda!535 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!212680 (= lt!109732 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212680 (= lt!109729 call!20132)))

(assert (=> b!212680 (= e!138370 (+!576 call!20132 (tuple2!4209 (select (arr!4818 _keys!825) #b00000000000000000000000000000000) (get!2578 (select (arr!4819 _values!649) #b00000000000000000000000000000000) (dynLambda!535 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!212681 () Bool)

(assert (=> b!212681 (= e!138367 (= lt!109726 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun bm!20129 () Bool)

(assert (=> bm!20129 (= call!20132 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!212682 () Bool)

(assert (=> b!212682 (= e!138372 (ListLongMap!3136 Nil!3117))))

(declare-fun b!212683 () Bool)

(assert (=> b!212683 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(assert (=> b!212683 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5144 _values!649)))))

(declare-fun e!138368 () Bool)

(declare-fun apply!197 (ListLongMap!3135 (_ BitVec 64)) V!6947)

(assert (=> b!212683 (= e!138368 (= (apply!197 lt!109726 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)) (get!2578 (select (arr!4819 _values!649) #b00000000000000000000000000000000) (dynLambda!535 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!212684 () Bool)

(assert (=> b!212684 (= e!138369 e!138368)))

(assert (=> b!212684 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun res!104045 () Bool)

(assert (=> b!212684 (= res!104045 (contains!1413 lt!109726 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212684 (=> (not res!104045) (not e!138368))))

(declare-fun b!212685 () Bool)

(assert (=> b!212685 (= e!138371 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212685 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!58065 c!35820) b!212682))

(assert (= (and d!58065 (not c!35820)) b!212676))

(assert (= (and b!212676 c!35821) b!212680))

(assert (= (and b!212676 (not c!35821)) b!212675))

(assert (= (or b!212680 b!212675) bm!20129))

(assert (= (and d!58065 res!104047) b!212679))

(assert (= (and b!212679 res!104046) b!212677))

(assert (= (and b!212677 res!104044) b!212685))

(assert (= (and b!212677 c!35822) b!212684))

(assert (= (and b!212677 (not c!35822)) b!212678))

(assert (= (and b!212684 res!104045) b!212683))

(assert (= (and b!212678 c!35823) b!212681))

(assert (= (and b!212678 (not c!35823)) b!212674))

(declare-fun b_lambda!7761 () Bool)

(assert (=> (not b_lambda!7761) (not b!212680)))

(declare-fun t!8079 () Bool)

(declare-fun tb!2915 () Bool)

(assert (=> (and start!21134 (= defaultEntry!657 defaultEntry!657) t!8079) tb!2915))

(declare-fun result!5017 () Bool)

(assert (=> tb!2915 (= result!5017 tp_is_empty!5475)))

(assert (=> b!212680 t!8079))

(declare-fun b_and!12477 () Bool)

(assert (= b_and!12473 (and (=> t!8079 result!5017) b_and!12477)))

(declare-fun b_lambda!7763 () Bool)

(assert (=> (not b_lambda!7763) (not b!212683)))

(assert (=> b!212683 t!8079))

(declare-fun b_and!12479 () Bool)

(assert (= b_and!12477 (and (=> t!8079 result!5017) b_and!12479)))

(assert (=> b!212684 m!240471))

(assert (=> b!212684 m!240471))

(declare-fun m!240527 () Bool)

(assert (=> b!212684 m!240527))

(assert (=> b!212685 m!240471))

(assert (=> b!212685 m!240471))

(assert (=> b!212685 m!240473))

(declare-fun m!240529 () Bool)

(assert (=> b!212683 m!240529))

(declare-fun m!240531 () Bool)

(assert (=> b!212683 m!240531))

(declare-fun m!240533 () Bool)

(assert (=> b!212683 m!240533))

(assert (=> b!212683 m!240531))

(assert (=> b!212683 m!240529))

(assert (=> b!212683 m!240471))

(assert (=> b!212683 m!240471))

(declare-fun m!240535 () Bool)

(assert (=> b!212683 m!240535))

(declare-fun m!240537 () Bool)

(assert (=> b!212679 m!240537))

(declare-fun m!240539 () Bool)

(assert (=> b!212674 m!240539))

(declare-fun m!240541 () Bool)

(assert (=> b!212680 m!240541))

(declare-fun m!240543 () Bool)

(assert (=> b!212680 m!240543))

(assert (=> b!212680 m!240471))

(assert (=> b!212680 m!240529))

(assert (=> b!212680 m!240529))

(assert (=> b!212680 m!240531))

(assert (=> b!212680 m!240533))

(assert (=> b!212680 m!240543))

(declare-fun m!240545 () Bool)

(assert (=> b!212680 m!240545))

(assert (=> b!212680 m!240531))

(declare-fun m!240547 () Bool)

(assert (=> b!212680 m!240547))

(declare-fun m!240549 () Bool)

(assert (=> b!212681 m!240549))

(assert (=> b!212676 m!240471))

(assert (=> b!212676 m!240471))

(assert (=> b!212676 m!240473))

(assert (=> bm!20129 m!240549))

(declare-fun m!240551 () Bool)

(assert (=> d!58065 m!240551))

(assert (=> d!58065 m!240403))

(assert (=> b!212584 d!58065))

(declare-fun e!138379 () Bool)

(declare-fun b!212694 () Bool)

(declare-fun call!20137 () ListLongMap!3135)

(declare-fun call!20138 () ListLongMap!3135)

(assert (=> b!212694 (= e!138379 (= call!20137 (+!576 call!20138 (tuple2!4209 k0!843 v!520))))))

(declare-fun bm!20134 () Bool)

(assert (=> bm!20134 (= call!20137 (getCurrentListMapNoExtraKeys!508 _keys!825 (array!10155 (store (arr!4819 _values!649) i!601 (ValueCellFull!2394 v!520)) (size!5144 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun d!58067 () Bool)

(declare-fun e!138378 () Bool)

(assert (=> d!58067 e!138378))

(declare-fun res!104050 () Bool)

(assert (=> d!58067 (=> (not res!104050) (not e!138378))))

(assert (=> d!58067 (= res!104050 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5144 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5144 _values!649))))))))

(declare-fun lt!109735 () Unit!6451)

(declare-fun choose!1089 (array!10152 array!10154 (_ BitVec 32) (_ BitVec 32) V!6947 V!6947 (_ BitVec 32) (_ BitVec 64) V!6947 (_ BitVec 32) Int) Unit!6451)

(assert (=> d!58067 (= lt!109735 (choose!1089 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!58067 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(assert (=> d!58067 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!226 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!109735)))

(declare-fun b!212695 () Bool)

(assert (=> b!212695 (= e!138378 e!138379)))

(declare-fun c!35826 () Bool)

(assert (=> b!212695 (= c!35826 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun b!212696 () Bool)

(assert (=> b!212696 (= e!138379 (= call!20137 call!20138))))

(declare-fun bm!20135 () Bool)

(assert (=> bm!20135 (= call!20138 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and d!58067 res!104050) b!212695))

(assert (= (and b!212695 c!35826) b!212694))

(assert (= (and b!212695 (not c!35826)) b!212696))

(assert (= (or b!212694 b!212696) bm!20134))

(assert (= (or b!212694 b!212696) bm!20135))

(declare-fun m!240553 () Bool)

(assert (=> b!212694 m!240553))

(assert (=> bm!20134 m!240421))

(declare-fun m!240555 () Bool)

(assert (=> bm!20134 m!240555))

(declare-fun m!240557 () Bool)

(assert (=> d!58067 m!240557))

(assert (=> bm!20135 m!240419))

(assert (=> b!212584 d!58067))

(declare-fun b!212697 () Bool)

(declare-fun e!138380 () Bool)

(declare-fun lt!109736 () ListLongMap!3135)

(assert (=> b!212697 (= e!138380 (isEmpty!503 lt!109736))))

(declare-fun b!212698 () Bool)

(declare-fun e!138383 () ListLongMap!3135)

(declare-fun call!20139 () ListLongMap!3135)

(assert (=> b!212698 (= e!138383 call!20139)))

(declare-fun b!212699 () Bool)

(declare-fun e!138385 () ListLongMap!3135)

(assert (=> b!212699 (= e!138385 e!138383)))

(declare-fun c!35828 () Bool)

(assert (=> b!212699 (= c!35828 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!58069 () Bool)

(declare-fun e!138386 () Bool)

(assert (=> d!58069 e!138386))

(declare-fun res!104054 () Bool)

(assert (=> d!58069 (=> (not res!104054) (not e!138386))))

(assert (=> d!58069 (= res!104054 (not (contains!1413 lt!109736 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58069 (= lt!109736 e!138385)))

(declare-fun c!35827 () Bool)

(assert (=> d!58069 (= c!35827 (bvsge #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(assert (=> d!58069 (validMask!0 mask!1149)))

(assert (=> d!58069 (= (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109736)))

(declare-fun b!212700 () Bool)

(declare-fun e!138382 () Bool)

(assert (=> b!212700 (= e!138386 e!138382)))

(declare-fun c!35829 () Bool)

(declare-fun e!138384 () Bool)

(assert (=> b!212700 (= c!35829 e!138384)))

(declare-fun res!104051 () Bool)

(assert (=> b!212700 (=> (not res!104051) (not e!138384))))

(assert (=> b!212700 (= res!104051 (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun b!212701 () Bool)

(assert (=> b!212701 (= e!138382 e!138380)))

(declare-fun c!35830 () Bool)

(assert (=> b!212701 (= c!35830 (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun b!212702 () Bool)

(declare-fun res!104053 () Bool)

(assert (=> b!212702 (=> (not res!104053) (not e!138386))))

(assert (=> b!212702 (= res!104053 (not (contains!1413 lt!109736 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!212703 () Bool)

(declare-fun lt!109740 () Unit!6451)

(declare-fun lt!109737 () Unit!6451)

(assert (=> b!212703 (= lt!109740 lt!109737)))

(declare-fun lt!109741 () (_ BitVec 64))

(declare-fun lt!109738 () V!6947)

(declare-fun lt!109742 () (_ BitVec 64))

(declare-fun lt!109739 () ListLongMap!3135)

(assert (=> b!212703 (not (contains!1413 (+!576 lt!109739 (tuple2!4209 lt!109742 lt!109738)) lt!109741))))

(assert (=> b!212703 (= lt!109737 (addStillNotContains!108 lt!109739 lt!109742 lt!109738 lt!109741))))

(assert (=> b!212703 (= lt!109741 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!212703 (= lt!109738 (get!2578 (select (arr!4819 lt!109657) #b00000000000000000000000000000000) (dynLambda!535 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!212703 (= lt!109742 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212703 (= lt!109739 call!20139)))

(assert (=> b!212703 (= e!138383 (+!576 call!20139 (tuple2!4209 (select (arr!4818 _keys!825) #b00000000000000000000000000000000) (get!2578 (select (arr!4819 lt!109657) #b00000000000000000000000000000000) (dynLambda!535 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!212704 () Bool)

(assert (=> b!212704 (= e!138380 (= lt!109736 (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun bm!20136 () Bool)

(assert (=> bm!20136 (= call!20139 (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!212705 () Bool)

(assert (=> b!212705 (= e!138385 (ListLongMap!3136 Nil!3117))))

(declare-fun b!212706 () Bool)

(assert (=> b!212706 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(assert (=> b!212706 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5144 lt!109657)))))

(declare-fun e!138381 () Bool)

(assert (=> b!212706 (= e!138381 (= (apply!197 lt!109736 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)) (get!2578 (select (arr!4819 lt!109657) #b00000000000000000000000000000000) (dynLambda!535 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!212707 () Bool)

(assert (=> b!212707 (= e!138382 e!138381)))

(assert (=> b!212707 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun res!104052 () Bool)

(assert (=> b!212707 (= res!104052 (contains!1413 lt!109736 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212707 (=> (not res!104052) (not e!138381))))

(declare-fun b!212708 () Bool)

(assert (=> b!212708 (= e!138384 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212708 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!58069 c!35827) b!212705))

(assert (= (and d!58069 (not c!35827)) b!212699))

(assert (= (and b!212699 c!35828) b!212703))

(assert (= (and b!212699 (not c!35828)) b!212698))

(assert (= (or b!212703 b!212698) bm!20136))

(assert (= (and d!58069 res!104054) b!212702))

(assert (= (and b!212702 res!104053) b!212700))

(assert (= (and b!212700 res!104051) b!212708))

(assert (= (and b!212700 c!35829) b!212707))

(assert (= (and b!212700 (not c!35829)) b!212701))

(assert (= (and b!212707 res!104052) b!212706))

(assert (= (and b!212701 c!35830) b!212704))

(assert (= (and b!212701 (not c!35830)) b!212697))

(declare-fun b_lambda!7765 () Bool)

(assert (=> (not b_lambda!7765) (not b!212703)))

(assert (=> b!212703 t!8079))

(declare-fun b_and!12481 () Bool)

(assert (= b_and!12479 (and (=> t!8079 result!5017) b_and!12481)))

(declare-fun b_lambda!7767 () Bool)

(assert (=> (not b_lambda!7767) (not b!212706)))

(assert (=> b!212706 t!8079))

(declare-fun b_and!12483 () Bool)

(assert (= b_and!12481 (and (=> t!8079 result!5017) b_and!12483)))

(assert (=> b!212707 m!240471))

(assert (=> b!212707 m!240471))

(declare-fun m!240559 () Bool)

(assert (=> b!212707 m!240559))

(assert (=> b!212708 m!240471))

(assert (=> b!212708 m!240471))

(assert (=> b!212708 m!240473))

(declare-fun m!240561 () Bool)

(assert (=> b!212706 m!240561))

(assert (=> b!212706 m!240531))

(declare-fun m!240563 () Bool)

(assert (=> b!212706 m!240563))

(assert (=> b!212706 m!240531))

(assert (=> b!212706 m!240561))

(assert (=> b!212706 m!240471))

(assert (=> b!212706 m!240471))

(declare-fun m!240565 () Bool)

(assert (=> b!212706 m!240565))

(declare-fun m!240567 () Bool)

(assert (=> b!212702 m!240567))

(declare-fun m!240569 () Bool)

(assert (=> b!212697 m!240569))

(declare-fun m!240571 () Bool)

(assert (=> b!212703 m!240571))

(declare-fun m!240573 () Bool)

(assert (=> b!212703 m!240573))

(assert (=> b!212703 m!240471))

(assert (=> b!212703 m!240561))

(assert (=> b!212703 m!240561))

(assert (=> b!212703 m!240531))

(assert (=> b!212703 m!240563))

(assert (=> b!212703 m!240573))

(declare-fun m!240575 () Bool)

(assert (=> b!212703 m!240575))

(assert (=> b!212703 m!240531))

(declare-fun m!240577 () Bool)

(assert (=> b!212703 m!240577))

(declare-fun m!240579 () Bool)

(assert (=> b!212704 m!240579))

(assert (=> b!212699 m!240471))

(assert (=> b!212699 m!240471))

(assert (=> b!212699 m!240473))

(assert (=> bm!20136 m!240579))

(declare-fun m!240581 () Bool)

(assert (=> d!58069 m!240581))

(assert (=> d!58069 m!240403))

(assert (=> b!212584 d!58069))

(declare-fun b!212751 () Bool)

(declare-fun e!138421 () Unit!6451)

(declare-fun lt!109789 () Unit!6451)

(assert (=> b!212751 (= e!138421 lt!109789)))

(declare-fun lt!109793 () ListLongMap!3135)

(assert (=> b!212751 (= lt!109793 (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109799 () (_ BitVec 64))

(assert (=> b!212751 (= lt!109799 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109808 () (_ BitVec 64))

(assert (=> b!212751 (= lt!109808 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109795 () Unit!6451)

(declare-fun addStillContains!173 (ListLongMap!3135 (_ BitVec 64) V!6947 (_ BitVec 64)) Unit!6451)

(assert (=> b!212751 (= lt!109795 (addStillContains!173 lt!109793 lt!109799 zeroValue!615 lt!109808))))

(assert (=> b!212751 (contains!1413 (+!576 lt!109793 (tuple2!4209 lt!109799 zeroValue!615)) lt!109808)))

(declare-fun lt!109794 () Unit!6451)

(assert (=> b!212751 (= lt!109794 lt!109795)))

(declare-fun lt!109792 () ListLongMap!3135)

(assert (=> b!212751 (= lt!109792 (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109798 () (_ BitVec 64))

(assert (=> b!212751 (= lt!109798 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109806 () (_ BitVec 64))

(assert (=> b!212751 (= lt!109806 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109801 () Unit!6451)

(declare-fun addApplyDifferent!173 (ListLongMap!3135 (_ BitVec 64) V!6947 (_ BitVec 64)) Unit!6451)

(assert (=> b!212751 (= lt!109801 (addApplyDifferent!173 lt!109792 lt!109798 minValue!615 lt!109806))))

(assert (=> b!212751 (= (apply!197 (+!576 lt!109792 (tuple2!4209 lt!109798 minValue!615)) lt!109806) (apply!197 lt!109792 lt!109806))))

(declare-fun lt!109790 () Unit!6451)

(assert (=> b!212751 (= lt!109790 lt!109801)))

(declare-fun lt!109788 () ListLongMap!3135)

(assert (=> b!212751 (= lt!109788 (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109787 () (_ BitVec 64))

(assert (=> b!212751 (= lt!109787 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109805 () (_ BitVec 64))

(assert (=> b!212751 (= lt!109805 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109800 () Unit!6451)

(assert (=> b!212751 (= lt!109800 (addApplyDifferent!173 lt!109788 lt!109787 zeroValue!615 lt!109805))))

(assert (=> b!212751 (= (apply!197 (+!576 lt!109788 (tuple2!4209 lt!109787 zeroValue!615)) lt!109805) (apply!197 lt!109788 lt!109805))))

(declare-fun lt!109791 () Unit!6451)

(assert (=> b!212751 (= lt!109791 lt!109800)))

(declare-fun lt!109804 () ListLongMap!3135)

(assert (=> b!212751 (= lt!109804 (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109807 () (_ BitVec 64))

(assert (=> b!212751 (= lt!109807 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109803 () (_ BitVec 64))

(assert (=> b!212751 (= lt!109803 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212751 (= lt!109789 (addApplyDifferent!173 lt!109804 lt!109807 minValue!615 lt!109803))))

(assert (=> b!212751 (= (apply!197 (+!576 lt!109804 (tuple2!4209 lt!109807 minValue!615)) lt!109803) (apply!197 lt!109804 lt!109803))))

(declare-fun b!212752 () Bool)

(declare-fun e!138413 () Bool)

(declare-fun lt!109802 () ListLongMap!3135)

(assert (=> b!212752 (= e!138413 (= (apply!197 lt!109802 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun bm!20151 () Bool)

(declare-fun call!20160 () ListLongMap!3135)

(declare-fun call!20158 () ListLongMap!3135)

(assert (=> bm!20151 (= call!20160 call!20158)))

(declare-fun b!212753 () Bool)

(declare-fun e!138414 () Bool)

(declare-fun e!138416 () Bool)

(assert (=> b!212753 (= e!138414 e!138416)))

(declare-fun c!35847 () Bool)

(assert (=> b!212753 (= c!35847 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!212754 () Bool)

(declare-fun e!138420 () ListLongMap!3135)

(declare-fun call!20157 () ListLongMap!3135)

(assert (=> b!212754 (= e!138420 call!20157)))

(declare-fun b!212755 () Bool)

(declare-fun res!104077 () Bool)

(assert (=> b!212755 (=> (not res!104077) (not e!138414))))

(declare-fun e!138424 () Bool)

(assert (=> b!212755 (= res!104077 e!138424)))

(declare-fun c!35845 () Bool)

(assert (=> b!212755 (= c!35845 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!212756 () Bool)

(declare-fun call!20159 () Bool)

(assert (=> b!212756 (= e!138424 (not call!20159))))

(declare-fun bm!20152 () Bool)

(assert (=> bm!20152 (= call!20158 (getCurrentListMapNoExtraKeys!508 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212757 () Bool)

(declare-fun e!138422 () Bool)

(assert (=> b!212757 (= e!138422 (= (apply!197 lt!109802 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)) (get!2578 (select (arr!4819 lt!109657) #b00000000000000000000000000000000) (dynLambda!535 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!212757 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5144 lt!109657)))))

(assert (=> b!212757 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun b!212758 () Bool)

(declare-fun e!138423 () Bool)

(assert (=> b!212758 (= e!138423 (= (apply!197 lt!109802 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun bm!20153 () Bool)

(declare-fun call!20154 () ListLongMap!3135)

(declare-fun call!20156 () ListLongMap!3135)

(assert (=> bm!20153 (= call!20154 call!20156)))

(declare-fun b!212759 () Bool)

(declare-fun res!104078 () Bool)

(assert (=> b!212759 (=> (not res!104078) (not e!138414))))

(declare-fun e!138418 () Bool)

(assert (=> b!212759 (= res!104078 e!138418)))

(declare-fun res!104080 () Bool)

(assert (=> b!212759 (=> res!104080 e!138418)))

(declare-fun e!138419 () Bool)

(assert (=> b!212759 (= res!104080 (not e!138419))))

(declare-fun res!104076 () Bool)

(assert (=> b!212759 (=> (not res!104076) (not e!138419))))

(assert (=> b!212759 (= res!104076 (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun bm!20154 () Bool)

(declare-fun c!35844 () Bool)

(declare-fun c!35846 () Bool)

(assert (=> bm!20154 (= call!20156 (+!576 (ite c!35846 call!20158 (ite c!35844 call!20160 call!20157)) (ite (or c!35846 c!35844) (tuple2!4209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4209 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun d!58071 () Bool)

(assert (=> d!58071 e!138414))

(declare-fun res!104074 () Bool)

(assert (=> d!58071 (=> (not res!104074) (not e!138414))))

(assert (=> d!58071 (= res!104074 (or (bvsge #b00000000000000000000000000000000 (size!5143 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))))

(declare-fun lt!109796 () ListLongMap!3135)

(assert (=> d!58071 (= lt!109802 lt!109796)))

(declare-fun lt!109797 () Unit!6451)

(assert (=> d!58071 (= lt!109797 e!138421)))

(declare-fun c!35848 () Bool)

(declare-fun e!138417 () Bool)

(assert (=> d!58071 (= c!35848 e!138417)))

(declare-fun res!104073 () Bool)

(assert (=> d!58071 (=> (not res!104073) (not e!138417))))

(assert (=> d!58071 (= res!104073 (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun e!138425 () ListLongMap!3135)

(assert (=> d!58071 (= lt!109796 e!138425)))

(assert (=> d!58071 (= c!35846 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58071 (validMask!0 mask!1149)))

(assert (=> d!58071 (= (getCurrentListMap!1109 _keys!825 lt!109657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109802)))

(declare-fun bm!20155 () Bool)

(declare-fun call!20155 () Bool)

(assert (=> bm!20155 (= call!20155 (contains!1413 lt!109802 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!212760 () Bool)

(declare-fun e!138415 () ListLongMap!3135)

(assert (=> b!212760 (= e!138415 call!20154)))

(declare-fun b!212761 () Bool)

(assert (=> b!212761 (= e!138416 (not call!20155))))

(declare-fun bm!20156 () Bool)

(assert (=> bm!20156 (= call!20157 call!20160)))

(declare-fun b!212762 () Bool)

(assert (=> b!212762 (= e!138424 e!138423)))

(declare-fun res!104079 () Bool)

(assert (=> b!212762 (= res!104079 call!20159)))

(assert (=> b!212762 (=> (not res!104079) (not e!138423))))

(declare-fun b!212763 () Bool)

(assert (=> b!212763 (= e!138425 e!138415)))

(assert (=> b!212763 (= c!35844 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!212764 () Bool)

(declare-fun c!35843 () Bool)

(assert (=> b!212764 (= c!35843 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!212764 (= e!138415 e!138420)))

(declare-fun b!212765 () Bool)

(assert (=> b!212765 (= e!138420 call!20154)))

(declare-fun b!212766 () Bool)

(assert (=> b!212766 (= e!138417 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212767 () Bool)

(assert (=> b!212767 (= e!138419 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212768 () Bool)

(declare-fun Unit!6455 () Unit!6451)

(assert (=> b!212768 (= e!138421 Unit!6455)))

(declare-fun b!212769 () Bool)

(assert (=> b!212769 (= e!138425 (+!576 call!20156 (tuple2!4209 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!212770 () Bool)

(assert (=> b!212770 (= e!138418 e!138422)))

(declare-fun res!104081 () Bool)

(assert (=> b!212770 (=> (not res!104081) (not e!138422))))

(assert (=> b!212770 (= res!104081 (contains!1413 lt!109802 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212770 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun bm!20157 () Bool)

(assert (=> bm!20157 (= call!20159 (contains!1413 lt!109802 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!212771 () Bool)

(assert (=> b!212771 (= e!138416 e!138413)))

(declare-fun res!104075 () Bool)

(assert (=> b!212771 (= res!104075 call!20155)))

(assert (=> b!212771 (=> (not res!104075) (not e!138413))))

(assert (= (and d!58071 c!35846) b!212769))

(assert (= (and d!58071 (not c!35846)) b!212763))

(assert (= (and b!212763 c!35844) b!212760))

(assert (= (and b!212763 (not c!35844)) b!212764))

(assert (= (and b!212764 c!35843) b!212765))

(assert (= (and b!212764 (not c!35843)) b!212754))

(assert (= (or b!212765 b!212754) bm!20156))

(assert (= (or b!212760 bm!20156) bm!20151))

(assert (= (or b!212760 b!212765) bm!20153))

(assert (= (or b!212769 bm!20151) bm!20152))

(assert (= (or b!212769 bm!20153) bm!20154))

(assert (= (and d!58071 res!104073) b!212766))

(assert (= (and d!58071 c!35848) b!212751))

(assert (= (and d!58071 (not c!35848)) b!212768))

(assert (= (and d!58071 res!104074) b!212759))

(assert (= (and b!212759 res!104076) b!212767))

(assert (= (and b!212759 (not res!104080)) b!212770))

(assert (= (and b!212770 res!104081) b!212757))

(assert (= (and b!212759 res!104078) b!212755))

(assert (= (and b!212755 c!35845) b!212762))

(assert (= (and b!212755 (not c!35845)) b!212756))

(assert (= (and b!212762 res!104079) b!212758))

(assert (= (or b!212762 b!212756) bm!20157))

(assert (= (and b!212755 res!104077) b!212753))

(assert (= (and b!212753 c!35847) b!212771))

(assert (= (and b!212753 (not c!35847)) b!212761))

(assert (= (and b!212771 res!104075) b!212752))

(assert (= (or b!212771 b!212761) bm!20155))

(declare-fun b_lambda!7769 () Bool)

(assert (=> (not b_lambda!7769) (not b!212757)))

(assert (=> b!212757 t!8079))

(declare-fun b_and!12485 () Bool)

(assert (= b_and!12483 (and (=> t!8079 result!5017) b_and!12485)))

(declare-fun m!240583 () Bool)

(assert (=> b!212751 m!240583))

(declare-fun m!240585 () Bool)

(assert (=> b!212751 m!240585))

(assert (=> b!212751 m!240417))

(declare-fun m!240587 () Bool)

(assert (=> b!212751 m!240587))

(declare-fun m!240589 () Bool)

(assert (=> b!212751 m!240589))

(declare-fun m!240591 () Bool)

(assert (=> b!212751 m!240591))

(declare-fun m!240593 () Bool)

(assert (=> b!212751 m!240593))

(declare-fun m!240595 () Bool)

(assert (=> b!212751 m!240595))

(declare-fun m!240597 () Bool)

(assert (=> b!212751 m!240597))

(declare-fun m!240599 () Bool)

(assert (=> b!212751 m!240599))

(declare-fun m!240601 () Bool)

(assert (=> b!212751 m!240601))

(assert (=> b!212751 m!240471))

(declare-fun m!240603 () Bool)

(assert (=> b!212751 m!240603))

(declare-fun m!240605 () Bool)

(assert (=> b!212751 m!240605))

(assert (=> b!212751 m!240583))

(declare-fun m!240607 () Bool)

(assert (=> b!212751 m!240607))

(declare-fun m!240609 () Bool)

(assert (=> b!212751 m!240609))

(assert (=> b!212751 m!240591))

(assert (=> b!212751 m!240589))

(declare-fun m!240611 () Bool)

(assert (=> b!212751 m!240611))

(assert (=> b!212751 m!240607))

(assert (=> b!212766 m!240471))

(assert (=> b!212766 m!240471))

(assert (=> b!212766 m!240473))

(declare-fun m!240613 () Bool)

(assert (=> b!212769 m!240613))

(declare-fun m!240615 () Bool)

(assert (=> b!212758 m!240615))

(assert (=> b!212767 m!240471))

(assert (=> b!212767 m!240471))

(assert (=> b!212767 m!240473))

(assert (=> d!58071 m!240403))

(declare-fun m!240617 () Bool)

(assert (=> b!212752 m!240617))

(declare-fun m!240619 () Bool)

(assert (=> bm!20154 m!240619))

(declare-fun m!240621 () Bool)

(assert (=> bm!20157 m!240621))

(declare-fun m!240623 () Bool)

(assert (=> bm!20155 m!240623))

(assert (=> b!212757 m!240471))

(assert (=> b!212757 m!240561))

(assert (=> b!212757 m!240531))

(assert (=> b!212757 m!240563))

(assert (=> b!212757 m!240471))

(declare-fun m!240625 () Bool)

(assert (=> b!212757 m!240625))

(assert (=> b!212757 m!240531))

(assert (=> b!212757 m!240561))

(assert (=> bm!20152 m!240417))

(assert (=> b!212770 m!240471))

(assert (=> b!212770 m!240471))

(declare-fun m!240627 () Bool)

(assert (=> b!212770 m!240627))

(assert (=> b!212584 d!58071))

(declare-fun b!212772 () Bool)

(declare-fun e!138434 () Unit!6451)

(declare-fun lt!109811 () Unit!6451)

(assert (=> b!212772 (= e!138434 lt!109811)))

(declare-fun lt!109815 () ListLongMap!3135)

(assert (=> b!212772 (= lt!109815 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109821 () (_ BitVec 64))

(assert (=> b!212772 (= lt!109821 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109830 () (_ BitVec 64))

(assert (=> b!212772 (= lt!109830 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109817 () Unit!6451)

(assert (=> b!212772 (= lt!109817 (addStillContains!173 lt!109815 lt!109821 zeroValue!615 lt!109830))))

(assert (=> b!212772 (contains!1413 (+!576 lt!109815 (tuple2!4209 lt!109821 zeroValue!615)) lt!109830)))

(declare-fun lt!109816 () Unit!6451)

(assert (=> b!212772 (= lt!109816 lt!109817)))

(declare-fun lt!109814 () ListLongMap!3135)

(assert (=> b!212772 (= lt!109814 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109820 () (_ BitVec 64))

(assert (=> b!212772 (= lt!109820 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109828 () (_ BitVec 64))

(assert (=> b!212772 (= lt!109828 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109823 () Unit!6451)

(assert (=> b!212772 (= lt!109823 (addApplyDifferent!173 lt!109814 lt!109820 minValue!615 lt!109828))))

(assert (=> b!212772 (= (apply!197 (+!576 lt!109814 (tuple2!4209 lt!109820 minValue!615)) lt!109828) (apply!197 lt!109814 lt!109828))))

(declare-fun lt!109812 () Unit!6451)

(assert (=> b!212772 (= lt!109812 lt!109823)))

(declare-fun lt!109810 () ListLongMap!3135)

(assert (=> b!212772 (= lt!109810 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109809 () (_ BitVec 64))

(assert (=> b!212772 (= lt!109809 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109827 () (_ BitVec 64))

(assert (=> b!212772 (= lt!109827 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109822 () Unit!6451)

(assert (=> b!212772 (= lt!109822 (addApplyDifferent!173 lt!109810 lt!109809 zeroValue!615 lt!109827))))

(assert (=> b!212772 (= (apply!197 (+!576 lt!109810 (tuple2!4209 lt!109809 zeroValue!615)) lt!109827) (apply!197 lt!109810 lt!109827))))

(declare-fun lt!109813 () Unit!6451)

(assert (=> b!212772 (= lt!109813 lt!109822)))

(declare-fun lt!109826 () ListLongMap!3135)

(assert (=> b!212772 (= lt!109826 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109829 () (_ BitVec 64))

(assert (=> b!212772 (= lt!109829 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!109825 () (_ BitVec 64))

(assert (=> b!212772 (= lt!109825 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212772 (= lt!109811 (addApplyDifferent!173 lt!109826 lt!109829 minValue!615 lt!109825))))

(assert (=> b!212772 (= (apply!197 (+!576 lt!109826 (tuple2!4209 lt!109829 minValue!615)) lt!109825) (apply!197 lt!109826 lt!109825))))

(declare-fun b!212773 () Bool)

(declare-fun e!138426 () Bool)

(declare-fun lt!109824 () ListLongMap!3135)

(assert (=> b!212773 (= e!138426 (= (apply!197 lt!109824 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun bm!20158 () Bool)

(declare-fun call!20167 () ListLongMap!3135)

(declare-fun call!20165 () ListLongMap!3135)

(assert (=> bm!20158 (= call!20167 call!20165)))

(declare-fun b!212774 () Bool)

(declare-fun e!138427 () Bool)

(declare-fun e!138429 () Bool)

(assert (=> b!212774 (= e!138427 e!138429)))

(declare-fun c!35853 () Bool)

(assert (=> b!212774 (= c!35853 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!212775 () Bool)

(declare-fun e!138433 () ListLongMap!3135)

(declare-fun call!20164 () ListLongMap!3135)

(assert (=> b!212775 (= e!138433 call!20164)))

(declare-fun b!212776 () Bool)

(declare-fun res!104086 () Bool)

(assert (=> b!212776 (=> (not res!104086) (not e!138427))))

(declare-fun e!138437 () Bool)

(assert (=> b!212776 (= res!104086 e!138437)))

(declare-fun c!35851 () Bool)

(assert (=> b!212776 (= c!35851 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!212777 () Bool)

(declare-fun call!20166 () Bool)

(assert (=> b!212777 (= e!138437 (not call!20166))))

(declare-fun bm!20159 () Bool)

(assert (=> bm!20159 (= call!20165 (getCurrentListMapNoExtraKeys!508 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212778 () Bool)

(declare-fun e!138435 () Bool)

(assert (=> b!212778 (= e!138435 (= (apply!197 lt!109824 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)) (get!2578 (select (arr!4819 _values!649) #b00000000000000000000000000000000) (dynLambda!535 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!212778 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5144 _values!649)))))

(assert (=> b!212778 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun b!212779 () Bool)

(declare-fun e!138436 () Bool)

(assert (=> b!212779 (= e!138436 (= (apply!197 lt!109824 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun bm!20160 () Bool)

(declare-fun call!20161 () ListLongMap!3135)

(declare-fun call!20163 () ListLongMap!3135)

(assert (=> bm!20160 (= call!20161 call!20163)))

(declare-fun b!212780 () Bool)

(declare-fun res!104087 () Bool)

(assert (=> b!212780 (=> (not res!104087) (not e!138427))))

(declare-fun e!138431 () Bool)

(assert (=> b!212780 (= res!104087 e!138431)))

(declare-fun res!104089 () Bool)

(assert (=> b!212780 (=> res!104089 e!138431)))

(declare-fun e!138432 () Bool)

(assert (=> b!212780 (= res!104089 (not e!138432))))

(declare-fun res!104085 () Bool)

(assert (=> b!212780 (=> (not res!104085) (not e!138432))))

(assert (=> b!212780 (= res!104085 (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun bm!20161 () Bool)

(declare-fun c!35852 () Bool)

(declare-fun c!35850 () Bool)

(assert (=> bm!20161 (= call!20163 (+!576 (ite c!35852 call!20165 (ite c!35850 call!20167 call!20164)) (ite (or c!35852 c!35850) (tuple2!4209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4209 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun d!58073 () Bool)

(assert (=> d!58073 e!138427))

(declare-fun res!104083 () Bool)

(assert (=> d!58073 (=> (not res!104083) (not e!138427))))

(assert (=> d!58073 (= res!104083 (or (bvsge #b00000000000000000000000000000000 (size!5143 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))))

(declare-fun lt!109818 () ListLongMap!3135)

(assert (=> d!58073 (= lt!109824 lt!109818)))

(declare-fun lt!109819 () Unit!6451)

(assert (=> d!58073 (= lt!109819 e!138434)))

(declare-fun c!35854 () Bool)

(declare-fun e!138430 () Bool)

(assert (=> d!58073 (= c!35854 e!138430)))

(declare-fun res!104082 () Bool)

(assert (=> d!58073 (=> (not res!104082) (not e!138430))))

(assert (=> d!58073 (= res!104082 (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun e!138438 () ListLongMap!3135)

(assert (=> d!58073 (= lt!109818 e!138438)))

(assert (=> d!58073 (= c!35852 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58073 (validMask!0 mask!1149)))

(assert (=> d!58073 (= (getCurrentListMap!1109 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109824)))

(declare-fun bm!20162 () Bool)

(declare-fun call!20162 () Bool)

(assert (=> bm!20162 (= call!20162 (contains!1413 lt!109824 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!212781 () Bool)

(declare-fun e!138428 () ListLongMap!3135)

(assert (=> b!212781 (= e!138428 call!20161)))

(declare-fun b!212782 () Bool)

(assert (=> b!212782 (= e!138429 (not call!20162))))

(declare-fun bm!20163 () Bool)

(assert (=> bm!20163 (= call!20164 call!20167)))

(declare-fun b!212783 () Bool)

(assert (=> b!212783 (= e!138437 e!138436)))

(declare-fun res!104088 () Bool)

(assert (=> b!212783 (= res!104088 call!20166)))

(assert (=> b!212783 (=> (not res!104088) (not e!138436))))

(declare-fun b!212784 () Bool)

(assert (=> b!212784 (= e!138438 e!138428)))

(assert (=> b!212784 (= c!35850 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!212785 () Bool)

(declare-fun c!35849 () Bool)

(assert (=> b!212785 (= c!35849 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!212785 (= e!138428 e!138433)))

(declare-fun b!212786 () Bool)

(assert (=> b!212786 (= e!138433 call!20161)))

(declare-fun b!212787 () Bool)

(assert (=> b!212787 (= e!138430 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212788 () Bool)

(assert (=> b!212788 (= e!138432 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212789 () Bool)

(declare-fun Unit!6456 () Unit!6451)

(assert (=> b!212789 (= e!138434 Unit!6456)))

(declare-fun b!212790 () Bool)

(assert (=> b!212790 (= e!138438 (+!576 call!20163 (tuple2!4209 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!212791 () Bool)

(assert (=> b!212791 (= e!138431 e!138435)))

(declare-fun res!104090 () Bool)

(assert (=> b!212791 (=> (not res!104090) (not e!138435))))

(assert (=> b!212791 (= res!104090 (contains!1413 lt!109824 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212791 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(declare-fun bm!20164 () Bool)

(assert (=> bm!20164 (= call!20166 (contains!1413 lt!109824 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!212792 () Bool)

(assert (=> b!212792 (= e!138429 e!138426)))

(declare-fun res!104084 () Bool)

(assert (=> b!212792 (= res!104084 call!20162)))

(assert (=> b!212792 (=> (not res!104084) (not e!138426))))

(assert (= (and d!58073 c!35852) b!212790))

(assert (= (and d!58073 (not c!35852)) b!212784))

(assert (= (and b!212784 c!35850) b!212781))

(assert (= (and b!212784 (not c!35850)) b!212785))

(assert (= (and b!212785 c!35849) b!212786))

(assert (= (and b!212785 (not c!35849)) b!212775))

(assert (= (or b!212786 b!212775) bm!20163))

(assert (= (or b!212781 bm!20163) bm!20158))

(assert (= (or b!212781 b!212786) bm!20160))

(assert (= (or b!212790 bm!20158) bm!20159))

(assert (= (or b!212790 bm!20160) bm!20161))

(assert (= (and d!58073 res!104082) b!212787))

(assert (= (and d!58073 c!35854) b!212772))

(assert (= (and d!58073 (not c!35854)) b!212789))

(assert (= (and d!58073 res!104083) b!212780))

(assert (= (and b!212780 res!104085) b!212788))

(assert (= (and b!212780 (not res!104089)) b!212791))

(assert (= (and b!212791 res!104090) b!212778))

(assert (= (and b!212780 res!104087) b!212776))

(assert (= (and b!212776 c!35851) b!212783))

(assert (= (and b!212776 (not c!35851)) b!212777))

(assert (= (and b!212783 res!104088) b!212779))

(assert (= (or b!212783 b!212777) bm!20164))

(assert (= (and b!212776 res!104086) b!212774))

(assert (= (and b!212774 c!35853) b!212792))

(assert (= (and b!212774 (not c!35853)) b!212782))

(assert (= (and b!212792 res!104084) b!212773))

(assert (= (or b!212792 b!212782) bm!20162))

(declare-fun b_lambda!7771 () Bool)

(assert (=> (not b_lambda!7771) (not b!212778)))

(assert (=> b!212778 t!8079))

(declare-fun b_and!12487 () Bool)

(assert (= b_and!12485 (and (=> t!8079 result!5017) b_and!12487)))

(declare-fun m!240629 () Bool)

(assert (=> b!212772 m!240629))

(declare-fun m!240631 () Bool)

(assert (=> b!212772 m!240631))

(assert (=> b!212772 m!240419))

(declare-fun m!240633 () Bool)

(assert (=> b!212772 m!240633))

(declare-fun m!240635 () Bool)

(assert (=> b!212772 m!240635))

(declare-fun m!240637 () Bool)

(assert (=> b!212772 m!240637))

(declare-fun m!240639 () Bool)

(assert (=> b!212772 m!240639))

(declare-fun m!240641 () Bool)

(assert (=> b!212772 m!240641))

(declare-fun m!240643 () Bool)

(assert (=> b!212772 m!240643))

(declare-fun m!240645 () Bool)

(assert (=> b!212772 m!240645))

(declare-fun m!240647 () Bool)

(assert (=> b!212772 m!240647))

(assert (=> b!212772 m!240471))

(declare-fun m!240649 () Bool)

(assert (=> b!212772 m!240649))

(declare-fun m!240651 () Bool)

(assert (=> b!212772 m!240651))

(assert (=> b!212772 m!240629))

(declare-fun m!240653 () Bool)

(assert (=> b!212772 m!240653))

(declare-fun m!240655 () Bool)

(assert (=> b!212772 m!240655))

(assert (=> b!212772 m!240637))

(assert (=> b!212772 m!240635))

(declare-fun m!240657 () Bool)

(assert (=> b!212772 m!240657))

(assert (=> b!212772 m!240653))

(assert (=> b!212787 m!240471))

(assert (=> b!212787 m!240471))

(assert (=> b!212787 m!240473))

(declare-fun m!240659 () Bool)

(assert (=> b!212790 m!240659))

(declare-fun m!240661 () Bool)

(assert (=> b!212779 m!240661))

(assert (=> b!212788 m!240471))

(assert (=> b!212788 m!240471))

(assert (=> b!212788 m!240473))

(assert (=> d!58073 m!240403))

(declare-fun m!240663 () Bool)

(assert (=> b!212773 m!240663))

(declare-fun m!240665 () Bool)

(assert (=> bm!20161 m!240665))

(declare-fun m!240667 () Bool)

(assert (=> bm!20164 m!240667))

(declare-fun m!240669 () Bool)

(assert (=> bm!20162 m!240669))

(assert (=> b!212778 m!240471))

(assert (=> b!212778 m!240529))

(assert (=> b!212778 m!240531))

(assert (=> b!212778 m!240533))

(assert (=> b!212778 m!240471))

(declare-fun m!240671 () Bool)

(assert (=> b!212778 m!240671))

(assert (=> b!212778 m!240531))

(assert (=> b!212778 m!240529))

(assert (=> bm!20159 m!240419))

(assert (=> b!212791 m!240471))

(assert (=> b!212791 m!240471))

(declare-fun m!240673 () Bool)

(assert (=> b!212791 m!240673))

(assert (=> b!212584 d!58073))

(declare-fun d!58075 () Bool)

(declare-fun res!104095 () Bool)

(declare-fun e!138445 () Bool)

(assert (=> d!58075 (=> res!104095 e!138445)))

(assert (=> d!58075 (= res!104095 (bvsge #b00000000000000000000000000000000 (size!5143 _keys!825)))))

(assert (=> d!58075 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!138445)))

(declare-fun b!212801 () Bool)

(declare-fun e!138446 () Bool)

(assert (=> b!212801 (= e!138445 e!138446)))

(declare-fun c!35857 () Bool)

(assert (=> b!212801 (= c!35857 (validKeyInArray!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20167 () Bool)

(declare-fun call!20170 () Bool)

(assert (=> bm!20167 (= call!20170 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!212802 () Bool)

(declare-fun e!138447 () Bool)

(assert (=> b!212802 (= e!138446 e!138447)))

(declare-fun lt!109838 () (_ BitVec 64))

(assert (=> b!212802 (= lt!109838 (select (arr!4818 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109837 () Unit!6451)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10152 (_ BitVec 64) (_ BitVec 32)) Unit!6451)

(assert (=> b!212802 (= lt!109837 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!109838 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!212802 (arrayContainsKey!0 _keys!825 lt!109838 #b00000000000000000000000000000000)))

(declare-fun lt!109839 () Unit!6451)

(assert (=> b!212802 (= lt!109839 lt!109837)))

(declare-fun res!104096 () Bool)

(declare-datatypes ((SeekEntryResult!722 0))(
  ( (MissingZero!722 (index!5058 (_ BitVec 32))) (Found!722 (index!5059 (_ BitVec 32))) (Intermediate!722 (undefined!1534 Bool) (index!5060 (_ BitVec 32)) (x!22200 (_ BitVec 32))) (Undefined!722) (MissingVacant!722 (index!5061 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10152 (_ BitVec 32)) SeekEntryResult!722)

(assert (=> b!212802 (= res!104096 (= (seekEntryOrOpen!0 (select (arr!4818 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!722 #b00000000000000000000000000000000)))))

(assert (=> b!212802 (=> (not res!104096) (not e!138447))))

(declare-fun b!212803 () Bool)

(assert (=> b!212803 (= e!138446 call!20170)))

(declare-fun b!212804 () Bool)

(assert (=> b!212804 (= e!138447 call!20170)))

(assert (= (and d!58075 (not res!104095)) b!212801))

(assert (= (and b!212801 c!35857) b!212802))

(assert (= (and b!212801 (not c!35857)) b!212803))

(assert (= (and b!212802 res!104096) b!212804))

(assert (= (or b!212804 b!212803) bm!20167))

(assert (=> b!212801 m!240471))

(assert (=> b!212801 m!240471))

(assert (=> b!212801 m!240473))

(declare-fun m!240675 () Bool)

(assert (=> bm!20167 m!240675))

(assert (=> b!212802 m!240471))

(declare-fun m!240677 () Bool)

(assert (=> b!212802 m!240677))

(declare-fun m!240679 () Bool)

(assert (=> b!212802 m!240679))

(assert (=> b!212802 m!240471))

(declare-fun m!240681 () Bool)

(assert (=> b!212802 m!240681))

(assert (=> b!212578 d!58075))

(declare-fun d!58077 () Bool)

(assert (=> d!58077 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!21134 d!58077))

(declare-fun d!58079 () Bool)

(assert (=> d!58079 (= (array_inv!3179 _values!649) (bvsge (size!5144 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!21134 d!58079))

(declare-fun d!58081 () Bool)

(assert (=> d!58081 (= (array_inv!3180 _keys!825) (bvsge (size!5143 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!21134 d!58081))

(declare-fun mapIsEmpty!9311 () Bool)

(declare-fun mapRes!9311 () Bool)

(assert (=> mapIsEmpty!9311 mapRes!9311))

(declare-fun mapNonEmpty!9311 () Bool)

(declare-fun tp!19913 () Bool)

(declare-fun e!138452 () Bool)

(assert (=> mapNonEmpty!9311 (= mapRes!9311 (and tp!19913 e!138452))))

(declare-fun mapKey!9311 () (_ BitVec 32))

(declare-fun mapValue!9311 () ValueCell!2394)

(declare-fun mapRest!9311 () (Array (_ BitVec 32) ValueCell!2394))

(assert (=> mapNonEmpty!9311 (= mapRest!9305 (store mapRest!9311 mapKey!9311 mapValue!9311))))

(declare-fun condMapEmpty!9311 () Bool)

(declare-fun mapDefault!9311 () ValueCell!2394)

(assert (=> mapNonEmpty!9305 (= condMapEmpty!9311 (= mapRest!9305 ((as const (Array (_ BitVec 32) ValueCell!2394)) mapDefault!9311)))))

(declare-fun e!138453 () Bool)

(assert (=> mapNonEmpty!9305 (= tp!19903 (and e!138453 mapRes!9311))))

(declare-fun b!212812 () Bool)

(assert (=> b!212812 (= e!138453 tp_is_empty!5475)))

(declare-fun b!212811 () Bool)

(assert (=> b!212811 (= e!138452 tp_is_empty!5475)))

(assert (= (and mapNonEmpty!9305 condMapEmpty!9311) mapIsEmpty!9311))

(assert (= (and mapNonEmpty!9305 (not condMapEmpty!9311)) mapNonEmpty!9311))

(assert (= (and mapNonEmpty!9311 ((_ is ValueCellFull!2394) mapValue!9311)) b!212811))

(assert (= (and mapNonEmpty!9305 ((_ is ValueCellFull!2394) mapDefault!9311)) b!212812))

(declare-fun m!240683 () Bool)

(assert (=> mapNonEmpty!9311 m!240683))

(declare-fun b_lambda!7773 () Bool)

(assert (= b_lambda!7761 (or (and start!21134 b_free!5613) b_lambda!7773)))

(declare-fun b_lambda!7775 () Bool)

(assert (= b_lambda!7765 (or (and start!21134 b_free!5613) b_lambda!7775)))

(declare-fun b_lambda!7777 () Bool)

(assert (= b_lambda!7769 (or (and start!21134 b_free!5613) b_lambda!7777)))

(declare-fun b_lambda!7779 () Bool)

(assert (= b_lambda!7771 (or (and start!21134 b_free!5613) b_lambda!7779)))

(declare-fun b_lambda!7781 () Bool)

(assert (= b_lambda!7763 (or (and start!21134 b_free!5613) b_lambda!7781)))

(declare-fun b_lambda!7783 () Bool)

(assert (= b_lambda!7767 (or (and start!21134 b_free!5613) b_lambda!7783)))

(check-sat (not bm!20129) (not d!58061) (not b!212685) (not b!212791) (not b!212788) (not b!212706) (not b!212637) (not b!212680) (not b_lambda!7779) (not bm!20162) (not bm!20126) (not b!212684) (not b!212694) (not b!212697) (not mapNonEmpty!9311) (not b!212648) (not bm!20154) (not d!58073) (not b!212769) (not bm!20161) b_and!12487 (not b!212681) (not bm!20167) (not b!212772) (not b!212647) tp_is_empty!5475 (not b_lambda!7775) (not b!212779) (not b!212790) (not d!58059) (not b_lambda!7783) (not b!212674) (not b!212802) (not bm!20136) (not b!212642) (not b!212767) (not b!212752) (not d!58071) (not bm!20155) (not b!212770) (not b!212634) (not b!212683) (not b!212773) (not b_next!5613) (not bm!20135) (not b_lambda!7781) (not bm!20159) (not d!58063) (not b!212778) (not b!212676) (not b_lambda!7773) (not b!212699) (not b!212646) (not b!212649) (not b!212787) (not b!212703) (not bm!20152) (not b!212704) (not b!212766) (not b!212751) (not b!212757) (not b_lambda!7777) (not b!212644) (not d!58057) (not b!212801) (not d!58069) (not b!212707) (not b!212643) (not b!212708) (not b!212679) (not d!58067) (not b!212645) (not bm!20134) (not bm!20164) (not d!58065) (not b!212758) (not b!212702) (not b!212633) (not bm!20157))
(check-sat b_and!12487 (not b_next!5613))
