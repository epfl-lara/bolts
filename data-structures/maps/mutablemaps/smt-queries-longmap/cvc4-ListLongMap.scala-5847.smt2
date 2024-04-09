; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75588 () Bool)

(assert start!75588)

(declare-fun b!888641 () Bool)

(declare-fun b_free!15587 () Bool)

(declare-fun b_next!15587 () Bool)

(assert (=> b!888641 (= b_free!15587 (not b_next!15587))))

(declare-fun tp!54716 () Bool)

(declare-fun b_and!25845 () Bool)

(assert (=> b!888641 (= tp!54716 b_and!25845)))

(declare-fun b!888640 () Bool)

(declare-fun e!495259 () Bool)

(declare-fun tp_is_empty!17915 () Bool)

(assert (=> b!888640 (= e!495259 tp_is_empty!17915)))

(declare-fun mapNonEmpty!28413 () Bool)

(declare-fun mapRes!28413 () Bool)

(declare-fun tp!54717 () Bool)

(declare-fun e!495254 () Bool)

(assert (=> mapNonEmpty!28413 (= mapRes!28413 (and tp!54717 e!495254))))

(declare-datatypes ((array!51788 0))(
  ( (array!51789 (arr!24900 (Array (_ BitVec 32) (_ BitVec 64))) (size!25343 (_ BitVec 32))) )
))
(declare-datatypes ((V!28851 0))(
  ( (V!28852 (val!9008 Int)) )
))
(declare-datatypes ((ValueCell!8476 0))(
  ( (ValueCellFull!8476 (v!11478 V!28851)) (EmptyCell!8476) )
))
(declare-datatypes ((array!51790 0))(
  ( (array!51791 (arr!24901 (Array (_ BitVec 32) ValueCell!8476)) (size!25344 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3968 0))(
  ( (LongMapFixedSize!3969 (defaultEntry!5181 Int) (mask!25604 (_ BitVec 32)) (extraKeys!4875 (_ BitVec 32)) (zeroValue!4979 V!28851) (minValue!4979 V!28851) (_size!2039 (_ BitVec 32)) (_keys!9858 array!51788) (_values!5166 array!51790) (_vacant!2039 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3968)

(declare-fun mapValue!28413 () ValueCell!8476)

(declare-fun mapRest!28413 () (Array (_ BitVec 32) ValueCell!8476))

(declare-fun mapKey!28413 () (_ BitVec 32))

(assert (=> mapNonEmpty!28413 (= (arr!24901 (_values!5166 thiss!1181)) (store mapRest!28413 mapKey!28413 mapValue!28413))))

(declare-fun mapIsEmpty!28413 () Bool)

(assert (=> mapIsEmpty!28413 mapRes!28413))

(declare-fun e!495255 () Bool)

(declare-fun e!495257 () Bool)

(declare-fun array_inv!19564 (array!51788) Bool)

(declare-fun array_inv!19565 (array!51790) Bool)

(assert (=> b!888641 (= e!495257 (and tp!54716 tp_is_empty!17915 (array_inv!19564 (_keys!9858 thiss!1181)) (array_inv!19565 (_values!5166 thiss!1181)) e!495255))))

(declare-fun b!888642 () Bool)

(declare-fun e!495258 () Bool)

(assert (=> b!888642 (= e!495258 false)))

(declare-fun lt!401868 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4324 (LongMapFixedSize!3968 (_ BitVec 64)) Bool)

(assert (=> b!888642 (= lt!401868 (contains!4324 thiss!1181 key!785))))

(declare-fun res!602498 () Bool)

(assert (=> start!75588 (=> (not res!602498) (not e!495258))))

(declare-fun valid!1535 (LongMapFixedSize!3968) Bool)

(assert (=> start!75588 (= res!602498 (valid!1535 thiss!1181))))

(assert (=> start!75588 e!495258))

(assert (=> start!75588 e!495257))

(assert (=> start!75588 true))

(declare-fun b!888643 () Bool)

(assert (=> b!888643 (= e!495255 (and e!495259 mapRes!28413))))

(declare-fun condMapEmpty!28413 () Bool)

(declare-fun mapDefault!28413 () ValueCell!8476)

