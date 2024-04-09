; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99830 () Bool)

(assert start!99830)

(declare-fun b_free!25373 () Bool)

(declare-fun b_next!25373 () Bool)

(assert (=> start!99830 (= b_free!25373 (not b_next!25373))))

(declare-fun tp!88833 () Bool)

(declare-fun b_and!41627 () Bool)

(assert (=> start!99830 (= tp!88833 b_and!41627)))

(declare-fun b!1185785 () Bool)

(declare-fun res!788350 () Bool)

(declare-fun e!674248 () Bool)

(assert (=> b!1185785 (=> (not res!788350) (not e!674248))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185785 (= res!788350 (validMask!0 mask!1564))))

(declare-fun b!1185786 () Bool)

(declare-fun res!788349 () Bool)

(declare-fun e!674253 () Bool)

(assert (=> b!1185786 (=> (not res!788349) (not e!674253))))

(declare-datatypes ((array!76574 0))(
  ( (array!76575 (arr!36933 (Array (_ BitVec 32) (_ BitVec 64))) (size!37470 (_ BitVec 32))) )
))
(declare-fun lt!538333 () array!76574)

(declare-datatypes ((List!26141 0))(
  ( (Nil!26138) (Cons!26137 (h!27346 (_ BitVec 64)) (t!38513 List!26141)) )
))
(declare-fun arrayNoDuplicates!0 (array!76574 (_ BitVec 32) List!26141) Bool)

(assert (=> b!1185786 (= res!788349 (arrayNoDuplicates!0 lt!538333 #b00000000000000000000000000000000 Nil!26138))))

(declare-fun b!1185787 () Bool)

(declare-datatypes ((Unit!39215 0))(
  ( (Unit!39216) )
))
(declare-fun e!674249 () Unit!39215)

(declare-fun Unit!39217 () Unit!39215)

(assert (=> b!1185787 (= e!674249 Unit!39217)))

(declare-fun res!788348 () Bool)

(assert (=> start!99830 (=> (not res!788348) (not e!674248))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!76574)

(assert (=> start!99830 (= res!788348 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37470 _keys!1208))))))

(assert (=> start!99830 e!674248))

(declare-fun tp_is_empty!29903 () Bool)

(assert (=> start!99830 tp_is_empty!29903))

(declare-fun array_inv!28064 (array!76574) Bool)

(assert (=> start!99830 (array_inv!28064 _keys!1208)))

(assert (=> start!99830 true))

(assert (=> start!99830 tp!88833))

(declare-datatypes ((V!44997 0))(
  ( (V!44998 (val!15008 Int)) )
))
(declare-datatypes ((ValueCell!14242 0))(
  ( (ValueCellFull!14242 (v!17647 V!44997)) (EmptyCell!14242) )
))
(declare-datatypes ((array!76576 0))(
  ( (array!76577 (arr!36934 (Array (_ BitVec 32) ValueCell!14242)) (size!37471 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76576)

(declare-fun e!674252 () Bool)

(declare-fun array_inv!28065 (array!76576) Bool)

(assert (=> start!99830 (and (array_inv!28065 _values!996) e!674252)))

(declare-fun b!1185788 () Bool)

(declare-fun e!674250 () Bool)

(declare-fun e!674257 () Bool)

(assert (=> b!1185788 (= e!674250 e!674257)))

(declare-fun res!788344 () Bool)

(assert (=> b!1185788 (=> res!788344 e!674257)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185788 (= res!788344 (not (validKeyInArray!0 (select (arr!36933 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19380 0))(
  ( (tuple2!19381 (_1!9700 (_ BitVec 64)) (_2!9700 V!44997)) )
))
(declare-datatypes ((List!26142 0))(
  ( (Nil!26139) (Cons!26138 (h!27347 tuple2!19380) (t!38514 List!26142)) )
))
(declare-datatypes ((ListLongMap!17361 0))(
  ( (ListLongMap!17362 (toList!8696 List!26142)) )
))
(declare-fun lt!538347 () ListLongMap!17361)

(declare-fun lt!538338 () ListLongMap!17361)

(assert (=> b!1185788 (= lt!538347 lt!538338)))

(declare-fun lt!538341 () ListLongMap!17361)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1681 (ListLongMap!17361 (_ BitVec 64)) ListLongMap!17361)

(assert (=> b!1185788 (= lt!538338 (-!1681 lt!538341 k!934))))

(declare-fun zeroValue!944 () V!44997)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!538340 () array!76576)

(declare-fun minValue!944 () V!44997)

(declare-fun getCurrentListMapNoExtraKeys!5114 (array!76574 array!76576 (_ BitVec 32) (_ BitVec 32) V!44997 V!44997 (_ BitVec 32) Int) ListLongMap!17361)

(assert (=> b!1185788 (= lt!538347 (getCurrentListMapNoExtraKeys!5114 lt!538333 lt!538340 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185788 (= lt!538341 (getCurrentListMapNoExtraKeys!5114 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!538329 () Unit!39215)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!894 (array!76574 array!76576 (_ BitVec 32) (_ BitVec 32) V!44997 V!44997 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39215)

(assert (=> b!1185788 (= lt!538329 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!894 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185789 () Bool)

(declare-fun e!674254 () Bool)

(assert (=> b!1185789 (= e!674254 e!674250)))

(declare-fun res!788352 () Bool)

(assert (=> b!1185789 (=> res!788352 e!674250)))

(assert (=> b!1185789 (= res!788352 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!538346 () ListLongMap!17361)

(assert (=> b!1185789 (= lt!538346 (getCurrentListMapNoExtraKeys!5114 lt!538333 lt!538340 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!538335 () V!44997)

(assert (=> b!1185789 (= lt!538340 (array!76577 (store (arr!36934 _values!996) i!673 (ValueCellFull!14242 lt!538335)) (size!37471 _values!996)))))

(declare-fun dynLambda!3074 (Int (_ BitVec 64)) V!44997)

(assert (=> b!1185789 (= lt!538335 (dynLambda!3074 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!538345 () ListLongMap!17361)

(assert (=> b!1185789 (= lt!538345 (getCurrentListMapNoExtraKeys!5114 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185790 () Bool)

(declare-fun res!788340 () Bool)

(assert (=> b!1185790 (=> (not res!788340) (not e!674248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76574 (_ BitVec 32)) Bool)

(assert (=> b!1185790 (= res!788340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185791 () Bool)

(assert (=> b!1185791 (= e!674248 e!674253)))

(declare-fun res!788343 () Bool)

(assert (=> b!1185791 (=> (not res!788343) (not e!674253))))

(assert (=> b!1185791 (= res!788343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538333 mask!1564))))

(assert (=> b!1185791 (= lt!538333 (array!76575 (store (arr!36933 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37470 _keys!1208)))))

(declare-fun b!1185792 () Bool)

(declare-fun res!788351 () Bool)

(assert (=> b!1185792 (=> (not res!788351) (not e!674248))))

(assert (=> b!1185792 (= res!788351 (and (= (size!37471 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37470 _keys!1208) (size!37471 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185793 () Bool)

(declare-fun e!674255 () Bool)

(declare-fun e!674251 () Bool)

(assert (=> b!1185793 (= e!674255 e!674251)))

(declare-fun res!788353 () Bool)

(assert (=> b!1185793 (=> res!788353 e!674251)))

(assert (=> b!1185793 (= res!788353 (not (= (select (arr!36933 _keys!1208) from!1455) k!934)))))

(declare-fun b!1185794 () Bool)

(declare-fun Unit!39218 () Unit!39215)

(assert (=> b!1185794 (= e!674249 Unit!39218)))

(declare-fun lt!538344 () Unit!39215)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76574 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39215)

(assert (=> b!1185794 (= lt!538344 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185794 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538337 () Unit!39215)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76574 (_ BitVec 32) (_ BitVec 32)) Unit!39215)

(assert (=> b!1185794 (= lt!538337 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1185794 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26138)))

(declare-fun lt!538342 () Unit!39215)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76574 (_ BitVec 64) (_ BitVec 32) List!26141) Unit!39215)

(assert (=> b!1185794 (= lt!538342 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26138))))

(assert (=> b!1185794 false))

(declare-fun mapIsEmpty!46682 () Bool)

(declare-fun mapRes!46682 () Bool)

(assert (=> mapIsEmpty!46682 mapRes!46682))

(declare-fun b!1185795 () Bool)

(assert (=> b!1185795 (= e!674253 (not e!674254))))

(declare-fun res!788342 () Bool)

(assert (=> b!1185795 (=> res!788342 e!674254)))

(assert (=> b!1185795 (= res!788342 (bvsgt from!1455 i!673))))

(assert (=> b!1185795 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!538332 () Unit!39215)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76574 (_ BitVec 64) (_ BitVec 32)) Unit!39215)

(assert (=> b!1185795 (= lt!538332 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185796 () Bool)

(declare-fun res!788346 () Bool)

(assert (=> b!1185796 (=> (not res!788346) (not e!674248))))

(assert (=> b!1185796 (= res!788346 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37470 _keys!1208))))))

(declare-fun b!1185797 () Bool)

(assert (=> b!1185797 (= e!674257 true)))

(declare-fun lt!538343 () ListLongMap!17361)

(declare-fun lt!538331 () ListLongMap!17361)

(assert (=> b!1185797 (= (-!1681 lt!538343 k!934) lt!538331)))

(declare-fun lt!538334 () Unit!39215)

(declare-fun lt!538336 () V!44997)

(declare-fun addRemoveCommutativeForDiffKeys!192 (ListLongMap!17361 (_ BitVec 64) V!44997 (_ BitVec 64)) Unit!39215)

(assert (=> b!1185797 (= lt!538334 (addRemoveCommutativeForDiffKeys!192 lt!538341 (select (arr!36933 _keys!1208) from!1455) lt!538336 k!934))))

(assert (=> b!1185797 (and (= lt!538345 lt!538343) (= lt!538338 lt!538347))))

(declare-fun lt!538330 () tuple2!19380)

(declare-fun +!3902 (ListLongMap!17361 tuple2!19380) ListLongMap!17361)

(assert (=> b!1185797 (= lt!538343 (+!3902 lt!538341 lt!538330))))

(assert (=> b!1185797 (not (= (select (arr!36933 _keys!1208) from!1455) k!934))))

(declare-fun lt!538339 () Unit!39215)

(assert (=> b!1185797 (= lt!538339 e!674249)))

(declare-fun c!117131 () Bool)

(assert (=> b!1185797 (= c!117131 (= (select (arr!36933 _keys!1208) from!1455) k!934))))

(assert (=> b!1185797 e!674255))

(declare-fun res!788345 () Bool)

(assert (=> b!1185797 (=> (not res!788345) (not e!674255))))

(assert (=> b!1185797 (= res!788345 (= lt!538346 lt!538331))))

(assert (=> b!1185797 (= lt!538331 (+!3902 lt!538338 lt!538330))))

(assert (=> b!1185797 (= lt!538330 (tuple2!19381 (select (arr!36933 _keys!1208) from!1455) lt!538336))))

(declare-fun get!18948 (ValueCell!14242 V!44997) V!44997)

(assert (=> b!1185797 (= lt!538336 (get!18948 (select (arr!36934 _values!996) from!1455) lt!538335))))

(declare-fun b!1185798 () Bool)

(declare-fun res!788341 () Bool)

(assert (=> b!1185798 (=> (not res!788341) (not e!674248))))

(assert (=> b!1185798 (= res!788341 (= (select (arr!36933 _keys!1208) i!673) k!934))))

(declare-fun b!1185799 () Bool)

(declare-fun e!674246 () Bool)

(assert (=> b!1185799 (= e!674246 tp_is_empty!29903)))

(declare-fun mapNonEmpty!46682 () Bool)

(declare-fun tp!88834 () Bool)

(declare-fun e!674247 () Bool)

(assert (=> mapNonEmpty!46682 (= mapRes!46682 (and tp!88834 e!674247))))

(declare-fun mapRest!46682 () (Array (_ BitVec 32) ValueCell!14242))

(declare-fun mapValue!46682 () ValueCell!14242)

(declare-fun mapKey!46682 () (_ BitVec 32))

(assert (=> mapNonEmpty!46682 (= (arr!36934 _values!996) (store mapRest!46682 mapKey!46682 mapValue!46682))))

(declare-fun b!1185800 () Bool)

(assert (=> b!1185800 (= e!674251 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185801 () Bool)

(assert (=> b!1185801 (= e!674252 (and e!674246 mapRes!46682))))

(declare-fun condMapEmpty!46682 () Bool)

(declare-fun mapDefault!46682 () ValueCell!14242)

