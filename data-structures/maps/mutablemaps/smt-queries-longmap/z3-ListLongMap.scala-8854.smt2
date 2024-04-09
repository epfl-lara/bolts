; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107428 () Bool)

(assert start!107428)

(declare-fun b!1272388 () Bool)

(declare-fun b_free!27669 () Bool)

(declare-fun b_next!27669 () Bool)

(assert (=> b!1272388 (= b_free!27669 (not b_next!27669))))

(declare-fun tp!97523 () Bool)

(declare-fun b_and!45735 () Bool)

(assert (=> b!1272388 (= tp!97523 b_and!45735)))

(declare-fun b!1272384 () Bool)

(declare-fun e!725778 () Bool)

(declare-fun tp_is_empty!33039 () Bool)

(assert (=> b!1272384 (= e!725778 tp_is_empty!33039)))

(declare-fun b!1272385 () Bool)

(declare-fun e!725783 () Bool)

(assert (=> b!1272385 (= e!725783 tp_is_empty!33039)))

(declare-fun res!846438 () Bool)

(declare-fun e!725781 () Bool)

(assert (=> start!107428 (=> (not res!846438) (not e!725781))))

(declare-datatypes ((V!49245 0))(
  ( (V!49246 (val!16594 Int)) )
))
(declare-datatypes ((ValueCell!15666 0))(
  ( (ValueCellFull!15666 (v!19229 V!49245)) (EmptyCell!15666) )
))
(declare-datatypes ((array!83275 0))(
  ( (array!83276 (arr!40167 (Array (_ BitVec 32) ValueCell!15666)) (size!40705 (_ BitVec 32))) )
))
(declare-datatypes ((array!83277 0))(
  ( (array!83278 (arr!40168 (Array (_ BitVec 32) (_ BitVec 64))) (size!40706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6096 0))(
  ( (LongMapFixedSize!6097 (defaultEntry!6694 Int) (mask!34437 (_ BitVec 32)) (extraKeys!6373 (_ BitVec 32)) (zeroValue!6479 V!49245) (minValue!6479 V!49245) (_size!3103 (_ BitVec 32)) (_keys!12098 array!83277) (_values!6717 array!83275) (_vacant!3103 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6096)

(declare-fun valid!2243 (LongMapFixedSize!6096) Bool)

(assert (=> start!107428 (= res!846438 (valid!2243 thiss!1559))))

(assert (=> start!107428 e!725781))

(declare-fun e!725780 () Bool)

(assert (=> start!107428 e!725780))

(declare-fun b!1272386 () Bool)

(declare-fun e!725779 () Bool)

(declare-fun mapRes!51149 () Bool)

(assert (=> b!1272386 (= e!725779 (and e!725783 mapRes!51149))))

(declare-fun condMapEmpty!51149 () Bool)

(declare-fun mapDefault!51149 () ValueCell!15666)

(assert (=> b!1272386 (= condMapEmpty!51149 (= (arr!40167 (_values!6717 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15666)) mapDefault!51149)))))

(declare-fun b!1272387 () Bool)

(declare-fun res!846437 () Bool)

(assert (=> b!1272387 (=> (not res!846437) (not e!725781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272387 (= res!846437 (validMask!0 (mask!34437 thiss!1559)))))

(declare-fun array_inv!30491 (array!83277) Bool)

(declare-fun array_inv!30492 (array!83275) Bool)

(assert (=> b!1272388 (= e!725780 (and tp!97523 tp_is_empty!33039 (array_inv!30491 (_keys!12098 thiss!1559)) (array_inv!30492 (_values!6717 thiss!1559)) e!725779))))

(declare-fun mapIsEmpty!51149 () Bool)

(assert (=> mapIsEmpty!51149 mapRes!51149))

(declare-fun b!1272389 () Bool)

(assert (=> b!1272389 (= e!725781 (not (= (size!40705 (_values!6717 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34437 thiss!1559)))))))

(declare-fun mapNonEmpty!51149 () Bool)

(declare-fun tp!97524 () Bool)

(assert (=> mapNonEmpty!51149 (= mapRes!51149 (and tp!97524 e!725778))))

(declare-fun mapRest!51149 () (Array (_ BitVec 32) ValueCell!15666))

(declare-fun mapKey!51149 () (_ BitVec 32))

(declare-fun mapValue!51149 () ValueCell!15666)

(assert (=> mapNonEmpty!51149 (= (arr!40167 (_values!6717 thiss!1559)) (store mapRest!51149 mapKey!51149 mapValue!51149))))

(assert (= (and start!107428 res!846438) b!1272387))

(assert (= (and b!1272387 res!846437) b!1272389))

(assert (= (and b!1272386 condMapEmpty!51149) mapIsEmpty!51149))

(assert (= (and b!1272386 (not condMapEmpty!51149)) mapNonEmpty!51149))

(get-info :version)

(assert (= (and mapNonEmpty!51149 ((_ is ValueCellFull!15666) mapValue!51149)) b!1272384))

(assert (= (and b!1272386 ((_ is ValueCellFull!15666) mapDefault!51149)) b!1272385))

(assert (= b!1272388 b!1272386))

(assert (= start!107428 b!1272388))

(declare-fun m!1170077 () Bool)

(assert (=> start!107428 m!1170077))

(declare-fun m!1170079 () Bool)

(assert (=> b!1272387 m!1170079))

(declare-fun m!1170081 () Bool)

(assert (=> b!1272388 m!1170081))

(declare-fun m!1170083 () Bool)

(assert (=> b!1272388 m!1170083))

(declare-fun m!1170085 () Bool)

(assert (=> mapNonEmpty!51149 m!1170085))

(check-sat (not b!1272388) (not b_next!27669) (not b!1272387) (not mapNonEmpty!51149) (not start!107428) b_and!45735 tp_is_empty!33039)
(check-sat b_and!45735 (not b_next!27669))
(get-model)

(declare-fun d!139781 () Bool)

(assert (=> d!139781 (= (validMask!0 (mask!34437 thiss!1559)) (and (or (= (mask!34437 thiss!1559) #b00000000000000000000000000000111) (= (mask!34437 thiss!1559) #b00000000000000000000000000001111) (= (mask!34437 thiss!1559) #b00000000000000000000000000011111) (= (mask!34437 thiss!1559) #b00000000000000000000000000111111) (= (mask!34437 thiss!1559) #b00000000000000000000000001111111) (= (mask!34437 thiss!1559) #b00000000000000000000000011111111) (= (mask!34437 thiss!1559) #b00000000000000000000000111111111) (= (mask!34437 thiss!1559) #b00000000000000000000001111111111) (= (mask!34437 thiss!1559) #b00000000000000000000011111111111) (= (mask!34437 thiss!1559) #b00000000000000000000111111111111) (= (mask!34437 thiss!1559) #b00000000000000000001111111111111) (= (mask!34437 thiss!1559) #b00000000000000000011111111111111) (= (mask!34437 thiss!1559) #b00000000000000000111111111111111) (= (mask!34437 thiss!1559) #b00000000000000001111111111111111) (= (mask!34437 thiss!1559) #b00000000000000011111111111111111) (= (mask!34437 thiss!1559) #b00000000000000111111111111111111) (= (mask!34437 thiss!1559) #b00000000000001111111111111111111) (= (mask!34437 thiss!1559) #b00000000000011111111111111111111) (= (mask!34437 thiss!1559) #b00000000000111111111111111111111) (= (mask!34437 thiss!1559) #b00000000001111111111111111111111) (= (mask!34437 thiss!1559) #b00000000011111111111111111111111) (= (mask!34437 thiss!1559) #b00000000111111111111111111111111) (= (mask!34437 thiss!1559) #b00000001111111111111111111111111) (= (mask!34437 thiss!1559) #b00000011111111111111111111111111) (= (mask!34437 thiss!1559) #b00000111111111111111111111111111) (= (mask!34437 thiss!1559) #b00001111111111111111111111111111) (= (mask!34437 thiss!1559) #b00011111111111111111111111111111) (= (mask!34437 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34437 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1272387 d!139781))

(declare-fun d!139783 () Bool)

(declare-fun res!846451 () Bool)

(declare-fun e!725804 () Bool)

(assert (=> d!139783 (=> (not res!846451) (not e!725804))))

(declare-fun simpleValid!455 (LongMapFixedSize!6096) Bool)

(assert (=> d!139783 (= res!846451 (simpleValid!455 thiss!1559))))

(assert (=> d!139783 (= (valid!2243 thiss!1559) e!725804)))

(declare-fun b!1272414 () Bool)

(declare-fun res!846452 () Bool)

(assert (=> b!1272414 (=> (not res!846452) (not e!725804))))

(declare-fun arrayCountValidKeys!0 (array!83277 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1272414 (= res!846452 (= (arrayCountValidKeys!0 (_keys!12098 thiss!1559) #b00000000000000000000000000000000 (size!40706 (_keys!12098 thiss!1559))) (_size!3103 thiss!1559)))))

(declare-fun b!1272415 () Bool)

(declare-fun res!846453 () Bool)

(assert (=> b!1272415 (=> (not res!846453) (not e!725804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83277 (_ BitVec 32)) Bool)

(assert (=> b!1272415 (= res!846453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12098 thiss!1559) (mask!34437 thiss!1559)))))

(declare-fun b!1272416 () Bool)

(declare-datatypes ((List!28717 0))(
  ( (Nil!28714) (Cons!28713 (h!29922 (_ BitVec 64)) (t!42257 List!28717)) )
))
(declare-fun arrayNoDuplicates!0 (array!83277 (_ BitVec 32) List!28717) Bool)

(assert (=> b!1272416 (= e!725804 (arrayNoDuplicates!0 (_keys!12098 thiss!1559) #b00000000000000000000000000000000 Nil!28714))))

(assert (= (and d!139783 res!846451) b!1272414))

(assert (= (and b!1272414 res!846452) b!1272415))

(assert (= (and b!1272415 res!846453) b!1272416))

(declare-fun m!1170097 () Bool)

(assert (=> d!139783 m!1170097))

(declare-fun m!1170099 () Bool)

(assert (=> b!1272414 m!1170099))

(declare-fun m!1170101 () Bool)

(assert (=> b!1272415 m!1170101))

(declare-fun m!1170103 () Bool)

(assert (=> b!1272416 m!1170103))

(assert (=> start!107428 d!139783))

(declare-fun d!139785 () Bool)

(assert (=> d!139785 (= (array_inv!30491 (_keys!12098 thiss!1559)) (bvsge (size!40706 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272388 d!139785))

(declare-fun d!139787 () Bool)

(assert (=> d!139787 (= (array_inv!30492 (_values!6717 thiss!1559)) (bvsge (size!40705 (_values!6717 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272388 d!139787))

(declare-fun b!1272424 () Bool)

(declare-fun e!725810 () Bool)

(assert (=> b!1272424 (= e!725810 tp_is_empty!33039)))

(declare-fun condMapEmpty!51155 () Bool)

(declare-fun mapDefault!51155 () ValueCell!15666)

(assert (=> mapNonEmpty!51149 (= condMapEmpty!51155 (= mapRest!51149 ((as const (Array (_ BitVec 32) ValueCell!15666)) mapDefault!51155)))))

(declare-fun mapRes!51155 () Bool)

(assert (=> mapNonEmpty!51149 (= tp!97524 (and e!725810 mapRes!51155))))

(declare-fun mapIsEmpty!51155 () Bool)

(assert (=> mapIsEmpty!51155 mapRes!51155))

(declare-fun b!1272423 () Bool)

(declare-fun e!725809 () Bool)

(assert (=> b!1272423 (= e!725809 tp_is_empty!33039)))

(declare-fun mapNonEmpty!51155 () Bool)

(declare-fun tp!97533 () Bool)

(assert (=> mapNonEmpty!51155 (= mapRes!51155 (and tp!97533 e!725809))))

(declare-fun mapKey!51155 () (_ BitVec 32))

(declare-fun mapRest!51155 () (Array (_ BitVec 32) ValueCell!15666))

(declare-fun mapValue!51155 () ValueCell!15666)

(assert (=> mapNonEmpty!51155 (= mapRest!51149 (store mapRest!51155 mapKey!51155 mapValue!51155))))

(assert (= (and mapNonEmpty!51149 condMapEmpty!51155) mapIsEmpty!51155))

(assert (= (and mapNonEmpty!51149 (not condMapEmpty!51155)) mapNonEmpty!51155))

(assert (= (and mapNonEmpty!51155 ((_ is ValueCellFull!15666) mapValue!51155)) b!1272423))

(assert (= (and mapNonEmpty!51149 ((_ is ValueCellFull!15666) mapDefault!51155)) b!1272424))

(declare-fun m!1170105 () Bool)

(assert (=> mapNonEmpty!51155 m!1170105))

(check-sat (not d!139783) (not mapNonEmpty!51155) (not b!1272414) (not b!1272416) (not b_next!27669) (not b!1272415) b_and!45735 tp_is_empty!33039)
(check-sat b_and!45735 (not b_next!27669))
(get-model)

(declare-fun b!1272435 () Bool)

(declare-fun e!725820 () Bool)

(declare-fun call!62545 () Bool)

(assert (=> b!1272435 (= e!725820 call!62545)))

(declare-fun b!1272436 () Bool)

(assert (=> b!1272436 (= e!725820 call!62545)))

(declare-fun b!1272437 () Bool)

(declare-fun e!725821 () Bool)

(declare-fun e!725819 () Bool)

(assert (=> b!1272437 (= e!725821 e!725819)))

(declare-fun res!846461 () Bool)

(assert (=> b!1272437 (=> (not res!846461) (not e!725819))))

(declare-fun e!725822 () Bool)

(assert (=> b!1272437 (= res!846461 (not e!725822))))

(declare-fun res!846462 () Bool)

(assert (=> b!1272437 (=> (not res!846462) (not e!725822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1272437 (= res!846462 (validKeyInArray!0 (select (arr!40168 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun d!139789 () Bool)

(declare-fun res!846460 () Bool)

(assert (=> d!139789 (=> res!846460 e!725821)))

(assert (=> d!139789 (= res!846460 (bvsge #b00000000000000000000000000000000 (size!40706 (_keys!12098 thiss!1559))))))

(assert (=> d!139789 (= (arrayNoDuplicates!0 (_keys!12098 thiss!1559) #b00000000000000000000000000000000 Nil!28714) e!725821)))

(declare-fun bm!62542 () Bool)

(declare-fun c!123642 () Bool)

(assert (=> bm!62542 (= call!62545 (arrayNoDuplicates!0 (_keys!12098 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123642 (Cons!28713 (select (arr!40168 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000) Nil!28714) Nil!28714)))))

(declare-fun b!1272438 () Bool)

(declare-fun contains!7687 (List!28717 (_ BitVec 64)) Bool)

(assert (=> b!1272438 (= e!725822 (contains!7687 Nil!28714 (select (arr!40168 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272439 () Bool)

(assert (=> b!1272439 (= e!725819 e!725820)))

(assert (=> b!1272439 (= c!123642 (validKeyInArray!0 (select (arr!40168 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000)))))

(assert (= (and d!139789 (not res!846460)) b!1272437))

(assert (= (and b!1272437 res!846462) b!1272438))

(assert (= (and b!1272437 res!846461) b!1272439))

(assert (= (and b!1272439 c!123642) b!1272435))

(assert (= (and b!1272439 (not c!123642)) b!1272436))

(assert (= (or b!1272435 b!1272436) bm!62542))

(declare-fun m!1170107 () Bool)

(assert (=> b!1272437 m!1170107))

(assert (=> b!1272437 m!1170107))

(declare-fun m!1170109 () Bool)

(assert (=> b!1272437 m!1170109))

(assert (=> bm!62542 m!1170107))

(declare-fun m!1170111 () Bool)

(assert (=> bm!62542 m!1170111))

(assert (=> b!1272438 m!1170107))

(assert (=> b!1272438 m!1170107))

(declare-fun m!1170113 () Bool)

(assert (=> b!1272438 m!1170113))

(assert (=> b!1272439 m!1170107))

(assert (=> b!1272439 m!1170107))

(assert (=> b!1272439 m!1170109))

(assert (=> b!1272416 d!139789))

(declare-fun b!1272448 () Bool)

(declare-fun e!725830 () Bool)

(declare-fun call!62548 () Bool)

(assert (=> b!1272448 (= e!725830 call!62548)))

(declare-fun bm!62545 () Bool)

(assert (=> bm!62545 (= call!62548 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12098 thiss!1559) (mask!34437 thiss!1559)))))

(declare-fun b!1272449 () Bool)

(declare-fun e!725831 () Bool)

(assert (=> b!1272449 (= e!725830 e!725831)))

(declare-fun lt!575000 () (_ BitVec 64))

(assert (=> b!1272449 (= lt!575000 (select (arr!40168 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42264 0))(
  ( (Unit!42265) )
))
(declare-fun lt!575001 () Unit!42264)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83277 (_ BitVec 64) (_ BitVec 32)) Unit!42264)

(assert (=> b!1272449 (= lt!575001 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12098 thiss!1559) lt!575000 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1272449 (arrayContainsKey!0 (_keys!12098 thiss!1559) lt!575000 #b00000000000000000000000000000000)))

(declare-fun lt!574999 () Unit!42264)

(assert (=> b!1272449 (= lt!574999 lt!575001)))

(declare-fun res!846467 () Bool)

(declare-datatypes ((SeekEntryResult!9987 0))(
  ( (MissingZero!9987 (index!42318 (_ BitVec 32))) (Found!9987 (index!42319 (_ BitVec 32))) (Intermediate!9987 (undefined!10799 Bool) (index!42320 (_ BitVec 32)) (x!112425 (_ BitVec 32))) (Undefined!9987) (MissingVacant!9987 (index!42321 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83277 (_ BitVec 32)) SeekEntryResult!9987)

(assert (=> b!1272449 (= res!846467 (= (seekEntryOrOpen!0 (select (arr!40168 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000) (_keys!12098 thiss!1559) (mask!34437 thiss!1559)) (Found!9987 #b00000000000000000000000000000000)))))

(assert (=> b!1272449 (=> (not res!846467) (not e!725831))))

(declare-fun d!139791 () Bool)

(declare-fun res!846468 () Bool)

(declare-fun e!725829 () Bool)

(assert (=> d!139791 (=> res!846468 e!725829)))

(assert (=> d!139791 (= res!846468 (bvsge #b00000000000000000000000000000000 (size!40706 (_keys!12098 thiss!1559))))))

(assert (=> d!139791 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12098 thiss!1559) (mask!34437 thiss!1559)) e!725829)))

(declare-fun b!1272450 () Bool)

(assert (=> b!1272450 (= e!725829 e!725830)))

(declare-fun c!123645 () Bool)

(assert (=> b!1272450 (= c!123645 (validKeyInArray!0 (select (arr!40168 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272451 () Bool)

(assert (=> b!1272451 (= e!725831 call!62548)))

(assert (= (and d!139791 (not res!846468)) b!1272450))

(assert (= (and b!1272450 c!123645) b!1272449))

(assert (= (and b!1272450 (not c!123645)) b!1272448))

(assert (= (and b!1272449 res!846467) b!1272451))

(assert (= (or b!1272451 b!1272448) bm!62545))

(declare-fun m!1170115 () Bool)

(assert (=> bm!62545 m!1170115))

(assert (=> b!1272449 m!1170107))

(declare-fun m!1170117 () Bool)

(assert (=> b!1272449 m!1170117))

(declare-fun m!1170119 () Bool)

(assert (=> b!1272449 m!1170119))

(assert (=> b!1272449 m!1170107))

(declare-fun m!1170121 () Bool)

(assert (=> b!1272449 m!1170121))

(assert (=> b!1272450 m!1170107))

(assert (=> b!1272450 m!1170107))

(assert (=> b!1272450 m!1170109))

(assert (=> b!1272415 d!139791))

(declare-fun b!1272460 () Bool)

(declare-fun res!846480 () Bool)

(declare-fun e!725834 () Bool)

(assert (=> b!1272460 (=> (not res!846480) (not e!725834))))

(assert (=> b!1272460 (= res!846480 (and (= (size!40705 (_values!6717 thiss!1559)) (bvadd (mask!34437 thiss!1559) #b00000000000000000000000000000001)) (= (size!40706 (_keys!12098 thiss!1559)) (size!40705 (_values!6717 thiss!1559))) (bvsge (_size!3103 thiss!1559) #b00000000000000000000000000000000) (bvsle (_size!3103 thiss!1559) (bvadd (mask!34437 thiss!1559) #b00000000000000000000000000000001))))))

(declare-fun b!1272463 () Bool)

(assert (=> b!1272463 (= e!725834 (and (bvsge (extraKeys!6373 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6373 thiss!1559) #b00000000000000000000000000000011) (bvsge (_vacant!3103 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun b!1272461 () Bool)

(declare-fun res!846478 () Bool)

(assert (=> b!1272461 (=> (not res!846478) (not e!725834))))

(declare-fun size!40709 (LongMapFixedSize!6096) (_ BitVec 32))

(assert (=> b!1272461 (= res!846478 (bvsge (size!40709 thiss!1559) (_size!3103 thiss!1559)))))

(declare-fun d!139793 () Bool)

(declare-fun res!846477 () Bool)

(assert (=> d!139793 (=> (not res!846477) (not e!725834))))

(assert (=> d!139793 (= res!846477 (validMask!0 (mask!34437 thiss!1559)))))

(assert (=> d!139793 (= (simpleValid!455 thiss!1559) e!725834)))

(declare-fun b!1272462 () Bool)

(declare-fun res!846479 () Bool)

(assert (=> b!1272462 (=> (not res!846479) (not e!725834))))

(assert (=> b!1272462 (= res!846479 (= (size!40709 thiss!1559) (bvadd (_size!3103 thiss!1559) (bvsdiv (bvadd (extraKeys!6373 thiss!1559) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!139793 res!846477) b!1272460))

(assert (= (and b!1272460 res!846480) b!1272461))

(assert (= (and b!1272461 res!846478) b!1272462))

(assert (= (and b!1272462 res!846479) b!1272463))

(declare-fun m!1170123 () Bool)

(assert (=> b!1272461 m!1170123))

(assert (=> d!139793 m!1170079))

(assert (=> b!1272462 m!1170123))

(assert (=> d!139783 d!139793))

(declare-fun b!1272472 () Bool)

(declare-fun e!725840 () (_ BitVec 32))

(declare-fun call!62551 () (_ BitVec 32))

(assert (=> b!1272472 (= e!725840 (bvadd #b00000000000000000000000000000001 call!62551))))

(declare-fun bm!62548 () Bool)

(assert (=> bm!62548 (= call!62551 (arrayCountValidKeys!0 (_keys!12098 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40706 (_keys!12098 thiss!1559))))))

(declare-fun b!1272473 () Bool)

(declare-fun e!725839 () (_ BitVec 32))

(assert (=> b!1272473 (= e!725839 #b00000000000000000000000000000000)))

(declare-fun b!1272474 () Bool)

(assert (=> b!1272474 (= e!725840 call!62551)))

(declare-fun b!1272475 () Bool)

(assert (=> b!1272475 (= e!725839 e!725840)))

(declare-fun c!123650 () Bool)

(assert (=> b!1272475 (= c!123650 (validKeyInArray!0 (select (arr!40168 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun d!139795 () Bool)

(declare-fun lt!575004 () (_ BitVec 32))

(assert (=> d!139795 (and (bvsge lt!575004 #b00000000000000000000000000000000) (bvsle lt!575004 (bvsub (size!40706 (_keys!12098 thiss!1559)) #b00000000000000000000000000000000)))))

(assert (=> d!139795 (= lt!575004 e!725839)))

(declare-fun c!123651 () Bool)

(assert (=> d!139795 (= c!123651 (bvsge #b00000000000000000000000000000000 (size!40706 (_keys!12098 thiss!1559))))))

(assert (=> d!139795 (and (bvsle #b00000000000000000000000000000000 (size!40706 (_keys!12098 thiss!1559))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40706 (_keys!12098 thiss!1559)) (size!40706 (_keys!12098 thiss!1559))))))

(assert (=> d!139795 (= (arrayCountValidKeys!0 (_keys!12098 thiss!1559) #b00000000000000000000000000000000 (size!40706 (_keys!12098 thiss!1559))) lt!575004)))

(assert (= (and d!139795 c!123651) b!1272473))

(assert (= (and d!139795 (not c!123651)) b!1272475))

(assert (= (and b!1272475 c!123650) b!1272472))

(assert (= (and b!1272475 (not c!123650)) b!1272474))

(assert (= (or b!1272472 b!1272474) bm!62548))

(declare-fun m!1170125 () Bool)

(assert (=> bm!62548 m!1170125))

(assert (=> b!1272475 m!1170107))

(assert (=> b!1272475 m!1170107))

(assert (=> b!1272475 m!1170109))

(assert (=> b!1272414 d!139795))

(declare-fun b!1272477 () Bool)

(declare-fun e!725842 () Bool)

(assert (=> b!1272477 (= e!725842 tp_is_empty!33039)))

(declare-fun condMapEmpty!51156 () Bool)

(declare-fun mapDefault!51156 () ValueCell!15666)

(assert (=> mapNonEmpty!51155 (= condMapEmpty!51156 (= mapRest!51155 ((as const (Array (_ BitVec 32) ValueCell!15666)) mapDefault!51156)))))

(declare-fun mapRes!51156 () Bool)

(assert (=> mapNonEmpty!51155 (= tp!97533 (and e!725842 mapRes!51156))))

(declare-fun mapIsEmpty!51156 () Bool)

(assert (=> mapIsEmpty!51156 mapRes!51156))

(declare-fun b!1272476 () Bool)

(declare-fun e!725841 () Bool)

(assert (=> b!1272476 (= e!725841 tp_is_empty!33039)))

(declare-fun mapNonEmpty!51156 () Bool)

(declare-fun tp!97534 () Bool)

(assert (=> mapNonEmpty!51156 (= mapRes!51156 (and tp!97534 e!725841))))

(declare-fun mapValue!51156 () ValueCell!15666)

(declare-fun mapRest!51156 () (Array (_ BitVec 32) ValueCell!15666))

(declare-fun mapKey!51156 () (_ BitVec 32))

(assert (=> mapNonEmpty!51156 (= mapRest!51155 (store mapRest!51156 mapKey!51156 mapValue!51156))))

(assert (= (and mapNonEmpty!51155 condMapEmpty!51156) mapIsEmpty!51156))

(assert (= (and mapNonEmpty!51155 (not condMapEmpty!51156)) mapNonEmpty!51156))

(assert (= (and mapNonEmpty!51156 ((_ is ValueCellFull!15666) mapValue!51156)) b!1272476))

(assert (= (and mapNonEmpty!51155 ((_ is ValueCellFull!15666) mapDefault!51156)) b!1272477))

(declare-fun m!1170127 () Bool)

(assert (=> mapNonEmpty!51156 m!1170127))

(check-sat (not b!1272461) (not b!1272449) (not mapNonEmpty!51156) (not b_next!27669) (not bm!62545) (not bm!62548) (not b!1272439) (not b!1272475) (not b!1272437) (not b!1272450) b_and!45735 tp_is_empty!33039 (not b!1272462) (not bm!62542) (not b!1272438) (not d!139793))
(check-sat b_and!45735 (not b_next!27669))
