; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19410 () Bool)

(assert start!19410)

(declare-fun b!190640 () Bool)

(declare-fun b_free!4671 () Bool)

(declare-fun b_next!4671 () Bool)

(assert (=> b!190640 (= b_free!4671 (not b_next!4671))))

(declare-fun tp!16856 () Bool)

(declare-fun b_and!11347 () Bool)

(assert (=> b!190640 (= tp!16856 b_and!11347)))

(declare-fun b!190634 () Bool)

(declare-fun e!125469 () Bool)

(declare-fun e!125474 () Bool)

(assert (=> b!190634 (= e!125469 (not e!125474))))

(declare-fun res!90131 () Bool)

(assert (=> b!190634 (=> res!90131 e!125474)))

(declare-datatypes ((V!5571 0))(
  ( (V!5572 (val!2266 Int)) )
))
(declare-datatypes ((ValueCell!1878 0))(
  ( (ValueCellFull!1878 (v!4194 V!5571)) (EmptyCell!1878) )
))
(declare-datatypes ((array!8120 0))(
  ( (array!8121 (arr!3826 (Array (_ BitVec 32) (_ BitVec 64))) (size!4147 (_ BitVec 32))) )
))
(declare-datatypes ((array!8122 0))(
  ( (array!8123 (arr!3827 (Array (_ BitVec 32) ValueCell!1878)) (size!4148 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2664 0))(
  ( (LongMapFixedSize!2665 (defaultEntry!3892 Int) (mask!9099 (_ BitVec 32)) (extraKeys!3629 (_ BitVec 32)) (zeroValue!3733 V!5571) (minValue!3733 V!5571) (_size!1381 (_ BitVec 32)) (_keys!5865 array!8120) (_values!3875 array!8122) (_vacant!1381 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2664)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!190634 (= res!90131 (not (validMask!0 (mask!9099 thiss!1248))))))

(declare-datatypes ((SeekEntryResult!684 0))(
  ( (MissingZero!684 (index!4906 (_ BitVec 32))) (Found!684 (index!4907 (_ BitVec 32))) (Intermediate!684 (undefined!1496 Bool) (index!4908 (_ BitVec 32)) (x!20512 (_ BitVec 32))) (Undefined!684) (MissingVacant!684 (index!4909 (_ BitVec 32))) )
))
(declare-fun lt!94573 () SeekEntryResult!684)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!5571)

(declare-datatypes ((tuple2!3518 0))(
  ( (tuple2!3519 (_1!1769 (_ BitVec 64)) (_2!1769 V!5571)) )
))
(declare-datatypes ((List!2438 0))(
  ( (Nil!2435) (Cons!2434 (h!3072 tuple2!3518) (t!7356 List!2438)) )
))
(declare-datatypes ((ListLongMap!2449 0))(
  ( (ListLongMap!2450 (toList!1240 List!2438)) )
))
(declare-fun lt!94575 () ListLongMap!2449)

(declare-fun +!298 (ListLongMap!2449 tuple2!3518) ListLongMap!2449)

(declare-fun getCurrentListMap!883 (array!8120 array!8122 (_ BitVec 32) (_ BitVec 32) V!5571 V!5571 (_ BitVec 32) Int) ListLongMap!2449)

(assert (=> b!190634 (= (+!298 lt!94575 (tuple2!3519 key!828 v!309)) (getCurrentListMap!883 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-datatypes ((Unit!5761 0))(
  ( (Unit!5762) )
))
(declare-fun lt!94572 () Unit!5761)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!104 (array!8120 array!8122 (_ BitVec 32) (_ BitVec 32) V!5571 V!5571 (_ BitVec 32) (_ BitVec 64) V!5571 Int) Unit!5761)

(assert (=> b!190634 (= lt!94572 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!104 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) (index!4907 lt!94573) key!828 v!309 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94576 () Unit!5761)

(declare-fun e!125467 () Unit!5761)

(assert (=> b!190634 (= lt!94576 e!125467)))

(declare-fun c!34273 () Bool)

(declare-fun contains!1345 (ListLongMap!2449 (_ BitVec 64)) Bool)

(assert (=> b!190634 (= c!34273 (contains!1345 lt!94575 key!828))))

(assert (=> b!190634 (= lt!94575 (getCurrentListMap!883 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun b!190635 () Bool)

(assert (=> b!190635 (= e!125474 (or (not (= (size!4148 (_values!3875 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9099 thiss!1248)))) (= (size!4147 (_keys!5865 thiss!1248)) (size!4148 (_values!3875 thiss!1248)))))))

(declare-fun mapIsEmpty!7670 () Bool)

(declare-fun mapRes!7670 () Bool)

(assert (=> mapIsEmpty!7670 mapRes!7670))

(declare-fun b!190636 () Bool)

(declare-fun e!125470 () Bool)

(assert (=> b!190636 (= e!125470 e!125469)))

(declare-fun res!90130 () Bool)

(assert (=> b!190636 (=> (not res!90130) (not e!125469))))

(get-info :version)

(assert (=> b!190636 (= res!90130 (and (not ((_ is Undefined!684) lt!94573)) (not ((_ is MissingVacant!684) lt!94573)) (not ((_ is MissingZero!684) lt!94573)) ((_ is Found!684) lt!94573)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8120 (_ BitVec 32)) SeekEntryResult!684)

(assert (=> b!190636 (= lt!94573 (seekEntryOrOpen!0 key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(declare-fun b!190638 () Bool)

(declare-fun Unit!5763 () Unit!5761)

(assert (=> b!190638 (= e!125467 Unit!5763)))

(declare-fun lt!94574 () Unit!5761)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!175 (array!8120 array!8122 (_ BitVec 32) (_ BitVec 32) V!5571 V!5571 (_ BitVec 64) Int) Unit!5761)

(assert (=> b!190638 (= lt!94574 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!175 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) key!828 (defaultEntry!3892 thiss!1248)))))

(assert (=> b!190638 false))

(declare-fun b!190639 () Bool)

(declare-fun lt!94577 () Unit!5761)

(assert (=> b!190639 (= e!125467 lt!94577)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!172 (array!8120 array!8122 (_ BitVec 32) (_ BitVec 32) V!5571 V!5571 (_ BitVec 64) Int) Unit!5761)

(assert (=> b!190639 (= lt!94577 (lemmaInListMapThenSeekEntryOrOpenFindsIt!172 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) key!828 (defaultEntry!3892 thiss!1248)))))

(declare-fun res!90133 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!190639 (= res!90133 (inRange!0 (index!4907 lt!94573) (mask!9099 thiss!1248)))))

(declare-fun e!125476 () Bool)

(assert (=> b!190639 (=> (not res!90133) (not e!125476))))

(assert (=> b!190639 e!125476))

(declare-fun tp_is_empty!4443 () Bool)

(declare-fun e!125472 () Bool)

(declare-fun e!125468 () Bool)

(declare-fun array_inv!2473 (array!8120) Bool)

(declare-fun array_inv!2474 (array!8122) Bool)

(assert (=> b!190640 (= e!125472 (and tp!16856 tp_is_empty!4443 (array_inv!2473 (_keys!5865 thiss!1248)) (array_inv!2474 (_values!3875 thiss!1248)) e!125468))))

(declare-fun b!190637 () Bool)

(declare-fun e!125475 () Bool)

(assert (=> b!190637 (= e!125475 tp_is_empty!4443)))

(declare-fun res!90132 () Bool)

(assert (=> start!19410 (=> (not res!90132) (not e!125470))))

(declare-fun valid!1086 (LongMapFixedSize!2664) Bool)

(assert (=> start!19410 (= res!90132 (valid!1086 thiss!1248))))

(assert (=> start!19410 e!125470))

(assert (=> start!19410 e!125472))

(assert (=> start!19410 true))

(assert (=> start!19410 tp_is_empty!4443))

(declare-fun b!190641 () Bool)

(declare-fun e!125473 () Bool)

(assert (=> b!190641 (= e!125473 tp_is_empty!4443)))

(declare-fun b!190642 () Bool)

(assert (=> b!190642 (= e!125468 (and e!125473 mapRes!7670))))

(declare-fun condMapEmpty!7670 () Bool)

(declare-fun mapDefault!7670 () ValueCell!1878)

(assert (=> b!190642 (= condMapEmpty!7670 (= (arr!3827 (_values!3875 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1878)) mapDefault!7670)))))

(declare-fun b!190643 () Bool)

(assert (=> b!190643 (= e!125476 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4907 lt!94573)) key!828))))

(declare-fun b!190644 () Bool)

(declare-fun res!90129 () Bool)

(assert (=> b!190644 (=> (not res!90129) (not e!125470))))

(assert (=> b!190644 (= res!90129 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7670 () Bool)

(declare-fun tp!16855 () Bool)

(assert (=> mapNonEmpty!7670 (= mapRes!7670 (and tp!16855 e!125475))))

(declare-fun mapRest!7670 () (Array (_ BitVec 32) ValueCell!1878))

(declare-fun mapKey!7670 () (_ BitVec 32))

(declare-fun mapValue!7670 () ValueCell!1878)

(assert (=> mapNonEmpty!7670 (= (arr!3827 (_values!3875 thiss!1248)) (store mapRest!7670 mapKey!7670 mapValue!7670))))

(assert (= (and start!19410 res!90132) b!190644))

(assert (= (and b!190644 res!90129) b!190636))

(assert (= (and b!190636 res!90130) b!190634))

(assert (= (and b!190634 c!34273) b!190639))

(assert (= (and b!190634 (not c!34273)) b!190638))

(assert (= (and b!190639 res!90133) b!190643))

(assert (= (and b!190634 (not res!90131)) b!190635))

(assert (= (and b!190642 condMapEmpty!7670) mapIsEmpty!7670))

(assert (= (and b!190642 (not condMapEmpty!7670)) mapNonEmpty!7670))

(assert (= (and mapNonEmpty!7670 ((_ is ValueCellFull!1878) mapValue!7670)) b!190637))

(assert (= (and b!190642 ((_ is ValueCellFull!1878) mapDefault!7670)) b!190641))

(assert (= b!190640 b!190642))

(assert (= start!19410 b!190640))

(declare-fun m!217107 () Bool)

(assert (=> b!190638 m!217107))

(declare-fun m!217109 () Bool)

(assert (=> b!190636 m!217109))

(declare-fun m!217111 () Bool)

(assert (=> b!190640 m!217111))

(declare-fun m!217113 () Bool)

(assert (=> b!190640 m!217113))

(declare-fun m!217115 () Bool)

(assert (=> b!190639 m!217115))

(declare-fun m!217117 () Bool)

(assert (=> b!190639 m!217117))

(declare-fun m!217119 () Bool)

(assert (=> b!190643 m!217119))

(declare-fun m!217121 () Bool)

(assert (=> start!19410 m!217121))

(declare-fun m!217123 () Bool)

(assert (=> b!190634 m!217123))

(declare-fun m!217125 () Bool)

(assert (=> b!190634 m!217125))

(declare-fun m!217127 () Bool)

(assert (=> b!190634 m!217127))

(declare-fun m!217129 () Bool)

(assert (=> b!190634 m!217129))

(declare-fun m!217131 () Bool)

(assert (=> b!190634 m!217131))

(declare-fun m!217133 () Bool)

(assert (=> b!190634 m!217133))

(declare-fun m!217135 () Bool)

(assert (=> b!190634 m!217135))

(declare-fun m!217137 () Bool)

(assert (=> mapNonEmpty!7670 m!217137))

(check-sat (not b!190639) (not b!190634) (not b!190640) tp_is_empty!4443 (not mapNonEmpty!7670) (not b!190636) b_and!11347 (not b!190638) (not start!19410) (not b_next!4671))
(check-sat b_and!11347 (not b_next!4671))
(get-model)

(declare-fun d!55865 () Bool)

(assert (=> d!55865 (= (array_inv!2473 (_keys!5865 thiss!1248)) (bvsge (size!4147 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190640 d!55865))

(declare-fun d!55867 () Bool)

(assert (=> d!55867 (= (array_inv!2474 (_values!3875 thiss!1248)) (bvsge (size!4148 (_values!3875 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190640 d!55867))

(declare-fun d!55869 () Bool)

(declare-fun e!125509 () Bool)

(assert (=> d!55869 e!125509))

(declare-fun res!90153 () Bool)

(assert (=> d!55869 (=> (not res!90153) (not e!125509))))

(declare-fun lt!94601 () SeekEntryResult!684)

(assert (=> d!55869 (= res!90153 ((_ is Found!684) lt!94601))))

(assert (=> d!55869 (= lt!94601 (seekEntryOrOpen!0 key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(declare-fun lt!94600 () Unit!5761)

(declare-fun choose!1035 (array!8120 array!8122 (_ BitVec 32) (_ BitVec 32) V!5571 V!5571 (_ BitVec 64) Int) Unit!5761)

(assert (=> d!55869 (= lt!94600 (choose!1035 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) key!828 (defaultEntry!3892 thiss!1248)))))

(assert (=> d!55869 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55869 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!172 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) key!828 (defaultEntry!3892 thiss!1248)) lt!94600)))

(declare-fun b!190682 () Bool)

(declare-fun res!90154 () Bool)

(assert (=> b!190682 (=> (not res!90154) (not e!125509))))

(assert (=> b!190682 (= res!90154 (inRange!0 (index!4907 lt!94601) (mask!9099 thiss!1248)))))

(declare-fun b!190683 () Bool)

(assert (=> b!190683 (= e!125509 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4907 lt!94601)) key!828))))

(assert (=> b!190683 (and (bvsge (index!4907 lt!94601) #b00000000000000000000000000000000) (bvslt (index!4907 lt!94601) (size!4147 (_keys!5865 thiss!1248))))))

(assert (= (and d!55869 res!90153) b!190682))

(assert (= (and b!190682 res!90154) b!190683))

(assert (=> d!55869 m!217109))

(declare-fun m!217171 () Bool)

(assert (=> d!55869 m!217171))

(assert (=> d!55869 m!217131))

(declare-fun m!217173 () Bool)

(assert (=> b!190682 m!217173))

(declare-fun m!217175 () Bool)

(assert (=> b!190683 m!217175))

(assert (=> b!190639 d!55869))

(declare-fun d!55871 () Bool)

(assert (=> d!55871 (= (inRange!0 (index!4907 lt!94573) (mask!9099 thiss!1248)) (and (bvsge (index!4907 lt!94573) #b00000000000000000000000000000000) (bvslt (index!4907 lt!94573) (bvadd (mask!9099 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!190639 d!55871))

(declare-fun d!55873 () Bool)

(assert (=> d!55873 (= (validMask!0 (mask!9099 thiss!1248)) (and (or (= (mask!9099 thiss!1248) #b00000000000000000000000000000111) (= (mask!9099 thiss!1248) #b00000000000000000000000000001111) (= (mask!9099 thiss!1248) #b00000000000000000000000000011111) (= (mask!9099 thiss!1248) #b00000000000000000000000000111111) (= (mask!9099 thiss!1248) #b00000000000000000000000001111111) (= (mask!9099 thiss!1248) #b00000000000000000000000011111111) (= (mask!9099 thiss!1248) #b00000000000000000000000111111111) (= (mask!9099 thiss!1248) #b00000000000000000000001111111111) (= (mask!9099 thiss!1248) #b00000000000000000000011111111111) (= (mask!9099 thiss!1248) #b00000000000000000000111111111111) (= (mask!9099 thiss!1248) #b00000000000000000001111111111111) (= (mask!9099 thiss!1248) #b00000000000000000011111111111111) (= (mask!9099 thiss!1248) #b00000000000000000111111111111111) (= (mask!9099 thiss!1248) #b00000000000000001111111111111111) (= (mask!9099 thiss!1248) #b00000000000000011111111111111111) (= (mask!9099 thiss!1248) #b00000000000000111111111111111111) (= (mask!9099 thiss!1248) #b00000000000001111111111111111111) (= (mask!9099 thiss!1248) #b00000000000011111111111111111111) (= (mask!9099 thiss!1248) #b00000000000111111111111111111111) (= (mask!9099 thiss!1248) #b00000000001111111111111111111111) (= (mask!9099 thiss!1248) #b00000000011111111111111111111111) (= (mask!9099 thiss!1248) #b00000000111111111111111111111111) (= (mask!9099 thiss!1248) #b00000001111111111111111111111111) (= (mask!9099 thiss!1248) #b00000011111111111111111111111111) (= (mask!9099 thiss!1248) #b00000111111111111111111111111111) (= (mask!9099 thiss!1248) #b00001111111111111111111111111111) (= (mask!9099 thiss!1248) #b00011111111111111111111111111111) (= (mask!9099 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9099 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!190634 d!55873))

(declare-fun d!55875 () Bool)

(declare-fun e!125512 () Bool)

(assert (=> d!55875 e!125512))

(declare-fun res!90160 () Bool)

(assert (=> d!55875 (=> (not res!90160) (not e!125512))))

(declare-fun lt!94613 () ListLongMap!2449)

(assert (=> d!55875 (= res!90160 (contains!1345 lt!94613 (_1!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun lt!94610 () List!2438)

(assert (=> d!55875 (= lt!94613 (ListLongMap!2450 lt!94610))))

(declare-fun lt!94611 () Unit!5761)

(declare-fun lt!94612 () Unit!5761)

(assert (=> d!55875 (= lt!94611 lt!94612)))

(declare-datatypes ((Option!242 0))(
  ( (Some!241 (v!4198 V!5571)) (None!240) )
))
(declare-fun getValueByKey!236 (List!2438 (_ BitVec 64)) Option!242)

(assert (=> d!55875 (= (getValueByKey!236 lt!94610 (_1!1769 (tuple2!3519 key!828 v!309))) (Some!241 (_2!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!125 (List!2438 (_ BitVec 64) V!5571) Unit!5761)

(assert (=> d!55875 (= lt!94612 (lemmaContainsTupThenGetReturnValue!125 lt!94610 (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun insertStrictlySorted!127 (List!2438 (_ BitVec 64) V!5571) List!2438)

(assert (=> d!55875 (= lt!94610 (insertStrictlySorted!127 (toList!1240 lt!94575) (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))))))

(assert (=> d!55875 (= (+!298 lt!94575 (tuple2!3519 key!828 v!309)) lt!94613)))

(declare-fun b!190688 () Bool)

(declare-fun res!90159 () Bool)

(assert (=> b!190688 (=> (not res!90159) (not e!125512))))

(assert (=> b!190688 (= res!90159 (= (getValueByKey!236 (toList!1240 lt!94613) (_1!1769 (tuple2!3519 key!828 v!309))) (Some!241 (_2!1769 (tuple2!3519 key!828 v!309)))))))

(declare-fun b!190689 () Bool)

(declare-fun contains!1347 (List!2438 tuple2!3518) Bool)

(assert (=> b!190689 (= e!125512 (contains!1347 (toList!1240 lt!94613) (tuple2!3519 key!828 v!309)))))

(assert (= (and d!55875 res!90160) b!190688))

(assert (= (and b!190688 res!90159) b!190689))

(declare-fun m!217177 () Bool)

(assert (=> d!55875 m!217177))

(declare-fun m!217179 () Bool)

(assert (=> d!55875 m!217179))

(declare-fun m!217181 () Bool)

(assert (=> d!55875 m!217181))

(declare-fun m!217183 () Bool)

(assert (=> d!55875 m!217183))

(declare-fun m!217185 () Bool)

(assert (=> b!190688 m!217185))

(declare-fun m!217187 () Bool)

(assert (=> b!190689 m!217187))

(assert (=> b!190634 d!55875))

(declare-fun d!55877 () Bool)

(declare-fun e!125518 () Bool)

(assert (=> d!55877 e!125518))

(declare-fun res!90163 () Bool)

(assert (=> d!55877 (=> res!90163 e!125518)))

(declare-fun lt!94623 () Bool)

(assert (=> d!55877 (= res!90163 (not lt!94623))))

(declare-fun lt!94622 () Bool)

(assert (=> d!55877 (= lt!94623 lt!94622)))

(declare-fun lt!94624 () Unit!5761)

(declare-fun e!125517 () Unit!5761)

(assert (=> d!55877 (= lt!94624 e!125517)))

(declare-fun c!34279 () Bool)

(assert (=> d!55877 (= c!34279 lt!94622)))

(declare-fun containsKey!240 (List!2438 (_ BitVec 64)) Bool)

(assert (=> d!55877 (= lt!94622 (containsKey!240 (toList!1240 lt!94575) key!828))))

(assert (=> d!55877 (= (contains!1345 lt!94575 key!828) lt!94623)))

(declare-fun b!190696 () Bool)

(declare-fun lt!94625 () Unit!5761)

(assert (=> b!190696 (= e!125517 lt!94625)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!189 (List!2438 (_ BitVec 64)) Unit!5761)

(assert (=> b!190696 (= lt!94625 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94575) key!828))))

(declare-fun isDefined!190 (Option!242) Bool)

(assert (=> b!190696 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94575) key!828))))

(declare-fun b!190697 () Bool)

(declare-fun Unit!5767 () Unit!5761)

(assert (=> b!190697 (= e!125517 Unit!5767)))

(declare-fun b!190698 () Bool)

(assert (=> b!190698 (= e!125518 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94575) key!828)))))

(assert (= (and d!55877 c!34279) b!190696))

(assert (= (and d!55877 (not c!34279)) b!190697))

(assert (= (and d!55877 (not res!90163)) b!190698))

(declare-fun m!217189 () Bool)

(assert (=> d!55877 m!217189))

(declare-fun m!217191 () Bool)

(assert (=> b!190696 m!217191))

(declare-fun m!217193 () Bool)

(assert (=> b!190696 m!217193))

(assert (=> b!190696 m!217193))

(declare-fun m!217195 () Bool)

(assert (=> b!190696 m!217195))

(assert (=> b!190698 m!217193))

(assert (=> b!190698 m!217193))

(assert (=> b!190698 m!217195))

(assert (=> b!190634 d!55877))

(declare-fun b!190741 () Bool)

(declare-fun e!125555 () Unit!5761)

(declare-fun lt!94675 () Unit!5761)

(assert (=> b!190741 (= e!125555 lt!94675)))

(declare-fun lt!94672 () ListLongMap!2449)

(declare-fun getCurrentListMapNoExtraKeys!210 (array!8120 array!8122 (_ BitVec 32) (_ BitVec 32) V!5571 V!5571 (_ BitVec 32) Int) ListLongMap!2449)

(assert (=> b!190741 (= lt!94672 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94676 () (_ BitVec 64))

(assert (=> b!190741 (= lt!94676 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94687 () (_ BitVec 64))

(assert (=> b!190741 (= lt!94687 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94677 () Unit!5761)

(declare-fun addStillContains!156 (ListLongMap!2449 (_ BitVec 64) V!5571 (_ BitVec 64)) Unit!5761)

(assert (=> b!190741 (= lt!94677 (addStillContains!156 lt!94672 lt!94676 (zeroValue!3733 thiss!1248) lt!94687))))

(assert (=> b!190741 (contains!1345 (+!298 lt!94672 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248))) lt!94687)))

(declare-fun lt!94670 () Unit!5761)

(assert (=> b!190741 (= lt!94670 lt!94677)))

(declare-fun lt!94685 () ListLongMap!2449)

(assert (=> b!190741 (= lt!94685 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94688 () (_ BitVec 64))

(assert (=> b!190741 (= lt!94688 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94683 () (_ BitVec 64))

(assert (=> b!190741 (= lt!94683 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94689 () Unit!5761)

(declare-fun addApplyDifferent!156 (ListLongMap!2449 (_ BitVec 64) V!5571 (_ BitVec 64)) Unit!5761)

(assert (=> b!190741 (= lt!94689 (addApplyDifferent!156 lt!94685 lt!94688 (minValue!3733 thiss!1248) lt!94683))))

(declare-fun apply!180 (ListLongMap!2449 (_ BitVec 64)) V!5571)

(assert (=> b!190741 (= (apply!180 (+!298 lt!94685 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248))) lt!94683) (apply!180 lt!94685 lt!94683))))

(declare-fun lt!94680 () Unit!5761)

(assert (=> b!190741 (= lt!94680 lt!94689)))

(declare-fun lt!94691 () ListLongMap!2449)

(assert (=> b!190741 (= lt!94691 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94684 () (_ BitVec 64))

(assert (=> b!190741 (= lt!94684 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94671 () (_ BitVec 64))

(assert (=> b!190741 (= lt!94671 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94679 () Unit!5761)

(assert (=> b!190741 (= lt!94679 (addApplyDifferent!156 lt!94691 lt!94684 (zeroValue!3733 thiss!1248) lt!94671))))

(assert (=> b!190741 (= (apply!180 (+!298 lt!94691 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248))) lt!94671) (apply!180 lt!94691 lt!94671))))

(declare-fun lt!94673 () Unit!5761)

(assert (=> b!190741 (= lt!94673 lt!94679)))

(declare-fun lt!94678 () ListLongMap!2449)

(assert (=> b!190741 (= lt!94678 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94686 () (_ BitVec 64))

(assert (=> b!190741 (= lt!94686 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94674 () (_ BitVec 64))

(assert (=> b!190741 (= lt!94674 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190741 (= lt!94675 (addApplyDifferent!156 lt!94678 lt!94686 (minValue!3733 thiss!1248) lt!94674))))

(assert (=> b!190741 (= (apply!180 (+!298 lt!94678 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248))) lt!94674) (apply!180 lt!94678 lt!94674))))

(declare-fun b!190742 () Bool)

(declare-fun e!125546 () Bool)

(declare-fun e!125553 () Bool)

(assert (=> b!190742 (= e!125546 e!125553)))

(declare-fun res!90188 () Bool)

(declare-fun call!19251 () Bool)

(assert (=> b!190742 (= res!90188 call!19251)))

(assert (=> b!190742 (=> (not res!90188) (not e!125553))))

(declare-fun b!190743 () Bool)

(declare-fun e!125551 () ListLongMap!2449)

(declare-fun call!19246 () ListLongMap!2449)

(assert (=> b!190743 (= e!125551 call!19246)))

(declare-fun b!190744 () Bool)

(declare-fun res!90182 () Bool)

(declare-fun e!125556 () Bool)

(assert (=> b!190744 (=> (not res!90182) (not e!125556))))

(assert (=> b!190744 (= res!90182 e!125546)))

(declare-fun c!34292 () Bool)

(assert (=> b!190744 (= c!34292 (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!190745 () Bool)

(declare-fun e!125554 () Bool)

(declare-fun call!19249 () Bool)

(assert (=> b!190745 (= e!125554 (not call!19249))))

(declare-fun b!190746 () Bool)

(declare-fun lt!94690 () ListLongMap!2449)

(assert (=> b!190746 (= e!125553 (= (apply!180 lt!94690 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3733 thiss!1248)))))

(declare-fun b!190747 () Bool)

(declare-fun e!125547 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!190747 (= e!125547 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190748 () Bool)

(assert (=> b!190748 (= e!125546 (not call!19251))))

(declare-fun bm!19242 () Bool)

(assert (=> bm!19242 (= call!19249 (contains!1345 lt!94690 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19243 () Bool)

(declare-fun call!19247 () ListLongMap!2449)

(assert (=> bm!19243 (= call!19246 call!19247)))

(declare-fun b!190749 () Bool)

(assert (=> b!190749 (= e!125556 e!125554)))

(declare-fun c!34294 () Bool)

(assert (=> b!190749 (= c!34294 (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!190750 () Bool)

(declare-fun e!125557 () Bool)

(declare-fun e!125548 () Bool)

(assert (=> b!190750 (= e!125557 e!125548)))

(declare-fun res!90190 () Bool)

(assert (=> b!190750 (=> (not res!90190) (not e!125548))))

(assert (=> b!190750 (= res!90190 (contains!1345 lt!94690 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190750 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun bm!19244 () Bool)

(assert (=> bm!19244 (= call!19251 (contains!1345 lt!94690 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190751 () Bool)

(declare-fun e!125550 () Bool)

(assert (=> b!190751 (= e!125550 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190752 () Bool)

(declare-fun e!125549 () ListLongMap!2449)

(assert (=> b!190752 (= e!125549 (+!298 call!19247 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))

(declare-fun bm!19245 () Bool)

(declare-fun call!19245 () ListLongMap!2449)

(declare-fun call!19250 () ListLongMap!2449)

(assert (=> bm!19245 (= call!19245 call!19250)))

(declare-fun b!190753 () Bool)

(declare-fun res!90186 () Bool)

(assert (=> b!190753 (=> (not res!90186) (not e!125556))))

(assert (=> b!190753 (= res!90186 e!125557)))

(declare-fun res!90183 () Bool)

(assert (=> b!190753 (=> res!90183 e!125557)))

(assert (=> b!190753 (= res!90183 (not e!125547))))

(declare-fun res!90185 () Bool)

(assert (=> b!190753 (=> (not res!90185) (not e!125547))))

(assert (=> b!190753 (= res!90185 (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun b!190754 () Bool)

(declare-fun e!125552 () ListLongMap!2449)

(assert (=> b!190754 (= e!125552 call!19246)))

(declare-fun b!190755 () Bool)

(declare-fun c!34295 () Bool)

(assert (=> b!190755 (= c!34295 (and (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!190755 (= e!125552 e!125551)))

(declare-fun d!55879 () Bool)

(assert (=> d!55879 e!125556))

(declare-fun res!90184 () Bool)

(assert (=> d!55879 (=> (not res!90184) (not e!125556))))

(assert (=> d!55879 (= res!90184 (or (bvsge #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))))

(declare-fun lt!94681 () ListLongMap!2449)

(assert (=> d!55879 (= lt!94690 lt!94681)))

(declare-fun lt!94682 () Unit!5761)

(assert (=> d!55879 (= lt!94682 e!125555)))

(declare-fun c!34297 () Bool)

(assert (=> d!55879 (= c!34297 e!125550)))

(declare-fun res!90187 () Bool)

(assert (=> d!55879 (=> (not res!90187) (not e!125550))))

(assert (=> d!55879 (= res!90187 (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> d!55879 (= lt!94681 e!125549)))

(declare-fun c!34293 () Bool)

(assert (=> d!55879 (= c!34293 (and (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55879 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55879 (= (getCurrentListMap!883 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)) lt!94690)))

(declare-fun bm!19246 () Bool)

(assert (=> bm!19246 (= call!19250 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun c!34296 () Bool)

(declare-fun call!19248 () ListLongMap!2449)

(declare-fun bm!19247 () Bool)

(assert (=> bm!19247 (= call!19247 (+!298 (ite c!34293 call!19250 (ite c!34296 call!19245 call!19248)) (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(declare-fun b!190756 () Bool)

(assert (=> b!190756 (= e!125549 e!125552)))

(assert (=> b!190756 (= c!34296 (and (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!190757 () Bool)

(declare-fun e!125545 () Bool)

(assert (=> b!190757 (= e!125554 e!125545)))

(declare-fun res!90189 () Bool)

(assert (=> b!190757 (= res!90189 call!19249)))

(assert (=> b!190757 (=> (not res!90189) (not e!125545))))

(declare-fun b!190758 () Bool)

(assert (=> b!190758 (= e!125551 call!19248)))

(declare-fun b!190759 () Bool)

(declare-fun Unit!5768 () Unit!5761)

(assert (=> b!190759 (= e!125555 Unit!5768)))

(declare-fun b!190760 () Bool)

(assert (=> b!190760 (= e!125545 (= (apply!180 lt!94690 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3733 thiss!1248)))))

(declare-fun bm!19248 () Bool)

(assert (=> bm!19248 (= call!19248 call!19245)))

(declare-fun b!190761 () Bool)

(declare-fun get!2205 (ValueCell!1878 V!5571) V!5571)

(declare-fun dynLambda!518 (Int (_ BitVec 64)) V!5571)

(assert (=> b!190761 (= e!125548 (= (apply!180 lt!94690 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) (get!2205 (select (arr!3827 (_values!3875 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!190761 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4148 (_values!3875 thiss!1248))))))

(assert (=> b!190761 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (= (and d!55879 c!34293) b!190752))

(assert (= (and d!55879 (not c!34293)) b!190756))

(assert (= (and b!190756 c!34296) b!190754))

(assert (= (and b!190756 (not c!34296)) b!190755))

(assert (= (and b!190755 c!34295) b!190743))

(assert (= (and b!190755 (not c!34295)) b!190758))

(assert (= (or b!190743 b!190758) bm!19248))

(assert (= (or b!190754 bm!19248) bm!19245))

(assert (= (or b!190754 b!190743) bm!19243))

(assert (= (or b!190752 bm!19245) bm!19246))

(assert (= (or b!190752 bm!19243) bm!19247))

(assert (= (and d!55879 res!90187) b!190751))

(assert (= (and d!55879 c!34297) b!190741))

(assert (= (and d!55879 (not c!34297)) b!190759))

(assert (= (and d!55879 res!90184) b!190753))

(assert (= (and b!190753 res!90185) b!190747))

(assert (= (and b!190753 (not res!90183)) b!190750))

(assert (= (and b!190750 res!90190) b!190761))

(assert (= (and b!190753 res!90186) b!190744))

(assert (= (and b!190744 c!34292) b!190742))

(assert (= (and b!190744 (not c!34292)) b!190748))

(assert (= (and b!190742 res!90188) b!190746))

(assert (= (or b!190742 b!190748) bm!19244))

(assert (= (and b!190744 res!90182) b!190749))

(assert (= (and b!190749 c!34294) b!190757))

(assert (= (and b!190749 (not c!34294)) b!190745))

(assert (= (and b!190757 res!90189) b!190760))

(assert (= (or b!190757 b!190745) bm!19242))

(declare-fun b_lambda!7397 () Bool)

(assert (=> (not b_lambda!7397) (not b!190761)))

(declare-fun t!7359 () Bool)

(declare-fun tb!2879 () Bool)

(assert (=> (and b!190640 (= (defaultEntry!3892 thiss!1248) (defaultEntry!3892 thiss!1248)) t!7359) tb!2879))

(declare-fun result!4899 () Bool)

(assert (=> tb!2879 (= result!4899 tp_is_empty!4443)))

(assert (=> b!190761 t!7359))

(declare-fun b_and!11351 () Bool)

(assert (= b_and!11347 (and (=> t!7359 result!4899) b_and!11351)))

(declare-fun m!217197 () Bool)

(assert (=> b!190750 m!217197))

(assert (=> b!190750 m!217197))

(declare-fun m!217199 () Bool)

(assert (=> b!190750 m!217199))

(assert (=> b!190761 m!217197))

(declare-fun m!217201 () Bool)

(assert (=> b!190761 m!217201))

(declare-fun m!217203 () Bool)

(assert (=> b!190761 m!217203))

(declare-fun m!217205 () Bool)

(assert (=> b!190761 m!217205))

(assert (=> b!190761 m!217197))

(assert (=> b!190761 m!217203))

(assert (=> b!190761 m!217205))

(declare-fun m!217207 () Bool)

(assert (=> b!190761 m!217207))

(declare-fun m!217209 () Bool)

(assert (=> bm!19244 m!217209))

(declare-fun m!217211 () Bool)

(assert (=> bm!19246 m!217211))

(declare-fun m!217213 () Bool)

(assert (=> b!190746 m!217213))

(declare-fun m!217215 () Bool)

(assert (=> b!190760 m!217215))

(declare-fun m!217217 () Bool)

(assert (=> b!190752 m!217217))

(declare-fun m!217219 () Bool)

(assert (=> bm!19242 m!217219))

(assert (=> b!190747 m!217197))

(assert (=> b!190747 m!217197))

(declare-fun m!217221 () Bool)

(assert (=> b!190747 m!217221))

(declare-fun m!217223 () Bool)

(assert (=> b!190741 m!217223))

(declare-fun m!217225 () Bool)

(assert (=> b!190741 m!217225))

(declare-fun m!217227 () Bool)

(assert (=> b!190741 m!217227))

(declare-fun m!217229 () Bool)

(assert (=> b!190741 m!217229))

(declare-fun m!217231 () Bool)

(assert (=> b!190741 m!217231))

(assert (=> b!190741 m!217227))

(declare-fun m!217233 () Bool)

(assert (=> b!190741 m!217233))

(declare-fun m!217235 () Bool)

(assert (=> b!190741 m!217235))

(assert (=> b!190741 m!217233))

(declare-fun m!217237 () Bool)

(assert (=> b!190741 m!217237))

(declare-fun m!217239 () Bool)

(assert (=> b!190741 m!217239))

(declare-fun m!217241 () Bool)

(assert (=> b!190741 m!217241))

(assert (=> b!190741 m!217197))

(declare-fun m!217243 () Bool)

(assert (=> b!190741 m!217243))

(declare-fun m!217245 () Bool)

(assert (=> b!190741 m!217245))

(assert (=> b!190741 m!217239))

(declare-fun m!217247 () Bool)

(assert (=> b!190741 m!217247))

(assert (=> b!190741 m!217237))

(declare-fun m!217249 () Bool)

(assert (=> b!190741 m!217249))

(declare-fun m!217251 () Bool)

(assert (=> b!190741 m!217251))

(assert (=> b!190741 m!217211))

(assert (=> b!190751 m!217197))

(assert (=> b!190751 m!217197))

(assert (=> b!190751 m!217221))

(assert (=> d!55879 m!217131))

(declare-fun m!217253 () Bool)

(assert (=> bm!19247 m!217253))

(assert (=> b!190634 d!55879))

(declare-fun d!55881 () Bool)

(declare-fun e!125560 () Bool)

(assert (=> d!55881 e!125560))

(declare-fun res!90193 () Bool)

(assert (=> d!55881 (=> (not res!90193) (not e!125560))))

(assert (=> d!55881 (= res!90193 (and (bvsge (index!4907 lt!94573) #b00000000000000000000000000000000) (bvslt (index!4907 lt!94573) (size!4148 (_values!3875 thiss!1248)))))))

(declare-fun lt!94694 () Unit!5761)

(declare-fun choose!1036 (array!8120 array!8122 (_ BitVec 32) (_ BitVec 32) V!5571 V!5571 (_ BitVec 32) (_ BitVec 64) V!5571 Int) Unit!5761)

(assert (=> d!55881 (= lt!94694 (choose!1036 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) (index!4907 lt!94573) key!828 v!309 (defaultEntry!3892 thiss!1248)))))

(assert (=> d!55881 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55881 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!104 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) (index!4907 lt!94573) key!828 v!309 (defaultEntry!3892 thiss!1248)) lt!94694)))

(declare-fun b!190766 () Bool)

(assert (=> b!190766 (= e!125560 (= (+!298 (getCurrentListMap!883 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)) (tuple2!3519 key!828 v!309)) (getCurrentListMap!883 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248))))))

(assert (= (and d!55881 res!90193) b!190766))

(declare-fun m!217255 () Bool)

(assert (=> d!55881 m!217255))

(assert (=> d!55881 m!217131))

(assert (=> b!190766 m!217127))

(assert (=> b!190766 m!217127))

(declare-fun m!217257 () Bool)

(assert (=> b!190766 m!217257))

(assert (=> b!190766 m!217129))

(assert (=> b!190766 m!217135))

(assert (=> b!190634 d!55881))

(declare-fun b!190767 () Bool)

(declare-fun e!125571 () Unit!5761)

(declare-fun lt!94700 () Unit!5761)

(assert (=> b!190767 (= e!125571 lt!94700)))

(declare-fun lt!94697 () ListLongMap!2449)

(assert (=> b!190767 (= lt!94697 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94701 () (_ BitVec 64))

(assert (=> b!190767 (= lt!94701 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94712 () (_ BitVec 64))

(assert (=> b!190767 (= lt!94712 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94702 () Unit!5761)

(assert (=> b!190767 (= lt!94702 (addStillContains!156 lt!94697 lt!94701 (zeroValue!3733 thiss!1248) lt!94712))))

(assert (=> b!190767 (contains!1345 (+!298 lt!94697 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248))) lt!94712)))

(declare-fun lt!94695 () Unit!5761)

(assert (=> b!190767 (= lt!94695 lt!94702)))

(declare-fun lt!94710 () ListLongMap!2449)

(assert (=> b!190767 (= lt!94710 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94713 () (_ BitVec 64))

(assert (=> b!190767 (= lt!94713 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94708 () (_ BitVec 64))

(assert (=> b!190767 (= lt!94708 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94714 () Unit!5761)

(assert (=> b!190767 (= lt!94714 (addApplyDifferent!156 lt!94710 lt!94713 (minValue!3733 thiss!1248) lt!94708))))

(assert (=> b!190767 (= (apply!180 (+!298 lt!94710 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248))) lt!94708) (apply!180 lt!94710 lt!94708))))

(declare-fun lt!94705 () Unit!5761)

(assert (=> b!190767 (= lt!94705 lt!94714)))

(declare-fun lt!94716 () ListLongMap!2449)

(assert (=> b!190767 (= lt!94716 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94709 () (_ BitVec 64))

(assert (=> b!190767 (= lt!94709 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94696 () (_ BitVec 64))

(assert (=> b!190767 (= lt!94696 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94704 () Unit!5761)

(assert (=> b!190767 (= lt!94704 (addApplyDifferent!156 lt!94716 lt!94709 (zeroValue!3733 thiss!1248) lt!94696))))

(assert (=> b!190767 (= (apply!180 (+!298 lt!94716 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248))) lt!94696) (apply!180 lt!94716 lt!94696))))

(declare-fun lt!94698 () Unit!5761)

(assert (=> b!190767 (= lt!94698 lt!94704)))

(declare-fun lt!94703 () ListLongMap!2449)

(assert (=> b!190767 (= lt!94703 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun lt!94711 () (_ BitVec 64))

(assert (=> b!190767 (= lt!94711 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94699 () (_ BitVec 64))

(assert (=> b!190767 (= lt!94699 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190767 (= lt!94700 (addApplyDifferent!156 lt!94703 lt!94711 (minValue!3733 thiss!1248) lt!94699))))

(assert (=> b!190767 (= (apply!180 (+!298 lt!94703 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248))) lt!94699) (apply!180 lt!94703 lt!94699))))

(declare-fun b!190768 () Bool)

(declare-fun e!125562 () Bool)

(declare-fun e!125569 () Bool)

(assert (=> b!190768 (= e!125562 e!125569)))

(declare-fun res!90200 () Bool)

(declare-fun call!19258 () Bool)

(assert (=> b!190768 (= res!90200 call!19258)))

(assert (=> b!190768 (=> (not res!90200) (not e!125569))))

(declare-fun b!190769 () Bool)

(declare-fun e!125567 () ListLongMap!2449)

(declare-fun call!19253 () ListLongMap!2449)

(assert (=> b!190769 (= e!125567 call!19253)))

(declare-fun b!190770 () Bool)

(declare-fun res!90194 () Bool)

(declare-fun e!125572 () Bool)

(assert (=> b!190770 (=> (not res!90194) (not e!125572))))

(assert (=> b!190770 (= res!90194 e!125562)))

(declare-fun c!34298 () Bool)

(assert (=> b!190770 (= c!34298 (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!190771 () Bool)

(declare-fun e!125570 () Bool)

(declare-fun call!19256 () Bool)

(assert (=> b!190771 (= e!125570 (not call!19256))))

(declare-fun b!190772 () Bool)

(declare-fun lt!94715 () ListLongMap!2449)

(assert (=> b!190772 (= e!125569 (= (apply!180 lt!94715 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3733 thiss!1248)))))

(declare-fun b!190773 () Bool)

(declare-fun e!125563 () Bool)

(assert (=> b!190773 (= e!125563 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190774 () Bool)

(assert (=> b!190774 (= e!125562 (not call!19258))))

(declare-fun bm!19249 () Bool)

(assert (=> bm!19249 (= call!19256 (contains!1345 lt!94715 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19250 () Bool)

(declare-fun call!19254 () ListLongMap!2449)

(assert (=> bm!19250 (= call!19253 call!19254)))

(declare-fun b!190775 () Bool)

(assert (=> b!190775 (= e!125572 e!125570)))

(declare-fun c!34300 () Bool)

(assert (=> b!190775 (= c!34300 (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!190776 () Bool)

(declare-fun e!125573 () Bool)

(declare-fun e!125564 () Bool)

(assert (=> b!190776 (= e!125573 e!125564)))

(declare-fun res!90202 () Bool)

(assert (=> b!190776 (=> (not res!90202) (not e!125564))))

(assert (=> b!190776 (= res!90202 (contains!1345 lt!94715 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun bm!19251 () Bool)

(assert (=> bm!19251 (= call!19258 (contains!1345 lt!94715 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190777 () Bool)

(declare-fun e!125566 () Bool)

(assert (=> b!190777 (= e!125566 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190778 () Bool)

(declare-fun e!125565 () ListLongMap!2449)

(assert (=> b!190778 (= e!125565 (+!298 call!19254 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))

(declare-fun bm!19252 () Bool)

(declare-fun call!19252 () ListLongMap!2449)

(declare-fun call!19257 () ListLongMap!2449)

(assert (=> bm!19252 (= call!19252 call!19257)))

(declare-fun b!190779 () Bool)

(declare-fun res!90198 () Bool)

(assert (=> b!190779 (=> (not res!90198) (not e!125572))))

(assert (=> b!190779 (= res!90198 e!125573)))

(declare-fun res!90195 () Bool)

(assert (=> b!190779 (=> res!90195 e!125573)))

(assert (=> b!190779 (= res!90195 (not e!125563))))

(declare-fun res!90197 () Bool)

(assert (=> b!190779 (=> (not res!90197) (not e!125563))))

(assert (=> b!190779 (= res!90197 (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun b!190780 () Bool)

(declare-fun e!125568 () ListLongMap!2449)

(assert (=> b!190780 (= e!125568 call!19253)))

(declare-fun b!190781 () Bool)

(declare-fun c!34301 () Bool)

(assert (=> b!190781 (= c!34301 (and (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!190781 (= e!125568 e!125567)))

(declare-fun d!55883 () Bool)

(assert (=> d!55883 e!125572))

(declare-fun res!90196 () Bool)

(assert (=> d!55883 (=> (not res!90196) (not e!125572))))

(assert (=> d!55883 (= res!90196 (or (bvsge #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))))

(declare-fun lt!94706 () ListLongMap!2449)

(assert (=> d!55883 (= lt!94715 lt!94706)))

(declare-fun lt!94707 () Unit!5761)

(assert (=> d!55883 (= lt!94707 e!125571)))

(declare-fun c!34303 () Bool)

(assert (=> d!55883 (= c!34303 e!125566)))

(declare-fun res!90199 () Bool)

(assert (=> d!55883 (=> (not res!90199) (not e!125566))))

(assert (=> d!55883 (= res!90199 (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> d!55883 (= lt!94706 e!125565)))

(declare-fun c!34299 () Bool)

(assert (=> d!55883 (= c!34299 (and (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55883 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55883 (= (getCurrentListMap!883 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)) lt!94715)))

(declare-fun bm!19253 () Bool)

(assert (=> bm!19253 (= call!19257 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(declare-fun call!19255 () ListLongMap!2449)

(declare-fun c!34302 () Bool)

(declare-fun bm!19254 () Bool)

(assert (=> bm!19254 (= call!19254 (+!298 (ite c!34299 call!19257 (ite c!34302 call!19252 call!19255)) (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(declare-fun b!190782 () Bool)

(assert (=> b!190782 (= e!125565 e!125568)))

(assert (=> b!190782 (= c!34302 (and (not (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3629 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!190783 () Bool)

(declare-fun e!125561 () Bool)

(assert (=> b!190783 (= e!125570 e!125561)))

(declare-fun res!90201 () Bool)

(assert (=> b!190783 (= res!90201 call!19256)))

(assert (=> b!190783 (=> (not res!90201) (not e!125561))))

(declare-fun b!190784 () Bool)

(assert (=> b!190784 (= e!125567 call!19255)))

(declare-fun b!190785 () Bool)

(declare-fun Unit!5769 () Unit!5761)

(assert (=> b!190785 (= e!125571 Unit!5769)))

(declare-fun b!190786 () Bool)

(assert (=> b!190786 (= e!125561 (= (apply!180 lt!94715 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3733 thiss!1248)))))

(declare-fun bm!19255 () Bool)

(assert (=> bm!19255 (= call!19255 call!19252)))

(declare-fun b!190787 () Bool)

(assert (=> b!190787 (= e!125564 (= (apply!180 lt!94715 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) (get!2205 (select (arr!3827 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!190787 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4148 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))))))))

(assert (=> b!190787 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (= (and d!55883 c!34299) b!190778))

(assert (= (and d!55883 (not c!34299)) b!190782))

(assert (= (and b!190782 c!34302) b!190780))

(assert (= (and b!190782 (not c!34302)) b!190781))

(assert (= (and b!190781 c!34301) b!190769))

(assert (= (and b!190781 (not c!34301)) b!190784))

(assert (= (or b!190769 b!190784) bm!19255))

(assert (= (or b!190780 bm!19255) bm!19252))

(assert (= (or b!190780 b!190769) bm!19250))

(assert (= (or b!190778 bm!19252) bm!19253))

(assert (= (or b!190778 bm!19250) bm!19254))

(assert (= (and d!55883 res!90199) b!190777))

(assert (= (and d!55883 c!34303) b!190767))

(assert (= (and d!55883 (not c!34303)) b!190785))

(assert (= (and d!55883 res!90196) b!190779))

(assert (= (and b!190779 res!90197) b!190773))

(assert (= (and b!190779 (not res!90195)) b!190776))

(assert (= (and b!190776 res!90202) b!190787))

(assert (= (and b!190779 res!90198) b!190770))

(assert (= (and b!190770 c!34298) b!190768))

(assert (= (and b!190770 (not c!34298)) b!190774))

(assert (= (and b!190768 res!90200) b!190772))

(assert (= (or b!190768 b!190774) bm!19251))

(assert (= (and b!190770 res!90194) b!190775))

(assert (= (and b!190775 c!34300) b!190783))

(assert (= (and b!190775 (not c!34300)) b!190771))

(assert (= (and b!190783 res!90201) b!190786))

(assert (= (or b!190783 b!190771) bm!19249))

(declare-fun b_lambda!7399 () Bool)

(assert (=> (not b_lambda!7399) (not b!190787)))

(assert (=> b!190787 t!7359))

(declare-fun b_and!11353 () Bool)

(assert (= b_and!11351 (and (=> t!7359 result!4899) b_and!11353)))

(assert (=> b!190776 m!217197))

(assert (=> b!190776 m!217197))

(declare-fun m!217259 () Bool)

(assert (=> b!190776 m!217259))

(assert (=> b!190787 m!217197))

(declare-fun m!217261 () Bool)

(assert (=> b!190787 m!217261))

(declare-fun m!217263 () Bool)

(assert (=> b!190787 m!217263))

(assert (=> b!190787 m!217205))

(assert (=> b!190787 m!217197))

(assert (=> b!190787 m!217263))

(assert (=> b!190787 m!217205))

(declare-fun m!217265 () Bool)

(assert (=> b!190787 m!217265))

(declare-fun m!217267 () Bool)

(assert (=> bm!19251 m!217267))

(declare-fun m!217269 () Bool)

(assert (=> bm!19253 m!217269))

(declare-fun m!217271 () Bool)

(assert (=> b!190772 m!217271))

(declare-fun m!217273 () Bool)

(assert (=> b!190786 m!217273))

(declare-fun m!217275 () Bool)

(assert (=> b!190778 m!217275))

(declare-fun m!217277 () Bool)

(assert (=> bm!19249 m!217277))

(assert (=> b!190773 m!217197))

(assert (=> b!190773 m!217197))

(assert (=> b!190773 m!217221))

(declare-fun m!217279 () Bool)

(assert (=> b!190767 m!217279))

(declare-fun m!217281 () Bool)

(assert (=> b!190767 m!217281))

(declare-fun m!217283 () Bool)

(assert (=> b!190767 m!217283))

(declare-fun m!217285 () Bool)

(assert (=> b!190767 m!217285))

(declare-fun m!217287 () Bool)

(assert (=> b!190767 m!217287))

(assert (=> b!190767 m!217283))

(declare-fun m!217289 () Bool)

(assert (=> b!190767 m!217289))

(declare-fun m!217291 () Bool)

(assert (=> b!190767 m!217291))

(assert (=> b!190767 m!217289))

(declare-fun m!217293 () Bool)

(assert (=> b!190767 m!217293))

(declare-fun m!217295 () Bool)

(assert (=> b!190767 m!217295))

(declare-fun m!217297 () Bool)

(assert (=> b!190767 m!217297))

(assert (=> b!190767 m!217197))

(declare-fun m!217299 () Bool)

(assert (=> b!190767 m!217299))

(declare-fun m!217301 () Bool)

(assert (=> b!190767 m!217301))

(assert (=> b!190767 m!217295))

(declare-fun m!217303 () Bool)

(assert (=> b!190767 m!217303))

(assert (=> b!190767 m!217293))

(declare-fun m!217305 () Bool)

(assert (=> b!190767 m!217305))

(declare-fun m!217307 () Bool)

(assert (=> b!190767 m!217307))

(assert (=> b!190767 m!217269))

(assert (=> b!190777 m!217197))

(assert (=> b!190777 m!217197))

(assert (=> b!190777 m!217221))

(assert (=> d!55883 m!217131))

(declare-fun m!217309 () Bool)

(assert (=> bm!19254 m!217309))

(assert (=> b!190634 d!55883))

(declare-fun b!190804 () Bool)

(declare-fun res!90212 () Bool)

(declare-fun e!125585 () Bool)

(assert (=> b!190804 (=> (not res!90212) (not e!125585))))

(declare-fun call!19264 () Bool)

(assert (=> b!190804 (= res!90212 call!19264)))

(declare-fun e!125582 () Bool)

(assert (=> b!190804 (= e!125582 e!125585)))

(declare-fun b!190805 () Bool)

(declare-fun call!19263 () Bool)

(assert (=> b!190805 (= e!125585 (not call!19263))))

(declare-fun b!190806 () Bool)

(declare-fun res!90213 () Bool)

(assert (=> b!190806 (=> (not res!90213) (not e!125585))))

(declare-fun lt!94721 () SeekEntryResult!684)

(assert (=> b!190806 (= res!90213 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4909 lt!94721)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190806 (and (bvsge (index!4909 lt!94721) #b00000000000000000000000000000000) (bvslt (index!4909 lt!94721) (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun d!55885 () Bool)

(declare-fun e!125583 () Bool)

(assert (=> d!55885 e!125583))

(declare-fun c!34308 () Bool)

(assert (=> d!55885 (= c!34308 ((_ is MissingZero!684) lt!94721))))

(assert (=> d!55885 (= lt!94721 (seekEntryOrOpen!0 key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(declare-fun lt!94722 () Unit!5761)

(declare-fun choose!1037 (array!8120 array!8122 (_ BitVec 32) (_ BitVec 32) V!5571 V!5571 (_ BitVec 64) Int) Unit!5761)

(assert (=> d!55885 (= lt!94722 (choose!1037 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) key!828 (defaultEntry!3892 thiss!1248)))))

(assert (=> d!55885 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55885 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!175 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) key!828 (defaultEntry!3892 thiss!1248)) lt!94722)))

(declare-fun b!190807 () Bool)

(declare-fun e!125584 () Bool)

(assert (=> b!190807 (= e!125583 e!125584)))

(declare-fun res!90211 () Bool)

(assert (=> b!190807 (= res!90211 call!19264)))

(assert (=> b!190807 (=> (not res!90211) (not e!125584))))

(declare-fun b!190808 () Bool)

(assert (=> b!190808 (= e!125584 (not call!19263))))

(declare-fun b!190809 () Bool)

(assert (=> b!190809 (and (bvsge (index!4906 lt!94721) #b00000000000000000000000000000000) (bvslt (index!4906 lt!94721) (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun res!90214 () Bool)

(assert (=> b!190809 (= res!90214 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4906 lt!94721)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190809 (=> (not res!90214) (not e!125584))))

(declare-fun b!190810 () Bool)

(assert (=> b!190810 (= e!125583 e!125582)))

(declare-fun c!34309 () Bool)

(assert (=> b!190810 (= c!34309 ((_ is MissingVacant!684) lt!94721))))

(declare-fun bm!19260 () Bool)

(declare-fun arrayContainsKey!0 (array!8120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19260 (= call!19263 (arrayContainsKey!0 (_keys!5865 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun bm!19261 () Bool)

(assert (=> bm!19261 (= call!19264 (inRange!0 (ite c!34308 (index!4906 lt!94721) (index!4909 lt!94721)) (mask!9099 thiss!1248)))))

(declare-fun b!190811 () Bool)

(assert (=> b!190811 (= e!125582 ((_ is Undefined!684) lt!94721))))

(assert (= (and d!55885 c!34308) b!190807))

(assert (= (and d!55885 (not c!34308)) b!190810))

(assert (= (and b!190807 res!90211) b!190809))

(assert (= (and b!190809 res!90214) b!190808))

(assert (= (and b!190810 c!34309) b!190804))

(assert (= (and b!190810 (not c!34309)) b!190811))

(assert (= (and b!190804 res!90212) b!190806))

(assert (= (and b!190806 res!90213) b!190805))

(assert (= (or b!190807 b!190804) bm!19261))

(assert (= (or b!190808 b!190805) bm!19260))

(assert (=> d!55885 m!217109))

(declare-fun m!217311 () Bool)

(assert (=> d!55885 m!217311))

(assert (=> d!55885 m!217131))

(declare-fun m!217313 () Bool)

(assert (=> b!190806 m!217313))

(declare-fun m!217315 () Bool)

(assert (=> b!190809 m!217315))

(declare-fun m!217317 () Bool)

(assert (=> bm!19260 m!217317))

(declare-fun m!217319 () Bool)

(assert (=> bm!19261 m!217319))

(assert (=> b!190638 d!55885))

(declare-fun d!55887 () Bool)

(declare-fun res!90221 () Bool)

(declare-fun e!125588 () Bool)

(assert (=> d!55887 (=> (not res!90221) (not e!125588))))

(declare-fun simpleValid!195 (LongMapFixedSize!2664) Bool)

(assert (=> d!55887 (= res!90221 (simpleValid!195 thiss!1248))))

(assert (=> d!55887 (= (valid!1086 thiss!1248) e!125588)))

(declare-fun b!190818 () Bool)

(declare-fun res!90222 () Bool)

(assert (=> b!190818 (=> (not res!90222) (not e!125588))))

(declare-fun arrayCountValidKeys!0 (array!8120 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!190818 (= res!90222 (= (arrayCountValidKeys!0 (_keys!5865 thiss!1248) #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))) (_size!1381 thiss!1248)))))

(declare-fun b!190819 () Bool)

(declare-fun res!90223 () Bool)

(assert (=> b!190819 (=> (not res!90223) (not e!125588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8120 (_ BitVec 32)) Bool)

(assert (=> b!190819 (= res!90223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(declare-fun b!190820 () Bool)

(declare-datatypes ((List!2440 0))(
  ( (Nil!2437) (Cons!2436 (h!3074 (_ BitVec 64)) (t!7360 List!2440)) )
))
(declare-fun arrayNoDuplicates!0 (array!8120 (_ BitVec 32) List!2440) Bool)

(assert (=> b!190820 (= e!125588 (arrayNoDuplicates!0 (_keys!5865 thiss!1248) #b00000000000000000000000000000000 Nil!2437))))

(assert (= (and d!55887 res!90221) b!190818))

(assert (= (and b!190818 res!90222) b!190819))

(assert (= (and b!190819 res!90223) b!190820))

(declare-fun m!217321 () Bool)

(assert (=> d!55887 m!217321))

(declare-fun m!217323 () Bool)

(assert (=> b!190818 m!217323))

(declare-fun m!217325 () Bool)

(assert (=> b!190819 m!217325))

(declare-fun m!217327 () Bool)

(assert (=> b!190820 m!217327))

(assert (=> start!19410 d!55887))

(declare-fun b!190833 () Bool)

(declare-fun c!34316 () Bool)

(declare-fun lt!94731 () (_ BitVec 64))

(assert (=> b!190833 (= c!34316 (= lt!94731 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!125596 () SeekEntryResult!684)

(declare-fun e!125595 () SeekEntryResult!684)

(assert (=> b!190833 (= e!125596 e!125595)))

(declare-fun b!190834 () Bool)

(declare-fun e!125597 () SeekEntryResult!684)

(assert (=> b!190834 (= e!125597 e!125596)))

(declare-fun lt!94729 () SeekEntryResult!684)

(assert (=> b!190834 (= lt!94731 (select (arr!3826 (_keys!5865 thiss!1248)) (index!4908 lt!94729)))))

(declare-fun c!34318 () Bool)

(assert (=> b!190834 (= c!34318 (= lt!94731 key!828))))

(declare-fun b!190835 () Bool)

(assert (=> b!190835 (= e!125597 Undefined!684)))

(declare-fun d!55889 () Bool)

(declare-fun lt!94730 () SeekEntryResult!684)

(assert (=> d!55889 (and (or ((_ is Undefined!684) lt!94730) (not ((_ is Found!684) lt!94730)) (and (bvsge (index!4907 lt!94730) #b00000000000000000000000000000000) (bvslt (index!4907 lt!94730) (size!4147 (_keys!5865 thiss!1248))))) (or ((_ is Undefined!684) lt!94730) ((_ is Found!684) lt!94730) (not ((_ is MissingZero!684) lt!94730)) (and (bvsge (index!4906 lt!94730) #b00000000000000000000000000000000) (bvslt (index!4906 lt!94730) (size!4147 (_keys!5865 thiss!1248))))) (or ((_ is Undefined!684) lt!94730) ((_ is Found!684) lt!94730) ((_ is MissingZero!684) lt!94730) (not ((_ is MissingVacant!684) lt!94730)) (and (bvsge (index!4909 lt!94730) #b00000000000000000000000000000000) (bvslt (index!4909 lt!94730) (size!4147 (_keys!5865 thiss!1248))))) (or ((_ is Undefined!684) lt!94730) (ite ((_ is Found!684) lt!94730) (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4907 lt!94730)) key!828) (ite ((_ is MissingZero!684) lt!94730) (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4906 lt!94730)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!684) lt!94730) (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4909 lt!94730)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55889 (= lt!94730 e!125597)))

(declare-fun c!34317 () Bool)

(assert (=> d!55889 (= c!34317 (and ((_ is Intermediate!684) lt!94729) (undefined!1496 lt!94729)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8120 (_ BitVec 32)) SeekEntryResult!684)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55889 (= lt!94729 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9099 thiss!1248)) key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(assert (=> d!55889 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55889 (= (seekEntryOrOpen!0 key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)) lt!94730)))

(declare-fun b!190836 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8120 (_ BitVec 32)) SeekEntryResult!684)

(assert (=> b!190836 (= e!125595 (seekKeyOrZeroReturnVacant!0 (x!20512 lt!94729) (index!4908 lt!94729) (index!4908 lt!94729) key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(declare-fun b!190837 () Bool)

(assert (=> b!190837 (= e!125595 (MissingZero!684 (index!4908 lt!94729)))))

(declare-fun b!190838 () Bool)

(assert (=> b!190838 (= e!125596 (Found!684 (index!4908 lt!94729)))))

(assert (= (and d!55889 c!34317) b!190835))

(assert (= (and d!55889 (not c!34317)) b!190834))

(assert (= (and b!190834 c!34318) b!190838))

(assert (= (and b!190834 (not c!34318)) b!190833))

(assert (= (and b!190833 c!34316) b!190837))

(assert (= (and b!190833 (not c!34316)) b!190836))

(declare-fun m!217329 () Bool)

(assert (=> b!190834 m!217329))

(assert (=> d!55889 m!217131))

(declare-fun m!217331 () Bool)

(assert (=> d!55889 m!217331))

(declare-fun m!217333 () Bool)

(assert (=> d!55889 m!217333))

(declare-fun m!217335 () Bool)

(assert (=> d!55889 m!217335))

(declare-fun m!217337 () Bool)

(assert (=> d!55889 m!217337))

(declare-fun m!217339 () Bool)

(assert (=> d!55889 m!217339))

(assert (=> d!55889 m!217333))

(declare-fun m!217341 () Bool)

(assert (=> b!190836 m!217341))

(assert (=> b!190636 d!55889))

(declare-fun mapIsEmpty!7676 () Bool)

(declare-fun mapRes!7676 () Bool)

(assert (=> mapIsEmpty!7676 mapRes!7676))

(declare-fun condMapEmpty!7676 () Bool)

(declare-fun mapDefault!7676 () ValueCell!1878)

(assert (=> mapNonEmpty!7670 (= condMapEmpty!7676 (= mapRest!7670 ((as const (Array (_ BitVec 32) ValueCell!1878)) mapDefault!7676)))))

(declare-fun e!125602 () Bool)

(assert (=> mapNonEmpty!7670 (= tp!16855 (and e!125602 mapRes!7676))))

(declare-fun b!190846 () Bool)

(assert (=> b!190846 (= e!125602 tp_is_empty!4443)))

(declare-fun mapNonEmpty!7676 () Bool)

(declare-fun tp!16865 () Bool)

(declare-fun e!125603 () Bool)

(assert (=> mapNonEmpty!7676 (= mapRes!7676 (and tp!16865 e!125603))))

(declare-fun mapValue!7676 () ValueCell!1878)

(declare-fun mapKey!7676 () (_ BitVec 32))

(declare-fun mapRest!7676 () (Array (_ BitVec 32) ValueCell!1878))

(assert (=> mapNonEmpty!7676 (= mapRest!7670 (store mapRest!7676 mapKey!7676 mapValue!7676))))

(declare-fun b!190845 () Bool)

(assert (=> b!190845 (= e!125603 tp_is_empty!4443)))

(assert (= (and mapNonEmpty!7670 condMapEmpty!7676) mapIsEmpty!7676))

(assert (= (and mapNonEmpty!7670 (not condMapEmpty!7676)) mapNonEmpty!7676))

(assert (= (and mapNonEmpty!7676 ((_ is ValueCellFull!1878) mapValue!7676)) b!190845))

(assert (= (and mapNonEmpty!7670 ((_ is ValueCellFull!1878) mapDefault!7676)) b!190846))

(declare-fun m!217343 () Bool)

(assert (=> mapNonEmpty!7676 m!217343))

(declare-fun b_lambda!7401 () Bool)

(assert (= b_lambda!7399 (or (and b!190640 b_free!4671) b_lambda!7401)))

(declare-fun b_lambda!7403 () Bool)

(assert (= b_lambda!7397 (or (and b!190640 b_free!4671) b_lambda!7403)))

(check-sat (not b_lambda!7401) (not d!55869) (not b!190773) (not b!190776) (not d!55883) (not b!190689) (not b!190750) (not b!190751) (not bm!19261) (not b!190741) (not b!190778) (not d!55877) (not b_lambda!7403) (not b!190752) (not d!55875) (not bm!19246) (not b!190698) (not bm!19260) (not bm!19253) (not d!55881) (not b_next!4671) (not b!190818) (not b!190820) tp_is_empty!4443 (not d!55889) (not b!190688) (not bm!19247) (not b!190819) (not b!190682) (not b!190760) (not b!190696) (not bm!19244) (not b!190772) (not bm!19249) (not b!190767) (not bm!19254) (not b!190836) (not b!190766) b_and!11353 (not b!190786) (not b!190761) (not b!190787) (not mapNonEmpty!7676) (not b!190746) (not d!55887) (not b!190777) (not d!55879) (not bm!19242) (not d!55885) (not b!190747) (not bm!19251))
(check-sat b_and!11353 (not b_next!4671))
(get-model)

(declare-fun d!55891 () Bool)

(assert (=> d!55891 (= (+!298 (getCurrentListMap!883 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)) (tuple2!3519 key!828 v!309)) (getCurrentListMap!883 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)))))

(assert (=> d!55891 true))

(declare-fun _$5!149 () Unit!5761)

(assert (=> d!55891 (= (choose!1036 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) (index!4907 lt!94573) key!828 v!309 (defaultEntry!3892 thiss!1248)) _$5!149)))

(declare-fun bs!7637 () Bool)

(assert (= bs!7637 d!55891))

(assert (=> bs!7637 m!217127))

(assert (=> bs!7637 m!217127))

(assert (=> bs!7637 m!217257))

(assert (=> bs!7637 m!217129))

(assert (=> bs!7637 m!217135))

(assert (=> d!55881 d!55891))

(assert (=> d!55881 d!55873))

(declare-fun b!190871 () Bool)

(assert (=> b!190871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> b!190871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4148 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))))))))

(declare-fun lt!94750 () ListLongMap!2449)

(declare-fun e!125620 () Bool)

(assert (=> b!190871 (= e!125620 (= (apply!180 lt!94750 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) (get!2205 (select (arr!3827 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!190872 () Bool)

(declare-fun e!125618 () ListLongMap!2449)

(declare-fun call!19267 () ListLongMap!2449)

(assert (=> b!190872 (= e!125618 call!19267)))

(declare-fun d!55893 () Bool)

(declare-fun e!125623 () Bool)

(assert (=> d!55893 e!125623))

(declare-fun res!90235 () Bool)

(assert (=> d!55893 (=> (not res!90235) (not e!125623))))

(assert (=> d!55893 (= res!90235 (not (contains!1345 lt!94750 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!125621 () ListLongMap!2449)

(assert (=> d!55893 (= lt!94750 e!125621)))

(declare-fun c!34328 () Bool)

(assert (=> d!55893 (= c!34328 (bvsge #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> d!55893 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55893 (= (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)) lt!94750)))

(declare-fun bm!19264 () Bool)

(assert (=> bm!19264 (= call!19267 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3892 thiss!1248)))))

(declare-fun b!190873 () Bool)

(assert (=> b!190873 (= e!125621 (ListLongMap!2450 Nil!2435))))

(declare-fun b!190874 () Bool)

(assert (=> b!190874 (= e!125621 e!125618)))

(declare-fun c!34327 () Bool)

(assert (=> b!190874 (= c!34327 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190875 () Bool)

(declare-fun e!125622 () Bool)

(declare-fun isEmpty!486 (ListLongMap!2449) Bool)

(assert (=> b!190875 (= e!125622 (isEmpty!486 lt!94750))))

(declare-fun b!190876 () Bool)

(declare-fun e!125619 () Bool)

(assert (=> b!190876 (= e!125623 e!125619)))

(declare-fun c!34330 () Bool)

(declare-fun e!125624 () Bool)

(assert (=> b!190876 (= c!34330 e!125624)))

(declare-fun res!90233 () Bool)

(assert (=> b!190876 (=> (not res!90233) (not e!125624))))

(assert (=> b!190876 (= res!90233 (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun b!190877 () Bool)

(assert (=> b!190877 (= e!125619 e!125620)))

(assert (=> b!190877 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun res!90232 () Bool)

(assert (=> b!190877 (= res!90232 (contains!1345 lt!94750 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190877 (=> (not res!90232) (not e!125620))))

(declare-fun b!190878 () Bool)

(declare-fun lt!94751 () Unit!5761)

(declare-fun lt!94749 () Unit!5761)

(assert (=> b!190878 (= lt!94751 lt!94749)))

(declare-fun lt!94748 () ListLongMap!2449)

(declare-fun lt!94747 () (_ BitVec 64))

(declare-fun lt!94746 () V!5571)

(declare-fun lt!94752 () (_ BitVec 64))

(assert (=> b!190878 (not (contains!1345 (+!298 lt!94748 (tuple2!3519 lt!94752 lt!94746)) lt!94747))))

(declare-fun addStillNotContains!96 (ListLongMap!2449 (_ BitVec 64) V!5571 (_ BitVec 64)) Unit!5761)

(assert (=> b!190878 (= lt!94749 (addStillNotContains!96 lt!94748 lt!94752 lt!94746 lt!94747))))

(assert (=> b!190878 (= lt!94747 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!190878 (= lt!94746 (get!2205 (select (arr!3827 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!190878 (= lt!94752 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190878 (= lt!94748 call!19267)))

(assert (=> b!190878 (= e!125618 (+!298 call!19267 (tuple2!3519 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000) (get!2205 (select (arr!3827 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!190879 () Bool)

(assert (=> b!190879 (= e!125622 (= lt!94750 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248))) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3892 thiss!1248))))))

(declare-fun b!190880 () Bool)

(assert (=> b!190880 (= e!125624 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190880 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!190881 () Bool)

(declare-fun res!90234 () Bool)

(assert (=> b!190881 (=> (not res!90234) (not e!125623))))

(assert (=> b!190881 (= res!90234 (not (contains!1345 lt!94750 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!190882 () Bool)

(assert (=> b!190882 (= e!125619 e!125622)))

(declare-fun c!34329 () Bool)

(assert (=> b!190882 (= c!34329 (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (= (and d!55893 c!34328) b!190873))

(assert (= (and d!55893 (not c!34328)) b!190874))

(assert (= (and b!190874 c!34327) b!190878))

(assert (= (and b!190874 (not c!34327)) b!190872))

(assert (= (or b!190878 b!190872) bm!19264))

(assert (= (and d!55893 res!90235) b!190881))

(assert (= (and b!190881 res!90234) b!190876))

(assert (= (and b!190876 res!90233) b!190880))

(assert (= (and b!190876 c!34330) b!190877))

(assert (= (and b!190876 (not c!34330)) b!190882))

(assert (= (and b!190877 res!90232) b!190871))

(assert (= (and b!190882 c!34329) b!190879))

(assert (= (and b!190882 (not c!34329)) b!190875))

(declare-fun b_lambda!7405 () Bool)

(assert (=> (not b_lambda!7405) (not b!190871)))

(assert (=> b!190871 t!7359))

(declare-fun b_and!11355 () Bool)

(assert (= b_and!11353 (and (=> t!7359 result!4899) b_and!11355)))

(declare-fun b_lambda!7407 () Bool)

(assert (=> (not b_lambda!7407) (not b!190878)))

(assert (=> b!190878 t!7359))

(declare-fun b_and!11357 () Bool)

(assert (= b_and!11355 (and (=> t!7359 result!4899) b_and!11357)))

(assert (=> b!190880 m!217197))

(assert (=> b!190880 m!217197))

(assert (=> b!190880 m!217221))

(declare-fun m!217345 () Bool)

(assert (=> b!190878 m!217345))

(declare-fun m!217347 () Bool)

(assert (=> b!190878 m!217347))

(assert (=> b!190878 m!217205))

(declare-fun m!217349 () Bool)

(assert (=> b!190878 m!217349))

(declare-fun m!217351 () Bool)

(assert (=> b!190878 m!217351))

(assert (=> b!190878 m!217197))

(assert (=> b!190878 m!217263))

(assert (=> b!190878 m!217205))

(assert (=> b!190878 m!217265))

(assert (=> b!190878 m!217263))

(assert (=> b!190878 m!217349))

(assert (=> b!190874 m!217197))

(assert (=> b!190874 m!217197))

(assert (=> b!190874 m!217221))

(assert (=> b!190877 m!217197))

(assert (=> b!190877 m!217197))

(declare-fun m!217353 () Bool)

(assert (=> b!190877 m!217353))

(assert (=> b!190871 m!217205))

(assert (=> b!190871 m!217197))

(declare-fun m!217355 () Bool)

(assert (=> b!190871 m!217355))

(assert (=> b!190871 m!217197))

(assert (=> b!190871 m!217263))

(assert (=> b!190871 m!217205))

(assert (=> b!190871 m!217265))

(assert (=> b!190871 m!217263))

(declare-fun m!217357 () Bool)

(assert (=> b!190879 m!217357))

(declare-fun m!217359 () Bool)

(assert (=> d!55893 m!217359))

(assert (=> d!55893 m!217131))

(assert (=> bm!19264 m!217357))

(declare-fun m!217361 () Bool)

(assert (=> b!190875 m!217361))

(declare-fun m!217363 () Bool)

(assert (=> b!190881 m!217363))

(assert (=> bm!19253 d!55893))

(declare-fun b!190883 () Bool)

(assert (=> b!190883 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> b!190883 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4148 (_values!3875 thiss!1248))))))

(declare-fun e!125627 () Bool)

(declare-fun lt!94757 () ListLongMap!2449)

(assert (=> b!190883 (= e!125627 (= (apply!180 lt!94757 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) (get!2205 (select (arr!3827 (_values!3875 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!190884 () Bool)

(declare-fun e!125625 () ListLongMap!2449)

(declare-fun call!19268 () ListLongMap!2449)

(assert (=> b!190884 (= e!125625 call!19268)))

(declare-fun d!55895 () Bool)

(declare-fun e!125630 () Bool)

(assert (=> d!55895 e!125630))

(declare-fun res!90239 () Bool)

(assert (=> d!55895 (=> (not res!90239) (not e!125630))))

(assert (=> d!55895 (= res!90239 (not (contains!1345 lt!94757 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!125628 () ListLongMap!2449)

(assert (=> d!55895 (= lt!94757 e!125628)))

(declare-fun c!34332 () Bool)

(assert (=> d!55895 (= c!34332 (bvsge #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> d!55895 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55895 (= (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)) lt!94757)))

(declare-fun bm!19265 () Bool)

(assert (=> bm!19265 (= call!19268 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3892 thiss!1248)))))

(declare-fun b!190885 () Bool)

(assert (=> b!190885 (= e!125628 (ListLongMap!2450 Nil!2435))))

(declare-fun b!190886 () Bool)

(assert (=> b!190886 (= e!125628 e!125625)))

(declare-fun c!34331 () Bool)

(assert (=> b!190886 (= c!34331 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190887 () Bool)

(declare-fun e!125629 () Bool)

(assert (=> b!190887 (= e!125629 (isEmpty!486 lt!94757))))

(declare-fun b!190888 () Bool)

(declare-fun e!125626 () Bool)

(assert (=> b!190888 (= e!125630 e!125626)))

(declare-fun c!34334 () Bool)

(declare-fun e!125631 () Bool)

(assert (=> b!190888 (= c!34334 e!125631)))

(declare-fun res!90237 () Bool)

(assert (=> b!190888 (=> (not res!90237) (not e!125631))))

(assert (=> b!190888 (= res!90237 (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun b!190889 () Bool)

(assert (=> b!190889 (= e!125626 e!125627)))

(assert (=> b!190889 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun res!90236 () Bool)

(assert (=> b!190889 (= res!90236 (contains!1345 lt!94757 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190889 (=> (not res!90236) (not e!125627))))

(declare-fun b!190890 () Bool)

(declare-fun lt!94758 () Unit!5761)

(declare-fun lt!94756 () Unit!5761)

(assert (=> b!190890 (= lt!94758 lt!94756)))

(declare-fun lt!94759 () (_ BitVec 64))

(declare-fun lt!94755 () ListLongMap!2449)

(declare-fun lt!94753 () V!5571)

(declare-fun lt!94754 () (_ BitVec 64))

(assert (=> b!190890 (not (contains!1345 (+!298 lt!94755 (tuple2!3519 lt!94759 lt!94753)) lt!94754))))

(assert (=> b!190890 (= lt!94756 (addStillNotContains!96 lt!94755 lt!94759 lt!94753 lt!94754))))

(assert (=> b!190890 (= lt!94754 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!190890 (= lt!94753 (get!2205 (select (arr!3827 (_values!3875 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!190890 (= lt!94759 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190890 (= lt!94755 call!19268)))

(assert (=> b!190890 (= e!125625 (+!298 call!19268 (tuple2!3519 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000) (get!2205 (select (arr!3827 (_values!3875 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!190891 () Bool)

(assert (=> b!190891 (= e!125629 (= lt!94757 (getCurrentListMapNoExtraKeys!210 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3892 thiss!1248))))))

(declare-fun b!190892 () Bool)

(assert (=> b!190892 (= e!125631 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190892 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!190893 () Bool)

(declare-fun res!90238 () Bool)

(assert (=> b!190893 (=> (not res!90238) (not e!125630))))

(assert (=> b!190893 (= res!90238 (not (contains!1345 lt!94757 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!190894 () Bool)

(assert (=> b!190894 (= e!125626 e!125629)))

(declare-fun c!34333 () Bool)

(assert (=> b!190894 (= c!34333 (bvslt #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (= (and d!55895 c!34332) b!190885))

(assert (= (and d!55895 (not c!34332)) b!190886))

(assert (= (and b!190886 c!34331) b!190890))

(assert (= (and b!190886 (not c!34331)) b!190884))

(assert (= (or b!190890 b!190884) bm!19265))

(assert (= (and d!55895 res!90239) b!190893))

(assert (= (and b!190893 res!90238) b!190888))

(assert (= (and b!190888 res!90237) b!190892))

(assert (= (and b!190888 c!34334) b!190889))

(assert (= (and b!190888 (not c!34334)) b!190894))

(assert (= (and b!190889 res!90236) b!190883))

(assert (= (and b!190894 c!34333) b!190891))

(assert (= (and b!190894 (not c!34333)) b!190887))

(declare-fun b_lambda!7409 () Bool)

(assert (=> (not b_lambda!7409) (not b!190883)))

(assert (=> b!190883 t!7359))

(declare-fun b_and!11359 () Bool)

(assert (= b_and!11357 (and (=> t!7359 result!4899) b_and!11359)))

(declare-fun b_lambda!7411 () Bool)

(assert (=> (not b_lambda!7411) (not b!190890)))

(assert (=> b!190890 t!7359))

(declare-fun b_and!11361 () Bool)

(assert (= b_and!11359 (and (=> t!7359 result!4899) b_and!11361)))

(assert (=> b!190892 m!217197))

(assert (=> b!190892 m!217197))

(assert (=> b!190892 m!217221))

(declare-fun m!217365 () Bool)

(assert (=> b!190890 m!217365))

(declare-fun m!217367 () Bool)

(assert (=> b!190890 m!217367))

(assert (=> b!190890 m!217205))

(declare-fun m!217369 () Bool)

(assert (=> b!190890 m!217369))

(declare-fun m!217371 () Bool)

(assert (=> b!190890 m!217371))

(assert (=> b!190890 m!217197))

(assert (=> b!190890 m!217203))

(assert (=> b!190890 m!217205))

(assert (=> b!190890 m!217207))

(assert (=> b!190890 m!217203))

(assert (=> b!190890 m!217369))

(assert (=> b!190886 m!217197))

(assert (=> b!190886 m!217197))

(assert (=> b!190886 m!217221))

(assert (=> b!190889 m!217197))

(assert (=> b!190889 m!217197))

(declare-fun m!217373 () Bool)

(assert (=> b!190889 m!217373))

(assert (=> b!190883 m!217205))

(assert (=> b!190883 m!217197))

(declare-fun m!217375 () Bool)

(assert (=> b!190883 m!217375))

(assert (=> b!190883 m!217197))

(assert (=> b!190883 m!217203))

(assert (=> b!190883 m!217205))

(assert (=> b!190883 m!217207))

(assert (=> b!190883 m!217203))

(declare-fun m!217377 () Bool)

(assert (=> b!190891 m!217377))

(declare-fun m!217379 () Bool)

(assert (=> d!55895 m!217379))

(assert (=> d!55895 m!217131))

(assert (=> bm!19265 m!217377))

(declare-fun m!217381 () Bool)

(assert (=> b!190887 m!217381))

(declare-fun m!217383 () Bool)

(assert (=> b!190893 m!217383))

(assert (=> bm!19246 d!55895))

(assert (=> d!55879 d!55873))

(declare-fun d!55897 () Bool)

(assert (=> d!55897 (= (inRange!0 (ite c!34308 (index!4906 lt!94721) (index!4909 lt!94721)) (mask!9099 thiss!1248)) (and (bvsge (ite c!34308 (index!4906 lt!94721) (index!4909 lt!94721)) #b00000000000000000000000000000000) (bvslt (ite c!34308 (index!4906 lt!94721) (index!4909 lt!94721)) (bvadd (mask!9099 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!19261 d!55897))

(declare-fun b!190913 () Bool)

(declare-fun lt!94764 () SeekEntryResult!684)

(assert (=> b!190913 (and (bvsge (index!4908 lt!94764) #b00000000000000000000000000000000) (bvslt (index!4908 lt!94764) (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun e!125646 () Bool)

(assert (=> b!190913 (= e!125646 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4908 lt!94764)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190914 () Bool)

(declare-fun e!125643 () SeekEntryResult!684)

(assert (=> b!190914 (= e!125643 (Intermediate!684 false (toIndex!0 key!828 (mask!9099 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!190915 () Bool)

(declare-fun e!125645 () Bool)

(declare-fun e!125642 () Bool)

(assert (=> b!190915 (= e!125645 e!125642)))

(declare-fun res!90246 () Bool)

(assert (=> b!190915 (= res!90246 (and ((_ is Intermediate!684) lt!94764) (not (undefined!1496 lt!94764)) (bvslt (x!20512 lt!94764) #b01111111111111111111111111111110) (bvsge (x!20512 lt!94764) #b00000000000000000000000000000000) (bvsge (x!20512 lt!94764) #b00000000000000000000000000000000)))))

(assert (=> b!190915 (=> (not res!90246) (not e!125642))))

(declare-fun b!190916 () Bool)

(declare-fun e!125644 () SeekEntryResult!684)

(assert (=> b!190916 (= e!125644 (Intermediate!684 true (toIndex!0 key!828 (mask!9099 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!190917 () Bool)

(assert (=> b!190917 (= e!125645 (bvsge (x!20512 lt!94764) #b01111111111111111111111111111110))))

(declare-fun d!55899 () Bool)

(assert (=> d!55899 e!125645))

(declare-fun c!34343 () Bool)

(assert (=> d!55899 (= c!34343 (and ((_ is Intermediate!684) lt!94764) (undefined!1496 lt!94764)))))

(assert (=> d!55899 (= lt!94764 e!125644)))

(declare-fun c!34341 () Bool)

(assert (=> d!55899 (= c!34341 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!94765 () (_ BitVec 64))

(assert (=> d!55899 (= lt!94765 (select (arr!3826 (_keys!5865 thiss!1248)) (toIndex!0 key!828 (mask!9099 thiss!1248))))))

(assert (=> d!55899 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!55899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9099 thiss!1248)) key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)) lt!94764)))

(declare-fun b!190918 () Bool)

(assert (=> b!190918 (= e!125644 e!125643)))

(declare-fun c!34342 () Bool)

(assert (=> b!190918 (= c!34342 (or (= lt!94765 key!828) (= (bvadd lt!94765 lt!94765) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!190919 () Bool)

(assert (=> b!190919 (and (bvsge (index!4908 lt!94764) #b00000000000000000000000000000000) (bvslt (index!4908 lt!94764) (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun res!90247 () Bool)

(assert (=> b!190919 (= res!90247 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4908 lt!94764)) key!828))))

(assert (=> b!190919 (=> res!90247 e!125646)))

(assert (=> b!190919 (= e!125642 e!125646)))

(declare-fun b!190920 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!190920 (= e!125643 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!9099 thiss!1248)) #b00000000000000000000000000000000 (mask!9099 thiss!1248)) key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(declare-fun b!190921 () Bool)

(assert (=> b!190921 (and (bvsge (index!4908 lt!94764) #b00000000000000000000000000000000) (bvslt (index!4908 lt!94764) (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun res!90248 () Bool)

(assert (=> b!190921 (= res!90248 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4908 lt!94764)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190921 (=> res!90248 e!125646)))

(assert (= (and d!55899 c!34341) b!190916))

(assert (= (and d!55899 (not c!34341)) b!190918))

(assert (= (and b!190918 c!34342) b!190914))

(assert (= (and b!190918 (not c!34342)) b!190920))

(assert (= (and d!55899 c!34343) b!190917))

(assert (= (and d!55899 (not c!34343)) b!190915))

(assert (= (and b!190915 res!90246) b!190919))

(assert (= (and b!190919 (not res!90247)) b!190921))

(assert (= (and b!190921 (not res!90248)) b!190913))

(declare-fun m!217385 () Bool)

(assert (=> b!190919 m!217385))

(assert (=> d!55899 m!217333))

(declare-fun m!217387 () Bool)

(assert (=> d!55899 m!217387))

(assert (=> d!55899 m!217131))

(assert (=> b!190921 m!217385))

(assert (=> b!190920 m!217333))

(declare-fun m!217389 () Bool)

(assert (=> b!190920 m!217389))

(assert (=> b!190920 m!217389))

(declare-fun m!217391 () Bool)

(assert (=> b!190920 m!217391))

(assert (=> b!190913 m!217385))

(assert (=> d!55889 d!55899))

(declare-fun d!55901 () Bool)

(declare-fun lt!94771 () (_ BitVec 32))

(declare-fun lt!94770 () (_ BitVec 32))

(assert (=> d!55901 (= lt!94771 (bvmul (bvxor lt!94770 (bvlshr lt!94770 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!55901 (= lt!94770 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!55901 (and (bvsge (mask!9099 thiss!1248) #b00000000000000000000000000000000) (let ((res!90249 (let ((h!3075 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20530 (bvmul (bvxor h!3075 (bvlshr h!3075 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20530 (bvlshr x!20530 #b00000000000000000000000000001101)) (mask!9099 thiss!1248)))))) (and (bvslt res!90249 (bvadd (mask!9099 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!90249 #b00000000000000000000000000000000))))))

(assert (=> d!55901 (= (toIndex!0 key!828 (mask!9099 thiss!1248)) (bvand (bvxor lt!94771 (bvlshr lt!94771 #b00000000000000000000000000001101)) (mask!9099 thiss!1248)))))

(assert (=> d!55889 d!55901))

(assert (=> d!55889 d!55873))

(assert (=> d!55885 d!55889))

(declare-fun d!55903 () Bool)

(declare-fun e!125658 () Bool)

(assert (=> d!55903 e!125658))

(declare-fun c!34349 () Bool)

(declare-fun lt!94774 () SeekEntryResult!684)

(assert (=> d!55903 (= c!34349 ((_ is MissingZero!684) lt!94774))))

(assert (=> d!55903 (= lt!94774 (seekEntryOrOpen!0 key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(assert (=> d!55903 true))

(declare-fun _$34!1075 () Unit!5761)

(assert (=> d!55903 (= (choose!1037 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) key!828 (defaultEntry!3892 thiss!1248)) _$34!1075)))

(declare-fun b!190938 () Bool)

(declare-fun res!90261 () Bool)

(assert (=> b!190938 (= res!90261 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4906 lt!94774)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!125655 () Bool)

(assert (=> b!190938 (=> (not res!90261) (not e!125655))))

(declare-fun b!190939 () Bool)

(declare-fun e!125657 () Bool)

(declare-fun call!19273 () Bool)

(assert (=> b!190939 (= e!125657 (not call!19273))))

(declare-fun b!190940 () Bool)

(assert (=> b!190940 (= e!125658 e!125655)))

(declare-fun res!90259 () Bool)

(declare-fun call!19274 () Bool)

(assert (=> b!190940 (= res!90259 call!19274)))

(assert (=> b!190940 (=> (not res!90259) (not e!125655))))

(declare-fun b!190941 () Bool)

(declare-fun e!125656 () Bool)

(assert (=> b!190941 (= e!125656 ((_ is Undefined!684) lt!94774))))

(declare-fun b!190942 () Bool)

(assert (=> b!190942 (= e!125655 (not call!19273))))

(declare-fun bm!19270 () Bool)

(assert (=> bm!19270 (= call!19274 (inRange!0 (ite c!34349 (index!4906 lt!94774) (index!4909 lt!94774)) (mask!9099 thiss!1248)))))

(declare-fun bm!19271 () Bool)

(assert (=> bm!19271 (= call!19273 (arrayContainsKey!0 (_keys!5865 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!190943 () Bool)

(declare-fun res!90258 () Bool)

(assert (=> b!190943 (=> (not res!90258) (not e!125657))))

(assert (=> b!190943 (= res!90258 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4909 lt!94774)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190944 () Bool)

(assert (=> b!190944 (= e!125658 e!125656)))

(declare-fun c!34348 () Bool)

(assert (=> b!190944 (= c!34348 ((_ is MissingVacant!684) lt!94774))))

(declare-fun b!190945 () Bool)

(declare-fun res!90260 () Bool)

(assert (=> b!190945 (=> (not res!90260) (not e!125657))))

(assert (=> b!190945 (= res!90260 call!19274)))

(assert (=> b!190945 (= e!125656 e!125657)))

(assert (= (and d!55903 c!34349) b!190940))

(assert (= (and d!55903 (not c!34349)) b!190944))

(assert (= (and b!190940 res!90259) b!190938))

(assert (= (and b!190938 res!90261) b!190942))

(assert (= (and b!190944 c!34348) b!190945))

(assert (= (and b!190944 (not c!34348)) b!190941))

(assert (= (and b!190945 res!90260) b!190943))

(assert (= (and b!190943 res!90258) b!190939))

(assert (= (or b!190940 b!190945) bm!19270))

(assert (= (or b!190942 b!190939) bm!19271))

(assert (=> d!55903 m!217109))

(declare-fun m!217393 () Bool)

(assert (=> bm!19270 m!217393))

(declare-fun m!217395 () Bool)

(assert (=> b!190943 m!217395))

(declare-fun m!217397 () Bool)

(assert (=> b!190938 m!217397))

(assert (=> bm!19271 m!217317))

(assert (=> d!55885 d!55903))

(assert (=> d!55885 d!55873))

(declare-fun lt!94777 () Bool)

(declare-fun d!55905 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!151 (List!2438) (InoxSet tuple2!3518))

(assert (=> d!55905 (= lt!94777 (select (content!151 (toList!1240 lt!94613)) (tuple2!3519 key!828 v!309)))))

(declare-fun e!125663 () Bool)

(assert (=> d!55905 (= lt!94777 e!125663)))

(declare-fun res!90266 () Bool)

(assert (=> d!55905 (=> (not res!90266) (not e!125663))))

(assert (=> d!55905 (= res!90266 ((_ is Cons!2434) (toList!1240 lt!94613)))))

(assert (=> d!55905 (= (contains!1347 (toList!1240 lt!94613) (tuple2!3519 key!828 v!309)) lt!94777)))

(declare-fun b!190950 () Bool)

(declare-fun e!125664 () Bool)

(assert (=> b!190950 (= e!125663 e!125664)))

(declare-fun res!90267 () Bool)

(assert (=> b!190950 (=> res!90267 e!125664)))

(assert (=> b!190950 (= res!90267 (= (h!3072 (toList!1240 lt!94613)) (tuple2!3519 key!828 v!309)))))

(declare-fun b!190951 () Bool)

(assert (=> b!190951 (= e!125664 (contains!1347 (t!7356 (toList!1240 lt!94613)) (tuple2!3519 key!828 v!309)))))

(assert (= (and d!55905 res!90266) b!190950))

(assert (= (and b!190950 (not res!90267)) b!190951))

(declare-fun m!217399 () Bool)

(assert (=> d!55905 m!217399))

(declare-fun m!217401 () Bool)

(assert (=> d!55905 m!217401))

(declare-fun m!217403 () Bool)

(assert (=> b!190951 m!217403))

(assert (=> b!190689 d!55905))

(declare-fun d!55907 () Bool)

(assert (=> d!55907 (= (apply!180 (+!298 lt!94710 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248))) lt!94708) (apply!180 lt!94710 lt!94708))))

(declare-fun lt!94780 () Unit!5761)

(declare-fun choose!1038 (ListLongMap!2449 (_ BitVec 64) V!5571 (_ BitVec 64)) Unit!5761)

(assert (=> d!55907 (= lt!94780 (choose!1038 lt!94710 lt!94713 (minValue!3733 thiss!1248) lt!94708))))

(declare-fun e!125667 () Bool)

(assert (=> d!55907 e!125667))

(declare-fun res!90270 () Bool)

(assert (=> d!55907 (=> (not res!90270) (not e!125667))))

(assert (=> d!55907 (= res!90270 (contains!1345 lt!94710 lt!94708))))

(assert (=> d!55907 (= (addApplyDifferent!156 lt!94710 lt!94713 (minValue!3733 thiss!1248) lt!94708) lt!94780)))

(declare-fun b!190955 () Bool)

(assert (=> b!190955 (= e!125667 (not (= lt!94708 lt!94713)))))

(assert (= (and d!55907 res!90270) b!190955))

(declare-fun m!217405 () Bool)

(assert (=> d!55907 m!217405))

(assert (=> d!55907 m!217283))

(assert (=> d!55907 m!217285))

(assert (=> d!55907 m!217281))

(declare-fun m!217407 () Bool)

(assert (=> d!55907 m!217407))

(assert (=> d!55907 m!217283))

(assert (=> b!190767 d!55907))

(declare-fun d!55909 () Bool)

(assert (=> d!55909 (= (apply!180 (+!298 lt!94716 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248))) lt!94696) (apply!180 lt!94716 lt!94696))))

(declare-fun lt!94781 () Unit!5761)

(assert (=> d!55909 (= lt!94781 (choose!1038 lt!94716 lt!94709 (zeroValue!3733 thiss!1248) lt!94696))))

(declare-fun e!125668 () Bool)

(assert (=> d!55909 e!125668))

(declare-fun res!90271 () Bool)

(assert (=> d!55909 (=> (not res!90271) (not e!125668))))

(assert (=> d!55909 (= res!90271 (contains!1345 lt!94716 lt!94696))))

(assert (=> d!55909 (= (addApplyDifferent!156 lt!94716 lt!94709 (zeroValue!3733 thiss!1248) lt!94696) lt!94781)))

(declare-fun b!190956 () Bool)

(assert (=> b!190956 (= e!125668 (not (= lt!94696 lt!94709)))))

(assert (= (and d!55909 res!90271) b!190956))

(declare-fun m!217409 () Bool)

(assert (=> d!55909 m!217409))

(assert (=> d!55909 m!217293))

(assert (=> d!55909 m!217305))

(assert (=> d!55909 m!217279))

(declare-fun m!217411 () Bool)

(assert (=> d!55909 m!217411))

(assert (=> d!55909 m!217293))

(assert (=> b!190767 d!55909))

(declare-fun d!55911 () Bool)

(declare-fun e!125669 () Bool)

(assert (=> d!55911 e!125669))

(declare-fun res!90273 () Bool)

(assert (=> d!55911 (=> (not res!90273) (not e!125669))))

(declare-fun lt!94785 () ListLongMap!2449)

(assert (=> d!55911 (= res!90273 (contains!1345 lt!94785 (_1!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248)))))))

(declare-fun lt!94782 () List!2438)

(assert (=> d!55911 (= lt!94785 (ListLongMap!2450 lt!94782))))

(declare-fun lt!94783 () Unit!5761)

(declare-fun lt!94784 () Unit!5761)

(assert (=> d!55911 (= lt!94783 lt!94784)))

(assert (=> d!55911 (= (getValueByKey!236 lt!94782 (_1!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248)))))))

(assert (=> d!55911 (= lt!94784 (lemmaContainsTupThenGetReturnValue!125 lt!94782 (_1!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248)))))))

(assert (=> d!55911 (= lt!94782 (insertStrictlySorted!127 (toList!1240 lt!94703) (_1!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248)))))))

(assert (=> d!55911 (= (+!298 lt!94703 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248))) lt!94785)))

(declare-fun b!190957 () Bool)

(declare-fun res!90272 () Bool)

(assert (=> b!190957 (=> (not res!90272) (not e!125669))))

(assert (=> b!190957 (= res!90272 (= (getValueByKey!236 (toList!1240 lt!94785) (_1!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248))))))))

(declare-fun b!190958 () Bool)

(assert (=> b!190958 (= e!125669 (contains!1347 (toList!1240 lt!94785) (tuple2!3519 lt!94711 (minValue!3733 thiss!1248))))))

(assert (= (and d!55911 res!90273) b!190957))

(assert (= (and b!190957 res!90272) b!190958))

(declare-fun m!217413 () Bool)

(assert (=> d!55911 m!217413))

(declare-fun m!217415 () Bool)

(assert (=> d!55911 m!217415))

(declare-fun m!217417 () Bool)

(assert (=> d!55911 m!217417))

(declare-fun m!217419 () Bool)

(assert (=> d!55911 m!217419))

(declare-fun m!217421 () Bool)

(assert (=> b!190957 m!217421))

(declare-fun m!217423 () Bool)

(assert (=> b!190958 m!217423))

(assert (=> b!190767 d!55911))

(declare-fun d!55913 () Bool)

(declare-fun e!125671 () Bool)

(assert (=> d!55913 e!125671))

(declare-fun res!90274 () Bool)

(assert (=> d!55913 (=> res!90274 e!125671)))

(declare-fun lt!94787 () Bool)

(assert (=> d!55913 (= res!90274 (not lt!94787))))

(declare-fun lt!94786 () Bool)

(assert (=> d!55913 (= lt!94787 lt!94786)))

(declare-fun lt!94788 () Unit!5761)

(declare-fun e!125670 () Unit!5761)

(assert (=> d!55913 (= lt!94788 e!125670)))

(declare-fun c!34350 () Bool)

(assert (=> d!55913 (= c!34350 lt!94786)))

(assert (=> d!55913 (= lt!94786 (containsKey!240 (toList!1240 (+!298 lt!94697 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))) lt!94712))))

(assert (=> d!55913 (= (contains!1345 (+!298 lt!94697 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248))) lt!94712) lt!94787)))

(declare-fun b!190959 () Bool)

(declare-fun lt!94789 () Unit!5761)

(assert (=> b!190959 (= e!125670 lt!94789)))

(assert (=> b!190959 (= lt!94789 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 (+!298 lt!94697 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))) lt!94712))))

(assert (=> b!190959 (isDefined!190 (getValueByKey!236 (toList!1240 (+!298 lt!94697 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))) lt!94712))))

(declare-fun b!190960 () Bool)

(declare-fun Unit!5770 () Unit!5761)

(assert (=> b!190960 (= e!125670 Unit!5770)))

(declare-fun b!190961 () Bool)

(assert (=> b!190961 (= e!125671 (isDefined!190 (getValueByKey!236 (toList!1240 (+!298 lt!94697 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))) lt!94712)))))

(assert (= (and d!55913 c!34350) b!190959))

(assert (= (and d!55913 (not c!34350)) b!190960))

(assert (= (and d!55913 (not res!90274)) b!190961))

(declare-fun m!217425 () Bool)

(assert (=> d!55913 m!217425))

(declare-fun m!217427 () Bool)

(assert (=> b!190959 m!217427))

(declare-fun m!217429 () Bool)

(assert (=> b!190959 m!217429))

(assert (=> b!190959 m!217429))

(declare-fun m!217431 () Bool)

(assert (=> b!190959 m!217431))

(assert (=> b!190961 m!217429))

(assert (=> b!190961 m!217429))

(assert (=> b!190961 m!217431))

(assert (=> b!190767 d!55913))

(declare-fun d!55915 () Bool)

(declare-fun e!125672 () Bool)

(assert (=> d!55915 e!125672))

(declare-fun res!90276 () Bool)

(assert (=> d!55915 (=> (not res!90276) (not e!125672))))

(declare-fun lt!94793 () ListLongMap!2449)

(assert (=> d!55915 (= res!90276 (contains!1345 lt!94793 (_1!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))))))

(declare-fun lt!94790 () List!2438)

(assert (=> d!55915 (= lt!94793 (ListLongMap!2450 lt!94790))))

(declare-fun lt!94791 () Unit!5761)

(declare-fun lt!94792 () Unit!5761)

(assert (=> d!55915 (= lt!94791 lt!94792)))

(assert (=> d!55915 (= (getValueByKey!236 lt!94790 (_1!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55915 (= lt!94792 (lemmaContainsTupThenGetReturnValue!125 lt!94790 (_1!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55915 (= lt!94790 (insertStrictlySorted!127 (toList!1240 lt!94697) (_1!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55915 (= (+!298 lt!94697 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248))) lt!94793)))

(declare-fun b!190962 () Bool)

(declare-fun res!90275 () Bool)

(assert (=> b!190962 (=> (not res!90275) (not e!125672))))

(assert (=> b!190962 (= res!90275 (= (getValueByKey!236 (toList!1240 lt!94793) (_1!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248))))))))

(declare-fun b!190963 () Bool)

(assert (=> b!190963 (= e!125672 (contains!1347 (toList!1240 lt!94793) (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248))))))

(assert (= (and d!55915 res!90276) b!190962))

(assert (= (and b!190962 res!90275) b!190963))

(declare-fun m!217433 () Bool)

(assert (=> d!55915 m!217433))

(declare-fun m!217435 () Bool)

(assert (=> d!55915 m!217435))

(declare-fun m!217437 () Bool)

(assert (=> d!55915 m!217437))

(declare-fun m!217439 () Bool)

(assert (=> d!55915 m!217439))

(declare-fun m!217441 () Bool)

(assert (=> b!190962 m!217441))

(declare-fun m!217443 () Bool)

(assert (=> b!190963 m!217443))

(assert (=> b!190767 d!55915))

(declare-fun d!55917 () Bool)

(declare-fun e!125673 () Bool)

(assert (=> d!55917 e!125673))

(declare-fun res!90278 () Bool)

(assert (=> d!55917 (=> (not res!90278) (not e!125673))))

(declare-fun lt!94797 () ListLongMap!2449)

(assert (=> d!55917 (= res!90278 (contains!1345 lt!94797 (_1!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248)))))))

(declare-fun lt!94794 () List!2438)

(assert (=> d!55917 (= lt!94797 (ListLongMap!2450 lt!94794))))

(declare-fun lt!94795 () Unit!5761)

(declare-fun lt!94796 () Unit!5761)

(assert (=> d!55917 (= lt!94795 lt!94796)))

(assert (=> d!55917 (= (getValueByKey!236 lt!94794 (_1!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55917 (= lt!94796 (lemmaContainsTupThenGetReturnValue!125 lt!94794 (_1!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55917 (= lt!94794 (insertStrictlySorted!127 (toList!1240 lt!94716) (_1!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55917 (= (+!298 lt!94716 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248))) lt!94797)))

(declare-fun b!190964 () Bool)

(declare-fun res!90277 () Bool)

(assert (=> b!190964 (=> (not res!90277) (not e!125673))))

(assert (=> b!190964 (= res!90277 (= (getValueByKey!236 (toList!1240 lt!94797) (_1!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248))))))))

(declare-fun b!190965 () Bool)

(assert (=> b!190965 (= e!125673 (contains!1347 (toList!1240 lt!94797) (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248))))))

(assert (= (and d!55917 res!90278) b!190964))

(assert (= (and b!190964 res!90277) b!190965))

(declare-fun m!217445 () Bool)

(assert (=> d!55917 m!217445))

(declare-fun m!217447 () Bool)

(assert (=> d!55917 m!217447))

(declare-fun m!217449 () Bool)

(assert (=> d!55917 m!217449))

(declare-fun m!217451 () Bool)

(assert (=> d!55917 m!217451))

(declare-fun m!217453 () Bool)

(assert (=> b!190964 m!217453))

(declare-fun m!217455 () Bool)

(assert (=> b!190965 m!217455))

(assert (=> b!190767 d!55917))

(declare-fun d!55919 () Bool)

(assert (=> d!55919 (contains!1345 (+!298 lt!94697 (tuple2!3519 lt!94701 (zeroValue!3733 thiss!1248))) lt!94712)))

(declare-fun lt!94800 () Unit!5761)

(declare-fun choose!1039 (ListLongMap!2449 (_ BitVec 64) V!5571 (_ BitVec 64)) Unit!5761)

(assert (=> d!55919 (= lt!94800 (choose!1039 lt!94697 lt!94701 (zeroValue!3733 thiss!1248) lt!94712))))

(assert (=> d!55919 (contains!1345 lt!94697 lt!94712)))

(assert (=> d!55919 (= (addStillContains!156 lt!94697 lt!94701 (zeroValue!3733 thiss!1248) lt!94712) lt!94800)))

(declare-fun bs!7638 () Bool)

(assert (= bs!7638 d!55919))

(assert (=> bs!7638 m!217295))

(assert (=> bs!7638 m!217295))

(assert (=> bs!7638 m!217303))

(declare-fun m!217457 () Bool)

(assert (=> bs!7638 m!217457))

(declare-fun m!217459 () Bool)

(assert (=> bs!7638 m!217459))

(assert (=> b!190767 d!55919))

(declare-fun d!55921 () Bool)

(declare-fun get!2206 (Option!242) V!5571)

(assert (=> d!55921 (= (apply!180 (+!298 lt!94703 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248))) lt!94699) (get!2206 (getValueByKey!236 (toList!1240 (+!298 lt!94703 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248)))) lt!94699)))))

(declare-fun bs!7639 () Bool)

(assert (= bs!7639 d!55921))

(declare-fun m!217461 () Bool)

(assert (=> bs!7639 m!217461))

(assert (=> bs!7639 m!217461))

(declare-fun m!217463 () Bool)

(assert (=> bs!7639 m!217463))

(assert (=> b!190767 d!55921))

(declare-fun d!55923 () Bool)

(assert (=> d!55923 (= (apply!180 (+!298 lt!94703 (tuple2!3519 lt!94711 (minValue!3733 thiss!1248))) lt!94699) (apply!180 lt!94703 lt!94699))))

(declare-fun lt!94801 () Unit!5761)

(assert (=> d!55923 (= lt!94801 (choose!1038 lt!94703 lt!94711 (minValue!3733 thiss!1248) lt!94699))))

(declare-fun e!125674 () Bool)

(assert (=> d!55923 e!125674))

(declare-fun res!90279 () Bool)

(assert (=> d!55923 (=> (not res!90279) (not e!125674))))

(assert (=> d!55923 (= res!90279 (contains!1345 lt!94703 lt!94699))))

(assert (=> d!55923 (= (addApplyDifferent!156 lt!94703 lt!94711 (minValue!3733 thiss!1248) lt!94699) lt!94801)))

(declare-fun b!190967 () Bool)

(assert (=> b!190967 (= e!125674 (not (= lt!94699 lt!94711)))))

(assert (= (and d!55923 res!90279) b!190967))

(declare-fun m!217465 () Bool)

(assert (=> d!55923 m!217465))

(assert (=> d!55923 m!217289))

(assert (=> d!55923 m!217291))

(assert (=> d!55923 m!217299))

(declare-fun m!217467 () Bool)

(assert (=> d!55923 m!217467))

(assert (=> d!55923 m!217289))

(assert (=> b!190767 d!55923))

(declare-fun d!55925 () Bool)

(assert (=> d!55925 (= (apply!180 lt!94716 lt!94696) (get!2206 (getValueByKey!236 (toList!1240 lt!94716) lt!94696)))))

(declare-fun bs!7640 () Bool)

(assert (= bs!7640 d!55925))

(declare-fun m!217469 () Bool)

(assert (=> bs!7640 m!217469))

(assert (=> bs!7640 m!217469))

(declare-fun m!217471 () Bool)

(assert (=> bs!7640 m!217471))

(assert (=> b!190767 d!55925))

(declare-fun d!55927 () Bool)

(assert (=> d!55927 (= (apply!180 lt!94710 lt!94708) (get!2206 (getValueByKey!236 (toList!1240 lt!94710) lt!94708)))))

(declare-fun bs!7641 () Bool)

(assert (= bs!7641 d!55927))

(declare-fun m!217473 () Bool)

(assert (=> bs!7641 m!217473))

(assert (=> bs!7641 m!217473))

(declare-fun m!217475 () Bool)

(assert (=> bs!7641 m!217475))

(assert (=> b!190767 d!55927))

(declare-fun d!55929 () Bool)

(declare-fun e!125675 () Bool)

(assert (=> d!55929 e!125675))

(declare-fun res!90281 () Bool)

(assert (=> d!55929 (=> (not res!90281) (not e!125675))))

(declare-fun lt!94805 () ListLongMap!2449)

(assert (=> d!55929 (= res!90281 (contains!1345 lt!94805 (_1!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248)))))))

(declare-fun lt!94802 () List!2438)

(assert (=> d!55929 (= lt!94805 (ListLongMap!2450 lt!94802))))

(declare-fun lt!94803 () Unit!5761)

(declare-fun lt!94804 () Unit!5761)

(assert (=> d!55929 (= lt!94803 lt!94804)))

(assert (=> d!55929 (= (getValueByKey!236 lt!94802 (_1!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248)))))))

(assert (=> d!55929 (= lt!94804 (lemmaContainsTupThenGetReturnValue!125 lt!94802 (_1!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248)))))))

(assert (=> d!55929 (= lt!94802 (insertStrictlySorted!127 (toList!1240 lt!94710) (_1!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248)))))))

(assert (=> d!55929 (= (+!298 lt!94710 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248))) lt!94805)))

(declare-fun b!190968 () Bool)

(declare-fun res!90280 () Bool)

(assert (=> b!190968 (=> (not res!90280) (not e!125675))))

(assert (=> b!190968 (= res!90280 (= (getValueByKey!236 (toList!1240 lt!94805) (_1!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248))))))))

(declare-fun b!190969 () Bool)

(assert (=> b!190969 (= e!125675 (contains!1347 (toList!1240 lt!94805) (tuple2!3519 lt!94713 (minValue!3733 thiss!1248))))))

(assert (= (and d!55929 res!90281) b!190968))

(assert (= (and b!190968 res!90280) b!190969))

(declare-fun m!217477 () Bool)

(assert (=> d!55929 m!217477))

(declare-fun m!217479 () Bool)

(assert (=> d!55929 m!217479))

(declare-fun m!217481 () Bool)

(assert (=> d!55929 m!217481))

(declare-fun m!217483 () Bool)

(assert (=> d!55929 m!217483))

(declare-fun m!217485 () Bool)

(assert (=> b!190968 m!217485))

(declare-fun m!217487 () Bool)

(assert (=> b!190969 m!217487))

(assert (=> b!190767 d!55929))

(declare-fun d!55931 () Bool)

(assert (=> d!55931 (= (apply!180 (+!298 lt!94710 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248))) lt!94708) (get!2206 (getValueByKey!236 (toList!1240 (+!298 lt!94710 (tuple2!3519 lt!94713 (minValue!3733 thiss!1248)))) lt!94708)))))

(declare-fun bs!7642 () Bool)

(assert (= bs!7642 d!55931))

(declare-fun m!217489 () Bool)

(assert (=> bs!7642 m!217489))

(assert (=> bs!7642 m!217489))

(declare-fun m!217491 () Bool)

(assert (=> bs!7642 m!217491))

(assert (=> b!190767 d!55931))

(declare-fun d!55933 () Bool)

(assert (=> d!55933 (= (apply!180 (+!298 lt!94716 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248))) lt!94696) (get!2206 (getValueByKey!236 (toList!1240 (+!298 lt!94716 (tuple2!3519 lt!94709 (zeroValue!3733 thiss!1248)))) lt!94696)))))

(declare-fun bs!7643 () Bool)

(assert (= bs!7643 d!55933))

(declare-fun m!217493 () Bool)

(assert (=> bs!7643 m!217493))

(assert (=> bs!7643 m!217493))

(declare-fun m!217495 () Bool)

(assert (=> bs!7643 m!217495))

(assert (=> b!190767 d!55933))

(assert (=> b!190767 d!55893))

(declare-fun d!55935 () Bool)

(assert (=> d!55935 (= (apply!180 lt!94703 lt!94699) (get!2206 (getValueByKey!236 (toList!1240 lt!94703) lt!94699)))))

(declare-fun bs!7644 () Bool)

(assert (= bs!7644 d!55935))

(declare-fun m!217497 () Bool)

(assert (=> bs!7644 m!217497))

(assert (=> bs!7644 m!217497))

(declare-fun m!217499 () Bool)

(assert (=> bs!7644 m!217499))

(assert (=> b!190767 d!55935))

(declare-fun d!55937 () Bool)

(declare-fun e!125676 () Bool)

(assert (=> d!55937 e!125676))

(declare-fun res!90283 () Bool)

(assert (=> d!55937 (=> (not res!90283) (not e!125676))))

(declare-fun lt!94809 () ListLongMap!2449)

(assert (=> d!55937 (= res!90283 (contains!1345 lt!94809 (_1!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun lt!94806 () List!2438)

(assert (=> d!55937 (= lt!94809 (ListLongMap!2450 lt!94806))))

(declare-fun lt!94807 () Unit!5761)

(declare-fun lt!94808 () Unit!5761)

(assert (=> d!55937 (= lt!94807 lt!94808)))

(assert (=> d!55937 (= (getValueByKey!236 lt!94806 (_1!1769 (tuple2!3519 key!828 v!309))) (Some!241 (_2!1769 (tuple2!3519 key!828 v!309))))))

(assert (=> d!55937 (= lt!94808 (lemmaContainsTupThenGetReturnValue!125 lt!94806 (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))))))

(assert (=> d!55937 (= lt!94806 (insertStrictlySorted!127 (toList!1240 (getCurrentListMap!883 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248))) (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))))))

(assert (=> d!55937 (= (+!298 (getCurrentListMap!883 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3892 thiss!1248)) (tuple2!3519 key!828 v!309)) lt!94809)))

(declare-fun b!190970 () Bool)

(declare-fun res!90282 () Bool)

(assert (=> b!190970 (=> (not res!90282) (not e!125676))))

(assert (=> b!190970 (= res!90282 (= (getValueByKey!236 (toList!1240 lt!94809) (_1!1769 (tuple2!3519 key!828 v!309))) (Some!241 (_2!1769 (tuple2!3519 key!828 v!309)))))))

(declare-fun b!190971 () Bool)

(assert (=> b!190971 (= e!125676 (contains!1347 (toList!1240 lt!94809) (tuple2!3519 key!828 v!309)))))

(assert (= (and d!55937 res!90283) b!190970))

(assert (= (and b!190970 res!90282) b!190971))

(declare-fun m!217501 () Bool)

(assert (=> d!55937 m!217501))

(declare-fun m!217503 () Bool)

(assert (=> d!55937 m!217503))

(declare-fun m!217505 () Bool)

(assert (=> d!55937 m!217505))

(declare-fun m!217507 () Bool)

(assert (=> d!55937 m!217507))

(declare-fun m!217509 () Bool)

(assert (=> b!190970 m!217509))

(declare-fun m!217511 () Bool)

(assert (=> b!190971 m!217511))

(assert (=> b!190766 d!55937))

(assert (=> b!190766 d!55879))

(assert (=> b!190766 d!55883))

(declare-fun d!55939 () Bool)

(assert (=> d!55939 (= (apply!180 (+!298 lt!94678 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248))) lt!94674) (apply!180 lt!94678 lt!94674))))

(declare-fun lt!94810 () Unit!5761)

(assert (=> d!55939 (= lt!94810 (choose!1038 lt!94678 lt!94686 (minValue!3733 thiss!1248) lt!94674))))

(declare-fun e!125677 () Bool)

(assert (=> d!55939 e!125677))

(declare-fun res!90284 () Bool)

(assert (=> d!55939 (=> (not res!90284) (not e!125677))))

(assert (=> d!55939 (= res!90284 (contains!1345 lt!94678 lt!94674))))

(assert (=> d!55939 (= (addApplyDifferent!156 lt!94678 lt!94686 (minValue!3733 thiss!1248) lt!94674) lt!94810)))

(declare-fun b!190972 () Bool)

(assert (=> b!190972 (= e!125677 (not (= lt!94674 lt!94686)))))

(assert (= (and d!55939 res!90284) b!190972))

(declare-fun m!217513 () Bool)

(assert (=> d!55939 m!217513))

(assert (=> d!55939 m!217233))

(assert (=> d!55939 m!217235))

(assert (=> d!55939 m!217243))

(declare-fun m!217515 () Bool)

(assert (=> d!55939 m!217515))

(assert (=> d!55939 m!217233))

(assert (=> b!190741 d!55939))

(declare-fun d!55941 () Bool)

(assert (=> d!55941 (= (apply!180 lt!94685 lt!94683) (get!2206 (getValueByKey!236 (toList!1240 lt!94685) lt!94683)))))

(declare-fun bs!7645 () Bool)

(assert (= bs!7645 d!55941))

(declare-fun m!217517 () Bool)

(assert (=> bs!7645 m!217517))

(assert (=> bs!7645 m!217517))

(declare-fun m!217519 () Bool)

(assert (=> bs!7645 m!217519))

(assert (=> b!190741 d!55941))

(declare-fun d!55943 () Bool)

(declare-fun e!125678 () Bool)

(assert (=> d!55943 e!125678))

(declare-fun res!90286 () Bool)

(assert (=> d!55943 (=> (not res!90286) (not e!125678))))

(declare-fun lt!94814 () ListLongMap!2449)

(assert (=> d!55943 (= res!90286 (contains!1345 lt!94814 (_1!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))))))

(declare-fun lt!94811 () List!2438)

(assert (=> d!55943 (= lt!94814 (ListLongMap!2450 lt!94811))))

(declare-fun lt!94812 () Unit!5761)

(declare-fun lt!94813 () Unit!5761)

(assert (=> d!55943 (= lt!94812 lt!94813)))

(assert (=> d!55943 (= (getValueByKey!236 lt!94811 (_1!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55943 (= lt!94813 (lemmaContainsTupThenGetReturnValue!125 lt!94811 (_1!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55943 (= lt!94811 (insertStrictlySorted!127 (toList!1240 lt!94672) (_1!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55943 (= (+!298 lt!94672 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248))) lt!94814)))

(declare-fun b!190973 () Bool)

(declare-fun res!90285 () Bool)

(assert (=> b!190973 (=> (not res!90285) (not e!125678))))

(assert (=> b!190973 (= res!90285 (= (getValueByKey!236 (toList!1240 lt!94814) (_1!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248))))))))

(declare-fun b!190974 () Bool)

(assert (=> b!190974 (= e!125678 (contains!1347 (toList!1240 lt!94814) (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248))))))

(assert (= (and d!55943 res!90286) b!190973))

(assert (= (and b!190973 res!90285) b!190974))

(declare-fun m!217521 () Bool)

(assert (=> d!55943 m!217521))

(declare-fun m!217523 () Bool)

(assert (=> d!55943 m!217523))

(declare-fun m!217525 () Bool)

(assert (=> d!55943 m!217525))

(declare-fun m!217527 () Bool)

(assert (=> d!55943 m!217527))

(declare-fun m!217529 () Bool)

(assert (=> b!190973 m!217529))

(declare-fun m!217531 () Bool)

(assert (=> b!190974 m!217531))

(assert (=> b!190741 d!55943))

(declare-fun d!55945 () Bool)

(declare-fun e!125679 () Bool)

(assert (=> d!55945 e!125679))

(declare-fun res!90288 () Bool)

(assert (=> d!55945 (=> (not res!90288) (not e!125679))))

(declare-fun lt!94818 () ListLongMap!2449)

(assert (=> d!55945 (= res!90288 (contains!1345 lt!94818 (_1!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248)))))))

(declare-fun lt!94815 () List!2438)

(assert (=> d!55945 (= lt!94818 (ListLongMap!2450 lt!94815))))

(declare-fun lt!94816 () Unit!5761)

(declare-fun lt!94817 () Unit!5761)

(assert (=> d!55945 (= lt!94816 lt!94817)))

(assert (=> d!55945 (= (getValueByKey!236 lt!94815 (_1!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55945 (= lt!94817 (lemmaContainsTupThenGetReturnValue!125 lt!94815 (_1!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55945 (= lt!94815 (insertStrictlySorted!127 (toList!1240 lt!94691) (_1!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248)))))))

(assert (=> d!55945 (= (+!298 lt!94691 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248))) lt!94818)))

(declare-fun b!190975 () Bool)

(declare-fun res!90287 () Bool)

(assert (=> b!190975 (=> (not res!90287) (not e!125679))))

(assert (=> b!190975 (= res!90287 (= (getValueByKey!236 (toList!1240 lt!94818) (_1!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248))))))))

(declare-fun b!190976 () Bool)

(assert (=> b!190976 (= e!125679 (contains!1347 (toList!1240 lt!94818) (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248))))))

(assert (= (and d!55945 res!90288) b!190975))

(assert (= (and b!190975 res!90287) b!190976))

(declare-fun m!217533 () Bool)

(assert (=> d!55945 m!217533))

(declare-fun m!217535 () Bool)

(assert (=> d!55945 m!217535))

(declare-fun m!217537 () Bool)

(assert (=> d!55945 m!217537))

(declare-fun m!217539 () Bool)

(assert (=> d!55945 m!217539))

(declare-fun m!217541 () Bool)

(assert (=> b!190975 m!217541))

(declare-fun m!217543 () Bool)

(assert (=> b!190976 m!217543))

(assert (=> b!190741 d!55945))

(declare-fun d!55947 () Bool)

(assert (=> d!55947 (= (apply!180 (+!298 lt!94685 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248))) lt!94683) (get!2206 (getValueByKey!236 (toList!1240 (+!298 lt!94685 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248)))) lt!94683)))))

(declare-fun bs!7646 () Bool)

(assert (= bs!7646 d!55947))

(declare-fun m!217545 () Bool)

(assert (=> bs!7646 m!217545))

(assert (=> bs!7646 m!217545))

(declare-fun m!217547 () Bool)

(assert (=> bs!7646 m!217547))

(assert (=> b!190741 d!55947))

(declare-fun d!55949 () Bool)

(assert (=> d!55949 (= (apply!180 lt!94678 lt!94674) (get!2206 (getValueByKey!236 (toList!1240 lt!94678) lt!94674)))))

(declare-fun bs!7647 () Bool)

(assert (= bs!7647 d!55949))

(declare-fun m!217549 () Bool)

(assert (=> bs!7647 m!217549))

(assert (=> bs!7647 m!217549))

(declare-fun m!217551 () Bool)

(assert (=> bs!7647 m!217551))

(assert (=> b!190741 d!55949))

(declare-fun d!55951 () Bool)

(assert (=> d!55951 (= (apply!180 (+!298 lt!94678 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248))) lt!94674) (get!2206 (getValueByKey!236 (toList!1240 (+!298 lt!94678 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248)))) lt!94674)))))

(declare-fun bs!7648 () Bool)

(assert (= bs!7648 d!55951))

(declare-fun m!217553 () Bool)

(assert (=> bs!7648 m!217553))

(assert (=> bs!7648 m!217553))

(declare-fun m!217555 () Bool)

(assert (=> bs!7648 m!217555))

(assert (=> b!190741 d!55951))

(declare-fun d!55953 () Bool)

(assert (=> d!55953 (contains!1345 (+!298 lt!94672 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248))) lt!94687)))

(declare-fun lt!94819 () Unit!5761)

(assert (=> d!55953 (= lt!94819 (choose!1039 lt!94672 lt!94676 (zeroValue!3733 thiss!1248) lt!94687))))

(assert (=> d!55953 (contains!1345 lt!94672 lt!94687)))

(assert (=> d!55953 (= (addStillContains!156 lt!94672 lt!94676 (zeroValue!3733 thiss!1248) lt!94687) lt!94819)))

(declare-fun bs!7649 () Bool)

(assert (= bs!7649 d!55953))

(assert (=> bs!7649 m!217239))

(assert (=> bs!7649 m!217239))

(assert (=> bs!7649 m!217247))

(declare-fun m!217557 () Bool)

(assert (=> bs!7649 m!217557))

(declare-fun m!217559 () Bool)

(assert (=> bs!7649 m!217559))

(assert (=> b!190741 d!55953))

(assert (=> b!190741 d!55895))

(declare-fun d!55955 () Bool)

(assert (=> d!55955 (= (apply!180 lt!94691 lt!94671) (get!2206 (getValueByKey!236 (toList!1240 lt!94691) lt!94671)))))

(declare-fun bs!7650 () Bool)

(assert (= bs!7650 d!55955))

(declare-fun m!217561 () Bool)

(assert (=> bs!7650 m!217561))

(assert (=> bs!7650 m!217561))

(declare-fun m!217563 () Bool)

(assert (=> bs!7650 m!217563))

(assert (=> b!190741 d!55955))

(declare-fun d!55957 () Bool)

(assert (=> d!55957 (= (apply!180 (+!298 lt!94685 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248))) lt!94683) (apply!180 lt!94685 lt!94683))))

(declare-fun lt!94820 () Unit!5761)

(assert (=> d!55957 (= lt!94820 (choose!1038 lt!94685 lt!94688 (minValue!3733 thiss!1248) lt!94683))))

(declare-fun e!125680 () Bool)

(assert (=> d!55957 e!125680))

(declare-fun res!90289 () Bool)

(assert (=> d!55957 (=> (not res!90289) (not e!125680))))

(assert (=> d!55957 (= res!90289 (contains!1345 lt!94685 lt!94683))))

(assert (=> d!55957 (= (addApplyDifferent!156 lt!94685 lt!94688 (minValue!3733 thiss!1248) lt!94683) lt!94820)))

(declare-fun b!190977 () Bool)

(assert (=> b!190977 (= e!125680 (not (= lt!94683 lt!94688)))))

(assert (= (and d!55957 res!90289) b!190977))

(declare-fun m!217565 () Bool)

(assert (=> d!55957 m!217565))

(assert (=> d!55957 m!217227))

(assert (=> d!55957 m!217229))

(assert (=> d!55957 m!217225))

(declare-fun m!217567 () Bool)

(assert (=> d!55957 m!217567))

(assert (=> d!55957 m!217227))

(assert (=> b!190741 d!55957))

(declare-fun d!55959 () Bool)

(declare-fun e!125681 () Bool)

(assert (=> d!55959 e!125681))

(declare-fun res!90291 () Bool)

(assert (=> d!55959 (=> (not res!90291) (not e!125681))))

(declare-fun lt!94824 () ListLongMap!2449)

(assert (=> d!55959 (= res!90291 (contains!1345 lt!94824 (_1!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248)))))))

(declare-fun lt!94821 () List!2438)

(assert (=> d!55959 (= lt!94824 (ListLongMap!2450 lt!94821))))

(declare-fun lt!94822 () Unit!5761)

(declare-fun lt!94823 () Unit!5761)

(assert (=> d!55959 (= lt!94822 lt!94823)))

(assert (=> d!55959 (= (getValueByKey!236 lt!94821 (_1!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248)))))))

(assert (=> d!55959 (= lt!94823 (lemmaContainsTupThenGetReturnValue!125 lt!94821 (_1!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248)))))))

(assert (=> d!55959 (= lt!94821 (insertStrictlySorted!127 (toList!1240 lt!94678) (_1!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248)))))))

(assert (=> d!55959 (= (+!298 lt!94678 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248))) lt!94824)))

(declare-fun b!190978 () Bool)

(declare-fun res!90290 () Bool)

(assert (=> b!190978 (=> (not res!90290) (not e!125681))))

(assert (=> b!190978 (= res!90290 (= (getValueByKey!236 (toList!1240 lt!94824) (_1!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94686 (minValue!3733 thiss!1248))))))))

(declare-fun b!190979 () Bool)

(assert (=> b!190979 (= e!125681 (contains!1347 (toList!1240 lt!94824) (tuple2!3519 lt!94686 (minValue!3733 thiss!1248))))))

(assert (= (and d!55959 res!90291) b!190978))

(assert (= (and b!190978 res!90290) b!190979))

(declare-fun m!217569 () Bool)

(assert (=> d!55959 m!217569))

(declare-fun m!217571 () Bool)

(assert (=> d!55959 m!217571))

(declare-fun m!217573 () Bool)

(assert (=> d!55959 m!217573))

(declare-fun m!217575 () Bool)

(assert (=> d!55959 m!217575))

(declare-fun m!217577 () Bool)

(assert (=> b!190978 m!217577))

(declare-fun m!217579 () Bool)

(assert (=> b!190979 m!217579))

(assert (=> b!190741 d!55959))

(declare-fun d!55961 () Bool)

(assert (=> d!55961 (= (apply!180 (+!298 lt!94691 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248))) lt!94671) (apply!180 lt!94691 lt!94671))))

(declare-fun lt!94825 () Unit!5761)

(assert (=> d!55961 (= lt!94825 (choose!1038 lt!94691 lt!94684 (zeroValue!3733 thiss!1248) lt!94671))))

(declare-fun e!125682 () Bool)

(assert (=> d!55961 e!125682))

(declare-fun res!90292 () Bool)

(assert (=> d!55961 (=> (not res!90292) (not e!125682))))

(assert (=> d!55961 (= res!90292 (contains!1345 lt!94691 lt!94671))))

(assert (=> d!55961 (= (addApplyDifferent!156 lt!94691 lt!94684 (zeroValue!3733 thiss!1248) lt!94671) lt!94825)))

(declare-fun b!190980 () Bool)

(assert (=> b!190980 (= e!125682 (not (= lt!94671 lt!94684)))))

(assert (= (and d!55961 res!90292) b!190980))

(declare-fun m!217581 () Bool)

(assert (=> d!55961 m!217581))

(assert (=> d!55961 m!217237))

(assert (=> d!55961 m!217249))

(assert (=> d!55961 m!217223))

(declare-fun m!217583 () Bool)

(assert (=> d!55961 m!217583))

(assert (=> d!55961 m!217237))

(assert (=> b!190741 d!55961))

(declare-fun d!55963 () Bool)

(declare-fun e!125684 () Bool)

(assert (=> d!55963 e!125684))

(declare-fun res!90293 () Bool)

(assert (=> d!55963 (=> res!90293 e!125684)))

(declare-fun lt!94827 () Bool)

(assert (=> d!55963 (= res!90293 (not lt!94827))))

(declare-fun lt!94826 () Bool)

(assert (=> d!55963 (= lt!94827 lt!94826)))

(declare-fun lt!94828 () Unit!5761)

(declare-fun e!125683 () Unit!5761)

(assert (=> d!55963 (= lt!94828 e!125683)))

(declare-fun c!34351 () Bool)

(assert (=> d!55963 (= c!34351 lt!94826)))

(assert (=> d!55963 (= lt!94826 (containsKey!240 (toList!1240 (+!298 lt!94672 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))) lt!94687))))

(assert (=> d!55963 (= (contains!1345 (+!298 lt!94672 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248))) lt!94687) lt!94827)))

(declare-fun b!190981 () Bool)

(declare-fun lt!94829 () Unit!5761)

(assert (=> b!190981 (= e!125683 lt!94829)))

(assert (=> b!190981 (= lt!94829 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 (+!298 lt!94672 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))) lt!94687))))

(assert (=> b!190981 (isDefined!190 (getValueByKey!236 (toList!1240 (+!298 lt!94672 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))) lt!94687))))

(declare-fun b!190982 () Bool)

(declare-fun Unit!5771 () Unit!5761)

(assert (=> b!190982 (= e!125683 Unit!5771)))

(declare-fun b!190983 () Bool)

(assert (=> b!190983 (= e!125684 (isDefined!190 (getValueByKey!236 (toList!1240 (+!298 lt!94672 (tuple2!3519 lt!94676 (zeroValue!3733 thiss!1248)))) lt!94687)))))

(assert (= (and d!55963 c!34351) b!190981))

(assert (= (and d!55963 (not c!34351)) b!190982))

(assert (= (and d!55963 (not res!90293)) b!190983))

(declare-fun m!217585 () Bool)

(assert (=> d!55963 m!217585))

(declare-fun m!217587 () Bool)

(assert (=> b!190981 m!217587))

(declare-fun m!217589 () Bool)

(assert (=> b!190981 m!217589))

(assert (=> b!190981 m!217589))

(declare-fun m!217591 () Bool)

(assert (=> b!190981 m!217591))

(assert (=> b!190983 m!217589))

(assert (=> b!190983 m!217589))

(assert (=> b!190983 m!217591))

(assert (=> b!190741 d!55963))

(declare-fun d!55965 () Bool)

(assert (=> d!55965 (= (apply!180 (+!298 lt!94691 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248))) lt!94671) (get!2206 (getValueByKey!236 (toList!1240 (+!298 lt!94691 (tuple2!3519 lt!94684 (zeroValue!3733 thiss!1248)))) lt!94671)))))

(declare-fun bs!7651 () Bool)

(assert (= bs!7651 d!55965))

(declare-fun m!217593 () Bool)

(assert (=> bs!7651 m!217593))

(assert (=> bs!7651 m!217593))

(declare-fun m!217595 () Bool)

(assert (=> bs!7651 m!217595))

(assert (=> b!190741 d!55965))

(declare-fun d!55967 () Bool)

(declare-fun e!125685 () Bool)

(assert (=> d!55967 e!125685))

(declare-fun res!90295 () Bool)

(assert (=> d!55967 (=> (not res!90295) (not e!125685))))

(declare-fun lt!94833 () ListLongMap!2449)

(assert (=> d!55967 (= res!90295 (contains!1345 lt!94833 (_1!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248)))))))

(declare-fun lt!94830 () List!2438)

(assert (=> d!55967 (= lt!94833 (ListLongMap!2450 lt!94830))))

(declare-fun lt!94831 () Unit!5761)

(declare-fun lt!94832 () Unit!5761)

(assert (=> d!55967 (= lt!94831 lt!94832)))

(assert (=> d!55967 (= (getValueByKey!236 lt!94830 (_1!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248)))))))

(assert (=> d!55967 (= lt!94832 (lemmaContainsTupThenGetReturnValue!125 lt!94830 (_1!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248)))))))

(assert (=> d!55967 (= lt!94830 (insertStrictlySorted!127 (toList!1240 lt!94685) (_1!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248)))))))

(assert (=> d!55967 (= (+!298 lt!94685 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248))) lt!94833)))

(declare-fun b!190984 () Bool)

(declare-fun res!90294 () Bool)

(assert (=> b!190984 (=> (not res!90294) (not e!125685))))

(assert (=> b!190984 (= res!90294 (= (getValueByKey!236 (toList!1240 lt!94833) (_1!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 lt!94688 (minValue!3733 thiss!1248))))))))

(declare-fun b!190985 () Bool)

(assert (=> b!190985 (= e!125685 (contains!1347 (toList!1240 lt!94833) (tuple2!3519 lt!94688 (minValue!3733 thiss!1248))))))

(assert (= (and d!55967 res!90295) b!190984))

(assert (= (and b!190984 res!90294) b!190985))

(declare-fun m!217597 () Bool)

(assert (=> d!55967 m!217597))

(declare-fun m!217599 () Bool)

(assert (=> d!55967 m!217599))

(declare-fun m!217601 () Bool)

(assert (=> d!55967 m!217601))

(declare-fun m!217603 () Bool)

(assert (=> d!55967 m!217603))

(declare-fun m!217605 () Bool)

(assert (=> b!190984 m!217605))

(declare-fun m!217607 () Bool)

(assert (=> b!190985 m!217607))

(assert (=> b!190741 d!55967))

(declare-fun d!55969 () Bool)

(declare-fun e!125686 () Bool)

(assert (=> d!55969 e!125686))

(declare-fun res!90297 () Bool)

(assert (=> d!55969 (=> (not res!90297) (not e!125686))))

(declare-fun lt!94837 () ListLongMap!2449)

(assert (=> d!55969 (= res!90297 (contains!1345 lt!94837 (_1!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(declare-fun lt!94834 () List!2438)

(assert (=> d!55969 (= lt!94837 (ListLongMap!2450 lt!94834))))

(declare-fun lt!94835 () Unit!5761)

(declare-fun lt!94836 () Unit!5761)

(assert (=> d!55969 (= lt!94835 lt!94836)))

(assert (=> d!55969 (= (getValueByKey!236 lt!94834 (_1!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))) (Some!241 (_2!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(assert (=> d!55969 (= lt!94836 (lemmaContainsTupThenGetReturnValue!125 lt!94834 (_1!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) (_2!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(assert (=> d!55969 (= lt!94834 (insertStrictlySorted!127 (toList!1240 (ite c!34299 call!19257 (ite c!34302 call!19252 call!19255))) (_1!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) (_2!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(assert (=> d!55969 (= (+!298 (ite c!34299 call!19257 (ite c!34302 call!19252 call!19255)) (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) lt!94837)))

(declare-fun b!190986 () Bool)

(declare-fun res!90296 () Bool)

(assert (=> b!190986 (=> (not res!90296) (not e!125686))))

(assert (=> b!190986 (= res!90296 (= (getValueByKey!236 (toList!1240 lt!94837) (_1!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))) (Some!241 (_2!1769 (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))))

(declare-fun b!190987 () Bool)

(assert (=> b!190987 (= e!125686 (contains!1347 (toList!1240 lt!94837) (ite (or c!34299 c!34302) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(assert (= (and d!55969 res!90297) b!190986))

(assert (= (and b!190986 res!90296) b!190987))

(declare-fun m!217609 () Bool)

(assert (=> d!55969 m!217609))

(declare-fun m!217611 () Bool)

(assert (=> d!55969 m!217611))

(declare-fun m!217613 () Bool)

(assert (=> d!55969 m!217613))

(declare-fun m!217615 () Bool)

(assert (=> d!55969 m!217615))

(declare-fun m!217617 () Bool)

(assert (=> b!190986 m!217617))

(declare-fun m!217619 () Bool)

(assert (=> b!190987 m!217619))

(assert (=> bm!19254 d!55969))

(declare-fun d!55971 () Bool)

(declare-fun e!125687 () Bool)

(assert (=> d!55971 e!125687))

(declare-fun res!90299 () Bool)

(assert (=> d!55971 (=> (not res!90299) (not e!125687))))

(declare-fun lt!94841 () ListLongMap!2449)

(assert (=> d!55971 (= res!90299 (contains!1345 lt!94841 (_1!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(declare-fun lt!94838 () List!2438)

(assert (=> d!55971 (= lt!94841 (ListLongMap!2450 lt!94838))))

(declare-fun lt!94839 () Unit!5761)

(declare-fun lt!94840 () Unit!5761)

(assert (=> d!55971 (= lt!94839 lt!94840)))

(assert (=> d!55971 (= (getValueByKey!236 lt!94838 (_1!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))) (Some!241 (_2!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(assert (=> d!55971 (= lt!94840 (lemmaContainsTupThenGetReturnValue!125 lt!94838 (_1!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) (_2!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(assert (=> d!55971 (= lt!94838 (insertStrictlySorted!127 (toList!1240 (ite c!34293 call!19250 (ite c!34296 call!19245 call!19248))) (_1!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) (_2!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(assert (=> d!55971 (= (+!298 (ite c!34293 call!19250 (ite c!34296 call!19245 call!19248)) (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) lt!94841)))

(declare-fun b!190988 () Bool)

(declare-fun res!90298 () Bool)

(assert (=> b!190988 (=> (not res!90298) (not e!125687))))

(assert (=> b!190988 (= res!90298 (= (getValueByKey!236 (toList!1240 lt!94841) (_1!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))) (Some!241 (_2!1769 (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))))

(declare-fun b!190989 () Bool)

(assert (=> b!190989 (= e!125687 (contains!1347 (toList!1240 lt!94841) (ite (or c!34293 c!34296) (tuple2!3519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3733 thiss!1248)) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(assert (= (and d!55971 res!90299) b!190988))

(assert (= (and b!190988 res!90298) b!190989))

(declare-fun m!217621 () Bool)

(assert (=> d!55971 m!217621))

(declare-fun m!217623 () Bool)

(assert (=> d!55971 m!217623))

(declare-fun m!217625 () Bool)

(assert (=> d!55971 m!217625))

(declare-fun m!217627 () Bool)

(assert (=> d!55971 m!217627))

(declare-fun m!217629 () Bool)

(assert (=> b!190988 m!217629))

(declare-fun m!217631 () Bool)

(assert (=> b!190989 m!217631))

(assert (=> bm!19247 d!55971))

(declare-fun d!55973 () Bool)

(declare-fun c!34356 () Bool)

(assert (=> d!55973 (= c!34356 (and ((_ is Cons!2434) (toList!1240 lt!94613)) (= (_1!1769 (h!3072 (toList!1240 lt!94613))) (_1!1769 (tuple2!3519 key!828 v!309)))))))

(declare-fun e!125692 () Option!242)

(assert (=> d!55973 (= (getValueByKey!236 (toList!1240 lt!94613) (_1!1769 (tuple2!3519 key!828 v!309))) e!125692)))

(declare-fun b!190999 () Bool)

(declare-fun e!125693 () Option!242)

(assert (=> b!190999 (= e!125692 e!125693)))

(declare-fun c!34357 () Bool)

(assert (=> b!190999 (= c!34357 (and ((_ is Cons!2434) (toList!1240 lt!94613)) (not (= (_1!1769 (h!3072 (toList!1240 lt!94613))) (_1!1769 (tuple2!3519 key!828 v!309))))))))

(declare-fun b!191000 () Bool)

(assert (=> b!191000 (= e!125693 (getValueByKey!236 (t!7356 (toList!1240 lt!94613)) (_1!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun b!191001 () Bool)

(assert (=> b!191001 (= e!125693 None!240)))

(declare-fun b!190998 () Bool)

(assert (=> b!190998 (= e!125692 (Some!241 (_2!1769 (h!3072 (toList!1240 lt!94613)))))))

(assert (= (and d!55973 c!34356) b!190998))

(assert (= (and d!55973 (not c!34356)) b!190999))

(assert (= (and b!190999 c!34357) b!191000))

(assert (= (and b!190999 (not c!34357)) b!191001))

(declare-fun m!217633 () Bool)

(assert (=> b!191000 m!217633))

(assert (=> b!190688 d!55973))

(declare-fun d!55975 () Bool)

(assert (=> d!55975 (= (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!190777 d!55975))

(assert (=> b!190751 d!55975))

(declare-fun d!55977 () Bool)

(assert (=> d!55977 (= (inRange!0 (index!4907 lt!94601) (mask!9099 thiss!1248)) (and (bvsge (index!4907 lt!94601) #b00000000000000000000000000000000) (bvslt (index!4907 lt!94601) (bvadd (mask!9099 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!190682 d!55977))

(declare-fun d!55979 () Bool)

(declare-fun e!125695 () Bool)

(assert (=> d!55979 e!125695))

(declare-fun res!90300 () Bool)

(assert (=> d!55979 (=> res!90300 e!125695)))

(declare-fun lt!94843 () Bool)

(assert (=> d!55979 (= res!90300 (not lt!94843))))

(declare-fun lt!94842 () Bool)

(assert (=> d!55979 (= lt!94843 lt!94842)))

(declare-fun lt!94844 () Unit!5761)

(declare-fun e!125694 () Unit!5761)

(assert (=> d!55979 (= lt!94844 e!125694)))

(declare-fun c!34358 () Bool)

(assert (=> d!55979 (= c!34358 lt!94842)))

(assert (=> d!55979 (= lt!94842 (containsKey!240 (toList!1240 lt!94715) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55979 (= (contains!1345 lt!94715 #b0000000000000000000000000000000000000000000000000000000000000000) lt!94843)))

(declare-fun b!191002 () Bool)

(declare-fun lt!94845 () Unit!5761)

(assert (=> b!191002 (= e!125694 lt!94845)))

(assert (=> b!191002 (= lt!94845 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94715) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191002 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94715) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191003 () Bool)

(declare-fun Unit!5772 () Unit!5761)

(assert (=> b!191003 (= e!125694 Unit!5772)))

(declare-fun b!191004 () Bool)

(assert (=> b!191004 (= e!125695 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94715) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55979 c!34358) b!191002))

(assert (= (and d!55979 (not c!34358)) b!191003))

(assert (= (and d!55979 (not res!90300)) b!191004))

(declare-fun m!217635 () Bool)

(assert (=> d!55979 m!217635))

(declare-fun m!217637 () Bool)

(assert (=> b!191002 m!217637))

(declare-fun m!217639 () Bool)

(assert (=> b!191002 m!217639))

(assert (=> b!191002 m!217639))

(declare-fun m!217641 () Bool)

(assert (=> b!191002 m!217641))

(assert (=> b!191004 m!217639))

(assert (=> b!191004 m!217639))

(assert (=> b!191004 m!217641))

(assert (=> bm!19251 d!55979))

(declare-fun d!55981 () Bool)

(declare-fun e!125697 () Bool)

(assert (=> d!55981 e!125697))

(declare-fun res!90301 () Bool)

(assert (=> d!55981 (=> res!90301 e!125697)))

(declare-fun lt!94847 () Bool)

(assert (=> d!55981 (= res!90301 (not lt!94847))))

(declare-fun lt!94846 () Bool)

(assert (=> d!55981 (= lt!94847 lt!94846)))

(declare-fun lt!94848 () Unit!5761)

(declare-fun e!125696 () Unit!5761)

(assert (=> d!55981 (= lt!94848 e!125696)))

(declare-fun c!34359 () Bool)

(assert (=> d!55981 (= c!34359 lt!94846)))

(assert (=> d!55981 (= lt!94846 (containsKey!240 (toList!1240 lt!94690) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55981 (= (contains!1345 lt!94690 #b0000000000000000000000000000000000000000000000000000000000000000) lt!94847)))

(declare-fun b!191005 () Bool)

(declare-fun lt!94849 () Unit!5761)

(assert (=> b!191005 (= e!125696 lt!94849)))

(assert (=> b!191005 (= lt!94849 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94690) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191005 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94690) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191006 () Bool)

(declare-fun Unit!5773 () Unit!5761)

(assert (=> b!191006 (= e!125696 Unit!5773)))

(declare-fun b!191007 () Bool)

(assert (=> b!191007 (= e!125697 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94690) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55981 c!34359) b!191005))

(assert (= (and d!55981 (not c!34359)) b!191006))

(assert (= (and d!55981 (not res!90301)) b!191007))

(declare-fun m!217643 () Bool)

(assert (=> d!55981 m!217643))

(declare-fun m!217645 () Bool)

(assert (=> b!191005 m!217645))

(declare-fun m!217647 () Bool)

(assert (=> b!191005 m!217647))

(assert (=> b!191005 m!217647))

(declare-fun m!217649 () Bool)

(assert (=> b!191005 m!217649))

(assert (=> b!191007 m!217647))

(assert (=> b!191007 m!217647))

(assert (=> b!191007 m!217649))

(assert (=> bm!19244 d!55981))

(declare-fun bm!19274 () Bool)

(declare-fun call!19277 () Bool)

(declare-fun c!34362 () Bool)

(assert (=> bm!19274 (= call!19277 (arrayNoDuplicates!0 (_keys!5865 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!34362 (Cons!2436 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000) Nil!2437) Nil!2437)))))

(declare-fun b!191018 () Bool)

(declare-fun e!125709 () Bool)

(declare-fun e!125707 () Bool)

(assert (=> b!191018 (= e!125709 e!125707)))

(declare-fun res!90309 () Bool)

(assert (=> b!191018 (=> (not res!90309) (not e!125707))))

(declare-fun e!125708 () Bool)

(assert (=> b!191018 (= res!90309 (not e!125708))))

(declare-fun res!90310 () Bool)

(assert (=> b!191018 (=> (not res!90310) (not e!125708))))

(assert (=> b!191018 (= res!90310 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191020 () Bool)

(declare-fun contains!1348 (List!2440 (_ BitVec 64)) Bool)

(assert (=> b!191020 (= e!125708 (contains!1348 Nil!2437 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191021 () Bool)

(declare-fun e!125706 () Bool)

(assert (=> b!191021 (= e!125706 call!19277)))

(declare-fun b!191022 () Bool)

(assert (=> b!191022 (= e!125707 e!125706)))

(assert (=> b!191022 (= c!34362 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191019 () Bool)

(assert (=> b!191019 (= e!125706 call!19277)))

(declare-fun d!55983 () Bool)

(declare-fun res!90308 () Bool)

(assert (=> d!55983 (=> res!90308 e!125709)))

(assert (=> d!55983 (= res!90308 (bvsge #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> d!55983 (= (arrayNoDuplicates!0 (_keys!5865 thiss!1248) #b00000000000000000000000000000000 Nil!2437) e!125709)))

(assert (= (and d!55983 (not res!90308)) b!191018))

(assert (= (and b!191018 res!90310) b!191020))

(assert (= (and b!191018 res!90309) b!191022))

(assert (= (and b!191022 c!34362) b!191019))

(assert (= (and b!191022 (not c!34362)) b!191021))

(assert (= (or b!191019 b!191021) bm!19274))

(assert (=> bm!19274 m!217197))

(declare-fun m!217651 () Bool)

(assert (=> bm!19274 m!217651))

(assert (=> b!191018 m!217197))

(assert (=> b!191018 m!217197))

(assert (=> b!191018 m!217221))

(assert (=> b!191020 m!217197))

(assert (=> b!191020 m!217197))

(declare-fun m!217653 () Bool)

(assert (=> b!191020 m!217653))

(assert (=> b!191022 m!217197))

(assert (=> b!191022 m!217197))

(assert (=> b!191022 m!217221))

(assert (=> b!190820 d!55983))

(declare-fun d!55985 () Bool)

(declare-fun e!125711 () Bool)

(assert (=> d!55985 e!125711))

(declare-fun res!90311 () Bool)

(assert (=> d!55985 (=> res!90311 e!125711)))

(declare-fun lt!94851 () Bool)

(assert (=> d!55985 (= res!90311 (not lt!94851))))

(declare-fun lt!94850 () Bool)

(assert (=> d!55985 (= lt!94851 lt!94850)))

(declare-fun lt!94852 () Unit!5761)

(declare-fun e!125710 () Unit!5761)

(assert (=> d!55985 (= lt!94852 e!125710)))

(declare-fun c!34363 () Bool)

(assert (=> d!55985 (= c!34363 lt!94850)))

(assert (=> d!55985 (= lt!94850 (containsKey!240 (toList!1240 lt!94715) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55985 (= (contains!1345 lt!94715 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) lt!94851)))

(declare-fun b!191023 () Bool)

(declare-fun lt!94853 () Unit!5761)

(assert (=> b!191023 (= e!125710 lt!94853)))

(assert (=> b!191023 (= lt!94853 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94715) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191023 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94715) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191024 () Bool)

(declare-fun Unit!5774 () Unit!5761)

(assert (=> b!191024 (= e!125710 Unit!5774)))

(declare-fun b!191025 () Bool)

(assert (=> b!191025 (= e!125711 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94715) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!55985 c!34363) b!191023))

(assert (= (and d!55985 (not c!34363)) b!191024))

(assert (= (and d!55985 (not res!90311)) b!191025))

(assert (=> d!55985 m!217197))

(declare-fun m!217655 () Bool)

(assert (=> d!55985 m!217655))

(assert (=> b!191023 m!217197))

(declare-fun m!217657 () Bool)

(assert (=> b!191023 m!217657))

(assert (=> b!191023 m!217197))

(declare-fun m!217659 () Bool)

(assert (=> b!191023 m!217659))

(assert (=> b!191023 m!217659))

(declare-fun m!217661 () Bool)

(assert (=> b!191023 m!217661))

(assert (=> b!191025 m!217197))

(assert (=> b!191025 m!217659))

(assert (=> b!191025 m!217659))

(assert (=> b!191025 m!217661))

(assert (=> b!190776 d!55985))

(declare-fun d!55987 () Bool)

(declare-fun e!125713 () Bool)

(assert (=> d!55987 e!125713))

(declare-fun res!90312 () Bool)

(assert (=> d!55987 (=> res!90312 e!125713)))

(declare-fun lt!94855 () Bool)

(assert (=> d!55987 (= res!90312 (not lt!94855))))

(declare-fun lt!94854 () Bool)

(assert (=> d!55987 (= lt!94855 lt!94854)))

(declare-fun lt!94856 () Unit!5761)

(declare-fun e!125712 () Unit!5761)

(assert (=> d!55987 (= lt!94856 e!125712)))

(declare-fun c!34364 () Bool)

(assert (=> d!55987 (= c!34364 lt!94854)))

(assert (=> d!55987 (= lt!94854 (containsKey!240 (toList!1240 lt!94690) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55987 (= (contains!1345 lt!94690 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) lt!94855)))

(declare-fun b!191026 () Bool)

(declare-fun lt!94857 () Unit!5761)

(assert (=> b!191026 (= e!125712 lt!94857)))

(assert (=> b!191026 (= lt!94857 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94690) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191026 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94690) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191027 () Bool)

(declare-fun Unit!5775 () Unit!5761)

(assert (=> b!191027 (= e!125712 Unit!5775)))

(declare-fun b!191028 () Bool)

(assert (=> b!191028 (= e!125713 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94690) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!55987 c!34364) b!191026))

(assert (= (and d!55987 (not c!34364)) b!191027))

(assert (= (and d!55987 (not res!90312)) b!191028))

(assert (=> d!55987 m!217197))

(declare-fun m!217663 () Bool)

(assert (=> d!55987 m!217663))

(assert (=> b!191026 m!217197))

(declare-fun m!217665 () Bool)

(assert (=> b!191026 m!217665))

(assert (=> b!191026 m!217197))

(declare-fun m!217667 () Bool)

(assert (=> b!191026 m!217667))

(assert (=> b!191026 m!217667))

(declare-fun m!217669 () Bool)

(assert (=> b!191026 m!217669))

(assert (=> b!191028 m!217197))

(assert (=> b!191028 m!217667))

(assert (=> b!191028 m!217667))

(assert (=> b!191028 m!217669))

(assert (=> b!190750 d!55987))

(declare-fun d!55989 () Bool)

(declare-fun e!125715 () Bool)

(assert (=> d!55989 e!125715))

(declare-fun res!90313 () Bool)

(assert (=> d!55989 (=> res!90313 e!125715)))

(declare-fun lt!94859 () Bool)

(assert (=> d!55989 (= res!90313 (not lt!94859))))

(declare-fun lt!94858 () Bool)

(assert (=> d!55989 (= lt!94859 lt!94858)))

(declare-fun lt!94860 () Unit!5761)

(declare-fun e!125714 () Unit!5761)

(assert (=> d!55989 (= lt!94860 e!125714)))

(declare-fun c!34365 () Bool)

(assert (=> d!55989 (= c!34365 lt!94858)))

(assert (=> d!55989 (= lt!94858 (containsKey!240 (toList!1240 lt!94613) (_1!1769 (tuple2!3519 key!828 v!309))))))

(assert (=> d!55989 (= (contains!1345 lt!94613 (_1!1769 (tuple2!3519 key!828 v!309))) lt!94859)))

(declare-fun b!191029 () Bool)

(declare-fun lt!94861 () Unit!5761)

(assert (=> b!191029 (= e!125714 lt!94861)))

(assert (=> b!191029 (= lt!94861 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94613) (_1!1769 (tuple2!3519 key!828 v!309))))))

(assert (=> b!191029 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94613) (_1!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun b!191030 () Bool)

(declare-fun Unit!5776 () Unit!5761)

(assert (=> b!191030 (= e!125714 Unit!5776)))

(declare-fun b!191031 () Bool)

(assert (=> b!191031 (= e!125715 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94613) (_1!1769 (tuple2!3519 key!828 v!309)))))))

(assert (= (and d!55989 c!34365) b!191029))

(assert (= (and d!55989 (not c!34365)) b!191030))

(assert (= (and d!55989 (not res!90313)) b!191031))

(declare-fun m!217671 () Bool)

(assert (=> d!55989 m!217671))

(declare-fun m!217673 () Bool)

(assert (=> b!191029 m!217673))

(assert (=> b!191029 m!217185))

(assert (=> b!191029 m!217185))

(declare-fun m!217675 () Bool)

(assert (=> b!191029 m!217675))

(assert (=> b!191031 m!217185))

(assert (=> b!191031 m!217185))

(assert (=> b!191031 m!217675))

(assert (=> d!55875 d!55989))

(declare-fun d!55991 () Bool)

(declare-fun c!34366 () Bool)

(assert (=> d!55991 (= c!34366 (and ((_ is Cons!2434) lt!94610) (= (_1!1769 (h!3072 lt!94610)) (_1!1769 (tuple2!3519 key!828 v!309)))))))

(declare-fun e!125716 () Option!242)

(assert (=> d!55991 (= (getValueByKey!236 lt!94610 (_1!1769 (tuple2!3519 key!828 v!309))) e!125716)))

(declare-fun b!191033 () Bool)

(declare-fun e!125717 () Option!242)

(assert (=> b!191033 (= e!125716 e!125717)))

(declare-fun c!34367 () Bool)

(assert (=> b!191033 (= c!34367 (and ((_ is Cons!2434) lt!94610) (not (= (_1!1769 (h!3072 lt!94610)) (_1!1769 (tuple2!3519 key!828 v!309))))))))

(declare-fun b!191034 () Bool)

(assert (=> b!191034 (= e!125717 (getValueByKey!236 (t!7356 lt!94610) (_1!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun b!191035 () Bool)

(assert (=> b!191035 (= e!125717 None!240)))

(declare-fun b!191032 () Bool)

(assert (=> b!191032 (= e!125716 (Some!241 (_2!1769 (h!3072 lt!94610))))))

(assert (= (and d!55991 c!34366) b!191032))

(assert (= (and d!55991 (not c!34366)) b!191033))

(assert (= (and b!191033 c!34367) b!191034))

(assert (= (and b!191033 (not c!34367)) b!191035))

(declare-fun m!217677 () Bool)

(assert (=> b!191034 m!217677))

(assert (=> d!55875 d!55991))

(declare-fun d!55993 () Bool)

(assert (=> d!55993 (= (getValueByKey!236 lt!94610 (_1!1769 (tuple2!3519 key!828 v!309))) (Some!241 (_2!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun lt!94864 () Unit!5761)

(declare-fun choose!1040 (List!2438 (_ BitVec 64) V!5571) Unit!5761)

(assert (=> d!55993 (= lt!94864 (choose!1040 lt!94610 (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun e!125720 () Bool)

(assert (=> d!55993 e!125720))

(declare-fun res!90318 () Bool)

(assert (=> d!55993 (=> (not res!90318) (not e!125720))))

(declare-fun isStrictlySorted!349 (List!2438) Bool)

(assert (=> d!55993 (= res!90318 (isStrictlySorted!349 lt!94610))))

(assert (=> d!55993 (= (lemmaContainsTupThenGetReturnValue!125 lt!94610 (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))) lt!94864)))

(declare-fun b!191040 () Bool)

(declare-fun res!90319 () Bool)

(assert (=> b!191040 (=> (not res!90319) (not e!125720))))

(assert (=> b!191040 (= res!90319 (containsKey!240 lt!94610 (_1!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun b!191041 () Bool)

(assert (=> b!191041 (= e!125720 (contains!1347 lt!94610 (tuple2!3519 (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309)))))))

(assert (= (and d!55993 res!90318) b!191040))

(assert (= (and b!191040 res!90319) b!191041))

(assert (=> d!55993 m!217179))

(declare-fun m!217679 () Bool)

(assert (=> d!55993 m!217679))

(declare-fun m!217681 () Bool)

(assert (=> d!55993 m!217681))

(declare-fun m!217683 () Bool)

(assert (=> b!191040 m!217683))

(declare-fun m!217685 () Bool)

(assert (=> b!191041 m!217685))

(assert (=> d!55875 d!55993))

(declare-fun e!125734 () List!2438)

(declare-fun call!19286 () List!2438)

(declare-fun c!34376 () Bool)

(declare-fun bm!19281 () Bool)

(declare-fun $colon$colon!99 (List!2438 tuple2!3518) List!2438)

(assert (=> bm!19281 (= call!19286 ($colon$colon!99 e!125734 (ite c!34376 (h!3072 (toList!1240 lt!94575)) (tuple2!3519 (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))))))))

(declare-fun c!34378 () Bool)

(assert (=> bm!19281 (= c!34378 c!34376)))

(declare-fun c!34379 () Bool)

(declare-fun b!191062 () Bool)

(assert (=> b!191062 (= c!34379 (and ((_ is Cons!2434) (toList!1240 lt!94575)) (bvsgt (_1!1769 (h!3072 (toList!1240 lt!94575))) (_1!1769 (tuple2!3519 key!828 v!309)))))))

(declare-fun e!125731 () List!2438)

(declare-fun e!125733 () List!2438)

(assert (=> b!191062 (= e!125731 e!125733)))

(declare-fun b!191063 () Bool)

(assert (=> b!191063 (= e!125734 (insertStrictlySorted!127 (t!7356 (toList!1240 lt!94575)) (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun c!34377 () Bool)

(declare-fun b!191064 () Bool)

(assert (=> b!191064 (= e!125734 (ite c!34377 (t!7356 (toList!1240 lt!94575)) (ite c!34379 (Cons!2434 (h!3072 (toList!1240 lt!94575)) (t!7356 (toList!1240 lt!94575))) Nil!2435)))))

(declare-fun e!125732 () Bool)

(declare-fun b!191065 () Bool)

(declare-fun lt!94867 () List!2438)

(assert (=> b!191065 (= e!125732 (contains!1347 lt!94867 (tuple2!3519 (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309)))))))

(declare-fun bm!19282 () Bool)

(declare-fun call!19285 () List!2438)

(assert (=> bm!19282 (= call!19285 call!19286)))

(declare-fun b!191066 () Bool)

(declare-fun e!125735 () List!2438)

(assert (=> b!191066 (= e!125735 call!19286)))

(declare-fun d!55995 () Bool)

(assert (=> d!55995 e!125732))

(declare-fun res!90324 () Bool)

(assert (=> d!55995 (=> (not res!90324) (not e!125732))))

(assert (=> d!55995 (= res!90324 (isStrictlySorted!349 lt!94867))))

(assert (=> d!55995 (= lt!94867 e!125735)))

(assert (=> d!55995 (= c!34376 (and ((_ is Cons!2434) (toList!1240 lt!94575)) (bvslt (_1!1769 (h!3072 (toList!1240 lt!94575))) (_1!1769 (tuple2!3519 key!828 v!309)))))))

(assert (=> d!55995 (isStrictlySorted!349 (toList!1240 lt!94575))))

(assert (=> d!55995 (= (insertStrictlySorted!127 (toList!1240 lt!94575) (_1!1769 (tuple2!3519 key!828 v!309)) (_2!1769 (tuple2!3519 key!828 v!309))) lt!94867)))

(declare-fun b!191067 () Bool)

(assert (=> b!191067 (= e!125731 call!19285)))

(declare-fun bm!19283 () Bool)

(declare-fun call!19284 () List!2438)

(assert (=> bm!19283 (= call!19284 call!19285)))

(declare-fun b!191068 () Bool)

(declare-fun res!90325 () Bool)

(assert (=> b!191068 (=> (not res!90325) (not e!125732))))

(assert (=> b!191068 (= res!90325 (containsKey!240 lt!94867 (_1!1769 (tuple2!3519 key!828 v!309))))))

(declare-fun b!191069 () Bool)

(assert (=> b!191069 (= e!125733 call!19284)))

(declare-fun b!191070 () Bool)

(assert (=> b!191070 (= e!125735 e!125731)))

(assert (=> b!191070 (= c!34377 (and ((_ is Cons!2434) (toList!1240 lt!94575)) (= (_1!1769 (h!3072 (toList!1240 lt!94575))) (_1!1769 (tuple2!3519 key!828 v!309)))))))

(declare-fun b!191071 () Bool)

(assert (=> b!191071 (= e!125733 call!19284)))

(assert (= (and d!55995 c!34376) b!191066))

(assert (= (and d!55995 (not c!34376)) b!191070))

(assert (= (and b!191070 c!34377) b!191067))

(assert (= (and b!191070 (not c!34377)) b!191062))

(assert (= (and b!191062 c!34379) b!191071))

(assert (= (and b!191062 (not c!34379)) b!191069))

(assert (= (or b!191071 b!191069) bm!19283))

(assert (= (or b!191067 bm!19283) bm!19282))

(assert (= (or b!191066 bm!19282) bm!19281))

(assert (= (and bm!19281 c!34378) b!191063))

(assert (= (and bm!19281 (not c!34378)) b!191064))

(assert (= (and d!55995 res!90324) b!191068))

(assert (= (and b!191068 res!90325) b!191065))

(declare-fun m!217687 () Bool)

(assert (=> bm!19281 m!217687))

(declare-fun m!217689 () Bool)

(assert (=> d!55995 m!217689))

(declare-fun m!217691 () Bool)

(assert (=> d!55995 m!217691))

(declare-fun m!217693 () Bool)

(assert (=> b!191063 m!217693))

(declare-fun m!217695 () Bool)

(assert (=> b!191068 m!217695))

(declare-fun m!217697 () Bool)

(assert (=> b!191065 m!217697))

(assert (=> d!55875 d!55995))

(declare-fun d!55997 () Bool)

(declare-fun res!90330 () Bool)

(declare-fun e!125740 () Bool)

(assert (=> d!55997 (=> res!90330 e!125740)))

(assert (=> d!55997 (= res!90330 (= (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!55997 (= (arrayContainsKey!0 (_keys!5865 thiss!1248) key!828 #b00000000000000000000000000000000) e!125740)))

(declare-fun b!191076 () Bool)

(declare-fun e!125741 () Bool)

(assert (=> b!191076 (= e!125740 e!125741)))

(declare-fun res!90331 () Bool)

(assert (=> b!191076 (=> (not res!90331) (not e!125741))))

(assert (=> b!191076 (= res!90331 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4147 (_keys!5865 thiss!1248))))))

(declare-fun b!191077 () Bool)

(assert (=> b!191077 (= e!125741 (arrayContainsKey!0 (_keys!5865 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!55997 (not res!90330)) b!191076))

(assert (= (and b!191076 res!90331) b!191077))

(assert (=> d!55997 m!217197))

(declare-fun m!217699 () Bool)

(assert (=> b!191077 m!217699))

(assert (=> bm!19260 d!55997))

(declare-fun d!55999 () Bool)

(declare-fun res!90336 () Bool)

(declare-fun e!125746 () Bool)

(assert (=> d!55999 (=> res!90336 e!125746)))

(assert (=> d!55999 (= res!90336 (and ((_ is Cons!2434) (toList!1240 lt!94575)) (= (_1!1769 (h!3072 (toList!1240 lt!94575))) key!828)))))

(assert (=> d!55999 (= (containsKey!240 (toList!1240 lt!94575) key!828) e!125746)))

(declare-fun b!191082 () Bool)

(declare-fun e!125747 () Bool)

(assert (=> b!191082 (= e!125746 e!125747)))

(declare-fun res!90337 () Bool)

(assert (=> b!191082 (=> (not res!90337) (not e!125747))))

(assert (=> b!191082 (= res!90337 (and (or (not ((_ is Cons!2434) (toList!1240 lt!94575))) (bvsle (_1!1769 (h!3072 (toList!1240 lt!94575))) key!828)) ((_ is Cons!2434) (toList!1240 lt!94575)) (bvslt (_1!1769 (h!3072 (toList!1240 lt!94575))) key!828)))))

(declare-fun b!191083 () Bool)

(assert (=> b!191083 (= e!125747 (containsKey!240 (t!7356 (toList!1240 lt!94575)) key!828))))

(assert (= (and d!55999 (not res!90336)) b!191082))

(assert (= (and b!191082 res!90337) b!191083))

(declare-fun m!217701 () Bool)

(assert (=> b!191083 m!217701))

(assert (=> d!55877 d!55999))

(declare-fun d!56001 () Bool)

(declare-fun e!125748 () Bool)

(assert (=> d!56001 e!125748))

(declare-fun res!90339 () Bool)

(assert (=> d!56001 (=> (not res!90339) (not e!125748))))

(declare-fun lt!94871 () ListLongMap!2449)

(assert (=> d!56001 (= res!90339 (contains!1345 lt!94871 (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(declare-fun lt!94868 () List!2438)

(assert (=> d!56001 (= lt!94871 (ListLongMap!2450 lt!94868))))

(declare-fun lt!94869 () Unit!5761)

(declare-fun lt!94870 () Unit!5761)

(assert (=> d!56001 (= lt!94869 lt!94870)))

(assert (=> d!56001 (= (getValueByKey!236 lt!94868 (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(assert (=> d!56001 (= lt!94870 (lemmaContainsTupThenGetReturnValue!125 lt!94868 (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(assert (=> d!56001 (= lt!94868 (insertStrictlySorted!127 (toList!1240 call!19254) (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(assert (=> d!56001 (= (+!298 call!19254 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))) lt!94871)))

(declare-fun b!191084 () Bool)

(declare-fun res!90338 () Bool)

(assert (=> b!191084 (=> (not res!90338) (not e!125748))))

(assert (=> b!191084 (= res!90338 (= (getValueByKey!236 (toList!1240 lt!94871) (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(declare-fun b!191085 () Bool)

(assert (=> b!191085 (= e!125748 (contains!1347 (toList!1240 lt!94871) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))

(assert (= (and d!56001 res!90339) b!191084))

(assert (= (and b!191084 res!90338) b!191085))

(declare-fun m!217703 () Bool)

(assert (=> d!56001 m!217703))

(declare-fun m!217705 () Bool)

(assert (=> d!56001 m!217705))

(declare-fun m!217707 () Bool)

(assert (=> d!56001 m!217707))

(declare-fun m!217709 () Bool)

(assert (=> d!56001 m!217709))

(declare-fun m!217711 () Bool)

(assert (=> b!191084 m!217711))

(declare-fun m!217713 () Bool)

(assert (=> b!191085 m!217713))

(assert (=> b!190778 d!56001))

(declare-fun d!56003 () Bool)

(declare-fun e!125749 () Bool)

(assert (=> d!56003 e!125749))

(declare-fun res!90341 () Bool)

(assert (=> d!56003 (=> (not res!90341) (not e!125749))))

(declare-fun lt!94875 () ListLongMap!2449)

(assert (=> d!56003 (= res!90341 (contains!1345 lt!94875 (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(declare-fun lt!94872 () List!2438)

(assert (=> d!56003 (= lt!94875 (ListLongMap!2450 lt!94872))))

(declare-fun lt!94873 () Unit!5761)

(declare-fun lt!94874 () Unit!5761)

(assert (=> d!56003 (= lt!94873 lt!94874)))

(assert (=> d!56003 (= (getValueByKey!236 lt!94872 (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(assert (=> d!56003 (= lt!94874 (lemmaContainsTupThenGetReturnValue!125 lt!94872 (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(assert (=> d!56003 (= lt!94872 (insertStrictlySorted!127 (toList!1240 call!19247) (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))) (_2!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))))))

(assert (=> d!56003 (= (+!298 call!19247 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))) lt!94875)))

(declare-fun b!191086 () Bool)

(declare-fun res!90340 () Bool)

(assert (=> b!191086 (=> (not res!90340) (not e!125749))))

(assert (=> b!191086 (= res!90340 (= (getValueByKey!236 (toList!1240 lt!94875) (_1!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248)))) (Some!241 (_2!1769 (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))))

(declare-fun b!191087 () Bool)

(assert (=> b!191087 (= e!125749 (contains!1347 (toList!1240 lt!94875) (tuple2!3519 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3733 thiss!1248))))))

(assert (= (and d!56003 res!90341) b!191086))

(assert (= (and b!191086 res!90340) b!191087))

(declare-fun m!217715 () Bool)

(assert (=> d!56003 m!217715))

(declare-fun m!217717 () Bool)

(assert (=> d!56003 m!217717))

(declare-fun m!217719 () Bool)

(assert (=> d!56003 m!217719))

(declare-fun m!217721 () Bool)

(assert (=> d!56003 m!217721))

(declare-fun m!217723 () Bool)

(assert (=> b!191086 m!217723))

(declare-fun m!217725 () Bool)

(assert (=> b!191087 m!217725))

(assert (=> b!190752 d!56003))

(declare-fun b!191101 () Bool)

(declare-fun e!125758 () SeekEntryResult!684)

(assert (=> b!191101 (= e!125758 (MissingVacant!684 (index!4908 lt!94729)))))

(declare-fun b!191102 () Bool)

(declare-fun c!34386 () Bool)

(declare-fun lt!94880 () (_ BitVec 64))

(assert (=> b!191102 (= c!34386 (= lt!94880 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!125756 () SeekEntryResult!684)

(assert (=> b!191102 (= e!125756 e!125758)))

(declare-fun b!191103 () Bool)

(declare-fun e!125757 () SeekEntryResult!684)

(assert (=> b!191103 (= e!125757 Undefined!684)))

(declare-fun b!191104 () Bool)

(assert (=> b!191104 (= e!125757 e!125756)))

(declare-fun c!34388 () Bool)

(assert (=> b!191104 (= c!34388 (= lt!94880 key!828))))

(declare-fun b!191105 () Bool)

(assert (=> b!191105 (= e!125756 (Found!684 (index!4908 lt!94729)))))

(declare-fun lt!94881 () SeekEntryResult!684)

(declare-fun d!56005 () Bool)

(assert (=> d!56005 (and (or ((_ is Undefined!684) lt!94881) (not ((_ is Found!684) lt!94881)) (and (bvsge (index!4907 lt!94881) #b00000000000000000000000000000000) (bvslt (index!4907 lt!94881) (size!4147 (_keys!5865 thiss!1248))))) (or ((_ is Undefined!684) lt!94881) ((_ is Found!684) lt!94881) (not ((_ is MissingVacant!684) lt!94881)) (not (= (index!4909 lt!94881) (index!4908 lt!94729))) (and (bvsge (index!4909 lt!94881) #b00000000000000000000000000000000) (bvslt (index!4909 lt!94881) (size!4147 (_keys!5865 thiss!1248))))) (or ((_ is Undefined!684) lt!94881) (ite ((_ is Found!684) lt!94881) (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4907 lt!94881)) key!828) (and ((_ is MissingVacant!684) lt!94881) (= (index!4909 lt!94881) (index!4908 lt!94729)) (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4909 lt!94881)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!56005 (= lt!94881 e!125757)))

(declare-fun c!34387 () Bool)

(assert (=> d!56005 (= c!34387 (bvsge (x!20512 lt!94729) #b01111111111111111111111111111110))))

(assert (=> d!56005 (= lt!94880 (select (arr!3826 (_keys!5865 thiss!1248)) (index!4908 lt!94729)))))

(assert (=> d!56005 (validMask!0 (mask!9099 thiss!1248))))

(assert (=> d!56005 (= (seekKeyOrZeroReturnVacant!0 (x!20512 lt!94729) (index!4908 lt!94729) (index!4908 lt!94729) key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)) lt!94881)))

(declare-fun b!191100 () Bool)

(assert (=> b!191100 (= e!125758 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20512 lt!94729) #b00000000000000000000000000000001) (nextIndex!0 (index!4908 lt!94729) (x!20512 lt!94729) (mask!9099 thiss!1248)) (index!4908 lt!94729) key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(assert (= (and d!56005 c!34387) b!191103))

(assert (= (and d!56005 (not c!34387)) b!191104))

(assert (= (and b!191104 c!34388) b!191105))

(assert (= (and b!191104 (not c!34388)) b!191102))

(assert (= (and b!191102 c!34386) b!191101))

(assert (= (and b!191102 (not c!34386)) b!191100))

(declare-fun m!217727 () Bool)

(assert (=> d!56005 m!217727))

(declare-fun m!217729 () Bool)

(assert (=> d!56005 m!217729))

(assert (=> d!56005 m!217329))

(assert (=> d!56005 m!217131))

(declare-fun m!217731 () Bool)

(assert (=> b!191100 m!217731))

(assert (=> b!191100 m!217731))

(declare-fun m!217733 () Bool)

(assert (=> b!191100 m!217733))

(assert (=> b!190836 d!56005))

(declare-fun d!56007 () Bool)

(declare-fun e!125760 () Bool)

(assert (=> d!56007 e!125760))

(declare-fun res!90342 () Bool)

(assert (=> d!56007 (=> res!90342 e!125760)))

(declare-fun lt!94883 () Bool)

(assert (=> d!56007 (= res!90342 (not lt!94883))))

(declare-fun lt!94882 () Bool)

(assert (=> d!56007 (= lt!94883 lt!94882)))

(declare-fun lt!94884 () Unit!5761)

(declare-fun e!125759 () Unit!5761)

(assert (=> d!56007 (= lt!94884 e!125759)))

(declare-fun c!34389 () Bool)

(assert (=> d!56007 (= c!34389 lt!94882)))

(assert (=> d!56007 (= lt!94882 (containsKey!240 (toList!1240 lt!94715) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56007 (= (contains!1345 lt!94715 #b1000000000000000000000000000000000000000000000000000000000000000) lt!94883)))

(declare-fun b!191106 () Bool)

(declare-fun lt!94885 () Unit!5761)

(assert (=> b!191106 (= e!125759 lt!94885)))

(assert (=> b!191106 (= lt!94885 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94715) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191106 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94715) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191107 () Bool)

(declare-fun Unit!5777 () Unit!5761)

(assert (=> b!191107 (= e!125759 Unit!5777)))

(declare-fun b!191108 () Bool)

(assert (=> b!191108 (= e!125760 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94715) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56007 c!34389) b!191106))

(assert (= (and d!56007 (not c!34389)) b!191107))

(assert (= (and d!56007 (not res!90342)) b!191108))

(declare-fun m!217735 () Bool)

(assert (=> d!56007 m!217735))

(declare-fun m!217737 () Bool)

(assert (=> b!191106 m!217737))

(declare-fun m!217739 () Bool)

(assert (=> b!191106 m!217739))

(assert (=> b!191106 m!217739))

(declare-fun m!217741 () Bool)

(assert (=> b!191106 m!217741))

(assert (=> b!191108 m!217739))

(assert (=> b!191108 m!217739))

(assert (=> b!191108 m!217741))

(assert (=> bm!19249 d!56007))

(declare-fun d!56009 () Bool)

(declare-fun e!125762 () Bool)

(assert (=> d!56009 e!125762))

(declare-fun res!90343 () Bool)

(assert (=> d!56009 (=> res!90343 e!125762)))

(declare-fun lt!94887 () Bool)

(assert (=> d!56009 (= res!90343 (not lt!94887))))

(declare-fun lt!94886 () Bool)

(assert (=> d!56009 (= lt!94887 lt!94886)))

(declare-fun lt!94888 () Unit!5761)

(declare-fun e!125761 () Unit!5761)

(assert (=> d!56009 (= lt!94888 e!125761)))

(declare-fun c!34390 () Bool)

(assert (=> d!56009 (= c!34390 lt!94886)))

(assert (=> d!56009 (= lt!94886 (containsKey!240 (toList!1240 lt!94690) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56009 (= (contains!1345 lt!94690 #b1000000000000000000000000000000000000000000000000000000000000000) lt!94887)))

(declare-fun b!191109 () Bool)

(declare-fun lt!94889 () Unit!5761)

(assert (=> b!191109 (= e!125761 lt!94889)))

(assert (=> b!191109 (= lt!94889 (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94690) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191109 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94690) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191110 () Bool)

(declare-fun Unit!5778 () Unit!5761)

(assert (=> b!191110 (= e!125761 Unit!5778)))

(declare-fun b!191111 () Bool)

(assert (=> b!191111 (= e!125762 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94690) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56009 c!34390) b!191109))

(assert (= (and d!56009 (not c!34390)) b!191110))

(assert (= (and d!56009 (not res!90343)) b!191111))

(declare-fun m!217743 () Bool)

(assert (=> d!56009 m!217743))

(declare-fun m!217745 () Bool)

(assert (=> b!191109 m!217745))

(declare-fun m!217747 () Bool)

(assert (=> b!191109 m!217747))

(assert (=> b!191109 m!217747))

(declare-fun m!217749 () Bool)

(assert (=> b!191109 m!217749))

(assert (=> b!191111 m!217747))

(assert (=> b!191111 m!217747))

(assert (=> b!191111 m!217749))

(assert (=> bm!19242 d!56009))

(declare-fun d!56011 () Bool)

(declare-fun isEmpty!487 (Option!242) Bool)

(assert (=> d!56011 (= (isDefined!190 (getValueByKey!236 (toList!1240 lt!94575) key!828)) (not (isEmpty!487 (getValueByKey!236 (toList!1240 lt!94575) key!828))))))

(declare-fun bs!7652 () Bool)

(assert (= bs!7652 d!56011))

(assert (=> bs!7652 m!217193))

(declare-fun m!217751 () Bool)

(assert (=> bs!7652 m!217751))

(assert (=> b!190698 d!56011))

(declare-fun d!56013 () Bool)

(declare-fun c!34391 () Bool)

(assert (=> d!56013 (= c!34391 (and ((_ is Cons!2434) (toList!1240 lt!94575)) (= (_1!1769 (h!3072 (toList!1240 lt!94575))) key!828)))))

(declare-fun e!125763 () Option!242)

(assert (=> d!56013 (= (getValueByKey!236 (toList!1240 lt!94575) key!828) e!125763)))

(declare-fun b!191113 () Bool)

(declare-fun e!125764 () Option!242)

(assert (=> b!191113 (= e!125763 e!125764)))

(declare-fun c!34392 () Bool)

(assert (=> b!191113 (= c!34392 (and ((_ is Cons!2434) (toList!1240 lt!94575)) (not (= (_1!1769 (h!3072 (toList!1240 lt!94575))) key!828))))))

(declare-fun b!191114 () Bool)

(assert (=> b!191114 (= e!125764 (getValueByKey!236 (t!7356 (toList!1240 lt!94575)) key!828))))

(declare-fun b!191115 () Bool)

(assert (=> b!191115 (= e!125764 None!240)))

(declare-fun b!191112 () Bool)

(assert (=> b!191112 (= e!125763 (Some!241 (_2!1769 (h!3072 (toList!1240 lt!94575)))))))

(assert (= (and d!56013 c!34391) b!191112))

(assert (= (and d!56013 (not c!34391)) b!191113))

(assert (= (and b!191113 c!34392) b!191114))

(assert (= (and b!191113 (not c!34392)) b!191115))

(declare-fun m!217753 () Bool)

(assert (=> b!191114 m!217753))

(assert (=> b!190698 d!56013))

(declare-fun d!56015 () Bool)

(assert (=> d!56015 (= (apply!180 lt!94715 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) (get!2206 (getValueByKey!236 (toList!1240 lt!94715) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7653 () Bool)

(assert (= bs!7653 d!56015))

(assert (=> bs!7653 m!217197))

(assert (=> bs!7653 m!217659))

(assert (=> bs!7653 m!217659))

(declare-fun m!217755 () Bool)

(assert (=> bs!7653 m!217755))

(assert (=> b!190787 d!56015))

(declare-fun c!34395 () Bool)

(declare-fun d!56017 () Bool)

(assert (=> d!56017 (= c!34395 ((_ is ValueCellFull!1878) (select (arr!3827 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248)))) #b00000000000000000000000000000000)))))

(declare-fun e!125767 () V!5571)

(assert (=> d!56017 (= (get!2205 (select (arr!3827 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!125767)))

(declare-fun b!191120 () Bool)

(declare-fun get!2207 (ValueCell!1878 V!5571) V!5571)

(assert (=> b!191120 (= e!125767 (get!2207 (select (arr!3827 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!191121 () Bool)

(declare-fun get!2208 (ValueCell!1878 V!5571) V!5571)

(assert (=> b!191121 (= e!125767 (get!2208 (select (arr!3827 (array!8123 (store (arr!3827 (_values!3875 thiss!1248)) (index!4907 lt!94573) (ValueCellFull!1878 v!309)) (size!4148 (_values!3875 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56017 c!34395) b!191120))

(assert (= (and d!56017 (not c!34395)) b!191121))

(assert (=> b!191120 m!217263))

(assert (=> b!191120 m!217205))

(declare-fun m!217757 () Bool)

(assert (=> b!191120 m!217757))

(assert (=> b!191121 m!217263))

(assert (=> b!191121 m!217205))

(declare-fun m!217759 () Bool)

(assert (=> b!191121 m!217759))

(assert (=> b!190787 d!56017))

(declare-fun d!56019 () Bool)

(assert (=> d!56019 (= (apply!180 lt!94690 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)) (get!2206 (getValueByKey!236 (toList!1240 lt!94690) (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7654 () Bool)

(assert (= bs!7654 d!56019))

(assert (=> bs!7654 m!217197))

(assert (=> bs!7654 m!217667))

(assert (=> bs!7654 m!217667))

(declare-fun m!217761 () Bool)

(assert (=> bs!7654 m!217761))

(assert (=> b!190761 d!56019))

(declare-fun d!56021 () Bool)

(declare-fun c!34396 () Bool)

(assert (=> d!56021 (= c!34396 ((_ is ValueCellFull!1878) (select (arr!3827 (_values!3875 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!125768 () V!5571)

(assert (=> d!56021 (= (get!2205 (select (arr!3827 (_values!3875 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!125768)))

(declare-fun b!191122 () Bool)

(assert (=> b!191122 (= e!125768 (get!2207 (select (arr!3827 (_values!3875 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!191123 () Bool)

(assert (=> b!191123 (= e!125768 (get!2208 (select (arr!3827 (_values!3875 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!518 (defaultEntry!3892 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56021 c!34396) b!191122))

(assert (= (and d!56021 (not c!34396)) b!191123))

(assert (=> b!191122 m!217203))

(assert (=> b!191122 m!217205))

(declare-fun m!217763 () Bool)

(assert (=> b!191122 m!217763))

(assert (=> b!191123 m!217203))

(assert (=> b!191123 m!217205))

(declare-fun m!217765 () Bool)

(assert (=> b!191123 m!217765))

(assert (=> b!190761 d!56021))

(assert (=> b!190773 d!55975))

(assert (=> d!55883 d!55873))

(assert (=> b!190747 d!55975))

(declare-fun d!56023 () Bool)

(assert (=> d!56023 (isDefined!190 (getValueByKey!236 (toList!1240 lt!94575) key!828))))

(declare-fun lt!94892 () Unit!5761)

(declare-fun choose!1041 (List!2438 (_ BitVec 64)) Unit!5761)

(assert (=> d!56023 (= lt!94892 (choose!1041 (toList!1240 lt!94575) key!828))))

(declare-fun e!125771 () Bool)

(assert (=> d!56023 e!125771))

(declare-fun res!90346 () Bool)

(assert (=> d!56023 (=> (not res!90346) (not e!125771))))

(assert (=> d!56023 (= res!90346 (isStrictlySorted!349 (toList!1240 lt!94575)))))

(assert (=> d!56023 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!189 (toList!1240 lt!94575) key!828) lt!94892)))

(declare-fun b!191126 () Bool)

(assert (=> b!191126 (= e!125771 (containsKey!240 (toList!1240 lt!94575) key!828))))

(assert (= (and d!56023 res!90346) b!191126))

(assert (=> d!56023 m!217193))

(assert (=> d!56023 m!217193))

(assert (=> d!56023 m!217195))

(declare-fun m!217767 () Bool)

(assert (=> d!56023 m!217767))

(assert (=> d!56023 m!217691))

(assert (=> b!191126 m!217189))

(assert (=> b!190696 d!56023))

(assert (=> b!190696 d!56011))

(assert (=> b!190696 d!56013))

(declare-fun b!191135 () Bool)

(declare-fun e!125779 () Bool)

(declare-fun e!125780 () Bool)

(assert (=> b!191135 (= e!125779 e!125780)))

(declare-fun lt!94900 () (_ BitVec 64))

(assert (=> b!191135 (= lt!94900 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94901 () Unit!5761)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8120 (_ BitVec 64) (_ BitVec 32)) Unit!5761)

(assert (=> b!191135 (= lt!94901 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5865 thiss!1248) lt!94900 #b00000000000000000000000000000000))))

(assert (=> b!191135 (arrayContainsKey!0 (_keys!5865 thiss!1248) lt!94900 #b00000000000000000000000000000000)))

(declare-fun lt!94899 () Unit!5761)

(assert (=> b!191135 (= lt!94899 lt!94901)))

(declare-fun res!90351 () Bool)

(assert (=> b!191135 (= res!90351 (= (seekEntryOrOpen!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000) (_keys!5865 thiss!1248) (mask!9099 thiss!1248)) (Found!684 #b00000000000000000000000000000000)))))

(assert (=> b!191135 (=> (not res!90351) (not e!125780))))

(declare-fun bm!19286 () Bool)

(declare-fun call!19289 () Bool)

(assert (=> bm!19286 (= call!19289 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(declare-fun b!191136 () Bool)

(declare-fun e!125778 () Bool)

(assert (=> b!191136 (= e!125778 e!125779)))

(declare-fun c!34399 () Bool)

(assert (=> b!191136 (= c!34399 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!56025 () Bool)

(declare-fun res!90352 () Bool)

(assert (=> d!56025 (=> res!90352 e!125778)))

(assert (=> d!56025 (= res!90352 (bvsge #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> d!56025 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)) e!125778)))

(declare-fun b!191137 () Bool)

(assert (=> b!191137 (= e!125780 call!19289)))

(declare-fun b!191138 () Bool)

(assert (=> b!191138 (= e!125779 call!19289)))

(assert (= (and d!56025 (not res!90352)) b!191136))

(assert (= (and b!191136 c!34399) b!191135))

(assert (= (and b!191136 (not c!34399)) b!191138))

(assert (= (and b!191135 res!90351) b!191137))

(assert (= (or b!191137 b!191138) bm!19286))

(assert (=> b!191135 m!217197))

(declare-fun m!217769 () Bool)

(assert (=> b!191135 m!217769))

(declare-fun m!217771 () Bool)

(assert (=> b!191135 m!217771))

(assert (=> b!191135 m!217197))

(declare-fun m!217773 () Bool)

(assert (=> b!191135 m!217773))

(declare-fun m!217775 () Bool)

(assert (=> bm!19286 m!217775))

(assert (=> b!191136 m!217197))

(assert (=> b!191136 m!217197))

(assert (=> b!191136 m!217221))

(assert (=> b!190819 d!56025))

(declare-fun d!56027 () Bool)

(declare-fun lt!94904 () (_ BitVec 32))

(assert (=> d!56027 (and (bvsge lt!94904 #b00000000000000000000000000000000) (bvsle lt!94904 (bvsub (size!4147 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!125786 () (_ BitVec 32))

(assert (=> d!56027 (= lt!94904 e!125786)))

(declare-fun c!34404 () Bool)

(assert (=> d!56027 (= c!34404 (bvsge #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> d!56027 (and (bvsle #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4147 (_keys!5865 thiss!1248)) (size!4147 (_keys!5865 thiss!1248))))))

(assert (=> d!56027 (= (arrayCountValidKeys!0 (_keys!5865 thiss!1248) #b00000000000000000000000000000000 (size!4147 (_keys!5865 thiss!1248))) lt!94904)))

(declare-fun b!191147 () Bool)

(declare-fun e!125785 () (_ BitVec 32))

(declare-fun call!19292 () (_ BitVec 32))

(assert (=> b!191147 (= e!125785 call!19292)))

(declare-fun b!191148 () Bool)

(assert (=> b!191148 (= e!125786 #b00000000000000000000000000000000)))

(declare-fun b!191149 () Bool)

(assert (=> b!191149 (= e!125786 e!125785)))

(declare-fun c!34405 () Bool)

(assert (=> b!191149 (= c!34405 (validKeyInArray!0 (select (arr!3826 (_keys!5865 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191150 () Bool)

(assert (=> b!191150 (= e!125785 (bvadd #b00000000000000000000000000000001 call!19292))))

(declare-fun bm!19289 () Bool)

(assert (=> bm!19289 (= call!19292 (arrayCountValidKeys!0 (_keys!5865 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4147 (_keys!5865 thiss!1248))))))

(assert (= (and d!56027 c!34404) b!191148))

(assert (= (and d!56027 (not c!34404)) b!191149))

(assert (= (and b!191149 c!34405) b!191150))

(assert (= (and b!191149 (not c!34405)) b!191147))

(assert (= (or b!191150 b!191147) bm!19289))

(assert (=> b!191149 m!217197))

(assert (=> b!191149 m!217197))

(assert (=> b!191149 m!217221))

(declare-fun m!217777 () Bool)

(assert (=> bm!19289 m!217777))

(assert (=> b!190818 d!56027))

(declare-fun d!56029 () Bool)

(declare-fun res!90362 () Bool)

(declare-fun e!125789 () Bool)

(assert (=> d!56029 (=> (not res!90362) (not e!125789))))

(assert (=> d!56029 (= res!90362 (validMask!0 (mask!9099 thiss!1248)))))

(assert (=> d!56029 (= (simpleValid!195 thiss!1248) e!125789)))

(declare-fun b!191159 () Bool)

(declare-fun res!90363 () Bool)

(assert (=> b!191159 (=> (not res!90363) (not e!125789))))

(assert (=> b!191159 (= res!90363 (and (= (size!4148 (_values!3875 thiss!1248)) (bvadd (mask!9099 thiss!1248) #b00000000000000000000000000000001)) (= (size!4147 (_keys!5865 thiss!1248)) (size!4148 (_values!3875 thiss!1248))) (bvsge (_size!1381 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1381 thiss!1248) (bvadd (mask!9099 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!191161 () Bool)

(declare-fun res!90364 () Bool)

(assert (=> b!191161 (=> (not res!90364) (not e!125789))))

(declare-fun size!4151 (LongMapFixedSize!2664) (_ BitVec 32))

(assert (=> b!191161 (= res!90364 (= (size!4151 thiss!1248) (bvadd (_size!1381 thiss!1248) (bvsdiv (bvadd (extraKeys!3629 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!191160 () Bool)

(declare-fun res!90361 () Bool)

(assert (=> b!191160 (=> (not res!90361) (not e!125789))))

(assert (=> b!191160 (= res!90361 (bvsge (size!4151 thiss!1248) (_size!1381 thiss!1248)))))

(declare-fun b!191162 () Bool)

(assert (=> b!191162 (= e!125789 (and (bvsge (extraKeys!3629 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3629 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1381 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!56029 res!90362) b!191159))

(assert (= (and b!191159 res!90363) b!191160))

(assert (= (and b!191160 res!90361) b!191161))

(assert (= (and b!191161 res!90364) b!191162))

(assert (=> d!56029 m!217131))

(declare-fun m!217779 () Bool)

(assert (=> b!191161 m!217779))

(assert (=> b!191160 m!217779))

(assert (=> d!55887 d!56029))

(declare-fun d!56031 () Bool)

(assert (=> d!56031 (= (apply!180 lt!94715 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2206 (getValueByKey!236 (toList!1240 lt!94715) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7655 () Bool)

(assert (= bs!7655 d!56031))

(assert (=> bs!7655 m!217639))

(assert (=> bs!7655 m!217639))

(declare-fun m!217781 () Bool)

(assert (=> bs!7655 m!217781))

(assert (=> b!190772 d!56031))

(declare-fun d!56033 () Bool)

(assert (=> d!56033 (= (apply!180 lt!94690 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2206 (getValueByKey!236 (toList!1240 lt!94690) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7656 () Bool)

(assert (= bs!7656 d!56033))

(assert (=> bs!7656 m!217647))

(assert (=> bs!7656 m!217647))

(declare-fun m!217783 () Bool)

(assert (=> bs!7656 m!217783))

(assert (=> b!190746 d!56033))

(declare-fun d!56035 () Bool)

(assert (=> d!56035 (= (apply!180 lt!94715 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2206 (getValueByKey!236 (toList!1240 lt!94715) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7657 () Bool)

(assert (= bs!7657 d!56035))

(assert (=> bs!7657 m!217739))

(assert (=> bs!7657 m!217739))

(declare-fun m!217785 () Bool)

(assert (=> bs!7657 m!217785))

(assert (=> b!190786 d!56035))

(declare-fun d!56037 () Bool)

(assert (=> d!56037 (= (apply!180 lt!94690 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2206 (getValueByKey!236 (toList!1240 lt!94690) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7658 () Bool)

(assert (= bs!7658 d!56037))

(assert (=> bs!7658 m!217747))

(assert (=> bs!7658 m!217747))

(declare-fun m!217787 () Bool)

(assert (=> bs!7658 m!217787))

(assert (=> b!190760 d!56037))

(assert (=> d!55869 d!55889))

(declare-fun d!56039 () Bool)

(declare-fun e!125792 () Bool)

(assert (=> d!56039 e!125792))

(declare-fun res!90369 () Bool)

(assert (=> d!56039 (=> (not res!90369) (not e!125792))))

(declare-fun lt!94907 () SeekEntryResult!684)

(assert (=> d!56039 (= res!90369 ((_ is Found!684) lt!94907))))

(assert (=> d!56039 (= lt!94907 (seekEntryOrOpen!0 key!828 (_keys!5865 thiss!1248) (mask!9099 thiss!1248)))))

(assert (=> d!56039 true))

(declare-fun _$33!141 () Unit!5761)

(assert (=> d!56039 (= (choose!1035 (_keys!5865 thiss!1248) (_values!3875 thiss!1248) (mask!9099 thiss!1248) (extraKeys!3629 thiss!1248) (zeroValue!3733 thiss!1248) (minValue!3733 thiss!1248) key!828 (defaultEntry!3892 thiss!1248)) _$33!141)))

(declare-fun b!191167 () Bool)

(declare-fun res!90370 () Bool)

(assert (=> b!191167 (=> (not res!90370) (not e!125792))))

(assert (=> b!191167 (= res!90370 (inRange!0 (index!4907 lt!94907) (mask!9099 thiss!1248)))))

(declare-fun b!191168 () Bool)

(assert (=> b!191168 (= e!125792 (= (select (arr!3826 (_keys!5865 thiss!1248)) (index!4907 lt!94907)) key!828))))

(assert (= (and d!56039 res!90369) b!191167))

(assert (= (and b!191167 res!90370) b!191168))

(assert (=> d!56039 m!217109))

(declare-fun m!217789 () Bool)

(assert (=> b!191167 m!217789))

(declare-fun m!217791 () Bool)

(assert (=> b!191168 m!217791))

(assert (=> d!55869 d!56039))

(assert (=> d!55869 d!55873))

(declare-fun mapIsEmpty!7677 () Bool)

(declare-fun mapRes!7677 () Bool)

(assert (=> mapIsEmpty!7677 mapRes!7677))

(declare-fun condMapEmpty!7677 () Bool)

(declare-fun mapDefault!7677 () ValueCell!1878)

(assert (=> mapNonEmpty!7676 (= condMapEmpty!7677 (= mapRest!7676 ((as const (Array (_ BitVec 32) ValueCell!1878)) mapDefault!7677)))))

(declare-fun e!125793 () Bool)

(assert (=> mapNonEmpty!7676 (= tp!16865 (and e!125793 mapRes!7677))))

(declare-fun b!191170 () Bool)

(assert (=> b!191170 (= e!125793 tp_is_empty!4443)))

(declare-fun mapNonEmpty!7677 () Bool)

(declare-fun tp!16866 () Bool)

(declare-fun e!125794 () Bool)

(assert (=> mapNonEmpty!7677 (= mapRes!7677 (and tp!16866 e!125794))))

(declare-fun mapValue!7677 () ValueCell!1878)

(declare-fun mapRest!7677 () (Array (_ BitVec 32) ValueCell!1878))

(declare-fun mapKey!7677 () (_ BitVec 32))

(assert (=> mapNonEmpty!7677 (= mapRest!7676 (store mapRest!7677 mapKey!7677 mapValue!7677))))

(declare-fun b!191169 () Bool)

(assert (=> b!191169 (= e!125794 tp_is_empty!4443)))

(assert (= (and mapNonEmpty!7676 condMapEmpty!7677) mapIsEmpty!7677))

(assert (= (and mapNonEmpty!7676 (not condMapEmpty!7677)) mapNonEmpty!7677))

(assert (= (and mapNonEmpty!7677 ((_ is ValueCellFull!1878) mapValue!7677)) b!191169))

(assert (= (and mapNonEmpty!7676 ((_ is ValueCellFull!1878) mapDefault!7677)) b!191170))

(declare-fun m!217793 () Bool)

(assert (=> mapNonEmpty!7677 m!217793))

(declare-fun b_lambda!7413 () Bool)

(assert (= b_lambda!7411 (or (and b!190640 b_free!4671) b_lambda!7413)))

(declare-fun b_lambda!7415 () Bool)

(assert (= b_lambda!7409 (or (and b!190640 b_free!4671) b_lambda!7415)))

(declare-fun b_lambda!7417 () Bool)

(assert (= b_lambda!7407 (or (and b!190640 b_free!4671) b_lambda!7417)))

(declare-fun b_lambda!7419 () Bool)

(assert (= b_lambda!7405 (or (and b!190640 b_free!4671) b_lambda!7419)))

(check-sat (not b!190985) (not b!190958) (not b!190874) (not b!191122) (not b!191083) (not b!191020) (not b_lambda!7401) (not d!56033) (not b!190962) (not b!190879) (not d!55967) (not d!55971) (not b!191087) (not d!55919) (not b!191149) (not d!55903) (not b!191100) (not b_lambda!7403) (not b!191026) (not b!191028) (not b!190969) (not d!55963) (not d!55957) (not b!191007) (not b!191063) (not d!55965) (not b!191025) (not d!55891) (not b!190986) (not b!190893) (not d!55989) (not d!56003) (not d!55995) (not b!190987) (not b!191114) (not d!56029) (not b!190975) (not b!191085) (not b!190964) (not d!55979) (not d!55921) (not d!55911) (not d!55929) (not b!191004) (not b!191160) (not b!191002) (not d!55961) (not b!190875) (not b!191135) (not bm!19264) (not d!55969) (not d!55907) (not d!55945) b_and!11361 (not b!191111) (not d!56037) (not bm!19281) (not b!190965) (not b!191123) (not d!55943) (not d!55947) (not b!190979) (not d!56005) (not b!191031) (not b_next!4671) (not b!190959) (not b!190983) (not mapNonEmpty!7677) (not d!56015) (not b!190963) (not b!190881) (not b!191167) tp_is_empty!4443 (not b!190976) (not d!55987) (not b!190957) (not d!55993) (not b!190891) (not bm!19265) (not d!55949) (not bm!19289) (not b!190988) (not d!56007) (not b!190887) (not d!55951) (not b!191029) (not b!190878) (not d!55915) (not d!56001) (not b!190871) (not b!190880) (not d!55937) (not b!191023) (not b_lambda!7419) (not b_lambda!7413) (not b!190973) (not b!191106) (not bm!19271) (not b!191040) (not d!56023) (not b!191018) (not d!56019) (not d!55917) (not b!191126) (not b!190961) (not d!55927) (not d!55893) (not bm!19286) (not b!190984) (not b!191136) (not d!55953) (not b!191041) (not b!191034) (not b_lambda!7415) (not b!191161) (not b!191022) (not bm!19274) (not b!191120) (not d!55935) (not d!55913) (not b!191068) (not b!190892) (not b!190981) (not b!191065) (not b!190968) (not b!190970) (not bm!19270) (not b!190889) (not b!190883) (not d!55925) (not d!55981) (not d!55905) (not d!56009) (not d!56011) (not b!190974) (not b!190890) (not b!191077) (not d!55939) (not b!191086) (not d!55931) (not d!55959) (not b!190877) (not b!191000) (not b!191108) (not b!191005) (not d!55941) (not d!55955) (not b!190951) (not b!191084) (not d!55895) (not b!191121) (not b!190971) (not b!190978) (not d!55909) (not b!190920) (not d!56031) (not b!190989) (not b!191109) (not d!56039) (not d!55985) (not b_lambda!7417) (not d!56035) (not b!190886) (not d!55933) (not d!55923) (not d!55899))
(check-sat b_and!11361 (not b_next!4671))
