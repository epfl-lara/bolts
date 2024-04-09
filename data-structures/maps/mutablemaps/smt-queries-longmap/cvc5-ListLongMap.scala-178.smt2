; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3464 () Bool)

(assert start!3464)

(declare-fun b!22665 () Bool)

(declare-fun b_free!745 () Bool)

(declare-fun b_next!745 () Bool)

(assert (=> b!22665 (= b_free!745 (not b_next!745))))

(declare-fun tp!3479 () Bool)

(declare-fun b_and!1465 () Bool)

(assert (=> b!22665 (= tp!3479 b_and!1465)))

(declare-fun b!22664 () Bool)

(declare-datatypes ((V!1171 0))(
  ( (V!1172 (val!531 Int)) )
))
(declare-datatypes ((ValueCell!305 0))(
  ( (ValueCellFull!305 (v!1588 V!1171)) (EmptyCell!305) )
))
(declare-datatypes ((array!1245 0))(
  ( (array!1246 (arr!589 (Array (_ BitVec 32) ValueCell!305)) (size!685 (_ BitVec 32))) )
))
(declare-datatypes ((array!1247 0))(
  ( (array!1248 (arr!590 (Array (_ BitVec 32) (_ BitVec 64))) (size!686 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!196 0))(
  ( (LongMapFixedSize!197 (defaultEntry!1735 Int) (mask!4717 (_ BitVec 32)) (extraKeys!1634 (_ BitVec 32)) (zeroValue!1659 V!1171) (minValue!1659 V!1171) (_size!142 (_ BitVec 32)) (_keys!3157 array!1247) (_values!1722 array!1245) (_vacant!142 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!196 0))(
  ( (Cell!197 (v!1589 LongMapFixedSize!196)) )
))
(declare-datatypes ((LongMap!196 0))(
  ( (LongMap!197 (underlying!109 Cell!196)) )
))
(declare-datatypes ((tuple3!8 0))(
  ( (tuple3!9 (_1!459 Bool) (_2!459 Cell!196) (_3!4 LongMap!196)) )
))
(declare-fun e!14711 () tuple3!8)

(declare-datatypes ((tuple2!910 0))(
  ( (tuple2!911 (_1!460 Bool) (_2!460 Cell!196)) )
))
(declare-fun lt!7823 () tuple2!910)

(declare-fun thiss!938 () LongMap!196)

(assert (=> b!22664 (= e!14711 (tuple3!9 false (_2!460 lt!7823) thiss!938))))

(declare-fun res!14225 () Bool)

(declare-fun e!14710 () Bool)

(assert (=> start!3464 (=> (not res!14225) (not e!14710))))

(declare-fun valid!104 (LongMap!196) Bool)

(assert (=> start!3464 (= res!14225 (valid!104 thiss!938))))

(assert (=> start!3464 e!14710))

(declare-fun e!14715 () Bool)

(assert (=> start!3464 e!14715))

(declare-fun e!14706 () Bool)

(declare-fun tp_is_empty!1009 () Bool)

(declare-fun e!14705 () Bool)

(declare-fun array_inv!417 (array!1247) Bool)

(declare-fun array_inv!418 (array!1245) Bool)

(assert (=> b!22665 (= e!14705 (and tp!3479 tp_is_empty!1009 (array_inv!417 (_keys!3157 (v!1589 (underlying!109 thiss!938)))) (array_inv!418 (_values!1722 (v!1589 (underlying!109 thiss!938)))) e!14706))))

(declare-fun bm!1714 () Bool)

(declare-datatypes ((tuple2!912 0))(
  ( (tuple2!913 (_1!461 Bool) (_2!461 LongMapFixedSize!196)) )
))
(declare-fun call!1718 () tuple2!912)

(declare-fun call!1717 () tuple2!912)

(assert (=> bm!1714 (= call!1718 call!1717)))

(declare-fun b!22666 () Bool)

(declare-fun e!14707 () tuple2!910)

(declare-fun e!14713 () tuple2!910)

(assert (=> b!22666 (= e!14707 e!14713)))

(declare-fun c!2820 () Bool)

(declare-fun lt!7827 () Bool)

(assert (=> b!22666 (= c!2820 (and (not lt!7827) (= (bvand (extraKeys!1634 (v!1589 (underlying!109 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!7828 () tuple2!912)

(declare-fun lt!7825 () Cell!196)

(declare-fun b!22667 () Bool)

(assert (=> b!22667 (= e!14711 (ite (_1!461 lt!7828) (tuple3!9 true (underlying!109 thiss!938) (LongMap!197 lt!7825)) (tuple3!9 false lt!7825 thiss!938)))))

(declare-fun repackFrom!5 (LongMap!196 LongMapFixedSize!196 (_ BitVec 32)) tuple2!912)

(assert (=> b!22667 (= lt!7828 (repackFrom!5 thiss!938 (v!1589 (_2!460 lt!7823)) (bvsub (size!686 (_keys!3157 (v!1589 (underlying!109 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!22667 (= lt!7825 (Cell!197 (_2!461 lt!7828)))))

(declare-fun lt!7826 () tuple2!912)

(declare-fun c!2819 () Bool)

(declare-fun bm!1715 () Bool)

(declare-fun lt!7831 () LongMapFixedSize!196)

(declare-fun update!28 (LongMapFixedSize!196 (_ BitVec 64) V!1171) tuple2!912)

(assert (=> bm!1715 (= call!1717 (update!28 (ite c!2819 (_2!461 lt!7826) lt!7831) (ite c!2819 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2820 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2819 (minValue!1659 (v!1589 (underlying!109 thiss!938))) (ite c!2820 (zeroValue!1659 (v!1589 (underlying!109 thiss!938))) (minValue!1659 (v!1589 (underlying!109 thiss!938)))))))))

(declare-fun b!22668 () Bool)

(declare-fun lt!7824 () tuple2!912)

(assert (=> b!22668 (= e!14707 (tuple2!911 (and (_1!461 lt!7826) (_1!461 lt!7824)) (Cell!197 (_2!461 lt!7824))))))

(assert (=> b!22668 (= lt!7826 (update!28 lt!7831 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1659 (v!1589 (underlying!109 thiss!938)))))))

(assert (=> b!22668 (= lt!7824 call!1717)))

(declare-fun b!22669 () Bool)

(declare-fun e!14712 () Bool)

(assert (=> b!22669 (= e!14712 tp_is_empty!1009)))

(declare-fun b!22670 () Bool)

(assert (=> b!22670 (= e!14710 false)))

(declare-fun lt!7829 () tuple3!8)

(assert (=> b!22670 (= lt!7829 e!14711)))

(declare-fun c!2818 () Bool)

(assert (=> b!22670 (= c!2818 (not (_1!460 lt!7823)))))

(assert (=> b!22670 (= lt!7823 e!14707)))

(assert (=> b!22670 (= c!2819 (and (not lt!7827) (not (= (bvand (extraKeys!1634 (v!1589 (underlying!109 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!22670 (= lt!7827 (= (bvand (extraKeys!1634 (v!1589 (underlying!109 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!28 ((_ BitVec 32) Int) LongMapFixedSize!196)

(declare-fun computeNewMask!25 (LongMap!196 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!22670 (= lt!7831 (getNewLongMapFixedSize!28 (computeNewMask!25 thiss!938 (mask!4717 (v!1589 (underlying!109 thiss!938))) (_vacant!142 (v!1589 (underlying!109 thiss!938))) (_size!142 (v!1589 (underlying!109 thiss!938)))) (defaultEntry!1735 (v!1589 (underlying!109 thiss!938)))))))

(declare-fun b!22671 () Bool)

(declare-fun e!14709 () Bool)

(assert (=> b!22671 (= e!14709 tp_is_empty!1009)))

(declare-fun mapNonEmpty!1001 () Bool)

(declare-fun mapRes!1001 () Bool)

(declare-fun tp!3478 () Bool)

(assert (=> mapNonEmpty!1001 (= mapRes!1001 (and tp!3478 e!14712))))

(declare-fun mapRest!1001 () (Array (_ BitVec 32) ValueCell!305))

(declare-fun mapValue!1001 () ValueCell!305)

(declare-fun mapKey!1001 () (_ BitVec 32))

(assert (=> mapNonEmpty!1001 (= (arr!589 (_values!1722 (v!1589 (underlying!109 thiss!938)))) (store mapRest!1001 mapKey!1001 mapValue!1001))))

(declare-fun b!22672 () Bool)

(declare-fun e!14708 () tuple2!910)

(declare-fun lt!7830 () tuple2!912)

(assert (=> b!22672 (= e!14708 (tuple2!911 (_1!461 lt!7830) (Cell!197 (_2!461 lt!7830))))))

(assert (=> b!22672 (= lt!7830 call!1718)))

(declare-fun b!22673 () Bool)

(declare-fun e!14714 () Bool)

(assert (=> b!22673 (= e!14715 e!14714)))

(declare-fun b!22674 () Bool)

(assert (=> b!22674 (= e!14708 (tuple2!911 true (Cell!197 lt!7831)))))

(declare-fun mapIsEmpty!1001 () Bool)

(assert (=> mapIsEmpty!1001 mapRes!1001))

(declare-fun b!22675 () Bool)

(assert (=> b!22675 (= e!14714 e!14705)))

(declare-fun b!22676 () Bool)

(declare-fun c!2817 () Bool)

(assert (=> b!22676 (= c!2817 (and (not (= (bvand (extraKeys!1634 (v!1589 (underlying!109 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!7827))))

(assert (=> b!22676 (= e!14713 e!14708)))

(declare-fun b!22677 () Bool)

(declare-fun lt!7832 () tuple2!912)

(assert (=> b!22677 (= lt!7832 call!1718)))

(assert (=> b!22677 (= e!14713 (tuple2!911 (_1!461 lt!7832) (Cell!197 (_2!461 lt!7832))))))

(declare-fun b!22678 () Bool)

(assert (=> b!22678 (= e!14706 (and e!14709 mapRes!1001))))

(declare-fun condMapEmpty!1001 () Bool)

(declare-fun mapDefault!1001 () ValueCell!305)

