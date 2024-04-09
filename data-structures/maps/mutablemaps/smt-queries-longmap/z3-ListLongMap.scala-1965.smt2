; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34564 () Bool)

(assert start!34564)

(declare-fun b_free!7461 () Bool)

(declare-fun b_next!7461 () Bool)

(assert (=> start!34564 (= b_free!7461 (not b_next!7461))))

(declare-fun tp!25932 () Bool)

(declare-fun b_and!14689 () Bool)

(assert (=> start!34564 (= tp!25932 b_and!14689)))

(declare-fun b!345200 () Bool)

(declare-fun res!191048 () Bool)

(declare-fun e!211586 () Bool)

(assert (=> b!345200 (=> (not res!191048) (not e!211586))))

(declare-datatypes ((array!18381 0))(
  ( (array!18382 (arr!8703 (Array (_ BitVec 32) (_ BitVec 64))) (size!9055 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18381)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18381 (_ BitVec 32)) Bool)

(assert (=> b!345200 (= res!191048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12561 () Bool)

(declare-fun mapRes!12561 () Bool)

(assert (=> mapIsEmpty!12561 mapRes!12561))

(declare-fun b!345201 () Bool)

(declare-fun e!211589 () Bool)

(declare-fun tp_is_empty!7413 () Bool)

(assert (=> b!345201 (= e!211589 tp_is_empty!7413)))

(declare-fun b!345202 () Bool)

(declare-fun e!211585 () Bool)

(assert (=> b!345202 (= e!211586 e!211585)))

(declare-fun res!191050 () Bool)

(assert (=> b!345202 (=> (not res!191050) (not e!211585))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3352 0))(
  ( (MissingZero!3352 (index!15587 (_ BitVec 32))) (Found!3352 (index!15588 (_ BitVec 32))) (Intermediate!3352 (undefined!4164 Bool) (index!15589 (_ BitVec 32)) (x!34399 (_ BitVec 32))) (Undefined!3352) (MissingVacant!3352 (index!15590 (_ BitVec 32))) )
))
(declare-fun lt!162822 () SeekEntryResult!3352)

(get-info :version)

(assert (=> b!345202 (= res!191050 (and ((_ is Found!3352) lt!162822) (= (select (arr!8703 _keys!1895) (index!15588 lt!162822)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18381 (_ BitVec 32)) SeekEntryResult!3352)

(assert (=> b!345202 (= lt!162822 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!345203 () Bool)

(declare-fun res!191051 () Bool)

(assert (=> b!345203 (=> (not res!191051) (not e!211586))))

(declare-datatypes ((List!5063 0))(
  ( (Nil!5060) (Cons!5059 (h!5915 (_ BitVec 64)) (t!10189 List!5063)) )
))
(declare-fun arrayNoDuplicates!0 (array!18381 (_ BitVec 32) List!5063) Bool)

(assert (=> b!345203 (= res!191051 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5060))))

(declare-fun mapNonEmpty!12561 () Bool)

(declare-fun tp!25931 () Bool)

(assert (=> mapNonEmpty!12561 (= mapRes!12561 (and tp!25931 e!211589))))

(declare-datatypes ((V!10861 0))(
  ( (V!10862 (val!3751 Int)) )
))
(declare-datatypes ((ValueCell!3363 0))(
  ( (ValueCellFull!3363 (v!5924 V!10861)) (EmptyCell!3363) )
))
(declare-fun mapRest!12561 () (Array (_ BitVec 32) ValueCell!3363))

(declare-fun mapKey!12561 () (_ BitVec 32))

(declare-fun mapValue!12561 () ValueCell!3363)

(declare-datatypes ((array!18383 0))(
  ( (array!18384 (arr!8704 (Array (_ BitVec 32) ValueCell!3363)) (size!9056 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18383)

(assert (=> mapNonEmpty!12561 (= (arr!8704 _values!1525) (store mapRest!12561 mapKey!12561 mapValue!12561))))

(declare-fun res!191047 () Bool)

(assert (=> start!34564 (=> (not res!191047) (not e!211586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34564 (= res!191047 (validMask!0 mask!2385))))

(assert (=> start!34564 e!211586))

(assert (=> start!34564 true))

(assert (=> start!34564 tp_is_empty!7413))

(assert (=> start!34564 tp!25932))

(declare-fun e!211587 () Bool)

(declare-fun array_inv!6436 (array!18383) Bool)

(assert (=> start!34564 (and (array_inv!6436 _values!1525) e!211587)))

(declare-fun array_inv!6437 (array!18381) Bool)

(assert (=> start!34564 (array_inv!6437 _keys!1895)))

(declare-fun b!345204 () Bool)

(declare-fun res!191045 () Bool)

(assert (=> b!345204 (=> (not res!191045) (not e!211586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345204 (= res!191045 (validKeyInArray!0 k0!1348))))

(declare-fun b!345205 () Bool)

(declare-fun res!191049 () Bool)

(assert (=> b!345205 (=> (not res!191049) (not e!211586))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!345205 (= res!191049 (and (= (size!9056 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9055 _keys!1895) (size!9056 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!345206 () Bool)

(declare-fun arrayContainsKey!0 (array!18381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!345206 (= e!211585 (not (arrayContainsKey!0 _keys!1895 k0!1348 (index!15588 lt!162822))))))

(declare-fun b!345207 () Bool)

(declare-fun e!211590 () Bool)

(assert (=> b!345207 (= e!211587 (and e!211590 mapRes!12561))))

(declare-fun condMapEmpty!12561 () Bool)

(declare-fun mapDefault!12561 () ValueCell!3363)

(assert (=> b!345207 (= condMapEmpty!12561 (= (arr!8704 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3363)) mapDefault!12561)))))

(declare-fun b!345208 () Bool)

(declare-fun res!191046 () Bool)

(assert (=> b!345208 (=> (not res!191046) (not e!211586))))

(declare-fun zeroValue!1467 () V!10861)

(declare-fun minValue!1467 () V!10861)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5414 0))(
  ( (tuple2!5415 (_1!2717 (_ BitVec 64)) (_2!2717 V!10861)) )
))
(declare-datatypes ((List!5064 0))(
  ( (Nil!5061) (Cons!5060 (h!5916 tuple2!5414) (t!10190 List!5064)) )
))
(declare-datatypes ((ListLongMap!4341 0))(
  ( (ListLongMap!4342 (toList!2186 List!5064)) )
))
(declare-fun contains!2241 (ListLongMap!4341 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1706 (array!18381 array!18383 (_ BitVec 32) (_ BitVec 32) V!10861 V!10861 (_ BitVec 32) Int) ListLongMap!4341)

(assert (=> b!345208 (= res!191046 (not (contains!2241 (getCurrentListMap!1706 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!345209 () Bool)

(assert (=> b!345209 (= e!211590 tp_is_empty!7413)))

(assert (= (and start!34564 res!191047) b!345205))

(assert (= (and b!345205 res!191049) b!345200))

(assert (= (and b!345200 res!191048) b!345203))

(assert (= (and b!345203 res!191051) b!345204))

(assert (= (and b!345204 res!191045) b!345208))

(assert (= (and b!345208 res!191046) b!345202))

(assert (= (and b!345202 res!191050) b!345206))

(assert (= (and b!345207 condMapEmpty!12561) mapIsEmpty!12561))

(assert (= (and b!345207 (not condMapEmpty!12561)) mapNonEmpty!12561))

(assert (= (and mapNonEmpty!12561 ((_ is ValueCellFull!3363) mapValue!12561)) b!345201))

(assert (= (and b!345207 ((_ is ValueCellFull!3363) mapDefault!12561)) b!345209))

(assert (= start!34564 b!345207))

(declare-fun m!346621 () Bool)

(assert (=> b!345200 m!346621))

(declare-fun m!346623 () Bool)

(assert (=> start!34564 m!346623))

(declare-fun m!346625 () Bool)

(assert (=> start!34564 m!346625))

(declare-fun m!346627 () Bool)

(assert (=> start!34564 m!346627))

(declare-fun m!346629 () Bool)

(assert (=> b!345203 m!346629))

(declare-fun m!346631 () Bool)

(assert (=> b!345208 m!346631))

(assert (=> b!345208 m!346631))

(declare-fun m!346633 () Bool)

(assert (=> b!345208 m!346633))

(declare-fun m!346635 () Bool)

(assert (=> b!345204 m!346635))

(declare-fun m!346637 () Bool)

(assert (=> b!345206 m!346637))

(declare-fun m!346639 () Bool)

(assert (=> mapNonEmpty!12561 m!346639))

(declare-fun m!346641 () Bool)

(assert (=> b!345202 m!346641))

(declare-fun m!346643 () Bool)

(assert (=> b!345202 m!346643))

(check-sat (not mapNonEmpty!12561) (not b!345203) (not b!345208) tp_is_empty!7413 b_and!14689 (not b!345202) (not b!345204) (not b_next!7461) (not start!34564) (not b!345200) (not b!345206))
(check-sat b_and!14689 (not b_next!7461))
(get-model)

(declare-fun d!71007 () Bool)

(declare-fun res!191077 () Bool)

(declare-fun e!211613 () Bool)

(assert (=> d!71007 (=> res!191077 e!211613)))

(assert (=> d!71007 (= res!191077 (= (select (arr!8703 _keys!1895) (index!15588 lt!162822)) k0!1348))))

(assert (=> d!71007 (= (arrayContainsKey!0 _keys!1895 k0!1348 (index!15588 lt!162822)) e!211613)))

(declare-fun b!345244 () Bool)

(declare-fun e!211614 () Bool)

(assert (=> b!345244 (= e!211613 e!211614)))

(declare-fun res!191078 () Bool)

(assert (=> b!345244 (=> (not res!191078) (not e!211614))))

(assert (=> b!345244 (= res!191078 (bvslt (bvadd (index!15588 lt!162822) #b00000000000000000000000000000001) (size!9055 _keys!1895)))))

(declare-fun b!345245 () Bool)

(assert (=> b!345245 (= e!211614 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd (index!15588 lt!162822) #b00000000000000000000000000000001)))))

(assert (= (and d!71007 (not res!191077)) b!345244))

(assert (= (and b!345244 res!191078) b!345245))

(assert (=> d!71007 m!346641))

(declare-fun m!346669 () Bool)

(assert (=> b!345245 m!346669))

(assert (=> b!345206 d!71007))

(declare-fun d!71009 () Bool)

(declare-fun res!191086 () Bool)

(declare-fun e!211626 () Bool)

(assert (=> d!71009 (=> res!191086 e!211626)))

(assert (=> d!71009 (= res!191086 (bvsge #b00000000000000000000000000000000 (size!9055 _keys!1895)))))

(assert (=> d!71009 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5060) e!211626)))

(declare-fun b!345256 () Bool)

(declare-fun e!211625 () Bool)

(declare-fun call!26699 () Bool)

(assert (=> b!345256 (= e!211625 call!26699)))

(declare-fun bm!26696 () Bool)

(declare-fun c!52916 () Bool)

(assert (=> bm!26696 (= call!26699 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52916 (Cons!5059 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000) Nil!5060) Nil!5060)))))

(declare-fun b!345257 () Bool)

(assert (=> b!345257 (= e!211625 call!26699)))

(declare-fun b!345258 () Bool)

(declare-fun e!211623 () Bool)

(assert (=> b!345258 (= e!211623 e!211625)))

(assert (=> b!345258 (= c!52916 (validKeyInArray!0 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345259 () Bool)

(declare-fun e!211624 () Bool)

(declare-fun contains!2242 (List!5063 (_ BitVec 64)) Bool)

(assert (=> b!345259 (= e!211624 (contains!2242 Nil!5060 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345260 () Bool)

(assert (=> b!345260 (= e!211626 e!211623)))

(declare-fun res!191087 () Bool)

(assert (=> b!345260 (=> (not res!191087) (not e!211623))))

(assert (=> b!345260 (= res!191087 (not e!211624))))

(declare-fun res!191085 () Bool)

(assert (=> b!345260 (=> (not res!191085) (not e!211624))))

(assert (=> b!345260 (= res!191085 (validKeyInArray!0 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71009 (not res!191086)) b!345260))

(assert (= (and b!345260 res!191085) b!345259))

(assert (= (and b!345260 res!191087) b!345258))

(assert (= (and b!345258 c!52916) b!345257))

(assert (= (and b!345258 (not c!52916)) b!345256))

(assert (= (or b!345257 b!345256) bm!26696))

(declare-fun m!346671 () Bool)

(assert (=> bm!26696 m!346671))

(declare-fun m!346673 () Bool)

(assert (=> bm!26696 m!346673))

(assert (=> b!345258 m!346671))

(assert (=> b!345258 m!346671))

(declare-fun m!346675 () Bool)

(assert (=> b!345258 m!346675))

(assert (=> b!345259 m!346671))

(assert (=> b!345259 m!346671))

(declare-fun m!346677 () Bool)

(assert (=> b!345259 m!346677))

(assert (=> b!345260 m!346671))

(assert (=> b!345260 m!346671))

(assert (=> b!345260 m!346675))

(assert (=> b!345203 d!71009))

(declare-fun b!345273 () Bool)

(declare-fun e!211634 () SeekEntryResult!3352)

(declare-fun lt!162832 () SeekEntryResult!3352)

(assert (=> b!345273 (= e!211634 (Found!3352 (index!15589 lt!162832)))))

(declare-fun b!345274 () Bool)

(declare-fun e!211635 () SeekEntryResult!3352)

(assert (=> b!345274 (= e!211635 (MissingZero!3352 (index!15589 lt!162832)))))

(declare-fun b!345275 () Bool)

(declare-fun e!211633 () SeekEntryResult!3352)

(assert (=> b!345275 (= e!211633 Undefined!3352)))

(declare-fun b!345276 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18381 (_ BitVec 32)) SeekEntryResult!3352)

(assert (=> b!345276 (= e!211635 (seekKeyOrZeroReturnVacant!0 (x!34399 lt!162832) (index!15589 lt!162832) (index!15589 lt!162832) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!345277 () Bool)

(assert (=> b!345277 (= e!211633 e!211634)))

(declare-fun lt!162833 () (_ BitVec 64))

(assert (=> b!345277 (= lt!162833 (select (arr!8703 _keys!1895) (index!15589 lt!162832)))))

(declare-fun c!52924 () Bool)

(assert (=> b!345277 (= c!52924 (= lt!162833 k0!1348))))

(declare-fun d!71011 () Bool)

(declare-fun lt!162834 () SeekEntryResult!3352)

(assert (=> d!71011 (and (or ((_ is Undefined!3352) lt!162834) (not ((_ is Found!3352) lt!162834)) (and (bvsge (index!15588 lt!162834) #b00000000000000000000000000000000) (bvslt (index!15588 lt!162834) (size!9055 _keys!1895)))) (or ((_ is Undefined!3352) lt!162834) ((_ is Found!3352) lt!162834) (not ((_ is MissingZero!3352) lt!162834)) (and (bvsge (index!15587 lt!162834) #b00000000000000000000000000000000) (bvslt (index!15587 lt!162834) (size!9055 _keys!1895)))) (or ((_ is Undefined!3352) lt!162834) ((_ is Found!3352) lt!162834) ((_ is MissingZero!3352) lt!162834) (not ((_ is MissingVacant!3352) lt!162834)) (and (bvsge (index!15590 lt!162834) #b00000000000000000000000000000000) (bvslt (index!15590 lt!162834) (size!9055 _keys!1895)))) (or ((_ is Undefined!3352) lt!162834) (ite ((_ is Found!3352) lt!162834) (= (select (arr!8703 _keys!1895) (index!15588 lt!162834)) k0!1348) (ite ((_ is MissingZero!3352) lt!162834) (= (select (arr!8703 _keys!1895) (index!15587 lt!162834)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3352) lt!162834) (= (select (arr!8703 _keys!1895) (index!15590 lt!162834)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71011 (= lt!162834 e!211633)))

(declare-fun c!52925 () Bool)

(assert (=> d!71011 (= c!52925 (and ((_ is Intermediate!3352) lt!162832) (undefined!4164 lt!162832)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18381 (_ BitVec 32)) SeekEntryResult!3352)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71011 (= lt!162832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71011 (validMask!0 mask!2385)))

(assert (=> d!71011 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!162834)))

(declare-fun b!345278 () Bool)

(declare-fun c!52923 () Bool)

(assert (=> b!345278 (= c!52923 (= lt!162833 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!345278 (= e!211634 e!211635)))

(assert (= (and d!71011 c!52925) b!345275))

(assert (= (and d!71011 (not c!52925)) b!345277))

(assert (= (and b!345277 c!52924) b!345273))

(assert (= (and b!345277 (not c!52924)) b!345278))

(assert (= (and b!345278 c!52923) b!345274))

(assert (= (and b!345278 (not c!52923)) b!345276))

(declare-fun m!346679 () Bool)

(assert (=> b!345276 m!346679))

(declare-fun m!346681 () Bool)

(assert (=> b!345277 m!346681))

(declare-fun m!346683 () Bool)

(assert (=> d!71011 m!346683))

(declare-fun m!346685 () Bool)

(assert (=> d!71011 m!346685))

(assert (=> d!71011 m!346685))

(declare-fun m!346687 () Bool)

(assert (=> d!71011 m!346687))

(assert (=> d!71011 m!346623))

(declare-fun m!346689 () Bool)

(assert (=> d!71011 m!346689))

(declare-fun m!346691 () Bool)

(assert (=> d!71011 m!346691))

(assert (=> b!345202 d!71011))

(declare-fun d!71013 () Bool)

(assert (=> d!71013 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34564 d!71013))

(declare-fun d!71015 () Bool)

(assert (=> d!71015 (= (array_inv!6436 _values!1525) (bvsge (size!9056 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34564 d!71015))

(declare-fun d!71017 () Bool)

(assert (=> d!71017 (= (array_inv!6437 _keys!1895) (bvsge (size!9055 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34564 d!71017))

(declare-fun d!71019 () Bool)

(declare-fun res!191092 () Bool)

(declare-fun e!211644 () Bool)

(assert (=> d!71019 (=> res!191092 e!211644)))

(assert (=> d!71019 (= res!191092 (bvsge #b00000000000000000000000000000000 (size!9055 _keys!1895)))))

(assert (=> d!71019 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!211644)))

(declare-fun b!345287 () Bool)

(declare-fun e!211642 () Bool)

(declare-fun e!211643 () Bool)

(assert (=> b!345287 (= e!211642 e!211643)))

(declare-fun lt!162841 () (_ BitVec 64))

(assert (=> b!345287 (= lt!162841 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10728 0))(
  ( (Unit!10729) )
))
(declare-fun lt!162842 () Unit!10728)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18381 (_ BitVec 64) (_ BitVec 32)) Unit!10728)

(assert (=> b!345287 (= lt!162842 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!162841 #b00000000000000000000000000000000))))

(assert (=> b!345287 (arrayContainsKey!0 _keys!1895 lt!162841 #b00000000000000000000000000000000)))

(declare-fun lt!162843 () Unit!10728)

(assert (=> b!345287 (= lt!162843 lt!162842)))

(declare-fun res!191093 () Bool)

(assert (=> b!345287 (= res!191093 (= (seekEntryOrOpen!0 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3352 #b00000000000000000000000000000000)))))

(assert (=> b!345287 (=> (not res!191093) (not e!211643))))

(declare-fun b!345288 () Bool)

(declare-fun call!26702 () Bool)

(assert (=> b!345288 (= e!211643 call!26702)))

(declare-fun bm!26699 () Bool)

(assert (=> bm!26699 (= call!26702 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!345289 () Bool)

(assert (=> b!345289 (= e!211642 call!26702)))

(declare-fun b!345290 () Bool)

(assert (=> b!345290 (= e!211644 e!211642)))

(declare-fun c!52928 () Bool)

(assert (=> b!345290 (= c!52928 (validKeyInArray!0 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71019 (not res!191092)) b!345290))

(assert (= (and b!345290 c!52928) b!345287))

(assert (= (and b!345290 (not c!52928)) b!345289))

(assert (= (and b!345287 res!191093) b!345288))

(assert (= (or b!345288 b!345289) bm!26699))

(assert (=> b!345287 m!346671))

(declare-fun m!346693 () Bool)

(assert (=> b!345287 m!346693))

(declare-fun m!346695 () Bool)

(assert (=> b!345287 m!346695))

(assert (=> b!345287 m!346671))

(declare-fun m!346697 () Bool)

(assert (=> b!345287 m!346697))

(declare-fun m!346699 () Bool)

(assert (=> bm!26699 m!346699))

(assert (=> b!345290 m!346671))

(assert (=> b!345290 m!346671))

(assert (=> b!345290 m!346675))

(assert (=> b!345200 d!71019))

(declare-fun d!71021 () Bool)

(declare-fun e!211650 () Bool)

(assert (=> d!71021 e!211650))

(declare-fun res!191096 () Bool)

(assert (=> d!71021 (=> res!191096 e!211650)))

(declare-fun lt!162853 () Bool)

(assert (=> d!71021 (= res!191096 (not lt!162853))))

(declare-fun lt!162854 () Bool)

(assert (=> d!71021 (= lt!162853 lt!162854)))

(declare-fun lt!162852 () Unit!10728)

(declare-fun e!211649 () Unit!10728)

(assert (=> d!71021 (= lt!162852 e!211649)))

(declare-fun c!52931 () Bool)

(assert (=> d!71021 (= c!52931 lt!162854)))

(declare-fun containsKey!330 (List!5064 (_ BitVec 64)) Bool)

(assert (=> d!71021 (= lt!162854 (containsKey!330 (toList!2186 (getCurrentListMap!1706 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71021 (= (contains!2241 (getCurrentListMap!1706 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!162853)))

(declare-fun b!345297 () Bool)

(declare-fun lt!162855 () Unit!10728)

(assert (=> b!345297 (= e!211649 lt!162855)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!279 (List!5064 (_ BitVec 64)) Unit!10728)

(assert (=> b!345297 (= lt!162855 (lemmaContainsKeyImpliesGetValueByKeyDefined!279 (toList!2186 (getCurrentListMap!1706 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!344 0))(
  ( (Some!343 (v!5926 V!10861)) (None!342) )
))
(declare-fun isDefined!280 (Option!344) Bool)

(declare-fun getValueByKey!338 (List!5064 (_ BitVec 64)) Option!344)

(assert (=> b!345297 (isDefined!280 (getValueByKey!338 (toList!2186 (getCurrentListMap!1706 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!345298 () Bool)

(declare-fun Unit!10730 () Unit!10728)

(assert (=> b!345298 (= e!211649 Unit!10730)))

(declare-fun b!345299 () Bool)

(assert (=> b!345299 (= e!211650 (isDefined!280 (getValueByKey!338 (toList!2186 (getCurrentListMap!1706 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71021 c!52931) b!345297))

(assert (= (and d!71021 (not c!52931)) b!345298))

(assert (= (and d!71021 (not res!191096)) b!345299))

(declare-fun m!346701 () Bool)

(assert (=> d!71021 m!346701))

(declare-fun m!346703 () Bool)

(assert (=> b!345297 m!346703))

(declare-fun m!346705 () Bool)

(assert (=> b!345297 m!346705))

(assert (=> b!345297 m!346705))

(declare-fun m!346707 () Bool)

(assert (=> b!345297 m!346707))

(assert (=> b!345299 m!346705))

(assert (=> b!345299 m!346705))

(assert (=> b!345299 m!346707))

(assert (=> b!345208 d!71021))

(declare-fun d!71023 () Bool)

(declare-fun e!211682 () Bool)

(assert (=> d!71023 e!211682))

(declare-fun res!191122 () Bool)

(assert (=> d!71023 (=> (not res!191122) (not e!211682))))

(assert (=> d!71023 (= res!191122 (or (bvsge #b00000000000000000000000000000000 (size!9055 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9055 _keys!1895)))))))

(declare-fun lt!162913 () ListLongMap!4341)

(declare-fun lt!162912 () ListLongMap!4341)

(assert (=> d!71023 (= lt!162913 lt!162912)))

(declare-fun lt!162916 () Unit!10728)

(declare-fun e!211684 () Unit!10728)

(assert (=> d!71023 (= lt!162916 e!211684)))

(declare-fun c!52948 () Bool)

(declare-fun e!211688 () Bool)

(assert (=> d!71023 (= c!52948 e!211688)))

(declare-fun res!191120 () Bool)

(assert (=> d!71023 (=> (not res!191120) (not e!211688))))

(assert (=> d!71023 (= res!191120 (bvslt #b00000000000000000000000000000000 (size!9055 _keys!1895)))))

(declare-fun e!211679 () ListLongMap!4341)

(assert (=> d!71023 (= lt!162912 e!211679)))

(declare-fun c!52946 () Bool)

(assert (=> d!71023 (= c!52946 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71023 (validMask!0 mask!2385)))

(assert (=> d!71023 (= (getCurrentListMap!1706 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!162913)))

(declare-fun b!345342 () Bool)

(declare-fun e!211677 () Bool)

(assert (=> b!345342 (= e!211682 e!211677)))

(declare-fun c!52944 () Bool)

(assert (=> b!345342 (= c!52944 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!345343 () Bool)

(declare-fun e!211685 () Bool)

(declare-fun e!211689 () Bool)

(assert (=> b!345343 (= e!211685 e!211689)))

(declare-fun res!191115 () Bool)

(declare-fun call!26718 () Bool)

(assert (=> b!345343 (= res!191115 call!26718)))

(assert (=> b!345343 (=> (not res!191115) (not e!211689))))

(declare-fun b!345344 () Bool)

(declare-fun e!211680 () Bool)

(declare-fun apply!281 (ListLongMap!4341 (_ BitVec 64)) V!10861)

(assert (=> b!345344 (= e!211680 (= (apply!281 lt!162913 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!345345 () Bool)

(declare-fun call!26719 () ListLongMap!4341)

(declare-fun +!725 (ListLongMap!4341 tuple2!5414) ListLongMap!4341)

(assert (=> b!345345 (= e!211679 (+!725 call!26719 (tuple2!5415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!26714 () Bool)

(declare-fun call!26717 () ListLongMap!4341)

(assert (=> bm!26714 (= call!26717 call!26719)))

(declare-fun b!345346 () Bool)

(declare-fun Unit!10731 () Unit!10728)

(assert (=> b!345346 (= e!211684 Unit!10731)))

(declare-fun b!345347 () Bool)

(assert (=> b!345347 (= e!211689 (= (apply!281 lt!162913 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!345348 () Bool)

(declare-fun c!52949 () Bool)

(assert (=> b!345348 (= c!52949 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!211681 () ListLongMap!4341)

(declare-fun e!211687 () ListLongMap!4341)

(assert (=> b!345348 (= e!211681 e!211687)))

(declare-fun b!345349 () Bool)

(assert (=> b!345349 (= e!211687 call!26717)))

(declare-fun call!26721 () ListLongMap!4341)

(declare-fun bm!26715 () Bool)

(declare-fun call!26722 () ListLongMap!4341)

(declare-fun c!52947 () Bool)

(declare-fun call!26723 () ListLongMap!4341)

(assert (=> bm!26715 (= call!26719 (+!725 (ite c!52946 call!26723 (ite c!52947 call!26721 call!26722)) (ite (or c!52946 c!52947) (tuple2!5415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!345350 () Bool)

(declare-fun lt!162920 () Unit!10728)

(assert (=> b!345350 (= e!211684 lt!162920)))

(declare-fun lt!162904 () ListLongMap!4341)

(declare-fun getCurrentListMapNoExtraKeys!600 (array!18381 array!18383 (_ BitVec 32) (_ BitVec 32) V!10861 V!10861 (_ BitVec 32) Int) ListLongMap!4341)

(assert (=> b!345350 (= lt!162904 (getCurrentListMapNoExtraKeys!600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162919 () (_ BitVec 64))

(assert (=> b!345350 (= lt!162919 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162902 () (_ BitVec 64))

(assert (=> b!345350 (= lt!162902 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162921 () Unit!10728)

(declare-fun addStillContains!257 (ListLongMap!4341 (_ BitVec 64) V!10861 (_ BitVec 64)) Unit!10728)

(assert (=> b!345350 (= lt!162921 (addStillContains!257 lt!162904 lt!162919 zeroValue!1467 lt!162902))))

(assert (=> b!345350 (contains!2241 (+!725 lt!162904 (tuple2!5415 lt!162919 zeroValue!1467)) lt!162902)))

(declare-fun lt!162900 () Unit!10728)

(assert (=> b!345350 (= lt!162900 lt!162921)))

(declare-fun lt!162905 () ListLongMap!4341)

(assert (=> b!345350 (= lt!162905 (getCurrentListMapNoExtraKeys!600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162906 () (_ BitVec 64))

(assert (=> b!345350 (= lt!162906 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162909 () (_ BitVec 64))

(assert (=> b!345350 (= lt!162909 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162910 () Unit!10728)

(declare-fun addApplyDifferent!257 (ListLongMap!4341 (_ BitVec 64) V!10861 (_ BitVec 64)) Unit!10728)

(assert (=> b!345350 (= lt!162910 (addApplyDifferent!257 lt!162905 lt!162906 minValue!1467 lt!162909))))

(assert (=> b!345350 (= (apply!281 (+!725 lt!162905 (tuple2!5415 lt!162906 minValue!1467)) lt!162909) (apply!281 lt!162905 lt!162909))))

(declare-fun lt!162915 () Unit!10728)

(assert (=> b!345350 (= lt!162915 lt!162910)))

(declare-fun lt!162917 () ListLongMap!4341)

(assert (=> b!345350 (= lt!162917 (getCurrentListMapNoExtraKeys!600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162914 () (_ BitVec 64))

(assert (=> b!345350 (= lt!162914 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162918 () (_ BitVec 64))

(assert (=> b!345350 (= lt!162918 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162911 () Unit!10728)

(assert (=> b!345350 (= lt!162911 (addApplyDifferent!257 lt!162917 lt!162914 zeroValue!1467 lt!162918))))

(assert (=> b!345350 (= (apply!281 (+!725 lt!162917 (tuple2!5415 lt!162914 zeroValue!1467)) lt!162918) (apply!281 lt!162917 lt!162918))))

(declare-fun lt!162907 () Unit!10728)

(assert (=> b!345350 (= lt!162907 lt!162911)))

(declare-fun lt!162903 () ListLongMap!4341)

(assert (=> b!345350 (= lt!162903 (getCurrentListMapNoExtraKeys!600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162901 () (_ BitVec 64))

(assert (=> b!345350 (= lt!162901 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162908 () (_ BitVec 64))

(assert (=> b!345350 (= lt!162908 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!345350 (= lt!162920 (addApplyDifferent!257 lt!162903 lt!162901 minValue!1467 lt!162908))))

(assert (=> b!345350 (= (apply!281 (+!725 lt!162903 (tuple2!5415 lt!162901 minValue!1467)) lt!162908) (apply!281 lt!162903 lt!162908))))

(declare-fun b!345351 () Bool)

(assert (=> b!345351 (= e!211685 (not call!26718))))

(declare-fun bm!26716 () Bool)

(assert (=> bm!26716 (= call!26718 (contains!2241 lt!162913 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26717 () Bool)

(assert (=> bm!26717 (= call!26722 call!26721)))

(declare-fun b!345352 () Bool)

(declare-fun e!211683 () Bool)

(assert (=> b!345352 (= e!211683 (validKeyInArray!0 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345353 () Bool)

(declare-fun res!191117 () Bool)

(assert (=> b!345353 (=> (not res!191117) (not e!211682))))

(declare-fun e!211686 () Bool)

(assert (=> b!345353 (= res!191117 e!211686)))

(declare-fun res!191119 () Bool)

(assert (=> b!345353 (=> res!191119 e!211686)))

(assert (=> b!345353 (= res!191119 (not e!211683))))

(declare-fun res!191116 () Bool)

(assert (=> b!345353 (=> (not res!191116) (not e!211683))))

(assert (=> b!345353 (= res!191116 (bvslt #b00000000000000000000000000000000 (size!9055 _keys!1895)))))

(declare-fun b!345354 () Bool)

(assert (=> b!345354 (= e!211687 call!26722)))

(declare-fun b!345355 () Bool)

(assert (=> b!345355 (= e!211681 call!26717)))

(declare-fun b!345356 () Bool)

(assert (=> b!345356 (= e!211677 e!211680)))

(declare-fun res!191123 () Bool)

(declare-fun call!26720 () Bool)

(assert (=> b!345356 (= res!191123 call!26720)))

(assert (=> b!345356 (=> (not res!191123) (not e!211680))))

(declare-fun b!345357 () Bool)

(assert (=> b!345357 (= e!211679 e!211681)))

(assert (=> b!345357 (= c!52947 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!211678 () Bool)

(declare-fun b!345358 () Bool)

(declare-fun get!4698 (ValueCell!3363 V!10861) V!10861)

(declare-fun dynLambda!619 (Int (_ BitVec 64)) V!10861)

(assert (=> b!345358 (= e!211678 (= (apply!281 lt!162913 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000)) (get!4698 (select (arr!8704 _values!1525) #b00000000000000000000000000000000) (dynLambda!619 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!345358 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9056 _values!1525)))))

(assert (=> b!345358 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9055 _keys!1895)))))

(declare-fun b!345359 () Bool)

(assert (=> b!345359 (= e!211686 e!211678)))

(declare-fun res!191121 () Bool)

(assert (=> b!345359 (=> (not res!191121) (not e!211678))))

(assert (=> b!345359 (= res!191121 (contains!2241 lt!162913 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!345359 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9055 _keys!1895)))))

(declare-fun bm!26718 () Bool)

(assert (=> bm!26718 (= call!26720 (contains!2241 lt!162913 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26719 () Bool)

(assert (=> bm!26719 (= call!26721 call!26723)))

(declare-fun b!345360 () Bool)

(declare-fun res!191118 () Bool)

(assert (=> b!345360 (=> (not res!191118) (not e!211682))))

(assert (=> b!345360 (= res!191118 e!211685)))

(declare-fun c!52945 () Bool)

(assert (=> b!345360 (= c!52945 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!345361 () Bool)

(assert (=> b!345361 (= e!211688 (validKeyInArray!0 (select (arr!8703 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26720 () Bool)

(assert (=> bm!26720 (= call!26723 (getCurrentListMapNoExtraKeys!600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!345362 () Bool)

(assert (=> b!345362 (= e!211677 (not call!26720))))

(assert (= (and d!71023 c!52946) b!345345))

(assert (= (and d!71023 (not c!52946)) b!345357))

(assert (= (and b!345357 c!52947) b!345355))

(assert (= (and b!345357 (not c!52947)) b!345348))

(assert (= (and b!345348 c!52949) b!345349))

(assert (= (and b!345348 (not c!52949)) b!345354))

(assert (= (or b!345349 b!345354) bm!26717))

(assert (= (or b!345355 bm!26717) bm!26719))

(assert (= (or b!345355 b!345349) bm!26714))

(assert (= (or b!345345 bm!26719) bm!26720))

(assert (= (or b!345345 bm!26714) bm!26715))

(assert (= (and d!71023 res!191120) b!345361))

(assert (= (and d!71023 c!52948) b!345350))

(assert (= (and d!71023 (not c!52948)) b!345346))

(assert (= (and d!71023 res!191122) b!345353))

(assert (= (and b!345353 res!191116) b!345352))

(assert (= (and b!345353 (not res!191119)) b!345359))

(assert (= (and b!345359 res!191121) b!345358))

(assert (= (and b!345353 res!191117) b!345360))

(assert (= (and b!345360 c!52945) b!345343))

(assert (= (and b!345360 (not c!52945)) b!345351))

(assert (= (and b!345343 res!191115) b!345347))

(assert (= (or b!345343 b!345351) bm!26716))

(assert (= (and b!345360 res!191118) b!345342))

(assert (= (and b!345342 c!52944) b!345356))

(assert (= (and b!345342 (not c!52944)) b!345362))

(assert (= (and b!345356 res!191123) b!345344))

(assert (= (or b!345356 b!345362) bm!26718))

(declare-fun b_lambda!8493 () Bool)

(assert (=> (not b_lambda!8493) (not b!345358)))

(declare-fun t!10192 () Bool)

(declare-fun tb!3085 () Bool)

(assert (=> (and start!34564 (= defaultEntry!1528 defaultEntry!1528) t!10192) tb!3085))

(declare-fun result!5569 () Bool)

(assert (=> tb!3085 (= result!5569 tp_is_empty!7413)))

(assert (=> b!345358 t!10192))

(declare-fun b_and!14693 () Bool)

(assert (= b_and!14689 (and (=> t!10192 result!5569) b_and!14693)))

(declare-fun m!346709 () Bool)

(assert (=> bm!26720 m!346709))

(declare-fun m!346711 () Bool)

(assert (=> b!345345 m!346711))

(declare-fun m!346713 () Bool)

(assert (=> bm!26716 m!346713))

(declare-fun m!346715 () Bool)

(assert (=> bm!26718 m!346715))

(assert (=> d!71023 m!346623))

(declare-fun m!346717 () Bool)

(assert (=> b!345347 m!346717))

(assert (=> b!345352 m!346671))

(assert (=> b!345352 m!346671))

(assert (=> b!345352 m!346675))

(declare-fun m!346719 () Bool)

(assert (=> bm!26715 m!346719))

(assert (=> b!345361 m!346671))

(assert (=> b!345361 m!346671))

(assert (=> b!345361 m!346675))

(declare-fun m!346721 () Bool)

(assert (=> b!345350 m!346721))

(declare-fun m!346723 () Bool)

(assert (=> b!345350 m!346723))

(assert (=> b!345350 m!346709))

(declare-fun m!346725 () Bool)

(assert (=> b!345350 m!346725))

(declare-fun m!346727 () Bool)

(assert (=> b!345350 m!346727))

(declare-fun m!346729 () Bool)

(assert (=> b!345350 m!346729))

(declare-fun m!346731 () Bool)

(assert (=> b!345350 m!346731))

(declare-fun m!346733 () Bool)

(assert (=> b!345350 m!346733))

(declare-fun m!346735 () Bool)

(assert (=> b!345350 m!346735))

(assert (=> b!345350 m!346723))

(declare-fun m!346737 () Bool)

(assert (=> b!345350 m!346737))

(declare-fun m!346739 () Bool)

(assert (=> b!345350 m!346739))

(declare-fun m!346741 () Bool)

(assert (=> b!345350 m!346741))

(assert (=> b!345350 m!346735))

(declare-fun m!346743 () Bool)

(assert (=> b!345350 m!346743))

(declare-fun m!346745 () Bool)

(assert (=> b!345350 m!346745))

(assert (=> b!345350 m!346729))

(declare-fun m!346747 () Bool)

(assert (=> b!345350 m!346747))

(assert (=> b!345350 m!346671))

(assert (=> b!345350 m!346739))

(declare-fun m!346749 () Bool)

(assert (=> b!345350 m!346749))

(declare-fun m!346751 () Bool)

(assert (=> b!345344 m!346751))

(assert (=> b!345358 m!346671))

(declare-fun m!346753 () Bool)

(assert (=> b!345358 m!346753))

(assert (=> b!345358 m!346753))

(declare-fun m!346755 () Bool)

(assert (=> b!345358 m!346755))

(declare-fun m!346757 () Bool)

(assert (=> b!345358 m!346757))

(assert (=> b!345358 m!346671))

(declare-fun m!346759 () Bool)

(assert (=> b!345358 m!346759))

(assert (=> b!345358 m!346755))

(assert (=> b!345359 m!346671))

(assert (=> b!345359 m!346671))

(declare-fun m!346761 () Bool)

(assert (=> b!345359 m!346761))

(assert (=> b!345208 d!71023))

(declare-fun d!71025 () Bool)

(assert (=> d!71025 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!345204 d!71025))

(declare-fun b!345372 () Bool)

(declare-fun e!211695 () Bool)

(assert (=> b!345372 (= e!211695 tp_is_empty!7413)))

(declare-fun b!345371 () Bool)

(declare-fun e!211694 () Bool)

(assert (=> b!345371 (= e!211694 tp_is_empty!7413)))

(declare-fun condMapEmpty!12567 () Bool)

(declare-fun mapDefault!12567 () ValueCell!3363)

(assert (=> mapNonEmpty!12561 (= condMapEmpty!12567 (= mapRest!12561 ((as const (Array (_ BitVec 32) ValueCell!3363)) mapDefault!12567)))))

(declare-fun mapRes!12567 () Bool)

(assert (=> mapNonEmpty!12561 (= tp!25931 (and e!211695 mapRes!12567))))

(declare-fun mapIsEmpty!12567 () Bool)

(assert (=> mapIsEmpty!12567 mapRes!12567))

(declare-fun mapNonEmpty!12567 () Bool)

(declare-fun tp!25941 () Bool)

(assert (=> mapNonEmpty!12567 (= mapRes!12567 (and tp!25941 e!211694))))

(declare-fun mapKey!12567 () (_ BitVec 32))

(declare-fun mapRest!12567 () (Array (_ BitVec 32) ValueCell!3363))

(declare-fun mapValue!12567 () ValueCell!3363)

(assert (=> mapNonEmpty!12567 (= mapRest!12561 (store mapRest!12567 mapKey!12567 mapValue!12567))))

(assert (= (and mapNonEmpty!12561 condMapEmpty!12567) mapIsEmpty!12567))

(assert (= (and mapNonEmpty!12561 (not condMapEmpty!12567)) mapNonEmpty!12567))

(assert (= (and mapNonEmpty!12567 ((_ is ValueCellFull!3363) mapValue!12567)) b!345371))

(assert (= (and mapNonEmpty!12561 ((_ is ValueCellFull!3363) mapDefault!12567)) b!345372))

(declare-fun m!346763 () Bool)

(assert (=> mapNonEmpty!12567 m!346763))

(declare-fun b_lambda!8495 () Bool)

(assert (= b_lambda!8493 (or (and start!34564 b_free!7461) b_lambda!8495)))

(check-sat (not b!345352) (not bm!26716) (not b!345260) (not bm!26715) (not b!345299) (not b!345358) (not bm!26696) (not b!345245) tp_is_empty!7413 (not d!71011) (not b!345345) (not bm!26720) (not b!345297) b_and!14693 (not b!345287) (not b!345347) (not d!71023) (not b!345359) (not b_lambda!8495) (not b!345361) (not b!345290) (not b_next!7461) (not b!345344) (not b!345258) (not b!345259) (not bm!26699) (not b!345350) (not d!71021) (not b!345276) (not mapNonEmpty!12567) (not bm!26718))
(check-sat b_and!14693 (not b_next!7461))
