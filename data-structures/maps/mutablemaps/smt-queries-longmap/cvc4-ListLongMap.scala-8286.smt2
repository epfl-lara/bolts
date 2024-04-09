; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101028 () Bool)

(assert start!101028)

(declare-fun b_free!25991 () Bool)

(declare-fun b_next!25991 () Bool)

(assert (=> start!101028 (= b_free!25991 (not b_next!25991))))

(declare-fun tp!90989 () Bool)

(declare-fun b_and!43073 () Bool)

(assert (=> start!101028 (= tp!90989 b_and!43073)))

(declare-fun b!1209237 () Bool)

(declare-fun e!686827 () Bool)

(declare-fun e!686828 () Bool)

(declare-fun mapRes!47911 () Bool)

(assert (=> b!1209237 (= e!686827 (and e!686828 mapRes!47911))))

(declare-fun condMapEmpty!47911 () Bool)

(declare-datatypes ((V!46053 0))(
  ( (V!46054 (val!15404 Int)) )
))
(declare-datatypes ((ValueCell!14638 0))(
  ( (ValueCellFull!14638 (v!18056 V!46053)) (EmptyCell!14638) )
))
(declare-datatypes ((array!78152 0))(
  ( (array!78153 (arr!37709 (Array (_ BitVec 32) ValueCell!14638)) (size!38246 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78152)

(declare-fun mapDefault!47911 () ValueCell!14638)

