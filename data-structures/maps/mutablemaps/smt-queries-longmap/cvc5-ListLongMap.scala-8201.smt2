; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100108 () Bool)

(assert start!100108)

(declare-fun b_free!25651 () Bool)

(declare-fun b_next!25651 () Bool)

(assert (=> start!100108 (= b_free!25651 (not b_next!25651))))

(declare-fun tp!89667 () Bool)

(declare-fun b_and!42183 () Bool)

(assert (=> start!100108 (= tp!89667 b_and!42183)))

(declare-fun b!1192908 () Bool)

(declare-fun res!793700 () Bool)

(declare-fun e!678060 () Bool)

(assert (=> b!1192908 (=> (not res!793700) (not e!678060))))

(declare-datatypes ((array!77126 0))(
  ( (array!77127 (arr!37209 (Array (_ BitVec 32) (_ BitVec 64))) (size!37746 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77126)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1192908 (= res!793700 (= (select (arr!37209 _keys!1208) i!673) k!934))))

(declare-fun b!1192909 () Bool)

(declare-fun res!793706 () Bool)

(assert (=> b!1192909 (=> (not res!793706) (not e!678060))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77126 (_ BitVec 32)) Bool)

(assert (=> b!1192909 (= res!793706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192910 () Bool)

(declare-fun res!793708 () Bool)

(declare-fun e!678058 () Bool)

(assert (=> b!1192910 (=> (not res!793708) (not e!678058))))

(declare-fun lt!542366 () array!77126)

(declare-datatypes ((List!26376 0))(
  ( (Nil!26373) (Cons!26372 (h!27581 (_ BitVec 64)) (t!39026 List!26376)) )
))
(declare-fun arrayNoDuplicates!0 (array!77126 (_ BitVec 32) List!26376) Bool)

(assert (=> b!1192910 (= res!793708 (arrayNoDuplicates!0 lt!542366 #b00000000000000000000000000000000 Nil!26373))))

(declare-fun b!1192911 () Bool)

(declare-fun res!793705 () Bool)

(assert (=> b!1192911 (=> (not res!793705) (not e!678060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192911 (= res!793705 (validKeyInArray!0 k!934))))

(declare-fun b!1192912 () Bool)

(declare-fun res!793699 () Bool)

(assert (=> b!1192912 (=> (not res!793699) (not e!678060))))

(assert (=> b!1192912 (= res!793699 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37746 _keys!1208))))))

(declare-fun b!1192913 () Bool)

(declare-fun e!678056 () Bool)

(assert (=> b!1192913 (= e!678056 true)))

(declare-datatypes ((V!45369 0))(
  ( (V!45370 (val!15147 Int)) )
))
(declare-fun zeroValue!944 () V!45369)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14381 0))(
  ( (ValueCellFull!14381 (v!17786 V!45369)) (EmptyCell!14381) )
))
(declare-datatypes ((array!77128 0))(
  ( (array!77129 (arr!37210 (Array (_ BitVec 32) ValueCell!14381)) (size!37747 (_ BitVec 32))) )
))
(declare-fun lt!542370 () array!77128)

(declare-fun _values!996 () array!77128)

(declare-fun minValue!944 () V!45369)

(declare-datatypes ((tuple2!19618 0))(
  ( (tuple2!19619 (_1!9819 (_ BitVec 64)) (_2!9819 V!45369)) )
))
(declare-datatypes ((List!26377 0))(
  ( (Nil!26374) (Cons!26373 (h!27582 tuple2!19618) (t!39027 List!26377)) )
))
(declare-datatypes ((ListLongMap!17599 0))(
  ( (ListLongMap!17600 (toList!8815 List!26377)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5229 (array!77126 array!77128 (_ BitVec 32) (_ BitVec 32) V!45369 V!45369 (_ BitVec 32) Int) ListLongMap!17599)

(declare-fun -!1789 (ListLongMap!17599 (_ BitVec 64)) ListLongMap!17599)

(assert (=> b!1192913 (= (getCurrentListMapNoExtraKeys!5229 lt!542366 lt!542370 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1789 (getCurrentListMapNoExtraKeys!5229 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39514 0))(
  ( (Unit!39515) )
))
(declare-fun lt!542367 () Unit!39514)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!995 (array!77126 array!77128 (_ BitVec 32) (_ BitVec 32) V!45369 V!45369 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39514)

(assert (=> b!1192913 (= lt!542367 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!995 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47099 () Bool)

(declare-fun mapRes!47099 () Bool)

(declare-fun tp!89668 () Bool)

(declare-fun e!678057 () Bool)

(assert (=> mapNonEmpty!47099 (= mapRes!47099 (and tp!89668 e!678057))))

(declare-fun mapValue!47099 () ValueCell!14381)

(declare-fun mapKey!47099 () (_ BitVec 32))

(declare-fun mapRest!47099 () (Array (_ BitVec 32) ValueCell!14381))

(assert (=> mapNonEmpty!47099 (= (arr!37210 _values!996) (store mapRest!47099 mapKey!47099 mapValue!47099))))

(declare-fun b!1192914 () Bool)

(declare-fun tp_is_empty!30181 () Bool)

(assert (=> b!1192914 (= e!678057 tp_is_empty!30181)))

(declare-fun mapIsEmpty!47099 () Bool)

(assert (=> mapIsEmpty!47099 mapRes!47099))

(declare-fun b!1192915 () Bool)

(declare-fun res!793697 () Bool)

(assert (=> b!1192915 (=> (not res!793697) (not e!678060))))

(assert (=> b!1192915 (= res!793697 (and (= (size!37747 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37746 _keys!1208) (size!37747 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1192916 () Bool)

(declare-fun res!793701 () Bool)

(assert (=> b!1192916 (=> (not res!793701) (not e!678060))))

(assert (=> b!1192916 (= res!793701 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26373))))

(declare-fun b!1192917 () Bool)

(declare-fun res!793703 () Bool)

(assert (=> b!1192917 (=> (not res!793703) (not e!678060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192917 (= res!793703 (validMask!0 mask!1564))))

(declare-fun b!1192918 () Bool)

(declare-fun e!678061 () Bool)

(assert (=> b!1192918 (= e!678061 e!678056)))

(declare-fun res!793702 () Bool)

(assert (=> b!1192918 (=> res!793702 e!678056)))

(assert (=> b!1192918 (= res!793702 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542369 () ListLongMap!17599)

(assert (=> b!1192918 (= lt!542369 (getCurrentListMapNoExtraKeys!5229 lt!542366 lt!542370 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3168 (Int (_ BitVec 64)) V!45369)

(assert (=> b!1192918 (= lt!542370 (array!77129 (store (arr!37210 _values!996) i!673 (ValueCellFull!14381 (dynLambda!3168 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37747 _values!996)))))

(declare-fun lt!542365 () ListLongMap!17599)

(assert (=> b!1192918 (= lt!542365 (getCurrentListMapNoExtraKeys!5229 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192919 () Bool)

(assert (=> b!1192919 (= e!678058 (not e!678061))))

(declare-fun res!793698 () Bool)

(assert (=> b!1192919 (=> res!793698 e!678061)))

(assert (=> b!1192919 (= res!793698 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192919 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!542368 () Unit!39514)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77126 (_ BitVec 64) (_ BitVec 32)) Unit!39514)

(assert (=> b!1192919 (= lt!542368 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!793707 () Bool)

(assert (=> start!100108 (=> (not res!793707) (not e!678060))))

(assert (=> start!100108 (= res!793707 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37746 _keys!1208))))))

(assert (=> start!100108 e!678060))

(assert (=> start!100108 tp_is_empty!30181))

(declare-fun array_inv!28266 (array!77126) Bool)

(assert (=> start!100108 (array_inv!28266 _keys!1208)))

(assert (=> start!100108 true))

(assert (=> start!100108 tp!89667))

(declare-fun e!678059 () Bool)

(declare-fun array_inv!28267 (array!77128) Bool)

(assert (=> start!100108 (and (array_inv!28267 _values!996) e!678059)))

(declare-fun b!1192920 () Bool)

(declare-fun e!678055 () Bool)

(assert (=> b!1192920 (= e!678059 (and e!678055 mapRes!47099))))

(declare-fun condMapEmpty!47099 () Bool)

(declare-fun mapDefault!47099 () ValueCell!14381)

