; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38750 () Bool)

(assert start!38750)

(declare-fun b_free!9279 () Bool)

(declare-fun b_next!9279 () Bool)

(assert (=> start!38750 (= b_free!9279 (not b_next!9279))))

(declare-fun tp!32960 () Bool)

(declare-fun b_and!16683 () Bool)

(assert (=> start!38750 (= tp!32960 b_and!16683)))

(declare-fun b!403378 () Bool)

(declare-fun e!242826 () Bool)

(declare-fun tp_is_empty!10161 () Bool)

(assert (=> b!403378 (= e!242826 tp_is_empty!10161)))

(declare-datatypes ((V!14653 0))(
  ( (V!14654 (val!5125 Int)) )
))
(declare-fun minValue!515 () V!14653)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14653)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6760 0))(
  ( (tuple2!6761 (_1!3390 (_ BitVec 64)) (_2!3390 V!14653)) )
))
(declare-datatypes ((List!6699 0))(
  ( (Nil!6696) (Cons!6695 (h!7551 tuple2!6760) (t!11881 List!6699)) )
))
(declare-datatypes ((ListLongMap!5687 0))(
  ( (ListLongMap!5688 (toList!2859 List!6699)) )
))
(declare-fun call!28498 () ListLongMap!5687)

(declare-fun c!54800 () Bool)

(declare-fun v!412 () V!14653)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24193 0))(
  ( (array!24194 (arr!11543 (Array (_ BitVec 32) (_ BitVec 64))) (size!11895 (_ BitVec 32))) )
))
(declare-fun lt!188025 () array!24193)

(declare-fun _keys!709 () array!24193)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4737 0))(
  ( (ValueCellFull!4737 (v!7368 V!14653)) (EmptyCell!4737) )
))
(declare-datatypes ((array!24195 0))(
  ( (array!24196 (arr!11544 (Array (_ BitVec 32) ValueCell!4737)) (size!11896 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24195)

(declare-fun bm!28495 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1070 (array!24193 array!24195 (_ BitVec 32) (_ BitVec 32) V!14653 V!14653 (_ BitVec 32) Int) ListLongMap!5687)

(assert (=> bm!28495 (= call!28498 (getCurrentListMapNoExtraKeys!1070 (ite c!54800 lt!188025 _keys!709) (ite c!54800 (array!24196 (store (arr!11544 _values!549) i!563 (ValueCellFull!4737 v!412)) (size!11896 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16863 () Bool)

(declare-fun mapRes!16863 () Bool)

(assert (=> mapIsEmpty!16863 mapRes!16863))

(declare-fun b!403379 () Bool)

(declare-fun res!232557 () Bool)

(declare-fun e!242827 () Bool)

(assert (=> b!403379 (=> (not res!232557) (not e!242827))))

(assert (=> b!403379 (= res!232557 (or (= (select (arr!11543 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11543 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!403380 () Bool)

(declare-fun e!242824 () Bool)

(declare-fun call!28499 () ListLongMap!5687)

(assert (=> b!403380 (= e!242824 (= call!28499 call!28498))))

(declare-fun b!403382 () Bool)

(declare-fun res!232556 () Bool)

(assert (=> b!403382 (=> (not res!232556) (not e!242827))))

(declare-datatypes ((List!6700 0))(
  ( (Nil!6697) (Cons!6696 (h!7552 (_ BitVec 64)) (t!11882 List!6700)) )
))
(declare-fun arrayNoDuplicates!0 (array!24193 (_ BitVec 32) List!6700) Bool)

(assert (=> b!403382 (= res!232556 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6697))))

(declare-fun b!403383 () Bool)

(declare-fun res!232551 () Bool)

(declare-fun e!242825 () Bool)

(assert (=> b!403383 (=> (not res!232551) (not e!242825))))

(assert (=> b!403383 (= res!232551 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11895 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!403384 () Bool)

(declare-fun e!242829 () Bool)

(assert (=> b!403384 (= e!242829 (and e!242826 mapRes!16863))))

(declare-fun condMapEmpty!16863 () Bool)

(declare-fun mapDefault!16863 () ValueCell!4737)

(assert (=> b!403384 (= condMapEmpty!16863 (= (arr!11544 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4737)) mapDefault!16863)))))

(declare-fun b!403385 () Bool)

(assert (=> b!403385 (= e!242825 (not true))))

(assert (=> b!403385 e!242824))

(assert (=> b!403385 (= c!54800 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12161 0))(
  ( (Unit!12162) )
))
(declare-fun lt!188024 () Unit!12161)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!343 (array!24193 array!24195 (_ BitVec 32) (_ BitVec 32) V!14653 V!14653 (_ BitVec 32) (_ BitVec 64) V!14653 (_ BitVec 32) Int) Unit!12161)

(assert (=> b!403385 (= lt!188024 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!343 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403386 () Bool)

(declare-fun +!1133 (ListLongMap!5687 tuple2!6760) ListLongMap!5687)

(assert (=> b!403386 (= e!242824 (= call!28498 (+!1133 call!28499 (tuple2!6761 k0!794 v!412))))))

(declare-fun b!403387 () Bool)

(declare-fun res!232554 () Bool)

(assert (=> b!403387 (=> (not res!232554) (not e!242825))))

(assert (=> b!403387 (= res!232554 (arrayNoDuplicates!0 lt!188025 #b00000000000000000000000000000000 Nil!6697))))

(declare-fun mapNonEmpty!16863 () Bool)

(declare-fun tp!32961 () Bool)

(declare-fun e!242830 () Bool)

(assert (=> mapNonEmpty!16863 (= mapRes!16863 (and tp!32961 e!242830))))

(declare-fun mapValue!16863 () ValueCell!4737)

(declare-fun mapRest!16863 () (Array (_ BitVec 32) ValueCell!4737))

(declare-fun mapKey!16863 () (_ BitVec 32))

(assert (=> mapNonEmpty!16863 (= (arr!11544 _values!549) (store mapRest!16863 mapKey!16863 mapValue!16863))))

(declare-fun b!403388 () Bool)

(declare-fun res!232550 () Bool)

(assert (=> b!403388 (=> (not res!232550) (not e!242827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24193 (_ BitVec 32)) Bool)

(assert (=> b!403388 (= res!232550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!232552 () Bool)

(assert (=> start!38750 (=> (not res!232552) (not e!242827))))

(assert (=> start!38750 (= res!232552 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11895 _keys!709))))))

(assert (=> start!38750 e!242827))

(assert (=> start!38750 tp_is_empty!10161))

(assert (=> start!38750 tp!32960))

(assert (=> start!38750 true))

(declare-fun array_inv!8434 (array!24195) Bool)

(assert (=> start!38750 (and (array_inv!8434 _values!549) e!242829)))

(declare-fun array_inv!8435 (array!24193) Bool)

(assert (=> start!38750 (array_inv!8435 _keys!709)))

(declare-fun b!403381 () Bool)

(declare-fun res!232549 () Bool)

(assert (=> b!403381 (=> (not res!232549) (not e!242827))))

(assert (=> b!403381 (= res!232549 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11895 _keys!709))))))

(declare-fun b!403389 () Bool)

(declare-fun res!232553 () Bool)

(assert (=> b!403389 (=> (not res!232553) (not e!242827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403389 (= res!232553 (validKeyInArray!0 k0!794))))

(declare-fun bm!28496 () Bool)

(assert (=> bm!28496 (= call!28499 (getCurrentListMapNoExtraKeys!1070 (ite c!54800 _keys!709 lt!188025) (ite c!54800 _values!549 (array!24196 (store (arr!11544 _values!549) i!563 (ValueCellFull!4737 v!412)) (size!11896 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403390 () Bool)

(declare-fun res!232560 () Bool)

(assert (=> b!403390 (=> (not res!232560) (not e!242827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403390 (= res!232560 (validMask!0 mask!1025))))

(declare-fun b!403391 () Bool)

(declare-fun res!232558 () Bool)

(assert (=> b!403391 (=> (not res!232558) (not e!242827))))

(assert (=> b!403391 (= res!232558 (and (= (size!11896 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11895 _keys!709) (size!11896 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403392 () Bool)

(assert (=> b!403392 (= e!242827 e!242825)))

(declare-fun res!232555 () Bool)

(assert (=> b!403392 (=> (not res!232555) (not e!242825))))

(assert (=> b!403392 (= res!232555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188025 mask!1025))))

(assert (=> b!403392 (= lt!188025 (array!24194 (store (arr!11543 _keys!709) i!563 k0!794) (size!11895 _keys!709)))))

(declare-fun b!403393 () Bool)

(assert (=> b!403393 (= e!242830 tp_is_empty!10161)))

(declare-fun b!403394 () Bool)

(declare-fun res!232559 () Bool)

(assert (=> b!403394 (=> (not res!232559) (not e!242827))))

(declare-fun arrayContainsKey!0 (array!24193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403394 (= res!232559 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!38750 res!232552) b!403390))

(assert (= (and b!403390 res!232560) b!403391))

(assert (= (and b!403391 res!232558) b!403388))

(assert (= (and b!403388 res!232550) b!403382))

(assert (= (and b!403382 res!232556) b!403381))

(assert (= (and b!403381 res!232549) b!403389))

(assert (= (and b!403389 res!232553) b!403379))

(assert (= (and b!403379 res!232557) b!403394))

(assert (= (and b!403394 res!232559) b!403392))

(assert (= (and b!403392 res!232555) b!403387))

(assert (= (and b!403387 res!232554) b!403383))

(assert (= (and b!403383 res!232551) b!403385))

(assert (= (and b!403385 c!54800) b!403386))

(assert (= (and b!403385 (not c!54800)) b!403380))

(assert (= (or b!403386 b!403380) bm!28495))

(assert (= (or b!403386 b!403380) bm!28496))

(assert (= (and b!403384 condMapEmpty!16863) mapIsEmpty!16863))

(assert (= (and b!403384 (not condMapEmpty!16863)) mapNonEmpty!16863))

(get-info :version)

(assert (= (and mapNonEmpty!16863 ((_ is ValueCellFull!4737) mapValue!16863)) b!403393))

(assert (= (and b!403384 ((_ is ValueCellFull!4737) mapDefault!16863)) b!403378))

(assert (= start!38750 b!403384))

(declare-fun m!396565 () Bool)

(assert (=> b!403379 m!396565))

(declare-fun m!396567 () Bool)

(assert (=> b!403385 m!396567))

(declare-fun m!396569 () Bool)

(assert (=> b!403390 m!396569))

(declare-fun m!396571 () Bool)

(assert (=> b!403389 m!396571))

(declare-fun m!396573 () Bool)

(assert (=> b!403382 m!396573))

(declare-fun m!396575 () Bool)

(assert (=> b!403392 m!396575))

(declare-fun m!396577 () Bool)

(assert (=> b!403392 m!396577))

(declare-fun m!396579 () Bool)

(assert (=> b!403387 m!396579))

(declare-fun m!396581 () Bool)

(assert (=> bm!28495 m!396581))

(declare-fun m!396583 () Bool)

(assert (=> bm!28495 m!396583))

(declare-fun m!396585 () Bool)

(assert (=> mapNonEmpty!16863 m!396585))

(declare-fun m!396587 () Bool)

(assert (=> b!403394 m!396587))

(assert (=> bm!28496 m!396581))

(declare-fun m!396589 () Bool)

(assert (=> bm!28496 m!396589))

(declare-fun m!396591 () Bool)

(assert (=> b!403386 m!396591))

(declare-fun m!396593 () Bool)

(assert (=> start!38750 m!396593))

(declare-fun m!396595 () Bool)

(assert (=> start!38750 m!396595))

(declare-fun m!396597 () Bool)

(assert (=> b!403388 m!396597))

(check-sat (not bm!28496) (not b_next!9279) (not b!403388) (not bm!28495) b_and!16683 (not b!403394) (not b!403382) (not b!403390) (not b!403389) tp_is_empty!10161 (not b!403386) (not start!38750) (not mapNonEmpty!16863) (not b!403387) (not b!403392) (not b!403385))
(check-sat b_and!16683 (not b_next!9279))
