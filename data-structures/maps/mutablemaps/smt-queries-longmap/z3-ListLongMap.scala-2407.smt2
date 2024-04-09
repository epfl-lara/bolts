; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38092 () Bool)

(assert start!38092)

(declare-fun b_free!9009 () Bool)

(declare-fun b_next!9009 () Bool)

(assert (=> start!38092 (= b_free!9009 (not b_next!9009))))

(declare-fun tp!31803 () Bool)

(declare-fun b_and!16365 () Bool)

(assert (=> start!38092 (= tp!31803 b_and!16365)))

(declare-fun res!224612 () Bool)

(declare-fun e!237456 () Bool)

(assert (=> start!38092 (=> (not res!224612) (not e!237456))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38092 (= res!224612 (validMask!0 mask!970))))

(assert (=> start!38092 e!237456))

(declare-datatypes ((V!14013 0))(
  ( (V!14014 (val!4885 Int)) )
))
(declare-datatypes ((ValueCell!4497 0))(
  ( (ValueCellFull!4497 (v!7110 V!14013)) (EmptyCell!4497) )
))
(declare-datatypes ((array!23239 0))(
  ( (array!23240 (arr!11077 (Array (_ BitVec 32) ValueCell!4497)) (size!11429 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23239)

(declare-fun e!237452 () Bool)

(declare-fun array_inv!8122 (array!23239) Bool)

(assert (=> start!38092 (and (array_inv!8122 _values!506) e!237452)))

(assert (=> start!38092 tp!31803))

(assert (=> start!38092 true))

(declare-fun tp_is_empty!9681 () Bool)

(assert (=> start!38092 tp_is_empty!9681))

(declare-datatypes ((array!23241 0))(
  ( (array!23242 (arr!11078 (Array (_ BitVec 32) (_ BitVec 64))) (size!11430 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23241)

(declare-fun array_inv!8123 (array!23241) Bool)

(assert (=> start!38092 (array_inv!8123 _keys!658)))

(declare-fun b!392100 () Bool)

(declare-fun e!237455 () Bool)

(assert (=> b!392100 (= e!237455 tp_is_empty!9681)))

(declare-fun b!392101 () Bool)

(declare-fun res!224617 () Bool)

(assert (=> b!392101 (=> (not res!224617) (not e!237456))))

(declare-datatypes ((List!6404 0))(
  ( (Nil!6401) (Cons!6400 (h!7256 (_ BitVec 64)) (t!11578 List!6404)) )
))
(declare-fun arrayNoDuplicates!0 (array!23241 (_ BitVec 32) List!6404) Bool)

(assert (=> b!392101 (= res!224617 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6401))))

(declare-fun b!392102 () Bool)

(declare-fun res!224619 () Bool)

(assert (=> b!392102 (=> (not res!224619) (not e!237456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23241 (_ BitVec 32)) Bool)

(assert (=> b!392102 (= res!224619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-datatypes ((tuple2!6520 0))(
  ( (tuple2!6521 (_1!3270 (_ BitVec 64)) (_2!3270 V!14013)) )
))
(declare-datatypes ((List!6405 0))(
  ( (Nil!6402) (Cons!6401 (h!7257 tuple2!6520) (t!11579 List!6405)) )
))
(declare-datatypes ((ListLongMap!5447 0))(
  ( (ListLongMap!5448 (toList!2739 List!6405)) )
))
(declare-fun lt!185307 () ListLongMap!5447)

(declare-fun lt!185302 () ListLongMap!5447)

(declare-fun e!237453 () Bool)

(declare-fun b!392103 () Bool)

(declare-fun lt!185303 () tuple2!6520)

(declare-fun +!1037 (ListLongMap!5447 tuple2!6520) ListLongMap!5447)

(assert (=> b!392103 (= e!237453 (= lt!185307 (+!1037 lt!185302 lt!185303)))))

(declare-fun b!392104 () Bool)

(declare-fun res!224620 () Bool)

(declare-fun e!237454 () Bool)

(assert (=> b!392104 (=> (not res!224620) (not e!237454))))

(declare-fun lt!185304 () array!23241)

(assert (=> b!392104 (= res!224620 (arrayNoDuplicates!0 lt!185304 #b00000000000000000000000000000000 Nil!6401))))

(declare-fun b!392105 () Bool)

(declare-fun res!224616 () Bool)

(assert (=> b!392105 (=> (not res!224616) (not e!237456))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392105 (= res!224616 (validKeyInArray!0 k0!778))))

(declare-fun b!392106 () Bool)

(declare-fun e!237451 () Bool)

(declare-fun lt!185301 () ListLongMap!5447)

(declare-fun lt!185300 () ListLongMap!5447)

(assert (=> b!392106 (= e!237451 (= lt!185301 (+!1037 lt!185300 lt!185303)))))

(assert (=> b!392106 e!237453))

(declare-fun res!224622 () Bool)

(assert (=> b!392106 (=> (not res!224622) (not e!237453))))

(declare-fun lt!185305 () ListLongMap!5447)

(assert (=> b!392106 (= res!224622 (= lt!185307 (+!1037 lt!185305 lt!185303)))))

(declare-fun minValue!472 () V!14013)

(assert (=> b!392106 (= lt!185303 (tuple2!6521 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392107 () Bool)

(declare-fun res!224615 () Bool)

(assert (=> b!392107 (=> (not res!224615) (not e!237456))))

(declare-fun arrayContainsKey!0 (array!23241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392107 (= res!224615 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16110 () Bool)

(declare-fun mapRes!16110 () Bool)

(declare-fun tp!31802 () Bool)

(declare-fun e!237458 () Bool)

(assert (=> mapNonEmpty!16110 (= mapRes!16110 (and tp!31802 e!237458))))

(declare-fun mapRest!16110 () (Array (_ BitVec 32) ValueCell!4497))

(declare-fun mapValue!16110 () ValueCell!4497)

(declare-fun mapKey!16110 () (_ BitVec 32))

(assert (=> mapNonEmpty!16110 (= (arr!11077 _values!506) (store mapRest!16110 mapKey!16110 mapValue!16110))))

(declare-fun b!392108 () Bool)

(assert (=> b!392108 (= e!237454 (not e!237451))))

(declare-fun res!224613 () Bool)

(assert (=> b!392108 (=> res!224613 e!237451)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392108 (= res!224613 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14013)

(declare-fun getCurrentListMap!2104 (array!23241 array!23239 (_ BitVec 32) (_ BitVec 32) V!14013 V!14013 (_ BitVec 32) Int) ListLongMap!5447)

(assert (=> b!392108 (= lt!185301 (getCurrentListMap!2104 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185306 () array!23239)

(assert (=> b!392108 (= lt!185307 (getCurrentListMap!2104 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392108 (and (= lt!185305 lt!185302) (= lt!185302 lt!185305))))

(declare-fun v!373 () V!14013)

(assert (=> b!392108 (= lt!185302 (+!1037 lt!185300 (tuple2!6521 k0!778 v!373)))))

(declare-datatypes ((Unit!11967 0))(
  ( (Unit!11968) )
))
(declare-fun lt!185308 () Unit!11967)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!261 (array!23241 array!23239 (_ BitVec 32) (_ BitVec 32) V!14013 V!14013 (_ BitVec 32) (_ BitVec 64) V!14013 (_ BitVec 32) Int) Unit!11967)

(assert (=> b!392108 (= lt!185308 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!261 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!966 (array!23241 array!23239 (_ BitVec 32) (_ BitVec 32) V!14013 V!14013 (_ BitVec 32) Int) ListLongMap!5447)

(assert (=> b!392108 (= lt!185305 (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392108 (= lt!185306 (array!23240 (store (arr!11077 _values!506) i!548 (ValueCellFull!4497 v!373)) (size!11429 _values!506)))))

(assert (=> b!392108 (= lt!185300 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392109 () Bool)

(assert (=> b!392109 (= e!237452 (and e!237455 mapRes!16110))))

(declare-fun condMapEmpty!16110 () Bool)

(declare-fun mapDefault!16110 () ValueCell!4497)

(assert (=> b!392109 (= condMapEmpty!16110 (= (arr!11077 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4497)) mapDefault!16110)))))

(declare-fun b!392110 () Bool)

(declare-fun res!224621 () Bool)

(assert (=> b!392110 (=> (not res!224621) (not e!237456))))

(assert (=> b!392110 (= res!224621 (and (= (size!11429 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11430 _keys!658) (size!11429 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392111 () Bool)

(assert (=> b!392111 (= e!237456 e!237454)))

(declare-fun res!224614 () Bool)

(assert (=> b!392111 (=> (not res!224614) (not e!237454))))

(assert (=> b!392111 (= res!224614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185304 mask!970))))

(assert (=> b!392111 (= lt!185304 (array!23242 (store (arr!11078 _keys!658) i!548 k0!778) (size!11430 _keys!658)))))

(declare-fun b!392112 () Bool)

(assert (=> b!392112 (= e!237458 tp_is_empty!9681)))

(declare-fun b!392113 () Bool)

(declare-fun res!224611 () Bool)

(assert (=> b!392113 (=> (not res!224611) (not e!237456))))

(assert (=> b!392113 (= res!224611 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11430 _keys!658))))))

(declare-fun mapIsEmpty!16110 () Bool)

(assert (=> mapIsEmpty!16110 mapRes!16110))

(declare-fun b!392114 () Bool)

(declare-fun res!224618 () Bool)

(assert (=> b!392114 (=> (not res!224618) (not e!237456))))

(assert (=> b!392114 (= res!224618 (or (= (select (arr!11078 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11078 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!38092 res!224612) b!392110))

(assert (= (and b!392110 res!224621) b!392102))

(assert (= (and b!392102 res!224619) b!392101))

(assert (= (and b!392101 res!224617) b!392113))

(assert (= (and b!392113 res!224611) b!392105))

(assert (= (and b!392105 res!224616) b!392114))

(assert (= (and b!392114 res!224618) b!392107))

(assert (= (and b!392107 res!224615) b!392111))

(assert (= (and b!392111 res!224614) b!392104))

(assert (= (and b!392104 res!224620) b!392108))

(assert (= (and b!392108 (not res!224613)) b!392106))

(assert (= (and b!392106 res!224622) b!392103))

(assert (= (and b!392109 condMapEmpty!16110) mapIsEmpty!16110))

(assert (= (and b!392109 (not condMapEmpty!16110)) mapNonEmpty!16110))

(get-info :version)

(assert (= (and mapNonEmpty!16110 ((_ is ValueCellFull!4497) mapValue!16110)) b!392112))

(assert (= (and b!392109 ((_ is ValueCellFull!4497) mapDefault!16110)) b!392100))

(assert (= start!38092 b!392109))

(declare-fun m!388537 () Bool)

(assert (=> mapNonEmpty!16110 m!388537))

(declare-fun m!388539 () Bool)

(assert (=> b!392101 m!388539))

(declare-fun m!388541 () Bool)

(assert (=> b!392105 m!388541))

(declare-fun m!388543 () Bool)

(assert (=> b!392106 m!388543))

(declare-fun m!388545 () Bool)

(assert (=> b!392106 m!388545))

(declare-fun m!388547 () Bool)

(assert (=> b!392104 m!388547))

(declare-fun m!388549 () Bool)

(assert (=> b!392107 m!388549))

(declare-fun m!388551 () Bool)

(assert (=> b!392108 m!388551))

(declare-fun m!388553 () Bool)

(assert (=> b!392108 m!388553))

(declare-fun m!388555 () Bool)

(assert (=> b!392108 m!388555))

(declare-fun m!388557 () Bool)

(assert (=> b!392108 m!388557))

(declare-fun m!388559 () Bool)

(assert (=> b!392108 m!388559))

(declare-fun m!388561 () Bool)

(assert (=> b!392108 m!388561))

(declare-fun m!388563 () Bool)

(assert (=> b!392108 m!388563))

(declare-fun m!388565 () Bool)

(assert (=> b!392102 m!388565))

(declare-fun m!388567 () Bool)

(assert (=> b!392114 m!388567))

(declare-fun m!388569 () Bool)

(assert (=> b!392103 m!388569))

(declare-fun m!388571 () Bool)

(assert (=> b!392111 m!388571))

(declare-fun m!388573 () Bool)

(assert (=> b!392111 m!388573))

(declare-fun m!388575 () Bool)

(assert (=> start!38092 m!388575))

(declare-fun m!388577 () Bool)

(assert (=> start!38092 m!388577))

(declare-fun m!388579 () Bool)

(assert (=> start!38092 m!388579))

(check-sat (not start!38092) b_and!16365 (not b!392103) (not b!392102) (not b!392106) (not b!392101) (not b!392104) (not b!392107) (not b!392105) (not b!392111) (not mapNonEmpty!16110) tp_is_empty!9681 (not b_next!9009) (not b!392108))
(check-sat b_and!16365 (not b_next!9009))
(get-model)

(declare-fun d!72999 () Bool)

(declare-fun e!237485 () Bool)

(assert (=> d!72999 e!237485))

(declare-fun res!224663 () Bool)

(assert (=> d!72999 (=> (not res!224663) (not e!237485))))

(declare-fun lt!185344 () ListLongMap!5447)

(declare-fun contains!2465 (ListLongMap!5447 (_ BitVec 64)) Bool)

(assert (=> d!72999 (= res!224663 (contains!2465 lt!185344 (_1!3270 lt!185303)))))

(declare-fun lt!185346 () List!6405)

(assert (=> d!72999 (= lt!185344 (ListLongMap!5448 lt!185346))))

(declare-fun lt!185345 () Unit!11967)

(declare-fun lt!185347 () Unit!11967)

(assert (=> d!72999 (= lt!185345 lt!185347)))

(declare-datatypes ((Option!368 0))(
  ( (Some!367 (v!7115 V!14013)) (None!366) )
))
(declare-fun getValueByKey!362 (List!6405 (_ BitVec 64)) Option!368)

(assert (=> d!72999 (= (getValueByKey!362 lt!185346 (_1!3270 lt!185303)) (Some!367 (_2!3270 lt!185303)))))

(declare-fun lemmaContainsTupThenGetReturnValue!186 (List!6405 (_ BitVec 64) V!14013) Unit!11967)

(assert (=> d!72999 (= lt!185347 (lemmaContainsTupThenGetReturnValue!186 lt!185346 (_1!3270 lt!185303) (_2!3270 lt!185303)))))

(declare-fun insertStrictlySorted!188 (List!6405 (_ BitVec 64) V!14013) List!6405)

(assert (=> d!72999 (= lt!185346 (insertStrictlySorted!188 (toList!2739 lt!185300) (_1!3270 lt!185303) (_2!3270 lt!185303)))))

(assert (=> d!72999 (= (+!1037 lt!185300 lt!185303) lt!185344)))

(declare-fun b!392164 () Bool)

(declare-fun res!224664 () Bool)

(assert (=> b!392164 (=> (not res!224664) (not e!237485))))

(assert (=> b!392164 (= res!224664 (= (getValueByKey!362 (toList!2739 lt!185344) (_1!3270 lt!185303)) (Some!367 (_2!3270 lt!185303))))))

(declare-fun b!392165 () Bool)

(declare-fun contains!2466 (List!6405 tuple2!6520) Bool)

(assert (=> b!392165 (= e!237485 (contains!2466 (toList!2739 lt!185344) lt!185303))))

(assert (= (and d!72999 res!224663) b!392164))

(assert (= (and b!392164 res!224664) b!392165))

(declare-fun m!388625 () Bool)

(assert (=> d!72999 m!388625))

(declare-fun m!388627 () Bool)

(assert (=> d!72999 m!388627))

(declare-fun m!388629 () Bool)

(assert (=> d!72999 m!388629))

(declare-fun m!388631 () Bool)

(assert (=> d!72999 m!388631))

(declare-fun m!388633 () Bool)

(assert (=> b!392164 m!388633))

(declare-fun m!388635 () Bool)

(assert (=> b!392165 m!388635))

(assert (=> b!392106 d!72999))

(declare-fun d!73001 () Bool)

(declare-fun e!237486 () Bool)

(assert (=> d!73001 e!237486))

(declare-fun res!224665 () Bool)

(assert (=> d!73001 (=> (not res!224665) (not e!237486))))

(declare-fun lt!185348 () ListLongMap!5447)

(assert (=> d!73001 (= res!224665 (contains!2465 lt!185348 (_1!3270 lt!185303)))))

(declare-fun lt!185350 () List!6405)

(assert (=> d!73001 (= lt!185348 (ListLongMap!5448 lt!185350))))

(declare-fun lt!185349 () Unit!11967)

(declare-fun lt!185351 () Unit!11967)

(assert (=> d!73001 (= lt!185349 lt!185351)))

(assert (=> d!73001 (= (getValueByKey!362 lt!185350 (_1!3270 lt!185303)) (Some!367 (_2!3270 lt!185303)))))

(assert (=> d!73001 (= lt!185351 (lemmaContainsTupThenGetReturnValue!186 lt!185350 (_1!3270 lt!185303) (_2!3270 lt!185303)))))

(assert (=> d!73001 (= lt!185350 (insertStrictlySorted!188 (toList!2739 lt!185305) (_1!3270 lt!185303) (_2!3270 lt!185303)))))

(assert (=> d!73001 (= (+!1037 lt!185305 lt!185303) lt!185348)))

(declare-fun b!392166 () Bool)

(declare-fun res!224666 () Bool)

(assert (=> b!392166 (=> (not res!224666) (not e!237486))))

(assert (=> b!392166 (= res!224666 (= (getValueByKey!362 (toList!2739 lt!185348) (_1!3270 lt!185303)) (Some!367 (_2!3270 lt!185303))))))

(declare-fun b!392167 () Bool)

(assert (=> b!392167 (= e!237486 (contains!2466 (toList!2739 lt!185348) lt!185303))))

(assert (= (and d!73001 res!224665) b!392166))

(assert (= (and b!392166 res!224666) b!392167))

(declare-fun m!388637 () Bool)

(assert (=> d!73001 m!388637))

(declare-fun m!388639 () Bool)

(assert (=> d!73001 m!388639))

(declare-fun m!388641 () Bool)

(assert (=> d!73001 m!388641))

(declare-fun m!388643 () Bool)

(assert (=> d!73001 m!388643))

(declare-fun m!388645 () Bool)

(assert (=> b!392166 m!388645))

(declare-fun m!388647 () Bool)

(assert (=> b!392167 m!388647))

(assert (=> b!392106 d!73001))

(declare-fun d!73003 () Bool)

(declare-fun res!224674 () Bool)

(declare-fun e!237495 () Bool)

(assert (=> d!73003 (=> res!224674 e!237495)))

(assert (=> d!73003 (= res!224674 (bvsge #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(assert (=> d!73003 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6401) e!237495)))

(declare-fun b!392178 () Bool)

(declare-fun e!237496 () Bool)

(declare-fun e!237498 () Bool)

(assert (=> b!392178 (= e!237496 e!237498)))

(declare-fun c!54260 () Bool)

(assert (=> b!392178 (= c!54260 (validKeyInArray!0 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27673 () Bool)

(declare-fun call!27676 () Bool)

(assert (=> bm!27673 (= call!27676 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54260 (Cons!6400 (select (arr!11078 _keys!658) #b00000000000000000000000000000000) Nil!6401) Nil!6401)))))

(declare-fun b!392179 () Bool)

(assert (=> b!392179 (= e!237498 call!27676)))

(declare-fun b!392180 () Bool)

(declare-fun e!237497 () Bool)

(declare-fun contains!2467 (List!6404 (_ BitVec 64)) Bool)

(assert (=> b!392180 (= e!237497 (contains!2467 Nil!6401 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392181 () Bool)

(assert (=> b!392181 (= e!237495 e!237496)))

(declare-fun res!224675 () Bool)

(assert (=> b!392181 (=> (not res!224675) (not e!237496))))

(assert (=> b!392181 (= res!224675 (not e!237497))))

(declare-fun res!224673 () Bool)

(assert (=> b!392181 (=> (not res!224673) (not e!237497))))

(assert (=> b!392181 (= res!224673 (validKeyInArray!0 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392182 () Bool)

(assert (=> b!392182 (= e!237498 call!27676)))

(assert (= (and d!73003 (not res!224674)) b!392181))

(assert (= (and b!392181 res!224673) b!392180))

(assert (= (and b!392181 res!224675) b!392178))

(assert (= (and b!392178 c!54260) b!392179))

(assert (= (and b!392178 (not c!54260)) b!392182))

(assert (= (or b!392179 b!392182) bm!27673))

(declare-fun m!388649 () Bool)

(assert (=> b!392178 m!388649))

(assert (=> b!392178 m!388649))

(declare-fun m!388651 () Bool)

(assert (=> b!392178 m!388651))

(assert (=> bm!27673 m!388649))

(declare-fun m!388653 () Bool)

(assert (=> bm!27673 m!388653))

(assert (=> b!392180 m!388649))

(assert (=> b!392180 m!388649))

(declare-fun m!388655 () Bool)

(assert (=> b!392180 m!388655))

(assert (=> b!392181 m!388649))

(assert (=> b!392181 m!388649))

(assert (=> b!392181 m!388651))

(assert (=> b!392101 d!73003))

(declare-fun b!392191 () Bool)

(declare-fun e!237505 () Bool)

(declare-fun call!27679 () Bool)

(assert (=> b!392191 (= e!237505 call!27679)))

(declare-fun b!392192 () Bool)

(declare-fun e!237506 () Bool)

(assert (=> b!392192 (= e!237506 call!27679)))

(declare-fun b!392193 () Bool)

(assert (=> b!392193 (= e!237505 e!237506)))

(declare-fun lt!185358 () (_ BitVec 64))

(assert (=> b!392193 (= lt!185358 (select (arr!11078 lt!185304) #b00000000000000000000000000000000))))

(declare-fun lt!185360 () Unit!11967)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23241 (_ BitVec 64) (_ BitVec 32)) Unit!11967)

(assert (=> b!392193 (= lt!185360 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!185304 lt!185358 #b00000000000000000000000000000000))))

(assert (=> b!392193 (arrayContainsKey!0 lt!185304 lt!185358 #b00000000000000000000000000000000)))

(declare-fun lt!185359 () Unit!11967)

(assert (=> b!392193 (= lt!185359 lt!185360)))

(declare-fun res!224680 () Bool)

(declare-datatypes ((SeekEntryResult!3504 0))(
  ( (MissingZero!3504 (index!16195 (_ BitVec 32))) (Found!3504 (index!16196 (_ BitVec 32))) (Intermediate!3504 (undefined!4316 Bool) (index!16197 (_ BitVec 32)) (x!38396 (_ BitVec 32))) (Undefined!3504) (MissingVacant!3504 (index!16198 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23241 (_ BitVec 32)) SeekEntryResult!3504)

(assert (=> b!392193 (= res!224680 (= (seekEntryOrOpen!0 (select (arr!11078 lt!185304) #b00000000000000000000000000000000) lt!185304 mask!970) (Found!3504 #b00000000000000000000000000000000)))))

(assert (=> b!392193 (=> (not res!224680) (not e!237506))))

(declare-fun b!392194 () Bool)

(declare-fun e!237507 () Bool)

(assert (=> b!392194 (= e!237507 e!237505)))

(declare-fun c!54263 () Bool)

(assert (=> b!392194 (= c!54263 (validKeyInArray!0 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(declare-fun d!73005 () Bool)

(declare-fun res!224681 () Bool)

(assert (=> d!73005 (=> res!224681 e!237507)))

(assert (=> d!73005 (= res!224681 (bvsge #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(assert (=> d!73005 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185304 mask!970) e!237507)))

(declare-fun bm!27676 () Bool)

(assert (=> bm!27676 (= call!27679 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!185304 mask!970))))

(assert (= (and d!73005 (not res!224681)) b!392194))

(assert (= (and b!392194 c!54263) b!392193))

(assert (= (and b!392194 (not c!54263)) b!392191))

(assert (= (and b!392193 res!224680) b!392192))

(assert (= (or b!392192 b!392191) bm!27676))

(declare-fun m!388657 () Bool)

(assert (=> b!392193 m!388657))

(declare-fun m!388659 () Bool)

(assert (=> b!392193 m!388659))

(declare-fun m!388661 () Bool)

(assert (=> b!392193 m!388661))

(assert (=> b!392193 m!388657))

(declare-fun m!388663 () Bool)

(assert (=> b!392193 m!388663))

(assert (=> b!392194 m!388657))

(assert (=> b!392194 m!388657))

(declare-fun m!388665 () Bool)

(assert (=> b!392194 m!388665))

(declare-fun m!388667 () Bool)

(assert (=> bm!27676 m!388667))

(assert (=> b!392111 d!73005))

(declare-fun d!73007 () Bool)

(assert (=> d!73007 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!38092 d!73007))

(declare-fun d!73009 () Bool)

(assert (=> d!73009 (= (array_inv!8122 _values!506) (bvsge (size!11429 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!38092 d!73009))

(declare-fun d!73011 () Bool)

(assert (=> d!73011 (= (array_inv!8123 _keys!658) (bvsge (size!11430 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!38092 d!73011))

(declare-fun d!73013 () Bool)

(declare-fun res!224686 () Bool)

(declare-fun e!237512 () Bool)

(assert (=> d!73013 (=> res!224686 e!237512)))

(assert (=> d!73013 (= res!224686 (= (select (arr!11078 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!73013 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!237512)))

(declare-fun b!392199 () Bool)

(declare-fun e!237513 () Bool)

(assert (=> b!392199 (= e!237512 e!237513)))

(declare-fun res!224687 () Bool)

(assert (=> b!392199 (=> (not res!224687) (not e!237513))))

(assert (=> b!392199 (= res!224687 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11430 _keys!658)))))

(declare-fun b!392200 () Bool)

(assert (=> b!392200 (= e!237513 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73013 (not res!224686)) b!392199))

(assert (= (and b!392199 res!224687) b!392200))

(assert (=> d!73013 m!388649))

(declare-fun m!388669 () Bool)

(assert (=> b!392200 m!388669))

(assert (=> b!392107 d!73013))

(declare-fun b!392201 () Bool)

(declare-fun e!237514 () Bool)

(declare-fun call!27680 () Bool)

(assert (=> b!392201 (= e!237514 call!27680)))

(declare-fun b!392202 () Bool)

(declare-fun e!237515 () Bool)

(assert (=> b!392202 (= e!237515 call!27680)))

(declare-fun b!392203 () Bool)

(assert (=> b!392203 (= e!237514 e!237515)))

(declare-fun lt!185361 () (_ BitVec 64))

(assert (=> b!392203 (= lt!185361 (select (arr!11078 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185363 () Unit!11967)

(assert (=> b!392203 (= lt!185363 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!185361 #b00000000000000000000000000000000))))

(assert (=> b!392203 (arrayContainsKey!0 _keys!658 lt!185361 #b00000000000000000000000000000000)))

(declare-fun lt!185362 () Unit!11967)

(assert (=> b!392203 (= lt!185362 lt!185363)))

(declare-fun res!224688 () Bool)

(assert (=> b!392203 (= res!224688 (= (seekEntryOrOpen!0 (select (arr!11078 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3504 #b00000000000000000000000000000000)))))

(assert (=> b!392203 (=> (not res!224688) (not e!237515))))

(declare-fun b!392204 () Bool)

(declare-fun e!237516 () Bool)

(assert (=> b!392204 (= e!237516 e!237514)))

(declare-fun c!54264 () Bool)

(assert (=> b!392204 (= c!54264 (validKeyInArray!0 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!73015 () Bool)

(declare-fun res!224689 () Bool)

(assert (=> d!73015 (=> res!224689 e!237516)))

(assert (=> d!73015 (= res!224689 (bvsge #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(assert (=> d!73015 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!237516)))

(declare-fun bm!27677 () Bool)

(assert (=> bm!27677 (= call!27680 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(assert (= (and d!73015 (not res!224689)) b!392204))

(assert (= (and b!392204 c!54264) b!392203))

(assert (= (and b!392204 (not c!54264)) b!392201))

(assert (= (and b!392203 res!224688) b!392202))

(assert (= (or b!392202 b!392201) bm!27677))

(assert (=> b!392203 m!388649))

(declare-fun m!388671 () Bool)

(assert (=> b!392203 m!388671))

(declare-fun m!388673 () Bool)

(assert (=> b!392203 m!388673))

(assert (=> b!392203 m!388649))

(declare-fun m!388675 () Bool)

(assert (=> b!392203 m!388675))

(assert (=> b!392204 m!388649))

(assert (=> b!392204 m!388649))

(assert (=> b!392204 m!388651))

(declare-fun m!388677 () Bool)

(assert (=> bm!27677 m!388677))

(assert (=> b!392102 d!73015))

(declare-fun d!73017 () Bool)

(declare-fun e!237517 () Bool)

(assert (=> d!73017 e!237517))

(declare-fun res!224690 () Bool)

(assert (=> d!73017 (=> (not res!224690) (not e!237517))))

(declare-fun lt!185364 () ListLongMap!5447)

(assert (=> d!73017 (= res!224690 (contains!2465 lt!185364 (_1!3270 lt!185303)))))

(declare-fun lt!185366 () List!6405)

(assert (=> d!73017 (= lt!185364 (ListLongMap!5448 lt!185366))))

(declare-fun lt!185365 () Unit!11967)

(declare-fun lt!185367 () Unit!11967)

(assert (=> d!73017 (= lt!185365 lt!185367)))

(assert (=> d!73017 (= (getValueByKey!362 lt!185366 (_1!3270 lt!185303)) (Some!367 (_2!3270 lt!185303)))))

(assert (=> d!73017 (= lt!185367 (lemmaContainsTupThenGetReturnValue!186 lt!185366 (_1!3270 lt!185303) (_2!3270 lt!185303)))))

(assert (=> d!73017 (= lt!185366 (insertStrictlySorted!188 (toList!2739 lt!185302) (_1!3270 lt!185303) (_2!3270 lt!185303)))))

(assert (=> d!73017 (= (+!1037 lt!185302 lt!185303) lt!185364)))

(declare-fun b!392205 () Bool)

(declare-fun res!224691 () Bool)

(assert (=> b!392205 (=> (not res!224691) (not e!237517))))

(assert (=> b!392205 (= res!224691 (= (getValueByKey!362 (toList!2739 lt!185364) (_1!3270 lt!185303)) (Some!367 (_2!3270 lt!185303))))))

(declare-fun b!392206 () Bool)

(assert (=> b!392206 (= e!237517 (contains!2466 (toList!2739 lt!185364) lt!185303))))

(assert (= (and d!73017 res!224690) b!392205))

(assert (= (and b!392205 res!224691) b!392206))

(declare-fun m!388679 () Bool)

(assert (=> d!73017 m!388679))

(declare-fun m!388681 () Bool)

(assert (=> d!73017 m!388681))

(declare-fun m!388683 () Bool)

(assert (=> d!73017 m!388683))

(declare-fun m!388685 () Bool)

(assert (=> d!73017 m!388685))

(declare-fun m!388687 () Bool)

(assert (=> b!392205 m!388687))

(declare-fun m!388689 () Bool)

(assert (=> b!392206 m!388689))

(assert (=> b!392103 d!73017))

(declare-fun b!392249 () Bool)

(declare-fun res!224714 () Bool)

(declare-fun e!237550 () Bool)

(assert (=> b!392249 (=> (not res!224714) (not e!237550))))

(declare-fun e!237555 () Bool)

(assert (=> b!392249 (= res!224714 e!237555)))

(declare-fun res!224715 () Bool)

(assert (=> b!392249 (=> res!224715 e!237555)))

(declare-fun e!237556 () Bool)

(assert (=> b!392249 (= res!224715 (not e!237556))))

(declare-fun res!224711 () Bool)

(assert (=> b!392249 (=> (not res!224711) (not e!237556))))

(assert (=> b!392249 (= res!224711 (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(declare-fun b!392250 () Bool)

(declare-fun e!237551 () Bool)

(declare-fun lt!185428 () ListLongMap!5447)

(declare-fun apply!305 (ListLongMap!5447 (_ BitVec 64)) V!14013)

(assert (=> b!392250 (= e!237551 (= (apply!305 lt!185428 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!392251 () Bool)

(declare-fun e!237545 () ListLongMap!5447)

(declare-fun e!237553 () ListLongMap!5447)

(assert (=> b!392251 (= e!237545 e!237553)))

(declare-fun c!54280 () Bool)

(assert (=> b!392251 (= c!54280 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!392252 () Bool)

(declare-fun e!237554 () Bool)

(assert (=> b!392252 (= e!237554 (= (apply!305 lt!185428 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun d!73019 () Bool)

(assert (=> d!73019 e!237550))

(declare-fun res!224718 () Bool)

(assert (=> d!73019 (=> (not res!224718) (not e!237550))))

(assert (=> d!73019 (= res!224718 (or (bvsge #b00000000000000000000000000000000 (size!11430 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))))

(declare-fun lt!185418 () ListLongMap!5447)

(assert (=> d!73019 (= lt!185428 lt!185418)))

(declare-fun lt!185415 () Unit!11967)

(declare-fun e!237544 () Unit!11967)

(assert (=> d!73019 (= lt!185415 e!237544)))

(declare-fun c!54282 () Bool)

(declare-fun e!237547 () Bool)

(assert (=> d!73019 (= c!54282 e!237547)))

(declare-fun res!224713 () Bool)

(assert (=> d!73019 (=> (not res!224713) (not e!237547))))

(assert (=> d!73019 (= res!224713 (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(assert (=> d!73019 (= lt!185418 e!237545)))

(declare-fun c!54278 () Bool)

(assert (=> d!73019 (= c!54278 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!73019 (validMask!0 mask!970)))

(assert (=> d!73019 (= (getCurrentListMap!2104 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185428)))

(declare-fun bm!27692 () Bool)

(declare-fun call!27696 () Bool)

(assert (=> bm!27692 (= call!27696 (contains!2465 lt!185428 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27693 () Bool)

(declare-fun call!27701 () Bool)

(assert (=> bm!27693 (= call!27701 (contains!2465 lt!185428 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!392253 () Bool)

(declare-fun e!237546 () Bool)

(declare-fun get!5606 (ValueCell!4497 V!14013) V!14013)

(declare-fun dynLambda!643 (Int (_ BitVec 64)) V!14013)

(assert (=> b!392253 (= e!237546 (= (apply!305 lt!185428 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)) (get!5606 (select (arr!11077 _values!506) #b00000000000000000000000000000000) (dynLambda!643 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!392253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11429 _values!506)))))

(assert (=> b!392253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(declare-fun b!392254 () Bool)

(assert (=> b!392254 (= e!237547 (validKeyInArray!0 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392255 () Bool)

(declare-fun e!237548 () Bool)

(assert (=> b!392255 (= e!237548 e!237554)))

(declare-fun res!224710 () Bool)

(assert (=> b!392255 (= res!224710 call!27701)))

(assert (=> b!392255 (=> (not res!224710) (not e!237554))))

(declare-fun b!392256 () Bool)

(declare-fun call!27699 () ListLongMap!5447)

(assert (=> b!392256 (= e!237553 call!27699)))

(declare-fun b!392257 () Bool)

(declare-fun res!224717 () Bool)

(assert (=> b!392257 (=> (not res!224717) (not e!237550))))

(declare-fun e!237549 () Bool)

(assert (=> b!392257 (= res!224717 e!237549)))

(declare-fun c!54279 () Bool)

(assert (=> b!392257 (= c!54279 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!392258 () Bool)

(declare-fun e!237552 () ListLongMap!5447)

(declare-fun call!27697 () ListLongMap!5447)

(assert (=> b!392258 (= e!237552 call!27697)))

(declare-fun bm!27694 () Bool)

(declare-fun call!27695 () ListLongMap!5447)

(declare-fun call!27700 () ListLongMap!5447)

(assert (=> bm!27694 (= call!27695 call!27700)))

(declare-fun b!392259 () Bool)

(declare-fun c!54281 () Bool)

(assert (=> b!392259 (= c!54281 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!392259 (= e!237553 e!237552)))

(declare-fun b!392260 () Bool)

(assert (=> b!392260 (= e!237550 e!237548)))

(declare-fun c!54277 () Bool)

(assert (=> b!392260 (= c!54277 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27695 () Bool)

(assert (=> bm!27695 (= call!27697 call!27695)))

(declare-fun b!392261 () Bool)

(declare-fun call!27698 () ListLongMap!5447)

(assert (=> b!392261 (= e!237545 (+!1037 call!27698 (tuple2!6521 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!392262 () Bool)

(assert (=> b!392262 (= e!237552 call!27699)))

(declare-fun bm!27696 () Bool)

(assert (=> bm!27696 (= call!27698 (+!1037 (ite c!54278 call!27700 (ite c!54280 call!27695 call!27697)) (ite (or c!54278 c!54280) (tuple2!6521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6521 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun bm!27697 () Bool)

(assert (=> bm!27697 (= call!27699 call!27698)))

(declare-fun b!392263 () Bool)

(assert (=> b!392263 (= e!237549 e!237551)))

(declare-fun res!224712 () Bool)

(assert (=> b!392263 (= res!224712 call!27696)))

(assert (=> b!392263 (=> (not res!224712) (not e!237551))))

(declare-fun b!392264 () Bool)

(declare-fun Unit!11969 () Unit!11967)

(assert (=> b!392264 (= e!237544 Unit!11969)))

(declare-fun b!392265 () Bool)

(assert (=> b!392265 (= e!237548 (not call!27701))))

(declare-fun b!392266 () Bool)

(assert (=> b!392266 (= e!237555 e!237546)))

(declare-fun res!224716 () Bool)

(assert (=> b!392266 (=> (not res!224716) (not e!237546))))

(assert (=> b!392266 (= res!224716 (contains!2465 lt!185428 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!392266 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(declare-fun bm!27698 () Bool)

(assert (=> bm!27698 (= call!27700 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392267 () Bool)

(declare-fun lt!185413 () Unit!11967)

(assert (=> b!392267 (= e!237544 lt!185413)))

(declare-fun lt!185412 () ListLongMap!5447)

(assert (=> b!392267 (= lt!185412 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185419 () (_ BitVec 64))

(assert (=> b!392267 (= lt!185419 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185431 () (_ BitVec 64))

(assert (=> b!392267 (= lt!185431 (select (arr!11078 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185420 () Unit!11967)

(declare-fun addStillContains!281 (ListLongMap!5447 (_ BitVec 64) V!14013 (_ BitVec 64)) Unit!11967)

(assert (=> b!392267 (= lt!185420 (addStillContains!281 lt!185412 lt!185419 zeroValue!472 lt!185431))))

(assert (=> b!392267 (contains!2465 (+!1037 lt!185412 (tuple2!6521 lt!185419 zeroValue!472)) lt!185431)))

(declare-fun lt!185432 () Unit!11967)

(assert (=> b!392267 (= lt!185432 lt!185420)))

(declare-fun lt!185422 () ListLongMap!5447)

(assert (=> b!392267 (= lt!185422 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185433 () (_ BitVec 64))

(assert (=> b!392267 (= lt!185433 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185416 () (_ BitVec 64))

(assert (=> b!392267 (= lt!185416 (select (arr!11078 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185423 () Unit!11967)

(declare-fun addApplyDifferent!281 (ListLongMap!5447 (_ BitVec 64) V!14013 (_ BitVec 64)) Unit!11967)

(assert (=> b!392267 (= lt!185423 (addApplyDifferent!281 lt!185422 lt!185433 minValue!472 lt!185416))))

(assert (=> b!392267 (= (apply!305 (+!1037 lt!185422 (tuple2!6521 lt!185433 minValue!472)) lt!185416) (apply!305 lt!185422 lt!185416))))

(declare-fun lt!185425 () Unit!11967)

(assert (=> b!392267 (= lt!185425 lt!185423)))

(declare-fun lt!185417 () ListLongMap!5447)

(assert (=> b!392267 (= lt!185417 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185427 () (_ BitVec 64))

(assert (=> b!392267 (= lt!185427 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185430 () (_ BitVec 64))

(assert (=> b!392267 (= lt!185430 (select (arr!11078 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185421 () Unit!11967)

(assert (=> b!392267 (= lt!185421 (addApplyDifferent!281 lt!185417 lt!185427 zeroValue!472 lt!185430))))

(assert (=> b!392267 (= (apply!305 (+!1037 lt!185417 (tuple2!6521 lt!185427 zeroValue!472)) lt!185430) (apply!305 lt!185417 lt!185430))))

(declare-fun lt!185429 () Unit!11967)

(assert (=> b!392267 (= lt!185429 lt!185421)))

(declare-fun lt!185424 () ListLongMap!5447)

(assert (=> b!392267 (= lt!185424 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185414 () (_ BitVec 64))

(assert (=> b!392267 (= lt!185414 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185426 () (_ BitVec 64))

(assert (=> b!392267 (= lt!185426 (select (arr!11078 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!392267 (= lt!185413 (addApplyDifferent!281 lt!185424 lt!185414 minValue!472 lt!185426))))

(assert (=> b!392267 (= (apply!305 (+!1037 lt!185424 (tuple2!6521 lt!185414 minValue!472)) lt!185426) (apply!305 lt!185424 lt!185426))))

(declare-fun b!392268 () Bool)

(assert (=> b!392268 (= e!237556 (validKeyInArray!0 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392269 () Bool)

(assert (=> b!392269 (= e!237549 (not call!27696))))

(assert (= (and d!73019 c!54278) b!392261))

(assert (= (and d!73019 (not c!54278)) b!392251))

(assert (= (and b!392251 c!54280) b!392256))

(assert (= (and b!392251 (not c!54280)) b!392259))

(assert (= (and b!392259 c!54281) b!392262))

(assert (= (and b!392259 (not c!54281)) b!392258))

(assert (= (or b!392262 b!392258) bm!27695))

(assert (= (or b!392256 bm!27695) bm!27694))

(assert (= (or b!392256 b!392262) bm!27697))

(assert (= (or b!392261 bm!27694) bm!27698))

(assert (= (or b!392261 bm!27697) bm!27696))

(assert (= (and d!73019 res!224713) b!392254))

(assert (= (and d!73019 c!54282) b!392267))

(assert (= (and d!73019 (not c!54282)) b!392264))

(assert (= (and d!73019 res!224718) b!392249))

(assert (= (and b!392249 res!224711) b!392268))

(assert (= (and b!392249 (not res!224715)) b!392266))

(assert (= (and b!392266 res!224716) b!392253))

(assert (= (and b!392249 res!224714) b!392257))

(assert (= (and b!392257 c!54279) b!392263))

(assert (= (and b!392257 (not c!54279)) b!392269))

(assert (= (and b!392263 res!224712) b!392250))

(assert (= (or b!392263 b!392269) bm!27692))

(assert (= (and b!392257 res!224717) b!392260))

(assert (= (and b!392260 c!54277) b!392255))

(assert (= (and b!392260 (not c!54277)) b!392265))

(assert (= (and b!392255 res!224710) b!392252))

(assert (= (or b!392255 b!392265) bm!27693))

(declare-fun b_lambda!8749 () Bool)

(assert (=> (not b_lambda!8749) (not b!392253)))

(declare-fun t!11582 () Bool)

(declare-fun tb!3133 () Bool)

(assert (=> (and start!38092 (= defaultEntry!514 defaultEntry!514) t!11582) tb!3133))

(declare-fun result!5763 () Bool)

(assert (=> tb!3133 (= result!5763 tp_is_empty!9681)))

(assert (=> b!392253 t!11582))

(declare-fun b_and!16369 () Bool)

(assert (= b_and!16365 (and (=> t!11582 result!5763) b_and!16369)))

(declare-fun m!388691 () Bool)

(assert (=> bm!27693 m!388691))

(assert (=> b!392253 m!388649))

(declare-fun m!388693 () Bool)

(assert (=> b!392253 m!388693))

(declare-fun m!388695 () Bool)

(assert (=> b!392253 m!388695))

(assert (=> b!392253 m!388649))

(assert (=> b!392253 m!388695))

(declare-fun m!388697 () Bool)

(assert (=> b!392253 m!388697))

(declare-fun m!388699 () Bool)

(assert (=> b!392253 m!388699))

(assert (=> b!392253 m!388697))

(declare-fun m!388701 () Bool)

(assert (=> bm!27692 m!388701))

(assert (=> b!392254 m!388649))

(assert (=> b!392254 m!388649))

(assert (=> b!392254 m!388651))

(declare-fun m!388703 () Bool)

(assert (=> b!392250 m!388703))

(assert (=> b!392268 m!388649))

(assert (=> b!392268 m!388649))

(assert (=> b!392268 m!388651))

(declare-fun m!388705 () Bool)

(assert (=> b!392252 m!388705))

(assert (=> bm!27698 m!388551))

(declare-fun m!388707 () Bool)

(assert (=> b!392267 m!388707))

(declare-fun m!388709 () Bool)

(assert (=> b!392267 m!388709))

(declare-fun m!388711 () Bool)

(assert (=> b!392267 m!388711))

(declare-fun m!388713 () Bool)

(assert (=> b!392267 m!388713))

(declare-fun m!388715 () Bool)

(assert (=> b!392267 m!388715))

(declare-fun m!388717 () Bool)

(assert (=> b!392267 m!388717))

(declare-fun m!388719 () Bool)

(assert (=> b!392267 m!388719))

(declare-fun m!388721 () Bool)

(assert (=> b!392267 m!388721))

(declare-fun m!388723 () Bool)

(assert (=> b!392267 m!388723))

(declare-fun m!388725 () Bool)

(assert (=> b!392267 m!388725))

(assert (=> b!392267 m!388551))

(assert (=> b!392267 m!388715))

(assert (=> b!392267 m!388709))

(assert (=> b!392267 m!388649))

(declare-fun m!388727 () Bool)

(assert (=> b!392267 m!388727))

(assert (=> b!392267 m!388707))

(declare-fun m!388729 () Bool)

(assert (=> b!392267 m!388729))

(declare-fun m!388731 () Bool)

(assert (=> b!392267 m!388731))

(declare-fun m!388733 () Bool)

(assert (=> b!392267 m!388733))

(assert (=> b!392267 m!388731))

(declare-fun m!388735 () Bool)

(assert (=> b!392267 m!388735))

(declare-fun m!388737 () Bool)

(assert (=> b!392261 m!388737))

(assert (=> b!392266 m!388649))

(assert (=> b!392266 m!388649))

(declare-fun m!388739 () Bool)

(assert (=> b!392266 m!388739))

(declare-fun m!388741 () Bool)

(assert (=> bm!27696 m!388741))

(assert (=> d!73019 m!388575))

(assert (=> b!392108 d!73019))

(declare-fun b!392278 () Bool)

(declare-fun e!237562 () Bool)

(declare-fun call!27707 () ListLongMap!5447)

(declare-fun call!27706 () ListLongMap!5447)

(assert (=> b!392278 (= e!237562 (= call!27707 call!27706))))

(declare-fun bm!27703 () Bool)

(assert (=> bm!27703 (= call!27707 (getCurrentListMapNoExtraKeys!966 (array!23242 (store (arr!11078 _keys!658) i!548 k0!778) (size!11430 _keys!658)) (array!23240 (store (arr!11077 _values!506) i!548 (ValueCellFull!4497 v!373)) (size!11429 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392279 () Bool)

(assert (=> b!392279 (= e!237562 (= call!27707 (+!1037 call!27706 (tuple2!6521 k0!778 v!373))))))

(declare-fun b!392280 () Bool)

(declare-fun e!237561 () Bool)

(assert (=> b!392280 (= e!237561 e!237562)))

(declare-fun c!54285 () Bool)

(assert (=> b!392280 (= c!54285 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun d!73021 () Bool)

(assert (=> d!73021 e!237561))

(declare-fun res!224721 () Bool)

(assert (=> d!73021 (=> (not res!224721) (not e!237561))))

(assert (=> d!73021 (= res!224721 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11430 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11429 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11430 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11429 _values!506))))))))

(declare-fun lt!185436 () Unit!11967)

(declare-fun choose!1328 (array!23241 array!23239 (_ BitVec 32) (_ BitVec 32) V!14013 V!14013 (_ BitVec 32) (_ BitVec 64) V!14013 (_ BitVec 32) Int) Unit!11967)

(assert (=> d!73021 (= lt!185436 (choose!1328 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!73021 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(assert (=> d!73021 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!261 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!185436)))

(declare-fun bm!27704 () Bool)

(assert (=> bm!27704 (= call!27706 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and d!73021 res!224721) b!392280))

(assert (= (and b!392280 c!54285) b!392279))

(assert (= (and b!392280 (not c!54285)) b!392278))

(assert (= (or b!392279 b!392278) bm!27704))

(assert (= (or b!392279 b!392278) bm!27703))

(assert (=> bm!27703 m!388573))

(assert (=> bm!27703 m!388559))

(declare-fun m!388743 () Bool)

(assert (=> bm!27703 m!388743))

(declare-fun m!388745 () Bool)

(assert (=> b!392279 m!388745))

(declare-fun m!388747 () Bool)

(assert (=> d!73021 m!388747))

(assert (=> bm!27704 m!388551))

(assert (=> b!392108 d!73021))

(declare-fun b!392305 () Bool)

(declare-fun e!237583 () Bool)

(declare-fun lt!185457 () ListLongMap!5447)

(declare-fun isEmpty!556 (ListLongMap!5447) Bool)

(assert (=> b!392305 (= e!237583 (isEmpty!556 lt!185457))))

(declare-fun b!392306 () Bool)

(declare-fun e!237579 () ListLongMap!5447)

(declare-fun call!27710 () ListLongMap!5447)

(assert (=> b!392306 (= e!237579 call!27710)))

(declare-fun b!392307 () Bool)

(assert (=> b!392307 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(assert (=> b!392307 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11429 lt!185306)))))

(declare-fun e!237577 () Bool)

(assert (=> b!392307 (= e!237577 (= (apply!305 lt!185457 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)) (get!5606 (select (arr!11077 lt!185306) #b00000000000000000000000000000000) (dynLambda!643 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!392308 () Bool)

(declare-fun res!224732 () Bool)

(declare-fun e!237581 () Bool)

(assert (=> b!392308 (=> (not res!224732) (not e!237581))))

(assert (=> b!392308 (= res!224732 (not (contains!2465 lt!185457 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392309 () Bool)

(declare-fun e!237578 () ListLongMap!5447)

(assert (=> b!392309 (= e!237578 e!237579)))

(declare-fun c!54296 () Bool)

(assert (=> b!392309 (= c!54296 (validKeyInArray!0 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(declare-fun b!392310 () Bool)

(declare-fun e!237582 () Bool)

(assert (=> b!392310 (= e!237582 e!237577)))

(assert (=> b!392310 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(declare-fun res!224733 () Bool)

(assert (=> b!392310 (= res!224733 (contains!2465 lt!185457 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(assert (=> b!392310 (=> (not res!224733) (not e!237577))))

(declare-fun d!73023 () Bool)

(assert (=> d!73023 e!237581))

(declare-fun res!224731 () Bool)

(assert (=> d!73023 (=> (not res!224731) (not e!237581))))

(assert (=> d!73023 (= res!224731 (not (contains!2465 lt!185457 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73023 (= lt!185457 e!237578)))

(declare-fun c!54294 () Bool)

(assert (=> d!73023 (= c!54294 (bvsge #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(assert (=> d!73023 (validMask!0 mask!970)))

(assert (=> d!73023 (= (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185457)))

(declare-fun b!392311 () Bool)

(assert (=> b!392311 (= e!237582 e!237583)))

(declare-fun c!54295 () Bool)

(assert (=> b!392311 (= c!54295 (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(declare-fun b!392312 () Bool)

(declare-fun e!237580 () Bool)

(assert (=> b!392312 (= e!237580 (validKeyInArray!0 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(assert (=> b!392312 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!392313 () Bool)

(assert (=> b!392313 (= e!237578 (ListLongMap!5448 Nil!6402))))

(declare-fun bm!27707 () Bool)

(assert (=> bm!27707 (= call!27710 (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!392314 () Bool)

(assert (=> b!392314 (= e!237583 (= lt!185457 (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!392315 () Bool)

(assert (=> b!392315 (= e!237581 e!237582)))

(declare-fun c!54297 () Bool)

(assert (=> b!392315 (= c!54297 e!237580)))

(declare-fun res!224730 () Bool)

(assert (=> b!392315 (=> (not res!224730) (not e!237580))))

(assert (=> b!392315 (= res!224730 (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(declare-fun b!392316 () Bool)

(declare-fun lt!185452 () Unit!11967)

(declare-fun lt!185456 () Unit!11967)

(assert (=> b!392316 (= lt!185452 lt!185456)))

(declare-fun lt!185451 () (_ BitVec 64))

(declare-fun lt!185455 () V!14013)

(declare-fun lt!185453 () ListLongMap!5447)

(declare-fun lt!185454 () (_ BitVec 64))

(assert (=> b!392316 (not (contains!2465 (+!1037 lt!185453 (tuple2!6521 lt!185454 lt!185455)) lt!185451))))

(declare-fun addStillNotContains!140 (ListLongMap!5447 (_ BitVec 64) V!14013 (_ BitVec 64)) Unit!11967)

(assert (=> b!392316 (= lt!185456 (addStillNotContains!140 lt!185453 lt!185454 lt!185455 lt!185451))))

(assert (=> b!392316 (= lt!185451 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!392316 (= lt!185455 (get!5606 (select (arr!11077 lt!185306) #b00000000000000000000000000000000) (dynLambda!643 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!392316 (= lt!185454 (select (arr!11078 lt!185304) #b00000000000000000000000000000000))))

(assert (=> b!392316 (= lt!185453 call!27710)))

(assert (=> b!392316 (= e!237579 (+!1037 call!27710 (tuple2!6521 (select (arr!11078 lt!185304) #b00000000000000000000000000000000) (get!5606 (select (arr!11077 lt!185306) #b00000000000000000000000000000000) (dynLambda!643 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!73023 c!54294) b!392313))

(assert (= (and d!73023 (not c!54294)) b!392309))

(assert (= (and b!392309 c!54296) b!392316))

(assert (= (and b!392309 (not c!54296)) b!392306))

(assert (= (or b!392316 b!392306) bm!27707))

(assert (= (and d!73023 res!224731) b!392308))

(assert (= (and b!392308 res!224732) b!392315))

(assert (= (and b!392315 res!224730) b!392312))

(assert (= (and b!392315 c!54297) b!392310))

(assert (= (and b!392315 (not c!54297)) b!392311))

(assert (= (and b!392310 res!224733) b!392307))

(assert (= (and b!392311 c!54295) b!392314))

(assert (= (and b!392311 (not c!54295)) b!392305))

(declare-fun b_lambda!8751 () Bool)

(assert (=> (not b_lambda!8751) (not b!392307)))

(assert (=> b!392307 t!11582))

(declare-fun b_and!16371 () Bool)

(assert (= b_and!16369 (and (=> t!11582 result!5763) b_and!16371)))

(declare-fun b_lambda!8753 () Bool)

(assert (=> (not b_lambda!8753) (not b!392316)))

(assert (=> b!392316 t!11582))

(declare-fun b_and!16373 () Bool)

(assert (= b_and!16371 (and (=> t!11582 result!5763) b_and!16373)))

(declare-fun m!388749 () Bool)

(assert (=> b!392308 m!388749))

(declare-fun m!388751 () Bool)

(assert (=> b!392316 m!388751))

(assert (=> b!392316 m!388657))

(declare-fun m!388753 () Bool)

(assert (=> b!392316 m!388753))

(declare-fun m!388755 () Bool)

(assert (=> b!392316 m!388755))

(assert (=> b!392316 m!388697))

(assert (=> b!392316 m!388751))

(declare-fun m!388757 () Bool)

(assert (=> b!392316 m!388757))

(assert (=> b!392316 m!388753))

(assert (=> b!392316 m!388697))

(declare-fun m!388759 () Bool)

(assert (=> b!392316 m!388759))

(declare-fun m!388761 () Bool)

(assert (=> b!392316 m!388761))

(declare-fun m!388763 () Bool)

(assert (=> b!392314 m!388763))

(assert (=> b!392312 m!388657))

(assert (=> b!392312 m!388657))

(assert (=> b!392312 m!388665))

(assert (=> b!392310 m!388657))

(assert (=> b!392310 m!388657))

(declare-fun m!388765 () Bool)

(assert (=> b!392310 m!388765))

(declare-fun m!388767 () Bool)

(assert (=> b!392305 m!388767))

(assert (=> bm!27707 m!388763))

(declare-fun m!388769 () Bool)

(assert (=> d!73023 m!388769))

(assert (=> d!73023 m!388575))

(assert (=> b!392307 m!388697))

(assert (=> b!392307 m!388657))

(declare-fun m!388771 () Bool)

(assert (=> b!392307 m!388771))

(assert (=> b!392307 m!388753))

(assert (=> b!392307 m!388697))

(assert (=> b!392307 m!388759))

(assert (=> b!392307 m!388657))

(assert (=> b!392307 m!388753))

(assert (=> b!392309 m!388657))

(assert (=> b!392309 m!388657))

(assert (=> b!392309 m!388665))

(assert (=> b!392108 d!73023))

(declare-fun b!392317 () Bool)

(declare-fun res!224738 () Bool)

(declare-fun e!237590 () Bool)

(assert (=> b!392317 (=> (not res!224738) (not e!237590))))

(declare-fun e!237595 () Bool)

(assert (=> b!392317 (= res!224738 e!237595)))

(declare-fun res!224739 () Bool)

(assert (=> b!392317 (=> res!224739 e!237595)))

(declare-fun e!237596 () Bool)

(assert (=> b!392317 (= res!224739 (not e!237596))))

(declare-fun res!224735 () Bool)

(assert (=> b!392317 (=> (not res!224735) (not e!237596))))

(assert (=> b!392317 (= res!224735 (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(declare-fun b!392318 () Bool)

(declare-fun e!237591 () Bool)

(declare-fun lt!185474 () ListLongMap!5447)

(assert (=> b!392318 (= e!237591 (= (apply!305 lt!185474 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!392319 () Bool)

(declare-fun e!237585 () ListLongMap!5447)

(declare-fun e!237593 () ListLongMap!5447)

(assert (=> b!392319 (= e!237585 e!237593)))

(declare-fun c!54301 () Bool)

(assert (=> b!392319 (= c!54301 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!392320 () Bool)

(declare-fun e!237594 () Bool)

(assert (=> b!392320 (= e!237594 (= (apply!305 lt!185474 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun d!73025 () Bool)

(assert (=> d!73025 e!237590))

(declare-fun res!224742 () Bool)

(assert (=> d!73025 (=> (not res!224742) (not e!237590))))

(assert (=> d!73025 (= res!224742 (or (bvsge #b00000000000000000000000000000000 (size!11430 lt!185304)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))))

(declare-fun lt!185464 () ListLongMap!5447)

(assert (=> d!73025 (= lt!185474 lt!185464)))

(declare-fun lt!185461 () Unit!11967)

(declare-fun e!237584 () Unit!11967)

(assert (=> d!73025 (= lt!185461 e!237584)))

(declare-fun c!54303 () Bool)

(declare-fun e!237587 () Bool)

(assert (=> d!73025 (= c!54303 e!237587)))

(declare-fun res!224737 () Bool)

(assert (=> d!73025 (=> (not res!224737) (not e!237587))))

(assert (=> d!73025 (= res!224737 (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(assert (=> d!73025 (= lt!185464 e!237585)))

(declare-fun c!54299 () Bool)

(assert (=> d!73025 (= c!54299 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!73025 (validMask!0 mask!970)))

(assert (=> d!73025 (= (getCurrentListMap!2104 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185474)))

(declare-fun bm!27708 () Bool)

(declare-fun call!27712 () Bool)

(assert (=> bm!27708 (= call!27712 (contains!2465 lt!185474 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27709 () Bool)

(declare-fun call!27717 () Bool)

(assert (=> bm!27709 (= call!27717 (contains!2465 lt!185474 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!392321 () Bool)

(declare-fun e!237586 () Bool)

(assert (=> b!392321 (= e!237586 (= (apply!305 lt!185474 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)) (get!5606 (select (arr!11077 lt!185306) #b00000000000000000000000000000000) (dynLambda!643 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!392321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11429 lt!185306)))))

(assert (=> b!392321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(declare-fun b!392322 () Bool)

(assert (=> b!392322 (= e!237587 (validKeyInArray!0 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(declare-fun b!392323 () Bool)

(declare-fun e!237588 () Bool)

(assert (=> b!392323 (= e!237588 e!237594)))

(declare-fun res!224734 () Bool)

(assert (=> b!392323 (= res!224734 call!27717)))

(assert (=> b!392323 (=> (not res!224734) (not e!237594))))

(declare-fun b!392324 () Bool)

(declare-fun call!27715 () ListLongMap!5447)

(assert (=> b!392324 (= e!237593 call!27715)))

(declare-fun b!392325 () Bool)

(declare-fun res!224741 () Bool)

(assert (=> b!392325 (=> (not res!224741) (not e!237590))))

(declare-fun e!237589 () Bool)

(assert (=> b!392325 (= res!224741 e!237589)))

(declare-fun c!54300 () Bool)

(assert (=> b!392325 (= c!54300 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!392326 () Bool)

(declare-fun e!237592 () ListLongMap!5447)

(declare-fun call!27713 () ListLongMap!5447)

(assert (=> b!392326 (= e!237592 call!27713)))

(declare-fun bm!27710 () Bool)

(declare-fun call!27711 () ListLongMap!5447)

(declare-fun call!27716 () ListLongMap!5447)

(assert (=> bm!27710 (= call!27711 call!27716)))

(declare-fun b!392327 () Bool)

(declare-fun c!54302 () Bool)

(assert (=> b!392327 (= c!54302 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!392327 (= e!237593 e!237592)))

(declare-fun b!392328 () Bool)

(assert (=> b!392328 (= e!237590 e!237588)))

(declare-fun c!54298 () Bool)

(assert (=> b!392328 (= c!54298 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27711 () Bool)

(assert (=> bm!27711 (= call!27713 call!27711)))

(declare-fun b!392329 () Bool)

(declare-fun call!27714 () ListLongMap!5447)

(assert (=> b!392329 (= e!237585 (+!1037 call!27714 (tuple2!6521 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!392330 () Bool)

(assert (=> b!392330 (= e!237592 call!27715)))

(declare-fun bm!27712 () Bool)

(assert (=> bm!27712 (= call!27714 (+!1037 (ite c!54299 call!27716 (ite c!54301 call!27711 call!27713)) (ite (or c!54299 c!54301) (tuple2!6521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6521 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun bm!27713 () Bool)

(assert (=> bm!27713 (= call!27715 call!27714)))

(declare-fun b!392331 () Bool)

(assert (=> b!392331 (= e!237589 e!237591)))

(declare-fun res!224736 () Bool)

(assert (=> b!392331 (= res!224736 call!27712)))

(assert (=> b!392331 (=> (not res!224736) (not e!237591))))

(declare-fun b!392332 () Bool)

(declare-fun Unit!11970 () Unit!11967)

(assert (=> b!392332 (= e!237584 Unit!11970)))

(declare-fun b!392333 () Bool)

(assert (=> b!392333 (= e!237588 (not call!27717))))

(declare-fun b!392334 () Bool)

(assert (=> b!392334 (= e!237595 e!237586)))

(declare-fun res!224740 () Bool)

(assert (=> b!392334 (=> (not res!224740) (not e!237586))))

(assert (=> b!392334 (= res!224740 (contains!2465 lt!185474 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(assert (=> b!392334 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(declare-fun bm!27714 () Bool)

(assert (=> bm!27714 (= call!27716 (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392335 () Bool)

(declare-fun lt!185459 () Unit!11967)

(assert (=> b!392335 (= e!237584 lt!185459)))

(declare-fun lt!185458 () ListLongMap!5447)

(assert (=> b!392335 (= lt!185458 (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185465 () (_ BitVec 64))

(assert (=> b!392335 (= lt!185465 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185477 () (_ BitVec 64))

(assert (=> b!392335 (= lt!185477 (select (arr!11078 lt!185304) #b00000000000000000000000000000000))))

(declare-fun lt!185466 () Unit!11967)

(assert (=> b!392335 (= lt!185466 (addStillContains!281 lt!185458 lt!185465 zeroValue!472 lt!185477))))

(assert (=> b!392335 (contains!2465 (+!1037 lt!185458 (tuple2!6521 lt!185465 zeroValue!472)) lt!185477)))

(declare-fun lt!185478 () Unit!11967)

(assert (=> b!392335 (= lt!185478 lt!185466)))

(declare-fun lt!185468 () ListLongMap!5447)

(assert (=> b!392335 (= lt!185468 (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185479 () (_ BitVec 64))

(assert (=> b!392335 (= lt!185479 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185462 () (_ BitVec 64))

(assert (=> b!392335 (= lt!185462 (select (arr!11078 lt!185304) #b00000000000000000000000000000000))))

(declare-fun lt!185469 () Unit!11967)

(assert (=> b!392335 (= lt!185469 (addApplyDifferent!281 lt!185468 lt!185479 minValue!472 lt!185462))))

(assert (=> b!392335 (= (apply!305 (+!1037 lt!185468 (tuple2!6521 lt!185479 minValue!472)) lt!185462) (apply!305 lt!185468 lt!185462))))

(declare-fun lt!185471 () Unit!11967)

(assert (=> b!392335 (= lt!185471 lt!185469)))

(declare-fun lt!185463 () ListLongMap!5447)

(assert (=> b!392335 (= lt!185463 (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185473 () (_ BitVec 64))

(assert (=> b!392335 (= lt!185473 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185476 () (_ BitVec 64))

(assert (=> b!392335 (= lt!185476 (select (arr!11078 lt!185304) #b00000000000000000000000000000000))))

(declare-fun lt!185467 () Unit!11967)

(assert (=> b!392335 (= lt!185467 (addApplyDifferent!281 lt!185463 lt!185473 zeroValue!472 lt!185476))))

(assert (=> b!392335 (= (apply!305 (+!1037 lt!185463 (tuple2!6521 lt!185473 zeroValue!472)) lt!185476) (apply!305 lt!185463 lt!185476))))

(declare-fun lt!185475 () Unit!11967)

(assert (=> b!392335 (= lt!185475 lt!185467)))

(declare-fun lt!185470 () ListLongMap!5447)

(assert (=> b!392335 (= lt!185470 (getCurrentListMapNoExtraKeys!966 lt!185304 lt!185306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185460 () (_ BitVec 64))

(assert (=> b!392335 (= lt!185460 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185472 () (_ BitVec 64))

(assert (=> b!392335 (= lt!185472 (select (arr!11078 lt!185304) #b00000000000000000000000000000000))))

(assert (=> b!392335 (= lt!185459 (addApplyDifferent!281 lt!185470 lt!185460 minValue!472 lt!185472))))

(assert (=> b!392335 (= (apply!305 (+!1037 lt!185470 (tuple2!6521 lt!185460 minValue!472)) lt!185472) (apply!305 lt!185470 lt!185472))))

(declare-fun b!392336 () Bool)

(assert (=> b!392336 (= e!237596 (validKeyInArray!0 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(declare-fun b!392337 () Bool)

(assert (=> b!392337 (= e!237589 (not call!27712))))

(assert (= (and d!73025 c!54299) b!392329))

(assert (= (and d!73025 (not c!54299)) b!392319))

(assert (= (and b!392319 c!54301) b!392324))

(assert (= (and b!392319 (not c!54301)) b!392327))

(assert (= (and b!392327 c!54302) b!392330))

(assert (= (and b!392327 (not c!54302)) b!392326))

(assert (= (or b!392330 b!392326) bm!27711))

(assert (= (or b!392324 bm!27711) bm!27710))

(assert (= (or b!392324 b!392330) bm!27713))

(assert (= (or b!392329 bm!27710) bm!27714))

(assert (= (or b!392329 bm!27713) bm!27712))

(assert (= (and d!73025 res!224737) b!392322))

(assert (= (and d!73025 c!54303) b!392335))

(assert (= (and d!73025 (not c!54303)) b!392332))

(assert (= (and d!73025 res!224742) b!392317))

(assert (= (and b!392317 res!224735) b!392336))

(assert (= (and b!392317 (not res!224739)) b!392334))

(assert (= (and b!392334 res!224740) b!392321))

(assert (= (and b!392317 res!224738) b!392325))

(assert (= (and b!392325 c!54300) b!392331))

(assert (= (and b!392325 (not c!54300)) b!392337))

(assert (= (and b!392331 res!224736) b!392318))

(assert (= (or b!392331 b!392337) bm!27708))

(assert (= (and b!392325 res!224741) b!392328))

(assert (= (and b!392328 c!54298) b!392323))

(assert (= (and b!392328 (not c!54298)) b!392333))

(assert (= (and b!392323 res!224734) b!392320))

(assert (= (or b!392323 b!392333) bm!27709))

(declare-fun b_lambda!8755 () Bool)

(assert (=> (not b_lambda!8755) (not b!392321)))

(assert (=> b!392321 t!11582))

(declare-fun b_and!16375 () Bool)

(assert (= b_and!16373 (and (=> t!11582 result!5763) b_and!16375)))

(declare-fun m!388773 () Bool)

(assert (=> bm!27709 m!388773))

(assert (=> b!392321 m!388657))

(declare-fun m!388775 () Bool)

(assert (=> b!392321 m!388775))

(assert (=> b!392321 m!388753))

(assert (=> b!392321 m!388657))

(assert (=> b!392321 m!388753))

(assert (=> b!392321 m!388697))

(assert (=> b!392321 m!388759))

(assert (=> b!392321 m!388697))

(declare-fun m!388777 () Bool)

(assert (=> bm!27708 m!388777))

(assert (=> b!392322 m!388657))

(assert (=> b!392322 m!388657))

(assert (=> b!392322 m!388665))

(declare-fun m!388779 () Bool)

(assert (=> b!392318 m!388779))

(assert (=> b!392336 m!388657))

(assert (=> b!392336 m!388657))

(assert (=> b!392336 m!388665))

(declare-fun m!388781 () Bool)

(assert (=> b!392320 m!388781))

(assert (=> bm!27714 m!388561))

(declare-fun m!388783 () Bool)

(assert (=> b!392335 m!388783))

(declare-fun m!388785 () Bool)

(assert (=> b!392335 m!388785))

(declare-fun m!388787 () Bool)

(assert (=> b!392335 m!388787))

(declare-fun m!388789 () Bool)

(assert (=> b!392335 m!388789))

(declare-fun m!388791 () Bool)

(assert (=> b!392335 m!388791))

(declare-fun m!388793 () Bool)

(assert (=> b!392335 m!388793))

(declare-fun m!388795 () Bool)

(assert (=> b!392335 m!388795))

(declare-fun m!388797 () Bool)

(assert (=> b!392335 m!388797))

(declare-fun m!388799 () Bool)

(assert (=> b!392335 m!388799))

(declare-fun m!388801 () Bool)

(assert (=> b!392335 m!388801))

(assert (=> b!392335 m!388561))

(assert (=> b!392335 m!388791))

(assert (=> b!392335 m!388785))

(assert (=> b!392335 m!388657))

(declare-fun m!388803 () Bool)

(assert (=> b!392335 m!388803))

(assert (=> b!392335 m!388783))

(declare-fun m!388805 () Bool)

(assert (=> b!392335 m!388805))

(declare-fun m!388807 () Bool)

(assert (=> b!392335 m!388807))

(declare-fun m!388809 () Bool)

(assert (=> b!392335 m!388809))

(assert (=> b!392335 m!388807))

(declare-fun m!388811 () Bool)

(assert (=> b!392335 m!388811))

(declare-fun m!388813 () Bool)

(assert (=> b!392329 m!388813))

(assert (=> b!392334 m!388657))

(assert (=> b!392334 m!388657))

(declare-fun m!388815 () Bool)

(assert (=> b!392334 m!388815))

(declare-fun m!388817 () Bool)

(assert (=> bm!27712 m!388817))

(assert (=> d!73025 m!388575))

(assert (=> b!392108 d!73025))

(declare-fun d!73027 () Bool)

(declare-fun e!237597 () Bool)

(assert (=> d!73027 e!237597))

(declare-fun res!224743 () Bool)

(assert (=> d!73027 (=> (not res!224743) (not e!237597))))

(declare-fun lt!185480 () ListLongMap!5447)

(assert (=> d!73027 (= res!224743 (contains!2465 lt!185480 (_1!3270 (tuple2!6521 k0!778 v!373))))))

(declare-fun lt!185482 () List!6405)

(assert (=> d!73027 (= lt!185480 (ListLongMap!5448 lt!185482))))

(declare-fun lt!185481 () Unit!11967)

(declare-fun lt!185483 () Unit!11967)

(assert (=> d!73027 (= lt!185481 lt!185483)))

(assert (=> d!73027 (= (getValueByKey!362 lt!185482 (_1!3270 (tuple2!6521 k0!778 v!373))) (Some!367 (_2!3270 (tuple2!6521 k0!778 v!373))))))

(assert (=> d!73027 (= lt!185483 (lemmaContainsTupThenGetReturnValue!186 lt!185482 (_1!3270 (tuple2!6521 k0!778 v!373)) (_2!3270 (tuple2!6521 k0!778 v!373))))))

(assert (=> d!73027 (= lt!185482 (insertStrictlySorted!188 (toList!2739 lt!185300) (_1!3270 (tuple2!6521 k0!778 v!373)) (_2!3270 (tuple2!6521 k0!778 v!373))))))

(assert (=> d!73027 (= (+!1037 lt!185300 (tuple2!6521 k0!778 v!373)) lt!185480)))

(declare-fun b!392338 () Bool)

(declare-fun res!224744 () Bool)

(assert (=> b!392338 (=> (not res!224744) (not e!237597))))

(assert (=> b!392338 (= res!224744 (= (getValueByKey!362 (toList!2739 lt!185480) (_1!3270 (tuple2!6521 k0!778 v!373))) (Some!367 (_2!3270 (tuple2!6521 k0!778 v!373)))))))

(declare-fun b!392339 () Bool)

(assert (=> b!392339 (= e!237597 (contains!2466 (toList!2739 lt!185480) (tuple2!6521 k0!778 v!373)))))

(assert (= (and d!73027 res!224743) b!392338))

(assert (= (and b!392338 res!224744) b!392339))

(declare-fun m!388819 () Bool)

(assert (=> d!73027 m!388819))

(declare-fun m!388821 () Bool)

(assert (=> d!73027 m!388821))

(declare-fun m!388823 () Bool)

(assert (=> d!73027 m!388823))

(declare-fun m!388825 () Bool)

(assert (=> d!73027 m!388825))

(declare-fun m!388827 () Bool)

(assert (=> b!392338 m!388827))

(declare-fun m!388829 () Bool)

(assert (=> b!392339 m!388829))

(assert (=> b!392108 d!73027))

(declare-fun b!392340 () Bool)

(declare-fun e!237604 () Bool)

(declare-fun lt!185490 () ListLongMap!5447)

(assert (=> b!392340 (= e!237604 (isEmpty!556 lt!185490))))

(declare-fun b!392341 () Bool)

(declare-fun e!237600 () ListLongMap!5447)

(declare-fun call!27718 () ListLongMap!5447)

(assert (=> b!392341 (= e!237600 call!27718)))

(declare-fun b!392342 () Bool)

(assert (=> b!392342 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(assert (=> b!392342 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11429 _values!506)))))

(declare-fun e!237598 () Bool)

(assert (=> b!392342 (= e!237598 (= (apply!305 lt!185490 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)) (get!5606 (select (arr!11077 _values!506) #b00000000000000000000000000000000) (dynLambda!643 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!392343 () Bool)

(declare-fun res!224747 () Bool)

(declare-fun e!237602 () Bool)

(assert (=> b!392343 (=> (not res!224747) (not e!237602))))

(assert (=> b!392343 (= res!224747 (not (contains!2465 lt!185490 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392344 () Bool)

(declare-fun e!237599 () ListLongMap!5447)

(assert (=> b!392344 (= e!237599 e!237600)))

(declare-fun c!54306 () Bool)

(assert (=> b!392344 (= c!54306 (validKeyInArray!0 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!392345 () Bool)

(declare-fun e!237603 () Bool)

(assert (=> b!392345 (= e!237603 e!237598)))

(assert (=> b!392345 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(declare-fun res!224748 () Bool)

(assert (=> b!392345 (= res!224748 (contains!2465 lt!185490 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!392345 (=> (not res!224748) (not e!237598))))

(declare-fun d!73029 () Bool)

(assert (=> d!73029 e!237602))

(declare-fun res!224746 () Bool)

(assert (=> d!73029 (=> (not res!224746) (not e!237602))))

(assert (=> d!73029 (= res!224746 (not (contains!2465 lt!185490 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73029 (= lt!185490 e!237599)))

(declare-fun c!54304 () Bool)

(assert (=> d!73029 (= c!54304 (bvsge #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(assert (=> d!73029 (validMask!0 mask!970)))

(assert (=> d!73029 (= (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185490)))

(declare-fun b!392346 () Bool)

(assert (=> b!392346 (= e!237603 e!237604)))

(declare-fun c!54305 () Bool)

(assert (=> b!392346 (= c!54305 (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(declare-fun b!392347 () Bool)

(declare-fun e!237601 () Bool)

(assert (=> b!392347 (= e!237601 (validKeyInArray!0 (select (arr!11078 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!392347 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!392348 () Bool)

(assert (=> b!392348 (= e!237599 (ListLongMap!5448 Nil!6402))))

(declare-fun bm!27715 () Bool)

(assert (=> bm!27715 (= call!27718 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!392349 () Bool)

(assert (=> b!392349 (= e!237604 (= lt!185490 (getCurrentListMapNoExtraKeys!966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!392350 () Bool)

(assert (=> b!392350 (= e!237602 e!237603)))

(declare-fun c!54307 () Bool)

(assert (=> b!392350 (= c!54307 e!237601)))

(declare-fun res!224745 () Bool)

(assert (=> b!392350 (=> (not res!224745) (not e!237601))))

(assert (=> b!392350 (= res!224745 (bvslt #b00000000000000000000000000000000 (size!11430 _keys!658)))))

(declare-fun b!392351 () Bool)

(declare-fun lt!185485 () Unit!11967)

(declare-fun lt!185489 () Unit!11967)

(assert (=> b!392351 (= lt!185485 lt!185489)))

(declare-fun lt!185488 () V!14013)

(declare-fun lt!185484 () (_ BitVec 64))

(declare-fun lt!185486 () ListLongMap!5447)

(declare-fun lt!185487 () (_ BitVec 64))

(assert (=> b!392351 (not (contains!2465 (+!1037 lt!185486 (tuple2!6521 lt!185487 lt!185488)) lt!185484))))

(assert (=> b!392351 (= lt!185489 (addStillNotContains!140 lt!185486 lt!185487 lt!185488 lt!185484))))

(assert (=> b!392351 (= lt!185484 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!392351 (= lt!185488 (get!5606 (select (arr!11077 _values!506) #b00000000000000000000000000000000) (dynLambda!643 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!392351 (= lt!185487 (select (arr!11078 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!392351 (= lt!185486 call!27718)))

(assert (=> b!392351 (= e!237600 (+!1037 call!27718 (tuple2!6521 (select (arr!11078 _keys!658) #b00000000000000000000000000000000) (get!5606 (select (arr!11077 _values!506) #b00000000000000000000000000000000) (dynLambda!643 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!73029 c!54304) b!392348))

(assert (= (and d!73029 (not c!54304)) b!392344))

(assert (= (and b!392344 c!54306) b!392351))

(assert (= (and b!392344 (not c!54306)) b!392341))

(assert (= (or b!392351 b!392341) bm!27715))

(assert (= (and d!73029 res!224746) b!392343))

(assert (= (and b!392343 res!224747) b!392350))

(assert (= (and b!392350 res!224745) b!392347))

(assert (= (and b!392350 c!54307) b!392345))

(assert (= (and b!392350 (not c!54307)) b!392346))

(assert (= (and b!392345 res!224748) b!392342))

(assert (= (and b!392346 c!54305) b!392349))

(assert (= (and b!392346 (not c!54305)) b!392340))

(declare-fun b_lambda!8757 () Bool)

(assert (=> (not b_lambda!8757) (not b!392342)))

(assert (=> b!392342 t!11582))

(declare-fun b_and!16377 () Bool)

(assert (= b_and!16375 (and (=> t!11582 result!5763) b_and!16377)))

(declare-fun b_lambda!8759 () Bool)

(assert (=> (not b_lambda!8759) (not b!392351)))

(assert (=> b!392351 t!11582))

(declare-fun b_and!16379 () Bool)

(assert (= b_and!16377 (and (=> t!11582 result!5763) b_and!16379)))

(declare-fun m!388831 () Bool)

(assert (=> b!392343 m!388831))

(declare-fun m!388833 () Bool)

(assert (=> b!392351 m!388833))

(assert (=> b!392351 m!388649))

(assert (=> b!392351 m!388695))

(declare-fun m!388835 () Bool)

(assert (=> b!392351 m!388835))

(assert (=> b!392351 m!388697))

(assert (=> b!392351 m!388833))

(declare-fun m!388837 () Bool)

(assert (=> b!392351 m!388837))

(assert (=> b!392351 m!388695))

(assert (=> b!392351 m!388697))

(assert (=> b!392351 m!388699))

(declare-fun m!388839 () Bool)

(assert (=> b!392351 m!388839))

(declare-fun m!388841 () Bool)

(assert (=> b!392349 m!388841))

(assert (=> b!392347 m!388649))

(assert (=> b!392347 m!388649))

(assert (=> b!392347 m!388651))

(assert (=> b!392345 m!388649))

(assert (=> b!392345 m!388649))

(declare-fun m!388843 () Bool)

(assert (=> b!392345 m!388843))

(declare-fun m!388845 () Bool)

(assert (=> b!392340 m!388845))

(assert (=> bm!27715 m!388841))

(declare-fun m!388847 () Bool)

(assert (=> d!73029 m!388847))

(assert (=> d!73029 m!388575))

(assert (=> b!392342 m!388697))

(assert (=> b!392342 m!388649))

(declare-fun m!388849 () Bool)

(assert (=> b!392342 m!388849))

(assert (=> b!392342 m!388695))

(assert (=> b!392342 m!388697))

(assert (=> b!392342 m!388699))

(assert (=> b!392342 m!388649))

(assert (=> b!392342 m!388695))

(assert (=> b!392344 m!388649))

(assert (=> b!392344 m!388649))

(assert (=> b!392344 m!388651))

(assert (=> b!392108 d!73029))

(declare-fun d!73031 () Bool)

(declare-fun res!224750 () Bool)

(declare-fun e!237605 () Bool)

(assert (=> d!73031 (=> res!224750 e!237605)))

(assert (=> d!73031 (= res!224750 (bvsge #b00000000000000000000000000000000 (size!11430 lt!185304)))))

(assert (=> d!73031 (= (arrayNoDuplicates!0 lt!185304 #b00000000000000000000000000000000 Nil!6401) e!237605)))

(declare-fun b!392352 () Bool)

(declare-fun e!237606 () Bool)

(declare-fun e!237608 () Bool)

(assert (=> b!392352 (= e!237606 e!237608)))

(declare-fun c!54308 () Bool)

(assert (=> b!392352 (= c!54308 (validKeyInArray!0 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(declare-fun bm!27716 () Bool)

(declare-fun call!27719 () Bool)

(assert (=> bm!27716 (= call!27719 (arrayNoDuplicates!0 lt!185304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54308 (Cons!6400 (select (arr!11078 lt!185304) #b00000000000000000000000000000000) Nil!6401) Nil!6401)))))

(declare-fun b!392353 () Bool)

(assert (=> b!392353 (= e!237608 call!27719)))

(declare-fun b!392354 () Bool)

(declare-fun e!237607 () Bool)

(assert (=> b!392354 (= e!237607 (contains!2467 Nil!6401 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(declare-fun b!392355 () Bool)

(assert (=> b!392355 (= e!237605 e!237606)))

(declare-fun res!224751 () Bool)

(assert (=> b!392355 (=> (not res!224751) (not e!237606))))

(assert (=> b!392355 (= res!224751 (not e!237607))))

(declare-fun res!224749 () Bool)

(assert (=> b!392355 (=> (not res!224749) (not e!237607))))

(assert (=> b!392355 (= res!224749 (validKeyInArray!0 (select (arr!11078 lt!185304) #b00000000000000000000000000000000)))))

(declare-fun b!392356 () Bool)

(assert (=> b!392356 (= e!237608 call!27719)))

(assert (= (and d!73031 (not res!224750)) b!392355))

(assert (= (and b!392355 res!224749) b!392354))

(assert (= (and b!392355 res!224751) b!392352))

(assert (= (and b!392352 c!54308) b!392353))

(assert (= (and b!392352 (not c!54308)) b!392356))

(assert (= (or b!392353 b!392356) bm!27716))

(assert (=> b!392352 m!388657))

(assert (=> b!392352 m!388657))

(assert (=> b!392352 m!388665))

(assert (=> bm!27716 m!388657))

(declare-fun m!388851 () Bool)

(assert (=> bm!27716 m!388851))

(assert (=> b!392354 m!388657))

(assert (=> b!392354 m!388657))

(declare-fun m!388853 () Bool)

(assert (=> b!392354 m!388853))

(assert (=> b!392355 m!388657))

(assert (=> b!392355 m!388657))

(assert (=> b!392355 m!388665))

(assert (=> b!392104 d!73031))

(declare-fun d!73033 () Bool)

(assert (=> d!73033 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!392105 d!73033))

(declare-fun mapNonEmpty!16116 () Bool)

(declare-fun mapRes!16116 () Bool)

(declare-fun tp!31812 () Bool)

(declare-fun e!237614 () Bool)

(assert (=> mapNonEmpty!16116 (= mapRes!16116 (and tp!31812 e!237614))))

(declare-fun mapValue!16116 () ValueCell!4497)

(declare-fun mapRest!16116 () (Array (_ BitVec 32) ValueCell!4497))

(declare-fun mapKey!16116 () (_ BitVec 32))

(assert (=> mapNonEmpty!16116 (= mapRest!16110 (store mapRest!16116 mapKey!16116 mapValue!16116))))

(declare-fun b!392363 () Bool)

(assert (=> b!392363 (= e!237614 tp_is_empty!9681)))

(declare-fun mapIsEmpty!16116 () Bool)

(assert (=> mapIsEmpty!16116 mapRes!16116))

(declare-fun b!392364 () Bool)

(declare-fun e!237613 () Bool)

(assert (=> b!392364 (= e!237613 tp_is_empty!9681)))

(declare-fun condMapEmpty!16116 () Bool)

(declare-fun mapDefault!16116 () ValueCell!4497)

(assert (=> mapNonEmpty!16110 (= condMapEmpty!16116 (= mapRest!16110 ((as const (Array (_ BitVec 32) ValueCell!4497)) mapDefault!16116)))))

(assert (=> mapNonEmpty!16110 (= tp!31802 (and e!237613 mapRes!16116))))

(assert (= (and mapNonEmpty!16110 condMapEmpty!16116) mapIsEmpty!16116))

(assert (= (and mapNonEmpty!16110 (not condMapEmpty!16116)) mapNonEmpty!16116))

(assert (= (and mapNonEmpty!16116 ((_ is ValueCellFull!4497) mapValue!16116)) b!392363))

(assert (= (and mapNonEmpty!16110 ((_ is ValueCellFull!4497) mapDefault!16116)) b!392364))

(declare-fun m!388855 () Bool)

(assert (=> mapNonEmpty!16116 m!388855))

(declare-fun b_lambda!8761 () Bool)

(assert (= b_lambda!8751 (or (and start!38092 b_free!9009) b_lambda!8761)))

(declare-fun b_lambda!8763 () Bool)

(assert (= b_lambda!8759 (or (and start!38092 b_free!9009) b_lambda!8763)))

(declare-fun b_lambda!8765 () Bool)

(assert (= b_lambda!8755 (or (and start!38092 b_free!9009) b_lambda!8765)))

(declare-fun b_lambda!8767 () Bool)

(assert (= b_lambda!8753 (or (and start!38092 b_free!9009) b_lambda!8767)))

(declare-fun b_lambda!8769 () Bool)

(assert (= b_lambda!8749 (or (and start!38092 b_free!9009) b_lambda!8769)))

(declare-fun b_lambda!8771 () Bool)

(assert (= b_lambda!8757 (or (and start!38092 b_free!9009) b_lambda!8771)))

(check-sat (not b!392354) (not b_lambda!8769) (not b!392322) (not d!73017) (not bm!27707) (not b_lambda!8761) (not b!392320) (not b!392266) (not bm!27692) (not b!392178) (not bm!27677) (not b!392204) (not bm!27673) (not b!392329) (not b!392314) (not b!392253) (not b!392340) (not d!73019) (not b!392355) (not b!392335) (not b!392349) (not b_lambda!8771) (not bm!27703) (not b!392321) (not b!392250) (not bm!27712) (not b!392334) (not b!392347) (not b!392165) (not b_lambda!8763) (not b!392307) (not b!392310) (not b!392345) (not mapNonEmpty!16116) (not d!73001) (not b!392193) (not b_lambda!8767) (not bm!27696) (not d!72999) b_and!16379 (not b!392167) (not b!392339) (not b!392316) (not b!392166) (not b!392309) (not b!392312) (not b!392194) (not bm!27715) (not bm!27698) (not bm!27716) (not b_lambda!8765) (not bm!27676) (not b!392164) tp_is_empty!9681 (not bm!27708) (not b!392203) (not b!392318) (not d!73027) (not b!392180) (not b!392352) (not b!392342) (not bm!27714) (not b!392305) (not d!73029) (not b!392206) (not b!392267) (not b!392181) (not b!392338) (not bm!27709) (not b!392344) (not d!73025) (not b!392261) (not b!392200) (not bm!27704) (not b!392252) (not b!392254) (not b!392343) (not b_next!9009) (not b!392279) (not d!73021) (not b!392308) (not b!392336) (not b!392351) (not b!392268) (not bm!27693) (not b!392205) (not d!73023))
(check-sat b_and!16379 (not b_next!9009))
