; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100052 () Bool)

(assert start!100052)

(declare-fun b_free!25595 () Bool)

(declare-fun b_next!25595 () Bool)

(assert (=> start!100052 (= b_free!25595 (not b_next!25595))))

(declare-fun tp!89499 () Bool)

(declare-fun b_and!42071 () Bool)

(assert (=> start!100052 (= tp!89499 b_and!42071)))

(declare-fun b!1191592 () Bool)

(declare-fun e!677382 () Bool)

(declare-fun tp_is_empty!30125 () Bool)

(assert (=> b!1191592 (= e!677382 tp_is_empty!30125)))

(declare-fun b!1191593 () Bool)

(declare-fun res!792690 () Bool)

(declare-fun e!677387 () Bool)

(assert (=> b!1191593 (=> (not res!792690) (not e!677387))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77014 0))(
  ( (array!77015 (arr!37153 (Array (_ BitVec 32) (_ BitVec 64))) (size!37690 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77014)

(assert (=> b!1191593 (= res!792690 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37690 _keys!1208))))))

(declare-fun b!1191594 () Bool)

(declare-fun res!792699 () Bool)

(assert (=> b!1191594 (=> (not res!792699) (not e!677387))))

(declare-datatypes ((List!26331 0))(
  ( (Nil!26328) (Cons!26327 (h!27536 (_ BitVec 64)) (t!38925 List!26331)) )
))
(declare-fun arrayNoDuplicates!0 (array!77014 (_ BitVec 32) List!26331) Bool)

(assert (=> b!1191594 (= res!792699 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26328))))

(declare-fun b!1191596 () Bool)

(declare-fun res!792700 () Bool)

(declare-fun e!677386 () Bool)

(assert (=> b!1191596 (=> (not res!792700) (not e!677386))))

(declare-fun lt!541862 () array!77014)

(assert (=> b!1191596 (= res!792700 (arrayNoDuplicates!0 lt!541862 #b00000000000000000000000000000000 Nil!26328))))

(declare-fun mapNonEmpty!47015 () Bool)

(declare-fun mapRes!47015 () Bool)

(declare-fun tp!89500 () Bool)

(declare-fun e!677384 () Bool)

(assert (=> mapNonEmpty!47015 (= mapRes!47015 (and tp!89500 e!677384))))

(declare-datatypes ((V!45293 0))(
  ( (V!45294 (val!15119 Int)) )
))
(declare-datatypes ((ValueCell!14353 0))(
  ( (ValueCellFull!14353 (v!17758 V!45293)) (EmptyCell!14353) )
))
(declare-fun mapValue!47015 () ValueCell!14353)

(declare-datatypes ((array!77016 0))(
  ( (array!77017 (arr!37154 (Array (_ BitVec 32) ValueCell!14353)) (size!37691 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77016)

(declare-fun mapKey!47015 () (_ BitVec 32))

(declare-fun mapRest!47015 () (Array (_ BitVec 32) ValueCell!14353))

(assert (=> mapNonEmpty!47015 (= (arr!37154 _values!996) (store mapRest!47015 mapKey!47015 mapValue!47015))))

(declare-fun b!1191597 () Bool)

(declare-fun e!677388 () Bool)

(assert (=> b!1191597 (= e!677388 true)))

(declare-fun zeroValue!944 () V!45293)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45293)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!541864 () array!77016)

(declare-datatypes ((tuple2!19570 0))(
  ( (tuple2!19571 (_1!9795 (_ BitVec 64)) (_2!9795 V!45293)) )
))
(declare-datatypes ((List!26332 0))(
  ( (Nil!26329) (Cons!26328 (h!27537 tuple2!19570) (t!38926 List!26332)) )
))
(declare-datatypes ((ListLongMap!17551 0))(
  ( (ListLongMap!17552 (toList!8791 List!26332)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5205 (array!77014 array!77016 (_ BitVec 32) (_ BitVec 32) V!45293 V!45293 (_ BitVec 32) Int) ListLongMap!17551)

(declare-fun -!1770 (ListLongMap!17551 (_ BitVec 64)) ListLongMap!17551)

(assert (=> b!1191597 (= (getCurrentListMapNoExtraKeys!5205 lt!541862 lt!541864 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1770 (getCurrentListMapNoExtraKeys!5205 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39474 0))(
  ( (Unit!39475) )
))
(declare-fun lt!541865 () Unit!39474)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!976 (array!77014 array!77016 (_ BitVec 32) (_ BitVec 32) V!45293 V!45293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39474)

(assert (=> b!1191597 (= lt!541865 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!976 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191598 () Bool)

(declare-fun res!792698 () Bool)

(assert (=> b!1191598 (=> (not res!792698) (not e!677387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77014 (_ BitVec 32)) Bool)

(assert (=> b!1191598 (= res!792698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191599 () Bool)

(assert (=> b!1191599 (= e!677384 tp_is_empty!30125)))

(declare-fun mapIsEmpty!47015 () Bool)

(assert (=> mapIsEmpty!47015 mapRes!47015))

(declare-fun b!1191600 () Bool)

(declare-fun res!792693 () Bool)

(assert (=> b!1191600 (=> (not res!792693) (not e!677387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191600 (= res!792693 (validMask!0 mask!1564))))

(declare-fun b!1191601 () Bool)

(declare-fun res!792696 () Bool)

(assert (=> b!1191601 (=> (not res!792696) (not e!677387))))

(assert (=> b!1191601 (= res!792696 (and (= (size!37691 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37690 _keys!1208) (size!37691 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191602 () Bool)

(declare-fun e!677389 () Bool)

(assert (=> b!1191602 (= e!677389 (and e!677382 mapRes!47015))))

(declare-fun condMapEmpty!47015 () Bool)

(declare-fun mapDefault!47015 () ValueCell!14353)

