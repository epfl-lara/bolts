; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100348 () Bool)

(assert start!100348)

(declare-fun b_free!25699 () Bool)

(declare-fun b_next!25699 () Bool)

(assert (=> start!100348 (= b_free!25699 (not b_next!25699))))

(declare-fun tp!90046 () Bool)

(declare-fun b_and!42279 () Bool)

(assert (=> start!100348 (= tp!90046 b_and!42279)))

(declare-datatypes ((V!45633 0))(
  ( (V!45634 (val!15246 Int)) )
))
(declare-fun zeroValue!944 () V!45633)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!19660 0))(
  ( (tuple2!19661 (_1!9840 (_ BitVec 64)) (_2!9840 V!45633)) )
))
(declare-datatypes ((List!26477 0))(
  ( (Nil!26474) (Cons!26473 (h!27682 tuple2!19660) (t!39175 List!26477)) )
))
(declare-datatypes ((ListLongMap!17641 0))(
  ( (ListLongMap!17642 (toList!8836 List!26477)) )
))
(declare-fun call!57218 () ListLongMap!17641)

(declare-datatypes ((array!77516 0))(
  ( (array!77517 (arr!37401 (Array (_ BitVec 32) (_ BitVec 64))) (size!37938 (_ BitVec 32))) )
))
(declare-fun lt!543136 () array!77516)

(declare-datatypes ((ValueCell!14480 0))(
  ( (ValueCellFull!14480 (v!17885 V!45633)) (EmptyCell!14480) )
))
(declare-datatypes ((array!77518 0))(
  ( (array!77519 (arr!37402 (Array (_ BitVec 32) ValueCell!14480)) (size!37939 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77518)

(declare-fun minValue!944 () V!45633)

(declare-fun bm!57214 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5249 (array!77516 array!77518 (_ BitVec 32) (_ BitVec 32) V!45633 V!45633 (_ BitVec 32) Int) ListLongMap!17641)

(declare-fun dynLambda!3186 (Int (_ BitVec 64)) V!45633)

(assert (=> bm!57214 (= call!57218 (getCurrentListMapNoExtraKeys!5249 lt!543136 (array!77519 (store (arr!37402 _values!996) i!673 (ValueCellFull!14480 (dynLambda!3186 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37939 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196999 () Bool)

(declare-fun res!796705 () Bool)

(declare-fun e!680074 () Bool)

(assert (=> b!1196999 (=> (not res!796705) (not e!680074))))

(declare-fun _keys!1208 () array!77516)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77516 (_ BitVec 32)) Bool)

(assert (=> b!1196999 (= res!796705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197000 () Bool)

(declare-fun res!796706 () Bool)

(assert (=> b!1197000 (=> (not res!796706) (not e!680074))))

(assert (=> b!1197000 (= res!796706 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37938 _keys!1208))))))

(declare-fun mapNonEmpty!47405 () Bool)

(declare-fun mapRes!47405 () Bool)

(declare-fun tp!90045 () Bool)

(declare-fun e!680070 () Bool)

(assert (=> mapNonEmpty!47405 (= mapRes!47405 (and tp!90045 e!680070))))

(declare-fun mapRest!47405 () (Array (_ BitVec 32) ValueCell!14480))

(declare-fun mapKey!47405 () (_ BitVec 32))

(declare-fun mapValue!47405 () ValueCell!14480)

(assert (=> mapNonEmpty!47405 (= (arr!37402 _values!996) (store mapRest!47405 mapKey!47405 mapValue!47405))))

(declare-fun b!1197001 () Bool)

(declare-fun e!680068 () Bool)

(declare-fun call!57217 () ListLongMap!17641)

(assert (=> b!1197001 (= e!680068 (= call!57218 call!57217))))

(declare-fun b!1197002 () Bool)

(declare-fun e!680073 () Bool)

(declare-fun tp_is_empty!30379 () Bool)

(assert (=> b!1197002 (= e!680073 tp_is_empty!30379)))

(declare-fun b!1197003 () Bool)

(declare-fun res!796702 () Bool)

(assert (=> b!1197003 (=> (not res!796702) (not e!680074))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197003 (= res!796702 (validKeyInArray!0 k!934))))

(declare-fun res!796704 () Bool)

(assert (=> start!100348 (=> (not res!796704) (not e!680074))))

(assert (=> start!100348 (= res!796704 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37938 _keys!1208))))))

(assert (=> start!100348 e!680074))

(assert (=> start!100348 tp_is_empty!30379))

(declare-fun array_inv!28408 (array!77516) Bool)

(assert (=> start!100348 (array_inv!28408 _keys!1208)))

(assert (=> start!100348 true))

(assert (=> start!100348 tp!90046))

(declare-fun e!680069 () Bool)

(declare-fun array_inv!28409 (array!77518) Bool)

(assert (=> start!100348 (and (array_inv!28409 _values!996) e!680069)))

(declare-fun b!1197004 () Bool)

(declare-fun res!796701 () Bool)

(declare-fun e!680072 () Bool)

(assert (=> b!1197004 (=> (not res!796701) (not e!680072))))

(declare-datatypes ((List!26478 0))(
  ( (Nil!26475) (Cons!26474 (h!27683 (_ BitVec 64)) (t!39176 List!26478)) )
))
(declare-fun arrayNoDuplicates!0 (array!77516 (_ BitVec 32) List!26478) Bool)

(assert (=> b!1197004 (= res!796701 (arrayNoDuplicates!0 lt!543136 #b00000000000000000000000000000000 Nil!26475))))

(declare-fun b!1197005 () Bool)

(declare-fun res!796711 () Bool)

(assert (=> b!1197005 (=> (not res!796711) (not e!680074))))

(assert (=> b!1197005 (= res!796711 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26475))))

(declare-fun b!1197006 () Bool)

(declare-fun e!680071 () Bool)

(assert (=> b!1197006 (= e!680072 (not e!680071))))

(declare-fun res!796708 () Bool)

(assert (=> b!1197006 (=> res!796708 e!680071)))

(assert (=> b!1197006 (= res!796708 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37938 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!77516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197006 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39630 0))(
  ( (Unit!39631) )
))
(declare-fun lt!543137 () Unit!39630)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77516 (_ BitVec 64) (_ BitVec 32)) Unit!39630)

(assert (=> b!1197006 (= lt!543137 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1197007 () Bool)

(declare-fun res!796707 () Bool)

(assert (=> b!1197007 (=> (not res!796707) (not e!680074))))

(assert (=> b!1197007 (= res!796707 (and (= (size!37939 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37938 _keys!1208) (size!37939 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197008 () Bool)

(assert (=> b!1197008 (= e!680069 (and e!680073 mapRes!47405))))

(declare-fun condMapEmpty!47405 () Bool)

(declare-fun mapDefault!47405 () ValueCell!14480)

