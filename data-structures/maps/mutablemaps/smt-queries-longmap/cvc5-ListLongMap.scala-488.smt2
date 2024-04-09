; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10850 () Bool)

(assert start!10850)

(declare-fun b!87603 () Bool)

(declare-fun b_free!2245 () Bool)

(declare-fun b_next!2245 () Bool)

(assert (=> b!87603 (= b_free!2245 (not b_next!2245))))

(declare-fun tp!8970 () Bool)

(declare-fun b_and!5261 () Bool)

(assert (=> b!87603 (= tp!8970 b_and!5261)))

(declare-fun b!87600 () Bool)

(declare-fun b_free!2247 () Bool)

(declare-fun b_next!2247 () Bool)

(assert (=> b!87600 (= b_free!2247 (not b_next!2247))))

(declare-fun tp!8967 () Bool)

(declare-fun b_and!5263 () Bool)

(assert (=> b!87600 (= tp!8967 b_and!5263)))

(declare-fun b!87597 () Bool)

(declare-fun e!57082 () Bool)

(declare-fun tp_is_empty!2539 () Bool)

(assert (=> b!87597 (= e!57082 tp_is_empty!2539)))

(declare-fun b!87598 () Bool)

(declare-fun e!57077 () Bool)

(assert (=> b!87598 (= e!57077 tp_is_empty!2539)))

(declare-fun b!87599 () Bool)

(declare-fun e!57084 () Bool)

(declare-fun e!57080 () Bool)

(declare-fun mapRes!3419 () Bool)

(assert (=> b!87599 (= e!57084 (and e!57080 mapRes!3419))))

(declare-fun condMapEmpty!3420 () Bool)

(declare-datatypes ((V!3033 0))(
  ( (V!3034 (val!1314 Int)) )
))
(declare-datatypes ((array!4038 0))(
  ( (array!4039 (arr!1922 (Array (_ BitVec 32) (_ BitVec 64))) (size!2167 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!926 0))(
  ( (ValueCellFull!926 (v!2661 V!3033)) (EmptyCell!926) )
))
(declare-datatypes ((array!4040 0))(
  ( (array!4041 (arr!1923 (Array (_ BitVec 32) ValueCell!926)) (size!2168 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!760 0))(
  ( (LongMapFixedSize!761 (defaultEntry!2358 Int) (mask!6396 (_ BitVec 32)) (extraKeys!2193 (_ BitVec 32)) (zeroValue!2248 V!3033) (minValue!2248 V!3033) (_size!429 (_ BitVec 32)) (_keys!4034 array!4038) (_values!2341 array!4040) (_vacant!429 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!760)

(declare-fun mapDefault!3419 () ValueCell!926)

