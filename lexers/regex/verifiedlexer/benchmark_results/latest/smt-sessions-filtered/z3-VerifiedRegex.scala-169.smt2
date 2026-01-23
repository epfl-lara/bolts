; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2098 () Bool)

(assert start!2098)

(declare-fun b!37668 () Bool)

(declare-fun b_free!589 () Bool)

(declare-fun b_next!589 () Bool)

(assert (=> b!37668 (= b_free!589 (not b_next!589))))

(declare-fun tp!26166 () Bool)

(declare-fun b_and!623 () Bool)

(assert (=> b!37668 (= tp!26166 b_and!623)))

(declare-fun b!37667 () Bool)

(declare-fun b_free!591 () Bool)

(declare-fun b_next!591 () Bool)

(assert (=> b!37667 (= b_free!591 (not b_next!591))))

(declare-fun tp!26171 () Bool)

(declare-fun b_and!625 () Bool)

(assert (=> b!37667 (= tp!26171 b_and!625)))

(declare-fun b!37654 () Bool)

(declare-fun e!18592 () Bool)

(declare-fun e!18591 () Bool)

(assert (=> b!37654 (= e!18592 e!18591)))

(declare-fun b!37655 () Bool)

(declare-fun e!18584 () Bool)

(declare-fun tp!26167 () Bool)

(declare-fun tp!26163 () Bool)

(assert (=> b!37655 (= e!18584 (and tp!26167 tp!26163))))

(declare-fun mapNonEmpty!408 () Bool)

(declare-fun mapRes!408 () Bool)

(declare-fun tp!26162 () Bool)

(declare-fun tp!26172 () Bool)

(assert (=> mapNonEmpty!408 (= mapRes!408 (and tp!26162 tp!26172))))

(declare-datatypes ((C!1400 0))(
  ( (C!1401 (val!219 Int)) )
))
(declare-datatypes ((Regex!183 0))(
  ( (ElementMatch!183 (c!15649 C!1400)) (Concat!302 (regOne!878 Regex!183) (regTwo!878 Regex!183)) (EmptyExpr!183) (Star!183 (reg!512 Regex!183)) (EmptyLang!183) (Union!183 (regOne!879 Regex!183) (regTwo!879 Regex!183)) )
))
(declare-datatypes ((tuple2!426 0))(
  ( (tuple2!427 (_1!279 Regex!183) (_2!279 C!1400)) )
))
(declare-datatypes ((tuple2!428 0))(
  ( (tuple2!429 (_1!280 tuple2!426) (_2!280 Regex!183)) )
))
(declare-datatypes ((List!424 0))(
  ( (Nil!422) (Cons!422 (h!5818 tuple2!428) (t!15260 List!424)) )
))
(declare-datatypes ((array!412 0))(
  ( (array!413 (arr!216 (Array (_ BitVec 32) List!424)) (size!474 (_ BitVec 32))) )
))
(declare-datatypes ((array!414 0))(
  ( (array!415 (arr!217 (Array (_ BitVec 32) (_ BitVec 64))) (size!475 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!238 0))(
  ( (LongMapFixedSize!239 (defaultEntry!457 Int) (mask!812 (_ BitVec 32)) (extraKeys!365 (_ BitVec 32)) (zeroValue!375 List!424) (minValue!375 List!424) (_size!370 (_ BitVec 32)) (_keys!410 array!414) (_values!397 array!412) (_vacant!179 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!115 0))(
  ( (HashableExt!114 (__x!779 Int)) )
))
(declare-datatypes ((Cell!465 0))(
  ( (Cell!466 (v!12209 LongMapFixedSize!238)) )
))
(declare-datatypes ((MutLongMap!119 0))(
  ( (LongMap!119 (underlying!433 Cell!465)) (MutLongMapExt!118 (__x!780 Int)) )
))
(declare-datatypes ((Cell!467 0))(
  ( (Cell!468 (v!12210 MutLongMap!119)) )
))
(declare-datatypes ((MutableMap!115 0))(
  ( (MutableMapExt!114 (__x!781 Int)) (HashMap!115 (underlying!434 Cell!467) (hashF!1983 Hashable!115) (_size!371 (_ BitVec 32)) (defaultValue!264 Int)) )
))
(declare-datatypes ((Cache!38 0))(
  ( (Cache!39 (cache!597 MutableMap!115)) )
))
(declare-fun cache!443 () Cache!38)

(declare-fun mapRest!408 () (Array (_ BitVec 32) List!424))

(declare-fun mapValue!408 () List!424)

(declare-fun mapKey!408 () (_ BitVec 32))

(assert (=> mapNonEmpty!408 (= (arr!216 (_values!397 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443))))))) (store mapRest!408 mapKey!408 mapValue!408))))

(declare-fun b!37656 () Bool)

(declare-fun tp_is_empty!391 () Bool)

(assert (=> b!37656 (= e!18584 tp_is_empty!391)))

(declare-fun b!37657 () Bool)

(declare-fun e!18589 () Bool)

(declare-fun tp!26170 () Bool)

(assert (=> b!37657 (= e!18589 (and tp_is_empty!391 tp!26170))))

(declare-fun b!37658 () Bool)

(declare-fun tp!26174 () Bool)

(declare-fun tp!26165 () Bool)

(assert (=> b!37658 (= e!18584 (and tp!26174 tp!26165))))

(declare-fun res!28391 () Bool)

(declare-fun e!18590 () Bool)

(assert (=> start!2098 (=> (not res!28391) (not e!18590))))

(declare-fun r!13380 () Regex!183)

(declare-fun validRegex!20 (Regex!183) Bool)

(assert (=> start!2098 (= res!28391 (validRegex!20 r!13380))))

(assert (=> start!2098 e!18590))

(assert (=> start!2098 e!18584))

(declare-fun e!18586 () Bool)

(declare-fun inv!731 (Cache!38) Bool)

(assert (=> start!2098 (and (inv!731 cache!443) e!18586)))

(assert (=> start!2098 e!18589))

(declare-fun b!37659 () Bool)

(declare-fun e!18588 () Bool)

(declare-fun lt!3228 () MutLongMap!119)

(get-info :version)

(assert (=> b!37659 (= e!18588 (and e!18592 ((_ is LongMap!119) lt!3228)))))

(assert (=> b!37659 (= lt!3228 (v!12210 (underlying!434 (cache!597 cache!443))))))

(declare-fun b!37660 () Bool)

(declare-fun res!28390 () Bool)

(assert (=> b!37660 (=> (not res!28390) (not e!18590))))

(declare-fun valid!128 (Cache!38) Bool)

(assert (=> b!37660 (= res!28390 (valid!128 cache!443))))

(declare-fun b!37661 () Bool)

(declare-fun res!28389 () Bool)

(assert (=> b!37661 (=> (not res!28389) (not e!18590))))

(declare-datatypes ((List!425 0))(
  ( (Nil!423) (Cons!423 (h!5819 C!1400) (t!15261 List!425)) )
))
(declare-fun input!6011 () List!425)

(declare-fun isEmpty!97 (List!425) Bool)

(assert (=> b!37661 (= res!28389 (isEmpty!97 input!6011))))

(declare-fun mapIsEmpty!408 () Bool)

(assert (=> mapIsEmpty!408 mapRes!408))

(declare-fun b!37662 () Bool)

(declare-fun e!18582 () Bool)

(declare-fun tp!26169 () Bool)

(assert (=> b!37662 (= e!18582 (and tp!26169 mapRes!408))))

(declare-fun condMapEmpty!408 () Bool)

(declare-fun mapDefault!408 () List!424)

(assert (=> b!37662 (= condMapEmpty!408 (= (arr!216 (_values!397 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443))))))) ((as const (Array (_ BitVec 32) List!424)) mapDefault!408)))))

(declare-fun b!37663 () Bool)

(declare-fun e!18587 () Bool)

(assert (=> b!37663 (= e!18586 e!18587)))

(declare-fun b!37664 () Bool)

(declare-fun tp!26173 () Bool)

(assert (=> b!37664 (= e!18584 tp!26173)))

(declare-fun b!37665 () Bool)

(declare-fun nullable!14 (Regex!183) Bool)

(declare-fun matchR!3 (Regex!183 List!425) Bool)

(assert (=> b!37665 (= e!18590 (not (= (nullable!14 r!13380) (matchR!3 r!13380 input!6011))))))

(declare-fun b!37666 () Bool)

(declare-fun e!18585 () Bool)

(assert (=> b!37666 (= e!18591 e!18585)))

(assert (=> b!37667 (= e!18587 (and e!18588 tp!26171))))

(declare-fun tp!26168 () Bool)

(declare-fun tp!26164 () Bool)

(declare-fun array_inv!132 (array!414) Bool)

(declare-fun array_inv!133 (array!412) Bool)

(assert (=> b!37668 (= e!18585 (and tp!26166 tp!26164 tp!26168 (array_inv!132 (_keys!410 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443))))))) (array_inv!133 (_values!397 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443))))))) e!18582))))

(assert (= (and start!2098 res!28391) b!37660))

(assert (= (and b!37660 res!28390) b!37661))

(assert (= (and b!37661 res!28389) b!37665))

(assert (= (and start!2098 ((_ is ElementMatch!183) r!13380)) b!37656))

(assert (= (and start!2098 ((_ is Concat!302) r!13380)) b!37655))

(assert (= (and start!2098 ((_ is Star!183) r!13380)) b!37664))

(assert (= (and start!2098 ((_ is Union!183) r!13380)) b!37658))

(assert (= (and b!37662 condMapEmpty!408) mapIsEmpty!408))

(assert (= (and b!37662 (not condMapEmpty!408)) mapNonEmpty!408))

(assert (= b!37668 b!37662))

(assert (= b!37666 b!37668))

(assert (= b!37654 b!37666))

(assert (= (and b!37659 ((_ is LongMap!119) (v!12210 (underlying!434 (cache!597 cache!443))))) b!37654))

(assert (= b!37667 b!37659))

(assert (= (and b!37663 ((_ is HashMap!115) (cache!597 cache!443))) b!37667))

(assert (= start!2098 b!37663))

(assert (= (and start!2098 ((_ is Cons!423) input!6011)) b!37657))

(declare-fun m!12254 () Bool)

(assert (=> mapNonEmpty!408 m!12254))

(declare-fun m!12256 () Bool)

(assert (=> start!2098 m!12256))

(declare-fun m!12258 () Bool)

(assert (=> start!2098 m!12258))

(declare-fun m!12260 () Bool)

(assert (=> b!37661 m!12260))

(declare-fun m!12262 () Bool)

(assert (=> b!37665 m!12262))

(declare-fun m!12264 () Bool)

(assert (=> b!37665 m!12264))

(declare-fun m!12266 () Bool)

(assert (=> b!37668 m!12266))

(declare-fun m!12268 () Bool)

(assert (=> b!37668 m!12268))

(declare-fun m!12270 () Bool)

(assert (=> b!37660 m!12270))

(check-sat (not b!37665) (not b!37655) b_and!625 (not b_next!589) (not b!37664) (not b!37658) (not b!37668) (not b!37661) (not mapNonEmpty!408) (not b!37662) (not b!37660) (not b!37657) (not start!2098) tp_is_empty!391 (not b_next!591) b_and!623)
(check-sat b_and!623 b_and!625 (not b_next!589) (not b_next!591))
(get-model)

(declare-fun d!4002 () Bool)

(assert (=> d!4002 (= (array_inv!132 (_keys!410 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443))))))) (bvsge (size!475 (_keys!410 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!37668 d!4002))

(declare-fun d!4004 () Bool)

(assert (=> d!4004 (= (array_inv!133 (_values!397 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443))))))) (bvsge (size!474 (_values!397 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!37668 d!4004))

(declare-fun b!37687 () Bool)

(declare-fun e!18613 () Bool)

(declare-fun call!2829 () Bool)

(assert (=> b!37687 (= e!18613 call!2829)))

(declare-fun b!37688 () Bool)

(declare-fun res!28406 () Bool)

(declare-fun e!18609 () Bool)

(assert (=> b!37688 (=> res!28406 e!18609)))

(assert (=> b!37688 (= res!28406 (not ((_ is Concat!302) r!13380)))))

(declare-fun e!18611 () Bool)

(assert (=> b!37688 (= e!18611 e!18609)))

(declare-fun b!37689 () Bool)

(declare-fun res!28402 () Bool)

(assert (=> b!37689 (=> (not res!28402) (not e!18613))))

(declare-fun call!2828 () Bool)

(assert (=> b!37689 (= res!28402 call!2828)))

(assert (=> b!37689 (= e!18611 e!18613)))

(declare-fun b!37690 () Bool)

(declare-fun e!18607 () Bool)

(declare-fun call!2827 () Bool)

(assert (=> b!37690 (= e!18607 call!2827)))

(declare-fun b!37691 () Bool)

(declare-fun e!18612 () Bool)

(assert (=> b!37691 (= e!18612 e!18607)))

(declare-fun res!28404 () Bool)

(assert (=> b!37691 (= res!28404 (not (nullable!14 (reg!512 r!13380))))))

(assert (=> b!37691 (=> (not res!28404) (not e!18607))))

(declare-fun b!37692 () Bool)

(declare-fun e!18608 () Bool)

(assert (=> b!37692 (= e!18608 call!2829)))

(declare-fun bm!2822 () Bool)

(declare-fun c!15654 () Bool)

(assert (=> bm!2822 (= call!2829 (validRegex!20 (ite c!15654 (regTwo!879 r!13380) (regTwo!878 r!13380))))))

(declare-fun bm!2823 () Bool)

(assert (=> bm!2823 (= call!2828 call!2827)))

(declare-fun d!4006 () Bool)

(declare-fun res!28405 () Bool)

(declare-fun e!18610 () Bool)

(assert (=> d!4006 (=> res!28405 e!18610)))

(assert (=> d!4006 (= res!28405 ((_ is ElementMatch!183) r!13380))))

(assert (=> d!4006 (= (validRegex!20 r!13380) e!18610)))

(declare-fun b!37693 () Bool)

(assert (=> b!37693 (= e!18610 e!18612)))

(declare-fun c!15655 () Bool)

(assert (=> b!37693 (= c!15655 ((_ is Star!183) r!13380))))

(declare-fun bm!2824 () Bool)

(assert (=> bm!2824 (= call!2827 (validRegex!20 (ite c!15655 (reg!512 r!13380) (ite c!15654 (regOne!879 r!13380) (regOne!878 r!13380)))))))

(declare-fun b!37694 () Bool)

(assert (=> b!37694 (= e!18612 e!18611)))

(assert (=> b!37694 (= c!15654 ((_ is Union!183) r!13380))))

(declare-fun b!37695 () Bool)

(assert (=> b!37695 (= e!18609 e!18608)))

(declare-fun res!28403 () Bool)

(assert (=> b!37695 (=> (not res!28403) (not e!18608))))

(assert (=> b!37695 (= res!28403 call!2828)))

(assert (= (and d!4006 (not res!28405)) b!37693))

(assert (= (and b!37693 c!15655) b!37691))

(assert (= (and b!37693 (not c!15655)) b!37694))

(assert (= (and b!37691 res!28404) b!37690))

(assert (= (and b!37694 c!15654) b!37689))

(assert (= (and b!37694 (not c!15654)) b!37688))

(assert (= (and b!37689 res!28402) b!37687))

(assert (= (and b!37688 (not res!28406)) b!37695))

(assert (= (and b!37695 res!28403) b!37692))

(assert (= (or b!37689 b!37695) bm!2823))

(assert (= (or b!37687 b!37692) bm!2822))

(assert (= (or b!37690 bm!2823) bm!2824))

(declare-fun m!12272 () Bool)

(assert (=> b!37691 m!12272))

(declare-fun m!12274 () Bool)

(assert (=> bm!2822 m!12274))

(declare-fun m!12276 () Bool)

(assert (=> bm!2824 m!12276))

(assert (=> start!2098 d!4006))

(declare-fun d!4008 () Bool)

(declare-fun res!28409 () Bool)

(declare-fun e!18616 () Bool)

(assert (=> d!4008 (=> (not res!28409) (not e!18616))))

(assert (=> d!4008 (= res!28409 ((_ is HashMap!115) (cache!597 cache!443)))))

(assert (=> d!4008 (= (inv!731 cache!443) e!18616)))

(declare-fun b!37698 () Bool)

(declare-fun validCacheMap!6 (MutableMap!115) Bool)

(assert (=> b!37698 (= e!18616 (validCacheMap!6 (cache!597 cache!443)))))

(assert (= (and d!4008 res!28409) b!37698))

(declare-fun m!12278 () Bool)

(assert (=> b!37698 m!12278))

(assert (=> start!2098 d!4008))

(declare-fun d!4010 () Bool)

(assert (=> d!4010 (= (isEmpty!97 input!6011) ((_ is Nil!423) input!6011))))

(assert (=> b!37661 d!4010))

(declare-fun d!4012 () Bool)

(declare-fun nullableFct!9 (Regex!183) Bool)

(assert (=> d!4012 (= (nullable!14 r!13380) (nullableFct!9 r!13380))))

(declare-fun bs!4992 () Bool)

(assert (= bs!4992 d!4012))

(declare-fun m!12280 () Bool)

(assert (=> bs!4992 m!12280))

(assert (=> b!37665 d!4012))

(declare-fun b!37727 () Bool)

(declare-fun res!28432 () Bool)

(declare-fun e!18632 () Bool)

(assert (=> b!37727 (=> res!28432 e!18632)))

(declare-fun tail!24 (List!425) List!425)

(assert (=> b!37727 (= res!28432 (not (isEmpty!97 (tail!24 input!6011))))))

(declare-fun b!37728 () Bool)

(declare-fun e!18636 () Bool)

(declare-fun derivativeStep!4 (Regex!183 C!1400) Regex!183)

(declare-fun head!336 (List!425) C!1400)

(assert (=> b!37728 (= e!18636 (matchR!3 (derivativeStep!4 r!13380 (head!336 input!6011)) (tail!24 input!6011)))))

(declare-fun b!37729 () Bool)

(declare-fun e!18634 () Bool)

(declare-fun e!18635 () Bool)

(assert (=> b!37729 (= e!18634 e!18635)))

(declare-fun c!15664 () Bool)

(assert (=> b!37729 (= c!15664 ((_ is EmptyLang!183) r!13380))))

(declare-fun b!37730 () Bool)

(assert (=> b!37730 (= e!18632 (not (= (head!336 input!6011) (c!15649 r!13380))))))

(declare-fun b!37731 () Bool)

(declare-fun e!18637 () Bool)

(assert (=> b!37731 (= e!18637 (= (head!336 input!6011) (c!15649 r!13380)))))

(declare-fun b!37732 () Bool)

(declare-fun e!18633 () Bool)

(assert (=> b!37732 (= e!18633 e!18632)))

(declare-fun res!28430 () Bool)

(assert (=> b!37732 (=> res!28430 e!18632)))

(declare-fun call!2832 () Bool)

(assert (=> b!37732 (= res!28430 call!2832)))

(declare-fun b!37733 () Bool)

(assert (=> b!37733 (= e!18636 (nullable!14 r!13380))))

(declare-fun b!37734 () Bool)

(declare-fun lt!3231 () Bool)

(assert (=> b!37734 (= e!18634 (= lt!3231 call!2832))))

(declare-fun b!37735 () Bool)

(declare-fun e!18631 () Bool)

(assert (=> b!37735 (= e!18631 e!18633)))

(declare-fun res!28429 () Bool)

(assert (=> b!37735 (=> (not res!28429) (not e!18633))))

(assert (=> b!37735 (= res!28429 (not lt!3231))))

(declare-fun b!37736 () Bool)

(declare-fun res!28428 () Bool)

(assert (=> b!37736 (=> res!28428 e!18631)))

(assert (=> b!37736 (= res!28428 e!18637)))

(declare-fun res!28433 () Bool)

(assert (=> b!37736 (=> (not res!28433) (not e!18637))))

(assert (=> b!37736 (= res!28433 lt!3231)))

(declare-fun d!4014 () Bool)

(assert (=> d!4014 e!18634))

(declare-fun c!15663 () Bool)

(assert (=> d!4014 (= c!15663 ((_ is EmptyExpr!183) r!13380))))

(assert (=> d!4014 (= lt!3231 e!18636)))

(declare-fun c!15662 () Bool)

(assert (=> d!4014 (= c!15662 (isEmpty!97 input!6011))))

(assert (=> d!4014 (validRegex!20 r!13380)))

(assert (=> d!4014 (= (matchR!3 r!13380 input!6011) lt!3231)))

(declare-fun bm!2827 () Bool)

(assert (=> bm!2827 (= call!2832 (isEmpty!97 input!6011))))

(declare-fun b!37737 () Bool)

(declare-fun res!28431 () Bool)

(assert (=> b!37737 (=> (not res!28431) (not e!18637))))

(assert (=> b!37737 (= res!28431 (isEmpty!97 (tail!24 input!6011)))))

(declare-fun b!37738 () Bool)

(declare-fun res!28427 () Bool)

(assert (=> b!37738 (=> res!28427 e!18631)))

(assert (=> b!37738 (= res!28427 (not ((_ is ElementMatch!183) r!13380)))))

(assert (=> b!37738 (= e!18635 e!18631)))

(declare-fun b!37739 () Bool)

(assert (=> b!37739 (= e!18635 (not lt!3231))))

(declare-fun b!37740 () Bool)

(declare-fun res!28426 () Bool)

(assert (=> b!37740 (=> (not res!28426) (not e!18637))))

(assert (=> b!37740 (= res!28426 (not call!2832))))

(assert (= (and d!4014 c!15662) b!37733))

(assert (= (and d!4014 (not c!15662)) b!37728))

(assert (= (and d!4014 c!15663) b!37734))

(assert (= (and d!4014 (not c!15663)) b!37729))

(assert (= (and b!37729 c!15664) b!37739))

(assert (= (and b!37729 (not c!15664)) b!37738))

(assert (= (and b!37738 (not res!28427)) b!37736))

(assert (= (and b!37736 res!28433) b!37740))

(assert (= (and b!37740 res!28426) b!37737))

(assert (= (and b!37737 res!28431) b!37731))

(assert (= (and b!37736 (not res!28428)) b!37735))

(assert (= (and b!37735 res!28429) b!37732))

(assert (= (and b!37732 (not res!28430)) b!37727))

(assert (= (and b!37727 (not res!28432)) b!37730))

(assert (= (or b!37734 b!37732 b!37740) bm!2827))

(assert (=> bm!2827 m!12260))

(assert (=> b!37733 m!12262))

(declare-fun m!12282 () Bool)

(assert (=> b!37737 m!12282))

(assert (=> b!37737 m!12282))

(declare-fun m!12284 () Bool)

(assert (=> b!37737 m!12284))

(assert (=> d!4014 m!12260))

(assert (=> d!4014 m!12256))

(declare-fun m!12286 () Bool)

(assert (=> b!37728 m!12286))

(assert (=> b!37728 m!12286))

(declare-fun m!12288 () Bool)

(assert (=> b!37728 m!12288))

(assert (=> b!37728 m!12282))

(assert (=> b!37728 m!12288))

(assert (=> b!37728 m!12282))

(declare-fun m!12290 () Bool)

(assert (=> b!37728 m!12290))

(assert (=> b!37727 m!12282))

(assert (=> b!37727 m!12282))

(assert (=> b!37727 m!12284))

(assert (=> b!37731 m!12286))

(assert (=> b!37730 m!12286))

(assert (=> b!37665 d!4014))

(declare-fun d!4016 () Bool)

(assert (=> d!4016 (= (valid!128 cache!443) (validCacheMap!6 (cache!597 cache!443)))))

(declare-fun bs!4993 () Bool)

(assert (= bs!4993 d!4016))

(assert (=> bs!4993 m!12278))

(assert (=> b!37660 d!4016))

(declare-fun e!18640 () Bool)

(assert (=> b!37655 (= tp!26167 e!18640)))

(declare-fun b!37752 () Bool)

(declare-fun tp!26185 () Bool)

(declare-fun tp!26186 () Bool)

(assert (=> b!37752 (= e!18640 (and tp!26185 tp!26186))))

(declare-fun b!37751 () Bool)

(assert (=> b!37751 (= e!18640 tp_is_empty!391)))

(declare-fun b!37754 () Bool)

(declare-fun tp!26187 () Bool)

(declare-fun tp!26189 () Bool)

(assert (=> b!37754 (= e!18640 (and tp!26187 tp!26189))))

(declare-fun b!37753 () Bool)

(declare-fun tp!26188 () Bool)

(assert (=> b!37753 (= e!18640 tp!26188)))

(assert (= (and b!37655 ((_ is ElementMatch!183) (regOne!878 r!13380))) b!37751))

(assert (= (and b!37655 ((_ is Concat!302) (regOne!878 r!13380))) b!37752))

(assert (= (and b!37655 ((_ is Star!183) (regOne!878 r!13380))) b!37753))

(assert (= (and b!37655 ((_ is Union!183) (regOne!878 r!13380))) b!37754))

(declare-fun e!18641 () Bool)

(assert (=> b!37655 (= tp!26163 e!18641)))

(declare-fun b!37756 () Bool)

(declare-fun tp!26190 () Bool)

(declare-fun tp!26191 () Bool)

(assert (=> b!37756 (= e!18641 (and tp!26190 tp!26191))))

(declare-fun b!37755 () Bool)

(assert (=> b!37755 (= e!18641 tp_is_empty!391)))

(declare-fun b!37758 () Bool)

(declare-fun tp!26192 () Bool)

(declare-fun tp!26194 () Bool)

(assert (=> b!37758 (= e!18641 (and tp!26192 tp!26194))))

(declare-fun b!37757 () Bool)

(declare-fun tp!26193 () Bool)

(assert (=> b!37757 (= e!18641 tp!26193)))

(assert (= (and b!37655 ((_ is ElementMatch!183) (regTwo!878 r!13380))) b!37755))

(assert (= (and b!37655 ((_ is Concat!302) (regTwo!878 r!13380))) b!37756))

(assert (= (and b!37655 ((_ is Star!183) (regTwo!878 r!13380))) b!37757))

(assert (= (and b!37655 ((_ is Union!183) (regTwo!878 r!13380))) b!37758))

(declare-fun b!37763 () Bool)

(declare-fun tp!26202 () Bool)

(declare-fun tp!26203 () Bool)

(declare-fun tp!26201 () Bool)

(declare-fun e!18644 () Bool)

(assert (=> b!37763 (= e!18644 (and tp!26201 tp_is_empty!391 tp!26202 tp!26203))))

(assert (=> b!37668 (= tp!26164 e!18644)))

(assert (= (and b!37668 ((_ is Cons!422) (zeroValue!375 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443)))))))) b!37763))

(declare-fun tp!26206 () Bool)

(declare-fun tp!26204 () Bool)

(declare-fun tp!26205 () Bool)

(declare-fun b!37764 () Bool)

(declare-fun e!18645 () Bool)

(assert (=> b!37764 (= e!18645 (and tp!26204 tp_is_empty!391 tp!26205 tp!26206))))

(assert (=> b!37668 (= tp!26168 e!18645)))

(assert (= (and b!37668 ((_ is Cons!422) (minValue!375 (v!12209 (underlying!433 (v!12210 (underlying!434 (cache!597 cache!443)))))))) b!37764))

(declare-fun e!18646 () Bool)

(assert (=> b!37658 (= tp!26174 e!18646)))

(declare-fun b!37766 () Bool)

(declare-fun tp!26207 () Bool)

(declare-fun tp!26208 () Bool)

(assert (=> b!37766 (= e!18646 (and tp!26207 tp!26208))))

(declare-fun b!37765 () Bool)

(assert (=> b!37765 (= e!18646 tp_is_empty!391)))

(declare-fun b!37768 () Bool)

(declare-fun tp!26209 () Bool)

(declare-fun tp!26211 () Bool)

(assert (=> b!37768 (= e!18646 (and tp!26209 tp!26211))))

(declare-fun b!37767 () Bool)

(declare-fun tp!26210 () Bool)

(assert (=> b!37767 (= e!18646 tp!26210)))

(assert (= (and b!37658 ((_ is ElementMatch!183) (regOne!879 r!13380))) b!37765))

(assert (= (and b!37658 ((_ is Concat!302) (regOne!879 r!13380))) b!37766))

(assert (= (and b!37658 ((_ is Star!183) (regOne!879 r!13380))) b!37767))

(assert (= (and b!37658 ((_ is Union!183) (regOne!879 r!13380))) b!37768))

(declare-fun e!18647 () Bool)

(assert (=> b!37658 (= tp!26165 e!18647)))

(declare-fun b!37770 () Bool)

(declare-fun tp!26212 () Bool)

(declare-fun tp!26213 () Bool)

(assert (=> b!37770 (= e!18647 (and tp!26212 tp!26213))))

(declare-fun b!37769 () Bool)

(assert (=> b!37769 (= e!18647 tp_is_empty!391)))

(declare-fun b!37772 () Bool)

(declare-fun tp!26214 () Bool)

(declare-fun tp!26216 () Bool)

(assert (=> b!37772 (= e!18647 (and tp!26214 tp!26216))))

(declare-fun b!37771 () Bool)

(declare-fun tp!26215 () Bool)

(assert (=> b!37771 (= e!18647 tp!26215)))

(assert (= (and b!37658 ((_ is ElementMatch!183) (regTwo!879 r!13380))) b!37769))

(assert (= (and b!37658 ((_ is Concat!302) (regTwo!879 r!13380))) b!37770))

(assert (= (and b!37658 ((_ is Star!183) (regTwo!879 r!13380))) b!37771))

(assert (= (and b!37658 ((_ is Union!183) (regTwo!879 r!13380))) b!37772))

(declare-fun e!18648 () Bool)

(declare-fun tp!26219 () Bool)

(declare-fun tp!26218 () Bool)

(declare-fun b!37773 () Bool)

(declare-fun tp!26217 () Bool)

(assert (=> b!37773 (= e!18648 (and tp!26217 tp_is_empty!391 tp!26218 tp!26219))))

(assert (=> b!37662 (= tp!26169 e!18648)))

(assert (= (and b!37662 ((_ is Cons!422) mapDefault!408)) b!37773))

(declare-fun b!37778 () Bool)

(declare-fun e!18651 () Bool)

(declare-fun tp!26222 () Bool)

(assert (=> b!37778 (= e!18651 (and tp_is_empty!391 tp!26222))))

(assert (=> b!37657 (= tp!26170 e!18651)))

(assert (= (and b!37657 ((_ is Cons!423) (t!15261 input!6011))) b!37778))

(declare-fun e!18657 () Bool)

(declare-fun tp!26238 () Bool)

(declare-fun tp!26243 () Bool)

(declare-fun b!37786 () Bool)

(declare-fun tp!26242 () Bool)

(assert (=> b!37786 (= e!18657 (and tp!26242 tp_is_empty!391 tp!26238 tp!26243))))

(declare-fun mapNonEmpty!411 () Bool)

(declare-fun mapRes!411 () Bool)

(declare-fun tp!26241 () Bool)

(declare-fun e!18656 () Bool)

(assert (=> mapNonEmpty!411 (= mapRes!411 (and tp!26241 e!18656))))

(declare-fun mapRest!411 () (Array (_ BitVec 32) List!424))

(declare-fun mapKey!411 () (_ BitVec 32))

(declare-fun mapValue!411 () List!424)

(assert (=> mapNonEmpty!411 (= mapRest!408 (store mapRest!411 mapKey!411 mapValue!411))))

(declare-fun tp!26239 () Bool)

(declare-fun tp!26237 () Bool)

(declare-fun tp!26240 () Bool)

(declare-fun b!37785 () Bool)

(assert (=> b!37785 (= e!18656 (and tp!26237 tp_is_empty!391 tp!26240 tp!26239))))

(declare-fun condMapEmpty!411 () Bool)

(declare-fun mapDefault!411 () List!424)

(assert (=> mapNonEmpty!408 (= condMapEmpty!411 (= mapRest!408 ((as const (Array (_ BitVec 32) List!424)) mapDefault!411)))))

(assert (=> mapNonEmpty!408 (= tp!26162 (and e!18657 mapRes!411))))

(declare-fun mapIsEmpty!411 () Bool)

(assert (=> mapIsEmpty!411 mapRes!411))

(assert (= (and mapNonEmpty!408 condMapEmpty!411) mapIsEmpty!411))

(assert (= (and mapNonEmpty!408 (not condMapEmpty!411)) mapNonEmpty!411))

(assert (= (and mapNonEmpty!411 ((_ is Cons!422) mapValue!411)) b!37785))

(assert (= (and mapNonEmpty!408 ((_ is Cons!422) mapDefault!411)) b!37786))

(declare-fun m!12292 () Bool)

(assert (=> mapNonEmpty!411 m!12292))

(declare-fun e!18658 () Bool)

(declare-fun tp!26245 () Bool)

(declare-fun tp!26244 () Bool)

(declare-fun tp!26246 () Bool)

(declare-fun b!37787 () Bool)

(assert (=> b!37787 (= e!18658 (and tp!26244 tp_is_empty!391 tp!26245 tp!26246))))

(assert (=> mapNonEmpty!408 (= tp!26172 e!18658)))

(assert (= (and mapNonEmpty!408 ((_ is Cons!422) mapValue!408)) b!37787))

(declare-fun e!18659 () Bool)

(assert (=> b!37664 (= tp!26173 e!18659)))

(declare-fun b!37789 () Bool)

(declare-fun tp!26247 () Bool)

(declare-fun tp!26248 () Bool)

(assert (=> b!37789 (= e!18659 (and tp!26247 tp!26248))))

(declare-fun b!37788 () Bool)

(assert (=> b!37788 (= e!18659 tp_is_empty!391)))

(declare-fun b!37791 () Bool)

(declare-fun tp!26249 () Bool)

(declare-fun tp!26251 () Bool)

(assert (=> b!37791 (= e!18659 (and tp!26249 tp!26251))))

(declare-fun b!37790 () Bool)

(declare-fun tp!26250 () Bool)

(assert (=> b!37790 (= e!18659 tp!26250)))

(assert (= (and b!37664 ((_ is ElementMatch!183) (reg!512 r!13380))) b!37788))

(assert (= (and b!37664 ((_ is Concat!302) (reg!512 r!13380))) b!37789))

(assert (= (and b!37664 ((_ is Star!183) (reg!512 r!13380))) b!37790))

(assert (= (and b!37664 ((_ is Union!183) (reg!512 r!13380))) b!37791))

(check-sat (not b!37767) (not b!37764) (not b!37757) (not b!37785) (not b!37731) (not b!37698) (not b!37773) (not b!37727) (not d!4012) (not b!37786) (not b!37790) (not bm!2822) (not b!37737) (not b!37787) (not b!37791) (not b!37730) (not b!37728) (not b!37691) (not b!37763) (not mapNonEmpty!411) (not b!37756) (not b!37766) (not b!37770) (not b!37789) b_and!625 (not b!37771) (not b!37752) (not b_next!589) (not bm!2827) (not b!37778) (not b!37733) (not b!37758) tp_is_empty!391 (not b!37768) (not bm!2824) (not b!37753) (not b_next!591) b_and!623 (not d!4014) (not b!37772) (not d!4016) (not b!37754))
(check-sat b_and!623 b_and!625 (not b_next!589) (not b_next!591))
