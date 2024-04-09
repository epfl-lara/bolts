; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99144 () Bool)

(assert start!99144)

(declare-fun b_free!24713 () Bool)

(declare-fun b_next!24713 () Bool)

(assert (=> start!99144 (= b_free!24713 (not b_next!24713))))

(declare-fun tp!86851 () Bool)

(declare-fun b_and!40289 () Bool)

(assert (=> start!99144 (= tp!86851 b_and!40289)))

(declare-fun b!1165746 () Bool)

(declare-fun e!662720 () Bool)

(declare-fun e!662722 () Bool)

(assert (=> b!1165746 (= e!662720 e!662722)))

(declare-fun res!773254 () Bool)

(assert (=> b!1165746 (=> (not res!773254) (not e!662722))))

(declare-datatypes ((array!75268 0))(
  ( (array!75269 (arr!36281 (Array (_ BitVec 32) (_ BitVec 64))) (size!36818 (_ BitVec 32))) )
))
(declare-fun lt!524961 () array!75268)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75268 (_ BitVec 32)) Bool)

(assert (=> b!1165746 (= res!773254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524961 mask!1564))))

(declare-fun _keys!1208 () array!75268)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165746 (= lt!524961 (array!75269 (store (arr!36281 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36818 _keys!1208)))))

(declare-fun b!1165747 () Bool)

(declare-fun res!773257 () Bool)

(assert (=> b!1165747 (=> (not res!773257) (not e!662722))))

(declare-datatypes ((List!25574 0))(
  ( (Nil!25571) (Cons!25570 (h!26779 (_ BitVec 64)) (t!37286 List!25574)) )
))
(declare-fun arrayNoDuplicates!0 (array!75268 (_ BitVec 32) List!25574) Bool)

(assert (=> b!1165747 (= res!773257 (arrayNoDuplicates!0 lt!524961 #b00000000000000000000000000000000 Nil!25571))))

(declare-fun mapNonEmpty!45689 () Bool)

(declare-fun mapRes!45689 () Bool)

(declare-fun tp!86850 () Bool)

(declare-fun e!662721 () Bool)

(assert (=> mapNonEmpty!45689 (= mapRes!45689 (and tp!86850 e!662721))))

(declare-datatypes ((V!44117 0))(
  ( (V!44118 (val!14678 Int)) )
))
(declare-datatypes ((ValueCell!13912 0))(
  ( (ValueCellFull!13912 (v!17316 V!44117)) (EmptyCell!13912) )
))
(declare-fun mapRest!45689 () (Array (_ BitVec 32) ValueCell!13912))

(declare-fun mapValue!45689 () ValueCell!13912)

(declare-datatypes ((array!75270 0))(
  ( (array!75271 (arr!36282 (Array (_ BitVec 32) ValueCell!13912)) (size!36819 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75270)

(declare-fun mapKey!45689 () (_ BitVec 32))

(assert (=> mapNonEmpty!45689 (= (arr!36282 _values!996) (store mapRest!45689 mapKey!45689 mapValue!45689))))

(declare-fun b!1165748 () Bool)

(declare-fun e!662719 () Bool)

(declare-fun e!662718 () Bool)

(assert (=> b!1165748 (= e!662719 (and e!662718 mapRes!45689))))

(declare-fun condMapEmpty!45689 () Bool)

(declare-fun mapDefault!45689 () ValueCell!13912)

