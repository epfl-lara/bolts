; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!527528 () Bool)

(assert start!527528)

(declare-fun b!4991235 () Bool)

(declare-fun e!3119634 () Bool)

(declare-fun tp!1399375 () Bool)

(assert (=> b!4991235 (= e!3119634 tp!1399375)))

(declare-fun b!4991236 () Bool)

(declare-fun e!3119632 () Bool)

(declare-fun e!3119633 () Bool)

(assert (=> b!4991236 (= e!3119632 e!3119633)))

(declare-fun res!2130937 () Bool)

(assert (=> b!4991236 (=> (not res!2130937) (not e!3119633))))

(declare-datatypes ((C!27774 0))(
  ( (C!27775 (val!23253 Int)) )
))
(declare-datatypes ((List!57890 0))(
  ( (Nil!57766) (Cons!57766 (h!64214 C!27774) (t!370216 List!57890)) )
))
(declare-datatypes ((IArray!30623 0))(
  ( (IArray!30624 (innerList!15369 List!57890)) )
))
(declare-datatypes ((Conc!15281 0))(
  ( (Node!15281 (left!42252 Conc!15281) (right!42582 Conc!15281) (csize!30792 Int) (cheight!15492 Int)) (Leaf!25371 (xs!18607 IArray!30623) (csize!30793 Int)) (Empty!15281) )
))
(declare-datatypes ((BalanceConc!29992 0))(
  ( (BalanceConc!29993 (c!851415 Conc!15281)) )
))
(declare-datatypes ((tuple2!62876 0))(
  ( (tuple2!62877 (_1!34741 BalanceConc!29992) (_2!34741 BalanceConc!29992)) )
))
(declare-fun lt!2064688 () tuple2!62876)

(declare-fun lt!2064691 () List!57890)

(declare-fun ++!12606 (List!57890 List!57890) List!57890)

(declare-fun list!18567 (BalanceConc!29992) List!57890)

(assert (=> b!4991236 (= res!2130937 (= (++!12606 (list!18567 (_1!34741 lt!2064688)) (list!18567 (_2!34741 lt!2064688))) lt!2064691))))

(declare-datatypes ((tuple2!62878 0))(
  ( (tuple2!62879 (_1!34742 List!57890) (_2!34742 List!57890)) )
))
(declare-fun lt!2064690 () tuple2!62878)

(declare-datatypes ((Regex!13762 0))(
  ( (ElementMatch!13762 (c!851416 C!27774)) (Concat!22555 (regOne!28036 Regex!13762) (regTwo!28036 Regex!13762)) (EmptyExpr!13762) (Star!13762 (reg!14091 Regex!13762)) (EmptyLang!13762) (Union!13762 (regOne!28037 Regex!13762) (regTwo!28037 Regex!13762)) )
))
(declare-fun r!12727 () Regex!13762)

(declare-fun findLongestMatch!1775 (Regex!13762 List!57890) tuple2!62878)

(assert (=> b!4991236 (= lt!2064690 (findLongestMatch!1775 r!12727 lt!2064691))))

(declare-fun lt!2064687 () Int)

(declare-fun input!5597 () BalanceConc!29992)

(declare-fun size!38378 (BalanceConc!29992) Int)

(assert (=> b!4991236 (= lt!2064687 (size!38378 input!5597))))

(declare-fun lt!2064689 () Int)

(declare-fun totalInput!1012 () BalanceConc!29992)

(assert (=> b!4991236 (= lt!2064689 (size!38378 totalInput!1012))))

(declare-datatypes ((List!57891 0))(
  ( (Nil!57767) (Cons!57767 (h!64215 Regex!13762) (t!370217 List!57891)) )
))
(declare-datatypes ((Context!6374 0))(
  ( (Context!6375 (exprs!3687 List!57891)) )
))
(declare-fun z!4183 () (Set Context!6374))

(declare-fun findLongestMatchZipperFastV2!64 ((Set Context!6374) BalanceConc!29992 BalanceConc!29992) tuple2!62876)

(assert (=> b!4991236 (= lt!2064688 (findLongestMatchZipperFastV2!64 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4991237 () Bool)

(declare-fun e!3119628 () Bool)

(declare-fun tp!1399377 () Bool)

(declare-fun tp!1399380 () Bool)

(assert (=> b!4991237 (= e!3119628 (and tp!1399377 tp!1399380))))

(declare-fun setIsEmpty!28247 () Bool)

(declare-fun setRes!28247 () Bool)

(assert (=> setIsEmpty!28247 setRes!28247))

(declare-fun res!2130934 () Bool)

(declare-fun e!3119629 () Bool)

(assert (=> start!527528 (=> (not res!2130934) (not e!3119629))))

(declare-fun validRegex!6059 (Regex!13762) Bool)

(assert (=> start!527528 (= res!2130934 (validRegex!6059 r!12727))))

(assert (=> start!527528 e!3119629))

(assert (=> start!527528 e!3119628))

(declare-fun condSetEmpty!28247 () Bool)

(assert (=> start!527528 (= condSetEmpty!28247 (= z!4183 (as set.empty (Set Context!6374))))))

(assert (=> start!527528 setRes!28247))

(declare-fun e!3119631 () Bool)

(declare-fun inv!75824 (BalanceConc!29992) Bool)

(assert (=> start!527528 (and (inv!75824 input!5597) e!3119631)))

(declare-fun e!3119630 () Bool)

(assert (=> start!527528 (and (inv!75824 totalInput!1012) e!3119630)))

(declare-fun b!4991238 () Bool)

(declare-fun tp_is_empty!36521 () Bool)

(assert (=> b!4991238 (= e!3119628 tp_is_empty!36521)))

(declare-fun b!4991239 () Bool)

(declare-fun tp!1399376 () Bool)

(assert (=> b!4991239 (= e!3119628 tp!1399376)))

(declare-fun b!4991240 () Bool)

(assert (=> b!4991240 (= e!3119633 (not (= (++!12606 (_1!34742 lt!2064690) (_2!34742 lt!2064690)) lt!2064691)))))

(declare-fun setNonEmpty!28247 () Bool)

(declare-fun tp!1399378 () Bool)

(declare-fun setElem!28247 () Context!6374)

(declare-fun inv!75825 (Context!6374) Bool)

(assert (=> setNonEmpty!28247 (= setRes!28247 (and tp!1399378 (inv!75825 setElem!28247) e!3119634))))

(declare-fun setRest!28247 () (Set Context!6374))

(assert (=> setNonEmpty!28247 (= z!4183 (set.union (set.insert setElem!28247 (as set.empty (Set Context!6374))) setRest!28247))))

(declare-fun b!4991241 () Bool)

(declare-fun tp!1399373 () Bool)

(declare-fun inv!75826 (Conc!15281) Bool)

(assert (=> b!4991241 (= e!3119630 (and (inv!75826 (c!851415 totalInput!1012)) tp!1399373))))

(declare-fun b!4991242 () Bool)

(assert (=> b!4991242 (= e!3119629 e!3119632)))

(declare-fun res!2130936 () Bool)

(assert (=> b!4991242 (=> (not res!2130936) (not e!3119632))))

(declare-fun isSuffix!1328 (List!57890 List!57890) Bool)

(assert (=> b!4991242 (= res!2130936 (isSuffix!1328 lt!2064691 (list!18567 totalInput!1012)))))

(assert (=> b!4991242 (= lt!2064691 (list!18567 input!5597))))

(declare-fun b!4991243 () Bool)

(declare-fun tp!1399379 () Bool)

(declare-fun tp!1399374 () Bool)

(assert (=> b!4991243 (= e!3119628 (and tp!1399379 tp!1399374))))

(declare-fun b!4991244 () Bool)

(declare-fun tp!1399381 () Bool)

(assert (=> b!4991244 (= e!3119631 (and (inv!75826 (c!851415 input!5597)) tp!1399381))))

(declare-fun b!4991245 () Bool)

(declare-fun res!2130935 () Bool)

(assert (=> b!4991245 (=> (not res!2130935) (not e!3119629))))

(declare-datatypes ((List!57892 0))(
  ( (Nil!57768) (Cons!57768 (h!64216 Context!6374) (t!370218 List!57892)) )
))
(declare-fun unfocusZipper!289 (List!57892) Regex!13762)

(declare-fun toList!8047 ((Set Context!6374)) List!57892)

(assert (=> b!4991245 (= res!2130935 (= (unfocusZipper!289 (toList!8047 z!4183)) r!12727))))

(assert (= (and start!527528 res!2130934) b!4991245))

(assert (= (and b!4991245 res!2130935) b!4991242))

(assert (= (and b!4991242 res!2130936) b!4991236))

(assert (= (and b!4991236 res!2130937) b!4991240))

(assert (= (and start!527528 (is-ElementMatch!13762 r!12727)) b!4991238))

(assert (= (and start!527528 (is-Concat!22555 r!12727)) b!4991243))

(assert (= (and start!527528 (is-Star!13762 r!12727)) b!4991239))

(assert (= (and start!527528 (is-Union!13762 r!12727)) b!4991237))

(assert (= (and start!527528 condSetEmpty!28247) setIsEmpty!28247))

(assert (= (and start!527528 (not condSetEmpty!28247)) setNonEmpty!28247))

(assert (= setNonEmpty!28247 b!4991235))

(assert (= start!527528 b!4991244))

(assert (= start!527528 b!4991241))

(declare-fun m!6024150 () Bool)

(assert (=> b!4991244 m!6024150))

(declare-fun m!6024152 () Bool)

(assert (=> b!4991242 m!6024152))

(assert (=> b!4991242 m!6024152))

(declare-fun m!6024154 () Bool)

(assert (=> b!4991242 m!6024154))

(declare-fun m!6024156 () Bool)

(assert (=> b!4991242 m!6024156))

(declare-fun m!6024158 () Bool)

(assert (=> setNonEmpty!28247 m!6024158))

(declare-fun m!6024160 () Bool)

(assert (=> start!527528 m!6024160))

(declare-fun m!6024162 () Bool)

(assert (=> start!527528 m!6024162))

(declare-fun m!6024164 () Bool)

(assert (=> start!527528 m!6024164))

(declare-fun m!6024166 () Bool)

(assert (=> b!4991245 m!6024166))

(assert (=> b!4991245 m!6024166))

(declare-fun m!6024168 () Bool)

(assert (=> b!4991245 m!6024168))

(declare-fun m!6024170 () Bool)

(assert (=> b!4991236 m!6024170))

(declare-fun m!6024172 () Bool)

(assert (=> b!4991236 m!6024172))

(declare-fun m!6024174 () Bool)

(assert (=> b!4991236 m!6024174))

(declare-fun m!6024176 () Bool)

(assert (=> b!4991236 m!6024176))

(declare-fun m!6024178 () Bool)

(assert (=> b!4991236 m!6024178))

(declare-fun m!6024180 () Bool)

(assert (=> b!4991236 m!6024180))

(assert (=> b!4991236 m!6024170))

(assert (=> b!4991236 m!6024174))

(declare-fun m!6024182 () Bool)

(assert (=> b!4991236 m!6024182))

(declare-fun m!6024184 () Bool)

(assert (=> b!4991241 m!6024184))

(declare-fun m!6024186 () Bool)

(assert (=> b!4991240 m!6024186))

(push 1)

(assert (not b!4991240))

(assert (not b!4991243))

(assert (not setNonEmpty!28247))

(assert (not b!4991239))

(assert (not b!4991241))

(assert (not b!4991237))

(assert (not b!4991236))

(assert (not b!4991244))

(assert (not start!527528))

(assert (not b!4991242))

(assert (not b!4991235))

(assert (not b!4991245))

(assert tp_is_empty!36521)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1606564 () Bool)

(declare-fun c!851425 () Bool)

(assert (=> d!1606564 (= c!851425 (is-Node!15281 (c!851415 input!5597)))))

(declare-fun e!3119677 () Bool)

(assert (=> d!1606564 (= (inv!75826 (c!851415 input!5597)) e!3119677)))

(declare-fun b!4991306 () Bool)

(declare-fun inv!75830 (Conc!15281) Bool)

(assert (=> b!4991306 (= e!3119677 (inv!75830 (c!851415 input!5597)))))

(declare-fun b!4991307 () Bool)

(declare-fun e!3119678 () Bool)

(assert (=> b!4991307 (= e!3119677 e!3119678)))

(declare-fun res!2130965 () Bool)

(assert (=> b!4991307 (= res!2130965 (not (is-Leaf!25371 (c!851415 input!5597))))))

(assert (=> b!4991307 (=> res!2130965 e!3119678)))

(declare-fun b!4991308 () Bool)

(declare-fun inv!75831 (Conc!15281) Bool)

(assert (=> b!4991308 (= e!3119678 (inv!75831 (c!851415 input!5597)))))

(assert (= (and d!1606564 c!851425) b!4991306))

(assert (= (and d!1606564 (not c!851425)) b!4991307))

(assert (= (and b!4991307 (not res!2130965)) b!4991308))

(declare-fun m!6024238 () Bool)

(assert (=> b!4991306 m!6024238))

(declare-fun m!6024240 () Bool)

(assert (=> b!4991308 m!6024240))

(assert (=> b!4991244 d!1606564))

(declare-fun b!4991328 () Bool)

(declare-fun res!2130975 () Bool)

(declare-fun e!3119691 () Bool)

(assert (=> b!4991328 (=> (not res!2130975) (not e!3119691))))

(declare-fun lt!2064715 () List!57890)

(declare-fun size!38380 (List!57890) Int)

(assert (=> b!4991328 (= res!2130975 (= (size!38380 lt!2064715) (+ (size!38380 (_1!34742 lt!2064690)) (size!38380 (_2!34742 lt!2064690)))))))

(declare-fun b!4991326 () Bool)

(declare-fun e!3119690 () List!57890)

(assert (=> b!4991326 (= e!3119690 (_2!34742 lt!2064690))))

(declare-fun b!4991329 () Bool)

(assert (=> b!4991329 (= e!3119691 (or (not (= (_2!34742 lt!2064690) Nil!57766)) (= lt!2064715 (_1!34742 lt!2064690))))))

(declare-fun b!4991327 () Bool)

(assert (=> b!4991327 (= e!3119690 (Cons!57766 (h!64214 (_1!34742 lt!2064690)) (++!12606 (t!370216 (_1!34742 lt!2064690)) (_2!34742 lt!2064690))))))

(declare-fun d!1606566 () Bool)

(assert (=> d!1606566 e!3119691))

(declare-fun res!2130976 () Bool)

(assert (=> d!1606566 (=> (not res!2130976) (not e!3119691))))

(declare-fun content!10211 (List!57890) (Set C!27774))

(assert (=> d!1606566 (= res!2130976 (= (content!10211 lt!2064715) (set.union (content!10211 (_1!34742 lt!2064690)) (content!10211 (_2!34742 lt!2064690)))))))

(assert (=> d!1606566 (= lt!2064715 e!3119690)))

(declare-fun c!851430 () Bool)

(assert (=> d!1606566 (= c!851430 (is-Nil!57766 (_1!34742 lt!2064690)))))

(assert (=> d!1606566 (= (++!12606 (_1!34742 lt!2064690) (_2!34742 lt!2064690)) lt!2064715)))

(assert (= (and d!1606566 c!851430) b!4991326))

(assert (= (and d!1606566 (not c!851430)) b!4991327))

(assert (= (and d!1606566 res!2130976) b!4991328))

(assert (= (and b!4991328 res!2130975) b!4991329))

(declare-fun m!6024252 () Bool)

(assert (=> b!4991328 m!6024252))

(declare-fun m!6024254 () Bool)

(assert (=> b!4991328 m!6024254))

(declare-fun m!6024256 () Bool)

(assert (=> b!4991328 m!6024256))

(declare-fun m!6024258 () Bool)

(assert (=> b!4991327 m!6024258))

(declare-fun m!6024260 () Bool)

(assert (=> d!1606566 m!6024260))

(declare-fun m!6024262 () Bool)

(assert (=> d!1606566 m!6024262))

(declare-fun m!6024264 () Bool)

(assert (=> d!1606566 m!6024264))

(assert (=> b!4991240 d!1606566))

(declare-fun d!1606574 () Bool)

(declare-fun list!18569 (Conc!15281) List!57890)

(assert (=> d!1606574 (= (list!18567 (_2!34741 lt!2064688)) (list!18569 (c!851415 (_2!34741 lt!2064688))))))

(declare-fun bs!1184914 () Bool)

(assert (= bs!1184914 d!1606574))

(declare-fun m!6024266 () Bool)

(assert (=> bs!1184914 m!6024266))

(assert (=> b!4991236 d!1606574))

(declare-fun b!4991332 () Bool)

(declare-fun res!2130977 () Bool)

(declare-fun e!3119693 () Bool)

(assert (=> b!4991332 (=> (not res!2130977) (not e!3119693))))

(declare-fun lt!2064716 () List!57890)

(assert (=> b!4991332 (= res!2130977 (= (size!38380 lt!2064716) (+ (size!38380 (list!18567 (_1!34741 lt!2064688))) (size!38380 (list!18567 (_2!34741 lt!2064688))))))))

(declare-fun b!4991330 () Bool)

(declare-fun e!3119692 () List!57890)

(assert (=> b!4991330 (= e!3119692 (list!18567 (_2!34741 lt!2064688)))))

(declare-fun b!4991333 () Bool)

(assert (=> b!4991333 (= e!3119693 (or (not (= (list!18567 (_2!34741 lt!2064688)) Nil!57766)) (= lt!2064716 (list!18567 (_1!34741 lt!2064688)))))))

(declare-fun b!4991331 () Bool)

(assert (=> b!4991331 (= e!3119692 (Cons!57766 (h!64214 (list!18567 (_1!34741 lt!2064688))) (++!12606 (t!370216 (list!18567 (_1!34741 lt!2064688))) (list!18567 (_2!34741 lt!2064688)))))))

(declare-fun d!1606576 () Bool)

(assert (=> d!1606576 e!3119693))

(declare-fun res!2130978 () Bool)

(assert (=> d!1606576 (=> (not res!2130978) (not e!3119693))))

(assert (=> d!1606576 (= res!2130978 (= (content!10211 lt!2064716) (set.union (content!10211 (list!18567 (_1!34741 lt!2064688))) (content!10211 (list!18567 (_2!34741 lt!2064688))))))))

(assert (=> d!1606576 (= lt!2064716 e!3119692)))

(declare-fun c!851431 () Bool)

(assert (=> d!1606576 (= c!851431 (is-Nil!57766 (list!18567 (_1!34741 lt!2064688))))))

(assert (=> d!1606576 (= (++!12606 (list!18567 (_1!34741 lt!2064688)) (list!18567 (_2!34741 lt!2064688))) lt!2064716)))

(assert (= (and d!1606576 c!851431) b!4991330))

(assert (= (and d!1606576 (not c!851431)) b!4991331))

(assert (= (and d!1606576 res!2130978) b!4991332))

(assert (= (and b!4991332 res!2130977) b!4991333))

(declare-fun m!6024268 () Bool)

(assert (=> b!4991332 m!6024268))

(assert (=> b!4991332 m!6024170))

(declare-fun m!6024270 () Bool)

(assert (=> b!4991332 m!6024270))

(assert (=> b!4991332 m!6024174))

(declare-fun m!6024272 () Bool)

(assert (=> b!4991332 m!6024272))

(assert (=> b!4991331 m!6024174))

(declare-fun m!6024274 () Bool)

(assert (=> b!4991331 m!6024274))

(declare-fun m!6024276 () Bool)

(assert (=> d!1606576 m!6024276))

(assert (=> d!1606576 m!6024170))

(declare-fun m!6024278 () Bool)

(assert (=> d!1606576 m!6024278))

(assert (=> d!1606576 m!6024174))

(declare-fun m!6024280 () Bool)

(assert (=> d!1606576 m!6024280))

(assert (=> b!4991236 d!1606576))

(declare-fun d!1606578 () Bool)

(declare-fun lt!2064743 () tuple2!62878)

(assert (=> d!1606578 (= (++!12606 (_1!34742 lt!2064743) (_2!34742 lt!2064743)) lt!2064691)))

(declare-fun findLongestMatchInner!1951 (Regex!13762 List!57890 Int List!57890 List!57890 Int) tuple2!62878)

(declare-fun sizeTr!379 (List!57890 Int) Int)

(assert (=> d!1606578 (= lt!2064743 (findLongestMatchInner!1951 r!12727 Nil!57766 0 lt!2064691 lt!2064691 (sizeTr!379 lt!2064691 0)))))

(declare-datatypes ((Unit!148889 0))(
  ( (Unit!148890) )
))
(declare-fun lt!2064740 () Unit!148889)

(declare-fun lt!2064741 () Unit!148889)

(assert (=> d!1606578 (= lt!2064740 lt!2064741)))

(declare-fun lt!2064738 () List!57890)

(declare-fun lt!2064736 () Int)

(assert (=> d!1606578 (= (sizeTr!379 lt!2064738 lt!2064736) (+ (size!38380 lt!2064738) lt!2064736))))

(declare-fun lemmaSizeTrEqualsSize!378 (List!57890 Int) Unit!148889)

(assert (=> d!1606578 (= lt!2064741 (lemmaSizeTrEqualsSize!378 lt!2064738 lt!2064736))))

(assert (=> d!1606578 (= lt!2064736 0)))

(assert (=> d!1606578 (= lt!2064738 Nil!57766)))

(declare-fun lt!2064739 () Unit!148889)

(declare-fun lt!2064742 () Unit!148889)

(assert (=> d!1606578 (= lt!2064739 lt!2064742)))

(declare-fun lt!2064737 () Int)

(assert (=> d!1606578 (= (sizeTr!379 lt!2064691 lt!2064737) (+ (size!38380 lt!2064691) lt!2064737))))

(assert (=> d!1606578 (= lt!2064742 (lemmaSizeTrEqualsSize!378 lt!2064691 lt!2064737))))

(assert (=> d!1606578 (= lt!2064737 0)))

(assert (=> d!1606578 (validRegex!6059 r!12727)))

(assert (=> d!1606578 (= (findLongestMatch!1775 r!12727 lt!2064691) lt!2064743)))

(declare-fun bs!1184915 () Bool)

(assert (= bs!1184915 d!1606578))

(declare-fun m!6024304 () Bool)

(assert (=> bs!1184915 m!6024304))

(declare-fun m!6024306 () Bool)

(assert (=> bs!1184915 m!6024306))

(assert (=> bs!1184915 m!6024160))

(assert (=> bs!1184915 m!6024306))

(declare-fun m!6024308 () Bool)

(assert (=> bs!1184915 m!6024308))

(declare-fun m!6024310 () Bool)

(assert (=> bs!1184915 m!6024310))

(declare-fun m!6024312 () Bool)

(assert (=> bs!1184915 m!6024312))

(declare-fun m!6024314 () Bool)

(assert (=> bs!1184915 m!6024314))

(declare-fun m!6024316 () Bool)

(assert (=> bs!1184915 m!6024316))

(declare-fun m!6024318 () Bool)

(assert (=> bs!1184915 m!6024318))

(declare-fun m!6024320 () Bool)

(assert (=> bs!1184915 m!6024320))

(assert (=> b!4991236 d!1606578))

(declare-fun d!1606586 () Bool)

(declare-fun lt!2064746 () Int)

(assert (=> d!1606586 (= lt!2064746 (size!38380 (list!18567 totalInput!1012)))))

(declare-fun size!38381 (Conc!15281) Int)

(assert (=> d!1606586 (= lt!2064746 (size!38381 (c!851415 totalInput!1012)))))

(assert (=> d!1606586 (= (size!38378 totalInput!1012) lt!2064746)))

(declare-fun bs!1184916 () Bool)

(assert (= bs!1184916 d!1606586))

(assert (=> bs!1184916 m!6024152))

(assert (=> bs!1184916 m!6024152))

(declare-fun m!6024322 () Bool)

(assert (=> bs!1184916 m!6024322))

(declare-fun m!6024324 () Bool)

(assert (=> bs!1184916 m!6024324))

(assert (=> b!4991236 d!1606586))

(declare-fun d!1606588 () Bool)

(declare-fun lt!2064751 () tuple2!62876)

(assert (=> d!1606588 (= (++!12606 (list!18567 (_1!34741 lt!2064751)) (list!18567 (_2!34741 lt!2064751))) (list!18567 input!5597))))

(declare-fun lt!2064752 () Int)

(declare-fun splitAt!424 (BalanceConc!29992 Int) tuple2!62876)

(declare-fun findLongestMatchInnerZipperFastV2!102 ((Set Context!6374) Int BalanceConc!29992 Int) Int)

(assert (=> d!1606588 (= lt!2064751 (splitAt!424 input!5597 (findLongestMatchInnerZipperFastV2!102 z!4183 (- lt!2064752 (size!38378 input!5597)) totalInput!1012 lt!2064752)))))

(assert (=> d!1606588 (= lt!2064752 (size!38378 totalInput!1012))))

(assert (=> d!1606588 (isSuffix!1328 (list!18567 input!5597) (list!18567 totalInput!1012))))

(assert (=> d!1606588 (= (findLongestMatchZipperFastV2!64 z!4183 input!5597 totalInput!1012) lt!2064751)))

(declare-fun bs!1184917 () Bool)

(assert (= bs!1184917 d!1606588))

(assert (=> bs!1184917 m!6024152))

(declare-fun m!6024326 () Bool)

(assert (=> bs!1184917 m!6024326))

(declare-fun m!6024328 () Bool)

(assert (=> bs!1184917 m!6024328))

(declare-fun m!6024330 () Bool)

(assert (=> bs!1184917 m!6024330))

(declare-fun m!6024332 () Bool)

(assert (=> bs!1184917 m!6024332))

(assert (=> bs!1184917 m!6024328))

(assert (=> bs!1184917 m!6024332))

(declare-fun m!6024334 () Bool)

(assert (=> bs!1184917 m!6024334))

(assert (=> bs!1184917 m!6024176))

(assert (=> bs!1184917 m!6024156))

(assert (=> bs!1184917 m!6024152))

(declare-fun m!6024336 () Bool)

(assert (=> bs!1184917 m!6024336))

(assert (=> bs!1184917 m!6024172))

(assert (=> bs!1184917 m!6024326))

(assert (=> bs!1184917 m!6024156))

(assert (=> b!4991236 d!1606588))

(declare-fun d!1606590 () Bool)

(assert (=> d!1606590 (= (list!18567 (_1!34741 lt!2064688)) (list!18569 (c!851415 (_1!34741 lt!2064688))))))

(declare-fun bs!1184918 () Bool)

(assert (= bs!1184918 d!1606590))

(declare-fun m!6024338 () Bool)

(assert (=> bs!1184918 m!6024338))

(assert (=> b!4991236 d!1606590))

(declare-fun d!1606592 () Bool)

(declare-fun lt!2064753 () Int)

(assert (=> d!1606592 (= lt!2064753 (size!38380 (list!18567 input!5597)))))

(assert (=> d!1606592 (= lt!2064753 (size!38381 (c!851415 input!5597)))))

(assert (=> d!1606592 (= (size!38378 input!5597) lt!2064753)))

(declare-fun bs!1184919 () Bool)

(assert (= bs!1184919 d!1606592))

(assert (=> bs!1184919 m!6024156))

(assert (=> bs!1184919 m!6024156))

(declare-fun m!6024340 () Bool)

(assert (=> bs!1184919 m!6024340))

(declare-fun m!6024342 () Bool)

(assert (=> bs!1184919 m!6024342))

(assert (=> b!4991236 d!1606592))

(declare-fun d!1606594 () Bool)

(declare-fun lt!2064756 () Regex!13762)

(assert (=> d!1606594 (validRegex!6059 lt!2064756)))

(declare-fun generalisedUnion!562 (List!57891) Regex!13762)

(declare-fun unfocusZipperList!75 (List!57892) List!57891)

(assert (=> d!1606594 (= lt!2064756 (generalisedUnion!562 (unfocusZipperList!75 (toList!8047 z!4183))))))

(assert (=> d!1606594 (= (unfocusZipper!289 (toList!8047 z!4183)) lt!2064756)))

(declare-fun bs!1184920 () Bool)

(assert (= bs!1184920 d!1606594))

(declare-fun m!6024344 () Bool)

(assert (=> bs!1184920 m!6024344))

(assert (=> bs!1184920 m!6024166))

(declare-fun m!6024346 () Bool)

(assert (=> bs!1184920 m!6024346))

(assert (=> bs!1184920 m!6024346))

(declare-fun m!6024348 () Bool)

(assert (=> bs!1184920 m!6024348))

(assert (=> b!4991245 d!1606594))

(declare-fun d!1606596 () Bool)

(declare-fun e!3119710 () Bool)

(assert (=> d!1606596 e!3119710))

(declare-fun res!2130991 () Bool)

(assert (=> d!1606596 (=> (not res!2130991) (not e!3119710))))

(declare-fun lt!2064759 () List!57892)

(declare-fun noDuplicate!1011 (List!57892) Bool)

(assert (=> d!1606596 (= res!2130991 (noDuplicate!1011 lt!2064759))))

(declare-fun choose!36891 ((Set Context!6374)) List!57892)

(assert (=> d!1606596 (= lt!2064759 (choose!36891 z!4183))))

(assert (=> d!1606596 (= (toList!8047 z!4183) lt!2064759)))

(declare-fun b!4991360 () Bool)

(declare-fun content!10212 (List!57892) (Set Context!6374))

(assert (=> b!4991360 (= e!3119710 (= (content!10212 lt!2064759) z!4183))))

(assert (= (and d!1606596 res!2130991) b!4991360))

(declare-fun m!6024350 () Bool)

(assert (=> d!1606596 m!6024350))

(declare-fun m!6024352 () Bool)

(assert (=> d!1606596 m!6024352))

(declare-fun m!6024354 () Bool)

(assert (=> b!4991360 m!6024354))

(assert (=> b!4991245 d!1606596))

(declare-fun bm!348272 () Bool)

(declare-fun call!348279 () Bool)

(declare-fun call!348277 () Bool)

(assert (=> bm!348272 (= call!348279 call!348277)))

(declare-fun b!4991379 () Bool)

(declare-fun res!2131002 () Bool)

(declare-fun e!3119727 () Bool)

(assert (=> b!4991379 (=> (not res!2131002) (not e!3119727))))

(assert (=> b!4991379 (= res!2131002 call!348279)))

(declare-fun e!3119725 () Bool)

(assert (=> b!4991379 (= e!3119725 e!3119727)))

(declare-fun bm!348273 () Bool)

(declare-fun call!348278 () Bool)

(declare-fun c!851443 () Bool)

(assert (=> bm!348273 (= call!348278 (validRegex!6059 (ite c!851443 (regTwo!28037 r!12727) (regOne!28036 r!12727))))))

(declare-fun bm!348274 () Bool)

(declare-fun c!851444 () Bool)

(assert (=> bm!348274 (= call!348277 (validRegex!6059 (ite c!851444 (reg!14091 r!12727) (ite c!851443 (regOne!28037 r!12727) (regTwo!28036 r!12727)))))))

(declare-fun b!4991380 () Bool)

(assert (=> b!4991380 (= e!3119727 call!348278)))

(declare-fun b!4991381 () Bool)

(declare-fun res!2131003 () Bool)

(declare-fun e!3119728 () Bool)

(assert (=> b!4991381 (=> res!2131003 e!3119728)))

(assert (=> b!4991381 (= res!2131003 (not (is-Concat!22555 r!12727)))))

(assert (=> b!4991381 (= e!3119725 e!3119728)))

(declare-fun b!4991382 () Bool)

(declare-fun e!3119729 () Bool)

(assert (=> b!4991382 (= e!3119729 call!348279)))

(declare-fun d!1606598 () Bool)

(declare-fun res!2131006 () Bool)

(declare-fun e!3119730 () Bool)

(assert (=> d!1606598 (=> res!2131006 e!3119730)))

(assert (=> d!1606598 (= res!2131006 (is-ElementMatch!13762 r!12727))))

(assert (=> d!1606598 (= (validRegex!6059 r!12727) e!3119730)))

(declare-fun b!4991383 () Bool)

(declare-fun e!3119731 () Bool)

(declare-fun e!3119726 () Bool)

(assert (=> b!4991383 (= e!3119731 e!3119726)))

(declare-fun res!2131004 () Bool)

(declare-fun nullable!4668 (Regex!13762) Bool)

(assert (=> b!4991383 (= res!2131004 (not (nullable!4668 (reg!14091 r!12727))))))

(assert (=> b!4991383 (=> (not res!2131004) (not e!3119726))))

(declare-fun b!4991384 () Bool)

(assert (=> b!4991384 (= e!3119728 e!3119729)))

(declare-fun res!2131005 () Bool)

(assert (=> b!4991384 (=> (not res!2131005) (not e!3119729))))

(assert (=> b!4991384 (= res!2131005 call!348278)))

(declare-fun b!4991385 () Bool)

(assert (=> b!4991385 (= e!3119726 call!348277)))

(declare-fun b!4991386 () Bool)

(assert (=> b!4991386 (= e!3119731 e!3119725)))

(assert (=> b!4991386 (= c!851443 (is-Union!13762 r!12727))))

(declare-fun b!4991387 () Bool)

(assert (=> b!4991387 (= e!3119730 e!3119731)))

(assert (=> b!4991387 (= c!851444 (is-Star!13762 r!12727))))

(assert (= (and d!1606598 (not res!2131006)) b!4991387))

(assert (= (and b!4991387 c!851444) b!4991383))

(assert (= (and b!4991387 (not c!851444)) b!4991386))

(assert (= (and b!4991383 res!2131004) b!4991385))

(assert (= (and b!4991386 c!851443) b!4991379))

(assert (= (and b!4991386 (not c!851443)) b!4991381))

(assert (= (and b!4991379 res!2131002) b!4991380))

(assert (= (and b!4991381 (not res!2131003)) b!4991384))

(assert (= (and b!4991384 res!2131005) b!4991382))

(assert (= (or b!4991380 b!4991384) bm!348273))

(assert (= (or b!4991379 b!4991382) bm!348272))

(assert (= (or b!4991385 bm!348272) bm!348274))

(declare-fun m!6024356 () Bool)

(assert (=> bm!348273 m!6024356))

(declare-fun m!6024358 () Bool)

(assert (=> bm!348274 m!6024358))

(declare-fun m!6024360 () Bool)

(assert (=> b!4991383 m!6024360))

(assert (=> start!527528 d!1606598))

(declare-fun d!1606600 () Bool)

(declare-fun isBalanced!4251 (Conc!15281) Bool)

(assert (=> d!1606600 (= (inv!75824 input!5597) (isBalanced!4251 (c!851415 input!5597)))))

(declare-fun bs!1184921 () Bool)

(assert (= bs!1184921 d!1606600))

(declare-fun m!6024362 () Bool)

(assert (=> bs!1184921 m!6024362))

(assert (=> start!527528 d!1606600))

(declare-fun d!1606602 () Bool)

(assert (=> d!1606602 (= (inv!75824 totalInput!1012) (isBalanced!4251 (c!851415 totalInput!1012)))))

(declare-fun bs!1184922 () Bool)

(assert (= bs!1184922 d!1606602))

(declare-fun m!6024364 () Bool)

(assert (=> bs!1184922 m!6024364))

(assert (=> start!527528 d!1606602))

(declare-fun d!1606604 () Bool)

(declare-fun lambda!248161 () Int)

(declare-fun forall!13341 (List!57891 Int) Bool)

(assert (=> d!1606604 (= (inv!75825 setElem!28247) (forall!13341 (exprs!3687 setElem!28247) lambda!248161))))

(declare-fun bs!1184923 () Bool)

(assert (= bs!1184923 d!1606604))

(declare-fun m!6024366 () Bool)

(assert (=> bs!1184923 m!6024366))

(assert (=> setNonEmpty!28247 d!1606604))

(declare-fun d!1606606 () Bool)

(declare-fun c!851445 () Bool)

(assert (=> d!1606606 (= c!851445 (is-Node!15281 (c!851415 totalInput!1012)))))

(declare-fun e!3119732 () Bool)

(assert (=> d!1606606 (= (inv!75826 (c!851415 totalInput!1012)) e!3119732)))

(declare-fun b!4991388 () Bool)

(assert (=> b!4991388 (= e!3119732 (inv!75830 (c!851415 totalInput!1012)))))

(declare-fun b!4991389 () Bool)

(declare-fun e!3119733 () Bool)

(assert (=> b!4991389 (= e!3119732 e!3119733)))

(declare-fun res!2131007 () Bool)

(assert (=> b!4991389 (= res!2131007 (not (is-Leaf!25371 (c!851415 totalInput!1012))))))

(assert (=> b!4991389 (=> res!2131007 e!3119733)))

(declare-fun b!4991390 () Bool)

(assert (=> b!4991390 (= e!3119733 (inv!75831 (c!851415 totalInput!1012)))))

(assert (= (and d!1606606 c!851445) b!4991388))

(assert (= (and d!1606606 (not c!851445)) b!4991389))

(assert (= (and b!4991389 (not res!2131007)) b!4991390))

(declare-fun m!6024368 () Bool)

(assert (=> b!4991388 m!6024368))

(declare-fun m!6024370 () Bool)

(assert (=> b!4991390 m!6024370))

(assert (=> b!4991241 d!1606606))

(declare-fun d!1606608 () Bool)

(declare-fun e!3119736 () Bool)

(assert (=> d!1606608 e!3119736))

(declare-fun res!2131010 () Bool)

(assert (=> d!1606608 (=> res!2131010 e!3119736)))

(declare-fun lt!2064762 () Bool)

(assert (=> d!1606608 (= res!2131010 (not lt!2064762))))

(declare-fun drop!2425 (List!57890 Int) List!57890)

(assert (=> d!1606608 (= lt!2064762 (= lt!2064691 (drop!2425 (list!18567 totalInput!1012) (- (size!38380 (list!18567 totalInput!1012)) (size!38380 lt!2064691)))))))

(assert (=> d!1606608 (= (isSuffix!1328 lt!2064691 (list!18567 totalInput!1012)) lt!2064762)))

(declare-fun b!4991393 () Bool)

(assert (=> b!4991393 (= e!3119736 (>= (size!38380 (list!18567 totalInput!1012)) (size!38380 lt!2064691)))))

(assert (= (and d!1606608 (not res!2131010)) b!4991393))

(assert (=> d!1606608 m!6024152))

(assert (=> d!1606608 m!6024322))

(assert (=> d!1606608 m!6024318))

(assert (=> d!1606608 m!6024152))

(declare-fun m!6024372 () Bool)

(assert (=> d!1606608 m!6024372))

(assert (=> b!4991393 m!6024152))

(assert (=> b!4991393 m!6024322))

(assert (=> b!4991393 m!6024318))

(assert (=> b!4991242 d!1606608))

(declare-fun d!1606610 () Bool)

(assert (=> d!1606610 (= (list!18567 totalInput!1012) (list!18569 (c!851415 totalInput!1012)))))

(declare-fun bs!1184924 () Bool)

(assert (= bs!1184924 d!1606610))

(declare-fun m!6024374 () Bool)

(assert (=> bs!1184924 m!6024374))

(assert (=> b!4991242 d!1606610))

(declare-fun d!1606612 () Bool)

(assert (=> d!1606612 (= (list!18567 input!5597) (list!18569 (c!851415 input!5597)))))

(declare-fun bs!1184925 () Bool)

(assert (= bs!1184925 d!1606612))

(declare-fun m!6024376 () Bool)

(assert (=> bs!1184925 m!6024376))

(assert (=> b!4991242 d!1606612))

(declare-fun b!4991406 () Bool)

(declare-fun e!3119739 () Bool)

(declare-fun tp!1399422 () Bool)

(assert (=> b!4991406 (= e!3119739 tp!1399422)))

(assert (=> b!4991243 (= tp!1399379 e!3119739)))

(declare-fun b!4991405 () Bool)

(declare-fun tp!1399421 () Bool)

(declare-fun tp!1399419 () Bool)

(assert (=> b!4991405 (= e!3119739 (and tp!1399421 tp!1399419))))

(declare-fun b!4991404 () Bool)

(assert (=> b!4991404 (= e!3119739 tp_is_empty!36521)))

(declare-fun b!4991407 () Bool)

(declare-fun tp!1399420 () Bool)

(declare-fun tp!1399423 () Bool)

(assert (=> b!4991407 (= e!3119739 (and tp!1399420 tp!1399423))))

(assert (= (and b!4991243 (is-ElementMatch!13762 (regOne!28036 r!12727))) b!4991404))

(assert (= (and b!4991243 (is-Concat!22555 (regOne!28036 r!12727))) b!4991405))

(assert (= (and b!4991243 (is-Star!13762 (regOne!28036 r!12727))) b!4991406))

(assert (= (and b!4991243 (is-Union!13762 (regOne!28036 r!12727))) b!4991407))

(declare-fun b!4991410 () Bool)

(declare-fun e!3119740 () Bool)

(declare-fun tp!1399427 () Bool)

(assert (=> b!4991410 (= e!3119740 tp!1399427)))

(assert (=> b!4991243 (= tp!1399374 e!3119740)))

(declare-fun b!4991409 () Bool)

(declare-fun tp!1399426 () Bool)

(declare-fun tp!1399424 () Bool)

(assert (=> b!4991409 (= e!3119740 (and tp!1399426 tp!1399424))))

(declare-fun b!4991408 () Bool)

(assert (=> b!4991408 (= e!3119740 tp_is_empty!36521)))

(declare-fun b!4991411 () Bool)

(declare-fun tp!1399425 () Bool)

(declare-fun tp!1399428 () Bool)

(assert (=> b!4991411 (= e!3119740 (and tp!1399425 tp!1399428))))

(assert (= (and b!4991243 (is-ElementMatch!13762 (regTwo!28036 r!12727))) b!4991408))

(assert (= (and b!4991243 (is-Concat!22555 (regTwo!28036 r!12727))) b!4991409))

(assert (= (and b!4991243 (is-Star!13762 (regTwo!28036 r!12727))) b!4991410))

(assert (= (and b!4991243 (is-Union!13762 (regTwo!28036 r!12727))) b!4991411))

(declare-fun b!4991414 () Bool)

(declare-fun e!3119741 () Bool)

(declare-fun tp!1399432 () Bool)

(assert (=> b!4991414 (= e!3119741 tp!1399432)))

(assert (=> b!4991239 (= tp!1399376 e!3119741)))

(declare-fun b!4991413 () Bool)

(declare-fun tp!1399431 () Bool)

(declare-fun tp!1399429 () Bool)

(assert (=> b!4991413 (= e!3119741 (and tp!1399431 tp!1399429))))

(declare-fun b!4991412 () Bool)

(assert (=> b!4991412 (= e!3119741 tp_is_empty!36521)))

(declare-fun b!4991415 () Bool)

(declare-fun tp!1399430 () Bool)

(declare-fun tp!1399433 () Bool)

(assert (=> b!4991415 (= e!3119741 (and tp!1399430 tp!1399433))))

(assert (= (and b!4991239 (is-ElementMatch!13762 (reg!14091 r!12727))) b!4991412))

(assert (= (and b!4991239 (is-Concat!22555 (reg!14091 r!12727))) b!4991413))

(assert (= (and b!4991239 (is-Star!13762 (reg!14091 r!12727))) b!4991414))

(assert (= (and b!4991239 (is-Union!13762 (reg!14091 r!12727))) b!4991415))

(declare-fun b!4991420 () Bool)

(declare-fun e!3119744 () Bool)

(declare-fun tp!1399438 () Bool)

(declare-fun tp!1399439 () Bool)

(assert (=> b!4991420 (= e!3119744 (and tp!1399438 tp!1399439))))

(assert (=> b!4991235 (= tp!1399375 e!3119744)))

(assert (= (and b!4991235 (is-Cons!57767 (exprs!3687 setElem!28247))) b!4991420))

(declare-fun e!3119749 () Bool)

(declare-fun tp!1399448 () Bool)

(declare-fun tp!1399446 () Bool)

(declare-fun b!4991429 () Bool)

(assert (=> b!4991429 (= e!3119749 (and (inv!75826 (left!42252 (c!851415 input!5597))) tp!1399448 (inv!75826 (right!42582 (c!851415 input!5597))) tp!1399446))))

(declare-fun b!4991431 () Bool)

(declare-fun e!3119750 () Bool)

(declare-fun tp!1399447 () Bool)

(assert (=> b!4991431 (= e!3119750 tp!1399447)))

(declare-fun b!4991430 () Bool)

(declare-fun inv!75832 (IArray!30623) Bool)

(assert (=> b!4991430 (= e!3119749 (and (inv!75832 (xs!18607 (c!851415 input!5597))) e!3119750))))

(assert (=> b!4991244 (= tp!1399381 (and (inv!75826 (c!851415 input!5597)) e!3119749))))

(assert (= (and b!4991244 (is-Node!15281 (c!851415 input!5597))) b!4991429))

(assert (= b!4991430 b!4991431))

(assert (= (and b!4991244 (is-Leaf!25371 (c!851415 input!5597))) b!4991430))

(declare-fun m!6024378 () Bool)

(assert (=> b!4991429 m!6024378))

(declare-fun m!6024380 () Bool)

(assert (=> b!4991429 m!6024380))

(declare-fun m!6024382 () Bool)

(assert (=> b!4991430 m!6024382))

(assert (=> b!4991244 m!6024150))

(declare-fun condSetEmpty!28253 () Bool)

(assert (=> setNonEmpty!28247 (= condSetEmpty!28253 (= setRest!28247 (as set.empty (Set Context!6374))))))

(declare-fun setRes!28253 () Bool)

(assert (=> setNonEmpty!28247 (= tp!1399378 setRes!28253)))

(declare-fun setIsEmpty!28253 () Bool)

(assert (=> setIsEmpty!28253 setRes!28253))

(declare-fun tp!1399453 () Bool)

(declare-fun setNonEmpty!28253 () Bool)

(declare-fun setElem!28253 () Context!6374)

(declare-fun e!3119753 () Bool)

(assert (=> setNonEmpty!28253 (= setRes!28253 (and tp!1399453 (inv!75825 setElem!28253) e!3119753))))

(declare-fun setRest!28253 () (Set Context!6374))

(assert (=> setNonEmpty!28253 (= setRest!28247 (set.union (set.insert setElem!28253 (as set.empty (Set Context!6374))) setRest!28253))))

(declare-fun b!4991436 () Bool)

(declare-fun tp!1399454 () Bool)

(assert (=> b!4991436 (= e!3119753 tp!1399454)))

(assert (= (and setNonEmpty!28247 condSetEmpty!28253) setIsEmpty!28253))

(assert (= (and setNonEmpty!28247 (not condSetEmpty!28253)) setNonEmpty!28253))

(assert (= setNonEmpty!28253 b!4991436))

(declare-fun m!6024384 () Bool)

(assert (=> setNonEmpty!28253 m!6024384))

(declare-fun b!4991439 () Bool)

(declare-fun e!3119754 () Bool)

(declare-fun tp!1399458 () Bool)

(assert (=> b!4991439 (= e!3119754 tp!1399458)))

(assert (=> b!4991237 (= tp!1399377 e!3119754)))

(declare-fun b!4991438 () Bool)

(declare-fun tp!1399457 () Bool)

(declare-fun tp!1399455 () Bool)

(assert (=> b!4991438 (= e!3119754 (and tp!1399457 tp!1399455))))

(declare-fun b!4991437 () Bool)

(assert (=> b!4991437 (= e!3119754 tp_is_empty!36521)))

(declare-fun b!4991440 () Bool)

(declare-fun tp!1399456 () Bool)

(declare-fun tp!1399459 () Bool)

(assert (=> b!4991440 (= e!3119754 (and tp!1399456 tp!1399459))))

(assert (= (and b!4991237 (is-ElementMatch!13762 (regOne!28037 r!12727))) b!4991437))

(assert (= (and b!4991237 (is-Concat!22555 (regOne!28037 r!12727))) b!4991438))

(assert (= (and b!4991237 (is-Star!13762 (regOne!28037 r!12727))) b!4991439))

(assert (= (and b!4991237 (is-Union!13762 (regOne!28037 r!12727))) b!4991440))

(declare-fun b!4991443 () Bool)

(declare-fun e!3119755 () Bool)

(declare-fun tp!1399463 () Bool)

(assert (=> b!4991443 (= e!3119755 tp!1399463)))

(assert (=> b!4991237 (= tp!1399380 e!3119755)))

(declare-fun b!4991442 () Bool)

(declare-fun tp!1399462 () Bool)

(declare-fun tp!1399460 () Bool)

(assert (=> b!4991442 (= e!3119755 (and tp!1399462 tp!1399460))))

(declare-fun b!4991441 () Bool)

(assert (=> b!4991441 (= e!3119755 tp_is_empty!36521)))

(declare-fun b!4991444 () Bool)

(declare-fun tp!1399461 () Bool)

(declare-fun tp!1399464 () Bool)

(assert (=> b!4991444 (= e!3119755 (and tp!1399461 tp!1399464))))

(assert (= (and b!4991237 (is-ElementMatch!13762 (regTwo!28037 r!12727))) b!4991441))

(assert (= (and b!4991237 (is-Concat!22555 (regTwo!28037 r!12727))) b!4991442))

(assert (= (and b!4991237 (is-Star!13762 (regTwo!28037 r!12727))) b!4991443))

(assert (= (and b!4991237 (is-Union!13762 (regTwo!28037 r!12727))) b!4991444))

(declare-fun tp!1399465 () Bool)

(declare-fun e!3119756 () Bool)

(declare-fun b!4991445 () Bool)

(declare-fun tp!1399467 () Bool)

(assert (=> b!4991445 (= e!3119756 (and (inv!75826 (left!42252 (c!851415 totalInput!1012))) tp!1399467 (inv!75826 (right!42582 (c!851415 totalInput!1012))) tp!1399465))))

(declare-fun b!4991447 () Bool)

(declare-fun e!3119757 () Bool)

(declare-fun tp!1399466 () Bool)

(assert (=> b!4991447 (= e!3119757 tp!1399466)))

(declare-fun b!4991446 () Bool)

(assert (=> b!4991446 (= e!3119756 (and (inv!75832 (xs!18607 (c!851415 totalInput!1012))) e!3119757))))

(assert (=> b!4991241 (= tp!1399373 (and (inv!75826 (c!851415 totalInput!1012)) e!3119756))))

(assert (= (and b!4991241 (is-Node!15281 (c!851415 totalInput!1012))) b!4991445))

(assert (= b!4991446 b!4991447))

(assert (= (and b!4991241 (is-Leaf!25371 (c!851415 totalInput!1012))) b!4991446))

(declare-fun m!6024386 () Bool)

(assert (=> b!4991445 m!6024386))

(declare-fun m!6024388 () Bool)

(assert (=> b!4991445 m!6024388))

(declare-fun m!6024390 () Bool)

(assert (=> b!4991446 m!6024390))

(assert (=> b!4991241 m!6024184))

(push 1)

(assert (not b!4991332))

(assert (not d!1606592))

(assert (not b!4991390))

(assert (not b!4991444))

(assert (not b!4991411))

(assert (not d!1606610))

(assert (not d!1606588))

(assert (not b!4991409))

(assert (not b!4991440))

(assert (not b!4991413))

(assert tp_is_empty!36521)

(assert (not d!1606576))

(assert (not b!4991407))

(assert (not b!4991439))

(assert (not d!1606608))

(assert (not bm!348274))

(assert (not b!4991388))

(assert (not b!4991306))

(assert (not b!4991446))

(assert (not d!1606594))

(assert (not d!1606612))

(assert (not d!1606604))

(assert (not d!1606602))

(assert (not bm!348273))

(assert (not d!1606590))

(assert (not b!4991429))

(assert (not b!4991410))

(assert (not b!4991241))

(assert (not d!1606600))

(assert (not b!4991415))

(assert (not b!4991430))

(assert (not b!4991414))

(assert (not b!4991308))

(assert (not setNonEmpty!28253))

(assert (not b!4991406))

(assert (not b!4991431))

(assert (not b!4991360))

(assert (not b!4991383))

(assert (not b!4991331))

(assert (not b!4991442))

(assert (not d!1606596))

(assert (not b!4991327))

(assert (not d!1606586))

(assert (not b!4991405))

(assert (not b!4991447))

(assert (not b!4991328))

(assert (not d!1606566))

(assert (not b!4991436))

(assert (not b!4991244))

(assert (not b!4991438))

(assert (not b!4991445))

(assert (not b!4991420))

(assert (not b!4991393))

(assert (not b!4991443))

(assert (not d!1606574))

(assert (not d!1606578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

