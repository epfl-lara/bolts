; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100354 () Bool)

(assert start!100354)

(declare-fun b_free!25705 () Bool)

(declare-fun b_next!25705 () Bool)

(assert (=> start!100354 (= b_free!25705 (not b_next!25705))))

(declare-fun tp!90064 () Bool)

(declare-fun b_and!42291 () Bool)

(assert (=> start!100354 (= tp!90064 b_and!42291)))

(declare-datatypes ((V!45641 0))(
  ( (V!45642 (val!15249 Int)) )
))
(declare-fun zeroValue!944 () V!45641)

(declare-fun b!1197149 () Bool)

(declare-datatypes ((array!77528 0))(
  ( (array!77529 (arr!37407 (Array (_ BitVec 32) (_ BitVec 64))) (size!37944 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77528)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!680140 () Bool)

(declare-fun minValue!944 () V!45641)

(declare-datatypes ((ValueCell!14483 0))(
  ( (ValueCellFull!14483 (v!17888 V!45641)) (EmptyCell!14483) )
))
(declare-datatypes ((array!77530 0))(
  ( (array!77531 (arr!37408 (Array (_ BitVec 32) ValueCell!14483)) (size!37945 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77530)

(declare-fun lt!543163 () array!77528)

(declare-datatypes ((tuple2!19666 0))(
  ( (tuple2!19667 (_1!9843 (_ BitVec 64)) (_2!9843 V!45641)) )
))
(declare-datatypes ((List!26482 0))(
  ( (Nil!26479) (Cons!26478 (h!27687 tuple2!19666) (t!39186 List!26482)) )
))
(declare-datatypes ((ListLongMap!17647 0))(
  ( (ListLongMap!17648 (toList!8839 List!26482)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5252 (array!77528 array!77530 (_ BitVec 32) (_ BitVec 32) V!45641 V!45641 (_ BitVec 32) Int) ListLongMap!17647)

(declare-fun dynLambda!3188 (Int (_ BitVec 64)) V!45641)

(assert (=> b!1197149 (= e!680140 (= (getCurrentListMapNoExtraKeys!5252 lt!543163 (array!77531 (store (arr!37408 _values!996) i!673 (ValueCellFull!14483 (dynLambda!3188 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37945 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) (getCurrentListMapNoExtraKeys!5252 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004)))))

(declare-fun e!680146 () Bool)

(assert (=> b!1197149 e!680146))

(declare-fun c!117320 () Bool)

(assert (=> b!1197149 (= c!117320 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39634 0))(
  ( (Unit!39635) )
))
(declare-fun lt!543164 () Unit!39634)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1010 (array!77528 array!77530 (_ BitVec 32) (_ BitVec 32) V!45641 V!45641 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39634)

(assert (=> b!1197149 (= lt!543164 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1010 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1197150 () Bool)

(declare-fun res!796801 () Bool)

(declare-fun e!680143 () Bool)

(assert (=> b!1197150 (=> (not res!796801) (not e!680143))))

(declare-datatypes ((List!26483 0))(
  ( (Nil!26480) (Cons!26479 (h!27688 (_ BitVec 64)) (t!39187 List!26483)) )
))
(declare-fun arrayNoDuplicates!0 (array!77528 (_ BitVec 32) List!26483) Bool)

(assert (=> b!1197150 (= res!796801 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26480))))

(declare-fun b!1197151 () Bool)

(declare-fun call!57236 () ListLongMap!17647)

(declare-fun call!57235 () ListLongMap!17647)

(assert (=> b!1197151 (= e!680146 (= call!57236 call!57235))))

(declare-fun bm!57232 () Bool)

(assert (=> bm!57232 (= call!57236 (getCurrentListMapNoExtraKeys!5252 lt!543163 (array!77531 (store (arr!37408 _values!996) i!673 (ValueCellFull!14483 (dynLambda!3188 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37945 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1197152 () Bool)

(declare-fun res!796808 () Bool)

(assert (=> b!1197152 (=> (not res!796808) (not e!680143))))

(assert (=> b!1197152 (= res!796808 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37944 _keys!1208))))))

(declare-fun b!1197153 () Bool)

(declare-fun e!680139 () Bool)

(declare-fun tp_is_empty!30385 () Bool)

(assert (=> b!1197153 (= e!680139 tp_is_empty!30385)))

(declare-fun bm!57233 () Bool)

(assert (=> bm!57233 (= call!57235 (getCurrentListMapNoExtraKeys!5252 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1197154 () Bool)

(declare-fun res!796810 () Bool)

(assert (=> b!1197154 (=> (not res!796810) (not e!680143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197154 (= res!796810 (validKeyInArray!0 k!934))))

(declare-fun b!1197155 () Bool)

(declare-fun res!796800 () Bool)

(assert (=> b!1197155 (=> (not res!796800) (not e!680143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197155 (= res!796800 (validMask!0 mask!1564))))

(declare-fun b!1197156 () Bool)

(declare-fun e!680145 () Bool)

(assert (=> b!1197156 (= e!680145 tp_is_empty!30385)))

(declare-fun mapNonEmpty!47414 () Bool)

(declare-fun mapRes!47414 () Bool)

(declare-fun tp!90063 () Bool)

(assert (=> mapNonEmpty!47414 (= mapRes!47414 (and tp!90063 e!680145))))

(declare-fun mapValue!47414 () ValueCell!14483)

(declare-fun mapRest!47414 () (Array (_ BitVec 32) ValueCell!14483))

(declare-fun mapKey!47414 () (_ BitVec 32))

(assert (=> mapNonEmpty!47414 (= (arr!37408 _values!996) (store mapRest!47414 mapKey!47414 mapValue!47414))))

(declare-fun b!1197157 () Bool)

(declare-fun -!1804 (ListLongMap!17647 (_ BitVec 64)) ListLongMap!17647)

(assert (=> b!1197157 (= e!680146 (= call!57236 (-!1804 call!57235 k!934)))))

(declare-fun res!796807 () Bool)

(assert (=> start!100354 (=> (not res!796807) (not e!680143))))

(assert (=> start!100354 (= res!796807 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37944 _keys!1208))))))

(assert (=> start!100354 e!680143))

(assert (=> start!100354 tp_is_empty!30385))

(declare-fun array_inv!28414 (array!77528) Bool)

(assert (=> start!100354 (array_inv!28414 _keys!1208)))

(assert (=> start!100354 true))

(assert (=> start!100354 tp!90064))

(declare-fun e!680141 () Bool)

(declare-fun array_inv!28415 (array!77530) Bool)

(assert (=> start!100354 (and (array_inv!28415 _values!996) e!680141)))

(declare-fun b!1197158 () Bool)

(declare-fun res!796805 () Bool)

(assert (=> b!1197158 (=> (not res!796805) (not e!680143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77528 (_ BitVec 32)) Bool)

(assert (=> b!1197158 (= res!796805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197159 () Bool)

(declare-fun res!796806 () Bool)

(assert (=> b!1197159 (=> (not res!796806) (not e!680143))))

(assert (=> b!1197159 (= res!796806 (= (select (arr!37407 _keys!1208) i!673) k!934))))

(declare-fun b!1197160 () Bool)

(declare-fun res!796802 () Bool)

(declare-fun e!680142 () Bool)

(assert (=> b!1197160 (=> (not res!796802) (not e!680142))))

(assert (=> b!1197160 (= res!796802 (arrayNoDuplicates!0 lt!543163 #b00000000000000000000000000000000 Nil!26480))))

(declare-fun b!1197161 () Bool)

(assert (=> b!1197161 (= e!680142 (not e!680140))))

(declare-fun res!796809 () Bool)

(assert (=> b!1197161 (=> res!796809 e!680140)))

(assert (=> b!1197161 (= res!796809 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37944 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!77528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197161 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!543165 () Unit!39634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77528 (_ BitVec 64) (_ BitVec 32)) Unit!39634)

(assert (=> b!1197161 (= lt!543165 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1197162 () Bool)

(assert (=> b!1197162 (= e!680143 e!680142)))

(declare-fun res!796803 () Bool)

(assert (=> b!1197162 (=> (not res!796803) (not e!680142))))

(assert (=> b!1197162 (= res!796803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543163 mask!1564))))

(assert (=> b!1197162 (= lt!543163 (array!77529 (store (arr!37407 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37944 _keys!1208)))))

(declare-fun b!1197163 () Bool)

(declare-fun res!796804 () Bool)

(assert (=> b!1197163 (=> (not res!796804) (not e!680143))))

(assert (=> b!1197163 (= res!796804 (and (= (size!37945 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37944 _keys!1208) (size!37945 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197164 () Bool)

(assert (=> b!1197164 (= e!680141 (and e!680139 mapRes!47414))))

(declare-fun condMapEmpty!47414 () Bool)

(declare-fun mapDefault!47414 () ValueCell!14483)

