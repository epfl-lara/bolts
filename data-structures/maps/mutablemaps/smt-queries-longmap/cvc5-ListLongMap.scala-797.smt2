; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19146 () Bool)

(assert start!19146)

(declare-fun b!188215 () Bool)

(declare-fun b_free!4621 () Bool)

(declare-fun b_next!4621 () Bool)

(assert (=> b!188215 (= b_free!4621 (not b_next!4621))))

(declare-fun tp!16683 () Bool)

(declare-fun b_and!11269 () Bool)

(assert (=> b!188215 (= tp!16683 b_and!11269)))

(declare-fun mapIsEmpty!7573 () Bool)

(declare-fun mapRes!7573 () Bool)

(assert (=> mapIsEmpty!7573 mapRes!7573))

(declare-fun b!188214 () Bool)

(declare-fun res!88989 () Bool)

(declare-fun e!123878 () Bool)

(assert (=> b!188214 (=> (not res!88989) (not e!123878))))

(declare-datatypes ((V!5505 0))(
  ( (V!5506 (val!2241 Int)) )
))
(declare-datatypes ((ValueCell!1853 0))(
  ( (ValueCellFull!1853 (v!4154 V!5505)) (EmptyCell!1853) )
))
(declare-datatypes ((array!8006 0))(
  ( (array!8007 (arr!3776 (Array (_ BitVec 32) (_ BitVec 64))) (size!4096 (_ BitVec 32))) )
))
(declare-datatypes ((array!8008 0))(
  ( (array!8009 (arr!3777 (Array (_ BitVec 32) ValueCell!1853)) (size!4097 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2614 0))(
  ( (LongMapFixedSize!2615 (defaultEntry!3839 Int) (mask!9002 (_ BitVec 32)) (extraKeys!3576 (_ BitVec 32)) (zeroValue!3680 V!5505) (minValue!3680 V!5505) (_size!1356 (_ BitVec 32)) (_keys!5798 array!8006) (_values!3822 array!8008) (_vacant!1356 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2614)

(assert (=> b!188214 (= res!88989 (and (= (size!4097 (_values!3822 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9002 thiss!1248))) (= (size!4096 (_keys!5798 thiss!1248)) (size!4097 (_values!3822 thiss!1248))) (bvsge (mask!9002 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3576 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3576 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun tp_is_empty!4393 () Bool)

(declare-fun e!123872 () Bool)

(declare-fun e!123875 () Bool)

(declare-fun array_inv!2435 (array!8006) Bool)

(declare-fun array_inv!2436 (array!8008) Bool)

(assert (=> b!188215 (= e!123872 (and tp!16683 tp_is_empty!4393 (array_inv!2435 (_keys!5798 thiss!1248)) (array_inv!2436 (_values!3822 thiss!1248)) e!123875))))

(declare-fun b!188216 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun e!123874 () Bool)

(declare-datatypes ((SeekEntryResult!662 0))(
  ( (MissingZero!662 (index!4818 (_ BitVec 32))) (Found!662 (index!4819 (_ BitVec 32))) (Intermediate!662 (undefined!1474 Bool) (index!4820 (_ BitVec 32)) (x!20348 (_ BitVec 32))) (Undefined!662) (MissingVacant!662 (index!4821 (_ BitVec 32))) )
))
(declare-fun lt!93192 () SeekEntryResult!662)

(assert (=> b!188216 (= e!123874 (= (select (arr!3776 (_keys!5798 thiss!1248)) (index!4819 lt!93192)) key!828))))

(declare-fun b!188217 () Bool)

(declare-datatypes ((Unit!5670 0))(
  ( (Unit!5671) )
))
(declare-fun e!123871 () Unit!5670)

(declare-fun lt!93193 () Unit!5670)

(assert (=> b!188217 (= e!123871 lt!93193)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!155 (array!8006 array!8008 (_ BitVec 32) (_ BitVec 32) V!5505 V!5505 (_ BitVec 64) Int) Unit!5670)

(assert (=> b!188217 (= lt!93193 (lemmaInListMapThenSeekEntryOrOpenFindsIt!155 (_keys!5798 thiss!1248) (_values!3822 thiss!1248) (mask!9002 thiss!1248) (extraKeys!3576 thiss!1248) (zeroValue!3680 thiss!1248) (minValue!3680 thiss!1248) key!828 (defaultEntry!3839 thiss!1248)))))

(declare-fun res!88993 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!188217 (= res!88993 (inRange!0 (index!4819 lt!93192) (mask!9002 thiss!1248)))))

(assert (=> b!188217 (=> (not res!88993) (not e!123874))))

(assert (=> b!188217 e!123874))

(declare-fun b!188218 () Bool)

(declare-fun e!123877 () Bool)

(assert (=> b!188218 (= e!123877 tp_is_empty!4393)))

(declare-fun b!188219 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8006 (_ BitVec 32)) Bool)

(assert (=> b!188219 (= e!123878 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5798 thiss!1248) (mask!9002 thiss!1248))))))

(declare-fun res!88988 () Bool)

(declare-fun e!123876 () Bool)

(assert (=> start!19146 (=> (not res!88988) (not e!123876))))

(declare-fun valid!1068 (LongMapFixedSize!2614) Bool)

(assert (=> start!19146 (= res!88988 (valid!1068 thiss!1248))))

(assert (=> start!19146 e!123876))

(assert (=> start!19146 e!123872))

(assert (=> start!19146 true))

(declare-fun b!188220 () Bool)

(declare-fun e!123869 () Bool)

(assert (=> b!188220 (= e!123876 e!123869)))

(declare-fun res!88990 () Bool)

(assert (=> b!188220 (=> (not res!88990) (not e!123869))))

(assert (=> b!188220 (= res!88990 (and (not (is-Undefined!662 lt!93192)) (not (is-MissingVacant!662 lt!93192)) (not (is-MissingZero!662 lt!93192)) (is-Found!662 lt!93192)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8006 (_ BitVec 32)) SeekEntryResult!662)

(assert (=> b!188220 (= lt!93192 (seekEntryOrOpen!0 key!828 (_keys!5798 thiss!1248) (mask!9002 thiss!1248)))))

(declare-fun b!188221 () Bool)

(declare-fun Unit!5672 () Unit!5670)

(assert (=> b!188221 (= e!123871 Unit!5672)))

(declare-fun lt!93195 () Unit!5670)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!156 (array!8006 array!8008 (_ BitVec 32) (_ BitVec 32) V!5505 V!5505 (_ BitVec 64) Int) Unit!5670)

(assert (=> b!188221 (= lt!93195 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!156 (_keys!5798 thiss!1248) (_values!3822 thiss!1248) (mask!9002 thiss!1248) (extraKeys!3576 thiss!1248) (zeroValue!3680 thiss!1248) (minValue!3680 thiss!1248) key!828 (defaultEntry!3839 thiss!1248)))))

(assert (=> b!188221 false))

(declare-fun b!188222 () Bool)

(assert (=> b!188222 (= e!123869 e!123878)))

(declare-fun res!88991 () Bool)

(assert (=> b!188222 (=> (not res!88991) (not e!123878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!188222 (= res!88991 (validMask!0 (mask!9002 thiss!1248)))))

(declare-fun lt!93194 () Unit!5670)

(assert (=> b!188222 (= lt!93194 e!123871)))

(declare-fun c!33820 () Bool)

(declare-datatypes ((tuple2!3482 0))(
  ( (tuple2!3483 (_1!1751 (_ BitVec 64)) (_2!1751 V!5505)) )
))
(declare-datatypes ((List!2408 0))(
  ( (Nil!2405) (Cons!2404 (h!3041 tuple2!3482) (t!7312 List!2408)) )
))
(declare-datatypes ((ListLongMap!2413 0))(
  ( (ListLongMap!2414 (toList!1222 List!2408)) )
))
(declare-fun contains!1320 (ListLongMap!2413 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!865 (array!8006 array!8008 (_ BitVec 32) (_ BitVec 32) V!5505 V!5505 (_ BitVec 32) Int) ListLongMap!2413)

(assert (=> b!188222 (= c!33820 (contains!1320 (getCurrentListMap!865 (_keys!5798 thiss!1248) (_values!3822 thiss!1248) (mask!9002 thiss!1248) (extraKeys!3576 thiss!1248) (zeroValue!3680 thiss!1248) (minValue!3680 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3839 thiss!1248)) key!828))))

(declare-fun b!188223 () Bool)

(declare-fun e!123873 () Bool)

(assert (=> b!188223 (= e!123873 tp_is_empty!4393)))

(declare-fun b!188224 () Bool)

(assert (=> b!188224 (= e!123875 (and e!123877 mapRes!7573))))

(declare-fun condMapEmpty!7573 () Bool)

(declare-fun mapDefault!7573 () ValueCell!1853)

