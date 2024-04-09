; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13146 () Bool)

(assert start!13146)

(declare-fun b!115365 () Bool)

(declare-fun b_free!2677 () Bool)

(declare-fun b_next!2677 () Bool)

(assert (=> b!115365 (= b_free!2677 (not b_next!2677))))

(declare-fun tp!10395 () Bool)

(declare-fun b_and!7169 () Bool)

(assert (=> b!115365 (= tp!10395 b_and!7169)))

(declare-fun b!115368 () Bool)

(declare-fun b_free!2679 () Bool)

(declare-fun b_next!2679 () Bool)

(assert (=> b!115368 (= b_free!2679 (not b_next!2679))))

(declare-fun tp!10396 () Bool)

(declare-fun b_and!7171 () Bool)

(assert (=> b!115368 (= tp!10396 b_and!7171)))

(declare-fun b!115360 () Bool)

(declare-fun e!75177 () Bool)

(declare-fun e!75179 () Bool)

(declare-fun mapRes!4197 () Bool)

(assert (=> b!115360 (= e!75177 (and e!75179 mapRes!4197))))

(declare-fun condMapEmpty!4197 () Bool)

(declare-datatypes ((V!3321 0))(
  ( (V!3322 (val!1422 Int)) )
))
(declare-datatypes ((array!4512 0))(
  ( (array!4513 (arr!2138 (Array (_ BitVec 32) (_ BitVec 64))) (size!2398 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1034 0))(
  ( (ValueCellFull!1034 (v!3011 V!3321)) (EmptyCell!1034) )
))
(declare-datatypes ((array!4514 0))(
  ( (array!4515 (arr!2139 (Array (_ BitVec 32) ValueCell!1034)) (size!2399 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!976 0))(
  ( (LongMapFixedSize!977 (defaultEntry!2697 Int) (mask!6901 (_ BitVec 32)) (extraKeys!2486 (_ BitVec 32)) (zeroValue!2564 V!3321) (minValue!2564 V!3321) (_size!537 (_ BitVec 32)) (_keys!4419 array!4512) (_values!2680 array!4514) (_vacant!537 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!976)

(declare-fun mapDefault!4197 () ValueCell!1034)

