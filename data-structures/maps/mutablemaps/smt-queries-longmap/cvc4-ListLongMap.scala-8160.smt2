; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99866 () Bool)

(assert start!99866)

(declare-fun b_free!25409 () Bool)

(declare-fun b_next!25409 () Bool)

(assert (=> start!99866 (= b_free!25409 (not b_next!25409))))

(declare-fun tp!88942 () Bool)

(declare-fun b_and!41699 () Bool)

(assert (=> start!99866 (= tp!88942 b_and!41699)))

(declare-fun b!1186901 () Bool)

(declare-datatypes ((Unit!39277 0))(
  ( (Unit!39278) )
))
(declare-fun e!674899 () Unit!39277)

(declare-fun Unit!39279 () Unit!39277)

(assert (=> b!1186901 (= e!674899 Unit!39279)))

(declare-fun b!1186902 () Bool)

(declare-fun e!674902 () Bool)

(declare-fun e!674898 () Bool)

(assert (=> b!1186902 (= e!674902 e!674898)))

(declare-fun res!789162 () Bool)

(assert (=> b!1186902 (=> res!789162 e!674898)))

(declare-datatypes ((array!76646 0))(
  ( (array!76647 (arr!36969 (Array (_ BitVec 32) (_ BitVec 64))) (size!37506 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76646)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1186902 (= res!789162 (not (= (select (arr!36969 _keys!1208) from!1455) k!934)))))

(declare-fun b!1186903 () Bool)

(declare-fun res!789152 () Bool)

(declare-fun e!674897 () Bool)

(assert (=> b!1186903 (=> (not res!789152) (not e!674897))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1186903 (= res!789152 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37506 _keys!1208))))))

(declare-fun b!1186904 () Bool)

(declare-fun res!789154 () Bool)

(assert (=> b!1186904 (=> (not res!789154) (not e!674897))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76646 (_ BitVec 32)) Bool)

(assert (=> b!1186904 (= res!789154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186905 () Bool)

(declare-fun Unit!39280 () Unit!39277)

(assert (=> b!1186905 (= e!674899 Unit!39280)))

(declare-fun lt!539372 () Unit!39277)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76646 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39277)

(assert (=> b!1186905 (= lt!539372 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186905 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539358 () Unit!39277)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76646 (_ BitVec 32) (_ BitVec 32)) Unit!39277)

(assert (=> b!1186905 (= lt!539358 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26173 0))(
  ( (Nil!26170) (Cons!26169 (h!27378 (_ BitVec 64)) (t!38581 List!26173)) )
))
(declare-fun arrayNoDuplicates!0 (array!76646 (_ BitVec 32) List!26173) Bool)

(assert (=> b!1186905 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26170)))

(declare-fun lt!539361 () Unit!39277)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76646 (_ BitVec 64) (_ BitVec 32) List!26173) Unit!39277)

(assert (=> b!1186905 (= lt!539361 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26170))))

(assert (=> b!1186905 false))

(declare-fun b!1186906 () Bool)

(declare-fun e!674900 () Bool)

(assert (=> b!1186906 (= e!674900 true)))

(declare-datatypes ((V!45045 0))(
  ( (V!45046 (val!15026 Int)) )
))
(declare-datatypes ((tuple2!19414 0))(
  ( (tuple2!19415 (_1!9717 (_ BitVec 64)) (_2!9717 V!45045)) )
))
(declare-datatypes ((List!26174 0))(
  ( (Nil!26171) (Cons!26170 (h!27379 tuple2!19414) (t!38582 List!26174)) )
))
(declare-datatypes ((ListLongMap!17395 0))(
  ( (ListLongMap!17396 (toList!8713 List!26174)) )
))
(declare-fun lt!539359 () ListLongMap!17395)

(declare-fun lt!539370 () ListLongMap!17395)

(declare-fun -!1698 (ListLongMap!17395 (_ BitVec 64)) ListLongMap!17395)

(assert (=> b!1186906 (= (-!1698 lt!539359 k!934) lt!539370)))

(declare-fun lt!539363 () Unit!39277)

(declare-fun lt!539362 () ListLongMap!17395)

(declare-fun lt!539373 () V!45045)

(declare-fun addRemoveCommutativeForDiffKeys!205 (ListLongMap!17395 (_ BitVec 64) V!45045 (_ BitVec 64)) Unit!39277)

(assert (=> b!1186906 (= lt!539363 (addRemoveCommutativeForDiffKeys!205 lt!539362 (select (arr!36969 _keys!1208) from!1455) lt!539373 k!934))))

(declare-fun lt!539355 () ListLongMap!17395)

(declare-fun lt!539366 () ListLongMap!17395)

(declare-fun lt!539365 () ListLongMap!17395)

(assert (=> b!1186906 (and (= lt!539366 lt!539359) (= lt!539355 lt!539365))))

(declare-fun lt!539368 () tuple2!19414)

(declare-fun +!3915 (ListLongMap!17395 tuple2!19414) ListLongMap!17395)

(assert (=> b!1186906 (= lt!539359 (+!3915 lt!539362 lt!539368))))

(assert (=> b!1186906 (not (= (select (arr!36969 _keys!1208) from!1455) k!934))))

(declare-fun lt!539356 () Unit!39277)

(assert (=> b!1186906 (= lt!539356 e!674899)))

(declare-fun c!117185 () Bool)

(assert (=> b!1186906 (= c!117185 (= (select (arr!36969 _keys!1208) from!1455) k!934))))

(assert (=> b!1186906 e!674902))

(declare-fun res!789158 () Bool)

(assert (=> b!1186906 (=> (not res!789158) (not e!674902))))

(declare-fun lt!539360 () ListLongMap!17395)

(assert (=> b!1186906 (= res!789158 (= lt!539360 lt!539370))))

(assert (=> b!1186906 (= lt!539370 (+!3915 lt!539355 lt!539368))))

(assert (=> b!1186906 (= lt!539368 (tuple2!19415 (select (arr!36969 _keys!1208) from!1455) lt!539373))))

(declare-fun lt!539367 () V!45045)

(declare-datatypes ((ValueCell!14260 0))(
  ( (ValueCellFull!14260 (v!17665 V!45045)) (EmptyCell!14260) )
))
(declare-datatypes ((array!76648 0))(
  ( (array!76649 (arr!36970 (Array (_ BitVec 32) ValueCell!14260)) (size!37507 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76648)

(declare-fun get!18973 (ValueCell!14260 V!45045) V!45045)

(assert (=> b!1186906 (= lt!539373 (get!18973 (select (arr!36970 _values!996) from!1455) lt!539367))))

(declare-fun b!1186907 () Bool)

(declare-fun e!674894 () Bool)

(declare-fun e!674904 () Bool)

(declare-fun mapRes!46736 () Bool)

(assert (=> b!1186907 (= e!674894 (and e!674904 mapRes!46736))))

(declare-fun condMapEmpty!46736 () Bool)

(declare-fun mapDefault!46736 () ValueCell!14260)

