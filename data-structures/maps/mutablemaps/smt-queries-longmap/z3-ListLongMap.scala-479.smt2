; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10036 () Bool)

(assert start!10036)

(declare-fun b!75994 () Bool)

(declare-fun b_free!2141 () Bool)

(declare-fun b_next!2141 () Bool)

(assert (=> b!75994 (= b_free!2141 (not b_next!2141))))

(declare-fun tp!8614 () Bool)

(declare-fun b_and!4645 () Bool)

(assert (=> b!75994 (= tp!8614 b_and!4645)))

(declare-fun b!76000 () Bool)

(declare-fun b_free!2143 () Bool)

(declare-fun b_next!2143 () Bool)

(assert (=> b!76000 (= b_free!2143 (not b_next!2143))))

(declare-fun tp!8616 () Bool)

(declare-fun b_and!4647 () Bool)

(assert (=> b!76000 (= tp!8616 b_and!4647)))

(declare-fun mapNonEmpty!3221 () Bool)

(declare-fun mapRes!3222 () Bool)

(declare-fun tp!8615 () Bool)

(declare-fun e!49652 () Bool)

(assert (=> mapNonEmpty!3221 (= mapRes!3222 (and tp!8615 e!49652))))

(declare-datatypes ((V!2963 0))(
  ( (V!2964 (val!1288 Int)) )
))
(declare-datatypes ((ValueCell!900 0))(
  ( (ValueCellFull!900 (v!2561 V!2963)) (EmptyCell!900) )
))
(declare-fun mapRest!3222 () (Array (_ BitVec 32) ValueCell!900))

(declare-datatypes ((array!3922 0))(
  ( (array!3923 (arr!1870 (Array (_ BitVec 32) (_ BitVec 64))) (size!2110 (_ BitVec 32))) )
))
(declare-datatypes ((array!3924 0))(
  ( (array!3925 (arr!1871 (Array (_ BitVec 32) ValueCell!900)) (size!2111 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!708 0))(
  ( (LongMapFixedSize!709 (defaultEntry!2247 Int) (mask!6230 (_ BitVec 32)) (extraKeys!2100 (_ BitVec 32)) (zeroValue!2146 V!2963) (minValue!2146 V!2963) (_size!403 (_ BitVec 32)) (_keys!3905 array!3922) (_values!2230 array!3924) (_vacant!403 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!518 0))(
  ( (Cell!519 (v!2562 LongMapFixedSize!708)) )
))
(declare-datatypes ((LongMap!518 0))(
  ( (LongMap!519 (underlying!270 Cell!518)) )
))
(declare-fun thiss!992 () LongMap!518)

(declare-fun mapValue!3221 () ValueCell!900)

(declare-fun mapKey!3221 () (_ BitVec 32))

(assert (=> mapNonEmpty!3221 (= (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (store mapRest!3222 mapKey!3221 mapValue!3221))))

(declare-fun b!75979 () Bool)

(declare-fun e!49649 () Bool)

(declare-fun e!49647 () Bool)

(assert (=> b!75979 (= e!49649 e!49647)))

(declare-fun res!40028 () Bool)

(assert (=> b!75979 (=> (not res!40028) (not e!49647))))

(declare-datatypes ((tuple2!2158 0))(
  ( (tuple2!2159 (_1!1089 (_ BitVec 64)) (_2!1089 V!2963)) )
))
(declare-datatypes ((List!1515 0))(
  ( (Nil!1512) (Cons!1511 (h!2099 tuple2!2158) (t!5113 List!1515)) )
))
(declare-datatypes ((ListLongMap!1447 0))(
  ( (ListLongMap!1448 (toList!739 List!1515)) )
))
(declare-fun lt!34438 () ListLongMap!1447)

(declare-fun lt!34444 () ListLongMap!1447)

(assert (=> b!75979 (= res!40028 (= lt!34438 lt!34444))))

(declare-fun newMap!16 () LongMapFixedSize!708)

(declare-fun map!1166 (LongMapFixedSize!708) ListLongMap!1447)

(assert (=> b!75979 (= lt!34444 (map!1166 newMap!16))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!430 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 32) Int) ListLongMap!1447)

(assert (=> b!75979 (= lt!34438 (getCurrentListMap!430 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!75981 () Bool)

(declare-fun e!49644 () Bool)

(declare-fun tp_is_empty!2487 () Bool)

(assert (=> b!75981 (= e!49644 tp_is_empty!2487)))

(declare-fun b!75982 () Bool)

(declare-fun e!49645 () Bool)

(assert (=> b!75982 (= e!49645 tp_is_empty!2487)))

(declare-fun b!75983 () Bool)

(declare-fun res!40021 () Bool)

(declare-fun e!49637 () Bool)

(assert (=> b!75983 (=> res!40021 e!49637)))

(assert (=> b!75983 (= res!40021 (or (not (= (size!2111 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6230 (v!2562 (underlying!270 thiss!992)))))) (not (= (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (size!2111 (_values!2230 (v!2562 (underlying!270 thiss!992)))))) (bvslt (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!75984 () Bool)

(declare-fun e!49653 () Bool)

(assert (=> b!75984 (= e!49653 (and e!49645 mapRes!3222))))

(declare-fun condMapEmpty!3222 () Bool)

(declare-fun mapDefault!3222 () ValueCell!900)

(assert (=> b!75984 (= condMapEmpty!3222 (= (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!900)) mapDefault!3222)))))

(declare-fun b!75985 () Bool)

(declare-fun e!49643 () Bool)

(assert (=> b!75985 (= e!49643 (not e!49637))))

(declare-fun res!40023 () Bool)

(assert (=> b!75985 (=> res!40023 e!49637)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!75985 (= res!40023 (not (validMask!0 (mask!6230 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun lt!34442 () ListLongMap!1447)

(declare-fun lt!34448 () tuple2!2158)

(declare-fun lt!34443 () tuple2!2158)

(declare-fun +!102 (ListLongMap!1447 tuple2!2158) ListLongMap!1447)

(assert (=> b!75985 (= (+!102 (+!102 lt!34442 lt!34448) lt!34443) (+!102 (+!102 lt!34442 lt!34443) lt!34448))))

(assert (=> b!75985 (= lt!34443 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun lt!34446 () V!2963)

(assert (=> b!75985 (= lt!34448 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))

(declare-datatypes ((Unit!2198 0))(
  ( (Unit!2199) )
))
(declare-fun lt!34445 () Unit!2198)

(declare-fun addCommutativeForDiffKeys!21 (ListLongMap!1447 (_ BitVec 64) V!2963 (_ BitVec 64) V!2963) Unit!2198)

(assert (=> b!75985 (= lt!34445 (addCommutativeForDiffKeys!21 lt!34442 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!66 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 32) Int) ListLongMap!1447)

(assert (=> b!75985 (= lt!34442 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun mapNonEmpty!3222 () Bool)

(declare-fun mapRes!3221 () Bool)

(declare-fun tp!8613 () Bool)

(declare-fun e!49648 () Bool)

(assert (=> mapNonEmpty!3222 (= mapRes!3221 (and tp!8613 e!49648))))

(declare-fun mapRest!3221 () (Array (_ BitVec 32) ValueCell!900))

(declare-fun mapValue!3222 () ValueCell!900)

(declare-fun mapKey!3222 () (_ BitVec 32))

(assert (=> mapNonEmpty!3222 (= (arr!1871 (_values!2230 newMap!16)) (store mapRest!3221 mapKey!3222 mapValue!3222))))

(declare-fun b!75986 () Bool)

(declare-fun e!49642 () Unit!2198)

(declare-fun Unit!2200 () Unit!2198)

(assert (=> b!75986 (= e!49642 Unit!2200)))

(declare-fun lt!34441 () Unit!2198)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!55 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 64) (_ BitVec 32) Int) Unit!2198)

(assert (=> b!75986 (= lt!34441 (lemmaListMapContainsThenArrayContainsFrom!55 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!75986 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!34449 () Unit!2198)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3922 (_ BitVec 32) (_ BitVec 32)) Unit!2198)

(assert (=> b!75986 (= lt!34449 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1516 0))(
  ( (Nil!1513) (Cons!1512 (h!2100 (_ BitVec 64)) (t!5114 List!1516)) )
))
(declare-fun arrayNoDuplicates!0 (array!3922 (_ BitVec 32) List!1516) Bool)

(assert (=> b!75986 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) from!355 Nil!1513)))

(declare-fun lt!34439 () Unit!2198)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3922 (_ BitVec 32) (_ BitVec 64) List!1516) Unit!2198)

(assert (=> b!75986 (= lt!34439 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513)))))

(assert (=> b!75986 false))

(declare-fun b!75987 () Bool)

(declare-fun Unit!2201 () Unit!2198)

(assert (=> b!75987 (= e!49642 Unit!2201)))

(declare-fun b!75988 () Bool)

(assert (=> b!75988 (= e!49652 tp_is_empty!2487)))

(declare-fun b!75989 () Bool)

(declare-fun e!49646 () Bool)

(assert (=> b!75989 (= e!49646 e!49643)))

(declare-fun res!40022 () Bool)

(assert (=> b!75989 (=> (not res!40022) (not e!49643))))

(declare-datatypes ((tuple2!2160 0))(
  ( (tuple2!2161 (_1!1090 Bool) (_2!1090 LongMapFixedSize!708)) )
))
(declare-fun lt!34440 () tuple2!2160)

(assert (=> b!75989 (= res!40022 (and (_1!1090 lt!34440) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!34447 () Unit!2198)

(assert (=> b!75989 (= lt!34447 e!49642)))

(declare-fun c!11566 () Bool)

(declare-fun contains!735 (ListLongMap!1447 (_ BitVec 64)) Bool)

(assert (=> b!75989 (= c!11566 (contains!735 lt!34444 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun update!105 (LongMapFixedSize!708 (_ BitVec 64) V!2963) tuple2!2160)

(assert (=> b!75989 (= lt!34440 (update!105 newMap!16 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))

(declare-fun b!75990 () Bool)

(assert (=> b!75990 (= e!49637 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000 Nil!1513))))

(declare-fun b!75991 () Bool)

(declare-fun e!49650 () Bool)

(declare-fun e!49651 () Bool)

(assert (=> b!75991 (= e!49650 e!49651)))

(declare-fun mapIsEmpty!3221 () Bool)

(assert (=> mapIsEmpty!3221 mapRes!3222))

(declare-fun b!75992 () Bool)

(declare-fun res!40024 () Bool)

(assert (=> b!75992 (=> (not res!40024) (not e!49649))))

(assert (=> b!75992 (= res!40024 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun res!40020 () Bool)

(assert (=> start!10036 (=> (not res!40020) (not e!49649))))

(declare-fun valid!298 (LongMap!518) Bool)

(assert (=> start!10036 (= res!40020 (valid!298 thiss!992))))

(assert (=> start!10036 e!49649))

(declare-fun e!49641 () Bool)

(assert (=> start!10036 e!49641))

(assert (=> start!10036 true))

(declare-fun e!49654 () Bool)

(assert (=> start!10036 e!49654))

(declare-fun b!75980 () Bool)

(declare-fun res!40027 () Bool)

(assert (=> b!75980 (=> res!40027 e!49637)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3922 (_ BitVec 32)) Bool)

(assert (=> b!75980 (= res!40027 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!75993 () Bool)

(declare-fun res!40019 () Bool)

(assert (=> b!75993 (=> (not res!40019) (not e!49649))))

(assert (=> b!75993 (= res!40019 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6230 newMap!16)) (_size!403 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun array_inv!1111 (array!3922) Bool)

(declare-fun array_inv!1112 (array!3924) Bool)

(assert (=> b!75994 (= e!49651 (and tp!8614 tp_is_empty!2487 (array_inv!1111 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (array_inv!1112 (_values!2230 (v!2562 (underlying!270 thiss!992)))) e!49653))))

(declare-fun b!75995 () Bool)

(assert (=> b!75995 (= e!49648 tp_is_empty!2487)))

(declare-fun b!75996 () Bool)

(assert (=> b!75996 (= e!49647 e!49646)))

(declare-fun res!40025 () Bool)

(assert (=> b!75996 (=> (not res!40025) (not e!49646))))

(assert (=> b!75996 (= res!40025 (and (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1168 (ValueCell!900 V!2963) V!2963)

(declare-fun dynLambda!338 (Int (_ BitVec 64)) V!2963)

(assert (=> b!75996 (= lt!34446 (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) from!355) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!75997 () Bool)

(declare-fun res!40026 () Bool)

(assert (=> b!75997 (=> (not res!40026) (not e!49649))))

(declare-fun valid!299 (LongMapFixedSize!708) Bool)

(assert (=> b!75997 (= res!40026 (valid!299 newMap!16))))

(declare-fun mapIsEmpty!3222 () Bool)

(assert (=> mapIsEmpty!3222 mapRes!3221))

(declare-fun b!75998 () Bool)

(declare-fun e!49639 () Bool)

(assert (=> b!75998 (= e!49639 (and e!49644 mapRes!3221))))

(declare-fun condMapEmpty!3221 () Bool)

(declare-fun mapDefault!3221 () ValueCell!900)

(assert (=> b!75998 (= condMapEmpty!3221 (= (arr!1871 (_values!2230 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!900)) mapDefault!3221)))))

(declare-fun b!75999 () Bool)

(assert (=> b!75999 (= e!49641 e!49650)))

(assert (=> b!76000 (= e!49654 (and tp!8616 tp_is_empty!2487 (array_inv!1111 (_keys!3905 newMap!16)) (array_inv!1112 (_values!2230 newMap!16)) e!49639))))

(assert (= (and start!10036 res!40020) b!75992))

(assert (= (and b!75992 res!40024) b!75997))

(assert (= (and b!75997 res!40026) b!75993))

(assert (= (and b!75993 res!40019) b!75979))

(assert (= (and b!75979 res!40028) b!75996))

(assert (= (and b!75996 res!40025) b!75989))

(assert (= (and b!75989 c!11566) b!75986))

(assert (= (and b!75989 (not c!11566)) b!75987))

(assert (= (and b!75989 res!40022) b!75985))

(assert (= (and b!75985 (not res!40023)) b!75983))

(assert (= (and b!75983 (not res!40021)) b!75980))

(assert (= (and b!75980 (not res!40027)) b!75990))

(assert (= (and b!75984 condMapEmpty!3222) mapIsEmpty!3221))

(assert (= (and b!75984 (not condMapEmpty!3222)) mapNonEmpty!3221))

(get-info :version)

(assert (= (and mapNonEmpty!3221 ((_ is ValueCellFull!900) mapValue!3221)) b!75988))

(assert (= (and b!75984 ((_ is ValueCellFull!900) mapDefault!3222)) b!75982))

(assert (= b!75994 b!75984))

(assert (= b!75991 b!75994))

(assert (= b!75999 b!75991))

(assert (= start!10036 b!75999))

(assert (= (and b!75998 condMapEmpty!3221) mapIsEmpty!3222))

(assert (= (and b!75998 (not condMapEmpty!3221)) mapNonEmpty!3222))

(assert (= (and mapNonEmpty!3222 ((_ is ValueCellFull!900) mapValue!3222)) b!75995))

(assert (= (and b!75998 ((_ is ValueCellFull!900) mapDefault!3221)) b!75981))

(assert (= b!76000 b!75998))

(assert (= start!10036 b!76000))

(declare-fun b_lambda!3423 () Bool)

(assert (=> (not b_lambda!3423) (not b!75996)))

(declare-fun t!5110 () Bool)

(declare-fun tb!1569 () Bool)

(assert (=> (and b!75994 (= (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))) t!5110) tb!1569))

(declare-fun result!2735 () Bool)

(assert (=> tb!1569 (= result!2735 tp_is_empty!2487)))

(assert (=> b!75996 t!5110))

(declare-fun b_and!4649 () Bool)

(assert (= b_and!4645 (and (=> t!5110 result!2735) b_and!4649)))

(declare-fun tb!1571 () Bool)

(declare-fun t!5112 () Bool)

(assert (=> (and b!76000 (= (defaultEntry!2247 newMap!16) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))) t!5112) tb!1571))

(declare-fun result!2739 () Bool)

(assert (= result!2739 result!2735))

(assert (=> b!75996 t!5112))

(declare-fun b_and!4651 () Bool)

(assert (= b_and!4647 (and (=> t!5112 result!2739) b_and!4651)))

(declare-fun m!75645 () Bool)

(assert (=> b!75997 m!75645))

(declare-fun m!75647 () Bool)

(assert (=> mapNonEmpty!3222 m!75647))

(declare-fun m!75649 () Bool)

(assert (=> mapNonEmpty!3221 m!75649))

(declare-fun m!75651 () Bool)

(assert (=> b!75986 m!75651))

(declare-fun m!75653 () Bool)

(assert (=> b!75986 m!75653))

(declare-fun m!75655 () Bool)

(assert (=> b!75986 m!75655))

(declare-fun m!75657 () Bool)

(assert (=> b!75986 m!75657))

(assert (=> b!75986 m!75655))

(assert (=> b!75986 m!75655))

(declare-fun m!75659 () Bool)

(assert (=> b!75986 m!75659))

(assert (=> b!75986 m!75655))

(declare-fun m!75661 () Bool)

(assert (=> b!75986 m!75661))

(declare-fun m!75663 () Bool)

(assert (=> b!75980 m!75663))

(declare-fun m!75665 () Bool)

(assert (=> start!10036 m!75665))

(declare-fun m!75667 () Bool)

(assert (=> b!75994 m!75667))

(declare-fun m!75669 () Bool)

(assert (=> b!75994 m!75669))

(assert (=> b!75989 m!75655))

(assert (=> b!75989 m!75655))

(declare-fun m!75671 () Bool)

(assert (=> b!75989 m!75671))

(assert (=> b!75989 m!75655))

(declare-fun m!75673 () Bool)

(assert (=> b!75989 m!75673))

(assert (=> b!75996 m!75655))

(declare-fun m!75675 () Bool)

(assert (=> b!75996 m!75675))

(declare-fun m!75677 () Bool)

(assert (=> b!75996 m!75677))

(assert (=> b!75996 m!75675))

(assert (=> b!75996 m!75677))

(declare-fun m!75679 () Bool)

(assert (=> b!75996 m!75679))

(declare-fun m!75681 () Bool)

(assert (=> b!75990 m!75681))

(declare-fun m!75683 () Bool)

(assert (=> b!75979 m!75683))

(declare-fun m!75685 () Bool)

(assert (=> b!75979 m!75685))

(declare-fun m!75687 () Bool)

(assert (=> b!75985 m!75687))

(declare-fun m!75689 () Bool)

(assert (=> b!75985 m!75689))

(assert (=> b!75985 m!75655))

(declare-fun m!75691 () Bool)

(assert (=> b!75985 m!75691))

(declare-fun m!75693 () Bool)

(assert (=> b!75985 m!75693))

(assert (=> b!75985 m!75655))

(declare-fun m!75695 () Bool)

(assert (=> b!75985 m!75695))

(assert (=> b!75985 m!75691))

(declare-fun m!75697 () Bool)

(assert (=> b!75985 m!75697))

(assert (=> b!75985 m!75689))

(declare-fun m!75699 () Bool)

(assert (=> b!75985 m!75699))

(declare-fun m!75701 () Bool)

(assert (=> b!76000 m!75701))

(declare-fun m!75703 () Bool)

(assert (=> b!76000 m!75703))

(check-sat tp_is_empty!2487 (not b!75989) (not mapNonEmpty!3222) (not b!76000) (not b!75990) (not b!75986) (not b!75994) (not b_next!2141) (not b!75980) (not start!10036) (not mapNonEmpty!3221) b_and!4649 (not b!75985) (not b!75997) (not b_lambda!3423) (not b!75979) (not b_next!2143) (not b!75996) b_and!4651)
(check-sat b_and!4649 b_and!4651 (not b_next!2141) (not b_next!2143))
(get-model)

(declare-fun b_lambda!3427 () Bool)

(assert (= b_lambda!3423 (or (and b!75994 b_free!2141) (and b!76000 b_free!2143 (= (defaultEntry!2247 newMap!16) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))))) b_lambda!3427)))

(check-sat tp_is_empty!2487 (not b!75989) (not mapNonEmpty!3222) (not b!76000) (not b!75990) (not b_lambda!3427) (not b!75986) (not b!75994) (not b_next!2141) (not b!75980) (not start!10036) (not mapNonEmpty!3221) b_and!4649 (not b!75997) (not b!75985) (not b!75979) (not b_next!2143) (not b!75996) b_and!4651)
(check-sat b_and!4649 b_and!4651 (not b_next!2141) (not b_next!2143))
(get-model)

(declare-fun bm!6804 () Bool)

(declare-fun call!6807 () Bool)

(declare-fun c!11572 () Bool)

(assert (=> bm!6804 (= call!6807 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!11572 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) Nil!1513) Nil!1513)))))

(declare-fun b!76082 () Bool)

(declare-fun e!49719 () Bool)

(declare-fun e!49718 () Bool)

(assert (=> b!76082 (= e!49719 e!49718)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!76082 (= c!11572 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!76083 () Bool)

(assert (=> b!76083 (= e!49718 call!6807)))

(declare-fun b!76081 () Bool)

(declare-fun e!49720 () Bool)

(assert (=> b!76081 (= e!49720 e!49719)))

(declare-fun res!40067 () Bool)

(assert (=> b!76081 (=> (not res!40067) (not e!49719))))

(declare-fun e!49717 () Bool)

(assert (=> b!76081 (= res!40067 (not e!49717))))

(declare-fun res!40066 () Bool)

(assert (=> b!76081 (=> (not res!40066) (not e!49717))))

(assert (=> b!76081 (= res!40066 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!18079 () Bool)

(declare-fun res!40065 () Bool)

(assert (=> d!18079 (=> res!40065 e!49720)))

(assert (=> d!18079 (= res!40065 (bvsge #b00000000000000000000000000000000 (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> d!18079 (= (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000 Nil!1513) e!49720)))

(declare-fun b!76084 () Bool)

(declare-fun contains!737 (List!1516 (_ BitVec 64)) Bool)

(assert (=> b!76084 (= e!49717 (contains!737 Nil!1513 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!76085 () Bool)

(assert (=> b!76085 (= e!49718 call!6807)))

(assert (= (and d!18079 (not res!40065)) b!76081))

(assert (= (and b!76081 res!40066) b!76084))

(assert (= (and b!76081 res!40067) b!76082))

(assert (= (and b!76082 c!11572) b!76085))

(assert (= (and b!76082 (not c!11572)) b!76083))

(assert (= (or b!76085 b!76083) bm!6804))

(declare-fun m!75765 () Bool)

(assert (=> bm!6804 m!75765))

(declare-fun m!75767 () Bool)

(assert (=> bm!6804 m!75767))

(assert (=> b!76082 m!75765))

(assert (=> b!76082 m!75765))

(declare-fun m!75769 () Bool)

(assert (=> b!76082 m!75769))

(assert (=> b!76081 m!75765))

(assert (=> b!76081 m!75765))

(assert (=> b!76081 m!75769))

(assert (=> b!76084 m!75765))

(assert (=> b!76084 m!75765))

(declare-fun m!75771 () Bool)

(assert (=> b!76084 m!75771))

(assert (=> b!75990 d!18079))

(declare-fun d!18081 () Bool)

(assert (=> d!18081 (= (valid!298 thiss!992) (valid!299 (v!2562 (underlying!270 thiss!992))))))

(declare-fun bs!3251 () Bool)

(assert (= bs!3251 d!18081))

(declare-fun m!75773 () Bool)

(assert (=> bs!3251 m!75773))

(assert (=> start!10036 d!18081))

(declare-fun d!18083 () Bool)

(declare-fun e!49726 () Bool)

(assert (=> d!18083 e!49726))

(declare-fun res!40070 () Bool)

(assert (=> d!18083 (=> res!40070 e!49726)))

(declare-fun lt!34497 () Bool)

(assert (=> d!18083 (= res!40070 (not lt!34497))))

(declare-fun lt!34495 () Bool)

(assert (=> d!18083 (= lt!34497 lt!34495)))

(declare-fun lt!34496 () Unit!2198)

(declare-fun e!49725 () Unit!2198)

(assert (=> d!18083 (= lt!34496 e!49725)))

(declare-fun c!11575 () Bool)

(assert (=> d!18083 (= c!11575 lt!34495)))

(declare-fun containsKey!138 (List!1515 (_ BitVec 64)) Bool)

(assert (=> d!18083 (= lt!34495 (containsKey!138 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> d!18083 (= (contains!735 lt!34444 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) lt!34497)))

(declare-fun b!76092 () Bool)

(declare-fun lt!34494 () Unit!2198)

(assert (=> b!76092 (= e!49725 lt!34494)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!87 (List!1515 (_ BitVec 64)) Unit!2198)

(assert (=> b!76092 (= lt!34494 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-datatypes ((Option!140 0))(
  ( (Some!139 (v!2566 V!2963)) (None!138) )
))
(declare-fun isDefined!88 (Option!140) Bool)

(declare-fun getValueByKey!134 (List!1515 (_ BitVec 64)) Option!140)

(assert (=> b!76092 (isDefined!88 (getValueByKey!134 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76093 () Bool)

(declare-fun Unit!2206 () Unit!2198)

(assert (=> b!76093 (= e!49725 Unit!2206)))

(declare-fun b!76094 () Bool)

(assert (=> b!76094 (= e!49726 (isDefined!88 (getValueByKey!134 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))))))

(assert (= (and d!18083 c!11575) b!76092))

(assert (= (and d!18083 (not c!11575)) b!76093))

(assert (= (and d!18083 (not res!40070)) b!76094))

(assert (=> d!18083 m!75655))

(declare-fun m!75775 () Bool)

(assert (=> d!18083 m!75775))

(assert (=> b!76092 m!75655))

(declare-fun m!75777 () Bool)

(assert (=> b!76092 m!75777))

(assert (=> b!76092 m!75655))

(declare-fun m!75779 () Bool)

(assert (=> b!76092 m!75779))

(assert (=> b!76092 m!75779))

(declare-fun m!75781 () Bool)

(assert (=> b!76092 m!75781))

(assert (=> b!76094 m!75655))

(assert (=> b!76094 m!75779))

(assert (=> b!76094 m!75779))

(assert (=> b!76094 m!75781))

(assert (=> b!75989 d!18083))

(declare-fun bm!6853 () Bool)

(declare-datatypes ((SeekEntryResult!248 0))(
  ( (MissingZero!248 (index!3125 (_ BitVec 32))) (Found!248 (index!3126 (_ BitVec 32))) (Intermediate!248 (undefined!1060 Bool) (index!3127 (_ BitVec 32)) (x!11397 (_ BitVec 32))) (Undefined!248) (MissingVacant!248 (index!3128 (_ BitVec 32))) )
))
(declare-fun call!6865 () SeekEntryResult!248)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3922 (_ BitVec 32)) SeekEntryResult!248)

(assert (=> bm!6853 (= call!6865 (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(declare-fun call!6856 () Unit!2198)

(declare-fun bm!6854 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!26 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 64) Int) Unit!2198)

(assert (=> bm!6854 (= call!6856 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (defaultEntry!2247 newMap!16)))))

(declare-fun bm!6855 () Bool)

(declare-fun call!6864 () Bool)

(declare-fun call!6876 () Bool)

(assert (=> bm!6855 (= call!6864 call!6876)))

(declare-fun b!76179 () Bool)

(declare-fun e!49788 () Bool)

(declare-fun call!6857 () ListLongMap!1447)

(declare-fun call!6875 () ListLongMap!1447)

(assert (=> b!76179 (= e!49788 (= call!6857 call!6875))))

(declare-fun e!49789 () Bool)

(declare-fun b!76180 () Bool)

(declare-fun lt!34555 () SeekEntryResult!248)

(assert (=> b!76180 (= e!49789 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34555)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76181 () Bool)

(declare-fun e!49775 () tuple2!2160)

(declare-fun e!49783 () tuple2!2160)

(assert (=> b!76181 (= e!49775 e!49783)))

(declare-fun c!11612 () Bool)

(declare-fun lt!34561 () SeekEntryResult!248)

(assert (=> b!76181 (= c!11612 ((_ is MissingZero!248) lt!34561))))

(declare-fun lt!34572 () SeekEntryResult!248)

(declare-fun e!49790 () Bool)

(declare-fun b!76182 () Bool)

(assert (=> b!76182 (= e!49790 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34572)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76183 () Bool)

(declare-fun res!40110 () Bool)

(declare-fun lt!34574 () SeekEntryResult!248)

(assert (=> b!76183 (= res!40110 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3128 lt!34574)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!49782 () Bool)

(assert (=> b!76183 (=> (not res!40110) (not e!49782))))

(declare-fun b!76184 () Bool)

(declare-fun e!49776 () Bool)

(assert (=> b!76184 (= e!49776 (not call!6864))))

(declare-fun b!76185 () Bool)

(declare-fun res!40105 () Bool)

(declare-fun call!6873 () Bool)

(assert (=> b!76185 (= res!40105 call!6873)))

(assert (=> b!76185 (=> (not res!40105) (not e!49789))))

(declare-fun b!76186 () Bool)

(declare-fun res!40111 () Bool)

(assert (=> b!76186 (=> (not res!40111) (not e!49776))))

(declare-fun lt!34566 () SeekEntryResult!248)

(assert (=> b!76186 (= res!40111 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3125 lt!34566)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76187 () Bool)

(declare-fun e!49781 () Bool)

(declare-fun e!49777 () Bool)

(assert (=> b!76187 (= e!49781 e!49777)))

(declare-fun res!40101 () Bool)

(declare-fun call!6867 () Bool)

(assert (=> b!76187 (= res!40101 call!6867)))

(assert (=> b!76187 (=> (not res!40101) (not e!49777))))

(declare-fun bm!6856 () Bool)

(declare-fun call!6861 () SeekEntryResult!248)

(assert (=> bm!6856 (= call!6861 call!6865)))

(declare-fun b!76188 () Bool)

(declare-fun res!40108 () Bool)

(declare-fun call!6859 () Bool)

(assert (=> b!76188 (= res!40108 call!6859)))

(assert (=> b!76188 (=> (not res!40108) (not e!49790))))

(declare-fun c!11606 () Bool)

(declare-fun c!11616 () Bool)

(declare-fun c!11608 () Bool)

(declare-fun c!11610 () Bool)

(declare-fun call!6858 () Bool)

(declare-fun bm!6857 () Bool)

(declare-fun c!11617 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!6857 (= call!6858 (inRange!0 (ite c!11616 (ite c!11606 (index!3126 lt!34555) (ite c!11617 (index!3125 lt!34574) (index!3128 lt!34574))) (ite c!11610 (index!3126 lt!34572) (ite c!11608 (index!3125 lt!34566) (index!3128 lt!34566)))) (mask!6230 newMap!16)))))

(declare-fun b!76189 () Bool)

(declare-fun e!49791 () tuple2!2160)

(declare-fun e!49785 () tuple2!2160)

(assert (=> b!76189 (= e!49791 e!49785)))

(declare-fun c!11614 () Bool)

(assert (=> b!76189 (= c!11614 (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76190 () Bool)

(declare-fun c!11609 () Bool)

(assert (=> b!76190 (= c!11609 ((_ is MissingVacant!248) lt!34574))))

(declare-fun e!49774 () Bool)

(declare-fun e!49786 () Bool)

(assert (=> b!76190 (= e!49774 e!49786)))

(declare-fun b!76191 () Bool)

(declare-fun call!6879 () Bool)

(assert (=> b!76191 (= e!49782 (not call!6879))))

(declare-fun b!76192 () Bool)

(declare-fun e!49792 () Bool)

(assert (=> b!76192 (= e!49788 e!49792)))

(declare-fun res!40107 () Bool)

(assert (=> b!76192 (= res!40107 (contains!735 call!6857 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> b!76192 (=> (not res!40107) (not e!49792))))

(declare-fun b!76193 () Bool)

(declare-fun c!11605 () Bool)

(assert (=> b!76193 (= c!11605 ((_ is MissingVacant!248) lt!34566))))

(declare-fun e!49780 () Bool)

(assert (=> b!76193 (= e!49780 e!49781)))

(declare-fun bm!6858 () Bool)

(declare-fun c!11615 () Bool)

(assert (=> bm!6858 (= c!11615 c!11616)))

(declare-fun call!6869 () Bool)

(declare-fun e!49773 () ListLongMap!1447)

(assert (=> bm!6858 (= call!6869 (contains!735 e!49773 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun bm!6859 () Bool)

(assert (=> bm!6859 (= call!6859 call!6858)))

(declare-fun b!76194 () Bool)

(declare-fun e!49779 () ListLongMap!1447)

(assert (=> b!76194 (= e!49779 (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun bm!6860 () Bool)

(assert (=> bm!6860 (= call!6876 (arrayContainsKey!0 (_keys!3905 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!76195 () Bool)

(declare-fun c!11607 () Bool)

(assert (=> b!76195 (= c!11607 ((_ is MissingVacant!248) lt!34561))))

(declare-fun e!49771 () tuple2!2160)

(assert (=> b!76195 (= e!49771 e!49775)))

(declare-fun b!76196 () Bool)

(declare-fun e!49787 () Unit!2198)

(declare-fun Unit!2207 () Unit!2198)

(assert (=> b!76196 (= e!49787 Unit!2207)))

(declare-fun lt!34569 () Unit!2198)

(declare-fun call!6868 () Unit!2198)

(assert (=> b!76196 (= lt!34569 call!6868)))

(declare-fun call!6866 () SeekEntryResult!248)

(assert (=> b!76196 (= lt!34555 call!6866)))

(declare-fun res!40109 () Bool)

(assert (=> b!76196 (= res!40109 ((_ is Found!248) lt!34555))))

(assert (=> b!76196 (=> (not res!40109) (not e!49789))))

(assert (=> b!76196 e!49789))

(declare-fun lt!34575 () Unit!2198)

(assert (=> b!76196 (= lt!34575 lt!34569)))

(assert (=> b!76196 false))

(declare-fun bm!6861 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!26 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 64) Int) Unit!2198)

(assert (=> bm!6861 (= call!6868 (lemmaInListMapThenSeekEntryOrOpenFindsIt!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (defaultEntry!2247 newMap!16)))))

(declare-fun b!76197 () Bool)

(declare-fun e!49778 () Bool)

(assert (=> b!76197 (= e!49778 (not call!6879))))

(declare-fun bm!6862 () Bool)

(assert (=> bm!6862 (= call!6866 call!6865)))

(declare-fun b!76198 () Bool)

(declare-fun call!6871 () ListLongMap!1447)

(declare-fun call!6870 () ListLongMap!1447)

(assert (=> b!76198 (= e!49779 (ite c!11614 call!6871 call!6870))))

(declare-fun b!76199 () Bool)

(declare-fun e!49772 () Unit!2198)

(declare-fun Unit!2208 () Unit!2198)

(assert (=> b!76199 (= e!49772 Unit!2208)))

(declare-fun lt!34553 () Unit!2198)

(assert (=> b!76199 (= lt!34553 call!6856)))

(assert (=> b!76199 (= lt!34566 call!6861)))

(assert (=> b!76199 (= c!11608 ((_ is MissingZero!248) lt!34566))))

(assert (=> b!76199 e!49780))

(declare-fun lt!34570 () Unit!2198)

(assert (=> b!76199 (= lt!34570 lt!34553)))

(assert (=> b!76199 false))

(declare-fun bm!6863 () Bool)

(declare-fun call!6860 () ListLongMap!1447)

(assert (=> bm!6863 (= call!6871 call!6860)))

(declare-fun b!76200 () Bool)

(declare-fun lt!34554 () tuple2!2160)

(declare-fun call!6862 () tuple2!2160)

(assert (=> b!76200 (= lt!34554 call!6862)))

(assert (=> b!76200 (= e!49783 (tuple2!2161 (_1!1090 lt!34554) (_2!1090 lt!34554)))))

(declare-fun b!76201 () Bool)

(assert (=> b!76201 (= e!49777 (not call!6864))))

(declare-fun b!76202 () Bool)

(declare-fun lt!34564 () tuple2!2160)

(assert (=> b!76202 (= e!49775 (tuple2!2161 (_1!1090 lt!34564) (_2!1090 lt!34564)))))

(assert (=> b!76202 (= lt!34564 call!6862)))

(declare-fun b!76203 () Bool)

(declare-fun lt!34562 () Unit!2198)

(declare-fun lt!34576 () Unit!2198)

(assert (=> b!76203 (= lt!34562 lt!34576)))

(declare-fun call!6878 () ListLongMap!1447)

(assert (=> b!76203 (= call!6878 call!6870)))

(declare-fun lt!34557 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!26 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 V!2963 Int) Unit!2198)

(assert (=> b!76203 (= lt!34576 (lemmaChangeZeroKeyThenAddPairToListMap!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) lt!34557 (zeroValue!2146 newMap!16) lt!34446 (minValue!2146 newMap!16) (defaultEntry!2247 newMap!16)))))

(assert (=> b!76203 (= lt!34557 (bvor (extraKeys!2100 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!76203 (= e!49785 (tuple2!2161 true (LongMapFixedSize!709 (defaultEntry!2247 newMap!16) (mask!6230 newMap!16) (bvor (extraKeys!2100 newMap!16) #b00000000000000000000000000000001) lt!34446 (minValue!2146 newMap!16) (_size!403 newMap!16) (_keys!3905 newMap!16) (_values!2230 newMap!16) (_vacant!403 newMap!16))))))

(declare-fun bm!6864 () Bool)

(assert (=> bm!6864 (= call!6875 (map!1166 newMap!16))))

(declare-fun b!76204 () Bool)

(declare-fun call!6874 () ListLongMap!1447)

(assert (=> b!76204 (= e!49773 call!6874)))

(declare-fun bm!6865 () Bool)

(declare-fun call!6877 () ListLongMap!1447)

(assert (=> bm!6865 (= call!6878 call!6877)))

(declare-fun b!76205 () Bool)

(assert (=> b!76205 (= e!49792 (= call!6857 (+!102 call!6875 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(declare-fun bm!6866 () Bool)

(assert (=> bm!6866 (= call!6874 call!6860)))

(declare-fun bm!6867 () Bool)

(assert (=> bm!6867 (= call!6867 call!6859)))

(declare-fun d!18085 () Bool)

(declare-fun e!49784 () Bool)

(assert (=> d!18085 e!49784))

(declare-fun res!40104 () Bool)

(assert (=> d!18085 (=> (not res!40104) (not e!49784))))

(declare-fun lt!34560 () tuple2!2160)

(assert (=> d!18085 (= res!40104 (valid!299 (_2!1090 lt!34560)))))

(assert (=> d!18085 (= lt!34560 e!49791)))

(declare-fun c!11613 () Bool)

(assert (=> d!18085 (= c!11613 (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvneg (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))))))

(assert (=> d!18085 (valid!299 newMap!16)))

(assert (=> d!18085 (= (update!105 newMap!16 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446) lt!34560)))

(declare-fun bm!6868 () Bool)

(declare-fun lt!34565 () (_ BitVec 32))

(assert (=> bm!6868 (= call!6860 (getCurrentListMap!430 (_keys!3905 newMap!16) (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16)))) (mask!6230 newMap!16) (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) (zeroValue!2146 newMap!16) (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun b!76206 () Bool)

(declare-fun res!40100 () Bool)

(assert (=> b!76206 (=> (not res!40100) (not e!49776))))

(assert (=> b!76206 (= res!40100 call!6867)))

(assert (=> b!76206 (= e!49780 e!49776)))

(declare-fun b!76207 () Bool)

(declare-fun lt!34573 () Unit!2198)

(assert (=> b!76207 (= e!49772 lt!34573)))

(assert (=> b!76207 (= lt!34573 call!6868)))

(assert (=> b!76207 (= lt!34572 call!6861)))

(declare-fun res!40102 () Bool)

(assert (=> b!76207 (= res!40102 ((_ is Found!248) lt!34572))))

(assert (=> b!76207 (=> (not res!40102) (not e!49790))))

(assert (=> b!76207 e!49790))

(declare-fun b!76208 () Bool)

(declare-fun res!40099 () Bool)

(assert (=> b!76208 (=> (not res!40099) (not e!49778))))

(assert (=> b!76208 (= res!40099 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3125 lt!34574)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76209 () Bool)

(declare-fun res!40112 () Bool)

(assert (=> b!76209 (= res!40112 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3128 lt!34566)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76209 (=> (not res!40112) (not e!49777))))

(declare-fun bm!6869 () Bool)

(assert (=> bm!6869 (= call!6879 call!6876)))

(declare-fun bm!6870 () Bool)

(assert (=> bm!6870 (= call!6857 (map!1166 (_2!1090 lt!34560)))))

(declare-fun bm!6871 () Bool)

(assert (=> bm!6871 (= call!6877 (+!102 e!49779 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(declare-fun c!11604 () Bool)

(assert (=> bm!6871 (= c!11604 c!11613)))

(declare-fun b!76210 () Bool)

(assert (=> b!76210 (= e!49781 ((_ is Undefined!248) lt!34566))))

(declare-fun bm!6872 () Bool)

(assert (=> bm!6872 (= call!6873 call!6858)))

(declare-fun b!76211 () Bool)

(declare-fun lt!34577 () Unit!2198)

(assert (=> b!76211 (= e!49787 lt!34577)))

(assert (=> b!76211 (= lt!34577 call!6856)))

(assert (=> b!76211 (= lt!34574 call!6866)))

(assert (=> b!76211 (= c!11617 ((_ is MissingZero!248) lt!34574))))

(assert (=> b!76211 e!49774))

(declare-fun b!76212 () Bool)

(assert (=> b!76212 (= e!49791 e!49771)))

(assert (=> b!76212 (= lt!34561 (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(assert (=> b!76212 (= c!11616 ((_ is Undefined!248) lt!34561))))

(declare-fun bm!6873 () Bool)

(declare-fun updateHelperNewKey!26 (LongMapFixedSize!708 (_ BitVec 64) V!2963 (_ BitVec 32)) tuple2!2160)

(assert (=> bm!6873 (= call!6862 (updateHelperNewKey!26 newMap!16 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561))))))

(declare-fun bm!6874 () Bool)

(declare-fun call!6872 () ListLongMap!1447)

(assert (=> bm!6874 (= call!6870 call!6872)))

(declare-fun b!76213 () Bool)

(declare-fun res!40103 () Bool)

(assert (=> b!76213 (=> (not res!40103) (not e!49778))))

(declare-fun call!6863 () Bool)

(assert (=> b!76213 (= res!40103 call!6863)))

(assert (=> b!76213 (= e!49774 e!49778)))

(declare-fun b!76214 () Bool)

(declare-fun lt!34559 () Unit!2198)

(assert (=> b!76214 (= lt!34559 e!49787)))

(assert (=> b!76214 (= c!11606 call!6869)))

(assert (=> b!76214 (= e!49771 (tuple2!2161 false newMap!16))))

(declare-fun b!76215 () Bool)

(assert (=> b!76215 (= e!49773 (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun bm!6875 () Bool)

(declare-fun lt!34568 () array!3924)

(assert (=> bm!6875 (= call!6872 (getCurrentListMap!430 (_keys!3905 newMap!16) (ite c!11613 (_values!2230 newMap!16) lt!34568) (mask!6230 newMap!16) (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun b!76216 () Bool)

(assert (=> b!76216 (= e!49786 ((_ is Undefined!248) lt!34574))))

(declare-fun b!76217 () Bool)

(declare-fun lt!34578 () Unit!2198)

(declare-fun lt!34567 () Unit!2198)

(assert (=> b!76217 (= lt!34578 lt!34567)))

(assert (=> b!76217 (= call!6878 call!6871)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!26 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 V!2963 Int) Unit!2198)

(assert (=> b!76217 (= lt!34567 (lemmaChangeLongMinValueKeyThenAddPairToListMap!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) lt!34565 (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) lt!34446 (defaultEntry!2247 newMap!16)))))

(assert (=> b!76217 (= lt!34565 (bvor (extraKeys!2100 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!76217 (= e!49785 (tuple2!2161 true (LongMapFixedSize!709 (defaultEntry!2247 newMap!16) (mask!6230 newMap!16) (bvor (extraKeys!2100 newMap!16) #b00000000000000000000000000000010) (zeroValue!2146 newMap!16) lt!34446 (_size!403 newMap!16) (_keys!3905 newMap!16) (_values!2230 newMap!16) (_vacant!403 newMap!16))))))

(declare-fun bm!6876 () Bool)

(assert (=> bm!6876 (= call!6863 call!6873)))

(declare-fun b!76218 () Bool)

(assert (=> b!76218 (= e!49784 e!49788)))

(declare-fun c!11611 () Bool)

(assert (=> b!76218 (= c!11611 (_1!1090 lt!34560))))

(declare-fun b!76219 () Bool)

(declare-fun lt!34552 () Unit!2198)

(declare-fun lt!34558 () Unit!2198)

(assert (=> b!76219 (= lt!34552 lt!34558)))

(assert (=> b!76219 (contains!735 call!6872 (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34561)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!84 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 32) Int) Unit!2198)

(assert (=> b!76219 (= lt!34558 (lemmaValidKeyInArrayIsInListMap!84 (_keys!3905 newMap!16) lt!34568 (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (index!3126 lt!34561) (defaultEntry!2247 newMap!16)))))

(assert (=> b!76219 (= lt!34568 (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16))))))

(declare-fun lt!34563 () Unit!2198)

(declare-fun lt!34571 () Unit!2198)

(assert (=> b!76219 (= lt!34563 lt!34571)))

(assert (=> b!76219 (= call!6877 call!6874)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!26 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 32) (_ BitVec 64) V!2963 Int) Unit!2198)

(assert (=> b!76219 (= lt!34571 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (index!3126 lt!34561) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34556 () Unit!2198)

(assert (=> b!76219 (= lt!34556 e!49772)))

(assert (=> b!76219 (= c!11610 call!6869)))

(assert (=> b!76219 (= e!49783 (tuple2!2161 true (LongMapFixedSize!709 (defaultEntry!2247 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (_size!403 newMap!16) (_keys!3905 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16))) (_vacant!403 newMap!16))))))

(declare-fun b!76220 () Bool)

(assert (=> b!76220 (= e!49786 e!49782)))

(declare-fun res!40106 () Bool)

(assert (=> b!76220 (= res!40106 call!6863)))

(assert (=> b!76220 (=> (not res!40106) (not e!49782))))

(assert (= (and d!18085 c!11613) b!76189))

(assert (= (and d!18085 (not c!11613)) b!76212))

(assert (= (and b!76189 c!11614) b!76203))

(assert (= (and b!76189 (not c!11614)) b!76217))

(assert (= (or b!76203 b!76217) bm!6874))

(assert (= (or b!76203 b!76217) bm!6863))

(assert (= (or b!76203 b!76217) bm!6865))

(assert (= (and b!76212 c!11616) b!76214))

(assert (= (and b!76212 (not c!11616)) b!76195))

(assert (= (and b!76214 c!11606) b!76196))

(assert (= (and b!76214 (not c!11606)) b!76211))

(assert (= (and b!76196 res!40109) b!76185))

(assert (= (and b!76185 res!40105) b!76180))

(assert (= (and b!76211 c!11617) b!76213))

(assert (= (and b!76211 (not c!11617)) b!76190))

(assert (= (and b!76213 res!40103) b!76208))

(assert (= (and b!76208 res!40099) b!76197))

(assert (= (and b!76190 c!11609) b!76220))

(assert (= (and b!76190 (not c!11609)) b!76216))

(assert (= (and b!76220 res!40106) b!76183))

(assert (= (and b!76183 res!40110) b!76191))

(assert (= (or b!76213 b!76220) bm!6876))

(assert (= (or b!76197 b!76191) bm!6869))

(assert (= (or b!76185 bm!6876) bm!6872))

(assert (= (or b!76196 b!76211) bm!6862))

(assert (= (and b!76195 c!11607) b!76202))

(assert (= (and b!76195 (not c!11607)) b!76181))

(assert (= (and b!76181 c!11612) b!76200))

(assert (= (and b!76181 (not c!11612)) b!76219))

(assert (= (and b!76219 c!11610) b!76207))

(assert (= (and b!76219 (not c!11610)) b!76199))

(assert (= (and b!76207 res!40102) b!76188))

(assert (= (and b!76188 res!40108) b!76182))

(assert (= (and b!76199 c!11608) b!76206))

(assert (= (and b!76199 (not c!11608)) b!76193))

(assert (= (and b!76206 res!40100) b!76186))

(assert (= (and b!76186 res!40111) b!76184))

(assert (= (and b!76193 c!11605) b!76187))

(assert (= (and b!76193 (not c!11605)) b!76210))

(assert (= (and b!76187 res!40101) b!76209))

(assert (= (and b!76209 res!40112) b!76201))

(assert (= (or b!76206 b!76187) bm!6867))

(assert (= (or b!76184 b!76201) bm!6855))

(assert (= (or b!76188 bm!6867) bm!6859))

(assert (= (or b!76207 b!76199) bm!6856))

(assert (= (or b!76202 b!76200) bm!6873))

(assert (= (or b!76214 b!76219) bm!6866))

(assert (= (or bm!6872 bm!6859) bm!6857))

(assert (= (or bm!6869 bm!6855) bm!6860))

(assert (= (or b!76196 b!76207) bm!6861))

(assert (= (or bm!6862 bm!6856) bm!6853))

(assert (= (or b!76211 b!76199) bm!6854))

(assert (= (or b!76214 b!76219) bm!6858))

(assert (= (and bm!6858 c!11615) b!76204))

(assert (= (and bm!6858 (not c!11615)) b!76215))

(assert (= (or bm!6863 bm!6866) bm!6868))

(assert (= (or bm!6874 b!76219) bm!6875))

(assert (= (or bm!6865 b!76219) bm!6871))

(assert (= (and bm!6871 c!11604) b!76198))

(assert (= (and bm!6871 (not c!11604)) b!76194))

(assert (= (and d!18085 res!40104) b!76218))

(assert (= (and b!76218 c!11611) b!76192))

(assert (= (and b!76218 (not c!11611)) b!76179))

(assert (= (and b!76192 res!40107) b!76205))

(assert (= (or b!76192 b!76205 b!76179) bm!6870))

(assert (= (or b!76205 b!76179) bm!6864))

(declare-fun m!75783 () Bool)

(assert (=> b!76205 m!75783))

(declare-fun m!75785 () Bool)

(assert (=> b!76203 m!75785))

(declare-fun m!75787 () Bool)

(assert (=> b!76209 m!75787))

(assert (=> bm!6861 m!75655))

(declare-fun m!75789 () Bool)

(assert (=> bm!6861 m!75789))

(declare-fun m!75791 () Bool)

(assert (=> b!76217 m!75791))

(declare-fun m!75793 () Bool)

(assert (=> bm!6868 m!75793))

(declare-fun m!75795 () Bool)

(assert (=> bm!6868 m!75795))

(declare-fun m!75797 () Bool)

(assert (=> bm!6857 m!75797))

(declare-fun m!75799 () Bool)

(assert (=> bm!6875 m!75799))

(declare-fun m!75801 () Bool)

(assert (=> d!18085 m!75801))

(assert (=> d!18085 m!75645))

(declare-fun m!75803 () Bool)

(assert (=> b!76180 m!75803))

(assert (=> b!76192 m!75655))

(declare-fun m!75805 () Bool)

(assert (=> b!76192 m!75805))

(declare-fun m!75807 () Bool)

(assert (=> b!76183 m!75807))

(declare-fun m!75809 () Bool)

(assert (=> b!76186 m!75809))

(assert (=> bm!6873 m!75655))

(declare-fun m!75811 () Bool)

(assert (=> bm!6873 m!75811))

(assert (=> bm!6860 m!75655))

(declare-fun m!75813 () Bool)

(assert (=> bm!6860 m!75813))

(declare-fun m!75815 () Bool)

(assert (=> b!76182 m!75815))

(assert (=> bm!6854 m!75655))

(declare-fun m!75817 () Bool)

(assert (=> bm!6854 m!75817))

(declare-fun m!75819 () Bool)

(assert (=> b!76208 m!75819))

(assert (=> bm!6858 m!75655))

(declare-fun m!75821 () Bool)

(assert (=> bm!6858 m!75821))

(declare-fun m!75823 () Bool)

(assert (=> bm!6871 m!75823))

(declare-fun m!75825 () Bool)

(assert (=> b!76219 m!75825))

(assert (=> b!76219 m!75793))

(assert (=> b!76219 m!75655))

(declare-fun m!75827 () Bool)

(assert (=> b!76219 m!75827))

(declare-fun m!75829 () Bool)

(assert (=> b!76219 m!75829))

(declare-fun m!75831 () Bool)

(assert (=> b!76219 m!75831))

(assert (=> b!76219 m!75829))

(assert (=> bm!6864 m!75683))

(declare-fun m!75833 () Bool)

(assert (=> b!76215 m!75833))

(declare-fun m!75835 () Bool)

(assert (=> bm!6870 m!75835))

(assert (=> b!76212 m!75655))

(declare-fun m!75837 () Bool)

(assert (=> b!76212 m!75837))

(assert (=> bm!6853 m!75655))

(assert (=> bm!6853 m!75837))

(assert (=> b!76194 m!75833))

(assert (=> b!75989 d!18085))

(declare-fun d!18087 () Bool)

(assert (=> d!18087 (= (map!1166 newMap!16) (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun bs!3252 () Bool)

(assert (= bs!3252 d!18087))

(assert (=> bs!3252 m!75833))

(assert (=> b!75979 d!18087))

(declare-fun b!76263 () Bool)

(declare-fun lt!34630 () ListLongMap!1447)

(declare-fun e!49824 () Bool)

(declare-fun apply!77 (ListLongMap!1447 (_ BitVec 64)) V!2963)

(assert (=> b!76263 (= e!49824 (= (apply!77 lt!34630 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!76263 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2111 (_values!2230 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> b!76263 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76264 () Bool)

(declare-fun e!49822 () Bool)

(assert (=> b!76264 (= e!49822 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!76265 () Bool)

(declare-fun e!49829 () Bool)

(declare-fun e!49823 () Bool)

(assert (=> b!76265 (= e!49829 e!49823)))

(declare-fun c!11630 () Bool)

(assert (=> b!76265 (= c!11630 (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!76266 () Bool)

(declare-fun e!49830 () Unit!2198)

(declare-fun lt!34644 () Unit!2198)

(assert (=> b!76266 (= e!49830 lt!34644)))

(declare-fun lt!34642 () ListLongMap!1447)

(assert (=> b!76266 (= lt!34642 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun lt!34626 () (_ BitVec 64))

(assert (=> b!76266 (= lt!34626 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34628 () (_ BitVec 64))

(assert (=> b!76266 (= lt!34628 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!34631 () Unit!2198)

(declare-fun addStillContains!53 (ListLongMap!1447 (_ BitVec 64) V!2963 (_ BitVec 64)) Unit!2198)

(assert (=> b!76266 (= lt!34631 (addStillContains!53 lt!34642 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34628))))

(assert (=> b!76266 (contains!735 (+!102 lt!34642 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34628)))

(declare-fun lt!34624 () Unit!2198)

(assert (=> b!76266 (= lt!34624 lt!34631)))

(declare-fun lt!34638 () ListLongMap!1447)

(assert (=> b!76266 (= lt!34638 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun lt!34639 () (_ BitVec 64))

(assert (=> b!76266 (= lt!34639 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34632 () (_ BitVec 64))

(assert (=> b!76266 (= lt!34632 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!34623 () Unit!2198)

(declare-fun addApplyDifferent!53 (ListLongMap!1447 (_ BitVec 64) V!2963 (_ BitVec 64)) Unit!2198)

(assert (=> b!76266 (= lt!34623 (addApplyDifferent!53 lt!34638 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34632))))

(assert (=> b!76266 (= (apply!77 (+!102 lt!34638 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34632) (apply!77 lt!34638 lt!34632))))

(declare-fun lt!34637 () Unit!2198)

(assert (=> b!76266 (= lt!34637 lt!34623)))

(declare-fun lt!34634 () ListLongMap!1447)

(assert (=> b!76266 (= lt!34634 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun lt!34641 () (_ BitVec 64))

(assert (=> b!76266 (= lt!34641 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34636 () (_ BitVec 64))

(assert (=> b!76266 (= lt!34636 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!34640 () Unit!2198)

(assert (=> b!76266 (= lt!34640 (addApplyDifferent!53 lt!34634 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34636))))

(assert (=> b!76266 (= (apply!77 (+!102 lt!34634 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34636) (apply!77 lt!34634 lt!34636))))

(declare-fun lt!34635 () Unit!2198)

(assert (=> b!76266 (= lt!34635 lt!34640)))

(declare-fun lt!34627 () ListLongMap!1447)

(assert (=> b!76266 (= lt!34627 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun lt!34629 () (_ BitVec 64))

(assert (=> b!76266 (= lt!34629 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34633 () (_ BitVec 64))

(assert (=> b!76266 (= lt!34633 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!76266 (= lt!34644 (addApplyDifferent!53 lt!34627 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34633))))

(assert (=> b!76266 (= (apply!77 (+!102 lt!34627 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34633) (apply!77 lt!34627 lt!34633))))

(declare-fun bm!6891 () Bool)

(declare-fun call!6899 () ListLongMap!1447)

(declare-fun call!6896 () ListLongMap!1447)

(assert (=> bm!6891 (= call!6899 call!6896)))

(declare-fun b!76268 () Bool)

(declare-fun Unit!2209 () Unit!2198)

(assert (=> b!76268 (= e!49830 Unit!2209)))

(declare-fun bm!6892 () Bool)

(declare-fun call!6900 () ListLongMap!1447)

(declare-fun c!11632 () Bool)

(declare-fun c!11635 () Bool)

(declare-fun call!6894 () ListLongMap!1447)

(assert (=> bm!6892 (= call!6894 (+!102 (ite c!11635 call!6896 (ite c!11632 call!6899 call!6900)) (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun bm!6893 () Bool)

(declare-fun call!6897 () Bool)

(assert (=> bm!6893 (= call!6897 (contains!735 lt!34630 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76269 () Bool)

(declare-fun e!49828 () ListLongMap!1447)

(assert (=> b!76269 (= e!49828 call!6900)))

(declare-fun b!76270 () Bool)

(declare-fun e!49827 () Bool)

(assert (=> b!76270 (= e!49827 (= (apply!77 lt!34630 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!76271 () Bool)

(declare-fun e!49821 () ListLongMap!1447)

(declare-fun call!6898 () ListLongMap!1447)

(assert (=> b!76271 (= e!49821 call!6898)))

(declare-fun d!18089 () Bool)

(assert (=> d!18089 e!49829))

(declare-fun res!40134 () Bool)

(assert (=> d!18089 (=> (not res!40134) (not e!49829))))

(assert (=> d!18089 (= res!40134 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun lt!34625 () ListLongMap!1447)

(assert (=> d!18089 (= lt!34630 lt!34625)))

(declare-fun lt!34643 () Unit!2198)

(assert (=> d!18089 (= lt!34643 e!49830)))

(declare-fun c!11631 () Bool)

(declare-fun e!49825 () Bool)

(assert (=> d!18089 (= c!11631 e!49825)))

(declare-fun res!40136 () Bool)

(assert (=> d!18089 (=> (not res!40136) (not e!49825))))

(assert (=> d!18089 (= res!40136 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun e!49826 () ListLongMap!1447)

(assert (=> d!18089 (= lt!34625 e!49826)))

(assert (=> d!18089 (= c!11635 (and (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!18089 (validMask!0 (mask!6230 (v!2562 (underlying!270 thiss!992))))))

(assert (=> d!18089 (= (getCurrentListMap!430 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))) lt!34630)))

(declare-fun b!76267 () Bool)

(assert (=> b!76267 (= e!49828 call!6898)))

(declare-fun bm!6894 () Bool)

(declare-fun call!6895 () Bool)

(assert (=> bm!6894 (= call!6895 (contains!735 lt!34630 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76272 () Bool)

(declare-fun c!11634 () Bool)

(assert (=> b!76272 (= c!11634 (and (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!76272 (= e!49821 e!49828)))

(declare-fun b!76273 () Bool)

(assert (=> b!76273 (= e!49823 (not call!6895))))

(declare-fun b!76274 () Bool)

(declare-fun res!40138 () Bool)

(assert (=> b!76274 (=> (not res!40138) (not e!49829))))

(declare-fun e!49820 () Bool)

(assert (=> b!76274 (= res!40138 e!49820)))

(declare-fun c!11633 () Bool)

(assert (=> b!76274 (= c!11633 (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!76275 () Bool)

(declare-fun e!49819 () Bool)

(assert (=> b!76275 (= e!49819 (= (apply!77 lt!34630 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!76276 () Bool)

(declare-fun e!49831 () Bool)

(assert (=> b!76276 (= e!49831 e!49824)))

(declare-fun res!40133 () Bool)

(assert (=> b!76276 (=> (not res!40133) (not e!49824))))

(assert (=> b!76276 (= res!40133 (contains!735 lt!34630 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!76276 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76277 () Bool)

(assert (=> b!76277 (= e!49826 (+!102 call!6894 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun bm!6895 () Bool)

(assert (=> bm!6895 (= call!6898 call!6894)))

(declare-fun b!76278 () Bool)

(declare-fun res!40137 () Bool)

(assert (=> b!76278 (=> (not res!40137) (not e!49829))))

(assert (=> b!76278 (= res!40137 e!49831)))

(declare-fun res!40132 () Bool)

(assert (=> b!76278 (=> res!40132 e!49831)))

(assert (=> b!76278 (= res!40132 (not e!49822))))

(declare-fun res!40131 () Bool)

(assert (=> b!76278 (=> (not res!40131) (not e!49822))))

(assert (=> b!76278 (= res!40131 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76279 () Bool)

(assert (=> b!76279 (= e!49820 (not call!6897))))

(declare-fun bm!6896 () Bool)

(assert (=> bm!6896 (= call!6896 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!76280 () Bool)

(assert (=> b!76280 (= e!49825 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!76281 () Bool)

(assert (=> b!76281 (= e!49820 e!49827)))

(declare-fun res!40139 () Bool)

(assert (=> b!76281 (= res!40139 call!6897)))

(assert (=> b!76281 (=> (not res!40139) (not e!49827))))

(declare-fun bm!6897 () Bool)

(assert (=> bm!6897 (= call!6900 call!6899)))

(declare-fun b!76282 () Bool)

(assert (=> b!76282 (= e!49826 e!49821)))

(assert (=> b!76282 (= c!11632 (and (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!76283 () Bool)

(assert (=> b!76283 (= e!49823 e!49819)))

(declare-fun res!40135 () Bool)

(assert (=> b!76283 (= res!40135 call!6895)))

(assert (=> b!76283 (=> (not res!40135) (not e!49819))))

(assert (= (and d!18089 c!11635) b!76277))

(assert (= (and d!18089 (not c!11635)) b!76282))

(assert (= (and b!76282 c!11632) b!76271))

(assert (= (and b!76282 (not c!11632)) b!76272))

(assert (= (and b!76272 c!11634) b!76267))

(assert (= (and b!76272 (not c!11634)) b!76269))

(assert (= (or b!76267 b!76269) bm!6897))

(assert (= (or b!76271 bm!6897) bm!6891))

(assert (= (or b!76271 b!76267) bm!6895))

(assert (= (or b!76277 bm!6891) bm!6896))

(assert (= (or b!76277 bm!6895) bm!6892))

(assert (= (and d!18089 res!40136) b!76280))

(assert (= (and d!18089 c!11631) b!76266))

(assert (= (and d!18089 (not c!11631)) b!76268))

(assert (= (and d!18089 res!40134) b!76278))

(assert (= (and b!76278 res!40131) b!76264))

(assert (= (and b!76278 (not res!40132)) b!76276))

(assert (= (and b!76276 res!40133) b!76263))

(assert (= (and b!76278 res!40137) b!76274))

(assert (= (and b!76274 c!11633) b!76281))

(assert (= (and b!76274 (not c!11633)) b!76279))

(assert (= (and b!76281 res!40139) b!76270))

(assert (= (or b!76281 b!76279) bm!6893))

(assert (= (and b!76274 res!40138) b!76265))

(assert (= (and b!76265 c!11630) b!76283))

(assert (= (and b!76265 (not c!11630)) b!76273))

(assert (= (and b!76283 res!40135) b!76275))

(assert (= (or b!76283 b!76273) bm!6894))

(declare-fun b_lambda!3429 () Bool)

(assert (=> (not b_lambda!3429) (not b!76263)))

(assert (=> b!76263 t!5110))

(declare-fun b_and!4661 () Bool)

(assert (= b_and!4649 (and (=> t!5110 result!2735) b_and!4661)))

(assert (=> b!76263 t!5112))

(declare-fun b_and!4663 () Bool)

(assert (= b_and!4651 (and (=> t!5112 result!2739) b_and!4663)))

(declare-fun m!75839 () Bool)

(assert (=> bm!6893 m!75839))

(declare-fun m!75841 () Bool)

(assert (=> b!76264 m!75841))

(assert (=> b!76264 m!75841))

(declare-fun m!75843 () Bool)

(assert (=> b!76264 m!75843))

(assert (=> d!18089 m!75687))

(declare-fun m!75845 () Bool)

(assert (=> bm!6892 m!75845))

(declare-fun m!75847 () Bool)

(assert (=> b!76277 m!75847))

(assert (=> b!76276 m!75841))

(assert (=> b!76276 m!75841))

(declare-fun m!75849 () Bool)

(assert (=> b!76276 m!75849))

(assert (=> b!76266 m!75697))

(declare-fun m!75851 () Bool)

(assert (=> b!76266 m!75851))

(declare-fun m!75853 () Bool)

(assert (=> b!76266 m!75853))

(declare-fun m!75855 () Bool)

(assert (=> b!76266 m!75855))

(declare-fun m!75857 () Bool)

(assert (=> b!76266 m!75857))

(declare-fun m!75859 () Bool)

(assert (=> b!76266 m!75859))

(assert (=> b!76266 m!75841))

(declare-fun m!75861 () Bool)

(assert (=> b!76266 m!75861))

(declare-fun m!75863 () Bool)

(assert (=> b!76266 m!75863))

(assert (=> b!76266 m!75863))

(declare-fun m!75865 () Bool)

(assert (=> b!76266 m!75865))

(declare-fun m!75867 () Bool)

(assert (=> b!76266 m!75867))

(assert (=> b!76266 m!75859))

(declare-fun m!75869 () Bool)

(assert (=> b!76266 m!75869))

(assert (=> b!76266 m!75851))

(declare-fun m!75871 () Bool)

(assert (=> b!76266 m!75871))

(declare-fun m!75873 () Bool)

(assert (=> b!76266 m!75873))

(assert (=> b!76266 m!75861))

(declare-fun m!75875 () Bool)

(assert (=> b!76266 m!75875))

(declare-fun m!75877 () Bool)

(assert (=> b!76266 m!75877))

(declare-fun m!75879 () Bool)

(assert (=> b!76266 m!75879))

(declare-fun m!75881 () Bool)

(assert (=> bm!6894 m!75881))

(assert (=> b!76280 m!75841))

(assert (=> b!76280 m!75841))

(assert (=> b!76280 m!75843))

(declare-fun m!75883 () Bool)

(assert (=> b!76263 m!75883))

(assert (=> b!76263 m!75883))

(assert (=> b!76263 m!75677))

(declare-fun m!75885 () Bool)

(assert (=> b!76263 m!75885))

(assert (=> b!76263 m!75841))

(declare-fun m!75887 () Bool)

(assert (=> b!76263 m!75887))

(assert (=> b!76263 m!75677))

(assert (=> b!76263 m!75841))

(declare-fun m!75889 () Bool)

(assert (=> b!76270 m!75889))

(declare-fun m!75891 () Bool)

(assert (=> b!76275 m!75891))

(assert (=> bm!6896 m!75697))

(assert (=> b!75979 d!18089))

(declare-fun d!18091 () Bool)

(assert (=> d!18091 (= (array_inv!1111 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvsge (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!75994 d!18091))

(declare-fun d!18093 () Bool)

(assert (=> d!18093 (= (array_inv!1112 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvsge (size!2111 (_values!2230 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!75994 d!18093))

(declare-fun b!76292 () Bool)

(declare-fun e!49840 () Bool)

(declare-fun e!49839 () Bool)

(assert (=> b!76292 (= e!49840 e!49839)))

(declare-fun lt!34653 () (_ BitVec 64))

(assert (=> b!76292 (= lt!34653 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!34651 () Unit!2198)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3922 (_ BitVec 64) (_ BitVec 32)) Unit!2198)

(assert (=> b!76292 (= lt!34651 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34653 #b00000000000000000000000000000000))))

(assert (=> b!76292 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34653 #b00000000000000000000000000000000)))

(declare-fun lt!34652 () Unit!2198)

(assert (=> b!76292 (= lt!34652 lt!34651)))

(declare-fun res!40145 () Bool)

(assert (=> b!76292 (= res!40145 (= (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))) (Found!248 #b00000000000000000000000000000000)))))

(assert (=> b!76292 (=> (not res!40145) (not e!49839))))

(declare-fun b!76293 () Bool)

(declare-fun call!6903 () Bool)

(assert (=> b!76293 (= e!49839 call!6903)))

(declare-fun b!76294 () Bool)

(assert (=> b!76294 (= e!49840 call!6903)))

(declare-fun d!18095 () Bool)

(declare-fun res!40144 () Bool)

(declare-fun e!49838 () Bool)

(assert (=> d!18095 (=> res!40144 e!49838)))

(assert (=> d!18095 (= res!40144 (bvsge #b00000000000000000000000000000000 (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> d!18095 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))) e!49838)))

(declare-fun b!76295 () Bool)

(assert (=> b!76295 (= e!49838 e!49840)))

(declare-fun c!11638 () Bool)

(assert (=> b!76295 (= c!11638 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!6900 () Bool)

(assert (=> bm!6900 (= call!6903 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))))))

(assert (= (and d!18095 (not res!40144)) b!76295))

(assert (= (and b!76295 c!11638) b!76292))

(assert (= (and b!76295 (not c!11638)) b!76294))

(assert (= (and b!76292 res!40145) b!76293))

(assert (= (or b!76293 b!76294) bm!6900))

(assert (=> b!76292 m!75765))

(declare-fun m!75893 () Bool)

(assert (=> b!76292 m!75893))

(declare-fun m!75895 () Bool)

(assert (=> b!76292 m!75895))

(assert (=> b!76292 m!75765))

(declare-fun m!75897 () Bool)

(assert (=> b!76292 m!75897))

(assert (=> b!76295 m!75765))

(assert (=> b!76295 m!75765))

(assert (=> b!76295 m!75769))

(declare-fun m!75899 () Bool)

(assert (=> bm!6900 m!75899))

(assert (=> b!75980 d!18095))

(declare-fun b!76320 () Bool)

(assert (=> b!76320 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> b!76320 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2111 (_values!2230 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun lt!34672 () ListLongMap!1447)

(declare-fun e!49858 () Bool)

(assert (=> b!76320 (= e!49858 (= (apply!77 lt!34672 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!76321 () Bool)

(declare-fun e!49861 () ListLongMap!1447)

(assert (=> b!76321 (= e!49861 (ListLongMap!1448 Nil!1512))))

(declare-fun b!76322 () Bool)

(declare-fun e!49860 () Bool)

(declare-fun e!49859 () Bool)

(assert (=> b!76322 (= e!49860 e!49859)))

(declare-fun c!11649 () Bool)

(assert (=> b!76322 (= c!11649 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76323 () Bool)

(declare-fun res!40157 () Bool)

(declare-fun e!49856 () Bool)

(assert (=> b!76323 (=> (not res!40157) (not e!49856))))

(assert (=> b!76323 (= res!40157 (not (contains!735 lt!34672 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!18097 () Bool)

(assert (=> d!18097 e!49856))

(declare-fun res!40156 () Bool)

(assert (=> d!18097 (=> (not res!40156) (not e!49856))))

(assert (=> d!18097 (= res!40156 (not (contains!735 lt!34672 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!18097 (= lt!34672 e!49861)))

(declare-fun c!11648 () Bool)

(assert (=> d!18097 (= c!11648 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> d!18097 (validMask!0 (mask!6230 (v!2562 (underlying!270 thiss!992))))))

(assert (=> d!18097 (= (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))) lt!34672)))

(declare-fun b!76324 () Bool)

(declare-fun e!49857 () Bool)

(assert (=> b!76324 (= e!49857 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!76324 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!76325 () Bool)

(declare-fun e!49855 () ListLongMap!1447)

(declare-fun call!6906 () ListLongMap!1447)

(assert (=> b!76325 (= e!49855 call!6906)))

(declare-fun b!76326 () Bool)

(declare-fun lt!34670 () Unit!2198)

(declare-fun lt!34673 () Unit!2198)

(assert (=> b!76326 (= lt!34670 lt!34673)))

(declare-fun lt!34669 () (_ BitVec 64))

(declare-fun lt!34668 () (_ BitVec 64))

(declare-fun lt!34674 () V!2963)

(declare-fun lt!34671 () ListLongMap!1447)

(assert (=> b!76326 (not (contains!735 (+!102 lt!34671 (tuple2!2159 lt!34669 lt!34674)) lt!34668))))

(declare-fun addStillNotContains!28 (ListLongMap!1447 (_ BitVec 64) V!2963 (_ BitVec 64)) Unit!2198)

(assert (=> b!76326 (= lt!34673 (addStillNotContains!28 lt!34671 lt!34669 lt!34674 lt!34668))))

(assert (=> b!76326 (= lt!34668 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!76326 (= lt!34674 (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!76326 (= lt!34669 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!76326 (= lt!34671 call!6906)))

(assert (=> b!76326 (= e!49855 (+!102 call!6906 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!76327 () Bool)

(assert (=> b!76327 (= e!49861 e!49855)))

(declare-fun c!11650 () Bool)

(assert (=> b!76327 (= c!11650 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!76328 () Bool)

(declare-fun isEmpty!327 (ListLongMap!1447) Bool)

(assert (=> b!76328 (= e!49859 (isEmpty!327 lt!34672))))

(declare-fun b!76329 () Bool)

(assert (=> b!76329 (= e!49860 e!49858)))

(assert (=> b!76329 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun res!40154 () Bool)

(assert (=> b!76329 (= res!40154 (contains!735 lt!34672 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!76329 (=> (not res!40154) (not e!49858))))

(declare-fun bm!6903 () Bool)

(assert (=> bm!6903 (= call!6906 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!76330 () Bool)

(assert (=> b!76330 (= e!49856 e!49860)))

(declare-fun c!11647 () Bool)

(assert (=> b!76330 (= c!11647 e!49857)))

(declare-fun res!40155 () Bool)

(assert (=> b!76330 (=> (not res!40155) (not e!49857))))

(assert (=> b!76330 (= res!40155 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76331 () Bool)

(assert (=> b!76331 (= e!49859 (= lt!34672 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18097 c!11648) b!76321))

(assert (= (and d!18097 (not c!11648)) b!76327))

(assert (= (and b!76327 c!11650) b!76326))

(assert (= (and b!76327 (not c!11650)) b!76325))

(assert (= (or b!76326 b!76325) bm!6903))

(assert (= (and d!18097 res!40156) b!76323))

(assert (= (and b!76323 res!40157) b!76330))

(assert (= (and b!76330 res!40155) b!76324))

(assert (= (and b!76330 c!11647) b!76329))

(assert (= (and b!76330 (not c!11647)) b!76322))

(assert (= (and b!76329 res!40154) b!76320))

(assert (= (and b!76322 c!11649) b!76331))

(assert (= (and b!76322 (not c!11649)) b!76328))

(declare-fun b_lambda!3431 () Bool)

(assert (=> (not b_lambda!3431) (not b!76320)))

(assert (=> b!76320 t!5110))

(declare-fun b_and!4665 () Bool)

(assert (= b_and!4661 (and (=> t!5110 result!2735) b_and!4665)))

(assert (=> b!76320 t!5112))

(declare-fun b_and!4667 () Bool)

(assert (= b_and!4663 (and (=> t!5112 result!2739) b_and!4667)))

(declare-fun b_lambda!3433 () Bool)

(assert (=> (not b_lambda!3433) (not b!76326)))

(assert (=> b!76326 t!5110))

(declare-fun b_and!4669 () Bool)

(assert (= b_and!4665 (and (=> t!5110 result!2735) b_and!4669)))

(assert (=> b!76326 t!5112))

(declare-fun b_and!4671 () Bool)

(assert (= b_and!4667 (and (=> t!5112 result!2739) b_and!4671)))

(declare-fun m!75901 () Bool)

(assert (=> b!76328 m!75901))

(declare-fun m!75903 () Bool)

(assert (=> b!76326 m!75903))

(declare-fun m!75905 () Bool)

(assert (=> b!76326 m!75905))

(declare-fun m!75907 () Bool)

(assert (=> b!76326 m!75907))

(assert (=> b!76326 m!75677))

(assert (=> b!76326 m!75841))

(assert (=> b!76326 m!75905))

(assert (=> b!76326 m!75883))

(declare-fun m!75909 () Bool)

(assert (=> b!76326 m!75909))

(assert (=> b!76326 m!75883))

(assert (=> b!76326 m!75677))

(assert (=> b!76326 m!75885))

(assert (=> b!76329 m!75841))

(assert (=> b!76329 m!75841))

(declare-fun m!75911 () Bool)

(assert (=> b!76329 m!75911))

(assert (=> b!76324 m!75841))

(assert (=> b!76324 m!75841))

(assert (=> b!76324 m!75843))

(declare-fun m!75913 () Bool)

(assert (=> bm!6903 m!75913))

(assert (=> b!76327 m!75841))

(assert (=> b!76327 m!75841))

(assert (=> b!76327 m!75843))

(assert (=> b!76331 m!75913))

(assert (=> b!76320 m!75677))

(assert (=> b!76320 m!75841))

(declare-fun m!75915 () Bool)

(assert (=> b!76320 m!75915))

(assert (=> b!76320 m!75841))

(assert (=> b!76320 m!75883))

(assert (=> b!76320 m!75883))

(assert (=> b!76320 m!75677))

(assert (=> b!76320 m!75885))

(declare-fun m!75917 () Bool)

(assert (=> b!76323 m!75917))

(declare-fun m!75919 () Bool)

(assert (=> d!18097 m!75919))

(assert (=> d!18097 m!75687))

(assert (=> b!75985 d!18097))

(declare-fun d!18099 () Bool)

(declare-fun e!49864 () Bool)

(assert (=> d!18099 e!49864))

(declare-fun res!40163 () Bool)

(assert (=> d!18099 (=> (not res!40163) (not e!49864))))

(declare-fun lt!34684 () ListLongMap!1447)

(assert (=> d!18099 (= res!40163 (contains!735 lt!34684 (_1!1089 lt!34443)))))

(declare-fun lt!34683 () List!1515)

(assert (=> d!18099 (= lt!34684 (ListLongMap!1448 lt!34683))))

(declare-fun lt!34685 () Unit!2198)

(declare-fun lt!34686 () Unit!2198)

(assert (=> d!18099 (= lt!34685 lt!34686)))

(assert (=> d!18099 (= (getValueByKey!134 lt!34683 (_1!1089 lt!34443)) (Some!139 (_2!1089 lt!34443)))))

(declare-fun lemmaContainsTupThenGetReturnValue!53 (List!1515 (_ BitVec 64) V!2963) Unit!2198)

(assert (=> d!18099 (= lt!34686 (lemmaContainsTupThenGetReturnValue!53 lt!34683 (_1!1089 lt!34443) (_2!1089 lt!34443)))))

(declare-fun insertStrictlySorted!55 (List!1515 (_ BitVec 64) V!2963) List!1515)

(assert (=> d!18099 (= lt!34683 (insertStrictlySorted!55 (toList!739 (+!102 lt!34442 lt!34448)) (_1!1089 lt!34443) (_2!1089 lt!34443)))))

(assert (=> d!18099 (= (+!102 (+!102 lt!34442 lt!34448) lt!34443) lt!34684)))

(declare-fun b!76336 () Bool)

(declare-fun res!40162 () Bool)

(assert (=> b!76336 (=> (not res!40162) (not e!49864))))

(assert (=> b!76336 (= res!40162 (= (getValueByKey!134 (toList!739 lt!34684) (_1!1089 lt!34443)) (Some!139 (_2!1089 lt!34443))))))

(declare-fun b!76337 () Bool)

(declare-fun contains!738 (List!1515 tuple2!2158) Bool)

(assert (=> b!76337 (= e!49864 (contains!738 (toList!739 lt!34684) lt!34443))))

(assert (= (and d!18099 res!40163) b!76336))

(assert (= (and b!76336 res!40162) b!76337))

(declare-fun m!75921 () Bool)

(assert (=> d!18099 m!75921))

(declare-fun m!75923 () Bool)

(assert (=> d!18099 m!75923))

(declare-fun m!75925 () Bool)

(assert (=> d!18099 m!75925))

(declare-fun m!75927 () Bool)

(assert (=> d!18099 m!75927))

(declare-fun m!75929 () Bool)

(assert (=> b!76336 m!75929))

(declare-fun m!75931 () Bool)

(assert (=> b!76337 m!75931))

(assert (=> b!75985 d!18099))

(declare-fun d!18101 () Bool)

(declare-fun e!49865 () Bool)

(assert (=> d!18101 e!49865))

(declare-fun res!40165 () Bool)

(assert (=> d!18101 (=> (not res!40165) (not e!49865))))

(declare-fun lt!34688 () ListLongMap!1447)

(assert (=> d!18101 (= res!40165 (contains!735 lt!34688 (_1!1089 lt!34448)))))

(declare-fun lt!34687 () List!1515)

(assert (=> d!18101 (= lt!34688 (ListLongMap!1448 lt!34687))))

(declare-fun lt!34689 () Unit!2198)

(declare-fun lt!34690 () Unit!2198)

(assert (=> d!18101 (= lt!34689 lt!34690)))

(assert (=> d!18101 (= (getValueByKey!134 lt!34687 (_1!1089 lt!34448)) (Some!139 (_2!1089 lt!34448)))))

(assert (=> d!18101 (= lt!34690 (lemmaContainsTupThenGetReturnValue!53 lt!34687 (_1!1089 lt!34448) (_2!1089 lt!34448)))))

(assert (=> d!18101 (= lt!34687 (insertStrictlySorted!55 (toList!739 lt!34442) (_1!1089 lt!34448) (_2!1089 lt!34448)))))

(assert (=> d!18101 (= (+!102 lt!34442 lt!34448) lt!34688)))

(declare-fun b!76338 () Bool)

(declare-fun res!40164 () Bool)

(assert (=> b!76338 (=> (not res!40164) (not e!49865))))

(assert (=> b!76338 (= res!40164 (= (getValueByKey!134 (toList!739 lt!34688) (_1!1089 lt!34448)) (Some!139 (_2!1089 lt!34448))))))

(declare-fun b!76339 () Bool)

(assert (=> b!76339 (= e!49865 (contains!738 (toList!739 lt!34688) lt!34448))))

(assert (= (and d!18101 res!40165) b!76338))

(assert (= (and b!76338 res!40164) b!76339))

(declare-fun m!75933 () Bool)

(assert (=> d!18101 m!75933))

(declare-fun m!75935 () Bool)

(assert (=> d!18101 m!75935))

(declare-fun m!75937 () Bool)

(assert (=> d!18101 m!75937))

(declare-fun m!75939 () Bool)

(assert (=> d!18101 m!75939))

(declare-fun m!75941 () Bool)

(assert (=> b!76338 m!75941))

(declare-fun m!75943 () Bool)

(assert (=> b!76339 m!75943))

(assert (=> b!75985 d!18101))

(declare-fun d!18103 () Bool)

(declare-fun e!49866 () Bool)

(assert (=> d!18103 e!49866))

(declare-fun res!40167 () Bool)

(assert (=> d!18103 (=> (not res!40167) (not e!49866))))

(declare-fun lt!34692 () ListLongMap!1447)

(assert (=> d!18103 (= res!40167 (contains!735 lt!34692 (_1!1089 lt!34448)))))

(declare-fun lt!34691 () List!1515)

(assert (=> d!18103 (= lt!34692 (ListLongMap!1448 lt!34691))))

(declare-fun lt!34693 () Unit!2198)

(declare-fun lt!34694 () Unit!2198)

(assert (=> d!18103 (= lt!34693 lt!34694)))

(assert (=> d!18103 (= (getValueByKey!134 lt!34691 (_1!1089 lt!34448)) (Some!139 (_2!1089 lt!34448)))))

(assert (=> d!18103 (= lt!34694 (lemmaContainsTupThenGetReturnValue!53 lt!34691 (_1!1089 lt!34448) (_2!1089 lt!34448)))))

(assert (=> d!18103 (= lt!34691 (insertStrictlySorted!55 (toList!739 (+!102 lt!34442 lt!34443)) (_1!1089 lt!34448) (_2!1089 lt!34448)))))

(assert (=> d!18103 (= (+!102 (+!102 lt!34442 lt!34443) lt!34448) lt!34692)))

(declare-fun b!76340 () Bool)

(declare-fun res!40166 () Bool)

(assert (=> b!76340 (=> (not res!40166) (not e!49866))))

(assert (=> b!76340 (= res!40166 (= (getValueByKey!134 (toList!739 lt!34692) (_1!1089 lt!34448)) (Some!139 (_2!1089 lt!34448))))))

(declare-fun b!76341 () Bool)

(assert (=> b!76341 (= e!49866 (contains!738 (toList!739 lt!34692) lt!34448))))

(assert (= (and d!18103 res!40167) b!76340))

(assert (= (and b!76340 res!40166) b!76341))

(declare-fun m!75945 () Bool)

(assert (=> d!18103 m!75945))

(declare-fun m!75947 () Bool)

(assert (=> d!18103 m!75947))

(declare-fun m!75949 () Bool)

(assert (=> d!18103 m!75949))

(declare-fun m!75951 () Bool)

(assert (=> d!18103 m!75951))

(declare-fun m!75953 () Bool)

(assert (=> b!76340 m!75953))

(declare-fun m!75955 () Bool)

(assert (=> b!76341 m!75955))

(assert (=> b!75985 d!18103))

(declare-fun d!18105 () Bool)

(assert (=> d!18105 (= (+!102 (+!102 lt!34442 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (+!102 (+!102 lt!34442 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))

(declare-fun lt!34697 () Unit!2198)

(declare-fun choose!446 (ListLongMap!1447 (_ BitVec 64) V!2963 (_ BitVec 64) V!2963) Unit!2198)

(assert (=> d!18105 (= lt!34697 (choose!446 lt!34442 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))

(assert (=> d!18105 (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!18105 (= (addCommutativeForDiffKeys!21 lt!34442 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) lt!34697)))

(declare-fun bs!3253 () Bool)

(assert (= bs!3253 d!18105))

(declare-fun m!75957 () Bool)

(assert (=> bs!3253 m!75957))

(assert (=> bs!3253 m!75655))

(declare-fun m!75959 () Bool)

(assert (=> bs!3253 m!75959))

(declare-fun m!75961 () Bool)

(assert (=> bs!3253 m!75961))

(assert (=> bs!3253 m!75957))

(declare-fun m!75963 () Bool)

(assert (=> bs!3253 m!75963))

(assert (=> bs!3253 m!75961))

(declare-fun m!75965 () Bool)

(assert (=> bs!3253 m!75965))

(assert (=> b!75985 d!18105))

(declare-fun d!18107 () Bool)

(declare-fun e!49867 () Bool)

(assert (=> d!18107 e!49867))

(declare-fun res!40169 () Bool)

(assert (=> d!18107 (=> (not res!40169) (not e!49867))))

(declare-fun lt!34699 () ListLongMap!1447)

(assert (=> d!18107 (= res!40169 (contains!735 lt!34699 (_1!1089 lt!34443)))))

(declare-fun lt!34698 () List!1515)

(assert (=> d!18107 (= lt!34699 (ListLongMap!1448 lt!34698))))

(declare-fun lt!34700 () Unit!2198)

(declare-fun lt!34701 () Unit!2198)

(assert (=> d!18107 (= lt!34700 lt!34701)))

(assert (=> d!18107 (= (getValueByKey!134 lt!34698 (_1!1089 lt!34443)) (Some!139 (_2!1089 lt!34443)))))

(assert (=> d!18107 (= lt!34701 (lemmaContainsTupThenGetReturnValue!53 lt!34698 (_1!1089 lt!34443) (_2!1089 lt!34443)))))

(assert (=> d!18107 (= lt!34698 (insertStrictlySorted!55 (toList!739 lt!34442) (_1!1089 lt!34443) (_2!1089 lt!34443)))))

(assert (=> d!18107 (= (+!102 lt!34442 lt!34443) lt!34699)))

(declare-fun b!76342 () Bool)

(declare-fun res!40168 () Bool)

(assert (=> b!76342 (=> (not res!40168) (not e!49867))))

(assert (=> b!76342 (= res!40168 (= (getValueByKey!134 (toList!739 lt!34699) (_1!1089 lt!34443)) (Some!139 (_2!1089 lt!34443))))))

(declare-fun b!76343 () Bool)

(assert (=> b!76343 (= e!49867 (contains!738 (toList!739 lt!34699) lt!34443))))

(assert (= (and d!18107 res!40169) b!76342))

(assert (= (and b!76342 res!40168) b!76343))

(declare-fun m!75967 () Bool)

(assert (=> d!18107 m!75967))

(declare-fun m!75969 () Bool)

(assert (=> d!18107 m!75969))

(declare-fun m!75971 () Bool)

(assert (=> d!18107 m!75971))

(declare-fun m!75973 () Bool)

(assert (=> d!18107 m!75973))

(declare-fun m!75975 () Bool)

(assert (=> b!76342 m!75975))

(declare-fun m!75977 () Bool)

(assert (=> b!76343 m!75977))

(assert (=> b!75985 d!18107))

(declare-fun d!18109 () Bool)

(assert (=> d!18109 (= (validMask!0 (mask!6230 (v!2562 (underlying!270 thiss!992)))) (and (or (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000001111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000011111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000001111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000011111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000001111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000011111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000001111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000011111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000000111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000001111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000011111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000000111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000001111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000011111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000000111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000001111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000011111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000000111111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000001111111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000011111111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00000111111111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00001111111111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00011111111111111111111111111111) (= (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6230 (v!2562 (underlying!270 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!75985 d!18109))

(declare-fun d!18111 () Bool)

(declare-fun res!40176 () Bool)

(declare-fun e!49870 () Bool)

(assert (=> d!18111 (=> (not res!40176) (not e!49870))))

(declare-fun simpleValid!52 (LongMapFixedSize!708) Bool)

(assert (=> d!18111 (= res!40176 (simpleValid!52 newMap!16))))

(assert (=> d!18111 (= (valid!299 newMap!16) e!49870)))

(declare-fun b!76350 () Bool)

(declare-fun res!40177 () Bool)

(assert (=> b!76350 (=> (not res!40177) (not e!49870))))

(declare-fun arrayCountValidKeys!0 (array!3922 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!76350 (= res!40177 (= (arrayCountValidKeys!0 (_keys!3905 newMap!16) #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))) (_size!403 newMap!16)))))

(declare-fun b!76351 () Bool)

(declare-fun res!40178 () Bool)

(assert (=> b!76351 (=> (not res!40178) (not e!49870))))

(assert (=> b!76351 (= res!40178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(declare-fun b!76352 () Bool)

(assert (=> b!76352 (= e!49870 (arrayNoDuplicates!0 (_keys!3905 newMap!16) #b00000000000000000000000000000000 Nil!1513))))

(assert (= (and d!18111 res!40176) b!76350))

(assert (= (and b!76350 res!40177) b!76351))

(assert (= (and b!76351 res!40178) b!76352))

(declare-fun m!75979 () Bool)

(assert (=> d!18111 m!75979))

(declare-fun m!75981 () Bool)

(assert (=> b!76350 m!75981))

(declare-fun m!75983 () Bool)

(assert (=> b!76351 m!75983))

(declare-fun m!75985 () Bool)

(assert (=> b!76352 m!75985))

(assert (=> b!75997 d!18111))

(declare-fun d!18113 () Bool)

(declare-fun c!11653 () Bool)

(assert (=> d!18113 (= c!11653 ((_ is ValueCellFull!900) (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun e!49873 () V!2963)

(assert (=> d!18113 (= (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) from!355) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!49873)))

(declare-fun b!76357 () Bool)

(declare-fun get!1170 (ValueCell!900 V!2963) V!2963)

(assert (=> b!76357 (= e!49873 (get!1170 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) from!355) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!76358 () Bool)

(declare-fun get!1171 (ValueCell!900 V!2963) V!2963)

(assert (=> b!76358 (= e!49873 (get!1171 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) from!355) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!18113 c!11653) b!76357))

(assert (= (and d!18113 (not c!11653)) b!76358))

(assert (=> b!76357 m!75675))

(assert (=> b!76357 m!75677))

(declare-fun m!75987 () Bool)

(assert (=> b!76357 m!75987))

(assert (=> b!76358 m!75675))

(assert (=> b!76358 m!75677))

(declare-fun m!75989 () Bool)

(assert (=> b!76358 m!75989))

(assert (=> b!75996 d!18113))

(declare-fun d!18115 () Bool)

(assert (=> d!18115 (not (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!34704 () Unit!2198)

(declare-fun choose!68 (array!3922 (_ BitVec 32) (_ BitVec 64) List!1516) Unit!2198)

(assert (=> d!18115 (= lt!34704 (choose!68 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513)))))

(assert (=> d!18115 (bvslt (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!18115 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513)) lt!34704)))

(declare-fun bs!3254 () Bool)

(assert (= bs!3254 d!18115))

(assert (=> bs!3254 m!75655))

(assert (=> bs!3254 m!75659))

(assert (=> bs!3254 m!75655))

(declare-fun m!75991 () Bool)

(assert (=> bs!3254 m!75991))

(assert (=> b!75986 d!18115))

(declare-fun d!18117 () Bool)

(assert (=> d!18117 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) from!355 Nil!1513)))

(declare-fun lt!34707 () Unit!2198)

(declare-fun choose!39 (array!3922 (_ BitVec 32) (_ BitVec 32)) Unit!2198)

(assert (=> d!18117 (= lt!34707 (choose!39 (_keys!3905 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!18117 (bvslt (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!18117 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000 from!355) lt!34707)))

(declare-fun bs!3255 () Bool)

(assert (= bs!3255 d!18117))

(assert (=> bs!3255 m!75653))

(declare-fun m!75993 () Bool)

(assert (=> bs!3255 m!75993))

(assert (=> b!75986 d!18117))

(declare-fun d!18119 () Bool)

(declare-fun res!40183 () Bool)

(declare-fun e!49878 () Bool)

(assert (=> d!18119 (=> res!40183 e!49878)))

(assert (=> d!18119 (= res!40183 (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> d!18119 (= (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!49878)))

(declare-fun b!76363 () Bool)

(declare-fun e!49879 () Bool)

(assert (=> b!76363 (= e!49878 e!49879)))

(declare-fun res!40184 () Bool)

(assert (=> b!76363 (=> (not res!40184) (not e!49879))))

(assert (=> b!76363 (= res!40184 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76364 () Bool)

(assert (=> b!76364 (= e!49879 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!18119 (not res!40183)) b!76363))

(assert (= (and b!76363 res!40184) b!76364))

(assert (=> d!18119 m!75841))

(assert (=> b!76364 m!75655))

(declare-fun m!75995 () Bool)

(assert (=> b!76364 m!75995))

(assert (=> b!75986 d!18119))

(declare-fun d!18121 () Bool)

(declare-fun e!49882 () Bool)

(assert (=> d!18121 e!49882))

(declare-fun c!11656 () Bool)

(assert (=> d!18121 (= c!11656 (and (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!34710 () Unit!2198)

(declare-fun choose!447 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 64) (_ BitVec 32) Int) Unit!2198)

(assert (=> d!18121 (= lt!34710 (choose!447 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(assert (=> d!18121 (validMask!0 (mask!6230 (v!2562 (underlying!270 thiss!992))))))

(assert (=> d!18121 (= (lemmaListMapContainsThenArrayContainsFrom!55 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))) lt!34710)))

(declare-fun b!76369 () Bool)

(assert (=> b!76369 (= e!49882 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!76370 () Bool)

(assert (=> b!76370 (= e!49882 (ite (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!18121 c!11656) b!76369))

(assert (= (and d!18121 (not c!11656)) b!76370))

(assert (=> d!18121 m!75655))

(declare-fun m!75997 () Bool)

(assert (=> d!18121 m!75997))

(assert (=> d!18121 m!75687))

(assert (=> b!76369 m!75655))

(assert (=> b!76369 m!75659))

(assert (=> b!75986 d!18121))

(declare-fun bm!6904 () Bool)

(declare-fun c!11657 () Bool)

(declare-fun call!6907 () Bool)

(assert (=> bm!6904 (= call!6907 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!11657 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513) Nil!1513)))))

(declare-fun b!76372 () Bool)

(declare-fun e!49885 () Bool)

(declare-fun e!49884 () Bool)

(assert (=> b!76372 (= e!49885 e!49884)))

(assert (=> b!76372 (= c!11657 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76373 () Bool)

(assert (=> b!76373 (= e!49884 call!6907)))

(declare-fun b!76371 () Bool)

(declare-fun e!49886 () Bool)

(assert (=> b!76371 (= e!49886 e!49885)))

(declare-fun res!40187 () Bool)

(assert (=> b!76371 (=> (not res!40187) (not e!49885))))

(declare-fun e!49883 () Bool)

(assert (=> b!76371 (= res!40187 (not e!49883))))

(declare-fun res!40186 () Bool)

(assert (=> b!76371 (=> (not res!40186) (not e!49883))))

(assert (=> b!76371 (= res!40186 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun d!18123 () Bool)

(declare-fun res!40185 () Bool)

(assert (=> d!18123 (=> res!40185 e!49886)))

(assert (=> d!18123 (= res!40185 (bvsge from!355 (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> d!18123 (= (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) from!355 Nil!1513) e!49886)))

(declare-fun b!76374 () Bool)

(assert (=> b!76374 (= e!49883 (contains!737 Nil!1513 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76375 () Bool)

(assert (=> b!76375 (= e!49884 call!6907)))

(assert (= (and d!18123 (not res!40185)) b!76371))

(assert (= (and b!76371 res!40186) b!76374))

(assert (= (and b!76371 res!40187) b!76372))

(assert (= (and b!76372 c!11657) b!76375))

(assert (= (and b!76372 (not c!11657)) b!76373))

(assert (= (or b!76375 b!76373) bm!6904))

(assert (=> bm!6904 m!75655))

(declare-fun m!75999 () Bool)

(assert (=> bm!6904 m!75999))

(assert (=> b!76372 m!75655))

(assert (=> b!76372 m!75655))

(declare-fun m!76001 () Bool)

(assert (=> b!76372 m!76001))

(assert (=> b!76371 m!75655))

(assert (=> b!76371 m!75655))

(assert (=> b!76371 m!76001))

(assert (=> b!76374 m!75655))

(assert (=> b!76374 m!75655))

(declare-fun m!76003 () Bool)

(assert (=> b!76374 m!76003))

(assert (=> b!75986 d!18123))

(declare-fun d!18125 () Bool)

(assert (=> d!18125 (= (array_inv!1111 (_keys!3905 newMap!16)) (bvsge (size!2110 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!76000 d!18125))

(declare-fun d!18127 () Bool)

(assert (=> d!18127 (= (array_inv!1112 (_values!2230 newMap!16)) (bvsge (size!2111 (_values!2230 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!76000 d!18127))

(declare-fun mapIsEmpty!3231 () Bool)

(declare-fun mapRes!3231 () Bool)

(assert (=> mapIsEmpty!3231 mapRes!3231))

(declare-fun b!76382 () Bool)

(declare-fun e!49892 () Bool)

(assert (=> b!76382 (= e!49892 tp_is_empty!2487)))

(declare-fun mapNonEmpty!3231 () Bool)

(declare-fun tp!8631 () Bool)

(assert (=> mapNonEmpty!3231 (= mapRes!3231 (and tp!8631 e!49892))))

(declare-fun mapRest!3231 () (Array (_ BitVec 32) ValueCell!900))

(declare-fun mapValue!3231 () ValueCell!900)

(declare-fun mapKey!3231 () (_ BitVec 32))

(assert (=> mapNonEmpty!3231 (= mapRest!3221 (store mapRest!3231 mapKey!3231 mapValue!3231))))

(declare-fun condMapEmpty!3231 () Bool)

(declare-fun mapDefault!3231 () ValueCell!900)

(assert (=> mapNonEmpty!3222 (= condMapEmpty!3231 (= mapRest!3221 ((as const (Array (_ BitVec 32) ValueCell!900)) mapDefault!3231)))))

(declare-fun e!49891 () Bool)

(assert (=> mapNonEmpty!3222 (= tp!8613 (and e!49891 mapRes!3231))))

(declare-fun b!76383 () Bool)

(assert (=> b!76383 (= e!49891 tp_is_empty!2487)))

(assert (= (and mapNonEmpty!3222 condMapEmpty!3231) mapIsEmpty!3231))

(assert (= (and mapNonEmpty!3222 (not condMapEmpty!3231)) mapNonEmpty!3231))

(assert (= (and mapNonEmpty!3231 ((_ is ValueCellFull!900) mapValue!3231)) b!76382))

(assert (= (and mapNonEmpty!3222 ((_ is ValueCellFull!900) mapDefault!3231)) b!76383))

(declare-fun m!76005 () Bool)

(assert (=> mapNonEmpty!3231 m!76005))

(declare-fun mapIsEmpty!3232 () Bool)

(declare-fun mapRes!3232 () Bool)

(assert (=> mapIsEmpty!3232 mapRes!3232))

(declare-fun b!76384 () Bool)

(declare-fun e!49894 () Bool)

(assert (=> b!76384 (= e!49894 tp_is_empty!2487)))

(declare-fun mapNonEmpty!3232 () Bool)

(declare-fun tp!8632 () Bool)

(assert (=> mapNonEmpty!3232 (= mapRes!3232 (and tp!8632 e!49894))))

(declare-fun mapKey!3232 () (_ BitVec 32))

(declare-fun mapRest!3232 () (Array (_ BitVec 32) ValueCell!900))

(declare-fun mapValue!3232 () ValueCell!900)

(assert (=> mapNonEmpty!3232 (= mapRest!3222 (store mapRest!3232 mapKey!3232 mapValue!3232))))

(declare-fun condMapEmpty!3232 () Bool)

(declare-fun mapDefault!3232 () ValueCell!900)

(assert (=> mapNonEmpty!3221 (= condMapEmpty!3232 (= mapRest!3222 ((as const (Array (_ BitVec 32) ValueCell!900)) mapDefault!3232)))))

(declare-fun e!49893 () Bool)

(assert (=> mapNonEmpty!3221 (= tp!8615 (and e!49893 mapRes!3232))))

(declare-fun b!76385 () Bool)

(assert (=> b!76385 (= e!49893 tp_is_empty!2487)))

(assert (= (and mapNonEmpty!3221 condMapEmpty!3232) mapIsEmpty!3232))

(assert (= (and mapNonEmpty!3221 (not condMapEmpty!3232)) mapNonEmpty!3232))

(assert (= (and mapNonEmpty!3232 ((_ is ValueCellFull!900) mapValue!3232)) b!76384))

(assert (= (and mapNonEmpty!3221 ((_ is ValueCellFull!900) mapDefault!3232)) b!76385))

(declare-fun m!76007 () Bool)

(assert (=> mapNonEmpty!3232 m!76007))

(declare-fun b_lambda!3435 () Bool)

(assert (= b_lambda!3431 (or (and b!75994 b_free!2141) (and b!76000 b_free!2143 (= (defaultEntry!2247 newMap!16) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))))) b_lambda!3435)))

(declare-fun b_lambda!3437 () Bool)

(assert (= b_lambda!3433 (or (and b!75994 b_free!2141) (and b!76000 b_free!2143 (= (defaultEntry!2247 newMap!16) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))))) b_lambda!3437)))

(declare-fun b_lambda!3439 () Bool)

(assert (= b_lambda!3429 (or (and b!75994 b_free!2141) (and b!76000 b_free!2143 (= (defaultEntry!2247 newMap!16) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))))) b_lambda!3439)))

(check-sat (not b!76327) (not b!76351) (not b!76369) (not bm!6903) (not b!76339) (not b!76276) (not bm!6894) (not bm!6858) (not b!76212) (not d!18103) (not b!76217) (not b!76082) (not d!18089) (not mapNonEmpty!3231) (not d!18097) (not b!76277) (not b!76350) (not b!76275) (not b!76203) (not bm!6870) (not d!18083) (not bm!6854) (not b!76331) (not b_lambda!3437) tp_is_empty!2487 (not d!18105) (not bm!6857) (not b!76358) (not d!18081) (not bm!6900) (not b!76357) (not bm!6893) (not bm!6892) (not b!76352) (not b!76340) (not bm!6873) b_and!4671 (not b!76336) (not b!76323) (not b!76341) (not bm!6904) (not b!76215) b_and!4669 (not bm!6853) (not b!76280) (not b!76371) (not bm!6871) (not b!76295) (not b!76263) (not bm!6875) (not bm!6804) (not b!76194) (not bm!6868) (not b!76372) (not b!76320) (not b!76324) (not d!18107) (not bm!6860) (not b!76192) (not b!76094) (not bm!6864) (not d!18087) (not d!18117) (not d!18121) (not b!76342) (not b!76092) (not b!76292) (not b!76326) (not d!18099) (not b!76205) (not d!18111) (not b!76081) (not b_lambda!3427) (not b!76343) (not b!76328) (not b!76364) (not b_lambda!3435) (not d!18085) (not d!18101) (not b!76084) (not b!76338) (not bm!6896) (not b!76337) (not b!76329) (not b_next!2143) (not b!76219) (not b!76264) (not b_lambda!3439) (not b!76270) (not b_next!2141) (not bm!6861) (not b!76266) (not d!18115) (not mapNonEmpty!3232) (not b!76374))
(check-sat b_and!4669 b_and!4671 (not b_next!2141) (not b_next!2143))
(get-model)

(declare-fun d!18129 () Bool)

(assert (=> d!18129 (= (+!102 (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) lt!34565 (zeroValue!2146 newMap!16) lt!34446 #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34713 () Unit!2198)

(declare-fun choose!448 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 V!2963 Int) Unit!2198)

(assert (=> d!18129 (= lt!34713 (choose!448 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) lt!34565 (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) lt!34446 (defaultEntry!2247 newMap!16)))))

(assert (=> d!18129 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18129 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) lt!34565 (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) lt!34446 (defaultEntry!2247 newMap!16)) lt!34713)))

(declare-fun bs!3256 () Bool)

(assert (= bs!3256 d!18129))

(assert (=> bs!3256 m!75833))

(declare-fun m!76009 () Bool)

(assert (=> bs!3256 m!76009))

(assert (=> bs!3256 m!75833))

(declare-fun m!76011 () Bool)

(assert (=> bs!3256 m!76011))

(declare-fun m!76013 () Bool)

(assert (=> bs!3256 m!76013))

(declare-fun m!76015 () Bool)

(assert (=> bs!3256 m!76015))

(assert (=> b!76217 d!18129))

(declare-fun d!18131 () Bool)

(assert (=> d!18131 (= (get!1171 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) from!355) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76358 d!18131))

(declare-fun d!18133 () Bool)

(declare-fun e!49896 () Bool)

(assert (=> d!18133 e!49896))

(declare-fun res!40188 () Bool)

(assert (=> d!18133 (=> res!40188 e!49896)))

(declare-fun lt!34717 () Bool)

(assert (=> d!18133 (= res!40188 (not lt!34717))))

(declare-fun lt!34715 () Bool)

(assert (=> d!18133 (= lt!34717 lt!34715)))

(declare-fun lt!34716 () Unit!2198)

(declare-fun e!49895 () Unit!2198)

(assert (=> d!18133 (= lt!34716 e!49895)))

(declare-fun c!11658 () Bool)

(assert (=> d!18133 (= c!11658 lt!34715)))

(assert (=> d!18133 (= lt!34715 (containsKey!138 (toList!739 lt!34672) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!18133 (= (contains!735 lt!34672 #b1000000000000000000000000000000000000000000000000000000000000000) lt!34717)))

(declare-fun b!76386 () Bool)

(declare-fun lt!34714 () Unit!2198)

(assert (=> b!76386 (= e!49895 lt!34714)))

(assert (=> b!76386 (= lt!34714 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34672) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76386 (isDefined!88 (getValueByKey!134 (toList!739 lt!34672) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76387 () Bool)

(declare-fun Unit!2210 () Unit!2198)

(assert (=> b!76387 (= e!49895 Unit!2210)))

(declare-fun b!76388 () Bool)

(assert (=> b!76388 (= e!49896 (isDefined!88 (getValueByKey!134 (toList!739 lt!34672) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!18133 c!11658) b!76386))

(assert (= (and d!18133 (not c!11658)) b!76387))

(assert (= (and d!18133 (not res!40188)) b!76388))

(declare-fun m!76017 () Bool)

(assert (=> d!18133 m!76017))

(declare-fun m!76019 () Bool)

(assert (=> b!76386 m!76019))

(declare-fun m!76021 () Bool)

(assert (=> b!76386 m!76021))

(assert (=> b!76386 m!76021))

(declare-fun m!76023 () Bool)

(assert (=> b!76386 m!76023))

(assert (=> b!76388 m!76021))

(assert (=> b!76388 m!76021))

(assert (=> b!76388 m!76023))

(assert (=> b!76323 d!18133))

(declare-fun d!18135 () Bool)

(declare-fun isEmpty!328 (Option!140) Bool)

(assert (=> d!18135 (= (isDefined!88 (getValueByKey!134 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))) (not (isEmpty!328 (getValueByKey!134 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))))

(declare-fun bs!3257 () Bool)

(assert (= bs!3257 d!18135))

(assert (=> bs!3257 m!75779))

(declare-fun m!76025 () Bool)

(assert (=> bs!3257 m!76025))

(assert (=> b!76094 d!18135))

(declare-fun c!11663 () Bool)

(declare-fun d!18137 () Bool)

(assert (=> d!18137 (= c!11663 (and ((_ is Cons!1511) (toList!739 lt!34444)) (= (_1!1089 (h!2099 (toList!739 lt!34444))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))))))

(declare-fun e!49901 () Option!140)

(assert (=> d!18137 (= (getValueByKey!134 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) e!49901)))

(declare-fun e!49902 () Option!140)

(declare-fun b!76399 () Bool)

(assert (=> b!76399 (= e!49902 (getValueByKey!134 (t!5113 (toList!739 lt!34444)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76397 () Bool)

(assert (=> b!76397 (= e!49901 (Some!139 (_2!1089 (h!2099 (toList!739 lt!34444)))))))

(declare-fun b!76398 () Bool)

(assert (=> b!76398 (= e!49901 e!49902)))

(declare-fun c!11664 () Bool)

(assert (=> b!76398 (= c!11664 (and ((_ is Cons!1511) (toList!739 lt!34444)) (not (= (_1!1089 (h!2099 (toList!739 lt!34444))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))))

(declare-fun b!76400 () Bool)

(assert (=> b!76400 (= e!49902 None!138)))

(assert (= (and d!18137 c!11663) b!76397))

(assert (= (and d!18137 (not c!11663)) b!76398))

(assert (= (and b!76398 c!11664) b!76399))

(assert (= (and b!76398 (not c!11664)) b!76400))

(assert (=> b!76399 m!75655))

(declare-fun m!76027 () Bool)

(assert (=> b!76399 m!76027))

(assert (=> b!76094 d!18137))

(declare-fun d!18139 () Bool)

(assert (=> d!18139 (isDefined!88 (getValueByKey!134 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun lt!34720 () Unit!2198)

(declare-fun choose!449 (List!1515 (_ BitVec 64)) Unit!2198)

(assert (=> d!18139 (= lt!34720 (choose!449 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun e!49905 () Bool)

(assert (=> d!18139 e!49905))

(declare-fun res!40191 () Bool)

(assert (=> d!18139 (=> (not res!40191) (not e!49905))))

(declare-fun isStrictlySorted!289 (List!1515) Bool)

(assert (=> d!18139 (= res!40191 (isStrictlySorted!289 (toList!739 lt!34444)))))

(assert (=> d!18139 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) lt!34720)))

(declare-fun b!76403 () Bool)

(assert (=> b!76403 (= e!49905 (containsKey!138 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (= (and d!18139 res!40191) b!76403))

(assert (=> d!18139 m!75655))

(assert (=> d!18139 m!75779))

(assert (=> d!18139 m!75779))

(assert (=> d!18139 m!75781))

(assert (=> d!18139 m!75655))

(declare-fun m!76029 () Bool)

(assert (=> d!18139 m!76029))

(declare-fun m!76031 () Bool)

(assert (=> d!18139 m!76031))

(assert (=> b!76403 m!75655))

(assert (=> b!76403 m!75775))

(assert (=> b!76092 d!18139))

(assert (=> b!76092 d!18135))

(assert (=> b!76092 d!18137))

(assert (=> bm!6864 d!18087))

(declare-fun e!49911 () Bool)

(declare-fun b!76404 () Bool)

(declare-fun lt!34728 () ListLongMap!1447)

(assert (=> b!76404 (= e!49911 (= (apply!77 lt!34728 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)) (get!1168 (select (arr!1871 (ite c!11613 (_values!2230 newMap!16) lt!34568)) #b00000000000000000000000000000000) (dynLambda!338 (defaultEntry!2247 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!76404 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2111 (ite c!11613 (_values!2230 newMap!16) lt!34568))))))

(assert (=> b!76404 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76405 () Bool)

(declare-fun e!49909 () Bool)

(assert (=> b!76405 (= e!49909 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!76406 () Bool)

(declare-fun e!49916 () Bool)

(declare-fun e!49910 () Bool)

(assert (=> b!76406 (= e!49916 e!49910)))

(declare-fun c!11665 () Bool)

(assert (=> b!76406 (= c!11665 (not (= (bvand (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!76407 () Bool)

(declare-fun e!49917 () Unit!2198)

(declare-fun lt!34742 () Unit!2198)

(assert (=> b!76407 (= e!49917 lt!34742)))

(declare-fun lt!34740 () ListLongMap!1447)

(assert (=> b!76407 (= lt!34740 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite c!11613 (_values!2230 newMap!16) lt!34568) (mask!6230 newMap!16) (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34724 () (_ BitVec 64))

(assert (=> b!76407 (= lt!34724 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34726 () (_ BitVec 64))

(assert (=> b!76407 (= lt!34726 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34729 () Unit!2198)

(assert (=> b!76407 (= lt!34729 (addStillContains!53 lt!34740 lt!34724 (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) lt!34726))))

(assert (=> b!76407 (contains!735 (+!102 lt!34740 (tuple2!2159 lt!34724 (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)))) lt!34726)))

(declare-fun lt!34722 () Unit!2198)

(assert (=> b!76407 (= lt!34722 lt!34729)))

(declare-fun lt!34736 () ListLongMap!1447)

(assert (=> b!76407 (= lt!34736 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite c!11613 (_values!2230 newMap!16) lt!34568) (mask!6230 newMap!16) (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34737 () (_ BitVec 64))

(assert (=> b!76407 (= lt!34737 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34730 () (_ BitVec 64))

(assert (=> b!76407 (= lt!34730 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34721 () Unit!2198)

(assert (=> b!76407 (= lt!34721 (addApplyDifferent!53 lt!34736 lt!34737 (minValue!2146 newMap!16) lt!34730))))

(assert (=> b!76407 (= (apply!77 (+!102 lt!34736 (tuple2!2159 lt!34737 (minValue!2146 newMap!16))) lt!34730) (apply!77 lt!34736 lt!34730))))

(declare-fun lt!34735 () Unit!2198)

(assert (=> b!76407 (= lt!34735 lt!34721)))

(declare-fun lt!34732 () ListLongMap!1447)

(assert (=> b!76407 (= lt!34732 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite c!11613 (_values!2230 newMap!16) lt!34568) (mask!6230 newMap!16) (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34739 () (_ BitVec 64))

(assert (=> b!76407 (= lt!34739 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34734 () (_ BitVec 64))

(assert (=> b!76407 (= lt!34734 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34738 () Unit!2198)

(assert (=> b!76407 (= lt!34738 (addApplyDifferent!53 lt!34732 lt!34739 (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) lt!34734))))

(assert (=> b!76407 (= (apply!77 (+!102 lt!34732 (tuple2!2159 lt!34739 (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)))) lt!34734) (apply!77 lt!34732 lt!34734))))

(declare-fun lt!34733 () Unit!2198)

(assert (=> b!76407 (= lt!34733 lt!34738)))

(declare-fun lt!34725 () ListLongMap!1447)

(assert (=> b!76407 (= lt!34725 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite c!11613 (_values!2230 newMap!16) lt!34568) (mask!6230 newMap!16) (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34727 () (_ BitVec 64))

(assert (=> b!76407 (= lt!34727 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34731 () (_ BitVec 64))

(assert (=> b!76407 (= lt!34731 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!76407 (= lt!34742 (addApplyDifferent!53 lt!34725 lt!34727 (minValue!2146 newMap!16) lt!34731))))

(assert (=> b!76407 (= (apply!77 (+!102 lt!34725 (tuple2!2159 lt!34727 (minValue!2146 newMap!16))) lt!34731) (apply!77 lt!34725 lt!34731))))

(declare-fun bm!6905 () Bool)

(declare-fun call!6913 () ListLongMap!1447)

(declare-fun call!6910 () ListLongMap!1447)

(assert (=> bm!6905 (= call!6913 call!6910)))

(declare-fun b!76409 () Bool)

(declare-fun Unit!2211 () Unit!2198)

(assert (=> b!76409 (= e!49917 Unit!2211)))

(declare-fun call!6914 () ListLongMap!1447)

(declare-fun c!11670 () Bool)

(declare-fun c!11667 () Bool)

(declare-fun bm!6906 () Bool)

(declare-fun call!6908 () ListLongMap!1447)

(assert (=> bm!6906 (= call!6908 (+!102 (ite c!11670 call!6910 (ite c!11667 call!6913 call!6914)) (ite (or c!11670 c!11667) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 newMap!16)))))))

(declare-fun bm!6907 () Bool)

(declare-fun call!6911 () Bool)

(assert (=> bm!6907 (= call!6911 (contains!735 lt!34728 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76410 () Bool)

(declare-fun e!49915 () ListLongMap!1447)

(assert (=> b!76410 (= e!49915 call!6914)))

(declare-fun b!76411 () Bool)

(declare-fun e!49914 () Bool)

(assert (=> b!76411 (= e!49914 (= (apply!77 lt!34728 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16))))))

(declare-fun b!76412 () Bool)

(declare-fun e!49908 () ListLongMap!1447)

(declare-fun call!6912 () ListLongMap!1447)

(assert (=> b!76412 (= e!49908 call!6912)))

(declare-fun d!18141 () Bool)

(assert (=> d!18141 e!49916))

(declare-fun res!40195 () Bool)

(assert (=> d!18141 (=> (not res!40195) (not e!49916))))

(assert (=> d!18141 (= res!40195 (or (bvsge #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))))

(declare-fun lt!34723 () ListLongMap!1447)

(assert (=> d!18141 (= lt!34728 lt!34723)))

(declare-fun lt!34741 () Unit!2198)

(assert (=> d!18141 (= lt!34741 e!49917)))

(declare-fun c!11666 () Bool)

(declare-fun e!49912 () Bool)

(assert (=> d!18141 (= c!11666 e!49912)))

(declare-fun res!40197 () Bool)

(assert (=> d!18141 (=> (not res!40197) (not e!49912))))

(assert (=> d!18141 (= res!40197 (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun e!49913 () ListLongMap!1447)

(assert (=> d!18141 (= lt!34723 e!49913)))

(assert (=> d!18141 (= c!11670 (and (not (= (bvand (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!18141 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18141 (= (getCurrentListMap!430 (_keys!3905 newMap!16) (ite c!11613 (_values!2230 newMap!16) lt!34568) (mask!6230 newMap!16) (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) lt!34728)))

(declare-fun b!76408 () Bool)

(assert (=> b!76408 (= e!49915 call!6912)))

(declare-fun bm!6908 () Bool)

(declare-fun call!6909 () Bool)

(assert (=> bm!6908 (= call!6909 (contains!735 lt!34728 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!11669 () Bool)

(declare-fun b!76413 () Bool)

(assert (=> b!76413 (= c!11669 (and (not (= (bvand (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!76413 (= e!49908 e!49915)))

(declare-fun b!76414 () Bool)

(assert (=> b!76414 (= e!49910 (not call!6909))))

(declare-fun b!76415 () Bool)

(declare-fun res!40199 () Bool)

(assert (=> b!76415 (=> (not res!40199) (not e!49916))))

(declare-fun e!49907 () Bool)

(assert (=> b!76415 (= res!40199 e!49907)))

(declare-fun c!11668 () Bool)

(assert (=> b!76415 (= c!11668 (not (= (bvand (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!76416 () Bool)

(declare-fun e!49906 () Bool)

(assert (=> b!76416 (= e!49906 (= (apply!77 lt!34728 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2146 newMap!16)))))

(declare-fun b!76417 () Bool)

(declare-fun e!49918 () Bool)

(assert (=> b!76417 (= e!49918 e!49911)))

(declare-fun res!40194 () Bool)

(assert (=> b!76417 (=> (not res!40194) (not e!49911))))

(assert (=> b!76417 (= res!40194 (contains!735 lt!34728 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!76417 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76418 () Bool)

(assert (=> b!76418 (= e!49913 (+!102 call!6908 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 newMap!16))))))

(declare-fun bm!6909 () Bool)

(assert (=> bm!6909 (= call!6912 call!6908)))

(declare-fun b!76419 () Bool)

(declare-fun res!40198 () Bool)

(assert (=> b!76419 (=> (not res!40198) (not e!49916))))

(assert (=> b!76419 (= res!40198 e!49918)))

(declare-fun res!40193 () Bool)

(assert (=> b!76419 (=> res!40193 e!49918)))

(assert (=> b!76419 (= res!40193 (not e!49909))))

(declare-fun res!40192 () Bool)

(assert (=> b!76419 (=> (not res!40192) (not e!49909))))

(assert (=> b!76419 (= res!40192 (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76420 () Bool)

(assert (=> b!76420 (= e!49907 (not call!6911))))

(declare-fun bm!6910 () Bool)

(assert (=> bm!6910 (= call!6910 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite c!11613 (_values!2230 newMap!16) lt!34568) (mask!6230 newMap!16) (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) (ite (and c!11613 c!11614) lt!34446 (zeroValue!2146 newMap!16)) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun b!76421 () Bool)

(assert (=> b!76421 (= e!49912 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!76422 () Bool)

(assert (=> b!76422 (= e!49907 e!49914)))

(declare-fun res!40200 () Bool)

(assert (=> b!76422 (= res!40200 call!6911)))

(assert (=> b!76422 (=> (not res!40200) (not e!49914))))

(declare-fun bm!6911 () Bool)

(assert (=> bm!6911 (= call!6914 call!6913)))

(declare-fun b!76423 () Bool)

(assert (=> b!76423 (= e!49913 e!49908)))

(assert (=> b!76423 (= c!11667 (and (not (= (bvand (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!11613 c!11614) lt!34557 (extraKeys!2100 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!76424 () Bool)

(assert (=> b!76424 (= e!49910 e!49906)))

(declare-fun res!40196 () Bool)

(assert (=> b!76424 (= res!40196 call!6909)))

(assert (=> b!76424 (=> (not res!40196) (not e!49906))))

(assert (= (and d!18141 c!11670) b!76418))

(assert (= (and d!18141 (not c!11670)) b!76423))

(assert (= (and b!76423 c!11667) b!76412))

(assert (= (and b!76423 (not c!11667)) b!76413))

(assert (= (and b!76413 c!11669) b!76408))

(assert (= (and b!76413 (not c!11669)) b!76410))

(assert (= (or b!76408 b!76410) bm!6911))

(assert (= (or b!76412 bm!6911) bm!6905))

(assert (= (or b!76412 b!76408) bm!6909))

(assert (= (or b!76418 bm!6905) bm!6910))

(assert (= (or b!76418 bm!6909) bm!6906))

(assert (= (and d!18141 res!40197) b!76421))

(assert (= (and d!18141 c!11666) b!76407))

(assert (= (and d!18141 (not c!11666)) b!76409))

(assert (= (and d!18141 res!40195) b!76419))

(assert (= (and b!76419 res!40192) b!76405))

(assert (= (and b!76419 (not res!40193)) b!76417))

(assert (= (and b!76417 res!40194) b!76404))

(assert (= (and b!76419 res!40198) b!76415))

(assert (= (and b!76415 c!11668) b!76422))

(assert (= (and b!76415 (not c!11668)) b!76420))

(assert (= (and b!76422 res!40200) b!76411))

(assert (= (or b!76422 b!76420) bm!6907))

(assert (= (and b!76415 res!40199) b!76406))

(assert (= (and b!76406 c!11665) b!76424))

(assert (= (and b!76406 (not c!11665)) b!76414))

(assert (= (and b!76424 res!40196) b!76416))

(assert (= (or b!76424 b!76414) bm!6908))

(declare-fun b_lambda!3441 () Bool)

(assert (=> (not b_lambda!3441) (not b!76404)))

(declare-fun tb!1577 () Bool)

(declare-fun t!5122 () Bool)

(assert (=> (and b!75994 (= (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) (defaultEntry!2247 newMap!16)) t!5122) tb!1577))

(declare-fun result!2749 () Bool)

(assert (=> tb!1577 (= result!2749 tp_is_empty!2487)))

(assert (=> b!76404 t!5122))

(declare-fun b_and!4673 () Bool)

(assert (= b_and!4669 (and (=> t!5122 result!2749) b_and!4673)))

(declare-fun t!5124 () Bool)

(declare-fun tb!1579 () Bool)

(assert (=> (and b!76000 (= (defaultEntry!2247 newMap!16) (defaultEntry!2247 newMap!16)) t!5124) tb!1579))

(declare-fun result!2751 () Bool)

(assert (= result!2751 result!2749))

(assert (=> b!76404 t!5124))

(declare-fun b_and!4675 () Bool)

(assert (= b_and!4671 (and (=> t!5124 result!2751) b_and!4675)))

(declare-fun m!76033 () Bool)

(assert (=> bm!6907 m!76033))

(declare-fun m!76035 () Bool)

(assert (=> b!76405 m!76035))

(assert (=> b!76405 m!76035))

(declare-fun m!76037 () Bool)

(assert (=> b!76405 m!76037))

(assert (=> d!18141 m!76011))

(declare-fun m!76039 () Bool)

(assert (=> bm!6906 m!76039))

(declare-fun m!76041 () Bool)

(assert (=> b!76418 m!76041))

(assert (=> b!76417 m!76035))

(assert (=> b!76417 m!76035))

(declare-fun m!76043 () Bool)

(assert (=> b!76417 m!76043))

(declare-fun m!76045 () Bool)

(assert (=> b!76407 m!76045))

(declare-fun m!76047 () Bool)

(assert (=> b!76407 m!76047))

(declare-fun m!76049 () Bool)

(assert (=> b!76407 m!76049))

(declare-fun m!76051 () Bool)

(assert (=> b!76407 m!76051))

(declare-fun m!76053 () Bool)

(assert (=> b!76407 m!76053))

(declare-fun m!76055 () Bool)

(assert (=> b!76407 m!76055))

(assert (=> b!76407 m!76035))

(declare-fun m!76057 () Bool)

(assert (=> b!76407 m!76057))

(declare-fun m!76059 () Bool)

(assert (=> b!76407 m!76059))

(assert (=> b!76407 m!76059))

(declare-fun m!76061 () Bool)

(assert (=> b!76407 m!76061))

(declare-fun m!76063 () Bool)

(assert (=> b!76407 m!76063))

(assert (=> b!76407 m!76055))

(declare-fun m!76065 () Bool)

(assert (=> b!76407 m!76065))

(assert (=> b!76407 m!76047))

(declare-fun m!76067 () Bool)

(assert (=> b!76407 m!76067))

(declare-fun m!76069 () Bool)

(assert (=> b!76407 m!76069))

(assert (=> b!76407 m!76057))

(declare-fun m!76071 () Bool)

(assert (=> b!76407 m!76071))

(declare-fun m!76073 () Bool)

(assert (=> b!76407 m!76073))

(declare-fun m!76075 () Bool)

(assert (=> b!76407 m!76075))

(declare-fun m!76077 () Bool)

(assert (=> bm!6908 m!76077))

(assert (=> b!76421 m!76035))

(assert (=> b!76421 m!76035))

(assert (=> b!76421 m!76037))

(declare-fun m!76079 () Bool)

(assert (=> b!76404 m!76079))

(assert (=> b!76404 m!76079))

(declare-fun m!76081 () Bool)

(assert (=> b!76404 m!76081))

(declare-fun m!76083 () Bool)

(assert (=> b!76404 m!76083))

(assert (=> b!76404 m!76035))

(declare-fun m!76085 () Bool)

(assert (=> b!76404 m!76085))

(assert (=> b!76404 m!76081))

(assert (=> b!76404 m!76035))

(declare-fun m!76087 () Bool)

(assert (=> b!76411 m!76087))

(declare-fun m!76089 () Bool)

(assert (=> b!76416 m!76089))

(assert (=> bm!6910 m!76045))

(assert (=> bm!6875 d!18141))

(declare-fun d!18143 () Bool)

(declare-fun lt!34745 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!80 (List!1515) (InoxSet tuple2!2158))

(assert (=> d!18143 (= lt!34745 (select (content!80 (toList!739 lt!34699)) lt!34443))))

(declare-fun e!49924 () Bool)

(assert (=> d!18143 (= lt!34745 e!49924)))

(declare-fun res!40205 () Bool)

(assert (=> d!18143 (=> (not res!40205) (not e!49924))))

(assert (=> d!18143 (= res!40205 ((_ is Cons!1511) (toList!739 lt!34699)))))

(assert (=> d!18143 (= (contains!738 (toList!739 lt!34699) lt!34443) lt!34745)))

(declare-fun b!76429 () Bool)

(declare-fun e!49923 () Bool)

(assert (=> b!76429 (= e!49924 e!49923)))

(declare-fun res!40206 () Bool)

(assert (=> b!76429 (=> res!40206 e!49923)))

(assert (=> b!76429 (= res!40206 (= (h!2099 (toList!739 lt!34699)) lt!34443))))

(declare-fun b!76430 () Bool)

(assert (=> b!76430 (= e!49923 (contains!738 (t!5113 (toList!739 lt!34699)) lt!34443))))

(assert (= (and d!18143 res!40205) b!76429))

(assert (= (and b!76429 (not res!40206)) b!76430))

(declare-fun m!76091 () Bool)

(assert (=> d!18143 m!76091))

(declare-fun m!76093 () Bool)

(assert (=> d!18143 m!76093))

(declare-fun m!76095 () Bool)

(assert (=> b!76430 m!76095))

(assert (=> b!76343 d!18143))

(declare-fun bm!6912 () Bool)

(declare-fun call!6915 () Bool)

(declare-fun c!11671 () Bool)

(assert (=> bm!6912 (= call!6915 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!11671 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!11657 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513) Nil!1513)) (ite c!11657 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513) Nil!1513))))))

(declare-fun b!76432 () Bool)

(declare-fun e!49927 () Bool)

(declare-fun e!49926 () Bool)

(assert (=> b!76432 (= e!49927 e!49926)))

(assert (=> b!76432 (= c!11671 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!76433 () Bool)

(assert (=> b!76433 (= e!49926 call!6915)))

(declare-fun b!76431 () Bool)

(declare-fun e!49928 () Bool)

(assert (=> b!76431 (= e!49928 e!49927)))

(declare-fun res!40209 () Bool)

(assert (=> b!76431 (=> (not res!40209) (not e!49927))))

(declare-fun e!49925 () Bool)

(assert (=> b!76431 (= res!40209 (not e!49925))))

(declare-fun res!40208 () Bool)

(assert (=> b!76431 (=> (not res!40208) (not e!49925))))

(assert (=> b!76431 (= res!40208 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun d!18145 () Bool)

(declare-fun res!40207 () Bool)

(assert (=> d!18145 (=> res!40207 e!49928)))

(assert (=> d!18145 (= res!40207 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> d!18145 (= (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!11657 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513) Nil!1513)) e!49928)))

(declare-fun b!76434 () Bool)

(assert (=> b!76434 (= e!49925 (contains!737 (ite c!11657 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513) Nil!1513) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!76435 () Bool)

(assert (=> b!76435 (= e!49926 call!6915)))

(assert (= (and d!18145 (not res!40207)) b!76431))

(assert (= (and b!76431 res!40208) b!76434))

(assert (= (and b!76431 res!40209) b!76432))

(assert (= (and b!76432 c!11671) b!76435))

(assert (= (and b!76432 (not c!11671)) b!76433))

(assert (= (or b!76435 b!76433) bm!6912))

(declare-fun m!76097 () Bool)

(assert (=> bm!6912 m!76097))

(declare-fun m!76099 () Bool)

(assert (=> bm!6912 m!76099))

(assert (=> b!76432 m!76097))

(assert (=> b!76432 m!76097))

(declare-fun m!76101 () Bool)

(assert (=> b!76432 m!76101))

(assert (=> b!76431 m!76097))

(assert (=> b!76431 m!76097))

(assert (=> b!76431 m!76101))

(assert (=> b!76434 m!76097))

(assert (=> b!76434 m!76097))

(declare-fun m!76103 () Bool)

(assert (=> b!76434 m!76103))

(assert (=> bm!6904 d!18145))

(declare-fun b!76436 () Bool)

(declare-fun e!49931 () Bool)

(declare-fun e!49930 () Bool)

(assert (=> b!76436 (= e!49931 e!49930)))

(declare-fun lt!34748 () (_ BitVec 64))

(assert (=> b!76436 (= lt!34748 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34746 () Unit!2198)

(assert (=> b!76436 (= lt!34746 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3905 newMap!16) lt!34748 #b00000000000000000000000000000000))))

(assert (=> b!76436 (arrayContainsKey!0 (_keys!3905 newMap!16) lt!34748 #b00000000000000000000000000000000)))

(declare-fun lt!34747 () Unit!2198)

(assert (=> b!76436 (= lt!34747 lt!34746)))

(declare-fun res!40211 () Bool)

(assert (=> b!76436 (= res!40211 (= (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000) (_keys!3905 newMap!16) (mask!6230 newMap!16)) (Found!248 #b00000000000000000000000000000000)))))

(assert (=> b!76436 (=> (not res!40211) (not e!49930))))

(declare-fun b!76437 () Bool)

(declare-fun call!6916 () Bool)

(assert (=> b!76437 (= e!49930 call!6916)))

(declare-fun b!76438 () Bool)

(assert (=> b!76438 (= e!49931 call!6916)))

(declare-fun d!18147 () Bool)

(declare-fun res!40210 () Bool)

(declare-fun e!49929 () Bool)

(assert (=> d!18147 (=> res!40210 e!49929)))

(assert (=> d!18147 (= res!40210 (bvsge #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(assert (=> d!18147 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3905 newMap!16) (mask!6230 newMap!16)) e!49929)))

(declare-fun b!76439 () Bool)

(assert (=> b!76439 (= e!49929 e!49931)))

(declare-fun c!11672 () Bool)

(assert (=> b!76439 (= c!11672 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!6913 () Bool)

(assert (=> bm!6913 (= call!6916 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(assert (= (and d!18147 (not res!40210)) b!76439))

(assert (= (and b!76439 c!11672) b!76436))

(assert (= (and b!76439 (not c!11672)) b!76438))

(assert (= (and b!76436 res!40211) b!76437))

(assert (= (or b!76437 b!76438) bm!6913))

(assert (=> b!76436 m!76035))

(declare-fun m!76105 () Bool)

(assert (=> b!76436 m!76105))

(declare-fun m!76107 () Bool)

(assert (=> b!76436 m!76107))

(assert (=> b!76436 m!76035))

(declare-fun m!76109 () Bool)

(assert (=> b!76436 m!76109))

(assert (=> b!76439 m!76035))

(assert (=> b!76439 m!76035))

(assert (=> b!76439 m!76037))

(declare-fun m!76111 () Bool)

(assert (=> bm!6913 m!76111))

(assert (=> b!76351 d!18147))

(declare-fun b!76449 () Bool)

(declare-fun res!40222 () Bool)

(declare-fun e!49934 () Bool)

(assert (=> b!76449 (=> (not res!40222) (not e!49934))))

(declare-fun size!2114 (LongMapFixedSize!708) (_ BitVec 32))

(assert (=> b!76449 (= res!40222 (bvsge (size!2114 newMap!16) (_size!403 newMap!16)))))

(declare-fun b!76448 () Bool)

(declare-fun res!40223 () Bool)

(assert (=> b!76448 (=> (not res!40223) (not e!49934))))

(assert (=> b!76448 (= res!40223 (and (= (size!2111 (_values!2230 newMap!16)) (bvadd (mask!6230 newMap!16) #b00000000000000000000000000000001)) (= (size!2110 (_keys!3905 newMap!16)) (size!2111 (_values!2230 newMap!16))) (bvsge (_size!403 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!403 newMap!16) (bvadd (mask!6230 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!76451 () Bool)

(assert (=> b!76451 (= e!49934 (and (bvsge (extraKeys!2100 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2100 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!403 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!76450 () Bool)

(declare-fun res!40221 () Bool)

(assert (=> b!76450 (=> (not res!40221) (not e!49934))))

(assert (=> b!76450 (= res!40221 (= (size!2114 newMap!16) (bvadd (_size!403 newMap!16) (bvsdiv (bvadd (extraKeys!2100 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!18149 () Bool)

(declare-fun res!40220 () Bool)

(assert (=> d!18149 (=> (not res!40220) (not e!49934))))

(assert (=> d!18149 (= res!40220 (validMask!0 (mask!6230 newMap!16)))))

(assert (=> d!18149 (= (simpleValid!52 newMap!16) e!49934)))

(assert (= (and d!18149 res!40220) b!76448))

(assert (= (and b!76448 res!40223) b!76449))

(assert (= (and b!76449 res!40222) b!76450))

(assert (= (and b!76450 res!40221) b!76451))

(declare-fun m!76113 () Bool)

(assert (=> b!76449 m!76113))

(assert (=> b!76450 m!76113))

(assert (=> d!18149 m!76011))

(assert (=> d!18111 d!18149))

(declare-fun b!76464 () Bool)

(declare-fun e!49942 () SeekEntryResult!248)

(declare-fun lt!34756 () SeekEntryResult!248)

(assert (=> b!76464 (= e!49942 (Found!248 (index!3127 lt!34756)))))

(declare-fun b!76465 () Bool)

(declare-fun e!49941 () SeekEntryResult!248)

(assert (=> b!76465 (= e!49941 (MissingZero!248 (index!3127 lt!34756)))))

(declare-fun b!76466 () Bool)

(declare-fun c!11681 () Bool)

(declare-fun lt!34757 () (_ BitVec 64))

(assert (=> b!76466 (= c!11681 (= lt!34757 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76466 (= e!49942 e!49941)))

(declare-fun b!76467 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3922 (_ BitVec 32)) SeekEntryResult!248)

(assert (=> b!76467 (= e!49941 (seekKeyOrZeroReturnVacant!0 (x!11397 lt!34756) (index!3127 lt!34756) (index!3127 lt!34756) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(declare-fun b!76468 () Bool)

(declare-fun e!49943 () SeekEntryResult!248)

(assert (=> b!76468 (= e!49943 Undefined!248)))

(declare-fun d!18151 () Bool)

(declare-fun lt!34755 () SeekEntryResult!248)

(assert (=> d!18151 (and (or ((_ is Undefined!248) lt!34755) (not ((_ is Found!248) lt!34755)) (and (bvsge (index!3126 lt!34755) #b00000000000000000000000000000000) (bvslt (index!3126 lt!34755) (size!2110 (_keys!3905 newMap!16))))) (or ((_ is Undefined!248) lt!34755) ((_ is Found!248) lt!34755) (not ((_ is MissingZero!248) lt!34755)) (and (bvsge (index!3125 lt!34755) #b00000000000000000000000000000000) (bvslt (index!3125 lt!34755) (size!2110 (_keys!3905 newMap!16))))) (or ((_ is Undefined!248) lt!34755) ((_ is Found!248) lt!34755) ((_ is MissingZero!248) lt!34755) (not ((_ is MissingVacant!248) lt!34755)) (and (bvsge (index!3128 lt!34755) #b00000000000000000000000000000000) (bvslt (index!3128 lt!34755) (size!2110 (_keys!3905 newMap!16))))) (or ((_ is Undefined!248) lt!34755) (ite ((_ is Found!248) lt!34755) (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34755)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (ite ((_ is MissingZero!248) lt!34755) (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3125 lt!34755)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!248) lt!34755) (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3128 lt!34755)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18151 (= lt!34755 e!49943)))

(declare-fun c!11679 () Bool)

(assert (=> d!18151 (= c!11679 (and ((_ is Intermediate!248) lt!34756) (undefined!1060 lt!34756)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3922 (_ BitVec 32)) SeekEntryResult!248)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!18151 (= lt!34756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (mask!6230 newMap!16)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(assert (=> d!18151 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18151 (= (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (mask!6230 newMap!16)) lt!34755)))

(declare-fun b!76469 () Bool)

(assert (=> b!76469 (= e!49943 e!49942)))

(assert (=> b!76469 (= lt!34757 (select (arr!1870 (_keys!3905 newMap!16)) (index!3127 lt!34756)))))

(declare-fun c!11680 () Bool)

(assert (=> b!76469 (= c!11680 (= lt!34757 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (= (and d!18151 c!11679) b!76468))

(assert (= (and d!18151 (not c!11679)) b!76469))

(assert (= (and b!76469 c!11680) b!76464))

(assert (= (and b!76469 (not c!11680)) b!76466))

(assert (= (and b!76466 c!11681) b!76465))

(assert (= (and b!76466 (not c!11681)) b!76467))

(assert (=> b!76467 m!75655))

(declare-fun m!76115 () Bool)

(assert (=> b!76467 m!76115))

(declare-fun m!76117 () Bool)

(assert (=> d!18151 m!76117))

(assert (=> d!18151 m!76011))

(declare-fun m!76119 () Bool)

(assert (=> d!18151 m!76119))

(assert (=> d!18151 m!75655))

(declare-fun m!76121 () Bool)

(assert (=> d!18151 m!76121))

(assert (=> d!18151 m!75655))

(assert (=> d!18151 m!76119))

(declare-fun m!76123 () Bool)

(assert (=> d!18151 m!76123))

(declare-fun m!76125 () Bool)

(assert (=> d!18151 m!76125))

(declare-fun m!76127 () Bool)

(assert (=> b!76469 m!76127))

(assert (=> b!76212 d!18151))

(declare-fun d!18153 () Bool)

(declare-fun lt!34758 () Bool)

(assert (=> d!18153 (= lt!34758 (select (content!80 (toList!739 lt!34692)) lt!34448))))

(declare-fun e!49945 () Bool)

(assert (=> d!18153 (= lt!34758 e!49945)))

(declare-fun res!40224 () Bool)

(assert (=> d!18153 (=> (not res!40224) (not e!49945))))

(assert (=> d!18153 (= res!40224 ((_ is Cons!1511) (toList!739 lt!34692)))))

(assert (=> d!18153 (= (contains!738 (toList!739 lt!34692) lt!34448) lt!34758)))

(declare-fun b!76470 () Bool)

(declare-fun e!49944 () Bool)

(assert (=> b!76470 (= e!49945 e!49944)))

(declare-fun res!40225 () Bool)

(assert (=> b!76470 (=> res!40225 e!49944)))

(assert (=> b!76470 (= res!40225 (= (h!2099 (toList!739 lt!34692)) lt!34448))))

(declare-fun b!76471 () Bool)

(assert (=> b!76471 (= e!49944 (contains!738 (t!5113 (toList!739 lt!34692)) lt!34448))))

(assert (= (and d!18153 res!40224) b!76470))

(assert (= (and b!76470 (not res!40225)) b!76471))

(declare-fun m!76129 () Bool)

(assert (=> d!18153 m!76129))

(declare-fun m!76131 () Bool)

(assert (=> d!18153 m!76131))

(declare-fun m!76133 () Bool)

(assert (=> b!76471 m!76133))

(assert (=> b!76341 d!18153))

(declare-fun d!18155 () Bool)

(declare-fun e!49946 () Bool)

(assert (=> d!18155 e!49946))

(declare-fun res!40227 () Bool)

(assert (=> d!18155 (=> (not res!40227) (not e!49946))))

(declare-fun lt!34760 () ListLongMap!1447)

(assert (=> d!18155 (= res!40227 (contains!735 lt!34760 (_1!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun lt!34759 () List!1515)

(assert (=> d!18155 (= lt!34760 (ListLongMap!1448 lt!34759))))

(declare-fun lt!34761 () Unit!2198)

(declare-fun lt!34762 () Unit!2198)

(assert (=> d!18155 (= lt!34761 lt!34762)))

(assert (=> d!18155 (= (getValueByKey!134 lt!34759 (_1!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))) (Some!139 (_2!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(assert (=> d!18155 (= lt!34762 (lemmaContainsTupThenGetReturnValue!53 lt!34759 (_1!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) (_2!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(assert (=> d!18155 (= lt!34759 (insertStrictlySorted!55 (toList!739 (ite c!11635 call!6896 (ite c!11632 call!6899 call!6900))) (_1!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) (_2!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(assert (=> d!18155 (= (+!102 (ite c!11635 call!6896 (ite c!11632 call!6899 call!6900)) (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) lt!34760)))

(declare-fun b!76472 () Bool)

(declare-fun res!40226 () Bool)

(assert (=> b!76472 (=> (not res!40226) (not e!49946))))

(assert (=> b!76472 (= res!40226 (= (getValueByKey!134 (toList!739 lt!34760) (_1!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))) (Some!139 (_2!1089 (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))))

(declare-fun b!76473 () Bool)

(assert (=> b!76473 (= e!49946 (contains!738 (toList!739 lt!34760) (ite (or c!11635 c!11632) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (= (and d!18155 res!40227) b!76472))

(assert (= (and b!76472 res!40226) b!76473))

(declare-fun m!76135 () Bool)

(assert (=> d!18155 m!76135))

(declare-fun m!76137 () Bool)

(assert (=> d!18155 m!76137))

(declare-fun m!76139 () Bool)

(assert (=> d!18155 m!76139))

(declare-fun m!76141 () Bool)

(assert (=> d!18155 m!76141))

(declare-fun m!76143 () Bool)

(assert (=> b!76472 m!76143))

(declare-fun m!76145 () Bool)

(assert (=> b!76473 m!76145))

(assert (=> bm!6892 d!18155))

(declare-fun d!18157 () Bool)

(declare-fun c!11682 () Bool)

(assert (=> d!18157 (= c!11682 (and ((_ is Cons!1511) (toList!739 lt!34688)) (= (_1!1089 (h!2099 (toList!739 lt!34688))) (_1!1089 lt!34448))))))

(declare-fun e!49947 () Option!140)

(assert (=> d!18157 (= (getValueByKey!134 (toList!739 lt!34688) (_1!1089 lt!34448)) e!49947)))

(declare-fun b!76476 () Bool)

(declare-fun e!49948 () Option!140)

(assert (=> b!76476 (= e!49948 (getValueByKey!134 (t!5113 (toList!739 lt!34688)) (_1!1089 lt!34448)))))

(declare-fun b!76474 () Bool)

(assert (=> b!76474 (= e!49947 (Some!139 (_2!1089 (h!2099 (toList!739 lt!34688)))))))

(declare-fun b!76475 () Bool)

(assert (=> b!76475 (= e!49947 e!49948)))

(declare-fun c!11683 () Bool)

(assert (=> b!76475 (= c!11683 (and ((_ is Cons!1511) (toList!739 lt!34688)) (not (= (_1!1089 (h!2099 (toList!739 lt!34688))) (_1!1089 lt!34448)))))))

(declare-fun b!76477 () Bool)

(assert (=> b!76477 (= e!49948 None!138)))

(assert (= (and d!18157 c!11682) b!76474))

(assert (= (and d!18157 (not c!11682)) b!76475))

(assert (= (and b!76475 c!11683) b!76476))

(assert (= (and b!76475 (not c!11683)) b!76477))

(declare-fun m!76147 () Bool)

(assert (=> b!76476 m!76147))

(assert (=> b!76338 d!18157))

(declare-fun d!18159 () Bool)

(declare-fun res!40228 () Bool)

(declare-fun e!49949 () Bool)

(assert (=> d!18159 (=> (not res!40228) (not e!49949))))

(assert (=> d!18159 (= res!40228 (simpleValid!52 (_2!1090 lt!34560)))))

(assert (=> d!18159 (= (valid!299 (_2!1090 lt!34560)) e!49949)))

(declare-fun b!76478 () Bool)

(declare-fun res!40229 () Bool)

(assert (=> b!76478 (=> (not res!40229) (not e!49949))))

(assert (=> b!76478 (= res!40229 (= (arrayCountValidKeys!0 (_keys!3905 (_2!1090 lt!34560)) #b00000000000000000000000000000000 (size!2110 (_keys!3905 (_2!1090 lt!34560)))) (_size!403 (_2!1090 lt!34560))))))

(declare-fun b!76479 () Bool)

(declare-fun res!40230 () Bool)

(assert (=> b!76479 (=> (not res!40230) (not e!49949))))

(assert (=> b!76479 (= res!40230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3905 (_2!1090 lt!34560)) (mask!6230 (_2!1090 lt!34560))))))

(declare-fun b!76480 () Bool)

(assert (=> b!76480 (= e!49949 (arrayNoDuplicates!0 (_keys!3905 (_2!1090 lt!34560)) #b00000000000000000000000000000000 Nil!1513))))

(assert (= (and d!18159 res!40228) b!76478))

(assert (= (and b!76478 res!40229) b!76479))

(assert (= (and b!76479 res!40230) b!76480))

(declare-fun m!76149 () Bool)

(assert (=> d!18159 m!76149))

(declare-fun m!76151 () Bool)

(assert (=> b!76478 m!76151))

(declare-fun m!76153 () Bool)

(assert (=> b!76479 m!76153))

(declare-fun m!76155 () Bool)

(assert (=> b!76480 m!76155))

(assert (=> d!18085 d!18159))

(assert (=> d!18085 d!18111))

(declare-fun d!18161 () Bool)

(declare-fun c!11684 () Bool)

(assert (=> d!18161 (= c!11684 (and ((_ is Cons!1511) (toList!739 lt!34692)) (= (_1!1089 (h!2099 (toList!739 lt!34692))) (_1!1089 lt!34448))))))

(declare-fun e!49950 () Option!140)

(assert (=> d!18161 (= (getValueByKey!134 (toList!739 lt!34692) (_1!1089 lt!34448)) e!49950)))

(declare-fun b!76483 () Bool)

(declare-fun e!49951 () Option!140)

(assert (=> b!76483 (= e!49951 (getValueByKey!134 (t!5113 (toList!739 lt!34692)) (_1!1089 lt!34448)))))

(declare-fun b!76481 () Bool)

(assert (=> b!76481 (= e!49950 (Some!139 (_2!1089 (h!2099 (toList!739 lt!34692)))))))

(declare-fun b!76482 () Bool)

(assert (=> b!76482 (= e!49950 e!49951)))

(declare-fun c!11685 () Bool)

(assert (=> b!76482 (= c!11685 (and ((_ is Cons!1511) (toList!739 lt!34692)) (not (= (_1!1089 (h!2099 (toList!739 lt!34692))) (_1!1089 lt!34448)))))))

(declare-fun b!76484 () Bool)

(assert (=> b!76484 (= e!49951 None!138)))

(assert (= (and d!18161 c!11684) b!76481))

(assert (= (and d!18161 (not c!11684)) b!76482))

(assert (= (and b!76482 c!11685) b!76483))

(assert (= (and b!76482 (not c!11685)) b!76484))

(declare-fun m!76157 () Bool)

(assert (=> b!76483 m!76157))

(assert (=> b!76340 d!18161))

(declare-fun d!18163 () Bool)

(declare-fun c!11686 () Bool)

(assert (=> d!18163 (= c!11686 (and ((_ is Cons!1511) (toList!739 lt!34684)) (= (_1!1089 (h!2099 (toList!739 lt!34684))) (_1!1089 lt!34443))))))

(declare-fun e!49952 () Option!140)

(assert (=> d!18163 (= (getValueByKey!134 (toList!739 lt!34684) (_1!1089 lt!34443)) e!49952)))

(declare-fun b!76487 () Bool)

(declare-fun e!49953 () Option!140)

(assert (=> b!76487 (= e!49953 (getValueByKey!134 (t!5113 (toList!739 lt!34684)) (_1!1089 lt!34443)))))

(declare-fun b!76485 () Bool)

(assert (=> b!76485 (= e!49952 (Some!139 (_2!1089 (h!2099 (toList!739 lt!34684)))))))

(declare-fun b!76486 () Bool)

(assert (=> b!76486 (= e!49952 e!49953)))

(declare-fun c!11687 () Bool)

(assert (=> b!76486 (= c!11687 (and ((_ is Cons!1511) (toList!739 lt!34684)) (not (= (_1!1089 (h!2099 (toList!739 lt!34684))) (_1!1089 lt!34443)))))))

(declare-fun b!76488 () Bool)

(assert (=> b!76488 (= e!49953 None!138)))

(assert (= (and d!18163 c!11686) b!76485))

(assert (= (and d!18163 (not c!11686)) b!76486))

(assert (= (and b!76486 c!11687) b!76487))

(assert (= (and b!76486 (not c!11687)) b!76488))

(declare-fun m!76159 () Bool)

(assert (=> b!76487 m!76159))

(assert (=> b!76336 d!18163))

(declare-fun d!18165 () Bool)

(declare-fun get!1172 (Option!140) V!2963)

(assert (=> d!18165 (= (apply!77 lt!34630 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1172 (getValueByKey!134 (toList!739 lt!34630) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3258 () Bool)

(assert (= bs!3258 d!18165))

(assert (=> bs!3258 m!75841))

(declare-fun m!76161 () Bool)

(assert (=> bs!3258 m!76161))

(assert (=> bs!3258 m!76161))

(declare-fun m!76163 () Bool)

(assert (=> bs!3258 m!76163))

(assert (=> b!76263 d!18165))

(declare-fun d!18167 () Bool)

(declare-fun c!11688 () Bool)

(assert (=> d!18167 (= c!11688 ((_ is ValueCellFull!900) (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!49954 () V!2963)

(assert (=> d!18167 (= (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!49954)))

(declare-fun b!76489 () Bool)

(assert (=> b!76489 (= e!49954 (get!1170 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!76490 () Bool)

(assert (=> b!76490 (= e!49954 (get!1171 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!18167 c!11688) b!76489))

(assert (= (and d!18167 (not c!11688)) b!76490))

(assert (=> b!76489 m!75883))

(assert (=> b!76489 m!75677))

(declare-fun m!76165 () Bool)

(assert (=> b!76489 m!76165))

(assert (=> b!76490 m!75883))

(assert (=> b!76490 m!75677))

(declare-fun m!76167 () Bool)

(assert (=> b!76490 m!76167))

(assert (=> b!76263 d!18167))

(declare-fun b!76491 () Bool)

(declare-fun e!49957 () Bool)

(declare-fun e!49956 () Bool)

(assert (=> b!76491 (= e!49957 e!49956)))

(declare-fun lt!34765 () (_ BitVec 64))

(assert (=> b!76491 (= lt!34765 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!34763 () Unit!2198)

(assert (=> b!76491 (= lt!34763 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34765 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!76491 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34765 #b00000000000000000000000000000000)))

(declare-fun lt!34764 () Unit!2198)

(assert (=> b!76491 (= lt!34764 lt!34763)))

(declare-fun res!40232 () Bool)

(assert (=> b!76491 (= res!40232 (= (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))) (Found!248 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!76491 (=> (not res!40232) (not e!49956))))

(declare-fun b!76492 () Bool)

(declare-fun call!6917 () Bool)

(assert (=> b!76492 (= e!49956 call!6917)))

(declare-fun b!76493 () Bool)

(assert (=> b!76493 (= e!49957 call!6917)))

(declare-fun d!18169 () Bool)

(declare-fun res!40231 () Bool)

(declare-fun e!49955 () Bool)

(assert (=> d!18169 (=> res!40231 e!49955)))

(assert (=> d!18169 (= res!40231 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> d!18169 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))) e!49955)))

(declare-fun b!76494 () Bool)

(assert (=> b!76494 (= e!49955 e!49957)))

(declare-fun c!11689 () Bool)

(assert (=> b!76494 (= c!11689 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!6914 () Bool)

(assert (=> bm!6914 (= call!6917 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))))))

(assert (= (and d!18169 (not res!40231)) b!76494))

(assert (= (and b!76494 c!11689) b!76491))

(assert (= (and b!76494 (not c!11689)) b!76493))

(assert (= (and b!76491 res!40232) b!76492))

(assert (= (or b!76492 b!76493) bm!6914))

(declare-fun m!76169 () Bool)

(assert (=> b!76491 m!76169))

(declare-fun m!76171 () Bool)

(assert (=> b!76491 m!76171))

(declare-fun m!76173 () Bool)

(assert (=> b!76491 m!76173))

(assert (=> b!76491 m!76169))

(declare-fun m!76175 () Bool)

(assert (=> b!76491 m!76175))

(assert (=> b!76494 m!76169))

(assert (=> b!76494 m!76169))

(declare-fun m!76177 () Bool)

(assert (=> b!76494 m!76177))

(declare-fun m!76179 () Bool)

(assert (=> bm!6914 m!76179))

(assert (=> bm!6900 d!18169))

(declare-fun d!18171 () Bool)

(assert (=> d!18171 (= (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!76280 d!18171))

(declare-fun d!18173 () Bool)

(assert (=> d!18173 (= (map!1166 (_2!1090 lt!34560)) (getCurrentListMap!430 (_keys!3905 (_2!1090 lt!34560)) (_values!2230 (_2!1090 lt!34560)) (mask!6230 (_2!1090 lt!34560)) (extraKeys!2100 (_2!1090 lt!34560)) (zeroValue!2146 (_2!1090 lt!34560)) (minValue!2146 (_2!1090 lt!34560)) #b00000000000000000000000000000000 (defaultEntry!2247 (_2!1090 lt!34560))))))

(declare-fun bs!3259 () Bool)

(assert (= bs!3259 d!18173))

(declare-fun m!76181 () Bool)

(assert (=> bs!3259 m!76181))

(assert (=> bm!6870 d!18173))

(assert (=> d!18115 d!18119))

(declare-fun d!18175 () Bool)

(assert (=> d!18175 (not (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!18175 true))

(declare-fun _$68!61 () Unit!2198)

(assert (=> d!18175 (= (choose!68 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) Nil!1513)) _$68!61)))

(declare-fun bs!3260 () Bool)

(assert (= bs!3260 d!18175))

(assert (=> bs!3260 m!75655))

(assert (=> bs!3260 m!75659))

(assert (=> d!18115 d!18175))

(declare-fun d!18177 () Bool)

(declare-fun e!49958 () Bool)

(assert (=> d!18177 e!49958))

(declare-fun res!40234 () Bool)

(assert (=> d!18177 (=> (not res!40234) (not e!49958))))

(declare-fun lt!34767 () ListLongMap!1447)

(assert (=> d!18177 (= res!40234 (contains!735 lt!34767 (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun lt!34766 () List!1515)

(assert (=> d!18177 (= lt!34767 (ListLongMap!1448 lt!34766))))

(declare-fun lt!34768 () Unit!2198)

(declare-fun lt!34769 () Unit!2198)

(assert (=> d!18177 (= lt!34768 lt!34769)))

(assert (=> d!18177 (= (getValueByKey!134 lt!34766 (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18177 (= lt!34769 (lemmaContainsTupThenGetReturnValue!53 lt!34766 (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18177 (= lt!34766 (insertStrictlySorted!55 (toList!739 lt!34442) (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18177 (= (+!102 lt!34442 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34767)))

(declare-fun b!76495 () Bool)

(declare-fun res!40233 () Bool)

(assert (=> b!76495 (=> (not res!40233) (not e!49958))))

(assert (=> b!76495 (= res!40233 (= (getValueByKey!134 (toList!739 lt!34767) (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun b!76496 () Bool)

(assert (=> b!76496 (= e!49958 (contains!738 (toList!739 lt!34767) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18177 res!40234) b!76495))

(assert (= (and b!76495 res!40233) b!76496))

(declare-fun m!76183 () Bool)

(assert (=> d!18177 m!76183))

(declare-fun m!76185 () Bool)

(assert (=> d!18177 m!76185))

(declare-fun m!76187 () Bool)

(assert (=> d!18177 m!76187))

(declare-fun m!76189 () Bool)

(assert (=> d!18177 m!76189))

(declare-fun m!76191 () Bool)

(assert (=> b!76495 m!76191))

(declare-fun m!76193 () Bool)

(assert (=> b!76496 m!76193))

(assert (=> d!18105 d!18177))

(declare-fun d!18179 () Bool)

(declare-fun e!49959 () Bool)

(assert (=> d!18179 e!49959))

(declare-fun res!40236 () Bool)

(assert (=> d!18179 (=> (not res!40236) (not e!49959))))

(declare-fun lt!34771 () ListLongMap!1447)

(assert (=> d!18179 (= res!40236 (contains!735 lt!34771 (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun lt!34770 () List!1515)

(assert (=> d!18179 (= lt!34771 (ListLongMap!1448 lt!34770))))

(declare-fun lt!34772 () Unit!2198)

(declare-fun lt!34773 () Unit!2198)

(assert (=> d!18179 (= lt!34772 lt!34773)))

(assert (=> d!18179 (= (getValueByKey!134 lt!34770 (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18179 (= lt!34773 (lemmaContainsTupThenGetReturnValue!53 lt!34770 (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18179 (= lt!34770 (insertStrictlySorted!55 (toList!739 (+!102 lt!34442 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18179 (= (+!102 (+!102 lt!34442 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34771)))

(declare-fun b!76497 () Bool)

(declare-fun res!40235 () Bool)

(assert (=> b!76497 (=> (not res!40235) (not e!49959))))

(assert (=> b!76497 (= res!40235 (= (getValueByKey!134 (toList!739 lt!34771) (_1!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun b!76498 () Bool)

(assert (=> b!76498 (= e!49959 (contains!738 (toList!739 lt!34771) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18179 res!40236) b!76497))

(assert (= (and b!76497 res!40235) b!76498))

(declare-fun m!76195 () Bool)

(assert (=> d!18179 m!76195))

(declare-fun m!76197 () Bool)

(assert (=> d!18179 m!76197))

(declare-fun m!76199 () Bool)

(assert (=> d!18179 m!76199))

(declare-fun m!76201 () Bool)

(assert (=> d!18179 m!76201))

(declare-fun m!76203 () Bool)

(assert (=> b!76497 m!76203))

(declare-fun m!76205 () Bool)

(assert (=> b!76498 m!76205))

(assert (=> d!18105 d!18179))

(declare-fun d!18181 () Bool)

(declare-fun e!49960 () Bool)

(assert (=> d!18181 e!49960))

(declare-fun res!40238 () Bool)

(assert (=> d!18181 (=> (not res!40238) (not e!49960))))

(declare-fun lt!34775 () ListLongMap!1447)

(assert (=> d!18181 (= res!40238 (contains!735 lt!34775 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(declare-fun lt!34774 () List!1515)

(assert (=> d!18181 (= lt!34775 (ListLongMap!1448 lt!34774))))

(declare-fun lt!34776 () Unit!2198)

(declare-fun lt!34777 () Unit!2198)

(assert (=> d!18181 (= lt!34776 lt!34777)))

(assert (=> d!18181 (= (getValueByKey!134 lt!34774 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (Some!139 (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18181 (= lt!34777 (lemmaContainsTupThenGetReturnValue!53 lt!34774 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18181 (= lt!34774 (insertStrictlySorted!55 (toList!739 (+!102 lt!34442 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18181 (= (+!102 (+!102 lt!34442 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) lt!34775)))

(declare-fun b!76499 () Bool)

(declare-fun res!40237 () Bool)

(assert (=> b!76499 (=> (not res!40237) (not e!49960))))

(assert (=> b!76499 (= res!40237 (= (getValueByKey!134 (toList!739 lt!34775) (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (Some!139 (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))))

(declare-fun b!76500 () Bool)

(assert (=> b!76500 (= e!49960 (contains!738 (toList!739 lt!34775) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))

(assert (= (and d!18181 res!40238) b!76499))

(assert (= (and b!76499 res!40237) b!76500))

(declare-fun m!76207 () Bool)

(assert (=> d!18181 m!76207))

(declare-fun m!76209 () Bool)

(assert (=> d!18181 m!76209))

(declare-fun m!76211 () Bool)

(assert (=> d!18181 m!76211))

(declare-fun m!76213 () Bool)

(assert (=> d!18181 m!76213))

(declare-fun m!76215 () Bool)

(assert (=> b!76499 m!76215))

(declare-fun m!76217 () Bool)

(assert (=> b!76500 m!76217))

(assert (=> d!18105 d!18181))

(declare-fun d!18183 () Bool)

(declare-fun e!49961 () Bool)

(assert (=> d!18183 e!49961))

(declare-fun res!40240 () Bool)

(assert (=> d!18183 (=> (not res!40240) (not e!49961))))

(declare-fun lt!34779 () ListLongMap!1447)

(assert (=> d!18183 (= res!40240 (contains!735 lt!34779 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(declare-fun lt!34778 () List!1515)

(assert (=> d!18183 (= lt!34779 (ListLongMap!1448 lt!34778))))

(declare-fun lt!34780 () Unit!2198)

(declare-fun lt!34781 () Unit!2198)

(assert (=> d!18183 (= lt!34780 lt!34781)))

(assert (=> d!18183 (= (getValueByKey!134 lt!34778 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (Some!139 (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18183 (= lt!34781 (lemmaContainsTupThenGetReturnValue!53 lt!34778 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18183 (= lt!34778 (insertStrictlySorted!55 (toList!739 lt!34442) (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18183 (= (+!102 lt!34442 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) lt!34779)))

(declare-fun b!76501 () Bool)

(declare-fun res!40239 () Bool)

(assert (=> b!76501 (=> (not res!40239) (not e!49961))))

(assert (=> b!76501 (= res!40239 (= (getValueByKey!134 (toList!739 lt!34779) (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (Some!139 (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))))

(declare-fun b!76502 () Bool)

(assert (=> b!76502 (= e!49961 (contains!738 (toList!739 lt!34779) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))

(assert (= (and d!18183 res!40240) b!76501))

(assert (= (and b!76501 res!40239) b!76502))

(declare-fun m!76219 () Bool)

(assert (=> d!18183 m!76219))

(declare-fun m!76221 () Bool)

(assert (=> d!18183 m!76221))

(declare-fun m!76223 () Bool)

(assert (=> d!18183 m!76223))

(declare-fun m!76225 () Bool)

(assert (=> d!18183 m!76225))

(declare-fun m!76227 () Bool)

(assert (=> b!76501 m!76227))

(declare-fun m!76229 () Bool)

(assert (=> b!76502 m!76229))

(assert (=> d!18105 d!18183))

(declare-fun d!18185 () Bool)

(assert (=> d!18185 (= (+!102 (+!102 lt!34442 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (+!102 (+!102 lt!34442 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))

(assert (=> d!18185 true))

(declare-fun _$28!127 () Unit!2198)

(assert (=> d!18185 (= (choose!446 lt!34442 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))) _$28!127)))

(declare-fun bs!3261 () Bool)

(assert (= bs!3261 d!18185))

(assert (=> bs!3261 m!75957))

(assert (=> bs!3261 m!75957))

(assert (=> bs!3261 m!75963))

(assert (=> bs!3261 m!75961))

(assert (=> bs!3261 m!75961))

(assert (=> bs!3261 m!75965))

(assert (=> d!18105 d!18185))

(declare-fun d!18187 () Bool)

(declare-fun e!49963 () Bool)

(assert (=> d!18187 e!49963))

(declare-fun res!40241 () Bool)

(assert (=> d!18187 (=> res!40241 e!49963)))

(declare-fun lt!34785 () Bool)

(assert (=> d!18187 (= res!40241 (not lt!34785))))

(declare-fun lt!34783 () Bool)

(assert (=> d!18187 (= lt!34785 lt!34783)))

(declare-fun lt!34784 () Unit!2198)

(declare-fun e!49962 () Unit!2198)

(assert (=> d!18187 (= lt!34784 e!49962)))

(declare-fun c!11690 () Bool)

(assert (=> d!18187 (= c!11690 lt!34783)))

(assert (=> d!18187 (= lt!34783 (containsKey!138 (toList!739 lt!34672) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!18187 (= (contains!735 lt!34672 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!34785)))

(declare-fun b!76503 () Bool)

(declare-fun lt!34782 () Unit!2198)

(assert (=> b!76503 (= e!49962 lt!34782)))

(assert (=> b!76503 (= lt!34782 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34672) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!76503 (isDefined!88 (getValueByKey!134 (toList!739 lt!34672) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!76504 () Bool)

(declare-fun Unit!2212 () Unit!2198)

(assert (=> b!76504 (= e!49962 Unit!2212)))

(declare-fun b!76505 () Bool)

(assert (=> b!76505 (= e!49963 (isDefined!88 (getValueByKey!134 (toList!739 lt!34672) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!18187 c!11690) b!76503))

(assert (= (and d!18187 (not c!11690)) b!76504))

(assert (= (and d!18187 (not res!40241)) b!76505))

(assert (=> d!18187 m!75841))

(declare-fun m!76231 () Bool)

(assert (=> d!18187 m!76231))

(assert (=> b!76503 m!75841))

(declare-fun m!76233 () Bool)

(assert (=> b!76503 m!76233))

(assert (=> b!76503 m!75841))

(declare-fun m!76235 () Bool)

(assert (=> b!76503 m!76235))

(assert (=> b!76503 m!76235))

(declare-fun m!76237 () Bool)

(assert (=> b!76503 m!76237))

(assert (=> b!76505 m!75841))

(assert (=> b!76505 m!76235))

(assert (=> b!76505 m!76235))

(assert (=> b!76505 m!76237))

(assert (=> b!76329 d!18187))

(declare-fun d!18189 () Bool)

(declare-fun e!49965 () Bool)

(assert (=> d!18189 e!49965))

(declare-fun res!40242 () Bool)

(assert (=> d!18189 (=> res!40242 e!49965)))

(declare-fun lt!34789 () Bool)

(assert (=> d!18189 (= res!40242 (not lt!34789))))

(declare-fun lt!34787 () Bool)

(assert (=> d!18189 (= lt!34789 lt!34787)))

(declare-fun lt!34788 () Unit!2198)

(declare-fun e!49964 () Unit!2198)

(assert (=> d!18189 (= lt!34788 e!49964)))

(declare-fun c!11691 () Bool)

(assert (=> d!18189 (= c!11691 lt!34787)))

(assert (=> d!18189 (= lt!34787 (containsKey!138 (toList!739 lt!34699) (_1!1089 lt!34443)))))

(assert (=> d!18189 (= (contains!735 lt!34699 (_1!1089 lt!34443)) lt!34789)))

(declare-fun b!76506 () Bool)

(declare-fun lt!34786 () Unit!2198)

(assert (=> b!76506 (= e!49964 lt!34786)))

(assert (=> b!76506 (= lt!34786 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34699) (_1!1089 lt!34443)))))

(assert (=> b!76506 (isDefined!88 (getValueByKey!134 (toList!739 lt!34699) (_1!1089 lt!34443)))))

(declare-fun b!76507 () Bool)

(declare-fun Unit!2213 () Unit!2198)

(assert (=> b!76507 (= e!49964 Unit!2213)))

(declare-fun b!76508 () Bool)

(assert (=> b!76508 (= e!49965 (isDefined!88 (getValueByKey!134 (toList!739 lt!34699) (_1!1089 lt!34443))))))

(assert (= (and d!18189 c!11691) b!76506))

(assert (= (and d!18189 (not c!11691)) b!76507))

(assert (= (and d!18189 (not res!40242)) b!76508))

(declare-fun m!76239 () Bool)

(assert (=> d!18189 m!76239))

(declare-fun m!76241 () Bool)

(assert (=> b!76506 m!76241))

(assert (=> b!76506 m!75975))

(assert (=> b!76506 m!75975))

(declare-fun m!76243 () Bool)

(assert (=> b!76506 m!76243))

(assert (=> b!76508 m!75975))

(assert (=> b!76508 m!75975))

(assert (=> b!76508 m!76243))

(assert (=> d!18107 d!18189))

(declare-fun d!18191 () Bool)

(declare-fun c!11692 () Bool)

(assert (=> d!18191 (= c!11692 (and ((_ is Cons!1511) lt!34698) (= (_1!1089 (h!2099 lt!34698)) (_1!1089 lt!34443))))))

(declare-fun e!49966 () Option!140)

(assert (=> d!18191 (= (getValueByKey!134 lt!34698 (_1!1089 lt!34443)) e!49966)))

(declare-fun b!76511 () Bool)

(declare-fun e!49967 () Option!140)

(assert (=> b!76511 (= e!49967 (getValueByKey!134 (t!5113 lt!34698) (_1!1089 lt!34443)))))

(declare-fun b!76509 () Bool)

(assert (=> b!76509 (= e!49966 (Some!139 (_2!1089 (h!2099 lt!34698))))))

(declare-fun b!76510 () Bool)

(assert (=> b!76510 (= e!49966 e!49967)))

(declare-fun c!11693 () Bool)

(assert (=> b!76510 (= c!11693 (and ((_ is Cons!1511) lt!34698) (not (= (_1!1089 (h!2099 lt!34698)) (_1!1089 lt!34443)))))))

(declare-fun b!76512 () Bool)

(assert (=> b!76512 (= e!49967 None!138)))

(assert (= (and d!18191 c!11692) b!76509))

(assert (= (and d!18191 (not c!11692)) b!76510))

(assert (= (and b!76510 c!11693) b!76511))

(assert (= (and b!76510 (not c!11693)) b!76512))

(declare-fun m!76245 () Bool)

(assert (=> b!76511 m!76245))

(assert (=> d!18107 d!18191))

(declare-fun d!18193 () Bool)

(assert (=> d!18193 (= (getValueByKey!134 lt!34698 (_1!1089 lt!34443)) (Some!139 (_2!1089 lt!34443)))))

(declare-fun lt!34792 () Unit!2198)

(declare-fun choose!450 (List!1515 (_ BitVec 64) V!2963) Unit!2198)

(assert (=> d!18193 (= lt!34792 (choose!450 lt!34698 (_1!1089 lt!34443) (_2!1089 lt!34443)))))

(declare-fun e!49970 () Bool)

(assert (=> d!18193 e!49970))

(declare-fun res!40247 () Bool)

(assert (=> d!18193 (=> (not res!40247) (not e!49970))))

(assert (=> d!18193 (= res!40247 (isStrictlySorted!289 lt!34698))))

(assert (=> d!18193 (= (lemmaContainsTupThenGetReturnValue!53 lt!34698 (_1!1089 lt!34443) (_2!1089 lt!34443)) lt!34792)))

(declare-fun b!76517 () Bool)

(declare-fun res!40248 () Bool)

(assert (=> b!76517 (=> (not res!40248) (not e!49970))))

(assert (=> b!76517 (= res!40248 (containsKey!138 lt!34698 (_1!1089 lt!34443)))))

(declare-fun b!76518 () Bool)

(assert (=> b!76518 (= e!49970 (contains!738 lt!34698 (tuple2!2159 (_1!1089 lt!34443) (_2!1089 lt!34443))))))

(assert (= (and d!18193 res!40247) b!76517))

(assert (= (and b!76517 res!40248) b!76518))

(assert (=> d!18193 m!75969))

(declare-fun m!76247 () Bool)

(assert (=> d!18193 m!76247))

(declare-fun m!76249 () Bool)

(assert (=> d!18193 m!76249))

(declare-fun m!76251 () Bool)

(assert (=> b!76517 m!76251))

(declare-fun m!76253 () Bool)

(assert (=> b!76518 m!76253))

(assert (=> d!18107 d!18193))

(declare-fun b!76539 () Bool)

(declare-fun e!49984 () List!1515)

(declare-fun call!6926 () List!1515)

(assert (=> b!76539 (= e!49984 call!6926)))

(declare-fun b!76540 () Bool)

(declare-fun c!11703 () Bool)

(assert (=> b!76540 (= c!11703 (and ((_ is Cons!1511) (toList!739 lt!34442)) (bvsgt (_1!1089 (h!2099 (toList!739 lt!34442))) (_1!1089 lt!34443))))))

(declare-fun e!49982 () List!1515)

(declare-fun e!49983 () List!1515)

(assert (=> b!76540 (= e!49982 e!49983)))

(declare-fun b!76541 () Bool)

(declare-fun e!49981 () List!1515)

(assert (=> b!76541 (= e!49981 (insertStrictlySorted!55 (t!5113 (toList!739 lt!34442)) (_1!1089 lt!34443) (_2!1089 lt!34443)))))

(declare-fun bm!6921 () Bool)

(declare-fun call!6925 () List!1515)

(declare-fun call!6924 () List!1515)

(assert (=> bm!6921 (= call!6925 call!6924)))

(declare-fun b!76542 () Bool)

(declare-fun c!11704 () Bool)

(assert (=> b!76542 (= e!49981 (ite c!11704 (t!5113 (toList!739 lt!34442)) (ite c!11703 (Cons!1511 (h!2099 (toList!739 lt!34442)) (t!5113 (toList!739 lt!34442))) Nil!1512)))))

(declare-fun b!76543 () Bool)

(declare-fun e!49985 () Bool)

(declare-fun lt!34795 () List!1515)

(assert (=> b!76543 (= e!49985 (contains!738 lt!34795 (tuple2!2159 (_1!1089 lt!34443) (_2!1089 lt!34443))))))

(declare-fun b!76544 () Bool)

(assert (=> b!76544 (= e!49983 call!6925)))

(declare-fun bm!6923 () Bool)

(declare-fun c!11702 () Bool)

(declare-fun $colon$colon!67 (List!1515 tuple2!2158) List!1515)

(assert (=> bm!6923 (= call!6926 ($colon$colon!67 e!49981 (ite c!11702 (h!2099 (toList!739 lt!34442)) (tuple2!2159 (_1!1089 lt!34443) (_2!1089 lt!34443)))))))

(declare-fun c!11705 () Bool)

(assert (=> bm!6923 (= c!11705 c!11702)))

(declare-fun b!76545 () Bool)

(assert (=> b!76545 (= e!49984 e!49982)))

(assert (=> b!76545 (= c!11704 (and ((_ is Cons!1511) (toList!739 lt!34442)) (= (_1!1089 (h!2099 (toList!739 lt!34442))) (_1!1089 lt!34443))))))

(declare-fun b!76546 () Bool)

(declare-fun res!40253 () Bool)

(assert (=> b!76546 (=> (not res!40253) (not e!49985))))

(assert (=> b!76546 (= res!40253 (containsKey!138 lt!34795 (_1!1089 lt!34443)))))

(declare-fun b!76547 () Bool)

(assert (=> b!76547 (= e!49982 call!6924)))

(declare-fun b!76548 () Bool)

(assert (=> b!76548 (= e!49983 call!6925)))

(declare-fun d!18195 () Bool)

(assert (=> d!18195 e!49985))

(declare-fun res!40254 () Bool)

(assert (=> d!18195 (=> (not res!40254) (not e!49985))))

(assert (=> d!18195 (= res!40254 (isStrictlySorted!289 lt!34795))))

(assert (=> d!18195 (= lt!34795 e!49984)))

(assert (=> d!18195 (= c!11702 (and ((_ is Cons!1511) (toList!739 lt!34442)) (bvslt (_1!1089 (h!2099 (toList!739 lt!34442))) (_1!1089 lt!34443))))))

(assert (=> d!18195 (isStrictlySorted!289 (toList!739 lt!34442))))

(assert (=> d!18195 (= (insertStrictlySorted!55 (toList!739 lt!34442) (_1!1089 lt!34443) (_2!1089 lt!34443)) lt!34795)))

(declare-fun bm!6922 () Bool)

(assert (=> bm!6922 (= call!6924 call!6926)))

(assert (= (and d!18195 c!11702) b!76539))

(assert (= (and d!18195 (not c!11702)) b!76545))

(assert (= (and b!76545 c!11704) b!76547))

(assert (= (and b!76545 (not c!11704)) b!76540))

(assert (= (and b!76540 c!11703) b!76544))

(assert (= (and b!76540 (not c!11703)) b!76548))

(assert (= (or b!76544 b!76548) bm!6921))

(assert (= (or b!76547 bm!6921) bm!6922))

(assert (= (or b!76539 bm!6922) bm!6923))

(assert (= (and bm!6923 c!11705) b!76541))

(assert (= (and bm!6923 (not c!11705)) b!76542))

(assert (= (and d!18195 res!40254) b!76546))

(assert (= (and b!76546 res!40253) b!76543))

(declare-fun m!76255 () Bool)

(assert (=> b!76543 m!76255))

(declare-fun m!76257 () Bool)

(assert (=> b!76541 m!76257))

(declare-fun m!76259 () Bool)

(assert (=> b!76546 m!76259))

(declare-fun m!76261 () Bool)

(assert (=> bm!6923 m!76261))

(declare-fun m!76263 () Bool)

(assert (=> d!18195 m!76263))

(declare-fun m!76265 () Bool)

(assert (=> d!18195 m!76265))

(assert (=> d!18107 d!18195))

(declare-fun d!18197 () Bool)

(declare-fun res!40255 () Bool)

(declare-fun e!49986 () Bool)

(assert (=> d!18197 (=> res!40255 e!49986)))

(assert (=> d!18197 (= res!40255 (= (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> d!18197 (= (arrayContainsKey!0 (_keys!3905 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b00000000000000000000000000000000) e!49986)))

(declare-fun b!76549 () Bool)

(declare-fun e!49987 () Bool)

(assert (=> b!76549 (= e!49986 e!49987)))

(declare-fun res!40256 () Bool)

(assert (=> b!76549 (=> (not res!40256) (not e!49987))))

(assert (=> b!76549 (= res!40256 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76550 () Bool)

(assert (=> b!76550 (= e!49987 (arrayContainsKey!0 (_keys!3905 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!18197 (not res!40255)) b!76549))

(assert (= (and b!76549 res!40256) b!76550))

(assert (=> d!18197 m!76035))

(assert (=> b!76550 m!75655))

(declare-fun m!76267 () Bool)

(assert (=> b!76550 m!76267))

(assert (=> bm!6860 d!18197))

(declare-fun c!11706 () Bool)

(declare-fun call!6927 () Bool)

(declare-fun bm!6924 () Bool)

(assert (=> bm!6924 (= call!6927 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!11706 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!11572 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) Nil!1513) Nil!1513)) (ite c!11572 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) Nil!1513) Nil!1513))))))

(declare-fun b!76552 () Bool)

(declare-fun e!49990 () Bool)

(declare-fun e!49989 () Bool)

(assert (=> b!76552 (= e!49990 e!49989)))

(assert (=> b!76552 (= c!11706 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!76553 () Bool)

(assert (=> b!76553 (= e!49989 call!6927)))

(declare-fun b!76551 () Bool)

(declare-fun e!49991 () Bool)

(assert (=> b!76551 (= e!49991 e!49990)))

(declare-fun res!40259 () Bool)

(assert (=> b!76551 (=> (not res!40259) (not e!49990))))

(declare-fun e!49988 () Bool)

(assert (=> b!76551 (= res!40259 (not e!49988))))

(declare-fun res!40258 () Bool)

(assert (=> b!76551 (=> (not res!40258) (not e!49988))))

(assert (=> b!76551 (= res!40258 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!18199 () Bool)

(declare-fun res!40257 () Bool)

(assert (=> d!18199 (=> res!40257 e!49991)))

(assert (=> d!18199 (= res!40257 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> d!18199 (= (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!11572 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) Nil!1513) Nil!1513)) e!49991)))

(declare-fun b!76554 () Bool)

(assert (=> b!76554 (= e!49988 (contains!737 (ite c!11572 (Cons!1512 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) Nil!1513) Nil!1513) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!76555 () Bool)

(assert (=> b!76555 (= e!49989 call!6927)))

(assert (= (and d!18199 (not res!40257)) b!76551))

(assert (= (and b!76551 res!40258) b!76554))

(assert (= (and b!76551 res!40259) b!76552))

(assert (= (and b!76552 c!11706) b!76555))

(assert (= (and b!76552 (not c!11706)) b!76553))

(assert (= (or b!76555 b!76553) bm!6924))

(assert (=> bm!6924 m!76169))

(declare-fun m!76269 () Bool)

(assert (=> bm!6924 m!76269))

(assert (=> b!76552 m!76169))

(assert (=> b!76552 m!76169))

(assert (=> b!76552 m!76177))

(assert (=> b!76551 m!76169))

(assert (=> b!76551 m!76169))

(assert (=> b!76551 m!76177))

(assert (=> b!76554 m!76169))

(assert (=> b!76554 m!76169))

(declare-fun m!76271 () Bool)

(assert (=> b!76554 m!76271))

(assert (=> bm!6804 d!18199))

(assert (=> bm!6853 d!18151))

(declare-fun e!49997 () Bool)

(declare-fun lt!34803 () ListLongMap!1447)

(declare-fun b!76556 () Bool)

(assert (=> b!76556 (= e!49997 (= (apply!77 lt!34803 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)) (get!1168 (select (arr!1871 (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!338 (defaultEntry!2247 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!76556 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2111 (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16)))))))))

(assert (=> b!76556 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76557 () Bool)

(declare-fun e!49995 () Bool)

(assert (=> b!76557 (= e!49995 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!76558 () Bool)

(declare-fun e!50002 () Bool)

(declare-fun e!49996 () Bool)

(assert (=> b!76558 (= e!50002 e!49996)))

(declare-fun c!11707 () Bool)

(assert (=> b!76558 (= c!11707 (not (= (bvand (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!76559 () Bool)

(declare-fun e!50003 () Unit!2198)

(declare-fun lt!34817 () Unit!2198)

(assert (=> b!76559 (= e!50003 lt!34817)))

(declare-fun lt!34815 () ListLongMap!1447)

(assert (=> b!76559 (= lt!34815 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16)))) (mask!6230 newMap!16) (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) (zeroValue!2146 newMap!16) (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34799 () (_ BitVec 64))

(assert (=> b!76559 (= lt!34799 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34801 () (_ BitVec 64))

(assert (=> b!76559 (= lt!34801 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34804 () Unit!2198)

(assert (=> b!76559 (= lt!34804 (addStillContains!53 lt!34815 lt!34799 (zeroValue!2146 newMap!16) lt!34801))))

(assert (=> b!76559 (contains!735 (+!102 lt!34815 (tuple2!2159 lt!34799 (zeroValue!2146 newMap!16))) lt!34801)))

(declare-fun lt!34797 () Unit!2198)

(assert (=> b!76559 (= lt!34797 lt!34804)))

(declare-fun lt!34811 () ListLongMap!1447)

(assert (=> b!76559 (= lt!34811 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16)))) (mask!6230 newMap!16) (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) (zeroValue!2146 newMap!16) (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34812 () (_ BitVec 64))

(assert (=> b!76559 (= lt!34812 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34805 () (_ BitVec 64))

(assert (=> b!76559 (= lt!34805 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34796 () Unit!2198)

(assert (=> b!76559 (= lt!34796 (addApplyDifferent!53 lt!34811 lt!34812 (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) lt!34805))))

(assert (=> b!76559 (= (apply!77 (+!102 lt!34811 (tuple2!2159 lt!34812 (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)))) lt!34805) (apply!77 lt!34811 lt!34805))))

(declare-fun lt!34810 () Unit!2198)

(assert (=> b!76559 (= lt!34810 lt!34796)))

(declare-fun lt!34807 () ListLongMap!1447)

(assert (=> b!76559 (= lt!34807 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16)))) (mask!6230 newMap!16) (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) (zeroValue!2146 newMap!16) (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34814 () (_ BitVec 64))

(assert (=> b!76559 (= lt!34814 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34809 () (_ BitVec 64))

(assert (=> b!76559 (= lt!34809 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34813 () Unit!2198)

(assert (=> b!76559 (= lt!34813 (addApplyDifferent!53 lt!34807 lt!34814 (zeroValue!2146 newMap!16) lt!34809))))

(assert (=> b!76559 (= (apply!77 (+!102 lt!34807 (tuple2!2159 lt!34814 (zeroValue!2146 newMap!16))) lt!34809) (apply!77 lt!34807 lt!34809))))

(declare-fun lt!34808 () Unit!2198)

(assert (=> b!76559 (= lt!34808 lt!34813)))

(declare-fun lt!34800 () ListLongMap!1447)

(assert (=> b!76559 (= lt!34800 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16)))) (mask!6230 newMap!16) (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) (zeroValue!2146 newMap!16) (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34802 () (_ BitVec 64))

(assert (=> b!76559 (= lt!34802 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34806 () (_ BitVec 64))

(assert (=> b!76559 (= lt!34806 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!76559 (= lt!34817 (addApplyDifferent!53 lt!34800 lt!34802 (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) lt!34806))))

(assert (=> b!76559 (= (apply!77 (+!102 lt!34800 (tuple2!2159 lt!34802 (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)))) lt!34806) (apply!77 lt!34800 lt!34806))))

(declare-fun bm!6925 () Bool)

(declare-fun call!6933 () ListLongMap!1447)

(declare-fun call!6930 () ListLongMap!1447)

(assert (=> bm!6925 (= call!6933 call!6930)))

(declare-fun b!76561 () Bool)

(declare-fun Unit!2214 () Unit!2198)

(assert (=> b!76561 (= e!50003 Unit!2214)))

(declare-fun c!11712 () Bool)

(declare-fun c!11709 () Bool)

(declare-fun call!6934 () ListLongMap!1447)

(declare-fun bm!6926 () Bool)

(declare-fun call!6928 () ListLongMap!1447)

(assert (=> bm!6926 (= call!6928 (+!102 (ite c!11712 call!6930 (ite c!11709 call!6933 call!6934)) (ite (or c!11712 c!11709) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 newMap!16)) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16))))))))

(declare-fun bm!6927 () Bool)

(declare-fun call!6931 () Bool)

(assert (=> bm!6927 (= call!6931 (contains!735 lt!34803 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76562 () Bool)

(declare-fun e!50001 () ListLongMap!1447)

(assert (=> b!76562 (= e!50001 call!6934)))

(declare-fun b!76563 () Bool)

(declare-fun e!50000 () Bool)

(assert (=> b!76563 (= e!50000 (= (apply!77 lt!34803 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2146 newMap!16)))))

(declare-fun b!76564 () Bool)

(declare-fun e!49994 () ListLongMap!1447)

(declare-fun call!6932 () ListLongMap!1447)

(assert (=> b!76564 (= e!49994 call!6932)))

(declare-fun d!18201 () Bool)

(assert (=> d!18201 e!50002))

(declare-fun res!40263 () Bool)

(assert (=> d!18201 (=> (not res!40263) (not e!50002))))

(assert (=> d!18201 (= res!40263 (or (bvsge #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))))

(declare-fun lt!34798 () ListLongMap!1447)

(assert (=> d!18201 (= lt!34803 lt!34798)))

(declare-fun lt!34816 () Unit!2198)

(assert (=> d!18201 (= lt!34816 e!50003)))

(declare-fun c!11708 () Bool)

(declare-fun e!49998 () Bool)

(assert (=> d!18201 (= c!11708 e!49998)))

(declare-fun res!40265 () Bool)

(assert (=> d!18201 (=> (not res!40265) (not e!49998))))

(assert (=> d!18201 (= res!40265 (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun e!49999 () ListLongMap!1447)

(assert (=> d!18201 (= lt!34798 e!49999)))

(assert (=> d!18201 (= c!11712 (and (not (= (bvand (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!18201 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18201 (= (getCurrentListMap!430 (_keys!3905 newMap!16) (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16)))) (mask!6230 newMap!16) (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) (zeroValue!2146 newMap!16) (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) lt!34803)))

(declare-fun b!76560 () Bool)

(assert (=> b!76560 (= e!50001 call!6932)))

(declare-fun bm!6928 () Bool)

(declare-fun call!6929 () Bool)

(assert (=> bm!6928 (= call!6929 (contains!735 lt!34803 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!11711 () Bool)

(declare-fun b!76565 () Bool)

(assert (=> b!76565 (= c!11711 (and (not (= (bvand (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!76565 (= e!49994 e!50001)))

(declare-fun b!76566 () Bool)

(assert (=> b!76566 (= e!49996 (not call!6929))))

(declare-fun b!76567 () Bool)

(declare-fun res!40267 () Bool)

(assert (=> b!76567 (=> (not res!40267) (not e!50002))))

(declare-fun e!49993 () Bool)

(assert (=> b!76567 (= res!40267 e!49993)))

(declare-fun c!11710 () Bool)

(assert (=> b!76567 (= c!11710 (not (= (bvand (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!49992 () Bool)

(declare-fun b!76568 () Bool)

(assert (=> b!76568 (= e!49992 (= (apply!77 lt!34803 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16))))))

(declare-fun b!76569 () Bool)

(declare-fun e!50004 () Bool)

(assert (=> b!76569 (= e!50004 e!49997)))

(declare-fun res!40262 () Bool)

(assert (=> b!76569 (=> (not res!40262) (not e!49997))))

(assert (=> b!76569 (= res!40262 (contains!735 lt!34803 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!76569 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76570 () Bool)

(assert (=> b!76570 (= e!49999 (+!102 call!6928 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)))))))

(declare-fun bm!6929 () Bool)

(assert (=> bm!6929 (= call!6932 call!6928)))

(declare-fun b!76571 () Bool)

(declare-fun res!40266 () Bool)

(assert (=> b!76571 (=> (not res!40266) (not e!50002))))

(assert (=> b!76571 (= res!40266 e!50004)))

(declare-fun res!40261 () Bool)

(assert (=> b!76571 (=> res!40261 e!50004)))

(assert (=> b!76571 (= res!40261 (not e!49995))))

(declare-fun res!40260 () Bool)

(assert (=> b!76571 (=> (not res!40260) (not e!49995))))

(assert (=> b!76571 (= res!40260 (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76572 () Bool)

(assert (=> b!76572 (= e!49993 (not call!6931))))

(declare-fun bm!6930 () Bool)

(assert (=> bm!6930 (= call!6930 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (ite (or c!11613 c!11616) (_values!2230 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16)))) (mask!6230 newMap!16) (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) (zeroValue!2146 newMap!16) (ite c!11613 (ite c!11614 (minValue!2146 newMap!16) lt!34446) (minValue!2146 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun b!76573 () Bool)

(assert (=> b!76573 (= e!49998 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!76574 () Bool)

(assert (=> b!76574 (= e!49993 e!50000)))

(declare-fun res!40268 () Bool)

(assert (=> b!76574 (= res!40268 call!6931)))

(assert (=> b!76574 (=> (not res!40268) (not e!50000))))

(declare-fun bm!6931 () Bool)

(assert (=> bm!6931 (= call!6934 call!6933)))

(declare-fun b!76575 () Bool)

(assert (=> b!76575 (= e!49999 e!49994)))

(assert (=> b!76575 (= c!11709 (and (not (= (bvand (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!11613 (ite c!11614 (extraKeys!2100 newMap!16) lt!34565) (extraKeys!2100 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!76576 () Bool)

(assert (=> b!76576 (= e!49996 e!49992)))

(declare-fun res!40264 () Bool)

(assert (=> b!76576 (= res!40264 call!6929)))

(assert (=> b!76576 (=> (not res!40264) (not e!49992))))

(assert (= (and d!18201 c!11712) b!76570))

(assert (= (and d!18201 (not c!11712)) b!76575))

(assert (= (and b!76575 c!11709) b!76564))

(assert (= (and b!76575 (not c!11709)) b!76565))

(assert (= (and b!76565 c!11711) b!76560))

(assert (= (and b!76565 (not c!11711)) b!76562))

(assert (= (or b!76560 b!76562) bm!6931))

(assert (= (or b!76564 bm!6931) bm!6925))

(assert (= (or b!76564 b!76560) bm!6929))

(assert (= (or b!76570 bm!6925) bm!6930))

(assert (= (or b!76570 bm!6929) bm!6926))

(assert (= (and d!18201 res!40265) b!76573))

(assert (= (and d!18201 c!11708) b!76559))

(assert (= (and d!18201 (not c!11708)) b!76561))

(assert (= (and d!18201 res!40263) b!76571))

(assert (= (and b!76571 res!40260) b!76557))

(assert (= (and b!76571 (not res!40261)) b!76569))

(assert (= (and b!76569 res!40262) b!76556))

(assert (= (and b!76571 res!40266) b!76567))

(assert (= (and b!76567 c!11710) b!76574))

(assert (= (and b!76567 (not c!11710)) b!76572))

(assert (= (and b!76574 res!40268) b!76563))

(assert (= (or b!76574 b!76572) bm!6927))

(assert (= (and b!76567 res!40267) b!76558))

(assert (= (and b!76558 c!11707) b!76576))

(assert (= (and b!76558 (not c!11707)) b!76566))

(assert (= (and b!76576 res!40264) b!76568))

(assert (= (or b!76576 b!76566) bm!6928))

(declare-fun b_lambda!3443 () Bool)

(assert (=> (not b_lambda!3443) (not b!76556)))

(assert (=> b!76556 t!5122))

(declare-fun b_and!4677 () Bool)

(assert (= b_and!4673 (and (=> t!5122 result!2749) b_and!4677)))

(assert (=> b!76556 t!5124))

(declare-fun b_and!4679 () Bool)

(assert (= b_and!4675 (and (=> t!5124 result!2751) b_and!4679)))

(declare-fun m!76273 () Bool)

(assert (=> bm!6927 m!76273))

(assert (=> b!76557 m!76035))

(assert (=> b!76557 m!76035))

(assert (=> b!76557 m!76037))

(assert (=> d!18201 m!76011))

(declare-fun m!76275 () Bool)

(assert (=> bm!6926 m!76275))

(declare-fun m!76277 () Bool)

(assert (=> b!76570 m!76277))

(assert (=> b!76569 m!76035))

(assert (=> b!76569 m!76035))

(declare-fun m!76279 () Bool)

(assert (=> b!76569 m!76279))

(declare-fun m!76281 () Bool)

(assert (=> b!76559 m!76281))

(declare-fun m!76283 () Bool)

(assert (=> b!76559 m!76283))

(declare-fun m!76285 () Bool)

(assert (=> b!76559 m!76285))

(declare-fun m!76287 () Bool)

(assert (=> b!76559 m!76287))

(declare-fun m!76289 () Bool)

(assert (=> b!76559 m!76289))

(declare-fun m!76291 () Bool)

(assert (=> b!76559 m!76291))

(assert (=> b!76559 m!76035))

(declare-fun m!76293 () Bool)

(assert (=> b!76559 m!76293))

(declare-fun m!76295 () Bool)

(assert (=> b!76559 m!76295))

(assert (=> b!76559 m!76295))

(declare-fun m!76297 () Bool)

(assert (=> b!76559 m!76297))

(declare-fun m!76299 () Bool)

(assert (=> b!76559 m!76299))

(assert (=> b!76559 m!76291))

(declare-fun m!76301 () Bool)

(assert (=> b!76559 m!76301))

(assert (=> b!76559 m!76283))

(declare-fun m!76303 () Bool)

(assert (=> b!76559 m!76303))

(declare-fun m!76305 () Bool)

(assert (=> b!76559 m!76305))

(assert (=> b!76559 m!76293))

(declare-fun m!76307 () Bool)

(assert (=> b!76559 m!76307))

(declare-fun m!76309 () Bool)

(assert (=> b!76559 m!76309))

(declare-fun m!76311 () Bool)

(assert (=> b!76559 m!76311))

(declare-fun m!76313 () Bool)

(assert (=> bm!6928 m!76313))

(assert (=> b!76573 m!76035))

(assert (=> b!76573 m!76035))

(assert (=> b!76573 m!76037))

(declare-fun m!76315 () Bool)

(assert (=> b!76556 m!76315))

(assert (=> b!76556 m!76315))

(assert (=> b!76556 m!76081))

(declare-fun m!76317 () Bool)

(assert (=> b!76556 m!76317))

(assert (=> b!76556 m!76035))

(declare-fun m!76319 () Bool)

(assert (=> b!76556 m!76319))

(assert (=> b!76556 m!76081))

(assert (=> b!76556 m!76035))

(declare-fun m!76321 () Bool)

(assert (=> b!76563 m!76321))

(declare-fun m!76323 () Bool)

(assert (=> b!76568 m!76323))

(assert (=> bm!6930 m!76281))

(assert (=> bm!6868 d!18201))

(declare-fun d!18203 () Bool)

(declare-fun e!50006 () Bool)

(assert (=> d!18203 e!50006))

(declare-fun res!40269 () Bool)

(assert (=> d!18203 (=> res!40269 e!50006)))

(declare-fun lt!34821 () Bool)

(assert (=> d!18203 (= res!40269 (not lt!34821))))

(declare-fun lt!34819 () Bool)

(assert (=> d!18203 (= lt!34821 lt!34819)))

(declare-fun lt!34820 () Unit!2198)

(declare-fun e!50005 () Unit!2198)

(assert (=> d!18203 (= lt!34820 e!50005)))

(declare-fun c!11713 () Bool)

(assert (=> d!18203 (= c!11713 lt!34819)))

(assert (=> d!18203 (= lt!34819 (containsKey!138 (toList!739 lt!34688) (_1!1089 lt!34448)))))

(assert (=> d!18203 (= (contains!735 lt!34688 (_1!1089 lt!34448)) lt!34821)))

(declare-fun b!76577 () Bool)

(declare-fun lt!34818 () Unit!2198)

(assert (=> b!76577 (= e!50005 lt!34818)))

(assert (=> b!76577 (= lt!34818 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34688) (_1!1089 lt!34448)))))

(assert (=> b!76577 (isDefined!88 (getValueByKey!134 (toList!739 lt!34688) (_1!1089 lt!34448)))))

(declare-fun b!76578 () Bool)

(declare-fun Unit!2215 () Unit!2198)

(assert (=> b!76578 (= e!50005 Unit!2215)))

(declare-fun b!76579 () Bool)

(assert (=> b!76579 (= e!50006 (isDefined!88 (getValueByKey!134 (toList!739 lt!34688) (_1!1089 lt!34448))))))

(assert (= (and d!18203 c!11713) b!76577))

(assert (= (and d!18203 (not c!11713)) b!76578))

(assert (= (and d!18203 (not res!40269)) b!76579))

(declare-fun m!76325 () Bool)

(assert (=> d!18203 m!76325))

(declare-fun m!76327 () Bool)

(assert (=> b!76577 m!76327))

(assert (=> b!76577 m!75941))

(assert (=> b!76577 m!75941))

(declare-fun m!76329 () Bool)

(assert (=> b!76577 m!76329))

(assert (=> b!76579 m!75941))

(assert (=> b!76579 m!75941))

(assert (=> b!76579 m!76329))

(assert (=> d!18101 d!18203))

(declare-fun d!18205 () Bool)

(declare-fun c!11714 () Bool)

(assert (=> d!18205 (= c!11714 (and ((_ is Cons!1511) lt!34687) (= (_1!1089 (h!2099 lt!34687)) (_1!1089 lt!34448))))))

(declare-fun e!50007 () Option!140)

(assert (=> d!18205 (= (getValueByKey!134 lt!34687 (_1!1089 lt!34448)) e!50007)))

(declare-fun b!76582 () Bool)

(declare-fun e!50008 () Option!140)

(assert (=> b!76582 (= e!50008 (getValueByKey!134 (t!5113 lt!34687) (_1!1089 lt!34448)))))

(declare-fun b!76580 () Bool)

(assert (=> b!76580 (= e!50007 (Some!139 (_2!1089 (h!2099 lt!34687))))))

(declare-fun b!76581 () Bool)

(assert (=> b!76581 (= e!50007 e!50008)))

(declare-fun c!11715 () Bool)

(assert (=> b!76581 (= c!11715 (and ((_ is Cons!1511) lt!34687) (not (= (_1!1089 (h!2099 lt!34687)) (_1!1089 lt!34448)))))))

(declare-fun b!76583 () Bool)

(assert (=> b!76583 (= e!50008 None!138)))

(assert (= (and d!18205 c!11714) b!76580))

(assert (= (and d!18205 (not c!11714)) b!76581))

(assert (= (and b!76581 c!11715) b!76582))

(assert (= (and b!76581 (not c!11715)) b!76583))

(declare-fun m!76331 () Bool)

(assert (=> b!76582 m!76331))

(assert (=> d!18101 d!18205))

(declare-fun d!18207 () Bool)

(assert (=> d!18207 (= (getValueByKey!134 lt!34687 (_1!1089 lt!34448)) (Some!139 (_2!1089 lt!34448)))))

(declare-fun lt!34822 () Unit!2198)

(assert (=> d!18207 (= lt!34822 (choose!450 lt!34687 (_1!1089 lt!34448) (_2!1089 lt!34448)))))

(declare-fun e!50009 () Bool)

(assert (=> d!18207 e!50009))

(declare-fun res!40270 () Bool)

(assert (=> d!18207 (=> (not res!40270) (not e!50009))))

(assert (=> d!18207 (= res!40270 (isStrictlySorted!289 lt!34687))))

(assert (=> d!18207 (= (lemmaContainsTupThenGetReturnValue!53 lt!34687 (_1!1089 lt!34448) (_2!1089 lt!34448)) lt!34822)))

(declare-fun b!76584 () Bool)

(declare-fun res!40271 () Bool)

(assert (=> b!76584 (=> (not res!40271) (not e!50009))))

(assert (=> b!76584 (= res!40271 (containsKey!138 lt!34687 (_1!1089 lt!34448)))))

(declare-fun b!76585 () Bool)

(assert (=> b!76585 (= e!50009 (contains!738 lt!34687 (tuple2!2159 (_1!1089 lt!34448) (_2!1089 lt!34448))))))

(assert (= (and d!18207 res!40270) b!76584))

(assert (= (and b!76584 res!40271) b!76585))

(assert (=> d!18207 m!75935))

(declare-fun m!76333 () Bool)

(assert (=> d!18207 m!76333))

(declare-fun m!76335 () Bool)

(assert (=> d!18207 m!76335))

(declare-fun m!76337 () Bool)

(assert (=> b!76584 m!76337))

(declare-fun m!76339 () Bool)

(assert (=> b!76585 m!76339))

(assert (=> d!18101 d!18207))

(declare-fun b!76586 () Bool)

(declare-fun e!50013 () List!1515)

(declare-fun call!6937 () List!1515)

(assert (=> b!76586 (= e!50013 call!6937)))

(declare-fun b!76587 () Bool)

(declare-fun c!11717 () Bool)

(assert (=> b!76587 (= c!11717 (and ((_ is Cons!1511) (toList!739 lt!34442)) (bvsgt (_1!1089 (h!2099 (toList!739 lt!34442))) (_1!1089 lt!34448))))))

(declare-fun e!50011 () List!1515)

(declare-fun e!50012 () List!1515)

(assert (=> b!76587 (= e!50011 e!50012)))

(declare-fun b!76588 () Bool)

(declare-fun e!50010 () List!1515)

(assert (=> b!76588 (= e!50010 (insertStrictlySorted!55 (t!5113 (toList!739 lt!34442)) (_1!1089 lt!34448) (_2!1089 lt!34448)))))

(declare-fun bm!6932 () Bool)

(declare-fun call!6936 () List!1515)

(declare-fun call!6935 () List!1515)

(assert (=> bm!6932 (= call!6936 call!6935)))

(declare-fun b!76589 () Bool)

(declare-fun c!11718 () Bool)

(assert (=> b!76589 (= e!50010 (ite c!11718 (t!5113 (toList!739 lt!34442)) (ite c!11717 (Cons!1511 (h!2099 (toList!739 lt!34442)) (t!5113 (toList!739 lt!34442))) Nil!1512)))))

(declare-fun b!76590 () Bool)

(declare-fun e!50014 () Bool)

(declare-fun lt!34823 () List!1515)

(assert (=> b!76590 (= e!50014 (contains!738 lt!34823 (tuple2!2159 (_1!1089 lt!34448) (_2!1089 lt!34448))))))

(declare-fun b!76591 () Bool)

(assert (=> b!76591 (= e!50012 call!6936)))

(declare-fun bm!6934 () Bool)

(declare-fun c!11716 () Bool)

(assert (=> bm!6934 (= call!6937 ($colon$colon!67 e!50010 (ite c!11716 (h!2099 (toList!739 lt!34442)) (tuple2!2159 (_1!1089 lt!34448) (_2!1089 lt!34448)))))))

(declare-fun c!11719 () Bool)

(assert (=> bm!6934 (= c!11719 c!11716)))

(declare-fun b!76592 () Bool)

(assert (=> b!76592 (= e!50013 e!50011)))

(assert (=> b!76592 (= c!11718 (and ((_ is Cons!1511) (toList!739 lt!34442)) (= (_1!1089 (h!2099 (toList!739 lt!34442))) (_1!1089 lt!34448))))))

(declare-fun b!76593 () Bool)

(declare-fun res!40272 () Bool)

(assert (=> b!76593 (=> (not res!40272) (not e!50014))))

(assert (=> b!76593 (= res!40272 (containsKey!138 lt!34823 (_1!1089 lt!34448)))))

(declare-fun b!76594 () Bool)

(assert (=> b!76594 (= e!50011 call!6935)))

(declare-fun b!76595 () Bool)

(assert (=> b!76595 (= e!50012 call!6936)))

(declare-fun d!18209 () Bool)

(assert (=> d!18209 e!50014))

(declare-fun res!40273 () Bool)

(assert (=> d!18209 (=> (not res!40273) (not e!50014))))

(assert (=> d!18209 (= res!40273 (isStrictlySorted!289 lt!34823))))

(assert (=> d!18209 (= lt!34823 e!50013)))

(assert (=> d!18209 (= c!11716 (and ((_ is Cons!1511) (toList!739 lt!34442)) (bvslt (_1!1089 (h!2099 (toList!739 lt!34442))) (_1!1089 lt!34448))))))

(assert (=> d!18209 (isStrictlySorted!289 (toList!739 lt!34442))))

(assert (=> d!18209 (= (insertStrictlySorted!55 (toList!739 lt!34442) (_1!1089 lt!34448) (_2!1089 lt!34448)) lt!34823)))

(declare-fun bm!6933 () Bool)

(assert (=> bm!6933 (= call!6935 call!6937)))

(assert (= (and d!18209 c!11716) b!76586))

(assert (= (and d!18209 (not c!11716)) b!76592))

(assert (= (and b!76592 c!11718) b!76594))

(assert (= (and b!76592 (not c!11718)) b!76587))

(assert (= (and b!76587 c!11717) b!76591))

(assert (= (and b!76587 (not c!11717)) b!76595))

(assert (= (or b!76591 b!76595) bm!6932))

(assert (= (or b!76594 bm!6932) bm!6933))

(assert (= (or b!76586 bm!6933) bm!6934))

(assert (= (and bm!6934 c!11719) b!76588))

(assert (= (and bm!6934 (not c!11719)) b!76589))

(assert (= (and d!18209 res!40273) b!76593))

(assert (= (and b!76593 res!40272) b!76590))

(declare-fun m!76341 () Bool)

(assert (=> b!76590 m!76341))

(declare-fun m!76343 () Bool)

(assert (=> b!76588 m!76343))

(declare-fun m!76345 () Bool)

(assert (=> b!76593 m!76345))

(declare-fun m!76347 () Bool)

(assert (=> bm!6934 m!76347))

(declare-fun m!76349 () Bool)

(assert (=> d!18209 m!76349))

(assert (=> d!18209 m!76265))

(assert (=> d!18101 d!18209))

(declare-fun d!18211 () Bool)

(declare-fun e!50016 () Bool)

(assert (=> d!18211 e!50016))

(declare-fun res!40274 () Bool)

(assert (=> d!18211 (=> res!40274 e!50016)))

(declare-fun lt!34827 () Bool)

(assert (=> d!18211 (= res!40274 (not lt!34827))))

(declare-fun lt!34825 () Bool)

(assert (=> d!18211 (= lt!34827 lt!34825)))

(declare-fun lt!34826 () Unit!2198)

(declare-fun e!50015 () Unit!2198)

(assert (=> d!18211 (= lt!34826 e!50015)))

(declare-fun c!11720 () Bool)

(assert (=> d!18211 (= c!11720 lt!34825)))

(assert (=> d!18211 (= lt!34825 (containsKey!138 (toList!739 lt!34692) (_1!1089 lt!34448)))))

(assert (=> d!18211 (= (contains!735 lt!34692 (_1!1089 lt!34448)) lt!34827)))

(declare-fun b!76596 () Bool)

(declare-fun lt!34824 () Unit!2198)

(assert (=> b!76596 (= e!50015 lt!34824)))

(assert (=> b!76596 (= lt!34824 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34692) (_1!1089 lt!34448)))))

(assert (=> b!76596 (isDefined!88 (getValueByKey!134 (toList!739 lt!34692) (_1!1089 lt!34448)))))

(declare-fun b!76597 () Bool)

(declare-fun Unit!2216 () Unit!2198)

(assert (=> b!76597 (= e!50015 Unit!2216)))

(declare-fun b!76598 () Bool)

(assert (=> b!76598 (= e!50016 (isDefined!88 (getValueByKey!134 (toList!739 lt!34692) (_1!1089 lt!34448))))))

(assert (= (and d!18211 c!11720) b!76596))

(assert (= (and d!18211 (not c!11720)) b!76597))

(assert (= (and d!18211 (not res!40274)) b!76598))

(declare-fun m!76351 () Bool)

(assert (=> d!18211 m!76351))

(declare-fun m!76353 () Bool)

(assert (=> b!76596 m!76353))

(assert (=> b!76596 m!75953))

(assert (=> b!76596 m!75953))

(declare-fun m!76355 () Bool)

(assert (=> b!76596 m!76355))

(assert (=> b!76598 m!75953))

(assert (=> b!76598 m!75953))

(assert (=> b!76598 m!76355))

(assert (=> d!18103 d!18211))

(declare-fun d!18213 () Bool)

(declare-fun c!11721 () Bool)

(assert (=> d!18213 (= c!11721 (and ((_ is Cons!1511) lt!34691) (= (_1!1089 (h!2099 lt!34691)) (_1!1089 lt!34448))))))

(declare-fun e!50017 () Option!140)

(assert (=> d!18213 (= (getValueByKey!134 lt!34691 (_1!1089 lt!34448)) e!50017)))

(declare-fun b!76601 () Bool)

(declare-fun e!50018 () Option!140)

(assert (=> b!76601 (= e!50018 (getValueByKey!134 (t!5113 lt!34691) (_1!1089 lt!34448)))))

(declare-fun b!76599 () Bool)

(assert (=> b!76599 (= e!50017 (Some!139 (_2!1089 (h!2099 lt!34691))))))

(declare-fun b!76600 () Bool)

(assert (=> b!76600 (= e!50017 e!50018)))

(declare-fun c!11722 () Bool)

(assert (=> b!76600 (= c!11722 (and ((_ is Cons!1511) lt!34691) (not (= (_1!1089 (h!2099 lt!34691)) (_1!1089 lt!34448)))))))

(declare-fun b!76602 () Bool)

(assert (=> b!76602 (= e!50018 None!138)))

(assert (= (and d!18213 c!11721) b!76599))

(assert (= (and d!18213 (not c!11721)) b!76600))

(assert (= (and b!76600 c!11722) b!76601))

(assert (= (and b!76600 (not c!11722)) b!76602))

(declare-fun m!76357 () Bool)

(assert (=> b!76601 m!76357))

(assert (=> d!18103 d!18213))

(declare-fun d!18215 () Bool)

(assert (=> d!18215 (= (getValueByKey!134 lt!34691 (_1!1089 lt!34448)) (Some!139 (_2!1089 lt!34448)))))

(declare-fun lt!34828 () Unit!2198)

(assert (=> d!18215 (= lt!34828 (choose!450 lt!34691 (_1!1089 lt!34448) (_2!1089 lt!34448)))))

(declare-fun e!50019 () Bool)

(assert (=> d!18215 e!50019))

(declare-fun res!40275 () Bool)

(assert (=> d!18215 (=> (not res!40275) (not e!50019))))

(assert (=> d!18215 (= res!40275 (isStrictlySorted!289 lt!34691))))

(assert (=> d!18215 (= (lemmaContainsTupThenGetReturnValue!53 lt!34691 (_1!1089 lt!34448) (_2!1089 lt!34448)) lt!34828)))

(declare-fun b!76603 () Bool)

(declare-fun res!40276 () Bool)

(assert (=> b!76603 (=> (not res!40276) (not e!50019))))

(assert (=> b!76603 (= res!40276 (containsKey!138 lt!34691 (_1!1089 lt!34448)))))

(declare-fun b!76604 () Bool)

(assert (=> b!76604 (= e!50019 (contains!738 lt!34691 (tuple2!2159 (_1!1089 lt!34448) (_2!1089 lt!34448))))))

(assert (= (and d!18215 res!40275) b!76603))

(assert (= (and b!76603 res!40276) b!76604))

(assert (=> d!18215 m!75947))

(declare-fun m!76359 () Bool)

(assert (=> d!18215 m!76359))

(declare-fun m!76361 () Bool)

(assert (=> d!18215 m!76361))

(declare-fun m!76363 () Bool)

(assert (=> b!76603 m!76363))

(declare-fun m!76365 () Bool)

(assert (=> b!76604 m!76365))

(assert (=> d!18103 d!18215))

(declare-fun b!76605 () Bool)

(declare-fun e!50023 () List!1515)

(declare-fun call!6940 () List!1515)

(assert (=> b!76605 (= e!50023 call!6940)))

(declare-fun c!11724 () Bool)

(declare-fun b!76606 () Bool)

(assert (=> b!76606 (= c!11724 (and ((_ is Cons!1511) (toList!739 (+!102 lt!34442 lt!34443))) (bvsgt (_1!1089 (h!2099 (toList!739 (+!102 lt!34442 lt!34443)))) (_1!1089 lt!34448))))))

(declare-fun e!50021 () List!1515)

(declare-fun e!50022 () List!1515)

(assert (=> b!76606 (= e!50021 e!50022)))

(declare-fun e!50020 () List!1515)

(declare-fun b!76607 () Bool)

(assert (=> b!76607 (= e!50020 (insertStrictlySorted!55 (t!5113 (toList!739 (+!102 lt!34442 lt!34443))) (_1!1089 lt!34448) (_2!1089 lt!34448)))))

(declare-fun bm!6935 () Bool)

(declare-fun call!6939 () List!1515)

(declare-fun call!6938 () List!1515)

(assert (=> bm!6935 (= call!6939 call!6938)))

(declare-fun b!76608 () Bool)

(declare-fun c!11725 () Bool)

(assert (=> b!76608 (= e!50020 (ite c!11725 (t!5113 (toList!739 (+!102 lt!34442 lt!34443))) (ite c!11724 (Cons!1511 (h!2099 (toList!739 (+!102 lt!34442 lt!34443))) (t!5113 (toList!739 (+!102 lt!34442 lt!34443)))) Nil!1512)))))

(declare-fun b!76609 () Bool)

(declare-fun e!50024 () Bool)

(declare-fun lt!34829 () List!1515)

(assert (=> b!76609 (= e!50024 (contains!738 lt!34829 (tuple2!2159 (_1!1089 lt!34448) (_2!1089 lt!34448))))))

(declare-fun b!76610 () Bool)

(assert (=> b!76610 (= e!50022 call!6939)))

(declare-fun c!11723 () Bool)

(declare-fun bm!6937 () Bool)

(assert (=> bm!6937 (= call!6940 ($colon$colon!67 e!50020 (ite c!11723 (h!2099 (toList!739 (+!102 lt!34442 lt!34443))) (tuple2!2159 (_1!1089 lt!34448) (_2!1089 lt!34448)))))))

(declare-fun c!11726 () Bool)

(assert (=> bm!6937 (= c!11726 c!11723)))

(declare-fun b!76611 () Bool)

(assert (=> b!76611 (= e!50023 e!50021)))

(assert (=> b!76611 (= c!11725 (and ((_ is Cons!1511) (toList!739 (+!102 lt!34442 lt!34443))) (= (_1!1089 (h!2099 (toList!739 (+!102 lt!34442 lt!34443)))) (_1!1089 lt!34448))))))

(declare-fun b!76612 () Bool)

(declare-fun res!40277 () Bool)

(assert (=> b!76612 (=> (not res!40277) (not e!50024))))

(assert (=> b!76612 (= res!40277 (containsKey!138 lt!34829 (_1!1089 lt!34448)))))

(declare-fun b!76613 () Bool)

(assert (=> b!76613 (= e!50021 call!6938)))

(declare-fun b!76614 () Bool)

(assert (=> b!76614 (= e!50022 call!6939)))

(declare-fun d!18217 () Bool)

(assert (=> d!18217 e!50024))

(declare-fun res!40278 () Bool)

(assert (=> d!18217 (=> (not res!40278) (not e!50024))))

(assert (=> d!18217 (= res!40278 (isStrictlySorted!289 lt!34829))))

(assert (=> d!18217 (= lt!34829 e!50023)))

(assert (=> d!18217 (= c!11723 (and ((_ is Cons!1511) (toList!739 (+!102 lt!34442 lt!34443))) (bvslt (_1!1089 (h!2099 (toList!739 (+!102 lt!34442 lt!34443)))) (_1!1089 lt!34448))))))

(assert (=> d!18217 (isStrictlySorted!289 (toList!739 (+!102 lt!34442 lt!34443)))))

(assert (=> d!18217 (= (insertStrictlySorted!55 (toList!739 (+!102 lt!34442 lt!34443)) (_1!1089 lt!34448) (_2!1089 lt!34448)) lt!34829)))

(declare-fun bm!6936 () Bool)

(assert (=> bm!6936 (= call!6938 call!6940)))

(assert (= (and d!18217 c!11723) b!76605))

(assert (= (and d!18217 (not c!11723)) b!76611))

(assert (= (and b!76611 c!11725) b!76613))

(assert (= (and b!76611 (not c!11725)) b!76606))

(assert (= (and b!76606 c!11724) b!76610))

(assert (= (and b!76606 (not c!11724)) b!76614))

(assert (= (or b!76610 b!76614) bm!6935))

(assert (= (or b!76613 bm!6935) bm!6936))

(assert (= (or b!76605 bm!6936) bm!6937))

(assert (= (and bm!6937 c!11726) b!76607))

(assert (= (and bm!6937 (not c!11726)) b!76608))

(assert (= (and d!18217 res!40278) b!76612))

(assert (= (and b!76612 res!40277) b!76609))

(declare-fun m!76367 () Bool)

(assert (=> b!76609 m!76367))

(declare-fun m!76369 () Bool)

(assert (=> b!76607 m!76369))

(declare-fun m!76371 () Bool)

(assert (=> b!76612 m!76371))

(declare-fun m!76373 () Bool)

(assert (=> bm!6937 m!76373))

(declare-fun m!76375 () Bool)

(assert (=> d!18217 m!76375))

(declare-fun m!76377 () Bool)

(assert (=> d!18217 m!76377))

(assert (=> d!18103 d!18217))

(assert (=> b!76327 d!18171))

(declare-fun d!18219 () Bool)

(assert (=> d!18219 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34653 #b00000000000000000000000000000000)))

(declare-fun lt!34832 () Unit!2198)

(declare-fun choose!13 (array!3922 (_ BitVec 64) (_ BitVec 32)) Unit!2198)

(assert (=> d!18219 (= lt!34832 (choose!13 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34653 #b00000000000000000000000000000000))))

(assert (=> d!18219 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!18219 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34653 #b00000000000000000000000000000000) lt!34832)))

(declare-fun bs!3262 () Bool)

(assert (= bs!3262 d!18219))

(assert (=> bs!3262 m!75895))

(declare-fun m!76379 () Bool)

(assert (=> bs!3262 m!76379))

(assert (=> b!76292 d!18219))

(declare-fun d!18221 () Bool)

(declare-fun res!40279 () Bool)

(declare-fun e!50025 () Bool)

(assert (=> d!18221 (=> res!40279 e!50025)))

(assert (=> d!18221 (= res!40279 (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) lt!34653))))

(assert (=> d!18221 (= (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34653 #b00000000000000000000000000000000) e!50025)))

(declare-fun b!76615 () Bool)

(declare-fun e!50026 () Bool)

(assert (=> b!76615 (= e!50025 e!50026)))

(declare-fun res!40280 () Bool)

(assert (=> b!76615 (=> (not res!40280) (not e!50026))))

(assert (=> b!76615 (= res!40280 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76616 () Bool)

(assert (=> b!76616 (= e!50026 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) lt!34653 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!18221 (not res!40279)) b!76615))

(assert (= (and b!76615 res!40280) b!76616))

(assert (=> d!18221 m!75765))

(declare-fun m!76381 () Bool)

(assert (=> b!76616 m!76381))

(assert (=> b!76292 d!18221))

(declare-fun b!76617 () Bool)

(declare-fun e!50028 () SeekEntryResult!248)

(declare-fun lt!34834 () SeekEntryResult!248)

(assert (=> b!76617 (= e!50028 (Found!248 (index!3127 lt!34834)))))

(declare-fun b!76618 () Bool)

(declare-fun e!50027 () SeekEntryResult!248)

(assert (=> b!76618 (= e!50027 (MissingZero!248 (index!3127 lt!34834)))))

(declare-fun b!76619 () Bool)

(declare-fun c!11729 () Bool)

(declare-fun lt!34835 () (_ BitVec 64))

(assert (=> b!76619 (= c!11729 (= lt!34835 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76619 (= e!50028 e!50027)))

(declare-fun b!76620 () Bool)

(assert (=> b!76620 (= e!50027 (seekKeyOrZeroReturnVacant!0 (x!11397 lt!34834) (index!3127 lt!34834) (index!3127 lt!34834) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!76621 () Bool)

(declare-fun e!50029 () SeekEntryResult!248)

(assert (=> b!76621 (= e!50029 Undefined!248)))

(declare-fun d!18223 () Bool)

(declare-fun lt!34833 () SeekEntryResult!248)

(assert (=> d!18223 (and (or ((_ is Undefined!248) lt!34833) (not ((_ is Found!248) lt!34833)) (and (bvsge (index!3126 lt!34833) #b00000000000000000000000000000000) (bvslt (index!3126 lt!34833) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))) (or ((_ is Undefined!248) lt!34833) ((_ is Found!248) lt!34833) (not ((_ is MissingZero!248) lt!34833)) (and (bvsge (index!3125 lt!34833) #b00000000000000000000000000000000) (bvslt (index!3125 lt!34833) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))) (or ((_ is Undefined!248) lt!34833) ((_ is Found!248) lt!34833) ((_ is MissingZero!248) lt!34833) (not ((_ is MissingVacant!248) lt!34833)) (and (bvsge (index!3128 lt!34833) #b00000000000000000000000000000000) (bvslt (index!3128 lt!34833) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))) (or ((_ is Undefined!248) lt!34833) (ite ((_ is Found!248) lt!34833) (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (index!3126 lt!34833)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!248) lt!34833) (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (index!3125 lt!34833)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!248) lt!34833) (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (index!3128 lt!34833)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18223 (= lt!34833 e!50029)))

(declare-fun c!11727 () Bool)

(assert (=> d!18223 (= c!11727 (and ((_ is Intermediate!248) lt!34834) (undefined!1060 lt!34834)))))

(assert (=> d!18223 (= lt!34834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) (mask!6230 (v!2562 (underlying!270 thiss!992)))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))))))

(assert (=> d!18223 (validMask!0 (mask!6230 (v!2562 (underlying!270 thiss!992))))))

(assert (=> d!18223 (= (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))) lt!34833)))

(declare-fun b!76622 () Bool)

(assert (=> b!76622 (= e!50029 e!50028)))

(assert (=> b!76622 (= lt!34835 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (index!3127 lt!34834)))))

(declare-fun c!11728 () Bool)

(assert (=> b!76622 (= c!11728 (= lt!34835 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!18223 c!11727) b!76621))

(assert (= (and d!18223 (not c!11727)) b!76622))

(assert (= (and b!76622 c!11728) b!76617))

(assert (= (and b!76622 (not c!11728)) b!76619))

(assert (= (and b!76619 c!11729) b!76618))

(assert (= (and b!76619 (not c!11729)) b!76620))

(assert (=> b!76620 m!75765))

(declare-fun m!76383 () Bool)

(assert (=> b!76620 m!76383))

(declare-fun m!76385 () Bool)

(assert (=> d!18223 m!76385))

(assert (=> d!18223 m!75687))

(declare-fun m!76387 () Bool)

(assert (=> d!18223 m!76387))

(assert (=> d!18223 m!75765))

(declare-fun m!76389 () Bool)

(assert (=> d!18223 m!76389))

(assert (=> d!18223 m!75765))

(assert (=> d!18223 m!76387))

(declare-fun m!76391 () Bool)

(assert (=> d!18223 m!76391))

(declare-fun m!76393 () Bool)

(assert (=> d!18223 m!76393))

(declare-fun m!76395 () Bool)

(assert (=> b!76622 m!76395))

(assert (=> b!76292 d!18223))

(declare-fun d!18225 () Bool)

(declare-fun e!50031 () Bool)

(assert (=> d!18225 e!50031))

(declare-fun res!40281 () Bool)

(assert (=> d!18225 (=> res!40281 e!50031)))

(declare-fun lt!34839 () Bool)

(assert (=> d!18225 (= res!40281 (not lt!34839))))

(declare-fun lt!34837 () Bool)

(assert (=> d!18225 (= lt!34839 lt!34837)))

(declare-fun lt!34838 () Unit!2198)

(declare-fun e!50030 () Unit!2198)

(assert (=> d!18225 (= lt!34838 e!50030)))

(declare-fun c!11730 () Bool)

(assert (=> d!18225 (= c!11730 lt!34837)))

(assert (=> d!18225 (= lt!34837 (containsKey!138 (toList!739 lt!34630) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!18225 (= (contains!735 lt!34630 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!34839)))

(declare-fun b!76623 () Bool)

(declare-fun lt!34836 () Unit!2198)

(assert (=> b!76623 (= e!50030 lt!34836)))

(assert (=> b!76623 (= lt!34836 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34630) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!76623 (isDefined!88 (getValueByKey!134 (toList!739 lt!34630) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!76624 () Bool)

(declare-fun Unit!2217 () Unit!2198)

(assert (=> b!76624 (= e!50030 Unit!2217)))

(declare-fun b!76625 () Bool)

(assert (=> b!76625 (= e!50031 (isDefined!88 (getValueByKey!134 (toList!739 lt!34630) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!18225 c!11730) b!76623))

(assert (= (and d!18225 (not c!11730)) b!76624))

(assert (= (and d!18225 (not res!40281)) b!76625))

(assert (=> d!18225 m!75841))

(declare-fun m!76397 () Bool)

(assert (=> d!18225 m!76397))

(assert (=> b!76623 m!75841))

(declare-fun m!76399 () Bool)

(assert (=> b!76623 m!76399))

(assert (=> b!76623 m!75841))

(assert (=> b!76623 m!76161))

(assert (=> b!76623 m!76161))

(declare-fun m!76401 () Bool)

(assert (=> b!76623 m!76401))

(assert (=> b!76625 m!75841))

(assert (=> b!76625 m!76161))

(assert (=> b!76625 m!76161))

(assert (=> b!76625 m!76401))

(assert (=> b!76276 d!18225))

(assert (=> b!76324 d!18171))

(declare-fun d!18227 () Bool)

(declare-fun e!50033 () Bool)

(assert (=> d!18227 e!50033))

(declare-fun res!40282 () Bool)

(assert (=> d!18227 (=> res!40282 e!50033)))

(declare-fun lt!34843 () Bool)

(assert (=> d!18227 (= res!40282 (not lt!34843))))

(declare-fun lt!34841 () Bool)

(assert (=> d!18227 (= lt!34843 lt!34841)))

(declare-fun lt!34842 () Unit!2198)

(declare-fun e!50032 () Unit!2198)

(assert (=> d!18227 (= lt!34842 e!50032)))

(declare-fun c!11731 () Bool)

(assert (=> d!18227 (= c!11731 lt!34841)))

(assert (=> d!18227 (= lt!34841 (containsKey!138 (toList!739 lt!34684) (_1!1089 lt!34443)))))

(assert (=> d!18227 (= (contains!735 lt!34684 (_1!1089 lt!34443)) lt!34843)))

(declare-fun b!76626 () Bool)

(declare-fun lt!34840 () Unit!2198)

(assert (=> b!76626 (= e!50032 lt!34840)))

(assert (=> b!76626 (= lt!34840 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34684) (_1!1089 lt!34443)))))

(assert (=> b!76626 (isDefined!88 (getValueByKey!134 (toList!739 lt!34684) (_1!1089 lt!34443)))))

(declare-fun b!76627 () Bool)

(declare-fun Unit!2218 () Unit!2198)

(assert (=> b!76627 (= e!50032 Unit!2218)))

(declare-fun b!76628 () Bool)

(assert (=> b!76628 (= e!50033 (isDefined!88 (getValueByKey!134 (toList!739 lt!34684) (_1!1089 lt!34443))))))

(assert (= (and d!18227 c!11731) b!76626))

(assert (= (and d!18227 (not c!11731)) b!76627))

(assert (= (and d!18227 (not res!40282)) b!76628))

(declare-fun m!76403 () Bool)

(assert (=> d!18227 m!76403))

(declare-fun m!76405 () Bool)

(assert (=> b!76626 m!76405))

(assert (=> b!76626 m!75929))

(assert (=> b!76626 m!75929))

(declare-fun m!76407 () Bool)

(assert (=> b!76626 m!76407))

(assert (=> b!76628 m!75929))

(assert (=> b!76628 m!75929))

(assert (=> b!76628 m!76407))

(assert (=> d!18099 d!18227))

(declare-fun d!18229 () Bool)

(declare-fun c!11732 () Bool)

(assert (=> d!18229 (= c!11732 (and ((_ is Cons!1511) lt!34683) (= (_1!1089 (h!2099 lt!34683)) (_1!1089 lt!34443))))))

(declare-fun e!50034 () Option!140)

(assert (=> d!18229 (= (getValueByKey!134 lt!34683 (_1!1089 lt!34443)) e!50034)))

(declare-fun b!76631 () Bool)

(declare-fun e!50035 () Option!140)

(assert (=> b!76631 (= e!50035 (getValueByKey!134 (t!5113 lt!34683) (_1!1089 lt!34443)))))

(declare-fun b!76629 () Bool)

(assert (=> b!76629 (= e!50034 (Some!139 (_2!1089 (h!2099 lt!34683))))))

(declare-fun b!76630 () Bool)

(assert (=> b!76630 (= e!50034 e!50035)))

(declare-fun c!11733 () Bool)

(assert (=> b!76630 (= c!11733 (and ((_ is Cons!1511) lt!34683) (not (= (_1!1089 (h!2099 lt!34683)) (_1!1089 lt!34443)))))))

(declare-fun b!76632 () Bool)

(assert (=> b!76632 (= e!50035 None!138)))

(assert (= (and d!18229 c!11732) b!76629))

(assert (= (and d!18229 (not c!11732)) b!76630))

(assert (= (and b!76630 c!11733) b!76631))

(assert (= (and b!76630 (not c!11733)) b!76632))

(declare-fun m!76409 () Bool)

(assert (=> b!76631 m!76409))

(assert (=> d!18099 d!18229))

(declare-fun d!18231 () Bool)

(assert (=> d!18231 (= (getValueByKey!134 lt!34683 (_1!1089 lt!34443)) (Some!139 (_2!1089 lt!34443)))))

(declare-fun lt!34844 () Unit!2198)

(assert (=> d!18231 (= lt!34844 (choose!450 lt!34683 (_1!1089 lt!34443) (_2!1089 lt!34443)))))

(declare-fun e!50036 () Bool)

(assert (=> d!18231 e!50036))

(declare-fun res!40283 () Bool)

(assert (=> d!18231 (=> (not res!40283) (not e!50036))))

(assert (=> d!18231 (= res!40283 (isStrictlySorted!289 lt!34683))))

(assert (=> d!18231 (= (lemmaContainsTupThenGetReturnValue!53 lt!34683 (_1!1089 lt!34443) (_2!1089 lt!34443)) lt!34844)))

(declare-fun b!76633 () Bool)

(declare-fun res!40284 () Bool)

(assert (=> b!76633 (=> (not res!40284) (not e!50036))))

(assert (=> b!76633 (= res!40284 (containsKey!138 lt!34683 (_1!1089 lt!34443)))))

(declare-fun b!76634 () Bool)

(assert (=> b!76634 (= e!50036 (contains!738 lt!34683 (tuple2!2159 (_1!1089 lt!34443) (_2!1089 lt!34443))))))

(assert (= (and d!18231 res!40283) b!76633))

(assert (= (and b!76633 res!40284) b!76634))

(assert (=> d!18231 m!75923))

(declare-fun m!76411 () Bool)

(assert (=> d!18231 m!76411))

(declare-fun m!76413 () Bool)

(assert (=> d!18231 m!76413))

(declare-fun m!76415 () Bool)

(assert (=> b!76633 m!76415))

(declare-fun m!76417 () Bool)

(assert (=> b!76634 m!76417))

(assert (=> d!18099 d!18231))

(declare-fun b!76635 () Bool)

(declare-fun e!50040 () List!1515)

(declare-fun call!6943 () List!1515)

(assert (=> b!76635 (= e!50040 call!6943)))

(declare-fun b!76636 () Bool)

(declare-fun c!11735 () Bool)

(assert (=> b!76636 (= c!11735 (and ((_ is Cons!1511) (toList!739 (+!102 lt!34442 lt!34448))) (bvsgt (_1!1089 (h!2099 (toList!739 (+!102 lt!34442 lt!34448)))) (_1!1089 lt!34443))))))

(declare-fun e!50038 () List!1515)

(declare-fun e!50039 () List!1515)

(assert (=> b!76636 (= e!50038 e!50039)))

(declare-fun b!76637 () Bool)

(declare-fun e!50037 () List!1515)

(assert (=> b!76637 (= e!50037 (insertStrictlySorted!55 (t!5113 (toList!739 (+!102 lt!34442 lt!34448))) (_1!1089 lt!34443) (_2!1089 lt!34443)))))

(declare-fun bm!6938 () Bool)

(declare-fun call!6942 () List!1515)

(declare-fun call!6941 () List!1515)

(assert (=> bm!6938 (= call!6942 call!6941)))

(declare-fun c!11736 () Bool)

(declare-fun b!76638 () Bool)

(assert (=> b!76638 (= e!50037 (ite c!11736 (t!5113 (toList!739 (+!102 lt!34442 lt!34448))) (ite c!11735 (Cons!1511 (h!2099 (toList!739 (+!102 lt!34442 lt!34448))) (t!5113 (toList!739 (+!102 lt!34442 lt!34448)))) Nil!1512)))))

(declare-fun b!76639 () Bool)

(declare-fun e!50041 () Bool)

(declare-fun lt!34845 () List!1515)

(assert (=> b!76639 (= e!50041 (contains!738 lt!34845 (tuple2!2159 (_1!1089 lt!34443) (_2!1089 lt!34443))))))

(declare-fun b!76640 () Bool)

(assert (=> b!76640 (= e!50039 call!6942)))

(declare-fun bm!6940 () Bool)

(declare-fun c!11734 () Bool)

(assert (=> bm!6940 (= call!6943 ($colon$colon!67 e!50037 (ite c!11734 (h!2099 (toList!739 (+!102 lt!34442 lt!34448))) (tuple2!2159 (_1!1089 lt!34443) (_2!1089 lt!34443)))))))

(declare-fun c!11737 () Bool)

(assert (=> bm!6940 (= c!11737 c!11734)))

(declare-fun b!76641 () Bool)

(assert (=> b!76641 (= e!50040 e!50038)))

(assert (=> b!76641 (= c!11736 (and ((_ is Cons!1511) (toList!739 (+!102 lt!34442 lt!34448))) (= (_1!1089 (h!2099 (toList!739 (+!102 lt!34442 lt!34448)))) (_1!1089 lt!34443))))))

(declare-fun b!76642 () Bool)

(declare-fun res!40285 () Bool)

(assert (=> b!76642 (=> (not res!40285) (not e!50041))))

(assert (=> b!76642 (= res!40285 (containsKey!138 lt!34845 (_1!1089 lt!34443)))))

(declare-fun b!76643 () Bool)

(assert (=> b!76643 (= e!50038 call!6941)))

(declare-fun b!76644 () Bool)

(assert (=> b!76644 (= e!50039 call!6942)))

(declare-fun d!18233 () Bool)

(assert (=> d!18233 e!50041))

(declare-fun res!40286 () Bool)

(assert (=> d!18233 (=> (not res!40286) (not e!50041))))

(assert (=> d!18233 (= res!40286 (isStrictlySorted!289 lt!34845))))

(assert (=> d!18233 (= lt!34845 e!50040)))

(assert (=> d!18233 (= c!11734 (and ((_ is Cons!1511) (toList!739 (+!102 lt!34442 lt!34448))) (bvslt (_1!1089 (h!2099 (toList!739 (+!102 lt!34442 lt!34448)))) (_1!1089 lt!34443))))))

(assert (=> d!18233 (isStrictlySorted!289 (toList!739 (+!102 lt!34442 lt!34448)))))

(assert (=> d!18233 (= (insertStrictlySorted!55 (toList!739 (+!102 lt!34442 lt!34448)) (_1!1089 lt!34443) (_2!1089 lt!34443)) lt!34845)))

(declare-fun bm!6939 () Bool)

(assert (=> bm!6939 (= call!6941 call!6943)))

(assert (= (and d!18233 c!11734) b!76635))

(assert (= (and d!18233 (not c!11734)) b!76641))

(assert (= (and b!76641 c!11736) b!76643))

(assert (= (and b!76641 (not c!11736)) b!76636))

(assert (= (and b!76636 c!11735) b!76640))

(assert (= (and b!76636 (not c!11735)) b!76644))

(assert (= (or b!76640 b!76644) bm!6938))

(assert (= (or b!76643 bm!6938) bm!6939))

(assert (= (or b!76635 bm!6939) bm!6940))

(assert (= (and bm!6940 c!11737) b!76637))

(assert (= (and bm!6940 (not c!11737)) b!76638))

(assert (= (and d!18233 res!40286) b!76642))

(assert (= (and b!76642 res!40285) b!76639))

(declare-fun m!76419 () Bool)

(assert (=> b!76639 m!76419))

(declare-fun m!76421 () Bool)

(assert (=> b!76637 m!76421))

(declare-fun m!76423 () Bool)

(assert (=> b!76642 m!76423))

(declare-fun m!76425 () Bool)

(assert (=> bm!6940 m!76425))

(declare-fun m!76427 () Bool)

(assert (=> d!18233 m!76427))

(declare-fun m!76429 () Bool)

(assert (=> d!18233 m!76429))

(assert (=> d!18099 d!18233))

(declare-fun d!18235 () Bool)

(declare-fun e!50042 () Bool)

(assert (=> d!18235 e!50042))

(declare-fun res!40288 () Bool)

(assert (=> d!18235 (=> (not res!40288) (not e!50042))))

(declare-fun lt!34847 () ListLongMap!1447)

(assert (=> d!18235 (= res!40288 (contains!735 lt!34847 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(declare-fun lt!34846 () List!1515)

(assert (=> d!18235 (= lt!34847 (ListLongMap!1448 lt!34846))))

(declare-fun lt!34848 () Unit!2198)

(declare-fun lt!34849 () Unit!2198)

(assert (=> d!18235 (= lt!34848 lt!34849)))

(assert (=> d!18235 (= (getValueByKey!134 lt!34846 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (Some!139 (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18235 (= lt!34849 (lemmaContainsTupThenGetReturnValue!53 lt!34846 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18235 (= lt!34846 (insertStrictlySorted!55 (toList!739 call!6875) (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (=> d!18235 (= (+!102 call!6875 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) lt!34847)))

(declare-fun b!76645 () Bool)

(declare-fun res!40287 () Bool)

(assert (=> b!76645 (=> (not res!40287) (not e!50042))))

(assert (=> b!76645 (= res!40287 (= (getValueByKey!134 (toList!739 lt!34847) (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (Some!139 (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))))

(declare-fun b!76646 () Bool)

(assert (=> b!76646 (= e!50042 (contains!738 (toList!739 lt!34847) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))

(assert (= (and d!18235 res!40288) b!76645))

(assert (= (and b!76645 res!40287) b!76646))

(declare-fun m!76431 () Bool)

(assert (=> d!18235 m!76431))

(declare-fun m!76433 () Bool)

(assert (=> d!18235 m!76433))

(declare-fun m!76435 () Bool)

(assert (=> d!18235 m!76435))

(declare-fun m!76437 () Bool)

(assert (=> d!18235 m!76437))

(declare-fun m!76439 () Bool)

(assert (=> b!76645 m!76439))

(declare-fun m!76441 () Bool)

(assert (=> b!76646 m!76441))

(assert (=> b!76205 d!18235))

(assert (=> b!76369 d!18119))

(declare-fun d!18237 () Bool)

(declare-fun e!50044 () Bool)

(assert (=> d!18237 e!50044))

(declare-fun res!40289 () Bool)

(assert (=> d!18237 (=> res!40289 e!50044)))

(declare-fun lt!34853 () Bool)

(assert (=> d!18237 (= res!40289 (not lt!34853))))

(declare-fun lt!34851 () Bool)

(assert (=> d!18237 (= lt!34853 lt!34851)))

(declare-fun lt!34852 () Unit!2198)

(declare-fun e!50043 () Unit!2198)

(assert (=> d!18237 (= lt!34852 e!50043)))

(declare-fun c!11738 () Bool)

(assert (=> d!18237 (= c!11738 lt!34851)))

(assert (=> d!18237 (= lt!34851 (containsKey!138 (toList!739 call!6857) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> d!18237 (= (contains!735 call!6857 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) lt!34853)))

(declare-fun b!76647 () Bool)

(declare-fun lt!34850 () Unit!2198)

(assert (=> b!76647 (= e!50043 lt!34850)))

(assert (=> b!76647 (= lt!34850 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 call!6857) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> b!76647 (isDefined!88 (getValueByKey!134 (toList!739 call!6857) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76648 () Bool)

(declare-fun Unit!2219 () Unit!2198)

(assert (=> b!76648 (= e!50043 Unit!2219)))

(declare-fun b!76649 () Bool)

(assert (=> b!76649 (= e!50044 (isDefined!88 (getValueByKey!134 (toList!739 call!6857) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))))))

(assert (= (and d!18237 c!11738) b!76647))

(assert (= (and d!18237 (not c!11738)) b!76648))

(assert (= (and d!18237 (not res!40289)) b!76649))

(assert (=> d!18237 m!75655))

(declare-fun m!76443 () Bool)

(assert (=> d!18237 m!76443))

(assert (=> b!76647 m!75655))

(declare-fun m!76445 () Bool)

(assert (=> b!76647 m!76445))

(assert (=> b!76647 m!75655))

(declare-fun m!76447 () Bool)

(assert (=> b!76647 m!76447))

(assert (=> b!76647 m!76447))

(declare-fun m!76449 () Bool)

(assert (=> b!76647 m!76449))

(assert (=> b!76649 m!75655))

(assert (=> b!76649 m!76447))

(assert (=> b!76649 m!76447))

(assert (=> b!76649 m!76449))

(assert (=> b!76192 d!18237))

(declare-fun d!18239 () Bool)

(declare-fun res!40290 () Bool)

(declare-fun e!50045 () Bool)

(assert (=> d!18239 (=> (not res!40290) (not e!50045))))

(assert (=> d!18239 (= res!40290 (simpleValid!52 (v!2562 (underlying!270 thiss!992))))))

(assert (=> d!18239 (= (valid!299 (v!2562 (underlying!270 thiss!992))) e!50045)))

(declare-fun b!76650 () Bool)

(declare-fun res!40291 () Bool)

(assert (=> b!76650 (=> (not res!40291) (not e!50045))))

(assert (=> b!76650 (= res!40291 (= (arrayCountValidKeys!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000 (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))) (_size!403 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!76651 () Bool)

(declare-fun res!40292 () Bool)

(assert (=> b!76651 (=> (not res!40292) (not e!50045))))

(assert (=> b!76651 (= res!40292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!76652 () Bool)

(assert (=> b!76652 (= e!50045 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000 Nil!1513))))

(assert (= (and d!18239 res!40290) b!76650))

(assert (= (and b!76650 res!40291) b!76651))

(assert (= (and b!76651 res!40292) b!76652))

(declare-fun m!76451 () Bool)

(assert (=> d!18239 m!76451))

(declare-fun m!76453 () Bool)

(assert (=> b!76650 m!76453))

(assert (=> b!76651 m!75663))

(assert (=> b!76652 m!75681))

(assert (=> d!18081 d!18239))

(declare-fun b!76653 () Bool)

(declare-fun e!50051 () Bool)

(declare-fun lt!34861 () ListLongMap!1447)

(assert (=> b!76653 (= e!50051 (= (apply!77 lt!34861 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)) (get!1168 (select (arr!1871 (_values!2230 newMap!16)) #b00000000000000000000000000000000) (dynLambda!338 (defaultEntry!2247 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!76653 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2111 (_values!2230 newMap!16))))))

(assert (=> b!76653 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76654 () Bool)

(declare-fun e!50049 () Bool)

(assert (=> b!76654 (= e!50049 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!76655 () Bool)

(declare-fun e!50056 () Bool)

(declare-fun e!50050 () Bool)

(assert (=> b!76655 (= e!50056 e!50050)))

(declare-fun c!11739 () Bool)

(assert (=> b!76655 (= c!11739 (not (= (bvand (extraKeys!2100 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!76656 () Bool)

(declare-fun e!50057 () Unit!2198)

(declare-fun lt!34875 () Unit!2198)

(assert (=> b!76656 (= e!50057 lt!34875)))

(declare-fun lt!34873 () ListLongMap!1447)

(assert (=> b!76656 (= lt!34873 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34857 () (_ BitVec 64))

(assert (=> b!76656 (= lt!34857 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34859 () (_ BitVec 64))

(assert (=> b!76656 (= lt!34859 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34862 () Unit!2198)

(assert (=> b!76656 (= lt!34862 (addStillContains!53 lt!34873 lt!34857 (zeroValue!2146 newMap!16) lt!34859))))

(assert (=> b!76656 (contains!735 (+!102 lt!34873 (tuple2!2159 lt!34857 (zeroValue!2146 newMap!16))) lt!34859)))

(declare-fun lt!34855 () Unit!2198)

(assert (=> b!76656 (= lt!34855 lt!34862)))

(declare-fun lt!34869 () ListLongMap!1447)

(assert (=> b!76656 (= lt!34869 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34870 () (_ BitVec 64))

(assert (=> b!76656 (= lt!34870 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34863 () (_ BitVec 64))

(assert (=> b!76656 (= lt!34863 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34854 () Unit!2198)

(assert (=> b!76656 (= lt!34854 (addApplyDifferent!53 lt!34869 lt!34870 (minValue!2146 newMap!16) lt!34863))))

(assert (=> b!76656 (= (apply!77 (+!102 lt!34869 (tuple2!2159 lt!34870 (minValue!2146 newMap!16))) lt!34863) (apply!77 lt!34869 lt!34863))))

(declare-fun lt!34868 () Unit!2198)

(assert (=> b!76656 (= lt!34868 lt!34854)))

(declare-fun lt!34865 () ListLongMap!1447)

(assert (=> b!76656 (= lt!34865 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34872 () (_ BitVec 64))

(assert (=> b!76656 (= lt!34872 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34867 () (_ BitVec 64))

(assert (=> b!76656 (= lt!34867 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34871 () Unit!2198)

(assert (=> b!76656 (= lt!34871 (addApplyDifferent!53 lt!34865 lt!34872 (zeroValue!2146 newMap!16) lt!34867))))

(assert (=> b!76656 (= (apply!77 (+!102 lt!34865 (tuple2!2159 lt!34872 (zeroValue!2146 newMap!16))) lt!34867) (apply!77 lt!34865 lt!34867))))

(declare-fun lt!34866 () Unit!2198)

(assert (=> b!76656 (= lt!34866 lt!34871)))

(declare-fun lt!34858 () ListLongMap!1447)

(assert (=> b!76656 (= lt!34858 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34860 () (_ BitVec 64))

(assert (=> b!76656 (= lt!34860 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34864 () (_ BitVec 64))

(assert (=> b!76656 (= lt!34864 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!76656 (= lt!34875 (addApplyDifferent!53 lt!34858 lt!34860 (minValue!2146 newMap!16) lt!34864))))

(assert (=> b!76656 (= (apply!77 (+!102 lt!34858 (tuple2!2159 lt!34860 (minValue!2146 newMap!16))) lt!34864) (apply!77 lt!34858 lt!34864))))

(declare-fun bm!6941 () Bool)

(declare-fun call!6949 () ListLongMap!1447)

(declare-fun call!6946 () ListLongMap!1447)

(assert (=> bm!6941 (= call!6949 call!6946)))

(declare-fun b!76658 () Bool)

(declare-fun Unit!2220 () Unit!2198)

(assert (=> b!76658 (= e!50057 Unit!2220)))

(declare-fun c!11741 () Bool)

(declare-fun bm!6942 () Bool)

(declare-fun call!6950 () ListLongMap!1447)

(declare-fun c!11744 () Bool)

(declare-fun call!6944 () ListLongMap!1447)

(assert (=> bm!6942 (= call!6944 (+!102 (ite c!11744 call!6946 (ite c!11741 call!6949 call!6950)) (ite (or c!11744 c!11741) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2146 newMap!16)) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 newMap!16)))))))

(declare-fun bm!6943 () Bool)

(declare-fun call!6947 () Bool)

(assert (=> bm!6943 (= call!6947 (contains!735 lt!34861 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76659 () Bool)

(declare-fun e!50055 () ListLongMap!1447)

(assert (=> b!76659 (= e!50055 call!6950)))

(declare-fun b!76660 () Bool)

(declare-fun e!50054 () Bool)

(assert (=> b!76660 (= e!50054 (= (apply!77 lt!34861 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2146 newMap!16)))))

(declare-fun b!76661 () Bool)

(declare-fun e!50048 () ListLongMap!1447)

(declare-fun call!6948 () ListLongMap!1447)

(assert (=> b!76661 (= e!50048 call!6948)))

(declare-fun d!18241 () Bool)

(assert (=> d!18241 e!50056))

(declare-fun res!40296 () Bool)

(assert (=> d!18241 (=> (not res!40296) (not e!50056))))

(assert (=> d!18241 (= res!40296 (or (bvsge #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))))

(declare-fun lt!34856 () ListLongMap!1447)

(assert (=> d!18241 (= lt!34861 lt!34856)))

(declare-fun lt!34874 () Unit!2198)

(assert (=> d!18241 (= lt!34874 e!50057)))

(declare-fun c!11740 () Bool)

(declare-fun e!50052 () Bool)

(assert (=> d!18241 (= c!11740 e!50052)))

(declare-fun res!40298 () Bool)

(assert (=> d!18241 (=> (not res!40298) (not e!50052))))

(assert (=> d!18241 (= res!40298 (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun e!50053 () ListLongMap!1447)

(assert (=> d!18241 (= lt!34856 e!50053)))

(assert (=> d!18241 (= c!11744 (and (not (= (bvand (extraKeys!2100 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2100 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!18241 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18241 (= (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) lt!34861)))

(declare-fun b!76657 () Bool)

(assert (=> b!76657 (= e!50055 call!6948)))

(declare-fun bm!6944 () Bool)

(declare-fun call!6945 () Bool)

(assert (=> bm!6944 (= call!6945 (contains!735 lt!34861 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76662 () Bool)

(declare-fun c!11743 () Bool)

(assert (=> b!76662 (= c!11743 (and (not (= (bvand (extraKeys!2100 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2100 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!76662 (= e!50048 e!50055)))

(declare-fun b!76663 () Bool)

(assert (=> b!76663 (= e!50050 (not call!6945))))

(declare-fun b!76664 () Bool)

(declare-fun res!40300 () Bool)

(assert (=> b!76664 (=> (not res!40300) (not e!50056))))

(declare-fun e!50047 () Bool)

(assert (=> b!76664 (= res!40300 e!50047)))

(declare-fun c!11742 () Bool)

(assert (=> b!76664 (= c!11742 (not (= (bvand (extraKeys!2100 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!76665 () Bool)

(declare-fun e!50046 () Bool)

(assert (=> b!76665 (= e!50046 (= (apply!77 lt!34861 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2146 newMap!16)))))

(declare-fun b!76666 () Bool)

(declare-fun e!50058 () Bool)

(assert (=> b!76666 (= e!50058 e!50051)))

(declare-fun res!40295 () Bool)

(assert (=> b!76666 (=> (not res!40295) (not e!50051))))

(assert (=> b!76666 (= res!40295 (contains!735 lt!34861 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!76666 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76667 () Bool)

(assert (=> b!76667 (= e!50053 (+!102 call!6944 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 newMap!16))))))

(declare-fun bm!6945 () Bool)

(assert (=> bm!6945 (= call!6948 call!6944)))

(declare-fun b!76668 () Bool)

(declare-fun res!40299 () Bool)

(assert (=> b!76668 (=> (not res!40299) (not e!50056))))

(assert (=> b!76668 (= res!40299 e!50058)))

(declare-fun res!40294 () Bool)

(assert (=> b!76668 (=> res!40294 e!50058)))

(assert (=> b!76668 (= res!40294 (not e!50049))))

(declare-fun res!40293 () Bool)

(assert (=> b!76668 (=> (not res!40293) (not e!50049))))

(assert (=> b!76668 (= res!40293 (bvslt #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76669 () Bool)

(assert (=> b!76669 (= e!50047 (not call!6947))))

(declare-fun bm!6946 () Bool)

(assert (=> bm!6946 (= call!6946 (getCurrentListMapNoExtraKeys!66 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun b!76670 () Bool)

(assert (=> b!76670 (= e!50052 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!76671 () Bool)

(assert (=> b!76671 (= e!50047 e!50054)))

(declare-fun res!40301 () Bool)

(assert (=> b!76671 (= res!40301 call!6947)))

(assert (=> b!76671 (=> (not res!40301) (not e!50054))))

(declare-fun bm!6947 () Bool)

(assert (=> bm!6947 (= call!6950 call!6949)))

(declare-fun b!76672 () Bool)

(assert (=> b!76672 (= e!50053 e!50048)))

(assert (=> b!76672 (= c!11741 (and (not (= (bvand (extraKeys!2100 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2100 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!76673 () Bool)

(assert (=> b!76673 (= e!50050 e!50046)))

(declare-fun res!40297 () Bool)

(assert (=> b!76673 (= res!40297 call!6945)))

(assert (=> b!76673 (=> (not res!40297) (not e!50046))))

(assert (= (and d!18241 c!11744) b!76667))

(assert (= (and d!18241 (not c!11744)) b!76672))

(assert (= (and b!76672 c!11741) b!76661))

(assert (= (and b!76672 (not c!11741)) b!76662))

(assert (= (and b!76662 c!11743) b!76657))

(assert (= (and b!76662 (not c!11743)) b!76659))

(assert (= (or b!76657 b!76659) bm!6947))

(assert (= (or b!76661 bm!6947) bm!6941))

(assert (= (or b!76661 b!76657) bm!6945))

(assert (= (or b!76667 bm!6941) bm!6946))

(assert (= (or b!76667 bm!6945) bm!6942))

(assert (= (and d!18241 res!40298) b!76670))

(assert (= (and d!18241 c!11740) b!76656))

(assert (= (and d!18241 (not c!11740)) b!76658))

(assert (= (and d!18241 res!40296) b!76668))

(assert (= (and b!76668 res!40293) b!76654))

(assert (= (and b!76668 (not res!40294)) b!76666))

(assert (= (and b!76666 res!40295) b!76653))

(assert (= (and b!76668 res!40299) b!76664))

(assert (= (and b!76664 c!11742) b!76671))

(assert (= (and b!76664 (not c!11742)) b!76669))

(assert (= (and b!76671 res!40301) b!76660))

(assert (= (or b!76671 b!76669) bm!6943))

(assert (= (and b!76664 res!40300) b!76655))

(assert (= (and b!76655 c!11739) b!76673))

(assert (= (and b!76655 (not c!11739)) b!76663))

(assert (= (and b!76673 res!40297) b!76665))

(assert (= (or b!76673 b!76663) bm!6944))

(declare-fun b_lambda!3445 () Bool)

(assert (=> (not b_lambda!3445) (not b!76653)))

(assert (=> b!76653 t!5122))

(declare-fun b_and!4681 () Bool)

(assert (= b_and!4677 (and (=> t!5122 result!2749) b_and!4681)))

(assert (=> b!76653 t!5124))

(declare-fun b_and!4683 () Bool)

(assert (= b_and!4679 (and (=> t!5124 result!2751) b_and!4683)))

(declare-fun m!76455 () Bool)

(assert (=> bm!6943 m!76455))

(assert (=> b!76654 m!76035))

(assert (=> b!76654 m!76035))

(assert (=> b!76654 m!76037))

(assert (=> d!18241 m!76011))

(declare-fun m!76457 () Bool)

(assert (=> bm!6942 m!76457))

(declare-fun m!76459 () Bool)

(assert (=> b!76667 m!76459))

(assert (=> b!76666 m!76035))

(assert (=> b!76666 m!76035))

(declare-fun m!76461 () Bool)

(assert (=> b!76666 m!76461))

(declare-fun m!76463 () Bool)

(assert (=> b!76656 m!76463))

(declare-fun m!76465 () Bool)

(assert (=> b!76656 m!76465))

(declare-fun m!76467 () Bool)

(assert (=> b!76656 m!76467))

(declare-fun m!76469 () Bool)

(assert (=> b!76656 m!76469))

(declare-fun m!76471 () Bool)

(assert (=> b!76656 m!76471))

(declare-fun m!76473 () Bool)

(assert (=> b!76656 m!76473))

(assert (=> b!76656 m!76035))

(declare-fun m!76475 () Bool)

(assert (=> b!76656 m!76475))

(declare-fun m!76477 () Bool)

(assert (=> b!76656 m!76477))

(assert (=> b!76656 m!76477))

(declare-fun m!76479 () Bool)

(assert (=> b!76656 m!76479))

(declare-fun m!76481 () Bool)

(assert (=> b!76656 m!76481))

(assert (=> b!76656 m!76473))

(declare-fun m!76483 () Bool)

(assert (=> b!76656 m!76483))

(assert (=> b!76656 m!76465))

(declare-fun m!76485 () Bool)

(assert (=> b!76656 m!76485))

(declare-fun m!76487 () Bool)

(assert (=> b!76656 m!76487))

(assert (=> b!76656 m!76475))

(declare-fun m!76489 () Bool)

(assert (=> b!76656 m!76489))

(declare-fun m!76491 () Bool)

(assert (=> b!76656 m!76491))

(declare-fun m!76493 () Bool)

(assert (=> b!76656 m!76493))

(declare-fun m!76495 () Bool)

(assert (=> bm!6944 m!76495))

(assert (=> b!76670 m!76035))

(assert (=> b!76670 m!76035))

(assert (=> b!76670 m!76037))

(declare-fun m!76497 () Bool)

(assert (=> b!76653 m!76497))

(assert (=> b!76653 m!76497))

(assert (=> b!76653 m!76081))

(declare-fun m!76499 () Bool)

(assert (=> b!76653 m!76499))

(assert (=> b!76653 m!76035))

(declare-fun m!76501 () Bool)

(assert (=> b!76653 m!76501))

(assert (=> b!76653 m!76081))

(assert (=> b!76653 m!76035))

(declare-fun m!76503 () Bool)

(assert (=> b!76660 m!76503))

(declare-fun m!76505 () Bool)

(assert (=> b!76665 m!76505))

(assert (=> bm!6946 m!76463))

(assert (=> b!76215 d!18241))

(declare-fun d!18243 () Bool)

(declare-fun lt!34878 () Bool)

(declare-fun content!81 (List!1516) (InoxSet (_ BitVec 64)))

(assert (=> d!18243 (= lt!34878 (select (content!81 Nil!1513) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun e!50064 () Bool)

(assert (=> d!18243 (= lt!34878 e!50064)))

(declare-fun res!40306 () Bool)

(assert (=> d!18243 (=> (not res!40306) (not e!50064))))

(assert (=> d!18243 (= res!40306 ((_ is Cons!1512) Nil!1513))))

(assert (=> d!18243 (= (contains!737 Nil!1513 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) lt!34878)))

(declare-fun b!76678 () Bool)

(declare-fun e!50063 () Bool)

(assert (=> b!76678 (= e!50064 e!50063)))

(declare-fun res!40307 () Bool)

(assert (=> b!76678 (=> res!40307 e!50063)))

(assert (=> b!76678 (= res!40307 (= (h!2100 Nil!1513) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76679 () Bool)

(assert (=> b!76679 (= e!50063 (contains!737 (t!5114 Nil!1513) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (= (and d!18243 res!40306) b!76678))

(assert (= (and b!76678 (not res!40307)) b!76679))

(declare-fun m!76507 () Bool)

(assert (=> d!18243 m!76507))

(assert (=> d!18243 m!75655))

(declare-fun m!76509 () Bool)

(assert (=> d!18243 m!76509))

(assert (=> b!76679 m!75655))

(declare-fun m!76511 () Bool)

(assert (=> b!76679 m!76511))

(assert (=> b!76374 d!18243))

(declare-fun d!18245 () Bool)

(assert (=> d!18245 (= (get!1170 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) from!355) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2561 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> b!76357 d!18245))

(assert (=> d!18117 d!18123))

(declare-fun d!18247 () Bool)

(assert (=> d!18247 (arrayNoDuplicates!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) from!355 Nil!1513)))

(assert (=> d!18247 true))

(declare-fun _$71!102 () Unit!2198)

(assert (=> d!18247 (= (choose!39 (_keys!3905 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!102)))

(declare-fun bs!3263 () Bool)

(assert (= bs!3263 d!18247))

(assert (=> bs!3263 m!75653))

(assert (=> d!18117 d!18247))

(declare-fun d!18249 () Bool)

(declare-fun e!50066 () Bool)

(assert (=> d!18249 e!50066))

(declare-fun res!40308 () Bool)

(assert (=> d!18249 (=> res!40308 e!50066)))

(declare-fun lt!34882 () Bool)

(assert (=> d!18249 (= res!40308 (not lt!34882))))

(declare-fun lt!34880 () Bool)

(assert (=> d!18249 (= lt!34882 lt!34880)))

(declare-fun lt!34881 () Unit!2198)

(declare-fun e!50065 () Unit!2198)

(assert (=> d!18249 (= lt!34881 e!50065)))

(declare-fun c!11745 () Bool)

(assert (=> d!18249 (= c!11745 lt!34880)))

(assert (=> d!18249 (= lt!34880 (containsKey!138 (toList!739 lt!34630) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!18249 (= (contains!735 lt!34630 #b1000000000000000000000000000000000000000000000000000000000000000) lt!34882)))

(declare-fun b!76680 () Bool)

(declare-fun lt!34879 () Unit!2198)

(assert (=> b!76680 (= e!50065 lt!34879)))

(assert (=> b!76680 (= lt!34879 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34630) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76680 (isDefined!88 (getValueByKey!134 (toList!739 lt!34630) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76681 () Bool)

(declare-fun Unit!2221 () Unit!2198)

(assert (=> b!76681 (= e!50065 Unit!2221)))

(declare-fun b!76682 () Bool)

(assert (=> b!76682 (= e!50066 (isDefined!88 (getValueByKey!134 (toList!739 lt!34630) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!18249 c!11745) b!76680))

(assert (= (and d!18249 (not c!11745)) b!76681))

(assert (= (and d!18249 (not res!40308)) b!76682))

(declare-fun m!76513 () Bool)

(assert (=> d!18249 m!76513))

(declare-fun m!76515 () Bool)

(assert (=> b!76680 m!76515))

(declare-fun m!76517 () Bool)

(assert (=> b!76680 m!76517))

(assert (=> b!76680 m!76517))

(declare-fun m!76519 () Bool)

(assert (=> b!76680 m!76519))

(assert (=> b!76682 m!76517))

(assert (=> b!76682 m!76517))

(assert (=> b!76682 m!76519))

(assert (=> bm!6894 d!18249))

(assert (=> d!18087 d!18241))

(declare-fun d!18251 () Bool)

(assert (=> d!18251 (= (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (and (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!76372 d!18251))

(declare-fun bm!6948 () Bool)

(declare-fun call!6951 () Bool)

(declare-fun c!11746 () Bool)

(assert (=> bm!6948 (= call!6951 (arrayNoDuplicates!0 (_keys!3905 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!11746 (Cons!1512 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000) Nil!1513) Nil!1513)))))

(declare-fun b!76684 () Bool)

(declare-fun e!50069 () Bool)

(declare-fun e!50068 () Bool)

(assert (=> b!76684 (= e!50069 e!50068)))

(assert (=> b!76684 (= c!11746 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!76685 () Bool)

(assert (=> b!76685 (= e!50068 call!6951)))

(declare-fun b!76683 () Bool)

(declare-fun e!50070 () Bool)

(assert (=> b!76683 (= e!50070 e!50069)))

(declare-fun res!40311 () Bool)

(assert (=> b!76683 (=> (not res!40311) (not e!50069))))

(declare-fun e!50067 () Bool)

(assert (=> b!76683 (= res!40311 (not e!50067))))

(declare-fun res!40310 () Bool)

(assert (=> b!76683 (=> (not res!40310) (not e!50067))))

(assert (=> b!76683 (= res!40310 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!18253 () Bool)

(declare-fun res!40309 () Bool)

(assert (=> d!18253 (=> res!40309 e!50070)))

(assert (=> d!18253 (= res!40309 (bvsge #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(assert (=> d!18253 (= (arrayNoDuplicates!0 (_keys!3905 newMap!16) #b00000000000000000000000000000000 Nil!1513) e!50070)))

(declare-fun b!76686 () Bool)

(assert (=> b!76686 (= e!50067 (contains!737 Nil!1513 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!76687 () Bool)

(assert (=> b!76687 (= e!50068 call!6951)))

(assert (= (and d!18253 (not res!40309)) b!76683))

(assert (= (and b!76683 res!40310) b!76686))

(assert (= (and b!76683 res!40311) b!76684))

(assert (= (and b!76684 c!11746) b!76687))

(assert (= (and b!76684 (not c!11746)) b!76685))

(assert (= (or b!76687 b!76685) bm!6948))

(assert (=> bm!6948 m!76035))

(declare-fun m!76521 () Bool)

(assert (=> bm!6948 m!76521))

(assert (=> b!76684 m!76035))

(assert (=> b!76684 m!76035))

(assert (=> b!76684 m!76037))

(assert (=> b!76683 m!76035))

(assert (=> b!76683 m!76035))

(assert (=> b!76683 m!76037))

(assert (=> b!76686 m!76035))

(assert (=> b!76686 m!76035))

(declare-fun m!76523 () Bool)

(assert (=> b!76686 m!76523))

(assert (=> b!76352 d!18253))

(declare-fun d!18255 () Bool)

(assert (=> d!18255 (= (inRange!0 (ite c!11616 (ite c!11606 (index!3126 lt!34555) (ite c!11617 (index!3125 lt!34574) (index!3128 lt!34574))) (ite c!11610 (index!3126 lt!34572) (ite c!11608 (index!3125 lt!34566) (index!3128 lt!34566)))) (mask!6230 newMap!16)) (and (bvsge (ite c!11616 (ite c!11606 (index!3126 lt!34555) (ite c!11617 (index!3125 lt!34574) (index!3128 lt!34574))) (ite c!11610 (index!3126 lt!34572) (ite c!11608 (index!3125 lt!34566) (index!3128 lt!34566)))) #b00000000000000000000000000000000) (bvslt (ite c!11616 (ite c!11606 (index!3126 lt!34555) (ite c!11617 (index!3125 lt!34574) (index!3128 lt!34574))) (ite c!11610 (index!3126 lt!34572) (ite c!11608 (index!3125 lt!34566) (index!3128 lt!34566)))) (bvadd (mask!6230 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!6857 d!18255))

(declare-fun d!18257 () Bool)

(declare-fun e!50072 () Bool)

(assert (=> d!18257 e!50072))

(declare-fun res!40312 () Bool)

(assert (=> d!18257 (=> res!40312 e!50072)))

(declare-fun lt!34886 () Bool)

(assert (=> d!18257 (= res!40312 (not lt!34886))))

(declare-fun lt!34884 () Bool)

(assert (=> d!18257 (= lt!34886 lt!34884)))

(declare-fun lt!34885 () Unit!2198)

(declare-fun e!50071 () Unit!2198)

(assert (=> d!18257 (= lt!34885 e!50071)))

(declare-fun c!11747 () Bool)

(assert (=> d!18257 (= c!11747 lt!34884)))

(assert (=> d!18257 (= lt!34884 (containsKey!138 (toList!739 lt!34630) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!18257 (= (contains!735 lt!34630 #b0000000000000000000000000000000000000000000000000000000000000000) lt!34886)))

(declare-fun b!76688 () Bool)

(declare-fun lt!34883 () Unit!2198)

(assert (=> b!76688 (= e!50071 lt!34883)))

(assert (=> b!76688 (= lt!34883 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34630) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76688 (isDefined!88 (getValueByKey!134 (toList!739 lt!34630) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76689 () Bool)

(declare-fun Unit!2222 () Unit!2198)

(assert (=> b!76689 (= e!50071 Unit!2222)))

(declare-fun b!76690 () Bool)

(assert (=> b!76690 (= e!50072 (isDefined!88 (getValueByKey!134 (toList!739 lt!34630) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!18257 c!11747) b!76688))

(assert (= (and d!18257 (not c!11747)) b!76689))

(assert (= (and d!18257 (not res!40312)) b!76690))

(declare-fun m!76525 () Bool)

(assert (=> d!18257 m!76525))

(declare-fun m!76527 () Bool)

(assert (=> b!76688 m!76527))

(declare-fun m!76529 () Bool)

(assert (=> b!76688 m!76529))

(assert (=> b!76688 m!76529))

(declare-fun m!76531 () Bool)

(assert (=> b!76688 m!76531))

(assert (=> b!76690 m!76529))

(assert (=> b!76690 m!76529))

(assert (=> b!76690 m!76531))

(assert (=> bm!6893 d!18257))

(declare-fun d!18259 () Bool)

(assert (=> d!18259 (= (apply!77 lt!34672 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1172 (getValueByKey!134 (toList!739 lt!34672) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3264 () Bool)

(assert (= bs!3264 d!18259))

(assert (=> bs!3264 m!75841))

(assert (=> bs!3264 m!76235))

(assert (=> bs!3264 m!76235))

(declare-fun m!76533 () Bool)

(assert (=> bs!3264 m!76533))

(assert (=> b!76320 d!18259))

(assert (=> b!76320 d!18167))

(declare-fun d!18261 () Bool)

(assert (=> d!18261 (= (apply!77 lt!34630 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1172 (getValueByKey!134 (toList!739 lt!34630) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3265 () Bool)

(assert (= bs!3265 d!18261))

(assert (=> bs!3265 m!76529))

(assert (=> bs!3265 m!76529))

(declare-fun m!76535 () Bool)

(assert (=> bs!3265 m!76535))

(assert (=> b!76270 d!18261))

(declare-fun d!18263 () Bool)

(declare-fun e!50074 () Bool)

(assert (=> d!18263 e!50074))

(declare-fun res!40313 () Bool)

(assert (=> d!18263 (=> res!40313 e!50074)))

(declare-fun lt!34890 () Bool)

(assert (=> d!18263 (= res!40313 (not lt!34890))))

(declare-fun lt!34888 () Bool)

(assert (=> d!18263 (= lt!34890 lt!34888)))

(declare-fun lt!34889 () Unit!2198)

(declare-fun e!50073 () Unit!2198)

(assert (=> d!18263 (= lt!34889 e!50073)))

(declare-fun c!11748 () Bool)

(assert (=> d!18263 (= c!11748 lt!34888)))

(assert (=> d!18263 (= lt!34888 (containsKey!138 (toList!739 lt!34672) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!18263 (= (contains!735 lt!34672 #b0000000000000000000000000000000000000000000000000000000000000000) lt!34890)))

(declare-fun b!76691 () Bool)

(declare-fun lt!34887 () Unit!2198)

(assert (=> b!76691 (= e!50073 lt!34887)))

(assert (=> b!76691 (= lt!34887 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 lt!34672) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76691 (isDefined!88 (getValueByKey!134 (toList!739 lt!34672) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76692 () Bool)

(declare-fun Unit!2223 () Unit!2198)

(assert (=> b!76692 (= e!50073 Unit!2223)))

(declare-fun b!76693 () Bool)

(assert (=> b!76693 (= e!50074 (isDefined!88 (getValueByKey!134 (toList!739 lt!34672) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!18263 c!11748) b!76691))

(assert (= (and d!18263 (not c!11748)) b!76692))

(assert (= (and d!18263 (not res!40313)) b!76693))

(declare-fun m!76537 () Bool)

(assert (=> d!18263 m!76537))

(declare-fun m!76539 () Bool)

(assert (=> b!76691 m!76539))

(declare-fun m!76541 () Bool)

(assert (=> b!76691 m!76541))

(assert (=> b!76691 m!76541))

(declare-fun m!76543 () Bool)

(assert (=> b!76691 m!76543))

(assert (=> b!76693 m!76541))

(assert (=> b!76693 m!76541))

(assert (=> b!76693 m!76543))

(assert (=> d!18097 d!18263))

(assert (=> d!18097 d!18109))

(declare-fun d!18265 () Bool)

(declare-fun e!50077 () Bool)

(assert (=> d!18265 e!50077))

(declare-fun c!11751 () Bool)

(assert (=> d!18265 (= c!11751 (and (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!18265 true))

(declare-fun _$29!96 () Unit!2198)

(assert (=> d!18265 (= (choose!447 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))) _$29!96)))

(declare-fun b!76698 () Bool)

(assert (=> b!76698 (= e!50077 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!76699 () Bool)

(assert (=> b!76699 (= e!50077 (ite (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!18265 c!11751) b!76698))

(assert (= (and d!18265 (not c!11751)) b!76699))

(assert (=> b!76698 m!75655))

(assert (=> b!76698 m!75659))

(assert (=> d!18121 d!18265))

(assert (=> d!18121 d!18109))

(declare-fun d!18267 () Bool)

(assert (=> d!18267 (= (+!102 (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) lt!34557 lt!34446 (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34893 () Unit!2198)

(declare-fun choose!451 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 V!2963 Int) Unit!2198)

(assert (=> d!18267 (= lt!34893 (choose!451 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) lt!34557 (zeroValue!2146 newMap!16) lt!34446 (minValue!2146 newMap!16) (defaultEntry!2247 newMap!16)))))

(assert (=> d!18267 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18267 (= (lemmaChangeZeroKeyThenAddPairToListMap!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) lt!34557 (zeroValue!2146 newMap!16) lt!34446 (minValue!2146 newMap!16) (defaultEntry!2247 newMap!16)) lt!34893)))

(declare-fun bs!3266 () Bool)

(assert (= bs!3266 d!18267))

(assert (=> bs!3266 m!75833))

(declare-fun m!76545 () Bool)

(assert (=> bs!3266 m!76545))

(assert (=> bs!3266 m!75833))

(assert (=> bs!3266 m!76011))

(declare-fun m!76547 () Bool)

(assert (=> bs!3266 m!76547))

(declare-fun m!76549 () Bool)

(assert (=> bs!3266 m!76549))

(assert (=> b!76203 d!18267))

(declare-fun d!18269 () Bool)

(declare-fun res!40314 () Bool)

(declare-fun e!50078 () Bool)

(assert (=> d!18269 (=> res!40314 e!50078)))

(assert (=> d!18269 (= res!40314 (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> d!18269 (= (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!50078)))

(declare-fun b!76700 () Bool)

(declare-fun e!50079 () Bool)

(assert (=> b!76700 (= e!50078 e!50079)))

(declare-fun res!40315 () Bool)

(assert (=> b!76700 (=> (not res!40315) (not e!50079))))

(assert (=> b!76700 (= res!40315 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76701 () Bool)

(assert (=> b!76701 (= e!50079 (arrayContainsKey!0 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!18269 (not res!40314)) b!76700))

(assert (= (and b!76700 res!40315) b!76701))

(declare-fun m!76551 () Bool)

(assert (=> d!18269 m!76551))

(assert (=> b!76701 m!75655))

(declare-fun m!76553 () Bool)

(assert (=> b!76701 m!76553))

(assert (=> b!76364 d!18269))

(declare-fun d!18271 () Bool)

(declare-fun c!11752 () Bool)

(assert (=> d!18271 (= c!11752 (and ((_ is Cons!1511) (toList!739 lt!34699)) (= (_1!1089 (h!2099 (toList!739 lt!34699))) (_1!1089 lt!34443))))))

(declare-fun e!50080 () Option!140)

(assert (=> d!18271 (= (getValueByKey!134 (toList!739 lt!34699) (_1!1089 lt!34443)) e!50080)))

(declare-fun b!76704 () Bool)

(declare-fun e!50081 () Option!140)

(assert (=> b!76704 (= e!50081 (getValueByKey!134 (t!5113 (toList!739 lt!34699)) (_1!1089 lt!34443)))))

(declare-fun b!76702 () Bool)

(assert (=> b!76702 (= e!50080 (Some!139 (_2!1089 (h!2099 (toList!739 lt!34699)))))))

(declare-fun b!76703 () Bool)

(assert (=> b!76703 (= e!50080 e!50081)))

(declare-fun c!11753 () Bool)

(assert (=> b!76703 (= c!11753 (and ((_ is Cons!1511) (toList!739 lt!34699)) (not (= (_1!1089 (h!2099 (toList!739 lt!34699))) (_1!1089 lt!34443)))))))

(declare-fun b!76705 () Bool)

(assert (=> b!76705 (= e!50081 None!138)))

(assert (= (and d!18271 c!11752) b!76702))

(assert (= (and d!18271 (not c!11752)) b!76703))

(assert (= (and b!76703 c!11753) b!76704))

(assert (= (and b!76703 (not c!11753)) b!76705))

(declare-fun m!76555 () Bool)

(assert (=> b!76704 m!76555))

(assert (=> b!76342 d!18271))

(declare-fun b!76740 () Bool)

(declare-fun res!40334 () Bool)

(declare-fun e!50100 () Bool)

(assert (=> b!76740 (=> (not res!40334) (not e!50100))))

(declare-fun lt!34971 () SeekEntryResult!248)

(assert (=> b!76740 (= res!40334 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3125 lt!34971)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!76741 () Bool)

(declare-fun res!40341 () Bool)

(declare-fun e!50103 () Bool)

(assert (=> b!76741 (=> (not res!40341) (not e!50103))))

(declare-fun lt!34973 () tuple2!2160)

(assert (=> b!76741 (= res!40341 (contains!735 (map!1166 (_2!1090 lt!34973)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76742 () Bool)

(declare-fun e!50104 () Bool)

(declare-fun e!50105 () Bool)

(assert (=> b!76742 (= e!50104 e!50105)))

(declare-fun res!40337 () Bool)

(declare-fun call!6960 () Bool)

(assert (=> b!76742 (= res!40337 call!6960)))

(assert (=> b!76742 (=> (not res!40337) (not e!50105))))

(declare-fun b!76743 () Bool)

(assert (=> b!76743 (= e!50103 (= (map!1166 (_2!1090 lt!34973)) (+!102 (map!1166 newMap!16) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(declare-fun b!76744 () Bool)

(declare-fun e!50102 () Unit!2198)

(declare-fun lt!34959 () Unit!2198)

(assert (=> b!76744 (= e!50102 lt!34959)))

(assert (=> b!76744 (= lt!34959 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (defaultEntry!2247 newMap!16)))))

(declare-fun call!6961 () SeekEntryResult!248)

(assert (=> b!76744 (= lt!34971 call!6961)))

(declare-fun c!11765 () Bool)

(assert (=> b!76744 (= c!11765 ((_ is MissingZero!248) lt!34971))))

(declare-fun e!50099 () Bool)

(assert (=> b!76744 e!50099))

(declare-fun b!76745 () Bool)

(declare-fun e!50098 () Unit!2198)

(declare-fun Unit!2224 () Unit!2198)

(assert (=> b!76745 (= e!50098 Unit!2224)))

(declare-fun b!76746 () Bool)

(assert (=> b!76746 (= e!50104 ((_ is Undefined!248) lt!34971))))

(declare-fun bm!6957 () Bool)

(declare-fun call!6963 () Bool)

(assert (=> bm!6957 (= call!6960 call!6963)))

(declare-fun b!76747 () Bool)

(declare-fun res!40340 () Bool)

(assert (=> b!76747 (=> (not res!40340) (not e!50103))))

(assert (=> b!76747 (= res!40340 (valid!299 (_2!1090 lt!34973)))))

(declare-fun b!76748 () Bool)

(declare-fun Unit!2225 () Unit!2198)

(assert (=> b!76748 (= e!50102 Unit!2225)))

(declare-fun lt!34965 () Unit!2198)

(assert (=> b!76748 (= lt!34965 (lemmaInListMapThenSeekEntryOrOpenFindsIt!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34963 () SeekEntryResult!248)

(assert (=> b!76748 (= lt!34963 call!6961)))

(declare-fun res!40335 () Bool)

(assert (=> b!76748 (= res!40335 ((_ is Found!248) lt!34963))))

(declare-fun e!50101 () Bool)

(assert (=> b!76748 (=> (not res!40335) (not e!50101))))

(assert (=> b!76748 e!50101))

(declare-fun lt!34955 () Unit!2198)

(assert (=> b!76748 (= lt!34955 lt!34965)))

(assert (=> b!76748 false))

(declare-fun b!76749 () Bool)

(declare-fun res!40342 () Bool)

(assert (=> b!76749 (= res!40342 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3128 lt!34971)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76749 (=> (not res!40342) (not e!50105))))

(declare-fun b!76750 () Bool)

(declare-fun call!6962 () Bool)

(assert (=> b!76750 (= e!50105 (not call!6962))))

(declare-fun b!76751 () Bool)

(declare-fun res!40339 () Bool)

(assert (=> b!76751 (= res!40339 call!6963)))

(assert (=> b!76751 (=> (not res!40339) (not e!50101))))

(declare-fun b!76752 () Bool)

(declare-fun res!40338 () Bool)

(assert (=> b!76752 (=> (not res!40338) (not e!50100))))

(assert (=> b!76752 (= res!40338 call!6960)))

(assert (=> b!76752 (= e!50099 e!50100)))

(declare-fun b!76753 () Bool)

(declare-fun Unit!2226 () Unit!2198)

(assert (=> b!76753 (= e!50098 Unit!2226)))

(declare-fun lt!34978 () Unit!2198)

(declare-fun lemmaArrayContainsKeyThenInListMap!15 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 64) (_ BitVec 32) Int) Unit!2198)

(assert (=> b!76753 (= lt!34978 (lemmaArrayContainsKeyThenInListMap!15 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(assert (=> b!76753 (contains!735 (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))))

(declare-fun lt!34954 () Unit!2198)

(assert (=> b!76753 (= lt!34954 lt!34978)))

(assert (=> b!76753 false))

(declare-fun bm!6959 () Bool)

(assert (=> bm!6959 (= call!6961 (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(declare-fun bm!6960 () Bool)

(assert (=> bm!6960 (= call!6962 (arrayContainsKey!0 (_keys!3905 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!76754 () Bool)

(assert (=> b!76754 (= e!50100 (not call!6962))))

(declare-fun b!76755 () Bool)

(declare-fun c!11763 () Bool)

(assert (=> b!76755 (= c!11763 ((_ is MissingVacant!248) lt!34971))))

(assert (=> b!76755 (= e!50099 e!50104)))

(declare-fun b!76756 () Bool)

(assert (=> b!76756 (= e!50101 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34963)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun c!11764 () Bool)

(declare-fun bm!6958 () Bool)

(assert (=> bm!6958 (= call!6963 (inRange!0 (ite c!11764 (index!3126 lt!34963) (ite c!11765 (index!3125 lt!34971) (index!3128 lt!34971))) (mask!6230 newMap!16)))))

(declare-fun d!18273 () Bool)

(assert (=> d!18273 e!50103))

(declare-fun res!40336 () Bool)

(assert (=> d!18273 (=> (not res!40336) (not e!50103))))

(assert (=> d!18273 (= res!40336 (_1!1090 lt!34973))))

(assert (=> d!18273 (= lt!34973 (tuple2!2161 true (LongMapFixedSize!709 (defaultEntry!2247 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (bvadd (_size!403 newMap!16) #b00000000000000000000000000000001) (array!3923 (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (size!2110 (_keys!3905 newMap!16))) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16))) (_vacant!403 newMap!16))))))

(declare-fun lt!34982 () Unit!2198)

(declare-fun lt!34981 () Unit!2198)

(assert (=> d!18273 (= lt!34982 lt!34981)))

(declare-fun lt!34969 () array!3922)

(declare-fun lt!34972 () array!3924)

(assert (=> d!18273 (contains!735 (getCurrentListMap!430 lt!34969 lt!34972 (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) (select (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561))))))

(assert (=> d!18273 (= lt!34981 (lemmaValidKeyInArrayIsInListMap!84 lt!34969 lt!34972 (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (defaultEntry!2247 newMap!16)))))

(assert (=> d!18273 (= lt!34972 (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16))))))

(assert (=> d!18273 (= lt!34969 (array!3923 (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (size!2110 (_keys!3905 newMap!16))))))

(declare-fun lt!34957 () Unit!2198)

(declare-fun lt!34974 () Unit!2198)

(assert (=> d!18273 (= lt!34957 lt!34974)))

(declare-fun lt!34962 () array!3922)

(assert (=> d!18273 (= (arrayCountValidKeys!0 lt!34962 (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (bvadd (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!3922 (_ BitVec 32)) Unit!2198)

(assert (=> d!18273 (= lt!34974 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!34962 (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561))))))

(assert (=> d!18273 (= lt!34962 (array!3923 (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (size!2110 (_keys!3905 newMap!16))))))

(declare-fun lt!34983 () Unit!2198)

(declare-fun lt!34968 () Unit!2198)

(assert (=> d!18273 (= lt!34983 lt!34968)))

(declare-fun lt!34980 () array!3922)

(assert (=> d!18273 (arrayContainsKey!0 lt!34980 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!18273 (= lt!34968 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!34980 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561))))))

(assert (=> d!18273 (= lt!34980 (array!3923 (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (size!2110 (_keys!3905 newMap!16))))))

(declare-fun lt!34956 () Unit!2198)

(declare-fun lt!34961 () Unit!2198)

(assert (=> d!18273 (= lt!34956 lt!34961)))

(assert (=> d!18273 (= (+!102 (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (getCurrentListMap!430 (array!3923 (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (size!2110 (_keys!3905 newMap!16))) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16))) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!15 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 32) (_ BitVec 64) V!2963 Int) Unit!2198)

(assert (=> d!18273 (= lt!34961 (lemmaAddValidKeyToArrayThenAddPairToListMap!15 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 (defaultEntry!2247 newMap!16)))))

(declare-fun lt!34967 () Unit!2198)

(declare-fun lt!34975 () Unit!2198)

(assert (=> d!18273 (= lt!34967 lt!34975)))

(assert (=> d!18273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!3923 (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (size!2110 (_keys!3905 newMap!16))) (mask!6230 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!3922 (_ BitVec 32) (_ BitVec 32)) Unit!2198)

(assert (=> d!18273 (= lt!34975 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (mask!6230 newMap!16)))))

(declare-fun lt!34960 () Unit!2198)

(declare-fun lt!34979 () Unit!2198)

(assert (=> d!18273 (= lt!34960 lt!34979)))

(assert (=> d!18273 (= (arrayCountValidKeys!0 (array!3923 (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (size!2110 (_keys!3905 newMap!16))) #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!3905 newMap!16) #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!3922 (_ BitVec 32) (_ BitVec 64)) Unit!2198)

(assert (=> d!18273 (= lt!34979 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!3905 newMap!16) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun lt!34976 () Unit!2198)

(declare-fun lt!34970 () Unit!2198)

(assert (=> d!18273 (= lt!34976 lt!34970)))

(declare-fun lt!34958 () List!1516)

(declare-fun lt!34977 () (_ BitVec 32))

(assert (=> d!18273 (arrayNoDuplicates!0 (array!3923 (store (arr!1870 (_keys!3905 newMap!16)) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) (size!2110 (_keys!3905 newMap!16))) lt!34977 lt!34958)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!3922 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1516) Unit!2198)

(assert (=> d!18273 (= lt!34970 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!3905 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561)) lt!34977 lt!34958))))

(assert (=> d!18273 (= lt!34958 Nil!1513)))

(assert (=> d!18273 (= lt!34977 #b00000000000000000000000000000000)))

(declare-fun lt!34964 () Unit!2198)

(assert (=> d!18273 (= lt!34964 e!50098)))

(declare-fun c!11762 () Bool)

(assert (=> d!18273 (= c!11762 (arrayContainsKey!0 (_keys!3905 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!34966 () Unit!2198)

(assert (=> d!18273 (= lt!34966 e!50102)))

(assert (=> d!18273 (= c!11764 (contains!735 (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> d!18273 (valid!299 newMap!16)))

(assert (=> d!18273 (= (updateHelperNewKey!26 newMap!16 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 (ite c!11607 (index!3128 lt!34561) (index!3125 lt!34561))) lt!34973)))

(assert (= (and d!18273 c!11764) b!76748))

(assert (= (and d!18273 (not c!11764)) b!76744))

(assert (= (and b!76748 res!40335) b!76751))

(assert (= (and b!76751 res!40339) b!76756))

(assert (= (and b!76744 c!11765) b!76752))

(assert (= (and b!76744 (not c!11765)) b!76755))

(assert (= (and b!76752 res!40338) b!76740))

(assert (= (and b!76740 res!40334) b!76754))

(assert (= (and b!76755 c!11763) b!76742))

(assert (= (and b!76755 (not c!11763)) b!76746))

(assert (= (and b!76742 res!40337) b!76749))

(assert (= (and b!76749 res!40342) b!76750))

(assert (= (or b!76752 b!76742) bm!6957))

(assert (= (or b!76754 b!76750) bm!6960))

(assert (= (or b!76751 bm!6957) bm!6958))

(assert (= (or b!76748 b!76744) bm!6959))

(assert (= (and d!18273 c!11762) b!76753))

(assert (= (and d!18273 (not c!11762)) b!76745))

(assert (= (and d!18273 res!40336) b!76747))

(assert (= (and b!76747 res!40340) b!76741))

(assert (= (and b!76741 res!40341) b!76743))

(assert (=> b!76753 m!75655))

(declare-fun m!76557 () Bool)

(assert (=> b!76753 m!76557))

(assert (=> b!76753 m!75833))

(assert (=> b!76753 m!75833))

(assert (=> b!76753 m!75655))

(declare-fun m!76559 () Bool)

(assert (=> b!76753 m!76559))

(declare-fun m!76561 () Bool)

(assert (=> d!18273 m!76561))

(declare-fun m!76563 () Bool)

(assert (=> d!18273 m!76563))

(assert (=> d!18273 m!75833))

(declare-fun m!76565 () Bool)

(assert (=> d!18273 m!76565))

(declare-fun m!76567 () Bool)

(assert (=> d!18273 m!76567))

(declare-fun m!76569 () Bool)

(assert (=> d!18273 m!76569))

(assert (=> d!18273 m!75655))

(assert (=> d!18273 m!75813))

(declare-fun m!76571 () Bool)

(assert (=> d!18273 m!76571))

(assert (=> d!18273 m!75655))

(declare-fun m!76573 () Bool)

(assert (=> d!18273 m!76573))

(declare-fun m!76575 () Bool)

(assert (=> d!18273 m!76575))

(assert (=> d!18273 m!75655))

(declare-fun m!76577 () Bool)

(assert (=> d!18273 m!76577))

(assert (=> d!18273 m!75833))

(assert (=> d!18273 m!75655))

(assert (=> d!18273 m!76559))

(declare-fun m!76579 () Bool)

(assert (=> d!18273 m!76579))

(declare-fun m!76581 () Bool)

(assert (=> d!18273 m!76581))

(assert (=> d!18273 m!75833))

(assert (=> d!18273 m!75981))

(declare-fun m!76583 () Bool)

(assert (=> d!18273 m!76583))

(assert (=> d!18273 m!75655))

(declare-fun m!76585 () Bool)

(assert (=> d!18273 m!76585))

(assert (=> d!18273 m!75645))

(assert (=> d!18273 m!75655))

(declare-fun m!76587 () Bool)

(assert (=> d!18273 m!76587))

(declare-fun m!76589 () Bool)

(assert (=> d!18273 m!76589))

(declare-fun m!76591 () Bool)

(assert (=> d!18273 m!76591))

(assert (=> d!18273 m!76589))

(declare-fun m!76593 () Bool)

(assert (=> d!18273 m!76593))

(assert (=> d!18273 m!76591))

(assert (=> d!18273 m!75655))

(declare-fun m!76595 () Bool)

(assert (=> d!18273 m!76595))

(assert (=> d!18273 m!75655))

(declare-fun m!76597 () Bool)

(assert (=> d!18273 m!76597))

(assert (=> bm!6960 m!75655))

(assert (=> bm!6960 m!75813))

(assert (=> bm!6959 m!75655))

(assert (=> bm!6959 m!75837))

(declare-fun m!76599 () Bool)

(assert (=> b!76747 m!76599))

(declare-fun m!76601 () Bool)

(assert (=> b!76743 m!76601))

(assert (=> b!76743 m!75683))

(assert (=> b!76743 m!75683))

(declare-fun m!76603 () Bool)

(assert (=> b!76743 m!76603))

(assert (=> b!76748 m!75655))

(assert (=> b!76748 m!75789))

(assert (=> b!76741 m!76601))

(assert (=> b!76741 m!76601))

(assert (=> b!76741 m!75655))

(declare-fun m!76605 () Bool)

(assert (=> b!76741 m!76605))

(assert (=> b!76744 m!75655))

(assert (=> b!76744 m!75817))

(declare-fun m!76607 () Bool)

(assert (=> bm!6958 m!76607))

(declare-fun m!76609 () Bool)

(assert (=> b!76740 m!76609))

(declare-fun m!76611 () Bool)

(assert (=> b!76749 m!76611))

(declare-fun m!76613 () Bool)

(assert (=> b!76756 m!76613))

(assert (=> bm!6873 d!18273))

(assert (=> b!76371 d!18251))

(declare-fun b!76765 () Bool)

(declare-fun e!50111 () (_ BitVec 32))

(declare-fun call!6966 () (_ BitVec 32))

(assert (=> b!76765 (= e!50111 call!6966)))

(declare-fun b!76766 () Bool)

(assert (=> b!76766 (= e!50111 (bvadd #b00000000000000000000000000000001 call!6966))))

(declare-fun b!76767 () Bool)

(declare-fun e!50110 () (_ BitVec 32))

(assert (=> b!76767 (= e!50110 e!50111)))

(declare-fun c!11770 () Bool)

(assert (=> b!76767 (= c!11770 (validKeyInArray!0 (select (arr!1870 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!6963 () Bool)

(assert (=> bm!6963 (= call!6966 (arrayCountValidKeys!0 (_keys!3905 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76768 () Bool)

(assert (=> b!76768 (= e!50110 #b00000000000000000000000000000000)))

(declare-fun d!18275 () Bool)

(declare-fun lt!34986 () (_ BitVec 32))

(assert (=> d!18275 (and (bvsge lt!34986 #b00000000000000000000000000000000) (bvsle lt!34986 (bvsub (size!2110 (_keys!3905 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!18275 (= lt!34986 e!50110)))

(declare-fun c!11771 () Bool)

(assert (=> d!18275 (= c!11771 (bvsge #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))))))

(assert (=> d!18275 (and (bvsle #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2110 (_keys!3905 newMap!16)) (size!2110 (_keys!3905 newMap!16))))))

(assert (=> d!18275 (= (arrayCountValidKeys!0 (_keys!3905 newMap!16) #b00000000000000000000000000000000 (size!2110 (_keys!3905 newMap!16))) lt!34986)))

(assert (= (and d!18275 c!11771) b!76768))

(assert (= (and d!18275 (not c!11771)) b!76767))

(assert (= (and b!76767 c!11770) b!76766))

(assert (= (and b!76767 (not c!11770)) b!76765))

(assert (= (or b!76766 b!76765) bm!6963))

(assert (=> b!76767 m!76035))

(assert (=> b!76767 m!76035))

(assert (=> b!76767 m!76037))

(declare-fun m!76615 () Bool)

(assert (=> bm!6963 m!76615))

(assert (=> b!76350 d!18275))

(declare-fun d!18277 () Bool)

(declare-fun lt!34987 () Bool)

(assert (=> d!18277 (= lt!34987 (select (content!80 (toList!739 lt!34688)) lt!34448))))

(declare-fun e!50113 () Bool)

(assert (=> d!18277 (= lt!34987 e!50113)))

(declare-fun res!40343 () Bool)

(assert (=> d!18277 (=> (not res!40343) (not e!50113))))

(assert (=> d!18277 (= res!40343 ((_ is Cons!1511) (toList!739 lt!34688)))))

(assert (=> d!18277 (= (contains!738 (toList!739 lt!34688) lt!34448) lt!34987)))

(declare-fun b!76769 () Bool)

(declare-fun e!50112 () Bool)

(assert (=> b!76769 (= e!50113 e!50112)))

(declare-fun res!40344 () Bool)

(assert (=> b!76769 (=> res!40344 e!50112)))

(assert (=> b!76769 (= res!40344 (= (h!2099 (toList!739 lt!34688)) lt!34448))))

(declare-fun b!76770 () Bool)

(assert (=> b!76770 (= e!50112 (contains!738 (t!5113 (toList!739 lt!34688)) lt!34448))))

(assert (= (and d!18277 res!40343) b!76769))

(assert (= (and b!76769 (not res!40344)) b!76770))

(declare-fun m!76617 () Bool)

(assert (=> d!18277 m!76617))

(declare-fun m!76619 () Bool)

(assert (=> d!18277 m!76619))

(declare-fun m!76621 () Bool)

(assert (=> b!76770 m!76621))

(assert (=> b!76339 d!18277))

(declare-fun d!18279 () Bool)

(assert (=> d!18279 (= (apply!77 (+!102 lt!34634 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34636) (get!1172 (getValueByKey!134 (toList!739 (+!102 lt!34634 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) lt!34636)))))

(declare-fun bs!3267 () Bool)

(assert (= bs!3267 d!18279))

(declare-fun m!76623 () Bool)

(assert (=> bs!3267 m!76623))

(assert (=> bs!3267 m!76623))

(declare-fun m!76625 () Bool)

(assert (=> bs!3267 m!76625))

(assert (=> b!76266 d!18279))

(declare-fun d!18281 () Bool)

(declare-fun e!50114 () Bool)

(assert (=> d!18281 e!50114))

(declare-fun res!40346 () Bool)

(assert (=> d!18281 (=> (not res!40346) (not e!50114))))

(declare-fun lt!34989 () ListLongMap!1447)

(assert (=> d!18281 (= res!40346 (contains!735 lt!34989 (_1!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun lt!34988 () List!1515)

(assert (=> d!18281 (= lt!34989 (ListLongMap!1448 lt!34988))))

(declare-fun lt!34990 () Unit!2198)

(declare-fun lt!34991 () Unit!2198)

(assert (=> d!18281 (= lt!34990 lt!34991)))

(assert (=> d!18281 (= (getValueByKey!134 lt!34988 (_1!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18281 (= lt!34991 (lemmaContainsTupThenGetReturnValue!53 lt!34988 (_1!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18281 (= lt!34988 (insertStrictlySorted!55 (toList!739 lt!34634) (_1!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18281 (= (+!102 lt!34634 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34989)))

(declare-fun b!76771 () Bool)

(declare-fun res!40345 () Bool)

(assert (=> b!76771 (=> (not res!40345) (not e!50114))))

(assert (=> b!76771 (= res!40345 (= (getValueByKey!134 (toList!739 lt!34989) (_1!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun b!76772 () Bool)

(assert (=> b!76772 (= e!50114 (contains!738 (toList!739 lt!34989) (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18281 res!40346) b!76771))

(assert (= (and b!76771 res!40345) b!76772))

(declare-fun m!76627 () Bool)

(assert (=> d!18281 m!76627))

(declare-fun m!76629 () Bool)

(assert (=> d!18281 m!76629))

(declare-fun m!76631 () Bool)

(assert (=> d!18281 m!76631))

(declare-fun m!76633 () Bool)

(assert (=> d!18281 m!76633))

(declare-fun m!76635 () Bool)

(assert (=> b!76771 m!76635))

(declare-fun m!76637 () Bool)

(assert (=> b!76772 m!76637))

(assert (=> b!76266 d!18281))

(declare-fun d!18283 () Bool)

(assert (=> d!18283 (= (apply!77 lt!34627 lt!34633) (get!1172 (getValueByKey!134 (toList!739 lt!34627) lt!34633)))))

(declare-fun bs!3268 () Bool)

(assert (= bs!3268 d!18283))

(declare-fun m!76639 () Bool)

(assert (=> bs!3268 m!76639))

(assert (=> bs!3268 m!76639))

(declare-fun m!76641 () Bool)

(assert (=> bs!3268 m!76641))

(assert (=> b!76266 d!18283))

(assert (=> b!76266 d!18097))

(declare-fun d!18285 () Bool)

(declare-fun e!50115 () Bool)

(assert (=> d!18285 e!50115))

(declare-fun res!40348 () Bool)

(assert (=> d!18285 (=> (not res!40348) (not e!50115))))

(declare-fun lt!34993 () ListLongMap!1447)

(assert (=> d!18285 (= res!40348 (contains!735 lt!34993 (_1!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun lt!34992 () List!1515)

(assert (=> d!18285 (= lt!34993 (ListLongMap!1448 lt!34992))))

(declare-fun lt!34994 () Unit!2198)

(declare-fun lt!34995 () Unit!2198)

(assert (=> d!18285 (= lt!34994 lt!34995)))

(assert (=> d!18285 (= (getValueByKey!134 lt!34992 (_1!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18285 (= lt!34995 (lemmaContainsTupThenGetReturnValue!53 lt!34992 (_1!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18285 (= lt!34992 (insertStrictlySorted!55 (toList!739 lt!34638) (_1!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18285 (= (+!102 lt!34638 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34993)))

(declare-fun b!76773 () Bool)

(declare-fun res!40347 () Bool)

(assert (=> b!76773 (=> (not res!40347) (not e!50115))))

(assert (=> b!76773 (= res!40347 (= (getValueByKey!134 (toList!739 lt!34993) (_1!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun b!76774 () Bool)

(assert (=> b!76774 (= e!50115 (contains!738 (toList!739 lt!34993) (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18285 res!40348) b!76773))

(assert (= (and b!76773 res!40347) b!76774))

(declare-fun m!76643 () Bool)

(assert (=> d!18285 m!76643))

(declare-fun m!76645 () Bool)

(assert (=> d!18285 m!76645))

(declare-fun m!76647 () Bool)

(assert (=> d!18285 m!76647))

(declare-fun m!76649 () Bool)

(assert (=> d!18285 m!76649))

(declare-fun m!76651 () Bool)

(assert (=> b!76773 m!76651))

(declare-fun m!76653 () Bool)

(assert (=> b!76774 m!76653))

(assert (=> b!76266 d!18285))

(declare-fun d!18287 () Bool)

(assert (=> d!18287 (= (apply!77 (+!102 lt!34638 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34632) (get!1172 (getValueByKey!134 (toList!739 (+!102 lt!34638 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) lt!34632)))))

(declare-fun bs!3269 () Bool)

(assert (= bs!3269 d!18287))

(declare-fun m!76655 () Bool)

(assert (=> bs!3269 m!76655))

(assert (=> bs!3269 m!76655))

(declare-fun m!76657 () Bool)

(assert (=> bs!3269 m!76657))

(assert (=> b!76266 d!18287))

(declare-fun d!18289 () Bool)

(assert (=> d!18289 (= (apply!77 (+!102 lt!34627 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34633) (get!1172 (getValueByKey!134 (toList!739 (+!102 lt!34627 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) lt!34633)))))

(declare-fun bs!3270 () Bool)

(assert (= bs!3270 d!18289))

(declare-fun m!76659 () Bool)

(assert (=> bs!3270 m!76659))

(assert (=> bs!3270 m!76659))

(declare-fun m!76661 () Bool)

(assert (=> bs!3270 m!76661))

(assert (=> b!76266 d!18289))

(declare-fun d!18291 () Bool)

(declare-fun e!50116 () Bool)

(assert (=> d!18291 e!50116))

(declare-fun res!40350 () Bool)

(assert (=> d!18291 (=> (not res!40350) (not e!50116))))

(declare-fun lt!34997 () ListLongMap!1447)

(assert (=> d!18291 (= res!40350 (contains!735 lt!34997 (_1!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun lt!34996 () List!1515)

(assert (=> d!18291 (= lt!34997 (ListLongMap!1448 lt!34996))))

(declare-fun lt!34998 () Unit!2198)

(declare-fun lt!34999 () Unit!2198)

(assert (=> d!18291 (= lt!34998 lt!34999)))

(assert (=> d!18291 (= (getValueByKey!134 lt!34996 (_1!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18291 (= lt!34999 (lemmaContainsTupThenGetReturnValue!53 lt!34996 (_1!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18291 (= lt!34996 (insertStrictlySorted!55 (toList!739 lt!34627) (_1!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18291 (= (+!102 lt!34627 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34997)))

(declare-fun b!76775 () Bool)

(declare-fun res!40349 () Bool)

(assert (=> b!76775 (=> (not res!40349) (not e!50116))))

(assert (=> b!76775 (= res!40349 (= (getValueByKey!134 (toList!739 lt!34997) (_1!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun b!76776 () Bool)

(assert (=> b!76776 (= e!50116 (contains!738 (toList!739 lt!34997) (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18291 res!40350) b!76775))

(assert (= (and b!76775 res!40349) b!76776))

(declare-fun m!76663 () Bool)

(assert (=> d!18291 m!76663))

(declare-fun m!76665 () Bool)

(assert (=> d!18291 m!76665))

(declare-fun m!76667 () Bool)

(assert (=> d!18291 m!76667))

(declare-fun m!76669 () Bool)

(assert (=> d!18291 m!76669))

(declare-fun m!76671 () Bool)

(assert (=> b!76775 m!76671))

(declare-fun m!76673 () Bool)

(assert (=> b!76776 m!76673))

(assert (=> b!76266 d!18291))

(declare-fun d!18293 () Bool)

(declare-fun e!50117 () Bool)

(assert (=> d!18293 e!50117))

(declare-fun res!40352 () Bool)

(assert (=> d!18293 (=> (not res!40352) (not e!50117))))

(declare-fun lt!35001 () ListLongMap!1447)

(assert (=> d!18293 (= res!40352 (contains!735 lt!35001 (_1!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun lt!35000 () List!1515)

(assert (=> d!18293 (= lt!35001 (ListLongMap!1448 lt!35000))))

(declare-fun lt!35002 () Unit!2198)

(declare-fun lt!35003 () Unit!2198)

(assert (=> d!18293 (= lt!35002 lt!35003)))

(assert (=> d!18293 (= (getValueByKey!134 lt!35000 (_1!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18293 (= lt!35003 (lemmaContainsTupThenGetReturnValue!53 lt!35000 (_1!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18293 (= lt!35000 (insertStrictlySorted!55 (toList!739 lt!34642) (_1!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18293 (= (+!102 lt!34642 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!35001)))

(declare-fun b!76777 () Bool)

(declare-fun res!40351 () Bool)

(assert (=> b!76777 (=> (not res!40351) (not e!50117))))

(assert (=> b!76777 (= res!40351 (= (getValueByKey!134 (toList!739 lt!35001) (_1!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun b!76778 () Bool)

(assert (=> b!76778 (= e!50117 (contains!738 (toList!739 lt!35001) (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18293 res!40352) b!76777))

(assert (= (and b!76777 res!40351) b!76778))

(declare-fun m!76675 () Bool)

(assert (=> d!18293 m!76675))

(declare-fun m!76677 () Bool)

(assert (=> d!18293 m!76677))

(declare-fun m!76679 () Bool)

(assert (=> d!18293 m!76679))

(declare-fun m!76681 () Bool)

(assert (=> d!18293 m!76681))

(declare-fun m!76683 () Bool)

(assert (=> b!76777 m!76683))

(declare-fun m!76685 () Bool)

(assert (=> b!76778 m!76685))

(assert (=> b!76266 d!18293))

(declare-fun d!18295 () Bool)

(declare-fun e!50119 () Bool)

(assert (=> d!18295 e!50119))

(declare-fun res!40353 () Bool)

(assert (=> d!18295 (=> res!40353 e!50119)))

(declare-fun lt!35007 () Bool)

(assert (=> d!18295 (= res!40353 (not lt!35007))))

(declare-fun lt!35005 () Bool)

(assert (=> d!18295 (= lt!35007 lt!35005)))

(declare-fun lt!35006 () Unit!2198)

(declare-fun e!50118 () Unit!2198)

(assert (=> d!18295 (= lt!35006 e!50118)))

(declare-fun c!11772 () Bool)

(assert (=> d!18295 (= c!11772 lt!35005)))

(assert (=> d!18295 (= lt!35005 (containsKey!138 (toList!739 (+!102 lt!34642 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) lt!34628))))

(assert (=> d!18295 (= (contains!735 (+!102 lt!34642 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34628) lt!35007)))

(declare-fun b!76779 () Bool)

(declare-fun lt!35004 () Unit!2198)

(assert (=> b!76779 (= e!50118 lt!35004)))

(assert (=> b!76779 (= lt!35004 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 (+!102 lt!34642 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) lt!34628))))

(assert (=> b!76779 (isDefined!88 (getValueByKey!134 (toList!739 (+!102 lt!34642 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) lt!34628))))

(declare-fun b!76780 () Bool)

(declare-fun Unit!2227 () Unit!2198)

(assert (=> b!76780 (= e!50118 Unit!2227)))

(declare-fun b!76781 () Bool)

(assert (=> b!76781 (= e!50119 (isDefined!88 (getValueByKey!134 (toList!739 (+!102 lt!34642 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992)))))) lt!34628)))))

(assert (= (and d!18295 c!11772) b!76779))

(assert (= (and d!18295 (not c!11772)) b!76780))

(assert (= (and d!18295 (not res!40353)) b!76781))

(declare-fun m!76687 () Bool)

(assert (=> d!18295 m!76687))

(declare-fun m!76689 () Bool)

(assert (=> b!76779 m!76689))

(declare-fun m!76691 () Bool)

(assert (=> b!76779 m!76691))

(assert (=> b!76779 m!76691))

(declare-fun m!76693 () Bool)

(assert (=> b!76779 m!76693))

(assert (=> b!76781 m!76691))

(assert (=> b!76781 m!76691))

(assert (=> b!76781 m!76693))

(assert (=> b!76266 d!18295))

(declare-fun d!18297 () Bool)

(assert (=> d!18297 (= (apply!77 lt!34638 lt!34632) (get!1172 (getValueByKey!134 (toList!739 lt!34638) lt!34632)))))

(declare-fun bs!3271 () Bool)

(assert (= bs!3271 d!18297))

(declare-fun m!76695 () Bool)

(assert (=> bs!3271 m!76695))

(assert (=> bs!3271 m!76695))

(declare-fun m!76697 () Bool)

(assert (=> bs!3271 m!76697))

(assert (=> b!76266 d!18297))

(declare-fun d!18299 () Bool)

(assert (=> d!18299 (= (apply!77 lt!34634 lt!34636) (get!1172 (getValueByKey!134 (toList!739 lt!34634) lt!34636)))))

(declare-fun bs!3272 () Bool)

(assert (= bs!3272 d!18299))

(declare-fun m!76699 () Bool)

(assert (=> bs!3272 m!76699))

(assert (=> bs!3272 m!76699))

(declare-fun m!76701 () Bool)

(assert (=> bs!3272 m!76701))

(assert (=> b!76266 d!18299))

(declare-fun d!18301 () Bool)

(assert (=> d!18301 (contains!735 (+!102 lt!34642 (tuple2!2159 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34628)))

(declare-fun lt!35010 () Unit!2198)

(declare-fun choose!452 (ListLongMap!1447 (_ BitVec 64) V!2963 (_ BitVec 64)) Unit!2198)

(assert (=> d!18301 (= lt!35010 (choose!452 lt!34642 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34628))))

(assert (=> d!18301 (contains!735 lt!34642 lt!34628)))

(assert (=> d!18301 (= (addStillContains!53 lt!34642 lt!34626 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34628) lt!35010)))

(declare-fun bs!3273 () Bool)

(assert (= bs!3273 d!18301))

(assert (=> bs!3273 m!75851))

(assert (=> bs!3273 m!75851))

(assert (=> bs!3273 m!75871))

(declare-fun m!76703 () Bool)

(assert (=> bs!3273 m!76703))

(declare-fun m!76705 () Bool)

(assert (=> bs!3273 m!76705))

(assert (=> b!76266 d!18301))

(declare-fun d!18303 () Bool)

(assert (=> d!18303 (= (apply!77 (+!102 lt!34638 (tuple2!2159 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34632) (apply!77 lt!34638 lt!34632))))

(declare-fun lt!35013 () Unit!2198)

(declare-fun choose!453 (ListLongMap!1447 (_ BitVec 64) V!2963 (_ BitVec 64)) Unit!2198)

(assert (=> d!18303 (= lt!35013 (choose!453 lt!34638 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34632))))

(declare-fun e!50122 () Bool)

(assert (=> d!18303 e!50122))

(declare-fun res!40356 () Bool)

(assert (=> d!18303 (=> (not res!40356) (not e!50122))))

(assert (=> d!18303 (= res!40356 (contains!735 lt!34638 lt!34632))))

(assert (=> d!18303 (= (addApplyDifferent!53 lt!34638 lt!34639 (minValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34632) lt!35013)))

(declare-fun b!76786 () Bool)

(assert (=> b!76786 (= e!50122 (not (= lt!34632 lt!34639)))))

(assert (= (and d!18303 res!40356) b!76786))

(declare-fun m!76707 () Bool)

(assert (=> d!18303 m!76707))

(assert (=> d!18303 m!75861))

(assert (=> d!18303 m!75875))

(assert (=> d!18303 m!75861))

(assert (=> d!18303 m!75855))

(declare-fun m!76709 () Bool)

(assert (=> d!18303 m!76709))

(assert (=> b!76266 d!18303))

(declare-fun d!18305 () Bool)

(assert (=> d!18305 (= (apply!77 (+!102 lt!34634 (tuple2!2159 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34636) (apply!77 lt!34634 lt!34636))))

(declare-fun lt!35014 () Unit!2198)

(assert (=> d!18305 (= lt!35014 (choose!453 lt!34634 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34636))))

(declare-fun e!50123 () Bool)

(assert (=> d!18305 e!50123))

(declare-fun res!40357 () Bool)

(assert (=> d!18305 (=> (not res!40357) (not e!50123))))

(assert (=> d!18305 (= res!40357 (contains!735 lt!34634 lt!34636))))

(assert (=> d!18305 (= (addApplyDifferent!53 lt!34634 lt!34641 (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34636) lt!35014)))

(declare-fun b!76787 () Bool)

(assert (=> b!76787 (= e!50123 (not (= lt!34636 lt!34641)))))

(assert (= (and d!18305 res!40357) b!76787))

(declare-fun m!76711 () Bool)

(assert (=> d!18305 m!76711))

(assert (=> d!18305 m!75863))

(assert (=> d!18305 m!75865))

(assert (=> d!18305 m!75863))

(assert (=> d!18305 m!75867))

(declare-fun m!76713 () Bool)

(assert (=> d!18305 m!76713))

(assert (=> b!76266 d!18305))

(declare-fun d!18307 () Bool)

(assert (=> d!18307 (= (apply!77 (+!102 lt!34627 (tuple2!2159 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!34633) (apply!77 lt!34627 lt!34633))))

(declare-fun lt!35015 () Unit!2198)

(assert (=> d!18307 (= lt!35015 (choose!453 lt!34627 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34633))))

(declare-fun e!50124 () Bool)

(assert (=> d!18307 e!50124))

(declare-fun res!40358 () Bool)

(assert (=> d!18307 (=> (not res!40358) (not e!50124))))

(assert (=> d!18307 (= res!40358 (contains!735 lt!34627 lt!34633))))

(assert (=> d!18307 (= (addApplyDifferent!53 lt!34627 lt!34629 (minValue!2146 (v!2562 (underlying!270 thiss!992))) lt!34633) lt!35015)))

(declare-fun b!76788 () Bool)

(assert (=> b!76788 (= e!50124 (not (= lt!34633 lt!34629)))))

(assert (= (and d!18307 res!40358) b!76788))

(declare-fun m!76715 () Bool)

(assert (=> d!18307 m!76715))

(assert (=> d!18307 m!75859))

(assert (=> d!18307 m!75869))

(assert (=> d!18307 m!75859))

(assert (=> d!18307 m!75873))

(declare-fun m!76717 () Bool)

(assert (=> d!18307 m!76717))

(assert (=> b!76266 d!18307))

(declare-fun b!76789 () Bool)

(assert (=> b!76789 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> b!76789 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2111 (_values!2230 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun e!50128 () Bool)

(declare-fun lt!35020 () ListLongMap!1447)

(assert (=> b!76789 (= e!50128 (= (apply!77 lt!35020 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!76790 () Bool)

(declare-fun e!50131 () ListLongMap!1447)

(assert (=> b!76790 (= e!50131 (ListLongMap!1448 Nil!1512))))

(declare-fun b!76791 () Bool)

(declare-fun e!50130 () Bool)

(declare-fun e!50129 () Bool)

(assert (=> b!76791 (= e!50130 e!50129)))

(declare-fun c!11775 () Bool)

(assert (=> b!76791 (= c!11775 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76792 () Bool)

(declare-fun res!40362 () Bool)

(declare-fun e!50126 () Bool)

(assert (=> b!76792 (=> (not res!40362) (not e!50126))))

(assert (=> b!76792 (= res!40362 (not (contains!735 lt!35020 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!18309 () Bool)

(assert (=> d!18309 e!50126))

(declare-fun res!40361 () Bool)

(assert (=> d!18309 (=> (not res!40361) (not e!50126))))

(assert (=> d!18309 (= res!40361 (not (contains!735 lt!35020 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!18309 (= lt!35020 e!50131)))

(declare-fun c!11774 () Bool)

(assert (=> d!18309 (= c!11774 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(assert (=> d!18309 (validMask!0 (mask!6230 (v!2562 (underlying!270 thiss!992))))))

(assert (=> d!18309 (= (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))) lt!35020)))

(declare-fun b!76793 () Bool)

(declare-fun e!50127 () Bool)

(assert (=> b!76793 (= e!50127 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!76793 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!76794 () Bool)

(declare-fun e!50125 () ListLongMap!1447)

(declare-fun call!6967 () ListLongMap!1447)

(assert (=> b!76794 (= e!50125 call!6967)))

(declare-fun b!76795 () Bool)

(declare-fun lt!35018 () Unit!2198)

(declare-fun lt!35021 () Unit!2198)

(assert (=> b!76795 (= lt!35018 lt!35021)))

(declare-fun lt!35022 () V!2963)

(declare-fun lt!35017 () (_ BitVec 64))

(declare-fun lt!35016 () (_ BitVec 64))

(declare-fun lt!35019 () ListLongMap!1447)

(assert (=> b!76795 (not (contains!735 (+!102 lt!35019 (tuple2!2159 lt!35017 lt!35022)) lt!35016))))

(assert (=> b!76795 (= lt!35021 (addStillNotContains!28 lt!35019 lt!35017 lt!35022 lt!35016))))

(assert (=> b!76795 (= lt!35016 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!76795 (= lt!35022 (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!76795 (= lt!35017 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (=> b!76795 (= lt!35019 call!6967)))

(assert (=> b!76795 (= e!50125 (+!102 call!6967 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!76796 () Bool)

(assert (=> b!76796 (= e!50131 e!50125)))

(declare-fun c!11776 () Bool)

(assert (=> b!76796 (= c!11776 (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!76797 () Bool)

(assert (=> b!76797 (= e!50129 (isEmpty!327 lt!35020))))

(declare-fun b!76798 () Bool)

(assert (=> b!76798 (= e!50130 e!50128)))

(assert (=> b!76798 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun res!40359 () Bool)

(assert (=> b!76798 (= res!40359 (contains!735 lt!35020 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!76798 (=> (not res!40359) (not e!50128))))

(declare-fun bm!6964 () Bool)

(assert (=> bm!6964 (= call!6967 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992)))))))

(declare-fun b!76799 () Bool)

(assert (=> b!76799 (= e!50126 e!50130)))

(declare-fun c!11773 () Bool)

(assert (=> b!76799 (= c!11773 e!50127)))

(declare-fun res!40360 () Bool)

(assert (=> b!76799 (=> (not res!40360) (not e!50127))))

(assert (=> b!76799 (= res!40360 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2110 (_keys!3905 (v!2562 (underlying!270 thiss!992))))))))

(declare-fun b!76800 () Bool)

(assert (=> b!76800 (= e!50129 (= lt!35020 (getCurrentListMapNoExtraKeys!66 (_keys!3905 (v!2562 (underlying!270 thiss!992))) (_values!2230 (v!2562 (underlying!270 thiss!992))) (mask!6230 (v!2562 (underlying!270 thiss!992))) (extraKeys!2100 (v!2562 (underlying!270 thiss!992))) (zeroValue!2146 (v!2562 (underlying!270 thiss!992))) (minValue!2146 (v!2562 (underlying!270 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18309 c!11774) b!76790))

(assert (= (and d!18309 (not c!11774)) b!76796))

(assert (= (and b!76796 c!11776) b!76795))

(assert (= (and b!76796 (not c!11776)) b!76794))

(assert (= (or b!76795 b!76794) bm!6964))

(assert (= (and d!18309 res!40361) b!76792))

(assert (= (and b!76792 res!40362) b!76799))

(assert (= (and b!76799 res!40360) b!76793))

(assert (= (and b!76799 c!11773) b!76798))

(assert (= (and b!76799 (not c!11773)) b!76791))

(assert (= (and b!76798 res!40359) b!76789))

(assert (= (and b!76791 c!11775) b!76800))

(assert (= (and b!76791 (not c!11775)) b!76797))

(declare-fun b_lambda!3447 () Bool)

(assert (=> (not b_lambda!3447) (not b!76789)))

(assert (=> b!76789 t!5110))

(declare-fun b_and!4685 () Bool)

(assert (= b_and!4681 (and (=> t!5110 result!2735) b_and!4685)))

(assert (=> b!76789 t!5112))

(declare-fun b_and!4687 () Bool)

(assert (= b_and!4683 (and (=> t!5112 result!2739) b_and!4687)))

(declare-fun b_lambda!3449 () Bool)

(assert (=> (not b_lambda!3449) (not b!76795)))

(assert (=> b!76795 t!5110))

(declare-fun b_and!4689 () Bool)

(assert (= b_and!4685 (and (=> t!5110 result!2735) b_and!4689)))

(assert (=> b!76795 t!5112))

(declare-fun b_and!4691 () Bool)

(assert (= b_and!4687 (and (=> t!5112 result!2739) b_and!4691)))

(declare-fun m!76719 () Bool)

(assert (=> b!76797 m!76719))

(declare-fun m!76721 () Bool)

(assert (=> b!76795 m!76721))

(declare-fun m!76723 () Bool)

(assert (=> b!76795 m!76723))

(declare-fun m!76725 () Bool)

(assert (=> b!76795 m!76725))

(assert (=> b!76795 m!75677))

(assert (=> b!76795 m!76551))

(assert (=> b!76795 m!76723))

(declare-fun m!76727 () Bool)

(assert (=> b!76795 m!76727))

(declare-fun m!76729 () Bool)

(assert (=> b!76795 m!76729))

(assert (=> b!76795 m!76727))

(assert (=> b!76795 m!75677))

(declare-fun m!76731 () Bool)

(assert (=> b!76795 m!76731))

(assert (=> b!76798 m!76551))

(assert (=> b!76798 m!76551))

(declare-fun m!76733 () Bool)

(assert (=> b!76798 m!76733))

(assert (=> b!76793 m!76551))

(assert (=> b!76793 m!76551))

(declare-fun m!76735 () Bool)

(assert (=> b!76793 m!76735))

(declare-fun m!76737 () Bool)

(assert (=> bm!6964 m!76737))

(assert (=> b!76796 m!76551))

(assert (=> b!76796 m!76551))

(assert (=> b!76796 m!76735))

(assert (=> b!76800 m!76737))

(assert (=> b!76789 m!75677))

(assert (=> b!76789 m!76551))

(declare-fun m!76739 () Bool)

(assert (=> b!76789 m!76739))

(assert (=> b!76789 m!76551))

(assert (=> b!76789 m!76727))

(assert (=> b!76789 m!76727))

(assert (=> b!76789 m!75677))

(assert (=> b!76789 m!76731))

(declare-fun m!76741 () Bool)

(assert (=> b!76792 m!76741))

(declare-fun m!76743 () Bool)

(assert (=> d!18309 m!76743))

(assert (=> d!18309 m!75687))

(assert (=> b!76331 d!18309))

(assert (=> bm!6896 d!18097))

(declare-fun d!18311 () Bool)

(declare-fun e!50132 () Bool)

(assert (=> d!18311 e!50132))

(declare-fun res!40364 () Bool)

(assert (=> d!18311 (=> (not res!40364) (not e!50132))))

(declare-fun lt!35024 () ListLongMap!1447)

(assert (=> d!18311 (= res!40364 (contains!735 lt!35024 (_1!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))))

(declare-fun lt!35023 () List!1515)

(assert (=> d!18311 (= lt!35024 (ListLongMap!1448 lt!35023))))

(declare-fun lt!35025 () Unit!2198)

(declare-fun lt!35026 () Unit!2198)

(assert (=> d!18311 (= lt!35025 lt!35026)))

(assert (=> d!18311 (= (getValueByKey!134 lt!35023 (_1!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))) (Some!139 (_2!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))))

(assert (=> d!18311 (= lt!35026 (lemmaContainsTupThenGetReturnValue!53 lt!35023 (_1!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (_2!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))))

(assert (=> d!18311 (= lt!35023 (insertStrictlySorted!55 (toList!739 e!49779) (_1!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) (_2!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))))))

(assert (=> d!18311 (= (+!102 e!49779 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))) lt!35024)))

(declare-fun b!76801 () Bool)

(declare-fun res!40363 () Bool)

(assert (=> b!76801 (=> (not res!40363) (not e!50132))))

(assert (=> b!76801 (= res!40363 (= (getValueByKey!134 (toList!739 lt!35024) (_1!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)))) (Some!139 (_2!1089 (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))))

(declare-fun b!76802 () Bool)

(assert (=> b!76802 (= e!50132 (contains!738 (toList!739 lt!35024) (ite c!11613 (ite c!11614 (tuple2!2159 #b0000000000000000000000000000000000000000000000000000000000000000 lt!34446) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 lt!34446)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446))))))

(assert (= (and d!18311 res!40364) b!76801))

(assert (= (and b!76801 res!40363) b!76802))

(declare-fun m!76745 () Bool)

(assert (=> d!18311 m!76745))

(declare-fun m!76747 () Bool)

(assert (=> d!18311 m!76747))

(declare-fun m!76749 () Bool)

(assert (=> d!18311 m!76749))

(declare-fun m!76751 () Bool)

(assert (=> d!18311 m!76751))

(declare-fun m!76753 () Bool)

(assert (=> b!76801 m!76753))

(declare-fun m!76755 () Bool)

(assert (=> b!76802 m!76755))

(assert (=> bm!6871 d!18311))

(declare-fun d!18313 () Bool)

(declare-fun lt!35027 () Bool)

(assert (=> d!18313 (= lt!35027 (select (content!80 (toList!739 lt!34684)) lt!34443))))

(declare-fun e!50134 () Bool)

(assert (=> d!18313 (= lt!35027 e!50134)))

(declare-fun res!40365 () Bool)

(assert (=> d!18313 (=> (not res!40365) (not e!50134))))

(assert (=> d!18313 (= res!40365 ((_ is Cons!1511) (toList!739 lt!34684)))))

(assert (=> d!18313 (= (contains!738 (toList!739 lt!34684) lt!34443) lt!35027)))

(declare-fun b!76803 () Bool)

(declare-fun e!50133 () Bool)

(assert (=> b!76803 (= e!50134 e!50133)))

(declare-fun res!40366 () Bool)

(assert (=> b!76803 (=> res!40366 e!50133)))

(assert (=> b!76803 (= res!40366 (= (h!2099 (toList!739 lt!34684)) lt!34443))))

(declare-fun b!76804 () Bool)

(assert (=> b!76804 (= e!50133 (contains!738 (t!5113 (toList!739 lt!34684)) lt!34443))))

(assert (= (and d!18313 res!40365) b!76803))

(assert (= (and b!76803 (not res!40366)) b!76804))

(declare-fun m!76757 () Bool)

(assert (=> d!18313 m!76757))

(declare-fun m!76759 () Bool)

(assert (=> d!18313 m!76759))

(declare-fun m!76761 () Bool)

(assert (=> b!76804 m!76761))

(assert (=> b!76337 d!18313))

(declare-fun d!18315 () Bool)

(declare-fun e!50137 () Bool)

(assert (=> d!18315 e!50137))

(declare-fun res!40371 () Bool)

(assert (=> d!18315 (=> (not res!40371) (not e!50137))))

(declare-fun lt!35033 () SeekEntryResult!248)

(assert (=> d!18315 (= res!40371 ((_ is Found!248) lt!35033))))

(assert (=> d!18315 (= lt!35033 (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(declare-fun lt!35032 () Unit!2198)

(declare-fun choose!454 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 64) Int) Unit!2198)

(assert (=> d!18315 (= lt!35032 (choose!454 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (defaultEntry!2247 newMap!16)))))

(assert (=> d!18315 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18315 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (defaultEntry!2247 newMap!16)) lt!35032)))

(declare-fun b!76809 () Bool)

(declare-fun res!40372 () Bool)

(assert (=> b!76809 (=> (not res!40372) (not e!50137))))

(assert (=> b!76809 (= res!40372 (inRange!0 (index!3126 lt!35033) (mask!6230 newMap!16)))))

(declare-fun b!76810 () Bool)

(assert (=> b!76810 (= e!50137 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!35033)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> b!76810 (and (bvsge (index!3126 lt!35033) #b00000000000000000000000000000000) (bvslt (index!3126 lt!35033) (size!2110 (_keys!3905 newMap!16))))))

(assert (= (and d!18315 res!40371) b!76809))

(assert (= (and b!76809 res!40372) b!76810))

(assert (=> d!18315 m!75655))

(assert (=> d!18315 m!75837))

(assert (=> d!18315 m!75655))

(declare-fun m!76763 () Bool)

(assert (=> d!18315 m!76763))

(assert (=> d!18315 m!76011))

(declare-fun m!76765 () Bool)

(assert (=> b!76809 m!76765))

(declare-fun m!76767 () Bool)

(assert (=> b!76810 m!76767))

(assert (=> bm!6861 d!18315))

(declare-fun d!18317 () Bool)

(declare-fun lt!35034 () Bool)

(assert (=> d!18317 (= lt!35034 (select (content!81 Nil!1513) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!50139 () Bool)

(assert (=> d!18317 (= lt!35034 e!50139)))

(declare-fun res!40373 () Bool)

(assert (=> d!18317 (=> (not res!40373) (not e!50139))))

(assert (=> d!18317 (= res!40373 ((_ is Cons!1512) Nil!1513))))

(assert (=> d!18317 (= (contains!737 Nil!1513 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)) lt!35034)))

(declare-fun b!76811 () Bool)

(declare-fun e!50138 () Bool)

(assert (=> b!76811 (= e!50139 e!50138)))

(declare-fun res!40374 () Bool)

(assert (=> b!76811 (=> res!40374 e!50138)))

(assert (=> b!76811 (= res!40374 (= (h!2100 Nil!1513) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!76812 () Bool)

(assert (=> b!76812 (= e!50138 (contains!737 (t!5114 Nil!1513) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!18317 res!40373) b!76811))

(assert (= (and b!76811 (not res!40374)) b!76812))

(assert (=> d!18317 m!76507))

(assert (=> d!18317 m!75765))

(declare-fun m!76769 () Bool)

(assert (=> d!18317 m!76769))

(assert (=> b!76812 m!75765))

(declare-fun m!76771 () Bool)

(assert (=> b!76812 m!76771))

(assert (=> b!76084 d!18317))

(assert (=> b!76264 d!18171))

(declare-fun d!18319 () Bool)

(declare-fun res!40379 () Bool)

(declare-fun e!50144 () Bool)

(assert (=> d!18319 (=> res!40379 e!50144)))

(assert (=> d!18319 (= res!40379 (and ((_ is Cons!1511) (toList!739 lt!34444)) (= (_1!1089 (h!2099 (toList!739 lt!34444))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))))))

(assert (=> d!18319 (= (containsKey!138 (toList!739 lt!34444) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) e!50144)))

(declare-fun b!76817 () Bool)

(declare-fun e!50145 () Bool)

(assert (=> b!76817 (= e!50144 e!50145)))

(declare-fun res!40380 () Bool)

(assert (=> b!76817 (=> (not res!40380) (not e!50145))))

(assert (=> b!76817 (= res!40380 (and (or (not ((_ is Cons!1511) (toList!739 lt!34444))) (bvsle (_1!1089 (h!2099 (toList!739 lt!34444))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))) ((_ is Cons!1511) (toList!739 lt!34444)) (bvslt (_1!1089 (h!2099 (toList!739 lt!34444))) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))))))

(declare-fun b!76818 () Bool)

(assert (=> b!76818 (= e!50145 (containsKey!138 (t!5113 (toList!739 lt!34444)) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (= (and d!18319 (not res!40379)) b!76817))

(assert (= (and b!76817 res!40380) b!76818))

(assert (=> b!76818 m!75655))

(declare-fun m!76773 () Bool)

(assert (=> b!76818 m!76773))

(assert (=> d!18083 d!18319))

(declare-fun d!18321 () Bool)

(assert (=> d!18321 (= (validKeyInArray!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!76082 d!18321))

(assert (=> bm!6903 d!18309))

(assert (=> b!76295 d!18321))

(assert (=> b!76194 d!18241))

(assert (=> b!76326 d!18167))

(declare-fun d!18323 () Bool)

(declare-fun e!50146 () Bool)

(assert (=> d!18323 e!50146))

(declare-fun res!40382 () Bool)

(assert (=> d!18323 (=> (not res!40382) (not e!50146))))

(declare-fun lt!35036 () ListLongMap!1447)

(assert (=> d!18323 (= res!40382 (contains!735 lt!35036 (_1!1089 (tuple2!2159 lt!34669 lt!34674))))))

(declare-fun lt!35035 () List!1515)

(assert (=> d!18323 (= lt!35036 (ListLongMap!1448 lt!35035))))

(declare-fun lt!35037 () Unit!2198)

(declare-fun lt!35038 () Unit!2198)

(assert (=> d!18323 (= lt!35037 lt!35038)))

(assert (=> d!18323 (= (getValueByKey!134 lt!35035 (_1!1089 (tuple2!2159 lt!34669 lt!34674))) (Some!139 (_2!1089 (tuple2!2159 lt!34669 lt!34674))))))

(assert (=> d!18323 (= lt!35038 (lemmaContainsTupThenGetReturnValue!53 lt!35035 (_1!1089 (tuple2!2159 lt!34669 lt!34674)) (_2!1089 (tuple2!2159 lt!34669 lt!34674))))))

(assert (=> d!18323 (= lt!35035 (insertStrictlySorted!55 (toList!739 lt!34671) (_1!1089 (tuple2!2159 lt!34669 lt!34674)) (_2!1089 (tuple2!2159 lt!34669 lt!34674))))))

(assert (=> d!18323 (= (+!102 lt!34671 (tuple2!2159 lt!34669 lt!34674)) lt!35036)))

(declare-fun b!76819 () Bool)

(declare-fun res!40381 () Bool)

(assert (=> b!76819 (=> (not res!40381) (not e!50146))))

(assert (=> b!76819 (= res!40381 (= (getValueByKey!134 (toList!739 lt!35036) (_1!1089 (tuple2!2159 lt!34669 lt!34674))) (Some!139 (_2!1089 (tuple2!2159 lt!34669 lt!34674)))))))

(declare-fun b!76820 () Bool)

(assert (=> b!76820 (= e!50146 (contains!738 (toList!739 lt!35036) (tuple2!2159 lt!34669 lt!34674)))))

(assert (= (and d!18323 res!40382) b!76819))

(assert (= (and b!76819 res!40381) b!76820))

(declare-fun m!76775 () Bool)

(assert (=> d!18323 m!76775))

(declare-fun m!76777 () Bool)

(assert (=> d!18323 m!76777))

(declare-fun m!76779 () Bool)

(assert (=> d!18323 m!76779))

(declare-fun m!76781 () Bool)

(assert (=> d!18323 m!76781))

(declare-fun m!76783 () Bool)

(assert (=> b!76819 m!76783))

(declare-fun m!76785 () Bool)

(assert (=> b!76820 m!76785))

(assert (=> b!76326 d!18323))

(declare-fun d!18325 () Bool)

(declare-fun e!50147 () Bool)

(assert (=> d!18325 e!50147))

(declare-fun res!40384 () Bool)

(assert (=> d!18325 (=> (not res!40384) (not e!50147))))

(declare-fun lt!35040 () ListLongMap!1447)

(assert (=> d!18325 (= res!40384 (contains!735 lt!35040 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!35039 () List!1515)

(assert (=> d!18325 (= lt!35040 (ListLongMap!1448 lt!35039))))

(declare-fun lt!35041 () Unit!2198)

(declare-fun lt!35042 () Unit!2198)

(assert (=> d!18325 (= lt!35041 lt!35042)))

(assert (=> d!18325 (= (getValueByKey!134 lt!35039 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!139 (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18325 (= lt!35042 (lemmaContainsTupThenGetReturnValue!53 lt!35039 (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18325 (= lt!35039 (insertStrictlySorted!55 (toList!739 call!6906) (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18325 (= (+!102 call!6906 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!35040)))

(declare-fun b!76821 () Bool)

(declare-fun res!40383 () Bool)

(assert (=> b!76821 (=> (not res!40383) (not e!50147))))

(assert (=> b!76821 (= res!40383 (= (getValueByKey!134 (toList!739 lt!35040) (_1!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!139 (_2!1089 (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!76822 () Bool)

(assert (=> b!76822 (= e!50147 (contains!738 (toList!739 lt!35040) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1168 (select (arr!1871 (_values!2230 (v!2562 (underlying!270 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!338 (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!18325 res!40384) b!76821))

(assert (= (and b!76821 res!40383) b!76822))

(declare-fun m!76787 () Bool)

(assert (=> d!18325 m!76787))

(declare-fun m!76789 () Bool)

(assert (=> d!18325 m!76789))

(declare-fun m!76791 () Bool)

(assert (=> d!18325 m!76791))

(declare-fun m!76793 () Bool)

(assert (=> d!18325 m!76793))

(declare-fun m!76795 () Bool)

(assert (=> b!76821 m!76795))

(declare-fun m!76797 () Bool)

(assert (=> b!76822 m!76797))

(assert (=> b!76326 d!18325))

(declare-fun d!18327 () Bool)

(assert (=> d!18327 (not (contains!735 (+!102 lt!34671 (tuple2!2159 lt!34669 lt!34674)) lt!34668))))

(declare-fun lt!35045 () Unit!2198)

(declare-fun choose!455 (ListLongMap!1447 (_ BitVec 64) V!2963 (_ BitVec 64)) Unit!2198)

(assert (=> d!18327 (= lt!35045 (choose!455 lt!34671 lt!34669 lt!34674 lt!34668))))

(declare-fun e!50150 () Bool)

(assert (=> d!18327 e!50150))

(declare-fun res!40387 () Bool)

(assert (=> d!18327 (=> (not res!40387) (not e!50150))))

(assert (=> d!18327 (= res!40387 (not (contains!735 lt!34671 lt!34668)))))

(assert (=> d!18327 (= (addStillNotContains!28 lt!34671 lt!34669 lt!34674 lt!34668) lt!35045)))

(declare-fun b!76826 () Bool)

(assert (=> b!76826 (= e!50150 (not (= lt!34669 lt!34668)))))

(assert (= (and d!18327 res!40387) b!76826))

(assert (=> d!18327 m!75905))

(assert (=> d!18327 m!75905))

(assert (=> d!18327 m!75907))

(declare-fun m!76799 () Bool)

(assert (=> d!18327 m!76799))

(declare-fun m!76801 () Bool)

(assert (=> d!18327 m!76801))

(assert (=> b!76326 d!18327))

(declare-fun d!18329 () Bool)

(declare-fun e!50152 () Bool)

(assert (=> d!18329 e!50152))

(declare-fun res!40388 () Bool)

(assert (=> d!18329 (=> res!40388 e!50152)))

(declare-fun lt!35049 () Bool)

(assert (=> d!18329 (= res!40388 (not lt!35049))))

(declare-fun lt!35047 () Bool)

(assert (=> d!18329 (= lt!35049 lt!35047)))

(declare-fun lt!35048 () Unit!2198)

(declare-fun e!50151 () Unit!2198)

(assert (=> d!18329 (= lt!35048 e!50151)))

(declare-fun c!11777 () Bool)

(assert (=> d!18329 (= c!11777 lt!35047)))

(assert (=> d!18329 (= lt!35047 (containsKey!138 (toList!739 (+!102 lt!34671 (tuple2!2159 lt!34669 lt!34674))) lt!34668))))

(assert (=> d!18329 (= (contains!735 (+!102 lt!34671 (tuple2!2159 lt!34669 lt!34674)) lt!34668) lt!35049)))

(declare-fun b!76827 () Bool)

(declare-fun lt!35046 () Unit!2198)

(assert (=> b!76827 (= e!50151 lt!35046)))

(assert (=> b!76827 (= lt!35046 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 (+!102 lt!34671 (tuple2!2159 lt!34669 lt!34674))) lt!34668))))

(assert (=> b!76827 (isDefined!88 (getValueByKey!134 (toList!739 (+!102 lt!34671 (tuple2!2159 lt!34669 lt!34674))) lt!34668))))

(declare-fun b!76828 () Bool)

(declare-fun Unit!2228 () Unit!2198)

(assert (=> b!76828 (= e!50151 Unit!2228)))

(declare-fun b!76829 () Bool)

(assert (=> b!76829 (= e!50152 (isDefined!88 (getValueByKey!134 (toList!739 (+!102 lt!34671 (tuple2!2159 lt!34669 lt!34674))) lt!34668)))))

(assert (= (and d!18329 c!11777) b!76827))

(assert (= (and d!18329 (not c!11777)) b!76828))

(assert (= (and d!18329 (not res!40388)) b!76829))

(declare-fun m!76803 () Bool)

(assert (=> d!18329 m!76803))

(declare-fun m!76805 () Bool)

(assert (=> b!76827 m!76805))

(declare-fun m!76807 () Bool)

(assert (=> b!76827 m!76807))

(assert (=> b!76827 m!76807))

(declare-fun m!76809 () Bool)

(assert (=> b!76827 m!76809))

(assert (=> b!76829 m!76807))

(assert (=> b!76829 m!76807))

(assert (=> b!76829 m!76809))

(assert (=> b!76326 d!18329))

(declare-fun d!18331 () Bool)

(assert (=> d!18331 (= (apply!77 lt!34630 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1172 (getValueByKey!134 (toList!739 lt!34630) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3274 () Bool)

(assert (= bs!3274 d!18331))

(assert (=> bs!3274 m!76517))

(assert (=> bs!3274 m!76517))

(declare-fun m!76811 () Bool)

(assert (=> bs!3274 m!76811))

(assert (=> b!76275 d!18331))

(declare-fun b!76846 () Bool)

(declare-fun e!50161 () Bool)

(declare-fun lt!35054 () SeekEntryResult!248)

(assert (=> b!76846 (= e!50161 ((_ is Undefined!248) lt!35054))))

(declare-fun b!76847 () Bool)

(declare-fun res!40399 () Bool)

(declare-fun e!50163 () Bool)

(assert (=> b!76847 (=> (not res!40399) (not e!50163))))

(declare-fun call!6972 () Bool)

(assert (=> b!76847 (= res!40399 call!6972)))

(assert (=> b!76847 (= e!50161 e!50163)))

(declare-fun b!76848 () Bool)

(declare-fun e!50164 () Bool)

(declare-fun call!6973 () Bool)

(assert (=> b!76848 (= e!50164 (not call!6973))))

(declare-fun b!76849 () Bool)

(assert (=> b!76849 (= e!50163 (not call!6973))))

(declare-fun d!18333 () Bool)

(declare-fun e!50162 () Bool)

(assert (=> d!18333 e!50162))

(declare-fun c!11782 () Bool)

(assert (=> d!18333 (= c!11782 ((_ is MissingZero!248) lt!35054))))

(assert (=> d!18333 (= lt!35054 (seekEntryOrOpen!0 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (_keys!3905 newMap!16) (mask!6230 newMap!16)))))

(declare-fun lt!35055 () Unit!2198)

(declare-fun choose!456 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 64) Int) Unit!2198)

(assert (=> d!18333 (= lt!35055 (choose!456 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (defaultEntry!2247 newMap!16)))))

(assert (=> d!18333 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18333 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) (defaultEntry!2247 newMap!16)) lt!35055)))

(declare-fun bm!6969 () Bool)

(assert (=> bm!6969 (= call!6972 (inRange!0 (ite c!11782 (index!3125 lt!35054) (index!3128 lt!35054)) (mask!6230 newMap!16)))))

(declare-fun b!76850 () Bool)

(assert (=> b!76850 (= e!50162 e!50161)))

(declare-fun c!11783 () Bool)

(assert (=> b!76850 (= c!11783 ((_ is MissingVacant!248) lt!35054))))

(declare-fun b!76851 () Bool)

(declare-fun res!40397 () Bool)

(assert (=> b!76851 (=> (not res!40397) (not e!50163))))

(assert (=> b!76851 (= res!40397 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3128 lt!35054)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76851 (and (bvsge (index!3128 lt!35054) #b00000000000000000000000000000000) (bvslt (index!3128 lt!35054) (size!2110 (_keys!3905 newMap!16))))))

(declare-fun b!76852 () Bool)

(assert (=> b!76852 (= e!50162 e!50164)))

(declare-fun res!40398 () Bool)

(assert (=> b!76852 (= res!40398 call!6972)))

(assert (=> b!76852 (=> (not res!40398) (not e!50164))))

(declare-fun b!76853 () Bool)

(assert (=> b!76853 (and (bvsge (index!3125 lt!35054) #b00000000000000000000000000000000) (bvslt (index!3125 lt!35054) (size!2110 (_keys!3905 newMap!16))))))

(declare-fun res!40400 () Bool)

(assert (=> b!76853 (= res!40400 (= (select (arr!1870 (_keys!3905 newMap!16)) (index!3125 lt!35054)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!76853 (=> (not res!40400) (not e!50164))))

(declare-fun bm!6970 () Bool)

(assert (=> bm!6970 (= call!6973 (arrayContainsKey!0 (_keys!3905 newMap!16) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(assert (= (and d!18333 c!11782) b!76852))

(assert (= (and d!18333 (not c!11782)) b!76850))

(assert (= (and b!76852 res!40398) b!76853))

(assert (= (and b!76853 res!40400) b!76848))

(assert (= (and b!76850 c!11783) b!76847))

(assert (= (and b!76850 (not c!11783)) b!76846))

(assert (= (and b!76847 res!40399) b!76851))

(assert (= (and b!76851 res!40397) b!76849))

(assert (= (or b!76852 b!76847) bm!6969))

(assert (= (or b!76848 b!76849) bm!6970))

(declare-fun m!76813 () Bool)

(assert (=> b!76851 m!76813))

(declare-fun m!76815 () Bool)

(assert (=> b!76853 m!76815))

(declare-fun m!76817 () Bool)

(assert (=> bm!6969 m!76817))

(assert (=> d!18333 m!75655))

(assert (=> d!18333 m!75837))

(assert (=> d!18333 m!75655))

(declare-fun m!76819 () Bool)

(assert (=> d!18333 m!76819))

(assert (=> d!18333 m!76011))

(assert (=> bm!6970 m!75655))

(assert (=> bm!6970 m!75813))

(assert (=> bm!6854 d!18333))

(assert (=> b!76081 d!18321))

(declare-fun d!18335 () Bool)

(declare-fun e!50166 () Bool)

(assert (=> d!18335 e!50166))

(declare-fun res!40401 () Bool)

(assert (=> d!18335 (=> res!40401 e!50166)))

(declare-fun lt!35059 () Bool)

(assert (=> d!18335 (= res!40401 (not lt!35059))))

(declare-fun lt!35057 () Bool)

(assert (=> d!18335 (= lt!35059 lt!35057)))

(declare-fun lt!35058 () Unit!2198)

(declare-fun e!50165 () Unit!2198)

(assert (=> d!18335 (= lt!35058 e!50165)))

(declare-fun c!11784 () Bool)

(assert (=> d!18335 (= c!11784 lt!35057)))

(assert (=> d!18335 (= lt!35057 (containsKey!138 (toList!739 e!49773) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> d!18335 (= (contains!735 e!49773 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)) lt!35059)))

(declare-fun b!76854 () Bool)

(declare-fun lt!35056 () Unit!2198)

(assert (=> b!76854 (= e!50165 lt!35056)))

(assert (=> b!76854 (= lt!35056 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 e!49773) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(assert (=> b!76854 (isDefined!88 (getValueByKey!134 (toList!739 e!49773) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355)))))

(declare-fun b!76855 () Bool)

(declare-fun Unit!2229 () Unit!2198)

(assert (=> b!76855 (= e!50165 Unit!2229)))

(declare-fun b!76856 () Bool)

(assert (=> b!76856 (= e!50166 (isDefined!88 (getValueByKey!134 (toList!739 e!49773) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355))))))

(assert (= (and d!18335 c!11784) b!76854))

(assert (= (and d!18335 (not c!11784)) b!76855))

(assert (= (and d!18335 (not res!40401)) b!76856))

(assert (=> d!18335 m!75655))

(declare-fun m!76821 () Bool)

(assert (=> d!18335 m!76821))

(assert (=> b!76854 m!75655))

(declare-fun m!76823 () Bool)

(assert (=> b!76854 m!76823))

(assert (=> b!76854 m!75655))

(declare-fun m!76825 () Bool)

(assert (=> b!76854 m!76825))

(assert (=> b!76854 m!76825))

(declare-fun m!76827 () Bool)

(assert (=> b!76854 m!76827))

(assert (=> b!76856 m!75655))

(assert (=> b!76856 m!76825))

(assert (=> b!76856 m!76825))

(assert (=> b!76856 m!76827))

(assert (=> bm!6858 d!18335))

(declare-fun d!18337 () Bool)

(declare-fun isEmpty!329 (List!1515) Bool)

(assert (=> d!18337 (= (isEmpty!327 lt!34672) (isEmpty!329 (toList!739 lt!34672)))))

(declare-fun bs!3275 () Bool)

(assert (= bs!3275 d!18337))

(declare-fun m!76829 () Bool)

(assert (=> bs!3275 m!76829))

(assert (=> b!76328 d!18337))

(declare-fun d!18339 () Bool)

(declare-fun e!50167 () Bool)

(assert (=> d!18339 e!50167))

(declare-fun res!40403 () Bool)

(assert (=> d!18339 (=> (not res!40403) (not e!50167))))

(declare-fun lt!35061 () ListLongMap!1447)

(assert (=> d!18339 (= res!40403 (contains!735 lt!35061 (_1!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(declare-fun lt!35060 () List!1515)

(assert (=> d!18339 (= lt!35061 (ListLongMap!1448 lt!35060))))

(declare-fun lt!35062 () Unit!2198)

(declare-fun lt!35063 () Unit!2198)

(assert (=> d!18339 (= lt!35062 lt!35063)))

(assert (=> d!18339 (= (getValueByKey!134 lt!35060 (_1!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18339 (= lt!35063 (lemmaContainsTupThenGetReturnValue!53 lt!35060 (_1!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18339 (= lt!35060 (insertStrictlySorted!55 (toList!739 call!6894) (_1!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) (_2!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))))))

(assert (=> d!18339 (= (+!102 call!6894 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))) lt!35061)))

(declare-fun b!76857 () Bool)

(declare-fun res!40402 () Bool)

(assert (=> b!76857 (=> (not res!40402) (not e!50167))))

(assert (=> b!76857 (= res!40402 (= (getValueByKey!134 (toList!739 lt!35061) (_1!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992)))))) (Some!139 (_2!1089 (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))))

(declare-fun b!76858 () Bool)

(assert (=> b!76858 (= e!50167 (contains!738 (toList!739 lt!35061) (tuple2!2159 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2146 (v!2562 (underlying!270 thiss!992))))))))

(assert (= (and d!18339 res!40403) b!76857))

(assert (= (and b!76857 res!40402) b!76858))

(declare-fun m!76831 () Bool)

(assert (=> d!18339 m!76831))

(declare-fun m!76833 () Bool)

(assert (=> d!18339 m!76833))

(declare-fun m!76835 () Bool)

(assert (=> d!18339 m!76835))

(declare-fun m!76837 () Bool)

(assert (=> d!18339 m!76837))

(declare-fun m!76839 () Bool)

(assert (=> b!76857 m!76839))

(declare-fun m!76841 () Bool)

(assert (=> b!76858 m!76841))

(assert (=> b!76277 d!18339))

(assert (=> d!18089 d!18109))

(declare-fun d!18341 () Bool)

(declare-fun e!50169 () Bool)

(assert (=> d!18341 e!50169))

(declare-fun res!40404 () Bool)

(assert (=> d!18341 (=> res!40404 e!50169)))

(declare-fun lt!35067 () Bool)

(assert (=> d!18341 (= res!40404 (not lt!35067))))

(declare-fun lt!35065 () Bool)

(assert (=> d!18341 (= lt!35067 lt!35065)))

(declare-fun lt!35066 () Unit!2198)

(declare-fun e!50168 () Unit!2198)

(assert (=> d!18341 (= lt!35066 e!50168)))

(declare-fun c!11785 () Bool)

(assert (=> d!18341 (= c!11785 lt!35065)))

(assert (=> d!18341 (= lt!35065 (containsKey!138 (toList!739 call!6872) (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34561))))))

(assert (=> d!18341 (= (contains!735 call!6872 (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34561))) lt!35067)))

(declare-fun b!76859 () Bool)

(declare-fun lt!35064 () Unit!2198)

(assert (=> b!76859 (= e!50168 lt!35064)))

(assert (=> b!76859 (= lt!35064 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 (toList!739 call!6872) (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34561))))))

(assert (=> b!76859 (isDefined!88 (getValueByKey!134 (toList!739 call!6872) (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34561))))))

(declare-fun b!76860 () Bool)

(declare-fun Unit!2230 () Unit!2198)

(assert (=> b!76860 (= e!50168 Unit!2230)))

(declare-fun b!76861 () Bool)

(assert (=> b!76861 (= e!50169 (isDefined!88 (getValueByKey!134 (toList!739 call!6872) (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34561)))))))

(assert (= (and d!18341 c!11785) b!76859))

(assert (= (and d!18341 (not c!11785)) b!76860))

(assert (= (and d!18341 (not res!40404)) b!76861))

(assert (=> d!18341 m!75829))

(declare-fun m!76843 () Bool)

(assert (=> d!18341 m!76843))

(assert (=> b!76859 m!75829))

(declare-fun m!76845 () Bool)

(assert (=> b!76859 m!76845))

(assert (=> b!76859 m!75829))

(declare-fun m!76847 () Bool)

(assert (=> b!76859 m!76847))

(assert (=> b!76859 m!76847))

(declare-fun m!76849 () Bool)

(assert (=> b!76859 m!76849))

(assert (=> b!76861 m!75829))

(assert (=> b!76861 m!76847))

(assert (=> b!76861 m!76847))

(assert (=> b!76861 m!76849))

(assert (=> b!76219 d!18341))

(declare-fun d!18343 () Bool)

(declare-fun e!50172 () Bool)

(assert (=> d!18343 e!50172))

(declare-fun res!40407 () Bool)

(assert (=> d!18343 (=> (not res!40407) (not e!50172))))

(assert (=> d!18343 (= res!40407 (and (bvsge (index!3126 lt!34561) #b00000000000000000000000000000000) (bvslt (index!3126 lt!34561) (size!2110 (_keys!3905 newMap!16)))))))

(declare-fun lt!35070 () Unit!2198)

(declare-fun choose!457 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 32) Int) Unit!2198)

(assert (=> d!18343 (= lt!35070 (choose!457 (_keys!3905 newMap!16) lt!34568 (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (index!3126 lt!34561) (defaultEntry!2247 newMap!16)))))

(assert (=> d!18343 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18343 (= (lemmaValidKeyInArrayIsInListMap!84 (_keys!3905 newMap!16) lt!34568 (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (index!3126 lt!34561) (defaultEntry!2247 newMap!16)) lt!35070)))

(declare-fun b!76864 () Bool)

(assert (=> b!76864 (= e!50172 (contains!735 (getCurrentListMap!430 (_keys!3905 newMap!16) lt!34568 (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) (select (arr!1870 (_keys!3905 newMap!16)) (index!3126 lt!34561))))))

(assert (= (and d!18343 res!40407) b!76864))

(declare-fun m!76851 () Bool)

(assert (=> d!18343 m!76851))

(assert (=> d!18343 m!76011))

(declare-fun m!76853 () Bool)

(assert (=> b!76864 m!76853))

(assert (=> b!76864 m!75829))

(assert (=> b!76864 m!76853))

(assert (=> b!76864 m!75829))

(declare-fun m!76855 () Bool)

(assert (=> b!76864 m!76855))

(assert (=> b!76219 d!18343))

(declare-fun d!18345 () Bool)

(declare-fun e!50175 () Bool)

(assert (=> d!18345 e!50175))

(declare-fun res!40410 () Bool)

(assert (=> d!18345 (=> (not res!40410) (not e!50175))))

(assert (=> d!18345 (= res!40410 (and (bvsge (index!3126 lt!34561) #b00000000000000000000000000000000) (bvslt (index!3126 lt!34561) (size!2111 (_values!2230 newMap!16)))))))

(declare-fun lt!35073 () Unit!2198)

(declare-fun choose!458 (array!3922 array!3924 (_ BitVec 32) (_ BitVec 32) V!2963 V!2963 (_ BitVec 32) (_ BitVec 64) V!2963 Int) Unit!2198)

(assert (=> d!18345 (= lt!35073 (choose!458 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (index!3126 lt!34561) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 (defaultEntry!2247 newMap!16)))))

(assert (=> d!18345 (validMask!0 (mask!6230 newMap!16))))

(assert (=> d!18345 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!26 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) (index!3126 lt!34561) (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446 (defaultEntry!2247 newMap!16)) lt!35073)))

(declare-fun b!76867 () Bool)

(assert (=> b!76867 (= e!50175 (= (+!102 (getCurrentListMap!430 (_keys!3905 newMap!16) (_values!2230 newMap!16) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16)) (tuple2!2159 (select (arr!1870 (_keys!3905 (v!2562 (underlying!270 thiss!992)))) from!355) lt!34446)) (getCurrentListMap!430 (_keys!3905 newMap!16) (array!3925 (store (arr!1871 (_values!2230 newMap!16)) (index!3126 lt!34561) (ValueCellFull!900 lt!34446)) (size!2111 (_values!2230 newMap!16))) (mask!6230 newMap!16) (extraKeys!2100 newMap!16) (zeroValue!2146 newMap!16) (minValue!2146 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2247 newMap!16))))))

(assert (= (and d!18345 res!40410) b!76867))

(assert (=> d!18345 m!75655))

(declare-fun m!76857 () Bool)

(assert (=> d!18345 m!76857))

(assert (=> d!18345 m!76011))

(assert (=> b!76867 m!75833))

(assert (=> b!76867 m!75833))

(assert (=> b!76867 m!76565))

(assert (=> b!76867 m!75793))

(declare-fun m!76859 () Bool)

(assert (=> b!76867 m!76859))

(assert (=> b!76219 d!18345))

(declare-fun mapIsEmpty!3233 () Bool)

(declare-fun mapRes!3233 () Bool)

(assert (=> mapIsEmpty!3233 mapRes!3233))

(declare-fun b!76868 () Bool)

(declare-fun e!50177 () Bool)

(assert (=> b!76868 (= e!50177 tp_is_empty!2487)))

(declare-fun mapNonEmpty!3233 () Bool)

(declare-fun tp!8633 () Bool)

(assert (=> mapNonEmpty!3233 (= mapRes!3233 (and tp!8633 e!50177))))

(declare-fun mapRest!3233 () (Array (_ BitVec 32) ValueCell!900))

(declare-fun mapKey!3233 () (_ BitVec 32))

(declare-fun mapValue!3233 () ValueCell!900)

(assert (=> mapNonEmpty!3233 (= mapRest!3231 (store mapRest!3233 mapKey!3233 mapValue!3233))))

(declare-fun condMapEmpty!3233 () Bool)

(declare-fun mapDefault!3233 () ValueCell!900)

(assert (=> mapNonEmpty!3231 (= condMapEmpty!3233 (= mapRest!3231 ((as const (Array (_ BitVec 32) ValueCell!900)) mapDefault!3233)))))

(declare-fun e!50176 () Bool)

(assert (=> mapNonEmpty!3231 (= tp!8631 (and e!50176 mapRes!3233))))

(declare-fun b!76869 () Bool)

(assert (=> b!76869 (= e!50176 tp_is_empty!2487)))

(assert (= (and mapNonEmpty!3231 condMapEmpty!3233) mapIsEmpty!3233))

(assert (= (and mapNonEmpty!3231 (not condMapEmpty!3233)) mapNonEmpty!3233))

(assert (= (and mapNonEmpty!3233 ((_ is ValueCellFull!900) mapValue!3233)) b!76868))

(assert (= (and mapNonEmpty!3231 ((_ is ValueCellFull!900) mapDefault!3233)) b!76869))

(declare-fun m!76861 () Bool)

(assert (=> mapNonEmpty!3233 m!76861))

(declare-fun mapIsEmpty!3234 () Bool)

(declare-fun mapRes!3234 () Bool)

(assert (=> mapIsEmpty!3234 mapRes!3234))

(declare-fun b!76870 () Bool)

(declare-fun e!50179 () Bool)

(assert (=> b!76870 (= e!50179 tp_is_empty!2487)))

(declare-fun mapNonEmpty!3234 () Bool)

(declare-fun tp!8634 () Bool)

(assert (=> mapNonEmpty!3234 (= mapRes!3234 (and tp!8634 e!50179))))

(declare-fun mapValue!3234 () ValueCell!900)

(declare-fun mapKey!3234 () (_ BitVec 32))

(declare-fun mapRest!3234 () (Array (_ BitVec 32) ValueCell!900))

(assert (=> mapNonEmpty!3234 (= mapRest!3232 (store mapRest!3234 mapKey!3234 mapValue!3234))))

(declare-fun condMapEmpty!3234 () Bool)

(declare-fun mapDefault!3234 () ValueCell!900)

(assert (=> mapNonEmpty!3232 (= condMapEmpty!3234 (= mapRest!3232 ((as const (Array (_ BitVec 32) ValueCell!900)) mapDefault!3234)))))

(declare-fun e!50178 () Bool)

(assert (=> mapNonEmpty!3232 (= tp!8632 (and e!50178 mapRes!3234))))

(declare-fun b!76871 () Bool)

(assert (=> b!76871 (= e!50178 tp_is_empty!2487)))

(assert (= (and mapNonEmpty!3232 condMapEmpty!3234) mapIsEmpty!3234))

(assert (= (and mapNonEmpty!3232 (not condMapEmpty!3234)) mapNonEmpty!3234))

(assert (= (and mapNonEmpty!3234 ((_ is ValueCellFull!900) mapValue!3234)) b!76870))

(assert (= (and mapNonEmpty!3232 ((_ is ValueCellFull!900) mapDefault!3234)) b!76871))

(declare-fun m!76863 () Bool)

(assert (=> mapNonEmpty!3234 m!76863))

(declare-fun b_lambda!3451 () Bool)

(assert (= b_lambda!3445 (or (and b!75994 b_free!2141 (= (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) (defaultEntry!2247 newMap!16))) (and b!76000 b_free!2143) b_lambda!3451)))

(declare-fun b_lambda!3453 () Bool)

(assert (= b_lambda!3443 (or (and b!75994 b_free!2141 (= (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) (defaultEntry!2247 newMap!16))) (and b!76000 b_free!2143) b_lambda!3453)))

(declare-fun b_lambda!3455 () Bool)

(assert (= b_lambda!3441 (or (and b!75994 b_free!2141 (= (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))) (defaultEntry!2247 newMap!16))) (and b!76000 b_free!2143) b_lambda!3455)))

(declare-fun b_lambda!3457 () Bool)

(assert (= b_lambda!3447 (or (and b!75994 b_free!2141) (and b!76000 b_free!2143 (= (defaultEntry!2247 newMap!16) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))))) b_lambda!3457)))

(declare-fun b_lambda!3459 () Bool)

(assert (= b_lambda!3449 (or (and b!75994 b_free!2141) (and b!76000 b_free!2143 (= (defaultEntry!2247 newMap!16) (defaultEntry!2247 (v!2562 (underlying!270 thiss!992))))) b_lambda!3459)))

(check-sat (not d!18153) (not b!76563) (not b!76634) (not d!18263) (not b!76430) (not b!76559) (not b!76771) (not b!76776) (not d!18295) (not b!76779) (not b!76775) (not b!76541) (not b!76741) (not b!76449) (not b!76654) (not b!76417) (not b!76483) (not b!76778) (not b!76809) (not b!76503) (not b!76582) (not b!76698) (not d!18209) (not bm!6970) (not b!76801) (not b!76628) (not b!76590) (not b!76665) (not b!76603) (not d!18281) (not d!18187) (not d!18195) (not b!76797) (not b!76579) (not b!76499) (not b!76432) (not b!76607) (not b!76405) (not d!18301) (not b!76491) (not d!18185) (not b!76386) (not b!76473) (not b!76781) (not b!76656) (not d!18285) (not d!18215) (not d!18177) (not b!76744) (not b!76821) (not d!18193) (not b_lambda!3457) (not d!18299) (not d!18189) (not d!18291) (not b!76767) (not b_lambda!3437) (not d!18309) tp_is_empty!2487 (not b!76609) (not b!76489) (not b!76431) (not b!76434) (not b!76569) (not b!76796) (not b!76633) (not b!76494) (not d!18243) (not b!76588) (not b!76568) (not d!18315) (not b!76792) (not d!18211) (not d!18287) (not b!76596) (not d!18151) (not bm!6914) (not d!18339) (not bm!6906) (not d!18317) (not bm!6943) (not d!18207) (not bm!6958) (not b!76652) (not b!76812) (not bm!6946) (not b!76679) (not b!76500) (not d!18311) (not b!76686) (not b!76818) (not b!76593) (not b!76804) (not mapNonEmpty!3233) (not b!76820) (not b!76688) (not b!76683) (not d!18279) (not b!76511) (not bm!6923) (not d!18337) (not b!76693) (not b!76858) (not d!18323) (not b!76616) (not b!76802) (not d!18325) (not b!76646) (not d!18345) (not b!76573) (not bm!6948) (not b!76774) (not b!76550) (not b!76747) (not b_lambda!3455) (not bm!6912) (not b!76704) (not d!18135) (not d!18223) (not d!18273) (not b!76680) (not d!18227) (not b!76639) (not b!76637) (not d!18307) (not b!76403) (not b!76478) (not b!76495) (not d!18233) (not b!76651) (not b!76793) b_and!4691 (not b!76660) (not b!76601) (not b!76552) (not d!18173) (not d!18313) (not b!76554) (not b!76436) (not bm!6908) (not bm!6927) (not d!18159) (not bm!6944) (not d!18267) (not b!76670) (not b!76487) (not d!18305) (not b!76800) (not d!18343) (not d!18261) (not b!76789) (not d!18329) (not b!76598) (not b!76684) (not mapNonEmpty!3234) (not b!76691) (not b!76570) (not bm!6942) (not b!76631) (not b!76645) (not b!76480) (not d!18175) (not d!18201) (not d!18225) (not b!76743) (not d!18249) (not d!18149) (not b!76857) (not d!18139) (not b!76859) (not bm!6924) (not b!76612) (not d!18327) (not d!18239) (not b!76653) (not b!76543) (not b!76701) (not d!18297) (not b!76650) (not d!18155) (not b_lambda!3453) (not b!76604) (not b!76501) (not bm!6963) (not d!18165) (not d!18335) (not d!18129) (not d!18141) (not b!76773) (not b!76472) (not d!18303) (not d!18235) (not b!76551) (not bm!6934) (not b!76620) (not b!76827) (not b!76497) (not d!18257) (not b!76854) (not d!18231) (not b!76496) (not b!76864) (not bm!6907) (not b!76416) (not bm!6913) (not b!76506) (not bm!6940) (not b!76418) (not bm!6910) (not bm!6969) (not d!18219) (not b!76856) (not d!18179) (not b!76505) (not bm!6960) (not bm!6928) (not d!18259) (not d!18333) (not bm!6959) (not b!76690) (not bm!6964) (not b!76546) (not b!76518) (not b!76388) (not b!76777) (not b_lambda!3427) (not d!18133) (not d!18203) (not b!76867) (not b!76748) (not b!76476) b_and!4689 (not b!76647) (not d!18341) (not d!18217) (not d!18241) (not b!76450) (not d!18143) (not b!76584) (not b!76471) (not b!76498) (not b_lambda!3435) (not bm!6926) (not b!76753) (not d!18237) (not b!76666) (not b!76772) (not b!76577) (not b!76407) (not d!18283) (not b_next!2143) (not b!76439) (not b!76585) (not d!18183) (not b_lambda!3451) (not bm!6937) (not b!76556) (not b!76411) (not b!76508) (not b_lambda!3439) (not bm!6930) (not b!76479) (not b!76682) (not b!76795) (not b!76770) (not d!18277) (not b!76626) (not d!18247) (not b!76798) (not d!18293) (not b_next!2141) (not b_lambda!3459) (not b!76861) (not b!76623) (not d!18331) (not b!76822) (not d!18181) (not b!76517) (not b!76502) (not b!76399) (not b!76557) (not b!76467) (not b!76642) (not b!76421) (not b!76649) (not d!18289) (not b!76490) (not b!76829) (not b!76667) (not b!76625) (not b!76819) (not b!76404))
(check-sat b_and!4689 b_and!4691 (not b_next!2141) (not b_next!2143))
