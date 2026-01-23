; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1994 () Bool)

(assert start!1994)

(declare-fun b!36108 () Bool)

(declare-fun b_free!541 () Bool)

(declare-fun b_next!541 () Bool)

(assert (=> b!36108 (= b_free!541 (not b_next!541))))

(declare-fun tp!24970 () Bool)

(declare-fun b_and!575 () Bool)

(assert (=> b!36108 (= tp!24970 b_and!575)))

(declare-fun b!36115 () Bool)

(declare-fun b_free!543 () Bool)

(declare-fun b_next!543 () Bool)

(assert (=> b!36115 (= b_free!543 (not b_next!543))))

(declare-fun tp!24973 () Bool)

(declare-fun b_and!577 () Bool)

(assert (=> b!36115 (= tp!24973 b_and!577)))

(declare-fun b!36105 () Bool)

(declare-fun e!17682 () Bool)

(declare-fun tp!24975 () Bool)

(declare-fun tp!24967 () Bool)

(assert (=> b!36105 (= e!17682 (and tp!24975 tp!24967))))

(declare-fun b!36106 () Bool)

(declare-fun e!17684 () Bool)

(declare-fun e!17686 () Bool)

(declare-datatypes ((C!1376 0))(
  ( (C!1377 (val!207 Int)) )
))
(declare-datatypes ((Regex!171 0))(
  ( (ElementMatch!171 (c!15472 C!1376)) (Concat!290 (regOne!854 Regex!171) (regTwo!854 Regex!171)) (EmptyExpr!171) (Star!171 (reg!500 Regex!171)) (EmptyLang!171) (Union!171 (regOne!855 Regex!171) (regTwo!855 Regex!171)) )
))
(declare-datatypes ((tuple2!352 0))(
  ( (tuple2!353 (_1!242 Regex!171) (_2!242 C!1376)) )
))
(declare-datatypes ((tuple2!354 0))(
  ( (tuple2!355 (_1!243 tuple2!352) (_2!243 Regex!171)) )
))
(declare-datatypes ((List!402 0))(
  ( (Nil!400) (Cons!400 (h!5796 tuple2!354) (t!15238 List!402)) )
))
(declare-datatypes ((array!356 0))(
  ( (array!357 (arr!192 (Array (_ BitVec 32) List!402)) (size!448 (_ BitVec 32))) )
))
(declare-datatypes ((array!358 0))(
  ( (array!359 (arr!193 (Array (_ BitVec 32) (_ BitVec 64))) (size!449 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!214 0))(
  ( (LongMapFixedSize!215 (defaultEntry!445 Int) (mask!794 (_ BitVec 32)) (extraKeys!353 (_ BitVec 32)) (zeroValue!363 List!402) (minValue!363 List!402) (_size!346 (_ BitVec 32)) (_keys!398 array!358) (_values!385 array!356) (_vacant!167 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!417 0))(
  ( (Cell!418 (v!12182 LongMapFixedSize!214)) )
))
(declare-datatypes ((MutLongMap!107 0))(
  ( (LongMap!107 (underlying!409 Cell!417)) (MutLongMapExt!106 (__x!743 Int)) )
))
(declare-fun lt!2999 () MutLongMap!107)

(get-info :version)

(assert (=> b!36106 (= e!17684 (and e!17686 ((_ is LongMap!107) lt!2999)))))

(declare-datatypes ((Hashable!103 0))(
  ( (HashableExt!102 (__x!744 Int)) )
))
(declare-datatypes ((Cell!419 0))(
  ( (Cell!420 (v!12183 MutLongMap!107)) )
))
(declare-datatypes ((MutableMap!103 0))(
  ( (MutableMapExt!102 (__x!745 Int)) (HashMap!103 (underlying!410 Cell!419) (hashF!1971 Hashable!103) (_size!347 (_ BitVec 32)) (defaultValue!252 Int)) )
))
(declare-datatypes ((Cache!14 0))(
  ( (Cache!15 (cache!582 MutableMap!103)) )
))
(declare-fun cache!443 () Cache!14)

(assert (=> b!36106 (= lt!2999 (v!12183 (underlying!410 (cache!582 cache!443))))))

(declare-fun b!36107 () Bool)

(declare-fun tp!24966 () Bool)

(declare-fun tp!24969 () Bool)

(assert (=> b!36107 (= e!17682 (and tp!24966 tp!24969))))

(declare-fun e!17688 () Bool)

(declare-fun tp!24971 () Bool)

(declare-fun e!17687 () Bool)

(declare-fun tp!24972 () Bool)

(declare-fun array_inv!112 (array!358) Bool)

(declare-fun array_inv!113 (array!356) Bool)

(assert (=> b!36108 (= e!17687 (and tp!24970 tp!24971 tp!24972 (array_inv!112 (_keys!398 (v!12182 (underlying!409 (v!12183 (underlying!410 (cache!582 cache!443))))))) (array_inv!113 (_values!385 (v!12182 (underlying!409 (v!12183 (underlying!410 (cache!582 cache!443))))))) e!17688))))

(declare-fun b!36109 () Bool)

(declare-fun tp!24965 () Bool)

(assert (=> b!36109 (= e!17682 tp!24965)))

(declare-fun b!36110 () Bool)

(declare-fun e!17683 () Bool)

(assert (=> b!36110 (= e!17683 e!17687)))

(declare-fun mapIsEmpty!358 () Bool)

(declare-fun mapRes!358 () Bool)

(assert (=> mapIsEmpty!358 mapRes!358))

(declare-fun res!28131 () Bool)

(declare-fun e!17685 () Bool)

(assert (=> start!1994 (=> (not res!28131) (not e!17685))))

(declare-fun r!13380 () Regex!171)

(declare-fun validRegex!8 (Regex!171) Bool)

(assert (=> start!1994 (= res!28131 (validRegex!8 r!13380))))

(assert (=> start!1994 e!17685))

(assert (=> start!1994 e!17682))

(declare-fun e!17680 () Bool)

(declare-fun inv!702 (Cache!14) Bool)

(assert (=> start!1994 (and (inv!702 cache!443) e!17680)))

(declare-fun b!36111 () Bool)

(assert (=> b!36111 (= e!17686 e!17683)))

(declare-fun mapNonEmpty!358 () Bool)

(declare-fun tp!24976 () Bool)

(declare-fun tp!24968 () Bool)

(assert (=> mapNonEmpty!358 (= mapRes!358 (and tp!24976 tp!24968))))

(declare-fun mapValue!358 () List!402)

(declare-fun mapKey!358 () (_ BitVec 32))

(declare-fun mapRest!358 () (Array (_ BitVec 32) List!402))

(assert (=> mapNonEmpty!358 (= (arr!192 (_values!385 (v!12182 (underlying!409 (v!12183 (underlying!410 (cache!582 cache!443))))))) (store mapRest!358 mapKey!358 mapValue!358))))

(declare-fun b!36112 () Bool)

(declare-fun tp_is_empty!367 () Bool)

(assert (=> b!36112 (= e!17682 tp_is_empty!367)))

(declare-fun b!36113 () Bool)

(declare-fun e!17679 () Bool)

(assert (=> b!36113 (= e!17680 e!17679)))

(declare-fun b!36114 () Bool)

(declare-fun tp!24974 () Bool)

(assert (=> b!36114 (= e!17688 (and tp!24974 mapRes!358))))

(declare-fun condMapEmpty!358 () Bool)

(declare-fun mapDefault!358 () List!402)

(assert (=> b!36114 (= condMapEmpty!358 (= (arr!192 (_values!385 (v!12182 (underlying!409 (v!12183 (underlying!410 (cache!582 cache!443))))))) ((as const (Array (_ BitVec 32) List!402)) mapDefault!358)))))

(assert (=> b!36115 (= e!17679 (and e!17684 tp!24973))))

(declare-fun b!36116 () Bool)

(assert (=> b!36116 (= e!17685 false)))

(declare-fun lt!3000 () Bool)

(declare-fun valid!116 (Cache!14) Bool)

(assert (=> b!36116 (= lt!3000 (valid!116 cache!443))))

(assert (= (and start!1994 res!28131) b!36116))

(assert (= (and start!1994 ((_ is ElementMatch!171) r!13380)) b!36112))

(assert (= (and start!1994 ((_ is Concat!290) r!13380)) b!36105))

(assert (= (and start!1994 ((_ is Star!171) r!13380)) b!36109))

(assert (= (and start!1994 ((_ is Union!171) r!13380)) b!36107))

(assert (= (and b!36114 condMapEmpty!358) mapIsEmpty!358))

(assert (= (and b!36114 (not condMapEmpty!358)) mapNonEmpty!358))

(assert (= b!36108 b!36114))

(assert (= b!36110 b!36108))

(assert (= b!36111 b!36110))

(assert (= (and b!36106 ((_ is LongMap!107) (v!12183 (underlying!410 (cache!582 cache!443))))) b!36111))

(assert (= b!36115 b!36106))

(assert (= (and b!36113 ((_ is HashMap!103) (cache!582 cache!443))) b!36115))

(assert (= start!1994 b!36113))

(declare-fun m!11734 () Bool)

(assert (=> b!36108 m!11734))

(declare-fun m!11736 () Bool)

(assert (=> b!36108 m!11736))

(declare-fun m!11738 () Bool)

(assert (=> start!1994 m!11738))

(declare-fun m!11740 () Bool)

(assert (=> start!1994 m!11740))

(declare-fun m!11742 () Bool)

(assert (=> mapNonEmpty!358 m!11742))

(declare-fun m!11744 () Bool)

(assert (=> b!36116 m!11744))

(check-sat b_and!577 tp_is_empty!367 (not b!36105) (not b_next!543) (not b!36116) (not b!36109) (not b!36114) (not start!1994) b_and!575 (not mapNonEmpty!358) (not b_next!541) (not b!36108) (not b!36107))
(check-sat b_and!575 b_and!577 (not b_next!541) (not b_next!543))
