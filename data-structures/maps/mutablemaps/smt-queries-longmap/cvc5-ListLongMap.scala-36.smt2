; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!648 () Bool)

(assert start!648)

(declare-fun b_free!121 () Bool)

(declare-fun b_next!121 () Bool)

(assert (=> start!648 (= b_free!121 (not b_next!121))))

(declare-fun tp!580 () Bool)

(declare-fun b_and!259 () Bool)

(assert (=> start!648 (= tp!580 b_and!259)))

(declare-fun b!4212 () Bool)

(declare-fun e!2213 () Bool)

(declare-fun tp_is_empty!199 () Bool)

(assert (=> b!4212 (= e!2213 tp_is_empty!199)))

(declare-fun b!4213 () Bool)

(declare-fun e!2209 () Bool)

(declare-fun e!2210 () Bool)

(declare-fun mapRes!257 () Bool)

(assert (=> b!4213 (= e!2209 (and e!2210 mapRes!257))))

(declare-fun condMapEmpty!257 () Bool)

(declare-datatypes ((V!443 0))(
  ( (V!444 (val!105 Int)) )
))
(declare-datatypes ((ValueCell!83 0))(
  ( (ValueCellFull!83 (v!1192 V!443)) (EmptyCell!83) )
))
(declare-datatypes ((array!331 0))(
  ( (array!332 (arr!158 (Array (_ BitVec 32) ValueCell!83)) (size!220 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!331)

(declare-fun mapDefault!257 () ValueCell!83)

