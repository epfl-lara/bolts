; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16174 () Bool)

(assert start!16174)

(declare-fun b!161040 () Bool)

(declare-fun b_free!3623 () Bool)

(declare-fun b_next!3623 () Bool)

(assert (=> b!161040 (= b_free!3623 (not b_next!3623))))

(declare-fun tp!13438 () Bool)

(declare-fun b_and!10055 () Bool)

(assert (=> b!161040 (= tp!13438 b_and!10055)))

(declare-fun b!161035 () Bool)

(declare-fun res!76369 () Bool)

(declare-fun e!105234 () Bool)

(assert (=> b!161035 (=> (not res!76369) (not e!105234))))

(declare-datatypes ((V!4213 0))(
  ( (V!4214 (val!1757 Int)) )
))
(declare-datatypes ((ValueCell!1369 0))(
  ( (ValueCellFull!1369 (v!3618 V!4213)) (EmptyCell!1369) )
))
(declare-datatypes ((array!5928 0))(
  ( (array!5929 (arr!2808 (Array (_ BitVec 32) (_ BitVec 64))) (size!3092 (_ BitVec 32))) )
))
(declare-datatypes ((array!5930 0))(
  ( (array!5931 (arr!2809 (Array (_ BitVec 32) ValueCell!1369)) (size!3093 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1646 0))(
  ( (LongMapFixedSize!1647 (defaultEntry!3265 Int) (mask!7847 (_ BitVec 32)) (extraKeys!3006 (_ BitVec 32)) (zeroValue!3108 V!4213) (minValue!3108 V!4213) (_size!872 (_ BitVec 32)) (_keys!5066 array!5928) (_values!3248 array!5930) (_vacant!872 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1646)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!161035 (= res!76369 (validMask!0 (mask!7847 thiss!1248)))))

(declare-fun b!161036 () Bool)

(declare-fun e!105238 () Bool)

(declare-fun e!105237 () Bool)

(declare-fun mapRes!5825 () Bool)

(assert (=> b!161036 (= e!105238 (and e!105237 mapRes!5825))))

(declare-fun condMapEmpty!5825 () Bool)

(declare-fun mapDefault!5825 () ValueCell!1369)

