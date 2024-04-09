; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16182 () Bool)

(assert start!16182)

(declare-fun b!161165 () Bool)

(declare-fun b_free!3631 () Bool)

(declare-fun b_next!3631 () Bool)

(assert (=> b!161165 (= b_free!3631 (not b_next!3631))))

(declare-fun tp!13462 () Bool)

(declare-fun b_and!10063 () Bool)

(assert (=> b!161165 (= tp!13462 b_and!10063)))

(declare-fun b!161163 () Bool)

(declare-fun e!105310 () Bool)

(declare-fun tp_is_empty!3433 () Bool)

(assert (=> b!161163 (= e!105310 tp_is_empty!3433)))

(declare-fun e!105312 () Bool)

(declare-fun e!105314 () Bool)

(declare-datatypes ((V!4225 0))(
  ( (V!4226 (val!1761 Int)) )
))
(declare-datatypes ((ValueCell!1373 0))(
  ( (ValueCellFull!1373 (v!3622 V!4225)) (EmptyCell!1373) )
))
(declare-datatypes ((array!5944 0))(
  ( (array!5945 (arr!2816 (Array (_ BitVec 32) (_ BitVec 64))) (size!3100 (_ BitVec 32))) )
))
(declare-datatypes ((array!5946 0))(
  ( (array!5947 (arr!2817 (Array (_ BitVec 32) ValueCell!1373)) (size!3101 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1654 0))(
  ( (LongMapFixedSize!1655 (defaultEntry!3269 Int) (mask!7855 (_ BitVec 32)) (extraKeys!3010 (_ BitVec 32)) (zeroValue!3112 V!4225) (minValue!3112 V!4225) (_size!876 (_ BitVec 32)) (_keys!5070 array!5944) (_values!3252 array!5946) (_vacant!876 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1654)

(declare-fun array_inv!1783 (array!5944) Bool)

(declare-fun array_inv!1784 (array!5946) Bool)

(assert (=> b!161165 (= e!105314 (and tp!13462 tp_is_empty!3433 (array_inv!1783 (_keys!5070 thiss!1248)) (array_inv!1784 (_values!3252 thiss!1248)) e!105312))))

(declare-fun b!161166 () Bool)

(declare-datatypes ((Unit!4994 0))(
  ( (Unit!4995) )
))
(declare-fun e!105309 () Unit!4994)

(declare-fun Unit!4996 () Unit!4994)

(assert (=> b!161166 (= e!105309 Unit!4996)))

(declare-fun lt!82183 () Unit!4994)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!72 (array!5944 array!5946 (_ BitVec 32) (_ BitVec 32) V!4225 V!4225 (_ BitVec 64) Int) Unit!4994)

(assert (=> b!161166 (= lt!82183 (lemmaInListMapThenSeekEntryOrOpenFindsIt!72 (_keys!5070 thiss!1248) (_values!3252 thiss!1248) (mask!7855 thiss!1248) (extraKeys!3010 thiss!1248) (zeroValue!3112 thiss!1248) (minValue!3112 thiss!1248) key!828 (defaultEntry!3269 thiss!1248)))))

(assert (=> b!161166 false))

(declare-fun b!161167 () Bool)

(declare-fun res!76443 () Bool)

(declare-fun e!105311 () Bool)

(assert (=> b!161167 (=> (not res!76443) (not e!105311))))

(assert (=> b!161167 (= res!76443 (not (= key!828 (bvneg key!828))))))

(declare-fun res!76444 () Bool)

(assert (=> start!16182 (=> (not res!76444) (not e!105311))))

(declare-fun valid!751 (LongMapFixedSize!1654) Bool)

(assert (=> start!16182 (= res!76444 (valid!751 thiss!1248))))

(assert (=> start!16182 e!105311))

(assert (=> start!16182 e!105314))

(assert (=> start!16182 true))

(declare-fun b!161164 () Bool)

(declare-fun res!76445 () Bool)

(assert (=> b!161164 (=> (not res!76445) (not e!105311))))

(declare-datatypes ((SeekEntryResult!354 0))(
  ( (MissingZero!354 (index!3584 (_ BitVec 32))) (Found!354 (index!3585 (_ BitVec 32))) (Intermediate!354 (undefined!1166 Bool) (index!3586 (_ BitVec 32)) (x!17794 (_ BitVec 32))) (Undefined!354) (MissingVacant!354 (index!3587 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5944 (_ BitVec 32)) SeekEntryResult!354)

(assert (=> b!161164 (= res!76445 (is-Undefined!354 (seekEntryOrOpen!0 key!828 (_keys!5070 thiss!1248) (mask!7855 thiss!1248))))))

(declare-fun b!161168 () Bool)

(declare-fun e!105308 () Bool)

(declare-fun mapRes!5837 () Bool)

(assert (=> b!161168 (= e!105312 (and e!105308 mapRes!5837))))

(declare-fun condMapEmpty!5837 () Bool)

(declare-fun mapDefault!5837 () ValueCell!1373)

