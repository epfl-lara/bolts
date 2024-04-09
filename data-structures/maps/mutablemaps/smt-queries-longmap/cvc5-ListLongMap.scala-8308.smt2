; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101232 () Bool)

(assert start!101232)

(declare-fun b_free!26119 () Bool)

(declare-fun b_next!26119 () Bool)

(assert (=> start!101232 (= b_free!26119 (not b_next!26119))))

(declare-fun tp!91380 () Bool)

(declare-fun b_and!43365 () Bool)

(assert (=> start!101232 (= tp!91380 b_and!43365)))

(declare-fun b!1214816 () Bool)

(declare-fun e!689878 () Bool)

(declare-fun tp_is_empty!30823 () Bool)

(assert (=> b!1214816 (= e!689878 tp_is_empty!30823)))

(declare-fun b!1214817 () Bool)

(declare-fun e!689883 () Bool)

(assert (=> b!1214817 (= e!689883 tp_is_empty!30823)))

(declare-fun b!1214818 () Bool)

(declare-fun e!689880 () Bool)

(declare-fun mapRes!48109 () Bool)

(assert (=> b!1214818 (= e!689880 (and e!689883 mapRes!48109))))

(declare-fun condMapEmpty!48109 () Bool)

(declare-datatypes ((V!46225 0))(
  ( (V!46226 (val!15468 Int)) )
))
(declare-datatypes ((ValueCell!14702 0))(
  ( (ValueCellFull!14702 (v!18122 V!46225)) (EmptyCell!14702) )
))
(declare-datatypes ((array!78402 0))(
  ( (array!78403 (arr!37832 (Array (_ BitVec 32) ValueCell!14702)) (size!38369 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78402)

(declare-fun mapDefault!48109 () ValueCell!14702)

