; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530432 () Bool)

(assert start!530432)

(declare-fun res!2140543 () Bool)

(declare-fun e!3136004 () Bool)

(assert (=> start!530432 (=> (not res!2140543) (not e!3136004))))

(declare-fun from!1212 () Int)

(assert (=> start!530432 (= res!2140543 (>= from!1212 0))))

(assert (=> start!530432 e!3136004))

(assert (=> start!530432 true))

(declare-datatypes ((C!27958 0))(
  ( (C!27959 (val!23345 Int)) )
))
(declare-datatypes ((List!58136 0))(
  ( (Nil!58012) (Cons!58012 (h!64460 C!27958) (t!370512 List!58136)) )
))
(declare-datatypes ((IArray!30807 0))(
  ( (IArray!30808 (innerList!15461 List!58136)) )
))
(declare-datatypes ((Conc!15373 0))(
  ( (Node!15373 (left!42414 Conc!15373) (right!42744 Conc!15373) (csize!30976 Int) (cheight!15584 Int)) (Leaf!25509 (xs!18699 IArray!30807) (csize!30977 Int)) (Empty!15373) )
))
(declare-datatypes ((BalanceConc!30176 0))(
  ( (BalanceConc!30177 (c!857847 Conc!15373)) )
))
(declare-fun totalInput!1125 () BalanceConc!30176)

(declare-fun e!3136007 () Bool)

(declare-fun inv!76353 (BalanceConc!30176) Bool)

(assert (=> start!530432 (and (inv!76353 totalInput!1125) e!3136007)))

(declare-fun condSetEmpty!28657 () Bool)

(declare-datatypes ((Regex!13854 0))(
  ( (ElementMatch!13854 (c!857848 C!27958)) (Concat!22647 (regOne!28220 Regex!13854) (regTwo!28220 Regex!13854)) (EmptyExpr!13854) (Star!13854 (reg!14183 Regex!13854)) (EmptyLang!13854) (Union!13854 (regOne!28221 Regex!13854) (regTwo!28221 Regex!13854)) )
))
(declare-datatypes ((List!58137 0))(
  ( (Nil!58013) (Cons!58013 (h!64461 Regex!13854) (t!370513 List!58137)) )
))
(declare-datatypes ((Context!6558 0))(
  ( (Context!6559 (exprs!3779 List!58137)) )
))
(declare-fun z!4710 () (Set Context!6558))

(assert (=> start!530432 (= condSetEmpty!28657 (= z!4710 (as set.empty (Set Context!6558))))))

(declare-fun setRes!28657 () Bool)

(assert (=> start!530432 setRes!28657))

(declare-fun b!5019923 () Bool)

(declare-fun res!2140547 () Bool)

(declare-fun e!3136006 () Bool)

(assert (=> b!5019923 (=> (not res!2140547) (not e!3136006))))

(declare-fun knownSize!24 () Int)

(assert (=> b!5019923 (= res!2140547 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5019924 () Bool)

(declare-fun lt!2077572 () List!58136)

(declare-fun size!38597 (List!58136) Int)

(assert (=> b!5019924 (= e!3136006 (not (< from!1212 (size!38597 lt!2077572))))))

(declare-fun lt!2077576 () Int)

(declare-fun lt!2077575 () List!58136)

(declare-fun apply!14044 (List!58136 Int) C!27958)

(declare-fun take!713 (List!58136 Int) List!58136)

(declare-fun drop!2517 (List!58136 Int) List!58136)

(assert (=> b!5019924 (= (Cons!58012 (apply!14044 lt!2077572 from!1212) (take!713 (drop!2517 lt!2077572 (+ 1 from!1212)) lt!2077576)) (take!713 lt!2077575 (+ 1 lt!2077576)))))

(declare-datatypes ((Unit!149213 0))(
  ( (Unit!149214) )
))
(declare-fun lt!2077574 () Unit!149213)

(declare-fun lemmaDropTakeAddOneLeft!59 (List!58136 Int Int) Unit!149213)

(assert (=> b!5019924 (= lt!2077574 (lemmaDropTakeAddOneLeft!59 lt!2077572 from!1212 lt!2077576))))

(declare-fun lt!2077573 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!176 ((Set Context!6558) Int BalanceConc!30176 Int) Int)

(declare-fun derivationStepZipper!660 ((Set Context!6558) C!27958) (Set Context!6558))

(declare-fun apply!14045 (BalanceConc!30176 Int) C!27958)

(assert (=> b!5019924 (= lt!2077576 (findLongestMatchInnerZipperFastV2!176 (derivationStepZipper!660 z!4710 (apply!14045 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077573))))

(declare-fun b!5019925 () Bool)

(declare-fun e!3136005 () Bool)

(assert (=> b!5019925 (= e!3136004 e!3136005)))

(declare-fun res!2140542 () Bool)

(assert (=> b!5019925 (=> (not res!2140542) (not e!3136005))))

(assert (=> b!5019925 (= res!2140542 (and (<= from!1212 lt!2077573) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077573 from!1212))))))

(declare-fun size!38598 (BalanceConc!30176) Int)

(assert (=> b!5019925 (= lt!2077573 (size!38598 totalInput!1125))))

(declare-fun b!5019926 () Bool)

(declare-fun tp!1407693 () Bool)

(declare-fun inv!76354 (Conc!15373) Bool)

(assert (=> b!5019926 (= e!3136007 (and (inv!76354 (c!857847 totalInput!1125)) tp!1407693))))

(declare-fun b!5019927 () Bool)

(declare-fun res!2140544 () Bool)

(assert (=> b!5019927 (=> (not res!2140544) (not e!3136006))))

(assert (=> b!5019927 (= res!2140544 (not (= from!1212 lt!2077573)))))

(declare-fun b!5019928 () Bool)

(declare-fun res!2140548 () Bool)

(assert (=> b!5019928 (=> (not res!2140548) (not e!3136006))))

(declare-fun lt!2077571 () List!58136)

(assert (=> b!5019928 (= res!2140548 (= (size!38597 lt!2077571) knownSize!24))))

(declare-fun b!5019929 () Bool)

(assert (=> b!5019929 (= e!3136005 e!3136006)))

(declare-fun res!2140545 () Bool)

(assert (=> b!5019929 (=> (not res!2140545) (not e!3136006))))

(declare-fun matchZipper!622 ((Set Context!6558) List!58136) Bool)

(assert (=> b!5019929 (= res!2140545 (matchZipper!622 z!4710 lt!2077571))))

(assert (=> b!5019929 (= lt!2077571 (take!713 lt!2077575 knownSize!24))))

(assert (=> b!5019929 (= lt!2077575 (drop!2517 lt!2077572 from!1212))))

(declare-fun list!18707 (BalanceConc!30176) List!58136)

(assert (=> b!5019929 (= lt!2077572 (list!18707 totalInput!1125))))

(declare-fun tp!1407695 () Bool)

(declare-fun setElem!28657 () Context!6558)

(declare-fun setNonEmpty!28657 () Bool)

(declare-fun e!3136008 () Bool)

(declare-fun inv!76355 (Context!6558) Bool)

(assert (=> setNonEmpty!28657 (= setRes!28657 (and tp!1407695 (inv!76355 setElem!28657) e!3136008))))

(declare-fun setRest!28657 () (Set Context!6558))

(assert (=> setNonEmpty!28657 (= z!4710 (set.union (set.insert setElem!28657 (as set.empty (Set Context!6558))) setRest!28657))))

(declare-fun b!5019930 () Bool)

(declare-fun tp!1407694 () Bool)

(assert (=> b!5019930 (= e!3136008 tp!1407694)))

(declare-fun b!5019931 () Bool)

(declare-fun res!2140546 () Bool)

(assert (=> b!5019931 (=> (not res!2140546) (not e!3136006))))

(declare-fun lostCauseZipper!868 ((Set Context!6558)) Bool)

(assert (=> b!5019931 (= res!2140546 (not (lostCauseZipper!868 z!4710)))))

(declare-fun setIsEmpty!28657 () Bool)

(assert (=> setIsEmpty!28657 setRes!28657))

(assert (= (and start!530432 res!2140543) b!5019925))

(assert (= (and b!5019925 res!2140542) b!5019929))

(assert (= (and b!5019929 res!2140545) b!5019923))

(assert (= (and b!5019923 res!2140547) b!5019928))

(assert (= (and b!5019928 res!2140548) b!5019931))

(assert (= (and b!5019931 res!2140546) b!5019927))

(assert (= (and b!5019927 res!2140544) b!5019924))

(assert (= start!530432 b!5019926))

(assert (= (and start!530432 condSetEmpty!28657) setIsEmpty!28657))

(assert (= (and start!530432 (not condSetEmpty!28657)) setNonEmpty!28657))

(assert (= setNonEmpty!28657 b!5019930))

(declare-fun m!6054914 () Bool)

(assert (=> setNonEmpty!28657 m!6054914))

(declare-fun m!6054916 () Bool)

(assert (=> b!5019928 m!6054916))

(declare-fun m!6054918 () Bool)

(assert (=> b!5019931 m!6054918))

(declare-fun m!6054920 () Bool)

(assert (=> start!530432 m!6054920))

(declare-fun m!6054922 () Bool)

(assert (=> b!5019926 m!6054922))

(declare-fun m!6054924 () Bool)

(assert (=> b!5019929 m!6054924))

(declare-fun m!6054926 () Bool)

(assert (=> b!5019929 m!6054926))

(declare-fun m!6054928 () Bool)

(assert (=> b!5019929 m!6054928))

(declare-fun m!6054930 () Bool)

(assert (=> b!5019929 m!6054930))

(declare-fun m!6054932 () Bool)

(assert (=> b!5019924 m!6054932))

(declare-fun m!6054934 () Bool)

(assert (=> b!5019924 m!6054934))

(declare-fun m!6054936 () Bool)

(assert (=> b!5019924 m!6054936))

(declare-fun m!6054938 () Bool)

(assert (=> b!5019924 m!6054938))

(assert (=> b!5019924 m!6054938))

(declare-fun m!6054940 () Bool)

(assert (=> b!5019924 m!6054940))

(declare-fun m!6054942 () Bool)

(assert (=> b!5019924 m!6054942))

(declare-fun m!6054944 () Bool)

(assert (=> b!5019924 m!6054944))

(assert (=> b!5019924 m!6054932))

(assert (=> b!5019924 m!6054942))

(declare-fun m!6054946 () Bool)

(assert (=> b!5019924 m!6054946))

(declare-fun m!6054948 () Bool)

(assert (=> b!5019924 m!6054948))

(declare-fun m!6054950 () Bool)

(assert (=> b!5019925 m!6054950))

(push 1)

(assert (not b!5019924))

(assert (not b!5019930))

(assert (not b!5019929))

(assert (not b!5019925))

(assert (not start!530432))

(assert (not setNonEmpty!28657))

(assert (not b!5019928))

(assert (not b!5019926))

(assert (not b!5019931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1615872 () Bool)

(declare-fun lt!2077597 () Int)

(assert (=> d!1615872 (>= lt!2077597 0)))

(declare-fun e!3136026 () Int)

(assert (=> d!1615872 (= lt!2077597 e!3136026)))

(declare-fun c!857853 () Bool)

(assert (=> d!1615872 (= c!857853 (is-Nil!58012 lt!2077571))))

(assert (=> d!1615872 (= (size!38597 lt!2077571) lt!2077597)))

(declare-fun b!5019963 () Bool)

(assert (=> b!5019963 (= e!3136026 0)))

(declare-fun b!5019964 () Bool)

(assert (=> b!5019964 (= e!3136026 (+ 1 (size!38597 (t!370512 lt!2077571))))))

(assert (= (and d!1615872 c!857853) b!5019963))

(assert (= (and d!1615872 (not c!857853)) b!5019964))

(declare-fun m!6054990 () Bool)

(assert (=> b!5019964 m!6054990))

(assert (=> b!5019928 d!1615872))

(declare-fun d!1615874 () Bool)

(declare-fun c!857858 () Bool)

(declare-fun isEmpty!31417 (List!58136) Bool)

(assert (=> d!1615874 (= c!857858 (isEmpty!31417 lt!2077571))))

(declare-fun e!3136031 () Bool)

(assert (=> d!1615874 (= (matchZipper!622 z!4710 lt!2077571) e!3136031)))

(declare-fun b!5019973 () Bool)

(declare-fun nullableZipper!903 ((Set Context!6558)) Bool)

(assert (=> b!5019973 (= e!3136031 (nullableZipper!903 z!4710))))

(declare-fun b!5019974 () Bool)

(declare-fun head!10757 (List!58136) C!27958)

(declare-fun tail!9890 (List!58136) List!58136)

(assert (=> b!5019974 (= e!3136031 (matchZipper!622 (derivationStepZipper!660 z!4710 (head!10757 lt!2077571)) (tail!9890 lt!2077571)))))

(assert (= (and d!1615874 c!857858) b!5019973))

(assert (= (and d!1615874 (not c!857858)) b!5019974))

(declare-fun m!6054992 () Bool)

(assert (=> d!1615874 m!6054992))

(declare-fun m!6054994 () Bool)

(assert (=> b!5019973 m!6054994))

(declare-fun m!6054996 () Bool)

(assert (=> b!5019974 m!6054996))

(assert (=> b!5019974 m!6054996))

(declare-fun m!6054998 () Bool)

(assert (=> b!5019974 m!6054998))

(declare-fun m!6055000 () Bool)

(assert (=> b!5019974 m!6055000))

(assert (=> b!5019974 m!6054998))

(assert (=> b!5019974 m!6055000))

(declare-fun m!6055002 () Bool)

(assert (=> b!5019974 m!6055002))

(assert (=> b!5019929 d!1615874))

(declare-fun b!5019991 () Bool)

(declare-fun e!3136041 () Int)

(declare-fun e!3136043 () Int)

(assert (=> b!5019991 (= e!3136041 e!3136043)))

(declare-fun c!857868 () Bool)

(assert (=> b!5019991 (= c!857868 (>= knownSize!24 (size!38597 lt!2077575)))))

(declare-fun b!5019992 () Bool)

(assert (=> b!5019992 (= e!3136043 (size!38597 lt!2077575))))

(declare-fun d!1615878 () Bool)

(declare-fun e!3136042 () Bool)

(assert (=> d!1615878 e!3136042))

(declare-fun res!2140572 () Bool)

(assert (=> d!1615878 (=> (not res!2140572) (not e!3136042))))

(declare-fun lt!2077603 () List!58136)

(declare-fun content!10280 (List!58136) (Set C!27958))

(assert (=> d!1615878 (= res!2140572 (set.subset (content!10280 lt!2077603) (content!10280 lt!2077575)))))

(declare-fun e!3136044 () List!58136)

(assert (=> d!1615878 (= lt!2077603 e!3136044)))

(declare-fun c!857866 () Bool)

(assert (=> d!1615878 (= c!857866 (or (is-Nil!58012 lt!2077575) (<= knownSize!24 0)))))

(assert (=> d!1615878 (= (take!713 lt!2077575 knownSize!24) lt!2077603)))

(declare-fun b!5019993 () Bool)

(assert (=> b!5019993 (= e!3136041 0)))

(declare-fun b!5019994 () Bool)

(assert (=> b!5019994 (= e!3136044 (Cons!58012 (h!64460 lt!2077575) (take!713 (t!370512 lt!2077575) (- knownSize!24 1))))))

(declare-fun b!5019995 () Bool)

(assert (=> b!5019995 (= e!3136043 knownSize!24)))

(declare-fun b!5019996 () Bool)

(assert (=> b!5019996 (= e!3136044 Nil!58012)))

(declare-fun b!5019997 () Bool)

(assert (=> b!5019997 (= e!3136042 (= (size!38597 lt!2077603) e!3136041))))

(declare-fun c!857867 () Bool)

(assert (=> b!5019997 (= c!857867 (<= knownSize!24 0))))

(assert (= (and d!1615878 c!857866) b!5019996))

(assert (= (and d!1615878 (not c!857866)) b!5019994))

(assert (= (and d!1615878 res!2140572) b!5019997))

(assert (= (and b!5019997 c!857867) b!5019993))

(assert (= (and b!5019997 (not c!857867)) b!5019991))

(assert (= (and b!5019991 c!857868) b!5019992))

(assert (= (and b!5019991 (not c!857868)) b!5019995))

(declare-fun m!6055006 () Bool)

(assert (=> d!1615878 m!6055006))

(declare-fun m!6055008 () Bool)

(assert (=> d!1615878 m!6055008))

(declare-fun m!6055010 () Bool)

(assert (=> b!5019997 m!6055010))

(declare-fun m!6055012 () Bool)

(assert (=> b!5019991 m!6055012))

(assert (=> b!5019992 m!6055012))

(declare-fun m!6055014 () Bool)

(assert (=> b!5019994 m!6055014))

(assert (=> b!5019929 d!1615878))

(declare-fun b!5020022 () Bool)

(declare-fun e!3136060 () Bool)

(declare-fun lt!2077606 () List!58136)

(declare-fun e!3136058 () Int)

(assert (=> b!5020022 (= e!3136060 (= (size!38597 lt!2077606) e!3136058))))

(declare-fun c!857880 () Bool)

(assert (=> b!5020022 (= c!857880 (<= from!1212 0))))

(declare-fun b!5020023 () Bool)

(declare-fun e!3136059 () List!58136)

(assert (=> b!5020023 (= e!3136059 Nil!58012)))

(declare-fun b!5020024 () Bool)

(declare-fun e!3136062 () List!58136)

(assert (=> b!5020024 (= e!3136062 (drop!2517 (t!370512 lt!2077572) (- from!1212 1)))))

(declare-fun b!5020025 () Bool)

(declare-fun e!3136061 () Int)

(declare-fun call!350558 () Int)

(assert (=> b!5020025 (= e!3136061 (- call!350558 from!1212))))

(declare-fun b!5020026 () Bool)

(assert (=> b!5020026 (= e!3136058 call!350558)))

(declare-fun bm!350553 () Bool)

(assert (=> bm!350553 (= call!350558 (size!38597 lt!2077572))))

(declare-fun b!5020027 () Bool)

(assert (=> b!5020027 (= e!3136059 e!3136062)))

(declare-fun c!857881 () Bool)

(assert (=> b!5020027 (= c!857881 (<= from!1212 0))))

(declare-fun d!1615882 () Bool)

(assert (=> d!1615882 e!3136060))

(declare-fun res!2140575 () Bool)

(assert (=> d!1615882 (=> (not res!2140575) (not e!3136060))))

(assert (=> d!1615882 (= res!2140575 (set.subset (content!10280 lt!2077606) (content!10280 lt!2077572)))))

(assert (=> d!1615882 (= lt!2077606 e!3136059)))

(declare-fun c!857883 () Bool)

(assert (=> d!1615882 (= c!857883 (is-Nil!58012 lt!2077572))))

(assert (=> d!1615882 (= (drop!2517 lt!2077572 from!1212) lt!2077606)))

(declare-fun b!5020028 () Bool)

(assert (=> b!5020028 (= e!3136058 e!3136061)))

(declare-fun c!857882 () Bool)

(assert (=> b!5020028 (= c!857882 (>= from!1212 call!350558))))

(declare-fun b!5020029 () Bool)

(assert (=> b!5020029 (= e!3136061 0)))

(declare-fun b!5020030 () Bool)

(assert (=> b!5020030 (= e!3136062 lt!2077572)))

(assert (= (and d!1615882 c!857883) b!5020023))

(assert (= (and d!1615882 (not c!857883)) b!5020027))

(assert (= (and b!5020027 c!857881) b!5020030))

(assert (= (and b!5020027 (not c!857881)) b!5020024))

(assert (= (and d!1615882 res!2140575) b!5020022))

(assert (= (and b!5020022 c!857880) b!5020026))

(assert (= (and b!5020022 (not c!857880)) b!5020028))

(assert (= (and b!5020028 c!857882) b!5020029))

(assert (= (and b!5020028 (not c!857882)) b!5020025))

(assert (= (or b!5020026 b!5020028 b!5020025) bm!350553))

(declare-fun m!6055028 () Bool)

(assert (=> b!5020022 m!6055028))

(declare-fun m!6055030 () Bool)

(assert (=> b!5020024 m!6055030))

(assert (=> bm!350553 m!6054948))

(declare-fun m!6055032 () Bool)

(assert (=> d!1615882 m!6055032))

(declare-fun m!6055034 () Bool)

(assert (=> d!1615882 m!6055034))

(assert (=> b!5019929 d!1615882))

(declare-fun d!1615886 () Bool)

(declare-fun list!18709 (Conc!15373) List!58136)

(assert (=> d!1615886 (= (list!18707 totalInput!1125) (list!18709 (c!857847 totalInput!1125)))))

(declare-fun bs!1187157 () Bool)

(assert (= bs!1187157 d!1615886))

(declare-fun m!6055036 () Bool)

(assert (=> bs!1187157 m!6055036))

(assert (=> b!5019929 d!1615886))

(declare-fun d!1615888 () Bool)

(declare-fun lt!2077611 () C!27958)

(assert (=> d!1615888 (= lt!2077611 (apply!14044 (list!18707 totalInput!1125) from!1212))))

(declare-fun apply!14048 (Conc!15373 Int) C!27958)

(assert (=> d!1615888 (= lt!2077611 (apply!14048 (c!857847 totalInput!1125) from!1212))))

(declare-fun e!3136073 () Bool)

(assert (=> d!1615888 e!3136073))

(declare-fun res!2140580 () Bool)

(assert (=> d!1615888 (=> (not res!2140580) (not e!3136073))))

(assert (=> d!1615888 (= res!2140580 (<= 0 from!1212))))

(assert (=> d!1615888 (= (apply!14045 totalInput!1125 from!1212) lt!2077611)))

(declare-fun b!5020047 () Bool)

(assert (=> b!5020047 (= e!3136073 (< from!1212 (size!38598 totalInput!1125)))))

(assert (= (and d!1615888 res!2140580) b!5020047))

(assert (=> d!1615888 m!6054930))

(assert (=> d!1615888 m!6054930))

(declare-fun m!6055038 () Bool)

(assert (=> d!1615888 m!6055038))

(declare-fun m!6055040 () Bool)

(assert (=> d!1615888 m!6055040))

(assert (=> b!5020047 m!6054950))

(assert (=> b!5019924 d!1615888))

(declare-fun b!5020048 () Bool)

(declare-fun e!3136076 () Bool)

(declare-fun lt!2077612 () List!58136)

(declare-fun e!3136074 () Int)

(assert (=> b!5020048 (= e!3136076 (= (size!38597 lt!2077612) e!3136074))))

(declare-fun c!857890 () Bool)

(assert (=> b!5020048 (= c!857890 (<= (+ 1 from!1212) 0))))

(declare-fun b!5020049 () Bool)

(declare-fun e!3136075 () List!58136)

(assert (=> b!5020049 (= e!3136075 Nil!58012)))

(declare-fun b!5020050 () Bool)

(declare-fun e!3136078 () List!58136)

(assert (=> b!5020050 (= e!3136078 (drop!2517 (t!370512 lt!2077572) (- (+ 1 from!1212) 1)))))

(declare-fun b!5020051 () Bool)

(declare-fun e!3136077 () Int)

(declare-fun call!350559 () Int)

(assert (=> b!5020051 (= e!3136077 (- call!350559 (+ 1 from!1212)))))

(declare-fun b!5020052 () Bool)

(assert (=> b!5020052 (= e!3136074 call!350559)))

(declare-fun bm!350554 () Bool)

(assert (=> bm!350554 (= call!350559 (size!38597 lt!2077572))))

(declare-fun b!5020053 () Bool)

(assert (=> b!5020053 (= e!3136075 e!3136078)))

(declare-fun c!857891 () Bool)

(assert (=> b!5020053 (= c!857891 (<= (+ 1 from!1212) 0))))

(declare-fun d!1615890 () Bool)

(assert (=> d!1615890 e!3136076))

(declare-fun res!2140581 () Bool)

(assert (=> d!1615890 (=> (not res!2140581) (not e!3136076))))

(assert (=> d!1615890 (= res!2140581 (set.subset (content!10280 lt!2077612) (content!10280 lt!2077572)))))

(assert (=> d!1615890 (= lt!2077612 e!3136075)))

(declare-fun c!857893 () Bool)

(assert (=> d!1615890 (= c!857893 (is-Nil!58012 lt!2077572))))

(assert (=> d!1615890 (= (drop!2517 lt!2077572 (+ 1 from!1212)) lt!2077612)))

(declare-fun b!5020054 () Bool)

(assert (=> b!5020054 (= e!3136074 e!3136077)))

(declare-fun c!857892 () Bool)

(assert (=> b!5020054 (= c!857892 (>= (+ 1 from!1212) call!350559))))

(declare-fun b!5020055 () Bool)

(assert (=> b!5020055 (= e!3136077 0)))

(declare-fun b!5020056 () Bool)

(assert (=> b!5020056 (= e!3136078 lt!2077572)))

(assert (= (and d!1615890 c!857893) b!5020049))

(assert (= (and d!1615890 (not c!857893)) b!5020053))

(assert (= (and b!5020053 c!857891) b!5020056))

(assert (= (and b!5020053 (not c!857891)) b!5020050))

(assert (= (and d!1615890 res!2140581) b!5020048))

(assert (= (and b!5020048 c!857890) b!5020052))

(assert (= (and b!5020048 (not c!857890)) b!5020054))

(assert (= (and b!5020054 c!857892) b!5020055))

(assert (= (and b!5020054 (not c!857892)) b!5020051))

(assert (= (or b!5020052 b!5020054 b!5020051) bm!350554))

(declare-fun m!6055042 () Bool)

(assert (=> b!5020048 m!6055042))

(declare-fun m!6055044 () Bool)

(assert (=> b!5020050 m!6055044))

(assert (=> bm!350554 m!6054948))

(declare-fun m!6055046 () Bool)

(assert (=> d!1615890 m!6055046))

(assert (=> d!1615890 m!6055034))

(assert (=> b!5019924 d!1615890))

(declare-fun d!1615892 () Bool)

(declare-fun lt!2077613 () Int)

(assert (=> d!1615892 (>= lt!2077613 0)))

(declare-fun e!3136079 () Int)

(assert (=> d!1615892 (= lt!2077613 e!3136079)))

(declare-fun c!857894 () Bool)

(assert (=> d!1615892 (= c!857894 (is-Nil!58012 lt!2077572))))

(assert (=> d!1615892 (= (size!38597 lt!2077572) lt!2077613)))

(declare-fun b!5020057 () Bool)

(assert (=> b!5020057 (= e!3136079 0)))

(declare-fun b!5020058 () Bool)

(assert (=> b!5020058 (= e!3136079 (+ 1 (size!38597 (t!370512 lt!2077572))))))

(assert (= (and d!1615892 c!857894) b!5020057))

(assert (= (and d!1615892 (not c!857894)) b!5020058))

(declare-fun m!6055048 () Bool)

(assert (=> b!5020058 m!6055048))

(assert (=> b!5019924 d!1615892))

(declare-fun b!5020100 () Bool)

(declare-fun c!857913 () Bool)

(declare-fun lt!2077625 () (Set Context!6558))

(assert (=> b!5020100 (= c!857913 (nullableZipper!903 lt!2077625))))

(declare-fun e!3136108 () Int)

(declare-fun e!3136105 () Int)

(assert (=> b!5020100 (= e!3136108 e!3136105)))

(declare-fun b!5020101 () Bool)

(declare-fun e!3136106 () Bool)

(assert (=> b!5020101 (= e!3136106 (<= (+ 1 from!1212) (size!38598 totalInput!1125)))))

(declare-fun e!3136104 () Bool)

(declare-fun b!5020102 () Bool)

(assert (=> b!5020102 (= e!3136104 (lostCauseZipper!868 (derivationStepZipper!660 z!4710 (apply!14045 totalInput!1125 from!1212))))))

(declare-fun b!5020103 () Bool)

(assert (=> b!5020103 (= e!3136105 1)))

(declare-fun b!5020104 () Bool)

(assert (=> b!5020104 (= e!3136105 0)))

(declare-fun b!5020105 () Bool)

(declare-fun e!3136107 () Int)

(assert (=> b!5020105 (= e!3136107 0)))

(declare-fun d!1615894 () Bool)

(declare-fun lt!2077623 () Int)

(assert (=> d!1615894 (and (>= lt!2077623 0) (<= lt!2077623 (- lt!2077573 (+ 1 from!1212))))))

(assert (=> d!1615894 (= lt!2077623 e!3136107)))

(declare-fun c!857912 () Bool)

(assert (=> d!1615894 (= c!857912 e!3136104)))

(declare-fun res!2140590 () Bool)

(assert (=> d!1615894 (=> res!2140590 e!3136104)))

(assert (=> d!1615894 (= res!2140590 (= (+ 1 from!1212) lt!2077573))))

(assert (=> d!1615894 e!3136106))

(declare-fun res!2140589 () Bool)

(assert (=> d!1615894 (=> (not res!2140589) (not e!3136106))))

(assert (=> d!1615894 (= res!2140589 (>= (+ 1 from!1212) 0))))

(assert (=> d!1615894 (= (findLongestMatchInnerZipperFastV2!176 (derivationStepZipper!660 z!4710 (apply!14045 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077573) lt!2077623)))

(declare-fun b!5020106 () Bool)

(assert (=> b!5020106 (= e!3136107 e!3136108)))

(assert (=> b!5020106 (= lt!2077625 (derivationStepZipper!660 (derivationStepZipper!660 z!4710 (apply!14045 totalInput!1125 from!1212)) (apply!14045 totalInput!1125 (+ 1 from!1212))))))

(declare-fun lt!2077624 () Int)

(assert (=> b!5020106 (= lt!2077624 (findLongestMatchInnerZipperFastV2!176 lt!2077625 (+ 1 from!1212 1) totalInput!1125 lt!2077573))))

(declare-fun c!857914 () Bool)

(assert (=> b!5020106 (= c!857914 (> lt!2077624 0))))

(declare-fun b!5020107 () Bool)

(assert (=> b!5020107 (= e!3136108 (+ 1 lt!2077624))))

(assert (= (and d!1615894 res!2140589) b!5020101))

(assert (= (and d!1615894 (not res!2140590)) b!5020102))

(assert (= (and d!1615894 c!857912) b!5020105))

(assert (= (and d!1615894 (not c!857912)) b!5020106))

(assert (= (and b!5020106 c!857914) b!5020107))

(assert (= (and b!5020106 (not c!857914)) b!5020100))

(assert (= (and b!5020100 c!857913) b!5020103))

(assert (= (and b!5020100 (not c!857913)) b!5020104))

(declare-fun m!6055060 () Bool)

(assert (=> b!5020100 m!6055060))

(assert (=> b!5020101 m!6054950))

(assert (=> b!5020102 m!6054942))

(declare-fun m!6055062 () Bool)

(assert (=> b!5020102 m!6055062))

(declare-fun m!6055064 () Bool)

(assert (=> b!5020106 m!6055064))

(assert (=> b!5020106 m!6054942))

(assert (=> b!5020106 m!6055064))

(declare-fun m!6055066 () Bool)

(assert (=> b!5020106 m!6055066))

(declare-fun m!6055068 () Bool)

(assert (=> b!5020106 m!6055068))

(assert (=> b!5019924 d!1615894))

(declare-fun d!1615898 () Bool)

(assert (=> d!1615898 (= (Cons!58012 (apply!14044 lt!2077572 from!1212) (take!713 (drop!2517 lt!2077572 (+ from!1212 1)) lt!2077576)) (take!713 (drop!2517 lt!2077572 from!1212) (+ lt!2077576 1)))))

(declare-fun lt!2077628 () Unit!149213)

(declare-fun choose!37133 (List!58136 Int Int) Unit!149213)

(assert (=> d!1615898 (= lt!2077628 (choose!37133 lt!2077572 from!1212 lt!2077576))))

(declare-fun e!3136111 () Bool)

(assert (=> d!1615898 e!3136111))

(declare-fun res!2140593 () Bool)

(assert (=> d!1615898 (=> (not res!2140593) (not e!3136111))))

(assert (=> d!1615898 (= res!2140593 (>= from!1212 0))))

(assert (=> d!1615898 (= (lemmaDropTakeAddOneLeft!59 lt!2077572 from!1212 lt!2077576) lt!2077628)))

(declare-fun b!5020110 () Bool)

(assert (=> b!5020110 (= e!3136111 (< from!1212 (size!38597 lt!2077572)))))

(assert (= (and d!1615898 res!2140593) b!5020110))

(declare-fun m!6055070 () Bool)

(assert (=> d!1615898 m!6055070))

(declare-fun m!6055072 () Bool)

(assert (=> d!1615898 m!6055072))

(declare-fun m!6055074 () Bool)

(assert (=> d!1615898 m!6055074))

(assert (=> d!1615898 m!6054928))

(assert (=> d!1615898 m!6054928))

(declare-fun m!6055076 () Bool)

(assert (=> d!1615898 m!6055076))

(assert (=> d!1615898 m!6055070))

(assert (=> d!1615898 m!6054936))

(assert (=> b!5020110 m!6054948))

(assert (=> b!5019924 d!1615898))

(declare-fun b!5020120 () Bool)

(declare-fun e!3136117 () Int)

(declare-fun e!3136119 () Int)

(assert (=> b!5020120 (= e!3136117 e!3136119)))

(declare-fun c!857921 () Bool)

(assert (=> b!5020120 (= c!857921 (>= (+ 1 lt!2077576) (size!38597 lt!2077575)))))

(declare-fun b!5020121 () Bool)

(assert (=> b!5020121 (= e!3136119 (size!38597 lt!2077575))))

(declare-fun d!1615900 () Bool)

(declare-fun e!3136118 () Bool)

(assert (=> d!1615900 e!3136118))

(declare-fun res!2140595 () Bool)

(assert (=> d!1615900 (=> (not res!2140595) (not e!3136118))))

(declare-fun lt!2077630 () List!58136)

(assert (=> d!1615900 (= res!2140595 (set.subset (content!10280 lt!2077630) (content!10280 lt!2077575)))))

(declare-fun e!3136120 () List!58136)

(assert (=> d!1615900 (= lt!2077630 e!3136120)))

(declare-fun c!857919 () Bool)

(assert (=> d!1615900 (= c!857919 (or (is-Nil!58012 lt!2077575) (<= (+ 1 lt!2077576) 0)))))

(assert (=> d!1615900 (= (take!713 lt!2077575 (+ 1 lt!2077576)) lt!2077630)))

(declare-fun b!5020122 () Bool)

(assert (=> b!5020122 (= e!3136117 0)))

(declare-fun b!5020123 () Bool)

(assert (=> b!5020123 (= e!3136120 (Cons!58012 (h!64460 lt!2077575) (take!713 (t!370512 lt!2077575) (- (+ 1 lt!2077576) 1))))))

(declare-fun b!5020124 () Bool)

(assert (=> b!5020124 (= e!3136119 (+ 1 lt!2077576))))

(declare-fun b!5020125 () Bool)

(assert (=> b!5020125 (= e!3136120 Nil!58012)))

(declare-fun b!5020126 () Bool)

(assert (=> b!5020126 (= e!3136118 (= (size!38597 lt!2077630) e!3136117))))

(declare-fun c!857920 () Bool)

(assert (=> b!5020126 (= c!857920 (<= (+ 1 lt!2077576) 0))))

(assert (= (and d!1615900 c!857919) b!5020125))

(assert (= (and d!1615900 (not c!857919)) b!5020123))

(assert (= (and d!1615900 res!2140595) b!5020126))

(assert (= (and b!5020126 c!857920) b!5020122))

(assert (= (and b!5020126 (not c!857920)) b!5020120))

(assert (= (and b!5020120 c!857921) b!5020121))

(assert (= (and b!5020120 (not c!857921)) b!5020124))

(declare-fun m!6055078 () Bool)

(assert (=> d!1615900 m!6055078))

(assert (=> d!1615900 m!6055008))

(declare-fun m!6055080 () Bool)

(assert (=> b!5020126 m!6055080))

(assert (=> b!5020120 m!6055012))

(assert (=> b!5020121 m!6055012))

(declare-fun m!6055084 () Bool)

(assert (=> b!5020123 m!6055084))

(assert (=> b!5019924 d!1615900))

(declare-fun d!1615902 () Bool)

(assert (=> d!1615902 true))

(declare-fun lambda!248771 () Int)

(declare-fun flatMap!289 ((Set Context!6558) Int) (Set Context!6558))

(assert (=> d!1615902 (= (derivationStepZipper!660 z!4710 (apply!14045 totalInput!1125 from!1212)) (flatMap!289 z!4710 lambda!248771))))

(declare-fun bs!1187160 () Bool)

(assert (= bs!1187160 d!1615902))

(declare-fun m!6055126 () Bool)

(assert (=> bs!1187160 m!6055126))

(assert (=> b!5019924 d!1615902))

(declare-fun b!5020168 () Bool)

(declare-fun e!3136148 () Int)

(declare-fun e!3136150 () Int)

(assert (=> b!5020168 (= e!3136148 e!3136150)))

(declare-fun c!857940 () Bool)

(assert (=> b!5020168 (= c!857940 (>= lt!2077576 (size!38597 (drop!2517 lt!2077572 (+ 1 from!1212)))))))

(declare-fun b!5020169 () Bool)

(assert (=> b!5020169 (= e!3136150 (size!38597 (drop!2517 lt!2077572 (+ 1 from!1212))))))

(declare-fun d!1615918 () Bool)

(declare-fun e!3136149 () Bool)

(assert (=> d!1615918 e!3136149))

(declare-fun res!2140611 () Bool)

(assert (=> d!1615918 (=> (not res!2140611) (not e!3136149))))

(declare-fun lt!2077649 () List!58136)

(assert (=> d!1615918 (= res!2140611 (set.subset (content!10280 lt!2077649) (content!10280 (drop!2517 lt!2077572 (+ 1 from!1212)))))))

(declare-fun e!3136151 () List!58136)

(assert (=> d!1615918 (= lt!2077649 e!3136151)))

(declare-fun c!857938 () Bool)

(assert (=> d!1615918 (= c!857938 (or (is-Nil!58012 (drop!2517 lt!2077572 (+ 1 from!1212))) (<= lt!2077576 0)))))

(assert (=> d!1615918 (= (take!713 (drop!2517 lt!2077572 (+ 1 from!1212)) lt!2077576) lt!2077649)))

(declare-fun b!5020170 () Bool)

(assert (=> b!5020170 (= e!3136148 0)))

(declare-fun b!5020171 () Bool)

(assert (=> b!5020171 (= e!3136151 (Cons!58012 (h!64460 (drop!2517 lt!2077572 (+ 1 from!1212))) (take!713 (t!370512 (drop!2517 lt!2077572 (+ 1 from!1212))) (- lt!2077576 1))))))

(declare-fun b!5020172 () Bool)

(assert (=> b!5020172 (= e!3136150 lt!2077576)))

(declare-fun b!5020173 () Bool)

(assert (=> b!5020173 (= e!3136151 Nil!58012)))

(declare-fun b!5020174 () Bool)

(assert (=> b!5020174 (= e!3136149 (= (size!38597 lt!2077649) e!3136148))))

(declare-fun c!857939 () Bool)

(assert (=> b!5020174 (= c!857939 (<= lt!2077576 0))))

(assert (= (and d!1615918 c!857938) b!5020173))

(assert (= (and d!1615918 (not c!857938)) b!5020171))

(assert (= (and d!1615918 res!2140611) b!5020174))

(assert (= (and b!5020174 c!857939) b!5020170))

(assert (= (and b!5020174 (not c!857939)) b!5020168))

(assert (= (and b!5020168 c!857940) b!5020169))

(assert (= (and b!5020168 (not c!857940)) b!5020172))

(declare-fun m!6055128 () Bool)

(assert (=> d!1615918 m!6055128))

(assert (=> d!1615918 m!6054938))

(declare-fun m!6055130 () Bool)

(assert (=> d!1615918 m!6055130))

(declare-fun m!6055132 () Bool)

(assert (=> b!5020174 m!6055132))

(assert (=> b!5020168 m!6054938))

(declare-fun m!6055134 () Bool)

(assert (=> b!5020168 m!6055134))

(assert (=> b!5020169 m!6054938))

(assert (=> b!5020169 m!6055134))

(declare-fun m!6055136 () Bool)

(assert (=> b!5020171 m!6055136))

(assert (=> b!5019924 d!1615918))

(declare-fun d!1615920 () Bool)

(declare-fun lt!2077652 () C!27958)

(declare-fun contains!19561 (List!58136 C!27958) Bool)

(assert (=> d!1615920 (contains!19561 lt!2077572 lt!2077652)))

(declare-fun e!3136157 () C!27958)

(assert (=> d!1615920 (= lt!2077652 e!3136157)))

(declare-fun c!857943 () Bool)

(assert (=> d!1615920 (= c!857943 (= from!1212 0))))

(declare-fun e!3136156 () Bool)

(assert (=> d!1615920 e!3136156))

(declare-fun res!2140614 () Bool)

(assert (=> d!1615920 (=> (not res!2140614) (not e!3136156))))

(assert (=> d!1615920 (= res!2140614 (<= 0 from!1212))))

(assert (=> d!1615920 (= (apply!14044 lt!2077572 from!1212) lt!2077652)))

(declare-fun b!5020181 () Bool)

(assert (=> b!5020181 (= e!3136156 (< from!1212 (size!38597 lt!2077572)))))

(declare-fun b!5020182 () Bool)

(assert (=> b!5020182 (= e!3136157 (head!10757 lt!2077572))))

(declare-fun b!5020183 () Bool)

(assert (=> b!5020183 (= e!3136157 (apply!14044 (tail!9890 lt!2077572) (- from!1212 1)))))

(assert (= (and d!1615920 res!2140614) b!5020181))

(assert (= (and d!1615920 c!857943) b!5020182))

(assert (= (and d!1615920 (not c!857943)) b!5020183))

(declare-fun m!6055138 () Bool)

(assert (=> d!1615920 m!6055138))

(assert (=> b!5020181 m!6054948))

(declare-fun m!6055140 () Bool)

(assert (=> b!5020182 m!6055140))

(declare-fun m!6055142 () Bool)

(assert (=> b!5020183 m!6055142))

(assert (=> b!5020183 m!6055142))

(declare-fun m!6055144 () Bool)

(assert (=> b!5020183 m!6055144))

(assert (=> b!5019924 d!1615920))

(declare-fun d!1615922 () Bool)

(declare-fun lt!2077655 () Int)

(assert (=> d!1615922 (= lt!2077655 (size!38597 (list!18707 totalInput!1125)))))

(declare-fun size!38601 (Conc!15373) Int)

(assert (=> d!1615922 (= lt!2077655 (size!38601 (c!857847 totalInput!1125)))))

(assert (=> d!1615922 (= (size!38598 totalInput!1125) lt!2077655)))

(declare-fun bs!1187161 () Bool)

(assert (= bs!1187161 d!1615922))

(assert (=> bs!1187161 m!6054930))

(assert (=> bs!1187161 m!6054930))

(declare-fun m!6055146 () Bool)

(assert (=> bs!1187161 m!6055146))

(declare-fun m!6055148 () Bool)

(assert (=> bs!1187161 m!6055148))

(assert (=> b!5019925 d!1615922))

(declare-fun d!1615924 () Bool)

(declare-fun lambda!248774 () Int)

(declare-fun forall!13394 (List!58137 Int) Bool)

(assert (=> d!1615924 (= (inv!76355 setElem!28657) (forall!13394 (exprs!3779 setElem!28657) lambda!248774))))

(declare-fun bs!1187162 () Bool)

(assert (= bs!1187162 d!1615924))

(declare-fun m!6055150 () Bool)

(assert (=> bs!1187162 m!6055150))

(assert (=> setNonEmpty!28657 d!1615924))

(declare-fun d!1615926 () Bool)

(declare-fun isBalanced!4291 (Conc!15373) Bool)

(assert (=> d!1615926 (= (inv!76353 totalInput!1125) (isBalanced!4291 (c!857847 totalInput!1125)))))

(declare-fun bs!1187163 () Bool)

(assert (= bs!1187163 d!1615926))

(declare-fun m!6055152 () Bool)

(assert (=> bs!1187163 m!6055152))

(assert (=> start!530432 d!1615926))

(declare-fun bs!1187164 () Bool)

(declare-fun b!5020188 () Bool)

(declare-fun d!1615928 () Bool)

(assert (= bs!1187164 (and b!5020188 d!1615928)))

(declare-fun lambda!248788 () Int)

(declare-fun lambda!248787 () Int)

(assert (=> bs!1187164 (not (= lambda!248788 lambda!248787))))

(declare-fun bs!1187165 () Bool)

(declare-fun b!5020189 () Bool)

(assert (= bs!1187165 (and b!5020189 d!1615928)))

(declare-fun lambda!248789 () Int)

(assert (=> bs!1187165 (not (= lambda!248789 lambda!248787))))

(declare-fun bs!1187166 () Bool)

(assert (= bs!1187166 (and b!5020189 b!5020188)))

(assert (=> bs!1187166 (= lambda!248789 lambda!248788)))

(declare-datatypes ((List!58140 0))(
  ( (Nil!58016) (Cons!58016 (h!64464 Context!6558) (t!370516 List!58140)) )
))
(declare-fun lt!2077674 () List!58140)

(declare-fun lt!2077677 () List!58140)

(declare-fun bm!350563 () Bool)

(declare-fun call!350567 () Bool)

(declare-fun c!857954 () Bool)

(declare-fun exists!1374 (List!58140 Int) Bool)

(assert (=> bm!350563 (= call!350567 (exists!1374 (ite c!857954 lt!2077674 lt!2077677) (ite c!857954 lambda!248788 lambda!248789)))))

(declare-fun e!3136164 () Unit!149213)

(declare-fun Unit!149217 () Unit!149213)

(assert (=> b!5020188 (= e!3136164 Unit!149217)))

(declare-fun call!350568 () List!58140)

(assert (=> b!5020188 (= lt!2077674 call!350568)))

(declare-fun lt!2077679 () Unit!149213)

(declare-fun lemmaNotForallThenExists!258 (List!58140 Int) Unit!149213)

(assert (=> b!5020188 (= lt!2077679 (lemmaNotForallThenExists!258 lt!2077674 lambda!248787))))

(assert (=> b!5020188 call!350567))

(declare-fun lt!2077672 () Unit!149213)

(assert (=> b!5020188 (= lt!2077672 lt!2077679)))

(declare-fun Unit!149218 () Unit!149213)

(assert (=> b!5020189 (= e!3136164 Unit!149218)))

(assert (=> b!5020189 (= lt!2077677 call!350568)))

(declare-fun lt!2077675 () Unit!149213)

(declare-fun lemmaForallThenNotExists!241 (List!58140 Int) Unit!149213)

(assert (=> b!5020189 (= lt!2077675 (lemmaForallThenNotExists!241 lt!2077677 lambda!248787))))

(assert (=> b!5020189 (not call!350567)))

(declare-fun lt!2077678 () Unit!149213)

(assert (=> b!5020189 (= lt!2077678 lt!2077675)))

(declare-fun lt!2077673 () Bool)

(declare-datatypes ((Option!14588 0))(
  ( (None!14587) (Some!14587 (v!50588 List!58136)) )
))
(declare-fun isEmpty!31418 (Option!14588) Bool)

(declare-fun getLanguageWitness!721 ((Set Context!6558)) Option!14588)

(assert (=> d!1615928 (= lt!2077673 (isEmpty!31418 (getLanguageWitness!721 z!4710)))))

(declare-fun forall!13395 ((Set Context!6558) Int) Bool)

(assert (=> d!1615928 (= lt!2077673 (forall!13395 z!4710 lambda!248787))))

(declare-fun lt!2077676 () Unit!149213)

(assert (=> d!1615928 (= lt!2077676 e!3136164)))

(assert (=> d!1615928 (= c!857954 (not (forall!13395 z!4710 lambda!248787)))))

(assert (=> d!1615928 (= (lostCauseZipper!868 z!4710) lt!2077673)))

(declare-fun bm!350562 () Bool)

(declare-fun toList!8109 ((Set Context!6558)) List!58140)

(assert (=> bm!350562 (= call!350568 (toList!8109 z!4710))))

(assert (= (and d!1615928 c!857954) b!5020188))

(assert (= (and d!1615928 (not c!857954)) b!5020189))

(assert (= (or b!5020188 b!5020189) bm!350562))

(assert (= (or b!5020188 b!5020189) bm!350563))

(declare-fun m!6055154 () Bool)

(assert (=> bm!350562 m!6055154))

(declare-fun m!6055156 () Bool)

(assert (=> bm!350563 m!6055156))

(declare-fun m!6055158 () Bool)

(assert (=> b!5020189 m!6055158))

(declare-fun m!6055160 () Bool)

(assert (=> b!5020188 m!6055160))

(declare-fun m!6055162 () Bool)

(assert (=> d!1615928 m!6055162))

(assert (=> d!1615928 m!6055162))

(declare-fun m!6055164 () Bool)

(assert (=> d!1615928 m!6055164))

(declare-fun m!6055166 () Bool)

(assert (=> d!1615928 m!6055166))

(assert (=> d!1615928 m!6055166))

(assert (=> b!5019931 d!1615928))

(declare-fun d!1615930 () Bool)

(declare-fun c!857957 () Bool)

(assert (=> d!1615930 (= c!857957 (is-Node!15373 (c!857847 totalInput!1125)))))

(declare-fun e!3136169 () Bool)

(assert (=> d!1615930 (= (inv!76354 (c!857847 totalInput!1125)) e!3136169)))

(declare-fun b!5020196 () Bool)

(declare-fun inv!76359 (Conc!15373) Bool)

(assert (=> b!5020196 (= e!3136169 (inv!76359 (c!857847 totalInput!1125)))))

(declare-fun b!5020197 () Bool)

(declare-fun e!3136170 () Bool)

(assert (=> b!5020197 (= e!3136169 e!3136170)))

(declare-fun res!2140617 () Bool)

(assert (=> b!5020197 (= res!2140617 (not (is-Leaf!25509 (c!857847 totalInput!1125))))))

(assert (=> b!5020197 (=> res!2140617 e!3136170)))

(declare-fun b!5020198 () Bool)

(declare-fun inv!76360 (Conc!15373) Bool)

(assert (=> b!5020198 (= e!3136170 (inv!76360 (c!857847 totalInput!1125)))))

(assert (= (and d!1615930 c!857957) b!5020196))

(assert (= (and d!1615930 (not c!857957)) b!5020197))

(assert (= (and b!5020197 (not res!2140617)) b!5020198))

(declare-fun m!6055168 () Bool)

(assert (=> b!5020196 m!6055168))

(declare-fun m!6055170 () Bool)

(assert (=> b!5020198 m!6055170))

(assert (=> b!5019926 d!1615930))

(declare-fun condSetEmpty!28663 () Bool)

(assert (=> setNonEmpty!28657 (= condSetEmpty!28663 (= setRest!28657 (as set.empty (Set Context!6558))))))

(declare-fun setRes!28663 () Bool)

(assert (=> setNonEmpty!28657 (= tp!1407695 setRes!28663)))

(declare-fun setIsEmpty!28663 () Bool)

(assert (=> setIsEmpty!28663 setRes!28663))

(declare-fun e!3136173 () Bool)

(declare-fun tp!1407710 () Bool)

(declare-fun setElem!28663 () Context!6558)

(declare-fun setNonEmpty!28663 () Bool)

(assert (=> setNonEmpty!28663 (= setRes!28663 (and tp!1407710 (inv!76355 setElem!28663) e!3136173))))

(declare-fun setRest!28663 () (Set Context!6558))

(assert (=> setNonEmpty!28663 (= setRest!28657 (set.union (set.insert setElem!28663 (as set.empty (Set Context!6558))) setRest!28663))))

(declare-fun b!5020203 () Bool)

(declare-fun tp!1407709 () Bool)

(assert (=> b!5020203 (= e!3136173 tp!1407709)))

(assert (= (and setNonEmpty!28657 condSetEmpty!28663) setIsEmpty!28663))

(assert (= (and setNonEmpty!28657 (not condSetEmpty!28663)) setNonEmpty!28663))

(assert (= setNonEmpty!28663 b!5020203))

(declare-fun m!6055172 () Bool)

(assert (=> setNonEmpty!28663 m!6055172))

(declare-fun b!5020208 () Bool)

(declare-fun e!3136176 () Bool)

(declare-fun tp!1407715 () Bool)

(declare-fun tp!1407716 () Bool)

(assert (=> b!5020208 (= e!3136176 (and tp!1407715 tp!1407716))))

(assert (=> b!5019930 (= tp!1407694 e!3136176)))

(assert (= (and b!5019930 (is-Cons!58013 (exprs!3779 setElem!28657))) b!5020208))

(declare-fun e!3136182 () Bool)

(declare-fun tp!1407725 () Bool)

(declare-fun b!5020217 () Bool)

(declare-fun tp!1407724 () Bool)

(assert (=> b!5020217 (= e!3136182 (and (inv!76354 (left!42414 (c!857847 totalInput!1125))) tp!1407725 (inv!76354 (right!42744 (c!857847 totalInput!1125))) tp!1407724))))

(declare-fun b!5020219 () Bool)

(declare-fun e!3136181 () Bool)

(declare-fun tp!1407723 () Bool)

(assert (=> b!5020219 (= e!3136181 tp!1407723)))

(declare-fun b!5020218 () Bool)

(declare-fun inv!76361 (IArray!30807) Bool)

(assert (=> b!5020218 (= e!3136182 (and (inv!76361 (xs!18699 (c!857847 totalInput!1125))) e!3136181))))

(assert (=> b!5019926 (= tp!1407693 (and (inv!76354 (c!857847 totalInput!1125)) e!3136182))))

(assert (= (and b!5019926 (is-Node!15373 (c!857847 totalInput!1125))) b!5020217))

(assert (= b!5020218 b!5020219))

(assert (= (and b!5019926 (is-Leaf!25509 (c!857847 totalInput!1125))) b!5020218))

(declare-fun m!6055174 () Bool)

(assert (=> b!5020217 m!6055174))

(declare-fun m!6055176 () Bool)

(assert (=> b!5020217 m!6055176))

(declare-fun m!6055178 () Bool)

(assert (=> b!5020218 m!6055178))

(assert (=> b!5019926 m!6054922))

(push 1)

(assert (not b!5019991))

(assert (not b!5020208))

(assert (not b!5020188))

(assert (not b!5019994))

(assert (not b!5020126))

(assert (not b!5020196))

(assert (not d!1615926))

(assert (not d!1615890))

(assert (not d!1615902))

(assert (not d!1615922))

(assert (not bm!350554))

(assert (not d!1615874))

(assert (not d!1615920))

(assert (not b!5019973))

(assert (not b!5020183))

(assert (not b!5020171))

(assert (not setNonEmpty!28663))

(assert (not d!1615886))

(assert (not d!1615882))

(assert (not d!1615928))

(assert (not d!1615878))

(assert (not b!5019974))

(assert (not bm!350563))

(assert (not b!5020218))

(assert (not b!5020123))

(assert (not b!5020058))

(assert (not b!5020203))

(assert (not d!1615888))

(assert (not b!5019992))

(assert (not b!5020174))

(assert (not d!1615924))

(assert (not b!5019964))

(assert (not b!5020121))

(assert (not b!5020101))

(assert (not b!5019926))

(assert (not bm!350562))

(assert (not b!5020219))

(assert (not b!5020022))

(assert (not b!5020168))

(assert (not d!1615898))

(assert (not b!5020169))

(assert (not b!5020198))

(assert (not b!5020106))

(assert (not b!5020189))

(assert (not b!5020182))

(assert (not b!5019997))

(assert (not b!5020181))

(assert (not d!1615900))

(assert (not b!5020050))

(assert (not b!5020048))

(assert (not b!5020110))

(assert (not b!5020047))

(assert (not b!5020217))

(assert (not d!1615918))

(assert (not b!5020100))

(assert (not b!5020120))

(assert (not b!5020024))

(assert (not bm!350553))

(assert (not b!5020102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

