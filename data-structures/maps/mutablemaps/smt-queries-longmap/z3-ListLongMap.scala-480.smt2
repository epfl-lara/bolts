; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10144 () Bool)

(assert start!10144)

(declare-fun b!77007 () Bool)

(declare-fun b_free!2153 () Bool)

(declare-fun b_next!2153 () Bool)

(assert (=> b!77007 (= b_free!2153 (not b_next!2153))))

(declare-fun tp!8656 () Bool)

(declare-fun b_and!4701 () Bool)

(assert (=> b!77007 (= tp!8656 b_and!4701)))

(declare-fun b!77002 () Bool)

(declare-fun b_free!2155 () Bool)

(declare-fun b_next!2155 () Bool)

(assert (=> b!77002 (= b_free!2155 (not b_next!2155))))

(declare-fun tp!8657 () Bool)

(declare-fun b_and!4703 () Bool)

(assert (=> b!77002 (= tp!8657 b_and!4703)))

(declare-fun b!76989 () Bool)

(declare-fun e!50285 () Bool)

(declare-fun e!50286 () Bool)

(declare-fun mapRes!3245 () Bool)

(assert (=> b!76989 (= e!50285 (and e!50286 mapRes!3245))))

(declare-fun condMapEmpty!3246 () Bool)

(declare-datatypes ((V!2971 0))(
  ( (V!2972 (val!1291 Int)) )
))
(declare-datatypes ((array!3936 0))(
  ( (array!3937 (arr!1876 (Array (_ BitVec 32) (_ BitVec 64))) (size!2117 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!903 0))(
  ( (ValueCellFull!903 (v!2573 V!2971)) (EmptyCell!903) )
))
(declare-datatypes ((array!3938 0))(
  ( (array!3939 (arr!1877 (Array (_ BitVec 32) ValueCell!903)) (size!2118 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!714 0))(
  ( (LongMapFixedSize!715 (defaultEntry!2260 Int) (mask!6249 (_ BitVec 32)) (extraKeys!2111 (_ BitVec 32)) (zeroValue!2158 V!2971) (minValue!2158 V!2971) (_size!406 (_ BitVec 32)) (_keys!3920 array!3936) (_values!2243 array!3938) (_vacant!406 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!714)

(declare-fun mapDefault!3245 () ValueCell!903)

(assert (=> b!76989 (= condMapEmpty!3246 (= (arr!1877 (_values!2243 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!903)) mapDefault!3245)))))

(declare-fun b!76990 () Bool)

(declare-fun e!50279 () Bool)

(declare-fun e!50282 () Bool)

(assert (=> b!76990 (= e!50279 e!50282)))

(declare-fun res!40469 () Bool)

(assert (=> b!76990 (=> (not res!40469) (not e!50282))))

(declare-datatypes ((Cell!522 0))(
  ( (Cell!523 (v!2574 LongMapFixedSize!714)) )
))
(declare-datatypes ((LongMap!522 0))(
  ( (LongMap!523 (underlying!272 Cell!522)) )
))
(declare-fun thiss!992 () LongMap!522)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!76990 (= res!40469 (and (not (= (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!35136 () V!2971)

(declare-fun get!1175 (ValueCell!903 V!2971) V!2971)

(declare-fun dynLambda!340 (Int (_ BitVec 64)) V!2971)

(assert (=> b!76990 (= lt!35136 (get!1175 (select (arr!1877 (_values!2243 (v!2574 (underlying!272 thiss!992)))) from!355) (dynLambda!340 (defaultEntry!2260 (v!2574 (underlying!272 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!76991 () Bool)

(declare-fun e!50273 () Bool)

(declare-fun tp_is_empty!2493 () Bool)

(assert (=> b!76991 (= e!50273 tp_is_empty!2493)))

(declare-fun b!76992 () Bool)

(declare-fun e!50287 () Bool)

(declare-fun e!50283 () Bool)

(assert (=> b!76992 (= e!50287 (not e!50283))))

(declare-fun res!40468 () Bool)

(assert (=> b!76992 (=> res!40468 e!50283)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!76992 (= res!40468 (not (validMask!0 (mask!6249 (v!2574 (underlying!272 thiss!992))))))))

(declare-datatypes ((tuple2!2166 0))(
  ( (tuple2!2167 (_1!1093 (_ BitVec 64)) (_2!1093 V!2971)) )
))
(declare-datatypes ((List!1519 0))(
  ( (Nil!1516) (Cons!1515 (h!2103 tuple2!2166) (t!5133 List!1519)) )
))
(declare-datatypes ((ListLongMap!1451 0))(
  ( (ListLongMap!1452 (toList!741 List!1519)) )
))
(declare-fun lt!35143 () ListLongMap!1451)

(declare-fun lt!35139 () tuple2!2166)

(declare-fun lt!35142 () tuple2!2166)

(declare-fun +!103 (ListLongMap!1451 tuple2!2166) ListLongMap!1451)

(assert (=> b!76992 (= (+!103 (+!103 lt!35143 lt!35139) lt!35142) (+!103 (+!103 lt!35143 lt!35142) lt!35139))))

(assert (=> b!76992 (= lt!35142 (tuple2!2167 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2158 (v!2574 (underlying!272 thiss!992)))))))

(assert (=> b!76992 (= lt!35139 (tuple2!2167 (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) lt!35136))))

(declare-datatypes ((Unit!2231 0))(
  ( (Unit!2232) )
))
(declare-fun lt!35141 () Unit!2231)

(declare-fun addCommutativeForDiffKeys!22 (ListLongMap!1451 (_ BitVec 64) V!2971 (_ BitVec 64) V!2971) Unit!2231)

(assert (=> b!76992 (= lt!35141 (addCommutativeForDiffKeys!22 lt!35143 (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) lt!35136 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2158 (v!2574 (underlying!272 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!67 (array!3936 array!3938 (_ BitVec 32) (_ BitVec 32) V!2971 V!2971 (_ BitVec 32) Int) ListLongMap!1451)

(assert (=> b!76992 (= lt!35143 (getCurrentListMapNoExtraKeys!67 (_keys!3920 (v!2574 (underlying!272 thiss!992))) (_values!2243 (v!2574 (underlying!272 thiss!992))) (mask!6249 (v!2574 (underlying!272 thiss!992))) (extraKeys!2111 (v!2574 (underlying!272 thiss!992))) (zeroValue!2158 (v!2574 (underlying!272 thiss!992))) (minValue!2158 (v!2574 (underlying!272 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2260 (v!2574 (underlying!272 thiss!992)))))))

(declare-fun b!76993 () Bool)

(declare-fun e!50284 () Unit!2231)

(declare-fun Unit!2233 () Unit!2231)

(assert (=> b!76993 (= e!50284 Unit!2233)))

(declare-fun b!76994 () Bool)

(assert (=> b!76994 (= e!50283 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000))))

(declare-fun b!76995 () Bool)

(assert (=> b!76995 (= e!50286 tp_is_empty!2493)))

(declare-fun b!76996 () Bool)

(declare-fun res!40475 () Bool)

(declare-fun e!50274 () Bool)

(assert (=> b!76996 (=> (not res!40475) (not e!50274))))

(assert (=> b!76996 (= res!40475 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6249 newMap!16)) (_size!406 (v!2574 (underlying!272 thiss!992)))))))

(declare-fun mapIsEmpty!3245 () Bool)

(declare-fun mapRes!3246 () Bool)

(assert (=> mapIsEmpty!3245 mapRes!3246))

(declare-fun b!76997 () Bool)

(declare-fun Unit!2234 () Unit!2231)

(assert (=> b!76997 (= e!50284 Unit!2234)))

(declare-fun lt!35145 () Unit!2231)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!57 (array!3936 array!3938 (_ BitVec 32) (_ BitVec 32) V!2971 V!2971 (_ BitVec 64) (_ BitVec 32) Int) Unit!2231)

(assert (=> b!76997 (= lt!35145 (lemmaListMapContainsThenArrayContainsFrom!57 (_keys!3920 (v!2574 (underlying!272 thiss!992))) (_values!2243 (v!2574 (underlying!272 thiss!992))) (mask!6249 (v!2574 (underlying!272 thiss!992))) (extraKeys!2111 (v!2574 (underlying!272 thiss!992))) (zeroValue!2158 (v!2574 (underlying!272 thiss!992))) (minValue!2158 (v!2574 (underlying!272 thiss!992))) (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2260 (v!2574 (underlying!272 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!76997 (arrayContainsKey!0 (_keys!3920 (v!2574 (underlying!272 thiss!992))) (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!35135 () Unit!2231)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3936 (_ BitVec 32) (_ BitVec 32)) Unit!2231)

(assert (=> b!76997 (= lt!35135 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3920 (v!2574 (underlying!272 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1520 0))(
  ( (Nil!1517) (Cons!1516 (h!2104 (_ BitVec 64)) (t!5134 List!1520)) )
))
(declare-fun arrayNoDuplicates!0 (array!3936 (_ BitVec 32) List!1520) Bool)

(assert (=> b!76997 (arrayNoDuplicates!0 (_keys!3920 (v!2574 (underlying!272 thiss!992))) from!355 Nil!1517)))

(declare-fun lt!35140 () Unit!2231)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3936 (_ BitVec 32) (_ BitVec 64) List!1520) Unit!2231)

(assert (=> b!76997 (= lt!35140 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3920 (v!2574 (underlying!272 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) (Cons!1516 (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) Nil!1517)))))

(assert (=> b!76997 false))

(declare-fun b!76998 () Bool)

(declare-fun res!40467 () Bool)

(assert (=> b!76998 (=> res!40467 e!50283)))

(assert (=> b!76998 (= res!40467 (or (not (= (size!2118 (_values!2243 (v!2574 (underlying!272 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6249 (v!2574 (underlying!272 thiss!992)))))) (not (= (size!2117 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) (size!2118 (_values!2243 (v!2574 (underlying!272 thiss!992)))))) (bvslt (mask!6249 (v!2574 (underlying!272 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2111 (v!2574 (underlying!272 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2111 (v!2574 (underlying!272 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!3245 () Bool)

(declare-fun tp!8655 () Bool)

(declare-fun e!50276 () Bool)

(assert (=> mapNonEmpty!3245 (= mapRes!3245 (and tp!8655 e!50276))))

(declare-fun mapKey!3245 () (_ BitVec 32))

(declare-fun mapRest!3246 () (Array (_ BitVec 32) ValueCell!903))

(declare-fun mapValue!3246 () ValueCell!903)

(assert (=> mapNonEmpty!3245 (= (arr!1877 (_values!2243 newMap!16)) (store mapRest!3246 mapKey!3245 mapValue!3246))))

(declare-fun b!76999 () Bool)

(assert (=> b!76999 (= e!50282 e!50287)))

(declare-fun res!40474 () Bool)

(assert (=> b!76999 (=> (not res!40474) (not e!50287))))

(declare-datatypes ((tuple2!2168 0))(
  ( (tuple2!2169 (_1!1094 Bool) (_2!1094 LongMapFixedSize!714)) )
))
(declare-fun lt!35138 () tuple2!2168)

(assert (=> b!76999 (= res!40474 (and (_1!1094 lt!35138) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!35137 () Unit!2231)

(assert (=> b!76999 (= lt!35137 e!50284)))

(declare-fun lt!35134 () ListLongMap!1451)

(declare-fun c!11791 () Bool)

(declare-fun contains!739 (ListLongMap!1451 (_ BitVec 64)) Bool)

(assert (=> b!76999 (= c!11791 (contains!739 lt!35134 (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355)))))

(declare-fun update!107 (LongMapFixedSize!714 (_ BitVec 64) V!2971) tuple2!2168)

(assert (=> b!76999 (= lt!35138 (update!107 newMap!16 (select (arr!1876 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) from!355) lt!35136))))

(declare-fun b!77000 () Bool)

(declare-fun e!50272 () Bool)

(assert (=> b!77000 (= e!50272 tp_is_empty!2493)))

(declare-fun b!77001 () Bool)

(declare-fun res!40470 () Bool)

(assert (=> b!77001 (=> (not res!40470) (not e!50274))))

(assert (=> b!77001 (= res!40470 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2117 (_keys!3920 (v!2574 (underlying!272 thiss!992)))))))))

(declare-fun e!50277 () Bool)

(declare-fun array_inv!1115 (array!3936) Bool)

(declare-fun array_inv!1116 (array!3938) Bool)

(assert (=> b!77002 (= e!50277 (and tp!8657 tp_is_empty!2493 (array_inv!1115 (_keys!3920 newMap!16)) (array_inv!1116 (_values!2243 newMap!16)) e!50285))))

(declare-fun b!77003 () Bool)

(declare-fun e!50275 () Bool)

(assert (=> b!77003 (= e!50275 (and e!50273 mapRes!3246))))

(declare-fun condMapEmpty!3245 () Bool)

(declare-fun mapDefault!3246 () ValueCell!903)

(assert (=> b!77003 (= condMapEmpty!3245 (= (arr!1877 (_values!2243 (v!2574 (underlying!272 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!903)) mapDefault!3246)))))

(declare-fun b!77004 () Bool)

(declare-fun res!40471 () Bool)

(assert (=> b!77004 (=> res!40471 e!50283)))

(assert (=> b!77004 (= res!40471 (not (arrayNoDuplicates!0 (_keys!3920 (v!2574 (underlying!272 thiss!992))) #b00000000000000000000000000000000 Nil!1517)))))

(declare-fun b!77005 () Bool)

(declare-fun e!50280 () Bool)

(declare-fun e!50281 () Bool)

(assert (=> b!77005 (= e!50280 e!50281)))

(declare-fun b!77006 () Bool)

(assert (=> b!77006 (= e!50274 e!50279)))

(declare-fun res!40476 () Bool)

(assert (=> b!77006 (=> (not res!40476) (not e!50279))))

(declare-fun lt!35144 () ListLongMap!1451)

(assert (=> b!77006 (= res!40476 (= lt!35144 lt!35134))))

(declare-fun map!1169 (LongMapFixedSize!714) ListLongMap!1451)

(assert (=> b!77006 (= lt!35134 (map!1169 newMap!16))))

(declare-fun getCurrentListMap!431 (array!3936 array!3938 (_ BitVec 32) (_ BitVec 32) V!2971 V!2971 (_ BitVec 32) Int) ListLongMap!1451)

(assert (=> b!77006 (= lt!35144 (getCurrentListMap!431 (_keys!3920 (v!2574 (underlying!272 thiss!992))) (_values!2243 (v!2574 (underlying!272 thiss!992))) (mask!6249 (v!2574 (underlying!272 thiss!992))) (extraKeys!2111 (v!2574 (underlying!272 thiss!992))) (zeroValue!2158 (v!2574 (underlying!272 thiss!992))) (minValue!2158 (v!2574 (underlying!272 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2260 (v!2574 (underlying!272 thiss!992)))))))

(declare-fun res!40473 () Bool)

(assert (=> start!10144 (=> (not res!40473) (not e!50274))))

(declare-fun valid!302 (LongMap!522) Bool)

(assert (=> start!10144 (= res!40473 (valid!302 thiss!992))))

(assert (=> start!10144 e!50274))

(assert (=> start!10144 e!50280))

(assert (=> start!10144 true))

(assert (=> start!10144 e!50277))

(declare-fun e!50270 () Bool)

(assert (=> b!77007 (= e!50270 (and tp!8656 tp_is_empty!2493 (array_inv!1115 (_keys!3920 (v!2574 (underlying!272 thiss!992)))) (array_inv!1116 (_values!2243 (v!2574 (underlying!272 thiss!992)))) e!50275))))

(declare-fun b!77008 () Bool)

(declare-fun res!40466 () Bool)

(assert (=> b!77008 (=> res!40466 e!50283)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3936 (_ BitVec 32)) Bool)

(assert (=> b!77008 (= res!40466 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3920 (v!2574 (underlying!272 thiss!992))) (mask!6249 (v!2574 (underlying!272 thiss!992))))))))

(declare-fun b!77009 () Bool)

(assert (=> b!77009 (= e!50281 e!50270)))

(declare-fun mapNonEmpty!3246 () Bool)

(declare-fun tp!8658 () Bool)

(assert (=> mapNonEmpty!3246 (= mapRes!3246 (and tp!8658 e!50272))))

(declare-fun mapRest!3245 () (Array (_ BitVec 32) ValueCell!903))

(declare-fun mapValue!3245 () ValueCell!903)

(declare-fun mapKey!3246 () (_ BitVec 32))

(assert (=> mapNonEmpty!3246 (= (arr!1877 (_values!2243 (v!2574 (underlying!272 thiss!992)))) (store mapRest!3245 mapKey!3246 mapValue!3245))))

(declare-fun b!77010 () Bool)

(assert (=> b!77010 (= e!50276 tp_is_empty!2493)))

(declare-fun mapIsEmpty!3246 () Bool)

(assert (=> mapIsEmpty!3246 mapRes!3245))

(declare-fun b!77011 () Bool)

(declare-fun res!40472 () Bool)

(assert (=> b!77011 (=> (not res!40472) (not e!50274))))

(declare-fun valid!303 (LongMapFixedSize!714) Bool)

(assert (=> b!77011 (= res!40472 (valid!303 newMap!16))))

(assert (= (and start!10144 res!40473) b!77001))

(assert (= (and b!77001 res!40470) b!77011))

(assert (= (and b!77011 res!40472) b!76996))

(assert (= (and b!76996 res!40475) b!77006))

(assert (= (and b!77006 res!40476) b!76990))

(assert (= (and b!76990 res!40469) b!76999))

(assert (= (and b!76999 c!11791) b!76997))

(assert (= (and b!76999 (not c!11791)) b!76993))

(assert (= (and b!76999 res!40474) b!76992))

(assert (= (and b!76992 (not res!40468)) b!76998))

(assert (= (and b!76998 (not res!40467)) b!77008))

(assert (= (and b!77008 (not res!40466)) b!77004))

(assert (= (and b!77004 (not res!40471)) b!76994))

(assert (= (and b!77003 condMapEmpty!3245) mapIsEmpty!3245))

(assert (= (and b!77003 (not condMapEmpty!3245)) mapNonEmpty!3246))

(get-info :version)

(assert (= (and mapNonEmpty!3246 ((_ is ValueCellFull!903) mapValue!3245)) b!77000))

(assert (= (and b!77003 ((_ is ValueCellFull!903) mapDefault!3246)) b!76991))

(assert (= b!77007 b!77003))

(assert (= b!77009 b!77007))

(assert (= b!77005 b!77009))

(assert (= start!10144 b!77005))

(assert (= (and b!76989 condMapEmpty!3246) mapIsEmpty!3246))

(assert (= (and b!76989 (not condMapEmpty!3246)) mapNonEmpty!3245))

(assert (= (and mapNonEmpty!3245 ((_ is ValueCellFull!903) mapValue!3246)) b!77010))

(assert (= (and b!76989 ((_ is ValueCellFull!903) mapDefault!3245)) b!76995))

(assert (= b!77002 b!76989))

(assert (= start!10144 b!77002))

(declare-fun b_lambda!3463 () Bool)

(assert (=> (not b_lambda!3463) (not b!76990)))

(declare-fun t!5130 () Bool)

(declare-fun tb!1585 () Bool)

(assert (=> (and b!77007 (= (defaultEntry!2260 (v!2574 (underlying!272 thiss!992))) (defaultEntry!2260 (v!2574 (underlying!272 thiss!992)))) t!5130) tb!1585))

(declare-fun result!2759 () Bool)

(assert (=> tb!1585 (= result!2759 tp_is_empty!2493)))

(assert (=> b!76990 t!5130))

(declare-fun b_and!4705 () Bool)

(assert (= b_and!4701 (and (=> t!5130 result!2759) b_and!4705)))

(declare-fun tb!1587 () Bool)

(declare-fun t!5132 () Bool)

(assert (=> (and b!77002 (= (defaultEntry!2260 newMap!16) (defaultEntry!2260 (v!2574 (underlying!272 thiss!992)))) t!5132) tb!1587))

(declare-fun result!2763 () Bool)

(assert (= result!2763 result!2759))

(assert (=> b!76990 t!5132))

(declare-fun b_and!4707 () Bool)

(assert (= b_and!4703 (and (=> t!5132 result!2763) b_and!4707)))

(declare-fun m!76925 () Bool)

(assert (=> mapNonEmpty!3246 m!76925))

(declare-fun m!76927 () Bool)

(assert (=> b!77007 m!76927))

(declare-fun m!76929 () Bool)

(assert (=> b!77007 m!76929))

(declare-fun m!76931 () Bool)

(assert (=> b!76990 m!76931))

(declare-fun m!76933 () Bool)

(assert (=> b!76990 m!76933))

(declare-fun m!76935 () Bool)

(assert (=> b!76990 m!76935))

(assert (=> b!76990 m!76933))

(assert (=> b!76990 m!76935))

(declare-fun m!76937 () Bool)

(assert (=> b!76990 m!76937))

(declare-fun m!76939 () Bool)

(assert (=> b!76992 m!76939))

(declare-fun m!76941 () Bool)

(assert (=> b!76992 m!76941))

(assert (=> b!76992 m!76939))

(declare-fun m!76943 () Bool)

(assert (=> b!76992 m!76943))

(declare-fun m!76945 () Bool)

(assert (=> b!76992 m!76945))

(assert (=> b!76992 m!76931))

(declare-fun m!76947 () Bool)

(assert (=> b!76992 m!76947))

(assert (=> b!76992 m!76931))

(assert (=> b!76992 m!76945))

(declare-fun m!76949 () Bool)

(assert (=> b!76992 m!76949))

(declare-fun m!76951 () Bool)

(assert (=> b!76992 m!76951))

(declare-fun m!76953 () Bool)

(assert (=> start!10144 m!76953))

(declare-fun m!76955 () Bool)

(assert (=> b!77008 m!76955))

(declare-fun m!76957 () Bool)

(assert (=> b!76997 m!76957))

(declare-fun m!76959 () Bool)

(assert (=> b!76997 m!76959))

(assert (=> b!76997 m!76931))

(declare-fun m!76961 () Bool)

(assert (=> b!76997 m!76961))

(assert (=> b!76997 m!76931))

(assert (=> b!76997 m!76931))

(declare-fun m!76963 () Bool)

(assert (=> b!76997 m!76963))

(assert (=> b!76997 m!76931))

(declare-fun m!76965 () Bool)

(assert (=> b!76997 m!76965))

(assert (=> b!76999 m!76931))

(assert (=> b!76999 m!76931))

(declare-fun m!76967 () Bool)

(assert (=> b!76999 m!76967))

(assert (=> b!76999 m!76931))

(declare-fun m!76969 () Bool)

(assert (=> b!76999 m!76969))

(declare-fun m!76971 () Bool)

(assert (=> mapNonEmpty!3245 m!76971))

(declare-fun m!76973 () Bool)

(assert (=> b!77011 m!76973))

(declare-fun m!76975 () Bool)

(assert (=> b!77004 m!76975))

(declare-fun m!76977 () Bool)

(assert (=> b!77006 m!76977))

(declare-fun m!76979 () Bool)

(assert (=> b!77006 m!76979))

(declare-fun m!76981 () Bool)

(assert (=> b!77002 m!76981))

(declare-fun m!76983 () Bool)

(assert (=> b!77002 m!76983))

(check-sat (not b!77004) (not start!10144) b_and!4707 (not b_lambda!3463) (not b!77008) (not b!77007) (not b!77002) (not b!76992) (not b_next!2155) (not b!77006) (not b!76990) (not mapNonEmpty!3246) (not b!77011) (not b!76999) (not b!76997) b_and!4705 tp_is_empty!2493 (not mapNonEmpty!3245) (not b_next!2153))
(check-sat b_and!4705 b_and!4707 (not b_next!2153) (not b_next!2155))
