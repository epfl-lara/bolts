; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98456 () Bool)

(assert start!98456)

(declare-fun b_free!24025 () Bool)

(declare-fun b_next!24025 () Bool)

(assert (=> start!98456 (= b_free!24025 (not b_next!24025))))

(declare-fun tp!84786 () Bool)

(declare-fun b_and!38913 () Bool)

(assert (=> start!98456 (= tp!84786 b_and!38913)))

(declare-fun b!1136343 () Bool)

(declare-fun call!49846 () Bool)

(assert (=> b!1136343 call!49846))

(declare-datatypes ((Unit!37165 0))(
  ( (Unit!37166) )
))
(declare-fun lt!505226 () Unit!37165)

(declare-fun call!49845 () Unit!37165)

(assert (=> b!1136343 (= lt!505226 call!49845)))

(declare-fun e!646687 () Unit!37165)

(assert (=> b!1136343 (= e!646687 lt!505226)))

(declare-fun b!1136344 () Bool)

(declare-fun e!646686 () Bool)

(declare-fun e!646685 () Bool)

(declare-fun mapRes!44657 () Bool)

(assert (=> b!1136344 (= e!646686 (and e!646685 mapRes!44657))))

(declare-fun condMapEmpty!44657 () Bool)

(declare-datatypes ((V!43201 0))(
  ( (V!43202 (val!14334 Int)) )
))
(declare-datatypes ((ValueCell!13568 0))(
  ( (ValueCellFull!13568 (v!16972 V!43201)) (EmptyCell!13568) )
))
(declare-datatypes ((array!73932 0))(
  ( (array!73933 (arr!35613 (Array (_ BitVec 32) ValueCell!13568)) (size!36150 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73932)

(declare-fun mapDefault!44657 () ValueCell!13568)

