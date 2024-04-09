; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21670 () Bool)

(assert start!21670)

(declare-fun b!217287 () Bool)

(declare-fun b_free!5807 () Bool)

(declare-fun b_next!5807 () Bool)

(assert (=> b!217287 (= b_free!5807 (not b_next!5807))))

(declare-fun tp!20556 () Bool)

(declare-fun b_and!12715 () Bool)

(assert (=> b!217287 (= tp!20556 b_and!12715)))

(declare-fun b!217283 () Bool)

(declare-fun e!141363 () Bool)

(assert (=> b!217283 (= e!141363 false)))

(declare-fun lt!111348 () Bool)

(declare-datatypes ((V!7205 0))(
  ( (V!7206 (val!2879 Int)) )
))
(declare-datatypes ((ValueCell!2491 0))(
  ( (ValueCellFull!2491 (v!4893 V!7205)) (EmptyCell!2491) )
))
(declare-datatypes ((array!10576 0))(
  ( (array!10577 (arr!5009 (Array (_ BitVec 32) ValueCell!2491)) (size!5341 (_ BitVec 32))) )
))
(declare-datatypes ((array!10578 0))(
  ( (array!10579 (arr!5010 (Array (_ BitVec 32) (_ BitVec 64))) (size!5342 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2882 0))(
  ( (LongMapFixedSize!2883 (defaultEntry!4091 Int) (mask!9844 (_ BitVec 32)) (extraKeys!3828 (_ BitVec 32)) (zeroValue!3932 V!7205) (minValue!3932 V!7205) (_size!1490 (_ BitVec 32)) (_keys!6140 array!10578) (_values!4074 array!10576) (_vacant!1490 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2882)

(declare-datatypes ((List!3208 0))(
  ( (Nil!3205) (Cons!3204 (h!3851 (_ BitVec 64)) (t!8171 List!3208)) )
))
(declare-fun arrayNoDuplicates!0 (array!10578 (_ BitVec 32) List!3208) Bool)

(assert (=> b!217283 (= lt!111348 (arrayNoDuplicates!0 (_keys!6140 thiss!1504) #b00000000000000000000000000000000 Nil!3205))))

(declare-fun b!217284 () Bool)

(declare-fun res!106395 () Bool)

(assert (=> b!217284 (=> (not res!106395) (not e!141363))))

(assert (=> b!217284 (= res!106395 (and (= (size!5341 (_values!4074 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9844 thiss!1504))) (= (size!5342 (_keys!6140 thiss!1504)) (size!5341 (_values!4074 thiss!1504))) (bvsge (mask!9844 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3828 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3828 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217285 () Bool)

(declare-fun e!141366 () Bool)

(declare-fun tp_is_empty!5669 () Bool)

(assert (=> b!217285 (= e!141366 tp_is_empty!5669)))

(declare-fun b!217286 () Bool)

(declare-fun e!141368 () Bool)

(declare-fun e!141365 () Bool)

(declare-fun mapRes!9666 () Bool)

(assert (=> b!217286 (= e!141368 (and e!141365 mapRes!9666))))

(declare-fun condMapEmpty!9666 () Bool)

(declare-fun mapDefault!9666 () ValueCell!2491)

