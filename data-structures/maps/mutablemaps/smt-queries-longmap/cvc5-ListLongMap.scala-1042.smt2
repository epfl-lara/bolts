; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21946 () Bool)

(assert start!21946)

(declare-fun b!223484 () Bool)

(declare-fun b_free!6001 () Bool)

(declare-fun b_next!6001 () Bool)

(assert (=> b!223484 (= b_free!6001 (not b_next!6001))))

(declare-fun tp!21144 () Bool)

(declare-fun b_and!12917 () Bool)

(assert (=> b!223484 (= tp!21144 b_and!12917)))

(declare-fun b!223465 () Bool)

(declare-fun res!109864 () Bool)

(declare-fun e!145180 () Bool)

(assert (=> b!223465 (=> (not res!109864) (not e!145180))))

(declare-datatypes ((V!7465 0))(
  ( (V!7466 (val!2976 Int)) )
))
(declare-datatypes ((ValueCell!2588 0))(
  ( (ValueCellFull!2588 (v!4992 V!7465)) (EmptyCell!2588) )
))
(declare-datatypes ((array!10968 0))(
  ( (array!10969 (arr!5203 (Array (_ BitVec 32) ValueCell!2588)) (size!5536 (_ BitVec 32))) )
))
(declare-datatypes ((array!10970 0))(
  ( (array!10971 (arr!5204 (Array (_ BitVec 32) (_ BitVec 64))) (size!5537 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3076 0))(
  ( (LongMapFixedSize!3077 (defaultEntry!4197 Int) (mask!10025 (_ BitVec 32)) (extraKeys!3934 (_ BitVec 32)) (zeroValue!4038 V!7465) (minValue!4038 V!7465) (_size!1587 (_ BitVec 32)) (_keys!6251 array!10970) (_values!4180 array!10968) (_vacant!1587 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3076)

(declare-datatypes ((SeekEntryResult!859 0))(
  ( (MissingZero!859 (index!5606 (_ BitVec 32))) (Found!859 (index!5607 (_ BitVec 32))) (Intermediate!859 (undefined!1671 Bool) (index!5608 (_ BitVec 32)) (x!23111 (_ BitVec 32))) (Undefined!859) (MissingVacant!859 (index!5609 (_ BitVec 32))) )
))
(declare-fun lt!112947 () SeekEntryResult!859)

(assert (=> b!223465 (= res!109864 (= (select (arr!5204 (_keys!6251 thiss!1504)) (index!5606 lt!112947)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!223466 () Bool)

(declare-fun e!145174 () Bool)

(declare-fun e!145178 () Bool)

(assert (=> b!223466 (= e!145174 e!145178)))

(declare-fun res!109850 () Bool)

(assert (=> b!223466 (=> (not res!109850) (not e!145178))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!223466 (= res!109850 (or (= lt!112947 (MissingZero!859 index!297)) (= lt!112947 (MissingVacant!859 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10970 (_ BitVec 32)) SeekEntryResult!859)

(assert (=> b!223466 (= lt!112947 (seekEntryOrOpen!0 key!932 (_keys!6251 thiss!1504) (mask!10025 thiss!1504)))))

(declare-fun b!223467 () Bool)

(declare-fun e!145165 () Bool)

(declare-fun tp_is_empty!5863 () Bool)

(assert (=> b!223467 (= e!145165 tp_is_empty!5863)))

(declare-fun b!223468 () Bool)

(declare-fun res!109855 () Bool)

(assert (=> b!223468 (=> (not res!109855) (not e!145174))))

(assert (=> b!223468 (= res!109855 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!223469 () Bool)

(declare-datatypes ((Unit!6714 0))(
  ( (Unit!6715) )
))
(declare-fun e!145172 () Unit!6714)

(declare-fun Unit!6716 () Unit!6714)

(assert (=> b!223469 (= e!145172 Unit!6716)))

(declare-fun lt!112946 () Unit!6714)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!234 (array!10970 array!10968 (_ BitVec 32) (_ BitVec 32) V!7465 V!7465 (_ BitVec 64) Int) Unit!6714)

(assert (=> b!223469 (= lt!112946 (lemmaInListMapThenSeekEntryOrOpenFindsIt!234 (_keys!6251 thiss!1504) (_values!4180 thiss!1504) (mask!10025 thiss!1504) (extraKeys!3934 thiss!1504) (zeroValue!4038 thiss!1504) (minValue!4038 thiss!1504) key!932 (defaultEntry!4197 thiss!1504)))))

(assert (=> b!223469 false))

(declare-fun b!223470 () Bool)

(declare-fun res!109863 () Bool)

(declare-fun e!145164 () Bool)

(assert (=> b!223470 (=> (not res!109863) (not e!145164))))

(declare-datatypes ((List!3342 0))(
  ( (Nil!3339) (Cons!3338 (h!3986 (_ BitVec 64)) (t!8309 List!3342)) )
))
(declare-fun arrayNoDuplicates!0 (array!10970 (_ BitVec 32) List!3342) Bool)

(assert (=> b!223470 (= res!109863 (arrayNoDuplicates!0 (_keys!6251 thiss!1504) #b00000000000000000000000000000000 Nil!3339))))

(declare-fun b!223471 () Bool)

(declare-fun lt!112944 () Unit!6714)

(assert (=> b!223471 (= e!145172 lt!112944)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!242 (array!10970 array!10968 (_ BitVec 32) (_ BitVec 32) V!7465 V!7465 (_ BitVec 64) Int) Unit!6714)

(assert (=> b!223471 (= lt!112944 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!242 (_keys!6251 thiss!1504) (_values!4180 thiss!1504) (mask!10025 thiss!1504) (extraKeys!3934 thiss!1504) (zeroValue!4038 thiss!1504) (minValue!4038 thiss!1504) key!932 (defaultEntry!4197 thiss!1504)))))

(declare-fun c!37083 () Bool)

(assert (=> b!223471 (= c!37083 (is-MissingZero!859 lt!112947))))

(declare-fun e!145179 () Bool)

(assert (=> b!223471 e!145179))

(declare-fun b!223472 () Bool)

(declare-fun res!109847 () Bool)

(assert (=> b!223472 (=> (not res!109847) (not e!145164))))

(declare-fun noDuplicate!78 (List!3342) Bool)

(assert (=> b!223472 (= res!109847 (noDuplicate!78 Nil!3339))))

(declare-fun b!223473 () Bool)

(declare-fun e!145173 () Unit!6714)

(declare-fun Unit!6717 () Unit!6714)

(assert (=> b!223473 (= e!145173 Unit!6717)))

(declare-fun lt!112942 () Unit!6714)

(declare-fun lemmaArrayContainsKeyThenInListMap!72 (array!10970 array!10968 (_ BitVec 32) (_ BitVec 32) V!7465 V!7465 (_ BitVec 64) (_ BitVec 32) Int) Unit!6714)

(assert (=> b!223473 (= lt!112942 (lemmaArrayContainsKeyThenInListMap!72 (_keys!6251 thiss!1504) (_values!4180 thiss!1504) (mask!10025 thiss!1504) (extraKeys!3934 thiss!1504) (zeroValue!4038 thiss!1504) (minValue!4038 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4197 thiss!1504)))))

(assert (=> b!223473 false))

(declare-fun b!223474 () Bool)

(declare-fun e!145166 () Bool)

(assert (=> b!223474 (= e!145166 tp_is_empty!5863)))

(declare-fun b!223475 () Bool)

(declare-fun e!145171 () Bool)

(declare-fun contains!1541 (List!3342 (_ BitVec 64)) Bool)

(assert (=> b!223475 (= e!145171 (contains!1541 Nil!3339 key!932))))

(declare-fun b!223476 () Bool)

(declare-fun e!145177 () Bool)

(declare-fun call!20836 () Bool)

(assert (=> b!223476 (= e!145177 (not call!20836))))

(declare-fun b!223477 () Bool)

(declare-fun res!109856 () Bool)

(assert (=> b!223477 (=> (not res!109856) (not e!145164))))

(declare-fun e!145176 () Bool)

(assert (=> b!223477 (= res!109856 e!145176)))

(declare-fun res!109857 () Bool)

(assert (=> b!223477 (=> res!109857 e!145176)))

(assert (=> b!223477 (= res!109857 e!145171)))

(declare-fun res!109848 () Bool)

(assert (=> b!223477 (=> (not res!109848) (not e!145171))))

(assert (=> b!223477 (= res!109848 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!223478 () Bool)

(declare-fun res!109862 () Bool)

(assert (=> b!223478 (=> (not res!109862) (not e!145164))))

(assert (=> b!223478 (= res!109862 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5537 (_keys!6251 thiss!1504)))))))

(declare-fun b!223479 () Bool)

(declare-fun res!109859 () Bool)

(assert (=> b!223479 (=> (not res!109859) (not e!145164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!223479 (= res!109859 (validKeyInArray!0 key!932))))

(declare-fun mapIsEmpty!9964 () Bool)

(declare-fun mapRes!9964 () Bool)

(assert (=> mapIsEmpty!9964 mapRes!9964))

(declare-fun b!223480 () Bool)

(declare-fun res!109845 () Bool)

(assert (=> b!223480 (=> (not res!109845) (not e!145164))))

(assert (=> b!223480 (= res!109845 (not (contains!1541 Nil!3339 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!223481 () Bool)

(declare-fun e!145168 () Bool)

(assert (=> b!223481 (= e!145168 e!145177)))

(declare-fun res!109854 () Bool)

(declare-fun call!20835 () Bool)

(assert (=> b!223481 (= res!109854 call!20835)))

(assert (=> b!223481 (=> (not res!109854) (not e!145177))))

(declare-fun res!109861 () Bool)

(assert (=> start!21946 (=> (not res!109861) (not e!145174))))

(declare-fun valid!1231 (LongMapFixedSize!3076) Bool)

(assert (=> start!21946 (= res!109861 (valid!1231 thiss!1504))))

(assert (=> start!21946 e!145174))

(declare-fun e!145175 () Bool)

(assert (=> start!21946 e!145175))

(assert (=> start!21946 true))

(declare-fun b!223482 () Bool)

(declare-fun e!145170 () Bool)

(assert (=> b!223482 (= e!145170 (and e!145166 mapRes!9964))))

(declare-fun condMapEmpty!9964 () Bool)

(declare-fun mapDefault!9964 () ValueCell!2588)

