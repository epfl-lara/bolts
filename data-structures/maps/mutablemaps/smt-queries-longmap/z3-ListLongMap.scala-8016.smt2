; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98974 () Bool)

(assert start!98974)

(declare-fun b_free!24543 () Bool)

(declare-fun b_next!24543 () Bool)

(assert (=> start!98974 (= b_free!24543 (not b_next!24543))))

(declare-fun tp!86340 () Bool)

(declare-fun b_and!39949 () Bool)

(assert (=> start!98974 (= tp!86340 b_and!39949)))

(declare-fun res!769937 () Bool)

(declare-fun e!659635 () Bool)

(assert (=> start!98974 (=> (not res!769937) (not e!659635))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74936 0))(
  ( (array!74937 (arr!36115 (Array (_ BitVec 32) (_ BitVec 64))) (size!36652 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74936)

(assert (=> start!98974 (= res!769937 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36652 _keys!1208))))))

(assert (=> start!98974 e!659635))

(declare-fun tp_is_empty!29073 () Bool)

(assert (=> start!98974 tp_is_empty!29073))

(declare-fun array_inv!27502 (array!74936) Bool)

(assert (=> start!98974 (array_inv!27502 _keys!1208)))

(assert (=> start!98974 true))

(assert (=> start!98974 tp!86340))

(declare-datatypes ((V!43891 0))(
  ( (V!43892 (val!14593 Int)) )
))
(declare-datatypes ((ValueCell!13827 0))(
  ( (ValueCellFull!13827 (v!17231 V!43891)) (EmptyCell!13827) )
))
(declare-datatypes ((array!74938 0))(
  ( (array!74939 (arr!36116 (Array (_ BitVec 32) ValueCell!13827)) (size!36653 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74938)

(declare-fun e!659633 () Bool)

(declare-fun array_inv!27503 (array!74938) Bool)

(assert (=> start!98974 (and (array_inv!27503 _values!996) e!659633)))

(declare-fun b!1159926 () Bool)

(declare-fun call!56057 () Bool)

(assert (=> b!1159926 call!56057))

(declare-datatypes ((Unit!38130 0))(
  ( (Unit!38131) )
))
(declare-fun lt!521600 () Unit!38130)

(declare-fun call!56059 () Unit!38130)

(assert (=> b!1159926 (= lt!521600 call!56059)))

(declare-fun e!659649 () Unit!38130)

(assert (=> b!1159926 (= e!659649 lt!521600)))

(declare-fun b!1159927 () Bool)

(declare-datatypes ((tuple2!18656 0))(
  ( (tuple2!18657 (_1!9338 (_ BitVec 64)) (_2!9338 V!43891)) )
))
(declare-datatypes ((List!25434 0))(
  ( (Nil!25431) (Cons!25430 (h!26639 tuple2!18656) (t!36976 List!25434)) )
))
(declare-datatypes ((ListLongMap!16637 0))(
  ( (ListLongMap!16638 (toList!8334 List!25434)) )
))
(declare-fun lt!521603 () ListLongMap!16637)

(declare-fun minValue!944 () V!43891)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6816 (ListLongMap!16637 (_ BitVec 64)) Bool)

(declare-fun +!3660 (ListLongMap!16637 tuple2!18656) ListLongMap!16637)

(assert (=> b!1159927 (contains!6816 (+!3660 lt!521603 (tuple2!18657 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!521613 () Unit!38130)

(declare-fun call!56062 () Unit!38130)

(assert (=> b!1159927 (= lt!521613 call!56062)))

(declare-fun call!56064 () Bool)

(assert (=> b!1159927 call!56064))

(declare-fun call!56061 () ListLongMap!16637)

(assert (=> b!1159927 (= lt!521603 call!56061)))

(declare-fun zeroValue!944 () V!43891)

(declare-fun lt!521604 () Unit!38130)

(declare-fun lt!521612 () ListLongMap!16637)

(declare-fun addStillContains!957 (ListLongMap!16637 (_ BitVec 64) V!43891 (_ BitVec 64)) Unit!38130)

(assert (=> b!1159927 (= lt!521604 (addStillContains!957 lt!521612 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!659648 () Unit!38130)

(assert (=> b!1159927 (= e!659648 lt!521613)))

(declare-fun mapIsEmpty!45434 () Bool)

(declare-fun mapRes!45434 () Bool)

(assert (=> mapIsEmpty!45434 mapRes!45434))

(declare-fun b!1159928 () Bool)

(declare-fun e!659642 () Bool)

(assert (=> b!1159928 (= e!659633 (and e!659642 mapRes!45434))))

(declare-fun condMapEmpty!45434 () Bool)

(declare-fun mapDefault!45434 () ValueCell!13827)

(assert (=> b!1159928 (= condMapEmpty!45434 (= (arr!36116 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13827)) mapDefault!45434)))))

(declare-fun b!1159929 () Bool)

(declare-fun e!659634 () Bool)

(declare-fun arrayContainsKey!0 (array!74936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159929 (= e!659634 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159930 () Bool)

(declare-fun res!769934 () Bool)

(declare-fun e!659636 () Bool)

(assert (=> b!1159930 (=> (not res!769934) (not e!659636))))

(declare-fun lt!521608 () array!74936)

(declare-datatypes ((List!25435 0))(
  ( (Nil!25432) (Cons!25431 (h!26640 (_ BitVec 64)) (t!36977 List!25435)) )
))
(declare-fun arrayNoDuplicates!0 (array!74936 (_ BitVec 32) List!25435) Bool)

(assert (=> b!1159930 (= res!769934 (arrayNoDuplicates!0 lt!521608 #b00000000000000000000000000000000 Nil!25432))))

(declare-fun b!1159931 () Bool)

(declare-fun e!659638 () Bool)

(declare-fun e!659645 () Bool)

(assert (=> b!1159931 (= e!659638 e!659645)))

(declare-fun res!769932 () Bool)

(assert (=> b!1159931 (=> res!769932 e!659645)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159931 (= res!769932 (not (= from!1455 i!673)))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!521599 () ListLongMap!16637)

(declare-fun lt!521607 () array!74938)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4770 (array!74936 array!74938 (_ BitVec 32) (_ BitVec 32) V!43891 V!43891 (_ BitVec 32) Int) ListLongMap!16637)

(assert (=> b!1159931 (= lt!521599 (getCurrentListMapNoExtraKeys!4770 lt!521608 lt!521607 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!521606 () V!43891)

(assert (=> b!1159931 (= lt!521607 (array!74939 (store (arr!36116 _values!996) i!673 (ValueCellFull!13827 lt!521606)) (size!36653 _values!996)))))

(declare-fun dynLambda!2772 (Int (_ BitVec 64)) V!43891)

(assert (=> b!1159931 (= lt!521606 (dynLambda!2772 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!521609 () ListLongMap!16637)

(assert (=> b!1159931 (= lt!521609 (getCurrentListMapNoExtraKeys!4770 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1159932 () Bool)

(declare-fun e!659637 () Bool)

(assert (=> b!1159932 (= e!659645 e!659637)))

(declare-fun res!769929 () Bool)

(assert (=> b!1159932 (=> res!769929 e!659637)))

(assert (=> b!1159932 (= res!769929 (not (= (select (arr!36115 _keys!1208) from!1455) k0!934)))))

(declare-fun e!659647 () Bool)

(assert (=> b!1159932 e!659647))

(declare-fun c!115697 () Bool)

(assert (=> b!1159932 (= c!115697 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521610 () Unit!38130)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!630 (array!74936 array!74938 (_ BitVec 32) (_ BitVec 32) V!43891 V!43891 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38130)

(assert (=> b!1159932 (= lt!521610 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!630 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159933 () Bool)

(declare-fun res!769940 () Bool)

(assert (=> b!1159933 (=> (not res!769940) (not e!659635))))

(assert (=> b!1159933 (= res!769940 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36652 _keys!1208))))))

(declare-fun e!659640 () Bool)

(declare-fun b!1159934 () Bool)

(declare-fun lt!521598 () ListLongMap!16637)

(assert (=> b!1159934 (= e!659640 (= lt!521598 (getCurrentListMapNoExtraKeys!4770 lt!521608 lt!521607 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun c!115694 () Bool)

(declare-fun c!115696 () Bool)

(declare-fun bm!56054 () Bool)

(assert (=> bm!56054 (= call!56062 (addStillContains!957 (ite c!115696 lt!521603 lt!521612) (ite c!115696 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115694 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115696 minValue!944 (ite c!115694 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1159935 () Bool)

(declare-fun e!659641 () Unit!38130)

(declare-fun Unit!38132 () Unit!38130)

(assert (=> b!1159935 (= e!659641 Unit!38132)))

(declare-fun lt!521601 () Bool)

(assert (=> b!1159935 (= lt!521601 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1159935 (= c!115696 (and (not lt!521601) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521618 () Unit!38130)

(assert (=> b!1159935 (= lt!521618 e!659648)))

(declare-fun lt!521614 () Unit!38130)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!531 (array!74936 array!74938 (_ BitVec 32) (_ BitVec 32) V!43891 V!43891 (_ BitVec 64) (_ BitVec 32) Int) Unit!38130)

(assert (=> b!1159935 (= lt!521614 (lemmaListMapContainsThenArrayContainsFrom!531 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115698 () Bool)

(assert (=> b!1159935 (= c!115698 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769939 () Bool)

(assert (=> b!1159935 (= res!769939 e!659634)))

(declare-fun e!659644 () Bool)

(assert (=> b!1159935 (=> (not res!769939) (not e!659644))))

(assert (=> b!1159935 e!659644))

(declare-fun lt!521615 () Unit!38130)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74936 (_ BitVec 32) (_ BitVec 32)) Unit!38130)

(assert (=> b!1159935 (= lt!521615 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1159935 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25432)))

(declare-fun lt!521619 () Unit!38130)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74936 (_ BitVec 64) (_ BitVec 32) List!25435) Unit!38130)

(assert (=> b!1159935 (= lt!521619 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25432))))

(assert (=> b!1159935 false))

(declare-fun b!1159936 () Bool)

(declare-fun Unit!38133 () Unit!38130)

(assert (=> b!1159936 (= e!659641 Unit!38133)))

(declare-fun b!1159937 () Bool)

(declare-fun call!56058 () ListLongMap!16637)

(declare-fun call!56060 () ListLongMap!16637)

(assert (=> b!1159937 (= e!659647 (= call!56058 call!56060))))

(declare-fun bm!56055 () Bool)

(assert (=> bm!56055 (= call!56057 call!56064)))

(declare-fun bm!56056 () Bool)

(declare-fun call!56063 () ListLongMap!16637)

(assert (=> bm!56056 (= call!56063 call!56061)))

(declare-fun b!1159938 () Bool)

(declare-fun res!769938 () Bool)

(assert (=> b!1159938 (=> (not res!769938) (not e!659635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74936 (_ BitVec 32)) Bool)

(assert (=> b!1159938 (= res!769938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1159939 () Bool)

(declare-fun res!769930 () Bool)

(assert (=> b!1159939 (=> (not res!769930) (not e!659635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159939 (= res!769930 (validKeyInArray!0 k0!934))))

(declare-fun b!1159940 () Bool)

(assert (=> b!1159940 (= c!115694 (and (not lt!521601) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!659646 () Unit!38130)

(assert (=> b!1159940 (= e!659648 e!659646)))

(declare-fun b!1159941 () Bool)

(declare-fun res!769933 () Bool)

(assert (=> b!1159941 (=> (not res!769933) (not e!659635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1159941 (= res!769933 (validMask!0 mask!1564))))

(declare-fun b!1159942 () Bool)

(declare-fun -!1406 (ListLongMap!16637 (_ BitVec 64)) ListLongMap!16637)

(assert (=> b!1159942 (= e!659647 (= call!56058 (-!1406 call!56060 k0!934)))))

(declare-fun b!1159943 () Bool)

(declare-fun res!769941 () Bool)

(assert (=> b!1159943 (=> (not res!769941) (not e!659635))))

(assert (=> b!1159943 (= res!769941 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25432))))

(declare-fun b!1159944 () Bool)

(declare-fun res!769931 () Bool)

(assert (=> b!1159944 (=> (not res!769931) (not e!659635))))

(assert (=> b!1159944 (= res!769931 (and (= (size!36653 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36652 _keys!1208) (size!36653 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1159945 () Bool)

(assert (=> b!1159945 (= e!659644 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159946 () Bool)

(assert (=> b!1159946 (= e!659637 true)))

(assert (=> b!1159946 e!659640))

(declare-fun res!769936 () Bool)

(assert (=> b!1159946 (=> (not res!769936) (not e!659640))))

(assert (=> b!1159946 (= res!769936 (= lt!521598 lt!521612))))

(assert (=> b!1159946 (= lt!521598 (-!1406 lt!521609 k0!934))))

(declare-fun lt!521617 () V!43891)

(assert (=> b!1159946 (= (-!1406 (+!3660 lt!521612 (tuple2!18657 (select (arr!36115 _keys!1208) from!1455) lt!521617)) (select (arr!36115 _keys!1208) from!1455)) lt!521612)))

(declare-fun lt!521611 () Unit!38130)

(declare-fun addThenRemoveForNewKeyIsSame!244 (ListLongMap!16637 (_ BitVec 64) V!43891) Unit!38130)

(assert (=> b!1159946 (= lt!521611 (addThenRemoveForNewKeyIsSame!244 lt!521612 (select (arr!36115 _keys!1208) from!1455) lt!521617))))

(declare-fun get!18446 (ValueCell!13827 V!43891) V!43891)

(assert (=> b!1159946 (= lt!521617 (get!18446 (select (arr!36116 _values!996) from!1455) lt!521606))))

(declare-fun lt!521616 () Unit!38130)

(assert (=> b!1159946 (= lt!521616 e!659641)))

(declare-fun c!115695 () Bool)

(assert (=> b!1159946 (= c!115695 (contains!6816 lt!521612 k0!934))))

(assert (=> b!1159946 (= lt!521612 (getCurrentListMapNoExtraKeys!4770 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45434 () Bool)

(declare-fun tp!86341 () Bool)

(declare-fun e!659643 () Bool)

(assert (=> mapNonEmpty!45434 (= mapRes!45434 (and tp!86341 e!659643))))

(declare-fun mapValue!45434 () ValueCell!13827)

(declare-fun mapRest!45434 () (Array (_ BitVec 32) ValueCell!13827))

(declare-fun mapKey!45434 () (_ BitVec 32))

(assert (=> mapNonEmpty!45434 (= (arr!36116 _values!996) (store mapRest!45434 mapKey!45434 mapValue!45434))))

(declare-fun b!1159947 () Bool)

(assert (=> b!1159947 (= e!659636 (not e!659638))))

(declare-fun res!769935 () Bool)

(assert (=> b!1159947 (=> res!769935 e!659638)))

(assert (=> b!1159947 (= res!769935 (bvsgt from!1455 i!673))))

(assert (=> b!1159947 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!521602 () Unit!38130)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74936 (_ BitVec 64) (_ BitVec 32)) Unit!38130)

(assert (=> b!1159947 (= lt!521602 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!56057 () Bool)

(assert (=> bm!56057 (= call!56064 (contains!6816 (ite c!115696 lt!521603 call!56063) k0!934))))

(declare-fun b!1159948 () Bool)

(assert (=> b!1159948 (= e!659634 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521601) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!56058 () Bool)

(assert (=> bm!56058 (= call!56060 (getCurrentListMapNoExtraKeys!4770 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159949 () Bool)

(declare-fun lt!521605 () Unit!38130)

(assert (=> b!1159949 (= e!659646 lt!521605)))

(assert (=> b!1159949 (= lt!521605 call!56059)))

(assert (=> b!1159949 call!56057))

(declare-fun b!1159950 () Bool)

(declare-fun res!769943 () Bool)

(assert (=> b!1159950 (=> (not res!769943) (not e!659635))))

(assert (=> b!1159950 (= res!769943 (= (select (arr!36115 _keys!1208) i!673) k0!934))))

(declare-fun b!1159951 () Bool)

(assert (=> b!1159951 (= e!659643 tp_is_empty!29073)))

(declare-fun b!1159952 () Bool)

(declare-fun Unit!38134 () Unit!38130)

(assert (=> b!1159952 (= e!659649 Unit!38134)))

(declare-fun b!1159953 () Bool)

(assert (=> b!1159953 (= e!659642 tp_is_empty!29073)))

(declare-fun bm!56059 () Bool)

(assert (=> bm!56059 (= call!56059 call!56062)))

(declare-fun bm!56060 () Bool)

(assert (=> bm!56060 (= call!56058 (getCurrentListMapNoExtraKeys!4770 lt!521608 lt!521607 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159954 () Bool)

(assert (=> b!1159954 (= e!659646 e!659649)))

(declare-fun c!115693 () Bool)

(assert (=> b!1159954 (= c!115693 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521601))))

(declare-fun bm!56061 () Bool)

(assert (=> bm!56061 (= call!56061 (+!3660 lt!521612 (ite (or c!115696 c!115694) (tuple2!18657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18657 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1159955 () Bool)

(assert (=> b!1159955 (= e!659635 e!659636)))

(declare-fun res!769942 () Bool)

(assert (=> b!1159955 (=> (not res!769942) (not e!659636))))

(assert (=> b!1159955 (= res!769942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521608 mask!1564))))

(assert (=> b!1159955 (= lt!521608 (array!74937 (store (arr!36115 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36652 _keys!1208)))))

(assert (= (and start!98974 res!769937) b!1159941))

(assert (= (and b!1159941 res!769933) b!1159944))

(assert (= (and b!1159944 res!769931) b!1159938))

(assert (= (and b!1159938 res!769938) b!1159943))

(assert (= (and b!1159943 res!769941) b!1159933))

(assert (= (and b!1159933 res!769940) b!1159939))

(assert (= (and b!1159939 res!769930) b!1159950))

(assert (= (and b!1159950 res!769943) b!1159955))

(assert (= (and b!1159955 res!769942) b!1159930))

(assert (= (and b!1159930 res!769934) b!1159947))

(assert (= (and b!1159947 (not res!769935)) b!1159931))

(assert (= (and b!1159931 (not res!769932)) b!1159932))

(assert (= (and b!1159932 c!115697) b!1159942))

(assert (= (and b!1159932 (not c!115697)) b!1159937))

(assert (= (or b!1159942 b!1159937) bm!56060))

(assert (= (or b!1159942 b!1159937) bm!56058))

(assert (= (and b!1159932 (not res!769929)) b!1159946))

(assert (= (and b!1159946 c!115695) b!1159935))

(assert (= (and b!1159946 (not c!115695)) b!1159936))

(assert (= (and b!1159935 c!115696) b!1159927))

(assert (= (and b!1159935 (not c!115696)) b!1159940))

(assert (= (and b!1159940 c!115694) b!1159949))

(assert (= (and b!1159940 (not c!115694)) b!1159954))

(assert (= (and b!1159954 c!115693) b!1159926))

(assert (= (and b!1159954 (not c!115693)) b!1159952))

(assert (= (or b!1159949 b!1159926) bm!56059))

(assert (= (or b!1159949 b!1159926) bm!56056))

(assert (= (or b!1159949 b!1159926) bm!56055))

(assert (= (or b!1159927 bm!56055) bm!56057))

(assert (= (or b!1159927 bm!56059) bm!56054))

(assert (= (or b!1159927 bm!56056) bm!56061))

(assert (= (and b!1159935 c!115698) b!1159929))

(assert (= (and b!1159935 (not c!115698)) b!1159948))

(assert (= (and b!1159935 res!769939) b!1159945))

(assert (= (and b!1159946 res!769936) b!1159934))

(assert (= (and b!1159928 condMapEmpty!45434) mapIsEmpty!45434))

(assert (= (and b!1159928 (not condMapEmpty!45434)) mapNonEmpty!45434))

(get-info :version)

(assert (= (and mapNonEmpty!45434 ((_ is ValueCellFull!13827) mapValue!45434)) b!1159951))

(assert (= (and b!1159928 ((_ is ValueCellFull!13827) mapDefault!45434)) b!1159953))

(assert (= start!98974 b!1159928))

(declare-fun b_lambda!19667 () Bool)

(assert (=> (not b_lambda!19667) (not b!1159931)))

(declare-fun t!36975 () Bool)

(declare-fun tb!9363 () Bool)

(assert (=> (and start!98974 (= defaultEntry!1004 defaultEntry!1004) t!36975) tb!9363))

(declare-fun result!19283 () Bool)

(assert (=> tb!9363 (= result!19283 tp_is_empty!29073)))

(assert (=> b!1159931 t!36975))

(declare-fun b_and!39951 () Bool)

(assert (= b_and!39949 (and (=> t!36975 result!19283) b_and!39951)))

(declare-fun m!1068983 () Bool)

(assert (=> b!1159941 m!1068983))

(declare-fun m!1068985 () Bool)

(assert (=> b!1159931 m!1068985))

(declare-fun m!1068987 () Bool)

(assert (=> b!1159931 m!1068987))

(declare-fun m!1068989 () Bool)

(assert (=> b!1159931 m!1068989))

(declare-fun m!1068991 () Bool)

(assert (=> b!1159931 m!1068991))

(declare-fun m!1068993 () Bool)

(assert (=> b!1159955 m!1068993))

(declare-fun m!1068995 () Bool)

(assert (=> b!1159955 m!1068995))

(declare-fun m!1068997 () Bool)

(assert (=> start!98974 m!1068997))

(declare-fun m!1068999 () Bool)

(assert (=> start!98974 m!1068999))

(declare-fun m!1069001 () Bool)

(assert (=> b!1159943 m!1069001))

(declare-fun m!1069003 () Bool)

(assert (=> b!1159934 m!1069003))

(declare-fun m!1069005 () Bool)

(assert (=> b!1159947 m!1069005))

(declare-fun m!1069007 () Bool)

(assert (=> b!1159947 m!1069007))

(declare-fun m!1069009 () Bool)

(assert (=> b!1159932 m!1069009))

(declare-fun m!1069011 () Bool)

(assert (=> b!1159932 m!1069011))

(declare-fun m!1069013 () Bool)

(assert (=> b!1159939 m!1069013))

(declare-fun m!1069015 () Bool)

(assert (=> bm!56061 m!1069015))

(declare-fun m!1069017 () Bool)

(assert (=> bm!56054 m!1069017))

(declare-fun m!1069019 () Bool)

(assert (=> b!1159946 m!1069019))

(declare-fun m!1069021 () Bool)

(assert (=> b!1159946 m!1069021))

(declare-fun m!1069023 () Bool)

(assert (=> b!1159946 m!1069023))

(assert (=> b!1159946 m!1069009))

(declare-fun m!1069025 () Bool)

(assert (=> b!1159946 m!1069025))

(declare-fun m!1069027 () Bool)

(assert (=> b!1159946 m!1069027))

(assert (=> b!1159946 m!1069009))

(declare-fun m!1069029 () Bool)

(assert (=> b!1159946 m!1069029))

(assert (=> b!1159946 m!1069021))

(declare-fun m!1069031 () Bool)

(assert (=> b!1159946 m!1069031))

(assert (=> b!1159946 m!1069023))

(assert (=> b!1159946 m!1069009))

(declare-fun m!1069033 () Bool)

(assert (=> b!1159946 m!1069033))

(declare-fun m!1069035 () Bool)

(assert (=> b!1159927 m!1069035))

(assert (=> b!1159927 m!1069035))

(declare-fun m!1069037 () Bool)

(assert (=> b!1159927 m!1069037))

(declare-fun m!1069039 () Bool)

(assert (=> b!1159927 m!1069039))

(assert (=> bm!56060 m!1069003))

(declare-fun m!1069041 () Bool)

(assert (=> bm!56057 m!1069041))

(declare-fun m!1069043 () Bool)

(assert (=> b!1159938 m!1069043))

(declare-fun m!1069045 () Bool)

(assert (=> b!1159935 m!1069045))

(declare-fun m!1069047 () Bool)

(assert (=> b!1159935 m!1069047))

(declare-fun m!1069049 () Bool)

(assert (=> b!1159935 m!1069049))

(declare-fun m!1069051 () Bool)

(assert (=> b!1159935 m!1069051))

(declare-fun m!1069053 () Bool)

(assert (=> b!1159950 m!1069053))

(declare-fun m!1069055 () Bool)

(assert (=> mapNonEmpty!45434 m!1069055))

(declare-fun m!1069057 () Bool)

(assert (=> b!1159945 m!1069057))

(declare-fun m!1069059 () Bool)

(assert (=> b!1159942 m!1069059))

(assert (=> b!1159929 m!1069057))

(declare-fun m!1069061 () Bool)

(assert (=> b!1159930 m!1069061))

(assert (=> bm!56058 m!1069019))

(check-sat (not b!1159946) (not b!1159931) (not b!1159942) b_and!39951 (not b!1159947) (not b!1159941) (not b!1159955) (not bm!56060) (not b!1159930) (not bm!56057) (not b!1159935) (not b!1159934) (not b!1159943) (not b!1159945) (not start!98974) (not bm!56058) (not b!1159929) (not bm!56054) (not b_lambda!19667) tp_is_empty!29073 (not bm!56061) (not b!1159932) (not b_next!24543) (not b!1159927) (not b!1159938) (not mapNonEmpty!45434) (not b!1159939))
(check-sat b_and!39951 (not b_next!24543))
