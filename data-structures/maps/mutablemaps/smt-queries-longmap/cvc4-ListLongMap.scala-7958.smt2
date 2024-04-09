; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98628 () Bool)

(assert start!98628)

(declare-fun b_free!24197 () Bool)

(declare-fun b_next!24197 () Bool)

(assert (=> start!98628 (= b_free!24197 (not b_next!24197))))

(declare-fun tp!85302 () Bool)

(declare-fun b_and!39257 () Bool)

(assert (=> start!98628 (= tp!85302 b_and!39257)))

(declare-fun b!1144011 () Bool)

(declare-fun res!762147 () Bool)

(declare-fun e!650818 () Bool)

(assert (=> b!1144011 (=> (not res!762147) (not e!650818))))

(declare-datatypes ((array!74262 0))(
  ( (array!74263 (arr!35778 (Array (_ BitVec 32) (_ BitVec 64))) (size!36315 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74262)

(declare-datatypes ((List!25141 0))(
  ( (Nil!25138) (Cons!25137 (h!26346 (_ BitVec 64)) (t!36337 List!25141)) )
))
(declare-fun arrayNoDuplicates!0 (array!74262 (_ BitVec 32) List!25141) Bool)

(assert (=> b!1144011 (= res!762147 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25138))))

(declare-fun b!1144012 () Bool)

(declare-fun res!762155 () Bool)

(assert (=> b!1144012 (=> (not res!762155) (not e!650818))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1144012 (= res!762155 (validMask!0 mask!1564))))

(declare-fun b!1144014 () Bool)

(declare-fun e!650821 () Bool)

(declare-fun e!650812 () Bool)

(declare-fun mapRes!44915 () Bool)

(assert (=> b!1144014 (= e!650821 (and e!650812 mapRes!44915))))

(declare-fun condMapEmpty!44915 () Bool)

(declare-datatypes ((V!43429 0))(
  ( (V!43430 (val!14420 Int)) )
))
(declare-datatypes ((ValueCell!13654 0))(
  ( (ValueCellFull!13654 (v!17058 V!43429)) (EmptyCell!13654) )
))
(declare-datatypes ((array!74264 0))(
  ( (array!74265 (arr!35779 (Array (_ BitVec 32) ValueCell!13654)) (size!36316 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74264)

(declare-fun mapDefault!44915 () ValueCell!13654)

