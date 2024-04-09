; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75470 () Bool)

(assert start!75470)

(declare-fun b!887924 () Bool)

(declare-fun b_free!15557 () Bool)

(declare-fun b_next!15557 () Bool)

(assert (=> b!887924 (= b_free!15557 (not b_next!15557))))

(declare-fun tp!54619 () Bool)

(declare-fun b_and!25811 () Bool)

(assert (=> b!887924 (= tp!54619 b_and!25811)))

(declare-fun res!602278 () Bool)

(declare-fun e!494728 () Bool)

(assert (=> start!75470 (=> (not res!602278) (not e!494728))))

(declare-datatypes ((array!51724 0))(
  ( (array!51725 (arr!24870 (Array (_ BitVec 32) (_ BitVec 64))) (size!25311 (_ BitVec 32))) )
))
(declare-datatypes ((V!28811 0))(
  ( (V!28812 (val!8993 Int)) )
))
(declare-datatypes ((ValueCell!8461 0))(
  ( (ValueCellFull!8461 (v!11461 V!28811)) (EmptyCell!8461) )
))
(declare-datatypes ((array!51726 0))(
  ( (array!51727 (arr!24871 (Array (_ BitVec 32) ValueCell!8461)) (size!25312 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3938 0))(
  ( (LongMapFixedSize!3939 (defaultEntry!5160 Int) (mask!25565 (_ BitVec 32)) (extraKeys!4854 (_ BitVec 32)) (zeroValue!4958 V!28811) (minValue!4958 V!28811) (_size!2024 (_ BitVec 32)) (_keys!9833 array!51724) (_values!5145 array!51726) (_vacant!2024 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3938)

(declare-fun valid!1525 (LongMapFixedSize!3938) Bool)

(assert (=> start!75470 (= res!602278 (valid!1525 thiss!1181))))

(assert (=> start!75470 e!494728))

(declare-fun e!494731 () Bool)

(assert (=> start!75470 e!494731))

(assert (=> start!75470 true))

(declare-fun tp_is_empty!17885 () Bool)

(declare-fun e!494727 () Bool)

(declare-fun array_inv!19546 (array!51724) Bool)

(declare-fun array_inv!19547 (array!51726) Bool)

(assert (=> b!887924 (= e!494731 (and tp!54619 tp_is_empty!17885 (array_inv!19546 (_keys!9833 thiss!1181)) (array_inv!19547 (_values!5145 thiss!1181)) e!494727))))

(declare-fun b!887925 () Bool)

(declare-fun e!494726 () Bool)

(assert (=> b!887925 (= e!494726 tp_is_empty!17885)))

(declare-fun b!887926 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((Option!444 0))(
  ( (Some!443 (v!11462 V!28811)) (None!442) )
))
(declare-fun isDefined!319 (Option!444) Bool)

(declare-datatypes ((tuple2!11956 0))(
  ( (tuple2!11957 (_1!5988 (_ BitVec 64)) (_2!5988 V!28811)) )
))
(declare-datatypes ((List!17771 0))(
  ( (Nil!17768) (Cons!17767 (h!18898 tuple2!11956) (t!25074 List!17771)) )
))
(declare-fun getValueByKey!438 (List!17771 (_ BitVec 64)) Option!444)

(declare-datatypes ((ListLongMap!10667 0))(
  ( (ListLongMap!10668 (toList!5349 List!17771)) )
))
(declare-fun map!12105 (LongMapFixedSize!3938) ListLongMap!10667)

(assert (=> b!887926 (= e!494728 (not (isDefined!319 (getValueByKey!438 (toList!5349 (map!12105 thiss!1181)) key!785))))))

(declare-fun b!887927 () Bool)

(declare-fun e!494730 () Bool)

(assert (=> b!887927 (= e!494730 tp_is_empty!17885)))

(declare-fun mapIsEmpty!28360 () Bool)

(declare-fun mapRes!28360 () Bool)

(assert (=> mapIsEmpty!28360 mapRes!28360))

(declare-fun b!887928 () Bool)

(declare-fun res!602279 () Bool)

(assert (=> b!887928 (=> (not res!602279) (not e!494728))))

(declare-fun contains!4315 (LongMapFixedSize!3938 (_ BitVec 64)) Bool)

(assert (=> b!887928 (= res!602279 (contains!4315 thiss!1181 key!785))))

(declare-fun mapNonEmpty!28360 () Bool)

(declare-fun tp!54618 () Bool)

(assert (=> mapNonEmpty!28360 (= mapRes!28360 (and tp!54618 e!494730))))

(declare-fun mapRest!28360 () (Array (_ BitVec 32) ValueCell!8461))

(declare-fun mapValue!28360 () ValueCell!8461)

(declare-fun mapKey!28360 () (_ BitVec 32))

(assert (=> mapNonEmpty!28360 (= (arr!24871 (_values!5145 thiss!1181)) (store mapRest!28360 mapKey!28360 mapValue!28360))))

(declare-fun b!887929 () Bool)

(declare-fun res!602280 () Bool)

(assert (=> b!887929 (=> (not res!602280) (not e!494728))))

(assert (=> b!887929 (= res!602280 (and (= key!785 (bvneg key!785)) (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4854 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!887930 () Bool)

(assert (=> b!887930 (= e!494727 (and e!494726 mapRes!28360))))

(declare-fun condMapEmpty!28360 () Bool)

(declare-fun mapDefault!28360 () ValueCell!8461)

