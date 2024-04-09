; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16168 () Bool)

(assert start!16168)

(declare-fun b!160937 () Bool)

(declare-fun b_free!3617 () Bool)

(declare-fun b_next!3617 () Bool)

(assert (=> b!160937 (= b_free!3617 (not b_next!3617))))

(declare-fun tp!13421 () Bool)

(declare-fun b_and!10049 () Bool)

(assert (=> b!160937 (= tp!13421 b_and!10049)))

(declare-fun b!160936 () Bool)

(declare-fun e!105184 () Bool)

(declare-fun e!105182 () Bool)

(declare-fun mapRes!5816 () Bool)

(assert (=> b!160936 (= e!105184 (and e!105182 mapRes!5816))))

(declare-fun condMapEmpty!5816 () Bool)

(declare-datatypes ((V!4205 0))(
  ( (V!4206 (val!1754 Int)) )
))
(declare-datatypes ((ValueCell!1366 0))(
  ( (ValueCellFull!1366 (v!3615 V!4205)) (EmptyCell!1366) )
))
(declare-datatypes ((array!5916 0))(
  ( (array!5917 (arr!2802 (Array (_ BitVec 32) (_ BitVec 64))) (size!3086 (_ BitVec 32))) )
))
(declare-datatypes ((array!5918 0))(
  ( (array!5919 (arr!2803 (Array (_ BitVec 32) ValueCell!1366)) (size!3087 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1640 0))(
  ( (LongMapFixedSize!1641 (defaultEntry!3262 Int) (mask!7842 (_ BitVec 32)) (extraKeys!3003 (_ BitVec 32)) (zeroValue!3105 V!4205) (minValue!3105 V!4205) (_size!869 (_ BitVec 32)) (_keys!5063 array!5916) (_values!3245 array!5918) (_vacant!869 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1640)

(declare-fun mapDefault!5816 () ValueCell!1366)

