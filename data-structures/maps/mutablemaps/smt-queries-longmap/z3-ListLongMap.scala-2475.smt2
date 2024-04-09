; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38678 () Bool)

(assert start!38678)

(declare-fun b_free!9207 () Bool)

(declare-fun b_next!9207 () Bool)

(assert (=> start!38678 (= b_free!9207 (not b_next!9207))))

(declare-fun tp!32745 () Bool)

(declare-fun b_and!16611 () Bool)

(assert (=> start!38678 (= tp!32745 b_and!16611)))

(declare-fun b!401542 () Bool)

(declare-fun e!242074 () Bool)

(declare-fun tp_is_empty!10089 () Bool)

(assert (=> b!401542 (= e!242074 tp_is_empty!10089)))

(declare-datatypes ((V!14557 0))(
  ( (V!14558 (val!5089 Int)) )
))
(declare-fun minValue!515 () V!14557)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6690 0))(
  ( (tuple2!6691 (_1!3355 (_ BitVec 64)) (_2!3355 V!14557)) )
))
(declare-datatypes ((List!6638 0))(
  ( (Nil!6635) (Cons!6634 (h!7490 tuple2!6690) (t!11820 List!6638)) )
))
(declare-datatypes ((ListLongMap!5617 0))(
  ( (ListLongMap!5618 (toList!2824 List!6638)) )
))
(declare-fun call!28282 () ListLongMap!5617)

(declare-datatypes ((ValueCell!4701 0))(
  ( (ValueCellFull!4701 (v!7332 V!14557)) (EmptyCell!4701) )
))
(declare-datatypes ((array!24051 0))(
  ( (array!24052 (arr!11472 (Array (_ BitVec 32) ValueCell!4701)) (size!11824 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24051)

(declare-fun zeroValue!515 () V!14557)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun c!54692 () Bool)

(declare-datatypes ((array!24053 0))(
  ( (array!24054 (arr!11473 (Array (_ BitVec 32) (_ BitVec 64))) (size!11825 (_ BitVec 32))) )
))
(declare-fun lt!187809 () array!24053)

(declare-fun v!412 () V!14557)

(declare-fun _keys!709 () array!24053)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun bm!28279 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1038 (array!24053 array!24051 (_ BitVec 32) (_ BitVec 32) V!14557 V!14557 (_ BitVec 32) Int) ListLongMap!5617)

(assert (=> bm!28279 (= call!28282 (getCurrentListMapNoExtraKeys!1038 (ite c!54692 lt!187809 _keys!709) (ite c!54692 (array!24052 (store (arr!11472 _values!549) i!563 (ValueCellFull!4701 v!412)) (size!11824 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16755 () Bool)

(declare-fun mapRes!16755 () Bool)

(assert (=> mapIsEmpty!16755 mapRes!16755))

(declare-fun b!401543 () Bool)

(declare-fun res!231254 () Bool)

(declare-fun e!242069 () Bool)

(assert (=> b!401543 (=> (not res!231254) (not e!242069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401543 (= res!231254 (validMask!0 mask!1025))))

(declare-fun b!401544 () Bool)

(declare-fun res!231260 () Bool)

(assert (=> b!401544 (=> (not res!231260) (not e!242069))))

(assert (=> b!401544 (= res!231260 (and (= (size!11824 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11825 _keys!709) (size!11824 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401545 () Bool)

(declare-fun res!231261 () Bool)

(assert (=> b!401545 (=> (not res!231261) (not e!242069))))

(declare-datatypes ((List!6639 0))(
  ( (Nil!6636) (Cons!6635 (h!7491 (_ BitVec 64)) (t!11821 List!6639)) )
))
(declare-fun arrayNoDuplicates!0 (array!24053 (_ BitVec 32) List!6639) Bool)

(assert (=> b!401545 (= res!231261 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6636))))

(declare-fun b!401546 () Bool)

(declare-fun res!231256 () Bool)

(assert (=> b!401546 (=> (not res!231256) (not e!242069))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401546 (= res!231256 (validKeyInArray!0 k0!794))))

(declare-fun b!401547 () Bool)

(declare-fun res!231263 () Bool)

(declare-fun e!242073 () Bool)

(assert (=> b!401547 (=> (not res!231263) (not e!242073))))

(assert (=> b!401547 (= res!231263 (arrayNoDuplicates!0 lt!187809 #b00000000000000000000000000000000 Nil!6636))))

(declare-fun mapNonEmpty!16755 () Bool)

(declare-fun tp!32744 () Bool)

(assert (=> mapNonEmpty!16755 (= mapRes!16755 (and tp!32744 e!242074))))

(declare-fun mapKey!16755 () (_ BitVec 32))

(declare-fun mapValue!16755 () ValueCell!4701)

(declare-fun mapRest!16755 () (Array (_ BitVec 32) ValueCell!4701))

(assert (=> mapNonEmpty!16755 (= (arr!11472 _values!549) (store mapRest!16755 mapKey!16755 mapValue!16755))))

(declare-fun b!401548 () Bool)

(declare-fun res!231258 () Bool)

(assert (=> b!401548 (=> (not res!231258) (not e!242069))))

(declare-fun arrayContainsKey!0 (array!24053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401548 (= res!231258 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!401549 () Bool)

(declare-fun res!231264 () Bool)

(assert (=> b!401549 (=> (not res!231264) (not e!242069))))

(assert (=> b!401549 (= res!231264 (or (= (select (arr!11473 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11473 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!231259 () Bool)

(assert (=> start!38678 (=> (not res!231259) (not e!242069))))

(assert (=> start!38678 (= res!231259 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11825 _keys!709))))))

(assert (=> start!38678 e!242069))

(assert (=> start!38678 tp_is_empty!10089))

(assert (=> start!38678 tp!32745))

(assert (=> start!38678 true))

(declare-fun e!242070 () Bool)

(declare-fun array_inv!8390 (array!24051) Bool)

(assert (=> start!38678 (and (array_inv!8390 _values!549) e!242070)))

(declare-fun array_inv!8391 (array!24053) Bool)

(assert (=> start!38678 (array_inv!8391 _keys!709)))

(declare-fun b!401550 () Bool)

(declare-fun res!231262 () Bool)

(assert (=> b!401550 (=> (not res!231262) (not e!242073))))

(assert (=> b!401550 (= res!231262 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11825 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401551 () Bool)

(declare-fun e!242068 () Bool)

(declare-fun call!28283 () ListLongMap!5617)

(assert (=> b!401551 (= e!242068 (= call!28283 call!28282))))

(declare-fun bm!28280 () Bool)

(assert (=> bm!28280 (= call!28283 (getCurrentListMapNoExtraKeys!1038 (ite c!54692 _keys!709 lt!187809) (ite c!54692 _values!549 (array!24052 (store (arr!11472 _values!549) i!563 (ValueCellFull!4701 v!412)) (size!11824 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401552 () Bool)

(declare-fun e!242072 () Bool)

(assert (=> b!401552 (= e!242072 tp_is_empty!10089)))

(declare-fun b!401553 () Bool)

(assert (=> b!401553 (= e!242070 (and e!242072 mapRes!16755))))

(declare-fun condMapEmpty!16755 () Bool)

(declare-fun mapDefault!16755 () ValueCell!4701)

(assert (=> b!401553 (= condMapEmpty!16755 (= (arr!11472 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4701)) mapDefault!16755)))))

(declare-fun b!401554 () Bool)

(declare-fun res!231257 () Bool)

(assert (=> b!401554 (=> (not res!231257) (not e!242069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24053 (_ BitVec 32)) Bool)

(assert (=> b!401554 (= res!231257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!401555 () Bool)

(declare-fun res!231253 () Bool)

(assert (=> b!401555 (=> (not res!231253) (not e!242069))))

(assert (=> b!401555 (= res!231253 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11825 _keys!709))))))

(declare-fun b!401556 () Bool)

(assert (=> b!401556 (= e!242073 (not true))))

(assert (=> b!401556 e!242068))

(assert (=> b!401556 (= c!54692 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12111 0))(
  ( (Unit!12112) )
))
(declare-fun lt!187808 () Unit!12111)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!318 (array!24053 array!24051 (_ BitVec 32) (_ BitVec 32) V!14557 V!14557 (_ BitVec 32) (_ BitVec 64) V!14557 (_ BitVec 32) Int) Unit!12111)

(assert (=> b!401556 (= lt!187808 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!318 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401557 () Bool)

(assert (=> b!401557 (= e!242069 e!242073)))

(declare-fun res!231255 () Bool)

(assert (=> b!401557 (=> (not res!231255) (not e!242073))))

(assert (=> b!401557 (= res!231255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187809 mask!1025))))

(assert (=> b!401557 (= lt!187809 (array!24054 (store (arr!11473 _keys!709) i!563 k0!794) (size!11825 _keys!709)))))

(declare-fun b!401558 () Bool)

(declare-fun +!1106 (ListLongMap!5617 tuple2!6690) ListLongMap!5617)

(assert (=> b!401558 (= e!242068 (= call!28282 (+!1106 call!28283 (tuple2!6691 k0!794 v!412))))))

(assert (= (and start!38678 res!231259) b!401543))

(assert (= (and b!401543 res!231254) b!401544))

(assert (= (and b!401544 res!231260) b!401554))

(assert (= (and b!401554 res!231257) b!401545))

(assert (= (and b!401545 res!231261) b!401555))

(assert (= (and b!401555 res!231253) b!401546))

(assert (= (and b!401546 res!231256) b!401549))

(assert (= (and b!401549 res!231264) b!401548))

(assert (= (and b!401548 res!231258) b!401557))

(assert (= (and b!401557 res!231255) b!401547))

(assert (= (and b!401547 res!231263) b!401550))

(assert (= (and b!401550 res!231262) b!401556))

(assert (= (and b!401556 c!54692) b!401558))

(assert (= (and b!401556 (not c!54692)) b!401551))

(assert (= (or b!401558 b!401551) bm!28279))

(assert (= (or b!401558 b!401551) bm!28280))

(assert (= (and b!401553 condMapEmpty!16755) mapIsEmpty!16755))

(assert (= (and b!401553 (not condMapEmpty!16755)) mapNonEmpty!16755))

(get-info :version)

(assert (= (and mapNonEmpty!16755 ((_ is ValueCellFull!4701) mapValue!16755)) b!401542))

(assert (= (and b!401553 ((_ is ValueCellFull!4701) mapDefault!16755)) b!401552))

(assert (= start!38678 b!401553))

(declare-fun m!395341 () Bool)

(assert (=> b!401545 m!395341))

(declare-fun m!395343 () Bool)

(assert (=> b!401547 m!395343))

(declare-fun m!395345 () Bool)

(assert (=> start!38678 m!395345))

(declare-fun m!395347 () Bool)

(assert (=> start!38678 m!395347))

(declare-fun m!395349 () Bool)

(assert (=> mapNonEmpty!16755 m!395349))

(declare-fun m!395351 () Bool)

(assert (=> b!401558 m!395351))

(declare-fun m!395353 () Bool)

(assert (=> bm!28279 m!395353))

(declare-fun m!395355 () Bool)

(assert (=> bm!28279 m!395355))

(declare-fun m!395357 () Bool)

(assert (=> b!401557 m!395357))

(declare-fun m!395359 () Bool)

(assert (=> b!401557 m!395359))

(declare-fun m!395361 () Bool)

(assert (=> b!401546 m!395361))

(declare-fun m!395363 () Bool)

(assert (=> b!401549 m!395363))

(declare-fun m!395365 () Bool)

(assert (=> b!401556 m!395365))

(declare-fun m!395367 () Bool)

(assert (=> b!401543 m!395367))

(assert (=> bm!28280 m!395353))

(declare-fun m!395369 () Bool)

(assert (=> bm!28280 m!395369))

(declare-fun m!395371 () Bool)

(assert (=> b!401554 m!395371))

(declare-fun m!395373 () Bool)

(assert (=> b!401548 m!395373))

(check-sat (not b!401546) tp_is_empty!10089 (not b!401545) (not b!401556) (not b_next!9207) (not start!38678) (not b!401543) (not b!401547) (not b!401548) (not b!401558) (not bm!28279) (not b!401557) (not mapNonEmpty!16755) b_and!16611 (not bm!28280) (not b!401554))
(check-sat b_and!16611 (not b_next!9207))
