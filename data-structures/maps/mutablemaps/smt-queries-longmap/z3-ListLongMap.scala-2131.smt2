; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36046 () Bool)

(assert start!36046)

(declare-fun b!361688 () Bool)

(declare-fun res!201288 () Bool)

(declare-fun e!221533 () Bool)

(assert (=> b!361688 (=> (not res!201288) (not e!221533))))

(declare-fun from!1924 () (_ BitVec 32))

(declare-datatypes ((array!20347 0))(
  ( (array!20348 (arr!9656 (Array (_ BitVec 32) (_ BitVec 64))) (size!10008 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20347)

(assert (=> b!361688 (= res!201288 (and (bvsge from!1924 #b00000000000000000000000000000000) (bvslt from!1924 (size!10008 _keys!1541))))))

(declare-fun mapIsEmpty!14145 () Bool)

(declare-fun mapRes!14145 () Bool)

(assert (=> mapIsEmpty!14145 mapRes!14145))

(declare-fun b!361689 () Bool)

(declare-fun e!221532 () Bool)

(declare-fun e!221531 () Bool)

(assert (=> b!361689 (= e!221532 (and e!221531 mapRes!14145))))

(declare-fun condMapEmpty!14145 () Bool)

(declare-datatypes ((V!12189 0))(
  ( (V!12190 (val!4249 Int)) )
))
(declare-datatypes ((ValueCell!3861 0))(
  ( (ValueCellFull!3861 (v!6440 V!12189)) (EmptyCell!3861) )
))
(declare-datatypes ((array!20349 0))(
  ( (array!20350 (arr!9657 (Array (_ BitVec 32) ValueCell!3861)) (size!10009 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20349)

(declare-fun mapDefault!14145 () ValueCell!3861)

(assert (=> b!361689 (= condMapEmpty!14145 (= (arr!9657 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3861)) mapDefault!14145)))))

(declare-fun b!361690 () Bool)

(declare-fun tp_is_empty!8409 () Bool)

(assert (=> b!361690 (= e!221531 tp_is_empty!8409)))

(declare-fun b!361691 () Bool)

(declare-fun k0!1134 () (_ BitVec 64))

(assert (=> b!361691 (= e!221533 (and (not (= (select (arr!9656 _keys!1541) from!1924) k0!1134)) (bvsge (bvadd #b00000000000000000000000000000001 from!1924) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1924) (size!10008 _keys!1541)) (bvsge (size!10008 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun res!201289 () Bool)

(assert (=> start!36046 (=> (not res!201289) (not e!221533))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36046 (= res!201289 (validMask!0 mask!1943))))

(assert (=> start!36046 e!221533))

(assert (=> start!36046 true))

(declare-fun array_inv!7100 (array!20347) Bool)

(assert (=> start!36046 (array_inv!7100 _keys!1541)))

(declare-fun array_inv!7101 (array!20349) Bool)

(assert (=> start!36046 (and (array_inv!7101 _values!1277) e!221532)))

(declare-fun b!361692 () Bool)

(declare-fun res!201287 () Bool)

(assert (=> b!361692 (=> (not res!201287) (not e!221533))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361692 (= res!201287 (and (= (size!10009 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!10008 _keys!1541) (size!10009 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361693 () Bool)

(declare-fun res!201286 () Bool)

(assert (=> b!361693 (=> (not res!201286) (not e!221533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20347 (_ BitVec 32)) Bool)

(assert (=> b!361693 (= res!201286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361694 () Bool)

(declare-fun e!221535 () Bool)

(assert (=> b!361694 (= e!221535 tp_is_empty!8409)))

(declare-fun b!361695 () Bool)

(declare-fun res!201290 () Bool)

(assert (=> b!361695 (=> (not res!201290) (not e!221533))))

(declare-fun arrayContainsKey!0 (array!20347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361695 (= res!201290 (arrayContainsKey!0 _keys!1541 k0!1134 from!1924))))

(declare-fun b!361696 () Bool)

(declare-fun res!201285 () Bool)

(assert (=> b!361696 (=> (not res!201285) (not e!221533))))

(declare-datatypes ((List!5543 0))(
  ( (Nil!5540) (Cons!5539 (h!6395 (_ BitVec 64)) (t!10701 List!5543)) )
))
(declare-fun arrayNoDuplicates!0 (array!20347 (_ BitVec 32) List!5543) Bool)

(assert (=> b!361696 (= res!201285 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5540))))

(declare-fun mapNonEmpty!14145 () Bool)

(declare-fun tp!28221 () Bool)

(assert (=> mapNonEmpty!14145 (= mapRes!14145 (and tp!28221 e!221535))))

(declare-fun mapRest!14145 () (Array (_ BitVec 32) ValueCell!3861))

(declare-fun mapValue!14145 () ValueCell!3861)

(declare-fun mapKey!14145 () (_ BitVec 32))

(assert (=> mapNonEmpty!14145 (= (arr!9657 _values!1277) (store mapRest!14145 mapKey!14145 mapValue!14145))))

(assert (= (and start!36046 res!201289) b!361692))

(assert (= (and b!361692 res!201287) b!361693))

(assert (= (and b!361693 res!201286) b!361696))

(assert (= (and b!361696 res!201285) b!361688))

(assert (= (and b!361688 res!201288) b!361695))

(assert (= (and b!361695 res!201290) b!361691))

(assert (= (and b!361689 condMapEmpty!14145) mapIsEmpty!14145))

(assert (= (and b!361689 (not condMapEmpty!14145)) mapNonEmpty!14145))

(get-info :version)

(assert (= (and mapNonEmpty!14145 ((_ is ValueCellFull!3861) mapValue!14145)) b!361694))

(assert (= (and b!361689 ((_ is ValueCellFull!3861) mapDefault!14145)) b!361690))

(assert (= start!36046 b!361689))

(declare-fun m!358371 () Bool)

(assert (=> b!361693 m!358371))

(declare-fun m!358373 () Bool)

(assert (=> b!361696 m!358373))

(declare-fun m!358375 () Bool)

(assert (=> start!36046 m!358375))

(declare-fun m!358377 () Bool)

(assert (=> start!36046 m!358377))

(declare-fun m!358379 () Bool)

(assert (=> start!36046 m!358379))

(declare-fun m!358381 () Bool)

(assert (=> b!361695 m!358381))

(declare-fun m!358383 () Bool)

(assert (=> b!361691 m!358383))

(declare-fun m!358385 () Bool)

(assert (=> mapNonEmpty!14145 m!358385))

(check-sat tp_is_empty!8409 (not b!361693) (not start!36046) (not b!361695) (not b!361696) (not mapNonEmpty!14145))
(check-sat)
(get-model)

(declare-fun d!71837 () Bool)

(declare-fun res!201313 () Bool)

(declare-fun e!221557 () Bool)

(assert (=> d!71837 (=> res!201313 e!221557)))

(assert (=> d!71837 (= res!201313 (bvsge #b00000000000000000000000000000000 (size!10008 _keys!1541)))))

(assert (=> d!71837 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943) e!221557)))

(declare-fun b!361732 () Bool)

(declare-fun e!221558 () Bool)

(declare-fun call!27188 () Bool)

(assert (=> b!361732 (= e!221558 call!27188)))

(declare-fun b!361733 () Bool)

(declare-fun e!221559 () Bool)

(assert (=> b!361733 (= e!221559 call!27188)))

(declare-fun bm!27185 () Bool)

(assert (=> bm!27185 (= call!27188 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1541 mask!1943))))

(declare-fun b!361734 () Bool)

(assert (=> b!361734 (= e!221558 e!221559)))

(declare-fun lt!166561 () (_ BitVec 64))

(assert (=> b!361734 (= lt!166561 (select (arr!9656 _keys!1541) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11109 0))(
  ( (Unit!11110) )
))
(declare-fun lt!166562 () Unit!11109)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20347 (_ BitVec 64) (_ BitVec 32)) Unit!11109)

(assert (=> b!361734 (= lt!166562 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1541 lt!166561 #b00000000000000000000000000000000))))

(assert (=> b!361734 (arrayContainsKey!0 _keys!1541 lt!166561 #b00000000000000000000000000000000)))

(declare-fun lt!166560 () Unit!11109)

(assert (=> b!361734 (= lt!166560 lt!166562)))

(declare-fun res!201314 () Bool)

(declare-datatypes ((SeekEntryResult!3486 0))(
  ( (MissingZero!3486 (index!16123 (_ BitVec 32))) (Found!3486 (index!16124 (_ BitVec 32))) (Intermediate!3486 (undefined!4298 Bool) (index!16125 (_ BitVec 32)) (x!36051 (_ BitVec 32))) (Undefined!3486) (MissingVacant!3486 (index!16126 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20347 (_ BitVec 32)) SeekEntryResult!3486)

(assert (=> b!361734 (= res!201314 (= (seekEntryOrOpen!0 (select (arr!9656 _keys!1541) #b00000000000000000000000000000000) _keys!1541 mask!1943) (Found!3486 #b00000000000000000000000000000000)))))

(assert (=> b!361734 (=> (not res!201314) (not e!221559))))

(declare-fun b!361735 () Bool)

(assert (=> b!361735 (= e!221557 e!221558)))

(declare-fun c!53663 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361735 (= c!53663 (validKeyInArray!0 (select (arr!9656 _keys!1541) #b00000000000000000000000000000000)))))

(assert (= (and d!71837 (not res!201313)) b!361735))

(assert (= (and b!361735 c!53663) b!361734))

(assert (= (and b!361735 (not c!53663)) b!361732))

(assert (= (and b!361734 res!201314) b!361733))

(assert (= (or b!361733 b!361732) bm!27185))

(declare-fun m!358403 () Bool)

(assert (=> bm!27185 m!358403))

(declare-fun m!358405 () Bool)

(assert (=> b!361734 m!358405))

(declare-fun m!358407 () Bool)

(assert (=> b!361734 m!358407))

(declare-fun m!358409 () Bool)

(assert (=> b!361734 m!358409))

(assert (=> b!361734 m!358405))

(declare-fun m!358411 () Bool)

(assert (=> b!361734 m!358411))

(assert (=> b!361735 m!358405))

(assert (=> b!361735 m!358405))

(declare-fun m!358413 () Bool)

(assert (=> b!361735 m!358413))

(assert (=> b!361693 d!71837))

(declare-fun d!71839 () Bool)

(assert (=> d!71839 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!36046 d!71839))

(declare-fun d!71841 () Bool)

(assert (=> d!71841 (= (array_inv!7100 _keys!1541) (bvsge (size!10008 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!36046 d!71841))

(declare-fun d!71843 () Bool)

(assert (=> d!71843 (= (array_inv!7101 _values!1277) (bvsge (size!10009 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!36046 d!71843))

(declare-fun d!71845 () Bool)

(declare-fun res!201319 () Bool)

(declare-fun e!221564 () Bool)

(assert (=> d!71845 (=> res!201319 e!221564)))

(assert (=> d!71845 (= res!201319 (= (select (arr!9656 _keys!1541) from!1924) k0!1134))))

(assert (=> d!71845 (= (arrayContainsKey!0 _keys!1541 k0!1134 from!1924) e!221564)))

(declare-fun b!361740 () Bool)

(declare-fun e!221565 () Bool)

(assert (=> b!361740 (= e!221564 e!221565)))

(declare-fun res!201320 () Bool)

(assert (=> b!361740 (=> (not res!201320) (not e!221565))))

(assert (=> b!361740 (= res!201320 (bvslt (bvadd from!1924 #b00000000000000000000000000000001) (size!10008 _keys!1541)))))

(declare-fun b!361741 () Bool)

(assert (=> b!361741 (= e!221565 (arrayContainsKey!0 _keys!1541 k0!1134 (bvadd from!1924 #b00000000000000000000000000000001)))))

(assert (= (and d!71845 (not res!201319)) b!361740))

(assert (= (and b!361740 res!201320) b!361741))

(assert (=> d!71845 m!358383))

(declare-fun m!358415 () Bool)

(assert (=> b!361741 m!358415))

(assert (=> b!361695 d!71845))

(declare-fun d!71847 () Bool)

(declare-fun res!201329 () Bool)

(declare-fun e!221577 () Bool)

(assert (=> d!71847 (=> res!201329 e!221577)))

(assert (=> d!71847 (= res!201329 (bvsge #b00000000000000000000000000000000 (size!10008 _keys!1541)))))

(assert (=> d!71847 (= (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5540) e!221577)))

(declare-fun b!361752 () Bool)

(declare-fun e!221575 () Bool)

(declare-fun contains!2430 (List!5543 (_ BitVec 64)) Bool)

(assert (=> b!361752 (= e!221575 (contains!2430 Nil!5540 (select (arr!9656 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361753 () Bool)

(declare-fun e!221574 () Bool)

(declare-fun e!221576 () Bool)

(assert (=> b!361753 (= e!221574 e!221576)))

(declare-fun c!53666 () Bool)

(assert (=> b!361753 (= c!53666 (validKeyInArray!0 (select (arr!9656 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361754 () Bool)

(declare-fun call!27191 () Bool)

(assert (=> b!361754 (= e!221576 call!27191)))

(declare-fun bm!27188 () Bool)

(assert (=> bm!27188 (= call!27191 (arrayNoDuplicates!0 _keys!1541 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53666 (Cons!5539 (select (arr!9656 _keys!1541) #b00000000000000000000000000000000) Nil!5540) Nil!5540)))))

(declare-fun b!361755 () Bool)

(assert (=> b!361755 (= e!221577 e!221574)))

(declare-fun res!201328 () Bool)

(assert (=> b!361755 (=> (not res!201328) (not e!221574))))

(assert (=> b!361755 (= res!201328 (not e!221575))))

(declare-fun res!201327 () Bool)

(assert (=> b!361755 (=> (not res!201327) (not e!221575))))

(assert (=> b!361755 (= res!201327 (validKeyInArray!0 (select (arr!9656 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361756 () Bool)

(assert (=> b!361756 (= e!221576 call!27191)))

(assert (= (and d!71847 (not res!201329)) b!361755))

(assert (= (and b!361755 res!201327) b!361752))

(assert (= (and b!361755 res!201328) b!361753))

(assert (= (and b!361753 c!53666) b!361756))

(assert (= (and b!361753 (not c!53666)) b!361754))

(assert (= (or b!361756 b!361754) bm!27188))

(assert (=> b!361752 m!358405))

(assert (=> b!361752 m!358405))

(declare-fun m!358417 () Bool)

(assert (=> b!361752 m!358417))

(assert (=> b!361753 m!358405))

(assert (=> b!361753 m!358405))

(assert (=> b!361753 m!358413))

(assert (=> bm!27188 m!358405))

(declare-fun m!358419 () Bool)

(assert (=> bm!27188 m!358419))

(assert (=> b!361755 m!358405))

(assert (=> b!361755 m!358405))

(assert (=> b!361755 m!358413))

(assert (=> b!361696 d!71847))

(declare-fun b!361763 () Bool)

(declare-fun e!221582 () Bool)

(assert (=> b!361763 (= e!221582 tp_is_empty!8409)))

(declare-fun mapNonEmpty!14151 () Bool)

(declare-fun mapRes!14151 () Bool)

(declare-fun tp!28227 () Bool)

(assert (=> mapNonEmpty!14151 (= mapRes!14151 (and tp!28227 e!221582))))

(declare-fun mapValue!14151 () ValueCell!3861)

(declare-fun mapRest!14151 () (Array (_ BitVec 32) ValueCell!3861))

(declare-fun mapKey!14151 () (_ BitVec 32))

(assert (=> mapNonEmpty!14151 (= mapRest!14145 (store mapRest!14151 mapKey!14151 mapValue!14151))))

(declare-fun b!361764 () Bool)

(declare-fun e!221583 () Bool)

(assert (=> b!361764 (= e!221583 tp_is_empty!8409)))

(declare-fun condMapEmpty!14151 () Bool)

(declare-fun mapDefault!14151 () ValueCell!3861)

(assert (=> mapNonEmpty!14145 (= condMapEmpty!14151 (= mapRest!14145 ((as const (Array (_ BitVec 32) ValueCell!3861)) mapDefault!14151)))))

(assert (=> mapNonEmpty!14145 (= tp!28221 (and e!221583 mapRes!14151))))

(declare-fun mapIsEmpty!14151 () Bool)

(assert (=> mapIsEmpty!14151 mapRes!14151))

(assert (= (and mapNonEmpty!14145 condMapEmpty!14151) mapIsEmpty!14151))

(assert (= (and mapNonEmpty!14145 (not condMapEmpty!14151)) mapNonEmpty!14151))

(assert (= (and mapNonEmpty!14151 ((_ is ValueCellFull!3861) mapValue!14151)) b!361763))

(assert (= (and mapNonEmpty!14145 ((_ is ValueCellFull!3861) mapDefault!14151)) b!361764))

(declare-fun m!358421 () Bool)

(assert (=> mapNonEmpty!14151 m!358421))

(check-sat (not b!361752) (not b!361755) (not b!361735) tp_is_empty!8409 (not b!361741) (not b!361734) (not bm!27188) (not b!361753) (not bm!27185) (not mapNonEmpty!14151))
(check-sat)
