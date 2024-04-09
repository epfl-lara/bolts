; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99856 () Bool)

(assert start!99856)

(declare-fun b_free!25399 () Bool)

(declare-fun b_next!25399 () Bool)

(assert (=> start!99856 (= b_free!25399 (not b_next!25399))))

(declare-fun tp!88912 () Bool)

(declare-fun b_and!41679 () Bool)

(assert (=> start!99856 (= tp!88912 b_and!41679)))

(declare-fun b!1186591 () Bool)

(declare-fun e!674725 () Bool)

(declare-fun e!674715 () Bool)

(assert (=> b!1186591 (= e!674725 e!674715)))

(declare-fun res!788938 () Bool)

(assert (=> b!1186591 (=> res!788938 e!674715)))

(declare-datatypes ((array!76626 0))(
  ( (array!76627 (arr!36959 (Array (_ BitVec 32) (_ BitVec 64))) (size!37496 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76626)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186591 (= res!788938 (not (validKeyInArray!0 (select (arr!36959 _keys!1208) from!1455))))))

(declare-datatypes ((V!45033 0))(
  ( (V!45034 (val!15021 Int)) )
))
(declare-datatypes ((tuple2!19406 0))(
  ( (tuple2!19407 (_1!9713 (_ BitVec 64)) (_2!9713 V!45033)) )
))
(declare-datatypes ((List!26166 0))(
  ( (Nil!26163) (Cons!26162 (h!27371 tuple2!19406) (t!38564 List!26166)) )
))
(declare-datatypes ((ListLongMap!17387 0))(
  ( (ListLongMap!17388 (toList!8709 List!26166)) )
))
(declare-fun lt!539088 () ListLongMap!17387)

(declare-fun lt!539081 () ListLongMap!17387)

(assert (=> b!1186591 (= lt!539088 lt!539081)))

(declare-fun lt!539075 () ListLongMap!17387)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1694 (ListLongMap!17387 (_ BitVec 64)) ListLongMap!17387)

(assert (=> b!1186591 (= lt!539081 (-!1694 lt!539075 k!934))))

(declare-fun zeroValue!944 () V!45033)

(declare-datatypes ((ValueCell!14255 0))(
  ( (ValueCellFull!14255 (v!17660 V!45033)) (EmptyCell!14255) )
))
(declare-datatypes ((array!76628 0))(
  ( (array!76629 (arr!36960 (Array (_ BitVec 32) ValueCell!14255)) (size!37497 (_ BitVec 32))) )
))
(declare-fun lt!539082 () array!76628)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun minValue!944 () V!45033)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!539080 () array!76626)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5126 (array!76626 array!76628 (_ BitVec 32) (_ BitVec 32) V!45033 V!45033 (_ BitVec 32) Int) ListLongMap!17387)

(assert (=> b!1186591 (= lt!539088 (getCurrentListMapNoExtraKeys!5126 lt!539080 lt!539082 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76628)

(assert (=> b!1186591 (= lt!539075 (getCurrentListMapNoExtraKeys!5126 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39260 0))(
  ( (Unit!39261) )
))
(declare-fun lt!539087 () Unit!39260)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!905 (array!76626 array!76628 (_ BitVec 32) (_ BitVec 32) V!45033 V!45033 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39260)

(assert (=> b!1186591 (= lt!539087 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!905 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186592 () Bool)

(declare-fun e!674723 () Bool)

(declare-fun tp_is_empty!29929 () Bool)

(assert (=> b!1186592 (= e!674723 tp_is_empty!29929)))

(declare-fun b!1186593 () Bool)

(declare-fun e!674717 () Unit!39260)

(declare-fun Unit!39262 () Unit!39260)

(assert (=> b!1186593 (= e!674717 Unit!39262)))

(declare-fun b!1186594 () Bool)

(declare-fun e!674716 () Bool)

(declare-fun mapRes!46721 () Bool)

(assert (=> b!1186594 (= e!674716 (and e!674723 mapRes!46721))))

(declare-fun condMapEmpty!46721 () Bool)

(declare-fun mapDefault!46721 () ValueCell!14255)

