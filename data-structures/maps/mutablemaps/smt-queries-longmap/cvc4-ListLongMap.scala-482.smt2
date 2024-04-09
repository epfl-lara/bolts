; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10158 () Bool)

(assert start!10158)

(declare-fun b!77420 () Bool)

(declare-fun b_free!2181 () Bool)

(declare-fun b_next!2181 () Bool)

(assert (=> b!77420 (= b_free!2181 (not b_next!2181))))

(declare-fun tp!8740 () Bool)

(declare-fun b_and!4757 () Bool)

(assert (=> b!77420 (= tp!8740 b_and!4757)))

(declare-fun b!77425 () Bool)

(declare-fun b_free!2183 () Bool)

(declare-fun b_next!2183 () Bool)

(assert (=> b!77425 (= b_free!2183 (not b_next!2183))))

(declare-fun tp!8741 () Bool)

(declare-fun b_and!4759 () Bool)

(assert (=> b!77425 (= tp!8741 b_and!4759)))

(declare-fun b!77418 () Bool)

(declare-fun e!50641 () Bool)

(declare-fun e!50646 () Bool)

(assert (=> b!77418 (= e!50641 e!50646)))

(declare-fun b!77419 () Bool)

(declare-fun e!50642 () Bool)

(declare-fun e!50639 () Bool)

(assert (=> b!77419 (= e!50642 e!50639)))

(declare-fun res!40632 () Bool)

(assert (=> b!77419 (=> (not res!40632) (not e!50639))))

(declare-datatypes ((V!2989 0))(
  ( (V!2990 (val!1298 Int)) )
))
(declare-datatypes ((array!3964 0))(
  ( (array!3965 (arr!1890 (Array (_ BitVec 32) (_ BitVec 64))) (size!2131 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!910 0))(
  ( (ValueCellFull!910 (v!2587 V!2989)) (EmptyCell!910) )
))
(declare-datatypes ((array!3966 0))(
  ( (array!3967 (arr!1891 (Array (_ BitVec 32) ValueCell!910)) (size!2132 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!728 0))(
  ( (LongMapFixedSize!729 (defaultEntry!2267 Int) (mask!6260 (_ BitVec 32)) (extraKeys!2118 (_ BitVec 32)) (zeroValue!2165 V!2989) (minValue!2165 V!2989) (_size!413 (_ BitVec 32)) (_keys!3927 array!3964) (_values!2250 array!3966) (_vacant!413 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!536 0))(
  ( (Cell!537 (v!2588 LongMapFixedSize!728)) )
))
(declare-datatypes ((LongMap!536 0))(
  ( (LongMap!537 (underlying!279 Cell!536)) )
))
(declare-fun thiss!992 () LongMap!536)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!77419 (= res!40632 (and (not (= (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!35435 () V!2989)

(declare-fun get!1183 (ValueCell!910 V!2989) V!2989)

(declare-fun dynLambda!344 (Int (_ BitVec 64)) V!2989)

(assert (=> b!77419 (= lt!35435 (get!1183 (select (arr!1891 (_values!2250 (v!2588 (underlying!279 thiss!992)))) from!355) (dynLambda!344 (defaultEntry!2267 (v!2588 (underlying!279 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!40629 () Bool)

(declare-fun e!50631 () Bool)

(assert (=> start!10158 (=> (not res!40629) (not e!50631))))

(declare-fun valid!311 (LongMap!536) Bool)

(assert (=> start!10158 (= res!40629 (valid!311 thiss!992))))

(assert (=> start!10158 e!50631))

(declare-fun e!50634 () Bool)

(assert (=> start!10158 e!50634))

(assert (=> start!10158 true))

(declare-fun e!50636 () Bool)

(assert (=> start!10158 e!50636))

(declare-fun e!50643 () Bool)

(declare-fun tp_is_empty!2507 () Bool)

(declare-fun array_inv!1125 (array!3964) Bool)

(declare-fun array_inv!1126 (array!3966) Bool)

(assert (=> b!77420 (= e!50646 (and tp!8740 tp_is_empty!2507 (array_inv!1125 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) (array_inv!1126 (_values!2250 (v!2588 (underlying!279 thiss!992)))) e!50643))))

(declare-fun b!77421 () Bool)

(declare-fun e!50633 () Bool)

(assert (=> b!77421 (= e!50633 tp_is_empty!2507)))

(declare-fun b!77422 () Bool)

(declare-datatypes ((Unit!2252 0))(
  ( (Unit!2253) )
))
(declare-fun e!50644 () Unit!2252)

(declare-fun Unit!2254 () Unit!2252)

(assert (=> b!77422 (= e!50644 Unit!2254)))

(declare-fun b!77423 () Bool)

(declare-fun e!50637 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!77423 (= e!50637 (not (validMask!0 (mask!6260 (v!2588 (underlying!279 thiss!992))))))))

(declare-datatypes ((tuple2!2184 0))(
  ( (tuple2!2185 (_1!1102 (_ BitVec 64)) (_2!1102 V!2989)) )
))
(declare-fun lt!35448 () tuple2!2184)

(declare-fun lt!35449 () tuple2!2184)

(declare-datatypes ((List!1529 0))(
  ( (Nil!1526) (Cons!1525 (h!2113 tuple2!2184) (t!5171 List!1529)) )
))
(declare-datatypes ((ListLongMap!1461 0))(
  ( (ListLongMap!1462 (toList!746 List!1529)) )
))
(declare-fun lt!35440 () ListLongMap!1461)

(declare-fun lt!35447 () ListLongMap!1461)

(declare-fun +!107 (ListLongMap!1461 tuple2!2184) ListLongMap!1461)

(assert (=> b!77423 (= (+!107 lt!35440 lt!35449) (+!107 (+!107 lt!35447 lt!35449) lt!35448))))

(assert (=> b!77423 (= lt!35449 (tuple2!2185 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2165 (v!2588 (underlying!279 thiss!992)))))))

(declare-fun lt!35438 () Unit!2252)

(declare-fun addCommutativeForDiffKeys!26 (ListLongMap!1461 (_ BitVec 64) V!2989 (_ BitVec 64) V!2989) Unit!2252)

(assert (=> b!77423 (= lt!35438 (addCommutativeForDiffKeys!26 lt!35447 (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) lt!35435 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2165 (v!2588 (underlying!279 thiss!992)))))))

(declare-fun lt!35436 () ListLongMap!1461)

(assert (=> b!77423 (= lt!35436 lt!35440)))

(assert (=> b!77423 (= lt!35440 (+!107 lt!35447 lt!35448))))

(declare-fun lt!35446 () ListLongMap!1461)

(declare-fun lt!35441 () tuple2!2184)

(assert (=> b!77423 (= lt!35436 (+!107 lt!35446 lt!35441))))

(declare-fun lt!35450 () ListLongMap!1461)

(assert (=> b!77423 (= lt!35447 (+!107 lt!35450 lt!35441))))

(assert (=> b!77423 (= lt!35441 (tuple2!2185 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2165 (v!2588 (underlying!279 thiss!992)))))))

(assert (=> b!77423 (= lt!35446 (+!107 lt!35450 lt!35448))))

(assert (=> b!77423 (= lt!35448 (tuple2!2185 (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) lt!35435))))

(declare-fun lt!35444 () Unit!2252)

(assert (=> b!77423 (= lt!35444 (addCommutativeForDiffKeys!26 lt!35450 (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) lt!35435 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2165 (v!2588 (underlying!279 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!71 (array!3964 array!3966 (_ BitVec 32) (_ BitVec 32) V!2989 V!2989 (_ BitVec 32) Int) ListLongMap!1461)

(assert (=> b!77423 (= lt!35450 (getCurrentListMapNoExtraKeys!71 (_keys!3927 (v!2588 (underlying!279 thiss!992))) (_values!2250 (v!2588 (underlying!279 thiss!992))) (mask!6260 (v!2588 (underlying!279 thiss!992))) (extraKeys!2118 (v!2588 (underlying!279 thiss!992))) (zeroValue!2165 (v!2588 (underlying!279 thiss!992))) (minValue!2165 (v!2588 (underlying!279 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2267 (v!2588 (underlying!279 thiss!992)))))))

(declare-fun b!77424 () Bool)

(assert (=> b!77424 (= e!50631 e!50642)))

(declare-fun res!40631 () Bool)

(assert (=> b!77424 (=> (not res!40631) (not e!50642))))

(declare-fun lt!35434 () ListLongMap!1461)

(declare-fun lt!35443 () ListLongMap!1461)

(assert (=> b!77424 (= res!40631 (= lt!35434 lt!35443))))

(declare-fun newMap!16 () LongMapFixedSize!728)

(declare-fun map!1176 (LongMapFixedSize!728) ListLongMap!1461)

(assert (=> b!77424 (= lt!35443 (map!1176 newMap!16))))

(declare-fun getCurrentListMap!434 (array!3964 array!3966 (_ BitVec 32) (_ BitVec 32) V!2989 V!2989 (_ BitVec 32) Int) ListLongMap!1461)

(assert (=> b!77424 (= lt!35434 (getCurrentListMap!434 (_keys!3927 (v!2588 (underlying!279 thiss!992))) (_values!2250 (v!2588 (underlying!279 thiss!992))) (mask!6260 (v!2588 (underlying!279 thiss!992))) (extraKeys!2118 (v!2588 (underlying!279 thiss!992))) (zeroValue!2165 (v!2588 (underlying!279 thiss!992))) (minValue!2165 (v!2588 (underlying!279 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2267 (v!2588 (underlying!279 thiss!992)))))))

(declare-fun e!50640 () Bool)

(assert (=> b!77425 (= e!50636 (and tp!8741 tp_is_empty!2507 (array_inv!1125 (_keys!3927 newMap!16)) (array_inv!1126 (_values!2250 newMap!16)) e!50640))))

(declare-fun mapNonEmpty!3287 () Bool)

(declare-fun mapRes!3287 () Bool)

(declare-fun tp!8739 () Bool)

(assert (=> mapNonEmpty!3287 (= mapRes!3287 (and tp!8739 e!50633))))

(declare-fun mapRest!3288 () (Array (_ BitVec 32) ValueCell!910))

(declare-fun mapValue!3287 () ValueCell!910)

(declare-fun mapKey!3288 () (_ BitVec 32))

(assert (=> mapNonEmpty!3287 (= (arr!1891 (_values!2250 (v!2588 (underlying!279 thiss!992)))) (store mapRest!3288 mapKey!3288 mapValue!3287))))

(declare-fun mapNonEmpty!3288 () Bool)

(declare-fun mapRes!3288 () Bool)

(declare-fun tp!8742 () Bool)

(declare-fun e!50647 () Bool)

(assert (=> mapNonEmpty!3288 (= mapRes!3288 (and tp!8742 e!50647))))

(declare-fun mapKey!3287 () (_ BitVec 32))

(declare-fun mapRest!3287 () (Array (_ BitVec 32) ValueCell!910))

(declare-fun mapValue!3288 () ValueCell!910)

(assert (=> mapNonEmpty!3288 (= (arr!1891 (_values!2250 newMap!16)) (store mapRest!3287 mapKey!3287 mapValue!3288))))

(declare-fun b!77426 () Bool)

(declare-fun Unit!2255 () Unit!2252)

(assert (=> b!77426 (= e!50644 Unit!2255)))

(declare-fun lt!35439 () Unit!2252)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!62 (array!3964 array!3966 (_ BitVec 32) (_ BitVec 32) V!2989 V!2989 (_ BitVec 64) (_ BitVec 32) Int) Unit!2252)

(assert (=> b!77426 (= lt!35439 (lemmaListMapContainsThenArrayContainsFrom!62 (_keys!3927 (v!2588 (underlying!279 thiss!992))) (_values!2250 (v!2588 (underlying!279 thiss!992))) (mask!6260 (v!2588 (underlying!279 thiss!992))) (extraKeys!2118 (v!2588 (underlying!279 thiss!992))) (zeroValue!2165 (v!2588 (underlying!279 thiss!992))) (minValue!2165 (v!2588 (underlying!279 thiss!992))) (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2267 (v!2588 (underlying!279 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!77426 (arrayContainsKey!0 (_keys!3927 (v!2588 (underlying!279 thiss!992))) (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!35437 () Unit!2252)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3964 (_ BitVec 32) (_ BitVec 32)) Unit!2252)

(assert (=> b!77426 (= lt!35437 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3927 (v!2588 (underlying!279 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1530 0))(
  ( (Nil!1527) (Cons!1526 (h!2114 (_ BitVec 64)) (t!5172 List!1530)) )
))
(declare-fun arrayNoDuplicates!0 (array!3964 (_ BitVec 32) List!1530) Bool)

(assert (=> b!77426 (arrayNoDuplicates!0 (_keys!3927 (v!2588 (underlying!279 thiss!992))) from!355 Nil!1527)))

(declare-fun lt!35442 () Unit!2252)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3964 (_ BitVec 32) (_ BitVec 64) List!1530) Unit!2252)

(assert (=> b!77426 (= lt!35442 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3927 (v!2588 (underlying!279 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) (Cons!1526 (select (arr!1890 (_keys!3927 (v!2588 (underlying!279 thiss!992)))) from!355) Nil!1527)))))

(assert (=> b!77426 false))

(declare-fun b!77427 () Bool)

(declare-fun res!40635 () Bool)

(assert (=> b!77427 (=> (not res!40635) (not e!50631))))

(assert (=> b!77427 (= res!40635 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2131 (_keys!3927 (v!2588 (underlying!279 thiss!992)))))))))

(declare-fun b!77428 () Bool)

(declare-fun e!50645 () Bool)

(assert (=> b!77428 (= e!50640 (and e!50645 mapRes!3288))))

(declare-fun condMapEmpty!3288 () Bool)

(declare-fun mapDefault!3288 () ValueCell!910)

