; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75934 () Bool)

(assert start!75934)

(declare-fun b!892945 () Bool)

(declare-fun b_free!15841 () Bool)

(declare-fun b_next!15841 () Bool)

(assert (=> b!892945 (= b_free!15841 (not b_next!15841))))

(declare-fun tp!55495 () Bool)

(declare-fun b_and!26121 () Bool)

(assert (=> b!892945 (= tp!55495 b_and!26121)))

(declare-fun mapNonEmpty!28811 () Bool)

(declare-fun mapRes!28811 () Bool)

(declare-fun tp!55496 () Bool)

(declare-fun e!498643 () Bool)

(assert (=> mapNonEmpty!28811 (= mapRes!28811 (and tp!55496 e!498643))))

(declare-datatypes ((V!29191 0))(
  ( (V!29192 (val!9135 Int)) )
))
(declare-datatypes ((ValueCell!8603 0))(
  ( (ValueCellFull!8603 (v!11610 V!29191)) (EmptyCell!8603) )
))
(declare-fun mapValue!28811 () ValueCell!8603)

(declare-fun mapRest!28811 () (Array (_ BitVec 32) ValueCell!8603))

(declare-fun mapKey!28811 () (_ BitVec 32))

(declare-datatypes ((array!52306 0))(
  ( (array!52307 (arr!25154 (Array (_ BitVec 32) (_ BitVec 64))) (size!25599 (_ BitVec 32))) )
))
(declare-datatypes ((array!52308 0))(
  ( (array!52309 (arr!25155 (Array (_ BitVec 32) ValueCell!8603)) (size!25600 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4222 0))(
  ( (LongMapFixedSize!4223 (defaultEntry!5311 Int) (mask!25828 (_ BitVec 32)) (extraKeys!5006 (_ BitVec 32)) (zeroValue!5110 V!29191) (minValue!5110 V!29191) (_size!2166 (_ BitVec 32)) (_keys!9992 array!52306) (_values!5297 array!52308) (_vacant!2166 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4222)

(assert (=> mapNonEmpty!28811 (= (arr!25155 (_values!5297 thiss!1181)) (store mapRest!28811 mapKey!28811 mapValue!28811))))

(declare-fun e!498645 () Bool)

(declare-fun tp_is_empty!18169 () Bool)

(declare-fun e!498650 () Bool)

(declare-fun array_inv!19732 (array!52306) Bool)

(declare-fun array_inv!19733 (array!52308) Bool)

(assert (=> b!892945 (= e!498645 (and tp!55495 tp_is_empty!18169 (array_inv!19732 (_keys!9992 thiss!1181)) (array_inv!19733 (_values!5297 thiss!1181)) e!498650))))

(declare-fun b!892946 () Bool)

(declare-fun e!498647 () Bool)

(assert (=> b!892946 (= e!498647 tp_is_empty!18169)))

(declare-fun b!892947 () Bool)

(declare-fun res!604901 () Bool)

(declare-fun e!498644 () Bool)

(assert (=> b!892947 (=> (not res!604901) (not e!498644))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892947 (= res!604901 (not (= key!785 (bvneg key!785))))))

(declare-fun res!604899 () Bool)

(assert (=> start!75934 (=> (not res!604899) (not e!498644))))

(declare-fun valid!1621 (LongMapFixedSize!4222) Bool)

(assert (=> start!75934 (= res!604899 (valid!1621 thiss!1181))))

(assert (=> start!75934 e!498644))

(assert (=> start!75934 e!498645))

(assert (=> start!75934 true))

(declare-fun b!892948 () Bool)

(assert (=> b!892948 (= e!498643 tp_is_empty!18169)))

(declare-fun b!892949 () Bool)

(declare-fun e!498649 () Bool)

(assert (=> b!892949 (= e!498644 (not e!498649))))

(declare-fun res!604902 () Bool)

(assert (=> b!892949 (=> res!604902 e!498649)))

(declare-datatypes ((SeekEntryResult!8852 0))(
  ( (MissingZero!8852 (index!37778 (_ BitVec 32))) (Found!8852 (index!37779 (_ BitVec 32))) (Intermediate!8852 (undefined!9664 Bool) (index!37780 (_ BitVec 32)) (x!75905 (_ BitVec 32))) (Undefined!8852) (MissingVacant!8852 (index!37781 (_ BitVec 32))) )
))
(declare-fun lt!403473 () SeekEntryResult!8852)

(assert (=> b!892949 (= res!604902 (is-Found!8852 lt!403473))))

(declare-fun e!498648 () Bool)

(assert (=> b!892949 e!498648))

(declare-fun res!604900 () Bool)

(assert (=> b!892949 (=> res!604900 e!498648)))

(assert (=> b!892949 (= res!604900 (not (is-Found!8852 lt!403473)))))

(declare-datatypes ((Unit!30387 0))(
  ( (Unit!30388) )
))
(declare-fun lt!403471 () Unit!30387)

(declare-fun lemmaSeekEntryGivesInRangeIndex!65 (array!52306 array!52308 (_ BitVec 32) (_ BitVec 32) V!29191 V!29191 (_ BitVec 64)) Unit!30387)

(assert (=> b!892949 (= lt!403471 (lemmaSeekEntryGivesInRangeIndex!65 (_keys!9992 thiss!1181) (_values!5297 thiss!1181) (mask!25828 thiss!1181) (extraKeys!5006 thiss!1181) (zeroValue!5110 thiss!1181) (minValue!5110 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52306 (_ BitVec 32)) SeekEntryResult!8852)

(assert (=> b!892949 (= lt!403473 (seekEntry!0 key!785 (_keys!9992 thiss!1181) (mask!25828 thiss!1181)))))

(declare-fun b!892950 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892950 (= e!498648 (inRange!0 (index!37779 lt!403473) (mask!25828 thiss!1181)))))

(declare-fun b!892951 () Bool)

(assert (=> b!892951 (= e!498650 (and e!498647 mapRes!28811))))

(declare-fun condMapEmpty!28811 () Bool)

(declare-fun mapDefault!28811 () ValueCell!8603)

