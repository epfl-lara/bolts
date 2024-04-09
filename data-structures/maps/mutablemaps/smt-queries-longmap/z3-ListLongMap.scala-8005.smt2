; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98908 () Bool)

(assert start!98908)

(declare-fun b_free!24477 () Bool)

(declare-fun b_next!24477 () Bool)

(assert (=> start!98908 (= b_free!24477 (not b_next!24477))))

(declare-fun tp!86143 () Bool)

(declare-fun b_and!39817 () Bool)

(assert (=> start!98908 (= tp!86143 b_and!39817)))

(declare-fun mapIsEmpty!45335 () Bool)

(declare-fun mapRes!45335 () Bool)

(assert (=> mapIsEmpty!45335 mapRes!45335))

(declare-fun b!1156890 () Bool)

(declare-fun e!657954 () Bool)

(declare-fun e!657959 () Bool)

(assert (=> b!1156890 (= e!657954 (and e!657959 mapRes!45335))))

(declare-fun condMapEmpty!45335 () Bool)

(declare-datatypes ((V!43803 0))(
  ( (V!43804 (val!14560 Int)) )
))
(declare-datatypes ((ValueCell!13794 0))(
  ( (ValueCellFull!13794 (v!17198 V!43803)) (EmptyCell!13794) )
))
(declare-datatypes ((array!74804 0))(
  ( (array!74805 (arr!36049 (Array (_ BitVec 32) ValueCell!13794)) (size!36586 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74804)

(declare-fun mapDefault!45335 () ValueCell!13794)

(assert (=> b!1156890 (= condMapEmpty!45335 (= (arr!36049 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13794)) mapDefault!45335)))))

(declare-fun zeroValue!944 () V!43803)

(declare-datatypes ((tuple2!18590 0))(
  ( (tuple2!18591 (_1!9305 (_ BitVec 64)) (_2!9305 V!43803)) )
))
(declare-datatypes ((List!25371 0))(
  ( (Nil!25368) (Cons!25367 (h!26576 tuple2!18590) (t!36847 List!25371)) )
))
(declare-datatypes ((ListLongMap!16571 0))(
  ( (ListLongMap!16572 (toList!8301 List!25371)) )
))
(declare-fun lt!519434 () ListLongMap!16571)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1156891 () Bool)

(declare-fun minValue!944 () V!43803)

(declare-datatypes ((array!74806 0))(
  ( (array!74807 (arr!36050 (Array (_ BitVec 32) (_ BitVec 64))) (size!36587 (_ BitVec 32))) )
))
(declare-fun lt!519440 () array!74806)

(declare-fun e!657955 () Bool)

(declare-fun lt!519433 () array!74804)

(declare-fun getCurrentListMapNoExtraKeys!4738 (array!74806 array!74804 (_ BitVec 32) (_ BitVec 32) V!43803 V!43803 (_ BitVec 32) Int) ListLongMap!16571)

(assert (=> b!1156891 (= e!657955 (= lt!519434 (getCurrentListMapNoExtraKeys!4738 lt!519440 lt!519433 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1156892 () Bool)

(declare-fun e!657966 () Bool)

(declare-fun e!657952 () Bool)

(assert (=> b!1156892 (= e!657966 e!657952)))

(declare-fun res!768444 () Bool)

(assert (=> b!1156892 (=> (not res!768444) (not e!657952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74806 (_ BitVec 32)) Bool)

(assert (=> b!1156892 (= res!768444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519440 mask!1564))))

(declare-fun _keys!1208 () array!74806)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156892 (= lt!519440 (array!74807 (store (arr!36050 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36587 _keys!1208)))))

(declare-fun b!1156893 () Bool)

(declare-fun tp_is_empty!29007 () Bool)

(assert (=> b!1156893 (= e!657959 tp_is_empty!29007)))

(declare-fun b!1156894 () Bool)

(declare-fun e!657951 () Bool)

(declare-fun call!55267 () ListLongMap!16571)

(declare-fun call!55272 () ListLongMap!16571)

(assert (=> b!1156894 (= e!657951 (= call!55267 call!55272))))

(declare-fun b!1156895 () Bool)

(declare-fun res!768450 () Bool)

(assert (=> b!1156895 (=> (not res!768450) (not e!657966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1156895 (= res!768450 (validMask!0 mask!1564))))

(declare-fun b!1156896 () Bool)

(declare-datatypes ((Unit!37994 0))(
  ( (Unit!37995) )
))
(declare-fun e!657964 () Unit!37994)

(declare-fun Unit!37996 () Unit!37994)

(assert (=> b!1156896 (= e!657964 Unit!37996)))

(declare-fun b!1156897 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!657957 () Bool)

(declare-fun arrayContainsKey!0 (array!74806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1156897 (= e!657957 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1156898 () Bool)

(declare-fun e!657962 () Unit!37994)

(declare-fun e!657953 () Unit!37994)

(assert (=> b!1156898 (= e!657962 e!657953)))

(declare-fun c!115104 () Bool)

(declare-fun lt!519423 () Bool)

(assert (=> b!1156898 (= c!115104 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519423))))

(declare-fun b!1156899 () Bool)

(declare-fun e!657956 () Bool)

(assert (=> b!1156899 (= e!657952 (not e!657956))))

(declare-fun res!768452 () Bool)

(assert (=> b!1156899 (=> res!768452 e!657956)))

(assert (=> b!1156899 (= res!768452 (bvsgt from!1455 i!673))))

(assert (=> b!1156899 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!519432 () Unit!37994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74806 (_ BitVec 64) (_ BitVec 32)) Unit!37994)

(assert (=> b!1156899 (= lt!519432 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun e!657965 () Bool)

(declare-fun b!1156900 () Bool)

(assert (=> b!1156900 (= e!657965 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!519423) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1156901 () Bool)

(declare-fun res!768458 () Bool)

(assert (=> b!1156901 (=> (not res!768458) (not e!657966))))

(assert (=> b!1156901 (= res!768458 (and (= (size!36586 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36587 _keys!1208) (size!36586 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!55263 () Bool)

(assert (=> bm!55263 (= call!55267 (getCurrentListMapNoExtraKeys!4738 lt!519440 lt!519433 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156902 () Bool)

(declare-fun Unit!37997 () Unit!37994)

(assert (=> b!1156902 (= e!657964 Unit!37997)))

(assert (=> b!1156902 (= lt!519423 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115103 () Bool)

(assert (=> b!1156902 (= c!115103 (and (not lt!519423) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519438 () Unit!37994)

(declare-fun e!657960 () Unit!37994)

(assert (=> b!1156902 (= lt!519438 e!657960)))

(declare-fun lt!519428 () Unit!37994)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!505 (array!74806 array!74804 (_ BitVec 32) (_ BitVec 32) V!43803 V!43803 (_ BitVec 64) (_ BitVec 32) Int) Unit!37994)

(assert (=> b!1156902 (= lt!519428 (lemmaListMapContainsThenArrayContainsFrom!505 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115101 () Bool)

(assert (=> b!1156902 (= c!115101 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768446 () Bool)

(assert (=> b!1156902 (= res!768446 e!657965)))

(assert (=> b!1156902 (=> (not res!768446) (not e!657957))))

(assert (=> b!1156902 e!657957))

(declare-fun lt!519426 () Unit!37994)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74806 (_ BitVec 32) (_ BitVec 32)) Unit!37994)

(assert (=> b!1156902 (= lt!519426 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25372 0))(
  ( (Nil!25369) (Cons!25368 (h!26577 (_ BitVec 64)) (t!36848 List!25372)) )
))
(declare-fun arrayNoDuplicates!0 (array!74806 (_ BitVec 32) List!25372) Bool)

(assert (=> b!1156902 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25369)))

(declare-fun lt!519436 () Unit!37994)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74806 (_ BitVec 64) (_ BitVec 32) List!25372) Unit!37994)

(assert (=> b!1156902 (= lt!519436 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25369))))

(assert (=> b!1156902 false))

(declare-fun b!1156903 () Bool)

(declare-fun e!657958 () Bool)

(declare-fun e!657950 () Bool)

(assert (=> b!1156903 (= e!657958 e!657950)))

(declare-fun res!768455 () Bool)

(assert (=> b!1156903 (=> res!768455 e!657950)))

(assert (=> b!1156903 (= res!768455 (not (= (select (arr!36050 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1156903 e!657951))

(declare-fun c!115102 () Bool)

(assert (=> b!1156903 (= c!115102 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519441 () Unit!37994)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!604 (array!74806 array!74804 (_ BitVec 32) (_ BitVec 32) V!43803 V!43803 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37994)

(assert (=> b!1156903 (= lt!519441 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!604 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156904 () Bool)

(assert (=> b!1156904 (= e!657950 true)))

(assert (=> b!1156904 e!657955))

(declare-fun res!768447 () Bool)

(assert (=> b!1156904 (=> (not res!768447) (not e!657955))))

(declare-fun lt!519425 () ListLongMap!16571)

(assert (=> b!1156904 (= res!768447 (= lt!519434 lt!519425))))

(declare-fun lt!519435 () ListLongMap!16571)

(declare-fun -!1377 (ListLongMap!16571 (_ BitVec 64)) ListLongMap!16571)

(assert (=> b!1156904 (= lt!519434 (-!1377 lt!519435 k0!934))))

(declare-fun lt!519429 () V!43803)

(declare-fun +!3631 (ListLongMap!16571 tuple2!18590) ListLongMap!16571)

(assert (=> b!1156904 (= (-!1377 (+!3631 lt!519425 (tuple2!18591 (select (arr!36050 _keys!1208) from!1455) lt!519429)) (select (arr!36050 _keys!1208) from!1455)) lt!519425)))

(declare-fun lt!519421 () Unit!37994)

(declare-fun addThenRemoveForNewKeyIsSame!219 (ListLongMap!16571 (_ BitVec 64) V!43803) Unit!37994)

(assert (=> b!1156904 (= lt!519421 (addThenRemoveForNewKeyIsSame!219 lt!519425 (select (arr!36050 _keys!1208) from!1455) lt!519429))))

(declare-fun lt!519427 () V!43803)

(declare-fun get!18399 (ValueCell!13794 V!43803) V!43803)

(assert (=> b!1156904 (= lt!519429 (get!18399 (select (arr!36049 _values!996) from!1455) lt!519427))))

(declare-fun lt!519424 () Unit!37994)

(assert (=> b!1156904 (= lt!519424 e!657964)))

(declare-fun c!115100 () Bool)

(declare-fun contains!6787 (ListLongMap!16571 (_ BitVec 64)) Bool)

(assert (=> b!1156904 (= c!115100 (contains!6787 lt!519425 k0!934))))

(assert (=> b!1156904 (= lt!519425 (getCurrentListMapNoExtraKeys!4738 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156905 () Bool)

(declare-fun e!657961 () Bool)

(assert (=> b!1156905 (= e!657961 tp_is_empty!29007)))

(declare-fun res!768453 () Bool)

(assert (=> start!98908 (=> (not res!768453) (not e!657966))))

(assert (=> start!98908 (= res!768453 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36587 _keys!1208))))))

(assert (=> start!98908 e!657966))

(assert (=> start!98908 tp_is_empty!29007))

(declare-fun array_inv!27458 (array!74806) Bool)

(assert (=> start!98908 (array_inv!27458 _keys!1208)))

(assert (=> start!98908 true))

(assert (=> start!98908 tp!86143))

(declare-fun array_inv!27459 (array!74804) Bool)

(assert (=> start!98908 (and (array_inv!27459 _values!996) e!657954)))

(declare-fun bm!55262 () Bool)

(declare-fun call!55269 () ListLongMap!16571)

(declare-fun call!55270 () ListLongMap!16571)

(assert (=> bm!55262 (= call!55269 call!55270)))

(declare-fun call!55268 () Unit!37994)

(declare-fun bm!55264 () Bool)

(declare-fun c!115099 () Bool)

(declare-fun addStillContains!927 (ListLongMap!16571 (_ BitVec 64) V!43803 (_ BitVec 64)) Unit!37994)

(assert (=> bm!55264 (= call!55268 (addStillContains!927 lt!519425 (ite (or c!115103 c!115099) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115103 c!115099) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!55265 () Bool)

(declare-fun call!55266 () Unit!37994)

(assert (=> bm!55265 (= call!55266 call!55268)))

(declare-fun bm!55266 () Bool)

(declare-fun call!55265 () Bool)

(declare-fun call!55271 () Bool)

(assert (=> bm!55266 (= call!55265 call!55271)))

(declare-fun bm!55267 () Bool)

(declare-fun lt!519422 () ListLongMap!16571)

(assert (=> bm!55267 (= call!55271 (contains!6787 (ite c!115103 lt!519422 call!55269) k0!934))))

(declare-fun mapNonEmpty!45335 () Bool)

(declare-fun tp!86142 () Bool)

(assert (=> mapNonEmpty!45335 (= mapRes!45335 (and tp!86142 e!657961))))

(declare-fun mapKey!45335 () (_ BitVec 32))

(declare-fun mapRest!45335 () (Array (_ BitVec 32) ValueCell!13794))

(declare-fun mapValue!45335 () ValueCell!13794)

(assert (=> mapNonEmpty!45335 (= (arr!36049 _values!996) (store mapRest!45335 mapKey!45335 mapValue!45335))))

(declare-fun b!1156906 () Bool)

(declare-fun res!768454 () Bool)

(assert (=> b!1156906 (=> (not res!768454) (not e!657966))))

(assert (=> b!1156906 (= res!768454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1156907 () Bool)

(declare-fun lt!519437 () Unit!37994)

(assert (=> b!1156907 (= e!657962 lt!519437)))

(assert (=> b!1156907 (= lt!519437 call!55266)))

(assert (=> b!1156907 call!55265))

(declare-fun b!1156908 () Bool)

(declare-fun res!768449 () Bool)

(assert (=> b!1156908 (=> (not res!768449) (not e!657966))))

(assert (=> b!1156908 (= res!768449 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36587 _keys!1208))))))

(declare-fun bm!55268 () Bool)

(assert (=> bm!55268 (= call!55270 (+!3631 (ite c!115103 lt!519422 lt!519425) (ite c!115103 (tuple2!18591 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115099 (tuple2!18591 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18591 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1156909 () Bool)

(assert (=> b!1156909 (= e!657951 (= call!55267 (-!1377 call!55272 k0!934)))))

(declare-fun bm!55269 () Bool)

(assert (=> bm!55269 (= call!55272 (getCurrentListMapNoExtraKeys!4738 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156910 () Bool)

(assert (=> b!1156910 (contains!6787 call!55270 k0!934)))

(declare-fun lt!519439 () Unit!37994)

(assert (=> b!1156910 (= lt!519439 (addStillContains!927 lt!519422 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1156910 call!55271))

(assert (=> b!1156910 (= lt!519422 (+!3631 lt!519425 (tuple2!18591 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!519431 () Unit!37994)

(assert (=> b!1156910 (= lt!519431 call!55268)))

(assert (=> b!1156910 (= e!657960 lt!519439)))

(declare-fun b!1156911 () Bool)

(declare-fun res!768456 () Bool)

(assert (=> b!1156911 (=> (not res!768456) (not e!657966))))

(assert (=> b!1156911 (= res!768456 (= (select (arr!36050 _keys!1208) i!673) k0!934))))

(declare-fun b!1156912 () Bool)

(declare-fun Unit!37998 () Unit!37994)

(assert (=> b!1156912 (= e!657953 Unit!37998)))

(declare-fun b!1156913 () Bool)

(assert (=> b!1156913 (= e!657956 e!657958)))

(declare-fun res!768445 () Bool)

(assert (=> b!1156913 (=> res!768445 e!657958)))

(assert (=> b!1156913 (= res!768445 (not (= from!1455 i!673)))))

(declare-fun lt!519420 () ListLongMap!16571)

(assert (=> b!1156913 (= lt!519420 (getCurrentListMapNoExtraKeys!4738 lt!519440 lt!519433 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1156913 (= lt!519433 (array!74805 (store (arr!36049 _values!996) i!673 (ValueCellFull!13794 lt!519427)) (size!36586 _values!996)))))

(declare-fun dynLambda!2750 (Int (_ BitVec 64)) V!43803)

(assert (=> b!1156913 (= lt!519427 (dynLambda!2750 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1156913 (= lt!519435 (getCurrentListMapNoExtraKeys!4738 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1156914 () Bool)

(declare-fun res!768457 () Bool)

(assert (=> b!1156914 (=> (not res!768457) (not e!657952))))

(assert (=> b!1156914 (= res!768457 (arrayNoDuplicates!0 lt!519440 #b00000000000000000000000000000000 Nil!25369))))

(declare-fun b!1156915 () Bool)

(assert (=> b!1156915 (= e!657965 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1156916 () Bool)

(assert (=> b!1156916 call!55265))

(declare-fun lt!519430 () Unit!37994)

(assert (=> b!1156916 (= lt!519430 call!55266)))

(assert (=> b!1156916 (= e!657953 lt!519430)))

(declare-fun b!1156917 () Bool)

(assert (=> b!1156917 (= c!115099 (and (not lt!519423) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1156917 (= e!657960 e!657962)))

(declare-fun b!1156918 () Bool)

(declare-fun res!768451 () Bool)

(assert (=> b!1156918 (=> (not res!768451) (not e!657966))))

(assert (=> b!1156918 (= res!768451 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25369))))

(declare-fun b!1156919 () Bool)

(declare-fun res!768448 () Bool)

(assert (=> b!1156919 (=> (not res!768448) (not e!657966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1156919 (= res!768448 (validKeyInArray!0 k0!934))))

(assert (= (and start!98908 res!768453) b!1156895))

(assert (= (and b!1156895 res!768450) b!1156901))

(assert (= (and b!1156901 res!768458) b!1156906))

(assert (= (and b!1156906 res!768454) b!1156918))

(assert (= (and b!1156918 res!768451) b!1156908))

(assert (= (and b!1156908 res!768449) b!1156919))

(assert (= (and b!1156919 res!768448) b!1156911))

(assert (= (and b!1156911 res!768456) b!1156892))

(assert (= (and b!1156892 res!768444) b!1156914))

(assert (= (and b!1156914 res!768457) b!1156899))

(assert (= (and b!1156899 (not res!768452)) b!1156913))

(assert (= (and b!1156913 (not res!768445)) b!1156903))

(assert (= (and b!1156903 c!115102) b!1156909))

(assert (= (and b!1156903 (not c!115102)) b!1156894))

(assert (= (or b!1156909 b!1156894) bm!55263))

(assert (= (or b!1156909 b!1156894) bm!55269))

(assert (= (and b!1156903 (not res!768455)) b!1156904))

(assert (= (and b!1156904 c!115100) b!1156902))

(assert (= (and b!1156904 (not c!115100)) b!1156896))

(assert (= (and b!1156902 c!115103) b!1156910))

(assert (= (and b!1156902 (not c!115103)) b!1156917))

(assert (= (and b!1156917 c!115099) b!1156907))

(assert (= (and b!1156917 (not c!115099)) b!1156898))

(assert (= (and b!1156898 c!115104) b!1156916))

(assert (= (and b!1156898 (not c!115104)) b!1156912))

(assert (= (or b!1156907 b!1156916) bm!55265))

(assert (= (or b!1156907 b!1156916) bm!55262))

(assert (= (or b!1156907 b!1156916) bm!55266))

(assert (= (or b!1156910 bm!55266) bm!55267))

(assert (= (or b!1156910 bm!55265) bm!55264))

(assert (= (or b!1156910 bm!55262) bm!55268))

(assert (= (and b!1156902 c!115101) b!1156915))

(assert (= (and b!1156902 (not c!115101)) b!1156900))

(assert (= (and b!1156902 res!768446) b!1156897))

(assert (= (and b!1156904 res!768447) b!1156891))

(assert (= (and b!1156890 condMapEmpty!45335) mapIsEmpty!45335))

(assert (= (and b!1156890 (not condMapEmpty!45335)) mapNonEmpty!45335))

(get-info :version)

(assert (= (and mapNonEmpty!45335 ((_ is ValueCellFull!13794) mapValue!45335)) b!1156905))

(assert (= (and b!1156890 ((_ is ValueCellFull!13794) mapDefault!45335)) b!1156893))

(assert (= start!98908 b!1156890))

(declare-fun b_lambda!19601 () Bool)

(assert (=> (not b_lambda!19601) (not b!1156913)))

(declare-fun t!36846 () Bool)

(declare-fun tb!9297 () Bool)

(assert (=> (and start!98908 (= defaultEntry!1004 defaultEntry!1004) t!36846) tb!9297))

(declare-fun result!19151 () Bool)

(assert (=> tb!9297 (= result!19151 tp_is_empty!29007)))

(assert (=> b!1156913 t!36846))

(declare-fun b_and!39819 () Bool)

(assert (= b_and!39817 (and (=> t!36846 result!19151) b_and!39819)))

(declare-fun m!1066343 () Bool)

(assert (=> b!1156899 m!1066343))

(declare-fun m!1066345 () Bool)

(assert (=> b!1156899 m!1066345))

(declare-fun m!1066347 () Bool)

(assert (=> b!1156915 m!1066347))

(declare-fun m!1066349 () Bool)

(assert (=> b!1156914 m!1066349))

(declare-fun m!1066351 () Bool)

(assert (=> b!1156906 m!1066351))

(declare-fun m!1066353 () Bool)

(assert (=> mapNonEmpty!45335 m!1066353))

(declare-fun m!1066355 () Bool)

(assert (=> b!1156913 m!1066355))

(declare-fun m!1066357 () Bool)

(assert (=> b!1156913 m!1066357))

(declare-fun m!1066359 () Bool)

(assert (=> b!1156913 m!1066359))

(declare-fun m!1066361 () Bool)

(assert (=> b!1156913 m!1066361))

(declare-fun m!1066363 () Bool)

(assert (=> b!1156918 m!1066363))

(declare-fun m!1066365 () Bool)

(assert (=> b!1156902 m!1066365))

(declare-fun m!1066367 () Bool)

(assert (=> b!1156902 m!1066367))

(declare-fun m!1066369 () Bool)

(assert (=> b!1156902 m!1066369))

(declare-fun m!1066371 () Bool)

(assert (=> b!1156902 m!1066371))

(declare-fun m!1066373 () Bool)

(assert (=> b!1156892 m!1066373))

(declare-fun m!1066375 () Bool)

(assert (=> b!1156892 m!1066375))

(declare-fun m!1066377 () Bool)

(assert (=> b!1156903 m!1066377))

(declare-fun m!1066379 () Bool)

(assert (=> b!1156903 m!1066379))

(declare-fun m!1066381 () Bool)

(assert (=> bm!55267 m!1066381))

(declare-fun m!1066383 () Bool)

(assert (=> b!1156919 m!1066383))

(declare-fun m!1066385 () Bool)

(assert (=> b!1156891 m!1066385))

(declare-fun m!1066387 () Bool)

(assert (=> start!98908 m!1066387))

(declare-fun m!1066389 () Bool)

(assert (=> start!98908 m!1066389))

(declare-fun m!1066391 () Bool)

(assert (=> bm!55269 m!1066391))

(declare-fun m!1066393 () Bool)

(assert (=> b!1156895 m!1066393))

(assert (=> bm!55263 m!1066385))

(assert (=> b!1156904 m!1066391))

(declare-fun m!1066395 () Bool)

(assert (=> b!1156904 m!1066395))

(declare-fun m!1066397 () Bool)

(assert (=> b!1156904 m!1066397))

(assert (=> b!1156904 m!1066395))

(declare-fun m!1066399 () Bool)

(assert (=> b!1156904 m!1066399))

(declare-fun m!1066401 () Bool)

(assert (=> b!1156904 m!1066401))

(assert (=> b!1156904 m!1066377))

(declare-fun m!1066403 () Bool)

(assert (=> b!1156904 m!1066403))

(declare-fun m!1066405 () Bool)

(assert (=> b!1156904 m!1066405))

(assert (=> b!1156904 m!1066399))

(assert (=> b!1156904 m!1066377))

(declare-fun m!1066407 () Bool)

(assert (=> b!1156904 m!1066407))

(assert (=> b!1156904 m!1066377))

(declare-fun m!1066409 () Bool)

(assert (=> bm!55264 m!1066409))

(declare-fun m!1066411 () Bool)

(assert (=> bm!55268 m!1066411))

(declare-fun m!1066413 () Bool)

(assert (=> b!1156910 m!1066413))

(declare-fun m!1066415 () Bool)

(assert (=> b!1156910 m!1066415))

(declare-fun m!1066417 () Bool)

(assert (=> b!1156910 m!1066417))

(declare-fun m!1066419 () Bool)

(assert (=> b!1156909 m!1066419))

(assert (=> b!1156897 m!1066347))

(declare-fun m!1066421 () Bool)

(assert (=> b!1156911 m!1066421))

(check-sat (not bm!55264) (not b!1156919) (not b_lambda!19601) (not b!1156906) (not b_next!24477) (not b!1156904) (not b!1156909) (not b!1156913) (not start!98908) (not bm!55269) (not bm!55267) (not bm!55268) (not b!1156895) (not b!1156910) (not mapNonEmpty!45335) tp_is_empty!29007 (not b!1156914) b_and!39819 (not b!1156892) (not b!1156902) (not b!1156897) (not b!1156899) (not bm!55263) (not b!1156903) (not b!1156918) (not b!1156891) (not b!1156915))
(check-sat b_and!39819 (not b_next!24477))
