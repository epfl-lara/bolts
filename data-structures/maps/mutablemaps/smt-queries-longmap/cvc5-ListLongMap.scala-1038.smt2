; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21922 () Bool)

(assert start!21922)

(declare-fun b!222383 () Bool)

(declare-fun b_free!5977 () Bool)

(declare-fun b_next!5977 () Bool)

(assert (=> b!222383 (= b_free!5977 (not b_next!5977))))

(declare-fun tp!21072 () Bool)

(declare-fun b_and!12893 () Bool)

(assert (=> b!222383 (= tp!21072 b_and!12893)))

(declare-fun b!222368 () Bool)

(declare-datatypes ((Unit!6662 0))(
  ( (Unit!6663) )
))
(declare-fun e!144516 () Unit!6662)

(declare-fun Unit!6664 () Unit!6662)

(assert (=> b!222368 (= e!144516 Unit!6664)))

(declare-fun lt!112674 () Unit!6662)

(declare-datatypes ((V!7433 0))(
  ( (V!7434 (val!2964 Int)) )
))
(declare-datatypes ((ValueCell!2576 0))(
  ( (ValueCellFull!2576 (v!4980 V!7433)) (EmptyCell!2576) )
))
(declare-datatypes ((array!10920 0))(
  ( (array!10921 (arr!5179 (Array (_ BitVec 32) ValueCell!2576)) (size!5512 (_ BitVec 32))) )
))
(declare-datatypes ((array!10922 0))(
  ( (array!10923 (arr!5180 (Array (_ BitVec 32) (_ BitVec 64))) (size!5513 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3052 0))(
  ( (LongMapFixedSize!3053 (defaultEntry!4185 Int) (mask!10005 (_ BitVec 32)) (extraKeys!3922 (_ BitVec 32)) (zeroValue!4026 V!7433) (minValue!4026 V!7433) (_size!1575 (_ BitVec 32)) (_keys!6239 array!10922) (_values!4168 array!10920) (_vacant!1575 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3052)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!61 (array!10922 array!10920 (_ BitVec 32) (_ BitVec 32) V!7433 V!7433 (_ BitVec 64) (_ BitVec 32) Int) Unit!6662)

(assert (=> b!222368 (= lt!112674 (lemmaArrayContainsKeyThenInListMap!61 (_keys!6239 thiss!1504) (_values!4168 thiss!1504) (mask!10005 thiss!1504) (extraKeys!3922 thiss!1504) (zeroValue!4026 thiss!1504) (minValue!4026 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4185 thiss!1504)))))

(assert (=> b!222368 false))

(declare-fun b!222369 () Bool)

(declare-fun Unit!6665 () Unit!6662)

(assert (=> b!222369 (= e!144516 Unit!6665)))

(declare-fun mapNonEmpty!9928 () Bool)

(declare-fun mapRes!9928 () Bool)

(declare-fun tp!21073 () Bool)

(declare-fun e!144532 () Bool)

(assert (=> mapNonEmpty!9928 (= mapRes!9928 (and tp!21073 e!144532))))

(declare-fun mapValue!9928 () ValueCell!2576)

(declare-fun mapKey!9928 () (_ BitVec 32))

(declare-fun mapRest!9928 () (Array (_ BitVec 32) ValueCell!2576))

(assert (=> mapNonEmpty!9928 (= (arr!5179 (_values!4168 thiss!1504)) (store mapRest!9928 mapKey!9928 mapValue!9928))))

(declare-fun b!222370 () Bool)

(declare-fun e!144522 () Bool)

(assert (=> b!222370 (= e!144522 false)))

(declare-fun lt!112668 () Bool)

(declare-datatypes ((List!3324 0))(
  ( (Nil!3321) (Cons!3320 (h!3968 (_ BitVec 64)) (t!8291 List!3324)) )
))
(declare-fun arrayNoDuplicates!0 (array!10922 (_ BitVec 32) List!3324) Bool)

(assert (=> b!222370 (= lt!112668 (arrayNoDuplicates!0 (_keys!6239 thiss!1504) #b00000000000000000000000000000000 Nil!3321))))

(declare-fun b!222371 () Bool)

(declare-fun e!144528 () Bool)

(declare-fun tp_is_empty!5839 () Bool)

(assert (=> b!222371 (= e!144528 tp_is_empty!5839)))

(declare-fun mapIsEmpty!9928 () Bool)

(assert (=> mapIsEmpty!9928 mapRes!9928))

(declare-fun b!222372 () Bool)

(declare-fun res!109188 () Bool)

(assert (=> b!222372 (=> (not res!109188) (not e!144522))))

(declare-fun contains!1523 (List!3324 (_ BitVec 64)) Bool)

(assert (=> b!222372 (= res!109188 (not (contains!1523 Nil!3321 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222373 () Bool)

(declare-fun c!36938 () Bool)

(declare-datatypes ((SeekEntryResult!847 0))(
  ( (MissingZero!847 (index!5558 (_ BitVec 32))) (Found!847 (index!5559 (_ BitVec 32))) (Intermediate!847 (undefined!1659 Bool) (index!5560 (_ BitVec 32)) (x!23067 (_ BitVec 32))) (Undefined!847) (MissingVacant!847 (index!5561 (_ BitVec 32))) )
))
(declare-fun lt!112673 () SeekEntryResult!847)

(assert (=> b!222373 (= c!36938 (is-MissingVacant!847 lt!112673))))

(declare-fun e!144515 () Bool)

(declare-fun e!144527 () Bool)

(assert (=> b!222373 (= e!144515 e!144527)))

(declare-fun b!222374 () Bool)

(declare-fun e!144520 () Bool)

(assert (=> b!222374 (= e!144520 (contains!1523 Nil!3321 key!932))))

(declare-fun b!222375 () Bool)

(declare-fun e!144519 () Bool)

(declare-fun call!20764 () Bool)

(assert (=> b!222375 (= e!144519 (not call!20764))))

(declare-fun b!222376 () Bool)

(assert (=> b!222376 (= e!144532 tp_is_empty!5839)))

(declare-fun b!222377 () Bool)

(declare-fun e!144524 () Bool)

(declare-fun e!144517 () Bool)

(assert (=> b!222377 (= e!144524 e!144517)))

(declare-fun res!109187 () Bool)

(assert (=> b!222377 (=> (not res!109187) (not e!144517))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222377 (= res!109187 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222378 () Bool)

(declare-fun res!109181 () Bool)

(assert (=> b!222378 (= res!109181 (= (select (arr!5180 (_keys!6239 thiss!1504)) (index!5561 lt!112673)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!222378 (=> (not res!109181) (not e!144519))))

(declare-fun res!109186 () Bool)

(declare-fun e!144521 () Bool)

(assert (=> start!21922 (=> (not res!109186) (not e!144521))))

(declare-fun valid!1223 (LongMapFixedSize!3052) Bool)

(assert (=> start!21922 (= res!109186 (valid!1223 thiss!1504))))

(assert (=> start!21922 e!144521))

(declare-fun e!144518 () Bool)

(assert (=> start!21922 e!144518))

(assert (=> start!21922 true))

(declare-fun b!222379 () Bool)

(declare-fun res!109184 () Bool)

(assert (=> b!222379 (=> (not res!109184) (not e!144521))))

(assert (=> b!222379 (= res!109184 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!222380 () Bool)

(assert (=> b!222380 (= e!144527 (is-Undefined!847 lt!112673))))

(declare-fun b!222381 () Bool)

(declare-fun res!109189 () Bool)

(declare-fun e!144523 () Bool)

(assert (=> b!222381 (=> (not res!109189) (not e!144523))))

(declare-fun call!20763 () Bool)

(assert (=> b!222381 (= res!109189 call!20763)))

(assert (=> b!222381 (= e!144515 e!144523)))

(declare-fun b!222382 () Bool)

(declare-fun res!109182 () Bool)

(assert (=> b!222382 (=> (not res!109182) (not e!144523))))

(assert (=> b!222382 (= res!109182 (= (select (arr!5180 (_keys!6239 thiss!1504)) (index!5558 lt!112673)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!144526 () Bool)

(declare-fun array_inv!3419 (array!10922) Bool)

(declare-fun array_inv!3420 (array!10920) Bool)

(assert (=> b!222383 (= e!144518 (and tp!21072 tp_is_empty!5839 (array_inv!3419 (_keys!6239 thiss!1504)) (array_inv!3420 (_values!4168 thiss!1504)) e!144526))))

(declare-fun b!222384 () Bool)

(declare-fun e!144531 () Unit!6662)

(declare-fun Unit!6666 () Unit!6662)

(assert (=> b!222384 (= e!144531 Unit!6666)))

(declare-fun lt!112670 () Unit!6662)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!226 (array!10922 array!10920 (_ BitVec 32) (_ BitVec 32) V!7433 V!7433 (_ BitVec 64) Int) Unit!6662)

(assert (=> b!222384 (= lt!112670 (lemmaInListMapThenSeekEntryOrOpenFindsIt!226 (_keys!6239 thiss!1504) (_values!4168 thiss!1504) (mask!10005 thiss!1504) (extraKeys!3922 thiss!1504) (zeroValue!4026 thiss!1504) (minValue!4026 thiss!1504) key!932 (defaultEntry!4185 thiss!1504)))))

(assert (=> b!222384 false))

(declare-fun b!222385 () Bool)

(declare-fun res!109183 () Bool)

(assert (=> b!222385 (=> (not res!109183) (not e!144522))))

(assert (=> b!222385 (= res!109183 e!144524)))

(declare-fun res!109193 () Bool)

(assert (=> b!222385 (=> res!109193 e!144524)))

(assert (=> b!222385 (= res!109193 e!144520)))

(declare-fun res!109191 () Bool)

(assert (=> b!222385 (=> (not res!109191) (not e!144520))))

(assert (=> b!222385 (= res!109191 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!222386 () Bool)

(declare-fun lt!112672 () Unit!6662)

(assert (=> b!222386 (= e!144531 lt!112672)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!233 (array!10922 array!10920 (_ BitVec 32) (_ BitVec 32) V!7433 V!7433 (_ BitVec 64) Int) Unit!6662)

(assert (=> b!222386 (= lt!112672 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!233 (_keys!6239 thiss!1504) (_values!4168 thiss!1504) (mask!10005 thiss!1504) (extraKeys!3922 thiss!1504) (zeroValue!4026 thiss!1504) (minValue!4026 thiss!1504) key!932 (defaultEntry!4185 thiss!1504)))))

(declare-fun c!36940 () Bool)

(assert (=> b!222386 (= c!36940 (is-MissingZero!847 lt!112673))))

(assert (=> b!222386 e!144515))

(declare-fun b!222387 () Bool)

(declare-fun e!144529 () Bool)

(assert (=> b!222387 (= e!144529 e!144522)))

(declare-fun res!109180 () Bool)

(assert (=> b!222387 (=> (not res!109180) (not e!144522))))

(assert (=> b!222387 (= res!109180 (and (bvslt (size!5513 (_keys!6239 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5513 (_keys!6239 thiss!1504)))))))

(declare-fun lt!112669 () Unit!6662)

(assert (=> b!222387 (= lt!112669 e!144516)))

(declare-fun c!36939 () Bool)

(declare-fun arrayContainsKey!0 (array!10922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!222387 (= c!36939 (arrayContainsKey!0 (_keys!6239 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222388 () Bool)

(assert (=> b!222388 (= e!144526 (and e!144528 mapRes!9928))))

(declare-fun condMapEmpty!9928 () Bool)

(declare-fun mapDefault!9928 () ValueCell!2576)

