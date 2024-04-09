; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101292 () Bool)

(assert start!101292)

(declare-fun b_free!26179 () Bool)

(declare-fun b_next!26179 () Bool)

(assert (=> start!101292 (= b_free!26179 (not b_next!26179))))

(declare-fun tp!91559 () Bool)

(declare-fun b_and!43485 () Bool)

(assert (=> start!101292 (= tp!91559 b_and!43485)))

(declare-fun b!1216136 () Bool)

(declare-fun e!690508 () Bool)

(declare-fun e!690512 () Bool)

(declare-fun mapRes!48199 () Bool)

(assert (=> b!1216136 (= e!690508 (and e!690512 mapRes!48199))))

(declare-fun condMapEmpty!48199 () Bool)

(declare-datatypes ((V!46305 0))(
  ( (V!46306 (val!15498 Int)) )
))
(declare-datatypes ((ValueCell!14732 0))(
  ( (ValueCellFull!14732 (v!18152 V!46305)) (EmptyCell!14732) )
))
(declare-datatypes ((array!78516 0))(
  ( (array!78517 (arr!37889 (Array (_ BitVec 32) ValueCell!14732)) (size!38426 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78516)

(declare-fun mapDefault!48199 () ValueCell!14732)

