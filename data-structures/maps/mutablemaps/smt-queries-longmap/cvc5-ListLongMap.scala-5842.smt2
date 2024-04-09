; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75466 () Bool)

(assert start!75466)

(declare-fun b!887888 () Bool)

(declare-fun b_free!15553 () Bool)

(declare-fun b_next!15553 () Bool)

(assert (=> b!887888 (= b_free!15553 (not b_next!15553))))

(declare-fun tp!54606 () Bool)

(declare-fun b_and!25807 () Bool)

(assert (=> b!887888 (= tp!54606 b_and!25807)))

(declare-fun b!887882 () Bool)

(declare-fun res!602261 () Bool)

(declare-fun e!494690 () Bool)

(assert (=> b!887882 (=> (not res!602261) (not e!494690))))

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((array!51716 0))(
  ( (array!51717 (arr!24866 (Array (_ BitVec 32) (_ BitVec 64))) (size!25307 (_ BitVec 32))) )
))
(declare-datatypes ((V!28807 0))(
  ( (V!28808 (val!8991 Int)) )
))
(declare-datatypes ((ValueCell!8459 0))(
  ( (ValueCellFull!8459 (v!11457 V!28807)) (EmptyCell!8459) )
))
(declare-datatypes ((array!51718 0))(
  ( (array!51719 (arr!24867 (Array (_ BitVec 32) ValueCell!8459)) (size!25308 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3934 0))(
  ( (LongMapFixedSize!3935 (defaultEntry!5158 Int) (mask!25563 (_ BitVec 32)) (extraKeys!4852 (_ BitVec 32)) (zeroValue!4956 V!28807) (minValue!4956 V!28807) (_size!2022 (_ BitVec 32)) (_keys!9831 array!51716) (_values!5143 array!51718) (_vacant!2022 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3934)

(assert (=> b!887882 (= res!602261 (and (= key!785 (bvneg key!785)) (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4852 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!887883 () Bool)

(declare-fun e!494691 () Bool)

(declare-fun tp_is_empty!17881 () Bool)

(assert (=> b!887883 (= e!494691 tp_is_empty!17881)))

(declare-fun b!887884 () Bool)

(declare-fun res!602262 () Bool)

(assert (=> b!887884 (=> (not res!602262) (not e!494690))))

(declare-fun contains!4313 (LongMapFixedSize!3934 (_ BitVec 64)) Bool)

(assert (=> b!887884 (= res!602262 (contains!4313 thiss!1181 key!785))))

(declare-fun b!887885 () Bool)

(declare-datatypes ((Option!442 0))(
  ( (Some!441 (v!11458 V!28807)) (None!440) )
))
(declare-fun isDefined!317 (Option!442) Bool)

(declare-datatypes ((tuple2!11952 0))(
  ( (tuple2!11953 (_1!5986 (_ BitVec 64)) (_2!5986 V!28807)) )
))
(declare-datatypes ((List!17769 0))(
  ( (Nil!17766) (Cons!17765 (h!18896 tuple2!11952) (t!25072 List!17769)) )
))
(declare-fun getValueByKey!436 (List!17769 (_ BitVec 64)) Option!442)

(declare-datatypes ((ListLongMap!10663 0))(
  ( (ListLongMap!10664 (toList!5347 List!17769)) )
))
(declare-fun map!12103 (LongMapFixedSize!3934) ListLongMap!10663)

(assert (=> b!887885 (= e!494690 (not (isDefined!317 (getValueByKey!436 (toList!5347 (map!12103 thiss!1181)) key!785))))))

(declare-fun b!887886 () Bool)

(declare-fun e!494692 () Bool)

(assert (=> b!887886 (= e!494692 tp_is_empty!17881)))

(declare-fun res!602260 () Bool)

(assert (=> start!75466 (=> (not res!602260) (not e!494690))))

(declare-fun valid!1523 (LongMapFixedSize!3934) Bool)

(assert (=> start!75466 (= res!602260 (valid!1523 thiss!1181))))

(assert (=> start!75466 e!494690))

(declare-fun e!494694 () Bool)

(assert (=> start!75466 e!494694))

(assert (=> start!75466 true))

(declare-fun mapNonEmpty!28354 () Bool)

(declare-fun mapRes!28354 () Bool)

(declare-fun tp!54607 () Bool)

(assert (=> mapNonEmpty!28354 (= mapRes!28354 (and tp!54607 e!494691))))

(declare-fun mapRest!28354 () (Array (_ BitVec 32) ValueCell!8459))

(declare-fun mapValue!28354 () ValueCell!8459)

(declare-fun mapKey!28354 () (_ BitVec 32))

(assert (=> mapNonEmpty!28354 (= (arr!24867 (_values!5143 thiss!1181)) (store mapRest!28354 mapKey!28354 mapValue!28354))))

(declare-fun b!887887 () Bool)

(declare-fun e!494693 () Bool)

(assert (=> b!887887 (= e!494693 (and e!494692 mapRes!28354))))

(declare-fun condMapEmpty!28354 () Bool)

(declare-fun mapDefault!28354 () ValueCell!8459)

