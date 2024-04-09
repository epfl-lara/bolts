; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8312 () Bool)

(assert start!8312)

(declare-fun b!54194 () Bool)

(declare-fun b_free!1765 () Bool)

(declare-fun b_next!1765 () Bool)

(assert (=> b!54194 (= b_free!1765 (not b_next!1765))))

(declare-fun tp!7395 () Bool)

(declare-fun b_and!3081 () Bool)

(assert (=> b!54194 (= tp!7395 b_and!3081)))

(declare-fun b!54189 () Bool)

(declare-fun b_free!1767 () Bool)

(declare-fun b_next!1767 () Bool)

(assert (=> b!54189 (= b_free!1767 (not b_next!1767))))

(declare-fun tp!7398 () Bool)

(declare-fun b_and!3083 () Bool)

(assert (=> b!54189 (= tp!7398 b_and!3083)))

(declare-fun b!54178 () Bool)

(declare-fun e!35377 () Bool)

(declare-fun tp_is_empty!2299 () Bool)

(assert (=> b!54178 (= e!35377 tp_is_empty!2299)))

(declare-fun mapIsEmpty!2567 () Bool)

(declare-fun mapRes!2568 () Bool)

(assert (=> mapIsEmpty!2567 mapRes!2568))

(declare-fun b!54179 () Bool)

(declare-fun res!30670 () Bool)

(declare-fun e!35379 () Bool)

(assert (=> b!54179 (=> (not res!30670) (not e!35379))))

(declare-datatypes ((V!2713 0))(
  ( (V!2714 (val!1194 Int)) )
))
(declare-datatypes ((array!3520 0))(
  ( (array!3521 (arr!1682 (Array (_ BitVec 32) (_ BitVec 64))) (size!1911 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!806 0))(
  ( (ValueCellFull!806 (v!2271 V!2713)) (EmptyCell!806) )
))
(declare-datatypes ((array!3522 0))(
  ( (array!3523 (arr!1683 (Array (_ BitVec 32) ValueCell!806)) (size!1912 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!520 0))(
  ( (LongMapFixedSize!521 (defaultEntry!1974 Int) (mask!5817 (_ BitVec 32)) (extraKeys!1865 (_ BitVec 32)) (zeroValue!1892 V!2713) (minValue!1892 V!2713) (_size!309 (_ BitVec 32)) (_keys!3594 array!3520) (_values!1957 array!3522) (_vacant!309 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!332 0))(
  ( (Cell!333 (v!2272 LongMapFixedSize!520)) )
))
(declare-datatypes ((LongMap!332 0))(
  ( (LongMap!333 (underlying!177 Cell!332)) )
))
(declare-fun thiss!992 () LongMap!332)

(assert (=> b!54179 (= res!30670 (and (= (size!1912 (_values!1957 (v!2272 (underlying!177 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5817 (v!2272 (underlying!177 thiss!992))))) (= (size!1911 (_keys!3594 (v!2272 (underlying!177 thiss!992)))) (size!1912 (_values!1957 (v!2272 (underlying!177 thiss!992))))) (bvsge (mask!5817 (v!2272 (underlying!177 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1865 (v!2272 (underlying!177 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1865 (v!2272 (underlying!177 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!54180 () Bool)

(declare-fun res!30674 () Bool)

(declare-fun e!35380 () Bool)

(assert (=> b!54180 (=> (not res!30674) (not e!35380))))

(declare-fun newMap!16 () LongMapFixedSize!520)

(assert (=> b!54180 (= res!30674 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5817 newMap!16)) (_size!309 (v!2272 (underlying!177 thiss!992)))))))

(declare-fun b!54181 () Bool)

(declare-fun res!30672 () Bool)

(assert (=> b!54181 (=> (not res!30672) (not e!35380))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!54181 (= res!30672 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1911 (_keys!3594 (v!2272 (underlying!177 thiss!992)))))))))

(declare-fun b!54183 () Bool)

(declare-fun e!35370 () Bool)

(assert (=> b!54183 (= e!35370 tp_is_empty!2299)))

(declare-fun mapNonEmpty!2567 () Bool)

(declare-fun tp!7397 () Bool)

(declare-fun e!35381 () Bool)

(assert (=> mapNonEmpty!2567 (= mapRes!2568 (and tp!7397 e!35381))))

(declare-fun mapKey!2567 () (_ BitVec 32))

(declare-fun mapRest!2567 () (Array (_ BitVec 32) ValueCell!806))

(declare-fun mapValue!2568 () ValueCell!806)

(assert (=> mapNonEmpty!2567 (= (arr!1683 (_values!1957 newMap!16)) (store mapRest!2567 mapKey!2567 mapValue!2568))))

(declare-fun b!54184 () Bool)

(declare-fun res!30666 () Bool)

(assert (=> b!54184 (=> (not res!30666) (not e!35380))))

(declare-fun valid!199 (LongMapFixedSize!520) Bool)

(assert (=> b!54184 (= res!30666 (valid!199 newMap!16))))

(declare-fun b!54185 () Bool)

(declare-fun res!30665 () Bool)

(assert (=> b!54185 (=> (not res!30665) (not e!35379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3520 (_ BitVec 32)) Bool)

(assert (=> b!54185 (= res!30665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3594 (v!2272 (underlying!177 thiss!992))) (mask!5817 (v!2272 (underlying!177 thiss!992)))))))

(declare-fun b!54186 () Bool)

(declare-fun res!30671 () Bool)

(assert (=> b!54186 (=> (not res!30671) (not e!35379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!54186 (= res!30671 (validMask!0 (mask!5817 (v!2272 (underlying!177 thiss!992)))))))

(declare-fun b!54187 () Bool)

(assert (=> b!54187 (= e!35379 false)))

(declare-datatypes ((tuple2!1922 0))(
  ( (tuple2!1923 (_1!971 (_ BitVec 64)) (_2!971 V!2713)) )
))
(declare-datatypes ((List!1390 0))(
  ( (Nil!1387) (Cons!1386 (h!1966 tuple2!1922) (t!4532 List!1390)) )
))
(declare-datatypes ((ListLongMap!1311 0))(
  ( (ListLongMap!1312 (toList!671 List!1390)) )
))
(declare-fun lt!21604 () ListLongMap!1311)

(declare-fun lt!21605 () Bool)

(declare-fun contains!642 (ListLongMap!1311 (_ BitVec 64)) Bool)

(assert (=> b!54187 (= lt!21605 (contains!642 lt!21604 (select (arr!1682 (_keys!3594 (v!2272 (underlying!177 thiss!992)))) from!355)))))

(declare-fun mapNonEmpty!2568 () Bool)

(declare-fun mapRes!2567 () Bool)

(declare-fun tp!7396 () Bool)

(assert (=> mapNonEmpty!2568 (= mapRes!2567 (and tp!7396 e!35377))))

(declare-fun mapRest!2568 () (Array (_ BitVec 32) ValueCell!806))

(declare-fun mapKey!2568 () (_ BitVec 32))

(declare-fun mapValue!2567 () ValueCell!806)

(assert (=> mapNonEmpty!2568 (= (arr!1683 (_values!1957 (v!2272 (underlying!177 thiss!992)))) (store mapRest!2568 mapKey!2568 mapValue!2567))))

(declare-fun b!54188 () Bool)

(declare-fun e!35373 () Bool)

(assert (=> b!54188 (= e!35373 (and e!35370 mapRes!2568))))

(declare-fun condMapEmpty!2568 () Bool)

(declare-fun mapDefault!2568 () ValueCell!806)

