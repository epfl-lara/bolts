; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235510 () Bool)

(assert start!235510)

(declare-fun b!2400907 () Bool)

(declare-fun e!1529587 () Bool)

(declare-fun tp_is_empty!11485 () Bool)

(declare-fun tp!764114 () Bool)

(assert (=> b!2400907 (= e!1529587 (and tp_is_empty!11485 tp!764114))))

(declare-fun b!2400908 () Bool)

(declare-fun res!1020042 () Bool)

(declare-fun e!1529585 () Bool)

(assert (=> b!2400908 (=> res!1020042 e!1529585)))

(declare-datatypes ((C!14230 0))(
  ( (C!14231 (val!8357 Int)) )
))
(declare-datatypes ((Regex!7036 0))(
  ( (ElementMatch!7036 (c!382268 C!14230)) (Concat!11672 (regOne!14584 Regex!7036) (regTwo!14584 Regex!7036)) (EmptyExpr!7036) (Star!7036 (reg!7365 Regex!7036)) (EmptyLang!7036) (Union!7036 (regOne!14585 Regex!7036) (regTwo!14585 Regex!7036)) )
))
(declare-fun lt!872545 () Regex!7036)

(declare-fun validRegex!2761 (Regex!7036) Bool)

(assert (=> b!2400908 (= res!1020042 (not (validRegex!2761 lt!872545)))))

(declare-fun res!1020043 () Bool)

(declare-fun e!1529584 () Bool)

(assert (=> start!235510 (=> (not res!1020043) (not e!1529584))))

(declare-datatypes ((List!28310 0))(
  ( (Nil!28212) (Cons!28212 (h!33613 Regex!7036) (t!208287 List!28310)) )
))
(declare-fun l!9164 () List!28310)

(declare-fun lambda!90240 () Int)

(declare-fun forall!5670 (List!28310 Int) Bool)

(assert (=> start!235510 (= res!1020043 (forall!5670 l!9164 lambda!90240))))

(assert (=> start!235510 e!1529584))

(declare-fun e!1529583 () Bool)

(assert (=> start!235510 e!1529583))

(declare-fun e!1529588 () Bool)

(assert (=> start!235510 e!1529588))

(assert (=> start!235510 e!1529587))

(declare-fun b!2400909 () Bool)

(declare-fun e!1529586 () Bool)

(assert (=> b!2400909 (= e!1529584 (not e!1529586))))

(declare-fun res!1020044 () Bool)

(assert (=> b!2400909 (=> res!1020044 e!1529586)))

(declare-fun r!13927 () Regex!7036)

(assert (=> b!2400909 (= res!1020044 (or (is-Concat!11672 r!13927) (not (is-EmptyExpr!7036 r!13927)) (not (is-Cons!28212 l!9164))))))

(declare-datatypes ((List!28311 0))(
  ( (Nil!28213) (Cons!28213 (h!33614 C!14230) (t!208288 List!28311)) )
))
(declare-fun s!9460 () List!28311)

(declare-fun matchR!3153 (Regex!7036 List!28311) Bool)

(declare-fun matchRSpec!885 (Regex!7036 List!28311) Bool)

(assert (=> b!2400909 (= (matchR!3153 r!13927 s!9460) (matchRSpec!885 r!13927 s!9460))))

(declare-datatypes ((Unit!41343 0))(
  ( (Unit!41344) )
))
(declare-fun lt!872546 () Unit!41343)

(declare-fun mainMatchTheorem!885 (Regex!7036 List!28311) Unit!41343)

(assert (=> b!2400909 (= lt!872546 (mainMatchTheorem!885 r!13927 s!9460))))

(declare-fun b!2400910 () Bool)

(declare-fun tp!764111 () Bool)

(declare-fun tp!764110 () Bool)

(assert (=> b!2400910 (= e!1529588 (and tp!764111 tp!764110))))

(declare-fun b!2400911 () Bool)

(declare-fun tp!764108 () Bool)

(assert (=> b!2400911 (= e!1529588 tp!764108)))

(declare-fun b!2400912 () Bool)

(declare-fun ++!6982 (List!28311 List!28311) List!28311)

(assert (=> b!2400912 (= e!1529585 (= (++!6982 Nil!28213 s!9460) s!9460))))

(declare-fun b!2400913 () Bool)

(declare-fun tp!764113 () Bool)

(declare-fun tp!764112 () Bool)

(assert (=> b!2400913 (= e!1529583 (and tp!764113 tp!764112))))

(declare-fun b!2400914 () Bool)

(declare-fun res!1020041 () Bool)

(assert (=> b!2400914 (=> (not res!1020041) (not e!1529584))))

(declare-fun generalisedConcat!137 (List!28310) Regex!7036)

(assert (=> b!2400914 (= res!1020041 (= r!13927 (generalisedConcat!137 l!9164)))))

(declare-fun b!2400915 () Bool)

(assert (=> b!2400915 (= e!1529586 e!1529585)))

(declare-fun res!1020045 () Bool)

(assert (=> b!2400915 (=> res!1020045 e!1529585)))

(assert (=> b!2400915 (= res!1020045 (not (validRegex!2761 (h!33613 l!9164))))))

(assert (=> b!2400915 (= lt!872545 (generalisedConcat!137 (t!208287 l!9164)))))

(declare-fun b!2400916 () Bool)

(declare-fun tp!764109 () Bool)

(declare-fun tp!764115 () Bool)

(assert (=> b!2400916 (= e!1529588 (and tp!764109 tp!764115))))

(declare-fun b!2400917 () Bool)

(assert (=> b!2400917 (= e!1529588 tp_is_empty!11485)))

(assert (= (and start!235510 res!1020043) b!2400914))

(assert (= (and b!2400914 res!1020041) b!2400909))

(assert (= (and b!2400909 (not res!1020044)) b!2400915))

(assert (= (and b!2400915 (not res!1020045)) b!2400908))

(assert (= (and b!2400908 (not res!1020042)) b!2400912))

(assert (= (and start!235510 (is-Cons!28212 l!9164)) b!2400913))

(assert (= (and start!235510 (is-ElementMatch!7036 r!13927)) b!2400917))

(assert (= (and start!235510 (is-Concat!11672 r!13927)) b!2400910))

(assert (= (and start!235510 (is-Star!7036 r!13927)) b!2400911))

(assert (= (and start!235510 (is-Union!7036 r!13927)) b!2400916))

(assert (= (and start!235510 (is-Cons!28213 s!9460)) b!2400907))

(declare-fun m!2797891 () Bool)

(assert (=> b!2400914 m!2797891))

(declare-fun m!2797893 () Bool)

(assert (=> start!235510 m!2797893))

(declare-fun m!2797895 () Bool)

(assert (=> b!2400912 m!2797895))

(declare-fun m!2797897 () Bool)

(assert (=> b!2400915 m!2797897))

(declare-fun m!2797899 () Bool)

(assert (=> b!2400915 m!2797899))

(declare-fun m!2797901 () Bool)

(assert (=> b!2400909 m!2797901))

(declare-fun m!2797903 () Bool)

(assert (=> b!2400909 m!2797903))

(declare-fun m!2797905 () Bool)

(assert (=> b!2400909 m!2797905))

(declare-fun m!2797907 () Bool)

(assert (=> b!2400908 m!2797907))

(push 1)

(assert (not b!2400913))

(assert (not b!2400910))

(assert (not b!2400914))

(assert (not b!2400912))

(assert (not b!2400908))

(assert (not start!235510))

(assert (not b!2400916))

(assert tp_is_empty!11485)

(assert (not b!2400907))

(assert (not b!2400911))

(assert (not b!2400915))

(assert (not b!2400909))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2400962 () Bool)

(declare-fun e!1529612 () Bool)

(declare-fun lt!872555 () List!28311)

(assert (=> b!2400962 (= e!1529612 (or (not (= s!9460 Nil!28213)) (= lt!872555 Nil!28213)))))

(declare-fun b!2400959 () Bool)

(declare-fun e!1529611 () List!28311)

(assert (=> b!2400959 (= e!1529611 s!9460)))

(declare-fun d!699655 () Bool)

(assert (=> d!699655 e!1529612))

(declare-fun res!1020065 () Bool)

(assert (=> d!699655 (=> (not res!1020065) (not e!1529612))))

(declare-fun content!3865 (List!28311) (Set C!14230))

(assert (=> d!699655 (= res!1020065 (= (content!3865 lt!872555) (set.union (content!3865 Nil!28213) (content!3865 s!9460))))))

(assert (=> d!699655 (= lt!872555 e!1529611)))

(declare-fun c!382272 () Bool)

(assert (=> d!699655 (= c!382272 (is-Nil!28213 Nil!28213))))

(assert (=> d!699655 (= (++!6982 Nil!28213 s!9460) lt!872555)))

(declare-fun b!2400961 () Bool)

(declare-fun res!1020066 () Bool)

(assert (=> b!2400961 (=> (not res!1020066) (not e!1529612))))

(declare-fun size!22203 (List!28311) Int)

(assert (=> b!2400961 (= res!1020066 (= (size!22203 lt!872555) (+ (size!22203 Nil!28213) (size!22203 s!9460))))))

(declare-fun b!2400960 () Bool)

(assert (=> b!2400960 (= e!1529611 (Cons!28213 (h!33614 Nil!28213) (++!6982 (t!208288 Nil!28213) s!9460)))))

(assert (= (and d!699655 c!382272) b!2400959))

(assert (= (and d!699655 (not c!382272)) b!2400960))

(assert (= (and d!699655 res!1020065) b!2400961))

(assert (= (and b!2400961 res!1020066) b!2400962))

(declare-fun m!2797927 () Bool)

(assert (=> d!699655 m!2797927))

(declare-fun m!2797929 () Bool)

(assert (=> d!699655 m!2797929))

(declare-fun m!2797931 () Bool)

(assert (=> d!699655 m!2797931))

(declare-fun m!2797933 () Bool)

(assert (=> b!2400961 m!2797933))

(declare-fun m!2797935 () Bool)

(assert (=> b!2400961 m!2797935))

(declare-fun m!2797937 () Bool)

(assert (=> b!2400961 m!2797937))

(declare-fun m!2797939 () Bool)

(assert (=> b!2400960 m!2797939))

(assert (=> b!2400912 d!699655))

(declare-fun d!699659 () Bool)

(declare-fun res!1020071 () Bool)

(declare-fun e!1529617 () Bool)

(assert (=> d!699659 (=> res!1020071 e!1529617)))

(assert (=> d!699659 (= res!1020071 (is-Nil!28212 l!9164))))

(assert (=> d!699659 (= (forall!5670 l!9164 lambda!90240) e!1529617)))

(declare-fun b!2400967 () Bool)

(declare-fun e!1529618 () Bool)

(assert (=> b!2400967 (= e!1529617 e!1529618)))

(declare-fun res!1020072 () Bool)

(assert (=> b!2400967 (=> (not res!1020072) (not e!1529618))))

(declare-fun dynLambda!12150 (Int Regex!7036) Bool)

(assert (=> b!2400967 (= res!1020072 (dynLambda!12150 lambda!90240 (h!33613 l!9164)))))

(declare-fun b!2400968 () Bool)

(assert (=> b!2400968 (= e!1529618 (forall!5670 (t!208287 l!9164) lambda!90240))))

(assert (= (and d!699659 (not res!1020071)) b!2400967))

(assert (= (and b!2400967 res!1020072) b!2400968))

(declare-fun b_lambda!74323 () Bool)

(assert (=> (not b_lambda!74323) (not b!2400967)))

(declare-fun m!2797941 () Bool)

(assert (=> b!2400967 m!2797941))

(declare-fun m!2797943 () Bool)

(assert (=> b!2400968 m!2797943))

(assert (=> start!235510 d!699659))

(declare-fun b!2400987 () Bool)

(declare-fun e!1529638 () Bool)

(declare-fun e!1529639 () Bool)

(assert (=> b!2400987 (= e!1529638 e!1529639)))

(declare-fun res!1020083 () Bool)

(assert (=> b!2400987 (=> (not res!1020083) (not e!1529639))))

(declare-fun call!146674 () Bool)

(assert (=> b!2400987 (= res!1020083 call!146674)))

(declare-fun b!2400988 () Bool)

(declare-fun e!1529635 () Bool)

(assert (=> b!2400988 (= e!1529635 call!146674)))

(declare-fun b!2400989 () Bool)

(declare-fun e!1529637 () Bool)

(declare-fun e!1529634 () Bool)

(assert (=> b!2400989 (= e!1529637 e!1529634)))

(declare-fun c!382277 () Bool)

(assert (=> b!2400989 (= c!382277 (is-Union!7036 lt!872545))))

(declare-fun call!146673 () Bool)

(declare-fun c!382278 () Bool)

(declare-fun bm!146668 () Bool)

(assert (=> bm!146668 (= call!146673 (validRegex!2761 (ite c!382278 (reg!7365 lt!872545) (ite c!382277 (regTwo!14585 lt!872545) (regOne!14584 lt!872545)))))))

(declare-fun bm!146669 () Bool)

(declare-fun call!146675 () Bool)

(assert (=> bm!146669 (= call!146675 (validRegex!2761 (ite c!382277 (regOne!14585 lt!872545) (regTwo!14584 lt!872545))))))

(declare-fun d!699661 () Bool)

(declare-fun res!1020085 () Bool)

(declare-fun e!1529636 () Bool)

(assert (=> d!699661 (=> res!1020085 e!1529636)))

(assert (=> d!699661 (= res!1020085 (is-ElementMatch!7036 lt!872545))))

(assert (=> d!699661 (= (validRegex!2761 lt!872545) e!1529636)))

(declare-fun b!2400990 () Bool)

(assert (=> b!2400990 (= e!1529639 call!146675)))

(declare-fun b!2400991 () Bool)

(declare-fun res!1020086 () Bool)

(assert (=> b!2400991 (=> (not res!1020086) (not e!1529635))))

(assert (=> b!2400991 (= res!1020086 call!146675)))

(assert (=> b!2400991 (= e!1529634 e!1529635)))

(declare-fun b!2400992 () Bool)

(declare-fun res!1020084 () Bool)

(assert (=> b!2400992 (=> res!1020084 e!1529638)))

(assert (=> b!2400992 (= res!1020084 (not (is-Concat!11672 lt!872545)))))

(assert (=> b!2400992 (= e!1529634 e!1529638)))

(declare-fun bm!146670 () Bool)

(assert (=> bm!146670 (= call!146674 call!146673)))

(declare-fun b!2400993 () Bool)

(declare-fun e!1529633 () Bool)

(assert (=> b!2400993 (= e!1529637 e!1529633)))

(declare-fun res!1020087 () Bool)

(declare-fun nullable!2085 (Regex!7036) Bool)

(assert (=> b!2400993 (= res!1020087 (not (nullable!2085 (reg!7365 lt!872545))))))

(assert (=> b!2400993 (=> (not res!1020087) (not e!1529633))))

(declare-fun b!2400994 () Bool)

(assert (=> b!2400994 (= e!1529633 call!146673)))

(declare-fun b!2400995 () Bool)

(assert (=> b!2400995 (= e!1529636 e!1529637)))

(assert (=> b!2400995 (= c!382278 (is-Star!7036 lt!872545))))

(assert (= (and d!699661 (not res!1020085)) b!2400995))

(assert (= (and b!2400995 c!382278) b!2400993))

(assert (= (and b!2400995 (not c!382278)) b!2400989))

(assert (= (and b!2400993 res!1020087) b!2400994))

(assert (= (and b!2400989 c!382277) b!2400991))

(assert (= (and b!2400989 (not c!382277)) b!2400992))

(assert (= (and b!2400991 res!1020086) b!2400988))

(assert (= (and b!2400992 (not res!1020084)) b!2400987))

(assert (= (and b!2400987 res!1020083) b!2400990))

(assert (= (or b!2400991 b!2400990) bm!146669))

(assert (= (or b!2400988 b!2400987) bm!146670))

(assert (= (or b!2400994 bm!146670) bm!146668))

(declare-fun m!2797945 () Bool)

(assert (=> bm!146668 m!2797945))

(declare-fun m!2797947 () Bool)

(assert (=> bm!146669 m!2797947))

(declare-fun m!2797949 () Bool)

(assert (=> b!2400993 m!2797949))

(assert (=> b!2400908 d!699661))

(declare-fun bs!463151 () Bool)

(declare-fun d!699663 () Bool)

(assert (= bs!463151 (and d!699663 start!235510)))

(declare-fun lambda!90248 () Int)

(assert (=> bs!463151 (= lambda!90248 lambda!90240)))

(declare-fun b!2401046 () Bool)

(declare-fun e!1529670 () Bool)

(declare-fun e!1529673 () Bool)

(assert (=> b!2401046 (= e!1529670 e!1529673)))

(declare-fun c!382302 () Bool)

(declare-fun isEmpty!16207 (List!28310) Bool)

(assert (=> b!2401046 (= c!382302 (isEmpty!16207 l!9164))))

(declare-fun b!2401047 () Bool)

(declare-fun e!1529671 () Regex!7036)

(assert (=> b!2401047 (= e!1529671 (Concat!11672 (h!33613 l!9164) (generalisedConcat!137 (t!208287 l!9164))))))

(declare-fun b!2401048 () Bool)

(declare-fun e!1529674 () Regex!7036)

(assert (=> b!2401048 (= e!1529674 e!1529671)))

(declare-fun c!382299 () Bool)

(assert (=> b!2401048 (= c!382299 (is-Cons!28212 l!9164))))

(assert (=> d!699663 e!1529670))

(declare-fun res!1020099 () Bool)

(assert (=> d!699663 (=> (not res!1020099) (not e!1529670))))

(declare-fun lt!872561 () Regex!7036)

(assert (=> d!699663 (= res!1020099 (validRegex!2761 lt!872561))))

(assert (=> d!699663 (= lt!872561 e!1529674)))

(declare-fun c!382301 () Bool)

(declare-fun e!1529675 () Bool)

(assert (=> d!699663 (= c!382301 e!1529675)))

(declare-fun res!1020098 () Bool)

(assert (=> d!699663 (=> (not res!1020098) (not e!1529675))))

(assert (=> d!699663 (= res!1020098 (is-Cons!28212 l!9164))))

(assert (=> d!699663 (forall!5670 l!9164 lambda!90248)))

(assert (=> d!699663 (= (generalisedConcat!137 l!9164) lt!872561)))

(declare-fun b!2401049 () Bool)

(assert (=> b!2401049 (= e!1529674 (h!33613 l!9164))))

(declare-fun b!2401050 () Bool)

(assert (=> b!2401050 (= e!1529671 EmptyExpr!7036)))

(declare-fun b!2401051 () Bool)

(declare-fun e!1529672 () Bool)

(assert (=> b!2401051 (= e!1529673 e!1529672)))

(declare-fun c!382300 () Bool)

(declare-fun tail!3572 (List!28310) List!28310)

(assert (=> b!2401051 (= c!382300 (isEmpty!16207 (tail!3572 l!9164)))))

(declare-fun b!2401052 () Bool)

(declare-fun head!5302 (List!28310) Regex!7036)

(assert (=> b!2401052 (= e!1529672 (= lt!872561 (head!5302 l!9164)))))

(declare-fun b!2401053 () Bool)

(declare-fun isEmptyExpr!104 (Regex!7036) Bool)

(assert (=> b!2401053 (= e!1529673 (isEmptyExpr!104 lt!872561))))

(declare-fun b!2401054 () Bool)

(assert (=> b!2401054 (= e!1529675 (isEmpty!16207 (t!208287 l!9164)))))

(declare-fun b!2401055 () Bool)

(declare-fun isConcat!104 (Regex!7036) Bool)

(assert (=> b!2401055 (= e!1529672 (isConcat!104 lt!872561))))

(assert (= (and d!699663 res!1020098) b!2401054))

(assert (= (and d!699663 c!382301) b!2401049))

(assert (= (and d!699663 (not c!382301)) b!2401048))

(assert (= (and b!2401048 c!382299) b!2401047))

(assert (= (and b!2401048 (not c!382299)) b!2401050))

(assert (= (and d!699663 res!1020099) b!2401046))

(assert (= (and b!2401046 c!382302) b!2401053))

(assert (= (and b!2401046 (not c!382302)) b!2401051))

(assert (= (and b!2401051 c!382300) b!2401052))

(assert (= (and b!2401051 (not c!382300)) b!2401055))

(declare-fun m!2797951 () Bool)

(assert (=> d!699663 m!2797951))

(declare-fun m!2797953 () Bool)

(assert (=> d!699663 m!2797953))

(assert (=> b!2401047 m!2797899))

(declare-fun m!2797955 () Bool)

(assert (=> b!2401046 m!2797955))

(declare-fun m!2797957 () Bool)

(assert (=> b!2401051 m!2797957))

(assert (=> b!2401051 m!2797957))

(declare-fun m!2797959 () Bool)

(assert (=> b!2401051 m!2797959))

(declare-fun m!2797961 () Bool)

(assert (=> b!2401055 m!2797961))

(declare-fun m!2797963 () Bool)

(assert (=> b!2401054 m!2797963))

(declare-fun m!2797965 () Bool)

(assert (=> b!2401052 m!2797965))

(declare-fun m!2797967 () Bool)

(assert (=> b!2401053 m!2797967))

(assert (=> b!2400914 d!699663))

(declare-fun d!699665 () Bool)

(declare-fun e!1529710 () Bool)

(assert (=> d!699665 e!1529710))

(declare-fun c!382314 () Bool)

(assert (=> d!699665 (= c!382314 (is-EmptyExpr!7036 r!13927))))

(declare-fun lt!872564 () Bool)

(declare-fun e!1529708 () Bool)

(assert (=> d!699665 (= lt!872564 e!1529708)))

(declare-fun c!382313 () Bool)

(declare-fun isEmpty!16208 (List!28311) Bool)

(assert (=> d!699665 (= c!382313 (isEmpty!16208 s!9460))))

(assert (=> d!699665 (validRegex!2761 r!13927)))

(assert (=> d!699665 (= (matchR!3153 r!13927 s!9460) lt!872564)))

(declare-fun b!2401102 () Bool)

(declare-fun derivativeStep!1743 (Regex!7036 C!14230) Regex!7036)

(declare-fun head!5303 (List!28311) C!14230)

(declare-fun tail!3573 (List!28311) List!28311)

(assert (=> b!2401102 (= e!1529708 (matchR!3153 (derivativeStep!1743 r!13927 (head!5303 s!9460)) (tail!3573 s!9460)))))

(declare-fun b!2401103 () Bool)

(declare-fun e!1529707 () Bool)

(assert (=> b!2401103 (= e!1529707 (not (= (head!5303 s!9460) (c!382268 r!13927))))))

(declare-fun b!2401104 () Bool)

(declare-fun e!1529709 () Bool)

(assert (=> b!2401104 (= e!1529710 e!1529709)))

(declare-fun c!382315 () Bool)

(assert (=> b!2401104 (= c!382315 (is-EmptyLang!7036 r!13927))))

(declare-fun b!2401105 () Bool)

(assert (=> b!2401105 (= e!1529708 (nullable!2085 r!13927))))

(declare-fun bm!146679 () Bool)

(declare-fun call!146684 () Bool)

(assert (=> bm!146679 (= call!146684 (isEmpty!16208 s!9460))))

(declare-fun b!2401106 () Bool)

(declare-fun res!1020126 () Bool)

(declare-fun e!1529706 () Bool)

(assert (=> b!2401106 (=> (not res!1020126) (not e!1529706))))

(assert (=> b!2401106 (= res!1020126 (not call!146684))))

(declare-fun b!2401107 () Bool)

(declare-fun e!1529704 () Bool)

(declare-fun e!1529705 () Bool)

(assert (=> b!2401107 (= e!1529704 e!1529705)))

(declare-fun res!1020130 () Bool)

(assert (=> b!2401107 (=> (not res!1020130) (not e!1529705))))

(assert (=> b!2401107 (= res!1020130 (not lt!872564))))

(declare-fun b!2401108 () Bool)

(assert (=> b!2401108 (= e!1529710 (= lt!872564 call!146684))))

(declare-fun b!2401109 () Bool)

(declare-fun res!1020133 () Bool)

(assert (=> b!2401109 (=> res!1020133 e!1529704)))

(assert (=> b!2401109 (= res!1020133 e!1529706)))

(declare-fun res!1020128 () Bool)

(assert (=> b!2401109 (=> (not res!1020128) (not e!1529706))))

(assert (=> b!2401109 (= res!1020128 lt!872564)))

(declare-fun b!2401110 () Bool)

(declare-fun res!1020127 () Bool)

(assert (=> b!2401110 (=> (not res!1020127) (not e!1529706))))

(assert (=> b!2401110 (= res!1020127 (isEmpty!16208 (tail!3573 s!9460)))))

(declare-fun b!2401111 () Bool)

(declare-fun res!1020129 () Bool)

(assert (=> b!2401111 (=> res!1020129 e!1529707)))

(assert (=> b!2401111 (= res!1020129 (not (isEmpty!16208 (tail!3573 s!9460))))))

(declare-fun b!2401112 () Bool)

(assert (=> b!2401112 (= e!1529706 (= (head!5303 s!9460) (c!382268 r!13927)))))

(declare-fun b!2401113 () Bool)

(declare-fun res!1020132 () Bool)

(assert (=> b!2401113 (=> res!1020132 e!1529704)))

(assert (=> b!2401113 (= res!1020132 (not (is-ElementMatch!7036 r!13927)))))

(assert (=> b!2401113 (= e!1529709 e!1529704)))

(declare-fun b!2401114 () Bool)

(assert (=> b!2401114 (= e!1529709 (not lt!872564))))

(declare-fun b!2401115 () Bool)

(assert (=> b!2401115 (= e!1529705 e!1529707)))

(declare-fun res!1020131 () Bool)

(assert (=> b!2401115 (=> res!1020131 e!1529707)))

(assert (=> b!2401115 (= res!1020131 call!146684)))

(assert (= (and d!699665 c!382313) b!2401105))

(assert (= (and d!699665 (not c!382313)) b!2401102))

(assert (= (and d!699665 c!382314) b!2401108))

(assert (= (and d!699665 (not c!382314)) b!2401104))

(assert (= (and b!2401104 c!382315) b!2401114))

(assert (= (and b!2401104 (not c!382315)) b!2401113))

(assert (= (and b!2401113 (not res!1020132)) b!2401109))

(assert (= (and b!2401109 res!1020128) b!2401106))

(assert (= (and b!2401106 res!1020126) b!2401110))

(assert (= (and b!2401110 res!1020127) b!2401112))

(assert (= (and b!2401109 (not res!1020133)) b!2401107))

(assert (= (and b!2401107 res!1020130) b!2401115))

(assert (= (and b!2401115 (not res!1020131)) b!2401111))

(assert (= (and b!2401111 (not res!1020129)) b!2401103))

(assert (= (or b!2401108 b!2401106 b!2401115) bm!146679))

(declare-fun m!2797987 () Bool)

(assert (=> b!2401105 m!2797987))

(declare-fun m!2797989 () Bool)

(assert (=> b!2401110 m!2797989))

(assert (=> b!2401110 m!2797989))

(declare-fun m!2797991 () Bool)

(assert (=> b!2401110 m!2797991))

(declare-fun m!2797993 () Bool)

(assert (=> b!2401112 m!2797993))

(assert (=> b!2401111 m!2797989))

(assert (=> b!2401111 m!2797989))

(assert (=> b!2401111 m!2797991))

(declare-fun m!2797995 () Bool)

(assert (=> d!699665 m!2797995))

(declare-fun m!2797997 () Bool)

(assert (=> d!699665 m!2797997))

(assert (=> b!2401102 m!2797993))

(assert (=> b!2401102 m!2797993))

(declare-fun m!2797999 () Bool)

(assert (=> b!2401102 m!2797999))

(assert (=> b!2401102 m!2797989))

(assert (=> b!2401102 m!2797999))

(assert (=> b!2401102 m!2797989))

(declare-fun m!2798001 () Bool)

(assert (=> b!2401102 m!2798001))

(assert (=> bm!146679 m!2797995))

(assert (=> b!2401103 m!2797993))

(assert (=> b!2400909 d!699665))

(declare-fun b!2401167 () Bool)

(assert (=> b!2401167 true))

(assert (=> b!2401167 true))

(declare-fun bs!463153 () Bool)

(declare-fun b!2401164 () Bool)

(assert (= bs!463153 (and b!2401164 b!2401167)))

(declare-fun lambda!90255 () Int)

(declare-fun lambda!90254 () Int)

(assert (=> bs!463153 (not (= lambda!90255 lambda!90254))))

(assert (=> b!2401164 true))

(assert (=> b!2401164 true))

(declare-fun c!382326 () Bool)

(declare-fun bm!146687 () Bool)

(declare-fun call!146692 () Bool)

(declare-fun Exists!1096 (Int) Bool)

(assert (=> bm!146687 (= call!146692 (Exists!1096 (ite c!382326 lambda!90254 lambda!90255)))))

(declare-fun b!2401163 () Bool)

(declare-fun e!1529748 () Bool)

(declare-fun call!146693 () Bool)

(assert (=> b!2401163 (= e!1529748 call!146693)))

(declare-fun e!1529747 () Bool)

(assert (=> b!2401164 (= e!1529747 call!146692)))

(declare-fun b!2401165 () Bool)

(declare-fun e!1529745 () Bool)

(declare-fun e!1529744 () Bool)

(assert (=> b!2401165 (= e!1529745 e!1529744)))

(declare-fun res!1020163 () Bool)

(assert (=> b!2401165 (= res!1020163 (matchRSpec!885 (regOne!14585 r!13927) s!9460))))

(assert (=> b!2401165 (=> res!1020163 e!1529744)))

(declare-fun b!2401166 () Bool)

(declare-fun e!1529743 () Bool)

(assert (=> b!2401166 (= e!1529743 (= s!9460 (Cons!28213 (c!382268 r!13927) Nil!28213)))))

(declare-fun e!1529746 () Bool)

(assert (=> b!2401167 (= e!1529746 call!146692)))

(declare-fun b!2401168 () Bool)

(declare-fun c!382329 () Bool)

(assert (=> b!2401168 (= c!382329 (is-Union!7036 r!13927))))

(assert (=> b!2401168 (= e!1529743 e!1529745)))

(declare-fun b!2401169 () Bool)

(declare-fun c!382328 () Bool)

(assert (=> b!2401169 (= c!382328 (is-ElementMatch!7036 r!13927))))

(declare-fun e!1529742 () Bool)

(assert (=> b!2401169 (= e!1529742 e!1529743)))

(declare-fun b!2401170 () Bool)

(assert (=> b!2401170 (= e!1529744 (matchRSpec!885 (regTwo!14585 r!13927) s!9460))))

(declare-fun b!2401171 () Bool)

(assert (=> b!2401171 (= e!1529745 e!1529747)))

(assert (=> b!2401171 (= c!382326 (is-Star!7036 r!13927))))

(declare-fun b!2401172 () Bool)

(declare-fun res!1020161 () Bool)

(assert (=> b!2401172 (=> res!1020161 e!1529746)))

(assert (=> b!2401172 (= res!1020161 call!146693)))

(assert (=> b!2401172 (= e!1529747 e!1529746)))

(declare-fun b!2401173 () Bool)

(assert (=> b!2401173 (= e!1529748 e!1529742)))

(declare-fun res!1020162 () Bool)

(assert (=> b!2401173 (= res!1020162 (not (is-EmptyLang!7036 r!13927)))))

(assert (=> b!2401173 (=> (not res!1020162) (not e!1529742))))

(declare-fun d!699669 () Bool)

(declare-fun c!382327 () Bool)

(assert (=> d!699669 (= c!382327 (is-EmptyExpr!7036 r!13927))))

(assert (=> d!699669 (= (matchRSpec!885 r!13927 s!9460) e!1529748)))

(declare-fun bm!146688 () Bool)

(assert (=> bm!146688 (= call!146693 (isEmpty!16208 s!9460))))

(assert (= (and d!699669 c!382327) b!2401163))

(assert (= (and d!699669 (not c!382327)) b!2401173))

(assert (= (and b!2401173 res!1020162) b!2401169))

(assert (= (and b!2401169 c!382328) b!2401166))

(assert (= (and b!2401169 (not c!382328)) b!2401168))

(assert (= (and b!2401168 c!382329) b!2401165))

(assert (= (and b!2401168 (not c!382329)) b!2401171))

(assert (= (and b!2401165 (not res!1020163)) b!2401170))

(assert (= (and b!2401171 c!382326) b!2401172))

(assert (= (and b!2401171 (not c!382326)) b!2401164))

(assert (= (and b!2401172 (not res!1020161)) b!2401167))

(assert (= (or b!2401167 b!2401164) bm!146687))

(assert (= (or b!2401163 b!2401172) bm!146688))

(declare-fun m!2798013 () Bool)

(assert (=> bm!146687 m!2798013))

(declare-fun m!2798015 () Bool)

(assert (=> b!2401165 m!2798015))

(declare-fun m!2798017 () Bool)

(assert (=> b!2401170 m!2798017))

(assert (=> bm!146688 m!2797995))

(assert (=> b!2400909 d!699669))

(declare-fun d!699675 () Bool)

(assert (=> d!699675 (= (matchR!3153 r!13927 s!9460) (matchRSpec!885 r!13927 s!9460))))

(declare-fun lt!872569 () Unit!41343)

(declare-fun choose!14214 (Regex!7036 List!28311) Unit!41343)

(assert (=> d!699675 (= lt!872569 (choose!14214 r!13927 s!9460))))

(assert (=> d!699675 (validRegex!2761 r!13927)))

(assert (=> d!699675 (= (mainMatchTheorem!885 r!13927 s!9460) lt!872569)))

(declare-fun bs!463154 () Bool)

(assert (= bs!463154 d!699675))

(assert (=> bs!463154 m!2797901))

(assert (=> bs!463154 m!2797903))

(declare-fun m!2798019 () Bool)

(assert (=> bs!463154 m!2798019))

(assert (=> bs!463154 m!2797997))

(assert (=> b!2400909 d!699675))

(declare-fun b!2401206 () Bool)

(declare-fun e!1529768 () Bool)

(declare-fun e!1529769 () Bool)

(assert (=> b!2401206 (= e!1529768 e!1529769)))

(declare-fun res!1020180 () Bool)

(assert (=> b!2401206 (=> (not res!1020180) (not e!1529769))))

(declare-fun call!146697 () Bool)

(assert (=> b!2401206 (= res!1020180 call!146697)))

(declare-fun b!2401207 () Bool)

(declare-fun e!1529765 () Bool)

(assert (=> b!2401207 (= e!1529765 call!146697)))

(declare-fun b!2401208 () Bool)

(declare-fun e!1529767 () Bool)

(declare-fun e!1529764 () Bool)

(assert (=> b!2401208 (= e!1529767 e!1529764)))

(declare-fun c!382336 () Bool)

(assert (=> b!2401208 (= c!382336 (is-Union!7036 (h!33613 l!9164)))))

(declare-fun call!146696 () Bool)

(declare-fun c!382337 () Bool)

(declare-fun bm!146691 () Bool)

(assert (=> bm!146691 (= call!146696 (validRegex!2761 (ite c!382337 (reg!7365 (h!33613 l!9164)) (ite c!382336 (regTwo!14585 (h!33613 l!9164)) (regOne!14584 (h!33613 l!9164))))))))

(declare-fun bm!146692 () Bool)

(declare-fun call!146698 () Bool)

(assert (=> bm!146692 (= call!146698 (validRegex!2761 (ite c!382336 (regOne!14585 (h!33613 l!9164)) (regTwo!14584 (h!33613 l!9164)))))))

(declare-fun d!699677 () Bool)

(declare-fun res!1020182 () Bool)

(declare-fun e!1529766 () Bool)

(assert (=> d!699677 (=> res!1020182 e!1529766)))

(assert (=> d!699677 (= res!1020182 (is-ElementMatch!7036 (h!33613 l!9164)))))

(assert (=> d!699677 (= (validRegex!2761 (h!33613 l!9164)) e!1529766)))

(declare-fun b!2401209 () Bool)

(assert (=> b!2401209 (= e!1529769 call!146698)))

(declare-fun b!2401210 () Bool)

(declare-fun res!1020183 () Bool)

(assert (=> b!2401210 (=> (not res!1020183) (not e!1529765))))

(assert (=> b!2401210 (= res!1020183 call!146698)))

(assert (=> b!2401210 (= e!1529764 e!1529765)))

(declare-fun b!2401211 () Bool)

(declare-fun res!1020181 () Bool)

(assert (=> b!2401211 (=> res!1020181 e!1529768)))

(assert (=> b!2401211 (= res!1020181 (not (is-Concat!11672 (h!33613 l!9164))))))

(assert (=> b!2401211 (= e!1529764 e!1529768)))

(declare-fun bm!146693 () Bool)

(assert (=> bm!146693 (= call!146697 call!146696)))

(declare-fun b!2401212 () Bool)

(declare-fun e!1529763 () Bool)

(assert (=> b!2401212 (= e!1529767 e!1529763)))

(declare-fun res!1020184 () Bool)

(assert (=> b!2401212 (= res!1020184 (not (nullable!2085 (reg!7365 (h!33613 l!9164)))))))

(assert (=> b!2401212 (=> (not res!1020184) (not e!1529763))))

(declare-fun b!2401213 () Bool)

(assert (=> b!2401213 (= e!1529763 call!146696)))

(declare-fun b!2401214 () Bool)

(assert (=> b!2401214 (= e!1529766 e!1529767)))

(assert (=> b!2401214 (= c!382337 (is-Star!7036 (h!33613 l!9164)))))

(assert (= (and d!699677 (not res!1020182)) b!2401214))

(assert (= (and b!2401214 c!382337) b!2401212))

(assert (= (and b!2401214 (not c!382337)) b!2401208))

(assert (= (and b!2401212 res!1020184) b!2401213))

(assert (= (and b!2401208 c!382336) b!2401210))

(assert (= (and b!2401208 (not c!382336)) b!2401211))

(assert (= (and b!2401210 res!1020183) b!2401207))

(assert (= (and b!2401211 (not res!1020181)) b!2401206))

(assert (= (and b!2401206 res!1020180) b!2401209))

(assert (= (or b!2401210 b!2401209) bm!146692))

(assert (= (or b!2401207 b!2401206) bm!146693))

(assert (= (or b!2401213 bm!146693) bm!146691))

(declare-fun m!2798021 () Bool)

(assert (=> bm!146691 m!2798021))

(declare-fun m!2798023 () Bool)

(assert (=> bm!146692 m!2798023))

(declare-fun m!2798025 () Bool)

(assert (=> b!2401212 m!2798025))

(assert (=> b!2400915 d!699677))

(declare-fun bs!463155 () Bool)

(declare-fun d!699679 () Bool)

(assert (= bs!463155 (and d!699679 start!235510)))

(declare-fun lambda!90256 () Int)

(assert (=> bs!463155 (= lambda!90256 lambda!90240)))

(declare-fun bs!463156 () Bool)

(assert (= bs!463156 (and d!699679 d!699663)))

(assert (=> bs!463156 (= lambda!90256 lambda!90248)))

(declare-fun b!2401215 () Bool)

(declare-fun e!1529770 () Bool)

(declare-fun e!1529773 () Bool)

(assert (=> b!2401215 (= e!1529770 e!1529773)))

(declare-fun c!382341 () Bool)

(assert (=> b!2401215 (= c!382341 (isEmpty!16207 (t!208287 l!9164)))))

(declare-fun b!2401216 () Bool)

(declare-fun e!1529771 () Regex!7036)

(assert (=> b!2401216 (= e!1529771 (Concat!11672 (h!33613 (t!208287 l!9164)) (generalisedConcat!137 (t!208287 (t!208287 l!9164)))))))

(declare-fun b!2401217 () Bool)

(declare-fun e!1529774 () Regex!7036)

(assert (=> b!2401217 (= e!1529774 e!1529771)))

(declare-fun c!382338 () Bool)

(assert (=> b!2401217 (= c!382338 (is-Cons!28212 (t!208287 l!9164)))))

(assert (=> d!699679 e!1529770))

(declare-fun res!1020186 () Bool)

(assert (=> d!699679 (=> (not res!1020186) (not e!1529770))))

(declare-fun lt!872570 () Regex!7036)

(assert (=> d!699679 (= res!1020186 (validRegex!2761 lt!872570))))

(assert (=> d!699679 (= lt!872570 e!1529774)))

(declare-fun c!382340 () Bool)

(declare-fun e!1529775 () Bool)

(assert (=> d!699679 (= c!382340 e!1529775)))

(declare-fun res!1020185 () Bool)

(assert (=> d!699679 (=> (not res!1020185) (not e!1529775))))

(assert (=> d!699679 (= res!1020185 (is-Cons!28212 (t!208287 l!9164)))))

(assert (=> d!699679 (forall!5670 (t!208287 l!9164) lambda!90256)))

(assert (=> d!699679 (= (generalisedConcat!137 (t!208287 l!9164)) lt!872570)))

(declare-fun b!2401218 () Bool)

(assert (=> b!2401218 (= e!1529774 (h!33613 (t!208287 l!9164)))))

(declare-fun b!2401219 () Bool)

(assert (=> b!2401219 (= e!1529771 EmptyExpr!7036)))

(declare-fun b!2401220 () Bool)

(declare-fun e!1529772 () Bool)

(assert (=> b!2401220 (= e!1529773 e!1529772)))

(declare-fun c!382339 () Bool)

(assert (=> b!2401220 (= c!382339 (isEmpty!16207 (tail!3572 (t!208287 l!9164))))))

(declare-fun b!2401221 () Bool)

(assert (=> b!2401221 (= e!1529772 (= lt!872570 (head!5302 (t!208287 l!9164))))))

(declare-fun b!2401222 () Bool)

(assert (=> b!2401222 (= e!1529773 (isEmptyExpr!104 lt!872570))))

(declare-fun b!2401223 () Bool)

(assert (=> b!2401223 (= e!1529775 (isEmpty!16207 (t!208287 (t!208287 l!9164))))))

(declare-fun b!2401224 () Bool)

(assert (=> b!2401224 (= e!1529772 (isConcat!104 lt!872570))))

(assert (= (and d!699679 res!1020185) b!2401223))

(assert (= (and d!699679 c!382340) b!2401218))

(assert (= (and d!699679 (not c!382340)) b!2401217))

(assert (= (and b!2401217 c!382338) b!2401216))

(assert (= (and b!2401217 (not c!382338)) b!2401219))

(assert (= (and d!699679 res!1020186) b!2401215))

(assert (= (and b!2401215 c!382341) b!2401222))

(assert (= (and b!2401215 (not c!382341)) b!2401220))

(assert (= (and b!2401220 c!382339) b!2401221))

(assert (= (and b!2401220 (not c!382339)) b!2401224))

(declare-fun m!2798027 () Bool)

(assert (=> d!699679 m!2798027))

(declare-fun m!2798029 () Bool)

(assert (=> d!699679 m!2798029))

(declare-fun m!2798031 () Bool)

(assert (=> b!2401216 m!2798031))

(assert (=> b!2401215 m!2797963))

(declare-fun m!2798033 () Bool)

(assert (=> b!2401220 m!2798033))

(assert (=> b!2401220 m!2798033))

(declare-fun m!2798035 () Bool)

(assert (=> b!2401220 m!2798035))

(declare-fun m!2798037 () Bool)

(assert (=> b!2401224 m!2798037))

(declare-fun m!2798039 () Bool)

(assert (=> b!2401223 m!2798039))

(declare-fun m!2798041 () Bool)

(assert (=> b!2401221 m!2798041))

(declare-fun m!2798043 () Bool)

(assert (=> b!2401222 m!2798043))

(assert (=> b!2400915 d!699679))

(declare-fun b!2401229 () Bool)

(declare-fun e!1529778 () Bool)

(declare-fun tp!764142 () Bool)

(assert (=> b!2401229 (= e!1529778 (and tp_is_empty!11485 tp!764142))))

(assert (=> b!2400907 (= tp!764114 e!1529778)))

(assert (= (and b!2400907 (is-Cons!28213 (t!208288 s!9460))) b!2401229))

(declare-fun e!1529781 () Bool)

(assert (=> b!2400913 (= tp!764113 e!1529781)))

(declare-fun b!2401240 () Bool)

(assert (=> b!2401240 (= e!1529781 tp_is_empty!11485)))

(declare-fun b!2401243 () Bool)

(declare-fun tp!764153 () Bool)

(declare-fun tp!764156 () Bool)

(assert (=> b!2401243 (= e!1529781 (and tp!764153 tp!764156))))

(declare-fun b!2401241 () Bool)

(declare-fun tp!764154 () Bool)

(declare-fun tp!764157 () Bool)

(assert (=> b!2401241 (= e!1529781 (and tp!764154 tp!764157))))

(declare-fun b!2401242 () Bool)

(declare-fun tp!764155 () Bool)

(assert (=> b!2401242 (= e!1529781 tp!764155)))

(assert (= (and b!2400913 (is-ElementMatch!7036 (h!33613 l!9164))) b!2401240))

(assert (= (and b!2400913 (is-Concat!11672 (h!33613 l!9164))) b!2401241))

(assert (= (and b!2400913 (is-Star!7036 (h!33613 l!9164))) b!2401242))

(assert (= (and b!2400913 (is-Union!7036 (h!33613 l!9164))) b!2401243))

(declare-fun b!2401248 () Bool)

(declare-fun e!1529784 () Bool)

(declare-fun tp!764162 () Bool)

(declare-fun tp!764163 () Bool)

(assert (=> b!2401248 (= e!1529784 (and tp!764162 tp!764163))))

(assert (=> b!2400913 (= tp!764112 e!1529784)))

(assert (= (and b!2400913 (is-Cons!28212 (t!208287 l!9164))) b!2401248))

(declare-fun e!1529785 () Bool)

(assert (=> b!2400910 (= tp!764111 e!1529785)))

(declare-fun b!2401249 () Bool)

(assert (=> b!2401249 (= e!1529785 tp_is_empty!11485)))

(declare-fun b!2401252 () Bool)

(declare-fun tp!764164 () Bool)

(declare-fun tp!764167 () Bool)

(assert (=> b!2401252 (= e!1529785 (and tp!764164 tp!764167))))

(declare-fun b!2401250 () Bool)

(declare-fun tp!764165 () Bool)

(declare-fun tp!764168 () Bool)

(assert (=> b!2401250 (= e!1529785 (and tp!764165 tp!764168))))

(declare-fun b!2401251 () Bool)

(declare-fun tp!764166 () Bool)

(assert (=> b!2401251 (= e!1529785 tp!764166)))

(assert (= (and b!2400910 (is-ElementMatch!7036 (regOne!14584 r!13927))) b!2401249))

(assert (= (and b!2400910 (is-Concat!11672 (regOne!14584 r!13927))) b!2401250))

(assert (= (and b!2400910 (is-Star!7036 (regOne!14584 r!13927))) b!2401251))

(assert (= (and b!2400910 (is-Union!7036 (regOne!14584 r!13927))) b!2401252))

(declare-fun e!1529786 () Bool)

(assert (=> b!2400910 (= tp!764110 e!1529786)))

(declare-fun b!2401253 () Bool)

(assert (=> b!2401253 (= e!1529786 tp_is_empty!11485)))

(declare-fun b!2401256 () Bool)

(declare-fun tp!764169 () Bool)

(declare-fun tp!764172 () Bool)

(assert (=> b!2401256 (= e!1529786 (and tp!764169 tp!764172))))

(declare-fun b!2401254 () Bool)

(declare-fun tp!764170 () Bool)

(declare-fun tp!764173 () Bool)

(assert (=> b!2401254 (= e!1529786 (and tp!764170 tp!764173))))

(declare-fun b!2401255 () Bool)

(declare-fun tp!764171 () Bool)

(assert (=> b!2401255 (= e!1529786 tp!764171)))

(assert (= (and b!2400910 (is-ElementMatch!7036 (regTwo!14584 r!13927))) b!2401253))

(assert (= (and b!2400910 (is-Concat!11672 (regTwo!14584 r!13927))) b!2401254))

(assert (= (and b!2400910 (is-Star!7036 (regTwo!14584 r!13927))) b!2401255))

(assert (= (and b!2400910 (is-Union!7036 (regTwo!14584 r!13927))) b!2401256))

(declare-fun e!1529787 () Bool)

(assert (=> b!2400916 (= tp!764109 e!1529787)))

(declare-fun b!2401257 () Bool)

(assert (=> b!2401257 (= e!1529787 tp_is_empty!11485)))

(declare-fun b!2401260 () Bool)

(declare-fun tp!764174 () Bool)

(declare-fun tp!764177 () Bool)

(assert (=> b!2401260 (= e!1529787 (and tp!764174 tp!764177))))

(declare-fun b!2401258 () Bool)

(declare-fun tp!764175 () Bool)

(declare-fun tp!764178 () Bool)

(assert (=> b!2401258 (= e!1529787 (and tp!764175 tp!764178))))

(declare-fun b!2401259 () Bool)

(declare-fun tp!764176 () Bool)

(assert (=> b!2401259 (= e!1529787 tp!764176)))

(assert (= (and b!2400916 (is-ElementMatch!7036 (regOne!14585 r!13927))) b!2401257))

(assert (= (and b!2400916 (is-Concat!11672 (regOne!14585 r!13927))) b!2401258))

(assert (= (and b!2400916 (is-Star!7036 (regOne!14585 r!13927))) b!2401259))

(assert (= (and b!2400916 (is-Union!7036 (regOne!14585 r!13927))) b!2401260))

(declare-fun e!1529788 () Bool)

(assert (=> b!2400916 (= tp!764115 e!1529788)))

(declare-fun b!2401261 () Bool)

(assert (=> b!2401261 (= e!1529788 tp_is_empty!11485)))

(declare-fun b!2401264 () Bool)

(declare-fun tp!764179 () Bool)

(declare-fun tp!764182 () Bool)

(assert (=> b!2401264 (= e!1529788 (and tp!764179 tp!764182))))

(declare-fun b!2401262 () Bool)

(declare-fun tp!764180 () Bool)

(declare-fun tp!764183 () Bool)

(assert (=> b!2401262 (= e!1529788 (and tp!764180 tp!764183))))

(declare-fun b!2401263 () Bool)

(declare-fun tp!764181 () Bool)

(assert (=> b!2401263 (= e!1529788 tp!764181)))

(assert (= (and b!2400916 (is-ElementMatch!7036 (regTwo!14585 r!13927))) b!2401261))

(assert (= (and b!2400916 (is-Concat!11672 (regTwo!14585 r!13927))) b!2401262))

(assert (= (and b!2400916 (is-Star!7036 (regTwo!14585 r!13927))) b!2401263))

(assert (= (and b!2400916 (is-Union!7036 (regTwo!14585 r!13927))) b!2401264))

(declare-fun e!1529789 () Bool)

(assert (=> b!2400911 (= tp!764108 e!1529789)))

(declare-fun b!2401265 () Bool)

(assert (=> b!2401265 (= e!1529789 tp_is_empty!11485)))

(declare-fun b!2401268 () Bool)

(declare-fun tp!764184 () Bool)

(declare-fun tp!764187 () Bool)

(assert (=> b!2401268 (= e!1529789 (and tp!764184 tp!764187))))

(declare-fun b!2401266 () Bool)

(declare-fun tp!764185 () Bool)

(declare-fun tp!764188 () Bool)

(assert (=> b!2401266 (= e!1529789 (and tp!764185 tp!764188))))

(declare-fun b!2401267 () Bool)

(declare-fun tp!764186 () Bool)

(assert (=> b!2401267 (= e!1529789 tp!764186)))

(assert (= (and b!2400911 (is-ElementMatch!7036 (reg!7365 r!13927))) b!2401265))

(assert (= (and b!2400911 (is-Concat!11672 (reg!7365 r!13927))) b!2401266))

(assert (= (and b!2400911 (is-Star!7036 (reg!7365 r!13927))) b!2401267))

(assert (= (and b!2400911 (is-Union!7036 (reg!7365 r!13927))) b!2401268))

(declare-fun b_lambda!74327 () Bool)

(assert (= b_lambda!74323 (or start!235510 b_lambda!74327)))

(declare-fun bs!463157 () Bool)

(declare-fun d!699681 () Bool)

(assert (= bs!463157 (and d!699681 start!235510)))

(assert (=> bs!463157 (= (dynLambda!12150 lambda!90240 (h!33613 l!9164)) (validRegex!2761 (h!33613 l!9164)))))

(assert (=> bs!463157 m!2797897))

(assert (=> b!2400967 d!699681))

(push 1)

(assert (not b!2401051))

(assert (not b!2400968))

(assert (not b!2401243))

(assert (not bm!146668))

(assert (not b!2401216))

(assert (not b!2401110))

(assert (not b!2401260))

(assert (not b!2401046))

(assert (not b_lambda!74327))

(assert (not b!2401241))

(assert (not b!2401267))

(assert (not b!2401047))

(assert (not b!2401259))

(assert tp_is_empty!11485)

(assert (not b!2400961))

(assert (not d!699655))

(assert (not b!2401165))

(assert (not b!2401105))

(assert (not b!2401229))

(assert (not b!2401215))

(assert (not b!2401250))

(assert (not b!2401102))

(assert (not bs!463157))

(assert (not b!2401222))

(assert (not b!2401255))

(assert (not bm!146688))

(assert (not b!2401220))

(assert (not b!2401266))

(assert (not b!2400993))

(assert (not d!699663))

(assert (not bm!146692))

(assert (not b!2401258))

(assert (not b!2401212))

(assert (not b!2401052))

(assert (not b!2401251))

(assert (not d!699665))

(assert (not b!2401254))

(assert (not bm!146679))

(assert (not b!2401242))

(assert (not b!2401055))

(assert (not b!2401054))

(assert (not d!699675))

(assert (not b!2401268))

(assert (not b!2400960))

(assert (not b!2401103))

(assert (not bm!146691))

(assert (not bm!146687))

(assert (not b!2401223))

(assert (not d!699679))

(assert (not b!2401053))

(assert (not b!2401256))

(assert (not b!2401224))

(assert (not b!2401111))

(assert (not b!2401170))

(assert (not b!2401221))

(assert (not b!2401248))

(assert (not b!2401252))

(assert (not b!2401112))

(assert (not b!2401263))

(assert (not b!2401264))

(assert (not bm!146669))

(assert (not b!2401262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

