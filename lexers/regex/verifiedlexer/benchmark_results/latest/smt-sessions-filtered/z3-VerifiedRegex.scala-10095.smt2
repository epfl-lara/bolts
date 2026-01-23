; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528190 () Bool)

(assert start!528190)

(declare-fun setIsEmpty!28314 () Bool)

(declare-fun setRes!28314 () Bool)

(assert (=> setIsEmpty!28314 setRes!28314))

(declare-fun b!4998671 () Bool)

(declare-fun res!2133072 () Bool)

(declare-fun e!3123663 () Bool)

(assert (=> b!4998671 (=> (not res!2133072) (not e!3123663))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27800 0))(
  ( (C!27801 (val!23266 Int)) )
))
(declare-datatypes ((Regex!13775 0))(
  ( (ElementMatch!13775 (c!853071 C!27800)) (Concat!22568 (regOne!28062 Regex!13775) (regTwo!28062 Regex!13775)) (EmptyExpr!13775) (Star!13775 (reg!14104 Regex!13775)) (EmptyLang!13775) (Union!13775 (regOne!28063 Regex!13775) (regTwo!28063 Regex!13775)) )
))
(declare-datatypes ((List!57929 0))(
  ( (Nil!57805) (Cons!57805 (h!64253 Regex!13775) (t!370269 List!57929)) )
))
(declare-datatypes ((Context!6400 0))(
  ( (Context!6401 (exprs!3700 List!57929)) )
))
(declare-fun z!4183 () (InoxSet Context!6400))

(declare-fun r!12727 () Regex!13775)

(declare-datatypes ((List!57930 0))(
  ( (Nil!57806) (Cons!57806 (h!64254 Context!6400) (t!370270 List!57930)) )
))
(declare-fun unfocusZipper!302 (List!57930) Regex!13775)

(declare-fun toList!8060 ((InoxSet Context!6400)) List!57930)

(assert (=> b!4998671 (= res!2133072 (= (unfocusZipper!302 (toList!8060 z!4183)) r!12727))))

(declare-fun b!4998672 () Bool)

(declare-fun e!3123662 () Bool)

(assert (=> b!4998672 (= e!3123663 e!3123662)))

(declare-fun res!2133075 () Bool)

(assert (=> b!4998672 (=> (not res!2133075) (not e!3123662))))

(declare-datatypes ((List!57931 0))(
  ( (Nil!57807) (Cons!57807 (h!64255 C!27800) (t!370271 List!57931)) )
))
(declare-fun lt!2067568 () List!57931)

(declare-datatypes ((IArray!30649 0))(
  ( (IArray!30650 (innerList!15382 List!57931)) )
))
(declare-datatypes ((Conc!15294 0))(
  ( (Node!15294 (left!42275 Conc!15294) (right!42605 Conc!15294) (csize!30818 Int) (cheight!15505 Int)) (Leaf!25390 (xs!18620 IArray!30649) (csize!30819 Int)) (Empty!15294) )
))
(declare-datatypes ((BalanceConc!30018 0))(
  ( (BalanceConc!30019 (c!853072 Conc!15294)) )
))
(declare-fun totalInput!1012 () BalanceConc!30018)

(declare-fun isSuffix!1341 (List!57931 List!57931) Bool)

(declare-fun list!18590 (BalanceConc!30018) List!57931)

(assert (=> b!4998672 (= res!2133075 (isSuffix!1341 lt!2067568 (list!18590 totalInput!1012)))))

(declare-fun input!5597 () BalanceConc!30018)

(assert (=> b!4998672 (= lt!2067568 (list!18590 input!5597))))

(declare-fun b!4998673 () Bool)

(declare-fun e!3123656 () Bool)

(declare-fun tp_is_empty!36547 () Bool)

(assert (=> b!4998673 (= e!3123656 tp_is_empty!36547)))

(declare-fun b!4998674 () Bool)

(declare-fun e!3123660 () Bool)

(declare-fun tp!1401928 () Bool)

(declare-fun inv!75904 (Conc!15294) Bool)

(assert (=> b!4998674 (= e!3123660 (and (inv!75904 (c!853072 totalInput!1012)) tp!1401928))))

(declare-fun b!4998676 () Bool)

(declare-fun e!3123657 () Bool)

(assert (=> b!4998676 (= e!3123662 e!3123657)))

(declare-fun res!2133074 () Bool)

(assert (=> b!4998676 (=> (not res!2133074) (not e!3123657))))

(declare-fun lt!2067562 () List!57931)

(assert (=> b!4998676 (= res!2133074 (= lt!2067562 lt!2067568))))

(declare-fun lt!2067561 () List!57931)

(declare-fun lt!2067563 () List!57931)

(declare-fun ++!12621 (List!57931 List!57931) List!57931)

(assert (=> b!4998676 (= lt!2067562 (++!12621 lt!2067561 lt!2067563))))

(declare-datatypes ((tuple2!62932 0))(
  ( (tuple2!62933 (_1!34769 BalanceConc!30018) (_2!34769 BalanceConc!30018)) )
))
(declare-fun lt!2067560 () tuple2!62932)

(assert (=> b!4998676 (= lt!2067563 (list!18590 (_2!34769 lt!2067560)))))

(assert (=> b!4998676 (= lt!2067561 (list!18590 (_1!34769 lt!2067560)))))

(declare-datatypes ((tuple2!62934 0))(
  ( (tuple2!62935 (_1!34770 List!57931) (_2!34770 List!57931)) )
))
(declare-fun lt!2067567 () tuple2!62934)

(declare-fun findLongestMatch!1788 (Regex!13775 List!57931) tuple2!62934)

(assert (=> b!4998676 (= lt!2067567 (findLongestMatch!1788 r!12727 lt!2067568))))

(declare-fun lt!2067566 () Int)

(declare-fun size!38411 (BalanceConc!30018) Int)

(assert (=> b!4998676 (= lt!2067566 (size!38411 input!5597))))

(declare-fun lt!2067558 () Int)

(assert (=> b!4998676 (= lt!2067558 (size!38411 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!77 ((InoxSet Context!6400) BalanceConc!30018 BalanceConc!30018) tuple2!62932)

(assert (=> b!4998676 (= lt!2067560 (findLongestMatchZipperFastV2!77 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4998677 () Bool)

(declare-fun tp!1401929 () Bool)

(assert (=> b!4998677 (= e!3123656 tp!1401929)))

(declare-fun b!4998678 () Bool)

(declare-fun e!3123658 () Bool)

(declare-fun tp!1401926 () Bool)

(assert (=> b!4998678 (= e!3123658 tp!1401926)))

(declare-fun b!4998679 () Bool)

(declare-fun tp!1401931 () Bool)

(declare-fun tp!1401930 () Bool)

(assert (=> b!4998679 (= e!3123656 (and tp!1401931 tp!1401930))))

(declare-fun res!2133073 () Bool)

(assert (=> start!528190 (=> (not res!2133073) (not e!3123663))))

(declare-fun validRegex!6072 (Regex!13775) Bool)

(assert (=> start!528190 (= res!2133073 (validRegex!6072 r!12727))))

(assert (=> start!528190 e!3123663))

(assert (=> start!528190 e!3123656))

(declare-fun condSetEmpty!28314 () Bool)

(assert (=> start!528190 (= condSetEmpty!28314 (= z!4183 ((as const (Array Context!6400 Bool)) false)))))

(assert (=> start!528190 setRes!28314))

(declare-fun e!3123661 () Bool)

(declare-fun inv!75905 (BalanceConc!30018) Bool)

(assert (=> start!528190 (and (inv!75905 input!5597) e!3123661)))

(assert (=> start!528190 (and (inv!75905 totalInput!1012) e!3123660)))

(declare-fun b!4998675 () Bool)

(declare-fun tp!1401925 () Bool)

(assert (=> b!4998675 (= e!3123661 (and (inv!75904 (c!853072 input!5597)) tp!1401925))))

(declare-fun b!4998680 () Bool)

(declare-fun e!3123659 () Bool)

(assert (=> b!4998680 (= e!3123657 e!3123659)))

(declare-fun res!2133071 () Bool)

(assert (=> b!4998680 (=> (not res!2133071) (not e!3123659))))

(declare-fun lt!2067564 () List!57931)

(assert (=> b!4998680 (= res!2133071 (= lt!2067564 lt!2067568))))

(assert (=> b!4998680 (= lt!2067564 (++!12621 (_1!34770 lt!2067567) (_2!34770 lt!2067567)))))

(declare-fun b!4998681 () Bool)

(declare-fun tp!1401932 () Bool)

(declare-fun tp!1401927 () Bool)

(assert (=> b!4998681 (= e!3123656 (and tp!1401932 tp!1401927))))

(declare-fun setNonEmpty!28314 () Bool)

(declare-fun setElem!28314 () Context!6400)

(declare-fun tp!1401924 () Bool)

(declare-fun inv!75906 (Context!6400) Bool)

(assert (=> setNonEmpty!28314 (= setRes!28314 (and tp!1401924 (inv!75906 setElem!28314) e!3123658))))

(declare-fun setRest!28314 () (InoxSet Context!6400))

(assert (=> setNonEmpty!28314 (= z!4183 ((_ map or) (store ((as const (Array Context!6400 Bool)) false) setElem!28314 true) setRest!28314))))

(declare-fun b!4998682 () Bool)

(assert (=> b!4998682 (= e!3123659 (not (>= (- lt!2067558 lt!2067566) 0)))))

(declare-fun isPrefix!5328 (List!57931 List!57931) Bool)

(assert (=> b!4998682 (isPrefix!5328 (_1!34770 lt!2067567) lt!2067564)))

(declare-datatypes ((Unit!148965 0))(
  ( (Unit!148966) )
))
(declare-fun lt!2067559 () Unit!148965)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3426 (List!57931 List!57931) Unit!148965)

(assert (=> b!4998682 (= lt!2067559 (lemmaConcatTwoListThenFirstIsPrefix!3426 (_1!34770 lt!2067567) (_2!34770 lt!2067567)))))

(assert (=> b!4998682 (isPrefix!5328 lt!2067561 lt!2067562)))

(declare-fun lt!2067565 () Unit!148965)

(assert (=> b!4998682 (= lt!2067565 (lemmaConcatTwoListThenFirstIsPrefix!3426 lt!2067561 lt!2067563))))

(assert (= (and start!528190 res!2133073) b!4998671))

(assert (= (and b!4998671 res!2133072) b!4998672))

(assert (= (and b!4998672 res!2133075) b!4998676))

(assert (= (and b!4998676 res!2133074) b!4998680))

(assert (= (and b!4998680 res!2133071) b!4998682))

(get-info :version)

(assert (= (and start!528190 ((_ is ElementMatch!13775) r!12727)) b!4998673))

(assert (= (and start!528190 ((_ is Concat!22568) r!12727)) b!4998679))

(assert (= (and start!528190 ((_ is Star!13775) r!12727)) b!4998677))

(assert (= (and start!528190 ((_ is Union!13775) r!12727)) b!4998681))

(assert (= (and start!528190 condSetEmpty!28314) setIsEmpty!28314))

(assert (= (and start!528190 (not condSetEmpty!28314)) setNonEmpty!28314))

(assert (= setNonEmpty!28314 b!4998678))

(assert (= start!528190 b!4998675))

(assert (= start!528190 b!4998674))

(declare-fun m!6032008 () Bool)

(assert (=> b!4998675 m!6032008))

(declare-fun m!6032010 () Bool)

(assert (=> start!528190 m!6032010))

(declare-fun m!6032012 () Bool)

(assert (=> start!528190 m!6032012))

(declare-fun m!6032014 () Bool)

(assert (=> start!528190 m!6032014))

(declare-fun m!6032016 () Bool)

(assert (=> b!4998671 m!6032016))

(assert (=> b!4998671 m!6032016))

(declare-fun m!6032018 () Bool)

(assert (=> b!4998671 m!6032018))

(declare-fun m!6032020 () Bool)

(assert (=> b!4998674 m!6032020))

(declare-fun m!6032022 () Bool)

(assert (=> b!4998680 m!6032022))

(declare-fun m!6032024 () Bool)

(assert (=> b!4998672 m!6032024))

(assert (=> b!4998672 m!6032024))

(declare-fun m!6032026 () Bool)

(assert (=> b!4998672 m!6032026))

(declare-fun m!6032028 () Bool)

(assert (=> b!4998672 m!6032028))

(declare-fun m!6032030 () Bool)

(assert (=> b!4998682 m!6032030))

(declare-fun m!6032032 () Bool)

(assert (=> b!4998682 m!6032032))

(declare-fun m!6032034 () Bool)

(assert (=> b!4998682 m!6032034))

(declare-fun m!6032036 () Bool)

(assert (=> b!4998682 m!6032036))

(declare-fun m!6032038 () Bool)

(assert (=> b!4998676 m!6032038))

(declare-fun m!6032040 () Bool)

(assert (=> b!4998676 m!6032040))

(declare-fun m!6032042 () Bool)

(assert (=> b!4998676 m!6032042))

(declare-fun m!6032044 () Bool)

(assert (=> b!4998676 m!6032044))

(declare-fun m!6032046 () Bool)

(assert (=> b!4998676 m!6032046))

(declare-fun m!6032048 () Bool)

(assert (=> b!4998676 m!6032048))

(declare-fun m!6032050 () Bool)

(assert (=> b!4998676 m!6032050))

(declare-fun m!6032052 () Bool)

(assert (=> setNonEmpty!28314 m!6032052))

(check-sat (not b!4998675) (not b!4998678) (not start!528190) (not b!4998672) (not b!4998681) (not b!4998679) (not b!4998682) (not b!4998676) (not b!4998680) (not b!4998677) (not b!4998674) (not setNonEmpty!28314) tp_is_empty!36547 (not b!4998671))
(check-sat)
(get-model)

(declare-fun d!1609234 () Bool)

(declare-fun lambda!248319 () Int)

(declare-fun forall!13353 (List!57929 Int) Bool)

(assert (=> d!1609234 (= (inv!75906 setElem!28314) (forall!13353 (exprs!3700 setElem!28314) lambda!248319))))

(declare-fun bs!1185642 () Bool)

(assert (= bs!1185642 d!1609234))

(declare-fun m!6032146 () Bool)

(assert (=> bs!1185642 m!6032146))

(assert (=> setNonEmpty!28314 d!1609234))

(declare-fun b!4998751 () Bool)

(declare-fun e!3123712 () Bool)

(declare-fun size!38414 (List!57931) Int)

(assert (=> b!4998751 (= e!3123712 (>= (size!38414 lt!2067564) (size!38414 (_1!34770 lt!2067567))))))

(declare-fun b!4998749 () Bool)

(declare-fun res!2133115 () Bool)

(declare-fun e!3123711 () Bool)

(assert (=> b!4998749 (=> (not res!2133115) (not e!3123711))))

(declare-fun head!10718 (List!57931) C!27800)

(assert (=> b!4998749 (= res!2133115 (= (head!10718 (_1!34770 lt!2067567)) (head!10718 lt!2067564)))))

(declare-fun b!4998748 () Bool)

(declare-fun e!3123713 () Bool)

(assert (=> b!4998748 (= e!3123713 e!3123711)))

(declare-fun res!2133117 () Bool)

(assert (=> b!4998748 (=> (not res!2133117) (not e!3123711))))

(assert (=> b!4998748 (= res!2133117 (not ((_ is Nil!57807) lt!2067564)))))

(declare-fun d!1609270 () Bool)

(assert (=> d!1609270 e!3123712))

(declare-fun res!2133118 () Bool)

(assert (=> d!1609270 (=> res!2133118 e!3123712)))

(declare-fun lt!2067617 () Bool)

(assert (=> d!1609270 (= res!2133118 (not lt!2067617))))

(assert (=> d!1609270 (= lt!2067617 e!3123713)))

(declare-fun res!2133116 () Bool)

(assert (=> d!1609270 (=> res!2133116 e!3123713)))

(assert (=> d!1609270 (= res!2133116 ((_ is Nil!57807) (_1!34770 lt!2067567)))))

(assert (=> d!1609270 (= (isPrefix!5328 (_1!34770 lt!2067567) lt!2067564) lt!2067617)))

(declare-fun b!4998750 () Bool)

(declare-fun tail!9851 (List!57931) List!57931)

(assert (=> b!4998750 (= e!3123711 (isPrefix!5328 (tail!9851 (_1!34770 lt!2067567)) (tail!9851 lt!2067564)))))

(assert (= (and d!1609270 (not res!2133116)) b!4998748))

(assert (= (and b!4998748 res!2133117) b!4998749))

(assert (= (and b!4998749 res!2133115) b!4998750))

(assert (= (and d!1609270 (not res!2133118)) b!4998751))

(declare-fun m!6032148 () Bool)

(assert (=> b!4998751 m!6032148))

(declare-fun m!6032150 () Bool)

(assert (=> b!4998751 m!6032150))

(declare-fun m!6032152 () Bool)

(assert (=> b!4998749 m!6032152))

(declare-fun m!6032154 () Bool)

(assert (=> b!4998749 m!6032154))

(declare-fun m!6032156 () Bool)

(assert (=> b!4998750 m!6032156))

(declare-fun m!6032158 () Bool)

(assert (=> b!4998750 m!6032158))

(assert (=> b!4998750 m!6032156))

(assert (=> b!4998750 m!6032158))

(declare-fun m!6032160 () Bool)

(assert (=> b!4998750 m!6032160))

(assert (=> b!4998682 d!1609270))

(declare-fun d!1609272 () Bool)

(assert (=> d!1609272 (isPrefix!5328 (_1!34770 lt!2067567) (++!12621 (_1!34770 lt!2067567) (_2!34770 lt!2067567)))))

(declare-fun lt!2067621 () Unit!148965)

(declare-fun choose!36950 (List!57931 List!57931) Unit!148965)

(assert (=> d!1609272 (= lt!2067621 (choose!36950 (_1!34770 lt!2067567) (_2!34770 lt!2067567)))))

(assert (=> d!1609272 (= (lemmaConcatTwoListThenFirstIsPrefix!3426 (_1!34770 lt!2067567) (_2!34770 lt!2067567)) lt!2067621)))

(declare-fun bs!1185644 () Bool)

(assert (= bs!1185644 d!1609272))

(assert (=> bs!1185644 m!6032022))

(assert (=> bs!1185644 m!6032022))

(declare-fun m!6032178 () Bool)

(assert (=> bs!1185644 m!6032178))

(declare-fun m!6032180 () Bool)

(assert (=> bs!1185644 m!6032180))

(assert (=> b!4998682 d!1609272))

(declare-fun b!4998759 () Bool)

(declare-fun e!3123717 () Bool)

(assert (=> b!4998759 (= e!3123717 (>= (size!38414 lt!2067562) (size!38414 lt!2067561)))))

(declare-fun b!4998757 () Bool)

(declare-fun res!2133121 () Bool)

(declare-fun e!3123716 () Bool)

(assert (=> b!4998757 (=> (not res!2133121) (not e!3123716))))

(assert (=> b!4998757 (= res!2133121 (= (head!10718 lt!2067561) (head!10718 lt!2067562)))))

(declare-fun b!4998756 () Bool)

(declare-fun e!3123718 () Bool)

(assert (=> b!4998756 (= e!3123718 e!3123716)))

(declare-fun res!2133123 () Bool)

(assert (=> b!4998756 (=> (not res!2133123) (not e!3123716))))

(assert (=> b!4998756 (= res!2133123 (not ((_ is Nil!57807) lt!2067562)))))

(declare-fun d!1609278 () Bool)

(assert (=> d!1609278 e!3123717))

(declare-fun res!2133124 () Bool)

(assert (=> d!1609278 (=> res!2133124 e!3123717)))

(declare-fun lt!2067622 () Bool)

(assert (=> d!1609278 (= res!2133124 (not lt!2067622))))

(assert (=> d!1609278 (= lt!2067622 e!3123718)))

(declare-fun res!2133122 () Bool)

(assert (=> d!1609278 (=> res!2133122 e!3123718)))

(assert (=> d!1609278 (= res!2133122 ((_ is Nil!57807) lt!2067561))))

(assert (=> d!1609278 (= (isPrefix!5328 lt!2067561 lt!2067562) lt!2067622)))

(declare-fun b!4998758 () Bool)

(assert (=> b!4998758 (= e!3123716 (isPrefix!5328 (tail!9851 lt!2067561) (tail!9851 lt!2067562)))))

(assert (= (and d!1609278 (not res!2133122)) b!4998756))

(assert (= (and b!4998756 res!2133123) b!4998757))

(assert (= (and b!4998757 res!2133121) b!4998758))

(assert (= (and d!1609278 (not res!2133124)) b!4998759))

(declare-fun m!6032182 () Bool)

(assert (=> b!4998759 m!6032182))

(declare-fun m!6032184 () Bool)

(assert (=> b!4998759 m!6032184))

(declare-fun m!6032186 () Bool)

(assert (=> b!4998757 m!6032186))

(declare-fun m!6032188 () Bool)

(assert (=> b!4998757 m!6032188))

(declare-fun m!6032190 () Bool)

(assert (=> b!4998758 m!6032190))

(declare-fun m!6032192 () Bool)

(assert (=> b!4998758 m!6032192))

(assert (=> b!4998758 m!6032190))

(assert (=> b!4998758 m!6032192))

(declare-fun m!6032194 () Bool)

(assert (=> b!4998758 m!6032194))

(assert (=> b!4998682 d!1609278))

(declare-fun d!1609280 () Bool)

(assert (=> d!1609280 (isPrefix!5328 lt!2067561 (++!12621 lt!2067561 lt!2067563))))

(declare-fun lt!2067623 () Unit!148965)

(assert (=> d!1609280 (= lt!2067623 (choose!36950 lt!2067561 lt!2067563))))

(assert (=> d!1609280 (= (lemmaConcatTwoListThenFirstIsPrefix!3426 lt!2067561 lt!2067563) lt!2067623)))

(declare-fun bs!1185645 () Bool)

(assert (= bs!1185645 d!1609280))

(assert (=> bs!1185645 m!6032044))

(assert (=> bs!1185645 m!6032044))

(declare-fun m!6032196 () Bool)

(assert (=> bs!1185645 m!6032196))

(declare-fun m!6032198 () Bool)

(assert (=> bs!1185645 m!6032198))

(assert (=> b!4998682 d!1609280))

(declare-fun d!1609282 () Bool)

(declare-fun e!3123727 () Bool)

(assert (=> d!1609282 e!3123727))

(declare-fun res!2133135 () Bool)

(assert (=> d!1609282 (=> res!2133135 e!3123727)))

(declare-fun lt!2067628 () Bool)

(assert (=> d!1609282 (= res!2133135 (not lt!2067628))))

(declare-fun drop!2438 (List!57931 Int) List!57931)

(assert (=> d!1609282 (= lt!2067628 (= lt!2067568 (drop!2438 (list!18590 totalInput!1012) (- (size!38414 (list!18590 totalInput!1012)) (size!38414 lt!2067568)))))))

(assert (=> d!1609282 (= (isSuffix!1341 lt!2067568 (list!18590 totalInput!1012)) lt!2067628)))

(declare-fun b!4998770 () Bool)

(assert (=> b!4998770 (= e!3123727 (>= (size!38414 (list!18590 totalInput!1012)) (size!38414 lt!2067568)))))

(assert (= (and d!1609282 (not res!2133135)) b!4998770))

(assert (=> d!1609282 m!6032024))

(declare-fun m!6032200 () Bool)

(assert (=> d!1609282 m!6032200))

(declare-fun m!6032202 () Bool)

(assert (=> d!1609282 m!6032202))

(assert (=> d!1609282 m!6032024))

(declare-fun m!6032204 () Bool)

(assert (=> d!1609282 m!6032204))

(assert (=> b!4998770 m!6032024))

(assert (=> b!4998770 m!6032200))

(assert (=> b!4998770 m!6032202))

(assert (=> b!4998672 d!1609282))

(declare-fun d!1609284 () Bool)

(declare-fun list!18592 (Conc!15294) List!57931)

(assert (=> d!1609284 (= (list!18590 totalInput!1012) (list!18592 (c!853072 totalInput!1012)))))

(declare-fun bs!1185646 () Bool)

(assert (= bs!1185646 d!1609284))

(declare-fun m!6032206 () Bool)

(assert (=> bs!1185646 m!6032206))

(assert (=> b!4998672 d!1609284))

(declare-fun d!1609286 () Bool)

(assert (=> d!1609286 (= (list!18590 input!5597) (list!18592 (c!853072 input!5597)))))

(declare-fun bs!1185647 () Bool)

(assert (= bs!1185647 d!1609286))

(declare-fun m!6032208 () Bool)

(assert (=> bs!1185647 m!6032208))

(assert (=> b!4998672 d!1609286))

(declare-fun b!4998821 () Bool)

(declare-fun res!2133154 () Bool)

(declare-fun e!3123758 () Bool)

(assert (=> b!4998821 (=> res!2133154 e!3123758)))

(assert (=> b!4998821 (= res!2133154 (not ((_ is Concat!22568) r!12727)))))

(declare-fun e!3123763 () Bool)

(assert (=> b!4998821 (= e!3123763 e!3123758)))

(declare-fun b!4998822 () Bool)

(declare-fun e!3123759 () Bool)

(declare-fun e!3123760 () Bool)

(assert (=> b!4998822 (= e!3123759 e!3123760)))

(declare-fun c!853092 () Bool)

(assert (=> b!4998822 (= c!853092 ((_ is Star!13775) r!12727))))

(declare-fun b!4998823 () Bool)

(declare-fun e!3123761 () Bool)

(assert (=> b!4998823 (= e!3123758 e!3123761)))

(declare-fun res!2133155 () Bool)

(assert (=> b!4998823 (=> (not res!2133155) (not e!3123761))))

(declare-fun call!348893 () Bool)

(assert (=> b!4998823 (= res!2133155 call!348893)))

(declare-fun b!4998824 () Bool)

(declare-fun e!3123764 () Bool)

(assert (=> b!4998824 (= e!3123764 call!348893)))

(declare-fun b!4998825 () Bool)

(declare-fun call!348895 () Bool)

(assert (=> b!4998825 (= e!3123761 call!348895)))

(declare-fun b!4998826 () Bool)

(declare-fun e!3123762 () Bool)

(assert (=> b!4998826 (= e!3123760 e!3123762)))

(declare-fun res!2133157 () Bool)

(declare-fun nullable!4677 (Regex!13775) Bool)

(assert (=> b!4998826 (= res!2133157 (not (nullable!4677 (reg!14104 r!12727))))))

(assert (=> b!4998826 (=> (not res!2133157) (not e!3123762))))

(declare-fun bm!348888 () Bool)

(declare-fun call!348894 () Bool)

(assert (=> bm!348888 (= call!348893 call!348894)))

(declare-fun d!1609288 () Bool)

(declare-fun res!2133158 () Bool)

(assert (=> d!1609288 (=> res!2133158 e!3123759)))

(assert (=> d!1609288 (= res!2133158 ((_ is ElementMatch!13775) r!12727))))

(assert (=> d!1609288 (= (validRegex!6072 r!12727) e!3123759)))

(declare-fun c!853091 () Bool)

(declare-fun bm!348889 () Bool)

(assert (=> bm!348889 (= call!348894 (validRegex!6072 (ite c!853092 (reg!14104 r!12727) (ite c!853091 (regTwo!28063 r!12727) (regOne!28062 r!12727)))))))

(declare-fun bm!348890 () Bool)

(assert (=> bm!348890 (= call!348895 (validRegex!6072 (ite c!853091 (regOne!28063 r!12727) (regTwo!28062 r!12727))))))

(declare-fun b!4998827 () Bool)

(declare-fun res!2133156 () Bool)

(assert (=> b!4998827 (=> (not res!2133156) (not e!3123764))))

(assert (=> b!4998827 (= res!2133156 call!348895)))

(assert (=> b!4998827 (= e!3123763 e!3123764)))

(declare-fun b!4998828 () Bool)

(assert (=> b!4998828 (= e!3123760 e!3123763)))

(assert (=> b!4998828 (= c!853091 ((_ is Union!13775) r!12727))))

(declare-fun b!4998829 () Bool)

(assert (=> b!4998829 (= e!3123762 call!348894)))

(assert (= (and d!1609288 (not res!2133158)) b!4998822))

(assert (= (and b!4998822 c!853092) b!4998826))

(assert (= (and b!4998822 (not c!853092)) b!4998828))

(assert (= (and b!4998826 res!2133157) b!4998829))

(assert (= (and b!4998828 c!853091) b!4998827))

(assert (= (and b!4998828 (not c!853091)) b!4998821))

(assert (= (and b!4998827 res!2133156) b!4998824))

(assert (= (and b!4998821 (not res!2133154)) b!4998823))

(assert (= (and b!4998823 res!2133155) b!4998825))

(assert (= (or b!4998824 b!4998823) bm!348888))

(assert (= (or b!4998827 b!4998825) bm!348890))

(assert (= (or b!4998829 bm!348888) bm!348889))

(declare-fun m!6032254 () Bool)

(assert (=> b!4998826 m!6032254))

(declare-fun m!6032256 () Bool)

(assert (=> bm!348889 m!6032256))

(declare-fun m!6032258 () Bool)

(assert (=> bm!348890 m!6032258))

(assert (=> start!528190 d!1609288))

(declare-fun d!1609296 () Bool)

(declare-fun isBalanced!4260 (Conc!15294) Bool)

(assert (=> d!1609296 (= (inv!75905 input!5597) (isBalanced!4260 (c!853072 input!5597)))))

(declare-fun bs!1185650 () Bool)

(assert (= bs!1185650 d!1609296))

(declare-fun m!6032262 () Bool)

(assert (=> bs!1185650 m!6032262))

(assert (=> start!528190 d!1609296))

(declare-fun d!1609298 () Bool)

(assert (=> d!1609298 (= (inv!75905 totalInput!1012) (isBalanced!4260 (c!853072 totalInput!1012)))))

(declare-fun bs!1185651 () Bool)

(assert (= bs!1185651 d!1609298))

(declare-fun m!6032264 () Bool)

(assert (=> bs!1185651 m!6032264))

(assert (=> start!528190 d!1609298))

(declare-fun d!1609300 () Bool)

(declare-fun lt!2067637 () Regex!13775)

(assert (=> d!1609300 (validRegex!6072 lt!2067637)))

(declare-fun generalisedUnion!571 (List!57929) Regex!13775)

(declare-fun unfocusZipperList!84 (List!57930) List!57929)

(assert (=> d!1609300 (= lt!2067637 (generalisedUnion!571 (unfocusZipperList!84 (toList!8060 z!4183))))))

(assert (=> d!1609300 (= (unfocusZipper!302 (toList!8060 z!4183)) lt!2067637)))

(declare-fun bs!1185652 () Bool)

(assert (= bs!1185652 d!1609300))

(declare-fun m!6032266 () Bool)

(assert (=> bs!1185652 m!6032266))

(assert (=> bs!1185652 m!6032016))

(declare-fun m!6032268 () Bool)

(assert (=> bs!1185652 m!6032268))

(assert (=> bs!1185652 m!6032268))

(declare-fun m!6032270 () Bool)

(assert (=> bs!1185652 m!6032270))

(assert (=> b!4998671 d!1609300))

(declare-fun d!1609302 () Bool)

(declare-fun e!3123778 () Bool)

(assert (=> d!1609302 e!3123778))

(declare-fun res!2133161 () Bool)

(assert (=> d!1609302 (=> (not res!2133161) (not e!3123778))))

(declare-fun lt!2067640 () List!57930)

(declare-fun noDuplicate!1020 (List!57930) Bool)

(assert (=> d!1609302 (= res!2133161 (noDuplicate!1020 lt!2067640))))

(declare-fun choose!36952 ((InoxSet Context!6400)) List!57930)

(assert (=> d!1609302 (= lt!2067640 (choose!36952 z!4183))))

(assert (=> d!1609302 (= (toList!8060 z!4183) lt!2067640)))

(declare-fun b!4998862 () Bool)

(declare-fun content!10229 (List!57930) (InoxSet Context!6400))

(assert (=> b!4998862 (= e!3123778 (= (content!10229 lt!2067640) z!4183))))

(assert (= (and d!1609302 res!2133161) b!4998862))

(declare-fun m!6032272 () Bool)

(assert (=> d!1609302 m!6032272))

(declare-fun m!6032274 () Bool)

(assert (=> d!1609302 m!6032274))

(declare-fun m!6032276 () Bool)

(assert (=> b!4998862 m!6032276))

(assert (=> b!4998671 d!1609302))

(declare-fun d!1609304 () Bool)

(assert (=> d!1609304 (= (list!18590 (_1!34769 lt!2067560)) (list!18592 (c!853072 (_1!34769 lt!2067560))))))

(declare-fun bs!1185653 () Bool)

(assert (= bs!1185653 d!1609304))

(declare-fun m!6032278 () Bool)

(assert (=> bs!1185653 m!6032278))

(assert (=> b!4998676 d!1609304))

(declare-fun d!1609306 () Bool)

(assert (=> d!1609306 (= (list!18590 (_2!34769 lt!2067560)) (list!18592 (c!853072 (_2!34769 lt!2067560))))))

(declare-fun bs!1185654 () Bool)

(assert (= bs!1185654 d!1609306))

(declare-fun m!6032280 () Bool)

(assert (=> bs!1185654 m!6032280))

(assert (=> b!4998676 d!1609306))

(declare-fun d!1609308 () Bool)

(declare-fun lt!2067643 () Int)

(assert (=> d!1609308 (= lt!2067643 (size!38414 (list!18590 input!5597)))))

(declare-fun size!38415 (Conc!15294) Int)

(assert (=> d!1609308 (= lt!2067643 (size!38415 (c!853072 input!5597)))))

(assert (=> d!1609308 (= (size!38411 input!5597) lt!2067643)))

(declare-fun bs!1185655 () Bool)

(assert (= bs!1185655 d!1609308))

(assert (=> bs!1185655 m!6032028))

(assert (=> bs!1185655 m!6032028))

(declare-fun m!6032282 () Bool)

(assert (=> bs!1185655 m!6032282))

(declare-fun m!6032284 () Bool)

(assert (=> bs!1185655 m!6032284))

(assert (=> b!4998676 d!1609308))

(declare-fun d!1609310 () Bool)

(declare-fun e!3123784 () Bool)

(assert (=> d!1609310 e!3123784))

(declare-fun res!2133166 () Bool)

(assert (=> d!1609310 (=> (not res!2133166) (not e!3123784))))

(declare-fun lt!2067646 () List!57931)

(declare-fun content!10230 (List!57931) (InoxSet C!27800))

(assert (=> d!1609310 (= res!2133166 (= (content!10230 lt!2067646) ((_ map or) (content!10230 lt!2067561) (content!10230 lt!2067563))))))

(declare-fun e!3123783 () List!57931)

(assert (=> d!1609310 (= lt!2067646 e!3123783)))

(declare-fun c!853095 () Bool)

(assert (=> d!1609310 (= c!853095 ((_ is Nil!57807) lt!2067561))))

(assert (=> d!1609310 (= (++!12621 lt!2067561 lt!2067563) lt!2067646)))

(declare-fun b!4998871 () Bool)

(assert (=> b!4998871 (= e!3123783 lt!2067563)))

(declare-fun b!4998873 () Bool)

(declare-fun res!2133167 () Bool)

(assert (=> b!4998873 (=> (not res!2133167) (not e!3123784))))

(assert (=> b!4998873 (= res!2133167 (= (size!38414 lt!2067646) (+ (size!38414 lt!2067561) (size!38414 lt!2067563))))))

(declare-fun b!4998872 () Bool)

(assert (=> b!4998872 (= e!3123783 (Cons!57807 (h!64255 lt!2067561) (++!12621 (t!370271 lt!2067561) lt!2067563)))))

(declare-fun b!4998874 () Bool)

(assert (=> b!4998874 (= e!3123784 (or (not (= lt!2067563 Nil!57807)) (= lt!2067646 lt!2067561)))))

(assert (= (and d!1609310 c!853095) b!4998871))

(assert (= (and d!1609310 (not c!853095)) b!4998872))

(assert (= (and d!1609310 res!2133166) b!4998873))

(assert (= (and b!4998873 res!2133167) b!4998874))

(declare-fun m!6032286 () Bool)

(assert (=> d!1609310 m!6032286))

(declare-fun m!6032288 () Bool)

(assert (=> d!1609310 m!6032288))

(declare-fun m!6032290 () Bool)

(assert (=> d!1609310 m!6032290))

(declare-fun m!6032292 () Bool)

(assert (=> b!4998873 m!6032292))

(assert (=> b!4998873 m!6032184))

(declare-fun m!6032294 () Bool)

(assert (=> b!4998873 m!6032294))

(declare-fun m!6032296 () Bool)

(assert (=> b!4998872 m!6032296))

(assert (=> b!4998676 d!1609310))

(declare-fun d!1609312 () Bool)

(declare-fun lt!2067647 () Int)

(assert (=> d!1609312 (= lt!2067647 (size!38414 (list!18590 totalInput!1012)))))

(assert (=> d!1609312 (= lt!2067647 (size!38415 (c!853072 totalInput!1012)))))

(assert (=> d!1609312 (= (size!38411 totalInput!1012) lt!2067647)))

(declare-fun bs!1185656 () Bool)

(assert (= bs!1185656 d!1609312))

(assert (=> bs!1185656 m!6032024))

(assert (=> bs!1185656 m!6032024))

(assert (=> bs!1185656 m!6032200))

(declare-fun m!6032298 () Bool)

(assert (=> bs!1185656 m!6032298))

(assert (=> b!4998676 d!1609312))

(declare-fun d!1609314 () Bool)

(declare-fun lt!2067652 () tuple2!62932)

(assert (=> d!1609314 (= (++!12621 (list!18590 (_1!34769 lt!2067652)) (list!18590 (_2!34769 lt!2067652))) (list!18590 input!5597))))

(declare-fun lt!2067653 () Int)

(declare-fun splitAt!435 (BalanceConc!30018 Int) tuple2!62932)

(declare-fun findLongestMatchInnerZipperFastV2!115 ((InoxSet Context!6400) Int BalanceConc!30018 Int) Int)

(assert (=> d!1609314 (= lt!2067652 (splitAt!435 input!5597 (findLongestMatchInnerZipperFastV2!115 z!4183 (- lt!2067653 (size!38411 input!5597)) totalInput!1012 lt!2067653)))))

(assert (=> d!1609314 (= lt!2067653 (size!38411 totalInput!1012))))

(assert (=> d!1609314 (isSuffix!1341 (list!18590 input!5597) (list!18590 totalInput!1012))))

(assert (=> d!1609314 (= (findLongestMatchZipperFastV2!77 z!4183 input!5597 totalInput!1012) lt!2067652)))

(declare-fun bs!1185657 () Bool)

(assert (= bs!1185657 d!1609314))

(declare-fun m!6032300 () Bool)

(assert (=> bs!1185657 m!6032300))

(declare-fun m!6032302 () Bool)

(assert (=> bs!1185657 m!6032302))

(declare-fun m!6032304 () Bool)

(assert (=> bs!1185657 m!6032304))

(declare-fun m!6032306 () Bool)

(assert (=> bs!1185657 m!6032306))

(assert (=> bs!1185657 m!6032024))

(assert (=> bs!1185657 m!6032028))

(assert (=> bs!1185657 m!6032024))

(declare-fun m!6032308 () Bool)

(assert (=> bs!1185657 m!6032308))

(assert (=> bs!1185657 m!6032046))

(assert (=> bs!1185657 m!6032040))

(assert (=> bs!1185657 m!6032304))

(assert (=> bs!1185657 m!6032302))

(assert (=> bs!1185657 m!6032300))

(declare-fun m!6032310 () Bool)

(assert (=> bs!1185657 m!6032310))

(assert (=> bs!1185657 m!6032028))

(assert (=> b!4998676 d!1609314))

(declare-fun d!1609316 () Bool)

(declare-fun lt!2067677 () tuple2!62934)

(assert (=> d!1609316 (= (++!12621 (_1!34770 lt!2067677) (_2!34770 lt!2067677)) lt!2067568)))

(declare-fun findLongestMatchInner!1964 (Regex!13775 List!57931 Int List!57931 List!57931 Int) tuple2!62934)

(declare-fun sizeTr!388 (List!57931 Int) Int)

(assert (=> d!1609316 (= lt!2067677 (findLongestMatchInner!1964 r!12727 Nil!57807 0 lt!2067568 lt!2067568 (sizeTr!388 lt!2067568 0)))))

(declare-fun lt!2067675 () Unit!148965)

(declare-fun lt!2067674 () Unit!148965)

(assert (=> d!1609316 (= lt!2067675 lt!2067674)))

(declare-fun lt!2067672 () List!57931)

(declare-fun lt!2067670 () Int)

(assert (=> d!1609316 (= (sizeTr!388 lt!2067672 lt!2067670) (+ (size!38414 lt!2067672) lt!2067670))))

(declare-fun lemmaSizeTrEqualsSize!387 (List!57931 Int) Unit!148965)

(assert (=> d!1609316 (= lt!2067674 (lemmaSizeTrEqualsSize!387 lt!2067672 lt!2067670))))

(assert (=> d!1609316 (= lt!2067670 0)))

(assert (=> d!1609316 (= lt!2067672 Nil!57807)))

(declare-fun lt!2067676 () Unit!148965)

(declare-fun lt!2067673 () Unit!148965)

(assert (=> d!1609316 (= lt!2067676 lt!2067673)))

(declare-fun lt!2067671 () Int)

(assert (=> d!1609316 (= (sizeTr!388 lt!2067568 lt!2067671) (+ (size!38414 lt!2067568) lt!2067671))))

(assert (=> d!1609316 (= lt!2067673 (lemmaSizeTrEqualsSize!387 lt!2067568 lt!2067671))))

(assert (=> d!1609316 (= lt!2067671 0)))

(assert (=> d!1609316 (validRegex!6072 r!12727)))

(assert (=> d!1609316 (= (findLongestMatch!1788 r!12727 lt!2067568) lt!2067677)))

(declare-fun bs!1185658 () Bool)

(assert (= bs!1185658 d!1609316))

(declare-fun m!6032312 () Bool)

(assert (=> bs!1185658 m!6032312))

(declare-fun m!6032314 () Bool)

(assert (=> bs!1185658 m!6032314))

(declare-fun m!6032316 () Bool)

(assert (=> bs!1185658 m!6032316))

(declare-fun m!6032318 () Bool)

(assert (=> bs!1185658 m!6032318))

(declare-fun m!6032320 () Bool)

(assert (=> bs!1185658 m!6032320))

(declare-fun m!6032322 () Bool)

(assert (=> bs!1185658 m!6032322))

(assert (=> bs!1185658 m!6032320))

(declare-fun m!6032324 () Bool)

(assert (=> bs!1185658 m!6032324))

(declare-fun m!6032326 () Bool)

(assert (=> bs!1185658 m!6032326))

(assert (=> bs!1185658 m!6032202))

(assert (=> bs!1185658 m!6032010))

(assert (=> b!4998676 d!1609316))

(declare-fun d!1609318 () Bool)

(declare-fun c!853098 () Bool)

(assert (=> d!1609318 (= c!853098 ((_ is Node!15294) (c!853072 totalInput!1012)))))

(declare-fun e!3123789 () Bool)

(assert (=> d!1609318 (= (inv!75904 (c!853072 totalInput!1012)) e!3123789)))

(declare-fun b!4998881 () Bool)

(declare-fun inv!75910 (Conc!15294) Bool)

(assert (=> b!4998881 (= e!3123789 (inv!75910 (c!853072 totalInput!1012)))))

(declare-fun b!4998882 () Bool)

(declare-fun e!3123790 () Bool)

(assert (=> b!4998882 (= e!3123789 e!3123790)))

(declare-fun res!2133170 () Bool)

(assert (=> b!4998882 (= res!2133170 (not ((_ is Leaf!25390) (c!853072 totalInput!1012))))))

(assert (=> b!4998882 (=> res!2133170 e!3123790)))

(declare-fun b!4998883 () Bool)

(declare-fun inv!75911 (Conc!15294) Bool)

(assert (=> b!4998883 (= e!3123790 (inv!75911 (c!853072 totalInput!1012)))))

(assert (= (and d!1609318 c!853098) b!4998881))

(assert (= (and d!1609318 (not c!853098)) b!4998882))

(assert (= (and b!4998882 (not res!2133170)) b!4998883))

(declare-fun m!6032328 () Bool)

(assert (=> b!4998881 m!6032328))

(declare-fun m!6032330 () Bool)

(assert (=> b!4998883 m!6032330))

(assert (=> b!4998674 d!1609318))

(declare-fun d!1609320 () Bool)

(declare-fun c!853099 () Bool)

(assert (=> d!1609320 (= c!853099 ((_ is Node!15294) (c!853072 input!5597)))))

(declare-fun e!3123791 () Bool)

(assert (=> d!1609320 (= (inv!75904 (c!853072 input!5597)) e!3123791)))

(declare-fun b!4998884 () Bool)

(assert (=> b!4998884 (= e!3123791 (inv!75910 (c!853072 input!5597)))))

(declare-fun b!4998885 () Bool)

(declare-fun e!3123792 () Bool)

(assert (=> b!4998885 (= e!3123791 e!3123792)))

(declare-fun res!2133171 () Bool)

(assert (=> b!4998885 (= res!2133171 (not ((_ is Leaf!25390) (c!853072 input!5597))))))

(assert (=> b!4998885 (=> res!2133171 e!3123792)))

(declare-fun b!4998886 () Bool)

(assert (=> b!4998886 (= e!3123792 (inv!75911 (c!853072 input!5597)))))

(assert (= (and d!1609320 c!853099) b!4998884))

(assert (= (and d!1609320 (not c!853099)) b!4998885))

(assert (= (and b!4998885 (not res!2133171)) b!4998886))

(declare-fun m!6032332 () Bool)

(assert (=> b!4998884 m!6032332))

(declare-fun m!6032334 () Bool)

(assert (=> b!4998886 m!6032334))

(assert (=> b!4998675 d!1609320))

(declare-fun d!1609322 () Bool)

(declare-fun e!3123794 () Bool)

(assert (=> d!1609322 e!3123794))

(declare-fun res!2133172 () Bool)

(assert (=> d!1609322 (=> (not res!2133172) (not e!3123794))))

(declare-fun lt!2067678 () List!57931)

(assert (=> d!1609322 (= res!2133172 (= (content!10230 lt!2067678) ((_ map or) (content!10230 (_1!34770 lt!2067567)) (content!10230 (_2!34770 lt!2067567)))))))

(declare-fun e!3123793 () List!57931)

(assert (=> d!1609322 (= lt!2067678 e!3123793)))

(declare-fun c!853100 () Bool)

(assert (=> d!1609322 (= c!853100 ((_ is Nil!57807) (_1!34770 lt!2067567)))))

(assert (=> d!1609322 (= (++!12621 (_1!34770 lt!2067567) (_2!34770 lt!2067567)) lt!2067678)))

(declare-fun b!4998887 () Bool)

(assert (=> b!4998887 (= e!3123793 (_2!34770 lt!2067567))))

(declare-fun b!4998889 () Bool)

(declare-fun res!2133173 () Bool)

(assert (=> b!4998889 (=> (not res!2133173) (not e!3123794))))

(assert (=> b!4998889 (= res!2133173 (= (size!38414 lt!2067678) (+ (size!38414 (_1!34770 lt!2067567)) (size!38414 (_2!34770 lt!2067567)))))))

(declare-fun b!4998888 () Bool)

(assert (=> b!4998888 (= e!3123793 (Cons!57807 (h!64255 (_1!34770 lt!2067567)) (++!12621 (t!370271 (_1!34770 lt!2067567)) (_2!34770 lt!2067567))))))

(declare-fun b!4998890 () Bool)

(assert (=> b!4998890 (= e!3123794 (or (not (= (_2!34770 lt!2067567) Nil!57807)) (= lt!2067678 (_1!34770 lt!2067567))))))

(assert (= (and d!1609322 c!853100) b!4998887))

(assert (= (and d!1609322 (not c!853100)) b!4998888))

(assert (= (and d!1609322 res!2133172) b!4998889))

(assert (= (and b!4998889 res!2133173) b!4998890))

(declare-fun m!6032336 () Bool)

(assert (=> d!1609322 m!6032336))

(declare-fun m!6032338 () Bool)

(assert (=> d!1609322 m!6032338))

(declare-fun m!6032340 () Bool)

(assert (=> d!1609322 m!6032340))

(declare-fun m!6032342 () Bool)

(assert (=> b!4998889 m!6032342))

(assert (=> b!4998889 m!6032150))

(declare-fun m!6032344 () Bool)

(assert (=> b!4998889 m!6032344))

(declare-fun m!6032346 () Bool)

(assert (=> b!4998888 m!6032346))

(assert (=> b!4998680 d!1609322))

(declare-fun b!4998901 () Bool)

(declare-fun e!3123797 () Bool)

(assert (=> b!4998901 (= e!3123797 tp_is_empty!36547)))

(declare-fun b!4998903 () Bool)

(declare-fun tp!1402006 () Bool)

(assert (=> b!4998903 (= e!3123797 tp!1402006)))

(declare-fun b!4998902 () Bool)

(declare-fun tp!1402005 () Bool)

(declare-fun tp!1402004 () Bool)

(assert (=> b!4998902 (= e!3123797 (and tp!1402005 tp!1402004))))

(assert (=> b!4998677 (= tp!1401929 e!3123797)))

(declare-fun b!4998904 () Bool)

(declare-fun tp!1402003 () Bool)

(declare-fun tp!1402002 () Bool)

(assert (=> b!4998904 (= e!3123797 (and tp!1402003 tp!1402002))))

(assert (= (and b!4998677 ((_ is ElementMatch!13775) (reg!14104 r!12727))) b!4998901))

(assert (= (and b!4998677 ((_ is Concat!22568) (reg!14104 r!12727))) b!4998902))

(assert (= (and b!4998677 ((_ is Star!13775) (reg!14104 r!12727))) b!4998903))

(assert (= (and b!4998677 ((_ is Union!13775) (reg!14104 r!12727))) b!4998904))

(declare-fun condSetEmpty!28320 () Bool)

(assert (=> setNonEmpty!28314 (= condSetEmpty!28320 (= setRest!28314 ((as const (Array Context!6400 Bool)) false)))))

(declare-fun setRes!28320 () Bool)

(assert (=> setNonEmpty!28314 (= tp!1401924 setRes!28320)))

(declare-fun setIsEmpty!28320 () Bool)

(assert (=> setIsEmpty!28320 setRes!28320))

(declare-fun tp!1402011 () Bool)

(declare-fun setNonEmpty!28320 () Bool)

(declare-fun setElem!28320 () Context!6400)

(declare-fun e!3123800 () Bool)

(assert (=> setNonEmpty!28320 (= setRes!28320 (and tp!1402011 (inv!75906 setElem!28320) e!3123800))))

(declare-fun setRest!28320 () (InoxSet Context!6400))

(assert (=> setNonEmpty!28320 (= setRest!28314 ((_ map or) (store ((as const (Array Context!6400 Bool)) false) setElem!28320 true) setRest!28320))))

(declare-fun b!4998909 () Bool)

(declare-fun tp!1402012 () Bool)

(assert (=> b!4998909 (= e!3123800 tp!1402012)))

(assert (= (and setNonEmpty!28314 condSetEmpty!28320) setIsEmpty!28320))

(assert (= (and setNonEmpty!28314 (not condSetEmpty!28320)) setNonEmpty!28320))

(assert (= setNonEmpty!28320 b!4998909))

(declare-fun m!6032348 () Bool)

(assert (=> setNonEmpty!28320 m!6032348))

(declare-fun b!4998910 () Bool)

(declare-fun e!3123801 () Bool)

(assert (=> b!4998910 (= e!3123801 tp_is_empty!36547)))

(declare-fun b!4998912 () Bool)

(declare-fun tp!1402017 () Bool)

(assert (=> b!4998912 (= e!3123801 tp!1402017)))

(declare-fun b!4998911 () Bool)

(declare-fun tp!1402016 () Bool)

(declare-fun tp!1402015 () Bool)

(assert (=> b!4998911 (= e!3123801 (and tp!1402016 tp!1402015))))

(assert (=> b!4998681 (= tp!1401932 e!3123801)))

(declare-fun b!4998913 () Bool)

(declare-fun tp!1402014 () Bool)

(declare-fun tp!1402013 () Bool)

(assert (=> b!4998913 (= e!3123801 (and tp!1402014 tp!1402013))))

(assert (= (and b!4998681 ((_ is ElementMatch!13775) (regOne!28063 r!12727))) b!4998910))

(assert (= (and b!4998681 ((_ is Concat!22568) (regOne!28063 r!12727))) b!4998911))

(assert (= (and b!4998681 ((_ is Star!13775) (regOne!28063 r!12727))) b!4998912))

(assert (= (and b!4998681 ((_ is Union!13775) (regOne!28063 r!12727))) b!4998913))

(declare-fun b!4998914 () Bool)

(declare-fun e!3123802 () Bool)

(assert (=> b!4998914 (= e!3123802 tp_is_empty!36547)))

(declare-fun b!4998916 () Bool)

(declare-fun tp!1402022 () Bool)

(assert (=> b!4998916 (= e!3123802 tp!1402022)))

(declare-fun b!4998915 () Bool)

(declare-fun tp!1402021 () Bool)

(declare-fun tp!1402020 () Bool)

(assert (=> b!4998915 (= e!3123802 (and tp!1402021 tp!1402020))))

(assert (=> b!4998681 (= tp!1401927 e!3123802)))

(declare-fun b!4998917 () Bool)

(declare-fun tp!1402019 () Bool)

(declare-fun tp!1402018 () Bool)

(assert (=> b!4998917 (= e!3123802 (and tp!1402019 tp!1402018))))

(assert (= (and b!4998681 ((_ is ElementMatch!13775) (regTwo!28063 r!12727))) b!4998914))

(assert (= (and b!4998681 ((_ is Concat!22568) (regTwo!28063 r!12727))) b!4998915))

(assert (= (and b!4998681 ((_ is Star!13775) (regTwo!28063 r!12727))) b!4998916))

(assert (= (and b!4998681 ((_ is Union!13775) (regTwo!28063 r!12727))) b!4998917))

(declare-fun tp!1402030 () Bool)

(declare-fun e!3123807 () Bool)

(declare-fun tp!1402029 () Bool)

(declare-fun b!4998926 () Bool)

(assert (=> b!4998926 (= e!3123807 (and (inv!75904 (left!42275 (c!853072 totalInput!1012))) tp!1402030 (inv!75904 (right!42605 (c!853072 totalInput!1012))) tp!1402029))))

(declare-fun b!4998928 () Bool)

(declare-fun e!3123808 () Bool)

(declare-fun tp!1402031 () Bool)

(assert (=> b!4998928 (= e!3123808 tp!1402031)))

(declare-fun b!4998927 () Bool)

(declare-fun inv!75912 (IArray!30649) Bool)

(assert (=> b!4998927 (= e!3123807 (and (inv!75912 (xs!18620 (c!853072 totalInput!1012))) e!3123808))))

(assert (=> b!4998674 (= tp!1401928 (and (inv!75904 (c!853072 totalInput!1012)) e!3123807))))

(assert (= (and b!4998674 ((_ is Node!15294) (c!853072 totalInput!1012))) b!4998926))

(assert (= b!4998927 b!4998928))

(assert (= (and b!4998674 ((_ is Leaf!25390) (c!853072 totalInput!1012))) b!4998927))

(declare-fun m!6032350 () Bool)

(assert (=> b!4998926 m!6032350))

(declare-fun m!6032352 () Bool)

(assert (=> b!4998926 m!6032352))

(declare-fun m!6032354 () Bool)

(assert (=> b!4998927 m!6032354))

(assert (=> b!4998674 m!6032020))

(declare-fun tp!1402033 () Bool)

(declare-fun e!3123809 () Bool)

(declare-fun tp!1402032 () Bool)

(declare-fun b!4998929 () Bool)

(assert (=> b!4998929 (= e!3123809 (and (inv!75904 (left!42275 (c!853072 input!5597))) tp!1402033 (inv!75904 (right!42605 (c!853072 input!5597))) tp!1402032))))

(declare-fun b!4998931 () Bool)

(declare-fun e!3123810 () Bool)

(declare-fun tp!1402034 () Bool)

(assert (=> b!4998931 (= e!3123810 tp!1402034)))

(declare-fun b!4998930 () Bool)

(assert (=> b!4998930 (= e!3123809 (and (inv!75912 (xs!18620 (c!853072 input!5597))) e!3123810))))

(assert (=> b!4998675 (= tp!1401925 (and (inv!75904 (c!853072 input!5597)) e!3123809))))

(assert (= (and b!4998675 ((_ is Node!15294) (c!853072 input!5597))) b!4998929))

(assert (= b!4998930 b!4998931))

(assert (= (and b!4998675 ((_ is Leaf!25390) (c!853072 input!5597))) b!4998930))

(declare-fun m!6032356 () Bool)

(assert (=> b!4998929 m!6032356))

(declare-fun m!6032358 () Bool)

(assert (=> b!4998929 m!6032358))

(declare-fun m!6032360 () Bool)

(assert (=> b!4998930 m!6032360))

(assert (=> b!4998675 m!6032008))

(declare-fun b!4998936 () Bool)

(declare-fun e!3123813 () Bool)

(declare-fun tp!1402039 () Bool)

(declare-fun tp!1402040 () Bool)

(assert (=> b!4998936 (= e!3123813 (and tp!1402039 tp!1402040))))

(assert (=> b!4998678 (= tp!1401926 e!3123813)))

(assert (= (and b!4998678 ((_ is Cons!57805) (exprs!3700 setElem!28314))) b!4998936))

(declare-fun b!4998937 () Bool)

(declare-fun e!3123814 () Bool)

(assert (=> b!4998937 (= e!3123814 tp_is_empty!36547)))

(declare-fun b!4998939 () Bool)

(declare-fun tp!1402045 () Bool)

(assert (=> b!4998939 (= e!3123814 tp!1402045)))

(declare-fun b!4998938 () Bool)

(declare-fun tp!1402044 () Bool)

(declare-fun tp!1402043 () Bool)

(assert (=> b!4998938 (= e!3123814 (and tp!1402044 tp!1402043))))

(assert (=> b!4998679 (= tp!1401931 e!3123814)))

(declare-fun b!4998940 () Bool)

(declare-fun tp!1402042 () Bool)

(declare-fun tp!1402041 () Bool)

(assert (=> b!4998940 (= e!3123814 (and tp!1402042 tp!1402041))))

(assert (= (and b!4998679 ((_ is ElementMatch!13775) (regOne!28062 r!12727))) b!4998937))

(assert (= (and b!4998679 ((_ is Concat!22568) (regOne!28062 r!12727))) b!4998938))

(assert (= (and b!4998679 ((_ is Star!13775) (regOne!28062 r!12727))) b!4998939))

(assert (= (and b!4998679 ((_ is Union!13775) (regOne!28062 r!12727))) b!4998940))

(declare-fun b!4998941 () Bool)

(declare-fun e!3123815 () Bool)

(assert (=> b!4998941 (= e!3123815 tp_is_empty!36547)))

(declare-fun b!4998943 () Bool)

(declare-fun tp!1402050 () Bool)

(assert (=> b!4998943 (= e!3123815 tp!1402050)))

(declare-fun b!4998942 () Bool)

(declare-fun tp!1402049 () Bool)

(declare-fun tp!1402048 () Bool)

(assert (=> b!4998942 (= e!3123815 (and tp!1402049 tp!1402048))))

(assert (=> b!4998679 (= tp!1401930 e!3123815)))

(declare-fun b!4998944 () Bool)

(declare-fun tp!1402047 () Bool)

(declare-fun tp!1402046 () Bool)

(assert (=> b!4998944 (= e!3123815 (and tp!1402047 tp!1402046))))

(assert (= (and b!4998679 ((_ is ElementMatch!13775) (regTwo!28062 r!12727))) b!4998941))

(assert (= (and b!4998679 ((_ is Concat!22568) (regTwo!28062 r!12727))) b!4998942))

(assert (= (and b!4998679 ((_ is Star!13775) (regTwo!28062 r!12727))) b!4998943))

(assert (= (and b!4998679 ((_ is Union!13775) (regTwo!28062 r!12727))) b!4998944))

(check-sat (not d!1609306) (not b!4998751) (not b!4998884) (not b!4998912) (not bm!348890) (not d!1609286) (not b!4998881) (not d!1609308) (not b!4998757) (not b!4998883) (not b!4998862) (not b!4998917) (not b!4998826) (not b!4998913) (not b!4998675) (not bm!348889) (not d!1609304) (not b!4998944) (not setNonEmpty!28320) (not d!1609322) (not b!4998916) (not b!4998942) (not b!4998758) (not b!4998903) (not b!4998936) (not b!4998928) (not d!1609298) (not b!4998911) (not b!4998749) (not b!4998872) (not d!1609280) (not d!1609234) (not d!1609310) (not b!4998943) (not b!4998759) (not b!4998770) (not d!1609282) (not b!4998750) (not b!4998931) (not b!4998674) (not b!4998889) tp_is_empty!36547 (not b!4998904) (not d!1609302) (not b!4998940) (not b!4998939) (not b!4998926) (not b!4998886) (not d!1609316) (not b!4998909) (not b!4998929) (not b!4998902) (not d!1609312) (not d!1609296) (not b!4998873) (not d!1609284) (not d!1609314) (not b!4998915) (not d!1609300) (not d!1609272) (not b!4998930) (not b!4998927) (not b!4998938) (not b!4998888))
(check-sat)
