; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75594 () Bool)

(assert start!75594)

(declare-fun b!888702 () Bool)

(declare-fun b_free!15593 () Bool)

(declare-fun b_next!15593 () Bool)

(assert (=> b!888702 (= b_free!15593 (not b_next!15593))))

(declare-fun tp!54735 () Bool)

(declare-fun b_and!25851 () Bool)

(assert (=> b!888702 (= tp!54735 b_and!25851)))

(declare-datatypes ((array!51800 0))(
  ( (array!51801 (arr!24906 (Array (_ BitVec 32) (_ BitVec 64))) (size!25349 (_ BitVec 32))) )
))
(declare-datatypes ((V!28859 0))(
  ( (V!28860 (val!9011 Int)) )
))
(declare-datatypes ((ValueCell!8479 0))(
  ( (ValueCellFull!8479 (v!11482 V!28859)) (EmptyCell!8479) )
))
(declare-datatypes ((array!51802 0))(
  ( (array!51803 (arr!24907 (Array (_ BitVec 32) ValueCell!8479)) (size!25350 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3974 0))(
  ( (LongMapFixedSize!3975 (defaultEntry!5184 Int) (mask!25609 (_ BitVec 32)) (extraKeys!4878 (_ BitVec 32)) (zeroValue!4982 V!28859) (minValue!4982 V!28859) (_size!2042 (_ BitVec 32)) (_keys!9861 array!51800) (_values!5169 array!51802) (_vacant!2042 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3974)

(declare-fun e!495313 () Bool)

(declare-fun tp_is_empty!17921 () Bool)

(declare-fun e!495308 () Bool)

(declare-fun array_inv!19568 (array!51800) Bool)

(declare-fun array_inv!19569 (array!51802) Bool)

(assert (=> b!888702 (= e!495313 (and tp!54735 tp_is_empty!17921 (array_inv!19568 (_keys!9861 thiss!1181)) (array_inv!19569 (_values!5169 thiss!1181)) e!495308))))

(declare-fun b!888703 () Bool)

(declare-fun e!495311 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((Option!447 0))(
  ( (Some!446 (v!11483 V!28859)) (None!445) )
))
(declare-fun isDefined!322 (Option!447) Bool)

(declare-datatypes ((tuple2!11962 0))(
  ( (tuple2!11963 (_1!5991 (_ BitVec 64)) (_2!5991 V!28859)) )
))
(declare-datatypes ((List!17776 0))(
  ( (Nil!17773) (Cons!17772 (h!18903 tuple2!11962) (t!25083 List!17776)) )
))
(declare-fun getValueByKey!441 (List!17776 (_ BitVec 64)) Option!447)

(declare-datatypes ((ListLongMap!10673 0))(
  ( (ListLongMap!10674 (toList!5352 List!17776)) )
))
(declare-fun map!12120 (LongMapFixedSize!3974) ListLongMap!10673)

(assert (=> b!888703 (= e!495311 (not (isDefined!322 (getValueByKey!441 (toList!5352 (map!12120 thiss!1181)) key!785))))))

(declare-fun b!888704 () Bool)

(declare-fun e!495309 () Bool)

(assert (=> b!888704 (= e!495309 tp_is_empty!17921)))

(declare-fun mapIsEmpty!28422 () Bool)

(declare-fun mapRes!28422 () Bool)

(assert (=> mapIsEmpty!28422 mapRes!28422))

(declare-fun res!602525 () Bool)

(assert (=> start!75594 (=> (not res!602525) (not e!495311))))

(declare-fun valid!1537 (LongMapFixedSize!3974) Bool)

(assert (=> start!75594 (= res!602525 (valid!1537 thiss!1181))))

(assert (=> start!75594 e!495311))

(assert (=> start!75594 e!495313))

(assert (=> start!75594 true))

(declare-fun b!888705 () Bool)

(declare-fun res!602524 () Bool)

(assert (=> b!888705 (=> (not res!602524) (not e!495311))))

(assert (=> b!888705 (= res!602524 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4878 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (or (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4878 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!888706 () Bool)

(declare-fun e!495310 () Bool)

(assert (=> b!888706 (= e!495310 tp_is_empty!17921)))

(declare-fun mapNonEmpty!28422 () Bool)

(declare-fun tp!54734 () Bool)

(assert (=> mapNonEmpty!28422 (= mapRes!28422 (and tp!54734 e!495309))))

(declare-fun mapValue!28422 () ValueCell!8479)

(declare-fun mapKey!28422 () (_ BitVec 32))

(declare-fun mapRest!28422 () (Array (_ BitVec 32) ValueCell!8479))

(assert (=> mapNonEmpty!28422 (= (arr!24907 (_values!5169 thiss!1181)) (store mapRest!28422 mapKey!28422 mapValue!28422))))

(declare-fun b!888707 () Bool)

(assert (=> b!888707 (= e!495308 (and e!495310 mapRes!28422))))

(declare-fun condMapEmpty!28422 () Bool)

(declare-fun mapDefault!28422 () ValueCell!8479)

