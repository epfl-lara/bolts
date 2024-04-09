; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16416 () Bool)

(assert start!16416)

(declare-fun b!163365 () Bool)

(declare-fun b_free!3797 () Bool)

(declare-fun b_next!3797 () Bool)

(assert (=> b!163365 (= b_free!3797 (not b_next!3797))))

(declare-fun tp!13975 () Bool)

(declare-fun b_and!10229 () Bool)

(assert (=> b!163365 (= tp!13975 b_and!10229)))

(declare-fun b!163363 () Bool)

(declare-fun e!107203 () Bool)

(declare-fun tp_is_empty!3599 () Bool)

(assert (=> b!163363 (= e!107203 tp_is_empty!3599)))

(declare-fun b!163364 () Bool)

(declare-fun e!107200 () Bool)

(declare-fun e!107204 () Bool)

(declare-fun mapRes!6100 () Bool)

(assert (=> b!163364 (= e!107200 (and e!107204 mapRes!6100))))

(declare-fun condMapEmpty!6100 () Bool)

(declare-datatypes ((V!4445 0))(
  ( (V!4446 (val!1844 Int)) )
))
(declare-datatypes ((ValueCell!1456 0))(
  ( (ValueCellFull!1456 (v!3705 V!4445)) (EmptyCell!1456) )
))
(declare-datatypes ((array!6284 0))(
  ( (array!6285 (arr!2982 (Array (_ BitVec 32) (_ BitVec 64))) (size!3268 (_ BitVec 32))) )
))
(declare-datatypes ((array!6286 0))(
  ( (array!6287 (arr!2983 (Array (_ BitVec 32) ValueCell!1456)) (size!3269 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1820 0))(
  ( (LongMapFixedSize!1821 (defaultEntry!3352 Int) (mask!8008 (_ BitVec 32)) (extraKeys!3093 (_ BitVec 32)) (zeroValue!3195 V!4445) (minValue!3195 V!4445) (_size!959 (_ BitVec 32)) (_keys!5163 array!6284) (_values!3335 array!6286) (_vacant!959 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1820)

(declare-fun mapDefault!6100 () ValueCell!1456)

