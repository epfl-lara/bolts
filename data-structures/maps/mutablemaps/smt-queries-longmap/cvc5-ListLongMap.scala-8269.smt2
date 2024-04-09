; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100598 () Bool)

(assert start!100598)

(declare-fun b_free!25885 () Bool)

(declare-fun b_next!25885 () Bool)

(assert (=> start!100598 (= b_free!25885 (not b_next!25885))))

(declare-fun tp!90646 () Bool)

(declare-fun b_and!42671 () Bool)

(assert (=> start!100598 (= tp!90646 b_and!42671)))

(declare-fun bm!57816 () Bool)

(declare-fun call!57821 () Bool)

(declare-fun call!57819 () Bool)

(assert (=> bm!57816 (= call!57821 call!57819)))

(declare-fun res!800493 () Bool)

(declare-fun e!682948 () Bool)

(assert (=> start!100598 (=> (not res!800493) (not e!682948))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77928 0))(
  ( (array!77929 (arr!37605 (Array (_ BitVec 32) (_ BitVec 64))) (size!38142 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77928)

(assert (=> start!100598 (= res!800493 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38142 _keys!1208))))))

(assert (=> start!100598 e!682948))

(declare-fun tp_is_empty!30589 () Bool)

(assert (=> start!100598 tp_is_empty!30589))

(declare-fun array_inv!28548 (array!77928) Bool)

(assert (=> start!100598 (array_inv!28548 _keys!1208)))

(assert (=> start!100598 true))

(assert (=> start!100598 tp!90646))

(declare-datatypes ((V!45913 0))(
  ( (V!45914 (val!15351 Int)) )
))
(declare-datatypes ((ValueCell!14585 0))(
  ( (ValueCellFull!14585 (v!17990 V!45913)) (EmptyCell!14585) )
))
(declare-datatypes ((array!77930 0))(
  ( (array!77931 (arr!37606 (Array (_ BitVec 32) ValueCell!14585)) (size!38143 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77930)

(declare-fun e!682937 () Bool)

(declare-fun array_inv!28549 (array!77930) Bool)

(assert (=> start!100598 (and (array_inv!28549 _values!996) e!682937)))

(declare-fun b!1202613 () Bool)

(declare-fun res!800504 () Bool)

(assert (=> b!1202613 (=> (not res!800504) (not e!682948))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202613 (= res!800504 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38142 _keys!1208))))))

(declare-fun b!1202614 () Bool)

(declare-datatypes ((Unit!39793 0))(
  ( (Unit!39794) )
))
(declare-fun e!682938 () Unit!39793)

(declare-fun lt!545073 () Unit!39793)

(assert (=> b!1202614 (= e!682938 lt!545073)))

(declare-fun call!57823 () Unit!39793)

(assert (=> b!1202614 (= lt!545073 call!57823)))

(assert (=> b!1202614 call!57821))

(declare-fun b!1202615 () Bool)

(declare-fun res!800503 () Bool)

(assert (=> b!1202615 (=> (not res!800503) (not e!682948))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1202615 (= res!800503 (= (select (arr!37605 _keys!1208) i!673) k!934))))

(declare-fun b!1202616 () Bool)

(declare-fun e!682943 () Bool)

(declare-datatypes ((tuple2!19810 0))(
  ( (tuple2!19811 (_1!9915 (_ BitVec 64)) (_2!9915 V!45913)) )
))
(declare-datatypes ((List!26639 0))(
  ( (Nil!26636) (Cons!26635 (h!27844 tuple2!19810) (t!39511 List!26639)) )
))
(declare-datatypes ((ListLongMap!17791 0))(
  ( (ListLongMap!17792 (toList!8911 List!26639)) )
))
(declare-fun call!57820 () ListLongMap!17791)

(declare-fun call!57826 () ListLongMap!17791)

(assert (=> b!1202616 (= e!682943 (= call!57820 call!57826))))

(declare-fun zeroValue!944 () V!45913)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45913)

(declare-fun bm!57817 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5322 (array!77928 array!77930 (_ BitVec 32) (_ BitVec 32) V!45913 V!45913 (_ BitVec 32) Int) ListLongMap!17791)

(assert (=> bm!57817 (= call!57826 (getCurrentListMapNoExtraKeys!5322 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202617 () Bool)

(declare-fun e!682941 () Bool)

(declare-fun e!682942 () Bool)

(assert (=> b!1202617 (= e!682941 e!682942)))

(declare-fun res!800492 () Bool)

(assert (=> b!1202617 (=> res!800492 e!682942)))

(assert (=> b!1202617 (= res!800492 (not (= from!1455 i!673)))))

(declare-fun lt!545081 () array!77930)

(declare-fun lt!545082 () array!77928)

(declare-fun lt!545083 () ListLongMap!17791)

(assert (=> b!1202617 (= lt!545083 (getCurrentListMapNoExtraKeys!5322 lt!545082 lt!545081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3245 (Int (_ BitVec 64)) V!45913)

(assert (=> b!1202617 (= lt!545081 (array!77931 (store (arr!37606 _values!996) i!673 (ValueCellFull!14585 (dynLambda!3245 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38143 _values!996)))))

(declare-fun lt!545079 () ListLongMap!17791)

(assert (=> b!1202617 (= lt!545079 (getCurrentListMapNoExtraKeys!5322 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1202618 () Bool)

(declare-fun res!800494 () Bool)

(assert (=> b!1202618 (=> (not res!800494) (not e!682948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202618 (= res!800494 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!47726 () Bool)

(declare-fun mapRes!47726 () Bool)

(assert (=> mapIsEmpty!47726 mapRes!47726))

(declare-fun b!1202619 () Bool)

(declare-fun res!800501 () Bool)

(assert (=> b!1202619 (=> (not res!800501) (not e!682948))))

(assert (=> b!1202619 (= res!800501 (and (= (size!38143 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38142 _keys!1208) (size!38143 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!57818 () Bool)

(declare-fun call!57825 () Unit!39793)

(assert (=> bm!57818 (= call!57823 call!57825)))

(declare-fun lt!545076 () ListLongMap!17791)

(declare-fun c!117657 () Bool)

(declare-fun bm!57819 () Bool)

(declare-fun c!117656 () Bool)

(declare-fun addStillContains!1011 (ListLongMap!17791 (_ BitVec 64) V!45913 (_ BitVec 64)) Unit!39793)

(assert (=> bm!57819 (= call!57825 (addStillContains!1011 lt!545076 (ite (or c!117657 c!117656) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117657 c!117656) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1202620 () Bool)

(declare-fun e!682946 () Bool)

(assert (=> b!1202620 (= e!682948 e!682946)))

(declare-fun res!800498 () Bool)

(assert (=> b!1202620 (=> (not res!800498) (not e!682946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77928 (_ BitVec 32)) Bool)

(assert (=> b!1202620 (= res!800498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545082 mask!1564))))

(assert (=> b!1202620 (= lt!545082 (array!77929 (store (arr!37605 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38142 _keys!1208)))))

(declare-fun b!1202621 () Bool)

(declare-fun c!117655 () Bool)

(declare-fun lt!545080 () Bool)

(assert (=> b!1202621 (= c!117655 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545080))))

(declare-fun e!682944 () Unit!39793)

(assert (=> b!1202621 (= e!682944 e!682938)))

(declare-fun b!1202622 () Bool)

(declare-fun e!682935 () Bool)

(assert (=> b!1202622 (= e!682935 true)))

(declare-fun lt!545075 () Unit!39793)

(declare-fun e!682939 () Unit!39793)

(assert (=> b!1202622 (= lt!545075 e!682939)))

(assert (=> b!1202622 (= c!117657 (and (not lt!545080) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202622 (= lt!545080 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1202623 () Bool)

(assert (=> b!1202623 (= e!682939 e!682944)))

(assert (=> b!1202623 (= c!117656 (and (not lt!545080) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1202624 () Bool)

(declare-fun e!682945 () Bool)

(assert (=> b!1202624 (= e!682937 (and e!682945 mapRes!47726))))

(declare-fun condMapEmpty!47726 () Bool)

(declare-fun mapDefault!47726 () ValueCell!14585)

