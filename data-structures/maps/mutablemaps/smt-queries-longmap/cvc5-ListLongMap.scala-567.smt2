; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15466 () Bool)

(assert start!15466)

(declare-fun b!153524 () Bool)

(declare-fun b_free!3193 () Bool)

(declare-fun b_next!3193 () Bool)

(assert (=> b!153524 (= b_free!3193 (not b_next!3193))))

(declare-fun tp!12095 () Bool)

(declare-fun b_and!9573 () Bool)

(assert (=> b!153524 (= tp!12095 b_and!9573)))

(declare-fun b!153522 () Bool)

(declare-fun b_free!3195 () Bool)

(declare-fun b_next!3195 () Bool)

(assert (=> b!153522 (= b_free!3195 (not b_next!3195))))

(declare-fun tp!12098 () Bool)

(declare-fun b_and!9575 () Bool)

(assert (=> b!153522 (= tp!12098 b_and!9575)))

(declare-fun b!153519 () Bool)

(declare-fun res!72570 () Bool)

(declare-fun e!100263 () Bool)

(assert (=> b!153519 (=> (not res!72570) (not e!100263))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3665 0))(
  ( (V!3666 (val!1551 Int)) )
))
(declare-datatypes ((array!5074 0))(
  ( (array!5075 (arr!2396 (Array (_ BitVec 32) (_ BitVec 64))) (size!2673 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1163 0))(
  ( (ValueCellFull!1163 (v!3401 V!3665)) (EmptyCell!1163) )
))
(declare-datatypes ((array!5076 0))(
  ( (array!5077 (arr!2397 (Array (_ BitVec 32) ValueCell!1163)) (size!2674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1234 0))(
  ( (LongMapFixedSize!1235 (defaultEntry!3056 Int) (mask!7456 (_ BitVec 32)) (extraKeys!2797 (_ BitVec 32)) (zeroValue!2899 V!3665) (minValue!2899 V!3665) (_size!666 (_ BitVec 32)) (_keys!4829 array!5074) (_values!3039 array!5076) (_vacant!666 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1012 0))(
  ( (Cell!1013 (v!3402 LongMapFixedSize!1234)) )
))
(declare-datatypes ((LongMap!1012 0))(
  ( (LongMap!1013 (underlying!517 Cell!1012)) )
))
(declare-fun thiss!992 () LongMap!1012)

(assert (=> b!153519 (= res!72570 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2673 (_keys!4829 (v!3402 (underlying!517 thiss!992)))))))))

(declare-fun mapIsEmpty!5125 () Bool)

(declare-fun mapRes!5125 () Bool)

(assert (=> mapIsEmpty!5125 mapRes!5125))

(declare-fun mapNonEmpty!5125 () Bool)

(declare-fun mapRes!5126 () Bool)

(declare-fun tp!12096 () Bool)

(declare-fun e!100261 () Bool)

(assert (=> mapNonEmpty!5125 (= mapRes!5126 (and tp!12096 e!100261))))

(declare-fun mapValue!5125 () ValueCell!1163)

(declare-fun mapKey!5125 () (_ BitVec 32))

(declare-fun mapRest!5125 () (Array (_ BitVec 32) ValueCell!1163))

(assert (=> mapNonEmpty!5125 (= (arr!2397 (_values!3039 (v!3402 (underlying!517 thiss!992)))) (store mapRest!5125 mapKey!5125 mapValue!5125))))

(declare-fun b!153520 () Bool)

(declare-fun e!100258 () Bool)

(declare-fun e!100264 () Bool)

(assert (=> b!153520 (= e!100258 e!100264)))

(declare-fun b!153521 () Bool)

(declare-fun e!100252 () Bool)

(declare-fun e!100254 () Bool)

(assert (=> b!153521 (= e!100252 (and e!100254 mapRes!5126))))

(declare-fun condMapEmpty!5126 () Bool)

(declare-fun mapDefault!5126 () ValueCell!1163)

