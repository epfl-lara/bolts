; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38558 () Bool)

(assert start!38558)

(declare-fun b_free!9087 () Bool)

(declare-fun b_next!9087 () Bool)

(assert (=> start!38558 (= b_free!9087 (not b_next!9087))))

(declare-fun tp!32385 () Bool)

(declare-fun b_and!16491 () Bool)

(assert (=> start!38558 (= tp!32385 b_and!16491)))

(declare-fun b!398482 () Bool)

(declare-fun res!229103 () Bool)

(declare-fun e!240811 () Bool)

(assert (=> b!398482 (=> (not res!229103) (not e!240811))))

(declare-datatypes ((array!23817 0))(
  ( (array!23818 (arr!11355 (Array (_ BitVec 32) (_ BitVec 64))) (size!11707 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23817)

(declare-datatypes ((List!6539 0))(
  ( (Nil!6536) (Cons!6535 (h!7391 (_ BitVec 64)) (t!11721 List!6539)) )
))
(declare-fun arrayNoDuplicates!0 (array!23817 (_ BitVec 32) List!6539) Bool)

(assert (=> b!398482 (= res!229103 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6536))))

(declare-fun res!229094 () Bool)

(assert (=> start!38558 (=> (not res!229094) (not e!240811))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38558 (= res!229094 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11707 _keys!709))))))

(assert (=> start!38558 e!240811))

(declare-fun tp_is_empty!9969 () Bool)

(assert (=> start!38558 tp_is_empty!9969))

(assert (=> start!38558 tp!32385))

(assert (=> start!38558 true))

(declare-datatypes ((V!14397 0))(
  ( (V!14398 (val!5029 Int)) )
))
(declare-datatypes ((ValueCell!4641 0))(
  ( (ValueCellFull!4641 (v!7272 V!14397)) (EmptyCell!4641) )
))
(declare-datatypes ((array!23819 0))(
  ( (array!23820 (arr!11356 (Array (_ BitVec 32) ValueCell!4641)) (size!11708 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23819)

(declare-fun e!240813 () Bool)

(declare-fun array_inv!8310 (array!23819) Bool)

(assert (=> start!38558 (and (array_inv!8310 _values!549) e!240813)))

(declare-fun array_inv!8311 (array!23817) Bool)

(assert (=> start!38558 (array_inv!8311 _keys!709)))

(declare-fun b!398483 () Bool)

(declare-fun e!240809 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((tuple2!6582 0))(
  ( (tuple2!6583 (_1!3301 (_ BitVec 64)) (_2!3301 V!14397)) )
))
(declare-datatypes ((List!6540 0))(
  ( (Nil!6537) (Cons!6536 (h!7392 tuple2!6582) (t!11722 List!6540)) )
))
(declare-datatypes ((ListLongMap!5509 0))(
  ( (ListLongMap!5510 (toList!2770 List!6540)) )
))
(declare-fun call!27922 () ListLongMap!5509)

(declare-fun call!27923 () ListLongMap!5509)

(declare-fun v!412 () V!14397)

(declare-fun +!1065 (ListLongMap!5509 tuple2!6582) ListLongMap!5509)

(assert (=> b!398483 (= e!240809 (= call!27923 (+!1065 call!27922 (tuple2!6583 k0!794 v!412))))))

(declare-fun mapNonEmpty!16575 () Bool)

(declare-fun mapRes!16575 () Bool)

(declare-fun tp!32384 () Bool)

(declare-fun e!240808 () Bool)

(assert (=> mapNonEmpty!16575 (= mapRes!16575 (and tp!32384 e!240808))))

(declare-fun mapKey!16575 () (_ BitVec 32))

(declare-fun mapValue!16575 () ValueCell!4641)

(declare-fun mapRest!16575 () (Array (_ BitVec 32) ValueCell!4641))

(assert (=> mapNonEmpty!16575 (= (arr!11356 _values!549) (store mapRest!16575 mapKey!16575 mapValue!16575))))

(declare-fun b!398484 () Bool)

(assert (=> b!398484 (= e!240809 (= call!27922 call!27923))))

(declare-fun b!398485 () Bool)

(declare-fun e!240814 () Bool)

(assert (=> b!398485 (= e!240813 (and e!240814 mapRes!16575))))

(declare-fun condMapEmpty!16575 () Bool)

(declare-fun mapDefault!16575 () ValueCell!4641)

(assert (=> b!398485 (= condMapEmpty!16575 (= (arr!11356 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4641)) mapDefault!16575)))))

(declare-fun b!398486 () Bool)

(declare-fun res!229095 () Bool)

(assert (=> b!398486 (=> (not res!229095) (not e!240811))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398486 (= res!229095 (validMask!0 mask!1025))))

(declare-fun b!398487 () Bool)

(declare-fun res!229100 () Bool)

(declare-fun e!240810 () Bool)

(assert (=> b!398487 (=> (not res!229100) (not e!240810))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398487 (= res!229100 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11707 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!398488 () Bool)

(declare-fun res!229096 () Bool)

(assert (=> b!398488 (=> (not res!229096) (not e!240811))))

(declare-fun arrayContainsKey!0 (array!23817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398488 (= res!229096 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun minValue!515 () V!14397)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14397)

(declare-fun lt!187448 () array!23817)

(declare-fun bm!27919 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun c!54512 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!989 (array!23817 array!23819 (_ BitVec 32) (_ BitVec 32) V!14397 V!14397 (_ BitVec 32) Int) ListLongMap!5509)

(assert (=> bm!27919 (= call!27923 (getCurrentListMapNoExtraKeys!989 (ite c!54512 lt!187448 _keys!709) (ite c!54512 (array!23820 (store (arr!11356 _values!549) i!563 (ValueCellFull!4641 v!412)) (size!11708 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!27920 () Bool)

(assert (=> bm!27920 (= call!27922 (getCurrentListMapNoExtraKeys!989 (ite c!54512 _keys!709 lt!187448) (ite c!54512 _values!549 (array!23820 (store (arr!11356 _values!549) i!563 (ValueCellFull!4641 v!412)) (size!11708 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398489 () Bool)

(assert (=> b!398489 (= e!240808 tp_is_empty!9969)))

(declare-fun b!398490 () Bool)

(declare-fun res!229102 () Bool)

(assert (=> b!398490 (=> (not res!229102) (not e!240811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398490 (= res!229102 (validKeyInArray!0 k0!794))))

(declare-fun b!398491 () Bool)

(declare-fun res!229104 () Bool)

(assert (=> b!398491 (=> (not res!229104) (not e!240811))))

(assert (=> b!398491 (= res!229104 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11707 _keys!709))))))

(declare-fun b!398492 () Bool)

(assert (=> b!398492 (= e!240814 tp_is_empty!9969)))

(declare-fun b!398493 () Bool)

(declare-fun res!229093 () Bool)

(assert (=> b!398493 (=> (not res!229093) (not e!240811))))

(assert (=> b!398493 (= res!229093 (and (= (size!11708 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11707 _keys!709) (size!11708 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398494 () Bool)

(assert (=> b!398494 (= e!240810 (not true))))

(assert (=> b!398494 e!240809))

(assert (=> b!398494 (= c!54512 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12041 0))(
  ( (Unit!12042) )
))
(declare-fun lt!187449 () Unit!12041)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!283 (array!23817 array!23819 (_ BitVec 32) (_ BitVec 32) V!14397 V!14397 (_ BitVec 32) (_ BitVec 64) V!14397 (_ BitVec 32) Int) Unit!12041)

(assert (=> b!398494 (= lt!187449 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!283 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398495 () Bool)

(declare-fun res!229097 () Bool)

(assert (=> b!398495 (=> (not res!229097) (not e!240811))))

(assert (=> b!398495 (= res!229097 (or (= (select (arr!11355 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11355 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398496 () Bool)

(declare-fun res!229098 () Bool)

(assert (=> b!398496 (=> (not res!229098) (not e!240810))))

(assert (=> b!398496 (= res!229098 (arrayNoDuplicates!0 lt!187448 #b00000000000000000000000000000000 Nil!6536))))

(declare-fun b!398497 () Bool)

(assert (=> b!398497 (= e!240811 e!240810)))

(declare-fun res!229101 () Bool)

(assert (=> b!398497 (=> (not res!229101) (not e!240810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23817 (_ BitVec 32)) Bool)

(assert (=> b!398497 (= res!229101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187448 mask!1025))))

(assert (=> b!398497 (= lt!187448 (array!23818 (store (arr!11355 _keys!709) i!563 k0!794) (size!11707 _keys!709)))))

(declare-fun mapIsEmpty!16575 () Bool)

(assert (=> mapIsEmpty!16575 mapRes!16575))

(declare-fun b!398498 () Bool)

(declare-fun res!229099 () Bool)

(assert (=> b!398498 (=> (not res!229099) (not e!240811))))

(assert (=> b!398498 (= res!229099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!38558 res!229094) b!398486))

(assert (= (and b!398486 res!229095) b!398493))

(assert (= (and b!398493 res!229093) b!398498))

(assert (= (and b!398498 res!229099) b!398482))

(assert (= (and b!398482 res!229103) b!398491))

(assert (= (and b!398491 res!229104) b!398490))

(assert (= (and b!398490 res!229102) b!398495))

(assert (= (and b!398495 res!229097) b!398488))

(assert (= (and b!398488 res!229096) b!398497))

(assert (= (and b!398497 res!229101) b!398496))

(assert (= (and b!398496 res!229098) b!398487))

(assert (= (and b!398487 res!229100) b!398494))

(assert (= (and b!398494 c!54512) b!398483))

(assert (= (and b!398494 (not c!54512)) b!398484))

(assert (= (or b!398483 b!398484) bm!27919))

(assert (= (or b!398483 b!398484) bm!27920))

(assert (= (and b!398485 condMapEmpty!16575) mapIsEmpty!16575))

(assert (= (and b!398485 (not condMapEmpty!16575)) mapNonEmpty!16575))

(get-info :version)

(assert (= (and mapNonEmpty!16575 ((_ is ValueCellFull!4641) mapValue!16575)) b!398489))

(assert (= (and b!398485 ((_ is ValueCellFull!4641) mapDefault!16575)) b!398492))

(assert (= start!38558 b!398485))

(declare-fun m!393301 () Bool)

(assert (=> b!398496 m!393301))

(declare-fun m!393303 () Bool)

(assert (=> b!398482 m!393303))

(declare-fun m!393305 () Bool)

(assert (=> b!398495 m!393305))

(declare-fun m!393307 () Bool)

(assert (=> start!38558 m!393307))

(declare-fun m!393309 () Bool)

(assert (=> start!38558 m!393309))

(declare-fun m!393311 () Bool)

(assert (=> b!398497 m!393311))

(declare-fun m!393313 () Bool)

(assert (=> b!398497 m!393313))

(declare-fun m!393315 () Bool)

(assert (=> b!398483 m!393315))

(declare-fun m!393317 () Bool)

(assert (=> b!398488 m!393317))

(declare-fun m!393319 () Bool)

(assert (=> b!398494 m!393319))

(declare-fun m!393321 () Bool)

(assert (=> bm!27919 m!393321))

(declare-fun m!393323 () Bool)

(assert (=> bm!27919 m!393323))

(declare-fun m!393325 () Bool)

(assert (=> b!398486 m!393325))

(declare-fun m!393327 () Bool)

(assert (=> mapNonEmpty!16575 m!393327))

(declare-fun m!393329 () Bool)

(assert (=> b!398490 m!393329))

(assert (=> bm!27920 m!393321))

(declare-fun m!393331 () Bool)

(assert (=> bm!27920 m!393331))

(declare-fun m!393333 () Bool)

(assert (=> b!398498 m!393333))

(check-sat (not b!398482) (not b!398483) (not mapNonEmpty!16575) (not b!398490) (not b!398497) (not b!398486) b_and!16491 (not b_next!9087) (not bm!27919) (not start!38558) (not b!398496) (not b!398498) tp_is_empty!9969 (not b!398494) (not bm!27920) (not b!398488))
(check-sat b_and!16491 (not b_next!9087))
