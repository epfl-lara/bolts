; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8306 () Bool)

(assert start!8306)

(declare-fun b!53996 () Bool)

(declare-fun b_free!1753 () Bool)

(declare-fun b_next!1753 () Bool)

(assert (=> b!53996 (= b_free!1753 (not b_next!1753))))

(declare-fun tp!7359 () Bool)

(declare-fun b_and!3057 () Bool)

(assert (=> b!53996 (= tp!7359 b_and!3057)))

(declare-fun b!53989 () Bool)

(declare-fun b_free!1755 () Bool)

(declare-fun b_next!1755 () Bool)

(assert (=> b!53989 (= b_free!1755 (not b_next!1755))))

(declare-fun tp!7362 () Bool)

(declare-fun b_and!3059 () Bool)

(assert (=> b!53989 (= tp!7362 b_and!3059)))

(declare-fun b!53983 () Bool)

(declare-fun res!30575 () Bool)

(declare-fun e!35244 () Bool)

(assert (=> b!53983 (=> (not res!30575) (not e!35244))))

(declare-datatypes ((V!2705 0))(
  ( (V!2706 (val!1191 Int)) )
))
(declare-datatypes ((array!3508 0))(
  ( (array!3509 (arr!1676 (Array (_ BitVec 32) (_ BitVec 64))) (size!1905 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!803 0))(
  ( (ValueCellFull!803 (v!2265 V!2705)) (EmptyCell!803) )
))
(declare-datatypes ((array!3510 0))(
  ( (array!3511 (arr!1677 (Array (_ BitVec 32) ValueCell!803)) (size!1906 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!514 0))(
  ( (LongMapFixedSize!515 (defaultEntry!1971 Int) (mask!5812 (_ BitVec 32)) (extraKeys!1862 (_ BitVec 32)) (zeroValue!1889 V!2705) (minValue!1889 V!2705) (_size!306 (_ BitVec 32)) (_keys!3591 array!3508) (_values!1954 array!3510) (_vacant!306 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!326 0))(
  ( (Cell!327 (v!2266 LongMapFixedSize!514)) )
))
(declare-datatypes ((LongMap!326 0))(
  ( (LongMap!327 (underlying!174 Cell!326)) )
))
(declare-fun thiss!992 () LongMap!326)

(assert (=> b!53983 (= res!30575 (and (= (size!1906 (_values!1954 (v!2266 (underlying!174 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5812 (v!2266 (underlying!174 thiss!992))))) (= (size!1905 (_keys!3591 (v!2266 (underlying!174 thiss!992)))) (size!1906 (_values!1954 (v!2266 (underlying!174 thiss!992))))) (bvsge (mask!5812 (v!2266 (underlying!174 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1862 (v!2266 (underlying!174 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1862 (v!2266 (underlying!174 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!53984 () Bool)

(declare-fun e!35236 () Bool)

(declare-fun tp_is_empty!2293 () Bool)

(assert (=> b!53984 (= e!35236 tp_is_empty!2293)))

(declare-fun b!53986 () Bool)

(declare-fun res!30572 () Bool)

(assert (=> b!53986 (=> (not res!30572) (not e!35244))))

(declare-datatypes ((List!1385 0))(
  ( (Nil!1382) (Cons!1381 (h!1961 (_ BitVec 64)) (t!4515 List!1385)) )
))
(declare-fun arrayNoDuplicates!0 (array!3508 (_ BitVec 32) List!1385) Bool)

(assert (=> b!53986 (= res!30572 (arrayNoDuplicates!0 (_keys!3591 (v!2266 (underlying!174 thiss!992))) #b00000000000000000000000000000000 Nil!1382))))

(declare-fun b!53987 () Bool)

(declare-fun e!35240 () Bool)

(assert (=> b!53987 (= e!35240 e!35244)))

(declare-fun res!30574 () Bool)

(assert (=> b!53987 (=> (not res!30574) (not e!35244))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1910 0))(
  ( (tuple2!1911 (_1!965 (_ BitVec 64)) (_2!965 V!2705)) )
))
(declare-datatypes ((List!1386 0))(
  ( (Nil!1383) (Cons!1382 (h!1962 tuple2!1910) (t!4516 List!1386)) )
))
(declare-datatypes ((ListLongMap!1305 0))(
  ( (ListLongMap!1306 (toList!668 List!1386)) )
))
(declare-fun lt!21568 () ListLongMap!1305)

(declare-fun contains!639 (ListLongMap!1305 (_ BitVec 64)) Bool)

(assert (=> b!53987 (= res!30574 (contains!639 lt!21568 (select (arr!1676 (_keys!3591 (v!2266 (underlying!174 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!514)

(declare-datatypes ((tuple2!1912 0))(
  ( (tuple2!1913 (_1!966 Bool) (_2!966 LongMapFixedSize!514)) )
))
(declare-fun lt!21570 () tuple2!1912)

(declare-fun update!52 (LongMapFixedSize!514 (_ BitVec 64) V!2705) tuple2!1912)

(declare-fun get!1009 (ValueCell!803 V!2705) V!2705)

(declare-fun dynLambda!280 (Int (_ BitVec 64)) V!2705)

(assert (=> b!53987 (= lt!21570 (update!52 newMap!16 (select (arr!1676 (_keys!3591 (v!2266 (underlying!174 thiss!992)))) from!355) (get!1009 (select (arr!1677 (_values!1954 (v!2266 (underlying!174 thiss!992)))) from!355) (dynLambda!280 (defaultEntry!1971 (v!2266 (underlying!174 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!53988 () Bool)

(declare-fun e!35246 () Bool)

(assert (=> b!53988 (= e!35246 e!35240)))

(declare-fun res!30571 () Bool)

(assert (=> b!53988 (=> (not res!30571) (not e!35240))))

(declare-fun lt!21569 () ListLongMap!1305)

(assert (=> b!53988 (= res!30571 (and (= lt!21569 lt!21568) (not (= (select (arr!1676 (_keys!3591 (v!2266 (underlying!174 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1676 (_keys!3591 (v!2266 (underlying!174 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1047 (LongMapFixedSize!514) ListLongMap!1305)

(assert (=> b!53988 (= lt!21568 (map!1047 newMap!16))))

(declare-fun getCurrentListMap!375 (array!3508 array!3510 (_ BitVec 32) (_ BitVec 32) V!2705 V!2705 (_ BitVec 32) Int) ListLongMap!1305)

(assert (=> b!53988 (= lt!21569 (getCurrentListMap!375 (_keys!3591 (v!2266 (underlying!174 thiss!992))) (_values!1954 (v!2266 (underlying!174 thiss!992))) (mask!5812 (v!2266 (underlying!174 thiss!992))) (extraKeys!1862 (v!2266 (underlying!174 thiss!992))) (zeroValue!1889 (v!2266 (underlying!174 thiss!992))) (minValue!1889 (v!2266 (underlying!174 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1971 (v!2266 (underlying!174 thiss!992)))))))

(declare-fun e!35238 () Bool)

(declare-fun e!35239 () Bool)

(declare-fun array_inv!985 (array!3508) Bool)

(declare-fun array_inv!986 (array!3510) Bool)

(assert (=> b!53989 (= e!35238 (and tp!7362 tp_is_empty!2293 (array_inv!985 (_keys!3591 newMap!16)) (array_inv!986 (_values!1954 newMap!16)) e!35239))))

(declare-fun b!53990 () Bool)

(declare-fun e!35248 () Bool)

(assert (=> b!53990 (= e!35248 tp_is_empty!2293)))

(declare-fun mapNonEmpty!2549 () Bool)

(declare-fun mapRes!2550 () Bool)

(declare-fun tp!7360 () Bool)

(assert (=> mapNonEmpty!2549 (= mapRes!2550 (and tp!7360 e!35248))))

(declare-fun mapKey!2549 () (_ BitVec 32))

(declare-fun mapValue!2549 () ValueCell!803)

(declare-fun mapRest!2549 () (Array (_ BitVec 32) ValueCell!803))

(assert (=> mapNonEmpty!2549 (= (arr!1677 (_values!1954 newMap!16)) (store mapRest!2549 mapKey!2549 mapValue!2549))))

(declare-fun b!53991 () Bool)

(declare-fun e!35247 () Bool)

(declare-fun e!35235 () Bool)

(assert (=> b!53991 (= e!35247 e!35235)))

(declare-fun b!53992 () Bool)

(assert (=> b!53992 (= e!35244 false)))

(declare-fun lt!21571 () Bool)

(assert (=> b!53992 (= lt!21571 (contains!639 lt!21569 (select (arr!1676 (_keys!3591 (v!2266 (underlying!174 thiss!992)))) from!355)))))

(declare-fun b!53993 () Bool)

(declare-fun res!30569 () Bool)

(assert (=> b!53993 (=> (not res!30569) (not e!35244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!53993 (= res!30569 (validMask!0 (mask!5812 (v!2266 (underlying!174 thiss!992)))))))

(declare-fun b!53994 () Bool)

(declare-fun res!30570 () Bool)

(assert (=> b!53994 (=> (not res!30570) (not e!35244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3508 (_ BitVec 32)) Bool)

(assert (=> b!53994 (= res!30570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3591 (v!2266 (underlying!174 thiss!992))) (mask!5812 (v!2266 (underlying!174 thiss!992)))))))

(declare-fun b!53995 () Bool)

(declare-fun e!35249 () Bool)

(assert (=> b!53995 (= e!35249 tp_is_empty!2293)))

(declare-fun e!35243 () Bool)

(declare-fun e!35237 () Bool)

(assert (=> b!53996 (= e!35243 (and tp!7359 tp_is_empty!2293 (array_inv!985 (_keys!3591 (v!2266 (underlying!174 thiss!992)))) (array_inv!986 (_values!1954 (v!2266 (underlying!174 thiss!992)))) e!35237))))

(declare-fun b!53985 () Bool)

(declare-fun res!30566 () Bool)

(assert (=> b!53985 (=> (not res!30566) (not e!35246))))

(assert (=> b!53985 (= res!30566 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5812 newMap!16)) (_size!306 (v!2266 (underlying!174 thiss!992)))))))

(declare-fun res!30573 () Bool)

(assert (=> start!8306 (=> (not res!30573) (not e!35246))))

(declare-fun valid!195 (LongMap!326) Bool)

(assert (=> start!8306 (= res!30573 (valid!195 thiss!992))))

(assert (=> start!8306 e!35246))

(assert (=> start!8306 e!35247))

(assert (=> start!8306 true))

(assert (=> start!8306 e!35238))

(declare-fun b!53997 () Bool)

(declare-fun res!30567 () Bool)

(assert (=> b!53997 (=> (not res!30567) (not e!35246))))

(assert (=> b!53997 (= res!30567 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1905 (_keys!3591 (v!2266 (underlying!174 thiss!992)))))))))

(declare-fun b!53998 () Bool)

(declare-fun e!35242 () Bool)

(assert (=> b!53998 (= e!35239 (and e!35242 mapRes!2550))))

(declare-fun condMapEmpty!2549 () Bool)

(declare-fun mapDefault!2549 () ValueCell!803)

