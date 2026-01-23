; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208346 () Bool)

(assert start!208346)

(declare-fun b!2148198 () Bool)

(declare-fun b_free!63413 () Bool)

(declare-fun b_next!64117 () Bool)

(assert (=> b!2148198 (= b_free!63413 (not b_next!64117))))

(declare-fun tp!666667 () Bool)

(declare-fun b_and!173009 () Bool)

(assert (=> b!2148198 (= tp!666667 b_and!173009)))

(declare-fun b!2148197 () Bool)

(declare-fun b_free!63415 () Bool)

(declare-fun b_next!64119 () Bool)

(assert (=> b!2148197 (= b_free!63415 (not b_next!64119))))

(declare-fun tp!666668 () Bool)

(declare-fun b_and!173011 () Bool)

(assert (=> b!2148197 (= tp!666668 b_and!173011)))

(declare-fun b!2148190 () Bool)

(declare-fun e!1373389 () Bool)

(declare-fun tp!666672 () Bool)

(assert (=> b!2148190 (= e!1373389 tp!666672)))

(declare-fun b!2148191 () Bool)

(declare-fun e!1373380 () Bool)

(declare-fun e!1373386 () Bool)

(assert (=> b!2148191 (= e!1373380 e!1373386)))

(declare-fun b!2148192 () Bool)

(declare-fun e!1373382 () Bool)

(declare-fun e!1373381 () Bool)

(declare-datatypes ((C!11808 0))(
  ( (C!11809 (val!6890 Int)) )
))
(declare-datatypes ((Regex!5831 0))(
  ( (ElementMatch!5831 (c!340966 C!11808)) (Concat!10133 (regOne!12174 Regex!5831) (regTwo!12174 Regex!5831)) (EmptyExpr!5831) (Star!5831 (reg!6160 Regex!5831)) (EmptyLang!5831) (Union!5831 (regOne!12175 Regex!5831) (regTwo!12175 Regex!5831)) )
))
(declare-datatypes ((List!24651 0))(
  ( (Nil!24567) (Cons!24567 (h!29968 Regex!5831) (t!197189 List!24651)) )
))
(declare-datatypes ((Context!2802 0))(
  ( (Context!2803 (exprs!1901 List!24651)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3594 0))(
  ( (tuple3!3595 (_1!14476 (InoxSet Context!2802)) (_2!14476 Int) (_3!2267 Int)) )
))
(declare-datatypes ((tuple2!24418 0))(
  ( (tuple2!24419 (_1!14477 tuple3!3594) (_2!14477 Int)) )
))
(declare-datatypes ((List!24652 0))(
  ( (Nil!24568) (Cons!24568 (h!29969 tuple2!24418) (t!197190 List!24652)) )
))
(declare-datatypes ((array!9641 0))(
  ( (array!9642 (arr!4308 (Array (_ BitVec 32) (_ BitVec 64))) (size!19244 (_ BitVec 32))) )
))
(declare-datatypes ((array!9643 0))(
  ( (array!9644 (arr!4309 (Array (_ BitVec 32) List!24652)) (size!19245 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5712 0))(
  ( (LongMapFixedSize!5713 (defaultEntry!3221 Int) (mask!7087 (_ BitVec 32)) (extraKeys!3104 (_ BitVec 32)) (zeroValue!3114 List!24652) (minValue!3114 List!24652) (_size!5763 (_ BitVec 32)) (_keys!3153 array!9641) (_values!3136 array!9643) (_vacant!2917 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11249 0))(
  ( (Cell!11250 (v!29150 LongMapFixedSize!5712)) )
))
(declare-datatypes ((MutLongMap!2856 0))(
  ( (LongMap!2856 (underlying!5907 Cell!11249)) (MutLongMapExt!2855 (__x!16744 Int)) )
))
(declare-fun lt!799874 () MutLongMap!2856)

(get-info :version)

(assert (=> b!2148192 (= e!1373382 (and e!1373381 ((_ is LongMap!2856) lt!799874)))))

(declare-datatypes ((List!24653 0))(
  ( (Nil!24569) (Cons!24569 (h!29970 C!11808) (t!197191 List!24653)) )
))
(declare-datatypes ((Hashable!2770 0))(
  ( (HashableExt!2769 (__x!16745 Int)) )
))
(declare-datatypes ((Cell!11251 0))(
  ( (Cell!11252 (v!29151 MutLongMap!2856)) )
))
(declare-datatypes ((MutableMap!2770 0))(
  ( (MutableMapExt!2769 (__x!16746 Int)) (HashMap!2770 (underlying!5908 Cell!11251) (hashF!4693 Hashable!2770) (_size!5764 (_ BitVec 32)) (defaultValue!2932 Int)) )
))
(declare-datatypes ((IArray!15939 0))(
  ( (IArray!15940 (innerList!8027 List!24653)) )
))
(declare-datatypes ((Conc!7967 0))(
  ( (Node!7967 (left!18855 Conc!7967) (right!19185 Conc!7967) (csize!16164 Int) (cheight!8178 Int)) (Leaf!11650 (xs!10909 IArray!15939) (csize!16165 Int)) (Empty!7967) )
))
(declare-datatypes ((BalanceConc!15696 0))(
  ( (BalanceConc!15697 (c!340967 Conc!7967)) )
))
(declare-datatypes ((CacheFurthestNullable!898 0))(
  ( (CacheFurthestNullable!899 (cache!3151 MutableMap!2770) (totalInput!3213 BalanceConc!15696)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!898)

(assert (=> b!2148192 (= lt!799874 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))

(declare-fun b!2148193 () Bool)

(declare-fun e!1373383 () Bool)

(assert (=> b!2148193 (= e!1373383 (not ((_ is HashMap!2770) (cache!3151 thiss!29110))))))

(declare-fun b!2148194 () Bool)

(declare-fun e!1373387 () Bool)

(declare-fun e!1373384 () Bool)

(declare-fun e!1373385 () Bool)

(declare-fun inv!32336 (BalanceConc!15696) Bool)

(assert (=> b!2148194 (= e!1373387 (and e!1373385 (inv!32336 (totalInput!3213 thiss!29110)) e!1373384))))

(declare-fun b!2148195 () Bool)

(declare-fun res!926697 () Bool)

(assert (=> b!2148195 (=> (not res!926697) (not e!1373383))))

(declare-fun e!1373379 () Bool)

(assert (=> b!2148195 (= res!926697 e!1373379)))

(declare-fun res!926696 () Bool)

(assert (=> b!2148195 (=> res!926696 e!1373379)))

(declare-fun z!514 () (InoxSet Context!2802))

(declare-fun nullableZipper!175 ((InoxSet Context!2802)) Bool)

(assert (=> b!2148195 (= res!926696 (not (nullableZipper!175 z!514)))))

(declare-fun mapNonEmpty!13541 () Bool)

(declare-fun mapRes!13541 () Bool)

(declare-fun tp!666677 () Bool)

(declare-fun tp!666670 () Bool)

(assert (=> mapNonEmpty!13541 (= mapRes!13541 (and tp!666677 tp!666670))))

(declare-fun mapValue!13541 () List!24652)

(declare-fun mapKey!13541 () (_ BitVec 32))

(declare-fun mapRest!13541 () (Array (_ BitVec 32) List!24652))

(assert (=> mapNonEmpty!13541 (= (arr!4309 (_values!3136 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))) (store mapRest!13541 mapKey!13541 mapValue!13541))))

(declare-fun e!1373388 () Bool)

(declare-fun tp!666674 () Bool)

(declare-fun tp!666676 () Bool)

(declare-fun array_inv!3086 (array!9641) Bool)

(declare-fun array_inv!3087 (array!9643) Bool)

(assert (=> b!2148197 (= e!1373386 (and tp!666668 tp!666676 tp!666674 (array_inv!3086 (_keys!3153 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))) (array_inv!3087 (_values!3136 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))) e!1373388))))

(declare-fun tp!666673 () Bool)

(declare-fun setRes!16942 () Bool)

(declare-fun setElem!16942 () Context!2802)

(declare-fun setNonEmpty!16942 () Bool)

(declare-fun inv!32337 (Context!2802) Bool)

(assert (=> setNonEmpty!16942 (= setRes!16942 (and tp!666673 (inv!32337 setElem!16942) e!1373389))))

(declare-fun setRest!16942 () (InoxSet Context!2802))

(assert (=> setNonEmpty!16942 (= z!514 ((_ map or) (store ((as const (Array Context!2802 Bool)) false) setElem!16942 true) setRest!16942))))

(assert (=> b!2148198 (= e!1373385 (and e!1373382 tp!666667))))

(declare-fun b!2148199 () Bool)

(declare-fun tp!666669 () Bool)

(declare-fun inv!32338 (Conc!7967) Bool)

(assert (=> b!2148199 (= e!1373384 (and (inv!32338 (c!340967 (totalInput!3213 thiss!29110))) tp!666669))))

(declare-fun b!2148200 () Bool)

(declare-fun e!1373391 () Bool)

(declare-fun localTotalInput!13 () BalanceConc!15696)

(declare-fun tp!666671 () Bool)

(assert (=> b!2148200 (= e!1373391 (and (inv!32338 (c!340967 localTotalInput!13)) tp!666671))))

(declare-fun b!2148201 () Bool)

(declare-fun tp!666675 () Bool)

(assert (=> b!2148201 (= e!1373388 (and tp!666675 mapRes!13541))))

(declare-fun condMapEmpty!13541 () Bool)

(declare-fun mapDefault!13541 () List!24652)

(assert (=> b!2148201 (= condMapEmpty!13541 (= (arr!4309 (_values!3136 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24652)) mapDefault!13541)))))

(declare-fun mapIsEmpty!13541 () Bool)

(assert (=> mapIsEmpty!13541 mapRes!13541))

(declare-fun b!2148196 () Bool)

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2148196 (= e!1373379 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun res!926698 () Bool)

(assert (=> start!208346 (=> (not res!926698) (not e!1373383))))

(assert (=> start!208346 (= res!926698 (and (= localTotalInput!13 (totalInput!3213 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208346 e!1373383))

(declare-fun condSetEmpty!16942 () Bool)

(assert (=> start!208346 (= condSetEmpty!16942 (= z!514 ((as const (Array Context!2802 Bool)) false)))))

(assert (=> start!208346 setRes!16942))

(assert (=> start!208346 true))

(declare-fun inv!32339 (CacheFurthestNullable!898) Bool)

(assert (=> start!208346 (and (inv!32339 thiss!29110) e!1373387)))

(assert (=> start!208346 (and (inv!32336 localTotalInput!13) e!1373391)))

(declare-fun setIsEmpty!16942 () Bool)

(assert (=> setIsEmpty!16942 setRes!16942))

(declare-fun b!2148202 () Bool)

(assert (=> b!2148202 (= e!1373381 e!1373380)))

(assert (= (and start!208346 res!926698) b!2148195))

(assert (= (and b!2148195 (not res!926696)) b!2148196))

(assert (= (and b!2148195 res!926697) b!2148193))

(assert (= (and start!208346 condSetEmpty!16942) setIsEmpty!16942))

(assert (= (and start!208346 (not condSetEmpty!16942)) setNonEmpty!16942))

(assert (= setNonEmpty!16942 b!2148190))

(assert (= (and b!2148201 condMapEmpty!13541) mapIsEmpty!13541))

(assert (= (and b!2148201 (not condMapEmpty!13541)) mapNonEmpty!13541))

(assert (= b!2148197 b!2148201))

(assert (= b!2148191 b!2148197))

(assert (= b!2148202 b!2148191))

(assert (= (and b!2148192 ((_ is LongMap!2856) (v!29151 (underlying!5908 (cache!3151 thiss!29110))))) b!2148202))

(assert (= b!2148198 b!2148192))

(assert (= (and b!2148194 ((_ is HashMap!2770) (cache!3151 thiss!29110))) b!2148198))

(assert (= b!2148194 b!2148199))

(assert (= start!208346 b!2148194))

(assert (= start!208346 b!2148200))

(declare-fun m!2591357 () Bool)

(assert (=> start!208346 m!2591357))

(declare-fun m!2591359 () Bool)

(assert (=> start!208346 m!2591359))

(declare-fun m!2591361 () Bool)

(assert (=> b!2148199 m!2591361))

(declare-fun m!2591363 () Bool)

(assert (=> b!2148194 m!2591363))

(declare-fun m!2591365 () Bool)

(assert (=> b!2148195 m!2591365))

(declare-fun m!2591367 () Bool)

(assert (=> setNonEmpty!16942 m!2591367))

(declare-fun m!2591369 () Bool)

(assert (=> mapNonEmpty!13541 m!2591369))

(declare-fun m!2591371 () Bool)

(assert (=> b!2148197 m!2591371))

(declare-fun m!2591373 () Bool)

(assert (=> b!2148197 m!2591373))

(declare-fun m!2591375 () Bool)

(assert (=> b!2148200 m!2591375))

(check-sat b_and!173009 (not start!208346) (not b!2148200) (not b_next!64119) (not mapNonEmpty!13541) (not b!2148197) (not b!2148190) (not b!2148199) b_and!173011 (not b!2148201) (not b_next!64117) (not b!2148194) (not setNonEmpty!16942) (not b!2148195))
(check-sat b_and!173009 b_and!173011 (not b_next!64119) (not b_next!64117))
(get-model)

(declare-fun d!645387 () Bool)

(assert (=> d!645387 (= (array_inv!3086 (_keys!3153 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))) (bvsge (size!19244 (_keys!3153 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148197 d!645387))

(declare-fun d!645389 () Bool)

(assert (=> d!645389 (= (array_inv!3087 (_values!3136 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))) (bvsge (size!19245 (_values!3136 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148197 d!645389))

(declare-fun d!645391 () Bool)

(declare-fun res!926701 () Bool)

(declare-fun e!1373394 () Bool)

(assert (=> d!645391 (=> (not res!926701) (not e!1373394))))

(assert (=> d!645391 (= res!926701 ((_ is HashMap!2770) (cache!3151 thiss!29110)))))

(assert (=> d!645391 (= (inv!32339 thiss!29110) e!1373394)))

(declare-fun b!2148205 () Bool)

(declare-fun validCacheMapFurthestNullable!130 (MutableMap!2770 BalanceConc!15696) Bool)

(assert (=> b!2148205 (= e!1373394 (validCacheMapFurthestNullable!130 (cache!3151 thiss!29110) (totalInput!3213 thiss!29110)))))

(assert (= (and d!645391 res!926701) b!2148205))

(declare-fun m!2591377 () Bool)

(assert (=> b!2148205 m!2591377))

(assert (=> start!208346 d!645391))

(declare-fun d!645393 () Bool)

(declare-fun isBalanced!2469 (Conc!7967) Bool)

(assert (=> d!645393 (= (inv!32336 localTotalInput!13) (isBalanced!2469 (c!340967 localTotalInput!13)))))

(declare-fun bs!445491 () Bool)

(assert (= bs!445491 d!645393))

(declare-fun m!2591379 () Bool)

(assert (=> bs!445491 m!2591379))

(assert (=> start!208346 d!645393))

(declare-fun d!645395 () Bool)

(declare-fun c!340970 () Bool)

(assert (=> d!645395 (= c!340970 ((_ is Node!7967) (c!340967 (totalInput!3213 thiss!29110))))))

(declare-fun e!1373399 () Bool)

(assert (=> d!645395 (= (inv!32338 (c!340967 (totalInput!3213 thiss!29110))) e!1373399)))

(declare-fun b!2148212 () Bool)

(declare-fun inv!32340 (Conc!7967) Bool)

(assert (=> b!2148212 (= e!1373399 (inv!32340 (c!340967 (totalInput!3213 thiss!29110))))))

(declare-fun b!2148213 () Bool)

(declare-fun e!1373400 () Bool)

(assert (=> b!2148213 (= e!1373399 e!1373400)))

(declare-fun res!926704 () Bool)

(assert (=> b!2148213 (= res!926704 (not ((_ is Leaf!11650) (c!340967 (totalInput!3213 thiss!29110)))))))

(assert (=> b!2148213 (=> res!926704 e!1373400)))

(declare-fun b!2148214 () Bool)

(declare-fun inv!32341 (Conc!7967) Bool)

(assert (=> b!2148214 (= e!1373400 (inv!32341 (c!340967 (totalInput!3213 thiss!29110))))))

(assert (= (and d!645395 c!340970) b!2148212))

(assert (= (and d!645395 (not c!340970)) b!2148213))

(assert (= (and b!2148213 (not res!926704)) b!2148214))

(declare-fun m!2591381 () Bool)

(assert (=> b!2148212 m!2591381))

(declare-fun m!2591383 () Bool)

(assert (=> b!2148214 m!2591383))

(assert (=> b!2148199 d!645395))

(declare-fun d!645397 () Bool)

(declare-fun c!340971 () Bool)

(assert (=> d!645397 (= c!340971 ((_ is Node!7967) (c!340967 localTotalInput!13)))))

(declare-fun e!1373401 () Bool)

(assert (=> d!645397 (= (inv!32338 (c!340967 localTotalInput!13)) e!1373401)))

(declare-fun b!2148215 () Bool)

(assert (=> b!2148215 (= e!1373401 (inv!32340 (c!340967 localTotalInput!13)))))

(declare-fun b!2148216 () Bool)

(declare-fun e!1373402 () Bool)

(assert (=> b!2148216 (= e!1373401 e!1373402)))

(declare-fun res!926705 () Bool)

(assert (=> b!2148216 (= res!926705 (not ((_ is Leaf!11650) (c!340967 localTotalInput!13))))))

(assert (=> b!2148216 (=> res!926705 e!1373402)))

(declare-fun b!2148217 () Bool)

(assert (=> b!2148217 (= e!1373402 (inv!32341 (c!340967 localTotalInput!13)))))

(assert (= (and d!645397 c!340971) b!2148215))

(assert (= (and d!645397 (not c!340971)) b!2148216))

(assert (= (and b!2148216 (not res!926705)) b!2148217))

(declare-fun m!2591385 () Bool)

(assert (=> b!2148215 m!2591385))

(declare-fun m!2591387 () Bool)

(assert (=> b!2148217 m!2591387))

(assert (=> b!2148200 d!645397))

(declare-fun d!645399 () Bool)

(declare-fun lambda!80679 () Int)

(declare-fun exists!723 ((InoxSet Context!2802) Int) Bool)

(assert (=> d!645399 (= (nullableZipper!175 z!514) (exists!723 z!514 lambda!80679))))

(declare-fun bs!445492 () Bool)

(assert (= bs!445492 d!645399))

(declare-fun m!2591389 () Bool)

(assert (=> bs!445492 m!2591389))

(assert (=> b!2148195 d!645399))

(declare-fun d!645401 () Bool)

(declare-fun lambda!80682 () Int)

(declare-fun forall!5007 (List!24651 Int) Bool)

(assert (=> d!645401 (= (inv!32337 setElem!16942) (forall!5007 (exprs!1901 setElem!16942) lambda!80682))))

(declare-fun bs!445493 () Bool)

(assert (= bs!445493 d!645401))

(declare-fun m!2591391 () Bool)

(assert (=> bs!445493 m!2591391))

(assert (=> setNonEmpty!16942 d!645401))

(declare-fun d!645403 () Bool)

(assert (=> d!645403 (= (inv!32336 (totalInput!3213 thiss!29110)) (isBalanced!2469 (c!340967 (totalInput!3213 thiss!29110))))))

(declare-fun bs!445494 () Bool)

(assert (= bs!445494 d!645403))

(declare-fun m!2591393 () Bool)

(assert (=> bs!445494 m!2591393))

(assert (=> b!2148194 d!645403))

(declare-fun setIsEmpty!16947 () Bool)

(declare-fun setRes!16948 () Bool)

(assert (=> setIsEmpty!16947 setRes!16948))

(declare-fun b!2148228 () Bool)

(declare-fun e!1373413 () Bool)

(declare-fun tp!666697 () Bool)

(assert (=> b!2148228 (= e!1373413 (and setRes!16948 tp!666697))))

(declare-fun condSetEmpty!16947 () Bool)

(declare-fun mapValue!13544 () List!24652)

(assert (=> b!2148228 (= condSetEmpty!16947 (= (_1!14476 (_1!14477 (h!29969 mapValue!13544))) ((as const (Array Context!2802 Bool)) false)))))

(declare-fun setIsEmpty!16948 () Bool)

(declare-fun setRes!16947 () Bool)

(assert (=> setIsEmpty!16948 setRes!16947))

(declare-fun setElem!16947 () Context!2802)

(declare-fun tp!666698 () Bool)

(declare-fun setNonEmpty!16947 () Bool)

(declare-fun e!1373411 () Bool)

(assert (=> setNonEmpty!16947 (= setRes!16947 (and tp!666698 (inv!32337 setElem!16947) e!1373411))))

(declare-fun mapDefault!13544 () List!24652)

(declare-fun setRest!16948 () (InoxSet Context!2802))

(assert (=> setNonEmpty!16947 (= (_1!14476 (_1!14477 (h!29969 mapDefault!13544))) ((_ map or) (store ((as const (Array Context!2802 Bool)) false) setElem!16947 true) setRest!16948))))

(declare-fun e!1373414 () Bool)

(declare-fun tp!666694 () Bool)

(declare-fun setElem!16948 () Context!2802)

(declare-fun setNonEmpty!16948 () Bool)

(assert (=> setNonEmpty!16948 (= setRes!16948 (and tp!666694 (inv!32337 setElem!16948) e!1373414))))

(declare-fun setRest!16947 () (InoxSet Context!2802))

(assert (=> setNonEmpty!16948 (= (_1!14476 (_1!14477 (h!29969 mapValue!13544))) ((_ map or) (store ((as const (Array Context!2802 Bool)) false) setElem!16948 true) setRest!16947))))

(declare-fun condMapEmpty!13544 () Bool)

(assert (=> mapNonEmpty!13541 (= condMapEmpty!13544 (= mapRest!13541 ((as const (Array (_ BitVec 32) List!24652)) mapDefault!13544)))))

(declare-fun e!1373412 () Bool)

(declare-fun mapRes!13544 () Bool)

(assert (=> mapNonEmpty!13541 (= tp!666677 (and e!1373412 mapRes!13544))))

(declare-fun b!2148229 () Bool)

(declare-fun tp!666693 () Bool)

(assert (=> b!2148229 (= e!1373414 tp!666693)))

(declare-fun b!2148230 () Bool)

(declare-fun tp!666692 () Bool)

(assert (=> b!2148230 (= e!1373412 (and setRes!16947 tp!666692))))

(declare-fun condSetEmpty!16948 () Bool)

(assert (=> b!2148230 (= condSetEmpty!16948 (= (_1!14476 (_1!14477 (h!29969 mapDefault!13544))) ((as const (Array Context!2802 Bool)) false)))))

(declare-fun b!2148231 () Bool)

(declare-fun tp!666696 () Bool)

(assert (=> b!2148231 (= e!1373411 tp!666696)))

(declare-fun mapNonEmpty!13544 () Bool)

(declare-fun tp!666695 () Bool)

(assert (=> mapNonEmpty!13544 (= mapRes!13544 (and tp!666695 e!1373413))))

(declare-fun mapRest!13544 () (Array (_ BitVec 32) List!24652))

(declare-fun mapKey!13544 () (_ BitVec 32))

(assert (=> mapNonEmpty!13544 (= mapRest!13541 (store mapRest!13544 mapKey!13544 mapValue!13544))))

(declare-fun mapIsEmpty!13544 () Bool)

(assert (=> mapIsEmpty!13544 mapRes!13544))

(assert (= (and mapNonEmpty!13541 condMapEmpty!13544) mapIsEmpty!13544))

(assert (= (and mapNonEmpty!13541 (not condMapEmpty!13544)) mapNonEmpty!13544))

(assert (= (and b!2148228 condSetEmpty!16947) setIsEmpty!16947))

(assert (= (and b!2148228 (not condSetEmpty!16947)) setNonEmpty!16948))

(assert (= setNonEmpty!16948 b!2148229))

(assert (= (and mapNonEmpty!13544 ((_ is Cons!24568) mapValue!13544)) b!2148228))

(assert (= (and b!2148230 condSetEmpty!16948) setIsEmpty!16948))

(assert (= (and b!2148230 (not condSetEmpty!16948)) setNonEmpty!16947))

(assert (= setNonEmpty!16947 b!2148231))

(assert (= (and mapNonEmpty!13541 ((_ is Cons!24568) mapDefault!13544)) b!2148230))

(declare-fun m!2591395 () Bool)

(assert (=> setNonEmpty!16947 m!2591395))

(declare-fun m!2591397 () Bool)

(assert (=> setNonEmpty!16948 m!2591397))

(declare-fun m!2591399 () Bool)

(assert (=> mapNonEmpty!13544 m!2591399))

(declare-fun setElem!16951 () Context!2802)

(declare-fun setRes!16951 () Bool)

(declare-fun e!1373419 () Bool)

(declare-fun tp!666706 () Bool)

(declare-fun setNonEmpty!16951 () Bool)

(assert (=> setNonEmpty!16951 (= setRes!16951 (and tp!666706 (inv!32337 setElem!16951) e!1373419))))

(declare-fun setRest!16951 () (InoxSet Context!2802))

(assert (=> setNonEmpty!16951 (= (_1!14476 (_1!14477 (h!29969 mapValue!13541))) ((_ map or) (store ((as const (Array Context!2802 Bool)) false) setElem!16951 true) setRest!16951))))

(declare-fun b!2148239 () Bool)

(declare-fun tp!666707 () Bool)

(assert (=> b!2148239 (= e!1373419 tp!666707)))

(declare-fun e!1373420 () Bool)

(assert (=> mapNonEmpty!13541 (= tp!666670 e!1373420)))

(declare-fun b!2148238 () Bool)

(declare-fun tp!666705 () Bool)

(assert (=> b!2148238 (= e!1373420 (and setRes!16951 tp!666705))))

(declare-fun condSetEmpty!16951 () Bool)

(assert (=> b!2148238 (= condSetEmpty!16951 (= (_1!14476 (_1!14477 (h!29969 mapValue!13541))) ((as const (Array Context!2802 Bool)) false)))))

(declare-fun setIsEmpty!16951 () Bool)

(assert (=> setIsEmpty!16951 setRes!16951))

(assert (= (and b!2148238 condSetEmpty!16951) setIsEmpty!16951))

(assert (= (and b!2148238 (not condSetEmpty!16951)) setNonEmpty!16951))

(assert (= setNonEmpty!16951 b!2148239))

(assert (= (and mapNonEmpty!13541 ((_ is Cons!24568) mapValue!13541)) b!2148238))

(declare-fun m!2591401 () Bool)

(assert (=> setNonEmpty!16951 m!2591401))

(declare-fun e!1373421 () Bool)

(declare-fun setElem!16952 () Context!2802)

(declare-fun setRes!16952 () Bool)

(declare-fun setNonEmpty!16952 () Bool)

(declare-fun tp!666709 () Bool)

(assert (=> setNonEmpty!16952 (= setRes!16952 (and tp!666709 (inv!32337 setElem!16952) e!1373421))))

(declare-fun setRest!16952 () (InoxSet Context!2802))

(assert (=> setNonEmpty!16952 (= (_1!14476 (_1!14477 (h!29969 mapDefault!13541))) ((_ map or) (store ((as const (Array Context!2802 Bool)) false) setElem!16952 true) setRest!16952))))

(declare-fun b!2148241 () Bool)

(declare-fun tp!666710 () Bool)

(assert (=> b!2148241 (= e!1373421 tp!666710)))

(declare-fun e!1373422 () Bool)

(assert (=> b!2148201 (= tp!666675 e!1373422)))

(declare-fun b!2148240 () Bool)

(declare-fun tp!666708 () Bool)

(assert (=> b!2148240 (= e!1373422 (and setRes!16952 tp!666708))))

(declare-fun condSetEmpty!16952 () Bool)

(assert (=> b!2148240 (= condSetEmpty!16952 (= (_1!14476 (_1!14477 (h!29969 mapDefault!13541))) ((as const (Array Context!2802 Bool)) false)))))

(declare-fun setIsEmpty!16952 () Bool)

(assert (=> setIsEmpty!16952 setRes!16952))

(assert (= (and b!2148240 condSetEmpty!16952) setIsEmpty!16952))

(assert (= (and b!2148240 (not condSetEmpty!16952)) setNonEmpty!16952))

(assert (= setNonEmpty!16952 b!2148241))

(assert (= (and b!2148201 ((_ is Cons!24568) mapDefault!13541)) b!2148240))

(declare-fun m!2591403 () Bool)

(assert (=> setNonEmpty!16952 m!2591403))

(declare-fun tp!666712 () Bool)

(declare-fun setRes!16953 () Bool)

(declare-fun setNonEmpty!16953 () Bool)

(declare-fun setElem!16953 () Context!2802)

(declare-fun e!1373423 () Bool)

(assert (=> setNonEmpty!16953 (= setRes!16953 (and tp!666712 (inv!32337 setElem!16953) e!1373423))))

(declare-fun setRest!16953 () (InoxSet Context!2802))

(assert (=> setNonEmpty!16953 (= (_1!14476 (_1!14477 (h!29969 (zeroValue!3114 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2802 Bool)) false) setElem!16953 true) setRest!16953))))

(declare-fun b!2148243 () Bool)

(declare-fun tp!666713 () Bool)

(assert (=> b!2148243 (= e!1373423 tp!666713)))

(declare-fun e!1373424 () Bool)

(assert (=> b!2148197 (= tp!666676 e!1373424)))

(declare-fun b!2148242 () Bool)

(declare-fun tp!666711 () Bool)

(assert (=> b!2148242 (= e!1373424 (and setRes!16953 tp!666711))))

(declare-fun condSetEmpty!16953 () Bool)

(assert (=> b!2148242 (= condSetEmpty!16953 (= (_1!14476 (_1!14477 (h!29969 (zeroValue!3114 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))))) ((as const (Array Context!2802 Bool)) false)))))

(declare-fun setIsEmpty!16953 () Bool)

(assert (=> setIsEmpty!16953 setRes!16953))

(assert (= (and b!2148242 condSetEmpty!16953) setIsEmpty!16953))

(assert (= (and b!2148242 (not condSetEmpty!16953)) setNonEmpty!16953))

(assert (= setNonEmpty!16953 b!2148243))

(assert (= (and b!2148197 ((_ is Cons!24568) (zeroValue!3114 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110)))))))) b!2148242))

(declare-fun m!2591405 () Bool)

(assert (=> setNonEmpty!16953 m!2591405))

(declare-fun setNonEmpty!16954 () Bool)

(declare-fun setElem!16954 () Context!2802)

(declare-fun setRes!16954 () Bool)

(declare-fun tp!666715 () Bool)

(declare-fun e!1373425 () Bool)

(assert (=> setNonEmpty!16954 (= setRes!16954 (and tp!666715 (inv!32337 setElem!16954) e!1373425))))

(declare-fun setRest!16954 () (InoxSet Context!2802))

(assert (=> setNonEmpty!16954 (= (_1!14476 (_1!14477 (h!29969 (minValue!3114 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2802 Bool)) false) setElem!16954 true) setRest!16954))))

(declare-fun b!2148245 () Bool)

(declare-fun tp!666716 () Bool)

(assert (=> b!2148245 (= e!1373425 tp!666716)))

(declare-fun e!1373426 () Bool)

(assert (=> b!2148197 (= tp!666674 e!1373426)))

(declare-fun b!2148244 () Bool)

(declare-fun tp!666714 () Bool)

(assert (=> b!2148244 (= e!1373426 (and setRes!16954 tp!666714))))

(declare-fun condSetEmpty!16954 () Bool)

(assert (=> b!2148244 (= condSetEmpty!16954 (= (_1!14476 (_1!14477 (h!29969 (minValue!3114 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110))))))))) ((as const (Array Context!2802 Bool)) false)))))

(declare-fun setIsEmpty!16954 () Bool)

(assert (=> setIsEmpty!16954 setRes!16954))

(assert (= (and b!2148244 condSetEmpty!16954) setIsEmpty!16954))

(assert (= (and b!2148244 (not condSetEmpty!16954)) setNonEmpty!16954))

(assert (= setNonEmpty!16954 b!2148245))

(assert (= (and b!2148197 ((_ is Cons!24568) (minValue!3114 (v!29150 (underlying!5907 (v!29151 (underlying!5908 (cache!3151 thiss!29110)))))))) b!2148244))

(declare-fun m!2591407 () Bool)

(assert (=> setNonEmpty!16954 m!2591407))

(declare-fun tp!666724 () Bool)

(declare-fun b!2148254 () Bool)

(declare-fun e!1373432 () Bool)

(declare-fun tp!666723 () Bool)

(assert (=> b!2148254 (= e!1373432 (and (inv!32338 (left!18855 (c!340967 (totalInput!3213 thiss!29110)))) tp!666724 (inv!32338 (right!19185 (c!340967 (totalInput!3213 thiss!29110)))) tp!666723))))

(declare-fun b!2148256 () Bool)

(declare-fun e!1373431 () Bool)

(declare-fun tp!666725 () Bool)

(assert (=> b!2148256 (= e!1373431 tp!666725)))

(declare-fun b!2148255 () Bool)

(declare-fun inv!32342 (IArray!15939) Bool)

(assert (=> b!2148255 (= e!1373432 (and (inv!32342 (xs!10909 (c!340967 (totalInput!3213 thiss!29110)))) e!1373431))))

(assert (=> b!2148199 (= tp!666669 (and (inv!32338 (c!340967 (totalInput!3213 thiss!29110))) e!1373432))))

(assert (= (and b!2148199 ((_ is Node!7967) (c!340967 (totalInput!3213 thiss!29110)))) b!2148254))

(assert (= b!2148255 b!2148256))

(assert (= (and b!2148199 ((_ is Leaf!11650) (c!340967 (totalInput!3213 thiss!29110)))) b!2148255))

(declare-fun m!2591409 () Bool)

(assert (=> b!2148254 m!2591409))

(declare-fun m!2591411 () Bool)

(assert (=> b!2148254 m!2591411))

(declare-fun m!2591413 () Bool)

(assert (=> b!2148255 m!2591413))

(assert (=> b!2148199 m!2591361))

(declare-fun e!1373434 () Bool)

(declare-fun tp!666726 () Bool)

(declare-fun tp!666727 () Bool)

(declare-fun b!2148257 () Bool)

(assert (=> b!2148257 (= e!1373434 (and (inv!32338 (left!18855 (c!340967 localTotalInput!13))) tp!666727 (inv!32338 (right!19185 (c!340967 localTotalInput!13))) tp!666726))))

(declare-fun b!2148259 () Bool)

(declare-fun e!1373433 () Bool)

(declare-fun tp!666728 () Bool)

(assert (=> b!2148259 (= e!1373433 tp!666728)))

(declare-fun b!2148258 () Bool)

(assert (=> b!2148258 (= e!1373434 (and (inv!32342 (xs!10909 (c!340967 localTotalInput!13))) e!1373433))))

(assert (=> b!2148200 (= tp!666671 (and (inv!32338 (c!340967 localTotalInput!13)) e!1373434))))

(assert (= (and b!2148200 ((_ is Node!7967) (c!340967 localTotalInput!13))) b!2148257))

(assert (= b!2148258 b!2148259))

(assert (= (and b!2148200 ((_ is Leaf!11650) (c!340967 localTotalInput!13))) b!2148258))

(declare-fun m!2591415 () Bool)

(assert (=> b!2148257 m!2591415))

(declare-fun m!2591417 () Bool)

(assert (=> b!2148257 m!2591417))

(declare-fun m!2591419 () Bool)

(assert (=> b!2148258 m!2591419))

(assert (=> b!2148200 m!2591375))

(declare-fun b!2148264 () Bool)

(declare-fun e!1373437 () Bool)

(declare-fun tp!666733 () Bool)

(declare-fun tp!666734 () Bool)

(assert (=> b!2148264 (= e!1373437 (and tp!666733 tp!666734))))

(assert (=> b!2148190 (= tp!666672 e!1373437)))

(assert (= (and b!2148190 ((_ is Cons!24567) (exprs!1901 setElem!16942))) b!2148264))

(declare-fun condSetEmpty!16957 () Bool)

(assert (=> setNonEmpty!16942 (= condSetEmpty!16957 (= setRest!16942 ((as const (Array Context!2802 Bool)) false)))))

(declare-fun setRes!16957 () Bool)

(assert (=> setNonEmpty!16942 (= tp!666673 setRes!16957)))

(declare-fun setIsEmpty!16957 () Bool)

(assert (=> setIsEmpty!16957 setRes!16957))

(declare-fun setNonEmpty!16957 () Bool)

(declare-fun setElem!16957 () Context!2802)

(declare-fun tp!666739 () Bool)

(declare-fun e!1373440 () Bool)

(assert (=> setNonEmpty!16957 (= setRes!16957 (and tp!666739 (inv!32337 setElem!16957) e!1373440))))

(declare-fun setRest!16957 () (InoxSet Context!2802))

(assert (=> setNonEmpty!16957 (= setRest!16942 ((_ map or) (store ((as const (Array Context!2802 Bool)) false) setElem!16957 true) setRest!16957))))

(declare-fun b!2148269 () Bool)

(declare-fun tp!666740 () Bool)

(assert (=> b!2148269 (= e!1373440 tp!666740)))

(assert (= (and setNonEmpty!16942 condSetEmpty!16957) setIsEmpty!16957))

(assert (= (and setNonEmpty!16942 (not condSetEmpty!16957)) setNonEmpty!16957))

(assert (= setNonEmpty!16957 b!2148269))

(declare-fun m!2591421 () Bool)

(assert (=> setNonEmpty!16957 m!2591421))

(check-sat b_and!173009 (not b!2148259) (not b!2148200) (not setNonEmpty!16952) (not b!2148258) (not b!2148264) (not d!645393) (not b!2148228) (not b!2148217) (not b!2148231) (not b!2148230) (not d!645401) (not mapNonEmpty!13544) (not setNonEmpty!16947) (not b!2148239) (not b!2148244) (not b!2148205) (not setNonEmpty!16957) (not setNonEmpty!16948) (not b!2148238) (not setNonEmpty!16953) (not b!2148242) (not b!2148214) (not b_next!64119) (not b!2148254) (not b!2148256) (not b!2148199) b_and!173011 (not b!2148241) (not b!2148212) (not d!645403) (not b_next!64117) (not d!645399) (not b!2148257) (not setNonEmpty!16951) (not b!2148215) (not b!2148229) (not b!2148269) (not b!2148240) (not b!2148243) (not setNonEmpty!16954) (not b!2148255) (not b!2148245))
(check-sat b_and!173009 b_and!173011 (not b_next!64119) (not b_next!64117))
