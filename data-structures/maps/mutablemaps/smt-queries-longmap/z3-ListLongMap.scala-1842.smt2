; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33392 () Bool)

(assert start!33392)

(declare-fun mapIsEmpty!11385 () Bool)

(declare-fun mapRes!11385 () Bool)

(assert (=> mapIsEmpty!11385 mapRes!11385))

(declare-fun b!331446 () Bool)

(declare-fun res!182680 () Bool)

(declare-fun e!203401 () Bool)

(assert (=> b!331446 (=> (not res!182680) (not e!203401))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9877 0))(
  ( (V!9878 (val!3382 Int)) )
))
(declare-datatypes ((ValueCell!2994 0))(
  ( (ValueCellFull!2994 (v!5536 V!9877)) (EmptyCell!2994) )
))
(declare-datatypes ((array!16943 0))(
  ( (array!16944 (arr!8007 (Array (_ BitVec 32) ValueCell!2994)) (size!8359 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16943)

(declare-datatypes ((array!16945 0))(
  ( (array!16946 (arr!8008 (Array (_ BitVec 32) (_ BitVec 64))) (size!8360 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16945)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331446 (= res!182680 (and (= (size!8359 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8360 _keys!1895) (size!8359 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331447 () Bool)

(declare-fun e!203397 () Bool)

(declare-fun tp_is_empty!6675 () Bool)

(assert (=> b!331447 (= e!203397 tp_is_empty!6675)))

(declare-fun b!331448 () Bool)

(declare-fun e!203399 () Bool)

(assert (=> b!331448 (= e!203399 tp_is_empty!6675)))

(declare-fun res!182681 () Bool)

(assert (=> start!33392 (=> (not res!182681) (not e!203401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33392 (= res!182681 (validMask!0 mask!2385))))

(assert (=> start!33392 e!203401))

(assert (=> start!33392 true))

(declare-fun e!203398 () Bool)

(declare-fun array_inv!5958 (array!16943) Bool)

(assert (=> start!33392 (and (array_inv!5958 _values!1525) e!203398)))

(declare-fun array_inv!5959 (array!16945) Bool)

(assert (=> start!33392 (array_inv!5959 _keys!1895)))

(declare-fun b!331449 () Bool)

(declare-fun res!182682 () Bool)

(assert (=> b!331449 (=> (not res!182682) (not e!203401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16945 (_ BitVec 32)) Bool)

(assert (=> b!331449 (= res!182682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331450 () Bool)

(assert (=> b!331450 (= e!203398 (and e!203399 mapRes!11385))))

(declare-fun condMapEmpty!11385 () Bool)

(declare-fun mapDefault!11385 () ValueCell!2994)

(assert (=> b!331450 (= condMapEmpty!11385 (= (arr!8007 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!2994)) mapDefault!11385)))))

(declare-fun mapNonEmpty!11385 () Bool)

(declare-fun tp!23760 () Bool)

(assert (=> mapNonEmpty!11385 (= mapRes!11385 (and tp!23760 e!203397))))

(declare-fun mapValue!11385 () ValueCell!2994)

(declare-fun mapKey!11385 () (_ BitVec 32))

(declare-fun mapRest!11385 () (Array (_ BitVec 32) ValueCell!2994))

(assert (=> mapNonEmpty!11385 (= (arr!8007 _values!1525) (store mapRest!11385 mapKey!11385 mapValue!11385))))

(declare-fun b!331451 () Bool)

(assert (=> b!331451 (= e!203401 (bvsgt #b00000000000000000000000000000000 (size!8360 _keys!1895)))))

(assert (= (and start!33392 res!182681) b!331446))

(assert (= (and b!331446 res!182680) b!331449))

(assert (= (and b!331449 res!182682) b!331451))

(assert (= (and b!331450 condMapEmpty!11385) mapIsEmpty!11385))

(assert (= (and b!331450 (not condMapEmpty!11385)) mapNonEmpty!11385))

(get-info :version)

(assert (= (and mapNonEmpty!11385 ((_ is ValueCellFull!2994) mapValue!11385)) b!331447))

(assert (= (and b!331450 ((_ is ValueCellFull!2994) mapDefault!11385)) b!331448))

(assert (= start!33392 b!331450))

(declare-fun m!336289 () Bool)

(assert (=> start!33392 m!336289))

(declare-fun m!336291 () Bool)

(assert (=> start!33392 m!336291))

(declare-fun m!336293 () Bool)

(assert (=> start!33392 m!336293))

(declare-fun m!336295 () Bool)

(assert (=> b!331449 m!336295))

(declare-fun m!336297 () Bool)

(assert (=> mapNonEmpty!11385 m!336297))

(check-sat (not start!33392) (not b!331449) (not mapNonEmpty!11385) tp_is_empty!6675)
(check-sat)
(get-model)

(declare-fun d!70325 () Bool)

(assert (=> d!70325 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33392 d!70325))

(declare-fun d!70327 () Bool)

(assert (=> d!70327 (= (array_inv!5958 _values!1525) (bvsge (size!8359 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33392 d!70327))

(declare-fun d!70329 () Bool)

(assert (=> d!70329 (= (array_inv!5959 _keys!1895) (bvsge (size!8360 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33392 d!70329))

(declare-fun b!331478 () Bool)

(declare-fun e!203425 () Bool)

(declare-fun call!26195 () Bool)

(assert (=> b!331478 (= e!203425 call!26195)))

(declare-fun d!70331 () Bool)

(declare-fun res!182697 () Bool)

(declare-fun e!203423 () Bool)

(assert (=> d!70331 (=> res!182697 e!203423)))

(assert (=> d!70331 (= res!182697 (bvsge #b00000000000000000000000000000000 (size!8360 _keys!1895)))))

(assert (=> d!70331 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!203423)))

(declare-fun b!331479 () Bool)

(declare-fun e!203424 () Bool)

(assert (=> b!331479 (= e!203424 e!203425)))

(declare-fun lt!158867 () (_ BitVec 64))

(assert (=> b!331479 (= lt!158867 (select (arr!8008 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10352 0))(
  ( (Unit!10353) )
))
(declare-fun lt!158866 () Unit!10352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16945 (_ BitVec 64) (_ BitVec 32)) Unit!10352)

(assert (=> b!331479 (= lt!158866 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!158867 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!16945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!331479 (arrayContainsKey!0 _keys!1895 lt!158867 #b00000000000000000000000000000000)))

(declare-fun lt!158865 () Unit!10352)

(assert (=> b!331479 (= lt!158865 lt!158866)))

(declare-fun res!182696 () Bool)

(declare-datatypes ((SeekEntryResult!3138 0))(
  ( (MissingZero!3138 (index!14731 (_ BitVec 32))) (Found!3138 (index!14732 (_ BitVec 32))) (Intermediate!3138 (undefined!3950 Bool) (index!14733 (_ BitVec 32)) (x!33013 (_ BitVec 32))) (Undefined!3138) (MissingVacant!3138 (index!14734 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16945 (_ BitVec 32)) SeekEntryResult!3138)

(assert (=> b!331479 (= res!182696 (= (seekEntryOrOpen!0 (select (arr!8008 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3138 #b00000000000000000000000000000000)))))

(assert (=> b!331479 (=> (not res!182696) (not e!203425))))

(declare-fun bm!26192 () Bool)

(assert (=> bm!26192 (= call!26195 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!331480 () Bool)

(assert (=> b!331480 (= e!203423 e!203424)))

(declare-fun c!51992 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!331480 (= c!51992 (validKeyInArray!0 (select (arr!8008 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!331481 () Bool)

(assert (=> b!331481 (= e!203424 call!26195)))

(assert (= (and d!70331 (not res!182697)) b!331480))

(assert (= (and b!331480 c!51992) b!331479))

(assert (= (and b!331480 (not c!51992)) b!331481))

(assert (= (and b!331479 res!182696) b!331478))

(assert (= (or b!331478 b!331481) bm!26192))

(declare-fun m!336309 () Bool)

(assert (=> b!331479 m!336309))

(declare-fun m!336311 () Bool)

(assert (=> b!331479 m!336311))

(declare-fun m!336313 () Bool)

(assert (=> b!331479 m!336313))

(assert (=> b!331479 m!336309))

(declare-fun m!336315 () Bool)

(assert (=> b!331479 m!336315))

(declare-fun m!336317 () Bool)

(assert (=> bm!26192 m!336317))

(assert (=> b!331480 m!336309))

(assert (=> b!331480 m!336309))

(declare-fun m!336319 () Bool)

(assert (=> b!331480 m!336319))

(assert (=> b!331449 d!70331))

(declare-fun b!331489 () Bool)

(declare-fun e!203430 () Bool)

(assert (=> b!331489 (= e!203430 tp_is_empty!6675)))

(declare-fun condMapEmpty!11391 () Bool)

(declare-fun mapDefault!11391 () ValueCell!2994)

(assert (=> mapNonEmpty!11385 (= condMapEmpty!11391 (= mapRest!11385 ((as const (Array (_ BitVec 32) ValueCell!2994)) mapDefault!11391)))))

(declare-fun mapRes!11391 () Bool)

(assert (=> mapNonEmpty!11385 (= tp!23760 (and e!203430 mapRes!11391))))

(declare-fun mapNonEmpty!11391 () Bool)

(declare-fun tp!23766 () Bool)

(declare-fun e!203431 () Bool)

(assert (=> mapNonEmpty!11391 (= mapRes!11391 (and tp!23766 e!203431))))

(declare-fun mapValue!11391 () ValueCell!2994)

(declare-fun mapRest!11391 () (Array (_ BitVec 32) ValueCell!2994))

(declare-fun mapKey!11391 () (_ BitVec 32))

(assert (=> mapNonEmpty!11391 (= mapRest!11385 (store mapRest!11391 mapKey!11391 mapValue!11391))))

(declare-fun mapIsEmpty!11391 () Bool)

(assert (=> mapIsEmpty!11391 mapRes!11391))

(declare-fun b!331488 () Bool)

(assert (=> b!331488 (= e!203431 tp_is_empty!6675)))

(assert (= (and mapNonEmpty!11385 condMapEmpty!11391) mapIsEmpty!11391))

(assert (= (and mapNonEmpty!11385 (not condMapEmpty!11391)) mapNonEmpty!11391))

(assert (= (and mapNonEmpty!11391 ((_ is ValueCellFull!2994) mapValue!11391)) b!331488))

(assert (= (and mapNonEmpty!11385 ((_ is ValueCellFull!2994) mapDefault!11391)) b!331489))

(declare-fun m!336321 () Bool)

(assert (=> mapNonEmpty!11391 m!336321))

(check-sat (not b!331479) (not bm!26192) tp_is_empty!6675 (not mapNonEmpty!11391) (not b!331480))
(check-sat)
