; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100798 () Bool)

(assert start!100798)

(declare-fun b_free!25933 () Bool)

(declare-fun b_next!25933 () Bool)

(assert (=> start!100798 (= b_free!25933 (not b_next!25933))))

(declare-fun tp!90803 () Bool)

(declare-fun b_and!42863 () Bool)

(assert (=> start!100798 (= tp!90803 b_and!42863)))

(declare-fun bm!58520 () Bool)

(declare-datatypes ((V!45977 0))(
  ( (V!45978 (val!15375 Int)) )
))
(declare-datatypes ((tuple2!19856 0))(
  ( (tuple2!19857 (_1!9938 (_ BitVec 64)) (_2!9938 V!45977)) )
))
(declare-datatypes ((List!26682 0))(
  ( (Nil!26679) (Cons!26678 (h!27887 tuple2!19856) (t!39602 List!26682)) )
))
(declare-datatypes ((ListLongMap!17837 0))(
  ( (ListLongMap!17838 (toList!8934 List!26682)) )
))
(declare-fun call!58525 () ListLongMap!17837)

(declare-fun call!58524 () ListLongMap!17837)

(assert (=> bm!58520 (= call!58525 call!58524)))

(declare-fun b!1205629 () Bool)

(declare-fun e!684701 () Bool)

(assert (=> b!1205629 (= e!684701 true)))

(declare-fun e!684702 () Bool)

(assert (=> b!1205629 e!684702))

(declare-fun res!801971 () Bool)

(assert (=> b!1205629 (=> (not res!801971) (not e!684702))))

(declare-fun e!684698 () Bool)

(assert (=> b!1205629 (= res!801971 e!684698)))

(declare-fun c!118277 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1205629 (= c!118277 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!45977)

(declare-datatypes ((array!78030 0))(
  ( (array!78031 (arr!37652 (Array (_ BitVec 32) (_ BitVec 64))) (size!38189 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78030)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14609 0))(
  ( (ValueCellFull!14609 (v!18020 V!45977)) (EmptyCell!14609) )
))
(declare-datatypes ((array!78032 0))(
  ( (array!78033 (arr!37653 (Array (_ BitVec 32) ValueCell!14609)) (size!38190 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78032)

(declare-fun minValue!944 () V!45977)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!39893 0))(
  ( (Unit!39894) )
))
(declare-fun lt!546830 () Unit!39893)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!570 (array!78030 array!78032 (_ BitVec 32) (_ BitVec 32) V!45977 V!45977 (_ BitVec 64) (_ BitVec 32) Int) Unit!39893)

(assert (=> b!1205629 (= lt!546830 (lemmaListMapContainsThenArrayContainsFrom!570 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546821 () Unit!39893)

(declare-fun e!684712 () Unit!39893)

(assert (=> b!1205629 (= lt!546821 e!684712)))

(declare-fun c!118273 () Bool)

(declare-fun lt!546829 () Bool)

(assert (=> b!1205629 (= c!118273 (and (not lt!546829) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1205629 (= lt!546829 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1205630 () Bool)

(declare-fun res!801978 () Bool)

(declare-fun e!684711 () Bool)

(assert (=> b!1205630 (=> (not res!801978) (not e!684711))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205630 (= res!801978 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38189 _keys!1208))))))

(declare-fun b!1205631 () Bool)

(declare-fun res!801976 () Bool)

(assert (=> b!1205631 (=> (not res!801976) (not e!684711))))

(assert (=> b!1205631 (= res!801976 (and (= (size!38190 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38189 _keys!1208) (size!38190 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1205632 () Bool)

(declare-fun c!118276 () Bool)

(assert (=> b!1205632 (= c!118276 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546829))))

(declare-fun e!684700 () Unit!39893)

(declare-fun e!684704 () Unit!39893)

(assert (=> b!1205632 (= e!684700 e!684704)))

(declare-fun b!1205633 () Bool)

(declare-fun res!801979 () Bool)

(assert (=> b!1205633 (=> (not res!801979) (not e!684711))))

(assert (=> b!1205633 (= res!801979 (= (select (arr!37652 _keys!1208) i!673) k!934))))

(declare-fun call!58523 () ListLongMap!17837)

(declare-fun bm!58521 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5342 (array!78030 array!78032 (_ BitVec 32) (_ BitVec 32) V!45977 V!45977 (_ BitVec 32) Int) ListLongMap!17837)

(assert (=> bm!58521 (= call!58523 (getCurrentListMapNoExtraKeys!5342 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205634 () Bool)

(declare-fun e!684713 () Bool)

(declare-fun tp_is_empty!30637 () Bool)

(assert (=> b!1205634 (= e!684713 tp_is_empty!30637)))

(declare-fun b!1205635 () Bool)

(declare-fun arrayContainsKey!0 (array!78030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205635 (= e!684702 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205636 () Bool)

(assert (=> b!1205636 (= e!684698 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205637 () Bool)

(declare-fun e!684699 () Bool)

(assert (=> b!1205637 (= e!684711 e!684699)))

(declare-fun res!801974 () Bool)

(assert (=> b!1205637 (=> (not res!801974) (not e!684699))))

(declare-fun lt!546826 () array!78030)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78030 (_ BitVec 32)) Bool)

(assert (=> b!1205637 (= res!801974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546826 mask!1564))))

(assert (=> b!1205637 (= lt!546826 (array!78031 (store (arr!37652 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38189 _keys!1208)))))

(declare-fun b!1205638 () Bool)

(declare-fun e!684707 () Bool)

(declare-fun e!684706 () Bool)

(declare-fun mapRes!47811 () Bool)

(assert (=> b!1205638 (= e!684707 (and e!684706 mapRes!47811))))

(declare-fun condMapEmpty!47811 () Bool)

(declare-fun mapDefault!47811 () ValueCell!14609)

