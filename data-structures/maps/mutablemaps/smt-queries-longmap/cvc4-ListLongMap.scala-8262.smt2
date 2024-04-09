; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100560 () Bool)

(assert start!100560)

(declare-fun b_free!25847 () Bool)

(declare-fun b_next!25847 () Bool)

(assert (=> start!100560 (= b_free!25847 (not b_next!25847))))

(declare-fun tp!90532 () Bool)

(declare-fun b_and!42595 () Bool)

(assert (=> start!100560 (= tp!90532 b_and!42595)))

(declare-fun b!1201157 () Bool)

(declare-fun e!682148 () Bool)

(declare-fun e!682141 () Bool)

(assert (=> b!1201157 (= e!682148 e!682141)))

(declare-fun res!799695 () Bool)

(assert (=> b!1201157 (=> res!799695 e!682141)))

(declare-datatypes ((array!77856 0))(
  ( (array!77857 (arr!37569 (Array (_ BitVec 32) (_ BitVec 64))) (size!38106 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77856)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1201157 (= res!799695 (not (= (select (arr!37569 _keys!1208) from!1455) k!934)))))

(declare-fun e!682150 () Bool)

(assert (=> b!1201157 e!682150))

(declare-fun c!117430 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201157 (= c!117430 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39748 0))(
  ( (Unit!39749) )
))
(declare-fun lt!544288 () Unit!39748)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!45861 0))(
  ( (V!45862 (val!15332 Int)) )
))
(declare-datatypes ((ValueCell!14566 0))(
  ( (ValueCellFull!14566 (v!17971 V!45861)) (EmptyCell!14566) )
))
(declare-datatypes ((array!77858 0))(
  ( (array!77859 (arr!37570 (Array (_ BitVec 32) ValueCell!14566)) (size!38107 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77858)

(declare-fun minValue!944 () V!45861)

(declare-fun zeroValue!944 () V!45861)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1021 (array!77856 array!77858 (_ BitVec 32) (_ BitVec 32) V!45861 V!45861 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39748)

(assert (=> b!1201157 (= lt!544288 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1021 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201158 () Bool)

(declare-fun res!799707 () Bool)

(declare-fun e!682144 () Bool)

(assert (=> b!1201158 (=> (not res!799707) (not e!682144))))

(assert (=> b!1201158 (= res!799707 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38106 _keys!1208))))))

(declare-fun b!1201159 () Bool)

(declare-fun e!682142 () Bool)

(assert (=> b!1201159 (= e!682142 e!682148)))

(declare-fun res!799698 () Bool)

(assert (=> b!1201159 (=> res!799698 e!682148)))

(assert (=> b!1201159 (= res!799698 (not (= from!1455 i!673)))))

(declare-datatypes ((tuple2!19776 0))(
  ( (tuple2!19777 (_1!9898 (_ BitVec 64)) (_2!9898 V!45861)) )
))
(declare-datatypes ((List!26608 0))(
  ( (Nil!26605) (Cons!26604 (h!27813 tuple2!19776) (t!39442 List!26608)) )
))
(declare-datatypes ((ListLongMap!17757 0))(
  ( (ListLongMap!17758 (toList!8894 List!26608)) )
))
(declare-fun lt!544286 () ListLongMap!17757)

(declare-fun lt!544282 () array!77858)

(declare-fun lt!544285 () array!77856)

(declare-fun getCurrentListMapNoExtraKeys!5306 (array!77856 array!77858 (_ BitVec 32) (_ BitVec 32) V!45861 V!45861 (_ BitVec 32) Int) ListLongMap!17757)

(assert (=> b!1201159 (= lt!544286 (getCurrentListMapNoExtraKeys!5306 lt!544285 lt!544282 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3234 (Int (_ BitVec 64)) V!45861)

(assert (=> b!1201159 (= lt!544282 (array!77859 (store (arr!37570 _values!996) i!673 (ValueCellFull!14566 (dynLambda!3234 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38107 _values!996)))))

(declare-fun lt!544287 () ListLongMap!17757)

(assert (=> b!1201159 (= lt!544287 (getCurrentListMapNoExtraKeys!5306 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!57369 () ListLongMap!17757)

(declare-fun bm!57366 () Bool)

(assert (=> bm!57366 (= call!57369 (getCurrentListMapNoExtraKeys!5306 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201160 () Bool)

(declare-fun res!799704 () Bool)

(assert (=> b!1201160 (=> (not res!799704) (not e!682144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201160 (= res!799704 (validKeyInArray!0 k!934))))

(declare-fun b!1201161 () Bool)

(declare-fun res!799701 () Bool)

(assert (=> b!1201161 (=> (not res!799701) (not e!682144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201161 (= res!799701 (validMask!0 mask!1564))))

(declare-fun call!57370 () ListLongMap!17757)

(declare-fun b!1201162 () Bool)

(declare-fun -!1817 (ListLongMap!17757 (_ BitVec 64)) ListLongMap!17757)

(assert (=> b!1201162 (= e!682150 (= call!57370 (-!1817 call!57369 k!934)))))

(declare-fun b!1201163 () Bool)

(declare-fun e!682145 () Bool)

(declare-fun tp_is_empty!30551 () Bool)

(assert (=> b!1201163 (= e!682145 tp_is_empty!30551)))

(declare-fun b!1201164 () Bool)

(declare-fun res!799706 () Bool)

(declare-fun e!682147 () Bool)

(assert (=> b!1201164 (=> (not res!799706) (not e!682147))))

(declare-datatypes ((List!26609 0))(
  ( (Nil!26606) (Cons!26605 (h!27814 (_ BitVec 64)) (t!39443 List!26609)) )
))
(declare-fun arrayNoDuplicates!0 (array!77856 (_ BitVec 32) List!26609) Bool)

(assert (=> b!1201164 (= res!799706 (arrayNoDuplicates!0 lt!544285 #b00000000000000000000000000000000 Nil!26606))))

(declare-fun bm!57367 () Bool)

(assert (=> bm!57367 (= call!57370 (getCurrentListMapNoExtraKeys!5306 lt!544285 lt!544282 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201165 () Bool)

(assert (=> b!1201165 (= e!682141 true)))

(declare-fun lt!544283 () Bool)

(declare-fun contains!6895 (ListLongMap!17757 (_ BitVec 64)) Bool)

(assert (=> b!1201165 (= lt!544283 (contains!6895 (getCurrentListMapNoExtraKeys!5306 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun mapNonEmpty!47669 () Bool)

(declare-fun mapRes!47669 () Bool)

(declare-fun tp!90531 () Bool)

(assert (=> mapNonEmpty!47669 (= mapRes!47669 (and tp!90531 e!682145))))

(declare-fun mapValue!47669 () ValueCell!14566)

(declare-fun mapRest!47669 () (Array (_ BitVec 32) ValueCell!14566))

(declare-fun mapKey!47669 () (_ BitVec 32))

(assert (=> mapNonEmpty!47669 (= (arr!37570 _values!996) (store mapRest!47669 mapKey!47669 mapValue!47669))))

(declare-fun mapIsEmpty!47669 () Bool)

(assert (=> mapIsEmpty!47669 mapRes!47669))

(declare-fun b!1201166 () Bool)

(declare-fun res!799703 () Bool)

(assert (=> b!1201166 (=> (not res!799703) (not e!682144))))

(assert (=> b!1201166 (= res!799703 (and (= (size!38107 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38106 _keys!1208) (size!38107 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1201167 () Bool)

(declare-fun res!799702 () Bool)

(assert (=> b!1201167 (=> (not res!799702) (not e!682144))))

(assert (=> b!1201167 (= res!799702 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26606))))

(declare-fun b!1201168 () Bool)

(assert (=> b!1201168 (= e!682144 e!682147)))

(declare-fun res!799699 () Bool)

(assert (=> b!1201168 (=> (not res!799699) (not e!682147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77856 (_ BitVec 32)) Bool)

(assert (=> b!1201168 (= res!799699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544285 mask!1564))))

(assert (=> b!1201168 (= lt!544285 (array!77857 (store (arr!37569 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38106 _keys!1208)))))

(declare-fun b!1201169 () Bool)

(declare-fun e!682146 () Bool)

(declare-fun e!682143 () Bool)

(assert (=> b!1201169 (= e!682146 (and e!682143 mapRes!47669))))

(declare-fun condMapEmpty!47669 () Bool)

(declare-fun mapDefault!47669 () ValueCell!14566)

