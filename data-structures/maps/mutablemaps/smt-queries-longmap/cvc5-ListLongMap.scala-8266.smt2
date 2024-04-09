; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100580 () Bool)

(assert start!100580)

(declare-fun b_free!25867 () Bool)

(declare-fun b_next!25867 () Bool)

(assert (=> start!100580 (= b_free!25867 (not b_next!25867))))

(declare-fun tp!90591 () Bool)

(declare-fun b_and!42635 () Bool)

(assert (=> start!100580 (= tp!90591 b_and!42635)))

(declare-fun b!1201920 () Bool)

(declare-fun e!682558 () Bool)

(declare-fun e!682568 () Bool)

(assert (=> b!1201920 (= e!682558 e!682568)))

(declare-fun res!800126 () Bool)

(assert (=> b!1201920 (=> res!800126 e!682568)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201920 (= res!800126 (not (= from!1455 i!673)))))

(declare-datatypes ((V!45889 0))(
  ( (V!45890 (val!15342 Int)) )
))
(declare-fun zeroValue!944 () V!45889)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!77892 0))(
  ( (array!77893 (arr!37587 (Array (_ BitVec 32) (_ BitVec 64))) (size!38124 (_ BitVec 32))) )
))
(declare-fun lt!544701 () array!77892)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun minValue!944 () V!45889)

(declare-datatypes ((ValueCell!14576 0))(
  ( (ValueCellFull!14576 (v!17981 V!45889)) (EmptyCell!14576) )
))
(declare-datatypes ((array!77894 0))(
  ( (array!77895 (arr!37588 (Array (_ BitVec 32) ValueCell!14576)) (size!38125 (_ BitVec 32))) )
))
(declare-fun lt!544704 () array!77894)

(declare-datatypes ((tuple2!19792 0))(
  ( (tuple2!19793 (_1!9906 (_ BitVec 64)) (_2!9906 V!45889)) )
))
(declare-datatypes ((List!26622 0))(
  ( (Nil!26619) (Cons!26618 (h!27827 tuple2!19792) (t!39476 List!26622)) )
))
(declare-datatypes ((ListLongMap!17773 0))(
  ( (ListLongMap!17774 (toList!8902 List!26622)) )
))
(declare-fun lt!544699 () ListLongMap!17773)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5313 (array!77892 array!77894 (_ BitVec 32) (_ BitVec 32) V!45889 V!45889 (_ BitVec 32) Int) ListLongMap!17773)

(assert (=> b!1201920 (= lt!544699 (getCurrentListMapNoExtraKeys!5313 lt!544701 lt!544704 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77894)

(declare-fun dynLambda!3239 (Int (_ BitVec 64)) V!45889)

(assert (=> b!1201920 (= lt!544704 (array!77895 (store (arr!37588 _values!996) i!673 (ValueCellFull!14576 (dynLambda!3239 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38125 _values!996)))))

(declare-fun _keys!1208 () array!77892)

(declare-fun lt!544702 () ListLongMap!17773)

(assert (=> b!1201920 (= lt!544702 (getCurrentListMapNoExtraKeys!5313 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1201921 () Bool)

(declare-fun res!800116 () Bool)

(declare-fun e!682561 () Bool)

(assert (=> b!1201921 (=> (not res!800116) (not e!682561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77892 (_ BitVec 32)) Bool)

(assert (=> b!1201921 (= res!800116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1201922 () Bool)

(declare-fun e!682566 () Bool)

(declare-fun tp_is_empty!30571 () Bool)

(assert (=> b!1201922 (= e!682566 tp_is_empty!30571)))

(declare-fun bm!57600 () Bool)

(declare-fun call!57609 () ListLongMap!17773)

(declare-fun call!57610 () ListLongMap!17773)

(assert (=> bm!57600 (= call!57609 call!57610)))

(declare-fun b!1201923 () Bool)

(declare-fun e!682563 () Bool)

(declare-fun e!682569 () Bool)

(assert (=> b!1201923 (= e!682563 e!682569)))

(declare-fun res!800117 () Bool)

(assert (=> b!1201923 (=> res!800117 e!682569)))

(declare-fun lt!544707 () ListLongMap!17773)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6902 (ListLongMap!17773 (_ BitVec 64)) Bool)

(assert (=> b!1201923 (= res!800117 (not (contains!6902 lt!544707 k!934)))))

(assert (=> b!1201923 (= lt!544707 (getCurrentListMapNoExtraKeys!5313 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57601 () Bool)

(declare-fun call!57605 () Bool)

(declare-fun call!57604 () Bool)

(assert (=> bm!57601 (= call!57605 call!57604)))

(declare-fun b!1201924 () Bool)

(declare-fun res!800124 () Bool)

(assert (=> b!1201924 (=> (not res!800124) (not e!682561))))

(assert (=> b!1201924 (= res!800124 (and (= (size!38125 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38124 _keys!1208) (size!38125 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1201925 () Bool)

(declare-fun res!800118 () Bool)

(assert (=> b!1201925 (=> (not res!800118) (not e!682561))))

(declare-datatypes ((List!26623 0))(
  ( (Nil!26620) (Cons!26619 (h!27828 (_ BitVec 64)) (t!39477 List!26623)) )
))
(declare-fun arrayNoDuplicates!0 (array!77892 (_ BitVec 32) List!26623) Bool)

(assert (=> b!1201925 (= res!800118 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26620))))

(declare-fun b!1201926 () Bool)

(declare-fun res!800125 () Bool)

(assert (=> b!1201926 (=> (not res!800125) (not e!682561))))

(assert (=> b!1201926 (= res!800125 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38124 _keys!1208))))))

(declare-fun call!57607 () ListLongMap!17773)

(declare-fun bm!57602 () Bool)

(assert (=> bm!57602 (= call!57607 (getCurrentListMapNoExtraKeys!5313 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57603 () Bool)

(declare-datatypes ((Unit!39768 0))(
  ( (Unit!39769) )
))
(declare-fun call!57606 () Unit!39768)

(declare-fun call!57608 () Unit!39768)

(assert (=> bm!57603 (= call!57606 call!57608)))

(declare-fun b!1201927 () Bool)

(assert (=> b!1201927 (= e!682568 e!682563)))

(declare-fun res!800122 () Bool)

(assert (=> b!1201927 (=> res!800122 e!682563)))

(assert (=> b!1201927 (= res!800122 (not (= (select (arr!37587 _keys!1208) from!1455) k!934)))))

(declare-fun e!682557 () Bool)

(assert (=> b!1201927 e!682557))

(declare-fun c!117549 () Bool)

(assert (=> b!1201927 (= c!117549 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544695 () Unit!39768)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1027 (array!77892 array!77894 (_ BitVec 32) (_ BitVec 32) V!45889 V!45889 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39768)

(assert (=> b!1201927 (= lt!544695 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1027 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201928 () Bool)

(declare-fun e!682562 () Bool)

(assert (=> b!1201928 (= e!682561 e!682562)))

(declare-fun res!800123 () Bool)

(assert (=> b!1201928 (=> (not res!800123) (not e!682562))))

(assert (=> b!1201928 (= res!800123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544701 mask!1564))))

(assert (=> b!1201928 (= lt!544701 (array!77893 (store (arr!37587 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38124 _keys!1208)))))

(declare-fun b!1201929 () Bool)

(assert (=> b!1201929 call!57605))

(declare-fun lt!544708 () Unit!39768)

(assert (=> b!1201929 (= lt!544708 call!57606)))

(declare-fun e!682559 () Unit!39768)

(assert (=> b!1201929 (= e!682559 lt!544708)))

(declare-fun b!1201931 () Bool)

(declare-fun res!800114 () Bool)

(assert (=> b!1201931 (=> (not res!800114) (not e!682561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201931 (= res!800114 (validMask!0 mask!1564))))

(declare-fun b!1201932 () Bool)

(assert (=> b!1201932 (= e!682569 true)))

(declare-fun lt!544705 () Unit!39768)

(declare-fun e!682564 () Unit!39768)

(assert (=> b!1201932 (= lt!544705 e!682564)))

(declare-fun c!117547 () Bool)

(declare-fun lt!544706 () Bool)

(assert (=> b!1201932 (= c!117547 (and (not lt!544706) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1201932 (= lt!544706 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1201933 () Bool)

(declare-fun e!682567 () Bool)

(assert (=> b!1201933 (= e!682567 tp_is_empty!30571)))

(declare-fun b!1201934 () Bool)

(declare-fun e!682565 () Unit!39768)

(declare-fun Unit!39770 () Unit!39768)

(assert (=> b!1201934 (= e!682565 Unit!39770)))

(declare-fun b!1201935 () Bool)

(assert (=> b!1201935 (= e!682562 (not e!682558))))

(declare-fun res!800115 () Bool)

(assert (=> b!1201935 (=> res!800115 e!682558)))

(assert (=> b!1201935 (= res!800115 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1201935 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!544698 () Unit!39768)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77892 (_ BitVec 64) (_ BitVec 32)) Unit!39768)

(assert (=> b!1201935 (= lt!544698 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun lt!544696 () ListLongMap!17773)

(declare-fun bm!57604 () Bool)

(assert (=> bm!57604 (= call!57604 (contains!6902 (ite c!117547 lt!544696 call!57609) k!934))))

(declare-fun b!1201936 () Bool)

(declare-fun res!800127 () Bool)

(assert (=> b!1201936 (=> (not res!800127) (not e!682561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201936 (= res!800127 (validKeyInArray!0 k!934))))

(declare-fun bm!57605 () Bool)

(declare-fun c!117548 () Bool)

(declare-fun +!3941 (ListLongMap!17773 tuple2!19792) ListLongMap!17773)

(assert (=> bm!57605 (= call!57610 (+!3941 (ite c!117547 lt!544696 lt!544707) (ite c!117547 (tuple2!19793 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117548 (tuple2!19793 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19793 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1201937 () Bool)

(declare-fun lt!544697 () Unit!39768)

(assert (=> b!1201937 (= e!682565 lt!544697)))

(assert (=> b!1201937 (= lt!544697 call!57606)))

(assert (=> b!1201937 call!57605))

(declare-fun b!1201938 () Bool)

(declare-fun c!117550 () Bool)

(assert (=> b!1201938 (= c!117550 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544706))))

(assert (=> b!1201938 (= e!682559 e!682565)))

(declare-fun b!1201939 () Bool)

(declare-fun lt!544703 () Unit!39768)

(assert (=> b!1201939 (= e!682564 lt!544703)))

(declare-fun lt!544700 () Unit!39768)

(declare-fun addStillContains!1003 (ListLongMap!17773 (_ BitVec 64) V!45889 (_ BitVec 64)) Unit!39768)

(assert (=> b!1201939 (= lt!544700 (addStillContains!1003 lt!544707 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1201939 (= lt!544696 (+!3941 lt!544707 (tuple2!19793 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1201939 call!57604))

(assert (=> b!1201939 (= lt!544703 call!57608)))

(assert (=> b!1201939 (contains!6902 call!57610 k!934)))

(declare-fun b!1201940 () Bool)

(declare-fun e!682570 () Bool)

(declare-fun mapRes!47699 () Bool)

(assert (=> b!1201940 (= e!682570 (and e!682567 mapRes!47699))))

(declare-fun condMapEmpty!47699 () Bool)

(declare-fun mapDefault!47699 () ValueCell!14576)

