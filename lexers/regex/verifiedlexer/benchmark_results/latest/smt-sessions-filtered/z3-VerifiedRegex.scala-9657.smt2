; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506930 () Bool)

(assert start!506930)

(declare-fun b!4853986 () Bool)

(declare-fun b_free!130325 () Bool)

(declare-fun b_next!131115 () Bool)

(assert (=> b!4853986 (= b_free!130325 (not b_next!131115))))

(declare-fun tp!1365302 () Bool)

(declare-fun b_and!342137 () Bool)

(assert (=> b!4853986 (= tp!1365302 b_and!342137)))

(declare-fun b!4853981 () Bool)

(declare-fun e!3034534 () Bool)

(assert (=> b!4853981 (= e!3034534 false)))

(declare-fun lt!1990828 () Bool)

(declare-datatypes ((array!18778 0))(
  ( (array!18779 (arr!8379 (Array (_ BitVec 32) (_ BitVec 64))) (size!36653 (_ BitVec 32))) )
))
(declare-datatypes ((V!17820 0))(
  ( (V!17821 (val!22362 Int)) )
))
(declare-datatypes ((array!18780 0))(
  ( (array!18781 (arr!8380 (Array (_ BitVec 32) V!17820)) (size!36654 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10194 0))(
  ( (LongMapFixedSize!10195 (defaultEntry!5519 Int) (mask!15389 (_ BitVec 32)) (extraKeys!5377 (_ BitVec 32)) (zeroValue!5390 V!17820) (minValue!5390 V!17820) (_size!10216 (_ BitVec 32)) (_keys!5446 array!18778) (_values!5415 array!18780) (_vacant!5162 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20147 0))(
  ( (Cell!20148 (v!49575 LongMapFixedSize!10194)) )
))
(declare-datatypes ((MutLongMap!5097 0))(
  ( (LongMap!5097 (underlying!10398 Cell!20147)) (MutLongMapExt!5096 (__x!33829 Int)) )
))
(declare-fun thiss!47245 () MutLongMap!5097)

(declare-fun key!7003 () (_ BitVec 64))

(declare-fun contains!19344 (MutLongMap!5097 (_ BitVec 64)) Bool)

(assert (=> b!4853981 (= lt!1990828 (contains!19344 thiss!47245 key!7003))))

(declare-fun lt!1990827 () V!17820)

(declare-fun apply!13492 (LongMapFixedSize!10194 (_ BitVec 64)) V!17820)

(assert (=> b!4853981 (= lt!1990827 (apply!13492 (v!49575 (underlying!10398 thiss!47245)) key!7003))))

(declare-fun b!4853982 () Bool)

(declare-fun e!3034532 () Bool)

(declare-fun e!3034535 () Bool)

(assert (=> b!4853982 (= e!3034532 e!3034535)))

(declare-fun b!4853983 () Bool)

(declare-fun res!2072411 () Bool)

(assert (=> b!4853983 (=> (not res!2072411) (not e!3034534))))

(declare-fun valid!4124 (MutLongMap!5097) Bool)

(assert (=> b!4853983 (= res!2072411 (valid!4124 thiss!47245))))

(declare-fun mapIsEmpty!22487 () Bool)

(declare-fun mapRes!22487 () Bool)

(assert (=> mapIsEmpty!22487 mapRes!22487))

(declare-fun b!4853985 () Bool)

(declare-fun e!3034531 () Bool)

(assert (=> b!4853985 (= e!3034531 e!3034532)))

(declare-fun e!3034530 () Bool)

(declare-fun tp_is_empty!35459 () Bool)

(declare-fun array_inv!6055 (array!18778) Bool)

(declare-fun array_inv!6056 (array!18780) Bool)

(assert (=> b!4853986 (= e!3034535 (and tp!1365302 tp_is_empty!35459 (array_inv!6055 (_keys!5446 (v!49575 (underlying!10398 thiss!47245)))) (array_inv!6056 (_values!5415 (v!49575 (underlying!10398 thiss!47245)))) e!3034530))))

(declare-fun mapNonEmpty!22487 () Bool)

(declare-fun tp!1365301 () Bool)

(assert (=> mapNonEmpty!22487 (= mapRes!22487 (and tp!1365301 tp_is_empty!35459))))

(declare-fun mapRest!22487 () (Array (_ BitVec 32) V!17820))

(declare-fun mapKey!22487 () (_ BitVec 32))

(declare-fun mapValue!22487 () V!17820)

(assert (=> mapNonEmpty!22487 (= (arr!8380 (_values!5415 (v!49575 (underlying!10398 thiss!47245)))) (store mapRest!22487 mapKey!22487 mapValue!22487))))

(declare-fun b!4853984 () Bool)

(assert (=> b!4853984 (= e!3034530 (and tp_is_empty!35459 mapRes!22487))))

(declare-fun condMapEmpty!22487 () Bool)

(declare-fun mapDefault!22487 () V!17820)

(assert (=> b!4853984 (= condMapEmpty!22487 (= (arr!8380 (_values!5415 (v!49575 (underlying!10398 thiss!47245)))) ((as const (Array (_ BitVec 32) V!17820)) mapDefault!22487)))))

(declare-fun res!2072412 () Bool)

(assert (=> start!506930 (=> (not res!2072412) (not e!3034534))))

(get-info :version)

(assert (=> start!506930 (= res!2072412 ((_ is LongMap!5097) thiss!47245))))

(assert (=> start!506930 e!3034534))

(assert (=> start!506930 e!3034531))

(assert (=> start!506930 true))

(assert (= (and start!506930 res!2072412) b!4853983))

(assert (= (and b!4853983 res!2072411) b!4853981))

(assert (= (and b!4853984 condMapEmpty!22487) mapIsEmpty!22487))

(assert (= (and b!4853984 (not condMapEmpty!22487)) mapNonEmpty!22487))

(assert (= b!4853986 b!4853984))

(assert (= b!4853982 b!4853986))

(assert (= b!4853985 b!4853982))

(assert (= (and start!506930 ((_ is LongMap!5097) thiss!47245)) b!4853985))

(declare-fun m!5852020 () Bool)

(assert (=> b!4853981 m!5852020))

(declare-fun m!5852022 () Bool)

(assert (=> b!4853981 m!5852022))

(declare-fun m!5852024 () Bool)

(assert (=> b!4853983 m!5852024))

(declare-fun m!5852026 () Bool)

(assert (=> b!4853986 m!5852026))

(declare-fun m!5852028 () Bool)

(assert (=> b!4853986 m!5852028))

(declare-fun m!5852030 () Bool)

(assert (=> mapNonEmpty!22487 m!5852030))

(check-sat (not b!4853981) (not mapNonEmpty!22487) b_and!342137 (not b!4853986) tp_is_empty!35459 (not b_next!131115) (not b!4853983))
(check-sat b_and!342137 (not b_next!131115))
