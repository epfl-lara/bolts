; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101416 () Bool)

(assert start!101416)

(declare-fun b_free!26251 () Bool)

(declare-fun b_next!26251 () Bool)

(assert (=> start!101416 (= b_free!26251 (not b_next!26251))))

(declare-fun tp!91781 () Bool)

(declare-fun b_and!43665 () Bool)

(assert (=> start!101416 (= tp!91781 b_and!43665)))

(declare-fun b!1218259 () Bool)

(declare-fun e!691712 () Bool)

(declare-fun tp_is_empty!30955 () Bool)

(assert (=> b!1218259 (= e!691712 tp_is_empty!30955)))

(declare-fun b!1218260 () Bool)

(declare-fun res!809192 () Bool)

(declare-fun e!691709 () Bool)

(assert (=> b!1218260 (=> (not res!809192) (not e!691709))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78660 0))(
  ( (array!78661 (arr!37959 (Array (_ BitVec 32) (_ BitVec 64))) (size!38496 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78660)

(assert (=> b!1218260 (= res!809192 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38496 _keys!1208))))))

(declare-fun b!1218261 () Bool)

(declare-fun e!691707 () Bool)

(declare-fun mapRes!48313 () Bool)

(assert (=> b!1218261 (= e!691707 (and e!691712 mapRes!48313))))

(declare-fun condMapEmpty!48313 () Bool)

(declare-datatypes ((V!46401 0))(
  ( (V!46402 (val!15534 Int)) )
))
(declare-datatypes ((ValueCell!14768 0))(
  ( (ValueCellFull!14768 (v!18190 V!46401)) (EmptyCell!14768) )
))
(declare-datatypes ((array!78662 0))(
  ( (array!78663 (arr!37960 (Array (_ BitVec 32) ValueCell!14768)) (size!38497 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78662)

(declare-fun mapDefault!48313 () ValueCell!14768)

