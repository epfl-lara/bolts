; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133584 () Bool)

(assert start!133584)

(declare-fun b_free!31969 () Bool)

(declare-fun b_next!31969 () Bool)

(assert (=> start!133584 (= b_free!31969 (not b_next!31969))))

(declare-fun tp!113032 () Bool)

(declare-fun b_and!51459 () Bool)

(assert (=> start!133584 (= tp!113032 b_and!51459)))

(declare-fun b!1561199 () Bool)

(declare-fun res!1067566 () Bool)

(declare-fun e!870045 () Bool)

(assert (=> b!1561199 (=> (not res!1067566) (not e!870045))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!103941 0))(
  ( (array!103942 (arr!50158 (Array (_ BitVec 32) (_ BitVec 64))) (size!50709 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103941)

(assert (=> b!1561199 (= res!1067566 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50709 _keys!637)) (bvslt from!782 (size!50709 _keys!637))))))

(declare-fun b!1561200 () Bool)

(declare-fun res!1067565 () Bool)

(assert (=> b!1561200 (=> (not res!1067565) (not e!870045))))

(declare-datatypes ((List!36583 0))(
  ( (Nil!36580) (Cons!36579 (h!38026 (_ BitVec 64)) (t!51349 List!36583)) )
))
(declare-fun arrayNoDuplicates!0 (array!103941 (_ BitVec 32) List!36583) Bool)

(assert (=> b!1561200 (= res!1067565 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36580))))

(declare-fun b!1561202 () Bool)

(declare-fun e!870044 () Bool)

(declare-fun e!870047 () Bool)

(declare-fun mapRes!59328 () Bool)

(assert (=> b!1561202 (= e!870044 (and e!870047 mapRes!59328))))

(declare-fun condMapEmpty!59328 () Bool)

(declare-datatypes ((V!59721 0))(
  ( (V!59722 (val!19401 Int)) )
))
(declare-datatypes ((ValueCell!18287 0))(
  ( (ValueCellFull!18287 (v!22150 V!59721)) (EmptyCell!18287) )
))
(declare-datatypes ((array!103943 0))(
  ( (array!103944 (arr!50159 (Array (_ BitVec 32) ValueCell!18287)) (size!50710 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103943)

(declare-fun mapDefault!59328 () ValueCell!18287)

