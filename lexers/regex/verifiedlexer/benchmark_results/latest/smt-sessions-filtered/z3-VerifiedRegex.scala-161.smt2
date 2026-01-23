; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1974 () Bool)

(assert start!1974)

(declare-fun b!35860 () Bool)

(declare-fun b_free!525 () Bool)

(declare-fun b_next!525 () Bool)

(assert (=> b!35860 (= b_free!525 (not b_next!525))))

(declare-fun tp!24741 () Bool)

(declare-fun b_and!559 () Bool)

(assert (=> b!35860 (= tp!24741 b_and!559)))

(declare-fun b!35872 () Bool)

(declare-fun b_free!527 () Bool)

(declare-fun b_next!527 () Bool)

(assert (=> b!35872 (= b_free!527 (not b_next!527))))

(declare-fun tp!24747 () Bool)

(declare-fun b_and!561 () Bool)

(assert (=> b!35872 (= tp!24747 b_and!561)))

(declare-fun e!17513 () Bool)

(declare-fun e!17509 () Bool)

(assert (=> b!35860 (= e!17513 (and e!17509 tp!24741))))

(declare-fun b!35861 () Bool)

(declare-fun e!17507 () Bool)

(declare-datatypes ((C!1368 0))(
  ( (C!1369 (val!203 Int)) )
))
(declare-datatypes ((Regex!167 0))(
  ( (ElementMatch!167 (c!15462 C!1368)) (Concat!286 (regOne!846 Regex!167) (regTwo!846 Regex!167)) (EmptyExpr!167) (Star!167 (reg!496 Regex!167)) (EmptyLang!167) (Union!167 (regOne!847 Regex!167) (regTwo!847 Regex!167)) )
))
(declare-datatypes ((tuple2!336 0))(
  ( (tuple2!337 (_1!234 Regex!167) (_2!234 C!1368)) )
))
(declare-datatypes ((tuple2!338 0))(
  ( (tuple2!339 (_1!235 tuple2!336) (_2!235 Regex!167)) )
))
(declare-datatypes ((List!395 0))(
  ( (Nil!393) (Cons!393 (h!5789 tuple2!338) (t!15231 List!395)) )
))
(declare-datatypes ((array!338 0))(
  ( (array!339 (arr!184 (Array (_ BitVec 32) List!395)) (size!440 (_ BitVec 32))) )
))
(declare-datatypes ((array!340 0))(
  ( (array!341 (arr!185 (Array (_ BitVec 32) (_ BitVec 64))) (size!441 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!206 0))(
  ( (LongMapFixedSize!207 (defaultEntry!441 Int) (mask!788 (_ BitVec 32)) (extraKeys!349 (_ BitVec 32)) (zeroValue!359 List!395) (minValue!359 List!395) (_size!338 (_ BitVec 32)) (_keys!394 array!340) (_values!381 array!338) (_vacant!163 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!401 0))(
  ( (Cell!402 (v!12174 LongMapFixedSize!206)) )
))
(declare-datatypes ((MutLongMap!103 0))(
  ( (LongMap!103 (underlying!401 Cell!401)) (MutLongMapExt!102 (__x!731 Int)) )
))
(declare-fun lt!2982 () MutLongMap!103)

(get-info :version)

(assert (=> b!35861 (= e!17509 (and e!17507 ((_ is LongMap!103) lt!2982)))))

(declare-datatypes ((Hashable!99 0))(
  ( (HashableExt!98 (__x!732 Int)) )
))
(declare-datatypes ((Cell!403 0))(
  ( (Cell!404 (v!12175 MutLongMap!103)) )
))
(declare-datatypes ((MutableMap!99 0))(
  ( (MutableMapExt!98 (__x!733 Int)) (HashMap!99 (underlying!402 Cell!403) (hashF!1967 Hashable!99) (_size!339 (_ BitVec 32)) (defaultValue!248 Int)) )
))
(declare-datatypes ((Cache!6 0))(
  ( (Cache!7 (cache!578 MutableMap!99)) )
))
(declare-fun cache!443 () Cache!6)

(assert (=> b!35861 (= lt!2982 (v!12175 (underlying!402 (cache!578 cache!443))))))

(declare-fun b!35862 () Bool)

(declare-fun e!17515 () Bool)

(declare-fun tp_is_empty!359 () Bool)

(assert (=> b!35862 (= e!17515 tp_is_empty!359)))

(declare-fun b!35863 () Bool)

(declare-fun tp!24743 () Bool)

(assert (=> b!35863 (= e!17515 tp!24743)))

(declare-fun b!35864 () Bool)

(declare-fun e!17511 () Bool)

(assert (=> b!35864 (= e!17511 e!17513)))

(declare-fun b!35865 () Bool)

(declare-fun res!28088 () Bool)

(declare-fun e!17508 () Bool)

(assert (=> b!35865 (=> (not res!28088) (not e!17508))))

(declare-fun valid!114 (Cache!6) Bool)

(assert (=> b!35865 (= res!28088 (valid!114 cache!443))))

(declare-fun b!35866 () Bool)

(declare-fun e!17516 () Bool)

(declare-fun tp!24740 () Bool)

(assert (=> b!35866 (= e!17516 (and tp_is_empty!359 tp!24740))))

(declare-fun res!28089 () Bool)

(assert (=> start!1974 (=> (not res!28089) (not e!17508))))

(declare-fun r!13380 () Regex!167)

(declare-fun validRegex!6 (Regex!167) Bool)

(assert (=> start!1974 (= res!28089 (validRegex!6 r!13380))))

(assert (=> start!1974 e!17508))

(assert (=> start!1974 e!17515))

(declare-fun inv!694 (Cache!6) Bool)

(assert (=> start!1974 (and (inv!694 cache!443) e!17511)))

(assert (=> start!1974 e!17516))

(declare-fun b!35867 () Bool)

(declare-fun e!17514 () Bool)

(assert (=> b!35867 (= e!17507 e!17514)))

(declare-fun b!35868 () Bool)

(declare-fun e!17512 () Bool)

(declare-fun tp!24746 () Bool)

(declare-fun mapRes!343 () Bool)

(assert (=> b!35868 (= e!17512 (and tp!24746 mapRes!343))))

(declare-fun condMapEmpty!343 () Bool)

(declare-fun mapDefault!343 () List!395)

(assert (=> b!35868 (= condMapEmpty!343 (= (arr!184 (_values!381 (v!12174 (underlying!401 (v!12175 (underlying!402 (cache!578 cache!443))))))) ((as const (Array (_ BitVec 32) List!395)) mapDefault!343)))))

(declare-fun mapNonEmpty!343 () Bool)

(declare-fun tp!24737 () Bool)

(declare-fun tp!24742 () Bool)

(assert (=> mapNonEmpty!343 (= mapRes!343 (and tp!24737 tp!24742))))

(declare-fun mapKey!343 () (_ BitVec 32))

(declare-fun mapValue!343 () List!395)

(declare-fun mapRest!343 () (Array (_ BitVec 32) List!395))

(assert (=> mapNonEmpty!343 (= (arr!184 (_values!381 (v!12174 (underlying!401 (v!12175 (underlying!402 (cache!578 cache!443))))))) (store mapRest!343 mapKey!343 mapValue!343))))

(declare-fun b!35869 () Bool)

(assert (=> b!35869 (= e!17508 false)))

(declare-fun b!35870 () Bool)

(declare-fun e!17506 () Bool)

(assert (=> b!35870 (= e!17514 e!17506)))

(declare-fun b!35871 () Bool)

(declare-fun tp!24749 () Bool)

(declare-fun tp!24745 () Bool)

(assert (=> b!35871 (= e!17515 (and tp!24749 tp!24745))))

(declare-fun tp!24738 () Bool)

(declare-fun tp!24739 () Bool)

(declare-fun array_inv!106 (array!340) Bool)

(declare-fun array_inv!107 (array!338) Bool)

(assert (=> b!35872 (= e!17506 (and tp!24747 tp!24739 tp!24738 (array_inv!106 (_keys!394 (v!12174 (underlying!401 (v!12175 (underlying!402 (cache!578 cache!443))))))) (array_inv!107 (_values!381 (v!12174 (underlying!401 (v!12175 (underlying!402 (cache!578 cache!443))))))) e!17512))))

(declare-fun mapIsEmpty!343 () Bool)

(assert (=> mapIsEmpty!343 mapRes!343))

(declare-fun b!35873 () Bool)

(declare-fun tp!24748 () Bool)

(declare-fun tp!24744 () Bool)

(assert (=> b!35873 (= e!17515 (and tp!24748 tp!24744))))

(assert (= (and start!1974 res!28089) b!35865))

(assert (= (and b!35865 res!28088) b!35869))

(assert (= (and start!1974 ((_ is ElementMatch!167) r!13380)) b!35862))

(assert (= (and start!1974 ((_ is Concat!286) r!13380)) b!35871))

(assert (= (and start!1974 ((_ is Star!167) r!13380)) b!35863))

(assert (= (and start!1974 ((_ is Union!167) r!13380)) b!35873))

(assert (= (and b!35868 condMapEmpty!343) mapIsEmpty!343))

(assert (= (and b!35868 (not condMapEmpty!343)) mapNonEmpty!343))

(assert (= b!35872 b!35868))

(assert (= b!35870 b!35872))

(assert (= b!35867 b!35870))

(assert (= (and b!35861 ((_ is LongMap!103) (v!12175 (underlying!402 (cache!578 cache!443))))) b!35867))

(assert (= b!35860 b!35861))

(assert (= (and b!35864 ((_ is HashMap!99) (cache!578 cache!443))) b!35860))

(assert (= start!1974 b!35864))

(declare-datatypes ((List!396 0))(
  ( (Nil!394) (Cons!394 (h!5790 C!1368) (t!15232 List!396)) )
))
(declare-fun input!6011 () List!396)

(assert (= (and start!1974 ((_ is Cons!394) input!6011)) b!35866))

(declare-fun m!11672 () Bool)

(assert (=> b!35865 m!11672))

(declare-fun m!11674 () Bool)

(assert (=> start!1974 m!11674))

(declare-fun m!11676 () Bool)

(assert (=> start!1974 m!11676))

(declare-fun m!11678 () Bool)

(assert (=> mapNonEmpty!343 m!11678))

(declare-fun m!11680 () Bool)

(assert (=> b!35872 m!11680))

(declare-fun m!11682 () Bool)

(assert (=> b!35872 m!11682))

(check-sat (not b!35863) (not b!35868) (not start!1974) (not b_next!525) (not b!35865) (not b!35866) b_and!559 (not mapNonEmpty!343) tp_is_empty!359 (not b_next!527) b_and!561 (not b!35871) (not b!35872) (not b!35873))
(check-sat b_and!561 b_and!559 (not b_next!527) (not b_next!525))
