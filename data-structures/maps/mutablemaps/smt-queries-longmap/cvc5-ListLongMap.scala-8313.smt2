; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101262 () Bool)

(assert start!101262)

(declare-fun b_free!26149 () Bool)

(declare-fun b_next!26149 () Bool)

(assert (=> start!101262 (= b_free!26149 (not b_next!26149))))

(declare-fun tp!91470 () Bool)

(declare-fun b_and!43425 () Bool)

(assert (=> start!101262 (= tp!91470 b_and!43425)))

(declare-fun b!1215476 () Bool)

(declare-fun e!690196 () Bool)

(declare-fun e!690198 () Bool)

(declare-fun mapRes!48154 () Bool)

(assert (=> b!1215476 (= e!690196 (and e!690198 mapRes!48154))))

(declare-fun condMapEmpty!48154 () Bool)

(declare-datatypes ((V!46265 0))(
  ( (V!46266 (val!15483 Int)) )
))
(declare-datatypes ((ValueCell!14717 0))(
  ( (ValueCellFull!14717 (v!18137 V!46265)) (EmptyCell!14717) )
))
(declare-datatypes ((array!78460 0))(
  ( (array!78461 (arr!37861 (Array (_ BitVec 32) ValueCell!14717)) (size!38398 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78460)

(declare-fun mapDefault!48154 () ValueCell!14717)

