; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38570 () Bool)

(assert start!38570)

(declare-fun b_free!9099 () Bool)

(declare-fun b_next!9099 () Bool)

(assert (=> start!38570 (= b_free!9099 (not b_next!9099))))

(declare-fun tp!32421 () Bool)

(declare-fun b_and!16503 () Bool)

(assert (=> start!38570 (= tp!32421 b_and!16503)))

(declare-datatypes ((array!23841 0))(
  ( (array!23842 (arr!11367 (Array (_ BitVec 32) (_ BitVec 64))) (size!11719 (_ BitVec 32))) )
))
(declare-fun lt!187484 () array!23841)

(declare-datatypes ((V!14413 0))(
  ( (V!14414 (val!5035 Int)) )
))
(declare-fun minValue!515 () V!14413)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!54530 () Bool)

(declare-datatypes ((tuple2!6594 0))(
  ( (tuple2!6595 (_1!3307 (_ BitVec 64)) (_2!3307 V!14413)) )
))
(declare-datatypes ((List!6550 0))(
  ( (Nil!6547) (Cons!6546 (h!7402 tuple2!6594) (t!11732 List!6550)) )
))
(declare-datatypes ((ListLongMap!5521 0))(
  ( (ListLongMap!5522 (toList!2776 List!6550)) )
))
(declare-fun call!27959 () ListLongMap!5521)

(declare-datatypes ((ValueCell!4647 0))(
  ( (ValueCellFull!4647 (v!7278 V!14413)) (EmptyCell!4647) )
))
(declare-datatypes ((array!23843 0))(
  ( (array!23844 (arr!11368 (Array (_ BitVec 32) ValueCell!4647)) (size!11720 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23843)

(declare-fun zeroValue!515 () V!14413)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!27955 () Bool)

(declare-fun v!412 () V!14413)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!23841)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!994 (array!23841 array!23843 (_ BitVec 32) (_ BitVec 32) V!14413 V!14413 (_ BitVec 32) Int) ListLongMap!5521)

(assert (=> bm!27955 (= call!27959 (getCurrentListMapNoExtraKeys!994 (ite c!54530 lt!187484 _keys!709) (ite c!54530 (array!23844 (store (arr!11368 _values!549) i!563 (ValueCellFull!4647 v!412)) (size!11720 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398788 () Bool)

(declare-fun res!229314 () Bool)

(declare-fun e!240937 () Bool)

(assert (=> b!398788 (=> (not res!229314) (not e!240937))))

(assert (=> b!398788 (= res!229314 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11719 _keys!709))))))

(declare-fun b!398789 () Bool)

(declare-fun e!240935 () Bool)

(declare-fun e!240940 () Bool)

(declare-fun mapRes!16593 () Bool)

(assert (=> b!398789 (= e!240935 (and e!240940 mapRes!16593))))

(declare-fun condMapEmpty!16593 () Bool)

(declare-fun mapDefault!16593 () ValueCell!4647)

(assert (=> b!398789 (= condMapEmpty!16593 (= (arr!11368 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4647)) mapDefault!16593)))))

(declare-fun b!398790 () Bool)

(declare-fun res!229320 () Bool)

(assert (=> b!398790 (=> (not res!229320) (not e!240937))))

(assert (=> b!398790 (= res!229320 (and (= (size!11720 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11719 _keys!709) (size!11720 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398791 () Bool)

(declare-fun res!229318 () Bool)

(assert (=> b!398791 (=> (not res!229318) (not e!240937))))

(declare-datatypes ((List!6551 0))(
  ( (Nil!6548) (Cons!6547 (h!7403 (_ BitVec 64)) (t!11733 List!6551)) )
))
(declare-fun arrayNoDuplicates!0 (array!23841 (_ BitVec 32) List!6551) Bool)

(assert (=> b!398791 (= res!229318 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6548))))

(declare-fun b!398792 () Bool)

(declare-fun res!229309 () Bool)

(assert (=> b!398792 (=> (not res!229309) (not e!240937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23841 (_ BitVec 32)) Bool)

(assert (=> b!398792 (= res!229309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16593 () Bool)

(declare-fun tp!32420 () Bool)

(declare-fun e!240939 () Bool)

(assert (=> mapNonEmpty!16593 (= mapRes!16593 (and tp!32420 e!240939))))

(declare-fun mapRest!16593 () (Array (_ BitVec 32) ValueCell!4647))

(declare-fun mapValue!16593 () ValueCell!4647)

(declare-fun mapKey!16593 () (_ BitVec 32))

(assert (=> mapNonEmpty!16593 (= (arr!11368 _values!549) (store mapRest!16593 mapKey!16593 mapValue!16593))))

(declare-fun b!398793 () Bool)

(declare-fun res!229315 () Bool)

(declare-fun e!240936 () Bool)

(assert (=> b!398793 (=> (not res!229315) (not e!240936))))

(assert (=> b!398793 (= res!229315 (arrayNoDuplicates!0 lt!187484 #b00000000000000000000000000000000 Nil!6548))))

(declare-fun res!229316 () Bool)

(assert (=> start!38570 (=> (not res!229316) (not e!240937))))

(assert (=> start!38570 (= res!229316 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11719 _keys!709))))))

(assert (=> start!38570 e!240937))

(declare-fun tp_is_empty!9981 () Bool)

(assert (=> start!38570 tp_is_empty!9981))

(assert (=> start!38570 tp!32421))

(assert (=> start!38570 true))

(declare-fun array_inv!8320 (array!23843) Bool)

(assert (=> start!38570 (and (array_inv!8320 _values!549) e!240935)))

(declare-fun array_inv!8321 (array!23841) Bool)

(assert (=> start!38570 (array_inv!8321 _keys!709)))

(declare-fun call!27958 () ListLongMap!5521)

(declare-fun bm!27956 () Bool)

(assert (=> bm!27956 (= call!27958 (getCurrentListMapNoExtraKeys!994 (ite c!54530 _keys!709 lt!187484) (ite c!54530 _values!549 (array!23844 (store (arr!11368 _values!549) i!563 (ValueCellFull!4647 v!412)) (size!11720 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398794 () Bool)

(assert (=> b!398794 (= e!240937 e!240936)))

(declare-fun res!229313 () Bool)

(assert (=> b!398794 (=> (not res!229313) (not e!240936))))

(assert (=> b!398794 (= res!229313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187484 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!398794 (= lt!187484 (array!23842 (store (arr!11367 _keys!709) i!563 k0!794) (size!11719 _keys!709)))))

(declare-fun b!398795 () Bool)

(declare-fun res!229319 () Bool)

(assert (=> b!398795 (=> (not res!229319) (not e!240937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398795 (= res!229319 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!16593 () Bool)

(assert (=> mapIsEmpty!16593 mapRes!16593))

(declare-fun b!398796 () Bool)

(declare-fun res!229317 () Bool)

(assert (=> b!398796 (=> (not res!229317) (not e!240937))))

(declare-fun arrayContainsKey!0 (array!23841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398796 (= res!229317 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!398797 () Bool)

(declare-fun res!229310 () Bool)

(assert (=> b!398797 (=> (not res!229310) (not e!240937))))

(assert (=> b!398797 (= res!229310 (or (= (select (arr!11367 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11367 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398798 () Bool)

(assert (=> b!398798 (= e!240939 tp_is_empty!9981)))

(declare-fun b!398799 () Bool)

(assert (=> b!398799 (= e!240936 (not true))))

(declare-fun e!240934 () Bool)

(assert (=> b!398799 e!240934))

(assert (=> b!398799 (= c!54530 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12047 0))(
  ( (Unit!12048) )
))
(declare-fun lt!187485 () Unit!12047)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!286 (array!23841 array!23843 (_ BitVec 32) (_ BitVec 32) V!14413 V!14413 (_ BitVec 32) (_ BitVec 64) V!14413 (_ BitVec 32) Int) Unit!12047)

(assert (=> b!398799 (= lt!187485 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!286 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398800 () Bool)

(assert (=> b!398800 (= e!240934 (= call!27958 call!27959))))

(declare-fun b!398801 () Bool)

(assert (=> b!398801 (= e!240940 tp_is_empty!9981)))

(declare-fun b!398802 () Bool)

(declare-fun +!1071 (ListLongMap!5521 tuple2!6594) ListLongMap!5521)

(assert (=> b!398802 (= e!240934 (= call!27959 (+!1071 call!27958 (tuple2!6595 k0!794 v!412))))))

(declare-fun b!398803 () Bool)

(declare-fun res!229312 () Bool)

(assert (=> b!398803 (=> (not res!229312) (not e!240937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398803 (= res!229312 (validMask!0 mask!1025))))

(declare-fun b!398804 () Bool)

(declare-fun res!229311 () Bool)

(assert (=> b!398804 (=> (not res!229311) (not e!240936))))

(assert (=> b!398804 (= res!229311 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11719 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(assert (= (and start!38570 res!229316) b!398803))

(assert (= (and b!398803 res!229312) b!398790))

(assert (= (and b!398790 res!229320) b!398792))

(assert (= (and b!398792 res!229309) b!398791))

(assert (= (and b!398791 res!229318) b!398788))

(assert (= (and b!398788 res!229314) b!398795))

(assert (= (and b!398795 res!229319) b!398797))

(assert (= (and b!398797 res!229310) b!398796))

(assert (= (and b!398796 res!229317) b!398794))

(assert (= (and b!398794 res!229313) b!398793))

(assert (= (and b!398793 res!229315) b!398804))

(assert (= (and b!398804 res!229311) b!398799))

(assert (= (and b!398799 c!54530) b!398802))

(assert (= (and b!398799 (not c!54530)) b!398800))

(assert (= (or b!398802 b!398800) bm!27955))

(assert (= (or b!398802 b!398800) bm!27956))

(assert (= (and b!398789 condMapEmpty!16593) mapIsEmpty!16593))

(assert (= (and b!398789 (not condMapEmpty!16593)) mapNonEmpty!16593))

(get-info :version)

(assert (= (and mapNonEmpty!16593 ((_ is ValueCellFull!4647) mapValue!16593)) b!398798))

(assert (= (and b!398789 ((_ is ValueCellFull!4647) mapDefault!16593)) b!398801))

(assert (= start!38570 b!398789))

(declare-fun m!393505 () Bool)

(assert (=> b!398794 m!393505))

(declare-fun m!393507 () Bool)

(assert (=> b!398794 m!393507))

(declare-fun m!393509 () Bool)

(assert (=> b!398793 m!393509))

(declare-fun m!393511 () Bool)

(assert (=> b!398791 m!393511))

(declare-fun m!393513 () Bool)

(assert (=> start!38570 m!393513))

(declare-fun m!393515 () Bool)

(assert (=> start!38570 m!393515))

(declare-fun m!393517 () Bool)

(assert (=> b!398797 m!393517))

(declare-fun m!393519 () Bool)

(assert (=> mapNonEmpty!16593 m!393519))

(declare-fun m!393521 () Bool)

(assert (=> b!398792 m!393521))

(declare-fun m!393523 () Bool)

(assert (=> b!398795 m!393523))

(declare-fun m!393525 () Bool)

(assert (=> b!398799 m!393525))

(declare-fun m!393527 () Bool)

(assert (=> bm!27956 m!393527))

(declare-fun m!393529 () Bool)

(assert (=> bm!27956 m!393529))

(declare-fun m!393531 () Bool)

(assert (=> b!398803 m!393531))

(declare-fun m!393533 () Bool)

(assert (=> b!398796 m!393533))

(assert (=> bm!27955 m!393527))

(declare-fun m!393535 () Bool)

(assert (=> bm!27955 m!393535))

(declare-fun m!393537 () Bool)

(assert (=> b!398802 m!393537))

(check-sat (not b!398803) (not b_next!9099) (not b!398791) (not b!398794) (not b!398802) (not start!38570) tp_is_empty!9981 (not bm!27955) (not b!398795) (not b!398796) (not b!398792) (not b!398793) b_and!16503 (not b!398799) (not mapNonEmpty!16593) (not bm!27956))
(check-sat b_and!16503 (not b_next!9099))
