; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21362 () Bool)

(assert start!21362)

(declare-fun b!214663 () Bool)

(declare-fun b_free!5691 () Bool)

(declare-fun b_next!5691 () Bool)

(assert (=> b!214663 (= b_free!5691 (not b_next!5691))))

(declare-fun tp!20170 () Bool)

(declare-fun b_and!12599 () Bool)

(assert (=> b!214663 (= tp!20170 b_and!12599)))

(declare-fun b!214656 () Bool)

(declare-fun res!105085 () Bool)

(declare-fun e!139633 () Bool)

(assert (=> b!214656 (=> (not res!105085) (not e!139633))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214656 (= res!105085 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!9454 () Bool)

(declare-fun mapRes!9454 () Bool)

(declare-fun tp!20169 () Bool)

(declare-fun e!139629 () Bool)

(assert (=> mapNonEmpty!9454 (= mapRes!9454 (and tp!20169 e!139629))))

(declare-datatypes ((V!7051 0))(
  ( (V!7052 (val!2821 Int)) )
))
(declare-datatypes ((ValueCell!2433 0))(
  ( (ValueCellFull!2433 (v!4835 V!7051)) (EmptyCell!2433) )
))
(declare-fun mapValue!9454 () ValueCell!2433)

(declare-datatypes ((array!10322 0))(
  ( (array!10323 (arr!4893 (Array (_ BitVec 32) ValueCell!2433)) (size!5220 (_ BitVec 32))) )
))
(declare-datatypes ((array!10324 0))(
  ( (array!10325 (arr!4894 (Array (_ BitVec 32) (_ BitVec 64))) (size!5221 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2766 0))(
  ( (LongMapFixedSize!2767 (defaultEntry!4033 Int) (mask!9703 (_ BitVec 32)) (extraKeys!3770 (_ BitVec 32)) (zeroValue!3874 V!7051) (minValue!3874 V!7051) (_size!1432 (_ BitVec 32)) (_keys!6053 array!10324) (_values!4016 array!10322) (_vacant!1432 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2766)

(declare-fun mapKey!9454 () (_ BitVec 32))

(declare-fun mapRest!9454 () (Array (_ BitVec 32) ValueCell!2433))

(assert (=> mapNonEmpty!9454 (= (arr!4893 (_values!4016 thiss!1504)) (store mapRest!9454 mapKey!9454 mapValue!9454))))

(declare-fun mapIsEmpty!9454 () Bool)

(assert (=> mapIsEmpty!9454 mapRes!9454))

(declare-fun b!214657 () Bool)

(declare-fun e!139631 () Bool)

(declare-fun tp_is_empty!5553 () Bool)

(assert (=> b!214657 (= e!139631 tp_is_empty!5553)))

(declare-fun b!214658 () Bool)

(declare-fun res!105083 () Bool)

(assert (=> b!214658 (=> (not res!105083) (not e!139633))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!732 0))(
  ( (MissingZero!732 (index!5098 (_ BitVec 32))) (Found!732 (index!5099 (_ BitVec 32))) (Intermediate!732 (undefined!1544 Bool) (index!5100 (_ BitVec 32)) (x!22407 (_ BitVec 32))) (Undefined!732) (MissingVacant!732 (index!5101 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10324 (_ BitVec 32)) SeekEntryResult!732)

(assert (=> b!214658 (= res!105083 (not (= (seekEntryOrOpen!0 key!932 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)) (MissingZero!732 index!297))))))

(declare-fun res!105084 () Bool)

(assert (=> start!21362 (=> (not res!105084) (not e!139633))))

(declare-fun valid!1123 (LongMapFixedSize!2766) Bool)

(assert (=> start!21362 (= res!105084 (valid!1123 thiss!1504))))

(assert (=> start!21362 e!139633))

(declare-fun e!139630 () Bool)

(assert (=> start!21362 e!139630))

(assert (=> start!21362 true))

(declare-fun b!214659 () Bool)

(assert (=> b!214659 (= e!139629 tp_is_empty!5553)))

(declare-fun b!214660 () Bool)

(assert (=> b!214660 (= e!139633 (and (bvsge (mask!9703 thiss!1504) #b00000000000000000000000000000000) (not (= (size!5221 (_keys!6053 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9703 thiss!1504))))))))

(declare-fun b!214661 () Bool)

(declare-fun e!139634 () Bool)

(assert (=> b!214661 (= e!139634 (and e!139631 mapRes!9454))))

(declare-fun condMapEmpty!9454 () Bool)

(declare-fun mapDefault!9454 () ValueCell!2433)

(assert (=> b!214661 (= condMapEmpty!9454 (= (arr!4893 (_values!4016 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2433)) mapDefault!9454)))))

(declare-fun b!214662 () Bool)

(declare-fun res!105082 () Bool)

(assert (=> b!214662 (=> (not res!105082) (not e!139633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214662 (= res!105082 (validMask!0 (mask!9703 thiss!1504)))))

(declare-fun array_inv!3227 (array!10324) Bool)

(declare-fun array_inv!3228 (array!10322) Bool)

(assert (=> b!214663 (= e!139630 (and tp!20170 tp_is_empty!5553 (array_inv!3227 (_keys!6053 thiss!1504)) (array_inv!3228 (_values!4016 thiss!1504)) e!139634))))

(assert (= (and start!21362 res!105084) b!214656))

(assert (= (and b!214656 res!105085) b!214658))

(assert (= (and b!214658 res!105083) b!214662))

(assert (= (and b!214662 res!105082) b!214660))

(assert (= (and b!214661 condMapEmpty!9454) mapIsEmpty!9454))

(assert (= (and b!214661 (not condMapEmpty!9454)) mapNonEmpty!9454))

(get-info :version)

(assert (= (and mapNonEmpty!9454 ((_ is ValueCellFull!2433) mapValue!9454)) b!214659))

(assert (= (and b!214661 ((_ is ValueCellFull!2433) mapDefault!9454)) b!214657))

(assert (= b!214663 b!214661))

(assert (= start!21362 b!214663))

(declare-fun m!242239 () Bool)

(assert (=> start!21362 m!242239))

(declare-fun m!242241 () Bool)

(assert (=> b!214658 m!242241))

(declare-fun m!242243 () Bool)

(assert (=> b!214663 m!242243))

(declare-fun m!242245 () Bool)

(assert (=> b!214663 m!242245))

(declare-fun m!242247 () Bool)

(assert (=> mapNonEmpty!9454 m!242247))

(declare-fun m!242249 () Bool)

(assert (=> b!214662 m!242249))

(check-sat b_and!12599 (not start!21362) (not mapNonEmpty!9454) (not b!214662) (not b_next!5691) (not b!214658) tp_is_empty!5553 (not b!214663))
(check-sat b_and!12599 (not b_next!5691))
(get-model)

(declare-fun d!58259 () Bool)

(assert (=> d!58259 (= (validMask!0 (mask!9703 thiss!1504)) (and (or (= (mask!9703 thiss!1504) #b00000000000000000000000000000111) (= (mask!9703 thiss!1504) #b00000000000000000000000000001111) (= (mask!9703 thiss!1504) #b00000000000000000000000000011111) (= (mask!9703 thiss!1504) #b00000000000000000000000000111111) (= (mask!9703 thiss!1504) #b00000000000000000000000001111111) (= (mask!9703 thiss!1504) #b00000000000000000000000011111111) (= (mask!9703 thiss!1504) #b00000000000000000000000111111111) (= (mask!9703 thiss!1504) #b00000000000000000000001111111111) (= (mask!9703 thiss!1504) #b00000000000000000000011111111111) (= (mask!9703 thiss!1504) #b00000000000000000000111111111111) (= (mask!9703 thiss!1504) #b00000000000000000001111111111111) (= (mask!9703 thiss!1504) #b00000000000000000011111111111111) (= (mask!9703 thiss!1504) #b00000000000000000111111111111111) (= (mask!9703 thiss!1504) #b00000000000000001111111111111111) (= (mask!9703 thiss!1504) #b00000000000000011111111111111111) (= (mask!9703 thiss!1504) #b00000000000000111111111111111111) (= (mask!9703 thiss!1504) #b00000000000001111111111111111111) (= (mask!9703 thiss!1504) #b00000000000011111111111111111111) (= (mask!9703 thiss!1504) #b00000000000111111111111111111111) (= (mask!9703 thiss!1504) #b00000000001111111111111111111111) (= (mask!9703 thiss!1504) #b00000000011111111111111111111111) (= (mask!9703 thiss!1504) #b00000000111111111111111111111111) (= (mask!9703 thiss!1504) #b00000001111111111111111111111111) (= (mask!9703 thiss!1504) #b00000011111111111111111111111111) (= (mask!9703 thiss!1504) #b00000111111111111111111111111111) (= (mask!9703 thiss!1504) #b00001111111111111111111111111111) (= (mask!9703 thiss!1504) #b00011111111111111111111111111111) (= (mask!9703 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9703 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214662 d!58259))

(declare-fun d!58261 () Bool)

(declare-fun res!105104 () Bool)

(declare-fun e!139655 () Bool)

(assert (=> d!58261 (=> (not res!105104) (not e!139655))))

(declare-fun simpleValid!212 (LongMapFixedSize!2766) Bool)

(assert (=> d!58261 (= res!105104 (simpleValid!212 thiss!1504))))

(assert (=> d!58261 (= (valid!1123 thiss!1504) e!139655)))

(declare-fun b!214694 () Bool)

(declare-fun res!105105 () Bool)

(assert (=> b!214694 (=> (not res!105105) (not e!139655))))

(declare-fun arrayCountValidKeys!0 (array!10324 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214694 (= res!105105 (= (arrayCountValidKeys!0 (_keys!6053 thiss!1504) #b00000000000000000000000000000000 (size!5221 (_keys!6053 thiss!1504))) (_size!1432 thiss!1504)))))

(declare-fun b!214695 () Bool)

(declare-fun res!105106 () Bool)

(assert (=> b!214695 (=> (not res!105106) (not e!139655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10324 (_ BitVec 32)) Bool)

(assert (=> b!214695 (= res!105106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)))))

(declare-fun b!214696 () Bool)

(declare-datatypes ((List!3152 0))(
  ( (Nil!3149) (Cons!3148 (h!3790 (_ BitVec 64)) (t!8115 List!3152)) )
))
(declare-fun arrayNoDuplicates!0 (array!10324 (_ BitVec 32) List!3152) Bool)

(assert (=> b!214696 (= e!139655 (arrayNoDuplicates!0 (_keys!6053 thiss!1504) #b00000000000000000000000000000000 Nil!3149))))

(assert (= (and d!58261 res!105104) b!214694))

(assert (= (and b!214694 res!105105) b!214695))

(assert (= (and b!214695 res!105106) b!214696))

(declare-fun m!242263 () Bool)

(assert (=> d!58261 m!242263))

(declare-fun m!242265 () Bool)

(assert (=> b!214694 m!242265))

(declare-fun m!242267 () Bool)

(assert (=> b!214695 m!242267))

(declare-fun m!242269 () Bool)

(assert (=> b!214696 m!242269))

(assert (=> start!21362 d!58261))

(declare-fun b!214709 () Bool)

(declare-fun e!139664 () SeekEntryResult!732)

(declare-fun lt!110837 () SeekEntryResult!732)

(assert (=> b!214709 (= e!139664 (Found!732 (index!5100 lt!110837)))))

(declare-fun d!58263 () Bool)

(declare-fun lt!110838 () SeekEntryResult!732)

(assert (=> d!58263 (and (or ((_ is Undefined!732) lt!110838) (not ((_ is Found!732) lt!110838)) (and (bvsge (index!5099 lt!110838) #b00000000000000000000000000000000) (bvslt (index!5099 lt!110838) (size!5221 (_keys!6053 thiss!1504))))) (or ((_ is Undefined!732) lt!110838) ((_ is Found!732) lt!110838) (not ((_ is MissingZero!732) lt!110838)) (and (bvsge (index!5098 lt!110838) #b00000000000000000000000000000000) (bvslt (index!5098 lt!110838) (size!5221 (_keys!6053 thiss!1504))))) (or ((_ is Undefined!732) lt!110838) ((_ is Found!732) lt!110838) ((_ is MissingZero!732) lt!110838) (not ((_ is MissingVacant!732) lt!110838)) (and (bvsge (index!5101 lt!110838) #b00000000000000000000000000000000) (bvslt (index!5101 lt!110838) (size!5221 (_keys!6053 thiss!1504))))) (or ((_ is Undefined!732) lt!110838) (ite ((_ is Found!732) lt!110838) (= (select (arr!4894 (_keys!6053 thiss!1504)) (index!5099 lt!110838)) key!932) (ite ((_ is MissingZero!732) lt!110838) (= (select (arr!4894 (_keys!6053 thiss!1504)) (index!5098 lt!110838)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!732) lt!110838) (= (select (arr!4894 (_keys!6053 thiss!1504)) (index!5101 lt!110838)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!139663 () SeekEntryResult!732)

(assert (=> d!58263 (= lt!110838 e!139663)))

(declare-fun c!36054 () Bool)

(assert (=> d!58263 (= c!36054 (and ((_ is Intermediate!732) lt!110837) (undefined!1544 lt!110837)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10324 (_ BitVec 32)) SeekEntryResult!732)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58263 (= lt!110837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9703 thiss!1504)) key!932 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)))))

(assert (=> d!58263 (validMask!0 (mask!9703 thiss!1504))))

(assert (=> d!58263 (= (seekEntryOrOpen!0 key!932 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)) lt!110838)))

(declare-fun b!214710 () Bool)

(assert (=> b!214710 (= e!139663 e!139664)))

(declare-fun lt!110839 () (_ BitVec 64))

(assert (=> b!214710 (= lt!110839 (select (arr!4894 (_keys!6053 thiss!1504)) (index!5100 lt!110837)))))

(declare-fun c!36053 () Bool)

(assert (=> b!214710 (= c!36053 (= lt!110839 key!932))))

(declare-fun e!139662 () SeekEntryResult!732)

(declare-fun b!214711 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10324 (_ BitVec 32)) SeekEntryResult!732)

(assert (=> b!214711 (= e!139662 (seekKeyOrZeroReturnVacant!0 (x!22407 lt!110837) (index!5100 lt!110837) (index!5100 lt!110837) key!932 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)))))

(declare-fun b!214712 () Bool)

(assert (=> b!214712 (= e!139663 Undefined!732)))

(declare-fun b!214713 () Bool)

(assert (=> b!214713 (= e!139662 (MissingZero!732 (index!5100 lt!110837)))))

(declare-fun b!214714 () Bool)

(declare-fun c!36055 () Bool)

(assert (=> b!214714 (= c!36055 (= lt!110839 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!214714 (= e!139664 e!139662)))

(assert (= (and d!58263 c!36054) b!214712))

(assert (= (and d!58263 (not c!36054)) b!214710))

(assert (= (and b!214710 c!36053) b!214709))

(assert (= (and b!214710 (not c!36053)) b!214714))

(assert (= (and b!214714 c!36055) b!214713))

(assert (= (and b!214714 (not c!36055)) b!214711))

(declare-fun m!242271 () Bool)

(assert (=> d!58263 m!242271))

(assert (=> d!58263 m!242249))

(declare-fun m!242273 () Bool)

(assert (=> d!58263 m!242273))

(declare-fun m!242275 () Bool)

(assert (=> d!58263 m!242275))

(assert (=> d!58263 m!242273))

(declare-fun m!242277 () Bool)

(assert (=> d!58263 m!242277))

(declare-fun m!242279 () Bool)

(assert (=> d!58263 m!242279))

(declare-fun m!242281 () Bool)

(assert (=> b!214710 m!242281))

(declare-fun m!242283 () Bool)

(assert (=> b!214711 m!242283))

(assert (=> b!214658 d!58263))

(declare-fun d!58265 () Bool)

(assert (=> d!58265 (= (array_inv!3227 (_keys!6053 thiss!1504)) (bvsge (size!5221 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214663 d!58265))

(declare-fun d!58267 () Bool)

(assert (=> d!58267 (= (array_inv!3228 (_values!4016 thiss!1504)) (bvsge (size!5220 (_values!4016 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214663 d!58267))

(declare-fun condMapEmpty!9460 () Bool)

(declare-fun mapDefault!9460 () ValueCell!2433)

(assert (=> mapNonEmpty!9454 (= condMapEmpty!9460 (= mapRest!9454 ((as const (Array (_ BitVec 32) ValueCell!2433)) mapDefault!9460)))))

(declare-fun e!139669 () Bool)

(declare-fun mapRes!9460 () Bool)

(assert (=> mapNonEmpty!9454 (= tp!20169 (and e!139669 mapRes!9460))))

(declare-fun b!214721 () Bool)

(declare-fun e!139670 () Bool)

(assert (=> b!214721 (= e!139670 tp_is_empty!5553)))

(declare-fun b!214722 () Bool)

(assert (=> b!214722 (= e!139669 tp_is_empty!5553)))

(declare-fun mapNonEmpty!9460 () Bool)

(declare-fun tp!20179 () Bool)

(assert (=> mapNonEmpty!9460 (= mapRes!9460 (and tp!20179 e!139670))))

(declare-fun mapValue!9460 () ValueCell!2433)

(declare-fun mapRest!9460 () (Array (_ BitVec 32) ValueCell!2433))

(declare-fun mapKey!9460 () (_ BitVec 32))

(assert (=> mapNonEmpty!9460 (= mapRest!9454 (store mapRest!9460 mapKey!9460 mapValue!9460))))

(declare-fun mapIsEmpty!9460 () Bool)

(assert (=> mapIsEmpty!9460 mapRes!9460))

(assert (= (and mapNonEmpty!9454 condMapEmpty!9460) mapIsEmpty!9460))

(assert (= (and mapNonEmpty!9454 (not condMapEmpty!9460)) mapNonEmpty!9460))

(assert (= (and mapNonEmpty!9460 ((_ is ValueCellFull!2433) mapValue!9460)) b!214721))

(assert (= (and mapNonEmpty!9454 ((_ is ValueCellFull!2433) mapDefault!9460)) b!214722))

(declare-fun m!242285 () Bool)

(assert (=> mapNonEmpty!9460 m!242285))

(check-sat (not d!58263) b_and!12599 (not b!214696) (not b!214695) (not b_next!5691) (not b!214694) tp_is_empty!5553 (not b!214711) (not d!58261) (not mapNonEmpty!9460))
(check-sat b_and!12599 (not b_next!5691))
(get-model)

(declare-fun b!214741 () Bool)

(declare-fun lt!110844 () SeekEntryResult!732)

(assert (=> b!214741 (and (bvsge (index!5100 lt!110844) #b00000000000000000000000000000000) (bvslt (index!5100 lt!110844) (size!5221 (_keys!6053 thiss!1504))))))

(declare-fun e!139683 () Bool)

(assert (=> b!214741 (= e!139683 (= (select (arr!4894 (_keys!6053 thiss!1504)) (index!5100 lt!110844)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!214742 () Bool)

(declare-fun e!139681 () SeekEntryResult!732)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214742 (= e!139681 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!9703 thiss!1504)) #b00000000000000000000000000000000 (mask!9703 thiss!1504)) key!932 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)))))

(declare-fun b!214743 () Bool)

(declare-fun e!139682 () Bool)

(assert (=> b!214743 (= e!139682 (bvsge (x!22407 lt!110844) #b01111111111111111111111111111110))))

(declare-fun b!214744 () Bool)

(declare-fun e!139684 () SeekEntryResult!732)

(assert (=> b!214744 (= e!139684 (Intermediate!732 true (toIndex!0 key!932 (mask!9703 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!214745 () Bool)

(assert (=> b!214745 (= e!139681 (Intermediate!732 false (toIndex!0 key!932 (mask!9703 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!214746 () Bool)

(assert (=> b!214746 (= e!139684 e!139681)))

(declare-fun c!36063 () Bool)

(declare-fun lt!110845 () (_ BitVec 64))

(assert (=> b!214746 (= c!36063 (or (= lt!110845 key!932) (= (bvadd lt!110845 lt!110845) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!214747 () Bool)

(declare-fun e!139685 () Bool)

(assert (=> b!214747 (= e!139682 e!139685)))

(declare-fun res!105115 () Bool)

(assert (=> b!214747 (= res!105115 (and ((_ is Intermediate!732) lt!110844) (not (undefined!1544 lt!110844)) (bvslt (x!22407 lt!110844) #b01111111111111111111111111111110) (bvsge (x!22407 lt!110844) #b00000000000000000000000000000000) (bvsge (x!22407 lt!110844) #b00000000000000000000000000000000)))))

(assert (=> b!214747 (=> (not res!105115) (not e!139685))))

(declare-fun b!214748 () Bool)

(assert (=> b!214748 (and (bvsge (index!5100 lt!110844) #b00000000000000000000000000000000) (bvslt (index!5100 lt!110844) (size!5221 (_keys!6053 thiss!1504))))))

(declare-fun res!105114 () Bool)

(assert (=> b!214748 (= res!105114 (= (select (arr!4894 (_keys!6053 thiss!1504)) (index!5100 lt!110844)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!214748 (=> res!105114 e!139683)))

(declare-fun b!214749 () Bool)

(assert (=> b!214749 (and (bvsge (index!5100 lt!110844) #b00000000000000000000000000000000) (bvslt (index!5100 lt!110844) (size!5221 (_keys!6053 thiss!1504))))))

(declare-fun res!105113 () Bool)

(assert (=> b!214749 (= res!105113 (= (select (arr!4894 (_keys!6053 thiss!1504)) (index!5100 lt!110844)) key!932))))

(assert (=> b!214749 (=> res!105113 e!139683)))

(assert (=> b!214749 (= e!139685 e!139683)))

(declare-fun d!58269 () Bool)

(assert (=> d!58269 e!139682))

(declare-fun c!36064 () Bool)

(assert (=> d!58269 (= c!36064 (and ((_ is Intermediate!732) lt!110844) (undefined!1544 lt!110844)))))

(assert (=> d!58269 (= lt!110844 e!139684)))

(declare-fun c!36062 () Bool)

(assert (=> d!58269 (= c!36062 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!58269 (= lt!110845 (select (arr!4894 (_keys!6053 thiss!1504)) (toIndex!0 key!932 (mask!9703 thiss!1504))))))

(assert (=> d!58269 (validMask!0 (mask!9703 thiss!1504))))

(assert (=> d!58269 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9703 thiss!1504)) key!932 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)) lt!110844)))

(assert (= (and d!58269 c!36062) b!214744))

(assert (= (and d!58269 (not c!36062)) b!214746))

(assert (= (and b!214746 c!36063) b!214745))

(assert (= (and b!214746 (not c!36063)) b!214742))

(assert (= (and d!58269 c!36064) b!214743))

(assert (= (and d!58269 (not c!36064)) b!214747))

(assert (= (and b!214747 res!105115) b!214749))

(assert (= (and b!214749 (not res!105113)) b!214748))

(assert (= (and b!214748 (not res!105114)) b!214741))

(assert (=> b!214742 m!242273))

(declare-fun m!242287 () Bool)

(assert (=> b!214742 m!242287))

(assert (=> b!214742 m!242287))

(declare-fun m!242289 () Bool)

(assert (=> b!214742 m!242289))

(declare-fun m!242291 () Bool)

(assert (=> b!214741 m!242291))

(assert (=> b!214748 m!242291))

(assert (=> b!214749 m!242291))

(assert (=> d!58269 m!242273))

(declare-fun m!242293 () Bool)

(assert (=> d!58269 m!242293))

(assert (=> d!58269 m!242249))

(assert (=> d!58263 d!58269))

(declare-fun d!58271 () Bool)

(declare-fun lt!110851 () (_ BitVec 32))

(declare-fun lt!110850 () (_ BitVec 32))

(assert (=> d!58271 (= lt!110851 (bvmul (bvxor lt!110850 (bvlshr lt!110850 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!58271 (= lt!110850 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!58271 (and (bvsge (mask!9703 thiss!1504) #b00000000000000000000000000000000) (let ((res!105116 (let ((h!3791 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!22424 (bvmul (bvxor h!3791 (bvlshr h!3791 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!22424 (bvlshr x!22424 #b00000000000000000000000000001101)) (mask!9703 thiss!1504)))))) (and (bvslt res!105116 (bvadd (mask!9703 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!105116 #b00000000000000000000000000000000))))))

(assert (=> d!58271 (= (toIndex!0 key!932 (mask!9703 thiss!1504)) (bvand (bvxor lt!110851 (bvlshr lt!110851 #b00000000000000000000000000001101)) (mask!9703 thiss!1504)))))

(assert (=> d!58263 d!58271))

(assert (=> d!58263 d!58259))

(declare-fun b!214758 () Bool)

(declare-fun e!139693 () Bool)

(declare-fun call!20323 () Bool)

(assert (=> b!214758 (= e!139693 call!20323)))

(declare-fun d!58273 () Bool)

(declare-fun res!105122 () Bool)

(declare-fun e!139694 () Bool)

(assert (=> d!58273 (=> res!105122 e!139694)))

(assert (=> d!58273 (= res!105122 (bvsge #b00000000000000000000000000000000 (size!5221 (_keys!6053 thiss!1504))))))

(assert (=> d!58273 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)) e!139694)))

(declare-fun b!214759 () Bool)

(declare-fun e!139692 () Bool)

(assert (=> b!214759 (= e!139692 call!20323)))

(declare-fun bm!20320 () Bool)

(assert (=> bm!20320 (= call!20323 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6053 thiss!1504) (mask!9703 thiss!1504)))))

(declare-fun b!214760 () Bool)

(assert (=> b!214760 (= e!139693 e!139692)))

(declare-fun lt!110858 () (_ BitVec 64))

(assert (=> b!214760 (= lt!110858 (select (arr!4894 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6489 0))(
  ( (Unit!6490) )
))
(declare-fun lt!110859 () Unit!6489)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10324 (_ BitVec 64) (_ BitVec 32)) Unit!6489)

(assert (=> b!214760 (= lt!110859 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6053 thiss!1504) lt!110858 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!214760 (arrayContainsKey!0 (_keys!6053 thiss!1504) lt!110858 #b00000000000000000000000000000000)))

(declare-fun lt!110860 () Unit!6489)

(assert (=> b!214760 (= lt!110860 lt!110859)))

(declare-fun res!105121 () Bool)

(assert (=> b!214760 (= res!105121 (= (seekEntryOrOpen!0 (select (arr!4894 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000) (_keys!6053 thiss!1504) (mask!9703 thiss!1504)) (Found!732 #b00000000000000000000000000000000)))))

(assert (=> b!214760 (=> (not res!105121) (not e!139692))))

(declare-fun b!214761 () Bool)

(assert (=> b!214761 (= e!139694 e!139693)))

(declare-fun c!36067 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!214761 (= c!36067 (validKeyInArray!0 (select (arr!4894 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58273 (not res!105122)) b!214761))

(assert (= (and b!214761 c!36067) b!214760))

(assert (= (and b!214761 (not c!36067)) b!214758))

(assert (= (and b!214760 res!105121) b!214759))

(assert (= (or b!214759 b!214758) bm!20320))

(declare-fun m!242295 () Bool)

(assert (=> bm!20320 m!242295))

(declare-fun m!242297 () Bool)

(assert (=> b!214760 m!242297))

(declare-fun m!242299 () Bool)

(assert (=> b!214760 m!242299))

(declare-fun m!242301 () Bool)

(assert (=> b!214760 m!242301))

(assert (=> b!214760 m!242297))

(declare-fun m!242303 () Bool)

(assert (=> b!214760 m!242303))

(assert (=> b!214761 m!242297))

(assert (=> b!214761 m!242297))

(declare-fun m!242305 () Bool)

(assert (=> b!214761 m!242305))

(assert (=> b!214695 d!58273))

(declare-fun b!214770 () Bool)

(declare-fun e!139699 () (_ BitVec 32))

(declare-fun call!20326 () (_ BitVec 32))

(assert (=> b!214770 (= e!139699 call!20326)))

(declare-fun bm!20323 () Bool)

(assert (=> bm!20323 (= call!20326 (arrayCountValidKeys!0 (_keys!6053 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5221 (_keys!6053 thiss!1504))))))

(declare-fun b!214771 () Bool)

(declare-fun e!139700 () (_ BitVec 32))

(assert (=> b!214771 (= e!139700 e!139699)))

(declare-fun c!36072 () Bool)

(assert (=> b!214771 (= c!36072 (validKeyInArray!0 (select (arr!4894 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214772 () Bool)

(assert (=> b!214772 (= e!139699 (bvadd #b00000000000000000000000000000001 call!20326))))

(declare-fun b!214773 () Bool)

(assert (=> b!214773 (= e!139700 #b00000000000000000000000000000000)))

(declare-fun d!58275 () Bool)

(declare-fun lt!110863 () (_ BitVec 32))

(assert (=> d!58275 (and (bvsge lt!110863 #b00000000000000000000000000000000) (bvsle lt!110863 (bvsub (size!5221 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58275 (= lt!110863 e!139700)))

(declare-fun c!36073 () Bool)

(assert (=> d!58275 (= c!36073 (bvsge #b00000000000000000000000000000000 (size!5221 (_keys!6053 thiss!1504))))))

(assert (=> d!58275 (and (bvsle #b00000000000000000000000000000000 (size!5221 (_keys!6053 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5221 (_keys!6053 thiss!1504)) (size!5221 (_keys!6053 thiss!1504))))))

(assert (=> d!58275 (= (arrayCountValidKeys!0 (_keys!6053 thiss!1504) #b00000000000000000000000000000000 (size!5221 (_keys!6053 thiss!1504))) lt!110863)))

(assert (= (and d!58275 c!36073) b!214773))

(assert (= (and d!58275 (not c!36073)) b!214771))

(assert (= (and b!214771 c!36072) b!214772))

(assert (= (and b!214771 (not c!36072)) b!214770))

(assert (= (or b!214772 b!214770) bm!20323))

(declare-fun m!242307 () Bool)

(assert (=> bm!20323 m!242307))

(assert (=> b!214771 m!242297))

(assert (=> b!214771 m!242297))

(assert (=> b!214771 m!242305))

(assert (=> b!214694 d!58275))

(declare-fun d!58277 () Bool)

(declare-fun res!105132 () Bool)

(declare-fun e!139703 () Bool)

(assert (=> d!58277 (=> (not res!105132) (not e!139703))))

(assert (=> d!58277 (= res!105132 (validMask!0 (mask!9703 thiss!1504)))))

(assert (=> d!58277 (= (simpleValid!212 thiss!1504) e!139703)))

(declare-fun b!214784 () Bool)

(declare-fun res!105131 () Bool)

(assert (=> b!214784 (=> (not res!105131) (not e!139703))))

(declare-fun size!5224 (LongMapFixedSize!2766) (_ BitVec 32))

(assert (=> b!214784 (= res!105131 (= (size!5224 thiss!1504) (bvadd (_size!1432 thiss!1504) (bvsdiv (bvadd (extraKeys!3770 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!214783 () Bool)

(declare-fun res!105133 () Bool)

(assert (=> b!214783 (=> (not res!105133) (not e!139703))))

(assert (=> b!214783 (= res!105133 (bvsge (size!5224 thiss!1504) (_size!1432 thiss!1504)))))

(declare-fun b!214785 () Bool)

(assert (=> b!214785 (= e!139703 (and (bvsge (extraKeys!3770 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3770 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1432 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!214782 () Bool)

(declare-fun res!105134 () Bool)

(assert (=> b!214782 (=> (not res!105134) (not e!139703))))

(assert (=> b!214782 (= res!105134 (and (= (size!5220 (_values!4016 thiss!1504)) (bvadd (mask!9703 thiss!1504) #b00000000000000000000000000000001)) (= (size!5221 (_keys!6053 thiss!1504)) (size!5220 (_values!4016 thiss!1504))) (bvsge (_size!1432 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1432 thiss!1504) (bvadd (mask!9703 thiss!1504) #b00000000000000000000000000000001))))))

(assert (= (and d!58277 res!105132) b!214782))

(assert (= (and b!214782 res!105134) b!214783))

(assert (= (and b!214783 res!105133) b!214784))

(assert (= (and b!214784 res!105131) b!214785))

(assert (=> d!58277 m!242249))

(declare-fun m!242309 () Bool)

(assert (=> b!214784 m!242309))

(assert (=> b!214783 m!242309))

(assert (=> d!58261 d!58277))

(declare-fun b!214798 () Bool)

(declare-fun e!139710 () SeekEntryResult!732)

(assert (=> b!214798 (= e!139710 (seekKeyOrZeroReturnVacant!0 (bvadd (x!22407 lt!110837) #b00000000000000000000000000000001) (nextIndex!0 (index!5100 lt!110837) (x!22407 lt!110837) (mask!9703 thiss!1504)) (index!5100 lt!110837) key!932 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)))))

(declare-fun b!214799 () Bool)

(declare-fun e!139712 () SeekEntryResult!732)

(declare-fun e!139711 () SeekEntryResult!732)

(assert (=> b!214799 (= e!139712 e!139711)))

(declare-fun c!36082 () Bool)

(declare-fun lt!110868 () (_ BitVec 64))

(assert (=> b!214799 (= c!36082 (= lt!110868 key!932))))

(declare-fun b!214800 () Bool)

(assert (=> b!214800 (= e!139712 Undefined!732)))

(declare-fun b!214801 () Bool)

(declare-fun c!36081 () Bool)

(assert (=> b!214801 (= c!36081 (= lt!110868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!214801 (= e!139711 e!139710)))

(declare-fun b!214802 () Bool)

(assert (=> b!214802 (= e!139710 (MissingVacant!732 (index!5100 lt!110837)))))

(declare-fun b!214803 () Bool)

(assert (=> b!214803 (= e!139711 (Found!732 (index!5100 lt!110837)))))

(declare-fun d!58279 () Bool)

(declare-fun lt!110869 () SeekEntryResult!732)

(assert (=> d!58279 (and (or ((_ is Undefined!732) lt!110869) (not ((_ is Found!732) lt!110869)) (and (bvsge (index!5099 lt!110869) #b00000000000000000000000000000000) (bvslt (index!5099 lt!110869) (size!5221 (_keys!6053 thiss!1504))))) (or ((_ is Undefined!732) lt!110869) ((_ is Found!732) lt!110869) (not ((_ is MissingVacant!732) lt!110869)) (not (= (index!5101 lt!110869) (index!5100 lt!110837))) (and (bvsge (index!5101 lt!110869) #b00000000000000000000000000000000) (bvslt (index!5101 lt!110869) (size!5221 (_keys!6053 thiss!1504))))) (or ((_ is Undefined!732) lt!110869) (ite ((_ is Found!732) lt!110869) (= (select (arr!4894 (_keys!6053 thiss!1504)) (index!5099 lt!110869)) key!932) (and ((_ is MissingVacant!732) lt!110869) (= (index!5101 lt!110869) (index!5100 lt!110837)) (= (select (arr!4894 (_keys!6053 thiss!1504)) (index!5101 lt!110869)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!58279 (= lt!110869 e!139712)))

(declare-fun c!36080 () Bool)

(assert (=> d!58279 (= c!36080 (bvsge (x!22407 lt!110837) #b01111111111111111111111111111110))))

(assert (=> d!58279 (= lt!110868 (select (arr!4894 (_keys!6053 thiss!1504)) (index!5100 lt!110837)))))

(assert (=> d!58279 (validMask!0 (mask!9703 thiss!1504))))

(assert (=> d!58279 (= (seekKeyOrZeroReturnVacant!0 (x!22407 lt!110837) (index!5100 lt!110837) (index!5100 lt!110837) key!932 (_keys!6053 thiss!1504) (mask!9703 thiss!1504)) lt!110869)))

(assert (= (and d!58279 c!36080) b!214800))

(assert (= (and d!58279 (not c!36080)) b!214799))

(assert (= (and b!214799 c!36082) b!214803))

(assert (= (and b!214799 (not c!36082)) b!214801))

(assert (= (and b!214801 c!36081) b!214802))

(assert (= (and b!214801 (not c!36081)) b!214798))

(declare-fun m!242311 () Bool)

(assert (=> b!214798 m!242311))

(assert (=> b!214798 m!242311))

(declare-fun m!242313 () Bool)

(assert (=> b!214798 m!242313))

(declare-fun m!242315 () Bool)

(assert (=> d!58279 m!242315))

(declare-fun m!242317 () Bool)

(assert (=> d!58279 m!242317))

(assert (=> d!58279 m!242281))

(assert (=> d!58279 m!242249))

(assert (=> b!214711 d!58279))

(declare-fun b!214814 () Bool)

(declare-fun e!139721 () Bool)

(declare-fun e!139722 () Bool)

(assert (=> b!214814 (= e!139721 e!139722)))

(declare-fun res!105141 () Bool)

(assert (=> b!214814 (=> (not res!105141) (not e!139722))))

(declare-fun e!139724 () Bool)

(assert (=> b!214814 (= res!105141 (not e!139724))))

(declare-fun res!105142 () Bool)

(assert (=> b!214814 (=> (not res!105142) (not e!139724))))

(assert (=> b!214814 (= res!105142 (validKeyInArray!0 (select (arr!4894 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214815 () Bool)

(declare-fun e!139723 () Bool)

(declare-fun call!20329 () Bool)

(assert (=> b!214815 (= e!139723 call!20329)))

(declare-fun bm!20326 () Bool)

(declare-fun c!36085 () Bool)

(assert (=> bm!20326 (= call!20329 (arrayNoDuplicates!0 (_keys!6053 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36085 (Cons!3148 (select (arr!4894 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000) Nil!3149) Nil!3149)))))

(declare-fun b!214816 () Bool)

(assert (=> b!214816 (= e!139722 e!139723)))

(assert (=> b!214816 (= c!36085 (validKeyInArray!0 (select (arr!4894 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!58281 () Bool)

(declare-fun res!105143 () Bool)

(assert (=> d!58281 (=> res!105143 e!139721)))

(assert (=> d!58281 (= res!105143 (bvsge #b00000000000000000000000000000000 (size!5221 (_keys!6053 thiss!1504))))))

(assert (=> d!58281 (= (arrayNoDuplicates!0 (_keys!6053 thiss!1504) #b00000000000000000000000000000000 Nil!3149) e!139721)))

(declare-fun b!214817 () Bool)

(assert (=> b!214817 (= e!139723 call!20329)))

(declare-fun b!214818 () Bool)

(declare-fun contains!1426 (List!3152 (_ BitVec 64)) Bool)

(assert (=> b!214818 (= e!139724 (contains!1426 Nil!3149 (select (arr!4894 (_keys!6053 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58281 (not res!105143)) b!214814))

(assert (= (and b!214814 res!105142) b!214818))

(assert (= (and b!214814 res!105141) b!214816))

(assert (= (and b!214816 c!36085) b!214817))

(assert (= (and b!214816 (not c!36085)) b!214815))

(assert (= (or b!214817 b!214815) bm!20326))

(assert (=> b!214814 m!242297))

(assert (=> b!214814 m!242297))

(assert (=> b!214814 m!242305))

(assert (=> bm!20326 m!242297))

(declare-fun m!242319 () Bool)

(assert (=> bm!20326 m!242319))

(assert (=> b!214816 m!242297))

(assert (=> b!214816 m!242297))

(assert (=> b!214816 m!242305))

(assert (=> b!214818 m!242297))

(assert (=> b!214818 m!242297))

(declare-fun m!242321 () Bool)

(assert (=> b!214818 m!242321))

(assert (=> b!214696 d!58281))

(declare-fun condMapEmpty!9461 () Bool)

(declare-fun mapDefault!9461 () ValueCell!2433)

(assert (=> mapNonEmpty!9460 (= condMapEmpty!9461 (= mapRest!9460 ((as const (Array (_ BitVec 32) ValueCell!2433)) mapDefault!9461)))))

(declare-fun e!139725 () Bool)

(declare-fun mapRes!9461 () Bool)

(assert (=> mapNonEmpty!9460 (= tp!20179 (and e!139725 mapRes!9461))))

(declare-fun b!214819 () Bool)

(declare-fun e!139726 () Bool)

(assert (=> b!214819 (= e!139726 tp_is_empty!5553)))

(declare-fun b!214820 () Bool)

(assert (=> b!214820 (= e!139725 tp_is_empty!5553)))

(declare-fun mapNonEmpty!9461 () Bool)

(declare-fun tp!20180 () Bool)

(assert (=> mapNonEmpty!9461 (= mapRes!9461 (and tp!20180 e!139726))))

(declare-fun mapRest!9461 () (Array (_ BitVec 32) ValueCell!2433))

(declare-fun mapValue!9461 () ValueCell!2433)

(declare-fun mapKey!9461 () (_ BitVec 32))

(assert (=> mapNonEmpty!9461 (= mapRest!9460 (store mapRest!9461 mapKey!9461 mapValue!9461))))

(declare-fun mapIsEmpty!9461 () Bool)

(assert (=> mapIsEmpty!9461 mapRes!9461))

(assert (= (and mapNonEmpty!9460 condMapEmpty!9461) mapIsEmpty!9461))

(assert (= (and mapNonEmpty!9460 (not condMapEmpty!9461)) mapNonEmpty!9461))

(assert (= (and mapNonEmpty!9461 ((_ is ValueCellFull!2433) mapValue!9461)) b!214819))

(assert (= (and mapNonEmpty!9460 ((_ is ValueCellFull!2433) mapDefault!9461)) b!214820))

(declare-fun m!242323 () Bool)

(assert (=> mapNonEmpty!9461 m!242323))

(check-sat (not d!58279) b_and!12599 (not mapNonEmpty!9461) (not bm!20320) (not b_next!5691) (not b!214818) (not d!58277) (not b!214771) (not b!214742) (not b!214784) tp_is_empty!5553 (not bm!20323) (not b!214760) (not b!214798) (not bm!20326) (not b!214816) (not b!214814) (not d!58269) (not b!214783) (not b!214761))
(check-sat b_and!12599 (not b_next!5691))
