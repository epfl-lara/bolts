; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38630 () Bool)

(assert start!38630)

(declare-fun b_free!9159 () Bool)

(declare-fun b_next!9159 () Bool)

(assert (=> start!38630 (= b_free!9159 (not b_next!9159))))

(declare-fun tp!32601 () Bool)

(declare-fun b_and!16563 () Bool)

(assert (=> start!38630 (= tp!32601 b_and!16563)))

(declare-fun b!400318 () Bool)

(declare-fun e!241564 () Bool)

(assert (=> b!400318 (= e!241564 (not true))))

(declare-fun e!241567 () Bool)

(assert (=> b!400318 e!241567))

(declare-fun c!54620 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400318 (= c!54620 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14493 0))(
  ( (V!14494 (val!5065 Int)) )
))
(declare-fun minValue!515 () V!14493)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4677 0))(
  ( (ValueCellFull!4677 (v!7308 V!14493)) (EmptyCell!4677) )
))
(declare-datatypes ((array!23959 0))(
  ( (array!23960 (arr!11426 (Array (_ BitVec 32) ValueCell!4677)) (size!11778 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23959)

(declare-fun zeroValue!515 () V!14493)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12083 0))(
  ( (Unit!12084) )
))
(declare-fun lt!187664 () Unit!12083)

(declare-fun v!412 () V!14493)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23961 0))(
  ( (array!23962 (arr!11427 (Array (_ BitVec 32) (_ BitVec 64))) (size!11779 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23961)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!304 (array!23961 array!23959 (_ BitVec 32) (_ BitVec 32) V!14493 V!14493 (_ BitVec 32) (_ BitVec 64) V!14493 (_ BitVec 32) Int) Unit!12083)

(assert (=> b!400318 (= lt!187664 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!304 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400320 () Bool)

(declare-fun res!230395 () Bool)

(declare-fun e!241568 () Bool)

(assert (=> b!400320 (=> (not res!230395) (not e!241568))))

(assert (=> b!400320 (= res!230395 (and (= (size!11778 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11779 _keys!709) (size!11778 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400321 () Bool)

(declare-fun res!230399 () Bool)

(assert (=> b!400321 (=> (not res!230399) (not e!241568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400321 (= res!230399 (validMask!0 mask!1025))))

(declare-fun b!400322 () Bool)

(assert (=> b!400322 (= e!241568 e!241564)))

(declare-fun res!230394 () Bool)

(assert (=> b!400322 (=> (not res!230394) (not e!241564))))

(declare-fun lt!187665 () array!23961)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23961 (_ BitVec 32)) Bool)

(assert (=> b!400322 (= res!230394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187665 mask!1025))))

(assert (=> b!400322 (= lt!187665 (array!23962 (store (arr!11427 _keys!709) i!563 k0!794) (size!11779 _keys!709)))))

(declare-fun b!400323 () Bool)

(declare-fun res!230389 () Bool)

(assert (=> b!400323 (=> (not res!230389) (not e!241568))))

(declare-datatypes ((List!6603 0))(
  ( (Nil!6600) (Cons!6599 (h!7455 (_ BitVec 64)) (t!11785 List!6603)) )
))
(declare-fun arrayNoDuplicates!0 (array!23961 (_ BitVec 32) List!6603) Bool)

(assert (=> b!400323 (= res!230389 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6600))))

(declare-fun b!400324 () Bool)

(declare-datatypes ((tuple2!6650 0))(
  ( (tuple2!6651 (_1!3335 (_ BitVec 64)) (_2!3335 V!14493)) )
))
(declare-datatypes ((List!6604 0))(
  ( (Nil!6601) (Cons!6600 (h!7456 tuple2!6650) (t!11786 List!6604)) )
))
(declare-datatypes ((ListLongMap!5577 0))(
  ( (ListLongMap!5578 (toList!2804 List!6604)) )
))
(declare-fun call!28138 () ListLongMap!5577)

(declare-fun call!28139 () ListLongMap!5577)

(assert (=> b!400324 (= e!241567 (= call!28138 call!28139))))

(declare-fun b!400325 () Bool)

(declare-fun e!241565 () Bool)

(declare-fun tp_is_empty!10041 () Bool)

(assert (=> b!400325 (= e!241565 tp_is_empty!10041)))

(declare-fun b!400326 () Bool)

(declare-fun +!1092 (ListLongMap!5577 tuple2!6650) ListLongMap!5577)

(assert (=> b!400326 (= e!241567 (= call!28139 (+!1092 call!28138 (tuple2!6651 k0!794 v!412))))))

(declare-fun mapNonEmpty!16683 () Bool)

(declare-fun mapRes!16683 () Bool)

(declare-fun tp!32600 () Bool)

(declare-fun e!241569 () Bool)

(assert (=> mapNonEmpty!16683 (= mapRes!16683 (and tp!32600 e!241569))))

(declare-fun mapRest!16683 () (Array (_ BitVec 32) ValueCell!4677))

(declare-fun mapValue!16683 () ValueCell!4677)

(declare-fun mapKey!16683 () (_ BitVec 32))

(assert (=> mapNonEmpty!16683 (= (arr!11426 _values!549) (store mapRest!16683 mapKey!16683 mapValue!16683))))

(declare-fun b!400327 () Bool)

(declare-fun res!230397 () Bool)

(assert (=> b!400327 (=> (not res!230397) (not e!241568))))

(declare-fun arrayContainsKey!0 (array!23961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400327 (= res!230397 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun bm!28135 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1019 (array!23961 array!23959 (_ BitVec 32) (_ BitVec 32) V!14493 V!14493 (_ BitVec 32) Int) ListLongMap!5577)

(assert (=> bm!28135 (= call!28139 (getCurrentListMapNoExtraKeys!1019 (ite c!54620 lt!187665 _keys!709) (ite c!54620 (array!23960 (store (arr!11426 _values!549) i!563 (ValueCellFull!4677 v!412)) (size!11778 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400328 () Bool)

(declare-fun res!230390 () Bool)

(assert (=> b!400328 (=> (not res!230390) (not e!241564))))

(assert (=> b!400328 (= res!230390 (arrayNoDuplicates!0 lt!187665 #b00000000000000000000000000000000 Nil!6600))))

(declare-fun b!400329 () Bool)

(declare-fun res!230391 () Bool)

(assert (=> b!400329 (=> (not res!230391) (not e!241568))))

(assert (=> b!400329 (= res!230391 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11779 _keys!709))))))

(declare-fun b!400330 () Bool)

(assert (=> b!400330 (= e!241569 tp_is_empty!10041)))

(declare-fun res!230400 () Bool)

(assert (=> start!38630 (=> (not res!230400) (not e!241568))))

(assert (=> start!38630 (= res!230400 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11779 _keys!709))))))

(assert (=> start!38630 e!241568))

(assert (=> start!38630 tp_is_empty!10041))

(assert (=> start!38630 tp!32601))

(assert (=> start!38630 true))

(declare-fun e!241570 () Bool)

(declare-fun array_inv!8364 (array!23959) Bool)

(assert (=> start!38630 (and (array_inv!8364 _values!549) e!241570)))

(declare-fun array_inv!8365 (array!23961) Bool)

(assert (=> start!38630 (array_inv!8365 _keys!709)))

(declare-fun b!400319 () Bool)

(assert (=> b!400319 (= e!241570 (and e!241565 mapRes!16683))))

(declare-fun condMapEmpty!16683 () Bool)

(declare-fun mapDefault!16683 () ValueCell!4677)

(assert (=> b!400319 (= condMapEmpty!16683 (= (arr!11426 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4677)) mapDefault!16683)))))

(declare-fun bm!28136 () Bool)

(assert (=> bm!28136 (= call!28138 (getCurrentListMapNoExtraKeys!1019 (ite c!54620 _keys!709 lt!187665) (ite c!54620 _values!549 (array!23960 (store (arr!11426 _values!549) i!563 (ValueCellFull!4677 v!412)) (size!11778 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400331 () Bool)

(declare-fun res!230396 () Bool)

(assert (=> b!400331 (=> (not res!230396) (not e!241568))))

(assert (=> b!400331 (= res!230396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400332 () Bool)

(declare-fun res!230393 () Bool)

(assert (=> b!400332 (=> (not res!230393) (not e!241568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400332 (= res!230393 (validKeyInArray!0 k0!794))))

(declare-fun b!400333 () Bool)

(declare-fun res!230392 () Bool)

(assert (=> b!400333 (=> (not res!230392) (not e!241568))))

(assert (=> b!400333 (= res!230392 (or (= (select (arr!11427 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11427 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16683 () Bool)

(assert (=> mapIsEmpty!16683 mapRes!16683))

(declare-fun b!400334 () Bool)

(declare-fun res!230398 () Bool)

(assert (=> b!400334 (=> (not res!230398) (not e!241564))))

(assert (=> b!400334 (= res!230398 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11779 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(assert (= (and start!38630 res!230400) b!400321))

(assert (= (and b!400321 res!230399) b!400320))

(assert (= (and b!400320 res!230395) b!400331))

(assert (= (and b!400331 res!230396) b!400323))

(assert (= (and b!400323 res!230389) b!400329))

(assert (= (and b!400329 res!230391) b!400332))

(assert (= (and b!400332 res!230393) b!400333))

(assert (= (and b!400333 res!230392) b!400327))

(assert (= (and b!400327 res!230397) b!400322))

(assert (= (and b!400322 res!230394) b!400328))

(assert (= (and b!400328 res!230390) b!400334))

(assert (= (and b!400334 res!230398) b!400318))

(assert (= (and b!400318 c!54620) b!400326))

(assert (= (and b!400318 (not c!54620)) b!400324))

(assert (= (or b!400326 b!400324) bm!28135))

(assert (= (or b!400326 b!400324) bm!28136))

(assert (= (and b!400319 condMapEmpty!16683) mapIsEmpty!16683))

(assert (= (and b!400319 (not condMapEmpty!16683)) mapNonEmpty!16683))

(get-info :version)

(assert (= (and mapNonEmpty!16683 ((_ is ValueCellFull!4677) mapValue!16683)) b!400330))

(assert (= (and b!400319 ((_ is ValueCellFull!4677) mapDefault!16683)) b!400325))

(assert (= start!38630 b!400319))

(declare-fun m!394525 () Bool)

(assert (=> b!400321 m!394525))

(declare-fun m!394527 () Bool)

(assert (=> b!400332 m!394527))

(declare-fun m!394529 () Bool)

(assert (=> b!400331 m!394529))

(declare-fun m!394531 () Bool)

(assert (=> start!38630 m!394531))

(declare-fun m!394533 () Bool)

(assert (=> start!38630 m!394533))

(declare-fun m!394535 () Bool)

(assert (=> b!400322 m!394535))

(declare-fun m!394537 () Bool)

(assert (=> b!400322 m!394537))

(declare-fun m!394539 () Bool)

(assert (=> bm!28136 m!394539))

(declare-fun m!394541 () Bool)

(assert (=> bm!28136 m!394541))

(declare-fun m!394543 () Bool)

(assert (=> b!400323 m!394543))

(declare-fun m!394545 () Bool)

(assert (=> b!400327 m!394545))

(declare-fun m!394547 () Bool)

(assert (=> b!400333 m!394547))

(assert (=> bm!28135 m!394539))

(declare-fun m!394549 () Bool)

(assert (=> bm!28135 m!394549))

(declare-fun m!394551 () Bool)

(assert (=> b!400328 m!394551))

(declare-fun m!394553 () Bool)

(assert (=> b!400326 m!394553))

(declare-fun m!394555 () Bool)

(assert (=> b!400318 m!394555))

(declare-fun m!394557 () Bool)

(assert (=> mapNonEmpty!16683 m!394557))

(check-sat (not b!400331) (not b_next!9159) (not b!400318) (not b!400332) (not bm!28136) (not b!400322) (not b!400321) (not bm!28135) (not b!400327) (not mapNonEmpty!16683) (not b!400328) (not b!400323) (not start!38630) (not b!400326) b_and!16563 tp_is_empty!10041)
(check-sat b_and!16563 (not b_next!9159))
