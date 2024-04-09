; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99328 () Bool)

(assert start!99328)

(declare-fun b_free!24871 () Bool)

(declare-fun b_next!24871 () Bool)

(assert (=> start!99328 (= b_free!24871 (not b_next!24871))))

(declare-fun tp!87328 () Bool)

(declare-fun b_and!40623 () Bool)

(assert (=> start!99328 (= tp!87328 b_and!40623)))

(declare-fun b!1169778 () Bool)

(declare-fun e!664892 () Bool)

(declare-fun e!664886 () Bool)

(assert (=> b!1169778 (= e!664892 e!664886)))

(declare-fun res!776337 () Bool)

(assert (=> b!1169778 (=> (not res!776337) (not e!664886))))

(declare-datatypes ((array!75578 0))(
  ( (array!75579 (arr!36435 (Array (_ BitVec 32) (_ BitVec 64))) (size!36972 (_ BitVec 32))) )
))
(declare-fun lt!526755 () array!75578)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75578 (_ BitVec 32)) Bool)

(assert (=> b!1169778 (= res!776337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526755 mask!1564))))

(declare-fun _keys!1208 () array!75578)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169778 (= lt!526755 (array!75579 (store (arr!36435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36972 _keys!1208)))))

(declare-fun b!1169779 () Bool)

(declare-fun e!664885 () Bool)

(declare-fun e!664893 () Bool)

(assert (=> b!1169779 (= e!664885 e!664893)))

(declare-fun res!776344 () Bool)

(assert (=> b!1169779 (=> res!776344 e!664893)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1169779 (= res!776344 (not (= (select (arr!36435 _keys!1208) from!1455) k!934)))))

(declare-fun b!1169780 () Bool)

(declare-fun res!776334 () Bool)

(assert (=> b!1169780 (=> (not res!776334) (not e!664892))))

(assert (=> b!1169780 (= res!776334 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36972 _keys!1208))))))

(declare-fun b!1169781 () Bool)

(declare-fun e!664894 () Bool)

(declare-fun e!664887 () Bool)

(assert (=> b!1169781 (= e!664894 e!664887)))

(declare-fun res!776341 () Bool)

(assert (=> b!1169781 (=> res!776341 e!664887)))

(assert (=> b!1169781 (= res!776341 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44329 0))(
  ( (V!44330 (val!14757 Int)) )
))
(declare-fun zeroValue!944 () V!44329)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18930 0))(
  ( (tuple2!18931 (_1!9475 (_ BitVec 64)) (_2!9475 V!44329)) )
))
(declare-datatypes ((List!25702 0))(
  ( (Nil!25699) (Cons!25698 (h!26907 tuple2!18930) (t!37572 List!25702)) )
))
(declare-datatypes ((ListLongMap!16911 0))(
  ( (ListLongMap!16912 (toList!8471 List!25702)) )
))
(declare-fun lt!526758 () ListLongMap!16911)

(declare-datatypes ((ValueCell!13991 0))(
  ( (ValueCellFull!13991 (v!17396 V!44329)) (EmptyCell!13991) )
))
(declare-datatypes ((array!75580 0))(
  ( (array!75581 (arr!36436 (Array (_ BitVec 32) ValueCell!13991)) (size!36973 (_ BitVec 32))) )
))
(declare-fun lt!526752 () array!75580)

(declare-fun minValue!944 () V!44329)

(declare-fun getCurrentListMapNoExtraKeys!4904 (array!75578 array!75580 (_ BitVec 32) (_ BitVec 32) V!44329 V!44329 (_ BitVec 32) Int) ListLongMap!16911)

(assert (=> b!1169781 (= lt!526758 (getCurrentListMapNoExtraKeys!4904 lt!526755 lt!526752 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75580)

(declare-fun lt!526750 () V!44329)

(assert (=> b!1169781 (= lt!526752 (array!75581 (store (arr!36436 _values!996) i!673 (ValueCellFull!13991 lt!526750)) (size!36973 _values!996)))))

(declare-fun dynLambda!2894 (Int (_ BitVec 64)) V!44329)

(assert (=> b!1169781 (= lt!526750 (dynLambda!2894 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526757 () ListLongMap!16911)

(assert (=> b!1169781 (= lt!526757 (getCurrentListMapNoExtraKeys!4904 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169782 () Bool)

(declare-fun res!776338 () Bool)

(assert (=> b!1169782 (=> (not res!776338) (not e!664892))))

(assert (=> b!1169782 (= res!776338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169783 () Bool)

(declare-fun e!664889 () Bool)

(assert (=> b!1169783 (= e!664889 true)))

(assert (=> b!1169783 e!664885))

(declare-fun res!776339 () Bool)

(assert (=> b!1169783 (=> (not res!776339) (not e!664885))))

(declare-fun lt!526756 () ListLongMap!16911)

(declare-fun +!3716 (ListLongMap!16911 tuple2!18930) ListLongMap!16911)

(declare-fun get!18607 (ValueCell!13991 V!44329) V!44329)

(assert (=> b!1169783 (= res!776339 (= lt!526758 (+!3716 lt!526756 (tuple2!18931 (select (arr!36435 _keys!1208) from!1455) (get!18607 (select (arr!36436 _values!996) from!1455) lt!526750)))))))

(declare-fun b!1169784 () Bool)

(declare-fun res!776336 () Bool)

(assert (=> b!1169784 (=> (not res!776336) (not e!664892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169784 (= res!776336 (validKeyInArray!0 k!934))))

(declare-fun b!1169785 () Bool)

(declare-fun e!664888 () Bool)

(declare-fun tp_is_empty!29401 () Bool)

(assert (=> b!1169785 (= e!664888 tp_is_empty!29401)))

(declare-fun b!1169787 () Bool)

(declare-fun res!776343 () Bool)

(assert (=> b!1169787 (=> (not res!776343) (not e!664892))))

(assert (=> b!1169787 (= res!776343 (and (= (size!36973 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36972 _keys!1208) (size!36973 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169788 () Bool)

(declare-fun res!776335 () Bool)

(assert (=> b!1169788 (=> (not res!776335) (not e!664886))))

(declare-datatypes ((List!25703 0))(
  ( (Nil!25700) (Cons!25699 (h!26908 (_ BitVec 64)) (t!37573 List!25703)) )
))
(declare-fun arrayNoDuplicates!0 (array!75578 (_ BitVec 32) List!25703) Bool)

(assert (=> b!1169788 (= res!776335 (arrayNoDuplicates!0 lt!526755 #b00000000000000000000000000000000 Nil!25700))))

(declare-fun b!1169789 () Bool)

(declare-fun res!776340 () Bool)

(assert (=> b!1169789 (=> (not res!776340) (not e!664892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169789 (= res!776340 (validMask!0 mask!1564))))

(declare-fun b!1169790 () Bool)

(declare-fun e!664891 () Bool)

(assert (=> b!1169790 (= e!664891 tp_is_empty!29401)))

(declare-fun b!1169791 () Bool)

(declare-fun res!776347 () Bool)

(assert (=> b!1169791 (=> (not res!776347) (not e!664892))))

(assert (=> b!1169791 (= res!776347 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25700))))

(declare-fun b!1169792 () Bool)

(assert (=> b!1169792 (= e!664887 e!664889)))

(declare-fun res!776342 () Bool)

(assert (=> b!1169792 (=> res!776342 e!664889)))

(assert (=> b!1169792 (= res!776342 (not (validKeyInArray!0 (select (arr!36435 _keys!1208) from!1455))))))

(declare-fun lt!526753 () ListLongMap!16911)

(assert (=> b!1169792 (= lt!526753 lt!526756)))

(declare-fun lt!526751 () ListLongMap!16911)

(declare-fun -!1494 (ListLongMap!16911 (_ BitVec 64)) ListLongMap!16911)

(assert (=> b!1169792 (= lt!526756 (-!1494 lt!526751 k!934))))

(assert (=> b!1169792 (= lt!526753 (getCurrentListMapNoExtraKeys!4904 lt!526755 lt!526752 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169792 (= lt!526751 (getCurrentListMapNoExtraKeys!4904 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38486 0))(
  ( (Unit!38487) )
))
(declare-fun lt!526749 () Unit!38486)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!718 (array!75578 array!75580 (_ BitVec 32) (_ BitVec 32) V!44329 V!44329 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38486)

(assert (=> b!1169792 (= lt!526749 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!718 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169793 () Bool)

(declare-fun res!776346 () Bool)

(assert (=> b!1169793 (=> (not res!776346) (not e!664892))))

(assert (=> b!1169793 (= res!776346 (= (select (arr!36435 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!45929 () Bool)

(declare-fun mapRes!45929 () Bool)

(declare-fun tp!87327 () Bool)

(assert (=> mapNonEmpty!45929 (= mapRes!45929 (and tp!87327 e!664891))))

(declare-fun mapKey!45929 () (_ BitVec 32))

(declare-fun mapValue!45929 () ValueCell!13991)

(declare-fun mapRest!45929 () (Array (_ BitVec 32) ValueCell!13991))

(assert (=> mapNonEmpty!45929 (= (arr!36436 _values!996) (store mapRest!45929 mapKey!45929 mapValue!45929))))

(declare-fun b!1169794 () Bool)

(assert (=> b!1169794 (= e!664886 (not e!664894))))

(declare-fun res!776345 () Bool)

(assert (=> b!1169794 (=> res!776345 e!664894)))

(assert (=> b!1169794 (= res!776345 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169794 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!526754 () Unit!38486)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75578 (_ BitVec 64) (_ BitVec 32)) Unit!38486)

(assert (=> b!1169794 (= lt!526754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!776333 () Bool)

(assert (=> start!99328 (=> (not res!776333) (not e!664892))))

(assert (=> start!99328 (= res!776333 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36972 _keys!1208))))))

(assert (=> start!99328 e!664892))

(assert (=> start!99328 tp_is_empty!29401))

(declare-fun array_inv!27730 (array!75578) Bool)

(assert (=> start!99328 (array_inv!27730 _keys!1208)))

(assert (=> start!99328 true))

(assert (=> start!99328 tp!87328))

(declare-fun e!664890 () Bool)

(declare-fun array_inv!27731 (array!75580) Bool)

(assert (=> start!99328 (and (array_inv!27731 _values!996) e!664890)))

(declare-fun b!1169786 () Bool)

(assert (=> b!1169786 (= e!664893 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45929 () Bool)

(assert (=> mapIsEmpty!45929 mapRes!45929))

(declare-fun b!1169795 () Bool)

(assert (=> b!1169795 (= e!664890 (and e!664888 mapRes!45929))))

(declare-fun condMapEmpty!45929 () Bool)

(declare-fun mapDefault!45929 () ValueCell!13991)

