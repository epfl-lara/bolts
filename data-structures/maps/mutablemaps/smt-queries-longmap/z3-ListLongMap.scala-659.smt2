; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16316 () Bool)

(assert start!16316)

(declare-fun b!162662 () Bool)

(declare-fun b_free!3765 () Bool)

(declare-fun b_next!3765 () Bool)

(assert (=> b!162662 (= b_free!3765 (not b_next!3765))))

(declare-fun tp!13864 () Bool)

(declare-fun b_and!10197 () Bool)

(assert (=> b!162662 (= tp!13864 b_and!10197)))

(declare-fun res!77047 () Bool)

(declare-fun e!106682 () Bool)

(assert (=> start!16316 (=> (not res!77047) (not e!106682))))

(declare-datatypes ((V!4403 0))(
  ( (V!4404 (val!1828 Int)) )
))
(declare-datatypes ((ValueCell!1440 0))(
  ( (ValueCellFull!1440 (v!3689 V!4403)) (EmptyCell!1440) )
))
(declare-datatypes ((array!6212 0))(
  ( (array!6213 (arr!2950 (Array (_ BitVec 32) (_ BitVec 64))) (size!3234 (_ BitVec 32))) )
))
(declare-datatypes ((array!6214 0))(
  ( (array!6215 (arr!2951 (Array (_ BitVec 32) ValueCell!1440)) (size!3235 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1788 0))(
  ( (LongMapFixedSize!1789 (defaultEntry!3336 Int) (mask!7966 (_ BitVec 32)) (extraKeys!3077 (_ BitVec 32)) (zeroValue!3179 V!4403) (minValue!3179 V!4403) (_size!943 (_ BitVec 32)) (_keys!5137 array!6212) (_values!3319 array!6214) (_vacant!943 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1788)

(declare-fun valid!797 (LongMapFixedSize!1788) Bool)

(assert (=> start!16316 (= res!77047 (valid!797 thiss!1248))))

(assert (=> start!16316 e!106682))

(declare-fun e!106681 () Bool)

(assert (=> start!16316 e!106681))

(assert (=> start!16316 true))

(declare-fun tp_is_empty!3567 () Bool)

(assert (=> start!16316 tp_is_empty!3567))

(declare-fun b!162656 () Bool)

(declare-fun res!77048 () Bool)

(assert (=> b!162656 (=> (not res!77048) (not e!106682))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162656 (= res!77048 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6038 () Bool)

(declare-fun mapRes!6038 () Bool)

(assert (=> mapIsEmpty!6038 mapRes!6038))

(declare-fun b!162657 () Bool)

(declare-fun e!106684 () Bool)

(assert (=> b!162657 (= e!106684 false)))

(declare-datatypes ((SeekEntryResult!399 0))(
  ( (MissingZero!399 (index!3764 (_ BitVec 32))) (Found!399 (index!3765 (_ BitVec 32))) (Intermediate!399 (undefined!1211 Bool) (index!3766 (_ BitVec 32)) (x!18015 (_ BitVec 32))) (Undefined!399) (MissingVacant!399 (index!3767 (_ BitVec 32))) )
))
(declare-fun lt!82549 () SeekEntryResult!399)

(declare-fun v!309 () V!4403)

(declare-fun lt!82550 () Bool)

(declare-datatypes ((tuple2!3006 0))(
  ( (tuple2!3007 (_1!1513 Bool) (_2!1513 LongMapFixedSize!1788)) )
))
(declare-fun updateHelperNewKey!88 (LongMapFixedSize!1788 (_ BitVec 64) V!4403 (_ BitVec 32)) tuple2!3006)

(assert (=> b!162657 (= lt!82550 (valid!797 (_2!1513 (updateHelperNewKey!88 thiss!1248 key!828 v!309 (index!3764 lt!82549)))))))

(declare-fun b!162658 () Bool)

(declare-fun e!106679 () Bool)

(declare-fun e!106685 () Bool)

(assert (=> b!162658 (= e!106679 (and e!106685 mapRes!6038))))

(declare-fun condMapEmpty!6038 () Bool)

(declare-fun mapDefault!6038 () ValueCell!1440)

(assert (=> b!162658 (= condMapEmpty!6038 (= (arr!2951 (_values!3319 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1440)) mapDefault!6038)))))

(declare-fun b!162659 () Bool)

(assert (=> b!162659 (= e!106682 e!106684)))

(declare-fun res!77046 () Bool)

(assert (=> b!162659 (=> (not res!77046) (not e!106684))))

(get-info :version)

(assert (=> b!162659 (= res!77046 (and (not ((_ is Undefined!399) lt!82549)) (not ((_ is MissingVacant!399) lt!82549)) ((_ is MissingZero!399) lt!82549)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6212 (_ BitVec 32)) SeekEntryResult!399)

(assert (=> b!162659 (= lt!82549 (seekEntryOrOpen!0 key!828 (_keys!5137 thiss!1248) (mask!7966 thiss!1248)))))

(declare-fun mapNonEmpty!6038 () Bool)

(declare-fun tp!13865 () Bool)

(declare-fun e!106683 () Bool)

(assert (=> mapNonEmpty!6038 (= mapRes!6038 (and tp!13865 e!106683))))

(declare-fun mapValue!6038 () ValueCell!1440)

(declare-fun mapKey!6038 () (_ BitVec 32))

(declare-fun mapRest!6038 () (Array (_ BitVec 32) ValueCell!1440))

(assert (=> mapNonEmpty!6038 (= (arr!2951 (_values!3319 thiss!1248)) (store mapRest!6038 mapKey!6038 mapValue!6038))))

(declare-fun b!162660 () Bool)

(assert (=> b!162660 (= e!106683 tp_is_empty!3567)))

(declare-fun b!162661 () Bool)

(assert (=> b!162661 (= e!106685 tp_is_empty!3567)))

(declare-fun array_inv!1875 (array!6212) Bool)

(declare-fun array_inv!1876 (array!6214) Bool)

(assert (=> b!162662 (= e!106681 (and tp!13864 tp_is_empty!3567 (array_inv!1875 (_keys!5137 thiss!1248)) (array_inv!1876 (_values!3319 thiss!1248)) e!106679))))

(assert (= (and start!16316 res!77047) b!162656))

(assert (= (and b!162656 res!77048) b!162659))

(assert (= (and b!162659 res!77046) b!162657))

(assert (= (and b!162658 condMapEmpty!6038) mapIsEmpty!6038))

(assert (= (and b!162658 (not condMapEmpty!6038)) mapNonEmpty!6038))

(assert (= (and mapNonEmpty!6038 ((_ is ValueCellFull!1440) mapValue!6038)) b!162660))

(assert (= (and b!162658 ((_ is ValueCellFull!1440) mapDefault!6038)) b!162661))

(assert (= b!162662 b!162658))

(assert (= start!16316 b!162662))

(declare-fun m!193705 () Bool)

(assert (=> b!162659 m!193705))

(declare-fun m!193707 () Bool)

(assert (=> b!162662 m!193707))

(declare-fun m!193709 () Bool)

(assert (=> b!162662 m!193709))

(declare-fun m!193711 () Bool)

(assert (=> mapNonEmpty!6038 m!193711))

(declare-fun m!193713 () Bool)

(assert (=> start!16316 m!193713))

(declare-fun m!193715 () Bool)

(assert (=> b!162657 m!193715))

(declare-fun m!193717 () Bool)

(assert (=> b!162657 m!193717))

(check-sat (not b!162662) tp_is_empty!3567 b_and!10197 (not mapNonEmpty!6038) (not b_next!3765) (not b!162657) (not b!162659) (not start!16316))
(check-sat b_and!10197 (not b_next!3765))
