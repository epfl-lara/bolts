; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100602 () Bool)

(assert start!100602)

(declare-fun b_free!25889 () Bool)

(declare-fun b_next!25889 () Bool)

(assert (=> start!100602 (= b_free!25889 (not b_next!25889))))

(declare-fun tp!90657 () Bool)

(declare-fun b_and!42679 () Bool)

(assert (=> start!100602 (= tp!90657 b_and!42679)))

(declare-fun b!1202767 () Bool)

(declare-fun e!683027 () Bool)

(declare-datatypes ((V!45917 0))(
  ( (V!45918 (val!15353 Int)) )
))
(declare-datatypes ((tuple2!19814 0))(
  ( (tuple2!19815 (_1!9917 (_ BitVec 64)) (_2!9917 V!45917)) )
))
(declare-datatypes ((List!26642 0))(
  ( (Nil!26639) (Cons!26638 (h!27847 tuple2!19814) (t!39518 List!26642)) )
))
(declare-datatypes ((ListLongMap!17795 0))(
  ( (ListLongMap!17796 (toList!8913 List!26642)) )
))
(declare-fun call!57870 () ListLongMap!17795)

(declare-fun call!57867 () ListLongMap!17795)

(assert (=> b!1202767 (= e!683027 (= call!57870 call!57867))))

(declare-fun b!1202768 () Bool)

(declare-fun e!683029 () Bool)

(declare-fun e!683028 () Bool)

(assert (=> b!1202768 (= e!683029 (not e!683028))))

(declare-fun res!800576 () Bool)

(assert (=> b!1202768 (=> res!800576 e!683028)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202768 (= res!800576 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77936 0))(
  ( (array!77937 (arr!37609 (Array (_ BitVec 32) (_ BitVec 64))) (size!38146 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77936)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1202768 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39798 0))(
  ( (Unit!39799) )
))
(declare-fun lt!545161 () Unit!39798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77936 (_ BitVec 64) (_ BitVec 32)) Unit!39798)

(assert (=> b!1202768 (= lt!545161 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun zeroValue!944 () V!45917)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!545168 () array!77936)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!57864 () Bool)

(declare-datatypes ((ValueCell!14587 0))(
  ( (ValueCellFull!14587 (v!17992 V!45917)) (EmptyCell!14587) )
))
(declare-datatypes ((array!77938 0))(
  ( (array!77939 (arr!37610 (Array (_ BitVec 32) ValueCell!14587)) (size!38147 (_ BitVec 32))) )
))
(declare-fun lt!545158 () array!77938)

(declare-fun minValue!944 () V!45917)

(declare-fun getCurrentListMapNoExtraKeys!5324 (array!77936 array!77938 (_ BitVec 32) (_ BitVec 32) V!45917 V!45917 (_ BitVec 32) Int) ListLongMap!17795)

(assert (=> bm!57864 (= call!57870 (getCurrentListMapNoExtraKeys!5324 lt!545168 lt!545158 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202769 () Bool)

(declare-fun res!800588 () Bool)

(declare-fun e!683023 () Bool)

(assert (=> b!1202769 (=> (not res!800588) (not e!683023))))

(assert (=> b!1202769 (= res!800588 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38146 _keys!1208))))))

(declare-fun b!1202770 () Bool)

(declare-fun res!800587 () Bool)

(assert (=> b!1202770 (=> (not res!800587) (not e!683023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77936 (_ BitVec 32)) Bool)

(assert (=> b!1202770 (= res!800587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1202771 () Bool)

(declare-fun res!800581 () Bool)

(assert (=> b!1202771 (=> (not res!800581) (not e!683023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202771 (= res!800581 (validKeyInArray!0 k!934))))

(declare-fun b!1202772 () Bool)

(declare-fun -!1829 (ListLongMap!17795 (_ BitVec 64)) ListLongMap!17795)

(assert (=> b!1202772 (= e!683027 (= call!57870 (-!1829 call!57867 k!934)))))

(declare-fun b!1202773 () Bool)

(declare-fun res!800584 () Bool)

(assert (=> b!1202773 (=> (not res!800584) (not e!683029))))

(declare-datatypes ((List!26643 0))(
  ( (Nil!26640) (Cons!26639 (h!27848 (_ BitVec 64)) (t!39519 List!26643)) )
))
(declare-fun arrayNoDuplicates!0 (array!77936 (_ BitVec 32) List!26643) Bool)

(assert (=> b!1202773 (= res!800584 (arrayNoDuplicates!0 lt!545168 #b00000000000000000000000000000000 Nil!26640))))

(declare-fun b!1202774 () Bool)

(declare-fun e!683030 () Bool)

(declare-fun tp_is_empty!30593 () Bool)

(assert (=> b!1202774 (= e!683030 tp_is_empty!30593)))

(declare-fun b!1202775 () Bool)

(declare-fun res!800578 () Bool)

(assert (=> b!1202775 (=> (not res!800578) (not e!683023))))

(declare-fun _values!996 () array!77938)

(assert (=> b!1202775 (= res!800578 (and (= (size!38147 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38146 _keys!1208) (size!38147 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1202776 () Bool)

(declare-fun e!683026 () Bool)

(declare-fun e!683021 () Bool)

(assert (=> b!1202776 (= e!683026 e!683021)))

(declare-fun res!800577 () Bool)

(assert (=> b!1202776 (=> res!800577 e!683021)))

(assert (=> b!1202776 (= res!800577 (not (= (select (arr!37609 _keys!1208) from!1455) k!934)))))

(assert (=> b!1202776 e!683027))

(declare-fun c!117679 () Bool)

(assert (=> b!1202776 (= c!117679 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545162 () Unit!39798)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1034 (array!77936 array!77938 (_ BitVec 32) (_ BitVec 32) V!45917 V!45917 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39798)

(assert (=> b!1202776 (= lt!545162 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1034 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202777 () Bool)

(declare-fun e!683025 () Bool)

(assert (=> b!1202777 (= e!683025 true)))

(declare-fun lt!545167 () Unit!39798)

(declare-fun e!683019 () Unit!39798)

(assert (=> b!1202777 (= lt!545167 e!683019)))

(declare-fun c!117680 () Bool)

(declare-fun lt!545163 () Bool)

(assert (=> b!1202777 (= c!117680 (and (not lt!545163) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202777 (= lt!545163 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!57866 () Bool)

(declare-fun call!57873 () Bool)

(declare-fun call!57874 () Bool)

(assert (=> bm!57866 (= call!57873 call!57874)))

(declare-fun b!1202778 () Bool)

(assert (=> b!1202778 (= e!683028 e!683026)))

(declare-fun res!800580 () Bool)

(assert (=> b!1202778 (=> res!800580 e!683026)))

(assert (=> b!1202778 (= res!800580 (not (= from!1455 i!673)))))

(declare-fun lt!545169 () ListLongMap!17795)

(assert (=> b!1202778 (= lt!545169 (getCurrentListMapNoExtraKeys!5324 lt!545168 lt!545158 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3247 (Int (_ BitVec 64)) V!45917)

(assert (=> b!1202778 (= lt!545158 (array!77939 (store (arr!37610 _values!996) i!673 (ValueCellFull!14587 (dynLambda!3247 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38147 _values!996)))))

(declare-fun lt!545165 () ListLongMap!17795)

(assert (=> b!1202778 (= lt!545165 (getCurrentListMapNoExtraKeys!5324 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1202779 () Bool)

(declare-fun c!117682 () Bool)

(assert (=> b!1202779 (= c!117682 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545163))))

(declare-fun e!683031 () Unit!39798)

(declare-fun e!683020 () Unit!39798)

(assert (=> b!1202779 (= e!683031 e!683020)))

(declare-fun b!1202780 () Bool)

(declare-fun res!800585 () Bool)

(assert (=> b!1202780 (=> (not res!800585) (not e!683023))))

(assert (=> b!1202780 (= res!800585 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26640))))

(declare-fun b!1202781 () Bool)

(declare-fun e!683032 () Bool)

(declare-fun e!683022 () Bool)

(declare-fun mapRes!47732 () Bool)

(assert (=> b!1202781 (= e!683032 (and e!683022 mapRes!47732))))

(declare-fun condMapEmpty!47732 () Bool)

(declare-fun mapDefault!47732 () ValueCell!14587)

