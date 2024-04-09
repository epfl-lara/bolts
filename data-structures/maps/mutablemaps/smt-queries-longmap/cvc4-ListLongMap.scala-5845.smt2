; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75532 () Bool)

(assert start!75532)

(declare-fun b!888316 () Bool)

(declare-fun b_free!15575 () Bool)

(declare-fun b_next!15575 () Bool)

(assert (=> b!888316 (= b_free!15575 (not b_next!15575))))

(declare-fun tp!54677 () Bool)

(declare-fun b_and!25831 () Bool)

(assert (=> b!888316 (= tp!54677 b_and!25831)))

(declare-fun b!888313 () Bool)

(declare-fun e!495019 () Bool)

(declare-fun tp_is_empty!17903 () Bool)

(assert (=> b!888313 (= e!495019 tp_is_empty!17903)))

(declare-fun b!888314 () Bool)

(declare-fun res!602401 () Bool)

(declare-fun e!495022 () Bool)

(assert (=> b!888314 (=> (not res!602401) (not e!495022))))

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((array!51762 0))(
  ( (array!51763 (arr!24888 (Array (_ BitVec 32) (_ BitVec 64))) (size!25330 (_ BitVec 32))) )
))
(declare-datatypes ((V!28835 0))(
  ( (V!28836 (val!9002 Int)) )
))
(declare-datatypes ((ValueCell!8470 0))(
  ( (ValueCellFull!8470 (v!11472 V!28835)) (EmptyCell!8470) )
))
(declare-datatypes ((array!51764 0))(
  ( (array!51765 (arr!24889 (Array (_ BitVec 32) ValueCell!8470)) (size!25331 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3956 0))(
  ( (LongMapFixedSize!3957 (defaultEntry!5172 Int) (mask!25587 (_ BitVec 32)) (extraKeys!4866 (_ BitVec 32)) (zeroValue!4970 V!28835) (minValue!4970 V!28835) (_size!2033 (_ BitVec 32)) (_keys!9847 array!51762) (_values!5157 array!51764) (_vacant!2033 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3956)

(assert (=> b!888314 (= res!602401 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4866 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4866 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!888315 () Bool)

(declare-fun e!495017 () Bool)

(assert (=> b!888315 (= e!495017 tp_is_empty!17903)))

(declare-fun e!495021 () Bool)

(declare-fun e!495020 () Bool)

(declare-fun array_inv!19554 (array!51762) Bool)

(declare-fun array_inv!19555 (array!51764) Bool)

(assert (=> b!888316 (= e!495021 (and tp!54677 tp_is_empty!17903 (array_inv!19554 (_keys!9847 thiss!1181)) (array_inv!19555 (_values!5157 thiss!1181)) e!495020))))

(declare-fun mapIsEmpty!28391 () Bool)

(declare-fun mapRes!28391 () Bool)

(assert (=> mapIsEmpty!28391 mapRes!28391))

(declare-fun b!888318 () Bool)

(declare-fun res!602402 () Bool)

(assert (=> b!888318 (=> (not res!602402) (not e!495022))))

(declare-fun contains!4320 (LongMapFixedSize!3956 (_ BitVec 64)) Bool)

(assert (=> b!888318 (= res!602402 (contains!4320 thiss!1181 key!785))))

(declare-fun b!888319 () Bool)

(assert (=> b!888319 (= e!495020 (and e!495019 mapRes!28391))))

(declare-fun condMapEmpty!28391 () Bool)

(declare-fun mapDefault!28391 () ValueCell!8470)

