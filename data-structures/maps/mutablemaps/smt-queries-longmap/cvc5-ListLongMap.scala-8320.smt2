; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101304 () Bool)

(assert start!101304)

(declare-fun b_free!26191 () Bool)

(declare-fun b_next!26191 () Bool)

(assert (=> start!101304 (= b_free!26191 (not b_next!26191))))

(declare-fun tp!91595 () Bool)

(declare-fun b_and!43509 () Bool)

(assert (=> start!101304 (= tp!91595 b_and!43509)))

(declare-fun b!1216411 () Bool)

(declare-fun res!807840 () Bool)

(declare-fun e!690649 () Bool)

(assert (=> b!1216411 (=> (not res!807840) (not e!690649))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78538 0))(
  ( (array!78539 (arr!37900 (Array (_ BitVec 32) (_ BitVec 64))) (size!38437 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78538)

(assert (=> b!1216411 (= res!807840 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38437 _keys!1208))))))

(declare-fun b!1216412 () Bool)

(declare-fun e!690647 () Bool)

(declare-fun e!690650 () Bool)

(declare-fun mapRes!48217 () Bool)

(assert (=> b!1216412 (= e!690647 (and e!690650 mapRes!48217))))

(declare-fun condMapEmpty!48217 () Bool)

(declare-datatypes ((V!46321 0))(
  ( (V!46322 (val!15504 Int)) )
))
(declare-datatypes ((ValueCell!14738 0))(
  ( (ValueCellFull!14738 (v!18158 V!46321)) (EmptyCell!14738) )
))
(declare-datatypes ((array!78540 0))(
  ( (array!78541 (arr!37901 (Array (_ BitVec 32) ValueCell!14738)) (size!38438 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78540)

(declare-fun mapDefault!48217 () ValueCell!14738)

