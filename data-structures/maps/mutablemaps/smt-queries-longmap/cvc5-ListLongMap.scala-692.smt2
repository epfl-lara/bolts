; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16668 () Bool)

(assert start!16668)

(declare-fun b!166510 () Bool)

(declare-fun b_free!3961 () Bool)

(declare-fun b_next!3961 () Bool)

(assert (=> b!166510 (= b_free!3961 (not b_next!3961))))

(declare-fun tp!14484 () Bool)

(declare-fun b_and!10393 () Bool)

(assert (=> b!166510 (= tp!14484 b_and!10393)))

(declare-fun b!166507 () Bool)

(declare-datatypes ((Unit!5066 0))(
  ( (Unit!5067) )
))
(declare-fun e!109267 () Unit!5066)

(declare-fun lt!83375 () Unit!5066)

(assert (=> b!166507 (= e!109267 lt!83375)))

(declare-datatypes ((V!4665 0))(
  ( (V!4666 (val!1926 Int)) )
))
(declare-datatypes ((ValueCell!1538 0))(
  ( (ValueCellFull!1538 (v!3787 V!4665)) (EmptyCell!1538) )
))
(declare-datatypes ((array!6622 0))(
  ( (array!6623 (arr!3146 (Array (_ BitVec 32) (_ BitVec 64))) (size!3434 (_ BitVec 32))) )
))
(declare-datatypes ((array!6624 0))(
  ( (array!6625 (arr!3147 (Array (_ BitVec 32) ValueCell!1538)) (size!3435 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1984 0))(
  ( (LongMapFixedSize!1985 (defaultEntry!3434 Int) (mask!8167 (_ BitVec 32)) (extraKeys!3175 (_ BitVec 32)) (zeroValue!3277 V!4665) (minValue!3277 V!4665) (_size!1041 (_ BitVec 32)) (_keys!5259 array!6622) (_values!3417 array!6624) (_vacant!1041 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1984)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!90 (array!6622 array!6624 (_ BitVec 32) (_ BitVec 32) V!4665 V!4665 (_ BitVec 64) Int) Unit!5066)

(assert (=> b!166507 (= lt!83375 (lemmaInListMapThenSeekEntryOrOpenFindsIt!90 (_keys!5259 thiss!1248) (_values!3417 thiss!1248) (mask!8167 thiss!1248) (extraKeys!3175 thiss!1248) (zeroValue!3277 thiss!1248) (minValue!3277 thiss!1248) key!828 (defaultEntry!3434 thiss!1248)))))

(declare-fun res!79156 () Bool)

(declare-datatypes ((SeekEntryResult!469 0))(
  ( (MissingZero!469 (index!4044 (_ BitVec 32))) (Found!469 (index!4045 (_ BitVec 32))) (Intermediate!469 (undefined!1281 Bool) (index!4046 (_ BitVec 32)) (x!18457 (_ BitVec 32))) (Undefined!469) (MissingVacant!469 (index!4047 (_ BitVec 32))) )
))
(declare-fun lt!83373 () SeekEntryResult!469)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166507 (= res!79156 (inRange!0 (index!4045 lt!83373) (mask!8167 thiss!1248)))))

(declare-fun e!109264 () Bool)

(assert (=> b!166507 (=> (not res!79156) (not e!109264))))

(assert (=> b!166507 e!109264))

(declare-fun b!166508 () Bool)

(declare-fun res!79161 () Bool)

(declare-fun e!109266 () Bool)

(assert (=> b!166508 (=> (not res!79161) (not e!109266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6622 (_ BitVec 32)) Bool)

(assert (=> b!166508 (= res!79161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5259 thiss!1248) (mask!8167 thiss!1248)))))

(declare-fun b!166509 () Bool)

(assert (=> b!166509 (= e!109266 false)))

(declare-fun lt!83371 () Bool)

(declare-datatypes ((List!2117 0))(
  ( (Nil!2114) (Cons!2113 (h!2730 (_ BitVec 64)) (t!6927 List!2117)) )
))
(declare-fun arrayNoDuplicates!0 (array!6622 (_ BitVec 32) List!2117) Bool)

(assert (=> b!166509 (= lt!83371 (arrayNoDuplicates!0 (_keys!5259 thiss!1248) #b00000000000000000000000000000000 Nil!2114))))

(declare-fun mapIsEmpty!6363 () Bool)

(declare-fun mapRes!6363 () Bool)

(assert (=> mapIsEmpty!6363 mapRes!6363))

(declare-fun e!109270 () Bool)

(declare-fun tp_is_empty!3763 () Bool)

(declare-fun e!109261 () Bool)

(declare-fun array_inv!2011 (array!6622) Bool)

(declare-fun array_inv!2012 (array!6624) Bool)

(assert (=> b!166510 (= e!109270 (and tp!14484 tp_is_empty!3763 (array_inv!2011 (_keys!5259 thiss!1248)) (array_inv!2012 (_values!3417 thiss!1248)) e!109261))))

(declare-fun b!166511 () Bool)

(declare-fun Unit!5068 () Unit!5066)

(assert (=> b!166511 (= e!109267 Unit!5068)))

(declare-fun lt!83374 () Unit!5066)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!88 (array!6622 array!6624 (_ BitVec 32) (_ BitVec 32) V!4665 V!4665 (_ BitVec 64) Int) Unit!5066)

(assert (=> b!166511 (= lt!83374 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!88 (_keys!5259 thiss!1248) (_values!3417 thiss!1248) (mask!8167 thiss!1248) (extraKeys!3175 thiss!1248) (zeroValue!3277 thiss!1248) (minValue!3277 thiss!1248) key!828 (defaultEntry!3434 thiss!1248)))))

(assert (=> b!166511 false))

(declare-fun b!166512 () Bool)

(declare-fun e!109269 () Bool)

(assert (=> b!166512 (= e!109269 tp_is_empty!3763)))

(declare-fun res!79159 () Bool)

(declare-fun e!109265 () Bool)

(assert (=> start!16668 (=> (not res!79159) (not e!109265))))

(declare-fun valid!863 (LongMapFixedSize!1984) Bool)

(assert (=> start!16668 (= res!79159 (valid!863 thiss!1248))))

(assert (=> start!16668 e!109265))

(assert (=> start!16668 e!109270))

(assert (=> start!16668 true))

(declare-fun b!166513 () Bool)

(assert (=> b!166513 (= e!109264 (= (select (arr!3146 (_keys!5259 thiss!1248)) (index!4045 lt!83373)) key!828))))

(declare-fun b!166514 () Bool)

(declare-fun e!109263 () Bool)

(assert (=> b!166514 (= e!109261 (and e!109263 mapRes!6363))))

(declare-fun condMapEmpty!6363 () Bool)

(declare-fun mapDefault!6363 () ValueCell!1538)

