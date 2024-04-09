; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99062 () Bool)

(assert start!99062)

(declare-fun b_free!24631 () Bool)

(declare-fun b_next!24631 () Bool)

(assert (=> start!99062 (= b_free!24631 (not b_next!24631))))

(declare-fun tp!86605 () Bool)

(declare-fun b_and!40125 () Bool)

(assert (=> start!99062 (= tp!86605 b_and!40125)))

(declare-fun b!1163942 () Bool)

(declare-fun res!771911 () Bool)

(declare-fun e!661857 () Bool)

(assert (=> b!1163942 (=> (not res!771911) (not e!661857))))

(declare-datatypes ((array!75110 0))(
  ( (array!75111 (arr!36202 (Array (_ BitVec 32) (_ BitVec 64))) (size!36739 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75110)

(declare-datatypes ((List!25517 0))(
  ( (Nil!25514) (Cons!25513 (h!26722 (_ BitVec 64)) (t!37147 List!25517)) )
))
(declare-fun arrayNoDuplicates!0 (array!75110 (_ BitVec 32) List!25517) Bool)

(assert (=> b!1163942 (= res!771911 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25514))))

(declare-fun b!1163943 () Bool)

(declare-fun e!661860 () Bool)

(declare-fun e!661862 () Bool)

(declare-fun mapRes!45566 () Bool)

(assert (=> b!1163943 (= e!661860 (and e!661862 mapRes!45566))))

(declare-fun condMapEmpty!45566 () Bool)

(declare-datatypes ((V!44009 0))(
  ( (V!44010 (val!14637 Int)) )
))
(declare-datatypes ((ValueCell!13871 0))(
  ( (ValueCellFull!13871 (v!17275 V!44009)) (EmptyCell!13871) )
))
(declare-datatypes ((array!75112 0))(
  ( (array!75113 (arr!36203 (Array (_ BitVec 32) ValueCell!13871)) (size!36740 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75112)

(declare-fun mapDefault!45566 () ValueCell!13871)

