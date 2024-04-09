; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98472 () Bool)

(assert start!98472)

(declare-fun b_free!24041 () Bool)

(declare-fun b_next!24041 () Bool)

(assert (=> start!98472 (= b_free!24041 (not b_next!24041))))

(declare-fun tp!84835 () Bool)

(declare-fun b_and!38945 () Bool)

(assert (=> start!98472 (= tp!84835 b_and!38945)))

(declare-fun bm!50030 () Bool)

(declare-fun call!50039 () Bool)

(declare-fun call!50036 () Bool)

(assert (=> bm!50030 (= call!50039 call!50036)))

(declare-fun mapIsEmpty!44681 () Bool)

(declare-fun mapRes!44681 () Bool)

(assert (=> mapIsEmpty!44681 mapRes!44681))

(declare-fun b!1137069 () Bool)

(assert (=> b!1137069 call!50039))

(declare-datatypes ((Unit!37195 0))(
  ( (Unit!37196) )
))
(declare-fun lt!505639 () Unit!37195)

(declare-fun call!50037 () Unit!37195)

(assert (=> b!1137069 (= lt!505639 call!50037)))

(declare-fun e!647070 () Unit!37195)

(assert (=> b!1137069 (= e!647070 lt!505639)))

(declare-fun b!1137070 () Bool)

(declare-fun res!758870 () Bool)

(declare-fun e!647068 () Bool)

(assert (=> b!1137070 (=> (not res!758870) (not e!647068))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73962 0))(
  ( (array!73963 (arr!35628 (Array (_ BitVec 32) (_ BitVec 64))) (size!36165 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73962)

(assert (=> b!1137070 (= res!758870 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36165 _keys!1208))))))

(declare-fun b!1137071 () Bool)

(declare-fun e!647080 () Bool)

(declare-fun e!647069 () Bool)

(assert (=> b!1137071 (= e!647080 (and e!647069 mapRes!44681))))

(declare-fun condMapEmpty!44681 () Bool)

(declare-datatypes ((V!43221 0))(
  ( (V!43222 (val!14342 Int)) )
))
(declare-datatypes ((ValueCell!13576 0))(
  ( (ValueCellFull!13576 (v!16980 V!43221)) (EmptyCell!13576) )
))
(declare-datatypes ((array!73964 0))(
  ( (array!73965 (arr!35629 (Array (_ BitVec 32) ValueCell!13576)) (size!36166 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73964)

(declare-fun mapDefault!44681 () ValueCell!13576)

