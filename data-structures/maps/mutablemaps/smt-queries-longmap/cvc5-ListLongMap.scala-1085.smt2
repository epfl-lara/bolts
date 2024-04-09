; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22204 () Bool)

(assert start!22204)

(declare-fun b!232411 () Bool)

(declare-fun b_free!6259 () Bool)

(declare-fun b_next!6259 () Bool)

(assert (=> b!232411 (= b_free!6259 (not b_next!6259))))

(declare-fun tp!21919 () Bool)

(declare-fun b_and!13175 () Bool)

(assert (=> b!232411 (= tp!21919 b_and!13175)))

(declare-fun b!232396 () Bool)

(declare-fun res!114139 () Bool)

(declare-fun e!150929 () Bool)

(assert (=> b!232396 (=> (not res!114139) (not e!150929))))

(declare-fun call!21610 () Bool)

(assert (=> b!232396 (= res!114139 call!21610)))

(declare-fun e!150935 () Bool)

(assert (=> b!232396 (= e!150935 e!150929)))

(declare-fun b!232397 () Bool)

(declare-fun e!150925 () Bool)

(declare-fun e!150928 () Bool)

(declare-fun mapRes!10351 () Bool)

(assert (=> b!232397 (= e!150925 (and e!150928 mapRes!10351))))

(declare-fun condMapEmpty!10351 () Bool)

(declare-datatypes ((V!7809 0))(
  ( (V!7810 (val!3105 Int)) )
))
(declare-datatypes ((ValueCell!2717 0))(
  ( (ValueCellFull!2717 (v!5121 V!7809)) (EmptyCell!2717) )
))
(declare-datatypes ((array!11484 0))(
  ( (array!11485 (arr!5461 (Array (_ BitVec 32) ValueCell!2717)) (size!5794 (_ BitVec 32))) )
))
(declare-datatypes ((array!11486 0))(
  ( (array!11487 (arr!5462 (Array (_ BitVec 32) (_ BitVec 64))) (size!5795 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3334 0))(
  ( (LongMapFixedSize!3335 (defaultEntry!4326 Int) (mask!10240 (_ BitVec 32)) (extraKeys!4063 (_ BitVec 32)) (zeroValue!4167 V!7809) (minValue!4167 V!7809) (_size!1716 (_ BitVec 32)) (_keys!6380 array!11486) (_values!4309 array!11484) (_vacant!1716 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3334)

(declare-fun mapDefault!10351 () ValueCell!2717)

