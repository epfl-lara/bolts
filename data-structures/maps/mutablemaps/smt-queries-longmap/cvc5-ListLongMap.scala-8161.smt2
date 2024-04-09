; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99868 () Bool)

(assert start!99868)

(declare-fun b_free!25411 () Bool)

(declare-fun b_next!25411 () Bool)

(assert (=> start!99868 (= b_free!25411 (not b_next!25411))))

(declare-fun tp!88947 () Bool)

(declare-fun b_and!41703 () Bool)

(assert (=> start!99868 (= tp!88947 b_and!41703)))

(declare-fun mapNonEmpty!46739 () Bool)

(declare-fun mapRes!46739 () Bool)

(declare-fun tp!88948 () Bool)

(declare-fun e!674939 () Bool)

(assert (=> mapNonEmpty!46739 (= mapRes!46739 (and tp!88948 e!674939))))

(declare-datatypes ((V!45049 0))(
  ( (V!45050 (val!15027 Int)) )
))
(declare-datatypes ((ValueCell!14261 0))(
  ( (ValueCellFull!14261 (v!17666 V!45049)) (EmptyCell!14261) )
))
(declare-fun mapRest!46739 () (Array (_ BitVec 32) ValueCell!14261))

(declare-fun mapValue!46739 () ValueCell!14261)

(declare-datatypes ((array!76650 0))(
  ( (array!76651 (arr!36971 (Array (_ BitVec 32) ValueCell!14261)) (size!37508 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76650)

(declare-fun mapKey!46739 () (_ BitVec 32))

(assert (=> mapNonEmpty!46739 (= (arr!36971 _values!996) (store mapRest!46739 mapKey!46739 mapValue!46739))))

(declare-fun b!1186963 () Bool)

(declare-fun res!789198 () Bool)

(declare-fun e!674931 () Bool)

(assert (=> b!1186963 (=> (not res!789198) (not e!674931))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186963 (= res!789198 (validMask!0 mask!1564))))

(declare-fun b!1186964 () Bool)

(declare-fun res!789203 () Bool)

(assert (=> b!1186964 (=> (not res!789203) (not e!674931))))

(declare-datatypes ((array!76652 0))(
  ( (array!76653 (arr!36972 (Array (_ BitVec 32) (_ BitVec 64))) (size!37509 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76652)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1186964 (= res!789203 (= (select (arr!36972 _keys!1208) i!673) k!934))))

(declare-fun b!1186965 () Bool)

(declare-fun res!789202 () Bool)

(assert (=> b!1186965 (=> (not res!789202) (not e!674931))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186965 (= res!789202 (validKeyInArray!0 k!934))))

(declare-fun b!1186966 () Bool)

(declare-fun res!789194 () Bool)

(assert (=> b!1186966 (=> (not res!789194) (not e!674931))))

(assert (=> b!1186966 (= res!789194 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37509 _keys!1208))))))

(declare-fun b!1186967 () Bool)

(declare-fun e!674937 () Bool)

(assert (=> b!1186967 (= e!674937 true)))

(declare-datatypes ((tuple2!19416 0))(
  ( (tuple2!19417 (_1!9718 (_ BitVec 64)) (_2!9718 V!45049)) )
))
(declare-datatypes ((List!26175 0))(
  ( (Nil!26172) (Cons!26171 (h!27380 tuple2!19416) (t!38585 List!26175)) )
))
(declare-datatypes ((ListLongMap!17397 0))(
  ( (ListLongMap!17398 (toList!8714 List!26175)) )
))
(declare-fun lt!539412 () ListLongMap!17397)

(declare-fun lt!539413 () ListLongMap!17397)

(declare-fun -!1699 (ListLongMap!17397 (_ BitVec 64)) ListLongMap!17397)

(assert (=> b!1186967 (= (-!1699 lt!539412 k!934) lt!539413)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!539428 () V!45049)

(declare-fun lt!539426 () ListLongMap!17397)

(declare-datatypes ((Unit!39281 0))(
  ( (Unit!39282) )
))
(declare-fun lt!539422 () Unit!39281)

(declare-fun addRemoveCommutativeForDiffKeys!206 (ListLongMap!17397 (_ BitVec 64) V!45049 (_ BitVec 64)) Unit!39281)

(assert (=> b!1186967 (= lt!539422 (addRemoveCommutativeForDiffKeys!206 lt!539426 (select (arr!36972 _keys!1208) from!1455) lt!539428 k!934))))

(declare-fun lt!539429 () ListLongMap!17397)

(declare-fun lt!539420 () ListLongMap!17397)

(declare-fun lt!539418 () ListLongMap!17397)

(assert (=> b!1186967 (and (= lt!539418 lt!539412) (= lt!539429 lt!539420))))

(declare-fun lt!539416 () tuple2!19416)

(declare-fun +!3916 (ListLongMap!17397 tuple2!19416) ListLongMap!17397)

(assert (=> b!1186967 (= lt!539412 (+!3916 lt!539426 lt!539416))))

(assert (=> b!1186967 (not (= (select (arr!36972 _keys!1208) from!1455) k!934))))

(declare-fun lt!539427 () Unit!39281)

(declare-fun e!674941 () Unit!39281)

(assert (=> b!1186967 (= lt!539427 e!674941)))

(declare-fun c!117188 () Bool)

(assert (=> b!1186967 (= c!117188 (= (select (arr!36972 _keys!1208) from!1455) k!934))))

(declare-fun e!674938 () Bool)

(assert (=> b!1186967 e!674938))

(declare-fun res!789201 () Bool)

(assert (=> b!1186967 (=> (not res!789201) (not e!674938))))

(declare-fun lt!539424 () ListLongMap!17397)

(assert (=> b!1186967 (= res!789201 (= lt!539424 lt!539413))))

(assert (=> b!1186967 (= lt!539413 (+!3916 lt!539429 lt!539416))))

(assert (=> b!1186967 (= lt!539416 (tuple2!19417 (select (arr!36972 _keys!1208) from!1455) lt!539428))))

(declare-fun lt!539421 () V!45049)

(declare-fun get!18976 (ValueCell!14261 V!45049) V!45049)

(assert (=> b!1186967 (= lt!539428 (get!18976 (select (arr!36971 _values!996) from!1455) lt!539421))))

(declare-fun b!1186968 () Bool)

(declare-fun Unit!39283 () Unit!39281)

(assert (=> b!1186968 (= e!674941 Unit!39283)))

(declare-fun lt!539419 () Unit!39281)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76652 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39281)

(assert (=> b!1186968 (= lt!539419 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186968 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539425 () Unit!39281)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76652 (_ BitVec 32) (_ BitVec 32)) Unit!39281)

(assert (=> b!1186968 (= lt!539425 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26176 0))(
  ( (Nil!26173) (Cons!26172 (h!27381 (_ BitVec 64)) (t!38586 List!26176)) )
))
(declare-fun arrayNoDuplicates!0 (array!76652 (_ BitVec 32) List!26176) Bool)

(assert (=> b!1186968 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26173)))

(declare-fun lt!539423 () Unit!39281)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76652 (_ BitVec 64) (_ BitVec 32) List!26176) Unit!39281)

(assert (=> b!1186968 (= lt!539423 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26173))))

(assert (=> b!1186968 false))

(declare-fun b!1186969 () Bool)

(declare-fun res!789205 () Bool)

(declare-fun e!674935 () Bool)

(assert (=> b!1186969 (=> (not res!789205) (not e!674935))))

(declare-fun lt!539415 () array!76652)

(assert (=> b!1186969 (= res!789205 (arrayNoDuplicates!0 lt!539415 #b00000000000000000000000000000000 Nil!26173))))

(declare-fun b!1186970 () Bool)

(declare-fun Unit!39284 () Unit!39281)

(assert (=> b!1186970 (= e!674941 Unit!39284)))

(declare-fun b!1186971 () Bool)

(declare-fun res!789196 () Bool)

(assert (=> b!1186971 (=> (not res!789196) (not e!674931))))

(assert (=> b!1186971 (= res!789196 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26173))))

(declare-fun res!789200 () Bool)

(assert (=> start!99868 (=> (not res!789200) (not e!674931))))

(assert (=> start!99868 (= res!789200 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37509 _keys!1208))))))

(assert (=> start!99868 e!674931))

(declare-fun tp_is_empty!29941 () Bool)

(assert (=> start!99868 tp_is_empty!29941))

(declare-fun array_inv!28092 (array!76652) Bool)

(assert (=> start!99868 (array_inv!28092 _keys!1208)))

(assert (=> start!99868 true))

(assert (=> start!99868 tp!88947))

(declare-fun e!674934 () Bool)

(declare-fun array_inv!28093 (array!76650) Bool)

(assert (=> start!99868 (and (array_inv!28093 _values!996) e!674934)))

(declare-fun b!1186972 () Bool)

(declare-fun e!674940 () Bool)

(assert (=> b!1186972 (= e!674934 (and e!674940 mapRes!46739))))

(declare-fun condMapEmpty!46739 () Bool)

(declare-fun mapDefault!46739 () ValueCell!14261)

