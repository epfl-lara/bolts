; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416732 () Bool)

(assert start!416732)

(declare-fun b!4327151 () Bool)

(declare-fun b_free!129121 () Bool)

(declare-fun b_next!129825 () Bool)

(assert (=> b!4327151 (= b_free!129121 (not b_next!129825))))

(declare-fun tp!1327874 () Bool)

(declare-fun b_and!340711 () Bool)

(assert (=> b!4327151 (= tp!1327874 b_and!340711)))

(declare-fun b!4327146 () Bool)

(declare-fun e!2692526 () Bool)

(declare-fun e!2692520 () Bool)

(assert (=> b!4327146 (= e!2692526 e!2692520)))

(declare-fun b!4327147 () Bool)

(declare-fun e!2692521 () Bool)

(declare-fun tp_is_empty!24259 () Bool)

(declare-fun mapRes!21352 () Bool)

(assert (=> b!4327147 (= e!2692521 (and tp_is_empty!24259 mapRes!21352))))

(declare-fun condMapEmpty!21352 () Bool)

(declare-datatypes ((V!9936 0))(
  ( (V!9937 (val!16036 Int)) )
))
(declare-datatypes ((array!17424 0))(
  ( (array!17425 (arr!7775 (Array (_ BitVec 32) V!9936)) (size!35815 (_ BitVec 32))) )
))
(declare-datatypes ((array!17426 0))(
  ( (array!17427 (arr!7776 (Array (_ BitVec 32) (_ BitVec 64))) (size!35816 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9590 0))(
  ( (LongMapFixedSize!9591 (defaultEntry!5201 Int) (mask!13457 (_ BitVec 32)) (extraKeys!5060 (_ BitVec 32)) (zeroValue!5072 V!9936) (minValue!5072 V!9936) (_size!9627 (_ BitVec 32)) (_keys!5122 array!17426) (_values!5096 array!17424) (_vacant!4859 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18971 0))(
  ( (Cell!18972 (v!42954 LongMapFixedSize!9590)) )
))
(declare-datatypes ((MutLongMap!4795 0))(
  ( (LongMap!4795 (underlying!9810 Cell!18971)) (MutLongMapExt!4794 (__x!30392 Int)) )
))
(declare-fun thiss!47260 () MutLongMap!4795)

(declare-fun mapDefault!21352 () V!9936)

(assert (=> b!4327147 (= condMapEmpty!21352 (= (arr!7775 (_values!5096 (v!42954 (underlying!9810 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9936)) mapDefault!21352)))))

(declare-fun mapIsEmpty!21352 () Bool)

(assert (=> mapIsEmpty!21352 mapRes!21352))

(declare-fun b!4327148 () Bool)

(declare-datatypes ((tuple2!47450 0))(
  ( (tuple2!47451 (_1!27014 Bool) (_2!27014 MutLongMap!4795)) )
))
(declare-fun e!2692524 () tuple2!47450)

(declare-fun repack!102 (MutLongMap!4795) tuple2!47450)

(assert (=> b!4327148 (= e!2692524 (repack!102 thiss!47260))))

(declare-fun b!4327149 () Bool)

(declare-fun res!1773232 () Bool)

(declare-fun e!2692523 () Bool)

(assert (=> b!4327149 (=> (not res!1773232) (not e!2692523))))

(declare-fun valid!3813 (MutLongMap!4795) Bool)

(assert (=> b!4327149 (= res!1773232 (valid!3813 thiss!47260))))

(declare-fun b!4327150 () Bool)

(assert (=> b!4327150 (= e!2692524 (tuple2!47451 true thiss!47260))))

(declare-fun res!1773231 () Bool)

(assert (=> start!416732 (=> (not res!1773231) (not e!2692523))))

(get-info :version)

(assert (=> start!416732 (= res!1773231 ((_ is LongMap!4795) thiss!47260))))

(assert (=> start!416732 e!2692523))

(declare-fun e!2692522 () Bool)

(assert (=> start!416732 e!2692522))

(declare-fun array_inv!5601 (array!17426) Bool)

(declare-fun array_inv!5602 (array!17424) Bool)

(assert (=> b!4327151 (= e!2692520 (and tp!1327874 tp_is_empty!24259 (array_inv!5601 (_keys!5122 (v!42954 (underlying!9810 thiss!47260)))) (array_inv!5602 (_values!5096 (v!42954 (underlying!9810 thiss!47260)))) e!2692521))))

(declare-fun b!4327152 () Bool)

(assert (=> b!4327152 (= e!2692523 false)))

(declare-fun lt!1544333 () tuple2!47450)

(assert (=> b!4327152 (= lt!1544333 e!2692524)))

(declare-fun c!736247 () Bool)

(declare-fun imbalanced!99 (MutLongMap!4795) Bool)

(assert (=> b!4327152 (= c!736247 (imbalanced!99 thiss!47260))))

(declare-fun mapNonEmpty!21352 () Bool)

(declare-fun tp!1327873 () Bool)

(assert (=> mapNonEmpty!21352 (= mapRes!21352 (and tp!1327873 tp_is_empty!24259))))

(declare-fun mapRest!21352 () (Array (_ BitVec 32) V!9936))

(declare-fun mapValue!21352 () V!9936)

(declare-fun mapKey!21352 () (_ BitVec 32))

(assert (=> mapNonEmpty!21352 (= (arr!7775 (_values!5096 (v!42954 (underlying!9810 thiss!47260)))) (store mapRest!21352 mapKey!21352 mapValue!21352))))

(declare-fun b!4327153 () Bool)

(assert (=> b!4327153 (= e!2692522 e!2692526)))

(assert (= (and start!416732 res!1773231) b!4327149))

(assert (= (and b!4327149 res!1773232) b!4327152))

(assert (= (and b!4327152 c!736247) b!4327148))

(assert (= (and b!4327152 (not c!736247)) b!4327150))

(assert (= (and b!4327147 condMapEmpty!21352) mapIsEmpty!21352))

(assert (= (and b!4327147 (not condMapEmpty!21352)) mapNonEmpty!21352))

(assert (= b!4327151 b!4327147))

(assert (= b!4327146 b!4327151))

(assert (= b!4327153 b!4327146))

(assert (= (and start!416732 ((_ is LongMap!4795) thiss!47260)) b!4327153))

(declare-fun m!4922117 () Bool)

(assert (=> b!4327148 m!4922117))

(declare-fun m!4922119 () Bool)

(assert (=> mapNonEmpty!21352 m!4922119))

(declare-fun m!4922121 () Bool)

(assert (=> b!4327152 m!4922121))

(declare-fun m!4922123 () Bool)

(assert (=> b!4327149 m!4922123))

(declare-fun m!4922125 () Bool)

(assert (=> b!4327151 m!4922125))

(declare-fun m!4922127 () Bool)

(assert (=> b!4327151 m!4922127))

(check-sat (not mapNonEmpty!21352) (not b!4327148) (not b!4327149) tp_is_empty!24259 (not b!4327151) b_and!340711 (not b!4327152) (not b_next!129825))
(check-sat b_and!340711 (not b_next!129825))
