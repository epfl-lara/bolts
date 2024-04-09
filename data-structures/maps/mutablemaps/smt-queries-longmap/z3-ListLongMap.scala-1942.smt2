; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34356 () Bool)

(assert start!34356)

(declare-fun b_free!7323 () Bool)

(declare-fun b_next!7323 () Bool)

(assert (=> start!34356 (= b_free!7323 (not b_next!7323))))

(declare-fun tp!25508 () Bool)

(declare-fun b_and!14545 () Bool)

(assert (=> start!34356 (= tp!25508 b_and!14545)))

(declare-fun b!342862 () Bool)

(declare-fun e!210250 () Bool)

(declare-fun e!210248 () Bool)

(declare-fun mapRes!12345 () Bool)

(assert (=> b!342862 (= e!210250 (and e!210248 mapRes!12345))))

(declare-fun condMapEmpty!12345 () Bool)

(declare-datatypes ((V!10677 0))(
  ( (V!10678 (val!3682 Int)) )
))
(declare-datatypes ((ValueCell!3294 0))(
  ( (ValueCellFull!3294 (v!5852 V!10677)) (EmptyCell!3294) )
))
(declare-datatypes ((array!18115 0))(
  ( (array!18116 (arr!8573 (Array (_ BitVec 32) ValueCell!3294)) (size!8925 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18115)

(declare-fun mapDefault!12345 () ValueCell!3294)

(assert (=> b!342862 (= condMapEmpty!12345 (= (arr!8573 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3294)) mapDefault!12345)))))

(declare-fun b!342863 () Bool)

(declare-datatypes ((Unit!10709 0))(
  ( (Unit!10710) )
))
(declare-fun e!210247 () Unit!10709)

(declare-fun Unit!10711 () Unit!10709)

(assert (=> b!342863 (= e!210247 Unit!10711)))

(declare-fun b!342864 () Bool)

(declare-fun res!189620 () Bool)

(declare-fun e!210249 () Bool)

(assert (=> b!342864 (=> (not res!189620) (not e!210249))))

(declare-datatypes ((array!18117 0))(
  ( (array!18118 (arr!8574 (Array (_ BitVec 32) (_ BitVec 64))) (size!8926 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18117)

(declare-datatypes ((List!4969 0))(
  ( (Nil!4966) (Cons!4965 (h!5821 (_ BitVec 64)) (t!10089 List!4969)) )
))
(declare-fun arrayNoDuplicates!0 (array!18117 (_ BitVec 32) List!4969) Bool)

(assert (=> b!342864 (= res!189620 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4966))))

(declare-fun res!189612 () Bool)

(assert (=> start!34356 (=> (not res!189612) (not e!210249))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34356 (= res!189612 (validMask!0 mask!2385))))

(assert (=> start!34356 e!210249))

(assert (=> start!34356 true))

(declare-fun tp_is_empty!7275 () Bool)

(assert (=> start!34356 tp_is_empty!7275))

(assert (=> start!34356 tp!25508))

(declare-fun array_inv!6340 (array!18115) Bool)

(assert (=> start!34356 (and (array_inv!6340 _values!1525) e!210250)))

(declare-fun array_inv!6341 (array!18117) Bool)

(assert (=> start!34356 (array_inv!6341 _keys!1895)))

(declare-fun b!342865 () Bool)

(declare-fun res!189616 () Bool)

(assert (=> b!342865 (=> (not res!189616) (not e!210249))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10677)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10677)

(declare-datatypes ((tuple2!5326 0))(
  ( (tuple2!5327 (_1!2673 (_ BitVec 64)) (_2!2673 V!10677)) )
))
(declare-datatypes ((List!4970 0))(
  ( (Nil!4967) (Cons!4966 (h!5822 tuple2!5326) (t!10090 List!4970)) )
))
(declare-datatypes ((ListLongMap!4253 0))(
  ( (ListLongMap!4254 (toList!2142 List!4970)) )
))
(declare-fun contains!2194 (ListLongMap!4253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1662 (array!18117 array!18115 (_ BitVec 32) (_ BitVec 32) V!10677 V!10677 (_ BitVec 32) Int) ListLongMap!4253)

(assert (=> b!342865 (= res!189616 (not (contains!2194 (getCurrentListMap!1662 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!342866 () Bool)

(declare-fun Unit!10712 () Unit!10709)

(assert (=> b!342866 (= e!210247 Unit!10712)))

(declare-fun lt!162278 () Unit!10709)

(declare-fun lemmaArrayContainsKeyThenInListMap!314 (array!18117 array!18115 (_ BitVec 32) (_ BitVec 32) V!10677 V!10677 (_ BitVec 64) (_ BitVec 32) Int) Unit!10709)

(declare-fun arrayScanForKey!0 (array!18117 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342866 (= lt!162278 (lemmaArrayContainsKeyThenInListMap!314 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342866 false))

(declare-fun b!342867 () Bool)

(declare-fun e!210246 () Bool)

(declare-fun e!210252 () Bool)

(assert (=> b!342867 (= e!210246 e!210252)))

(declare-fun res!189615 () Bool)

(assert (=> b!342867 (=> (not res!189615) (not e!210252))))

(declare-fun lt!162279 () Bool)

(assert (=> b!342867 (= res!189615 (not lt!162279))))

(declare-fun lt!162276 () Unit!10709)

(assert (=> b!342867 (= lt!162276 e!210247)))

(declare-fun c!52787 () Bool)

(assert (=> b!342867 (= c!52787 lt!162279)))

(declare-fun arrayContainsKey!0 (array!18117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342867 (= lt!162279 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!342868 () Bool)

(assert (=> b!342868 (= e!210248 tp_is_empty!7275)))

(declare-fun mapNonEmpty!12345 () Bool)

(declare-fun tp!25509 () Bool)

(declare-fun e!210251 () Bool)

(assert (=> mapNonEmpty!12345 (= mapRes!12345 (and tp!25509 e!210251))))

(declare-fun mapRest!12345 () (Array (_ BitVec 32) ValueCell!3294))

(declare-fun mapValue!12345 () ValueCell!3294)

(declare-fun mapKey!12345 () (_ BitVec 32))

(assert (=> mapNonEmpty!12345 (= (arr!8573 _values!1525) (store mapRest!12345 mapKey!12345 mapValue!12345))))

(declare-fun b!342869 () Bool)

(declare-fun res!189617 () Bool)

(assert (=> b!342869 (=> (not res!189617) (not e!210249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18117 (_ BitVec 32)) Bool)

(assert (=> b!342869 (= res!189617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342870 () Bool)

(assert (=> b!342870 (= e!210249 e!210246)))

(declare-fun res!189613 () Bool)

(assert (=> b!342870 (=> (not res!189613) (not e!210246))))

(declare-datatypes ((SeekEntryResult!3306 0))(
  ( (MissingZero!3306 (index!15403 (_ BitVec 32))) (Found!3306 (index!15404 (_ BitVec 32))) (Intermediate!3306 (undefined!4118 Bool) (index!15405 (_ BitVec 32)) (x!34139 (_ BitVec 32))) (Undefined!3306) (MissingVacant!3306 (index!15406 (_ BitVec 32))) )
))
(declare-fun lt!162277 () SeekEntryResult!3306)

(get-info :version)

(assert (=> b!342870 (= res!189613 (and (not ((_ is Found!3306) lt!162277)) (not ((_ is MissingZero!3306) lt!162277)) ((_ is MissingVacant!3306) lt!162277)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18117 (_ BitVec 32)) SeekEntryResult!3306)

(assert (=> b!342870 (= lt!162277 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!342871 () Bool)

(assert (=> b!342871 (= e!210251 tp_is_empty!7275)))

(declare-fun b!342872 () Bool)

(declare-fun res!189619 () Bool)

(assert (=> b!342872 (=> (not res!189619) (not e!210249))))

(assert (=> b!342872 (= res!189619 (and (= (size!8925 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8926 _keys!1895) (size!8925 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342873 () Bool)

(assert (=> b!342873 (= e!210252 (and (= (select (arr!8574 _keys!1895) (index!15406 lt!162277)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge #b00000000000000000000000000000000 (size!8926 _keys!1895))))))

(declare-fun mapIsEmpty!12345 () Bool)

(assert (=> mapIsEmpty!12345 mapRes!12345))

(declare-fun b!342874 () Bool)

(declare-fun res!189614 () Bool)

(assert (=> b!342874 (=> (not res!189614) (not e!210249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342874 (= res!189614 (validKeyInArray!0 k0!1348))))

(declare-fun b!342875 () Bool)

(declare-fun res!189618 () Bool)

(assert (=> b!342875 (=> (not res!189618) (not e!210252))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!342875 (= res!189618 (inRange!0 (index!15406 lt!162277) mask!2385))))

(assert (= (and start!34356 res!189612) b!342872))

(assert (= (and b!342872 res!189619) b!342869))

(assert (= (and b!342869 res!189617) b!342864))

(assert (= (and b!342864 res!189620) b!342874))

(assert (= (and b!342874 res!189614) b!342865))

(assert (= (and b!342865 res!189616) b!342870))

(assert (= (and b!342870 res!189613) b!342867))

(assert (= (and b!342867 c!52787) b!342866))

(assert (= (and b!342867 (not c!52787)) b!342863))

(assert (= (and b!342867 res!189615) b!342875))

(assert (= (and b!342875 res!189618) b!342873))

(assert (= (and b!342862 condMapEmpty!12345) mapIsEmpty!12345))

(assert (= (and b!342862 (not condMapEmpty!12345)) mapNonEmpty!12345))

(assert (= (and mapNonEmpty!12345 ((_ is ValueCellFull!3294) mapValue!12345)) b!342871))

(assert (= (and b!342862 ((_ is ValueCellFull!3294) mapDefault!12345)) b!342868))

(assert (= start!34356 b!342862))

(declare-fun m!344883 () Bool)

(assert (=> b!342874 m!344883))

(declare-fun m!344885 () Bool)

(assert (=> b!342870 m!344885))

(declare-fun m!344887 () Bool)

(assert (=> b!342866 m!344887))

(assert (=> b!342866 m!344887))

(declare-fun m!344889 () Bool)

(assert (=> b!342866 m!344889))

(declare-fun m!344891 () Bool)

(assert (=> mapNonEmpty!12345 m!344891))

(declare-fun m!344893 () Bool)

(assert (=> b!342865 m!344893))

(assert (=> b!342865 m!344893))

(declare-fun m!344895 () Bool)

(assert (=> b!342865 m!344895))

(declare-fun m!344897 () Bool)

(assert (=> b!342875 m!344897))

(declare-fun m!344899 () Bool)

(assert (=> b!342869 m!344899))

(declare-fun m!344901 () Bool)

(assert (=> b!342867 m!344901))

(declare-fun m!344903 () Bool)

(assert (=> b!342864 m!344903))

(declare-fun m!344905 () Bool)

(assert (=> start!34356 m!344905))

(declare-fun m!344907 () Bool)

(assert (=> start!34356 m!344907))

(declare-fun m!344909 () Bool)

(assert (=> start!34356 m!344909))

(declare-fun m!344911 () Bool)

(assert (=> b!342873 m!344911))

(check-sat (not b!342865) (not start!34356) tp_is_empty!7275 (not b_next!7323) b_and!14545 (not b!342867) (not b!342875) (not b!342870) (not b!342874) (not b!342869) (not b!342866) (not mapNonEmpty!12345) (not b!342864))
(check-sat b_and!14545 (not b_next!7323))
(get-model)

(declare-fun d!70891 () Bool)

(declare-fun res!189652 () Bool)

(declare-fun e!210281 () Bool)

(assert (=> d!70891 (=> res!189652 e!210281)))

(assert (=> d!70891 (= res!189652 (= (select (arr!8574 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70891 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!210281)))

(declare-fun b!342922 () Bool)

(declare-fun e!210282 () Bool)

(assert (=> b!342922 (= e!210281 e!210282)))

(declare-fun res!189653 () Bool)

(assert (=> b!342922 (=> (not res!189653) (not e!210282))))

(assert (=> b!342922 (= res!189653 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8926 _keys!1895)))))

(declare-fun b!342923 () Bool)

(assert (=> b!342923 (= e!210282 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70891 (not res!189652)) b!342922))

(assert (= (and b!342922 res!189653) b!342923))

(declare-fun m!344943 () Bool)

(assert (=> d!70891 m!344943))

(declare-fun m!344945 () Bool)

(assert (=> b!342923 m!344945))

(assert (=> b!342867 d!70891))

(declare-fun b!342932 () Bool)

(declare-fun e!210291 () Bool)

(declare-fun e!210290 () Bool)

(assert (=> b!342932 (= e!210291 e!210290)))

(declare-fun lt!162298 () (_ BitVec 64))

(assert (=> b!342932 (= lt!162298 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162300 () Unit!10709)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18117 (_ BitVec 64) (_ BitVec 32)) Unit!10709)

(assert (=> b!342932 (= lt!162300 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!162298 #b00000000000000000000000000000000))))

(assert (=> b!342932 (arrayContainsKey!0 _keys!1895 lt!162298 #b00000000000000000000000000000000)))

(declare-fun lt!162299 () Unit!10709)

(assert (=> b!342932 (= lt!162299 lt!162300)))

(declare-fun res!189659 () Bool)

(assert (=> b!342932 (= res!189659 (= (seekEntryOrOpen!0 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3306 #b00000000000000000000000000000000)))))

(assert (=> b!342932 (=> (not res!189659) (not e!210290))))

(declare-fun b!342933 () Bool)

(declare-fun e!210289 () Bool)

(assert (=> b!342933 (= e!210289 e!210291)))

(declare-fun c!52793 () Bool)

(assert (=> b!342933 (= c!52793 (validKeyInArray!0 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!342934 () Bool)

(declare-fun call!26618 () Bool)

(assert (=> b!342934 (= e!210291 call!26618)))

(declare-fun d!70893 () Bool)

(declare-fun res!189658 () Bool)

(assert (=> d!70893 (=> res!189658 e!210289)))

(assert (=> d!70893 (= res!189658 (bvsge #b00000000000000000000000000000000 (size!8926 _keys!1895)))))

(assert (=> d!70893 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!210289)))

(declare-fun bm!26615 () Bool)

(assert (=> bm!26615 (= call!26618 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!342935 () Bool)

(assert (=> b!342935 (= e!210290 call!26618)))

(assert (= (and d!70893 (not res!189658)) b!342933))

(assert (= (and b!342933 c!52793) b!342932))

(assert (= (and b!342933 (not c!52793)) b!342934))

(assert (= (and b!342932 res!189659) b!342935))

(assert (= (or b!342935 b!342934) bm!26615))

(assert (=> b!342932 m!344943))

(declare-fun m!344947 () Bool)

(assert (=> b!342932 m!344947))

(declare-fun m!344949 () Bool)

(assert (=> b!342932 m!344949))

(assert (=> b!342932 m!344943))

(declare-fun m!344951 () Bool)

(assert (=> b!342932 m!344951))

(assert (=> b!342933 m!344943))

(assert (=> b!342933 m!344943))

(declare-fun m!344953 () Bool)

(assert (=> b!342933 m!344953))

(declare-fun m!344955 () Bool)

(assert (=> bm!26615 m!344955))

(assert (=> b!342869 d!70893))

(declare-fun d!70895 () Bool)

(declare-fun e!210297 () Bool)

(assert (=> d!70895 e!210297))

(declare-fun res!189662 () Bool)

(assert (=> d!70895 (=> res!189662 e!210297)))

(declare-fun lt!162312 () Bool)

(assert (=> d!70895 (= res!189662 (not lt!162312))))

(declare-fun lt!162311 () Bool)

(assert (=> d!70895 (= lt!162312 lt!162311)))

(declare-fun lt!162310 () Unit!10709)

(declare-fun e!210296 () Unit!10709)

(assert (=> d!70895 (= lt!162310 e!210296)))

(declare-fun c!52796 () Bool)

(assert (=> d!70895 (= c!52796 lt!162311)))

(declare-fun containsKey!327 (List!4970 (_ BitVec 64)) Bool)

(assert (=> d!70895 (= lt!162311 (containsKey!327 (toList!2142 (getCurrentListMap!1662 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70895 (= (contains!2194 (getCurrentListMap!1662 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!162312)))

(declare-fun b!342942 () Bool)

(declare-fun lt!162309 () Unit!10709)

(assert (=> b!342942 (= e!210296 lt!162309)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!276 (List!4970 (_ BitVec 64)) Unit!10709)

(assert (=> b!342942 (= lt!162309 (lemmaContainsKeyImpliesGetValueByKeyDefined!276 (toList!2142 (getCurrentListMap!1662 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!341 0))(
  ( (Some!340 (v!5854 V!10677)) (None!339) )
))
(declare-fun isDefined!277 (Option!341) Bool)

(declare-fun getValueByKey!335 (List!4970 (_ BitVec 64)) Option!341)

(assert (=> b!342942 (isDefined!277 (getValueByKey!335 (toList!2142 (getCurrentListMap!1662 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!342943 () Bool)

(declare-fun Unit!10713 () Unit!10709)

(assert (=> b!342943 (= e!210296 Unit!10713)))

(declare-fun b!342944 () Bool)

(assert (=> b!342944 (= e!210297 (isDefined!277 (getValueByKey!335 (toList!2142 (getCurrentListMap!1662 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70895 c!52796) b!342942))

(assert (= (and d!70895 (not c!52796)) b!342943))

(assert (= (and d!70895 (not res!189662)) b!342944))

(declare-fun m!344957 () Bool)

(assert (=> d!70895 m!344957))

(declare-fun m!344959 () Bool)

(assert (=> b!342942 m!344959))

(declare-fun m!344961 () Bool)

(assert (=> b!342942 m!344961))

(assert (=> b!342942 m!344961))

(declare-fun m!344963 () Bool)

(assert (=> b!342942 m!344963))

(assert (=> b!342944 m!344961))

(assert (=> b!342944 m!344961))

(assert (=> b!342944 m!344963))

(assert (=> b!342865 d!70895))

(declare-fun bm!26630 () Bool)

(declare-fun call!26639 () ListLongMap!4253)

(declare-fun call!26635 () ListLongMap!4253)

(assert (=> bm!26630 (= call!26639 call!26635)))

(declare-fun b!342987 () Bool)

(declare-fun e!210325 () ListLongMap!4253)

(declare-fun call!26634 () ListLongMap!4253)

(assert (=> b!342987 (= e!210325 call!26634)))

(declare-fun b!342988 () Bool)

(declare-fun e!210330 () ListLongMap!4253)

(assert (=> b!342988 (= e!210330 call!26639)))

(declare-fun bm!26631 () Bool)

(declare-fun call!26633 () ListLongMap!4253)

(assert (=> bm!26631 (= call!26634 call!26633)))

(declare-fun b!342989 () Bool)

(declare-fun c!52812 () Bool)

(assert (=> b!342989 (= c!52812 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!342989 (= e!210325 e!210330)))

(declare-fun b!342990 () Bool)

(assert (=> b!342990 (= e!210330 call!26634)))

(declare-fun b!342991 () Bool)

(declare-fun e!210329 () Bool)

(assert (=> b!342991 (= e!210329 (validKeyInArray!0 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!342992 () Bool)

(declare-fun e!210333 () Unit!10709)

(declare-fun lt!162366 () Unit!10709)

(assert (=> b!342992 (= e!210333 lt!162366)))

(declare-fun lt!162368 () ListLongMap!4253)

(declare-fun getCurrentListMapNoExtraKeys!597 (array!18117 array!18115 (_ BitVec 32) (_ BitVec 32) V!10677 V!10677 (_ BitVec 32) Int) ListLongMap!4253)

(assert (=> b!342992 (= lt!162368 (getCurrentListMapNoExtraKeys!597 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162361 () (_ BitVec 64))

(assert (=> b!342992 (= lt!162361 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162364 () (_ BitVec 64))

(assert (=> b!342992 (= lt!162364 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162365 () Unit!10709)

(declare-fun addStillContains!254 (ListLongMap!4253 (_ BitVec 64) V!10677 (_ BitVec 64)) Unit!10709)

(assert (=> b!342992 (= lt!162365 (addStillContains!254 lt!162368 lt!162361 zeroValue!1467 lt!162364))))

(declare-fun +!722 (ListLongMap!4253 tuple2!5326) ListLongMap!4253)

(assert (=> b!342992 (contains!2194 (+!722 lt!162368 (tuple2!5327 lt!162361 zeroValue!1467)) lt!162364)))

(declare-fun lt!162373 () Unit!10709)

(assert (=> b!342992 (= lt!162373 lt!162365)))

(declare-fun lt!162360 () ListLongMap!4253)

(assert (=> b!342992 (= lt!162360 (getCurrentListMapNoExtraKeys!597 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162367 () (_ BitVec 64))

(assert (=> b!342992 (= lt!162367 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162370 () (_ BitVec 64))

(assert (=> b!342992 (= lt!162370 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162369 () Unit!10709)

(declare-fun addApplyDifferent!254 (ListLongMap!4253 (_ BitVec 64) V!10677 (_ BitVec 64)) Unit!10709)

(assert (=> b!342992 (= lt!162369 (addApplyDifferent!254 lt!162360 lt!162367 minValue!1467 lt!162370))))

(declare-fun apply!278 (ListLongMap!4253 (_ BitVec 64)) V!10677)

(assert (=> b!342992 (= (apply!278 (+!722 lt!162360 (tuple2!5327 lt!162367 minValue!1467)) lt!162370) (apply!278 lt!162360 lt!162370))))

(declare-fun lt!162377 () Unit!10709)

(assert (=> b!342992 (= lt!162377 lt!162369)))

(declare-fun lt!162371 () ListLongMap!4253)

(assert (=> b!342992 (= lt!162371 (getCurrentListMapNoExtraKeys!597 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162363 () (_ BitVec 64))

(assert (=> b!342992 (= lt!162363 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162372 () (_ BitVec 64))

(assert (=> b!342992 (= lt!162372 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162374 () Unit!10709)

(assert (=> b!342992 (= lt!162374 (addApplyDifferent!254 lt!162371 lt!162363 zeroValue!1467 lt!162372))))

(assert (=> b!342992 (= (apply!278 (+!722 lt!162371 (tuple2!5327 lt!162363 zeroValue!1467)) lt!162372) (apply!278 lt!162371 lt!162372))))

(declare-fun lt!162362 () Unit!10709)

(assert (=> b!342992 (= lt!162362 lt!162374)))

(declare-fun lt!162375 () ListLongMap!4253)

(assert (=> b!342992 (= lt!162375 (getCurrentListMapNoExtraKeys!597 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162359 () (_ BitVec 64))

(assert (=> b!342992 (= lt!162359 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162378 () (_ BitVec 64))

(assert (=> b!342992 (= lt!162378 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!342992 (= lt!162366 (addApplyDifferent!254 lt!162375 lt!162359 minValue!1467 lt!162378))))

(assert (=> b!342992 (= (apply!278 (+!722 lt!162375 (tuple2!5327 lt!162359 minValue!1467)) lt!162378) (apply!278 lt!162375 lt!162378))))

(declare-fun bm!26632 () Bool)

(declare-fun call!26636 () Bool)

(declare-fun lt!162376 () ListLongMap!4253)

(assert (=> bm!26632 (= call!26636 (contains!2194 lt!162376 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!70897 () Bool)

(declare-fun e!210326 () Bool)

(assert (=> d!70897 e!210326))

(declare-fun res!189681 () Bool)

(assert (=> d!70897 (=> (not res!189681) (not e!210326))))

(assert (=> d!70897 (= res!189681 (or (bvsge #b00000000000000000000000000000000 (size!8926 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8926 _keys!1895)))))))

(declare-fun lt!162358 () ListLongMap!4253)

(assert (=> d!70897 (= lt!162376 lt!162358)))

(declare-fun lt!162357 () Unit!10709)

(assert (=> d!70897 (= lt!162357 e!210333)))

(declare-fun c!52809 () Bool)

(assert (=> d!70897 (= c!52809 e!210329)))

(declare-fun res!189684 () Bool)

(assert (=> d!70897 (=> (not res!189684) (not e!210329))))

(assert (=> d!70897 (= res!189684 (bvslt #b00000000000000000000000000000000 (size!8926 _keys!1895)))))

(declare-fun e!210332 () ListLongMap!4253)

(assert (=> d!70897 (= lt!162358 e!210332)))

(declare-fun c!52811 () Bool)

(assert (=> d!70897 (= c!52811 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70897 (validMask!0 mask!2385)))

(assert (=> d!70897 (= (getCurrentListMap!1662 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!162376)))

(declare-fun b!342993 () Bool)

(assert (=> b!342993 (= e!210332 e!210325)))

(declare-fun c!52814 () Bool)

(assert (=> b!342993 (= c!52814 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!342994 () Bool)

(declare-fun e!210335 () Bool)

(declare-fun call!26638 () Bool)

(assert (=> b!342994 (= e!210335 (not call!26638))))

(declare-fun b!342995 () Bool)

(declare-fun res!189685 () Bool)

(assert (=> b!342995 (=> (not res!189685) (not e!210326))))

(declare-fun e!210334 () Bool)

(assert (=> b!342995 (= res!189685 e!210334)))

(declare-fun res!189683 () Bool)

(assert (=> b!342995 (=> res!189683 e!210334)))

(declare-fun e!210331 () Bool)

(assert (=> b!342995 (= res!189683 (not e!210331))))

(declare-fun res!189686 () Bool)

(assert (=> b!342995 (=> (not res!189686) (not e!210331))))

(assert (=> b!342995 (= res!189686 (bvslt #b00000000000000000000000000000000 (size!8926 _keys!1895)))))

(declare-fun b!342996 () Bool)

(declare-fun e!210336 () Bool)

(assert (=> b!342996 (= e!210336 (not call!26636))))

(declare-fun b!342997 () Bool)

(declare-fun Unit!10714 () Unit!10709)

(assert (=> b!342997 (= e!210333 Unit!10714)))

(declare-fun bm!26633 () Bool)

(assert (=> bm!26633 (= call!26638 (contains!2194 lt!162376 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!342998 () Bool)

(assert (=> b!342998 (= e!210332 (+!722 call!26633 (tuple2!5327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!342999 () Bool)

(declare-fun e!210327 () Bool)

(assert (=> b!342999 (= e!210327 (= (apply!278 lt!162376 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!343000 () Bool)

(declare-fun e!210324 () Bool)

(assert (=> b!343000 (= e!210336 e!210324)))

(declare-fun res!189688 () Bool)

(assert (=> b!343000 (= res!189688 call!26636)))

(assert (=> b!343000 (=> (not res!189688) (not e!210324))))

(declare-fun bm!26634 () Bool)

(declare-fun call!26637 () ListLongMap!4253)

(assert (=> bm!26634 (= call!26635 call!26637)))

(declare-fun b!343001 () Bool)

(assert (=> b!343001 (= e!210335 e!210327)))

(declare-fun res!189689 () Bool)

(assert (=> b!343001 (= res!189689 call!26638)))

(assert (=> b!343001 (=> (not res!189689) (not e!210327))))

(declare-fun b!343002 () Bool)

(declare-fun res!189687 () Bool)

(assert (=> b!343002 (=> (not res!189687) (not e!210326))))

(assert (=> b!343002 (= res!189687 e!210335)))

(declare-fun c!52813 () Bool)

(assert (=> b!343002 (= c!52813 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!343003 () Bool)

(assert (=> b!343003 (= e!210324 (= (apply!278 lt!162376 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun bm!26635 () Bool)

(assert (=> bm!26635 (= call!26637 (getCurrentListMapNoExtraKeys!597 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!343004 () Bool)

(assert (=> b!343004 (= e!210331 (validKeyInArray!0 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!343005 () Bool)

(declare-fun e!210328 () Bool)

(assert (=> b!343005 (= e!210334 e!210328)))

(declare-fun res!189682 () Bool)

(assert (=> b!343005 (=> (not res!189682) (not e!210328))))

(assert (=> b!343005 (= res!189682 (contains!2194 lt!162376 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!343005 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8926 _keys!1895)))))

(declare-fun b!343006 () Bool)

(declare-fun get!4649 (ValueCell!3294 V!10677) V!10677)

(declare-fun dynLambda!616 (Int (_ BitVec 64)) V!10677)

(assert (=> b!343006 (= e!210328 (= (apply!278 lt!162376 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000)) (get!4649 (select (arr!8573 _values!1525) #b00000000000000000000000000000000) (dynLambda!616 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!343006 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8925 _values!1525)))))

(assert (=> b!343006 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8926 _keys!1895)))))

(declare-fun bm!26636 () Bool)

(assert (=> bm!26636 (= call!26633 (+!722 (ite c!52811 call!26637 (ite c!52814 call!26635 call!26639)) (ite (or c!52811 c!52814) (tuple2!5327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!343007 () Bool)

(assert (=> b!343007 (= e!210326 e!210336)))

(declare-fun c!52810 () Bool)

(assert (=> b!343007 (= c!52810 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!70897 c!52811) b!342998))

(assert (= (and d!70897 (not c!52811)) b!342993))

(assert (= (and b!342993 c!52814) b!342987))

(assert (= (and b!342993 (not c!52814)) b!342989))

(assert (= (and b!342989 c!52812) b!342990))

(assert (= (and b!342989 (not c!52812)) b!342988))

(assert (= (or b!342990 b!342988) bm!26630))

(assert (= (or b!342987 bm!26630) bm!26634))

(assert (= (or b!342987 b!342990) bm!26631))

(assert (= (or b!342998 bm!26634) bm!26635))

(assert (= (or b!342998 bm!26631) bm!26636))

(assert (= (and d!70897 res!189684) b!342991))

(assert (= (and d!70897 c!52809) b!342992))

(assert (= (and d!70897 (not c!52809)) b!342997))

(assert (= (and d!70897 res!189681) b!342995))

(assert (= (and b!342995 res!189686) b!343004))

(assert (= (and b!342995 (not res!189683)) b!343005))

(assert (= (and b!343005 res!189682) b!343006))

(assert (= (and b!342995 res!189685) b!343002))

(assert (= (and b!343002 c!52813) b!343001))

(assert (= (and b!343002 (not c!52813)) b!342994))

(assert (= (and b!343001 res!189689) b!342999))

(assert (= (or b!343001 b!342994) bm!26633))

(assert (= (and b!343002 res!189687) b!343007))

(assert (= (and b!343007 c!52810) b!343000))

(assert (= (and b!343007 (not c!52810)) b!342996))

(assert (= (and b!343000 res!189688) b!343003))

(assert (= (or b!343000 b!342996) bm!26632))

(declare-fun b_lambda!8481 () Bool)

(assert (=> (not b_lambda!8481) (not b!343006)))

(declare-fun t!10092 () Bool)

(declare-fun tb!3079 () Bool)

(assert (=> (and start!34356 (= defaultEntry!1528 defaultEntry!1528) t!10092) tb!3079))

(declare-fun result!5551 () Bool)

(assert (=> tb!3079 (= result!5551 tp_is_empty!7275)))

(assert (=> b!343006 t!10092))

(declare-fun b_and!14549 () Bool)

(assert (= b_and!14545 (and (=> t!10092 result!5551) b_and!14549)))

(declare-fun m!344965 () Bool)

(assert (=> b!342992 m!344965))

(declare-fun m!344967 () Bool)

(assert (=> b!342992 m!344967))

(declare-fun m!344969 () Bool)

(assert (=> b!342992 m!344969))

(declare-fun m!344971 () Bool)

(assert (=> b!342992 m!344971))

(declare-fun m!344973 () Bool)

(assert (=> b!342992 m!344973))

(assert (=> b!342992 m!344943))

(declare-fun m!344975 () Bool)

(assert (=> b!342992 m!344975))

(declare-fun m!344977 () Bool)

(assert (=> b!342992 m!344977))

(declare-fun m!344979 () Bool)

(assert (=> b!342992 m!344979))

(declare-fun m!344981 () Bool)

(assert (=> b!342992 m!344981))

(declare-fun m!344983 () Bool)

(assert (=> b!342992 m!344983))

(declare-fun m!344985 () Bool)

(assert (=> b!342992 m!344985))

(declare-fun m!344987 () Bool)

(assert (=> b!342992 m!344987))

(declare-fun m!344989 () Bool)

(assert (=> b!342992 m!344989))

(assert (=> b!342992 m!344965))

(declare-fun m!344991 () Bool)

(assert (=> b!342992 m!344991))

(assert (=> b!342992 m!344971))

(assert (=> b!342992 m!344969))

(declare-fun m!344993 () Bool)

(assert (=> b!342992 m!344993))

(assert (=> b!342992 m!344985))

(declare-fun m!344995 () Bool)

(assert (=> b!342992 m!344995))

(declare-fun m!344997 () Bool)

(assert (=> b!343003 m!344997))

(assert (=> bm!26635 m!344977))

(assert (=> b!343004 m!344943))

(assert (=> b!343004 m!344943))

(assert (=> b!343004 m!344953))

(declare-fun m!344999 () Bool)

(assert (=> bm!26632 m!344999))

(assert (=> b!343006 m!344943))

(declare-fun m!345001 () Bool)

(assert (=> b!343006 m!345001))

(assert (=> b!343006 m!344943))

(declare-fun m!345003 () Bool)

(assert (=> b!343006 m!345003))

(declare-fun m!345005 () Bool)

(assert (=> b!343006 m!345005))

(declare-fun m!345007 () Bool)

(assert (=> b!343006 m!345007))

(assert (=> b!343006 m!345005))

(assert (=> b!343006 m!345003))

(declare-fun m!345009 () Bool)

(assert (=> bm!26636 m!345009))

(declare-fun m!345011 () Bool)

(assert (=> b!342999 m!345011))

(declare-fun m!345013 () Bool)

(assert (=> bm!26633 m!345013))

(assert (=> b!342991 m!344943))

(assert (=> b!342991 m!344943))

(assert (=> b!342991 m!344953))

(assert (=> b!343005 m!344943))

(assert (=> b!343005 m!344943))

(declare-fun m!345015 () Bool)

(assert (=> b!343005 m!345015))

(assert (=> d!70897 m!344905))

(declare-fun m!345017 () Bool)

(assert (=> b!342998 m!345017))

(assert (=> b!342865 d!70897))

(declare-fun d!70899 () Bool)

(assert (=> d!70899 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34356 d!70899))

(declare-fun d!70901 () Bool)

(assert (=> d!70901 (= (array_inv!6340 _values!1525) (bvsge (size!8925 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34356 d!70901))

(declare-fun d!70903 () Bool)

(assert (=> d!70903 (= (array_inv!6341 _keys!1895) (bvsge (size!8926 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34356 d!70903))

(declare-fun b!343020 () Bool)

(declare-fun e!210348 () Bool)

(declare-fun e!210345 () Bool)

(assert (=> b!343020 (= e!210348 e!210345)))

(declare-fun c!52817 () Bool)

(assert (=> b!343020 (= c!52817 (validKeyInArray!0 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!343021 () Bool)

(declare-fun e!210347 () Bool)

(declare-fun contains!2195 (List!4969 (_ BitVec 64)) Bool)

(assert (=> b!343021 (= e!210347 (contains!2195 Nil!4966 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!343022 () Bool)

(declare-fun e!210346 () Bool)

(assert (=> b!343022 (= e!210346 e!210348)))

(declare-fun res!189696 () Bool)

(assert (=> b!343022 (=> (not res!189696) (not e!210348))))

(assert (=> b!343022 (= res!189696 (not e!210347))))

(declare-fun res!189697 () Bool)

(assert (=> b!343022 (=> (not res!189697) (not e!210347))))

(assert (=> b!343022 (= res!189697 (validKeyInArray!0 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26639 () Bool)

(declare-fun call!26642 () Bool)

(assert (=> bm!26639 (= call!26642 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52817 (Cons!4965 (select (arr!8574 _keys!1895) #b00000000000000000000000000000000) Nil!4966) Nil!4966)))))

(declare-fun d!70905 () Bool)

(declare-fun res!189698 () Bool)

(assert (=> d!70905 (=> res!189698 e!210346)))

(assert (=> d!70905 (= res!189698 (bvsge #b00000000000000000000000000000000 (size!8926 _keys!1895)))))

(assert (=> d!70905 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4966) e!210346)))

(declare-fun b!343023 () Bool)

(assert (=> b!343023 (= e!210345 call!26642)))

(declare-fun b!343024 () Bool)

(assert (=> b!343024 (= e!210345 call!26642)))

(assert (= (and d!70905 (not res!189698)) b!343022))

(assert (= (and b!343022 res!189697) b!343021))

(assert (= (and b!343022 res!189696) b!343020))

(assert (= (and b!343020 c!52817) b!343024))

(assert (= (and b!343020 (not c!52817)) b!343023))

(assert (= (or b!343024 b!343023) bm!26639))

(assert (=> b!343020 m!344943))

(assert (=> b!343020 m!344943))

(assert (=> b!343020 m!344953))

(assert (=> b!343021 m!344943))

(assert (=> b!343021 m!344943))

(declare-fun m!345019 () Bool)

(assert (=> b!343021 m!345019))

(assert (=> b!343022 m!344943))

(assert (=> b!343022 m!344943))

(assert (=> b!343022 m!344953))

(assert (=> bm!26639 m!344943))

(declare-fun m!345021 () Bool)

(assert (=> bm!26639 m!345021))

(assert (=> b!342864 d!70905))

(declare-fun d!70907 () Bool)

(assert (=> d!70907 (contains!2194 (getCurrentListMap!1662 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!162381 () Unit!10709)

(declare-fun choose!1312 (array!18117 array!18115 (_ BitVec 32) (_ BitVec 32) V!10677 V!10677 (_ BitVec 64) (_ BitVec 32) Int) Unit!10709)

(assert (=> d!70907 (= lt!162381 (choose!1312 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!70907 (validMask!0 mask!2385)))

(assert (=> d!70907 (= (lemmaArrayContainsKeyThenInListMap!314 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!162381)))

(declare-fun bs!11758 () Bool)

(assert (= bs!11758 d!70907))

(assert (=> bs!11758 m!344893))

(assert (=> bs!11758 m!344893))

(assert (=> bs!11758 m!344895))

(assert (=> bs!11758 m!344887))

(declare-fun m!345023 () Bool)

(assert (=> bs!11758 m!345023))

(assert (=> bs!11758 m!344905))

(assert (=> b!342866 d!70907))

(declare-fun d!70909 () Bool)

(declare-fun lt!162384 () (_ BitVec 32))

(assert (=> d!70909 (and (or (bvslt lt!162384 #b00000000000000000000000000000000) (bvsge lt!162384 (size!8926 _keys!1895)) (and (bvsge lt!162384 #b00000000000000000000000000000000) (bvslt lt!162384 (size!8926 _keys!1895)))) (bvsge lt!162384 #b00000000000000000000000000000000) (bvslt lt!162384 (size!8926 _keys!1895)) (= (select (arr!8574 _keys!1895) lt!162384) k0!1348))))

(declare-fun e!210351 () (_ BitVec 32))

(assert (=> d!70909 (= lt!162384 e!210351)))

(declare-fun c!52820 () Bool)

(assert (=> d!70909 (= c!52820 (= (select (arr!8574 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70909 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8926 _keys!1895)) (bvslt (size!8926 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!70909 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!162384)))

(declare-fun b!343029 () Bool)

(assert (=> b!343029 (= e!210351 #b00000000000000000000000000000000)))

(declare-fun b!343030 () Bool)

(assert (=> b!343030 (= e!210351 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70909 c!52820) b!343029))

(assert (= (and d!70909 (not c!52820)) b!343030))

(declare-fun m!345025 () Bool)

(assert (=> d!70909 m!345025))

(assert (=> d!70909 m!344943))

(declare-fun m!345027 () Bool)

(assert (=> b!343030 m!345027))

(assert (=> b!342866 d!70909))

(declare-fun d!70911 () Bool)

(assert (=> d!70911 (= (inRange!0 (index!15406 lt!162277) mask!2385) (and (bvsge (index!15406 lt!162277) #b00000000000000000000000000000000) (bvslt (index!15406 lt!162277) (bvadd mask!2385 #b00000000000000000000000000000001))))))

(assert (=> b!342875 d!70911))

(declare-fun d!70913 () Bool)

(assert (=> d!70913 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!342874 d!70913))

(declare-fun b!343043 () Bool)

(declare-fun e!210358 () SeekEntryResult!3306)

(declare-fun lt!162392 () SeekEntryResult!3306)

(assert (=> b!343043 (= e!210358 (MissingZero!3306 (index!15405 lt!162392)))))

(declare-fun b!343044 () Bool)

(declare-fun e!210360 () SeekEntryResult!3306)

(assert (=> b!343044 (= e!210360 (Found!3306 (index!15405 lt!162392)))))

(declare-fun b!343045 () Bool)

(declare-fun e!210359 () SeekEntryResult!3306)

(assert (=> b!343045 (= e!210359 e!210360)))

(declare-fun lt!162393 () (_ BitVec 64))

(assert (=> b!343045 (= lt!162393 (select (arr!8574 _keys!1895) (index!15405 lt!162392)))))

(declare-fun c!52829 () Bool)

(assert (=> b!343045 (= c!52829 (= lt!162393 k0!1348))))

(declare-fun b!343046 () Bool)

(declare-fun c!52827 () Bool)

(assert (=> b!343046 (= c!52827 (= lt!162393 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!343046 (= e!210360 e!210358)))

(declare-fun d!70915 () Bool)

(declare-fun lt!162391 () SeekEntryResult!3306)

(assert (=> d!70915 (and (or ((_ is Undefined!3306) lt!162391) (not ((_ is Found!3306) lt!162391)) (and (bvsge (index!15404 lt!162391) #b00000000000000000000000000000000) (bvslt (index!15404 lt!162391) (size!8926 _keys!1895)))) (or ((_ is Undefined!3306) lt!162391) ((_ is Found!3306) lt!162391) (not ((_ is MissingZero!3306) lt!162391)) (and (bvsge (index!15403 lt!162391) #b00000000000000000000000000000000) (bvslt (index!15403 lt!162391) (size!8926 _keys!1895)))) (or ((_ is Undefined!3306) lt!162391) ((_ is Found!3306) lt!162391) ((_ is MissingZero!3306) lt!162391) (not ((_ is MissingVacant!3306) lt!162391)) (and (bvsge (index!15406 lt!162391) #b00000000000000000000000000000000) (bvslt (index!15406 lt!162391) (size!8926 _keys!1895)))) (or ((_ is Undefined!3306) lt!162391) (ite ((_ is Found!3306) lt!162391) (= (select (arr!8574 _keys!1895) (index!15404 lt!162391)) k0!1348) (ite ((_ is MissingZero!3306) lt!162391) (= (select (arr!8574 _keys!1895) (index!15403 lt!162391)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3306) lt!162391) (= (select (arr!8574 _keys!1895) (index!15406 lt!162391)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70915 (= lt!162391 e!210359)))

(declare-fun c!52828 () Bool)

(assert (=> d!70915 (= c!52828 (and ((_ is Intermediate!3306) lt!162392) (undefined!4118 lt!162392)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18117 (_ BitVec 32)) SeekEntryResult!3306)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70915 (= lt!162392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70915 (validMask!0 mask!2385)))

(assert (=> d!70915 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!162391)))

(declare-fun b!343047 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18117 (_ BitVec 32)) SeekEntryResult!3306)

(assert (=> b!343047 (= e!210358 (seekKeyOrZeroReturnVacant!0 (x!34139 lt!162392) (index!15405 lt!162392) (index!15405 lt!162392) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!343048 () Bool)

(assert (=> b!343048 (= e!210359 Undefined!3306)))

(assert (= (and d!70915 c!52828) b!343048))

(assert (= (and d!70915 (not c!52828)) b!343045))

(assert (= (and b!343045 c!52829) b!343044))

(assert (= (and b!343045 (not c!52829)) b!343046))

(assert (= (and b!343046 c!52827) b!343043))

(assert (= (and b!343046 (not c!52827)) b!343047))

(declare-fun m!345029 () Bool)

(assert (=> b!343045 m!345029))

(declare-fun m!345031 () Bool)

(assert (=> d!70915 m!345031))

(declare-fun m!345033 () Bool)

(assert (=> d!70915 m!345033))

(declare-fun m!345035 () Bool)

(assert (=> d!70915 m!345035))

(assert (=> d!70915 m!344905))

(declare-fun m!345037 () Bool)

(assert (=> d!70915 m!345037))

(assert (=> d!70915 m!345031))

(declare-fun m!345039 () Bool)

(assert (=> d!70915 m!345039))

(declare-fun m!345041 () Bool)

(assert (=> b!343047 m!345041))

(assert (=> b!342870 d!70915))

(declare-fun mapNonEmpty!12351 () Bool)

(declare-fun mapRes!12351 () Bool)

(declare-fun tp!25518 () Bool)

(declare-fun e!210366 () Bool)

(assert (=> mapNonEmpty!12351 (= mapRes!12351 (and tp!25518 e!210366))))

(declare-fun mapValue!12351 () ValueCell!3294)

(declare-fun mapKey!12351 () (_ BitVec 32))

(declare-fun mapRest!12351 () (Array (_ BitVec 32) ValueCell!3294))

(assert (=> mapNonEmpty!12351 (= mapRest!12345 (store mapRest!12351 mapKey!12351 mapValue!12351))))

(declare-fun mapIsEmpty!12351 () Bool)

(assert (=> mapIsEmpty!12351 mapRes!12351))

(declare-fun b!343055 () Bool)

(assert (=> b!343055 (= e!210366 tp_is_empty!7275)))

(declare-fun condMapEmpty!12351 () Bool)

(declare-fun mapDefault!12351 () ValueCell!3294)

(assert (=> mapNonEmpty!12345 (= condMapEmpty!12351 (= mapRest!12345 ((as const (Array (_ BitVec 32) ValueCell!3294)) mapDefault!12351)))))

(declare-fun e!210365 () Bool)

(assert (=> mapNonEmpty!12345 (= tp!25509 (and e!210365 mapRes!12351))))

(declare-fun b!343056 () Bool)

(assert (=> b!343056 (= e!210365 tp_is_empty!7275)))

(assert (= (and mapNonEmpty!12345 condMapEmpty!12351) mapIsEmpty!12351))

(assert (= (and mapNonEmpty!12345 (not condMapEmpty!12351)) mapNonEmpty!12351))

(assert (= (and mapNonEmpty!12351 ((_ is ValueCellFull!3294) mapValue!12351)) b!343055))

(assert (= (and mapNonEmpty!12345 ((_ is ValueCellFull!3294) mapDefault!12351)) b!343056))

(declare-fun m!345043 () Bool)

(assert (=> mapNonEmpty!12351 m!345043))

(declare-fun b_lambda!8483 () Bool)

(assert (= b_lambda!8481 (or (and start!34356 b_free!7323) b_lambda!8483)))

(check-sat (not b!343022) (not b!343003) (not b!343030) b_and!14549 (not b!342998) (not d!70897) (not b!343005) (not b!342944) (not bm!26636) (not d!70895) (not b!343004) (not b!343006) (not d!70907) (not b!343021) (not b!343047) (not b!342933) (not b!342932) (not bm!26632) tp_is_empty!7275 (not mapNonEmpty!12351) (not b!342923) (not b_next!7323) (not b_lambda!8483) (not bm!26633) (not b!342942) (not b!342991) (not bm!26615) (not d!70915) (not bm!26635) (not b!343020) (not b!342992) (not bm!26639) (not b!342999))
(check-sat b_and!14549 (not b_next!7323))
