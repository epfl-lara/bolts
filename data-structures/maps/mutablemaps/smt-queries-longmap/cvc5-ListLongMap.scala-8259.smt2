; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100538 () Bool)

(assert start!100538)

(declare-fun b_free!25825 () Bool)

(declare-fun b_next!25825 () Bool)

(assert (=> start!100538 (= b_free!25825 (not b_next!25825))))

(declare-fun tp!90465 () Bool)

(declare-fun b_and!42551 () Bool)

(assert (=> start!100538 (= tp!90465 b_and!42551)))

(declare-fun b!1200523 () Bool)

(declare-fun e!681811 () Bool)

(declare-fun e!681807 () Bool)

(assert (=> b!1200523 (= e!681811 e!681807)))

(declare-fun res!799249 () Bool)

(assert (=> b!1200523 (=> (not res!799249) (not e!681807))))

(declare-datatypes ((array!77812 0))(
  ( (array!77813 (arr!37547 (Array (_ BitVec 32) (_ BitVec 64))) (size!38084 (_ BitVec 32))) )
))
(declare-fun lt!544048 () array!77812)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77812 (_ BitVec 32)) Bool)

(assert (=> b!1200523 (= res!799249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544048 mask!1564))))

(declare-fun _keys!1208 () array!77812)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200523 (= lt!544048 (array!77813 (store (arr!37547 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38084 _keys!1208)))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!681808 () Bool)

(declare-datatypes ((V!45833 0))(
  ( (V!45834 (val!15321 Int)) )
))
(declare-datatypes ((tuple2!19754 0))(
  ( (tuple2!19755 (_1!9887 (_ BitVec 64)) (_2!9887 V!45833)) )
))
(declare-datatypes ((List!26587 0))(
  ( (Nil!26584) (Cons!26583 (h!27792 tuple2!19754) (t!39399 List!26587)) )
))
(declare-datatypes ((ListLongMap!17735 0))(
  ( (ListLongMap!17736 (toList!8883 List!26587)) )
))
(declare-fun call!57304 () ListLongMap!17735)

(declare-fun b!1200524 () Bool)

(declare-fun call!57303 () ListLongMap!17735)

(declare-fun -!1810 (ListLongMap!17735 (_ BitVec 64)) ListLongMap!17735)

(assert (=> b!1200524 (= e!681808 (= call!57304 (-!1810 call!57303 k!934)))))

(declare-fun mapNonEmpty!47636 () Bool)

(declare-fun mapRes!47636 () Bool)

(declare-fun tp!90466 () Bool)

(declare-fun e!681810 () Bool)

(assert (=> mapNonEmpty!47636 (= mapRes!47636 (and tp!90466 e!681810))))

(declare-datatypes ((ValueCell!14555 0))(
  ( (ValueCellFull!14555 (v!17960 V!45833)) (EmptyCell!14555) )
))
(declare-fun mapValue!47636 () ValueCell!14555)

(declare-fun mapRest!47636 () (Array (_ BitVec 32) ValueCell!14555))

(declare-fun mapKey!47636 () (_ BitVec 32))

(declare-datatypes ((array!77814 0))(
  ( (array!77815 (arr!37548 (Array (_ BitVec 32) ValueCell!14555)) (size!38085 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77814)

(assert (=> mapNonEmpty!47636 (= (arr!37548 _values!996) (store mapRest!47636 mapKey!47636 mapValue!47636))))

(declare-fun b!1200525 () Bool)

(declare-fun e!681805 () Bool)

(declare-fun e!681802 () Bool)

(assert (=> b!1200525 (= e!681805 e!681802)))

(declare-fun res!799250 () Bool)

(assert (=> b!1200525 (=> res!799250 e!681802)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1200525 (= res!799250 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45833)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!544042 () array!77814)

(declare-fun minValue!944 () V!45833)

(declare-fun lt!544045 () ListLongMap!17735)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5296 (array!77812 array!77814 (_ BitVec 32) (_ BitVec 32) V!45833 V!45833 (_ BitVec 32) Int) ListLongMap!17735)

(assert (=> b!1200525 (= lt!544045 (getCurrentListMapNoExtraKeys!5296 lt!544048 lt!544042 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3226 (Int (_ BitVec 64)) V!45833)

(assert (=> b!1200525 (= lt!544042 (array!77815 (store (arr!37548 _values!996) i!673 (ValueCellFull!14555 (dynLambda!3226 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38085 _values!996)))))

(declare-fun lt!544047 () ListLongMap!17735)

(assert (=> b!1200525 (= lt!544047 (getCurrentListMapNoExtraKeys!5296 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200526 () Bool)

(declare-fun tp_is_empty!30529 () Bool)

(assert (=> b!1200526 (= e!681810 tp_is_empty!30529)))

(declare-fun b!1200527 () Bool)

(declare-fun res!799252 () Bool)

(assert (=> b!1200527 (=> (not res!799252) (not e!681811))))

(assert (=> b!1200527 (= res!799252 (= (select (arr!37547 _keys!1208) i!673) k!934))))

(declare-fun bm!57300 () Bool)

(assert (=> bm!57300 (= call!57304 (getCurrentListMapNoExtraKeys!5296 lt!544048 lt!544042 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200528 () Bool)

(declare-fun e!681804 () Bool)

(assert (=> b!1200528 (= e!681802 e!681804)))

(declare-fun res!799255 () Bool)

(assert (=> b!1200528 (=> res!799255 e!681804)))

(assert (=> b!1200528 (= res!799255 (not (= (select (arr!37547 _keys!1208) from!1455) k!934)))))

(assert (=> b!1200528 e!681808))

(declare-fun c!117397 () Bool)

(assert (=> b!1200528 (= c!117397 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39730 0))(
  ( (Unit!39731) )
))
(declare-fun lt!544044 () Unit!39730)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1014 (array!77812 array!77814 (_ BitVec 32) (_ BitVec 32) V!45833 V!45833 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39730)

(assert (=> b!1200528 (= lt!544044 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1014 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200529 () Bool)

(declare-fun res!799259 () Bool)

(assert (=> b!1200529 (=> (not res!799259) (not e!681811))))

(assert (=> b!1200529 (= res!799259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200530 () Bool)

(declare-fun res!799248 () Bool)

(assert (=> b!1200530 (=> (not res!799248) (not e!681811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200530 (= res!799248 (validMask!0 mask!1564))))

(declare-fun b!1200531 () Bool)

(declare-fun res!799260 () Bool)

(assert (=> b!1200531 (=> (not res!799260) (not e!681807))))

(declare-datatypes ((List!26588 0))(
  ( (Nil!26585) (Cons!26584 (h!27793 (_ BitVec 64)) (t!39400 List!26588)) )
))
(declare-fun arrayNoDuplicates!0 (array!77812 (_ BitVec 32) List!26588) Bool)

(assert (=> b!1200531 (= res!799260 (arrayNoDuplicates!0 lt!544048 #b00000000000000000000000000000000 Nil!26585))))

(declare-fun b!1200532 () Bool)

(declare-fun res!799257 () Bool)

(assert (=> b!1200532 (=> (not res!799257) (not e!681811))))

(assert (=> b!1200532 (= res!799257 (and (= (size!38085 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38084 _keys!1208) (size!38085 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200533 () Bool)

(declare-fun e!681809 () Bool)

(assert (=> b!1200533 (= e!681809 tp_is_empty!30529)))

(declare-fun bm!57301 () Bool)

(assert (=> bm!57301 (= call!57303 (getCurrentListMapNoExtraKeys!5296 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200534 () Bool)

(declare-fun res!799254 () Bool)

(assert (=> b!1200534 (=> (not res!799254) (not e!681811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200534 (= res!799254 (validKeyInArray!0 k!934))))

(declare-fun b!1200535 () Bool)

(declare-fun e!681803 () Bool)

(assert (=> b!1200535 (= e!681803 (and e!681809 mapRes!47636))))

(declare-fun condMapEmpty!47636 () Bool)

(declare-fun mapDefault!47636 () ValueCell!14555)

