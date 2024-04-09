; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16262 () Bool)

(assert start!16262)

(declare-fun b!162093 () Bool)

(declare-fun b_free!3711 () Bool)

(declare-fun b_next!3711 () Bool)

(assert (=> b!162093 (= b_free!3711 (not b_next!3711))))

(declare-fun tp!13702 () Bool)

(declare-fun b_and!10143 () Bool)

(assert (=> b!162093 (= tp!13702 b_and!10143)))

(declare-fun b!162089 () Bool)

(declare-fun e!106130 () Bool)

(assert (=> b!162089 (= e!106130 false)))

(declare-fun lt!82405 () Bool)

(declare-datatypes ((V!4331 0))(
  ( (V!4332 (val!1801 Int)) )
))
(declare-fun v!309 () V!4331)

(declare-datatypes ((ValueCell!1413 0))(
  ( (ValueCellFull!1413 (v!3662 V!4331)) (EmptyCell!1413) )
))
(declare-datatypes ((array!6104 0))(
  ( (array!6105 (arr!2896 (Array (_ BitVec 32) (_ BitVec 64))) (size!3180 (_ BitVec 32))) )
))
(declare-datatypes ((array!6106 0))(
  ( (array!6107 (arr!2897 (Array (_ BitVec 32) ValueCell!1413)) (size!3181 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1734 0))(
  ( (LongMapFixedSize!1735 (defaultEntry!3309 Int) (mask!7921 (_ BitVec 32)) (extraKeys!3050 (_ BitVec 32)) (zeroValue!3152 V!4331) (minValue!3152 V!4331) (_size!916 (_ BitVec 32)) (_keys!5110 array!6104) (_values!3292 array!6106) (_vacant!916 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1734)

(declare-datatypes ((SeekEntryResult!382 0))(
  ( (MissingZero!382 (index!3696 (_ BitVec 32))) (Found!382 (index!3697 (_ BitVec 32))) (Intermediate!382 (undefined!1194 Bool) (index!3698 (_ BitVec 32)) (x!17926 (_ BitVec 32))) (Undefined!382) (MissingVacant!382 (index!3699 (_ BitVec 32))) )
))
(declare-fun lt!82406 () SeekEntryResult!382)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun valid!779 (LongMapFixedSize!1734) Bool)

(declare-datatypes ((tuple2!2984 0))(
  ( (tuple2!2985 (_1!1502 Bool) (_2!1502 LongMapFixedSize!1734)) )
))
(declare-fun updateHelperNewKey!80 (LongMapFixedSize!1734 (_ BitVec 64) V!4331 (_ BitVec 32)) tuple2!2984)

(assert (=> b!162089 (= lt!82405 (valid!779 (_2!1502 (updateHelperNewKey!80 thiss!1248 key!828 v!309 (index!3699 lt!82406)))))))

(declare-fun b!162090 () Bool)

(declare-fun e!106135 () Bool)

(declare-fun tp_is_empty!3513 () Bool)

(assert (=> b!162090 (= e!106135 tp_is_empty!3513)))

(declare-fun b!162091 () Bool)

(declare-fun res!76803 () Bool)

(declare-fun e!106134 () Bool)

(assert (=> b!162091 (=> (not res!76803) (not e!106134))))

(assert (=> b!162091 (= res!76803 (not (= key!828 (bvneg key!828))))))

(declare-fun e!106132 () Bool)

(declare-fun e!106131 () Bool)

(declare-fun array_inv!1845 (array!6104) Bool)

(declare-fun array_inv!1846 (array!6106) Bool)

(assert (=> b!162093 (= e!106132 (and tp!13702 tp_is_empty!3513 (array_inv!1845 (_keys!5110 thiss!1248)) (array_inv!1846 (_values!3292 thiss!1248)) e!106131))))

(declare-fun mapNonEmpty!5957 () Bool)

(declare-fun mapRes!5957 () Bool)

(declare-fun tp!13703 () Bool)

(assert (=> mapNonEmpty!5957 (= mapRes!5957 (and tp!13703 e!106135))))

(declare-fun mapValue!5957 () ValueCell!1413)

(declare-fun mapKey!5957 () (_ BitVec 32))

(declare-fun mapRest!5957 () (Array (_ BitVec 32) ValueCell!1413))

(assert (=> mapNonEmpty!5957 (= (arr!2897 (_values!3292 thiss!1248)) (store mapRest!5957 mapKey!5957 mapValue!5957))))

(declare-fun b!162094 () Bool)

(declare-fun e!106133 () Bool)

(assert (=> b!162094 (= e!106133 tp_is_empty!3513)))

(declare-fun mapIsEmpty!5957 () Bool)

(assert (=> mapIsEmpty!5957 mapRes!5957))

(declare-fun b!162095 () Bool)

(assert (=> b!162095 (= e!106134 e!106130)))

(declare-fun res!76805 () Bool)

(assert (=> b!162095 (=> (not res!76805) (not e!106130))))

(get-info :version)

(assert (=> b!162095 (= res!76805 (and (not ((_ is Undefined!382) lt!82406)) ((_ is MissingVacant!382) lt!82406)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6104 (_ BitVec 32)) SeekEntryResult!382)

(assert (=> b!162095 (= lt!82406 (seekEntryOrOpen!0 key!828 (_keys!5110 thiss!1248) (mask!7921 thiss!1248)))))

(declare-fun res!76804 () Bool)

(assert (=> start!16262 (=> (not res!76804) (not e!106134))))

(assert (=> start!16262 (= res!76804 (valid!779 thiss!1248))))

(assert (=> start!16262 e!106134))

(assert (=> start!16262 e!106132))

(assert (=> start!16262 true))

(assert (=> start!16262 tp_is_empty!3513))

(declare-fun b!162092 () Bool)

(assert (=> b!162092 (= e!106131 (and e!106133 mapRes!5957))))

(declare-fun condMapEmpty!5957 () Bool)

(declare-fun mapDefault!5957 () ValueCell!1413)

(assert (=> b!162092 (= condMapEmpty!5957 (= (arr!2897 (_values!3292 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1413)) mapDefault!5957)))))

(assert (= (and start!16262 res!76804) b!162091))

(assert (= (and b!162091 res!76803) b!162095))

(assert (= (and b!162095 res!76805) b!162089))

(assert (= (and b!162092 condMapEmpty!5957) mapIsEmpty!5957))

(assert (= (and b!162092 (not condMapEmpty!5957)) mapNonEmpty!5957))

(assert (= (and mapNonEmpty!5957 ((_ is ValueCellFull!1413) mapValue!5957)) b!162090))

(assert (= (and b!162092 ((_ is ValueCellFull!1413) mapDefault!5957)) b!162094))

(assert (= b!162093 b!162092))

(assert (= start!16262 b!162093))

(declare-fun m!193351 () Bool)

(assert (=> start!16262 m!193351))

(declare-fun m!193353 () Bool)

(assert (=> b!162089 m!193353))

(declare-fun m!193355 () Bool)

(assert (=> b!162089 m!193355))

(declare-fun m!193357 () Bool)

(assert (=> b!162095 m!193357))

(declare-fun m!193359 () Bool)

(assert (=> mapNonEmpty!5957 m!193359))

(declare-fun m!193361 () Bool)

(assert (=> b!162093 m!193361))

(declare-fun m!193363 () Bool)

(assert (=> b!162093 m!193363))

(check-sat (not b!162093) (not start!16262) (not b!162089) (not b!162095) tp_is_empty!3513 (not b_next!3711) (not mapNonEmpty!5957) b_and!10143)
(check-sat b_and!10143 (not b_next!3711))
