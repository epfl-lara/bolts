; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98586 () Bool)

(assert start!98586)

(declare-fun b_free!24155 () Bool)

(declare-fun b_next!24155 () Bool)

(assert (=> start!98586 (= b_free!24155 (not b_next!24155))))

(declare-fun tp!85176 () Bool)

(declare-fun b_and!39173 () Bool)

(assert (=> start!98586 (= tp!85176 b_and!39173)))

(declare-fun b!1142142 () Bool)

(declare-fun res!761273 () Bool)

(declare-fun e!649812 () Bool)

(assert (=> b!1142142 (=> (not res!761273) (not e!649812))))

(declare-datatypes ((array!74180 0))(
  ( (array!74181 (arr!35737 (Array (_ BitVec 32) (_ BitVec 64))) (size!36274 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74180)

(declare-datatypes ((List!25104 0))(
  ( (Nil!25101) (Cons!25100 (h!26309 (_ BitVec 64)) (t!36258 List!25104)) )
))
(declare-fun arrayNoDuplicates!0 (array!74180 (_ BitVec 32) List!25104) Bool)

(assert (=> b!1142142 (= res!761273 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25101))))

(declare-fun b!1142143 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!649815 () Bool)

(declare-fun arrayContainsKey!0 (array!74180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142143 (= e!649815 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!51398 () Bool)

(declare-fun call!51405 () Bool)

(declare-fun call!51406 () Bool)

(assert (=> bm!51398 (= call!51405 call!51406)))

(declare-fun b!1142144 () Bool)

(declare-datatypes ((Unit!37393 0))(
  ( (Unit!37394) )
))
(declare-fun e!649811 () Unit!37393)

(declare-fun Unit!37395 () Unit!37393)

(assert (=> b!1142144 (= e!649811 Unit!37395)))

(declare-fun res!761275 () Bool)

(assert (=> start!98586 (=> (not res!761275) (not e!649812))))

(assert (=> start!98586 (= res!761275 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36274 _keys!1208))))))

(assert (=> start!98586 e!649812))

(declare-fun tp_is_empty!28685 () Bool)

(assert (=> start!98586 tp_is_empty!28685))

(declare-fun array_inv!27262 (array!74180) Bool)

(assert (=> start!98586 (array_inv!27262 _keys!1208)))

(assert (=> start!98586 true))

(assert (=> start!98586 tp!85176))

(declare-datatypes ((V!43373 0))(
  ( (V!43374 (val!14399 Int)) )
))
(declare-datatypes ((ValueCell!13633 0))(
  ( (ValueCellFull!13633 (v!17037 V!43373)) (EmptyCell!13633) )
))
(declare-datatypes ((array!74182 0))(
  ( (array!74183 (arr!35738 (Array (_ BitVec 32) ValueCell!13633)) (size!36275 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74182)

(declare-fun e!649807 () Bool)

(declare-fun array_inv!27263 (array!74182) Bool)

(assert (=> start!98586 (and (array_inv!27263 _values!996) e!649807)))

(declare-fun zeroValue!944 () V!43373)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18304 0))(
  ( (tuple2!18305 (_1!9162 (_ BitVec 64)) (_2!9162 V!43373)) )
))
(declare-datatypes ((List!25105 0))(
  ( (Nil!25102) (Cons!25101 (h!26310 tuple2!18304) (t!36259 List!25105)) )
))
(declare-datatypes ((ListLongMap!16285 0))(
  ( (ListLongMap!16286 (toList!8158 List!25105)) )
))
(declare-fun call!51404 () ListLongMap!16285)

(declare-fun bm!51399 () Bool)

(declare-fun minValue!944 () V!43373)

(declare-fun getCurrentListMapNoExtraKeys!4601 (array!74180 array!74182 (_ BitVec 32) (_ BitVec 32) V!43373 V!43373 (_ BitVec 32) Int) ListLongMap!16285)

(assert (=> bm!51399 (= call!51404 (getCurrentListMapNoExtraKeys!4601 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142145 () Bool)

(declare-fun e!649814 () Bool)

(declare-fun mapRes!44852 () Bool)

(assert (=> b!1142145 (= e!649807 (and e!649814 mapRes!44852))))

(declare-fun condMapEmpty!44852 () Bool)

(declare-fun mapDefault!44852 () ValueCell!13633)

