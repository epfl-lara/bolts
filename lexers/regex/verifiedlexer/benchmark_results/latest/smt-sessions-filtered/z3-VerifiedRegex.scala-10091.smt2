; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527962 () Bool)

(assert start!527962)

(declare-fun b!4996842 () Bool)

(declare-fun e!3122509 () Bool)

(declare-fun tp!1401476 () Bool)

(assert (=> b!4996842 (= e!3122509 tp!1401476)))

(declare-fun b!4996843 () Bool)

(declare-fun e!3122508 () Bool)

(declare-fun e!3122512 () Bool)

(assert (=> b!4996843 (= e!3122508 (not e!3122512))))

(declare-fun res!2132339 () Bool)

(assert (=> b!4996843 (=> res!2132339 e!3122512)))

(declare-fun e!3122503 () Bool)

(assert (=> b!4996843 (= res!2132339 e!3122503)))

(declare-fun res!2132341 () Bool)

(assert (=> b!4996843 (=> (not res!2132341) (not e!3122503))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27784 0))(
  ( (C!27785 (val!23258 Int)) )
))
(declare-datatypes ((Regex!13767 0))(
  ( (ElementMatch!13767 (c!852699 C!27784)) (Concat!22560 (regOne!28046 Regex!13767) (regTwo!28046 Regex!13767)) (EmptyExpr!13767) (Star!13767 (reg!14096 Regex!13767)) (EmptyLang!13767) (Union!13767 (regOne!28047 Regex!13767) (regTwo!28047 Regex!13767)) )
))
(declare-datatypes ((List!57905 0))(
  ( (Nil!57781) (Cons!57781 (h!64229 Regex!13767) (t!370245 List!57905)) )
))
(declare-datatypes ((Context!6384 0))(
  ( (Context!6385 (exprs!3692 List!57905)) )
))
(declare-fun z!4183 () (InoxSet Context!6384))

(declare-datatypes ((List!57906 0))(
  ( (Nil!57782) (Cons!57782 (h!64230 C!27784) (t!370246 List!57906)) )
))
(declare-fun lt!2066290 () List!57906)

(declare-fun matchZipper!539 ((InoxSet Context!6384) List!57906) Bool)

(assert (=> b!4996843 (= res!2132341 (not (matchZipper!539 z!4183 lt!2066290)))))

(declare-fun e!3122513 () Bool)

(assert (=> b!4996843 e!3122513))

(declare-fun res!2132345 () Bool)

(assert (=> b!4996843 (=> res!2132345 e!3122513)))

(declare-datatypes ((tuple2!62900 0))(
  ( (tuple2!62901 (_1!34753 List!57906) (_2!34753 List!57906)) )
))
(declare-fun lt!2066286 () tuple2!62900)

(declare-fun isEmpty!31266 (List!57906) Bool)

(assert (=> b!4996843 (= res!2132345 (isEmpty!31266 (_1!34753 lt!2066286)))))

(declare-fun r!12727 () Regex!13767)

(declare-fun lt!2066300 () List!57906)

(declare-fun findLongestMatchInner!1956 (Regex!13767 List!57906 Int List!57906 List!57906 Int) tuple2!62900)

(declare-fun size!38392 (List!57906) Int)

(assert (=> b!4996843 (= lt!2066286 (findLongestMatchInner!1956 r!12727 Nil!57782 (size!38392 Nil!57782) lt!2066300 lt!2066300 (size!38392 lt!2066300)))))

(declare-datatypes ((Unit!148937 0))(
  ( (Unit!148938) )
))
(declare-fun lt!2066289 () Unit!148937)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1913 (Regex!13767 List!57906) Unit!148937)

(assert (=> b!4996843 (= lt!2066289 (longestMatchIsAcceptedByMatchOrIsEmpty!1913 r!12727 lt!2066300))))

(declare-fun e!3122502 () Bool)

(assert (=> b!4996843 e!3122502))

(declare-fun res!2132342 () Bool)

(assert (=> b!4996843 (=> res!2132342 e!3122502)))

(declare-fun lt!2066301 () Int)

(assert (=> b!4996843 (= res!2132342 (= lt!2066301 0))))

(declare-datatypes ((IArray!30633 0))(
  ( (IArray!30634 (innerList!15374 List!57906)) )
))
(declare-datatypes ((Conc!15286 0))(
  ( (Node!15286 (left!42263 Conc!15286) (right!42593 Conc!15286) (csize!30802 Int) (cheight!15497 Int)) (Leaf!25378 (xs!18612 IArray!30633) (csize!30803 Int)) (Empty!15286) )
))
(declare-datatypes ((BalanceConc!30002 0))(
  ( (BalanceConc!30003 (c!852700 Conc!15286)) )
))
(declare-fun totalInput!1012 () BalanceConc!30002)

(declare-fun lt!2066295 () Int)

(declare-fun lt!2066288 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!107 ((InoxSet Context!6384) Int BalanceConc!30002 Int) Int)

(assert (=> b!4996843 (= lt!2066301 (findLongestMatchInnerZipperFastV2!107 z!4183 lt!2066288 totalInput!1012 lt!2066295))))

(declare-fun lt!2066296 () Unit!148937)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!30 ((InoxSet Context!6384) Int BalanceConc!30002) Unit!148937)

(assert (=> b!4996843 (= lt!2066296 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!30 z!4183 lt!2066288 totalInput!1012))))

(declare-fun lt!2066297 () List!57906)

(declare-fun isPrefix!5320 (List!57906 List!57906) Bool)

(declare-fun take!628 (List!57906 Int) List!57906)

(assert (=> b!4996843 (isPrefix!5320 (take!628 lt!2066297 lt!2066288) lt!2066297)))

(declare-fun lt!2066291 () Unit!148937)

(declare-fun lemmaTakeIsPrefix!122 (List!57906 Int) Unit!148937)

(assert (=> b!4996843 (= lt!2066291 (lemmaTakeIsPrefix!122 lt!2066297 lt!2066288))))

(declare-fun lt!2066302 () tuple2!62900)

(declare-fun lt!2066294 () List!57906)

(assert (=> b!4996843 (isPrefix!5320 (_1!34753 lt!2066302) lt!2066294)))

(declare-fun lt!2066292 () Unit!148937)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3418 (List!57906 List!57906) Unit!148937)

(assert (=> b!4996843 (= lt!2066292 (lemmaConcatTwoListThenFirstIsPrefix!3418 (_1!34753 lt!2066302) (_2!34753 lt!2066302)))))

(declare-fun lt!2066287 () List!57906)

(assert (=> b!4996843 (isPrefix!5320 lt!2066290 lt!2066287)))

(declare-fun lt!2066293 () Unit!148937)

(declare-fun lt!2066299 () List!57906)

(assert (=> b!4996843 (= lt!2066293 (lemmaConcatTwoListThenFirstIsPrefix!3418 lt!2066290 lt!2066299))))

(declare-fun tp!1401474 () Bool)

(declare-fun setNonEmpty!28278 () Bool)

(declare-fun setElem!28278 () Context!6384)

(declare-fun setRes!28278 () Bool)

(declare-fun inv!75857 (Context!6384) Bool)

(assert (=> setNonEmpty!28278 (= setRes!28278 (and tp!1401474 (inv!75857 setElem!28278) e!3122509))))

(declare-fun setRest!28278 () (InoxSet Context!6384))

(assert (=> setNonEmpty!28278 (= z!4183 ((_ map or) (store ((as const (Array Context!6384 Bool)) false) setElem!28278 true) setRest!28278))))

(declare-fun b!4996844 () Bool)

(declare-fun e!3122504 () Bool)

(declare-fun input!5597 () BalanceConc!30002)

(declare-fun tp!1401472 () Bool)

(declare-fun inv!75858 (Conc!15286) Bool)

(assert (=> b!4996844 (= e!3122504 (and (inv!75858 (c!852700 input!5597)) tp!1401472))))

(declare-fun b!4996845 () Bool)

(declare-fun e!3122505 () Bool)

(assert (=> b!4996845 (= e!3122505 e!3122508)))

(declare-fun res!2132347 () Bool)

(assert (=> b!4996845 (=> (not res!2132347) (not e!3122508))))

(assert (=> b!4996845 (= res!2132347 (= lt!2066294 lt!2066300))))

(declare-fun ++!12613 (List!57906 List!57906) List!57906)

(assert (=> b!4996845 (= lt!2066294 (++!12613 (_1!34753 lt!2066302) (_2!34753 lt!2066302)))))

(declare-fun b!4996846 () Bool)

(assert (=> b!4996846 (= e!3122512 (isEmpty!31266 (_1!34753 lt!2066302)))))

(declare-fun b!4996847 () Bool)

(declare-fun res!2132346 () Bool)

(declare-fun e!3122506 () Bool)

(assert (=> b!4996847 (=> (not res!2132346) (not e!3122506))))

(declare-datatypes ((List!57907 0))(
  ( (Nil!57783) (Cons!57783 (h!64231 Context!6384) (t!370247 List!57907)) )
))
(declare-fun unfocusZipper!294 (List!57907) Regex!13767)

(declare-fun toList!8052 ((InoxSet Context!6384)) List!57907)

(assert (=> b!4996847 (= res!2132346 (= (unfocusZipper!294 (toList!8052 z!4183)) r!12727))))

(declare-fun b!4996848 () Bool)

(declare-fun e!3122510 () Bool)

(assert (=> b!4996848 (= e!3122506 e!3122510)))

(declare-fun res!2132344 () Bool)

(assert (=> b!4996848 (=> (not res!2132344) (not e!3122510))))

(declare-fun isSuffix!1333 (List!57906 List!57906) Bool)

(assert (=> b!4996848 (= res!2132344 (isSuffix!1333 lt!2066300 lt!2066297))))

(declare-fun list!18578 (BalanceConc!30002) List!57906)

(assert (=> b!4996848 (= lt!2066297 (list!18578 totalInput!1012))))

(assert (=> b!4996848 (= lt!2066300 (list!18578 input!5597))))

(declare-fun res!2132343 () Bool)

(assert (=> start!527962 (=> (not res!2132343) (not e!3122506))))

(declare-fun validRegex!6064 (Regex!13767) Bool)

(assert (=> start!527962 (= res!2132343 (validRegex!6064 r!12727))))

(assert (=> start!527962 e!3122506))

(declare-fun e!3122507 () Bool)

(assert (=> start!527962 e!3122507))

(declare-fun condSetEmpty!28278 () Bool)

(assert (=> start!527962 (= condSetEmpty!28278 (= z!4183 ((as const (Array Context!6384 Bool)) false)))))

(assert (=> start!527962 setRes!28278))

(declare-fun inv!75859 (BalanceConc!30002) Bool)

(assert (=> start!527962 (and (inv!75859 input!5597) e!3122504)))

(declare-fun e!3122511 () Bool)

(assert (=> start!527962 (and (inv!75859 totalInput!1012) e!3122511)))

(declare-fun b!4996849 () Bool)

(declare-fun tp!1401479 () Bool)

(declare-fun tp!1401477 () Bool)

(assert (=> b!4996849 (= e!3122507 (and tp!1401479 tp!1401477))))

(declare-fun b!4996850 () Bool)

(assert (=> b!4996850 (= e!3122510 e!3122505)))

(declare-fun res!2132338 () Bool)

(assert (=> b!4996850 (=> (not res!2132338) (not e!3122505))))

(assert (=> b!4996850 (= res!2132338 (= lt!2066287 lt!2066300))))

(assert (=> b!4996850 (= lt!2066287 (++!12613 lt!2066290 lt!2066299))))

(declare-datatypes ((tuple2!62902 0))(
  ( (tuple2!62903 (_1!34754 BalanceConc!30002) (_2!34754 BalanceConc!30002)) )
))
(declare-fun lt!2066298 () tuple2!62902)

(assert (=> b!4996850 (= lt!2066299 (list!18578 (_2!34754 lt!2066298)))))

(assert (=> b!4996850 (= lt!2066290 (list!18578 (_1!34754 lt!2066298)))))

(declare-fun findLongestMatch!1780 (Regex!13767 List!57906) tuple2!62900)

(assert (=> b!4996850 (= lt!2066302 (findLongestMatch!1780 r!12727 lt!2066300))))

(declare-fun size!38393 (BalanceConc!30002) Int)

(assert (=> b!4996850 (= lt!2066288 (- lt!2066295 (size!38393 input!5597)))))

(assert (=> b!4996850 (= lt!2066295 (size!38393 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!69 ((InoxSet Context!6384) BalanceConc!30002 BalanceConc!30002) tuple2!62902)

(assert (=> b!4996850 (= lt!2066298 (findLongestMatchZipperFastV2!69 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4996851 () Bool)

(declare-fun matchR!6735 (Regex!13767 List!57906) Bool)

(assert (=> b!4996851 (= e!3122513 (matchR!6735 r!12727 (_1!34753 lt!2066286)))))

(declare-fun b!4996852 () Bool)

(declare-fun tp_is_empty!36531 () Bool)

(assert (=> b!4996852 (= e!3122507 tp_is_empty!36531)))

(declare-fun b!4996853 () Bool)

(declare-fun tp!1401480 () Bool)

(declare-fun tp!1401473 () Bool)

(assert (=> b!4996853 (= e!3122507 (and tp!1401480 tp!1401473))))

(declare-fun setIsEmpty!28278 () Bool)

(assert (=> setIsEmpty!28278 setRes!28278))

(declare-fun b!4996854 () Bool)

(declare-fun isEmpty!31267 (BalanceConc!30002) Bool)

(assert (=> b!4996854 (= e!3122503 (not (isEmpty!31267 (_1!34754 lt!2066298))))))

(declare-fun b!4996855 () Bool)

(declare-fun tp!1401475 () Bool)

(assert (=> b!4996855 (= e!3122507 tp!1401475)))

(declare-fun b!4996856 () Bool)

(declare-fun tp!1401478 () Bool)

(assert (=> b!4996856 (= e!3122511 (and (inv!75858 (c!852700 totalInput!1012)) tp!1401478))))

(declare-fun b!4996857 () Bool)

(declare-fun drop!2430 (List!57906 Int) List!57906)

(assert (=> b!4996857 (= e!3122502 (matchZipper!539 z!4183 (take!628 (drop!2430 lt!2066297 lt!2066288) lt!2066301)))))

(declare-fun b!4996858 () Bool)

(declare-fun res!2132340 () Bool)

(assert (=> b!4996858 (=> res!2132340 e!3122512)))

(assert (=> b!4996858 (= res!2132340 (matchR!6735 r!12727 (_1!34753 lt!2066302)))))

(assert (= (and start!527962 res!2132343) b!4996847))

(assert (= (and b!4996847 res!2132346) b!4996848))

(assert (= (and b!4996848 res!2132344) b!4996850))

(assert (= (and b!4996850 res!2132338) b!4996845))

(assert (= (and b!4996845 res!2132347) b!4996843))

(assert (= (and b!4996843 (not res!2132342)) b!4996857))

(assert (= (and b!4996843 (not res!2132345)) b!4996851))

(assert (= (and b!4996843 res!2132341) b!4996854))

(assert (= (and b!4996843 (not res!2132339)) b!4996858))

(assert (= (and b!4996858 (not res!2132340)) b!4996846))

(get-info :version)

(assert (= (and start!527962 ((_ is ElementMatch!13767) r!12727)) b!4996852))

(assert (= (and start!527962 ((_ is Concat!22560) r!12727)) b!4996853))

(assert (= (and start!527962 ((_ is Star!13767) r!12727)) b!4996855))

(assert (= (and start!527962 ((_ is Union!13767) r!12727)) b!4996849))

(assert (= (and start!527962 condSetEmpty!28278) setIsEmpty!28278))

(assert (= (and start!527962 (not condSetEmpty!28278)) setNonEmpty!28278))

(assert (= setNonEmpty!28278 b!4996842))

(assert (= start!527962 b!4996844))

(assert (= start!527962 b!4996856))

(declare-fun m!6029960 () Bool)

(assert (=> setNonEmpty!28278 m!6029960))

(declare-fun m!6029962 () Bool)

(assert (=> b!4996854 m!6029962))

(declare-fun m!6029964 () Bool)

(assert (=> b!4996843 m!6029964))

(declare-fun m!6029966 () Bool)

(assert (=> b!4996843 m!6029966))

(declare-fun m!6029968 () Bool)

(assert (=> b!4996843 m!6029968))

(declare-fun m!6029970 () Bool)

(assert (=> b!4996843 m!6029970))

(declare-fun m!6029972 () Bool)

(assert (=> b!4996843 m!6029972))

(declare-fun m!6029974 () Bool)

(assert (=> b!4996843 m!6029974))

(declare-fun m!6029976 () Bool)

(assert (=> b!4996843 m!6029976))

(declare-fun m!6029978 () Bool)

(assert (=> b!4996843 m!6029978))

(declare-fun m!6029980 () Bool)

(assert (=> b!4996843 m!6029980))

(assert (=> b!4996843 m!6029964))

(assert (=> b!4996843 m!6029976))

(declare-fun m!6029982 () Bool)

(assert (=> b!4996843 m!6029982))

(declare-fun m!6029984 () Bool)

(assert (=> b!4996843 m!6029984))

(declare-fun m!6029986 () Bool)

(assert (=> b!4996843 m!6029986))

(declare-fun m!6029988 () Bool)

(assert (=> b!4996843 m!6029988))

(assert (=> b!4996843 m!6029968))

(declare-fun m!6029990 () Bool)

(assert (=> b!4996843 m!6029990))

(declare-fun m!6029992 () Bool)

(assert (=> b!4996843 m!6029992))

(declare-fun m!6029994 () Bool)

(assert (=> b!4996846 m!6029994))

(declare-fun m!6029996 () Bool)

(assert (=> b!4996847 m!6029996))

(assert (=> b!4996847 m!6029996))

(declare-fun m!6029998 () Bool)

(assert (=> b!4996847 m!6029998))

(declare-fun m!6030000 () Bool)

(assert (=> b!4996850 m!6030000))

(declare-fun m!6030002 () Bool)

(assert (=> b!4996850 m!6030002))

(declare-fun m!6030004 () Bool)

(assert (=> b!4996850 m!6030004))

(declare-fun m!6030006 () Bool)

(assert (=> b!4996850 m!6030006))

(declare-fun m!6030008 () Bool)

(assert (=> b!4996850 m!6030008))

(declare-fun m!6030010 () Bool)

(assert (=> b!4996850 m!6030010))

(declare-fun m!6030012 () Bool)

(assert (=> b!4996850 m!6030012))

(declare-fun m!6030014 () Bool)

(assert (=> b!4996856 m!6030014))

(declare-fun m!6030016 () Bool)

(assert (=> b!4996844 m!6030016))

(declare-fun m!6030018 () Bool)

(assert (=> b!4996845 m!6030018))

(declare-fun m!6030020 () Bool)

(assert (=> start!527962 m!6030020))

(declare-fun m!6030022 () Bool)

(assert (=> start!527962 m!6030022))

(declare-fun m!6030024 () Bool)

(assert (=> start!527962 m!6030024))

(declare-fun m!6030026 () Bool)

(assert (=> b!4996857 m!6030026))

(assert (=> b!4996857 m!6030026))

(declare-fun m!6030028 () Bool)

(assert (=> b!4996857 m!6030028))

(assert (=> b!4996857 m!6030028))

(declare-fun m!6030030 () Bool)

(assert (=> b!4996857 m!6030030))

(declare-fun m!6030032 () Bool)

(assert (=> b!4996848 m!6030032))

(declare-fun m!6030034 () Bool)

(assert (=> b!4996848 m!6030034))

(declare-fun m!6030036 () Bool)

(assert (=> b!4996848 m!6030036))

(declare-fun m!6030038 () Bool)

(assert (=> b!4996851 m!6030038))

(declare-fun m!6030040 () Bool)

(assert (=> b!4996858 m!6030040))

(check-sat (not b!4996857) (not b!4996846) (not b!4996845) (not b!4996842) (not b!4996848) (not b!4996853) (not b!4996856) (not b!4996844) (not b!4996858) (not b!4996854) (not b!4996849) tp_is_empty!36531 (not start!527962) (not b!4996847) (not b!4996850) (not setNonEmpty!28278) (not b!4996851) (not b!4996855) (not b!4996843))
(check-sat)
(get-model)

(declare-fun d!1608872 () Bool)

(declare-fun lambda!248307 () Int)

(declare-fun forall!13349 (List!57905 Int) Bool)

(assert (=> d!1608872 (= (inv!75857 setElem!28278) (forall!13349 (exprs!3692 setElem!28278) lambda!248307))))

(declare-fun bs!1185562 () Bool)

(assert (= bs!1185562 d!1608872))

(declare-fun m!6030278 () Bool)

(assert (=> bs!1185562 m!6030278))

(assert (=> setNonEmpty!28278 d!1608872))

(declare-fun b!4997135 () Bool)

(declare-fun e!3122684 () Bool)

(assert (=> b!4997135 (= e!3122684 (>= (size!38392 lt!2066297) (size!38392 (take!628 lt!2066297 lt!2066288))))))

(declare-fun b!4997132 () Bool)

(declare-fun e!3122686 () Bool)

(declare-fun e!3122685 () Bool)

(assert (=> b!4997132 (= e!3122686 e!3122685)))

(declare-fun res!2132461 () Bool)

(assert (=> b!4997132 (=> (not res!2132461) (not e!3122685))))

(assert (=> b!4997132 (= res!2132461 (not ((_ is Nil!57782) lt!2066297)))))

(declare-fun d!1608940 () Bool)

(assert (=> d!1608940 e!3122684))

(declare-fun res!2132460 () Bool)

(assert (=> d!1608940 (=> res!2132460 e!3122684)))

(declare-fun lt!2066445 () Bool)

(assert (=> d!1608940 (= res!2132460 (not lt!2066445))))

(assert (=> d!1608940 (= lt!2066445 e!3122686)))

(declare-fun res!2132462 () Bool)

(assert (=> d!1608940 (=> res!2132462 e!3122686)))

(assert (=> d!1608940 (= res!2132462 ((_ is Nil!57782) (take!628 lt!2066297 lt!2066288)))))

(assert (=> d!1608940 (= (isPrefix!5320 (take!628 lt!2066297 lt!2066288) lt!2066297) lt!2066445)))

(declare-fun b!4997134 () Bool)

(declare-fun tail!9847 (List!57906) List!57906)

(assert (=> b!4997134 (= e!3122685 (isPrefix!5320 (tail!9847 (take!628 lt!2066297 lt!2066288)) (tail!9847 lt!2066297)))))

(declare-fun b!4997133 () Bool)

(declare-fun res!2132459 () Bool)

(assert (=> b!4997133 (=> (not res!2132459) (not e!3122685))))

(declare-fun head!10714 (List!57906) C!27784)

(assert (=> b!4997133 (= res!2132459 (= (head!10714 (take!628 lt!2066297 lt!2066288)) (head!10714 lt!2066297)))))

(assert (= (and d!1608940 (not res!2132462)) b!4997132))

(assert (= (and b!4997132 res!2132461) b!4997133))

(assert (= (and b!4997133 res!2132459) b!4997134))

(assert (= (and d!1608940 (not res!2132460)) b!4997135))

(declare-fun m!6030280 () Bool)

(assert (=> b!4997135 m!6030280))

(assert (=> b!4997135 m!6029968))

(declare-fun m!6030282 () Bool)

(assert (=> b!4997135 m!6030282))

(assert (=> b!4997134 m!6029968))

(declare-fun m!6030284 () Bool)

(assert (=> b!4997134 m!6030284))

(declare-fun m!6030286 () Bool)

(assert (=> b!4997134 m!6030286))

(assert (=> b!4997134 m!6030284))

(assert (=> b!4997134 m!6030286))

(declare-fun m!6030288 () Bool)

(assert (=> b!4997134 m!6030288))

(assert (=> b!4997133 m!6029968))

(declare-fun m!6030290 () Bool)

(assert (=> b!4997133 m!6030290))

(declare-fun m!6030292 () Bool)

(assert (=> b!4997133 m!6030292))

(assert (=> b!4996843 d!1608940))

(declare-fun d!1608942 () Bool)

(assert (=> d!1608942 (= (isEmpty!31266 (_1!34753 lt!2066286)) ((_ is Nil!57782) (_1!34753 lt!2066286)))))

(assert (=> b!4996843 d!1608942))

(declare-fun b!4997164 () Bool)

(declare-fun e!3122703 () Unit!148937)

(declare-fun Unit!148939 () Unit!148937)

(assert (=> b!4997164 (= e!3122703 Unit!148939)))

(declare-fun bm!348766 () Bool)

(declare-fun call!348775 () List!57906)

(assert (=> bm!348766 (= call!348775 (tail!9847 lt!2066300))))

(declare-fun d!1608944 () Bool)

(declare-fun e!3122706 () Bool)

(assert (=> d!1608944 e!3122706))

(declare-fun res!2132468 () Bool)

(assert (=> d!1608944 (=> (not res!2132468) (not e!3122706))))

(declare-fun lt!2066509 () tuple2!62900)

(assert (=> d!1608944 (= res!2132468 (= (++!12613 (_1!34753 lt!2066509) (_2!34753 lt!2066509)) lt!2066300))))

(declare-fun e!3122709 () tuple2!62900)

(assert (=> d!1608944 (= lt!2066509 e!3122709)))

(declare-fun c!852796 () Bool)

(declare-fun lostCause!1173 (Regex!13767) Bool)

(assert (=> d!1608944 (= c!852796 (lostCause!1173 r!12727))))

(declare-fun lt!2066528 () Unit!148937)

(declare-fun Unit!148940 () Unit!148937)

(assert (=> d!1608944 (= lt!2066528 Unit!148940)))

(declare-fun getSuffix!3129 (List!57906 List!57906) List!57906)

(assert (=> d!1608944 (= (getSuffix!3129 lt!2066300 Nil!57782) lt!2066300)))

(declare-fun lt!2066511 () Unit!148937)

(declare-fun lt!2066523 () Unit!148937)

(assert (=> d!1608944 (= lt!2066511 lt!2066523)))

(declare-fun lt!2066508 () List!57906)

(assert (=> d!1608944 (= lt!2066300 lt!2066508)))

(declare-fun lemmaSamePrefixThenSameSuffix!2543 (List!57906 List!57906 List!57906 List!57906 List!57906) Unit!148937)

(assert (=> d!1608944 (= lt!2066523 (lemmaSamePrefixThenSameSuffix!2543 Nil!57782 lt!2066300 Nil!57782 lt!2066508 lt!2066300))))

(assert (=> d!1608944 (= lt!2066508 (getSuffix!3129 lt!2066300 Nil!57782))))

(declare-fun lt!2066524 () Unit!148937)

(declare-fun lt!2066525 () Unit!148937)

(assert (=> d!1608944 (= lt!2066524 lt!2066525)))

(assert (=> d!1608944 (isPrefix!5320 Nil!57782 (++!12613 Nil!57782 lt!2066300))))

(assert (=> d!1608944 (= lt!2066525 (lemmaConcatTwoListThenFirstIsPrefix!3418 Nil!57782 lt!2066300))))

(assert (=> d!1608944 (validRegex!6064 r!12727)))

(assert (=> d!1608944 (= (findLongestMatchInner!1956 r!12727 Nil!57782 (size!38392 Nil!57782) lt!2066300 lt!2066300 (size!38392 lt!2066300)) lt!2066509)))

(declare-fun bm!348767 () Bool)

(declare-fun call!348778 () Regex!13767)

(declare-fun call!348774 () C!27784)

(declare-fun derivativeStep!3964 (Regex!13767 C!27784) Regex!13767)

(assert (=> bm!348767 (= call!348778 (derivativeStep!3964 r!12727 call!348774))))

(declare-fun b!4997165 () Bool)

(declare-fun c!852795 () Bool)

(declare-fun call!348777 () Bool)

(assert (=> b!4997165 (= c!852795 call!348777)))

(declare-fun lt!2066514 () Unit!148937)

(declare-fun lt!2066510 () Unit!148937)

(assert (=> b!4997165 (= lt!2066514 lt!2066510)))

(assert (=> b!4997165 (= lt!2066300 Nil!57782)))

(declare-fun call!348772 () Unit!148937)

(assert (=> b!4997165 (= lt!2066510 call!348772)))

(declare-fun lt!2066529 () Unit!148937)

(declare-fun lt!2066513 () Unit!148937)

(assert (=> b!4997165 (= lt!2066529 lt!2066513)))

(declare-fun call!348773 () Bool)

(assert (=> b!4997165 call!348773))

(declare-fun call!348771 () Unit!148937)

(assert (=> b!4997165 (= lt!2066513 call!348771)))

(declare-fun e!3122708 () tuple2!62900)

(declare-fun e!3122710 () tuple2!62900)

(assert (=> b!4997165 (= e!3122708 e!3122710)))

(declare-fun b!4997166 () Bool)

(assert (=> b!4997166 (= e!3122710 (tuple2!62901 Nil!57782 Nil!57782))))

(declare-fun b!4997167 () Bool)

(declare-fun e!3122704 () Bool)

(assert (=> b!4997167 (= e!3122706 e!3122704)))

(declare-fun res!2132467 () Bool)

(assert (=> b!4997167 (=> res!2132467 e!3122704)))

(assert (=> b!4997167 (= res!2132467 (isEmpty!31266 (_1!34753 lt!2066509)))))

(declare-fun b!4997168 () Bool)

(declare-fun e!3122707 () tuple2!62900)

(declare-fun lt!2066521 () tuple2!62900)

(assert (=> b!4997168 (= e!3122707 lt!2066521)))

(declare-fun b!4997169 () Bool)

(declare-fun e!3122705 () tuple2!62900)

(assert (=> b!4997169 (= e!3122705 e!3122707)))

(declare-fun call!348776 () tuple2!62900)

(assert (=> b!4997169 (= lt!2066521 call!348776)))

(declare-fun c!852799 () Bool)

(assert (=> b!4997169 (= c!852799 (isEmpty!31266 (_1!34753 lt!2066521)))))

(declare-fun bm!348768 () Bool)

(assert (=> bm!348768 (= call!348773 (isPrefix!5320 lt!2066300 lt!2066300))))

(declare-fun b!4997170 () Bool)

(declare-fun Unit!148941 () Unit!148937)

(assert (=> b!4997170 (= e!3122703 Unit!148941)))

(declare-fun lt!2066506 () Unit!148937)

(assert (=> b!4997170 (= lt!2066506 call!348771)))

(assert (=> b!4997170 call!348773))

(declare-fun lt!2066515 () Unit!148937)

(assert (=> b!4997170 (= lt!2066515 lt!2066506)))

(declare-fun lt!2066512 () Unit!148937)

(assert (=> b!4997170 (= lt!2066512 call!348772)))

(assert (=> b!4997170 (= lt!2066300 Nil!57782)))

(declare-fun lt!2066516 () Unit!148937)

(assert (=> b!4997170 (= lt!2066516 lt!2066512)))

(assert (=> b!4997170 false))

(declare-fun b!4997171 () Bool)

(assert (=> b!4997171 (= e!3122709 e!3122708)))

(declare-fun c!852797 () Bool)

(assert (=> b!4997171 (= c!852797 (= (size!38392 Nil!57782) (size!38392 lt!2066300)))))

(declare-fun lt!2066503 () List!57906)

(declare-fun bm!348769 () Bool)

(assert (=> bm!348769 (= call!348776 (findLongestMatchInner!1956 call!348778 lt!2066503 (+ (size!38392 Nil!57782) 1) call!348775 lt!2066300 (size!38392 lt!2066300)))))

(declare-fun b!4997172 () Bool)

(assert (=> b!4997172 (= e!3122710 (tuple2!62901 Nil!57782 lt!2066300))))

(declare-fun b!4997173 () Bool)

(assert (=> b!4997173 (= e!3122707 (tuple2!62901 Nil!57782 lt!2066300))))

(declare-fun bm!348770 () Bool)

(declare-fun lemmaIsPrefixRefl!3612 (List!57906 List!57906) Unit!148937)

(assert (=> bm!348770 (= call!348771 (lemmaIsPrefixRefl!3612 lt!2066300 lt!2066300))))

(declare-fun bm!348771 () Bool)

(assert (=> bm!348771 (= call!348774 (head!10714 lt!2066300))))

(declare-fun b!4997174 () Bool)

(assert (=> b!4997174 (= e!3122709 (tuple2!62901 Nil!57782 lt!2066300))))

(declare-fun bm!348772 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1256 (List!57906 List!57906 List!57906) Unit!148937)

(assert (=> bm!348772 (= call!348772 (lemmaIsPrefixSameLengthThenSameList!1256 lt!2066300 Nil!57782 lt!2066300))))

(declare-fun b!4997175 () Bool)

(assert (=> b!4997175 (= e!3122705 call!348776)))

(declare-fun b!4997176 () Bool)

(declare-fun c!852794 () Bool)

(assert (=> b!4997176 (= c!852794 call!348777)))

(declare-fun lt!2066518 () Unit!148937)

(declare-fun lt!2066527 () Unit!148937)

(assert (=> b!4997176 (= lt!2066518 lt!2066527)))

(declare-fun lt!2066522 () C!27784)

(declare-fun lt!2066504 () List!57906)

(assert (=> b!4997176 (= (++!12613 (++!12613 Nil!57782 (Cons!57782 lt!2066522 Nil!57782)) lt!2066504) lt!2066300)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1485 (List!57906 C!27784 List!57906 List!57906) Unit!148937)

(assert (=> b!4997176 (= lt!2066527 (lemmaMoveElementToOtherListKeepsConcatEq!1485 Nil!57782 lt!2066522 lt!2066504 lt!2066300))))

(assert (=> b!4997176 (= lt!2066504 (tail!9847 lt!2066300))))

(assert (=> b!4997176 (= lt!2066522 (head!10714 lt!2066300))))

(declare-fun lt!2066505 () Unit!148937)

(declare-fun lt!2066507 () Unit!148937)

(assert (=> b!4997176 (= lt!2066505 lt!2066507)))

(assert (=> b!4997176 (isPrefix!5320 (++!12613 Nil!57782 (Cons!57782 (head!10714 (getSuffix!3129 lt!2066300 Nil!57782)) Nil!57782)) lt!2066300)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!874 (List!57906 List!57906) Unit!148937)

(assert (=> b!4997176 (= lt!2066507 (lemmaAddHeadSuffixToPrefixStillPrefix!874 Nil!57782 lt!2066300))))

(declare-fun lt!2066502 () Unit!148937)

(declare-fun lt!2066526 () Unit!148937)

(assert (=> b!4997176 (= lt!2066502 lt!2066526)))

(assert (=> b!4997176 (= lt!2066526 (lemmaAddHeadSuffixToPrefixStillPrefix!874 Nil!57782 lt!2066300))))

(assert (=> b!4997176 (= lt!2066503 (++!12613 Nil!57782 (Cons!57782 (head!10714 lt!2066300) Nil!57782)))))

(declare-fun lt!2066520 () Unit!148937)

(assert (=> b!4997176 (= lt!2066520 e!3122703)))

(declare-fun c!852798 () Bool)

(assert (=> b!4997176 (= c!852798 (= (size!38392 Nil!57782) (size!38392 lt!2066300)))))

(declare-fun lt!2066519 () Unit!148937)

(declare-fun lt!2066517 () Unit!148937)

(assert (=> b!4997176 (= lt!2066519 lt!2066517)))

(assert (=> b!4997176 (<= (size!38392 Nil!57782) (size!38392 lt!2066300))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!800 (List!57906 List!57906) Unit!148937)

(assert (=> b!4997176 (= lt!2066517 (lemmaIsPrefixThenSmallerEqSize!800 Nil!57782 lt!2066300))))

(assert (=> b!4997176 (= e!3122708 e!3122705)))

(declare-fun bm!348773 () Bool)

(declare-fun nullable!4673 (Regex!13767) Bool)

(assert (=> bm!348773 (= call!348777 (nullable!4673 r!12727))))

(declare-fun b!4997177 () Bool)

(assert (=> b!4997177 (= e!3122704 (>= (size!38392 (_1!34753 lt!2066509)) (size!38392 Nil!57782)))))

(assert (= (and d!1608944 c!852796) b!4997174))

(assert (= (and d!1608944 (not c!852796)) b!4997171))

(assert (= (and b!4997171 c!852797) b!4997165))

(assert (= (and b!4997171 (not c!852797)) b!4997176))

(assert (= (and b!4997165 c!852795) b!4997166))

(assert (= (and b!4997165 (not c!852795)) b!4997172))

(assert (= (and b!4997176 c!852798) b!4997170))

(assert (= (and b!4997176 (not c!852798)) b!4997164))

(assert (= (and b!4997176 c!852794) b!4997169))

(assert (= (and b!4997176 (not c!852794)) b!4997175))

(assert (= (and b!4997169 c!852799) b!4997173))

(assert (= (and b!4997169 (not c!852799)) b!4997168))

(assert (= (or b!4997169 b!4997175) bm!348771))

(assert (= (or b!4997169 b!4997175) bm!348766))

(assert (= (or b!4997169 b!4997175) bm!348767))

(assert (= (or b!4997169 b!4997175) bm!348769))

(assert (= (or b!4997165 b!4997176) bm!348773))

(assert (= (or b!4997165 b!4997170) bm!348768))

(assert (= (or b!4997165 b!4997170) bm!348772))

(assert (= (or b!4997165 b!4997170) bm!348770))

(assert (= (and d!1608944 res!2132468) b!4997167))

(assert (= (and b!4997167 (not res!2132467)) b!4997177))

(declare-fun m!6030294 () Bool)

(assert (=> bm!348772 m!6030294))

(declare-fun m!6030296 () Bool)

(assert (=> d!1608944 m!6030296))

(declare-fun m!6030298 () Bool)

(assert (=> d!1608944 m!6030298))

(declare-fun m!6030300 () Bool)

(assert (=> d!1608944 m!6030300))

(declare-fun m!6030302 () Bool)

(assert (=> d!1608944 m!6030302))

(assert (=> d!1608944 m!6030020))

(declare-fun m!6030304 () Bool)

(assert (=> d!1608944 m!6030304))

(declare-fun m!6030306 () Bool)

(assert (=> d!1608944 m!6030306))

(assert (=> d!1608944 m!6030302))

(declare-fun m!6030308 () Bool)

(assert (=> d!1608944 m!6030308))

(declare-fun m!6030310 () Bool)

(assert (=> bm!348773 m!6030310))

(declare-fun m!6030312 () Bool)

(assert (=> b!4997169 m!6030312))

(declare-fun m!6030314 () Bool)

(assert (=> b!4997176 m!6030314))

(assert (=> b!4997176 m!6029976))

(declare-fun m!6030316 () Bool)

(assert (=> b!4997176 m!6030316))

(assert (=> b!4997176 m!6030304))

(declare-fun m!6030318 () Bool)

(assert (=> b!4997176 m!6030318))

(assert (=> b!4997176 m!6030316))

(declare-fun m!6030320 () Bool)

(assert (=> b!4997176 m!6030320))

(declare-fun m!6030322 () Bool)

(assert (=> b!4997176 m!6030322))

(declare-fun m!6030324 () Bool)

(assert (=> b!4997176 m!6030324))

(assert (=> b!4997176 m!6030324))

(declare-fun m!6030326 () Bool)

(assert (=> b!4997176 m!6030326))

(assert (=> b!4997176 m!6029964))

(declare-fun m!6030328 () Bool)

(assert (=> b!4997176 m!6030328))

(assert (=> b!4997176 m!6030304))

(declare-fun m!6030330 () Bool)

(assert (=> b!4997176 m!6030330))

(declare-fun m!6030332 () Bool)

(assert (=> b!4997176 m!6030332))

(declare-fun m!6030334 () Bool)

(assert (=> b!4997176 m!6030334))

(declare-fun m!6030336 () Bool)

(assert (=> bm!348768 m!6030336))

(assert (=> bm!348771 m!6030334))

(declare-fun m!6030338 () Bool)

(assert (=> bm!348770 m!6030338))

(assert (=> bm!348769 m!6029976))

(declare-fun m!6030340 () Bool)

(assert (=> bm!348769 m!6030340))

(assert (=> bm!348766 m!6030330))

(declare-fun m!6030342 () Bool)

(assert (=> bm!348767 m!6030342))

(declare-fun m!6030344 () Bool)

(assert (=> b!4997177 m!6030344))

(assert (=> b!4997177 m!6029964))

(declare-fun m!6030346 () Bool)

(assert (=> b!4997167 m!6030346))

(assert (=> b!4996843 d!1608944))

(declare-fun d!1608946 () Bool)

(assert (=> d!1608946 (isPrefix!5320 lt!2066290 (++!12613 lt!2066290 lt!2066299))))

(declare-fun lt!2066532 () Unit!148937)

(declare-fun choose!36931 (List!57906 List!57906) Unit!148937)

(assert (=> d!1608946 (= lt!2066532 (choose!36931 lt!2066290 lt!2066299))))

(assert (=> d!1608946 (= (lemmaConcatTwoListThenFirstIsPrefix!3418 lt!2066290 lt!2066299) lt!2066532)))

(declare-fun bs!1185563 () Bool)

(assert (= bs!1185563 d!1608946))

(assert (=> bs!1185563 m!6030000))

(assert (=> bs!1185563 m!6030000))

(declare-fun m!6030348 () Bool)

(assert (=> bs!1185563 m!6030348))

(declare-fun m!6030350 () Bool)

(assert (=> bs!1185563 m!6030350))

(assert (=> b!4996843 d!1608946))

(declare-fun d!1608948 () Bool)

(declare-fun lt!2066535 () Int)

(assert (=> d!1608948 (>= lt!2066535 0)))

(declare-fun e!3122713 () Int)

(assert (=> d!1608948 (= lt!2066535 e!3122713)))

(declare-fun c!852802 () Bool)

(assert (=> d!1608948 (= c!852802 ((_ is Nil!57782) lt!2066300))))

(assert (=> d!1608948 (= (size!38392 lt!2066300) lt!2066535)))

(declare-fun b!4997182 () Bool)

(assert (=> b!4997182 (= e!3122713 0)))

(declare-fun b!4997183 () Bool)

(assert (=> b!4997183 (= e!3122713 (+ 1 (size!38392 (t!370246 lt!2066300))))))

(assert (= (and d!1608948 c!852802) b!4997182))

(assert (= (and d!1608948 (not c!852802)) b!4997183))

(declare-fun m!6030352 () Bool)

(assert (=> b!4997183 m!6030352))

(assert (=> b!4996843 d!1608948))

(declare-fun b!4997198 () Bool)

(declare-fun e!3122725 () Int)

(assert (=> b!4997198 (= e!3122725 lt!2066288)))

(declare-fun d!1608950 () Bool)

(declare-fun e!3122723 () Bool)

(assert (=> d!1608950 e!3122723))

(declare-fun res!2132471 () Bool)

(assert (=> d!1608950 (=> (not res!2132471) (not e!3122723))))

(declare-fun lt!2066538 () List!57906)

(declare-fun content!10220 (List!57906) (InoxSet C!27784))

(assert (=> d!1608950 (= res!2132471 (= ((_ map implies) (content!10220 lt!2066538) (content!10220 lt!2066297)) ((as const (InoxSet C!27784)) true)))))

(declare-fun e!3122724 () List!57906)

(assert (=> d!1608950 (= lt!2066538 e!3122724)))

(declare-fun c!852809 () Bool)

(assert (=> d!1608950 (= c!852809 (or ((_ is Nil!57782) lt!2066297) (<= lt!2066288 0)))))

(assert (=> d!1608950 (= (take!628 lt!2066297 lt!2066288) lt!2066538)))

(declare-fun b!4997199 () Bool)

(declare-fun e!3122722 () Int)

(assert (=> b!4997199 (= e!3122723 (= (size!38392 lt!2066538) e!3122722))))

(declare-fun c!852811 () Bool)

(assert (=> b!4997199 (= c!852811 (<= lt!2066288 0))))

(declare-fun b!4997200 () Bool)

(assert (=> b!4997200 (= e!3122724 Nil!57782)))

(declare-fun b!4997201 () Bool)

(assert (=> b!4997201 (= e!3122725 (size!38392 lt!2066297))))

(declare-fun b!4997202 () Bool)

(assert (=> b!4997202 (= e!3122724 (Cons!57782 (h!64230 lt!2066297) (take!628 (t!370246 lt!2066297) (- lt!2066288 1))))))

(declare-fun b!4997203 () Bool)

(assert (=> b!4997203 (= e!3122722 e!3122725)))

(declare-fun c!852810 () Bool)

(assert (=> b!4997203 (= c!852810 (>= lt!2066288 (size!38392 lt!2066297)))))

(declare-fun b!4997204 () Bool)

(assert (=> b!4997204 (= e!3122722 0)))

(assert (= (and d!1608950 c!852809) b!4997200))

(assert (= (and d!1608950 (not c!852809)) b!4997202))

(assert (= (and d!1608950 res!2132471) b!4997199))

(assert (= (and b!4997199 c!852811) b!4997204))

(assert (= (and b!4997199 (not c!852811)) b!4997203))

(assert (= (and b!4997203 c!852810) b!4997201))

(assert (= (and b!4997203 (not c!852810)) b!4997198))

(declare-fun m!6030354 () Bool)

(assert (=> b!4997199 m!6030354))

(assert (=> b!4997203 m!6030280))

(declare-fun m!6030356 () Bool)

(assert (=> d!1608950 m!6030356))

(declare-fun m!6030358 () Bool)

(assert (=> d!1608950 m!6030358))

(assert (=> b!4997201 m!6030280))

(declare-fun m!6030360 () Bool)

(assert (=> b!4997202 m!6030360))

(assert (=> b!4996843 d!1608950))

(declare-fun d!1608952 () Bool)

(assert (=> d!1608952 (isPrefix!5320 (_1!34753 lt!2066302) (++!12613 (_1!34753 lt!2066302) (_2!34753 lt!2066302)))))

(declare-fun lt!2066539 () Unit!148937)

(assert (=> d!1608952 (= lt!2066539 (choose!36931 (_1!34753 lt!2066302) (_2!34753 lt!2066302)))))

(assert (=> d!1608952 (= (lemmaConcatTwoListThenFirstIsPrefix!3418 (_1!34753 lt!2066302) (_2!34753 lt!2066302)) lt!2066539)))

(declare-fun bs!1185564 () Bool)

(assert (= bs!1185564 d!1608952))

(assert (=> bs!1185564 m!6030018))

(assert (=> bs!1185564 m!6030018))

(declare-fun m!6030362 () Bool)

(assert (=> bs!1185564 m!6030362))

(declare-fun m!6030364 () Bool)

(assert (=> bs!1185564 m!6030364))

(assert (=> b!4996843 d!1608952))

(declare-fun b!4997208 () Bool)

(declare-fun e!3122726 () Bool)

(assert (=> b!4997208 (= e!3122726 (>= (size!38392 lt!2066287) (size!38392 lt!2066290)))))

(declare-fun b!4997205 () Bool)

(declare-fun e!3122728 () Bool)

(declare-fun e!3122727 () Bool)

(assert (=> b!4997205 (= e!3122728 e!3122727)))

(declare-fun res!2132474 () Bool)

(assert (=> b!4997205 (=> (not res!2132474) (not e!3122727))))

(assert (=> b!4997205 (= res!2132474 (not ((_ is Nil!57782) lt!2066287)))))

(declare-fun d!1608954 () Bool)

(assert (=> d!1608954 e!3122726))

(declare-fun res!2132473 () Bool)

(assert (=> d!1608954 (=> res!2132473 e!3122726)))

(declare-fun lt!2066540 () Bool)

(assert (=> d!1608954 (= res!2132473 (not lt!2066540))))

(assert (=> d!1608954 (= lt!2066540 e!3122728)))

(declare-fun res!2132475 () Bool)

(assert (=> d!1608954 (=> res!2132475 e!3122728)))

(assert (=> d!1608954 (= res!2132475 ((_ is Nil!57782) lt!2066290))))

(assert (=> d!1608954 (= (isPrefix!5320 lt!2066290 lt!2066287) lt!2066540)))

(declare-fun b!4997207 () Bool)

(assert (=> b!4997207 (= e!3122727 (isPrefix!5320 (tail!9847 lt!2066290) (tail!9847 lt!2066287)))))

(declare-fun b!4997206 () Bool)

(declare-fun res!2132472 () Bool)

(assert (=> b!4997206 (=> (not res!2132472) (not e!3122727))))

(assert (=> b!4997206 (= res!2132472 (= (head!10714 lt!2066290) (head!10714 lt!2066287)))))

(assert (= (and d!1608954 (not res!2132475)) b!4997205))

(assert (= (and b!4997205 res!2132474) b!4997206))

(assert (= (and b!4997206 res!2132472) b!4997207))

(assert (= (and d!1608954 (not res!2132473)) b!4997208))

(declare-fun m!6030366 () Bool)

(assert (=> b!4997208 m!6030366))

(declare-fun m!6030368 () Bool)

(assert (=> b!4997208 m!6030368))

(declare-fun m!6030370 () Bool)

(assert (=> b!4997207 m!6030370))

(declare-fun m!6030372 () Bool)

(assert (=> b!4997207 m!6030372))

(assert (=> b!4997207 m!6030370))

(assert (=> b!4997207 m!6030372))

(declare-fun m!6030374 () Bool)

(assert (=> b!4997207 m!6030374))

(declare-fun m!6030376 () Bool)

(assert (=> b!4997206 m!6030376))

(declare-fun m!6030378 () Bool)

(assert (=> b!4997206 m!6030378))

(assert (=> b!4996843 d!1608954))

(declare-fun d!1608956 () Bool)

(assert (=> d!1608956 (isPrefix!5320 (take!628 lt!2066297 lt!2066288) lt!2066297)))

(declare-fun lt!2066543 () Unit!148937)

(declare-fun choose!36932 (List!57906 Int) Unit!148937)

(assert (=> d!1608956 (= lt!2066543 (choose!36932 lt!2066297 lt!2066288))))

(assert (=> d!1608956 (>= lt!2066288 0)))

(assert (=> d!1608956 (= (lemmaTakeIsPrefix!122 lt!2066297 lt!2066288) lt!2066543)))

(declare-fun bs!1185565 () Bool)

(assert (= bs!1185565 d!1608956))

(assert (=> bs!1185565 m!6029968))

(assert (=> bs!1185565 m!6029968))

(assert (=> bs!1185565 m!6029990))

(declare-fun m!6030380 () Bool)

(assert (=> bs!1185565 m!6030380))

(assert (=> b!4996843 d!1608956))

(declare-fun d!1608958 () Bool)

(declare-fun lt!2066551 () Int)

(assert (=> d!1608958 (and (>= lt!2066551 0) (<= lt!2066551 (- lt!2066295 lt!2066288)))))

(declare-fun e!3122742 () Int)

(assert (=> d!1608958 (= lt!2066551 e!3122742)))

(declare-fun c!852820 () Bool)

(declare-fun e!3122741 () Bool)

(assert (=> d!1608958 (= c!852820 e!3122741)))

(declare-fun res!2132480 () Bool)

(assert (=> d!1608958 (=> res!2132480 e!3122741)))

(assert (=> d!1608958 (= res!2132480 (= lt!2066288 lt!2066295))))

(declare-fun e!3122739 () Bool)

(assert (=> d!1608958 e!3122739))

(declare-fun res!2132481 () Bool)

(assert (=> d!1608958 (=> (not res!2132481) (not e!3122739))))

(assert (=> d!1608958 (= res!2132481 (>= lt!2066288 0))))

(assert (=> d!1608958 (= (findLongestMatchInnerZipperFastV2!107 z!4183 lt!2066288 totalInput!1012 lt!2066295) lt!2066551)))

(declare-fun b!4997225 () Bool)

(declare-fun e!3122740 () Int)

(assert (=> b!4997225 (= e!3122742 e!3122740)))

(declare-fun lt!2066552 () (InoxSet Context!6384))

(declare-fun derivationStepZipper!619 ((InoxSet Context!6384) C!27784) (InoxSet Context!6384))

(declare-fun apply!13977 (BalanceConc!30002 Int) C!27784)

(assert (=> b!4997225 (= lt!2066552 (derivationStepZipper!619 z!4183 (apply!13977 totalInput!1012 lt!2066288)))))

(declare-fun lt!2066550 () Int)

(assert (=> b!4997225 (= lt!2066550 (findLongestMatchInnerZipperFastV2!107 lt!2066552 (+ lt!2066288 1) totalInput!1012 lt!2066295))))

(declare-fun c!852818 () Bool)

(assert (=> b!4997225 (= c!852818 (> lt!2066550 0))))

(declare-fun b!4997226 () Bool)

(assert (=> b!4997226 (= e!3122740 (+ 1 lt!2066550))))

(declare-fun b!4997227 () Bool)

(declare-fun e!3122743 () Int)

(assert (=> b!4997227 (= e!3122743 1)))

(declare-fun b!4997228 () Bool)

(assert (=> b!4997228 (= e!3122742 0)))

(declare-fun b!4997229 () Bool)

(assert (=> b!4997229 (= e!3122743 0)))

(declare-fun b!4997230 () Bool)

(declare-fun lostCauseZipper!817 ((InoxSet Context!6384)) Bool)

(assert (=> b!4997230 (= e!3122741 (lostCauseZipper!817 z!4183))))

(declare-fun b!4997231 () Bool)

(assert (=> b!4997231 (= e!3122739 (<= lt!2066288 (size!38393 totalInput!1012)))))

(declare-fun b!4997232 () Bool)

(declare-fun c!852819 () Bool)

(declare-fun nullableZipper!870 ((InoxSet Context!6384)) Bool)

(assert (=> b!4997232 (= c!852819 (nullableZipper!870 lt!2066552))))

(assert (=> b!4997232 (= e!3122740 e!3122743)))

(assert (= (and d!1608958 res!2132481) b!4997231))

(assert (= (and d!1608958 (not res!2132480)) b!4997230))

(assert (= (and d!1608958 c!852820) b!4997228))

(assert (= (and d!1608958 (not c!852820)) b!4997225))

(assert (= (and b!4997225 c!852818) b!4997226))

(assert (= (and b!4997225 (not c!852818)) b!4997232))

(assert (= (and b!4997232 c!852819) b!4997227))

(assert (= (and b!4997232 (not c!852819)) b!4997229))

(declare-fun m!6030382 () Bool)

(assert (=> b!4997225 m!6030382))

(assert (=> b!4997225 m!6030382))

(declare-fun m!6030384 () Bool)

(assert (=> b!4997225 m!6030384))

(declare-fun m!6030386 () Bool)

(assert (=> b!4997225 m!6030386))

(declare-fun m!6030388 () Bool)

(assert (=> b!4997230 m!6030388))

(assert (=> b!4997231 m!6030008))

(declare-fun m!6030390 () Bool)

(assert (=> b!4997232 m!6030390))

(assert (=> b!4996843 d!1608958))

(declare-fun d!1608960 () Bool)

(declare-fun e!3122746 () Bool)

(assert (=> d!1608960 e!3122746))

(declare-fun res!2132484 () Bool)

(assert (=> d!1608960 (=> res!2132484 e!3122746)))

(assert (=> d!1608960 (= res!2132484 (isEmpty!31266 (_1!34753 (findLongestMatchInner!1956 r!12727 Nil!57782 (size!38392 Nil!57782) lt!2066300 lt!2066300 (size!38392 lt!2066300)))))))

(declare-fun lt!2066555 () Unit!148937)

(declare-fun choose!36933 (Regex!13767 List!57906) Unit!148937)

(assert (=> d!1608960 (= lt!2066555 (choose!36933 r!12727 lt!2066300))))

(assert (=> d!1608960 (validRegex!6064 r!12727)))

(assert (=> d!1608960 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1913 r!12727 lt!2066300) lt!2066555)))

(declare-fun b!4997235 () Bool)

(assert (=> b!4997235 (= e!3122746 (matchR!6735 r!12727 (_1!34753 (findLongestMatchInner!1956 r!12727 Nil!57782 (size!38392 Nil!57782) lt!2066300 lt!2066300 (size!38392 lt!2066300)))))))

(assert (= (and d!1608960 (not res!2132484)) b!4997235))

(assert (=> d!1608960 m!6030020))

(declare-fun m!6030392 () Bool)

(assert (=> d!1608960 m!6030392))

(assert (=> d!1608960 m!6029964))

(assert (=> d!1608960 m!6029976))

(assert (=> d!1608960 m!6029982))

(assert (=> d!1608960 m!6029976))

(assert (=> d!1608960 m!6029964))

(declare-fun m!6030394 () Bool)

(assert (=> d!1608960 m!6030394))

(assert (=> b!4997235 m!6029964))

(assert (=> b!4997235 m!6029976))

(assert (=> b!4997235 m!6029964))

(assert (=> b!4997235 m!6029976))

(assert (=> b!4997235 m!6029982))

(declare-fun m!6030396 () Bool)

(assert (=> b!4997235 m!6030396))

(assert (=> b!4996843 d!1608960))

(declare-fun d!1608962 () Bool)

(declare-fun lt!2066556 () Int)

(assert (=> d!1608962 (>= lt!2066556 0)))

(declare-fun e!3122747 () Int)

(assert (=> d!1608962 (= lt!2066556 e!3122747)))

(declare-fun c!852821 () Bool)

(assert (=> d!1608962 (= c!852821 ((_ is Nil!57782) Nil!57782))))

(assert (=> d!1608962 (= (size!38392 Nil!57782) lt!2066556)))

(declare-fun b!4997236 () Bool)

(assert (=> b!4997236 (= e!3122747 0)))

(declare-fun b!4997237 () Bool)

(assert (=> b!4997237 (= e!3122747 (+ 1 (size!38392 (t!370246 Nil!57782))))))

(assert (= (and d!1608962 c!852821) b!4997236))

(assert (= (and d!1608962 (not c!852821)) b!4997237))

(declare-fun m!6030398 () Bool)

(assert (=> b!4997237 m!6030398))

(assert (=> b!4996843 d!1608962))

(declare-fun b!4997241 () Bool)

(declare-fun e!3122748 () Bool)

(assert (=> b!4997241 (= e!3122748 (>= (size!38392 lt!2066294) (size!38392 (_1!34753 lt!2066302))))))

(declare-fun b!4997238 () Bool)

(declare-fun e!3122750 () Bool)

(declare-fun e!3122749 () Bool)

(assert (=> b!4997238 (= e!3122750 e!3122749)))

(declare-fun res!2132487 () Bool)

(assert (=> b!4997238 (=> (not res!2132487) (not e!3122749))))

(assert (=> b!4997238 (= res!2132487 (not ((_ is Nil!57782) lt!2066294)))))

(declare-fun d!1608964 () Bool)

(assert (=> d!1608964 e!3122748))

(declare-fun res!2132486 () Bool)

(assert (=> d!1608964 (=> res!2132486 e!3122748)))

(declare-fun lt!2066557 () Bool)

(assert (=> d!1608964 (= res!2132486 (not lt!2066557))))

(assert (=> d!1608964 (= lt!2066557 e!3122750)))

(declare-fun res!2132488 () Bool)

(assert (=> d!1608964 (=> res!2132488 e!3122750)))

(assert (=> d!1608964 (= res!2132488 ((_ is Nil!57782) (_1!34753 lt!2066302)))))

(assert (=> d!1608964 (= (isPrefix!5320 (_1!34753 lt!2066302) lt!2066294) lt!2066557)))

(declare-fun b!4997240 () Bool)

(assert (=> b!4997240 (= e!3122749 (isPrefix!5320 (tail!9847 (_1!34753 lt!2066302)) (tail!9847 lt!2066294)))))

(declare-fun b!4997239 () Bool)

(declare-fun res!2132485 () Bool)

(assert (=> b!4997239 (=> (not res!2132485) (not e!3122749))))

(assert (=> b!4997239 (= res!2132485 (= (head!10714 (_1!34753 lt!2066302)) (head!10714 lt!2066294)))))

(assert (= (and d!1608964 (not res!2132488)) b!4997238))

(assert (= (and b!4997238 res!2132487) b!4997239))

(assert (= (and b!4997239 res!2132485) b!4997240))

(assert (= (and d!1608964 (not res!2132486)) b!4997241))

(declare-fun m!6030400 () Bool)

(assert (=> b!4997241 m!6030400))

(declare-fun m!6030402 () Bool)

(assert (=> b!4997241 m!6030402))

(declare-fun m!6030404 () Bool)

(assert (=> b!4997240 m!6030404))

(declare-fun m!6030406 () Bool)

(assert (=> b!4997240 m!6030406))

(assert (=> b!4997240 m!6030404))

(assert (=> b!4997240 m!6030406))

(declare-fun m!6030408 () Bool)

(assert (=> b!4997240 m!6030408))

(declare-fun m!6030410 () Bool)

(assert (=> b!4997239 m!6030410))

(declare-fun m!6030412 () Bool)

(assert (=> b!4997239 m!6030412))

(assert (=> b!4996843 d!1608964))

(declare-fun d!1608966 () Bool)

(declare-fun e!3122755 () Bool)

(assert (=> d!1608966 e!3122755))

(declare-fun res!2132494 () Bool)

(assert (=> d!1608966 (=> res!2132494 e!3122755)))

(assert (=> d!1608966 (= res!2132494 (= (findLongestMatchInnerZipperFastV2!107 z!4183 lt!2066288 totalInput!1012 (size!38393 totalInput!1012)) 0))))

(declare-fun lt!2066560 () Unit!148937)

(declare-fun choose!36934 ((InoxSet Context!6384) Int BalanceConc!30002) Unit!148937)

(assert (=> d!1608966 (= lt!2066560 (choose!36934 z!4183 lt!2066288 totalInput!1012))))

(declare-fun e!3122756 () Bool)

(assert (=> d!1608966 e!3122756))

(declare-fun res!2132493 () Bool)

(assert (=> d!1608966 (=> (not res!2132493) (not e!3122756))))

(assert (=> d!1608966 (= res!2132493 (>= lt!2066288 0))))

(assert (=> d!1608966 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!30 z!4183 lt!2066288 totalInput!1012) lt!2066560)))

(declare-fun b!4997246 () Bool)

(assert (=> b!4997246 (= e!3122756 (<= lt!2066288 (size!38393 totalInput!1012)))))

(declare-fun b!4997247 () Bool)

(assert (=> b!4997247 (= e!3122755 (matchZipper!539 z!4183 (take!628 (drop!2430 (list!18578 totalInput!1012) lt!2066288) (findLongestMatchInnerZipperFastV2!107 z!4183 lt!2066288 totalInput!1012 (size!38393 totalInput!1012)))))))

(assert (= (and d!1608966 res!2132493) b!4997246))

(assert (= (and d!1608966 (not res!2132494)) b!4997247))

(assert (=> d!1608966 m!6030008))

(assert (=> d!1608966 m!6030008))

(declare-fun m!6030414 () Bool)

(assert (=> d!1608966 m!6030414))

(declare-fun m!6030416 () Bool)

(assert (=> d!1608966 m!6030416))

(assert (=> b!4997246 m!6030008))

(assert (=> b!4997247 m!6030008))

(assert (=> b!4997247 m!6030008))

(assert (=> b!4997247 m!6030414))

(declare-fun m!6030418 () Bool)

(assert (=> b!4997247 m!6030418))

(declare-fun m!6030420 () Bool)

(assert (=> b!4997247 m!6030420))

(assert (=> b!4997247 m!6030034))

(assert (=> b!4997247 m!6030034))

(declare-fun m!6030422 () Bool)

(assert (=> b!4997247 m!6030422))

(assert (=> b!4997247 m!6030422))

(assert (=> b!4997247 m!6030414))

(assert (=> b!4997247 m!6030418))

(assert (=> b!4996843 d!1608966))

(declare-fun d!1608968 () Bool)

(declare-fun c!852824 () Bool)

(assert (=> d!1608968 (= c!852824 (isEmpty!31266 lt!2066290))))

(declare-fun e!3122759 () Bool)

(assert (=> d!1608968 (= (matchZipper!539 z!4183 lt!2066290) e!3122759)))

(declare-fun b!4997252 () Bool)

(assert (=> b!4997252 (= e!3122759 (nullableZipper!870 z!4183))))

(declare-fun b!4997253 () Bool)

(assert (=> b!4997253 (= e!3122759 (matchZipper!539 (derivationStepZipper!619 z!4183 (head!10714 lt!2066290)) (tail!9847 lt!2066290)))))

(assert (= (and d!1608968 c!852824) b!4997252))

(assert (= (and d!1608968 (not c!852824)) b!4997253))

(declare-fun m!6030424 () Bool)

(assert (=> d!1608968 m!6030424))

(declare-fun m!6030426 () Bool)

(assert (=> b!4997252 m!6030426))

(assert (=> b!4997253 m!6030376))

(assert (=> b!4997253 m!6030376))

(declare-fun m!6030428 () Bool)

(assert (=> b!4997253 m!6030428))

(assert (=> b!4997253 m!6030370))

(assert (=> b!4997253 m!6030428))

(assert (=> b!4997253 m!6030370))

(declare-fun m!6030430 () Bool)

(assert (=> b!4997253 m!6030430))

(assert (=> b!4996843 d!1608968))

(declare-fun b!4997282 () Bool)

(declare-fun e!3122778 () Bool)

(declare-fun e!3122777 () Bool)

(assert (=> b!4997282 (= e!3122778 e!3122777)))

(declare-fun res!2132516 () Bool)

(assert (=> b!4997282 (=> res!2132516 e!3122777)))

(declare-fun call!348781 () Bool)

(assert (=> b!4997282 (= res!2132516 call!348781)))

(declare-fun bm!348776 () Bool)

(assert (=> bm!348776 (= call!348781 (isEmpty!31266 (_1!34753 lt!2066286)))))

(declare-fun b!4997283 () Bool)

(declare-fun res!2132511 () Bool)

(declare-fun e!3122780 () Bool)

(assert (=> b!4997283 (=> res!2132511 e!3122780)))

(assert (=> b!4997283 (= res!2132511 (not ((_ is ElementMatch!13767) r!12727)))))

(declare-fun e!3122775 () Bool)

(assert (=> b!4997283 (= e!3122775 e!3122780)))

(declare-fun b!4997284 () Bool)

(declare-fun res!2132515 () Bool)

(declare-fun e!3122774 () Bool)

(assert (=> b!4997284 (=> (not res!2132515) (not e!3122774))))

(assert (=> b!4997284 (= res!2132515 (not call!348781))))

(declare-fun b!4997285 () Bool)

(declare-fun e!3122779 () Bool)

(declare-fun lt!2066563 () Bool)

(assert (=> b!4997285 (= e!3122779 (= lt!2066563 call!348781))))

(declare-fun b!4997286 () Bool)

(declare-fun res!2132512 () Bool)

(assert (=> b!4997286 (=> (not res!2132512) (not e!3122774))))

(assert (=> b!4997286 (= res!2132512 (isEmpty!31266 (tail!9847 (_1!34753 lt!2066286))))))

(declare-fun b!4997287 () Bool)

(assert (=> b!4997287 (= e!3122774 (= (head!10714 (_1!34753 lt!2066286)) (c!852699 r!12727)))))

(declare-fun b!4997288 () Bool)

(assert (=> b!4997288 (= e!3122775 (not lt!2066563))))

(declare-fun b!4997289 () Bool)

(assert (=> b!4997289 (= e!3122777 (not (= (head!10714 (_1!34753 lt!2066286)) (c!852699 r!12727))))))

(declare-fun d!1608970 () Bool)

(assert (=> d!1608970 e!3122779))

(declare-fun c!852831 () Bool)

(assert (=> d!1608970 (= c!852831 ((_ is EmptyExpr!13767) r!12727))))

(declare-fun e!3122776 () Bool)

(assert (=> d!1608970 (= lt!2066563 e!3122776)))

(declare-fun c!852832 () Bool)

(assert (=> d!1608970 (= c!852832 (isEmpty!31266 (_1!34753 lt!2066286)))))

(assert (=> d!1608970 (validRegex!6064 r!12727)))

(assert (=> d!1608970 (= (matchR!6735 r!12727 (_1!34753 lt!2066286)) lt!2066563)))

(declare-fun b!4997290 () Bool)

(assert (=> b!4997290 (= e!3122779 e!3122775)))

(declare-fun c!852833 () Bool)

(assert (=> b!4997290 (= c!852833 ((_ is EmptyLang!13767) r!12727))))

(declare-fun b!4997291 () Bool)

(assert (=> b!4997291 (= e!3122776 (nullable!4673 r!12727))))

(declare-fun b!4997292 () Bool)

(declare-fun res!2132514 () Bool)

(assert (=> b!4997292 (=> res!2132514 e!3122780)))

(assert (=> b!4997292 (= res!2132514 e!3122774)))

(declare-fun res!2132513 () Bool)

(assert (=> b!4997292 (=> (not res!2132513) (not e!3122774))))

(assert (=> b!4997292 (= res!2132513 lt!2066563)))

(declare-fun b!4997293 () Bool)

(declare-fun res!2132518 () Bool)

(assert (=> b!4997293 (=> res!2132518 e!3122777)))

(assert (=> b!4997293 (= res!2132518 (not (isEmpty!31266 (tail!9847 (_1!34753 lt!2066286)))))))

(declare-fun b!4997294 () Bool)

(assert (=> b!4997294 (= e!3122776 (matchR!6735 (derivativeStep!3964 r!12727 (head!10714 (_1!34753 lt!2066286))) (tail!9847 (_1!34753 lt!2066286))))))

(declare-fun b!4997295 () Bool)

(assert (=> b!4997295 (= e!3122780 e!3122778)))

(declare-fun res!2132517 () Bool)

(assert (=> b!4997295 (=> (not res!2132517) (not e!3122778))))

(assert (=> b!4997295 (= res!2132517 (not lt!2066563))))

(assert (= (and d!1608970 c!852832) b!4997291))

(assert (= (and d!1608970 (not c!852832)) b!4997294))

(assert (= (and d!1608970 c!852831) b!4997285))

(assert (= (and d!1608970 (not c!852831)) b!4997290))

(assert (= (and b!4997290 c!852833) b!4997288))

(assert (= (and b!4997290 (not c!852833)) b!4997283))

(assert (= (and b!4997283 (not res!2132511)) b!4997292))

(assert (= (and b!4997292 res!2132513) b!4997284))

(assert (= (and b!4997284 res!2132515) b!4997286))

(assert (= (and b!4997286 res!2132512) b!4997287))

(assert (= (and b!4997292 (not res!2132514)) b!4997295))

(assert (= (and b!4997295 res!2132517) b!4997282))

(assert (= (and b!4997282 (not res!2132516)) b!4997293))

(assert (= (and b!4997293 (not res!2132518)) b!4997289))

(assert (= (or b!4997285 b!4997282 b!4997284) bm!348776))

(assert (=> b!4997291 m!6030310))

(declare-fun m!6030434 () Bool)

(assert (=> b!4997293 m!6030434))

(assert (=> b!4997293 m!6030434))

(declare-fun m!6030436 () Bool)

(assert (=> b!4997293 m!6030436))

(assert (=> b!4997286 m!6030434))

(assert (=> b!4997286 m!6030434))

(assert (=> b!4997286 m!6030436))

(assert (=> d!1608970 m!6029970))

(assert (=> d!1608970 m!6030020))

(declare-fun m!6030438 () Bool)

(assert (=> b!4997289 m!6030438))

(assert (=> b!4997287 m!6030438))

(assert (=> bm!348776 m!6029970))

(assert (=> b!4997294 m!6030438))

(assert (=> b!4997294 m!6030438))

(declare-fun m!6030440 () Bool)

(assert (=> b!4997294 m!6030440))

(assert (=> b!4997294 m!6030434))

(assert (=> b!4997294 m!6030440))

(assert (=> b!4997294 m!6030434))

(declare-fun m!6030442 () Bool)

(assert (=> b!4997294 m!6030442))

(assert (=> b!4996851 d!1608970))

(declare-fun d!1608974 () Bool)

(declare-fun list!18580 (Conc!15286) List!57906)

(assert (=> d!1608974 (= (list!18578 (_1!34754 lt!2066298)) (list!18580 (c!852700 (_1!34754 lt!2066298))))))

(declare-fun bs!1185567 () Bool)

(assert (= bs!1185567 d!1608974))

(declare-fun m!6030454 () Bool)

(assert (=> bs!1185567 m!6030454))

(assert (=> b!4996850 d!1608974))

(declare-fun d!1608978 () Bool)

(assert (=> d!1608978 (= (list!18578 (_2!34754 lt!2066298)) (list!18580 (c!852700 (_2!34754 lt!2066298))))))

(declare-fun bs!1185568 () Bool)

(assert (= bs!1185568 d!1608978))

(declare-fun m!6030456 () Bool)

(assert (=> bs!1185568 m!6030456))

(assert (=> b!4996850 d!1608978))

(declare-fun d!1608980 () Bool)

(declare-fun lt!2066568 () Int)

(assert (=> d!1608980 (= lt!2066568 (size!38392 (list!18578 input!5597)))))

(declare-fun size!38394 (Conc!15286) Int)

(assert (=> d!1608980 (= lt!2066568 (size!38394 (c!852700 input!5597)))))

(assert (=> d!1608980 (= (size!38393 input!5597) lt!2066568)))

(declare-fun bs!1185569 () Bool)

(assert (= bs!1185569 d!1608980))

(assert (=> bs!1185569 m!6030036))

(assert (=> bs!1185569 m!6030036))

(declare-fun m!6030470 () Bool)

(assert (=> bs!1185569 m!6030470))

(declare-fun m!6030472 () Bool)

(assert (=> bs!1185569 m!6030472))

(assert (=> b!4996850 d!1608980))

(declare-fun d!1608984 () Bool)

(declare-fun lt!2066589 () tuple2!62900)

(assert (=> d!1608984 (= (++!12613 (_1!34753 lt!2066589) (_2!34753 lt!2066589)) lt!2066300)))

(declare-fun sizeTr!383 (List!57906 Int) Int)

(assert (=> d!1608984 (= lt!2066589 (findLongestMatchInner!1956 r!12727 Nil!57782 0 lt!2066300 lt!2066300 (sizeTr!383 lt!2066300 0)))))

(declare-fun lt!2066590 () Unit!148937)

(declare-fun lt!2066592 () Unit!148937)

(assert (=> d!1608984 (= lt!2066590 lt!2066592)))

(declare-fun lt!2066591 () List!57906)

(declare-fun lt!2066593 () Int)

(assert (=> d!1608984 (= (sizeTr!383 lt!2066591 lt!2066593) (+ (size!38392 lt!2066591) lt!2066593))))

(declare-fun lemmaSizeTrEqualsSize!382 (List!57906 Int) Unit!148937)

(assert (=> d!1608984 (= lt!2066592 (lemmaSizeTrEqualsSize!382 lt!2066591 lt!2066593))))

(assert (=> d!1608984 (= lt!2066593 0)))

(assert (=> d!1608984 (= lt!2066591 Nil!57782)))

(declare-fun lt!2066594 () Unit!148937)

(declare-fun lt!2066596 () Unit!148937)

(assert (=> d!1608984 (= lt!2066594 lt!2066596)))

(declare-fun lt!2066595 () Int)

(assert (=> d!1608984 (= (sizeTr!383 lt!2066300 lt!2066595) (+ (size!38392 lt!2066300) lt!2066595))))

(assert (=> d!1608984 (= lt!2066596 (lemmaSizeTrEqualsSize!382 lt!2066300 lt!2066595))))

(assert (=> d!1608984 (= lt!2066595 0)))

(assert (=> d!1608984 (validRegex!6064 r!12727)))

(assert (=> d!1608984 (= (findLongestMatch!1780 r!12727 lt!2066300) lt!2066589)))

(declare-fun bs!1185573 () Bool)

(assert (= bs!1185573 d!1608984))

(assert (=> bs!1185573 m!6030020))

(declare-fun m!6030484 () Bool)

(assert (=> bs!1185573 m!6030484))

(declare-fun m!6030486 () Bool)

(assert (=> bs!1185573 m!6030486))

(declare-fun m!6030488 () Bool)

(assert (=> bs!1185573 m!6030488))

(declare-fun m!6030490 () Bool)

(assert (=> bs!1185573 m!6030490))

(assert (=> bs!1185573 m!6030484))

(declare-fun m!6030492 () Bool)

(assert (=> bs!1185573 m!6030492))

(declare-fun m!6030494 () Bool)

(assert (=> bs!1185573 m!6030494))

(assert (=> bs!1185573 m!6029976))

(declare-fun m!6030496 () Bool)

(assert (=> bs!1185573 m!6030496))

(declare-fun m!6030498 () Bool)

(assert (=> bs!1185573 m!6030498))

(assert (=> b!4996850 d!1608984))

(declare-fun d!1608992 () Bool)

(declare-fun lt!2066613 () Int)

(assert (=> d!1608992 (= lt!2066613 (size!38392 (list!18578 totalInput!1012)))))

(assert (=> d!1608992 (= lt!2066613 (size!38394 (c!852700 totalInput!1012)))))

(assert (=> d!1608992 (= (size!38393 totalInput!1012) lt!2066613)))

(declare-fun bs!1185574 () Bool)

(assert (= bs!1185574 d!1608992))

(assert (=> bs!1185574 m!6030034))

(assert (=> bs!1185574 m!6030034))

(declare-fun m!6030500 () Bool)

(assert (=> bs!1185574 m!6030500))

(declare-fun m!6030502 () Bool)

(assert (=> bs!1185574 m!6030502))

(assert (=> b!4996850 d!1608992))

(declare-fun d!1608994 () Bool)

(declare-fun lt!2066626 () tuple2!62902)

(assert (=> d!1608994 (= (++!12613 (list!18578 (_1!34754 lt!2066626)) (list!18578 (_2!34754 lt!2066626))) (list!18578 input!5597))))

(declare-fun lt!2066627 () Int)

(declare-fun splitAt!430 (BalanceConc!30002 Int) tuple2!62902)

(assert (=> d!1608994 (= lt!2066626 (splitAt!430 input!5597 (findLongestMatchInnerZipperFastV2!107 z!4183 (- lt!2066627 (size!38393 input!5597)) totalInput!1012 lt!2066627)))))

(assert (=> d!1608994 (= lt!2066627 (size!38393 totalInput!1012))))

(assert (=> d!1608994 (isSuffix!1333 (list!18578 input!5597) (list!18578 totalInput!1012))))

(assert (=> d!1608994 (= (findLongestMatchZipperFastV2!69 z!4183 input!5597 totalInput!1012) lt!2066626)))

(declare-fun bs!1185577 () Bool)

(assert (= bs!1185577 d!1608994))

(assert (=> bs!1185577 m!6030034))

(assert (=> bs!1185577 m!6030036))

(assert (=> bs!1185577 m!6030034))

(declare-fun m!6030522 () Bool)

(assert (=> bs!1185577 m!6030522))

(declare-fun m!6030524 () Bool)

(assert (=> bs!1185577 m!6030524))

(declare-fun m!6030526 () Bool)

(assert (=> bs!1185577 m!6030526))

(assert (=> bs!1185577 m!6030036))

(assert (=> bs!1185577 m!6030006))

(assert (=> bs!1185577 m!6030008))

(assert (=> bs!1185577 m!6030524))

(declare-fun m!6030528 () Bool)

(assert (=> bs!1185577 m!6030528))

(declare-fun m!6030530 () Bool)

(assert (=> bs!1185577 m!6030530))

(declare-fun m!6030532 () Bool)

(assert (=> bs!1185577 m!6030532))

(assert (=> bs!1185577 m!6030530))

(assert (=> bs!1185577 m!6030528))

(assert (=> b!4996850 d!1608994))

(declare-fun e!3122801 () Bool)

(declare-fun b!4997336 () Bool)

(declare-fun lt!2066636 () List!57906)

(assert (=> b!4997336 (= e!3122801 (or (not (= lt!2066299 Nil!57782)) (= lt!2066636 lt!2066290)))))

(declare-fun b!4997335 () Bool)

(declare-fun res!2132533 () Bool)

(assert (=> b!4997335 (=> (not res!2132533) (not e!3122801))))

(assert (=> b!4997335 (= res!2132533 (= (size!38392 lt!2066636) (+ (size!38392 lt!2066290) (size!38392 lt!2066299))))))

(declare-fun b!4997333 () Bool)

(declare-fun e!3122800 () List!57906)

(assert (=> b!4997333 (= e!3122800 lt!2066299)))

(declare-fun b!4997334 () Bool)

(assert (=> b!4997334 (= e!3122800 (Cons!57782 (h!64230 lt!2066290) (++!12613 (t!370246 lt!2066290) lt!2066299)))))

(declare-fun d!1609000 () Bool)

(assert (=> d!1609000 e!3122801))

(declare-fun res!2132534 () Bool)

(assert (=> d!1609000 (=> (not res!2132534) (not e!3122801))))

(assert (=> d!1609000 (= res!2132534 (= (content!10220 lt!2066636) ((_ map or) (content!10220 lt!2066290) (content!10220 lt!2066299))))))

(assert (=> d!1609000 (= lt!2066636 e!3122800)))

(declare-fun c!852840 () Bool)

(assert (=> d!1609000 (= c!852840 ((_ is Nil!57782) lt!2066290))))

(assert (=> d!1609000 (= (++!12613 lt!2066290 lt!2066299) lt!2066636)))

(assert (= (and d!1609000 c!852840) b!4997333))

(assert (= (and d!1609000 (not c!852840)) b!4997334))

(assert (= (and d!1609000 res!2132534) b!4997335))

(assert (= (and b!4997335 res!2132533) b!4997336))

(declare-fun m!6030552 () Bool)

(assert (=> b!4997335 m!6030552))

(assert (=> b!4997335 m!6030368))

(declare-fun m!6030554 () Bool)

(assert (=> b!4997335 m!6030554))

(declare-fun m!6030556 () Bool)

(assert (=> b!4997334 m!6030556))

(declare-fun m!6030558 () Bool)

(assert (=> d!1609000 m!6030558))

(declare-fun m!6030560 () Bool)

(assert (=> d!1609000 m!6030560))

(declare-fun m!6030562 () Bool)

(assert (=> d!1609000 m!6030562))

(assert (=> b!4996850 d!1609000))

(declare-fun b!4997347 () Bool)

(declare-fun e!3122808 () Bool)

(declare-fun e!3122807 () Bool)

(assert (=> b!4997347 (= e!3122808 e!3122807)))

(declare-fun res!2132540 () Bool)

(assert (=> b!4997347 (=> res!2132540 e!3122807)))

(declare-fun call!348783 () Bool)

(assert (=> b!4997347 (= res!2132540 call!348783)))

(declare-fun bm!348778 () Bool)

(assert (=> bm!348778 (= call!348783 (isEmpty!31266 (_1!34753 lt!2066302)))))

(declare-fun b!4997348 () Bool)

(declare-fun res!2132535 () Bool)

(declare-fun e!3122810 () Bool)

(assert (=> b!4997348 (=> res!2132535 e!3122810)))

(assert (=> b!4997348 (= res!2132535 (not ((_ is ElementMatch!13767) r!12727)))))

(declare-fun e!3122805 () Bool)

(assert (=> b!4997348 (= e!3122805 e!3122810)))

(declare-fun b!4997349 () Bool)

(declare-fun res!2132539 () Bool)

(declare-fun e!3122804 () Bool)

(assert (=> b!4997349 (=> (not res!2132539) (not e!3122804))))

(assert (=> b!4997349 (= res!2132539 (not call!348783))))

(declare-fun b!4997350 () Bool)

(declare-fun e!3122809 () Bool)

(declare-fun lt!2066637 () Bool)

(assert (=> b!4997350 (= e!3122809 (= lt!2066637 call!348783))))

(declare-fun b!4997351 () Bool)

(declare-fun res!2132536 () Bool)

(assert (=> b!4997351 (=> (not res!2132536) (not e!3122804))))

(assert (=> b!4997351 (= res!2132536 (isEmpty!31266 (tail!9847 (_1!34753 lt!2066302))))))

(declare-fun b!4997352 () Bool)

(assert (=> b!4997352 (= e!3122804 (= (head!10714 (_1!34753 lt!2066302)) (c!852699 r!12727)))))

(declare-fun b!4997353 () Bool)

(assert (=> b!4997353 (= e!3122805 (not lt!2066637))))

(declare-fun b!4997354 () Bool)

(assert (=> b!4997354 (= e!3122807 (not (= (head!10714 (_1!34753 lt!2066302)) (c!852699 r!12727))))))

(declare-fun d!1609002 () Bool)

(assert (=> d!1609002 e!3122809))

(declare-fun c!852841 () Bool)

(assert (=> d!1609002 (= c!852841 ((_ is EmptyExpr!13767) r!12727))))

(declare-fun e!3122806 () Bool)

(assert (=> d!1609002 (= lt!2066637 e!3122806)))

(declare-fun c!852842 () Bool)

(assert (=> d!1609002 (= c!852842 (isEmpty!31266 (_1!34753 lt!2066302)))))

(assert (=> d!1609002 (validRegex!6064 r!12727)))

(assert (=> d!1609002 (= (matchR!6735 r!12727 (_1!34753 lt!2066302)) lt!2066637)))

(declare-fun b!4997355 () Bool)

(assert (=> b!4997355 (= e!3122809 e!3122805)))

(declare-fun c!852843 () Bool)

(assert (=> b!4997355 (= c!852843 ((_ is EmptyLang!13767) r!12727))))

(declare-fun b!4997356 () Bool)

(assert (=> b!4997356 (= e!3122806 (nullable!4673 r!12727))))

(declare-fun b!4997357 () Bool)

(declare-fun res!2132538 () Bool)

(assert (=> b!4997357 (=> res!2132538 e!3122810)))

(assert (=> b!4997357 (= res!2132538 e!3122804)))

(declare-fun res!2132537 () Bool)

(assert (=> b!4997357 (=> (not res!2132537) (not e!3122804))))

(assert (=> b!4997357 (= res!2132537 lt!2066637)))

(declare-fun b!4997358 () Bool)

(declare-fun res!2132542 () Bool)

(assert (=> b!4997358 (=> res!2132542 e!3122807)))

(assert (=> b!4997358 (= res!2132542 (not (isEmpty!31266 (tail!9847 (_1!34753 lt!2066302)))))))

(declare-fun b!4997359 () Bool)

(assert (=> b!4997359 (= e!3122806 (matchR!6735 (derivativeStep!3964 r!12727 (head!10714 (_1!34753 lt!2066302))) (tail!9847 (_1!34753 lt!2066302))))))

(declare-fun b!4997360 () Bool)

(assert (=> b!4997360 (= e!3122810 e!3122808)))

(declare-fun res!2132541 () Bool)

(assert (=> b!4997360 (=> (not res!2132541) (not e!3122808))))

(assert (=> b!4997360 (= res!2132541 (not lt!2066637))))

(assert (= (and d!1609002 c!852842) b!4997356))

(assert (= (and d!1609002 (not c!852842)) b!4997359))

(assert (= (and d!1609002 c!852841) b!4997350))

(assert (= (and d!1609002 (not c!852841)) b!4997355))

(assert (= (and b!4997355 c!852843) b!4997353))

(assert (= (and b!4997355 (not c!852843)) b!4997348))

(assert (= (and b!4997348 (not res!2132535)) b!4997357))

(assert (= (and b!4997357 res!2132537) b!4997349))

(assert (= (and b!4997349 res!2132539) b!4997351))

(assert (= (and b!4997351 res!2132536) b!4997352))

(assert (= (and b!4997357 (not res!2132538)) b!4997360))

(assert (= (and b!4997360 res!2132541) b!4997347))

(assert (= (and b!4997347 (not res!2132540)) b!4997358))

(assert (= (and b!4997358 (not res!2132542)) b!4997354))

(assert (= (or b!4997350 b!4997347 b!4997349) bm!348778))

(assert (=> b!4997356 m!6030310))

(assert (=> b!4997358 m!6030404))

(assert (=> b!4997358 m!6030404))

(declare-fun m!6030564 () Bool)

(assert (=> b!4997358 m!6030564))

(assert (=> b!4997351 m!6030404))

(assert (=> b!4997351 m!6030404))

(assert (=> b!4997351 m!6030564))

(assert (=> d!1609002 m!6029994))

(assert (=> d!1609002 m!6030020))

(assert (=> b!4997354 m!6030410))

(assert (=> b!4997352 m!6030410))

(assert (=> bm!348778 m!6029994))

(assert (=> b!4997359 m!6030410))

(assert (=> b!4997359 m!6030410))

(declare-fun m!6030566 () Bool)

(assert (=> b!4997359 m!6030566))

(assert (=> b!4997359 m!6030404))

(assert (=> b!4997359 m!6030566))

(assert (=> b!4997359 m!6030404))

(declare-fun m!6030568 () Bool)

(assert (=> b!4997359 m!6030568))

(assert (=> b!4996858 d!1609002))

(declare-fun d!1609004 () Bool)

(declare-fun e!3122826 () Bool)

(assert (=> d!1609004 e!3122826))

(declare-fun res!2132545 () Bool)

(assert (=> d!1609004 (=> res!2132545 e!3122826)))

(declare-fun lt!2066640 () Bool)

(assert (=> d!1609004 (= res!2132545 (not lt!2066640))))

(assert (=> d!1609004 (= lt!2066640 (= lt!2066300 (drop!2430 lt!2066297 (- (size!38392 lt!2066297) (size!38392 lt!2066300)))))))

(assert (=> d!1609004 (= (isSuffix!1333 lt!2066300 lt!2066297) lt!2066640)))

(declare-fun b!4997396 () Bool)

(assert (=> b!4997396 (= e!3122826 (>= (size!38392 lt!2066297) (size!38392 lt!2066300)))))

(assert (= (and d!1609004 (not res!2132545)) b!4997396))

(assert (=> d!1609004 m!6030280))

(assert (=> d!1609004 m!6029976))

(declare-fun m!6030578 () Bool)

(assert (=> d!1609004 m!6030578))

(assert (=> b!4997396 m!6030280))

(assert (=> b!4997396 m!6029976))

(assert (=> b!4996848 d!1609004))

(declare-fun d!1609006 () Bool)

(assert (=> d!1609006 (= (list!18578 totalInput!1012) (list!18580 (c!852700 totalInput!1012)))))

(declare-fun bs!1185579 () Bool)

(assert (= bs!1185579 d!1609006))

(declare-fun m!6030580 () Bool)

(assert (=> bs!1185579 m!6030580))

(assert (=> b!4996848 d!1609006))

(declare-fun d!1609008 () Bool)

(assert (=> d!1609008 (= (list!18578 input!5597) (list!18580 (c!852700 input!5597)))))

(declare-fun bs!1185580 () Bool)

(assert (= bs!1185580 d!1609008))

(declare-fun m!6030582 () Bool)

(assert (=> bs!1185580 m!6030582))

(assert (=> b!4996848 d!1609008))

(declare-fun d!1609010 () Bool)

(declare-fun c!852844 () Bool)

(assert (=> d!1609010 (= c!852844 (isEmpty!31266 (take!628 (drop!2430 lt!2066297 lt!2066288) lt!2066301)))))

(declare-fun e!3122827 () Bool)

(assert (=> d!1609010 (= (matchZipper!539 z!4183 (take!628 (drop!2430 lt!2066297 lt!2066288) lt!2066301)) e!3122827)))

(declare-fun b!4997397 () Bool)

(assert (=> b!4997397 (= e!3122827 (nullableZipper!870 z!4183))))

(declare-fun b!4997398 () Bool)

(assert (=> b!4997398 (= e!3122827 (matchZipper!539 (derivationStepZipper!619 z!4183 (head!10714 (take!628 (drop!2430 lt!2066297 lt!2066288) lt!2066301))) (tail!9847 (take!628 (drop!2430 lt!2066297 lt!2066288) lt!2066301))))))

(assert (= (and d!1609010 c!852844) b!4997397))

(assert (= (and d!1609010 (not c!852844)) b!4997398))

(assert (=> d!1609010 m!6030028))

(declare-fun m!6030584 () Bool)

(assert (=> d!1609010 m!6030584))

(assert (=> b!4997397 m!6030426))

(assert (=> b!4997398 m!6030028))

(declare-fun m!6030586 () Bool)

(assert (=> b!4997398 m!6030586))

(assert (=> b!4997398 m!6030586))

(declare-fun m!6030588 () Bool)

(assert (=> b!4997398 m!6030588))

(assert (=> b!4997398 m!6030028))

(declare-fun m!6030590 () Bool)

(assert (=> b!4997398 m!6030590))

(assert (=> b!4997398 m!6030588))

(assert (=> b!4997398 m!6030590))

(declare-fun m!6030592 () Bool)

(assert (=> b!4997398 m!6030592))

(assert (=> b!4996857 d!1609010))

(declare-fun b!4997399 () Bool)

(declare-fun e!3122831 () Int)

(assert (=> b!4997399 (= e!3122831 lt!2066301)))

(declare-fun d!1609012 () Bool)

(declare-fun e!3122829 () Bool)

(assert (=> d!1609012 e!3122829))

(declare-fun res!2132546 () Bool)

(assert (=> d!1609012 (=> (not res!2132546) (not e!3122829))))

(declare-fun lt!2066641 () List!57906)

(assert (=> d!1609012 (= res!2132546 (= ((_ map implies) (content!10220 lt!2066641) (content!10220 (drop!2430 lt!2066297 lt!2066288))) ((as const (InoxSet C!27784)) true)))))

(declare-fun e!3122830 () List!57906)

(assert (=> d!1609012 (= lt!2066641 e!3122830)))

(declare-fun c!852845 () Bool)

(assert (=> d!1609012 (= c!852845 (or ((_ is Nil!57782) (drop!2430 lt!2066297 lt!2066288)) (<= lt!2066301 0)))))

(assert (=> d!1609012 (= (take!628 (drop!2430 lt!2066297 lt!2066288) lt!2066301) lt!2066641)))

(declare-fun b!4997400 () Bool)

(declare-fun e!3122828 () Int)

(assert (=> b!4997400 (= e!3122829 (= (size!38392 lt!2066641) e!3122828))))

(declare-fun c!852847 () Bool)

(assert (=> b!4997400 (= c!852847 (<= lt!2066301 0))))

(declare-fun b!4997401 () Bool)

(assert (=> b!4997401 (= e!3122830 Nil!57782)))

(declare-fun b!4997402 () Bool)

(assert (=> b!4997402 (= e!3122831 (size!38392 (drop!2430 lt!2066297 lt!2066288)))))

(declare-fun b!4997403 () Bool)

(assert (=> b!4997403 (= e!3122830 (Cons!57782 (h!64230 (drop!2430 lt!2066297 lt!2066288)) (take!628 (t!370246 (drop!2430 lt!2066297 lt!2066288)) (- lt!2066301 1))))))

(declare-fun b!4997404 () Bool)

(assert (=> b!4997404 (= e!3122828 e!3122831)))

(declare-fun c!852846 () Bool)

(assert (=> b!4997404 (= c!852846 (>= lt!2066301 (size!38392 (drop!2430 lt!2066297 lt!2066288))))))

(declare-fun b!4997405 () Bool)

(assert (=> b!4997405 (= e!3122828 0)))

(assert (= (and d!1609012 c!852845) b!4997401))

(assert (= (and d!1609012 (not c!852845)) b!4997403))

(assert (= (and d!1609012 res!2132546) b!4997400))

(assert (= (and b!4997400 c!852847) b!4997405))

(assert (= (and b!4997400 (not c!852847)) b!4997404))

(assert (= (and b!4997404 c!852846) b!4997402))

(assert (= (and b!4997404 (not c!852846)) b!4997399))

(declare-fun m!6030594 () Bool)

(assert (=> b!4997400 m!6030594))

(assert (=> b!4997404 m!6030026))

(declare-fun m!6030596 () Bool)

(assert (=> b!4997404 m!6030596))

(declare-fun m!6030598 () Bool)

(assert (=> d!1609012 m!6030598))

(assert (=> d!1609012 m!6030026))

(declare-fun m!6030600 () Bool)

(assert (=> d!1609012 m!6030600))

(assert (=> b!4997402 m!6030026))

(assert (=> b!4997402 m!6030596))

(declare-fun m!6030602 () Bool)

(assert (=> b!4997403 m!6030602))

(assert (=> b!4996857 d!1609012))

(declare-fun b!4997424 () Bool)

(declare-fun e!3122845 () List!57906)

(assert (=> b!4997424 (= e!3122845 lt!2066297)))

(declare-fun d!1609014 () Bool)

(declare-fun e!3122846 () Bool)

(assert (=> d!1609014 e!3122846))

(declare-fun res!2132549 () Bool)

(assert (=> d!1609014 (=> (not res!2132549) (not e!3122846))))

(declare-fun lt!2066644 () List!57906)

(assert (=> d!1609014 (= res!2132549 (= ((_ map implies) (content!10220 lt!2066644) (content!10220 lt!2066297)) ((as const (InoxSet C!27784)) true)))))

(declare-fun e!3122843 () List!57906)

(assert (=> d!1609014 (= lt!2066644 e!3122843)))

(declare-fun c!852859 () Bool)

(assert (=> d!1609014 (= c!852859 ((_ is Nil!57782) lt!2066297))))

(assert (=> d!1609014 (= (drop!2430 lt!2066297 lt!2066288) lt!2066644)))

(declare-fun b!4997425 () Bool)

(assert (=> b!4997425 (= e!3122843 e!3122845)))

(declare-fun c!852857 () Bool)

(assert (=> b!4997425 (= c!852857 (<= lt!2066288 0))))

(declare-fun bm!348781 () Bool)

(declare-fun call!348786 () Int)

(assert (=> bm!348781 (= call!348786 (size!38392 lt!2066297))))

(declare-fun b!4997426 () Bool)

(declare-fun e!3122844 () Int)

(assert (=> b!4997426 (= e!3122846 (= (size!38392 lt!2066644) e!3122844))))

(declare-fun c!852858 () Bool)

(assert (=> b!4997426 (= c!852858 (<= lt!2066288 0))))

(declare-fun b!4997427 () Bool)

(assert (=> b!4997427 (= e!3122845 (drop!2430 (t!370246 lt!2066297) (- lt!2066288 1)))))

(declare-fun b!4997428 () Bool)

(assert (=> b!4997428 (= e!3122844 call!348786)))

(declare-fun b!4997429 () Bool)

(assert (=> b!4997429 (= e!3122843 Nil!57782)))

(declare-fun b!4997430 () Bool)

(declare-fun e!3122842 () Int)

(assert (=> b!4997430 (= e!3122842 0)))

(declare-fun b!4997431 () Bool)

(assert (=> b!4997431 (= e!3122842 (- call!348786 lt!2066288))))

(declare-fun b!4997432 () Bool)

(assert (=> b!4997432 (= e!3122844 e!3122842)))

(declare-fun c!852856 () Bool)

(assert (=> b!4997432 (= c!852856 (>= lt!2066288 call!348786))))

(assert (= (and d!1609014 c!852859) b!4997429))

(assert (= (and d!1609014 (not c!852859)) b!4997425))

(assert (= (and b!4997425 c!852857) b!4997424))

(assert (= (and b!4997425 (not c!852857)) b!4997427))

(assert (= (and d!1609014 res!2132549) b!4997426))

(assert (= (and b!4997426 c!852858) b!4997428))

(assert (= (and b!4997426 (not c!852858)) b!4997432))

(assert (= (and b!4997432 c!852856) b!4997430))

(assert (= (and b!4997432 (not c!852856)) b!4997431))

(assert (= (or b!4997428 b!4997432 b!4997431) bm!348781))

(declare-fun m!6030604 () Bool)

(assert (=> d!1609014 m!6030604))

(assert (=> d!1609014 m!6030358))

(assert (=> bm!348781 m!6030280))

(declare-fun m!6030606 () Bool)

(assert (=> b!4997426 m!6030606))

(declare-fun m!6030608 () Bool)

(assert (=> b!4997427 m!6030608))

(assert (=> b!4996857 d!1609014))

(declare-fun d!1609016 () Bool)

(declare-fun lt!2066647 () Regex!13767)

(assert (=> d!1609016 (validRegex!6064 lt!2066647)))

(declare-fun generalisedUnion!567 (List!57905) Regex!13767)

(declare-fun unfocusZipperList!80 (List!57907) List!57905)

(assert (=> d!1609016 (= lt!2066647 (generalisedUnion!567 (unfocusZipperList!80 (toList!8052 z!4183))))))

(assert (=> d!1609016 (= (unfocusZipper!294 (toList!8052 z!4183)) lt!2066647)))

(declare-fun bs!1185581 () Bool)

(assert (= bs!1185581 d!1609016))

(declare-fun m!6030610 () Bool)

(assert (=> bs!1185581 m!6030610))

(assert (=> bs!1185581 m!6029996))

(declare-fun m!6030612 () Bool)

(assert (=> bs!1185581 m!6030612))

(assert (=> bs!1185581 m!6030612))

(declare-fun m!6030614 () Bool)

(assert (=> bs!1185581 m!6030614))

(assert (=> b!4996847 d!1609016))

(declare-fun d!1609018 () Bool)

(declare-fun e!3122849 () Bool)

(assert (=> d!1609018 e!3122849))

(declare-fun res!2132552 () Bool)

(assert (=> d!1609018 (=> (not res!2132552) (not e!3122849))))

(declare-fun lt!2066650 () List!57907)

(declare-fun noDuplicate!1016 (List!57907) Bool)

(assert (=> d!1609018 (= res!2132552 (noDuplicate!1016 lt!2066650))))

(declare-fun choose!36936 ((InoxSet Context!6384)) List!57907)

(assert (=> d!1609018 (= lt!2066650 (choose!36936 z!4183))))

(assert (=> d!1609018 (= (toList!8052 z!4183) lt!2066650)))

(declare-fun b!4997435 () Bool)

(declare-fun content!10222 (List!57907) (InoxSet Context!6384))

(assert (=> b!4997435 (= e!3122849 (= (content!10222 lt!2066650) z!4183))))

(assert (= (and d!1609018 res!2132552) b!4997435))

(declare-fun m!6030616 () Bool)

(assert (=> d!1609018 m!6030616))

(declare-fun m!6030618 () Bool)

(assert (=> d!1609018 m!6030618))

(declare-fun m!6030620 () Bool)

(assert (=> b!4997435 m!6030620))

(assert (=> b!4996847 d!1609018))

(declare-fun b!4997454 () Bool)

(declare-fun e!3122865 () Bool)

(declare-fun call!348793 () Bool)

(assert (=> b!4997454 (= e!3122865 call!348793)))

(declare-fun b!4997455 () Bool)

(declare-fun res!2132567 () Bool)

(declare-fun e!3122864 () Bool)

(assert (=> b!4997455 (=> res!2132567 e!3122864)))

(assert (=> b!4997455 (= res!2132567 (not ((_ is Concat!22560) r!12727)))))

(declare-fun e!3122870 () Bool)

(assert (=> b!4997455 (= e!3122870 e!3122864)))

(declare-fun b!4997456 () Bool)

(declare-fun e!3122868 () Bool)

(declare-fun e!3122869 () Bool)

(assert (=> b!4997456 (= e!3122868 e!3122869)))

(declare-fun c!852865 () Bool)

(assert (=> b!4997456 (= c!852865 ((_ is Star!13767) r!12727))))

(declare-fun call!348795 () Bool)

(declare-fun c!852864 () Bool)

(declare-fun bm!348789 () Bool)

(assert (=> bm!348789 (= call!348795 (validRegex!6064 (ite c!852865 (reg!14096 r!12727) (ite c!852864 (regTwo!28047 r!12727) (regOne!28046 r!12727)))))))

(declare-fun b!4997457 () Bool)

(declare-fun e!3122867 () Bool)

(assert (=> b!4997457 (= e!3122867 call!348795)))

(declare-fun b!4997458 () Bool)

(assert (=> b!4997458 (= e!3122864 e!3122865)))

(declare-fun res!2132566 () Bool)

(assert (=> b!4997458 (=> (not res!2132566) (not e!3122865))))

(declare-fun call!348794 () Bool)

(assert (=> b!4997458 (= res!2132566 call!348794)))

(declare-fun b!4997459 () Bool)

(assert (=> b!4997459 (= e!3122869 e!3122870)))

(assert (=> b!4997459 (= c!852864 ((_ is Union!13767) r!12727))))

(declare-fun bm!348790 () Bool)

(assert (=> bm!348790 (= call!348794 call!348795)))

(declare-fun b!4997460 () Bool)

(declare-fun e!3122866 () Bool)

(assert (=> b!4997460 (= e!3122866 call!348794)))

(declare-fun b!4997461 () Bool)

(assert (=> b!4997461 (= e!3122869 e!3122867)))

(declare-fun res!2132565 () Bool)

(assert (=> b!4997461 (= res!2132565 (not (nullable!4673 (reg!14096 r!12727))))))

(assert (=> b!4997461 (=> (not res!2132565) (not e!3122867))))

(declare-fun b!4997462 () Bool)

(declare-fun res!2132563 () Bool)

(assert (=> b!4997462 (=> (not res!2132563) (not e!3122866))))

(assert (=> b!4997462 (= res!2132563 call!348793)))

(assert (=> b!4997462 (= e!3122870 e!3122866)))

(declare-fun d!1609020 () Bool)

(declare-fun res!2132564 () Bool)

(assert (=> d!1609020 (=> res!2132564 e!3122868)))

(assert (=> d!1609020 (= res!2132564 ((_ is ElementMatch!13767) r!12727))))

(assert (=> d!1609020 (= (validRegex!6064 r!12727) e!3122868)))

(declare-fun bm!348788 () Bool)

(assert (=> bm!348788 (= call!348793 (validRegex!6064 (ite c!852864 (regOne!28047 r!12727) (regTwo!28046 r!12727))))))

(assert (= (and d!1609020 (not res!2132564)) b!4997456))

(assert (= (and b!4997456 c!852865) b!4997461))

(assert (= (and b!4997456 (not c!852865)) b!4997459))

(assert (= (and b!4997461 res!2132565) b!4997457))

(assert (= (and b!4997459 c!852864) b!4997462))

(assert (= (and b!4997459 (not c!852864)) b!4997455))

(assert (= (and b!4997462 res!2132563) b!4997460))

(assert (= (and b!4997455 (not res!2132567)) b!4997458))

(assert (= (and b!4997458 res!2132566) b!4997454))

(assert (= (or b!4997460 b!4997458) bm!348790))

(assert (= (or b!4997462 b!4997454) bm!348788))

(assert (= (or b!4997457 bm!348790) bm!348789))

(declare-fun m!6030622 () Bool)

(assert (=> bm!348789 m!6030622))

(declare-fun m!6030624 () Bool)

(assert (=> b!4997461 m!6030624))

(declare-fun m!6030626 () Bool)

(assert (=> bm!348788 m!6030626))

(assert (=> start!527962 d!1609020))

(declare-fun d!1609022 () Bool)

(declare-fun isBalanced!4256 (Conc!15286) Bool)

(assert (=> d!1609022 (= (inv!75859 input!5597) (isBalanced!4256 (c!852700 input!5597)))))

(declare-fun bs!1185582 () Bool)

(assert (= bs!1185582 d!1609022))

(declare-fun m!6030628 () Bool)

(assert (=> bs!1185582 m!6030628))

(assert (=> start!527962 d!1609022))

(declare-fun d!1609024 () Bool)

(assert (=> d!1609024 (= (inv!75859 totalInput!1012) (isBalanced!4256 (c!852700 totalInput!1012)))))

(declare-fun bs!1185583 () Bool)

(assert (= bs!1185583 d!1609024))

(declare-fun m!6030630 () Bool)

(assert (=> bs!1185583 m!6030630))

(assert (=> start!527962 d!1609024))

(declare-fun d!1609026 () Bool)

(declare-fun c!852868 () Bool)

(assert (=> d!1609026 (= c!852868 ((_ is Node!15286) (c!852700 totalInput!1012)))))

(declare-fun e!3122875 () Bool)

(assert (=> d!1609026 (= (inv!75858 (c!852700 totalInput!1012)) e!3122875)))

(declare-fun b!4997469 () Bool)

(declare-fun inv!75862 (Conc!15286) Bool)

(assert (=> b!4997469 (= e!3122875 (inv!75862 (c!852700 totalInput!1012)))))

(declare-fun b!4997470 () Bool)

(declare-fun e!3122876 () Bool)

(assert (=> b!4997470 (= e!3122875 e!3122876)))

(declare-fun res!2132570 () Bool)

(assert (=> b!4997470 (= res!2132570 (not ((_ is Leaf!25378) (c!852700 totalInput!1012))))))

(assert (=> b!4997470 (=> res!2132570 e!3122876)))

(declare-fun b!4997471 () Bool)

(declare-fun inv!75863 (Conc!15286) Bool)

(assert (=> b!4997471 (= e!3122876 (inv!75863 (c!852700 totalInput!1012)))))

(assert (= (and d!1609026 c!852868) b!4997469))

(assert (= (and d!1609026 (not c!852868)) b!4997470))

(assert (= (and b!4997470 (not res!2132570)) b!4997471))

(declare-fun m!6030632 () Bool)

(assert (=> b!4997469 m!6030632))

(declare-fun m!6030634 () Bool)

(assert (=> b!4997471 m!6030634))

(assert (=> b!4996856 d!1609026))

(declare-fun d!1609028 () Bool)

(assert (=> d!1609028 (= (isEmpty!31266 (_1!34753 lt!2066302)) ((_ is Nil!57782) (_1!34753 lt!2066302)))))

(assert (=> b!4996846 d!1609028))

(declare-fun b!4997475 () Bool)

(declare-fun e!3122878 () Bool)

(declare-fun lt!2066651 () List!57906)

(assert (=> b!4997475 (= e!3122878 (or (not (= (_2!34753 lt!2066302) Nil!57782)) (= lt!2066651 (_1!34753 lt!2066302))))))

(declare-fun b!4997474 () Bool)

(declare-fun res!2132571 () Bool)

(assert (=> b!4997474 (=> (not res!2132571) (not e!3122878))))

(assert (=> b!4997474 (= res!2132571 (= (size!38392 lt!2066651) (+ (size!38392 (_1!34753 lt!2066302)) (size!38392 (_2!34753 lt!2066302)))))))

(declare-fun b!4997472 () Bool)

(declare-fun e!3122877 () List!57906)

(assert (=> b!4997472 (= e!3122877 (_2!34753 lt!2066302))))

(declare-fun b!4997473 () Bool)

(assert (=> b!4997473 (= e!3122877 (Cons!57782 (h!64230 (_1!34753 lt!2066302)) (++!12613 (t!370246 (_1!34753 lt!2066302)) (_2!34753 lt!2066302))))))

(declare-fun d!1609030 () Bool)

(assert (=> d!1609030 e!3122878))

(declare-fun res!2132572 () Bool)

(assert (=> d!1609030 (=> (not res!2132572) (not e!3122878))))

(assert (=> d!1609030 (= res!2132572 (= (content!10220 lt!2066651) ((_ map or) (content!10220 (_1!34753 lt!2066302)) (content!10220 (_2!34753 lt!2066302)))))))

(assert (=> d!1609030 (= lt!2066651 e!3122877)))

(declare-fun c!852869 () Bool)

(assert (=> d!1609030 (= c!852869 ((_ is Nil!57782) (_1!34753 lt!2066302)))))

(assert (=> d!1609030 (= (++!12613 (_1!34753 lt!2066302) (_2!34753 lt!2066302)) lt!2066651)))

(assert (= (and d!1609030 c!852869) b!4997472))

(assert (= (and d!1609030 (not c!852869)) b!4997473))

(assert (= (and d!1609030 res!2132572) b!4997474))

(assert (= (and b!4997474 res!2132571) b!4997475))

(declare-fun m!6030636 () Bool)

(assert (=> b!4997474 m!6030636))

(assert (=> b!4997474 m!6030402))

(declare-fun m!6030638 () Bool)

(assert (=> b!4997474 m!6030638))

(declare-fun m!6030640 () Bool)

(assert (=> b!4997473 m!6030640))

(declare-fun m!6030642 () Bool)

(assert (=> d!1609030 m!6030642))

(declare-fun m!6030644 () Bool)

(assert (=> d!1609030 m!6030644))

(declare-fun m!6030646 () Bool)

(assert (=> d!1609030 m!6030646))

(assert (=> b!4996845 d!1609030))

(declare-fun d!1609032 () Bool)

(declare-fun lt!2066654 () Bool)

(assert (=> d!1609032 (= lt!2066654 (isEmpty!31266 (list!18578 (_1!34754 lt!2066298))))))

(declare-fun isEmpty!31269 (Conc!15286) Bool)

(assert (=> d!1609032 (= lt!2066654 (isEmpty!31269 (c!852700 (_1!34754 lt!2066298))))))

(assert (=> d!1609032 (= (isEmpty!31267 (_1!34754 lt!2066298)) lt!2066654)))

(declare-fun bs!1185584 () Bool)

(assert (= bs!1185584 d!1609032))

(assert (=> bs!1185584 m!6030004))

(assert (=> bs!1185584 m!6030004))

(declare-fun m!6030648 () Bool)

(assert (=> bs!1185584 m!6030648))

(declare-fun m!6030650 () Bool)

(assert (=> bs!1185584 m!6030650))

(assert (=> b!4996854 d!1609032))

(declare-fun d!1609034 () Bool)

(declare-fun c!852870 () Bool)

(assert (=> d!1609034 (= c!852870 ((_ is Node!15286) (c!852700 input!5597)))))

(declare-fun e!3122879 () Bool)

(assert (=> d!1609034 (= (inv!75858 (c!852700 input!5597)) e!3122879)))

(declare-fun b!4997476 () Bool)

(assert (=> b!4997476 (= e!3122879 (inv!75862 (c!852700 input!5597)))))

(declare-fun b!4997477 () Bool)

(declare-fun e!3122880 () Bool)

(assert (=> b!4997477 (= e!3122879 e!3122880)))

(declare-fun res!2132573 () Bool)

(assert (=> b!4997477 (= res!2132573 (not ((_ is Leaf!25378) (c!852700 input!5597))))))

(assert (=> b!4997477 (=> res!2132573 e!3122880)))

(declare-fun b!4997478 () Bool)

(assert (=> b!4997478 (= e!3122880 (inv!75863 (c!852700 input!5597)))))

(assert (= (and d!1609034 c!852870) b!4997476))

(assert (= (and d!1609034 (not c!852870)) b!4997477))

(assert (= (and b!4997477 (not res!2132573)) b!4997478))

(declare-fun m!6030652 () Bool)

(assert (=> b!4997476 m!6030652))

(declare-fun m!6030654 () Bool)

(assert (=> b!4997478 m!6030654))

(assert (=> b!4996844 d!1609034))

(declare-fun e!3122883 () Bool)

(assert (=> b!4996849 (= tp!1401479 e!3122883)))

(declare-fun b!4997492 () Bool)

(declare-fun tp!1401550 () Bool)

(declare-fun tp!1401553 () Bool)

(assert (=> b!4997492 (= e!3122883 (and tp!1401550 tp!1401553))))

(declare-fun b!4997489 () Bool)

(assert (=> b!4997489 (= e!3122883 tp_is_empty!36531)))

(declare-fun b!4997491 () Bool)

(declare-fun tp!1401551 () Bool)

(assert (=> b!4997491 (= e!3122883 tp!1401551)))

(declare-fun b!4997490 () Bool)

(declare-fun tp!1401552 () Bool)

(declare-fun tp!1401554 () Bool)

(assert (=> b!4997490 (= e!3122883 (and tp!1401552 tp!1401554))))

(assert (= (and b!4996849 ((_ is ElementMatch!13767) (regOne!28047 r!12727))) b!4997489))

(assert (= (and b!4996849 ((_ is Concat!22560) (regOne!28047 r!12727))) b!4997490))

(assert (= (and b!4996849 ((_ is Star!13767) (regOne!28047 r!12727))) b!4997491))

(assert (= (and b!4996849 ((_ is Union!13767) (regOne!28047 r!12727))) b!4997492))

(declare-fun e!3122884 () Bool)

(assert (=> b!4996849 (= tp!1401477 e!3122884)))

(declare-fun b!4997496 () Bool)

(declare-fun tp!1401555 () Bool)

(declare-fun tp!1401558 () Bool)

(assert (=> b!4997496 (= e!3122884 (and tp!1401555 tp!1401558))))

(declare-fun b!4997493 () Bool)

(assert (=> b!4997493 (= e!3122884 tp_is_empty!36531)))

(declare-fun b!4997495 () Bool)

(declare-fun tp!1401556 () Bool)

(assert (=> b!4997495 (= e!3122884 tp!1401556)))

(declare-fun b!4997494 () Bool)

(declare-fun tp!1401557 () Bool)

(declare-fun tp!1401559 () Bool)

(assert (=> b!4997494 (= e!3122884 (and tp!1401557 tp!1401559))))

(assert (= (and b!4996849 ((_ is ElementMatch!13767) (regTwo!28047 r!12727))) b!4997493))

(assert (= (and b!4996849 ((_ is Concat!22560) (regTwo!28047 r!12727))) b!4997494))

(assert (= (and b!4996849 ((_ is Star!13767) (regTwo!28047 r!12727))) b!4997495))

(assert (= (and b!4996849 ((_ is Union!13767) (regTwo!28047 r!12727))) b!4997496))

(declare-fun condSetEmpty!28284 () Bool)

(assert (=> setNonEmpty!28278 (= condSetEmpty!28284 (= setRest!28278 ((as const (Array Context!6384 Bool)) false)))))

(declare-fun setRes!28284 () Bool)

(assert (=> setNonEmpty!28278 (= tp!1401474 setRes!28284)))

(declare-fun setIsEmpty!28284 () Bool)

(assert (=> setIsEmpty!28284 setRes!28284))

(declare-fun e!3122887 () Bool)

(declare-fun setNonEmpty!28284 () Bool)

(declare-fun tp!1401564 () Bool)

(declare-fun setElem!28284 () Context!6384)

(assert (=> setNonEmpty!28284 (= setRes!28284 (and tp!1401564 (inv!75857 setElem!28284) e!3122887))))

(declare-fun setRest!28284 () (InoxSet Context!6384))

(assert (=> setNonEmpty!28284 (= setRest!28278 ((_ map or) (store ((as const (Array Context!6384 Bool)) false) setElem!28284 true) setRest!28284))))

(declare-fun b!4997501 () Bool)

(declare-fun tp!1401565 () Bool)

(assert (=> b!4997501 (= e!3122887 tp!1401565)))

(assert (= (and setNonEmpty!28278 condSetEmpty!28284) setIsEmpty!28284))

(assert (= (and setNonEmpty!28278 (not condSetEmpty!28284)) setNonEmpty!28284))

(assert (= setNonEmpty!28284 b!4997501))

(declare-fun m!6030656 () Bool)

(assert (=> setNonEmpty!28284 m!6030656))

(declare-fun e!3122888 () Bool)

(assert (=> b!4996853 (= tp!1401480 e!3122888)))

(declare-fun b!4997505 () Bool)

(declare-fun tp!1401566 () Bool)

(declare-fun tp!1401569 () Bool)

(assert (=> b!4997505 (= e!3122888 (and tp!1401566 tp!1401569))))

(declare-fun b!4997502 () Bool)

(assert (=> b!4997502 (= e!3122888 tp_is_empty!36531)))

(declare-fun b!4997504 () Bool)

(declare-fun tp!1401567 () Bool)

(assert (=> b!4997504 (= e!3122888 tp!1401567)))

(declare-fun b!4997503 () Bool)

(declare-fun tp!1401568 () Bool)

(declare-fun tp!1401570 () Bool)

(assert (=> b!4997503 (= e!3122888 (and tp!1401568 tp!1401570))))

(assert (= (and b!4996853 ((_ is ElementMatch!13767) (regOne!28046 r!12727))) b!4997502))

(assert (= (and b!4996853 ((_ is Concat!22560) (regOne!28046 r!12727))) b!4997503))

(assert (= (and b!4996853 ((_ is Star!13767) (regOne!28046 r!12727))) b!4997504))

(assert (= (and b!4996853 ((_ is Union!13767) (regOne!28046 r!12727))) b!4997505))

(declare-fun e!3122889 () Bool)

(assert (=> b!4996853 (= tp!1401473 e!3122889)))

(declare-fun b!4997509 () Bool)

(declare-fun tp!1401571 () Bool)

(declare-fun tp!1401574 () Bool)

(assert (=> b!4997509 (= e!3122889 (and tp!1401571 tp!1401574))))

(declare-fun b!4997506 () Bool)

(assert (=> b!4997506 (= e!3122889 tp_is_empty!36531)))

(declare-fun b!4997508 () Bool)

(declare-fun tp!1401572 () Bool)

(assert (=> b!4997508 (= e!3122889 tp!1401572)))

(declare-fun b!4997507 () Bool)

(declare-fun tp!1401573 () Bool)

(declare-fun tp!1401575 () Bool)

(assert (=> b!4997507 (= e!3122889 (and tp!1401573 tp!1401575))))

(assert (= (and b!4996853 ((_ is ElementMatch!13767) (regTwo!28046 r!12727))) b!4997506))

(assert (= (and b!4996853 ((_ is Concat!22560) (regTwo!28046 r!12727))) b!4997507))

(assert (= (and b!4996853 ((_ is Star!13767) (regTwo!28046 r!12727))) b!4997508))

(assert (= (and b!4996853 ((_ is Union!13767) (regTwo!28046 r!12727))) b!4997509))

(declare-fun b!4997514 () Bool)

(declare-fun e!3122892 () Bool)

(declare-fun tp!1401580 () Bool)

(declare-fun tp!1401581 () Bool)

(assert (=> b!4997514 (= e!3122892 (and tp!1401580 tp!1401581))))

(assert (=> b!4996842 (= tp!1401476 e!3122892)))

(assert (= (and b!4996842 ((_ is Cons!57781) (exprs!3692 setElem!28278))) b!4997514))

(declare-fun b!4997523 () Bool)

(declare-fun tp!1401590 () Bool)

(declare-fun e!3122897 () Bool)

(declare-fun tp!1401588 () Bool)

(assert (=> b!4997523 (= e!3122897 (and (inv!75858 (left!42263 (c!852700 totalInput!1012))) tp!1401588 (inv!75858 (right!42593 (c!852700 totalInput!1012))) tp!1401590))))

(declare-fun b!4997525 () Bool)

(declare-fun e!3122898 () Bool)

(declare-fun tp!1401589 () Bool)

(assert (=> b!4997525 (= e!3122898 tp!1401589)))

(declare-fun b!4997524 () Bool)

(declare-fun inv!75864 (IArray!30633) Bool)

(assert (=> b!4997524 (= e!3122897 (and (inv!75864 (xs!18612 (c!852700 totalInput!1012))) e!3122898))))

(assert (=> b!4996856 (= tp!1401478 (and (inv!75858 (c!852700 totalInput!1012)) e!3122897))))

(assert (= (and b!4996856 ((_ is Node!15286) (c!852700 totalInput!1012))) b!4997523))

(assert (= b!4997524 b!4997525))

(assert (= (and b!4996856 ((_ is Leaf!25378) (c!852700 totalInput!1012))) b!4997524))

(declare-fun m!6030658 () Bool)

(assert (=> b!4997523 m!6030658))

(declare-fun m!6030660 () Bool)

(assert (=> b!4997523 m!6030660))

(declare-fun m!6030662 () Bool)

(assert (=> b!4997524 m!6030662))

(assert (=> b!4996856 m!6030014))

(declare-fun e!3122899 () Bool)

(assert (=> b!4996855 (= tp!1401475 e!3122899)))

(declare-fun b!4997529 () Bool)

(declare-fun tp!1401591 () Bool)

(declare-fun tp!1401594 () Bool)

(assert (=> b!4997529 (= e!3122899 (and tp!1401591 tp!1401594))))

(declare-fun b!4997526 () Bool)

(assert (=> b!4997526 (= e!3122899 tp_is_empty!36531)))

(declare-fun b!4997528 () Bool)

(declare-fun tp!1401592 () Bool)

(assert (=> b!4997528 (= e!3122899 tp!1401592)))

(declare-fun b!4997527 () Bool)

(declare-fun tp!1401593 () Bool)

(declare-fun tp!1401595 () Bool)

(assert (=> b!4997527 (= e!3122899 (and tp!1401593 tp!1401595))))

(assert (= (and b!4996855 ((_ is ElementMatch!13767) (reg!14096 r!12727))) b!4997526))

(assert (= (and b!4996855 ((_ is Concat!22560) (reg!14096 r!12727))) b!4997527))

(assert (= (and b!4996855 ((_ is Star!13767) (reg!14096 r!12727))) b!4997528))

(assert (= (and b!4996855 ((_ is Union!13767) (reg!14096 r!12727))) b!4997529))

(declare-fun tp!1401596 () Bool)

(declare-fun b!4997530 () Bool)

(declare-fun e!3122900 () Bool)

(declare-fun tp!1401598 () Bool)

(assert (=> b!4997530 (= e!3122900 (and (inv!75858 (left!42263 (c!852700 input!5597))) tp!1401596 (inv!75858 (right!42593 (c!852700 input!5597))) tp!1401598))))

(declare-fun b!4997532 () Bool)

(declare-fun e!3122901 () Bool)

(declare-fun tp!1401597 () Bool)

(assert (=> b!4997532 (= e!3122901 tp!1401597)))

(declare-fun b!4997531 () Bool)

(assert (=> b!4997531 (= e!3122900 (and (inv!75864 (xs!18612 (c!852700 input!5597))) e!3122901))))

(assert (=> b!4996844 (= tp!1401472 (and (inv!75858 (c!852700 input!5597)) e!3122900))))

(assert (= (and b!4996844 ((_ is Node!15286) (c!852700 input!5597))) b!4997530))

(assert (= b!4997531 b!4997532))

(assert (= (and b!4996844 ((_ is Leaf!25378) (c!852700 input!5597))) b!4997531))

(declare-fun m!6030664 () Bool)

(assert (=> b!4997530 m!6030664))

(declare-fun m!6030666 () Bool)

(assert (=> b!4997530 m!6030666))

(declare-fun m!6030668 () Bool)

(assert (=> b!4997531 m!6030668))

(assert (=> b!4996844 m!6030016))

(check-sat (not b!4997426) (not b!4997508) (not b!4997473) (not b!4997176) (not d!1609016) (not b!4997523) (not b!4997287) (not b!4997492) (not b!4997527) (not b!4997478) (not b!4997294) (not b!4997199) (not b!4997501) (not b!4997135) (not b!4997240) (not b!4997474) (not b!4997235) (not d!1608970) (not bm!348772) (not d!1608944) (not b!4997352) (not b!4997495) (not b!4997293) (not b!4997354) (not bm!348770) (not b!4997427) (not b!4997358) (not d!1608992) (not b!4997351) (not b!4997496) (not bm!348773) (not d!1608946) (not b!4997286) (not d!1609006) (not d!1608978) (not b!4997507) (not bm!348776) (not bm!348768) (not b!4997239) tp_is_empty!36531 (not bm!348788) (not b!4997252) (not b!4997490) (not d!1609012) (not d!1609018) (not b!4997208) (not b!4997231) (not bm!348767) (not b!4997201) (not b!4997509) (not b!4997525) (not b!4997206) (not b!4997134) (not b!4997402) (not b!4997491) (not b!4997202) (not d!1609032) (not b!4997524) (not bm!348771) (not b!4997183) (not b!4997396) (not b!4997232) (not b!4997403) (not b!4997253) (not b!4997435) (not b!4997230) (not b!4997471) (not b!4997529) (not b!4997398) (not b!4997225) (not b!4997207) (not d!1609024) (not d!1608984) (not d!1609008) (not d!1608872) (not b!4997356) (not bm!348778) (not b!4997504) (not b!4997505) (not d!1608974) (not b!4997246) (not b!4997133) (not d!1608950) (not b!4997289) (not d!1608994) (not bm!348769) (not bm!348789) (not d!1608968) (not b!4997514) (not b!4997334) (not d!1609002) (not b!4997177) (not b!4997169) (not b!4997494) (not b!4997528) (not b!4997359) (not bm!348766) (not b!4997530) (not b!4996856) (not b!4997476) (not b!4997532) (not d!1608980) (not b!4997247) (not b!4997461) (not b!4997397) (not d!1608952) (not d!1609030) (not b!4996844) (not d!1609022) (not bm!348781) (not d!1609010) (not b!4997404) (not d!1609004) (not b!4997291) (not d!1608960) (not b!4997335) (not b!4997469) (not b!4997503) (not b!4997241) (not d!1608966) (not b!4997237) (not d!1609014) (not b!4997167) (not b!4997400) (not b!4997531) (not d!1609000) (not b!4997203) (not d!1608956) (not setNonEmpty!28284))
(check-sat)
