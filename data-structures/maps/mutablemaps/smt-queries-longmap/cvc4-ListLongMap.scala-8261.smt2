; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100554 () Bool)

(assert start!100554)

(declare-fun b_free!25841 () Bool)

(declare-fun b_next!25841 () Bool)

(assert (=> start!100554 (= b_free!25841 (not b_next!25841))))

(declare-fun tp!90513 () Bool)

(declare-fun b_and!42583 () Bool)

(assert (=> start!100554 (= tp!90513 b_and!42583)))

(declare-fun b!1200989 () Bool)

(declare-fun e!682057 () Bool)

(declare-fun e!682054 () Bool)

(assert (=> b!1200989 (= e!682057 e!682054)))

(declare-fun res!799583 () Bool)

(assert (=> b!1200989 (=> res!799583 e!682054)))

(declare-datatypes ((array!77844 0))(
  ( (array!77845 (arr!37563 (Array (_ BitVec 32) (_ BitVec 64))) (size!38100 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77844)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1200989 (= res!799583 (not (= (select (arr!37563 _keys!1208) from!1455) k!934)))))

(declare-fun e!682052 () Bool)

(assert (=> b!1200989 e!682052))

(declare-fun c!117421 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200989 (= c!117421 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!45853 0))(
  ( (V!45854 (val!15329 Int)) )
))
(declare-fun zeroValue!944 () V!45853)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!39742 0))(
  ( (Unit!39743) )
))
(declare-fun lt!544224 () Unit!39742)

(declare-datatypes ((ValueCell!14563 0))(
  ( (ValueCellFull!14563 (v!17968 V!45853)) (EmptyCell!14563) )
))
(declare-datatypes ((array!77846 0))(
  ( (array!77847 (arr!37564 (Array (_ BitVec 32) ValueCell!14563)) (size!38101 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77846)

(declare-fun minValue!944 () V!45853)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1018 (array!77844 array!77846 (_ BitVec 32) (_ BitVec 32) V!45853 V!45853 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39742)

(assert (=> b!1200989 (= lt!544224 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1018 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200990 () Bool)

(declare-fun res!799579 () Bool)

(declare-fun e!682051 () Bool)

(assert (=> b!1200990 (=> (not res!799579) (not e!682051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77844 (_ BitVec 32)) Bool)

(assert (=> b!1200990 (= res!799579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200991 () Bool)

(declare-fun res!799587 () Bool)

(assert (=> b!1200991 (=> (not res!799587) (not e!682051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200991 (= res!799587 (validMask!0 mask!1564))))

(declare-fun b!1200992 () Bool)

(declare-fun res!799590 () Bool)

(declare-fun e!682058 () Bool)

(assert (=> b!1200992 (=> (not res!799590) (not e!682058))))

(declare-fun lt!544219 () array!77844)

(declare-datatypes ((List!26602 0))(
  ( (Nil!26599) (Cons!26598 (h!27807 (_ BitVec 64)) (t!39430 List!26602)) )
))
(declare-fun arrayNoDuplicates!0 (array!77844 (_ BitVec 32) List!26602) Bool)

(assert (=> b!1200992 (= res!799590 (arrayNoDuplicates!0 lt!544219 #b00000000000000000000000000000000 Nil!26599))))

(declare-fun b!1200993 () Bool)

(declare-fun res!799586 () Bool)

(assert (=> b!1200993 (=> (not res!799586) (not e!682051))))

(assert (=> b!1200993 (= res!799586 (and (= (size!38101 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38100 _keys!1208) (size!38101 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!57349 () Bool)

(declare-fun lt!544223 () array!77846)

(declare-datatypes ((tuple2!19770 0))(
  ( (tuple2!19771 (_1!9895 (_ BitVec 64)) (_2!9895 V!45853)) )
))
(declare-datatypes ((List!26603 0))(
  ( (Nil!26600) (Cons!26599 (h!27808 tuple2!19770) (t!39431 List!26603)) )
))
(declare-datatypes ((ListLongMap!17751 0))(
  ( (ListLongMap!17752 (toList!8891 List!26603)) )
))
(declare-fun call!57351 () ListLongMap!17751)

(declare-fun getCurrentListMapNoExtraKeys!5303 (array!77844 array!77846 (_ BitVec 32) (_ BitVec 32) V!45853 V!45853 (_ BitVec 32) Int) ListLongMap!17751)

(assert (=> bm!57349 (= call!57351 (getCurrentListMapNoExtraKeys!5303 lt!544219 lt!544223 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200994 () Bool)

(declare-fun res!799581 () Bool)

(assert (=> b!1200994 (=> (not res!799581) (not e!682051))))

(assert (=> b!1200994 (= res!799581 (= (select (arr!37563 _keys!1208) i!673) k!934))))

(declare-fun b!1200995 () Bool)

(declare-fun e!682053 () Bool)

(declare-fun tp_is_empty!30545 () Bool)

(assert (=> b!1200995 (= e!682053 tp_is_empty!30545)))

(declare-fun b!1200996 () Bool)

(declare-fun call!57352 () ListLongMap!17751)

(assert (=> b!1200996 (= e!682052 (= call!57351 call!57352))))

(declare-fun mapIsEmpty!47660 () Bool)

(declare-fun mapRes!47660 () Bool)

(assert (=> mapIsEmpty!47660 mapRes!47660))

(declare-fun mapNonEmpty!47660 () Bool)

(declare-fun tp!90514 () Bool)

(declare-fun e!682055 () Bool)

(assert (=> mapNonEmpty!47660 (= mapRes!47660 (and tp!90514 e!682055))))

(declare-fun mapKey!47660 () (_ BitVec 32))

(declare-fun mapValue!47660 () ValueCell!14563)

(declare-fun mapRest!47660 () (Array (_ BitVec 32) ValueCell!14563))

(assert (=> mapNonEmpty!47660 (= (arr!37564 _values!996) (store mapRest!47660 mapKey!47660 mapValue!47660))))

(declare-fun b!1200997 () Bool)

(assert (=> b!1200997 (= e!682055 tp_is_empty!30545)))

(declare-fun bm!57348 () Bool)

(assert (=> bm!57348 (= call!57352 (getCurrentListMapNoExtraKeys!5303 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!799585 () Bool)

(assert (=> start!100554 (=> (not res!799585) (not e!682051))))

(assert (=> start!100554 (= res!799585 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38100 _keys!1208))))))

(assert (=> start!100554 e!682051))

(assert (=> start!100554 tp_is_empty!30545))

(declare-fun array_inv!28518 (array!77844) Bool)

(assert (=> start!100554 (array_inv!28518 _keys!1208)))

(assert (=> start!100554 true))

(assert (=> start!100554 tp!90513))

(declare-fun e!682060 () Bool)

(declare-fun array_inv!28519 (array!77846) Bool)

(assert (=> start!100554 (and (array_inv!28519 _values!996) e!682060)))

(declare-fun b!1200998 () Bool)

(assert (=> b!1200998 (= e!682060 (and e!682053 mapRes!47660))))

(declare-fun condMapEmpty!47660 () Bool)

(declare-fun mapDefault!47660 () ValueCell!14563)

