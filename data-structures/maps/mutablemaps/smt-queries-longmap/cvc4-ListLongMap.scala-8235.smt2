; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100358 () Bool)

(assert start!100358)

(declare-fun b_free!25709 () Bool)

(declare-fun b_next!25709 () Bool)

(assert (=> start!100358 (= b_free!25709 (not b_next!25709))))

(declare-fun tp!90075 () Bool)

(declare-fun b_and!42303 () Bool)

(assert (=> start!100358 (= tp!90075 b_and!42303)))

(declare-fun b!1197249 () Bool)

(declare-fun res!796867 () Bool)

(declare-fun e!680193 () Bool)

(assert (=> b!1197249 (=> (not res!796867) (not e!680193))))

(declare-datatypes ((array!77536 0))(
  ( (array!77537 (arr!37411 (Array (_ BitVec 32) (_ BitVec 64))) (size!37948 (_ BitVec 32))) )
))
(declare-fun lt!543181 () array!77536)

(declare-datatypes ((List!26486 0))(
  ( (Nil!26483) (Cons!26482 (h!27691 (_ BitVec 64)) (t!39194 List!26486)) )
))
(declare-fun arrayNoDuplicates!0 (array!77536 (_ BitVec 32) List!26486) Bool)

(assert (=> b!1197249 (= res!796867 (arrayNoDuplicates!0 lt!543181 #b00000000000000000000000000000000 Nil!26483))))

(declare-fun b!1197250 () Bool)

(declare-fun e!680188 () Bool)

(declare-datatypes ((V!45645 0))(
  ( (V!45646 (val!15251 Int)) )
))
(declare-datatypes ((tuple2!19670 0))(
  ( (tuple2!19671 (_1!9845 (_ BitVec 64)) (_2!9845 V!45645)) )
))
(declare-datatypes ((List!26487 0))(
  ( (Nil!26484) (Cons!26483 (h!27692 tuple2!19670) (t!39195 List!26487)) )
))
(declare-datatypes ((ListLongMap!17651 0))(
  ( (ListLongMap!17652 (toList!8841 List!26487)) )
))
(declare-fun call!57247 () ListLongMap!17651)

(declare-fun call!57248 () ListLongMap!17651)

(assert (=> b!1197250 (= e!680188 (= call!57247 call!57248))))

(declare-fun zeroValue!944 () V!45645)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14485 0))(
  ( (ValueCellFull!14485 (v!17890 V!45645)) (EmptyCell!14485) )
))
(declare-datatypes ((array!77538 0))(
  ( (array!77539 (arr!37412 (Array (_ BitVec 32) ValueCell!14485)) (size!37949 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77538)

(declare-fun bm!57244 () Bool)

(declare-fun minValue!944 () V!45645)

(declare-fun getCurrentListMapNoExtraKeys!5254 (array!77536 array!77538 (_ BitVec 32) (_ BitVec 32) V!45645 V!45645 (_ BitVec 32) Int) ListLongMap!17651)

(declare-fun dynLambda!3190 (Int (_ BitVec 64)) V!45645)

(assert (=> bm!57244 (= call!57247 (getCurrentListMapNoExtraKeys!5254 lt!543181 (array!77539 (store (arr!37412 _values!996) i!673 (ValueCellFull!14485 (dynLambda!3190 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37949 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47420 () Bool)

(declare-fun mapRes!47420 () Bool)

(assert (=> mapIsEmpty!47420 mapRes!47420))

(declare-fun b!1197251 () Bool)

(declare-fun e!680194 () Bool)

(assert (=> b!1197251 (= e!680193 (not e!680194))))

(declare-fun res!796866 () Bool)

(assert (=> b!1197251 (=> res!796866 e!680194)))

(declare-fun _keys!1208 () array!77536)

(assert (=> b!1197251 (= res!796866 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37948 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197251 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39638 0))(
  ( (Unit!39639) )
))
(declare-fun lt!543183 () Unit!39638)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77536 (_ BitVec 64) (_ BitVec 32)) Unit!39638)

(assert (=> b!1197251 (= lt!543183 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!47420 () Bool)

(declare-fun tp!90076 () Bool)

(declare-fun e!680187 () Bool)

(assert (=> mapNonEmpty!47420 (= mapRes!47420 (and tp!90076 e!680187))))

(declare-fun mapValue!47420 () ValueCell!14485)

(declare-fun mapRest!47420 () (Array (_ BitVec 32) ValueCell!14485))

(declare-fun mapKey!47420 () (_ BitVec 32))

(assert (=> mapNonEmpty!47420 (= (arr!37412 _values!996) (store mapRest!47420 mapKey!47420 mapValue!47420))))

(declare-fun b!1197252 () Bool)

(declare-fun res!796876 () Bool)

(declare-fun e!680190 () Bool)

(assert (=> b!1197252 (=> (not res!796876) (not e!680190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197252 (= res!796876 (validKeyInArray!0 k!934))))

(declare-fun b!1197254 () Bool)

(declare-fun res!796874 () Bool)

(assert (=> b!1197254 (=> (not res!796874) (not e!680190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197254 (= res!796874 (validMask!0 mask!1564))))

(declare-fun b!1197255 () Bool)

(assert (=> b!1197255 (= e!680190 e!680193)))

(declare-fun res!796873 () Bool)

(assert (=> b!1197255 (=> (not res!796873) (not e!680193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77536 (_ BitVec 32)) Bool)

(assert (=> b!1197255 (= res!796873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543181 mask!1564))))

(assert (=> b!1197255 (= lt!543181 (array!77537 (store (arr!37411 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37948 _keys!1208)))))

(declare-fun b!1197256 () Bool)

(declare-fun e!680189 () Bool)

(declare-fun tp_is_empty!30389 () Bool)

(assert (=> b!1197256 (= e!680189 tp_is_empty!30389)))

(declare-fun b!1197257 () Bool)

(declare-fun res!796872 () Bool)

(assert (=> b!1197257 (=> (not res!796872) (not e!680190))))

(assert (=> b!1197257 (= res!796872 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26483))))

(declare-fun b!1197258 () Bool)

(assert (=> b!1197258 (= e!680194 (= (getCurrentListMapNoExtraKeys!5254 lt!543181 (array!77539 (store (arr!37412 _values!996) i!673 (ValueCellFull!14485 (dynLambda!3190 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37949 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) (getCurrentListMapNoExtraKeys!5254 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004)))))

(assert (=> b!1197258 e!680188))

(declare-fun c!117326 () Bool)

(assert (=> b!1197258 (= c!117326 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!543182 () Unit!39638)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1012 (array!77536 array!77538 (_ BitVec 32) (_ BitVec 32) V!45645 V!45645 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39638)

(assert (=> b!1197258 (= lt!543182 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1012 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!796875 () Bool)

(assert (=> start!100358 (=> (not res!796875) (not e!680190))))

(assert (=> start!100358 (= res!796875 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37948 _keys!1208))))))

(assert (=> start!100358 e!680190))

(assert (=> start!100358 tp_is_empty!30389))

(declare-fun array_inv!28418 (array!77536) Bool)

(assert (=> start!100358 (array_inv!28418 _keys!1208)))

(assert (=> start!100358 true))

(assert (=> start!100358 tp!90075))

(declare-fun e!680192 () Bool)

(declare-fun array_inv!28419 (array!77538) Bool)

(assert (=> start!100358 (and (array_inv!28419 _values!996) e!680192)))

(declare-fun b!1197253 () Bool)

(declare-fun -!1806 (ListLongMap!17651 (_ BitVec 64)) ListLongMap!17651)

(assert (=> b!1197253 (= e!680188 (= call!57247 (-!1806 call!57248 k!934)))))

(declare-fun b!1197259 () Bool)

(assert (=> b!1197259 (= e!680192 (and e!680189 mapRes!47420))))

(declare-fun condMapEmpty!47420 () Bool)

(declare-fun mapDefault!47420 () ValueCell!14485)

