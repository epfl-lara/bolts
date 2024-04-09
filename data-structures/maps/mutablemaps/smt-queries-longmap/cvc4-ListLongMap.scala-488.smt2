; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10854 () Bool)

(assert start!10854)

(declare-fun b!87728 () Bool)

(declare-fun b_free!2253 () Bool)

(declare-fun b_next!2253 () Bool)

(assert (=> b!87728 (= b_free!2253 (not b_next!2253))))

(declare-fun tp!8994 () Bool)

(declare-fun b_and!5277 () Bool)

(assert (=> b!87728 (= tp!8994 b_and!5277)))

(declare-fun b!87737 () Bool)

(declare-fun b_free!2255 () Bool)

(declare-fun b_next!2255 () Bool)

(assert (=> b!87737 (= b_free!2255 (not b_next!2255))))

(declare-fun tp!8992 () Bool)

(declare-fun b_and!5279 () Bool)

(assert (=> b!87737 (= tp!8992 b_and!5279)))

(declare-fun mapNonEmpty!3431 () Bool)

(declare-fun mapRes!3431 () Bool)

(declare-fun tp!8991 () Bool)

(declare-fun e!57193 () Bool)

(assert (=> mapNonEmpty!3431 (= mapRes!3431 (and tp!8991 e!57193))))

(declare-datatypes ((V!3037 0))(
  ( (V!3038 (val!1316 Int)) )
))
(declare-datatypes ((array!4046 0))(
  ( (array!4047 (arr!1926 (Array (_ BitVec 32) (_ BitVec 64))) (size!2171 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!928 0))(
  ( (ValueCellFull!928 (v!2664 V!3037)) (EmptyCell!928) )
))
(declare-datatypes ((array!4048 0))(
  ( (array!4049 (arr!1927 (Array (_ BitVec 32) ValueCell!928)) (size!2172 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!764 0))(
  ( (LongMapFixedSize!765 (defaultEntry!2360 Int) (mask!6398 (_ BitVec 32)) (extraKeys!2195 (_ BitVec 32)) (zeroValue!2250 V!3037) (minValue!2250 V!3037) (_size!431 (_ BitVec 32)) (_keys!4036 array!4046) (_values!2343 array!4048) (_vacant!431 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!570 0))(
  ( (Cell!571 (v!2665 LongMapFixedSize!764)) )
))
(declare-datatypes ((LongMap!570 0))(
  ( (LongMap!571 (underlying!296 Cell!570)) )
))
(declare-fun thiss!992 () LongMap!570)

(declare-fun mapRest!3431 () (Array (_ BitVec 32) ValueCell!928))

(declare-fun mapKey!3431 () (_ BitVec 32))

(declare-fun mapValue!3431 () ValueCell!928)

(assert (=> mapNonEmpty!3431 (= (arr!1927 (_values!2343 (v!2665 (underlying!296 thiss!992)))) (store mapRest!3431 mapKey!3431 mapValue!3431))))

(declare-fun b!87727 () Bool)

(declare-fun e!57180 () Bool)

(declare-fun e!57195 () Bool)

(declare-fun mapRes!3432 () Bool)

(assert (=> b!87727 (= e!57180 (and e!57195 mapRes!3432))))

(declare-fun condMapEmpty!3431 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!764)

(declare-fun mapDefault!3431 () ValueCell!928)

