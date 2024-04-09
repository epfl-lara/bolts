; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99692 () Bool)

(assert start!99692)

(declare-fun b_free!25235 () Bool)

(declare-fun b_next!25235 () Bool)

(assert (=> start!99692 (= b_free!25235 (not b_next!25235))))

(declare-fun tp!88420 () Bool)

(declare-fun b_and!41351 () Bool)

(assert (=> start!99692 (= tp!88420 b_and!41351)))

(declare-fun b!1181505 () Bool)

(declare-datatypes ((Unit!38999 0))(
  ( (Unit!39000) )
))
(declare-fun e!671763 () Unit!38999)

(declare-fun Unit!39001 () Unit!38999)

(assert (=> b!1181505 (= e!671763 Unit!39001)))

(declare-fun b!1181506 () Bool)

(declare-datatypes ((array!76298 0))(
  ( (array!76299 (arr!36795 (Array (_ BitVec 32) (_ BitVec 64))) (size!37332 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76298)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!671771 () Bool)

(declare-fun arrayContainsKey!0 (array!76298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181506 (= e!671771 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1181507 () Bool)

(declare-fun res!785239 () Bool)

(declare-fun e!671767 () Bool)

(assert (=> b!1181507 (=> (not res!785239) (not e!671767))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181507 (= res!785239 (validMask!0 mask!1564))))

(declare-fun b!1181508 () Bool)

(declare-fun e!671765 () Bool)

(declare-fun e!671762 () Bool)

(declare-fun mapRes!46475 () Bool)

(assert (=> b!1181508 (= e!671765 (and e!671762 mapRes!46475))))

(declare-fun condMapEmpty!46475 () Bool)

(declare-datatypes ((V!44813 0))(
  ( (V!44814 (val!14939 Int)) )
))
(declare-datatypes ((ValueCell!14173 0))(
  ( (ValueCellFull!14173 (v!17578 V!44813)) (EmptyCell!14173) )
))
(declare-datatypes ((array!76300 0))(
  ( (array!76301 (arr!36796 (Array (_ BitVec 32) ValueCell!14173)) (size!37333 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76300)

(declare-fun mapDefault!46475 () ValueCell!14173)

