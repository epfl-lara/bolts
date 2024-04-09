; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99140 () Bool)

(assert start!99140)

(declare-fun b_free!24709 () Bool)

(declare-fun b_next!24709 () Bool)

(assert (=> start!99140 (= b_free!24709 (not b_next!24709))))

(declare-fun tp!86838 () Bool)

(declare-fun b_and!40281 () Bool)

(assert (=> start!99140 (= tp!86838 b_and!40281)))

(declare-fun b!1165659 () Bool)

(declare-fun res!773195 () Bool)

(declare-fun e!662678 () Bool)

(assert (=> b!1165659 (=> (not res!773195) (not e!662678))))

(declare-datatypes ((array!75260 0))(
  ( (array!75261 (arr!36277 (Array (_ BitVec 32) (_ BitVec 64))) (size!36814 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75260)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44113 0))(
  ( (V!44114 (val!14676 Int)) )
))
(declare-datatypes ((ValueCell!13910 0))(
  ( (ValueCellFull!13910 (v!17314 V!44113)) (EmptyCell!13910) )
))
(declare-datatypes ((array!75262 0))(
  ( (array!75263 (arr!36278 (Array (_ BitVec 32) ValueCell!13910)) (size!36815 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75262)

(assert (=> b!1165659 (= res!773195 (and (= (size!36815 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36814 _keys!1208) (size!36815 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!45683 () Bool)

(declare-fun mapRes!45683 () Bool)

(assert (=> mapIsEmpty!45683 mapRes!45683))

(declare-fun b!1165660 () Bool)

(declare-fun e!662680 () Bool)

(declare-fun tp_is_empty!29239 () Bool)

(assert (=> b!1165660 (= e!662680 tp_is_empty!29239)))

(declare-fun b!1165661 () Bool)

(declare-fun res!773196 () Bool)

(assert (=> b!1165661 (=> (not res!773196) (not e!662678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75260 (_ BitVec 32)) Bool)

(assert (=> b!1165661 (= res!773196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165662 () Bool)

(declare-fun e!662681 () Bool)

(declare-fun e!662682 () Bool)

(assert (=> b!1165662 (= e!662681 (not e!662682))))

(declare-fun res!773191 () Bool)

(assert (=> b!1165662 (=> res!773191 e!662682)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165662 (= res!773191 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165662 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38358 0))(
  ( (Unit!38359) )
))
(declare-fun lt!524935 () Unit!38358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75260 (_ BitVec 64) (_ BitVec 32)) Unit!38358)

(assert (=> b!1165662 (= lt!524935 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1165663 () Bool)

(declare-fun res!773188 () Bool)

(assert (=> b!1165663 (=> (not res!773188) (not e!662678))))

(declare-datatypes ((List!25570 0))(
  ( (Nil!25567) (Cons!25566 (h!26775 (_ BitVec 64)) (t!37278 List!25570)) )
))
(declare-fun arrayNoDuplicates!0 (array!75260 (_ BitVec 32) List!25570) Bool)

(assert (=> b!1165663 (= res!773188 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25567))))

(declare-fun b!1165664 () Bool)

(declare-fun res!773197 () Bool)

(assert (=> b!1165664 (=> (not res!773197) (not e!662681))))

(declare-fun lt!524934 () array!75260)

(assert (=> b!1165664 (= res!773197 (arrayNoDuplicates!0 lt!524934 #b00000000000000000000000000000000 Nil!25567))))

(declare-fun res!773192 () Bool)

(assert (=> start!99140 (=> (not res!773192) (not e!662678))))

(assert (=> start!99140 (= res!773192 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36814 _keys!1208))))))

(assert (=> start!99140 e!662678))

(assert (=> start!99140 tp_is_empty!29239))

(declare-fun array_inv!27620 (array!75260) Bool)

(assert (=> start!99140 (array_inv!27620 _keys!1208)))

(assert (=> start!99140 true))

(assert (=> start!99140 tp!86838))

(declare-fun e!662677 () Bool)

(declare-fun array_inv!27621 (array!75262) Bool)

(assert (=> start!99140 (and (array_inv!27621 _values!996) e!662677)))

(declare-fun b!1165658 () Bool)

(assert (=> b!1165658 (= e!662678 e!662681)))

(declare-fun res!773190 () Bool)

(assert (=> b!1165658 (=> (not res!773190) (not e!662681))))

(assert (=> b!1165658 (= res!773190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524934 mask!1564))))

(assert (=> b!1165658 (= lt!524934 (array!75261 (store (arr!36277 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36814 _keys!1208)))))

(declare-fun b!1165665 () Bool)

(declare-fun res!773193 () Bool)

(assert (=> b!1165665 (=> (not res!773193) (not e!662678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165665 (= res!773193 (validMask!0 mask!1564))))

(declare-fun b!1165666 () Bool)

(declare-fun e!662679 () Bool)

(assert (=> b!1165666 (= e!662679 tp_is_empty!29239)))

(declare-fun b!1165667 () Bool)

(declare-fun res!773194 () Bool)

(assert (=> b!1165667 (=> (not res!773194) (not e!662678))))

(assert (=> b!1165667 (= res!773194 (= (select (arr!36277 _keys!1208) i!673) k!934))))

(declare-fun b!1165668 () Bool)

(assert (=> b!1165668 (= e!662682 true)))

(declare-fun zeroValue!944 () V!44113)

(declare-datatypes ((tuple2!18794 0))(
  ( (tuple2!18795 (_1!9407 (_ BitVec 64)) (_2!9407 V!44113)) )
))
(declare-datatypes ((List!25571 0))(
  ( (Nil!25568) (Cons!25567 (h!26776 tuple2!18794) (t!37279 List!25571)) )
))
(declare-datatypes ((ListLongMap!16775 0))(
  ( (ListLongMap!16776 (toList!8403 List!25571)) )
))
(declare-fun lt!524937 () ListLongMap!16775)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44113)

(declare-fun getCurrentListMapNoExtraKeys!4836 (array!75260 array!75262 (_ BitVec 32) (_ BitVec 32) V!44113 V!44113 (_ BitVec 32) Int) ListLongMap!16775)

(declare-fun dynLambda!2833 (Int (_ BitVec 64)) V!44113)

(assert (=> b!1165668 (= lt!524937 (getCurrentListMapNoExtraKeys!4836 lt!524934 (array!75263 (store (arr!36278 _values!996) i!673 (ValueCellFull!13910 (dynLambda!2833 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36815 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524936 () ListLongMap!16775)

(assert (=> b!1165668 (= lt!524936 (getCurrentListMapNoExtraKeys!4836 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165669 () Bool)

(assert (=> b!1165669 (= e!662677 (and e!662679 mapRes!45683))))

(declare-fun condMapEmpty!45683 () Bool)

(declare-fun mapDefault!45683 () ValueCell!13910)

