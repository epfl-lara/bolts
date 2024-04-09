; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22030 () Bool)

(assert start!22030)

(declare-fun b!226805 () Bool)

(declare-fun b_free!6085 () Bool)

(declare-fun b_next!6085 () Bool)

(assert (=> b!226805 (= b_free!6085 (not b_next!6085))))

(declare-fun tp!21397 () Bool)

(declare-fun b_and!13001 () Bool)

(assert (=> b!226805 (= tp!21397 b_and!13001)))

(declare-fun b!226804 () Bool)

(declare-fun e!147147 () Bool)

(declare-fun e!147146 () Bool)

(assert (=> b!226804 (= e!147147 e!147146)))

(declare-fun res!111674 () Bool)

(declare-fun call!21088 () Bool)

(assert (=> b!226804 (= res!111674 call!21088)))

(assert (=> b!226804 (=> (not res!111674) (not e!147146))))

(declare-datatypes ((V!7577 0))(
  ( (V!7578 (val!3018 Int)) )
))
(declare-datatypes ((ValueCell!2630 0))(
  ( (ValueCellFull!2630 (v!5034 V!7577)) (EmptyCell!2630) )
))
(declare-datatypes ((array!11136 0))(
  ( (array!11137 (arr!5287 (Array (_ BitVec 32) ValueCell!2630)) (size!5620 (_ BitVec 32))) )
))
(declare-datatypes ((array!11138 0))(
  ( (array!11139 (arr!5288 (Array (_ BitVec 32) (_ BitVec 64))) (size!5621 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3160 0))(
  ( (LongMapFixedSize!3161 (defaultEntry!4239 Int) (mask!10095 (_ BitVec 32)) (extraKeys!3976 (_ BitVec 32)) (zeroValue!4080 V!7577) (minValue!4080 V!7577) (_size!1629 (_ BitVec 32)) (_keys!6293 array!11138) (_values!4222 array!11136) (_vacant!1629 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3160)

(declare-fun tp_is_empty!5947 () Bool)

(declare-fun e!147152 () Bool)

(declare-fun e!147159 () Bool)

(declare-fun array_inv!3487 (array!11138) Bool)

(declare-fun array_inv!3488 (array!11136) Bool)

(assert (=> b!226805 (= e!147152 (and tp!21397 tp_is_empty!5947 (array_inv!3487 (_keys!6293 thiss!1504)) (array_inv!3488 (_values!4222 thiss!1504)) e!147159))))

(declare-fun b!226806 () Bool)

(declare-datatypes ((Unit!6867 0))(
  ( (Unit!6868) )
))
(declare-fun e!147154 () Unit!6867)

(declare-fun Unit!6869 () Unit!6867)

(assert (=> b!226806 (= e!147154 Unit!6869)))

(declare-fun lt!114188 () Unit!6867)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!260 (array!11138 array!11136 (_ BitVec 32) (_ BitVec 32) V!7577 V!7577 (_ BitVec 64) Int) Unit!6867)

(assert (=> b!226806 (= lt!114188 (lemmaInListMapThenSeekEntryOrOpenFindsIt!260 (_keys!6293 thiss!1504) (_values!4222 thiss!1504) (mask!10095 thiss!1504) (extraKeys!3976 thiss!1504) (zeroValue!4080 thiss!1504) (minValue!4080 thiss!1504) key!932 (defaultEntry!4239 thiss!1504)))))

(assert (=> b!226806 false))

(declare-fun bm!21084 () Bool)

(declare-fun call!21087 () Bool)

(declare-fun arrayContainsKey!0 (array!11138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21084 (= call!21087 (arrayContainsKey!0 (_keys!6293 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226807 () Bool)

(declare-datatypes ((SeekEntryResult!898 0))(
  ( (MissingZero!898 (index!5762 (_ BitVec 32))) (Found!898 (index!5763 (_ BitVec 32))) (Intermediate!898 (undefined!1710 Bool) (index!5764 (_ BitVec 32)) (x!23262 (_ BitVec 32))) (Undefined!898) (MissingVacant!898 (index!5765 (_ BitVec 32))) )
))
(declare-fun lt!114197 () SeekEntryResult!898)

(assert (=> b!226807 (= e!147147 (is-Undefined!898 lt!114197))))

(declare-fun b!226808 () Bool)

(declare-fun res!111673 () Bool)

(declare-fun e!147160 () Bool)

(assert (=> b!226808 (=> res!111673 e!147160)))

(assert (=> b!226808 (= res!111673 (or (not (= (size!5620 (_values!4222 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10095 thiss!1504)))) (not (= (size!5621 (_keys!6293 thiss!1504)) (size!5620 (_values!4222 thiss!1504)))) (bvslt (mask!10095 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3976 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3976 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!226809 () Bool)

(declare-fun res!111680 () Bool)

(assert (=> b!226809 (=> res!111680 e!147160)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11138 (_ BitVec 32)) Bool)

(assert (=> b!226809 (= res!111680 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6293 thiss!1504) (mask!10095 thiss!1504))))))

(declare-fun b!226810 () Bool)

(declare-fun c!37588 () Bool)

(assert (=> b!226810 (= c!37588 (is-MissingVacant!898 lt!114197))))

(declare-fun e!147155 () Bool)

(assert (=> b!226810 (= e!147155 e!147147)))

(declare-fun b!226811 () Bool)

(assert (=> b!226811 (= e!147146 (not call!21087))))

(declare-fun b!226812 () Bool)

(declare-fun e!147153 () Bool)

(assert (=> b!226812 (= e!147153 tp_is_empty!5947)))

(declare-fun res!111672 () Bool)

(declare-fun e!147148 () Bool)

(assert (=> start!22030 (=> (not res!111672) (not e!147148))))

(declare-fun valid!1262 (LongMapFixedSize!3160) Bool)

(assert (=> start!22030 (= res!111672 (valid!1262 thiss!1504))))

(assert (=> start!22030 e!147148))

(assert (=> start!22030 e!147152))

(assert (=> start!22030 true))

(declare-fun b!226813 () Bool)

(declare-fun res!111677 () Bool)

(declare-fun e!147158 () Bool)

(assert (=> b!226813 (=> (not res!111677) (not e!147158))))

(assert (=> b!226813 (= res!111677 call!21088)))

(assert (=> b!226813 (= e!147155 e!147158)))

(declare-fun b!226814 () Bool)

(declare-fun res!111682 () Bool)

(assert (=> b!226814 (=> (not res!111682) (not e!147148))))

(assert (=> b!226814 (= res!111682 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226815 () Bool)

(assert (=> b!226815 (= e!147158 (not call!21087))))

(declare-fun b!226816 () Bool)

(declare-fun e!147157 () Bool)

(assert (=> b!226816 (= e!147148 e!147157)))

(declare-fun res!111678 () Bool)

(assert (=> b!226816 (=> (not res!111678) (not e!147157))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!226816 (= res!111678 (or (= lt!114197 (MissingZero!898 index!297)) (= lt!114197 (MissingVacant!898 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11138 (_ BitVec 32)) SeekEntryResult!898)

(assert (=> b!226816 (= lt!114197 (seekEntryOrOpen!0 key!932 (_keys!6293 thiss!1504) (mask!10095 thiss!1504)))))

(declare-fun mapIsEmpty!10090 () Bool)

(declare-fun mapRes!10090 () Bool)

(assert (=> mapIsEmpty!10090 mapRes!10090))

(declare-fun mapNonEmpty!10090 () Bool)

(declare-fun tp!21396 () Bool)

(declare-fun e!147150 () Bool)

(assert (=> mapNonEmpty!10090 (= mapRes!10090 (and tp!21396 e!147150))))

(declare-fun mapValue!10090 () ValueCell!2630)

(declare-fun mapRest!10090 () (Array (_ BitVec 32) ValueCell!2630))

(declare-fun mapKey!10090 () (_ BitVec 32))

(assert (=> mapNonEmpty!10090 (= (arr!5287 (_values!4222 thiss!1504)) (store mapRest!10090 mapKey!10090 mapValue!10090))))

(declare-fun c!37587 () Bool)

(declare-fun bm!21085 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21085 (= call!21088 (inRange!0 (ite c!37587 (index!5762 lt!114197) (index!5765 lt!114197)) (mask!10095 thiss!1504)))))

(declare-fun b!226817 () Bool)

(assert (=> b!226817 (= e!147150 tp_is_empty!5947)))

(declare-fun b!226818 () Bool)

(declare-fun res!111681 () Bool)

(assert (=> b!226818 (=> (not res!111681) (not e!147158))))

(assert (=> b!226818 (= res!111681 (= (select (arr!5288 (_keys!6293 thiss!1504)) (index!5762 lt!114197)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!226819 () Bool)

(declare-fun lt!114194 () Unit!6867)

(assert (=> b!226819 (= e!147154 lt!114194)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!271 (array!11138 array!11136 (_ BitVec 32) (_ BitVec 32) V!7577 V!7577 (_ BitVec 64) Int) Unit!6867)

(assert (=> b!226819 (= lt!114194 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!271 (_keys!6293 thiss!1504) (_values!4222 thiss!1504) (mask!10095 thiss!1504) (extraKeys!3976 thiss!1504) (zeroValue!4080 thiss!1504) (minValue!4080 thiss!1504) key!932 (defaultEntry!4239 thiss!1504)))))

(assert (=> b!226819 (= c!37587 (is-MissingZero!898 lt!114197))))

(assert (=> b!226819 e!147155))

(declare-fun b!226820 () Bool)

(declare-fun res!111676 () Bool)

(assert (=> b!226820 (= res!111676 (= (select (arr!5288 (_keys!6293 thiss!1504)) (index!5765 lt!114197)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!226820 (=> (not res!111676) (not e!147146))))

(declare-fun b!226821 () Bool)

(assert (=> b!226821 (= e!147159 (and e!147153 mapRes!10090))))

(declare-fun condMapEmpty!10090 () Bool)

(declare-fun mapDefault!10090 () ValueCell!2630)

