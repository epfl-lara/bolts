; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209218 () Bool)

(assert start!209218)

(declare-fun b!2156621 () Bool)

(declare-fun b_free!63701 () Bool)

(declare-fun b_next!64405 () Bool)

(assert (=> b!2156621 (= b_free!63701 (not b_next!64405))))

(declare-fun tp!671620 () Bool)

(declare-fun b_and!173317 () Bool)

(assert (=> b!2156621 (= tp!671620 b_and!173317)))

(declare-fun b!2156615 () Bool)

(declare-fun b_free!63703 () Bool)

(declare-fun b_next!64407 () Bool)

(assert (=> b!2156615 (= b_free!63703 (not b_next!64407))))

(declare-fun tp!671619 () Bool)

(declare-fun b_and!173319 () Bool)

(assert (=> b!2156615 (= tp!671619 b_and!173319)))

(declare-fun b!2156623 () Bool)

(assert (=> b!2156623 true))

(declare-fun bs!445888 () Bool)

(declare-fun b!2156617 () Bool)

(assert (= bs!445888 (and b!2156617 b!2156623)))

(declare-fun lambda!81389 () Int)

(declare-fun lambda!81388 () Int)

(assert (=> bs!445888 (not (= lambda!81389 lambda!81388))))

(assert (=> b!2156617 true))

(declare-fun b!2156610 () Bool)

(declare-fun e!1379552 () Bool)

(declare-fun e!1379546 () Bool)

(declare-datatypes ((C!12000 0))(
  ( (C!12001 (val!6986 Int)) )
))
(declare-datatypes ((Regex!5927 0))(
  ( (ElementMatch!5927 (c!341563 C!12000)) (Concat!10229 (regOne!12366 Regex!5927) (regTwo!12366 Regex!5927)) (EmptyExpr!5927) (Star!5927 (reg!6256 Regex!5927)) (EmptyLang!5927) (Union!5927 (regOne!12367 Regex!5927) (regTwo!12367 Regex!5927)) )
))
(declare-datatypes ((List!24980 0))(
  ( (Nil!24896) (Cons!24896 (h!30297 Regex!5927) (t!197528 List!24980)) )
))
(declare-datatypes ((List!24981 0))(
  ( (Nil!24897) (Cons!24897 (h!30298 C!12000) (t!197529 List!24981)) )
))
(declare-datatypes ((IArray!16131 0))(
  ( (IArray!16132 (innerList!8123 List!24981)) )
))
(declare-datatypes ((Conc!8063 0))(
  ( (Node!8063 (left!19165 Conc!8063) (right!19495 Conc!8063) (csize!16356 Int) (cheight!8274 Int)) (Leaf!11794 (xs!11005 IArray!16131) (csize!16357 Int)) (Empty!8063) )
))
(declare-datatypes ((Context!2994 0))(
  ( (Context!2995 (exprs!1997 List!24980)) )
))
(declare-datatypes ((BalanceConc!15888 0))(
  ( (BalanceConc!15889 (c!341564 Conc!8063)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!382 0))(
  ( (StackFrame!383 (z!6003 (InoxSet Context!2994)) (from!2844 Int) (lastNullablePos!531 Int) (res!929609 Int) (totalInput!3365 BalanceConc!15888)) )
))
(declare-datatypes ((List!24982 0))(
  ( (Nil!24898) (Cons!24898 (h!30299 StackFrame!382) (t!197530 List!24982)) )
))
(declare-fun stack!12 () List!24982)

(declare-fun setRes!17704 () Bool)

(declare-fun inv!32923 (BalanceConc!15888) Bool)

(assert (=> b!2156610 (= e!1379552 (and setRes!17704 (inv!32923 (totalInput!3365 (h!30299 stack!12))) e!1379546))))

(declare-fun condSetEmpty!17704 () Bool)

(assert (=> b!2156610 (= condSetEmpty!17704 (= (z!6003 (h!30299 stack!12)) ((as const (Array Context!2994 Bool)) false)))))

(declare-fun setIsEmpty!17704 () Bool)

(assert (=> setIsEmpty!17704 setRes!17704))

(declare-fun b!2156611 () Bool)

(declare-fun e!1379544 () Bool)

(declare-fun e!1379554 () Bool)

(declare-datatypes ((tuple3!3738 0))(
  ( (tuple3!3739 (_1!14637 (InoxSet Context!2994)) (_2!14637 Int) (_3!2339 Int)) )
))
(declare-datatypes ((tuple2!24596 0))(
  ( (tuple2!24597 (_1!14638 tuple3!3738) (_2!14638 Int)) )
))
(declare-datatypes ((List!24983 0))(
  ( (Nil!24899) (Cons!24899 (h!30300 tuple2!24596) (t!197531 List!24983)) )
))
(declare-datatypes ((array!9981 0))(
  ( (array!9982 (arr!4452 (Array (_ BitVec 32) (_ BitVec 64))) (size!19455 (_ BitVec 32))) )
))
(declare-datatypes ((array!9983 0))(
  ( (array!9984 (arr!4453 (Array (_ BitVec 32) List!24983)) (size!19456 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5856 0))(
  ( (LongMapFixedSize!5857 (defaultEntry!3293 Int) (mask!7207 (_ BitVec 32)) (extraKeys!3176 (_ BitVec 32)) (zeroValue!3186 List!24983) (minValue!3186 List!24983) (_size!5907 (_ BitVec 32)) (_keys!3225 array!9981) (_values!3208 array!9983) (_vacant!2989 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11537 0))(
  ( (Cell!11538 (v!29319 LongMapFixedSize!5856)) )
))
(declare-datatypes ((MutLongMap!2928 0))(
  ( (LongMap!2928 (underlying!6051 Cell!11537)) (MutLongMapExt!2927 (__x!16960 Int)) )
))
(declare-fun lt!801625 () MutLongMap!2928)

(get-info :version)

(assert (=> b!2156611 (= e!1379544 (and e!1379554 ((_ is LongMap!2928) lt!801625)))))

(declare-datatypes ((Hashable!2842 0))(
  ( (HashableExt!2841 (__x!16961 Int)) )
))
(declare-datatypes ((Cell!11539 0))(
  ( (Cell!11540 (v!29320 MutLongMap!2928)) )
))
(declare-datatypes ((MutableMap!2842 0))(
  ( (MutableMapExt!2841 (__x!16962 Int)) (HashMap!2842 (underlying!6052 Cell!11539) (hashF!4765 Hashable!2842) (_size!5908 (_ BitVec 32)) (defaultValue!3004 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1042 0))(
  ( (CacheFurthestNullable!1043 (cache!3223 MutableMap!2842) (totalInput!3366 BalanceConc!15888)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1042)

(assert (=> b!2156611 (= lt!801625 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))

(declare-fun b!2156612 () Bool)

(declare-fun e!1379550 () Bool)

(declare-fun tp!671622 () Bool)

(assert (=> b!2156612 (= e!1379550 tp!671622)))

(declare-fun b!2156613 () Bool)

(declare-fun tp!671618 () Bool)

(declare-fun inv!32924 (Conc!8063) Bool)

(assert (=> b!2156613 (= e!1379546 (and (inv!32924 (c!341564 (totalInput!3365 (h!30299 stack!12)))) tp!671618))))

(declare-fun b!2156614 () Bool)

(declare-fun res!929605 () Bool)

(declare-fun e!1379543 () Bool)

(assert (=> b!2156614 (=> (not res!929605) (not e!1379543))))

(declare-fun totalInput!880 () BalanceConc!15888)

(assert (=> b!2156614 (= res!929605 (= (totalInput!3366 cacheFurthestNullable!118) totalInput!880))))

(declare-fun e!1379548 () Bool)

(assert (=> b!2156615 (= e!1379548 (and e!1379544 tp!671619))))

(declare-fun b!2156616 () Bool)

(declare-fun e!1379555 () Bool)

(declare-fun tp!671621 () Bool)

(assert (=> b!2156616 (= e!1379555 (and (inv!32924 (c!341564 totalInput!880)) tp!671621))))

(declare-fun mapIsEmpty!13835 () Bool)

(declare-fun mapRes!13835 () Bool)

(assert (=> mapIsEmpty!13835 mapRes!13835))

(declare-fun res!929606 () Bool)

(assert (=> b!2156617 (=> (not res!929606) (not e!1379543))))

(declare-fun forall!5116 (List!24982 Int) Bool)

(assert (=> b!2156617 (= res!929606 (forall!5116 stack!12 lambda!81389))))

(declare-fun b!2156618 () Bool)

(declare-fun e!1379553 () Bool)

(declare-fun tp!671616 () Bool)

(assert (=> b!2156618 (= e!1379553 (and tp!671616 mapRes!13835))))

(declare-fun condMapEmpty!13835 () Bool)

(declare-fun mapDefault!13835 () List!24983)

(assert (=> b!2156618 (= condMapEmpty!13835 (= (arr!4453 (_values!3208 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24983)) mapDefault!13835)))))

(declare-fun b!2156619 () Bool)

(declare-fun e!1379549 () Bool)

(declare-fun tp!671625 () Bool)

(assert (=> b!2156619 (= e!1379549 (and (inv!32924 (c!341564 (totalInput!3366 cacheFurthestNullable!118))) tp!671625))))

(declare-fun res!929608 () Bool)

(assert (=> start!209218 (=> (not res!929608) (not e!1379543))))

(declare-fun valid!2260 (CacheFurthestNullable!1042) Bool)

(assert (=> start!209218 (= res!929608 (valid!2260 cacheFurthestNullable!118))))

(assert (=> start!209218 e!1379543))

(declare-fun e!1379556 () Bool)

(declare-fun inv!32925 (CacheFurthestNullable!1042) Bool)

(assert (=> start!209218 (and (inv!32925 cacheFurthestNullable!118) e!1379556)))

(assert (=> start!209218 (and (inv!32923 totalInput!880) e!1379555)))

(declare-fun e!1379551 () Bool)

(assert (=> start!209218 e!1379551))

(assert (=> start!209218 true))

(declare-fun setNonEmpty!17704 () Bool)

(declare-fun tp!671615 () Bool)

(declare-fun setElem!17704 () Context!2994)

(declare-fun inv!32926 (Context!2994) Bool)

(assert (=> setNonEmpty!17704 (= setRes!17704 (and tp!671615 (inv!32926 setElem!17704) e!1379550))))

(declare-fun setRest!17704 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17704 (= (z!6003 (h!30299 stack!12)) ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17704 true) setRest!17704))))

(declare-fun b!2156620 () Bool)

(declare-fun e!1379547 () Bool)

(declare-fun e!1379557 () Bool)

(assert (=> b!2156620 (= e!1379547 e!1379557)))

(declare-fun tp!671626 () Bool)

(declare-fun tp!671623 () Bool)

(declare-fun array_inv!3194 (array!9981) Bool)

(declare-fun array_inv!3195 (array!9983) Bool)

(assert (=> b!2156621 (= e!1379557 (and tp!671620 tp!671626 tp!671623 (array_inv!3194 (_keys!3225 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))) (array_inv!3195 (_values!3208 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))) e!1379553))))

(declare-fun b!2156622 () Bool)

(assert (=> b!2156622 (= e!1379554 e!1379547)))

(declare-fun mapNonEmpty!13835 () Bool)

(declare-fun tp!671627 () Bool)

(declare-fun tp!671617 () Bool)

(assert (=> mapNonEmpty!13835 (= mapRes!13835 (and tp!671627 tp!671617))))

(declare-fun mapValue!13835 () List!24983)

(declare-fun mapRest!13835 () (Array (_ BitVec 32) List!24983))

(declare-fun mapKey!13835 () (_ BitVec 32))

(assert (=> mapNonEmpty!13835 (= (arr!4453 (_values!3208 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))) (store mapRest!13835 mapKey!13835 mapValue!13835))))

(declare-fun res!929607 () Bool)

(assert (=> b!2156623 (=> (not res!929607) (not e!1379543))))

(assert (=> b!2156623 (= res!929607 (forall!5116 stack!12 lambda!81388))))

(declare-fun b!2156624 () Bool)

(assert (=> b!2156624 (= e!1379556 (and e!1379548 (inv!32923 (totalInput!3366 cacheFurthestNullable!118)) e!1379549))))

(declare-fun b!2156625 () Bool)

(declare-fun size!19457 (List!24982) Int)

(assert (=> b!2156625 (= e!1379543 (< (size!19457 stack!12) 0))))

(declare-fun b!2156626 () Bool)

(declare-fun tp!671624 () Bool)

(declare-fun inv!32927 (StackFrame!382) Bool)

(assert (=> b!2156626 (= e!1379551 (and (inv!32927 (h!30299 stack!12)) e!1379552 tp!671624))))

(assert (= (and start!209218 res!929608) b!2156614))

(assert (= (and b!2156614 res!929605) b!2156623))

(assert (= (and b!2156623 res!929607) b!2156617))

(assert (= (and b!2156617 res!929606) b!2156625))

(assert (= (and b!2156618 condMapEmpty!13835) mapIsEmpty!13835))

(assert (= (and b!2156618 (not condMapEmpty!13835)) mapNonEmpty!13835))

(assert (= b!2156621 b!2156618))

(assert (= b!2156620 b!2156621))

(assert (= b!2156622 b!2156620))

(assert (= (and b!2156611 ((_ is LongMap!2928) (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))) b!2156622))

(assert (= b!2156615 b!2156611))

(assert (= (and b!2156624 ((_ is HashMap!2842) (cache!3223 cacheFurthestNullable!118))) b!2156615))

(assert (= b!2156624 b!2156619))

(assert (= start!209218 b!2156624))

(assert (= start!209218 b!2156616))

(assert (= (and b!2156610 condSetEmpty!17704) setIsEmpty!17704))

(assert (= (and b!2156610 (not condSetEmpty!17704)) setNonEmpty!17704))

(assert (= setNonEmpty!17704 b!2156612))

(assert (= b!2156610 b!2156613))

(assert (= b!2156626 b!2156610))

(assert (= (and start!209218 ((_ is Cons!24898) stack!12)) b!2156626))

(declare-fun m!2597159 () Bool)

(assert (=> b!2156621 m!2597159))

(declare-fun m!2597161 () Bool)

(assert (=> b!2156621 m!2597161))

(declare-fun m!2597163 () Bool)

(assert (=> b!2156610 m!2597163))

(declare-fun m!2597165 () Bool)

(assert (=> setNonEmpty!17704 m!2597165))

(declare-fun m!2597167 () Bool)

(assert (=> mapNonEmpty!13835 m!2597167))

(declare-fun m!2597169 () Bool)

(assert (=> b!2156623 m!2597169))

(declare-fun m!2597171 () Bool)

(assert (=> b!2156616 m!2597171))

(declare-fun m!2597173 () Bool)

(assert (=> b!2156617 m!2597173))

(declare-fun m!2597175 () Bool)

(assert (=> b!2156613 m!2597175))

(declare-fun m!2597177 () Bool)

(assert (=> start!209218 m!2597177))

(declare-fun m!2597179 () Bool)

(assert (=> start!209218 m!2597179))

(declare-fun m!2597181 () Bool)

(assert (=> start!209218 m!2597181))

(declare-fun m!2597183 () Bool)

(assert (=> b!2156619 m!2597183))

(declare-fun m!2597185 () Bool)

(assert (=> b!2156625 m!2597185))

(declare-fun m!2597187 () Bool)

(assert (=> b!2156626 m!2597187))

(declare-fun m!2597189 () Bool)

(assert (=> b!2156624 m!2597189))

(check-sat (not b_next!64405) (not b!2156618) (not b!2156625) (not b!2156616) (not b_next!64407) (not start!209218) (not b!2156617) (not b!2156612) (not b!2156621) b_and!173317 (not mapNonEmpty!13835) (not b!2156626) b_and!173319 (not b!2156613) (not setNonEmpty!17704) (not b!2156619) (not b!2156610) (not b!2156624) (not b!2156623))
(check-sat b_and!173319 b_and!173317 (not b_next!64407) (not b_next!64405))
(get-model)

(declare-fun d!646445 () Bool)

(declare-fun res!929626 () Bool)

(declare-fun e!1379563 () Bool)

(assert (=> d!646445 (=> (not res!929626) (not e!1379563))))

(assert (=> d!646445 (= res!929626 (>= (from!2844 (h!30299 stack!12)) 0))))

(assert (=> d!646445 (= (inv!32927 (h!30299 stack!12)) e!1379563)))

(declare-fun b!2156643 () Bool)

(declare-fun res!929622 () Bool)

(assert (=> b!2156643 (=> (not res!929622) (not e!1379563))))

(declare-fun size!19458 (BalanceConc!15888) Int)

(assert (=> b!2156643 (= res!929622 (<= (from!2844 (h!30299 stack!12)) (size!19458 (totalInput!3365 (h!30299 stack!12)))))))

(declare-fun b!2156644 () Bool)

(declare-fun res!929625 () Bool)

(assert (=> b!2156644 (=> (not res!929625) (not e!1379563))))

(assert (=> b!2156644 (= res!929625 (and (>= (lastNullablePos!531 (h!30299 stack!12)) (- 1)) (< (lastNullablePos!531 (h!30299 stack!12)) (from!2844 (h!30299 stack!12)))))))

(declare-fun b!2156645 () Bool)

(declare-fun res!929624 () Bool)

(assert (=> b!2156645 (=> (not res!929624) (not e!1379563))))

(declare-fun e!1379562 () Bool)

(assert (=> b!2156645 (= res!929624 e!1379562)))

(declare-fun res!929623 () Bool)

(assert (=> b!2156645 (=> res!929623 e!1379562)))

(declare-fun nullableZipper!225 ((InoxSet Context!2994)) Bool)

(assert (=> b!2156645 (= res!929623 (not (nullableZipper!225 (z!6003 (h!30299 stack!12)))))))

(declare-fun b!2156646 () Bool)

(assert (=> b!2156646 (= e!1379562 (= (lastNullablePos!531 (h!30299 stack!12)) (- (from!2844 (h!30299 stack!12)) 1)))))

(declare-fun b!2156647 () Bool)

(declare-fun res!929627 () Bool)

(assert (=> b!2156647 (=> (not res!929627) (not e!1379563))))

(assert (=> b!2156647 (= res!929627 (= (size!19458 (totalInput!3365 (h!30299 stack!12))) (size!19458 (totalInput!3365 (h!30299 stack!12)))))))

(declare-fun b!2156648 () Bool)

(declare-fun furthestNullablePosition!137 ((InoxSet Context!2994) Int BalanceConc!15888 Int Int) Int)

(assert (=> b!2156648 (= e!1379563 (= (res!929609 (h!30299 stack!12)) (furthestNullablePosition!137 (z!6003 (h!30299 stack!12)) (from!2844 (h!30299 stack!12)) (totalInput!3365 (h!30299 stack!12)) (size!19458 (totalInput!3365 (h!30299 stack!12))) (lastNullablePos!531 (h!30299 stack!12)))))))

(assert (= (and d!646445 res!929626) b!2156643))

(assert (= (and b!2156643 res!929622) b!2156647))

(assert (= (and b!2156647 res!929627) b!2156644))

(assert (= (and b!2156644 res!929625) b!2156645))

(assert (= (and b!2156645 (not res!929623)) b!2156646))

(assert (= (and b!2156645 res!929624) b!2156648))

(declare-fun m!2597191 () Bool)

(assert (=> b!2156643 m!2597191))

(declare-fun m!2597193 () Bool)

(assert (=> b!2156645 m!2597193))

(assert (=> b!2156647 m!2597191))

(assert (=> b!2156648 m!2597191))

(assert (=> b!2156648 m!2597191))

(declare-fun m!2597195 () Bool)

(assert (=> b!2156648 m!2597195))

(assert (=> b!2156626 d!646445))

(declare-fun d!646447 () Bool)

(declare-fun res!929632 () Bool)

(declare-fun e!1379568 () Bool)

(assert (=> d!646447 (=> res!929632 e!1379568)))

(assert (=> d!646447 (= res!929632 ((_ is Nil!24898) stack!12))))

(assert (=> d!646447 (= (forall!5116 stack!12 lambda!81389) e!1379568)))

(declare-fun b!2156653 () Bool)

(declare-fun e!1379569 () Bool)

(assert (=> b!2156653 (= e!1379568 e!1379569)))

(declare-fun res!929633 () Bool)

(assert (=> b!2156653 (=> (not res!929633) (not e!1379569))))

(declare-fun dynLambda!11417 (Int StackFrame!382) Bool)

(assert (=> b!2156653 (= res!929633 (dynLambda!11417 lambda!81389 (h!30299 stack!12)))))

(declare-fun b!2156654 () Bool)

(assert (=> b!2156654 (= e!1379569 (forall!5116 (t!197530 stack!12) lambda!81389))))

(assert (= (and d!646447 (not res!929632)) b!2156653))

(assert (= (and b!2156653 res!929633) b!2156654))

(declare-fun b_lambda!70997 () Bool)

(assert (=> (not b_lambda!70997) (not b!2156653)))

(declare-fun m!2597197 () Bool)

(assert (=> b!2156653 m!2597197))

(declare-fun m!2597199 () Bool)

(assert (=> b!2156654 m!2597199))

(assert (=> b!2156617 d!646447))

(declare-fun d!646449 () Bool)

(declare-fun lt!801628 () Int)

(assert (=> d!646449 (>= lt!801628 0)))

(declare-fun e!1379572 () Int)

(assert (=> d!646449 (= lt!801628 e!1379572)))

(declare-fun c!341567 () Bool)

(assert (=> d!646449 (= c!341567 ((_ is Nil!24898) stack!12))))

(assert (=> d!646449 (= (size!19457 stack!12) lt!801628)))

(declare-fun b!2156659 () Bool)

(assert (=> b!2156659 (= e!1379572 0)))

(declare-fun b!2156660 () Bool)

(assert (=> b!2156660 (= e!1379572 (+ 1 (size!19457 (t!197530 stack!12))))))

(assert (= (and d!646449 c!341567) b!2156659))

(assert (= (and d!646449 (not c!341567)) b!2156660))

(declare-fun m!2597201 () Bool)

(assert (=> b!2156660 m!2597201))

(assert (=> b!2156625 d!646449))

(declare-fun d!646451 () Bool)

(declare-fun res!929634 () Bool)

(declare-fun e!1379573 () Bool)

(assert (=> d!646451 (=> res!929634 e!1379573)))

(assert (=> d!646451 (= res!929634 ((_ is Nil!24898) stack!12))))

(assert (=> d!646451 (= (forall!5116 stack!12 lambda!81388) e!1379573)))

(declare-fun b!2156661 () Bool)

(declare-fun e!1379574 () Bool)

(assert (=> b!2156661 (= e!1379573 e!1379574)))

(declare-fun res!929635 () Bool)

(assert (=> b!2156661 (=> (not res!929635) (not e!1379574))))

(assert (=> b!2156661 (= res!929635 (dynLambda!11417 lambda!81388 (h!30299 stack!12)))))

(declare-fun b!2156662 () Bool)

(assert (=> b!2156662 (= e!1379574 (forall!5116 (t!197530 stack!12) lambda!81388))))

(assert (= (and d!646451 (not res!929634)) b!2156661))

(assert (= (and b!2156661 res!929635) b!2156662))

(declare-fun b_lambda!70999 () Bool)

(assert (=> (not b_lambda!70999) (not b!2156661)))

(declare-fun m!2597203 () Bool)

(assert (=> b!2156661 m!2597203))

(declare-fun m!2597205 () Bool)

(assert (=> b!2156662 m!2597205))

(assert (=> b!2156623 d!646451))

(declare-fun d!646453 () Bool)

(declare-fun isBalanced!2503 (Conc!8063) Bool)

(assert (=> d!646453 (= (inv!32923 (totalInput!3366 cacheFurthestNullable!118)) (isBalanced!2503 (c!341564 (totalInput!3366 cacheFurthestNullable!118))))))

(declare-fun bs!445889 () Bool)

(assert (= bs!445889 d!646453))

(declare-fun m!2597207 () Bool)

(assert (=> bs!445889 m!2597207))

(assert (=> b!2156624 d!646453))

(declare-fun d!646455 () Bool)

(declare-fun c!341570 () Bool)

(assert (=> d!646455 (= c!341570 ((_ is Node!8063) (c!341564 totalInput!880)))))

(declare-fun e!1379579 () Bool)

(assert (=> d!646455 (= (inv!32924 (c!341564 totalInput!880)) e!1379579)))

(declare-fun b!2156669 () Bool)

(declare-fun inv!32928 (Conc!8063) Bool)

(assert (=> b!2156669 (= e!1379579 (inv!32928 (c!341564 totalInput!880)))))

(declare-fun b!2156670 () Bool)

(declare-fun e!1379580 () Bool)

(assert (=> b!2156670 (= e!1379579 e!1379580)))

(declare-fun res!929638 () Bool)

(assert (=> b!2156670 (= res!929638 (not ((_ is Leaf!11794) (c!341564 totalInput!880))))))

(assert (=> b!2156670 (=> res!929638 e!1379580)))

(declare-fun b!2156671 () Bool)

(declare-fun inv!32929 (Conc!8063) Bool)

(assert (=> b!2156671 (= e!1379580 (inv!32929 (c!341564 totalInput!880)))))

(assert (= (and d!646455 c!341570) b!2156669))

(assert (= (and d!646455 (not c!341570)) b!2156670))

(assert (= (and b!2156670 (not res!929638)) b!2156671))

(declare-fun m!2597209 () Bool)

(assert (=> b!2156669 m!2597209))

(declare-fun m!2597211 () Bool)

(assert (=> b!2156671 m!2597211))

(assert (=> b!2156616 d!646455))

(declare-fun d!646457 () Bool)

(declare-fun validCacheMapFurthestNullable!174 (MutableMap!2842 BalanceConc!15888) Bool)

(assert (=> d!646457 (= (valid!2260 cacheFurthestNullable!118) (validCacheMapFurthestNullable!174 (cache!3223 cacheFurthestNullable!118) (totalInput!3366 cacheFurthestNullable!118)))))

(declare-fun bs!445890 () Bool)

(assert (= bs!445890 d!646457))

(declare-fun m!2597213 () Bool)

(assert (=> bs!445890 m!2597213))

(assert (=> start!209218 d!646457))

(declare-fun d!646459 () Bool)

(declare-fun res!929641 () Bool)

(declare-fun e!1379583 () Bool)

(assert (=> d!646459 (=> (not res!929641) (not e!1379583))))

(assert (=> d!646459 (= res!929641 ((_ is HashMap!2842) (cache!3223 cacheFurthestNullable!118)))))

(assert (=> d!646459 (= (inv!32925 cacheFurthestNullable!118) e!1379583)))

(declare-fun b!2156674 () Bool)

(assert (=> b!2156674 (= e!1379583 (validCacheMapFurthestNullable!174 (cache!3223 cacheFurthestNullable!118) (totalInput!3366 cacheFurthestNullable!118)))))

(assert (= (and d!646459 res!929641) b!2156674))

(assert (=> b!2156674 m!2597213))

(assert (=> start!209218 d!646459))

(declare-fun d!646461 () Bool)

(assert (=> d!646461 (= (inv!32923 totalInput!880) (isBalanced!2503 (c!341564 totalInput!880)))))

(declare-fun bs!445891 () Bool)

(assert (= bs!445891 d!646461))

(declare-fun m!2597215 () Bool)

(assert (=> bs!445891 m!2597215))

(assert (=> start!209218 d!646461))

(declare-fun d!646463 () Bool)

(declare-fun c!341571 () Bool)

(assert (=> d!646463 (= c!341571 ((_ is Node!8063) (c!341564 (totalInput!3365 (h!30299 stack!12)))))))

(declare-fun e!1379584 () Bool)

(assert (=> d!646463 (= (inv!32924 (c!341564 (totalInput!3365 (h!30299 stack!12)))) e!1379584)))

(declare-fun b!2156675 () Bool)

(assert (=> b!2156675 (= e!1379584 (inv!32928 (c!341564 (totalInput!3365 (h!30299 stack!12)))))))

(declare-fun b!2156676 () Bool)

(declare-fun e!1379585 () Bool)

(assert (=> b!2156676 (= e!1379584 e!1379585)))

(declare-fun res!929642 () Bool)

(assert (=> b!2156676 (= res!929642 (not ((_ is Leaf!11794) (c!341564 (totalInput!3365 (h!30299 stack!12))))))))

(assert (=> b!2156676 (=> res!929642 e!1379585)))

(declare-fun b!2156677 () Bool)

(assert (=> b!2156677 (= e!1379585 (inv!32929 (c!341564 (totalInput!3365 (h!30299 stack!12)))))))

(assert (= (and d!646463 c!341571) b!2156675))

(assert (= (and d!646463 (not c!341571)) b!2156676))

(assert (= (and b!2156676 (not res!929642)) b!2156677))

(declare-fun m!2597217 () Bool)

(assert (=> b!2156675 m!2597217))

(declare-fun m!2597219 () Bool)

(assert (=> b!2156677 m!2597219))

(assert (=> b!2156613 d!646463))

(declare-fun d!646465 () Bool)

(assert (=> d!646465 (= (array_inv!3194 (_keys!3225 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))) (bvsge (size!19455 (_keys!3225 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2156621 d!646465))

(declare-fun d!646467 () Bool)

(assert (=> d!646467 (= (array_inv!3195 (_values!3208 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))) (bvsge (size!19456 (_values!3208 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2156621 d!646467))

(declare-fun d!646469 () Bool)

(declare-fun lambda!81392 () Int)

(declare-fun forall!5117 (List!24980 Int) Bool)

(assert (=> d!646469 (= (inv!32926 setElem!17704) (forall!5117 (exprs!1997 setElem!17704) lambda!81392))))

(declare-fun bs!445892 () Bool)

(assert (= bs!445892 d!646469))

(declare-fun m!2597221 () Bool)

(assert (=> bs!445892 m!2597221))

(assert (=> setNonEmpty!17704 d!646469))

(declare-fun d!646471 () Bool)

(assert (=> d!646471 (= (inv!32923 (totalInput!3365 (h!30299 stack!12))) (isBalanced!2503 (c!341564 (totalInput!3365 (h!30299 stack!12)))))))

(declare-fun bs!445893 () Bool)

(assert (= bs!445893 d!646471))

(declare-fun m!2597223 () Bool)

(assert (=> bs!445893 m!2597223))

(assert (=> b!2156610 d!646471))

(declare-fun d!646473 () Bool)

(declare-fun c!341572 () Bool)

(assert (=> d!646473 (= c!341572 ((_ is Node!8063) (c!341564 (totalInput!3366 cacheFurthestNullable!118))))))

(declare-fun e!1379586 () Bool)

(assert (=> d!646473 (= (inv!32924 (c!341564 (totalInput!3366 cacheFurthestNullable!118))) e!1379586)))

(declare-fun b!2156678 () Bool)

(assert (=> b!2156678 (= e!1379586 (inv!32928 (c!341564 (totalInput!3366 cacheFurthestNullable!118))))))

(declare-fun b!2156679 () Bool)

(declare-fun e!1379587 () Bool)

(assert (=> b!2156679 (= e!1379586 e!1379587)))

(declare-fun res!929643 () Bool)

(assert (=> b!2156679 (= res!929643 (not ((_ is Leaf!11794) (c!341564 (totalInput!3366 cacheFurthestNullable!118)))))))

(assert (=> b!2156679 (=> res!929643 e!1379587)))

(declare-fun b!2156680 () Bool)

(assert (=> b!2156680 (= e!1379587 (inv!32929 (c!341564 (totalInput!3366 cacheFurthestNullable!118))))))

(assert (= (and d!646473 c!341572) b!2156678))

(assert (= (and d!646473 (not c!341572)) b!2156679))

(assert (= (and b!2156679 (not res!929643)) b!2156680))

(declare-fun m!2597225 () Bool)

(assert (=> b!2156678 m!2597225))

(declare-fun m!2597227 () Bool)

(assert (=> b!2156680 m!2597227))

(assert (=> b!2156619 d!646473))

(declare-fun b!2156691 () Bool)

(declare-fun tp!671639 () Bool)

(declare-fun e!1379598 () Bool)

(declare-fun e!1379596 () Bool)

(assert (=> b!2156691 (= e!1379596 (and (inv!32927 (h!30299 (t!197530 stack!12))) e!1379598 tp!671639))))

(assert (=> b!2156626 (= tp!671624 e!1379596)))

(declare-fun b!2156692 () Bool)

(declare-fun e!1379597 () Bool)

(declare-fun tp!671637 () Bool)

(assert (=> b!2156692 (= e!1379597 tp!671637)))

(declare-fun setRes!17707 () Bool)

(declare-fun e!1379599 () Bool)

(declare-fun b!2156693 () Bool)

(assert (=> b!2156693 (= e!1379598 (and setRes!17707 (inv!32923 (totalInput!3365 (h!30299 (t!197530 stack!12)))) e!1379599))))

(declare-fun condSetEmpty!17707 () Bool)

(assert (=> b!2156693 (= condSetEmpty!17707 (= (z!6003 (h!30299 (t!197530 stack!12))) ((as const (Array Context!2994 Bool)) false)))))

(declare-fun b!2156694 () Bool)

(declare-fun tp!671636 () Bool)

(assert (=> b!2156694 (= e!1379599 (and (inv!32924 (c!341564 (totalInput!3365 (h!30299 (t!197530 stack!12))))) tp!671636))))

(declare-fun setIsEmpty!17707 () Bool)

(assert (=> setIsEmpty!17707 setRes!17707))

(declare-fun tp!671638 () Bool)

(declare-fun setNonEmpty!17707 () Bool)

(declare-fun setElem!17707 () Context!2994)

(assert (=> setNonEmpty!17707 (= setRes!17707 (and tp!671638 (inv!32926 setElem!17707) e!1379597))))

(declare-fun setRest!17707 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17707 (= (z!6003 (h!30299 (t!197530 stack!12))) ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17707 true) setRest!17707))))

(assert (= (and b!2156693 condSetEmpty!17707) setIsEmpty!17707))

(assert (= (and b!2156693 (not condSetEmpty!17707)) setNonEmpty!17707))

(assert (= setNonEmpty!17707 b!2156692))

(assert (= b!2156693 b!2156694))

(assert (= b!2156691 b!2156693))

(assert (= (and b!2156626 ((_ is Cons!24898) (t!197530 stack!12))) b!2156691))

(declare-fun m!2597229 () Bool)

(assert (=> b!2156691 m!2597229))

(declare-fun m!2597231 () Bool)

(assert (=> b!2156693 m!2597231))

(declare-fun m!2597233 () Bool)

(assert (=> b!2156694 m!2597233))

(declare-fun m!2597235 () Bool)

(assert (=> setNonEmpty!17707 m!2597235))

(declare-fun e!1379605 () Bool)

(declare-fun tp!671647 () Bool)

(declare-fun tp!671646 () Bool)

(declare-fun b!2156703 () Bool)

(assert (=> b!2156703 (= e!1379605 (and (inv!32924 (left!19165 (c!341564 (totalInput!3365 (h!30299 stack!12))))) tp!671647 (inv!32924 (right!19495 (c!341564 (totalInput!3365 (h!30299 stack!12))))) tp!671646))))

(declare-fun b!2156705 () Bool)

(declare-fun e!1379604 () Bool)

(declare-fun tp!671648 () Bool)

(assert (=> b!2156705 (= e!1379604 tp!671648)))

(declare-fun b!2156704 () Bool)

(declare-fun inv!32930 (IArray!16131) Bool)

(assert (=> b!2156704 (= e!1379605 (and (inv!32930 (xs!11005 (c!341564 (totalInput!3365 (h!30299 stack!12))))) e!1379604))))

(assert (=> b!2156613 (= tp!671618 (and (inv!32924 (c!341564 (totalInput!3365 (h!30299 stack!12)))) e!1379605))))

(assert (= (and b!2156613 ((_ is Node!8063) (c!341564 (totalInput!3365 (h!30299 stack!12))))) b!2156703))

(assert (= b!2156704 b!2156705))

(assert (= (and b!2156613 ((_ is Leaf!11794) (c!341564 (totalInput!3365 (h!30299 stack!12))))) b!2156704))

(declare-fun m!2597237 () Bool)

(assert (=> b!2156703 m!2597237))

(declare-fun m!2597239 () Bool)

(assert (=> b!2156703 m!2597239))

(declare-fun m!2597241 () Bool)

(assert (=> b!2156704 m!2597241))

(assert (=> b!2156613 m!2597175))

(declare-fun b!2156713 () Bool)

(declare-fun e!1379610 () Bool)

(declare-fun tp!671656 () Bool)

(assert (=> b!2156713 (= e!1379610 tp!671656)))

(declare-fun setIsEmpty!17710 () Bool)

(declare-fun setRes!17710 () Bool)

(assert (=> setIsEmpty!17710 setRes!17710))

(declare-fun e!1379611 () Bool)

(assert (=> b!2156618 (= tp!671616 e!1379611)))

(declare-fun setElem!17710 () Context!2994)

(declare-fun tp!671657 () Bool)

(declare-fun setNonEmpty!17710 () Bool)

(assert (=> setNonEmpty!17710 (= setRes!17710 (and tp!671657 (inv!32926 setElem!17710) e!1379610))))

(declare-fun setRest!17710 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17710 (= (_1!14637 (_1!14638 (h!30300 mapDefault!13835))) ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17710 true) setRest!17710))))

(declare-fun b!2156712 () Bool)

(declare-fun tp!671655 () Bool)

(assert (=> b!2156712 (= e!1379611 (and setRes!17710 tp!671655))))

(declare-fun condSetEmpty!17710 () Bool)

(assert (=> b!2156712 (= condSetEmpty!17710 (= (_1!14637 (_1!14638 (h!30300 mapDefault!13835))) ((as const (Array Context!2994 Bool)) false)))))

(assert (= (and b!2156712 condSetEmpty!17710) setIsEmpty!17710))

(assert (= (and b!2156712 (not condSetEmpty!17710)) setNonEmpty!17710))

(assert (= setNonEmpty!17710 b!2156713))

(assert (= (and b!2156618 ((_ is Cons!24899) mapDefault!13835)) b!2156712))

(declare-fun m!2597243 () Bool)

(assert (=> setNonEmpty!17710 m!2597243))

(declare-fun b!2156715 () Bool)

(declare-fun e!1379612 () Bool)

(declare-fun tp!671659 () Bool)

(assert (=> b!2156715 (= e!1379612 tp!671659)))

(declare-fun setIsEmpty!17711 () Bool)

(declare-fun setRes!17711 () Bool)

(assert (=> setIsEmpty!17711 setRes!17711))

(declare-fun e!1379613 () Bool)

(assert (=> b!2156621 (= tp!671626 e!1379613)))

(declare-fun setNonEmpty!17711 () Bool)

(declare-fun setElem!17711 () Context!2994)

(declare-fun tp!671660 () Bool)

(assert (=> setNonEmpty!17711 (= setRes!17711 (and tp!671660 (inv!32926 setElem!17711) e!1379612))))

(declare-fun setRest!17711 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17711 (= (_1!14637 (_1!14638 (h!30300 (zeroValue!3186 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17711 true) setRest!17711))))

(declare-fun b!2156714 () Bool)

(declare-fun tp!671658 () Bool)

(assert (=> b!2156714 (= e!1379613 (and setRes!17711 tp!671658))))

(declare-fun condSetEmpty!17711 () Bool)

(assert (=> b!2156714 (= condSetEmpty!17711 (= (_1!14637 (_1!14638 (h!30300 (zeroValue!3186 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))))) ((as const (Array Context!2994 Bool)) false)))))

(assert (= (and b!2156714 condSetEmpty!17711) setIsEmpty!17711))

(assert (= (and b!2156714 (not condSetEmpty!17711)) setNonEmpty!17711))

(assert (= setNonEmpty!17711 b!2156715))

(assert (= (and b!2156621 ((_ is Cons!24899) (zeroValue!3186 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118)))))))) b!2156714))

(declare-fun m!2597245 () Bool)

(assert (=> setNonEmpty!17711 m!2597245))

(declare-fun b!2156717 () Bool)

(declare-fun e!1379614 () Bool)

(declare-fun tp!671662 () Bool)

(assert (=> b!2156717 (= e!1379614 tp!671662)))

(declare-fun setIsEmpty!17712 () Bool)

(declare-fun setRes!17712 () Bool)

(assert (=> setIsEmpty!17712 setRes!17712))

(declare-fun e!1379615 () Bool)

(assert (=> b!2156621 (= tp!671623 e!1379615)))

(declare-fun setElem!17712 () Context!2994)

(declare-fun tp!671663 () Bool)

(declare-fun setNonEmpty!17712 () Bool)

(assert (=> setNonEmpty!17712 (= setRes!17712 (and tp!671663 (inv!32926 setElem!17712) e!1379614))))

(declare-fun setRest!17712 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17712 (= (_1!14637 (_1!14638 (h!30300 (minValue!3186 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17712 true) setRest!17712))))

(declare-fun b!2156716 () Bool)

(declare-fun tp!671661 () Bool)

(assert (=> b!2156716 (= e!1379615 (and setRes!17712 tp!671661))))

(declare-fun condSetEmpty!17712 () Bool)

(assert (=> b!2156716 (= condSetEmpty!17712 (= (_1!14637 (_1!14638 (h!30300 (minValue!3186 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118))))))))) ((as const (Array Context!2994 Bool)) false)))))

(assert (= (and b!2156716 condSetEmpty!17712) setIsEmpty!17712))

(assert (= (and b!2156716 (not condSetEmpty!17712)) setNonEmpty!17712))

(assert (= setNonEmpty!17712 b!2156717))

(assert (= (and b!2156621 ((_ is Cons!24899) (minValue!3186 (v!29319 (underlying!6051 (v!29320 (underlying!6052 (cache!3223 cacheFurthestNullable!118)))))))) b!2156716))

(declare-fun m!2597247 () Bool)

(assert (=> setNonEmpty!17712 m!2597247))

(declare-fun b!2156722 () Bool)

(declare-fun e!1379618 () Bool)

(declare-fun tp!671668 () Bool)

(declare-fun tp!671669 () Bool)

(assert (=> b!2156722 (= e!1379618 (and tp!671668 tp!671669))))

(assert (=> b!2156612 (= tp!671622 e!1379618)))

(assert (= (and b!2156612 ((_ is Cons!24896) (exprs!1997 setElem!17704))) b!2156722))

(declare-fun condSetEmpty!17715 () Bool)

(assert (=> setNonEmpty!17704 (= condSetEmpty!17715 (= setRest!17704 ((as const (Array Context!2994 Bool)) false)))))

(declare-fun setRes!17715 () Bool)

(assert (=> setNonEmpty!17704 (= tp!671615 setRes!17715)))

(declare-fun setIsEmpty!17715 () Bool)

(assert (=> setIsEmpty!17715 setRes!17715))

(declare-fun setElem!17715 () Context!2994)

(declare-fun e!1379621 () Bool)

(declare-fun setNonEmpty!17715 () Bool)

(declare-fun tp!671675 () Bool)

(assert (=> setNonEmpty!17715 (= setRes!17715 (and tp!671675 (inv!32926 setElem!17715) e!1379621))))

(declare-fun setRest!17715 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17715 (= setRest!17704 ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17715 true) setRest!17715))))

(declare-fun b!2156727 () Bool)

(declare-fun tp!671674 () Bool)

(assert (=> b!2156727 (= e!1379621 tp!671674)))

(assert (= (and setNonEmpty!17704 condSetEmpty!17715) setIsEmpty!17715))

(assert (= (and setNonEmpty!17704 (not condSetEmpty!17715)) setNonEmpty!17715))

(assert (= setNonEmpty!17715 b!2156727))

(declare-fun m!2597249 () Bool)

(assert (=> setNonEmpty!17715 m!2597249))

(declare-fun e!1379623 () Bool)

(declare-fun tp!671677 () Bool)

(declare-fun b!2156728 () Bool)

(declare-fun tp!671676 () Bool)

(assert (=> b!2156728 (= e!1379623 (and (inv!32924 (left!19165 (c!341564 totalInput!880))) tp!671677 (inv!32924 (right!19495 (c!341564 totalInput!880))) tp!671676))))

(declare-fun b!2156730 () Bool)

(declare-fun e!1379622 () Bool)

(declare-fun tp!671678 () Bool)

(assert (=> b!2156730 (= e!1379622 tp!671678)))

(declare-fun b!2156729 () Bool)

(assert (=> b!2156729 (= e!1379623 (and (inv!32930 (xs!11005 (c!341564 totalInput!880))) e!1379622))))

(assert (=> b!2156616 (= tp!671621 (and (inv!32924 (c!341564 totalInput!880)) e!1379623))))

(assert (= (and b!2156616 ((_ is Node!8063) (c!341564 totalInput!880))) b!2156728))

(assert (= b!2156729 b!2156730))

(assert (= (and b!2156616 ((_ is Leaf!11794) (c!341564 totalInput!880))) b!2156729))

(declare-fun m!2597251 () Bool)

(assert (=> b!2156728 m!2597251))

(declare-fun m!2597253 () Bool)

(assert (=> b!2156728 m!2597253))

(declare-fun m!2597255 () Bool)

(assert (=> b!2156729 m!2597255))

(assert (=> b!2156616 m!2597171))

(declare-fun setNonEmpty!17720 () Bool)

(declare-fun setElem!17720 () Context!2994)

(declare-fun e!1379633 () Bool)

(declare-fun setRes!17720 () Bool)

(declare-fun tp!671698 () Bool)

(assert (=> setNonEmpty!17720 (= setRes!17720 (and tp!671698 (inv!32926 setElem!17720) e!1379633))))

(declare-fun mapDefault!13838 () List!24983)

(declare-fun setRest!17720 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17720 (= (_1!14637 (_1!14638 (h!30300 mapDefault!13838))) ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17720 true) setRest!17720))))

(declare-fun setIsEmpty!17720 () Bool)

(assert (=> setIsEmpty!17720 setRes!17720))

(declare-fun b!2156741 () Bool)

(declare-fun e!1379632 () Bool)

(declare-fun tp!671697 () Bool)

(assert (=> b!2156741 (= e!1379632 (and setRes!17720 tp!671697))))

(declare-fun condSetEmpty!17721 () Bool)

(assert (=> b!2156741 (= condSetEmpty!17721 (= (_1!14637 (_1!14638 (h!30300 mapDefault!13838))) ((as const (Array Context!2994 Bool)) false)))))

(declare-fun b!2156742 () Bool)

(declare-fun e!1379635 () Bool)

(declare-fun setRes!17721 () Bool)

(declare-fun tp!671699 () Bool)

(assert (=> b!2156742 (= e!1379635 (and setRes!17721 tp!671699))))

(declare-fun condSetEmpty!17720 () Bool)

(declare-fun mapValue!13838 () List!24983)

(assert (=> b!2156742 (= condSetEmpty!17720 (= (_1!14637 (_1!14638 (h!30300 mapValue!13838))) ((as const (Array Context!2994 Bool)) false)))))

(declare-fun mapNonEmpty!13838 () Bool)

(declare-fun mapRes!13838 () Bool)

(declare-fun tp!671695 () Bool)

(assert (=> mapNonEmpty!13838 (= mapRes!13838 (and tp!671695 e!1379635))))

(declare-fun mapRest!13838 () (Array (_ BitVec 32) List!24983))

(declare-fun mapKey!13838 () (_ BitVec 32))

(assert (=> mapNonEmpty!13838 (= mapRest!13835 (store mapRest!13838 mapKey!13838 mapValue!13838))))

(declare-fun condMapEmpty!13838 () Bool)

(assert (=> mapNonEmpty!13835 (= condMapEmpty!13838 (= mapRest!13835 ((as const (Array (_ BitVec 32) List!24983)) mapDefault!13838)))))

(assert (=> mapNonEmpty!13835 (= tp!671627 (and e!1379632 mapRes!13838))))

(declare-fun tp!671693 () Bool)

(declare-fun e!1379634 () Bool)

(declare-fun setNonEmpty!17721 () Bool)

(declare-fun setElem!17721 () Context!2994)

(assert (=> setNonEmpty!17721 (= setRes!17721 (and tp!671693 (inv!32926 setElem!17721) e!1379634))))

(declare-fun setRest!17721 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17721 (= (_1!14637 (_1!14638 (h!30300 mapValue!13838))) ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17721 true) setRest!17721))))

(declare-fun mapIsEmpty!13838 () Bool)

(assert (=> mapIsEmpty!13838 mapRes!13838))

(declare-fun setIsEmpty!17721 () Bool)

(assert (=> setIsEmpty!17721 setRes!17721))

(declare-fun b!2156743 () Bool)

(declare-fun tp!671694 () Bool)

(assert (=> b!2156743 (= e!1379633 tp!671694)))

(declare-fun b!2156744 () Bool)

(declare-fun tp!671696 () Bool)

(assert (=> b!2156744 (= e!1379634 tp!671696)))

(assert (= (and mapNonEmpty!13835 condMapEmpty!13838) mapIsEmpty!13838))

(assert (= (and mapNonEmpty!13835 (not condMapEmpty!13838)) mapNonEmpty!13838))

(assert (= (and b!2156742 condSetEmpty!17720) setIsEmpty!17721))

(assert (= (and b!2156742 (not condSetEmpty!17720)) setNonEmpty!17721))

(assert (= setNonEmpty!17721 b!2156744))

(assert (= (and mapNonEmpty!13838 ((_ is Cons!24899) mapValue!13838)) b!2156742))

(assert (= (and b!2156741 condSetEmpty!17721) setIsEmpty!17720))

(assert (= (and b!2156741 (not condSetEmpty!17721)) setNonEmpty!17720))

(assert (= setNonEmpty!17720 b!2156743))

(assert (= (and mapNonEmpty!13835 ((_ is Cons!24899) mapDefault!13838)) b!2156741))

(declare-fun m!2597257 () Bool)

(assert (=> setNonEmpty!17720 m!2597257))

(declare-fun m!2597259 () Bool)

(assert (=> mapNonEmpty!13838 m!2597259))

(declare-fun m!2597261 () Bool)

(assert (=> setNonEmpty!17721 m!2597261))

(declare-fun b!2156746 () Bool)

(declare-fun e!1379636 () Bool)

(declare-fun tp!671701 () Bool)

(assert (=> b!2156746 (= e!1379636 tp!671701)))

(declare-fun setIsEmpty!17722 () Bool)

(declare-fun setRes!17722 () Bool)

(assert (=> setIsEmpty!17722 setRes!17722))

(declare-fun e!1379637 () Bool)

(assert (=> mapNonEmpty!13835 (= tp!671617 e!1379637)))

(declare-fun setNonEmpty!17722 () Bool)

(declare-fun setElem!17722 () Context!2994)

(declare-fun tp!671702 () Bool)

(assert (=> setNonEmpty!17722 (= setRes!17722 (and tp!671702 (inv!32926 setElem!17722) e!1379636))))

(declare-fun setRest!17722 () (InoxSet Context!2994))

(assert (=> setNonEmpty!17722 (= (_1!14637 (_1!14638 (h!30300 mapValue!13835))) ((_ map or) (store ((as const (Array Context!2994 Bool)) false) setElem!17722 true) setRest!17722))))

(declare-fun b!2156745 () Bool)

(declare-fun tp!671700 () Bool)

(assert (=> b!2156745 (= e!1379637 (and setRes!17722 tp!671700))))

(declare-fun condSetEmpty!17722 () Bool)

(assert (=> b!2156745 (= condSetEmpty!17722 (= (_1!14637 (_1!14638 (h!30300 mapValue!13835))) ((as const (Array Context!2994 Bool)) false)))))

(assert (= (and b!2156745 condSetEmpty!17722) setIsEmpty!17722))

(assert (= (and b!2156745 (not condSetEmpty!17722)) setNonEmpty!17722))

(assert (= setNonEmpty!17722 b!2156746))

(assert (= (and mapNonEmpty!13835 ((_ is Cons!24899) mapValue!13835)) b!2156745))

(declare-fun m!2597263 () Bool)

(assert (=> setNonEmpty!17722 m!2597263))

(declare-fun tp!671703 () Bool)

(declare-fun tp!671704 () Bool)

(declare-fun e!1379639 () Bool)

(declare-fun b!2156747 () Bool)

(assert (=> b!2156747 (= e!1379639 (and (inv!32924 (left!19165 (c!341564 (totalInput!3366 cacheFurthestNullable!118)))) tp!671704 (inv!32924 (right!19495 (c!341564 (totalInput!3366 cacheFurthestNullable!118)))) tp!671703))))

(declare-fun b!2156749 () Bool)

(declare-fun e!1379638 () Bool)

(declare-fun tp!671705 () Bool)

(assert (=> b!2156749 (= e!1379638 tp!671705)))

(declare-fun b!2156748 () Bool)

(assert (=> b!2156748 (= e!1379639 (and (inv!32930 (xs!11005 (c!341564 (totalInput!3366 cacheFurthestNullable!118)))) e!1379638))))

(assert (=> b!2156619 (= tp!671625 (and (inv!32924 (c!341564 (totalInput!3366 cacheFurthestNullable!118))) e!1379639))))

(assert (= (and b!2156619 ((_ is Node!8063) (c!341564 (totalInput!3366 cacheFurthestNullable!118)))) b!2156747))

(assert (= b!2156748 b!2156749))

(assert (= (and b!2156619 ((_ is Leaf!11794) (c!341564 (totalInput!3366 cacheFurthestNullable!118)))) b!2156748))

(declare-fun m!2597265 () Bool)

(assert (=> b!2156747 m!2597265))

(declare-fun m!2597267 () Bool)

(assert (=> b!2156747 m!2597267))

(declare-fun m!2597269 () Bool)

(assert (=> b!2156748 m!2597269))

(assert (=> b!2156619 m!2597183))

(declare-fun b_lambda!71001 () Bool)

(assert (= b_lambda!70999 (or b!2156623 b_lambda!71001)))

(declare-fun bs!445894 () Bool)

(declare-fun d!646475 () Bool)

(assert (= bs!445894 (and d!646475 b!2156623)))

(assert (=> bs!445894 (= (dynLambda!11417 lambda!81388 (h!30299 stack!12)) (= (totalInput!3365 (h!30299 stack!12)) totalInput!880))))

(assert (=> b!2156661 d!646475))

(declare-fun b_lambda!71003 () Bool)

(assert (= b_lambda!70997 (or b!2156617 b_lambda!71003)))

(declare-fun bs!445895 () Bool)

(declare-fun d!646477 () Bool)

(assert (= bs!445895 (and d!646477 b!2156617)))

(declare-fun res!17610 () Int)

(assert (=> bs!445895 (= (dynLambda!11417 lambda!81389 (h!30299 stack!12)) (= (res!929609 (h!30299 stack!12)) res!17610))))

(assert (=> b!2156653 d!646477))

(check-sat (not b!2156660) (not b!2156744) (not b!2156730) (not b_lambda!71001) (not b!2156680) (not d!646471) (not d!646469) (not b!2156692) (not b!2156715) (not b!2156694) (not b!2156647) (not b_next!64405) (not b!2156714) (not b!2156728) (not setNonEmpty!17711) (not b!2156703) (not b!2156743) b_and!173317 (not b!2156674) (not setNonEmpty!17712) (not b!2156648) (not b!2156616) (not b!2156746) (not setNonEmpty!17710) b_and!173319 (not b!2156654) (not setNonEmpty!17721) (not b!2156643) (not b!2156671) (not b!2156745) (not b!2156717) (not b_next!64407) (not b!2156716) (not b!2156675) (not mapNonEmpty!13838) (not b!2156704) (not b!2156613) (not b!2156729) (not setNonEmpty!17707) (not setNonEmpty!17720) (not setNonEmpty!17722) (not b!2156693) (not b!2156645) (not b!2156619) (not b!2156669) (not b_lambda!71003) (not b!2156747) (not d!646461) (not b!2156677) (not b!2156713) (not b!2156727) (not b!2156741) (not b!2156705) (not b!2156662) (not b!2156678) (not b!2156749) (not d!646453) (not b!2156742) (not b!2156712) (not d!646457) (not setNonEmpty!17715) (not b!2156691) (not b!2156722) (not b!2156748))
(check-sat b_and!173319 b_and!173317 (not b_next!64407) (not b_next!64405))
