; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208384 () Bool)

(assert start!208384)

(declare-fun b!2148508 () Bool)

(declare-fun b_free!63429 () Bool)

(declare-fun b_next!64133 () Bool)

(assert (=> b!2148508 (= b_free!63429 (not b_next!64133))))

(declare-fun tp!666935 () Bool)

(declare-fun b_and!173025 () Bool)

(assert (=> b!2148508 (= tp!666935 b_and!173025)))

(declare-fun b!2148512 () Bool)

(declare-fun b_free!63431 () Bool)

(declare-fun b_next!64135 () Bool)

(assert (=> b!2148512 (= b_free!63431 (not b_next!64135))))

(declare-fun tp!666933 () Bool)

(declare-fun b_and!173027 () Bool)

(assert (=> b!2148512 (= tp!666933 b_and!173027)))

(declare-fun b!2148499 () Bool)

(declare-fun res!926763 () Bool)

(declare-fun e!1373648 () Bool)

(assert (=> b!2148499 (=> (not res!926763) (not e!1373648))))

(declare-fun e!1373644 () Bool)

(assert (=> b!2148499 (= res!926763 e!1373644)))

(declare-fun res!926764 () Bool)

(assert (=> b!2148499 (=> res!926764 e!1373644)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!11816 0))(
  ( (C!11817 (val!6894 Int)) )
))
(declare-datatypes ((Regex!5835 0))(
  ( (ElementMatch!5835 (c!340986 C!11816)) (Concat!10137 (regOne!12182 Regex!5835) (regTwo!12182 Regex!5835)) (EmptyExpr!5835) (Star!5835 (reg!6164 Regex!5835)) (EmptyLang!5835) (Union!5835 (regOne!12183 Regex!5835) (regTwo!12183 Regex!5835)) )
))
(declare-datatypes ((List!24663 0))(
  ( (Nil!24579) (Cons!24579 (h!29980 Regex!5835) (t!197201 List!24663)) )
))
(declare-datatypes ((Context!2810 0))(
  ( (Context!2811 (exprs!1905 List!24663)) )
))
(declare-fun z!514 () (InoxSet Context!2810))

(declare-fun nullableZipper!178 ((InoxSet Context!2810)) Bool)

(assert (=> b!2148499 (= res!926764 (not (nullableZipper!178 z!514)))))

(declare-fun res!926765 () Bool)

(assert (=> start!208384 (=> (not res!926765) (not e!1373648))))

(declare-fun lastNullablePos!91 () Int)

(declare-datatypes ((List!24664 0))(
  ( (Nil!24580) (Cons!24580 (h!29981 C!11816) (t!197202 List!24664)) )
))
(declare-datatypes ((IArray!15947 0))(
  ( (IArray!15948 (innerList!8031 List!24664)) )
))
(declare-datatypes ((Conc!7971 0))(
  ( (Node!7971 (left!18863 Conc!7971) (right!19193 Conc!7971) (csize!16172 Int) (cheight!8182 Int)) (Leaf!11656 (xs!10913 IArray!15947) (csize!16173 Int)) (Empty!7971) )
))
(declare-datatypes ((BalanceConc!15704 0))(
  ( (BalanceConc!15705 (c!340987 Conc!7971)) )
))
(declare-fun localTotalInput!13 () BalanceConc!15704)

(declare-fun from!952 () Int)

(declare-datatypes ((tuple3!3602 0))(
  ( (tuple3!3603 (_1!14484 (InoxSet Context!2810)) (_2!14484 Int) (_3!2271 Int)) )
))
(declare-datatypes ((tuple2!24426 0))(
  ( (tuple2!24427 (_1!14485 tuple3!3602) (_2!14485 Int)) )
))
(declare-datatypes ((List!24665 0))(
  ( (Nil!24581) (Cons!24581 (h!29982 tuple2!24426) (t!197203 List!24665)) )
))
(declare-datatypes ((array!9661 0))(
  ( (array!9662 (arr!4316 (Array (_ BitVec 32) (_ BitVec 64))) (size!19252 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2774 0))(
  ( (HashableExt!2773 (__x!16756 Int)) )
))
(declare-datatypes ((array!9663 0))(
  ( (array!9664 (arr!4317 (Array (_ BitVec 32) List!24665)) (size!19253 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5720 0))(
  ( (LongMapFixedSize!5721 (defaultEntry!3225 Int) (mask!7093 (_ BitVec 32)) (extraKeys!3108 (_ BitVec 32)) (zeroValue!3118 List!24665) (minValue!3118 List!24665) (_size!5771 (_ BitVec 32)) (_keys!3157 array!9661) (_values!3140 array!9663) (_vacant!2921 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11265 0))(
  ( (Cell!11266 (v!29158 LongMapFixedSize!5720)) )
))
(declare-datatypes ((MutLongMap!2860 0))(
  ( (LongMap!2860 (underlying!5915 Cell!11265)) (MutLongMapExt!2859 (__x!16757 Int)) )
))
(declare-datatypes ((Cell!11267 0))(
  ( (Cell!11268 (v!29159 MutLongMap!2860)) )
))
(declare-datatypes ((MutableMap!2774 0))(
  ( (MutableMapExt!2773 (__x!16758 Int)) (HashMap!2774 (underlying!5916 Cell!11267) (hashF!4697 Hashable!2774) (_size!5772 (_ BitVec 32)) (defaultValue!2936 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!906 0))(
  ( (CacheFurthestNullable!907 (cache!3155 MutableMap!2774) (totalInput!3218 BalanceConc!15704)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!906)

(assert (=> start!208384 (= res!926765 (and (= localTotalInput!13 (totalInput!3218 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208384 e!1373648))

(declare-fun condSetEmpty!16984 () Bool)

(assert (=> start!208384 (= condSetEmpty!16984 (= z!514 ((as const (Array Context!2810 Bool)) false)))))

(declare-fun setRes!16984 () Bool)

(assert (=> start!208384 setRes!16984))

(assert (=> start!208384 true))

(declare-fun e!1373638 () Bool)

(declare-fun inv!32360 (CacheFurthestNullable!906) Bool)

(assert (=> start!208384 (and (inv!32360 thiss!29110) e!1373638)))

(declare-fun e!1373643 () Bool)

(declare-fun inv!32361 (BalanceConc!15704) Bool)

(assert (=> start!208384 (and (inv!32361 localTotalInput!13) e!1373643)))

(declare-fun b!2148500 () Bool)

(declare-fun e!1373640 () Bool)

(declare-fun e!1373647 () Bool)

(assert (=> b!2148500 (= e!1373638 (and e!1373647 (inv!32361 (totalInput!3218 thiss!29110)) e!1373640))))

(declare-fun b!2148501 () Bool)

(declare-fun res!926766 () Bool)

(assert (=> b!2148501 (=> (not res!926766) (not e!1373648))))

(declare-fun validCacheMapFurthestNullable!133 (MutableMap!2774 BalanceConc!15704) Bool)

(assert (=> b!2148501 (= res!926766 (validCacheMapFurthestNullable!133 (cache!3155 thiss!29110) (totalInput!3218 thiss!29110)))))

(declare-fun setIsEmpty!16984 () Bool)

(assert (=> setIsEmpty!16984 setRes!16984))

(declare-fun b!2148502 () Bool)

(declare-fun e!1373639 () Bool)

(declare-fun e!1373641 () Bool)

(assert (=> b!2148502 (= e!1373639 e!1373641)))

(declare-fun mapNonEmpty!13559 () Bool)

(declare-fun mapRes!13559 () Bool)

(declare-fun tp!666932 () Bool)

(declare-fun tp!666927 () Bool)

(assert (=> mapNonEmpty!13559 (= mapRes!13559 (and tp!666932 tp!666927))))

(declare-fun mapKey!13559 () (_ BitVec 32))

(declare-fun mapRest!13559 () (Array (_ BitVec 32) List!24665))

(declare-fun mapValue!13559 () List!24665)

(assert (=> mapNonEmpty!13559 (= (arr!4317 (_values!3140 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))) (store mapRest!13559 mapKey!13559 mapValue!13559))))

(declare-fun b!2148503 () Bool)

(declare-fun e!1373637 () Bool)

(declare-fun tp!666930 () Bool)

(assert (=> b!2148503 (= e!1373637 tp!666930)))

(declare-fun b!2148504 () Bool)

(assert (=> b!2148504 (= e!1373644 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2148505 () Bool)

(declare-fun e!1373645 () Bool)

(declare-fun e!1373642 () Bool)

(declare-fun lt!799886 () MutLongMap!2860)

(get-info :version)

(assert (=> b!2148505 (= e!1373645 (and e!1373642 ((_ is LongMap!2860) lt!799886)))))

(assert (=> b!2148505 (= lt!799886 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))

(declare-fun b!2148506 () Bool)

(assert (=> b!2148506 (= e!1373642 e!1373639)))

(declare-fun b!2148507 () Bool)

(declare-fun tp!666934 () Bool)

(declare-fun inv!32362 (Conc!7971) Bool)

(assert (=> b!2148507 (= e!1373643 (and (inv!32362 (c!340987 localTotalInput!13)) tp!666934))))

(declare-fun mapIsEmpty!13559 () Bool)

(assert (=> mapIsEmpty!13559 mapRes!13559))

(declare-fun tp!666931 () Bool)

(declare-fun tp!666926 () Bool)

(declare-fun e!1373636 () Bool)

(declare-fun array_inv!3092 (array!9661) Bool)

(declare-fun array_inv!3093 (array!9663) Bool)

(assert (=> b!2148508 (= e!1373641 (and tp!666935 tp!666931 tp!666926 (array_inv!3092 (_keys!3157 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))) (array_inv!3093 (_values!3140 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))) e!1373636))))

(declare-fun b!2148509 () Bool)

(assert (=> b!2148509 (= e!1373648 (not ((_ is HashMap!2774) (cache!3155 thiss!29110))))))

(assert (=> b!2148509 (validCacheMapFurthestNullable!133 (cache!3155 thiss!29110) localTotalInput!13)))

(declare-fun b!2148510 () Bool)

(declare-fun tp!666929 () Bool)

(assert (=> b!2148510 (= e!1373636 (and tp!666929 mapRes!13559))))

(declare-fun condMapEmpty!13559 () Bool)

(declare-fun mapDefault!13559 () List!24665)

(assert (=> b!2148510 (= condMapEmpty!13559 (= (arr!4317 (_values!3140 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24665)) mapDefault!13559)))))

(declare-fun tp!666925 () Bool)

(declare-fun setElem!16984 () Context!2810)

(declare-fun setNonEmpty!16984 () Bool)

(declare-fun inv!32363 (Context!2810) Bool)

(assert (=> setNonEmpty!16984 (= setRes!16984 (and tp!666925 (inv!32363 setElem!16984) e!1373637))))

(declare-fun setRest!16984 () (InoxSet Context!2810))

(assert (=> setNonEmpty!16984 (= z!514 ((_ map or) (store ((as const (Array Context!2810 Bool)) false) setElem!16984 true) setRest!16984))))

(declare-fun b!2148511 () Bool)

(declare-fun tp!666928 () Bool)

(assert (=> b!2148511 (= e!1373640 (and (inv!32362 (c!340987 (totalInput!3218 thiss!29110))) tp!666928))))

(assert (=> b!2148512 (= e!1373647 (and e!1373645 tp!666933))))

(assert (= (and start!208384 res!926765) b!2148499))

(assert (= (and b!2148499 (not res!926764)) b!2148504))

(assert (= (and b!2148499 res!926763) b!2148501))

(assert (= (and b!2148501 res!926766) b!2148509))

(assert (= (and start!208384 condSetEmpty!16984) setIsEmpty!16984))

(assert (= (and start!208384 (not condSetEmpty!16984)) setNonEmpty!16984))

(assert (= setNonEmpty!16984 b!2148503))

(assert (= (and b!2148510 condMapEmpty!13559) mapIsEmpty!13559))

(assert (= (and b!2148510 (not condMapEmpty!13559)) mapNonEmpty!13559))

(assert (= b!2148508 b!2148510))

(assert (= b!2148502 b!2148508))

(assert (= b!2148506 b!2148502))

(assert (= (and b!2148505 ((_ is LongMap!2860) (v!29159 (underlying!5916 (cache!3155 thiss!29110))))) b!2148506))

(assert (= b!2148512 b!2148505))

(assert (= (and b!2148500 ((_ is HashMap!2774) (cache!3155 thiss!29110))) b!2148512))

(assert (= b!2148500 b!2148511))

(assert (= start!208384 b!2148500))

(assert (= start!208384 b!2148507))

(declare-fun m!2591544 () Bool)

(assert (=> b!2148509 m!2591544))

(declare-fun m!2591546 () Bool)

(assert (=> b!2148507 m!2591546))

(declare-fun m!2591548 () Bool)

(assert (=> b!2148508 m!2591548))

(declare-fun m!2591550 () Bool)

(assert (=> b!2148508 m!2591550))

(declare-fun m!2591552 () Bool)

(assert (=> setNonEmpty!16984 m!2591552))

(declare-fun m!2591554 () Bool)

(assert (=> start!208384 m!2591554))

(declare-fun m!2591556 () Bool)

(assert (=> start!208384 m!2591556))

(declare-fun m!2591558 () Bool)

(assert (=> mapNonEmpty!13559 m!2591558))

(declare-fun m!2591560 () Bool)

(assert (=> b!2148499 m!2591560))

(declare-fun m!2591562 () Bool)

(assert (=> b!2148501 m!2591562))

(declare-fun m!2591564 () Bool)

(assert (=> b!2148500 m!2591564))

(declare-fun m!2591566 () Bool)

(assert (=> b!2148511 m!2591566))

(check-sat (not b!2148500) b_and!173025 (not mapNonEmpty!13559) (not b!2148499) (not b!2148508) b_and!173027 (not b_next!64133) (not start!208384) (not b!2148511) (not b!2148510) (not b!2148501) (not b!2148507) (not setNonEmpty!16984) (not b_next!64135) (not b!2148503) (not b!2148509))
(check-sat b_and!173027 b_and!173025 (not b_next!64133) (not b_next!64135))
(get-model)

(declare-fun d!645427 () Bool)

(declare-fun c!340990 () Bool)

(assert (=> d!645427 (= c!340990 ((_ is Node!7971) (c!340987 localTotalInput!13)))))

(declare-fun e!1373653 () Bool)

(assert (=> d!645427 (= (inv!32362 (c!340987 localTotalInput!13)) e!1373653)))

(declare-fun b!2148519 () Bool)

(declare-fun inv!32364 (Conc!7971) Bool)

(assert (=> b!2148519 (= e!1373653 (inv!32364 (c!340987 localTotalInput!13)))))

(declare-fun b!2148520 () Bool)

(declare-fun e!1373654 () Bool)

(assert (=> b!2148520 (= e!1373653 e!1373654)))

(declare-fun res!926769 () Bool)

(assert (=> b!2148520 (= res!926769 (not ((_ is Leaf!11656) (c!340987 localTotalInput!13))))))

(assert (=> b!2148520 (=> res!926769 e!1373654)))

(declare-fun b!2148521 () Bool)

(declare-fun inv!32365 (Conc!7971) Bool)

(assert (=> b!2148521 (= e!1373654 (inv!32365 (c!340987 localTotalInput!13)))))

(assert (= (and d!645427 c!340990) b!2148519))

(assert (= (and d!645427 (not c!340990)) b!2148520))

(assert (= (and b!2148520 (not res!926769)) b!2148521))

(declare-fun m!2591568 () Bool)

(assert (=> b!2148519 m!2591568))

(declare-fun m!2591570 () Bool)

(assert (=> b!2148521 m!2591570))

(assert (=> b!2148507 d!645427))

(declare-fun d!645429 () Bool)

(declare-fun lambda!80694 () Int)

(declare-fun forall!5010 (List!24663 Int) Bool)

(assert (=> d!645429 (= (inv!32363 setElem!16984) (forall!5010 (exprs!1905 setElem!16984) lambda!80694))))

(declare-fun bs!445503 () Bool)

(assert (= bs!445503 d!645429))

(declare-fun m!2591572 () Bool)

(assert (=> bs!445503 m!2591572))

(assert (=> setNonEmpty!16984 d!645429))

(declare-fun d!645431 () Bool)

(declare-fun res!926772 () Bool)

(declare-fun e!1373657 () Bool)

(assert (=> d!645431 (=> (not res!926772) (not e!1373657))))

(assert (=> d!645431 (= res!926772 ((_ is HashMap!2774) (cache!3155 thiss!29110)))))

(assert (=> d!645431 (= (inv!32360 thiss!29110) e!1373657)))

(declare-fun b!2148524 () Bool)

(assert (=> b!2148524 (= e!1373657 (validCacheMapFurthestNullable!133 (cache!3155 thiss!29110) (totalInput!3218 thiss!29110)))))

(assert (= (and d!645431 res!926772) b!2148524))

(assert (=> b!2148524 m!2591562))

(assert (=> start!208384 d!645431))

(declare-fun d!645433 () Bool)

(declare-fun isBalanced!2471 (Conc!7971) Bool)

(assert (=> d!645433 (= (inv!32361 localTotalInput!13) (isBalanced!2471 (c!340987 localTotalInput!13)))))

(declare-fun bs!445504 () Bool)

(assert (= bs!445504 d!645433))

(declare-fun m!2591574 () Bool)

(assert (=> bs!445504 m!2591574))

(assert (=> start!208384 d!645433))

(declare-fun d!645435 () Bool)

(assert (=> d!645435 (= (inv!32361 (totalInput!3218 thiss!29110)) (isBalanced!2471 (c!340987 (totalInput!3218 thiss!29110))))))

(declare-fun bs!445505 () Bool)

(assert (= bs!445505 d!645435))

(declare-fun m!2591576 () Bool)

(assert (=> bs!445505 m!2591576))

(assert (=> b!2148500 d!645435))

(declare-fun d!645437 () Bool)

(declare-fun c!340991 () Bool)

(assert (=> d!645437 (= c!340991 ((_ is Node!7971) (c!340987 (totalInput!3218 thiss!29110))))))

(declare-fun e!1373658 () Bool)

(assert (=> d!645437 (= (inv!32362 (c!340987 (totalInput!3218 thiss!29110))) e!1373658)))

(declare-fun b!2148525 () Bool)

(assert (=> b!2148525 (= e!1373658 (inv!32364 (c!340987 (totalInput!3218 thiss!29110))))))

(declare-fun b!2148526 () Bool)

(declare-fun e!1373659 () Bool)

(assert (=> b!2148526 (= e!1373658 e!1373659)))

(declare-fun res!926773 () Bool)

(assert (=> b!2148526 (= res!926773 (not ((_ is Leaf!11656) (c!340987 (totalInput!3218 thiss!29110)))))))

(assert (=> b!2148526 (=> res!926773 e!1373659)))

(declare-fun b!2148527 () Bool)

(assert (=> b!2148527 (= e!1373659 (inv!32365 (c!340987 (totalInput!3218 thiss!29110))))))

(assert (= (and d!645437 c!340991) b!2148525))

(assert (= (and d!645437 (not c!340991)) b!2148526))

(assert (= (and b!2148526 (not res!926773)) b!2148527))

(declare-fun m!2591578 () Bool)

(assert (=> b!2148525 m!2591578))

(declare-fun m!2591580 () Bool)

(assert (=> b!2148527 m!2591580))

(assert (=> b!2148511 d!645437))

(declare-fun d!645439 () Bool)

(declare-fun lambda!80697 () Int)

(declare-fun exists!725 ((InoxSet Context!2810) Int) Bool)

(assert (=> d!645439 (= (nullableZipper!178 z!514) (exists!725 z!514 lambda!80697))))

(declare-fun bs!445506 () Bool)

(assert (= bs!445506 d!645439))

(declare-fun m!2591582 () Bool)

(assert (=> bs!445506 m!2591582))

(assert (=> b!2148499 d!645439))

(declare-fun b!2148533 () Bool)

(assert (=> b!2148533 true))

(declare-fun d!645441 () Bool)

(declare-fun res!926778 () Bool)

(declare-fun e!1373662 () Bool)

(assert (=> d!645441 (=> (not res!926778) (not e!1373662))))

(declare-fun valid!2211 (MutableMap!2774) Bool)

(assert (=> d!645441 (= res!926778 (valid!2211 (cache!3155 thiss!29110)))))

(assert (=> d!645441 (= (validCacheMapFurthestNullable!133 (cache!3155 thiss!29110) (totalInput!3218 thiss!29110)) e!1373662)))

(declare-fun b!2148532 () Bool)

(declare-fun res!926779 () Bool)

(assert (=> b!2148532 (=> (not res!926779) (not e!1373662))))

(declare-fun invariantList!316 (List!24665) Bool)

(declare-datatypes ((ListMap!681 0))(
  ( (ListMap!682 (toList!1093 List!24665)) )
))
(declare-fun map!4937 (MutableMap!2774) ListMap!681)

(assert (=> b!2148532 (= res!926779 (invariantList!316 (toList!1093 (map!4937 (cache!3155 thiss!29110)))))))

(declare-fun lambda!80700 () Int)

(declare-fun forall!5011 (List!24665 Int) Bool)

(assert (=> b!2148533 (= e!1373662 (forall!5011 (toList!1093 (map!4937 (cache!3155 thiss!29110))) lambda!80700))))

(assert (= (and d!645441 res!926778) b!2148532))

(assert (= (and b!2148532 res!926779) b!2148533))

(declare-fun m!2591585 () Bool)

(assert (=> d!645441 m!2591585))

(declare-fun m!2591587 () Bool)

(assert (=> b!2148532 m!2591587))

(declare-fun m!2591589 () Bool)

(assert (=> b!2148532 m!2591589))

(assert (=> b!2148533 m!2591587))

(declare-fun m!2591591 () Bool)

(assert (=> b!2148533 m!2591591))

(assert (=> b!2148501 d!645441))

(declare-fun bs!445507 () Bool)

(declare-fun b!2148537 () Bool)

(assert (= bs!445507 (and b!2148537 b!2148533)))

(declare-fun lambda!80701 () Int)

(assert (=> bs!445507 (= (= localTotalInput!13 (totalInput!3218 thiss!29110)) (= lambda!80701 lambda!80700))))

(assert (=> b!2148537 true))

(declare-fun d!645443 () Bool)

(declare-fun res!926780 () Bool)

(declare-fun e!1373663 () Bool)

(assert (=> d!645443 (=> (not res!926780) (not e!1373663))))

(assert (=> d!645443 (= res!926780 (valid!2211 (cache!3155 thiss!29110)))))

(assert (=> d!645443 (= (validCacheMapFurthestNullable!133 (cache!3155 thiss!29110) localTotalInput!13) e!1373663)))

(declare-fun b!2148536 () Bool)

(declare-fun res!926781 () Bool)

(assert (=> b!2148536 (=> (not res!926781) (not e!1373663))))

(assert (=> b!2148536 (= res!926781 (invariantList!316 (toList!1093 (map!4937 (cache!3155 thiss!29110)))))))

(assert (=> b!2148537 (= e!1373663 (forall!5011 (toList!1093 (map!4937 (cache!3155 thiss!29110))) lambda!80701))))

(assert (= (and d!645443 res!926780) b!2148536))

(assert (= (and b!2148536 res!926781) b!2148537))

(assert (=> d!645443 m!2591585))

(assert (=> b!2148536 m!2591587))

(assert (=> b!2148536 m!2591589))

(assert (=> b!2148537 m!2591587))

(declare-fun m!2591593 () Bool)

(assert (=> b!2148537 m!2591593))

(assert (=> b!2148509 d!645443))

(declare-fun d!645445 () Bool)

(assert (=> d!645445 (= (array_inv!3092 (_keys!3157 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))) (bvsge (size!19252 (_keys!3157 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148508 d!645445))

(declare-fun d!645447 () Bool)

(assert (=> d!645447 (= (array_inv!3093 (_values!3140 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))) (bvsge (size!19253 (_values!3140 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148508 d!645447))

(declare-fun setRes!16987 () Bool)

(declare-fun setElem!16987 () Context!2810)

(declare-fun setNonEmpty!16987 () Bool)

(declare-fun tp!666944 () Bool)

(declare-fun e!1373669 () Bool)

(assert (=> setNonEmpty!16987 (= setRes!16987 (and tp!666944 (inv!32363 setElem!16987) e!1373669))))

(declare-fun setRest!16987 () (InoxSet Context!2810))

(assert (=> setNonEmpty!16987 (= (_1!14484 (_1!14485 (h!29982 mapDefault!13559))) ((_ map or) (store ((as const (Array Context!2810 Bool)) false) setElem!16987 true) setRest!16987))))

(declare-fun b!2148544 () Bool)

(declare-fun e!1373668 () Bool)

(declare-fun tp!666943 () Bool)

(assert (=> b!2148544 (= e!1373668 (and setRes!16987 tp!666943))))

(declare-fun condSetEmpty!16987 () Bool)

(assert (=> b!2148544 (= condSetEmpty!16987 (= (_1!14484 (_1!14485 (h!29982 mapDefault!13559))) ((as const (Array Context!2810 Bool)) false)))))

(declare-fun setIsEmpty!16987 () Bool)

(assert (=> setIsEmpty!16987 setRes!16987))

(declare-fun b!2148545 () Bool)

(declare-fun tp!666942 () Bool)

(assert (=> b!2148545 (= e!1373669 tp!666942)))

(assert (=> b!2148510 (= tp!666929 e!1373668)))

(assert (= (and b!2148544 condSetEmpty!16987) setIsEmpty!16987))

(assert (= (and b!2148544 (not condSetEmpty!16987)) setNonEmpty!16987))

(assert (= setNonEmpty!16987 b!2148545))

(assert (= (and b!2148510 ((_ is Cons!24581) mapDefault!13559)) b!2148544))

(declare-fun m!2591595 () Bool)

(assert (=> setNonEmpty!16987 m!2591595))

(declare-fun tp!666953 () Bool)

(declare-fun e!1373675 () Bool)

(declare-fun b!2148554 () Bool)

(declare-fun tp!666952 () Bool)

(assert (=> b!2148554 (= e!1373675 (and (inv!32362 (left!18863 (c!340987 localTotalInput!13))) tp!666952 (inv!32362 (right!19193 (c!340987 localTotalInput!13))) tp!666953))))

(declare-fun b!2148556 () Bool)

(declare-fun e!1373674 () Bool)

(declare-fun tp!666951 () Bool)

(assert (=> b!2148556 (= e!1373674 tp!666951)))

(declare-fun b!2148555 () Bool)

(declare-fun inv!32366 (IArray!15947) Bool)

(assert (=> b!2148555 (= e!1373675 (and (inv!32366 (xs!10913 (c!340987 localTotalInput!13))) e!1373674))))

(assert (=> b!2148507 (= tp!666934 (and (inv!32362 (c!340987 localTotalInput!13)) e!1373675))))

(assert (= (and b!2148507 ((_ is Node!7971) (c!340987 localTotalInput!13))) b!2148554))

(assert (= b!2148555 b!2148556))

(assert (= (and b!2148507 ((_ is Leaf!11656) (c!340987 localTotalInput!13))) b!2148555))

(declare-fun m!2591597 () Bool)

(assert (=> b!2148554 m!2591597))

(declare-fun m!2591599 () Bool)

(assert (=> b!2148554 m!2591599))

(declare-fun m!2591601 () Bool)

(assert (=> b!2148555 m!2591601))

(assert (=> b!2148507 m!2591546))

(declare-fun setRes!16993 () Bool)

(declare-fun tp!666971 () Bool)

(declare-fun e!1373687 () Bool)

(declare-fun setNonEmpty!16992 () Bool)

(declare-fun setElem!16993 () Context!2810)

(assert (=> setNonEmpty!16992 (= setRes!16993 (and tp!666971 (inv!32363 setElem!16993) e!1373687))))

(declare-fun mapDefault!13562 () List!24665)

(declare-fun setRest!16992 () (InoxSet Context!2810))

(assert (=> setNonEmpty!16992 (= (_1!14484 (_1!14485 (h!29982 mapDefault!13562))) ((_ map or) (store ((as const (Array Context!2810 Bool)) false) setElem!16993 true) setRest!16992))))

(declare-fun mapIsEmpty!13562 () Bool)

(declare-fun mapRes!13562 () Bool)

(assert (=> mapIsEmpty!13562 mapRes!13562))

(declare-fun condMapEmpty!13562 () Bool)

(assert (=> mapNonEmpty!13559 (= condMapEmpty!13562 (= mapRest!13559 ((as const (Array (_ BitVec 32) List!24665)) mapDefault!13562)))))

(declare-fun e!1373684 () Bool)

(assert (=> mapNonEmpty!13559 (= tp!666932 (and e!1373684 mapRes!13562))))

(declare-fun b!2148567 () Bool)

(declare-fun e!1373685 () Bool)

(declare-fun tp!666970 () Bool)

(assert (=> b!2148567 (= e!1373685 tp!666970)))

(declare-fun mapNonEmpty!13562 () Bool)

(declare-fun tp!666972 () Bool)

(declare-fun e!1373686 () Bool)

(assert (=> mapNonEmpty!13562 (= mapRes!13562 (and tp!666972 e!1373686))))

(declare-fun mapRest!13562 () (Array (_ BitVec 32) List!24665))

(declare-fun mapKey!13562 () (_ BitVec 32))

(declare-fun mapValue!13562 () List!24665)

(assert (=> mapNonEmpty!13562 (= mapRest!13559 (store mapRest!13562 mapKey!13562 mapValue!13562))))

(declare-fun setIsEmpty!16992 () Bool)

(declare-fun setRes!16992 () Bool)

(assert (=> setIsEmpty!16992 setRes!16992))

(declare-fun setNonEmpty!16993 () Bool)

(declare-fun tp!666974 () Bool)

(declare-fun setElem!16992 () Context!2810)

(assert (=> setNonEmpty!16993 (= setRes!16992 (and tp!666974 (inv!32363 setElem!16992) e!1373685))))

(declare-fun setRest!16993 () (InoxSet Context!2810))

(assert (=> setNonEmpty!16993 (= (_1!14484 (_1!14485 (h!29982 mapValue!13562))) ((_ map or) (store ((as const (Array Context!2810 Bool)) false) setElem!16992 true) setRest!16993))))

(declare-fun b!2148568 () Bool)

(declare-fun tp!666973 () Bool)

(assert (=> b!2148568 (= e!1373687 tp!666973)))

(declare-fun b!2148569 () Bool)

(declare-fun tp!666969 () Bool)

(assert (=> b!2148569 (= e!1373686 (and setRes!16992 tp!666969))))

(declare-fun condSetEmpty!16992 () Bool)

(assert (=> b!2148569 (= condSetEmpty!16992 (= (_1!14484 (_1!14485 (h!29982 mapValue!13562))) ((as const (Array Context!2810 Bool)) false)))))

(declare-fun b!2148570 () Bool)

(declare-fun tp!666968 () Bool)

(assert (=> b!2148570 (= e!1373684 (and setRes!16993 tp!666968))))

(declare-fun condSetEmpty!16993 () Bool)

(assert (=> b!2148570 (= condSetEmpty!16993 (= (_1!14484 (_1!14485 (h!29982 mapDefault!13562))) ((as const (Array Context!2810 Bool)) false)))))

(declare-fun setIsEmpty!16993 () Bool)

(assert (=> setIsEmpty!16993 setRes!16993))

(assert (= (and mapNonEmpty!13559 condMapEmpty!13562) mapIsEmpty!13562))

(assert (= (and mapNonEmpty!13559 (not condMapEmpty!13562)) mapNonEmpty!13562))

(assert (= (and b!2148569 condSetEmpty!16992) setIsEmpty!16992))

(assert (= (and b!2148569 (not condSetEmpty!16992)) setNonEmpty!16993))

(assert (= setNonEmpty!16993 b!2148567))

(assert (= (and mapNonEmpty!13562 ((_ is Cons!24581) mapValue!13562)) b!2148569))

(assert (= (and b!2148570 condSetEmpty!16993) setIsEmpty!16993))

(assert (= (and b!2148570 (not condSetEmpty!16993)) setNonEmpty!16992))

(assert (= setNonEmpty!16992 b!2148568))

(assert (= (and mapNonEmpty!13559 ((_ is Cons!24581) mapDefault!13562)) b!2148570))

(declare-fun m!2591603 () Bool)

(assert (=> setNonEmpty!16992 m!2591603))

(declare-fun m!2591605 () Bool)

(assert (=> mapNonEmpty!13562 m!2591605))

(declare-fun m!2591607 () Bool)

(assert (=> setNonEmpty!16993 m!2591607))

(declare-fun setRes!16994 () Bool)

(declare-fun tp!666977 () Bool)

(declare-fun setElem!16994 () Context!2810)

(declare-fun setNonEmpty!16994 () Bool)

(declare-fun e!1373689 () Bool)

(assert (=> setNonEmpty!16994 (= setRes!16994 (and tp!666977 (inv!32363 setElem!16994) e!1373689))))

(declare-fun setRest!16994 () (InoxSet Context!2810))

(assert (=> setNonEmpty!16994 (= (_1!14484 (_1!14485 (h!29982 mapValue!13559))) ((_ map or) (store ((as const (Array Context!2810 Bool)) false) setElem!16994 true) setRest!16994))))

(declare-fun b!2148571 () Bool)

(declare-fun e!1373688 () Bool)

(declare-fun tp!666976 () Bool)

(assert (=> b!2148571 (= e!1373688 (and setRes!16994 tp!666976))))

(declare-fun condSetEmpty!16994 () Bool)

(assert (=> b!2148571 (= condSetEmpty!16994 (= (_1!14484 (_1!14485 (h!29982 mapValue!13559))) ((as const (Array Context!2810 Bool)) false)))))

(declare-fun setIsEmpty!16994 () Bool)

(assert (=> setIsEmpty!16994 setRes!16994))

(declare-fun b!2148572 () Bool)

(declare-fun tp!666975 () Bool)

(assert (=> b!2148572 (= e!1373689 tp!666975)))

(assert (=> mapNonEmpty!13559 (= tp!666927 e!1373688)))

(assert (= (and b!2148571 condSetEmpty!16994) setIsEmpty!16994))

(assert (= (and b!2148571 (not condSetEmpty!16994)) setNonEmpty!16994))

(assert (= setNonEmpty!16994 b!2148572))

(assert (= (and mapNonEmpty!13559 ((_ is Cons!24581) mapValue!13559)) b!2148571))

(declare-fun m!2591609 () Bool)

(assert (=> setNonEmpty!16994 m!2591609))

(declare-fun condSetEmpty!16997 () Bool)

(assert (=> setNonEmpty!16984 (= condSetEmpty!16997 (= setRest!16984 ((as const (Array Context!2810 Bool)) false)))))

(declare-fun setRes!16997 () Bool)

(assert (=> setNonEmpty!16984 (= tp!666925 setRes!16997)))

(declare-fun setIsEmpty!16997 () Bool)

(assert (=> setIsEmpty!16997 setRes!16997))

(declare-fun setNonEmpty!16997 () Bool)

(declare-fun e!1373692 () Bool)

(declare-fun setElem!16997 () Context!2810)

(declare-fun tp!666983 () Bool)

(assert (=> setNonEmpty!16997 (= setRes!16997 (and tp!666983 (inv!32363 setElem!16997) e!1373692))))

(declare-fun setRest!16997 () (InoxSet Context!2810))

(assert (=> setNonEmpty!16997 (= setRest!16984 ((_ map or) (store ((as const (Array Context!2810 Bool)) false) setElem!16997 true) setRest!16997))))

(declare-fun b!2148577 () Bool)

(declare-fun tp!666982 () Bool)

(assert (=> b!2148577 (= e!1373692 tp!666982)))

(assert (= (and setNonEmpty!16984 condSetEmpty!16997) setIsEmpty!16997))

(assert (= (and setNonEmpty!16984 (not condSetEmpty!16997)) setNonEmpty!16997))

(assert (= setNonEmpty!16997 b!2148577))

(declare-fun m!2591611 () Bool)

(assert (=> setNonEmpty!16997 m!2591611))

(declare-fun b!2148582 () Bool)

(declare-fun e!1373695 () Bool)

(declare-fun tp!666988 () Bool)

(declare-fun tp!666989 () Bool)

(assert (=> b!2148582 (= e!1373695 (and tp!666988 tp!666989))))

(assert (=> b!2148503 (= tp!666930 e!1373695)))

(assert (= (and b!2148503 ((_ is Cons!24579) (exprs!1905 setElem!16984))) b!2148582))

(declare-fun tp!666991 () Bool)

(declare-fun e!1373697 () Bool)

(declare-fun tp!666992 () Bool)

(declare-fun b!2148583 () Bool)

(assert (=> b!2148583 (= e!1373697 (and (inv!32362 (left!18863 (c!340987 (totalInput!3218 thiss!29110)))) tp!666991 (inv!32362 (right!19193 (c!340987 (totalInput!3218 thiss!29110)))) tp!666992))))

(declare-fun b!2148585 () Bool)

(declare-fun e!1373696 () Bool)

(declare-fun tp!666990 () Bool)

(assert (=> b!2148585 (= e!1373696 tp!666990)))

(declare-fun b!2148584 () Bool)

(assert (=> b!2148584 (= e!1373697 (and (inv!32366 (xs!10913 (c!340987 (totalInput!3218 thiss!29110)))) e!1373696))))

(assert (=> b!2148511 (= tp!666928 (and (inv!32362 (c!340987 (totalInput!3218 thiss!29110))) e!1373697))))

(assert (= (and b!2148511 ((_ is Node!7971) (c!340987 (totalInput!3218 thiss!29110)))) b!2148583))

(assert (= b!2148584 b!2148585))

(assert (= (and b!2148511 ((_ is Leaf!11656) (c!340987 (totalInput!3218 thiss!29110)))) b!2148584))

(declare-fun m!2591613 () Bool)

(assert (=> b!2148583 m!2591613))

(declare-fun m!2591615 () Bool)

(assert (=> b!2148583 m!2591615))

(declare-fun m!2591617 () Bool)

(assert (=> b!2148584 m!2591617))

(assert (=> b!2148511 m!2591566))

(declare-fun tp!666995 () Bool)

(declare-fun e!1373699 () Bool)

(declare-fun setElem!16998 () Context!2810)

(declare-fun setRes!16998 () Bool)

(declare-fun setNonEmpty!16998 () Bool)

(assert (=> setNonEmpty!16998 (= setRes!16998 (and tp!666995 (inv!32363 setElem!16998) e!1373699))))

(declare-fun setRest!16998 () (InoxSet Context!2810))

(assert (=> setNonEmpty!16998 (= (_1!14484 (_1!14485 (h!29982 (zeroValue!3118 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2810 Bool)) false) setElem!16998 true) setRest!16998))))

(declare-fun b!2148586 () Bool)

(declare-fun e!1373698 () Bool)

(declare-fun tp!666994 () Bool)

(assert (=> b!2148586 (= e!1373698 (and setRes!16998 tp!666994))))

(declare-fun condSetEmpty!16998 () Bool)

(assert (=> b!2148586 (= condSetEmpty!16998 (= (_1!14484 (_1!14485 (h!29982 (zeroValue!3118 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))))) ((as const (Array Context!2810 Bool)) false)))))

(declare-fun setIsEmpty!16998 () Bool)

(assert (=> setIsEmpty!16998 setRes!16998))

(declare-fun b!2148587 () Bool)

(declare-fun tp!666993 () Bool)

(assert (=> b!2148587 (= e!1373699 tp!666993)))

(assert (=> b!2148508 (= tp!666931 e!1373698)))

(assert (= (and b!2148586 condSetEmpty!16998) setIsEmpty!16998))

(assert (= (and b!2148586 (not condSetEmpty!16998)) setNonEmpty!16998))

(assert (= setNonEmpty!16998 b!2148587))

(assert (= (and b!2148508 ((_ is Cons!24581) (zeroValue!3118 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110)))))))) b!2148586))

(declare-fun m!2591619 () Bool)

(assert (=> setNonEmpty!16998 m!2591619))

(declare-fun tp!666998 () Bool)

(declare-fun setElem!16999 () Context!2810)

(declare-fun setRes!16999 () Bool)

(declare-fun e!1373701 () Bool)

(declare-fun setNonEmpty!16999 () Bool)

(assert (=> setNonEmpty!16999 (= setRes!16999 (and tp!666998 (inv!32363 setElem!16999) e!1373701))))

(declare-fun setRest!16999 () (InoxSet Context!2810))

(assert (=> setNonEmpty!16999 (= (_1!14484 (_1!14485 (h!29982 (minValue!3118 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2810 Bool)) false) setElem!16999 true) setRest!16999))))

(declare-fun b!2148588 () Bool)

(declare-fun e!1373700 () Bool)

(declare-fun tp!666997 () Bool)

(assert (=> b!2148588 (= e!1373700 (and setRes!16999 tp!666997))))

(declare-fun condSetEmpty!16999 () Bool)

(assert (=> b!2148588 (= condSetEmpty!16999 (= (_1!14484 (_1!14485 (h!29982 (minValue!3118 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110))))))))) ((as const (Array Context!2810 Bool)) false)))))

(declare-fun setIsEmpty!16999 () Bool)

(assert (=> setIsEmpty!16999 setRes!16999))

(declare-fun b!2148589 () Bool)

(declare-fun tp!666996 () Bool)

(assert (=> b!2148589 (= e!1373701 tp!666996)))

(assert (=> b!2148508 (= tp!666926 e!1373700)))

(assert (= (and b!2148588 condSetEmpty!16999) setIsEmpty!16999))

(assert (= (and b!2148588 (not condSetEmpty!16999)) setNonEmpty!16999))

(assert (= setNonEmpty!16999 b!2148589))

(assert (= (and b!2148508 ((_ is Cons!24581) (minValue!3118 (v!29158 (underlying!5915 (v!29159 (underlying!5916 (cache!3155 thiss!29110)))))))) b!2148588))

(declare-fun m!2591621 () Bool)

(assert (=> setNonEmpty!16999 m!2591621))

(check-sat (not b!2148568) (not b!2148586) (not b!2148533) (not b!2148588) (not b!2148554) (not b!2148587) (not setNonEmpty!16999) (not d!645439) (not b!2148582) (not b!2148577) (not b!2148537) (not b!2148545) (not d!645441) (not b!2148507) (not b!2148589) (not b!2148524) (not mapNonEmpty!13562) (not b!2148521) (not b_next!64135) (not setNonEmpty!16994) (not b!2148519) (not b!2148567) (not d!645435) b_and!173025 (not b!2148572) (not b!2148555) (not b!2148525) (not setNonEmpty!16997) (not b!2148556) (not b!2148544) (not setNonEmpty!16987) (not setNonEmpty!16993) (not b!2148570) (not d!645433) b_and!173027 (not b!2148536) (not b!2148532) (not b!2148585) (not d!645443) (not b!2148584) (not setNonEmpty!16998) (not b!2148571) (not b_next!64133) (not b!2148527) (not b!2148569) (not d!645429) (not b!2148583) (not setNonEmpty!16992) (not b!2148511))
(check-sat b_and!173027 b_and!173025 (not b_next!64133) (not b_next!64135))
