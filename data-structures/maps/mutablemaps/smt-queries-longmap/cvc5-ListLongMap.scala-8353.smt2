; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101736 () Bool)

(assert start!101736)

(declare-fun b_free!26389 () Bool)

(declare-fun b_next!26389 () Bool)

(assert (=> start!101736 (= b_free!26389 (not b_next!26389))))

(declare-fun tp!92213 () Bool)

(declare-fun b_and!44049 () Bool)

(assert (=> start!101736 (= tp!92213 b_and!44049)))

(declare-fun b!1223366 () Bool)

(declare-fun e!694836 () Bool)

(declare-fun e!694835 () Bool)

(declare-fun mapRes!48538 () Bool)

(assert (=> b!1223366 (= e!694836 (and e!694835 mapRes!48538))))

(declare-fun condMapEmpty!48538 () Bool)

(declare-datatypes ((V!46585 0))(
  ( (V!46586 (val!15603 Int)) )
))
(declare-datatypes ((ValueCell!14837 0))(
  ( (ValueCellFull!14837 (v!18266 V!46585)) (EmptyCell!14837) )
))
(declare-datatypes ((array!78946 0))(
  ( (array!78947 (arr!38096 (Array (_ BitVec 32) ValueCell!14837)) (size!38633 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78946)

(declare-fun mapDefault!48538 () ValueCell!14837)

