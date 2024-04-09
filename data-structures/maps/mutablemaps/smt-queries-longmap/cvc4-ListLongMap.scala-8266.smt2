; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100584 () Bool)

(assert start!100584)

(declare-fun b_free!25871 () Bool)

(declare-fun b_next!25871 () Bool)

(assert (=> start!100584 (= b_free!25871 (not b_next!25871))))

(declare-fun tp!90603 () Bool)

(declare-fun b_and!42643 () Bool)

(assert (=> start!100584 (= tp!90603 b_and!42643)))

(declare-fun b!1202074 () Bool)

(declare-fun e!682652 () Bool)

(declare-fun tp_is_empty!30575 () Bool)

(assert (=> b!1202074 (= e!682652 tp_is_empty!30575)))

(declare-fun b!1202075 () Bool)

(declare-fun res!800209 () Bool)

(declare-fun e!682644 () Bool)

(assert (=> b!1202075 (=> (not res!800209) (not e!682644))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77900 0))(
  ( (array!77901 (arr!37591 (Array (_ BitVec 32) (_ BitVec 64))) (size!38128 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77900)

(assert (=> b!1202075 (= res!800209 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38128 _keys!1208))))))

(declare-fun bm!57648 () Bool)

(declare-datatypes ((Unit!39774 0))(
  ( (Unit!39775) )
))
(declare-fun call!57655 () Unit!39774)

(declare-fun call!57656 () Unit!39774)

(assert (=> bm!57648 (= call!57655 call!57656)))

(declare-fun b!1202076 () Bool)

(declare-fun e!682647 () Unit!39774)

(declare-fun e!682653 () Unit!39774)

(assert (=> b!1202076 (= e!682647 e!682653)))

(declare-fun c!117571 () Bool)

(declare-fun lt!544781 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1202076 (= c!117571 (and (not lt!544781) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!45893 0))(
  ( (V!45894 (val!15344 Int)) )
))
(declare-fun zeroValue!944 () V!45893)

(declare-datatypes ((tuple2!19796 0))(
  ( (tuple2!19797 (_1!9908 (_ BitVec 64)) (_2!9908 V!45893)) )
))
(declare-datatypes ((List!26626 0))(
  ( (Nil!26623) (Cons!26622 (h!27831 tuple2!19796) (t!39484 List!26626)) )
))
(declare-datatypes ((ListLongMap!17777 0))(
  ( (ListLongMap!17778 (toList!8904 List!26626)) )
))
(declare-fun call!57653 () ListLongMap!17777)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!544779 () array!77900)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!57649 () Bool)

(declare-fun minValue!944 () V!45893)

(declare-datatypes ((ValueCell!14578 0))(
  ( (ValueCellFull!14578 (v!17983 V!45893)) (EmptyCell!14578) )
))
(declare-datatypes ((array!77902 0))(
  ( (array!77903 (arr!37592 (Array (_ BitVec 32) ValueCell!14578)) (size!38129 (_ BitVec 32))) )
))
(declare-fun lt!544780 () array!77902)

(declare-fun getCurrentListMapNoExtraKeys!5315 (array!77900 array!77902 (_ BitVec 32) (_ BitVec 32) V!45893 V!45893 (_ BitVec 32) Int) ListLongMap!17777)

(assert (=> bm!57649 (= call!57653 (getCurrentListMapNoExtraKeys!5315 lt!544779 lt!544780 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202078 () Bool)

(declare-fun res!800203 () Bool)

(assert (=> b!1202078 (=> (not res!800203) (not e!682644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77900 (_ BitVec 32)) Bool)

(assert (=> b!1202078 (= res!800203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1202079 () Bool)

(declare-fun c!117573 () Bool)

(assert (=> b!1202079 (= c!117573 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544781))))

(declare-fun e!682645 () Unit!39774)

(assert (=> b!1202079 (= e!682653 e!682645)))

(declare-fun bm!57650 () Bool)

(declare-fun call!57658 () ListLongMap!17777)

(declare-fun _values!996 () array!77902)

(assert (=> bm!57650 (= call!57658 (getCurrentListMapNoExtraKeys!5315 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202080 () Bool)

(declare-fun e!682654 () Bool)

(declare-fun e!682641 () Bool)

(assert (=> b!1202080 (= e!682654 e!682641)))

(declare-fun res!800206 () Bool)

(assert (=> b!1202080 (=> res!800206 e!682641)))

(declare-fun lt!544788 () ListLongMap!17777)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6904 (ListLongMap!17777 (_ BitVec 64)) Bool)

(assert (=> b!1202080 (= res!800206 (not (contains!6904 lt!544788 k!934)))))

(assert (=> b!1202080 (= lt!544788 (getCurrentListMapNoExtraKeys!5315 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202081 () Bool)

(declare-fun res!800204 () Bool)

(assert (=> b!1202081 (=> (not res!800204) (not e!682644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202081 (= res!800204 (validKeyInArray!0 k!934))))

(declare-fun b!1202082 () Bool)

(declare-fun e!682648 () Bool)

(assert (=> b!1202082 (= e!682648 (= call!57653 call!57658))))

(declare-fun b!1202083 () Bool)

(declare-fun Unit!39776 () Unit!39774)

(assert (=> b!1202083 (= e!682645 Unit!39776)))

(declare-fun b!1202084 () Bool)

(declare-fun e!682646 () Bool)

(assert (=> b!1202084 (= e!682644 e!682646)))

(declare-fun res!800201 () Bool)

(assert (=> b!1202084 (=> (not res!800201) (not e!682646))))

(assert (=> b!1202084 (= res!800201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544779 mask!1564))))

(assert (=> b!1202084 (= lt!544779 (array!77901 (store (arr!37591 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38128 _keys!1208)))))

(declare-fun b!1202085 () Bool)

(assert (=> b!1202085 (= e!682641 true)))

(declare-fun lt!544783 () Unit!39774)

(assert (=> b!1202085 (= lt!544783 e!682647)))

(declare-fun c!117574 () Bool)

(assert (=> b!1202085 (= c!117574 (and (not lt!544781) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202085 (= lt!544781 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!47705 () Bool)

(declare-fun mapRes!47705 () Bool)

(assert (=> mapIsEmpty!47705 mapRes!47705))

(declare-fun b!1202086 () Bool)

(declare-fun e!682651 () Bool)

(assert (=> b!1202086 (= e!682651 (and e!682652 mapRes!47705))))

(declare-fun condMapEmpty!47705 () Bool)

(declare-fun mapDefault!47705 () ValueCell!14578)

