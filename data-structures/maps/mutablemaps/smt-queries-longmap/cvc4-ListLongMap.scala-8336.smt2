; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101510 () Bool)

(assert start!101510)

(declare-fun b_free!26291 () Bool)

(declare-fun b_next!26291 () Bool)

(assert (=> start!101510 (= b_free!26291 (not b_next!26291))))

(declare-fun tp!91908 () Bool)

(declare-fun b_and!43781 () Bool)

(assert (=> start!101510 (= tp!91908 b_and!43781)))

(declare-fun b!1219706 () Bool)

(declare-fun e!692603 () Bool)

(declare-fun e!692597 () Bool)

(assert (=> b!1219706 (= e!692603 e!692597)))

(declare-fun res!810252 () Bool)

(assert (=> b!1219706 (=> res!810252 e!692597)))

(declare-datatypes ((array!78742 0))(
  ( (array!78743 (arr!37998 (Array (_ BitVec 32) (_ BitVec 64))) (size!38535 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78742)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1219706 (= res!810252 (not (= (select (arr!37998 _keys!1208) from!1455) k!934)))))

(declare-fun b!1219707 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!78742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219707 (= e!692597 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!48379 () Bool)

(declare-fun mapRes!48379 () Bool)

(assert (=> mapIsEmpty!48379 mapRes!48379))

(declare-fun b!1219708 () Bool)

(declare-fun res!810247 () Bool)

(declare-fun e!692602 () Bool)

(assert (=> b!1219708 (=> (not res!810247) (not e!692602))))

(declare-datatypes ((List!26971 0))(
  ( (Nil!26968) (Cons!26967 (h!28176 (_ BitVec 64)) (t!40249 List!26971)) )
))
(declare-fun arrayNoDuplicates!0 (array!78742 (_ BitVec 32) List!26971) Bool)

(assert (=> b!1219708 (= res!810247 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26968))))

(declare-fun b!1219709 () Bool)

(declare-fun res!810243 () Bool)

(assert (=> b!1219709 (=> (not res!810243) (not e!692602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219709 (= res!810243 (validKeyInArray!0 k!934))))

(declare-fun b!1219710 () Bool)

(declare-fun res!810244 () Bool)

(assert (=> b!1219710 (=> (not res!810244) (not e!692602))))

(assert (=> b!1219710 (= res!810244 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38535 _keys!1208))))))

(declare-fun res!810248 () Bool)

(assert (=> start!101510 (=> (not res!810248) (not e!692602))))

(assert (=> start!101510 (= res!810248 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38535 _keys!1208))))))

(assert (=> start!101510 e!692602))

(declare-fun tp_is_empty!30995 () Bool)

(assert (=> start!101510 tp_is_empty!30995))

(declare-fun array_inv!28830 (array!78742) Bool)

(assert (=> start!101510 (array_inv!28830 _keys!1208)))

(assert (=> start!101510 true))

(assert (=> start!101510 tp!91908))

(declare-datatypes ((V!46453 0))(
  ( (V!46454 (val!15554 Int)) )
))
(declare-datatypes ((ValueCell!14788 0))(
  ( (ValueCellFull!14788 (v!18212 V!46453)) (EmptyCell!14788) )
))
(declare-datatypes ((array!78744 0))(
  ( (array!78745 (arr!37999 (Array (_ BitVec 32) ValueCell!14788)) (size!38536 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78744)

(declare-fun e!692599 () Bool)

(declare-fun array_inv!28831 (array!78744) Bool)

(assert (=> start!101510 (and (array_inv!28831 _values!996) e!692599)))

(declare-fun b!1219711 () Bool)

(declare-fun e!692593 () Bool)

(assert (=> b!1219711 (= e!692593 true)))

(assert (=> b!1219711 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!40338 0))(
  ( (Unit!40339) )
))
(declare-fun lt!554565 () Unit!40338)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78742 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40338)

(assert (=> b!1219711 (= lt!554565 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1219712 () Bool)

(declare-fun e!692604 () Bool)

(assert (=> b!1219712 (= e!692602 e!692604)))

(declare-fun res!810255 () Bool)

(assert (=> b!1219712 (=> (not res!810255) (not e!692604))))

(declare-fun lt!554569 () array!78742)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78742 (_ BitVec 32)) Bool)

(assert (=> b!1219712 (= res!810255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554569 mask!1564))))

(assert (=> b!1219712 (= lt!554569 (array!78743 (store (arr!37998 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38535 _keys!1208)))))

(declare-fun b!1219713 () Bool)

(declare-fun res!810251 () Bool)

(assert (=> b!1219713 (=> (not res!810251) (not e!692602))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1219713 (= res!810251 (and (= (size!38536 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38535 _keys!1208) (size!38536 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219714 () Bool)

(declare-fun res!810256 () Bool)

(assert (=> b!1219714 (=> (not res!810256) (not e!692602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219714 (= res!810256 (validMask!0 mask!1564))))

(declare-fun b!1219715 () Bool)

(declare-fun e!692600 () Bool)

(declare-fun e!692594 () Bool)

(assert (=> b!1219715 (= e!692600 e!692594)))

(declare-fun res!810254 () Bool)

(assert (=> b!1219715 (=> res!810254 e!692594)))

(assert (=> b!1219715 (= res!810254 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46453)

(declare-fun lt!554563 () array!78744)

(declare-datatypes ((tuple2!20152 0))(
  ( (tuple2!20153 (_1!10086 (_ BitVec 64)) (_2!10086 V!46453)) )
))
(declare-datatypes ((List!26972 0))(
  ( (Nil!26969) (Cons!26968 (h!28177 tuple2!20152) (t!40250 List!26972)) )
))
(declare-datatypes ((ListLongMap!18133 0))(
  ( (ListLongMap!18134 (toList!9082 List!26972)) )
))
(declare-fun lt!554568 () ListLongMap!18133)

(declare-fun minValue!944 () V!46453)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5482 (array!78742 array!78744 (_ BitVec 32) (_ BitVec 32) V!46453 V!46453 (_ BitVec 32) Int) ListLongMap!18133)

(assert (=> b!1219715 (= lt!554568 (getCurrentListMapNoExtraKeys!5482 lt!554569 lt!554563 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554562 () V!46453)

(assert (=> b!1219715 (= lt!554563 (array!78745 (store (arr!37999 _values!996) i!673 (ValueCellFull!14788 lt!554562)) (size!38536 _values!996)))))

(declare-fun dynLambda!3384 (Int (_ BitVec 64)) V!46453)

(assert (=> b!1219715 (= lt!554562 (dynLambda!3384 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554561 () ListLongMap!18133)

(assert (=> b!1219715 (= lt!554561 (getCurrentListMapNoExtraKeys!5482 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1219716 () Bool)

(declare-fun e!692595 () Bool)

(assert (=> b!1219716 (= e!692599 (and e!692595 mapRes!48379))))

(declare-fun condMapEmpty!48379 () Bool)

(declare-fun mapDefault!48379 () ValueCell!14788)

