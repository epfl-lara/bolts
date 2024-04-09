; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23224 () Bool)

(assert start!23224)

(declare-fun b!243485 () Bool)

(declare-fun b_free!6523 () Bool)

(declare-fun b_next!6523 () Bool)

(assert (=> b!243485 (= b_free!6523 (not b_next!6523))))

(declare-fun tp!22792 () Bool)

(declare-fun b_and!13523 () Bool)

(assert (=> b!243485 (= tp!22792 b_and!13523)))

(declare-fun b!243467 () Bool)

(declare-fun res!119357 () Bool)

(declare-fun e!158022 () Bool)

(assert (=> b!243467 (=> (not res!119357) (not e!158022))))

(declare-datatypes ((List!3666 0))(
  ( (Nil!3663) (Cons!3662 (h!4319 (_ BitVec 64)) (t!8681 List!3666)) )
))
(declare-fun noDuplicate!96 (List!3666) Bool)

(assert (=> b!243467 (= res!119357 (noDuplicate!96 Nil!3663))))

(declare-fun mapNonEmpty!10828 () Bool)

(declare-fun mapRes!10828 () Bool)

(declare-fun tp!22791 () Bool)

(declare-fun e!158017 () Bool)

(assert (=> mapNonEmpty!10828 (= mapRes!10828 (and tp!22791 e!158017))))

(declare-datatypes ((V!8161 0))(
  ( (V!8162 (val!3237 Int)) )
))
(declare-datatypes ((ValueCell!2849 0))(
  ( (ValueCellFull!2849 (v!5280 V!8161)) (EmptyCell!2849) )
))
(declare-fun mapValue!10828 () ValueCell!2849)

(declare-fun mapRest!10828 () (Array (_ BitVec 32) ValueCell!2849))

(declare-datatypes ((array!12060 0))(
  ( (array!12061 (arr!5725 (Array (_ BitVec 32) ValueCell!2849)) (size!6067 (_ BitVec 32))) )
))
(declare-datatypes ((array!12062 0))(
  ( (array!12063 (arr!5726 (Array (_ BitVec 32) (_ BitVec 64))) (size!6068 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3598 0))(
  ( (LongMapFixedSize!3599 (defaultEntry!4512 Int) (mask!10605 (_ BitVec 32)) (extraKeys!4249 (_ BitVec 32)) (zeroValue!4353 V!8161) (minValue!4353 V!8161) (_size!1848 (_ BitVec 32)) (_keys!6623 array!12062) (_values!4495 array!12060) (_vacant!1848 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3598)

(declare-fun mapKey!10828 () (_ BitVec 32))

(assert (=> mapNonEmpty!10828 (= (arr!5725 (_values!4495 thiss!1504)) (store mapRest!10828 mapKey!10828 mapValue!10828))))

(declare-fun b!243468 () Bool)

(declare-fun res!119353 () Bool)

(declare-datatypes ((SeekEntryResult!1082 0))(
  ( (MissingZero!1082 (index!6498 (_ BitVec 32))) (Found!1082 (index!6499 (_ BitVec 32))) (Intermediate!1082 (undefined!1894 Bool) (index!6500 (_ BitVec 32)) (x!24342 (_ BitVec 32))) (Undefined!1082) (MissingVacant!1082 (index!6501 (_ BitVec 32))) )
))
(declare-fun lt!122237 () SeekEntryResult!1082)

(assert (=> b!243468 (= res!119353 (= (select (arr!5726 (_keys!6623 thiss!1504)) (index!6501 lt!122237)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!158016 () Bool)

(assert (=> b!243468 (=> (not res!119353) (not e!158016))))

(declare-fun res!119365 () Bool)

(declare-fun e!158013 () Bool)

(assert (=> start!23224 (=> (not res!119365) (not e!158013))))

(declare-fun valid!1402 (LongMapFixedSize!3598) Bool)

(assert (=> start!23224 (= res!119365 (valid!1402 thiss!1504))))

(assert (=> start!23224 e!158013))

(declare-fun e!158015 () Bool)

(assert (=> start!23224 e!158015))

(assert (=> start!23224 true))

(declare-fun bm!22707 () Bool)

(declare-fun call!22711 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22707 (= call!22711 (arrayContainsKey!0 (_keys!6623 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243469 () Bool)

(assert (=> b!243469 (= e!158022 false)))

(declare-fun lt!122238 () Bool)

(declare-fun arrayNoDuplicates!0 (array!12062 (_ BitVec 32) List!3666) Bool)

(assert (=> b!243469 (= lt!122238 (arrayNoDuplicates!0 (_keys!6623 thiss!1504) #b00000000000000000000000000000000 Nil!3663))))

(declare-fun b!243470 () Bool)

(assert (=> b!243470 (= e!158016 (not call!22711))))

(declare-fun b!243471 () Bool)

(declare-fun e!158012 () Bool)

(declare-fun e!158009 () Bool)

(assert (=> b!243471 (= e!158012 (and e!158009 mapRes!10828))))

(declare-fun condMapEmpty!10828 () Bool)

(declare-fun mapDefault!10828 () ValueCell!2849)

