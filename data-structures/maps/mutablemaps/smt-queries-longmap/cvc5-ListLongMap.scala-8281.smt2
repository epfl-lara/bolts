; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100854 () Bool)

(assert start!100854)

(declare-fun b_free!25957 () Bool)

(declare-fun b_next!25957 () Bool)

(assert (=> start!100854 (= b_free!25957 (not b_next!25957))))

(declare-fun tp!90878 () Bool)

(declare-fun b_and!42929 () Bool)

(assert (=> start!100854 (= tp!90878 b_and!42929)))

(declare-datatypes ((V!46009 0))(
  ( (V!46010 (val!15387 Int)) )
))
(declare-fun zeroValue!944 () V!46009)

(declare-datatypes ((array!78080 0))(
  ( (array!78081 (arr!37676 (Array (_ BitVec 32) (_ BitVec 64))) (size!38213 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78080)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!58829 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19880 0))(
  ( (tuple2!19881 (_1!9950 (_ BitVec 64)) (_2!9950 V!46009)) )
))
(declare-datatypes ((List!26703 0))(
  ( (Nil!26700) (Cons!26699 (h!27908 tuple2!19880) (t!39647 List!26703)) )
))
(declare-datatypes ((ListLongMap!17861 0))(
  ( (ListLongMap!17862 (toList!8946 List!26703)) )
))
(declare-fun call!58837 () ListLongMap!17861)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14621 0))(
  ( (ValueCellFull!14621 (v!18033 V!46009)) (EmptyCell!14621) )
))
(declare-datatypes ((array!78082 0))(
  ( (array!78083 (arr!37677 (Array (_ BitVec 32) ValueCell!14621)) (size!38214 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78082)

(declare-fun minValue!944 () V!46009)

(declare-fun getCurrentListMapNoExtraKeys!5353 (array!78080 array!78082 (_ BitVec 32) (_ BitVec 32) V!46009 V!46009 (_ BitVec 32) Int) ListLongMap!17861)

(assert (=> bm!58829 (= call!58837 (getCurrentListMapNoExtraKeys!5353 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206829 () Bool)

(declare-fun res!802588 () Bool)

(declare-fun e!685387 () Bool)

(assert (=> b!1206829 (=> (not res!802588) (not e!685387))))

(assert (=> b!1206829 (= res!802588 (and (= (size!38214 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38213 _keys!1208) (size!38214 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1206830 () Bool)

(declare-fun res!802589 () Bool)

(assert (=> b!1206830 (=> (not res!802589) (not e!685387))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1206830 (= res!802589 (validKeyInArray!0 k!934))))

(declare-fun b!1206831 () Bool)

(declare-fun e!685389 () Bool)

(declare-fun call!58838 () ListLongMap!17861)

(assert (=> b!1206831 (= e!685389 (= call!58838 call!58837))))

(declare-fun res!802592 () Bool)

(assert (=> start!100854 (=> (not res!802592) (not e!685387))))

(assert (=> start!100854 (= res!802592 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38213 _keys!1208))))))

(assert (=> start!100854 e!685387))

(declare-fun tp_is_empty!30661 () Bool)

(assert (=> start!100854 tp_is_empty!30661))

(declare-fun array_inv!28602 (array!78080) Bool)

(assert (=> start!100854 (array_inv!28602 _keys!1208)))

(assert (=> start!100854 true))

(assert (=> start!100854 tp!90878))

(declare-fun e!685395 () Bool)

(declare-fun array_inv!28603 (array!78082) Bool)

(assert (=> start!100854 (and (array_inv!28603 _values!996) e!685395)))

(declare-fun b!1206832 () Bool)

(declare-fun -!1854 (ListLongMap!17861 (_ BitVec 64)) ListLongMap!17861)

(assert (=> b!1206832 (= e!685389 (= call!58838 (-!1854 call!58837 k!934)))))

(declare-fun bm!58830 () Bool)

(declare-fun call!58832 () Bool)

(declare-fun call!58839 () Bool)

(assert (=> bm!58830 (= call!58832 call!58839)))

(declare-fun e!685391 () Bool)

(declare-fun b!1206833 () Bool)

(declare-fun arrayContainsKey!0 (array!78080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1206833 (= e!685391 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206834 () Bool)

(declare-fun e!685397 () Bool)

(declare-fun e!685385 () Bool)

(assert (=> b!1206834 (= e!685397 e!685385)))

(declare-fun res!802590 () Bool)

(assert (=> b!1206834 (=> res!802590 e!685385)))

(assert (=> b!1206834 (= res!802590 (not (= (select (arr!37676 _keys!1208) from!1455) k!934)))))

(assert (=> b!1206834 e!685389))

(declare-fun c!118498 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1206834 (= c!118498 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39929 0))(
  ( (Unit!39930) )
))
(declare-fun lt!547493 () Unit!39929)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1058 (array!78080 array!78082 (_ BitVec 32) (_ BitVec 32) V!46009 V!46009 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39929)

(assert (=> b!1206834 (= lt!547493 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1058 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47850 () Bool)

(declare-fun mapRes!47850 () Bool)

(assert (=> mapIsEmpty!47850 mapRes!47850))

(declare-fun c!118497 () Bool)

(declare-fun c!118500 () Bool)

(declare-fun lt!547500 () ListLongMap!17861)

(declare-fun bm!58831 () Bool)

(declare-fun call!58836 () ListLongMap!17861)

(declare-fun lt!547505 () ListLongMap!17861)

(declare-fun +!3975 (ListLongMap!17861 tuple2!19880) ListLongMap!17861)

(assert (=> bm!58831 (= call!58836 (+!3975 (ite c!118497 lt!547500 lt!547505) (ite c!118497 (tuple2!19881 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118500 (tuple2!19881 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19881 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!58832 () Bool)

(declare-fun call!58833 () ListLongMap!17861)

(declare-fun contains!6949 (ListLongMap!17861 (_ BitVec 64)) Bool)

(assert (=> bm!58832 (= call!58839 (contains!6949 (ite c!118497 lt!547500 call!58833) k!934))))

(declare-fun b!1206835 () Bool)

(declare-fun e!685393 () Unit!39929)

(declare-fun Unit!39931 () Unit!39929)

(assert (=> b!1206835 (= e!685393 Unit!39931)))

(declare-fun b!1206836 () Bool)

(declare-fun e!685398 () Bool)

(declare-fun e!685394 () Bool)

(assert (=> b!1206836 (= e!685398 (not e!685394))))

(declare-fun res!802582 () Bool)

(assert (=> b!1206836 (=> res!802582 e!685394)))

(assert (=> b!1206836 (= res!802582 (bvsgt from!1455 i!673))))

(assert (=> b!1206836 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!547497 () Unit!39929)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78080 (_ BitVec 64) (_ BitVec 32)) Unit!39929)

(assert (=> b!1206836 (= lt!547497 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1206837 () Bool)

(declare-fun lt!547502 () Unit!39929)

(assert (=> b!1206837 (= e!685393 lt!547502)))

(declare-fun call!58834 () Unit!39929)

(assert (=> b!1206837 (= lt!547502 call!58834)))

(assert (=> b!1206837 call!58832))

(declare-fun b!1206838 () Bool)

(declare-fun e!685399 () Bool)

(assert (=> b!1206838 (= e!685399 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206839 () Bool)

(declare-fun e!685400 () Bool)

(assert (=> b!1206839 (= e!685400 true)))

(declare-datatypes ((List!26704 0))(
  ( (Nil!26701) (Cons!26700 (h!27909 (_ BitVec 64)) (t!39648 List!26704)) )
))
(declare-fun arrayNoDuplicates!0 (array!78080 (_ BitVec 32) List!26704) Bool)

(assert (=> b!1206839 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26701)))

(declare-fun lt!547491 () Unit!39929)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78080 (_ BitVec 32) (_ BitVec 32)) Unit!39929)

(assert (=> b!1206839 (= lt!547491 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1206839 e!685399))

(declare-fun res!802583 () Bool)

(assert (=> b!1206839 (=> (not res!802583) (not e!685399))))

(assert (=> b!1206839 (= res!802583 e!685391)))

(declare-fun c!118499 () Bool)

(assert (=> b!1206839 (= c!118499 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547501 () Unit!39929)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!577 (array!78080 array!78082 (_ BitVec 32) (_ BitVec 32) V!46009 V!46009 (_ BitVec 64) (_ BitVec 32) Int) Unit!39929)

(assert (=> b!1206839 (= lt!547501 (lemmaListMapContainsThenArrayContainsFrom!577 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547494 () Unit!39929)

(declare-fun e!685386 () Unit!39929)

(assert (=> b!1206839 (= lt!547494 e!685386)))

(declare-fun lt!547495 () Bool)

(assert (=> b!1206839 (= c!118497 (and (not lt!547495) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1206839 (= lt!547495 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1206840 () Bool)

(assert (=> b!1206840 (= e!685385 e!685400)))

(declare-fun res!802584 () Bool)

(assert (=> b!1206840 (=> res!802584 e!685400)))

(assert (=> b!1206840 (= res!802584 (not (contains!6949 lt!547505 k!934)))))

(assert (=> b!1206840 (= lt!547505 (getCurrentListMapNoExtraKeys!5353 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206841 () Bool)

(declare-fun res!802593 () Bool)

(assert (=> b!1206841 (=> (not res!802593) (not e!685398))))

(declare-fun lt!547492 () array!78080)

(assert (=> b!1206841 (= res!802593 (arrayNoDuplicates!0 lt!547492 #b00000000000000000000000000000000 Nil!26701))))

(declare-fun b!1206842 () Bool)

(declare-fun c!118501 () Bool)

(assert (=> b!1206842 (= c!118501 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547495))))

(declare-fun e!685392 () Unit!39929)

(assert (=> b!1206842 (= e!685392 e!685393)))

(declare-fun b!1206843 () Bool)

(declare-fun lt!547496 () Unit!39929)

(assert (=> b!1206843 (= e!685386 lt!547496)))

(declare-fun lt!547503 () Unit!39929)

(declare-fun addStillContains!1039 (ListLongMap!17861 (_ BitVec 64) V!46009 (_ BitVec 64)) Unit!39929)

(assert (=> b!1206843 (= lt!547503 (addStillContains!1039 lt!547505 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1206843 (= lt!547500 (+!3975 lt!547505 (tuple2!19881 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1206843 call!58839))

(declare-fun call!58835 () Unit!39929)

(assert (=> b!1206843 (= lt!547496 call!58835)))

(assert (=> b!1206843 (contains!6949 call!58836 k!934)))

(declare-fun b!1206844 () Bool)

(assert (=> b!1206844 (= e!685387 e!685398)))

(declare-fun res!802585 () Bool)

(assert (=> b!1206844 (=> (not res!802585) (not e!685398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78080 (_ BitVec 32)) Bool)

(assert (=> b!1206844 (= res!802585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547492 mask!1564))))

(assert (=> b!1206844 (= lt!547492 (array!78081 (store (arr!37676 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38213 _keys!1208)))))

(declare-fun bm!58833 () Bool)

(assert (=> bm!58833 (= call!58833 call!58836)))

(declare-fun b!1206845 () Bool)

(declare-fun res!802580 () Bool)

(assert (=> b!1206845 (=> (not res!802580) (not e!685387))))

(assert (=> b!1206845 (= res!802580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1206846 () Bool)

(declare-fun e!685388 () Bool)

(assert (=> b!1206846 (= e!685395 (and e!685388 mapRes!47850))))

(declare-fun condMapEmpty!47850 () Bool)

(declare-fun mapDefault!47850 () ValueCell!14621)

