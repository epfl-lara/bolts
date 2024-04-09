; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76322 () Bool)

(assert start!76322)

(declare-fun b!895324 () Bool)

(declare-fun b_free!15907 () Bool)

(declare-fun b_next!15907 () Bool)

(assert (=> b!895324 (= b_free!15907 (not b_next!15907))))

(declare-fun tp!55732 () Bool)

(declare-fun b_and!26217 () Bool)

(assert (=> b!895324 (= tp!55732 b_and!26217)))

(declare-fun b!895317 () Bool)

(declare-fun res!605734 () Bool)

(declare-fun e!500275 () Bool)

(assert (=> b!895317 (=> (not res!605734) (not e!500275))))

(declare-datatypes ((array!52458 0))(
  ( (array!52459 (arr!25220 (Array (_ BitVec 32) (_ BitVec 64))) (size!25671 (_ BitVec 32))) )
))
(declare-datatypes ((V!29279 0))(
  ( (V!29280 (val!9168 Int)) )
))
(declare-datatypes ((ValueCell!8636 0))(
  ( (ValueCellFull!8636 (v!11655 V!29279)) (EmptyCell!8636) )
))
(declare-datatypes ((array!52460 0))(
  ( (array!52461 (arr!25221 (Array (_ BitVec 32) ValueCell!8636)) (size!25672 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4288 0))(
  ( (LongMapFixedSize!4289 (defaultEntry!5356 Int) (mask!25948 (_ BitVec 32)) (extraKeys!5052 (_ BitVec 32)) (zeroValue!5156 V!29279) (minValue!5156 V!29279) (_size!2199 (_ BitVec 32)) (_keys!10067 array!52458) (_values!5343 array!52460) (_vacant!2199 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4288)

(assert (=> b!895317 (= res!605734 (and (= (size!25672 (_values!5343 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25948 thiss!1181))) (= (size!25671 (_keys!10067 thiss!1181)) (size!25672 (_values!5343 thiss!1181))) (bvsge (mask!25948 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5052 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5052 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!28948 () Bool)

(declare-fun mapRes!28948 () Bool)

(assert (=> mapIsEmpty!28948 mapRes!28948))

(declare-fun b!895318 () Bool)

(declare-fun res!605733 () Bool)

(declare-fun e!500274 () Bool)

(assert (=> b!895318 (=> (not res!605733) (not e!500274))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895318 (= res!605733 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895320 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52458 (_ BitVec 32)) Bool)

(assert (=> b!895320 (= e!500275 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10067 thiss!1181) (mask!25948 thiss!1181))))))

(declare-fun b!895321 () Bool)

(declare-fun e!500278 () Bool)

(declare-fun e!500273 () Bool)

(assert (=> b!895321 (= e!500278 (and e!500273 mapRes!28948))))

(declare-fun condMapEmpty!28948 () Bool)

(declare-fun mapDefault!28948 () ValueCell!8636)

