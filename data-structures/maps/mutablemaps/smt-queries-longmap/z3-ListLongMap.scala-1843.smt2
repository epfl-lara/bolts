; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33406 () Bool)

(assert start!33406)

(declare-fun b!331520 () Bool)

(declare-fun e!203460 () Bool)

(declare-datatypes ((array!16957 0))(
  ( (array!16958 (arr!8013 (Array (_ BitVec 32) (_ BitVec 64))) (size!8365 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16957)

(assert (=> b!331520 (= e!203460 (and (bvsle #b00000000000000000000000000000000 (size!8365 _keys!1895)) (bvsge (size!8365 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!331521 () Bool)

(declare-fun res!182715 () Bool)

(assert (=> b!331521 (=> (not res!182715) (not e!203460))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9885 0))(
  ( (V!9886 (val!3385 Int)) )
))
(declare-datatypes ((ValueCell!2997 0))(
  ( (ValueCellFull!2997 (v!5539 V!9885)) (EmptyCell!2997) )
))
(declare-datatypes ((array!16959 0))(
  ( (array!16960 (arr!8014 (Array (_ BitVec 32) ValueCell!2997)) (size!8366 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16959)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331521 (= res!182715 (and (= (size!8366 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8365 _keys!1895) (size!8366 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331522 () Bool)

(declare-fun e!203461 () Bool)

(declare-fun tp_is_empty!6681 () Bool)

(assert (=> b!331522 (= e!203461 tp_is_empty!6681)))

(declare-fun res!182714 () Bool)

(assert (=> start!33406 (=> (not res!182714) (not e!203460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33406 (= res!182714 (validMask!0 mask!2385))))

(assert (=> start!33406 e!203460))

(assert (=> start!33406 true))

(declare-fun e!203459 () Bool)

(declare-fun array_inv!5962 (array!16959) Bool)

(assert (=> start!33406 (and (array_inv!5962 _values!1525) e!203459)))

(declare-fun array_inv!5963 (array!16957) Bool)

(assert (=> start!33406 (array_inv!5963 _keys!1895)))

(declare-fun mapIsEmpty!11397 () Bool)

(declare-fun mapRes!11397 () Bool)

(assert (=> mapIsEmpty!11397 mapRes!11397))

(declare-fun mapNonEmpty!11397 () Bool)

(declare-fun tp!23772 () Bool)

(declare-fun e!203458 () Bool)

(assert (=> mapNonEmpty!11397 (= mapRes!11397 (and tp!23772 e!203458))))

(declare-fun mapRest!11397 () (Array (_ BitVec 32) ValueCell!2997))

(declare-fun mapKey!11397 () (_ BitVec 32))

(declare-fun mapValue!11397 () ValueCell!2997)

(assert (=> mapNonEmpty!11397 (= (arr!8014 _values!1525) (store mapRest!11397 mapKey!11397 mapValue!11397))))

(declare-fun b!331523 () Bool)

(assert (=> b!331523 (= e!203458 tp_is_empty!6681)))

(declare-fun b!331524 () Bool)

(declare-fun res!182713 () Bool)

(assert (=> b!331524 (=> (not res!182713) (not e!203460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16957 (_ BitVec 32)) Bool)

(assert (=> b!331524 (= res!182713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331525 () Bool)

(assert (=> b!331525 (= e!203459 (and e!203461 mapRes!11397))))

(declare-fun condMapEmpty!11397 () Bool)

(declare-fun mapDefault!11397 () ValueCell!2997)

(assert (=> b!331525 (= condMapEmpty!11397 (= (arr!8014 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!2997)) mapDefault!11397)))))

(assert (= (and start!33406 res!182714) b!331521))

(assert (= (and b!331521 res!182715) b!331524))

(assert (= (and b!331524 res!182713) b!331520))

(assert (= (and b!331525 condMapEmpty!11397) mapIsEmpty!11397))

(assert (= (and b!331525 (not condMapEmpty!11397)) mapNonEmpty!11397))

(get-info :version)

(assert (= (and mapNonEmpty!11397 ((_ is ValueCellFull!2997) mapValue!11397)) b!331523))

(assert (= (and b!331525 ((_ is ValueCellFull!2997) mapDefault!11397)) b!331522))

(assert (= start!33406 b!331525))

(declare-fun m!336333 () Bool)

(assert (=> start!33406 m!336333))

(declare-fun m!336335 () Bool)

(assert (=> start!33406 m!336335))

(declare-fun m!336337 () Bool)

(assert (=> start!33406 m!336337))

(declare-fun m!336339 () Bool)

(assert (=> mapNonEmpty!11397 m!336339))

(declare-fun m!336341 () Bool)

(assert (=> b!331524 m!336341))

(check-sat (not start!33406) (not b!331524) (not mapNonEmpty!11397) tp_is_empty!6681)
(check-sat)
(get-model)

(declare-fun d!70335 () Bool)

(assert (=> d!70335 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33406 d!70335))

(declare-fun d!70337 () Bool)

(assert (=> d!70337 (= (array_inv!5962 _values!1525) (bvsge (size!8366 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33406 d!70337))

(declare-fun d!70339 () Bool)

(assert (=> d!70339 (= (array_inv!5963 _keys!1895) (bvsge (size!8365 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33406 d!70339))

(declare-fun d!70341 () Bool)

(declare-fun res!182730 () Bool)

(declare-fun e!203483 () Bool)

(assert (=> d!70341 (=> res!182730 e!203483)))

(assert (=> d!70341 (= res!182730 (bvsge #b00000000000000000000000000000000 (size!8365 _keys!1895)))))

(assert (=> d!70341 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!203483)))

(declare-fun b!331552 () Bool)

(declare-fun e!203484 () Bool)

(assert (=> b!331552 (= e!203483 e!203484)))

(declare-fun c!51995 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!331552 (= c!51995 (validKeyInArray!0 (select (arr!8013 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!331553 () Bool)

(declare-fun call!26198 () Bool)

(assert (=> b!331553 (= e!203484 call!26198)))

(declare-fun b!331554 () Bool)

(declare-fun e!203485 () Bool)

(assert (=> b!331554 (= e!203484 e!203485)))

(declare-fun lt!158875 () (_ BitVec 64))

(assert (=> b!331554 (= lt!158875 (select (arr!8013 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10354 0))(
  ( (Unit!10355) )
))
(declare-fun lt!158876 () Unit!10354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16957 (_ BitVec 64) (_ BitVec 32)) Unit!10354)

(assert (=> b!331554 (= lt!158876 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!158875 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!16957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!331554 (arrayContainsKey!0 _keys!1895 lt!158875 #b00000000000000000000000000000000)))

(declare-fun lt!158874 () Unit!10354)

(assert (=> b!331554 (= lt!158874 lt!158876)))

(declare-fun res!182729 () Bool)

(declare-datatypes ((SeekEntryResult!3139 0))(
  ( (MissingZero!3139 (index!14735 (_ BitVec 32))) (Found!3139 (index!14736 (_ BitVec 32))) (Intermediate!3139 (undefined!3951 Bool) (index!14737 (_ BitVec 32)) (x!33024 (_ BitVec 32))) (Undefined!3139) (MissingVacant!3139 (index!14738 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16957 (_ BitVec 32)) SeekEntryResult!3139)

(assert (=> b!331554 (= res!182729 (= (seekEntryOrOpen!0 (select (arr!8013 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3139 #b00000000000000000000000000000000)))))

(assert (=> b!331554 (=> (not res!182729) (not e!203485))))

(declare-fun b!331555 () Bool)

(assert (=> b!331555 (= e!203485 call!26198)))

(declare-fun bm!26195 () Bool)

(assert (=> bm!26195 (= call!26198 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(assert (= (and d!70341 (not res!182730)) b!331552))

(assert (= (and b!331552 c!51995) b!331554))

(assert (= (and b!331552 (not c!51995)) b!331553))

(assert (= (and b!331554 res!182729) b!331555))

(assert (= (or b!331555 b!331553) bm!26195))

(declare-fun m!336353 () Bool)

(assert (=> b!331552 m!336353))

(assert (=> b!331552 m!336353))

(declare-fun m!336355 () Bool)

(assert (=> b!331552 m!336355))

(assert (=> b!331554 m!336353))

(declare-fun m!336357 () Bool)

(assert (=> b!331554 m!336357))

(declare-fun m!336359 () Bool)

(assert (=> b!331554 m!336359))

(assert (=> b!331554 m!336353))

(declare-fun m!336361 () Bool)

(assert (=> b!331554 m!336361))

(declare-fun m!336363 () Bool)

(assert (=> bm!26195 m!336363))

(assert (=> b!331524 d!70341))

(declare-fun b!331563 () Bool)

(declare-fun e!203491 () Bool)

(assert (=> b!331563 (= e!203491 tp_is_empty!6681)))

(declare-fun mapNonEmpty!11403 () Bool)

(declare-fun mapRes!11403 () Bool)

(declare-fun tp!23778 () Bool)

(declare-fun e!203490 () Bool)

(assert (=> mapNonEmpty!11403 (= mapRes!11403 (and tp!23778 e!203490))))

(declare-fun mapValue!11403 () ValueCell!2997)

(declare-fun mapKey!11403 () (_ BitVec 32))

(declare-fun mapRest!11403 () (Array (_ BitVec 32) ValueCell!2997))

(assert (=> mapNonEmpty!11403 (= mapRest!11397 (store mapRest!11403 mapKey!11403 mapValue!11403))))

(declare-fun condMapEmpty!11403 () Bool)

(declare-fun mapDefault!11403 () ValueCell!2997)

(assert (=> mapNonEmpty!11397 (= condMapEmpty!11403 (= mapRest!11397 ((as const (Array (_ BitVec 32) ValueCell!2997)) mapDefault!11403)))))

(assert (=> mapNonEmpty!11397 (= tp!23772 (and e!203491 mapRes!11403))))

(declare-fun b!331562 () Bool)

(assert (=> b!331562 (= e!203490 tp_is_empty!6681)))

(declare-fun mapIsEmpty!11403 () Bool)

(assert (=> mapIsEmpty!11403 mapRes!11403))

(assert (= (and mapNonEmpty!11397 condMapEmpty!11403) mapIsEmpty!11403))

(assert (= (and mapNonEmpty!11397 (not condMapEmpty!11403)) mapNonEmpty!11403))

(assert (= (and mapNonEmpty!11403 ((_ is ValueCellFull!2997) mapValue!11403)) b!331562))

(assert (= (and mapNonEmpty!11397 ((_ is ValueCellFull!2997) mapDefault!11403)) b!331563))

(declare-fun m!336365 () Bool)

(assert (=> mapNonEmpty!11403 m!336365))

(check-sat (not mapNonEmpty!11403) (not bm!26195) (not b!331552) tp_is_empty!6681 (not b!331554))
(check-sat)
