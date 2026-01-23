; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217976 () Bool)

(assert start!217976)

(declare-fun b!2236717 () Bool)

(declare-fun b_free!64873 () Bool)

(declare-fun b_next!65577 () Bool)

(assert (=> b!2236717 (= b_free!64873 (not b_next!65577))))

(declare-fun tp!703293 () Bool)

(declare-fun b_and!174865 () Bool)

(assert (=> b!2236717 (= tp!703293 b_and!174865)))

(declare-fun b!2236722 () Bool)

(declare-fun b_free!64875 () Bool)

(declare-fun b_next!65579 () Bool)

(assert (=> b!2236722 (= b_free!64875 (not b_next!65579))))

(declare-fun tp!703282 () Bool)

(declare-fun b_and!174867 () Bool)

(assert (=> b!2236722 (= tp!703282 b_and!174867)))

(declare-fun mapIsEmpty!14582 () Bool)

(declare-fun mapRes!14582 () Bool)

(assert (=> mapIsEmpty!14582 mapRes!14582))

(declare-fun res!956898 () Bool)

(declare-fun e!1429626 () Bool)

(assert (=> start!217976 (=> (not res!956898) (not e!1429626))))

(declare-datatypes ((C!13076 0))(
  ( (C!13077 (val!7586 Int)) )
))
(declare-datatypes ((Regex!6465 0))(
  ( (ElementMatch!6465 (c!356433 C!13076)) (Concat!10803 (regOne!13442 Regex!6465) (regTwo!13442 Regex!6465)) (EmptyExpr!6465) (Star!6465 (reg!6794 Regex!6465)) (EmptyLang!6465) (Union!6465 (regOne!13443 Regex!6465) (regTwo!13443 Regex!6465)) )
))
(declare-datatypes ((List!26411 0))(
  ( (Nil!26317) (Cons!26317 (h!31718 Regex!6465) (t!199833 List!26411)) )
))
(declare-datatypes ((Context!4026 0))(
  ( (Context!4027 (exprs!2513 List!26411)) )
))
(declare-datatypes ((tuple3!4002 0))(
  ( (tuple3!4003 (_1!15328 Regex!6465) (_2!15328 Context!4026) (_3!2471 C!13076)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25714 0))(
  ( (tuple2!25715 (_1!15329 tuple3!4002) (_2!15329 (InoxSet Context!4026))) )
))
(declare-datatypes ((array!10794 0))(
  ( (array!10795 (arr!4793 (Array (_ BitVec 32) (_ BitVec 64))) (size!20574 (_ BitVec 32))) )
))
(declare-datatypes ((List!26412 0))(
  ( (Nil!26318) (Cons!26318 (h!31719 tuple2!25714) (t!199834 List!26412)) )
))
(declare-datatypes ((array!10796 0))(
  ( (array!10797 (arr!4794 (Array (_ BitVec 32) List!26412)) (size!20575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6206 0))(
  ( (LongMapFixedSize!6207 (defaultEntry!3468 Int) (mask!7689 (_ BitVec 32)) (extraKeys!3351 (_ BitVec 32)) (zeroValue!3361 List!26412) (minValue!3361 List!26412) (_size!6253 (_ BitVec 32)) (_keys!3400 array!10794) (_values!3383 array!10796) (_vacant!3164 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12229 0))(
  ( (Cell!12230 (v!29925 LongMapFixedSize!6206)) )
))
(declare-datatypes ((MutLongMap!3103 0))(
  ( (LongMap!3103 (underlying!6407 Cell!12229)) (MutLongMapExt!3102 (__x!17535 Int)) )
))
(declare-datatypes ((Cell!12231 0))(
  ( (Cell!12232 (v!29926 MutLongMap!3103)) )
))
(declare-datatypes ((Hashable!3013 0))(
  ( (HashableExt!3012 (__x!17536 Int)) )
))
(declare-datatypes ((MutableMap!3013 0))(
  ( (MutableMapExt!3012 (__x!17537 Int)) (HashMap!3013 (underlying!6408 Cell!12231) (hashF!4936 Hashable!3013) (_size!6254 (_ BitVec 32)) (defaultValue!3175 Int)) )
))
(declare-datatypes ((CacheDown!2072 0))(
  ( (CacheDown!2073 (cache!3394 MutableMap!3013)) )
))
(declare-fun thiss!28797 () CacheDown!2072)

(declare-fun validCacheMapDown!314 (MutableMap!3013) Bool)

(assert (=> start!217976 (= res!956898 (validCacheMapDown!314 (cache!3394 thiss!28797)))))

(assert (=> start!217976 e!1429626))

(declare-fun e!1429630 () Bool)

(declare-fun inv!35745 (CacheDown!2072) Bool)

(assert (=> start!217976 (and (inv!35745 thiss!28797) e!1429630)))

(declare-fun e!1429625 () Bool)

(assert (=> start!217976 e!1429625))

(declare-fun tp_is_empty!10155 () Bool)

(assert (=> start!217976 tp_is_empty!10155))

(declare-fun ctx!52 () Context!4026)

(declare-fun e!1429624 () Bool)

(declare-fun inv!35746 (Context!4026) Bool)

(assert (=> start!217976 (and (inv!35746 ctx!52) e!1429624)))

(declare-fun b!2236715 () Bool)

(declare-fun tp!703286 () Bool)

(declare-fun tp!703291 () Bool)

(assert (=> b!2236715 (= e!1429625 (and tp!703286 tp!703291))))

(declare-fun b!2236716 () Bool)

(declare-fun e!1429633 () Bool)

(assert (=> b!2236716 (= e!1429633 false)))

(declare-fun lt!832034 () (InoxSet Context!4026))

(declare-fun lt!832032 () tuple3!4002)

(declare-fun apply!6478 (MutableMap!3013 tuple3!4002) (InoxSet Context!4026))

(assert (=> b!2236716 (= lt!832034 (apply!6478 (cache!3394 thiss!28797) lt!832032))))

(declare-datatypes ((Unit!39282 0))(
  ( (Unit!39283) )
))
(declare-fun lt!832035 () Unit!39282)

(declare-fun a!997 () C!13076)

(declare-fun r!4766 () Regex!6465)

(declare-fun lemmaIfInCacheThenValid!33 (CacheDown!2072 Regex!6465 Context!4026 C!13076) Unit!39282)

(assert (=> b!2236716 (= lt!832035 (lemmaIfInCacheThenValid!33 thiss!28797 r!4766 ctx!52 a!997))))

(declare-fun e!1429628 () Bool)

(declare-fun e!1429627 () Bool)

(assert (=> b!2236717 (= e!1429628 (and e!1429627 tp!703293))))

(declare-fun b!2236718 () Bool)

(assert (=> b!2236718 (= e!1429630 e!1429628)))

(declare-fun b!2236719 () Bool)

(declare-fun e!1429629 () Bool)

(declare-fun tp!703290 () Bool)

(assert (=> b!2236719 (= e!1429629 (and tp!703290 mapRes!14582))))

(declare-fun condMapEmpty!14582 () Bool)

(declare-fun mapDefault!14582 () List!26412)

(assert (=> b!2236719 (= condMapEmpty!14582 (= (arr!4794 (_values!3383 (v!29925 (underlying!6407 (v!29926 (underlying!6408 (cache!3394 thiss!28797))))))) ((as const (Array (_ BitVec 32) List!26412)) mapDefault!14582)))))

(declare-fun b!2236720 () Bool)

(declare-fun e!1429631 () Bool)

(declare-fun e!1429623 () Bool)

(assert (=> b!2236720 (= e!1429631 e!1429623)))

(declare-fun b!2236721 () Bool)

(assert (=> b!2236721 (= e!1429625 tp_is_empty!10155)))

(declare-fun tp!703283 () Bool)

(declare-fun tp!703289 () Bool)

(declare-fun array_inv!3441 (array!10794) Bool)

(declare-fun array_inv!3442 (array!10796) Bool)

(assert (=> b!2236722 (= e!1429623 (and tp!703282 tp!703289 tp!703283 (array_inv!3441 (_keys!3400 (v!29925 (underlying!6407 (v!29926 (underlying!6408 (cache!3394 thiss!28797))))))) (array_inv!3442 (_values!3383 (v!29925 (underlying!6407 (v!29926 (underlying!6408 (cache!3394 thiss!28797))))))) e!1429629))))

(declare-fun b!2236723 () Bool)

(declare-fun e!1429632 () Bool)

(assert (=> b!2236723 (= e!1429632 e!1429631)))

(declare-fun b!2236724 () Bool)

(assert (=> b!2236724 (= e!1429626 e!1429633)))

(declare-fun res!956899 () Bool)

(assert (=> b!2236724 (=> (not res!956899) (not e!1429633))))

(declare-fun contains!4399 (MutableMap!3013 tuple3!4002) Bool)

(assert (=> b!2236724 (= res!956899 (contains!4399 (cache!3394 thiss!28797) lt!832032))))

(assert (=> b!2236724 (= lt!832032 (tuple3!4003 r!4766 ctx!52 a!997))))

(declare-fun b!2236725 () Bool)

(declare-fun lt!832033 () MutLongMap!3103)

(get-info :version)

(assert (=> b!2236725 (= e!1429627 (and e!1429632 ((_ is LongMap!3103) lt!832033)))))

(assert (=> b!2236725 (= lt!832033 (v!29926 (underlying!6408 (cache!3394 thiss!28797))))))

(declare-fun b!2236726 () Bool)

(declare-fun tp!703292 () Bool)

(assert (=> b!2236726 (= e!1429624 tp!703292)))

(declare-fun b!2236727 () Bool)

(declare-fun tp!703285 () Bool)

(declare-fun tp!703284 () Bool)

(assert (=> b!2236727 (= e!1429625 (and tp!703285 tp!703284))))

(declare-fun mapNonEmpty!14582 () Bool)

(declare-fun tp!703288 () Bool)

(declare-fun tp!703294 () Bool)

(assert (=> mapNonEmpty!14582 (= mapRes!14582 (and tp!703288 tp!703294))))

(declare-fun mapKey!14582 () (_ BitVec 32))

(declare-fun mapValue!14582 () List!26412)

(declare-fun mapRest!14582 () (Array (_ BitVec 32) List!26412))

(assert (=> mapNonEmpty!14582 (= (arr!4794 (_values!3383 (v!29925 (underlying!6407 (v!29926 (underlying!6408 (cache!3394 thiss!28797))))))) (store mapRest!14582 mapKey!14582 mapValue!14582))))

(declare-fun b!2236728 () Bool)

(declare-fun tp!703287 () Bool)

(assert (=> b!2236728 (= e!1429625 tp!703287)))

(declare-fun b!2236729 () Bool)

(declare-fun res!956897 () Bool)

(assert (=> b!2236729 (=> (not res!956897) (not e!1429626))))

(declare-fun validRegex!2427 (Regex!6465) Bool)

(assert (=> b!2236729 (= res!956897 (validRegex!2427 r!4766))))

(assert (= (and start!217976 res!956898) b!2236729))

(assert (= (and b!2236729 res!956897) b!2236724))

(assert (= (and b!2236724 res!956899) b!2236716))

(assert (= (and b!2236719 condMapEmpty!14582) mapIsEmpty!14582))

(assert (= (and b!2236719 (not condMapEmpty!14582)) mapNonEmpty!14582))

(assert (= b!2236722 b!2236719))

(assert (= b!2236720 b!2236722))

(assert (= b!2236723 b!2236720))

(assert (= (and b!2236725 ((_ is LongMap!3103) (v!29926 (underlying!6408 (cache!3394 thiss!28797))))) b!2236723))

(assert (= b!2236717 b!2236725))

(assert (= (and b!2236718 ((_ is HashMap!3013) (cache!3394 thiss!28797))) b!2236717))

(assert (= start!217976 b!2236718))

(assert (= (and start!217976 ((_ is ElementMatch!6465) r!4766)) b!2236721))

(assert (= (and start!217976 ((_ is Concat!10803) r!4766)) b!2236727))

(assert (= (and start!217976 ((_ is Star!6465) r!4766)) b!2236728))

(assert (= (and start!217976 ((_ is Union!6465) r!4766)) b!2236715))

(assert (= start!217976 b!2236726))

(declare-fun m!2670490 () Bool)

(assert (=> b!2236716 m!2670490))

(declare-fun m!2670492 () Bool)

(assert (=> b!2236716 m!2670492))

(declare-fun m!2670494 () Bool)

(assert (=> b!2236722 m!2670494))

(declare-fun m!2670496 () Bool)

(assert (=> b!2236722 m!2670496))

(declare-fun m!2670498 () Bool)

(assert (=> start!217976 m!2670498))

(declare-fun m!2670500 () Bool)

(assert (=> start!217976 m!2670500))

(declare-fun m!2670502 () Bool)

(assert (=> start!217976 m!2670502))

(declare-fun m!2670504 () Bool)

(assert (=> b!2236729 m!2670504))

(declare-fun m!2670506 () Bool)

(assert (=> b!2236724 m!2670506))

(declare-fun m!2670508 () Bool)

(assert (=> mapNonEmpty!14582 m!2670508))

(check-sat (not b!2236715) b_and!174867 (not b!2236728) (not b!2236727) (not b!2236726) tp_is_empty!10155 (not b!2236716) (not b!2236724) (not b!2236729) (not mapNonEmpty!14582) (not b!2236722) (not start!217976) (not b!2236719) (not b_next!65579) b_and!174865 (not b_next!65577))
(check-sat b_and!174867 b_and!174865 (not b_next!65579) (not b_next!65577))
