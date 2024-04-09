; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16660 () Bool)

(assert start!16660)

(declare-fun b!166352 () Bool)

(declare-fun b_free!3953 () Bool)

(declare-fun b_next!3953 () Bool)

(assert (=> b!166352 (= b_free!3953 (not b_next!3953))))

(declare-fun tp!14459 () Bool)

(declare-fun b_and!10385 () Bool)

(assert (=> b!166352 (= tp!14459 b_and!10385)))

(declare-fun b!166351 () Bool)

(declare-fun res!79077 () Bool)

(declare-fun e!109147 () Bool)

(assert (=> b!166351 (=> (not res!79077) (not e!109147))))

(declare-datatypes ((V!4653 0))(
  ( (V!4654 (val!1922 Int)) )
))
(declare-datatypes ((ValueCell!1534 0))(
  ( (ValueCellFull!1534 (v!3783 V!4653)) (EmptyCell!1534) )
))
(declare-datatypes ((array!6606 0))(
  ( (array!6607 (arr!3138 (Array (_ BitVec 32) (_ BitVec 64))) (size!3426 (_ BitVec 32))) )
))
(declare-datatypes ((array!6608 0))(
  ( (array!6609 (arr!3139 (Array (_ BitVec 32) ValueCell!1534)) (size!3427 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1976 0))(
  ( (LongMapFixedSize!1977 (defaultEntry!3430 Int) (mask!8159 (_ BitVec 32)) (extraKeys!3171 (_ BitVec 32)) (zeroValue!3273 V!4653) (minValue!3273 V!4653) (_size!1037 (_ BitVec 32)) (_keys!5255 array!6606) (_values!3413 array!6608) (_vacant!1037 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1976)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6606 (_ BitVec 32)) Bool)

(assert (=> b!166351 (= res!79077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5255 thiss!1248) (mask!8159 thiss!1248)))))

(declare-fun e!109143 () Bool)

(declare-fun e!109149 () Bool)

(declare-fun tp_is_empty!3755 () Bool)

(declare-fun array_inv!2003 (array!6606) Bool)

(declare-fun array_inv!2004 (array!6608) Bool)

(assert (=> b!166352 (= e!109149 (and tp!14459 tp_is_empty!3755 (array_inv!2003 (_keys!5255 thiss!1248)) (array_inv!2004 (_values!3413 thiss!1248)) e!109143))))

(declare-fun mapIsEmpty!6351 () Bool)

(declare-fun mapRes!6351 () Bool)

(assert (=> mapIsEmpty!6351 mapRes!6351))

(declare-fun res!79074 () Bool)

(declare-fun e!109142 () Bool)

(assert (=> start!16660 (=> (not res!79074) (not e!109142))))

(declare-fun valid!860 (LongMapFixedSize!1976) Bool)

(assert (=> start!16660 (= res!79074 (valid!860 thiss!1248))))

(assert (=> start!16660 e!109142))

(assert (=> start!16660 e!109149))

(assert (=> start!16660 true))

(declare-fun b!166353 () Bool)

(assert (=> b!166353 (= e!109147 false)))

(declare-fun lt!83313 () Bool)

(declare-datatypes ((List!2110 0))(
  ( (Nil!2107) (Cons!2106 (h!2723 (_ BitVec 64)) (t!6920 List!2110)) )
))
(declare-fun arrayNoDuplicates!0 (array!6606 (_ BitVec 32) List!2110) Bool)

(assert (=> b!166353 (= lt!83313 (arrayNoDuplicates!0 (_keys!5255 thiss!1248) #b00000000000000000000000000000000 Nil!2107))))

(declare-fun b!166354 () Bool)

(declare-fun e!109144 () Bool)

(declare-datatypes ((SeekEntryResult!465 0))(
  ( (MissingZero!465 (index!4028 (_ BitVec 32))) (Found!465 (index!4029 (_ BitVec 32))) (Intermediate!465 (undefined!1277 Bool) (index!4030 (_ BitVec 32)) (x!18437 (_ BitVec 32))) (Undefined!465) (MissingVacant!465 (index!4031 (_ BitVec 32))) )
))
(declare-fun lt!83311 () SeekEntryResult!465)

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!166354 (= e!109144 (= (select (arr!3138 (_keys!5255 thiss!1248)) (index!4029 lt!83311)) key!828))))

(declare-fun b!166355 () Bool)

(declare-fun res!79075 () Bool)

(assert (=> b!166355 (=> (not res!79075) (not e!109142))))

(assert (=> b!166355 (= res!79075 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166356 () Bool)

(declare-fun e!109150 () Bool)

(assert (=> b!166356 (= e!109142 e!109150)))

(declare-fun res!79072 () Bool)

(assert (=> b!166356 (=> (not res!79072) (not e!109150))))

(assert (=> b!166356 (= res!79072 (and (not (is-Undefined!465 lt!83311)) (not (is-MissingVacant!465 lt!83311)) (not (is-MissingZero!465 lt!83311)) (is-Found!465 lt!83311)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6606 (_ BitVec 32)) SeekEntryResult!465)

(assert (=> b!166356 (= lt!83311 (seekEntryOrOpen!0 key!828 (_keys!5255 thiss!1248) (mask!8159 thiss!1248)))))

(declare-fun b!166357 () Bool)

(declare-fun e!109145 () Bool)

(assert (=> b!166357 (= e!109143 (and e!109145 mapRes!6351))))

(declare-fun condMapEmpty!6351 () Bool)

(declare-fun mapDefault!6351 () ValueCell!1534)

