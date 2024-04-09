; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99176 () Bool)

(assert start!99176)

(declare-fun b_free!24745 () Bool)

(declare-fun b_next!24745 () Bool)

(assert (=> start!99176 (= b_free!24745 (not b_next!24745))))

(declare-fun tp!86946 () Bool)

(declare-fun b_and!40353 () Bool)

(assert (=> start!99176 (= tp!86946 b_and!40353)))

(declare-fun b!1166497 () Bool)

(declare-fun res!773830 () Bool)

(declare-fun e!663105 () Bool)

(assert (=> b!1166497 (=> (not res!773830) (not e!663105))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75328 0))(
  ( (array!75329 (arr!36311 (Array (_ BitVec 32) (_ BitVec 64))) (size!36848 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75328)

(assert (=> b!1166497 (= res!773830 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36848 _keys!1208))))))

(declare-fun b!1166498 () Bool)

(declare-fun res!773840 () Bool)

(declare-fun e!663108 () Bool)

(assert (=> b!1166498 (=> (not res!773840) (not e!663108))))

(declare-fun lt!525244 () array!75328)

(declare-datatypes ((List!25596 0))(
  ( (Nil!25593) (Cons!25592 (h!26801 (_ BitVec 64)) (t!37340 List!25596)) )
))
(declare-fun arrayNoDuplicates!0 (array!75328 (_ BitVec 32) List!25596) Bool)

(assert (=> b!1166498 (= res!773840 (arrayNoDuplicates!0 lt!525244 #b00000000000000000000000000000000 Nil!25593))))

(declare-fun b!1166499 () Bool)

(declare-fun e!663107 () Bool)

(declare-fun e!663103 () Bool)

(assert (=> b!1166499 (= e!663107 e!663103)))

(declare-fun res!773835 () Bool)

(assert (=> b!1166499 (=> res!773835 e!663103)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1166499 (= res!773835 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44161 0))(
  ( (V!44162 (val!14694 Int)) )
))
(declare-fun zeroValue!944 () V!44161)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13928 0))(
  ( (ValueCellFull!13928 (v!17332 V!44161)) (EmptyCell!13928) )
))
(declare-datatypes ((array!75330 0))(
  ( (array!75331 (arr!36312 (Array (_ BitVec 32) ValueCell!13928)) (size!36849 (_ BitVec 32))) )
))
(declare-fun lt!525245 () array!75330)

(declare-datatypes ((tuple2!18820 0))(
  ( (tuple2!18821 (_1!9420 (_ BitVec 64)) (_2!9420 V!44161)) )
))
(declare-datatypes ((List!25597 0))(
  ( (Nil!25594) (Cons!25593 (h!26802 tuple2!18820) (t!37341 List!25597)) )
))
(declare-datatypes ((ListLongMap!16801 0))(
  ( (ListLongMap!16802 (toList!8416 List!25597)) )
))
(declare-fun lt!525248 () ListLongMap!16801)

(declare-fun minValue!944 () V!44161)

(declare-fun getCurrentListMapNoExtraKeys!4849 (array!75328 array!75330 (_ BitVec 32) (_ BitVec 32) V!44161 V!44161 (_ BitVec 32) Int) ListLongMap!16801)

(assert (=> b!1166499 (= lt!525248 (getCurrentListMapNoExtraKeys!4849 lt!525244 lt!525245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75330)

(declare-fun dynLambda!2844 (Int (_ BitVec 64)) V!44161)

(assert (=> b!1166499 (= lt!525245 (array!75331 (store (arr!36312 _values!996) i!673 (ValueCellFull!13928 (dynLambda!2844 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36849 _values!996)))))

(declare-fun lt!525249 () ListLongMap!16801)

(assert (=> b!1166499 (= lt!525249 (getCurrentListMapNoExtraKeys!4849 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166500 () Bool)

(declare-fun e!663102 () Bool)

(declare-fun tp_is_empty!29275 () Bool)

(assert (=> b!1166500 (= e!663102 tp_is_empty!29275)))

(declare-fun res!773829 () Bool)

(assert (=> start!99176 (=> (not res!773829) (not e!663105))))

(assert (=> start!99176 (= res!773829 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36848 _keys!1208))))))

(assert (=> start!99176 e!663105))

(assert (=> start!99176 tp_is_empty!29275))

(declare-fun array_inv!27642 (array!75328) Bool)

(assert (=> start!99176 (array_inv!27642 _keys!1208)))

(assert (=> start!99176 true))

(assert (=> start!99176 tp!86946))

(declare-fun e!663106 () Bool)

(declare-fun array_inv!27643 (array!75330) Bool)

(assert (=> start!99176 (and (array_inv!27643 _values!996) e!663106)))

(declare-fun b!1166501 () Bool)

(assert (=> b!1166501 (= e!663108 (not e!663107))))

(declare-fun res!773832 () Bool)

(assert (=> b!1166501 (=> res!773832 e!663107)))

(assert (=> b!1166501 (= res!773832 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166501 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38386 0))(
  ( (Unit!38387) )
))
(declare-fun lt!525246 () Unit!38386)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75328 (_ BitVec 64) (_ BitVec 32)) Unit!38386)

(assert (=> b!1166501 (= lt!525246 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!45737 () Bool)

(declare-fun mapRes!45737 () Bool)

(declare-fun tp!86947 () Bool)

(declare-fun e!663104 () Bool)

(assert (=> mapNonEmpty!45737 (= mapRes!45737 (and tp!86947 e!663104))))

(declare-fun mapRest!45737 () (Array (_ BitVec 32) ValueCell!13928))

(declare-fun mapValue!45737 () ValueCell!13928)

(declare-fun mapKey!45737 () (_ BitVec 32))

(assert (=> mapNonEmpty!45737 (= (arr!36312 _values!996) (store mapRest!45737 mapKey!45737 mapValue!45737))))

(declare-fun b!1166502 () Bool)

(assert (=> b!1166502 (= e!663106 (and e!663102 mapRes!45737))))

(declare-fun condMapEmpty!45737 () Bool)

(declare-fun mapDefault!45737 () ValueCell!13928)

