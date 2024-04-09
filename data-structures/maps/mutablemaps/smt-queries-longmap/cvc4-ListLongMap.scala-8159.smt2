; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99860 () Bool)

(assert start!99860)

(declare-fun b_free!25403 () Bool)

(declare-fun b_next!25403 () Bool)

(assert (=> start!99860 (= b_free!25403 (not b_next!25403))))

(declare-fun tp!88923 () Bool)

(declare-fun b_and!41687 () Bool)

(assert (=> start!99860 (= tp!88923 b_and!41687)))

(declare-fun b!1186715 () Bool)

(declare-fun e!674789 () Bool)

(declare-fun tp_is_empty!29933 () Bool)

(assert (=> b!1186715 (= e!674789 tp_is_empty!29933)))

(declare-fun b!1186716 () Bool)

(declare-fun e!674796 () Bool)

(declare-fun e!674793 () Bool)

(assert (=> b!1186716 (= e!674796 e!674793)))

(declare-fun res!789023 () Bool)

(assert (=> b!1186716 (=> res!789023 e!674793)))

(declare-datatypes ((array!76634 0))(
  ( (array!76635 (arr!36963 (Array (_ BitVec 32) (_ BitVec 64))) (size!37500 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76634)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186716 (= res!789023 (not (validKeyInArray!0 (select (arr!36963 _keys!1208) from!1455))))))

(declare-datatypes ((V!45037 0))(
  ( (V!45038 (val!15023 Int)) )
))
(declare-datatypes ((tuple2!19410 0))(
  ( (tuple2!19411 (_1!9715 (_ BitVec 64)) (_2!9715 V!45037)) )
))
(declare-datatypes ((List!26169 0))(
  ( (Nil!26166) (Cons!26165 (h!27374 tuple2!19410) (t!38571 List!26169)) )
))
(declare-datatypes ((ListLongMap!17391 0))(
  ( (ListLongMap!17392 (toList!8711 List!26169)) )
))
(declare-fun lt!539192 () ListLongMap!17391)

(declare-fun lt!539191 () ListLongMap!17391)

(assert (=> b!1186716 (= lt!539192 lt!539191)))

(declare-fun lt!539198 () ListLongMap!17391)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1696 (ListLongMap!17391 (_ BitVec 64)) ListLongMap!17391)

(assert (=> b!1186716 (= lt!539191 (-!1696 lt!539198 k!934))))

(declare-fun zeroValue!944 () V!45037)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!539193 () array!76634)

(declare-datatypes ((ValueCell!14257 0))(
  ( (ValueCellFull!14257 (v!17662 V!45037)) (EmptyCell!14257) )
))
(declare-datatypes ((array!76636 0))(
  ( (array!76637 (arr!36964 (Array (_ BitVec 32) ValueCell!14257)) (size!37501 (_ BitVec 32))) )
))
(declare-fun lt!539199 () array!76636)

(declare-fun minValue!944 () V!45037)

(declare-fun getCurrentListMapNoExtraKeys!5128 (array!76634 array!76636 (_ BitVec 32) (_ BitVec 32) V!45037 V!45037 (_ BitVec 32) Int) ListLongMap!17391)

(assert (=> b!1186716 (= lt!539192 (getCurrentListMapNoExtraKeys!5128 lt!539193 lt!539199 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76636)

(assert (=> b!1186716 (= lt!539198 (getCurrentListMapNoExtraKeys!5128 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39267 0))(
  ( (Unit!39268) )
))
(declare-fun lt!539186 () Unit!39267)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!907 (array!76634 array!76636 (_ BitVec 32) (_ BitVec 32) V!45037 V!45037 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39267)

(assert (=> b!1186716 (= lt!539186 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!907 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186717 () Bool)

(declare-fun res!789015 () Bool)

(declare-fun e!674794 () Bool)

(assert (=> b!1186717 (=> (not res!789015) (not e!674794))))

(assert (=> b!1186717 (= res!789015 (= (select (arr!36963 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46727 () Bool)

(declare-fun mapRes!46727 () Bool)

(declare-fun tp!88924 () Bool)

(assert (=> mapNonEmpty!46727 (= mapRes!46727 (and tp!88924 e!674789))))

(declare-fun mapValue!46727 () ValueCell!14257)

(declare-fun mapRest!46727 () (Array (_ BitVec 32) ValueCell!14257))

(declare-fun mapKey!46727 () (_ BitVec 32))

(assert (=> mapNonEmpty!46727 (= (arr!36964 _values!996) (store mapRest!46727 mapKey!46727 mapValue!46727))))

(declare-fun b!1186718 () Bool)

(declare-fun e!674795 () Bool)

(assert (=> b!1186718 (= e!674795 e!674796)))

(declare-fun res!789027 () Bool)

(assert (=> b!1186718 (=> res!789027 e!674796)))

(assert (=> b!1186718 (= res!789027 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!539202 () ListLongMap!17391)

(assert (=> b!1186718 (= lt!539202 (getCurrentListMapNoExtraKeys!5128 lt!539193 lt!539199 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!539197 () V!45037)

(assert (=> b!1186718 (= lt!539199 (array!76637 (store (arr!36964 _values!996) i!673 (ValueCellFull!14257 lt!539197)) (size!37501 _values!996)))))

(declare-fun dynLambda!3085 (Int (_ BitVec 64)) V!45037)

(assert (=> b!1186718 (= lt!539197 (dynLambda!3085 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!539194 () ListLongMap!17391)

(assert (=> b!1186718 (= lt!539194 (getCurrentListMapNoExtraKeys!5128 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1186720 () Bool)

(declare-fun e!674792 () Unit!39267)

(declare-fun Unit!39269 () Unit!39267)

(assert (=> b!1186720 (= e!674792 Unit!39269)))

(declare-fun b!1186721 () Bool)

(declare-fun res!789018 () Bool)

(assert (=> b!1186721 (=> (not res!789018) (not e!674794))))

(assert (=> b!1186721 (= res!789018 (and (= (size!37501 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37500 _keys!1208) (size!37501 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1186722 () Bool)

(declare-fun res!789017 () Bool)

(assert (=> b!1186722 (=> (not res!789017) (not e!674794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76634 (_ BitVec 32)) Bool)

(assert (=> b!1186722 (= res!789017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186723 () Bool)

(declare-fun e!674790 () Bool)

(declare-fun e!674797 () Bool)

(assert (=> b!1186723 (= e!674790 (and e!674797 mapRes!46727))))

(declare-fun condMapEmpty!46727 () Bool)

(declare-fun mapDefault!46727 () ValueCell!14257)

