; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97160 () Bool)

(assert start!97160)

(declare-fun b!1104654 () Bool)

(declare-fun res!737109 () Bool)

(declare-fun e!630571 () Bool)

(assert (=> b!1104654 (=> (not res!737109) (not e!630571))))

(declare-datatypes ((array!71618 0))(
  ( (array!71619 (arr!34459 (Array (_ BitVec 32) (_ BitVec 64))) (size!34996 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71618)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1104654 (= res!737109 (= (select (arr!34459 _keys!1208) i!673) k!934))))

(declare-fun b!1104655 () Bool)

(declare-fun res!737105 () Bool)

(assert (=> b!1104655 (=> (not res!737105) (not e!630571))))

(declare-datatypes ((List!24182 0))(
  ( (Nil!24179) (Cons!24178 (h!25387 (_ BitVec 64)) (t!34454 List!24182)) )
))
(declare-fun arrayNoDuplicates!0 (array!71618 (_ BitVec 32) List!24182) Bool)

(assert (=> b!1104655 (= res!737105 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24179))))

(declare-fun b!1104656 () Bool)

(declare-fun e!630568 () Bool)

(declare-fun e!630570 () Bool)

(declare-fun mapRes!42871 () Bool)

(assert (=> b!1104656 (= e!630568 (and e!630570 mapRes!42871))))

(declare-fun condMapEmpty!42871 () Bool)

(declare-datatypes ((V!41621 0))(
  ( (V!41622 (val!13742 Int)) )
))
(declare-datatypes ((ValueCell!12976 0))(
  ( (ValueCellFull!12976 (v!16376 V!41621)) (EmptyCell!12976) )
))
(declare-datatypes ((array!71620 0))(
  ( (array!71621 (arr!34460 (Array (_ BitVec 32) ValueCell!12976)) (size!34997 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71620)

(declare-fun mapDefault!42871 () ValueCell!12976)

