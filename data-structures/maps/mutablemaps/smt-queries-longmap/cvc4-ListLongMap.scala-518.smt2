; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13080 () Bool)

(assert start!13080)

(declare-fun b!114196 () Bool)

(declare-fun b_free!2613 () Bool)

(declare-fun b_next!2613 () Bool)

(assert (=> b!114196 (= b_free!2613 (not b_next!2613))))

(declare-fun tp!10200 () Bool)

(declare-fun b_and!7041 () Bool)

(assert (=> b!114196 (= tp!10200 b_and!7041)))

(declare-fun b!114203 () Bool)

(declare-fun b_free!2615 () Bool)

(declare-fun b_next!2615 () Bool)

(assert (=> b!114203 (= b_free!2615 (not b_next!2615))))

(declare-fun tp!10199 () Bool)

(declare-fun b_and!7043 () Bool)

(assert (=> b!114203 (= tp!10199 b_and!7043)))

(declare-fun b!114192 () Bool)

(declare-fun e!74256 () Bool)

(declare-fun e!74252 () Bool)

(assert (=> b!114192 (= e!74256 e!74252)))

(declare-fun b!114193 () Bool)

(declare-fun e!74259 () Bool)

(declare-fun e!74251 () Bool)

(declare-fun mapRes!4098 () Bool)

(assert (=> b!114193 (= e!74259 (and e!74251 mapRes!4098))))

(declare-fun condMapEmpty!4097 () Bool)

(declare-datatypes ((V!3277 0))(
  ( (V!3278 (val!1406 Int)) )
))
(declare-datatypes ((array!4446 0))(
  ( (array!4447 (arr!2106 (Array (_ BitVec 32) (_ BitVec 64))) (size!2366 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1018 0))(
  ( (ValueCellFull!1018 (v!2978 V!3277)) (EmptyCell!1018) )
))
(declare-datatypes ((array!4448 0))(
  ( (array!4449 (arr!2107 (Array (_ BitVec 32) ValueCell!1018)) (size!2367 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!944 0))(
  ( (LongMapFixedSize!945 (defaultEntry!2678 Int) (mask!6870 (_ BitVec 32)) (extraKeys!2467 (_ BitVec 32)) (zeroValue!2545 V!3277) (minValue!2545 V!3277) (_size!521 (_ BitVec 32)) (_keys!4400 array!4446) (_values!2661 array!4448) (_vacant!521 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!944)

(declare-fun mapDefault!4098 () ValueCell!1018)

