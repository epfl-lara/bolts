; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80294 () Bool)

(assert start!80294)

(declare-fun b!889823 () Bool)

(declare-fun e!583106 () Bool)

(declare-fun tp!280231 () Bool)

(declare-fun tp!280227 () Bool)

(assert (=> b!889823 (= e!583106 (and tp!280231 tp!280227))))

(declare-fun b!889824 () Bool)

(declare-fun tp!280229 () Bool)

(assert (=> b!889824 (= e!583106 tp!280229)))

(declare-fun b!889825 () Bool)

(declare-fun e!583105 () Bool)

(declare-datatypes ((C!5180 0))(
  ( (C!5181 (val!2838 Int)) )
))
(declare-datatypes ((Regex!2305 0))(
  ( (ElementMatch!2305 (c!143940 C!5180)) (Concat!4138 (regOne!5122 Regex!2305) (regTwo!5122 Regex!2305)) (EmptyExpr!2305) (Star!2305 (reg!2634 Regex!2305)) (EmptyLang!2305) (Union!2305 (regOne!5123 Regex!2305) (regTwo!5123 Regex!2305)) )
))
(declare-fun r!15766 () Regex!2305)

(declare-datatypes ((List!9535 0))(
  ( (Nil!9519) (Cons!9519 (h!14920 C!5180) (t!100581 List!9535)) )
))
(declare-fun s!10566 () List!9535)

(declare-fun matchR!843 (Regex!2305 List!9535) Bool)

(assert (=> b!889825 (= e!583105 (matchR!843 (regTwo!5123 r!15766) s!10566))))

(declare-fun b!889826 () Bool)

(declare-fun e!583104 () Bool)

(declare-fun e!583102 () Bool)

(assert (=> b!889826 (= e!583104 e!583102)))

(declare-fun res!404650 () Bool)

(assert (=> b!889826 (=> res!404650 e!583102)))

(declare-fun lt!332258 () Bool)

(assert (=> b!889826 (= res!404650 (not lt!332258))))

(assert (=> b!889826 e!583105))

(declare-fun res!404648 () Bool)

(assert (=> b!889826 (=> res!404648 e!583105)))

(assert (=> b!889826 (= res!404648 lt!332258)))

(assert (=> b!889826 (= lt!332258 (matchR!843 (regOne!5123 r!15766) s!10566))))

(declare-datatypes ((Unit!14189 0))(
  ( (Unit!14190) )
))
(declare-fun lt!332260 () Unit!14189)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!16 (Regex!2305 Regex!2305 List!9535) Unit!14189)

(assert (=> b!889826 (= lt!332260 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!16 (regOne!5123 r!15766) (regTwo!5123 r!15766) s!10566))))

(declare-fun b!889827 () Bool)

(declare-fun e!583103 () Bool)

(assert (=> b!889827 (= e!583103 (not e!583104))))

(declare-fun res!404649 () Bool)

(assert (=> b!889827 (=> res!404649 e!583104)))

(declare-fun lt!332256 () Bool)

(get-info :version)

(assert (=> b!889827 (= res!404649 (or (not lt!332256) (and ((_ is Concat!4138) r!15766) ((_ is EmptyExpr!2305) (regOne!5122 r!15766))) (and ((_ is Concat!4138) r!15766) ((_ is EmptyExpr!2305) (regTwo!5122 r!15766))) ((_ is Concat!4138) r!15766) (not ((_ is Union!2305) r!15766))))))

(declare-fun matchRSpec!106 (Regex!2305 List!9535) Bool)

(assert (=> b!889827 (= lt!332256 (matchRSpec!106 r!15766 s!10566))))

(assert (=> b!889827 (= lt!332256 (matchR!843 r!15766 s!10566))))

(declare-fun lt!332255 () Unit!14189)

(declare-fun mainMatchTheorem!106 (Regex!2305 List!9535) Unit!14189)

(assert (=> b!889827 (= lt!332255 (mainMatchTheorem!106 r!15766 s!10566))))

(declare-fun b!889828 () Bool)

(declare-fun e!583107 () Bool)

(declare-fun validRegex!774 (Regex!2305) Bool)

(declare-fun removeUselessConcat!42 (Regex!2305) Regex!2305)

(assert (=> b!889828 (= e!583107 (validRegex!774 (removeUselessConcat!42 r!15766)))))

(declare-fun lt!332259 () Regex!2305)

(declare-fun lt!332254 () Regex!2305)

(assert (=> b!889828 (matchR!843 (Union!2305 lt!332259 lt!332254) s!10566)))

(declare-fun lt!332261 () Unit!14189)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!4 (Regex!2305 Regex!2305 List!9535) Unit!14189)

(assert (=> b!889828 (= lt!332261 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!4 lt!332259 lt!332254 s!10566))))

(declare-fun b!889829 () Bool)

(declare-fun e!583101 () Bool)

(declare-fun tp_is_empty!4253 () Bool)

(declare-fun tp!280230 () Bool)

(assert (=> b!889829 (= e!583101 (and tp_is_empty!4253 tp!280230))))

(declare-fun b!889830 () Bool)

(assert (=> b!889830 (= e!583106 tp_is_empty!4253)))

(declare-fun b!889831 () Bool)

(declare-fun res!404651 () Bool)

(assert (=> b!889831 (=> res!404651 e!583107)))

(assert (=> b!889831 (= res!404651 (not (validRegex!774 lt!332254)))))

(declare-fun res!404647 () Bool)

(assert (=> start!80294 (=> (not res!404647) (not e!583103))))

(assert (=> start!80294 (= res!404647 (validRegex!774 r!15766))))

(assert (=> start!80294 e!583103))

(assert (=> start!80294 e!583106))

(assert (=> start!80294 e!583101))

(declare-fun b!889832 () Bool)

(assert (=> b!889832 (= e!583102 e!583107)))

(declare-fun res!404652 () Bool)

(assert (=> b!889832 (=> res!404652 e!583107)))

(assert (=> b!889832 (= res!404652 (not (validRegex!774 lt!332259)))))

(assert (=> b!889832 (= lt!332254 (removeUselessConcat!42 (regTwo!5123 r!15766)))))

(assert (=> b!889832 (matchR!843 lt!332259 s!10566)))

(assert (=> b!889832 (= lt!332259 (removeUselessConcat!42 (regOne!5123 r!15766)))))

(declare-fun lt!332257 () Unit!14189)

(declare-fun lemmaRemoveUselessConcatSound!36 (Regex!2305 List!9535) Unit!14189)

(assert (=> b!889832 (= lt!332257 (lemmaRemoveUselessConcatSound!36 (regOne!5123 r!15766) s!10566))))

(declare-fun b!889833 () Bool)

(declare-fun tp!280232 () Bool)

(declare-fun tp!280228 () Bool)

(assert (=> b!889833 (= e!583106 (and tp!280232 tp!280228))))

(assert (= (and start!80294 res!404647) b!889827))

(assert (= (and b!889827 (not res!404649)) b!889826))

(assert (= (and b!889826 (not res!404648)) b!889825))

(assert (= (and b!889826 (not res!404650)) b!889832))

(assert (= (and b!889832 (not res!404652)) b!889831))

(assert (= (and b!889831 (not res!404651)) b!889828))

(assert (= (and start!80294 ((_ is ElementMatch!2305) r!15766)) b!889830))

(assert (= (and start!80294 ((_ is Concat!4138) r!15766)) b!889833))

(assert (= (and start!80294 ((_ is Star!2305) r!15766)) b!889824))

(assert (= (and start!80294 ((_ is Union!2305) r!15766)) b!889823))

(assert (= (and start!80294 ((_ is Cons!9519) s!10566)) b!889829))

(declare-fun m!1133535 () Bool)

(assert (=> b!889826 m!1133535))

(declare-fun m!1133537 () Bool)

(assert (=> b!889826 m!1133537))

(declare-fun m!1133539 () Bool)

(assert (=> b!889832 m!1133539))

(declare-fun m!1133541 () Bool)

(assert (=> b!889832 m!1133541))

(declare-fun m!1133543 () Bool)

(assert (=> b!889832 m!1133543))

(declare-fun m!1133545 () Bool)

(assert (=> b!889832 m!1133545))

(declare-fun m!1133547 () Bool)

(assert (=> b!889832 m!1133547))

(declare-fun m!1133549 () Bool)

(assert (=> b!889828 m!1133549))

(assert (=> b!889828 m!1133549))

(declare-fun m!1133551 () Bool)

(assert (=> b!889828 m!1133551))

(declare-fun m!1133553 () Bool)

(assert (=> b!889828 m!1133553))

(declare-fun m!1133555 () Bool)

(assert (=> b!889828 m!1133555))

(declare-fun m!1133557 () Bool)

(assert (=> start!80294 m!1133557))

(declare-fun m!1133559 () Bool)

(assert (=> b!889825 m!1133559))

(declare-fun m!1133561 () Bool)

(assert (=> b!889831 m!1133561))

(declare-fun m!1133563 () Bool)

(assert (=> b!889827 m!1133563))

(declare-fun m!1133565 () Bool)

(assert (=> b!889827 m!1133565))

(declare-fun m!1133567 () Bool)

(assert (=> b!889827 m!1133567))

(check-sat (not b!889824) tp_is_empty!4253 (not b!889831) (not b!889833) (not b!889829) (not b!889828) (not b!889825) (not b!889823) (not start!80294) (not b!889826) (not b!889832) (not b!889827))
(check-sat)
(get-model)

(declare-fun b!889885 () Bool)

(declare-fun e!583142 () Bool)

(declare-fun call!52437 () Bool)

(assert (=> b!889885 (= e!583142 call!52437)))

(declare-fun b!889886 () Bool)

(declare-fun res!404670 () Bool)

(declare-fun e!583141 () Bool)

(assert (=> b!889886 (=> res!404670 e!583141)))

(assert (=> b!889886 (= res!404670 (not ((_ is Concat!4138) (removeUselessConcat!42 r!15766))))))

(declare-fun e!583146 () Bool)

(assert (=> b!889886 (= e!583146 e!583141)))

(declare-fun b!889887 () Bool)

(declare-fun e!583143 () Bool)

(assert (=> b!889887 (= e!583141 e!583143)))

(declare-fun res!404669 () Bool)

(assert (=> b!889887 (=> (not res!404669) (not e!583143))))

(declare-fun call!52436 () Bool)

(assert (=> b!889887 (= res!404669 call!52436)))

(declare-fun d!277250 () Bool)

(declare-fun res!404667 () Bool)

(declare-fun e!583144 () Bool)

(assert (=> d!277250 (=> res!404667 e!583144)))

(assert (=> d!277250 (= res!404667 ((_ is ElementMatch!2305) (removeUselessConcat!42 r!15766)))))

(assert (=> d!277250 (= (validRegex!774 (removeUselessConcat!42 r!15766)) e!583144)))

(declare-fun b!889888 () Bool)

(declare-fun e!583140 () Bool)

(declare-fun e!583145 () Bool)

(assert (=> b!889888 (= e!583140 e!583145)))

(declare-fun res!404668 () Bool)

(declare-fun nullable!599 (Regex!2305) Bool)

(assert (=> b!889888 (= res!404668 (not (nullable!599 (reg!2634 (removeUselessConcat!42 r!15766)))))))

(assert (=> b!889888 (=> (not res!404668) (not e!583145))))

(declare-fun bm!52430 () Bool)

(declare-fun c!143960 () Bool)

(declare-fun c!143961 () Bool)

(declare-fun call!52435 () Bool)

(assert (=> bm!52430 (= call!52435 (validRegex!774 (ite c!143961 (reg!2634 (removeUselessConcat!42 r!15766)) (ite c!143960 (regTwo!5123 (removeUselessConcat!42 r!15766)) (regTwo!5122 (removeUselessConcat!42 r!15766))))))))

(declare-fun bm!52431 () Bool)

(assert (=> bm!52431 (= call!52436 (validRegex!774 (ite c!143960 (regOne!5123 (removeUselessConcat!42 r!15766)) (regOne!5122 (removeUselessConcat!42 r!15766)))))))

(declare-fun b!889889 () Bool)

(assert (=> b!889889 (= e!583143 call!52437)))

(declare-fun bm!52432 () Bool)

(assert (=> bm!52432 (= call!52437 call!52435)))

(declare-fun b!889890 () Bool)

(assert (=> b!889890 (= e!583140 e!583146)))

(assert (=> b!889890 (= c!143960 ((_ is Union!2305) (removeUselessConcat!42 r!15766)))))

(declare-fun b!889891 () Bool)

(assert (=> b!889891 (= e!583144 e!583140)))

(assert (=> b!889891 (= c!143961 ((_ is Star!2305) (removeUselessConcat!42 r!15766)))))

(declare-fun b!889892 () Bool)

(assert (=> b!889892 (= e!583145 call!52435)))

(declare-fun b!889893 () Bool)

(declare-fun res!404666 () Bool)

(assert (=> b!889893 (=> (not res!404666) (not e!583142))))

(assert (=> b!889893 (= res!404666 call!52436)))

(assert (=> b!889893 (= e!583146 e!583142)))

(assert (= (and d!277250 (not res!404667)) b!889891))

(assert (= (and b!889891 c!143961) b!889888))

(assert (= (and b!889891 (not c!143961)) b!889890))

(assert (= (and b!889888 res!404668) b!889892))

(assert (= (and b!889890 c!143960) b!889893))

(assert (= (and b!889890 (not c!143960)) b!889886))

(assert (= (and b!889893 res!404666) b!889885))

(assert (= (and b!889886 (not res!404670)) b!889887))

(assert (= (and b!889887 res!404669) b!889889))

(assert (= (or b!889885 b!889889) bm!52432))

(assert (= (or b!889893 b!889887) bm!52431))

(assert (= (or b!889892 bm!52432) bm!52430))

(declare-fun m!1133581 () Bool)

(assert (=> b!889888 m!1133581))

(declare-fun m!1133583 () Bool)

(assert (=> bm!52430 m!1133583))

(declare-fun m!1133585 () Bool)

(assert (=> bm!52431 m!1133585))

(assert (=> b!889828 d!277250))

(declare-fun b!889954 () Bool)

(declare-fun e!583191 () Bool)

(declare-fun lt!332271 () Regex!2305)

(assert (=> b!889954 (= e!583191 (= (nullable!599 lt!332271) (nullable!599 r!15766)))))

(declare-fun call!52466 () Regex!2305)

(declare-fun c!143985 () Bool)

(declare-fun bm!52457 () Bool)

(declare-fun c!143983 () Bool)

(assert (=> bm!52457 (= call!52466 (removeUselessConcat!42 (ite c!143983 (regTwo!5122 r!15766) (ite c!143985 (regOne!5122 r!15766) (regOne!5123 r!15766)))))))

(declare-fun b!889955 () Bool)

(declare-fun c!143986 () Bool)

(assert (=> b!889955 (= c!143986 ((_ is Star!2305) r!15766))))

(declare-fun e!583186 () Regex!2305)

(declare-fun e!583189 () Regex!2305)

(assert (=> b!889955 (= e!583186 e!583189)))

(declare-fun bm!52458 () Bool)

(declare-fun call!52462 () Regex!2305)

(assert (=> bm!52458 (= call!52462 call!52466)))

(declare-fun b!889956 () Bool)

(declare-fun e!583188 () Regex!2305)

(declare-fun call!52463 () Regex!2305)

(assert (=> b!889956 (= e!583188 (Concat!4138 call!52462 call!52463))))

(declare-fun b!889957 () Bool)

(assert (=> b!889957 (= e!583189 r!15766)))

(declare-fun bm!52459 () Bool)

(declare-fun call!52464 () Regex!2305)

(assert (=> bm!52459 (= call!52463 call!52464)))

(declare-fun d!277254 () Bool)

(assert (=> d!277254 e!583191))

(declare-fun res!404689 () Bool)

(assert (=> d!277254 (=> (not res!404689) (not e!583191))))

(assert (=> d!277254 (= res!404689 (validRegex!774 lt!332271))))

(declare-fun e!583190 () Regex!2305)

(assert (=> d!277254 (= lt!332271 e!583190)))

(assert (=> d!277254 (= c!143983 (and ((_ is Concat!4138) r!15766) ((_ is EmptyExpr!2305) (regOne!5122 r!15766))))))

(assert (=> d!277254 (validRegex!774 r!15766)))

(assert (=> d!277254 (= (removeUselessConcat!42 r!15766) lt!332271)))

(declare-fun b!889958 () Bool)

(assert (=> b!889958 (= c!143985 ((_ is Concat!4138) r!15766))))

(declare-fun e!583187 () Regex!2305)

(assert (=> b!889958 (= e!583187 e!583188)))

(declare-fun b!889959 () Bool)

(assert (=> b!889959 (= e!583190 e!583187)))

(declare-fun c!143987 () Bool)

(assert (=> b!889959 (= c!143987 (and ((_ is Concat!4138) r!15766) ((_ is EmptyExpr!2305) (regTwo!5122 r!15766))))))

(declare-fun bm!52460 () Bool)

(declare-fun call!52465 () Regex!2305)

(assert (=> bm!52460 (= call!52465 call!52463)))

(declare-fun b!889960 () Bool)

(assert (=> b!889960 (= e!583187 call!52464)))

(declare-fun b!889961 () Bool)

(assert (=> b!889961 (= e!583188 e!583186)))

(declare-fun c!143984 () Bool)

(assert (=> b!889961 (= c!143984 ((_ is Union!2305) r!15766))))

(declare-fun bm!52461 () Bool)

(assert (=> bm!52461 (= call!52464 (removeUselessConcat!42 (ite c!143987 (regOne!5122 r!15766) (ite c!143985 (regTwo!5122 r!15766) (ite c!143984 (regTwo!5123 r!15766) (reg!2634 r!15766))))))))

(declare-fun b!889962 () Bool)

(assert (=> b!889962 (= e!583186 (Union!2305 call!52462 call!52465))))

(declare-fun b!889963 () Bool)

(assert (=> b!889963 (= e!583189 (Star!2305 call!52465))))

(declare-fun b!889964 () Bool)

(assert (=> b!889964 (= e!583190 call!52466)))

(assert (= (and d!277254 c!143983) b!889964))

(assert (= (and d!277254 (not c!143983)) b!889959))

(assert (= (and b!889959 c!143987) b!889960))

(assert (= (and b!889959 (not c!143987)) b!889958))

(assert (= (and b!889958 c!143985) b!889956))

(assert (= (and b!889958 (not c!143985)) b!889961))

(assert (= (and b!889961 c!143984) b!889962))

(assert (= (and b!889961 (not c!143984)) b!889955))

(assert (= (and b!889955 c!143986) b!889963))

(assert (= (and b!889955 (not c!143986)) b!889957))

(assert (= (or b!889962 b!889963) bm!52460))

(assert (= (or b!889956 bm!52460) bm!52459))

(assert (= (or b!889956 b!889962) bm!52458))

(assert (= (or b!889960 bm!52459) bm!52461))

(assert (= (or b!889964 bm!52458) bm!52457))

(assert (= (and d!277254 res!404689) b!889954))

(declare-fun m!1133609 () Bool)

(assert (=> b!889954 m!1133609))

(declare-fun m!1133611 () Bool)

(assert (=> b!889954 m!1133611))

(declare-fun m!1133613 () Bool)

(assert (=> bm!52457 m!1133613))

(declare-fun m!1133615 () Bool)

(assert (=> d!277254 m!1133615))

(assert (=> d!277254 m!1133557))

(declare-fun m!1133617 () Bool)

(assert (=> bm!52461 m!1133617))

(assert (=> b!889828 d!277254))

(declare-fun b!890080 () Bool)

(declare-fun e!583258 () Bool)

(declare-fun lt!332281 () Bool)

(declare-fun call!52484 () Bool)

(assert (=> b!890080 (= e!583258 (= lt!332281 call!52484))))

(declare-fun b!890081 () Bool)

(declare-fun res!404755 () Bool)

(declare-fun e!583256 () Bool)

(assert (=> b!890081 (=> (not res!404755) (not e!583256))))

(declare-fun isEmpty!5721 (List!9535) Bool)

(declare-fun tail!1126 (List!9535) List!9535)

(assert (=> b!890081 (= res!404755 (isEmpty!5721 (tail!1126 s!10566)))))

(declare-fun b!890082 () Bool)

(declare-fun e!583261 () Bool)

(declare-fun e!583260 () Bool)

(assert (=> b!890082 (= e!583261 e!583260)))

(declare-fun res!404752 () Bool)

(assert (=> b!890082 (=> (not res!404752) (not e!583260))))

(assert (=> b!890082 (= res!404752 (not lt!332281))))

(declare-fun b!890083 () Bool)

(declare-fun res!404753 () Bool)

(assert (=> b!890083 (=> (not res!404753) (not e!583256))))

(assert (=> b!890083 (= res!404753 (not call!52484))))

(declare-fun b!890084 () Bool)

(declare-fun e!583259 () Bool)

(declare-fun head!1564 (List!9535) C!5180)

(assert (=> b!890084 (= e!583259 (not (= (head!1564 s!10566) (c!143940 (Union!2305 lt!332259 lt!332254)))))))

(declare-fun b!890085 () Bool)

(declare-fun e!583262 () Bool)

(assert (=> b!890085 (= e!583262 (not lt!332281))))

(declare-fun b!890086 () Bool)

(declare-fun res!404757 () Bool)

(assert (=> b!890086 (=> res!404757 e!583261)))

(assert (=> b!890086 (= res!404757 e!583256)))

(declare-fun res!404751 () Bool)

(assert (=> b!890086 (=> (not res!404751) (not e!583256))))

(assert (=> b!890086 (= res!404751 lt!332281)))

(declare-fun b!890087 () Bool)

(declare-fun e!583257 () Bool)

(declare-fun derivativeStep!411 (Regex!2305 C!5180) Regex!2305)

(assert (=> b!890087 (= e!583257 (matchR!843 (derivativeStep!411 (Union!2305 lt!332259 lt!332254) (head!1564 s!10566)) (tail!1126 s!10566)))))

(declare-fun b!890088 () Bool)

(declare-fun res!404756 () Bool)

(assert (=> b!890088 (=> res!404756 e!583259)))

(assert (=> b!890088 (= res!404756 (not (isEmpty!5721 (tail!1126 s!10566))))))

(declare-fun d!277262 () Bool)

(assert (=> d!277262 e!583258))

(declare-fun c!144015 () Bool)

(assert (=> d!277262 (= c!144015 ((_ is EmptyExpr!2305) (Union!2305 lt!332259 lt!332254)))))

(assert (=> d!277262 (= lt!332281 e!583257)))

(declare-fun c!144017 () Bool)

(assert (=> d!277262 (= c!144017 (isEmpty!5721 s!10566))))

(assert (=> d!277262 (validRegex!774 (Union!2305 lt!332259 lt!332254))))

(assert (=> d!277262 (= (matchR!843 (Union!2305 lt!332259 lt!332254) s!10566) lt!332281)))

(declare-fun b!890089 () Bool)

(assert (=> b!890089 (= e!583258 e!583262)))

(declare-fun c!144016 () Bool)

(assert (=> b!890089 (= c!144016 ((_ is EmptyLang!2305) (Union!2305 lt!332259 lt!332254)))))

(declare-fun b!890090 () Bool)

(declare-fun res!404758 () Bool)

(assert (=> b!890090 (=> res!404758 e!583261)))

(assert (=> b!890090 (= res!404758 (not ((_ is ElementMatch!2305) (Union!2305 lt!332259 lt!332254))))))

(assert (=> b!890090 (= e!583262 e!583261)))

(declare-fun b!890091 () Bool)

(assert (=> b!890091 (= e!583256 (= (head!1564 s!10566) (c!143940 (Union!2305 lt!332259 lt!332254))))))

(declare-fun bm!52479 () Bool)

(assert (=> bm!52479 (= call!52484 (isEmpty!5721 s!10566))))

(declare-fun b!890092 () Bool)

(assert (=> b!890092 (= e!583257 (nullable!599 (Union!2305 lt!332259 lt!332254)))))

(declare-fun b!890093 () Bool)

(assert (=> b!890093 (= e!583260 e!583259)))

(declare-fun res!404754 () Bool)

(assert (=> b!890093 (=> res!404754 e!583259)))

(assert (=> b!890093 (= res!404754 call!52484)))

(assert (= (and d!277262 c!144017) b!890092))

(assert (= (and d!277262 (not c!144017)) b!890087))

(assert (= (and d!277262 c!144015) b!890080))

(assert (= (and d!277262 (not c!144015)) b!890089))

(assert (= (and b!890089 c!144016) b!890085))

(assert (= (and b!890089 (not c!144016)) b!890090))

(assert (= (and b!890090 (not res!404758)) b!890086))

(assert (= (and b!890086 res!404751) b!890083))

(assert (= (and b!890083 res!404753) b!890081))

(assert (= (and b!890081 res!404755) b!890091))

(assert (= (and b!890086 (not res!404757)) b!890082))

(assert (= (and b!890082 res!404752) b!890093))

(assert (= (and b!890093 (not res!404754)) b!890088))

(assert (= (and b!890088 (not res!404756)) b!890084))

(assert (= (or b!890080 b!890093 b!890083) bm!52479))

(declare-fun m!1133665 () Bool)

(assert (=> b!890084 m!1133665))

(declare-fun m!1133667 () Bool)

(assert (=> b!890088 m!1133667))

(assert (=> b!890088 m!1133667))

(declare-fun m!1133669 () Bool)

(assert (=> b!890088 m!1133669))

(assert (=> b!890091 m!1133665))

(declare-fun m!1133671 () Bool)

(assert (=> bm!52479 m!1133671))

(declare-fun m!1133673 () Bool)

(assert (=> b!890092 m!1133673))

(assert (=> b!890081 m!1133667))

(assert (=> b!890081 m!1133667))

(assert (=> b!890081 m!1133669))

(assert (=> d!277262 m!1133671))

(declare-fun m!1133675 () Bool)

(assert (=> d!277262 m!1133675))

(assert (=> b!890087 m!1133665))

(assert (=> b!890087 m!1133665))

(declare-fun m!1133677 () Bool)

(assert (=> b!890087 m!1133677))

(assert (=> b!890087 m!1133667))

(assert (=> b!890087 m!1133677))

(assert (=> b!890087 m!1133667))

(declare-fun m!1133679 () Bool)

(assert (=> b!890087 m!1133679))

(assert (=> b!889828 d!277262))

(declare-fun d!277276 () Bool)

(assert (=> d!277276 (matchR!843 (Union!2305 lt!332259 lt!332254) s!10566)))

(declare-fun lt!332290 () Unit!14189)

(declare-fun choose!5315 (Regex!2305 Regex!2305 List!9535) Unit!14189)

(assert (=> d!277276 (= lt!332290 (choose!5315 lt!332259 lt!332254 s!10566))))

(declare-fun e!583286 () Bool)

(assert (=> d!277276 e!583286))

(declare-fun res!404784 () Bool)

(assert (=> d!277276 (=> (not res!404784) (not e!583286))))

(assert (=> d!277276 (= res!404784 (validRegex!774 lt!332259))))

(assert (=> d!277276 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!4 lt!332259 lt!332254 s!10566) lt!332290)))

(declare-fun b!890131 () Bool)

(assert (=> b!890131 (= e!583286 (validRegex!774 lt!332254))))

(assert (= (and d!277276 res!404784) b!890131))

(assert (=> d!277276 m!1133553))

(declare-fun m!1133687 () Bool)

(assert (=> d!277276 m!1133687))

(assert (=> d!277276 m!1133545))

(assert (=> b!890131 m!1133561))

(assert (=> b!889828 d!277276))

(declare-fun b!890270 () Bool)

(assert (=> b!890270 true))

(assert (=> b!890270 true))

(declare-fun bs!234820 () Bool)

(declare-fun b!890269 () Bool)

(assert (= bs!234820 (and b!890269 b!890270)))

(declare-fun lambda!27538 () Int)

(declare-fun lambda!27537 () Int)

(assert (=> bs!234820 (not (= lambda!27538 lambda!27537))))

(assert (=> b!890269 true))

(assert (=> b!890269 true))

(declare-fun call!52501 () Bool)

(declare-fun bm!52496 () Bool)

(declare-fun c!144049 () Bool)

(declare-fun Exists!91 (Int) Bool)

(assert (=> bm!52496 (= call!52501 (Exists!91 (ite c!144049 lambda!27537 lambda!27538)))))

(declare-fun d!277282 () Bool)

(declare-fun c!144051 () Bool)

(assert (=> d!277282 (= c!144051 ((_ is EmptyExpr!2305) r!15766))))

(declare-fun e!583359 () Bool)

(assert (=> d!277282 (= (matchRSpec!106 r!15766 s!10566) e!583359)))

(declare-fun e!583358 () Bool)

(assert (=> b!890269 (= e!583358 call!52501)))

(declare-fun bm!52497 () Bool)

(declare-fun call!52502 () Bool)

(assert (=> bm!52497 (= call!52502 (isEmpty!5721 s!10566))))

(declare-fun e!583356 () Bool)

(assert (=> b!890270 (= e!583356 call!52501)))

(declare-fun b!890271 () Bool)

(declare-fun e!583354 () Bool)

(declare-fun e!583357 () Bool)

(assert (=> b!890271 (= e!583354 e!583357)))

(declare-fun res!404834 () Bool)

(assert (=> b!890271 (= res!404834 (matchRSpec!106 (regOne!5123 r!15766) s!10566))))

(assert (=> b!890271 (=> res!404834 e!583357)))

(declare-fun b!890272 () Bool)

(declare-fun c!144052 () Bool)

(assert (=> b!890272 (= c!144052 ((_ is ElementMatch!2305) r!15766))))

(declare-fun e!583360 () Bool)

(declare-fun e!583355 () Bool)

(assert (=> b!890272 (= e!583360 e!583355)))

(declare-fun b!890273 () Bool)

(assert (=> b!890273 (= e!583355 (= s!10566 (Cons!9519 (c!143940 r!15766) Nil!9519)))))

(declare-fun b!890274 () Bool)

(declare-fun c!144050 () Bool)

(assert (=> b!890274 (= c!144050 ((_ is Union!2305) r!15766))))

(assert (=> b!890274 (= e!583355 e!583354)))

(declare-fun b!890275 () Bool)

(assert (=> b!890275 (= e!583357 (matchRSpec!106 (regTwo!5123 r!15766) s!10566))))

(declare-fun b!890276 () Bool)

(assert (=> b!890276 (= e!583359 call!52502)))

(declare-fun b!890277 () Bool)

(assert (=> b!890277 (= e!583359 e!583360)))

(declare-fun res!404835 () Bool)

(assert (=> b!890277 (= res!404835 (not ((_ is EmptyLang!2305) r!15766)))))

(assert (=> b!890277 (=> (not res!404835) (not e!583360))))

(declare-fun b!890278 () Bool)

(assert (=> b!890278 (= e!583354 e!583358)))

(assert (=> b!890278 (= c!144049 ((_ is Star!2305) r!15766))))

(declare-fun b!890279 () Bool)

(declare-fun res!404833 () Bool)

(assert (=> b!890279 (=> res!404833 e!583356)))

(assert (=> b!890279 (= res!404833 call!52502)))

(assert (=> b!890279 (= e!583358 e!583356)))

(assert (= (and d!277282 c!144051) b!890276))

(assert (= (and d!277282 (not c!144051)) b!890277))

(assert (= (and b!890277 res!404835) b!890272))

(assert (= (and b!890272 c!144052) b!890273))

(assert (= (and b!890272 (not c!144052)) b!890274))

(assert (= (and b!890274 c!144050) b!890271))

(assert (= (and b!890274 (not c!144050)) b!890278))

(assert (= (and b!890271 (not res!404834)) b!890275))

(assert (= (and b!890278 c!144049) b!890279))

(assert (= (and b!890278 (not c!144049)) b!890269))

(assert (= (and b!890279 (not res!404833)) b!890270))

(assert (= (or b!890270 b!890269) bm!52496))

(assert (= (or b!890276 b!890279) bm!52497))

(declare-fun m!1133711 () Bool)

(assert (=> bm!52496 m!1133711))

(assert (=> bm!52497 m!1133671))

(declare-fun m!1133713 () Bool)

(assert (=> b!890271 m!1133713))

(declare-fun m!1133715 () Bool)

(assert (=> b!890275 m!1133715))

(assert (=> b!889827 d!277282))

(declare-fun b!890284 () Bool)

(declare-fun e!583363 () Bool)

(declare-fun lt!332295 () Bool)

(declare-fun call!52503 () Bool)

(assert (=> b!890284 (= e!583363 (= lt!332295 call!52503))))

(declare-fun b!890285 () Bool)

(declare-fun res!404840 () Bool)

(declare-fun e!583361 () Bool)

(assert (=> b!890285 (=> (not res!404840) (not e!583361))))

(assert (=> b!890285 (= res!404840 (isEmpty!5721 (tail!1126 s!10566)))))

(declare-fun b!890286 () Bool)

(declare-fun e!583366 () Bool)

(declare-fun e!583365 () Bool)

(assert (=> b!890286 (= e!583366 e!583365)))

(declare-fun res!404837 () Bool)

(assert (=> b!890286 (=> (not res!404837) (not e!583365))))

(assert (=> b!890286 (= res!404837 (not lt!332295))))

(declare-fun b!890287 () Bool)

(declare-fun res!404838 () Bool)

(assert (=> b!890287 (=> (not res!404838) (not e!583361))))

(assert (=> b!890287 (= res!404838 (not call!52503))))

(declare-fun b!890288 () Bool)

(declare-fun e!583364 () Bool)

(assert (=> b!890288 (= e!583364 (not (= (head!1564 s!10566) (c!143940 r!15766))))))

(declare-fun b!890289 () Bool)

(declare-fun e!583367 () Bool)

(assert (=> b!890289 (= e!583367 (not lt!332295))))

(declare-fun b!890290 () Bool)

(declare-fun res!404842 () Bool)

(assert (=> b!890290 (=> res!404842 e!583366)))

(assert (=> b!890290 (= res!404842 e!583361)))

(declare-fun res!404836 () Bool)

(assert (=> b!890290 (=> (not res!404836) (not e!583361))))

(assert (=> b!890290 (= res!404836 lt!332295)))

(declare-fun b!890291 () Bool)

(declare-fun e!583362 () Bool)

(assert (=> b!890291 (= e!583362 (matchR!843 (derivativeStep!411 r!15766 (head!1564 s!10566)) (tail!1126 s!10566)))))

(declare-fun b!890292 () Bool)

(declare-fun res!404841 () Bool)

(assert (=> b!890292 (=> res!404841 e!583364)))

(assert (=> b!890292 (= res!404841 (not (isEmpty!5721 (tail!1126 s!10566))))))

(declare-fun d!277292 () Bool)

(assert (=> d!277292 e!583363))

(declare-fun c!144053 () Bool)

(assert (=> d!277292 (= c!144053 ((_ is EmptyExpr!2305) r!15766))))

(assert (=> d!277292 (= lt!332295 e!583362)))

(declare-fun c!144055 () Bool)

(assert (=> d!277292 (= c!144055 (isEmpty!5721 s!10566))))

(assert (=> d!277292 (validRegex!774 r!15766)))

(assert (=> d!277292 (= (matchR!843 r!15766 s!10566) lt!332295)))

(declare-fun b!890293 () Bool)

(assert (=> b!890293 (= e!583363 e!583367)))

(declare-fun c!144054 () Bool)

(assert (=> b!890293 (= c!144054 ((_ is EmptyLang!2305) r!15766))))

(declare-fun b!890294 () Bool)

(declare-fun res!404843 () Bool)

(assert (=> b!890294 (=> res!404843 e!583366)))

(assert (=> b!890294 (= res!404843 (not ((_ is ElementMatch!2305) r!15766)))))

(assert (=> b!890294 (= e!583367 e!583366)))

(declare-fun b!890295 () Bool)

(assert (=> b!890295 (= e!583361 (= (head!1564 s!10566) (c!143940 r!15766)))))

(declare-fun bm!52498 () Bool)

(assert (=> bm!52498 (= call!52503 (isEmpty!5721 s!10566))))

(declare-fun b!890296 () Bool)

(assert (=> b!890296 (= e!583362 (nullable!599 r!15766))))

(declare-fun b!890297 () Bool)

(assert (=> b!890297 (= e!583365 e!583364)))

(declare-fun res!404839 () Bool)

(assert (=> b!890297 (=> res!404839 e!583364)))

(assert (=> b!890297 (= res!404839 call!52503)))

(assert (= (and d!277292 c!144055) b!890296))

(assert (= (and d!277292 (not c!144055)) b!890291))

(assert (= (and d!277292 c!144053) b!890284))

(assert (= (and d!277292 (not c!144053)) b!890293))

(assert (= (and b!890293 c!144054) b!890289))

(assert (= (and b!890293 (not c!144054)) b!890294))

(assert (= (and b!890294 (not res!404843)) b!890290))

(assert (= (and b!890290 res!404836) b!890287))

(assert (= (and b!890287 res!404838) b!890285))

(assert (= (and b!890285 res!404840) b!890295))

(assert (= (and b!890290 (not res!404842)) b!890286))

(assert (= (and b!890286 res!404837) b!890297))

(assert (= (and b!890297 (not res!404839)) b!890292))

(assert (= (and b!890292 (not res!404841)) b!890288))

(assert (= (or b!890284 b!890297 b!890287) bm!52498))

(assert (=> b!890288 m!1133665))

(assert (=> b!890292 m!1133667))

(assert (=> b!890292 m!1133667))

(assert (=> b!890292 m!1133669))

(assert (=> b!890295 m!1133665))

(assert (=> bm!52498 m!1133671))

(assert (=> b!890296 m!1133611))

(assert (=> b!890285 m!1133667))

(assert (=> b!890285 m!1133667))

(assert (=> b!890285 m!1133669))

(assert (=> d!277292 m!1133671))

(assert (=> d!277292 m!1133557))

(assert (=> b!890291 m!1133665))

(assert (=> b!890291 m!1133665))

(declare-fun m!1133717 () Bool)

(assert (=> b!890291 m!1133717))

(assert (=> b!890291 m!1133667))

(assert (=> b!890291 m!1133717))

(assert (=> b!890291 m!1133667))

(declare-fun m!1133719 () Bool)

(assert (=> b!890291 m!1133719))

(assert (=> b!889827 d!277292))

(declare-fun d!277294 () Bool)

(assert (=> d!277294 (= (matchR!843 r!15766 s!10566) (matchRSpec!106 r!15766 s!10566))))

(declare-fun lt!332298 () Unit!14189)

(declare-fun choose!5316 (Regex!2305 List!9535) Unit!14189)

(assert (=> d!277294 (= lt!332298 (choose!5316 r!15766 s!10566))))

(assert (=> d!277294 (validRegex!774 r!15766)))

(assert (=> d!277294 (= (mainMatchTheorem!106 r!15766 s!10566) lt!332298)))

(declare-fun bs!234821 () Bool)

(assert (= bs!234821 d!277294))

(assert (=> bs!234821 m!1133565))

(assert (=> bs!234821 m!1133563))

(declare-fun m!1133721 () Bool)

(assert (=> bs!234821 m!1133721))

(assert (=> bs!234821 m!1133557))

(assert (=> b!889827 d!277294))

(declare-fun b!890298 () Bool)

(declare-fun e!583370 () Bool)

(declare-fun call!52506 () Bool)

(assert (=> b!890298 (= e!583370 call!52506)))

(declare-fun b!890299 () Bool)

(declare-fun res!404848 () Bool)

(declare-fun e!583369 () Bool)

(assert (=> b!890299 (=> res!404848 e!583369)))

(assert (=> b!890299 (= res!404848 (not ((_ is Concat!4138) lt!332259)))))

(declare-fun e!583374 () Bool)

(assert (=> b!890299 (= e!583374 e!583369)))

(declare-fun b!890300 () Bool)

(declare-fun e!583371 () Bool)

(assert (=> b!890300 (= e!583369 e!583371)))

(declare-fun res!404847 () Bool)

(assert (=> b!890300 (=> (not res!404847) (not e!583371))))

(declare-fun call!52505 () Bool)

(assert (=> b!890300 (= res!404847 call!52505)))

(declare-fun d!277296 () Bool)

(declare-fun res!404845 () Bool)

(declare-fun e!583372 () Bool)

(assert (=> d!277296 (=> res!404845 e!583372)))

(assert (=> d!277296 (= res!404845 ((_ is ElementMatch!2305) lt!332259))))

(assert (=> d!277296 (= (validRegex!774 lt!332259) e!583372)))

(declare-fun b!890301 () Bool)

(declare-fun e!583368 () Bool)

(declare-fun e!583373 () Bool)

(assert (=> b!890301 (= e!583368 e!583373)))

(declare-fun res!404846 () Bool)

(assert (=> b!890301 (= res!404846 (not (nullable!599 (reg!2634 lt!332259))))))

(assert (=> b!890301 (=> (not res!404846) (not e!583373))))

(declare-fun c!144056 () Bool)

(declare-fun c!144057 () Bool)

(declare-fun call!52504 () Bool)

(declare-fun bm!52499 () Bool)

(assert (=> bm!52499 (= call!52504 (validRegex!774 (ite c!144057 (reg!2634 lt!332259) (ite c!144056 (regTwo!5123 lt!332259) (regTwo!5122 lt!332259)))))))

(declare-fun bm!52500 () Bool)

(assert (=> bm!52500 (= call!52505 (validRegex!774 (ite c!144056 (regOne!5123 lt!332259) (regOne!5122 lt!332259))))))

(declare-fun b!890302 () Bool)

(assert (=> b!890302 (= e!583371 call!52506)))

(declare-fun bm!52501 () Bool)

(assert (=> bm!52501 (= call!52506 call!52504)))

(declare-fun b!890303 () Bool)

(assert (=> b!890303 (= e!583368 e!583374)))

(assert (=> b!890303 (= c!144056 ((_ is Union!2305) lt!332259))))

(declare-fun b!890304 () Bool)

(assert (=> b!890304 (= e!583372 e!583368)))

(assert (=> b!890304 (= c!144057 ((_ is Star!2305) lt!332259))))

(declare-fun b!890305 () Bool)

(assert (=> b!890305 (= e!583373 call!52504)))

(declare-fun b!890306 () Bool)

(declare-fun res!404844 () Bool)

(assert (=> b!890306 (=> (not res!404844) (not e!583370))))

(assert (=> b!890306 (= res!404844 call!52505)))

(assert (=> b!890306 (= e!583374 e!583370)))

(assert (= (and d!277296 (not res!404845)) b!890304))

(assert (= (and b!890304 c!144057) b!890301))

(assert (= (and b!890304 (not c!144057)) b!890303))

(assert (= (and b!890301 res!404846) b!890305))

(assert (= (and b!890303 c!144056) b!890306))

(assert (= (and b!890303 (not c!144056)) b!890299))

(assert (= (and b!890306 res!404844) b!890298))

(assert (= (and b!890299 (not res!404848)) b!890300))

(assert (= (and b!890300 res!404847) b!890302))

(assert (= (or b!890298 b!890302) bm!52501))

(assert (= (or b!890306 b!890300) bm!52500))

(assert (= (or b!890305 bm!52501) bm!52499))

(declare-fun m!1133723 () Bool)

(assert (=> b!890301 m!1133723))

(declare-fun m!1133725 () Bool)

(assert (=> bm!52499 m!1133725))

(declare-fun m!1133727 () Bool)

(assert (=> bm!52500 m!1133727))

(assert (=> b!889832 d!277296))

(declare-fun b!890307 () Bool)

(declare-fun e!583380 () Bool)

(declare-fun lt!332299 () Regex!2305)

(assert (=> b!890307 (= e!583380 (= (nullable!599 lt!332299) (nullable!599 (regTwo!5123 r!15766))))))

(declare-fun c!144060 () Bool)

(declare-fun call!52511 () Regex!2305)

(declare-fun c!144058 () Bool)

(declare-fun bm!52502 () Bool)

(assert (=> bm!52502 (= call!52511 (removeUselessConcat!42 (ite c!144058 (regTwo!5122 (regTwo!5123 r!15766)) (ite c!144060 (regOne!5122 (regTwo!5123 r!15766)) (regOne!5123 (regTwo!5123 r!15766))))))))

(declare-fun b!890308 () Bool)

(declare-fun c!144061 () Bool)

(assert (=> b!890308 (= c!144061 ((_ is Star!2305) (regTwo!5123 r!15766)))))

(declare-fun e!583375 () Regex!2305)

(declare-fun e!583378 () Regex!2305)

(assert (=> b!890308 (= e!583375 e!583378)))

(declare-fun bm!52503 () Bool)

(declare-fun call!52507 () Regex!2305)

(assert (=> bm!52503 (= call!52507 call!52511)))

(declare-fun b!890309 () Bool)

(declare-fun e!583377 () Regex!2305)

(declare-fun call!52508 () Regex!2305)

(assert (=> b!890309 (= e!583377 (Concat!4138 call!52507 call!52508))))

(declare-fun b!890310 () Bool)

(assert (=> b!890310 (= e!583378 (regTwo!5123 r!15766))))

(declare-fun bm!52504 () Bool)

(declare-fun call!52509 () Regex!2305)

(assert (=> bm!52504 (= call!52508 call!52509)))

(declare-fun d!277298 () Bool)

(assert (=> d!277298 e!583380))

(declare-fun res!404849 () Bool)

(assert (=> d!277298 (=> (not res!404849) (not e!583380))))

(assert (=> d!277298 (= res!404849 (validRegex!774 lt!332299))))

(declare-fun e!583379 () Regex!2305)

(assert (=> d!277298 (= lt!332299 e!583379)))

(assert (=> d!277298 (= c!144058 (and ((_ is Concat!4138) (regTwo!5123 r!15766)) ((_ is EmptyExpr!2305) (regOne!5122 (regTwo!5123 r!15766)))))))

(assert (=> d!277298 (validRegex!774 (regTwo!5123 r!15766))))

(assert (=> d!277298 (= (removeUselessConcat!42 (regTwo!5123 r!15766)) lt!332299)))

(declare-fun b!890311 () Bool)

(assert (=> b!890311 (= c!144060 ((_ is Concat!4138) (regTwo!5123 r!15766)))))

(declare-fun e!583376 () Regex!2305)

(assert (=> b!890311 (= e!583376 e!583377)))

(declare-fun b!890312 () Bool)

(assert (=> b!890312 (= e!583379 e!583376)))

(declare-fun c!144062 () Bool)

(assert (=> b!890312 (= c!144062 (and ((_ is Concat!4138) (regTwo!5123 r!15766)) ((_ is EmptyExpr!2305) (regTwo!5122 (regTwo!5123 r!15766)))))))

(declare-fun bm!52505 () Bool)

(declare-fun call!52510 () Regex!2305)

(assert (=> bm!52505 (= call!52510 call!52508)))

(declare-fun b!890313 () Bool)

(assert (=> b!890313 (= e!583376 call!52509)))

(declare-fun b!890314 () Bool)

(assert (=> b!890314 (= e!583377 e!583375)))

(declare-fun c!144059 () Bool)

(assert (=> b!890314 (= c!144059 ((_ is Union!2305) (regTwo!5123 r!15766)))))

(declare-fun bm!52506 () Bool)

(assert (=> bm!52506 (= call!52509 (removeUselessConcat!42 (ite c!144062 (regOne!5122 (regTwo!5123 r!15766)) (ite c!144060 (regTwo!5122 (regTwo!5123 r!15766)) (ite c!144059 (regTwo!5123 (regTwo!5123 r!15766)) (reg!2634 (regTwo!5123 r!15766)))))))))

(declare-fun b!890315 () Bool)

(assert (=> b!890315 (= e!583375 (Union!2305 call!52507 call!52510))))

(declare-fun b!890316 () Bool)

(assert (=> b!890316 (= e!583378 (Star!2305 call!52510))))

(declare-fun b!890317 () Bool)

(assert (=> b!890317 (= e!583379 call!52511)))

(assert (= (and d!277298 c!144058) b!890317))

(assert (= (and d!277298 (not c!144058)) b!890312))

(assert (= (and b!890312 c!144062) b!890313))

(assert (= (and b!890312 (not c!144062)) b!890311))

(assert (= (and b!890311 c!144060) b!890309))

(assert (= (and b!890311 (not c!144060)) b!890314))

(assert (= (and b!890314 c!144059) b!890315))

(assert (= (and b!890314 (not c!144059)) b!890308))

(assert (= (and b!890308 c!144061) b!890316))

(assert (= (and b!890308 (not c!144061)) b!890310))

(assert (= (or b!890315 b!890316) bm!52505))

(assert (= (or b!890309 bm!52505) bm!52504))

(assert (= (or b!890309 b!890315) bm!52503))

(assert (= (or b!890313 bm!52504) bm!52506))

(assert (= (or b!890317 bm!52503) bm!52502))

(assert (= (and d!277298 res!404849) b!890307))

(declare-fun m!1133729 () Bool)

(assert (=> b!890307 m!1133729))

(declare-fun m!1133731 () Bool)

(assert (=> b!890307 m!1133731))

(declare-fun m!1133733 () Bool)

(assert (=> bm!52502 m!1133733))

(declare-fun m!1133735 () Bool)

(assert (=> d!277298 m!1133735))

(declare-fun m!1133737 () Bool)

(assert (=> d!277298 m!1133737))

(declare-fun m!1133739 () Bool)

(assert (=> bm!52506 m!1133739))

(assert (=> b!889832 d!277298))

(declare-fun b!890318 () Bool)

(declare-fun e!583386 () Bool)

(declare-fun lt!332300 () Regex!2305)

(assert (=> b!890318 (= e!583386 (= (nullable!599 lt!332300) (nullable!599 (regOne!5123 r!15766))))))

(declare-fun c!144063 () Bool)

(declare-fun bm!52507 () Bool)

(declare-fun c!144065 () Bool)

(declare-fun call!52516 () Regex!2305)

(assert (=> bm!52507 (= call!52516 (removeUselessConcat!42 (ite c!144063 (regTwo!5122 (regOne!5123 r!15766)) (ite c!144065 (regOne!5122 (regOne!5123 r!15766)) (regOne!5123 (regOne!5123 r!15766))))))))

(declare-fun b!890319 () Bool)

(declare-fun c!144066 () Bool)

(assert (=> b!890319 (= c!144066 ((_ is Star!2305) (regOne!5123 r!15766)))))

(declare-fun e!583381 () Regex!2305)

(declare-fun e!583384 () Regex!2305)

(assert (=> b!890319 (= e!583381 e!583384)))

(declare-fun bm!52508 () Bool)

(declare-fun call!52512 () Regex!2305)

(assert (=> bm!52508 (= call!52512 call!52516)))

(declare-fun b!890320 () Bool)

(declare-fun e!583383 () Regex!2305)

(declare-fun call!52513 () Regex!2305)

(assert (=> b!890320 (= e!583383 (Concat!4138 call!52512 call!52513))))

(declare-fun b!890321 () Bool)

(assert (=> b!890321 (= e!583384 (regOne!5123 r!15766))))

(declare-fun bm!52509 () Bool)

(declare-fun call!52514 () Regex!2305)

(assert (=> bm!52509 (= call!52513 call!52514)))

(declare-fun d!277300 () Bool)

(assert (=> d!277300 e!583386))

(declare-fun res!404850 () Bool)

(assert (=> d!277300 (=> (not res!404850) (not e!583386))))

(assert (=> d!277300 (= res!404850 (validRegex!774 lt!332300))))

(declare-fun e!583385 () Regex!2305)

(assert (=> d!277300 (= lt!332300 e!583385)))

(assert (=> d!277300 (= c!144063 (and ((_ is Concat!4138) (regOne!5123 r!15766)) ((_ is EmptyExpr!2305) (regOne!5122 (regOne!5123 r!15766)))))))

(assert (=> d!277300 (validRegex!774 (regOne!5123 r!15766))))

(assert (=> d!277300 (= (removeUselessConcat!42 (regOne!5123 r!15766)) lt!332300)))

(declare-fun b!890322 () Bool)

(assert (=> b!890322 (= c!144065 ((_ is Concat!4138) (regOne!5123 r!15766)))))

(declare-fun e!583382 () Regex!2305)

(assert (=> b!890322 (= e!583382 e!583383)))

(declare-fun b!890323 () Bool)

(assert (=> b!890323 (= e!583385 e!583382)))

(declare-fun c!144067 () Bool)

(assert (=> b!890323 (= c!144067 (and ((_ is Concat!4138) (regOne!5123 r!15766)) ((_ is EmptyExpr!2305) (regTwo!5122 (regOne!5123 r!15766)))))))

(declare-fun bm!52510 () Bool)

(declare-fun call!52515 () Regex!2305)

(assert (=> bm!52510 (= call!52515 call!52513)))

(declare-fun b!890324 () Bool)

(assert (=> b!890324 (= e!583382 call!52514)))

(declare-fun b!890325 () Bool)

(assert (=> b!890325 (= e!583383 e!583381)))

(declare-fun c!144064 () Bool)

(assert (=> b!890325 (= c!144064 ((_ is Union!2305) (regOne!5123 r!15766)))))

(declare-fun bm!52511 () Bool)

(assert (=> bm!52511 (= call!52514 (removeUselessConcat!42 (ite c!144067 (regOne!5122 (regOne!5123 r!15766)) (ite c!144065 (regTwo!5122 (regOne!5123 r!15766)) (ite c!144064 (regTwo!5123 (regOne!5123 r!15766)) (reg!2634 (regOne!5123 r!15766)))))))))

(declare-fun b!890326 () Bool)

(assert (=> b!890326 (= e!583381 (Union!2305 call!52512 call!52515))))

(declare-fun b!890327 () Bool)

(assert (=> b!890327 (= e!583384 (Star!2305 call!52515))))

(declare-fun b!890328 () Bool)

(assert (=> b!890328 (= e!583385 call!52516)))

(assert (= (and d!277300 c!144063) b!890328))

(assert (= (and d!277300 (not c!144063)) b!890323))

(assert (= (and b!890323 c!144067) b!890324))

(assert (= (and b!890323 (not c!144067)) b!890322))

(assert (= (and b!890322 c!144065) b!890320))

(assert (= (and b!890322 (not c!144065)) b!890325))

(assert (= (and b!890325 c!144064) b!890326))

(assert (= (and b!890325 (not c!144064)) b!890319))

(assert (= (and b!890319 c!144066) b!890327))

(assert (= (and b!890319 (not c!144066)) b!890321))

(assert (= (or b!890326 b!890327) bm!52510))

(assert (= (or b!890320 bm!52510) bm!52509))

(assert (= (or b!890320 b!890326) bm!52508))

(assert (= (or b!890324 bm!52509) bm!52511))

(assert (= (or b!890328 bm!52508) bm!52507))

(assert (= (and d!277300 res!404850) b!890318))

(declare-fun m!1133741 () Bool)

(assert (=> b!890318 m!1133741))

(declare-fun m!1133743 () Bool)

(assert (=> b!890318 m!1133743))

(declare-fun m!1133745 () Bool)

(assert (=> bm!52507 m!1133745))

(declare-fun m!1133747 () Bool)

(assert (=> d!277300 m!1133747))

(declare-fun m!1133749 () Bool)

(assert (=> d!277300 m!1133749))

(declare-fun m!1133751 () Bool)

(assert (=> bm!52511 m!1133751))

(assert (=> b!889832 d!277300))

(declare-fun b!890329 () Bool)

(declare-fun e!583389 () Bool)

(declare-fun lt!332301 () Bool)

(declare-fun call!52517 () Bool)

(assert (=> b!890329 (= e!583389 (= lt!332301 call!52517))))

(declare-fun b!890330 () Bool)

(declare-fun res!404855 () Bool)

(declare-fun e!583387 () Bool)

(assert (=> b!890330 (=> (not res!404855) (not e!583387))))

(assert (=> b!890330 (= res!404855 (isEmpty!5721 (tail!1126 s!10566)))))

(declare-fun b!890331 () Bool)

(declare-fun e!583392 () Bool)

(declare-fun e!583391 () Bool)

(assert (=> b!890331 (= e!583392 e!583391)))

(declare-fun res!404852 () Bool)

(assert (=> b!890331 (=> (not res!404852) (not e!583391))))

(assert (=> b!890331 (= res!404852 (not lt!332301))))

(declare-fun b!890332 () Bool)

(declare-fun res!404853 () Bool)

(assert (=> b!890332 (=> (not res!404853) (not e!583387))))

(assert (=> b!890332 (= res!404853 (not call!52517))))

(declare-fun b!890333 () Bool)

(declare-fun e!583390 () Bool)

(assert (=> b!890333 (= e!583390 (not (= (head!1564 s!10566) (c!143940 lt!332259))))))

(declare-fun b!890334 () Bool)

(declare-fun e!583393 () Bool)

(assert (=> b!890334 (= e!583393 (not lt!332301))))

(declare-fun b!890335 () Bool)

(declare-fun res!404857 () Bool)

(assert (=> b!890335 (=> res!404857 e!583392)))

(assert (=> b!890335 (= res!404857 e!583387)))

(declare-fun res!404851 () Bool)

(assert (=> b!890335 (=> (not res!404851) (not e!583387))))

(assert (=> b!890335 (= res!404851 lt!332301)))

(declare-fun b!890336 () Bool)

(declare-fun e!583388 () Bool)

(assert (=> b!890336 (= e!583388 (matchR!843 (derivativeStep!411 lt!332259 (head!1564 s!10566)) (tail!1126 s!10566)))))

(declare-fun b!890337 () Bool)

(declare-fun res!404856 () Bool)

(assert (=> b!890337 (=> res!404856 e!583390)))

(assert (=> b!890337 (= res!404856 (not (isEmpty!5721 (tail!1126 s!10566))))))

(declare-fun d!277302 () Bool)

(assert (=> d!277302 e!583389))

(declare-fun c!144068 () Bool)

(assert (=> d!277302 (= c!144068 ((_ is EmptyExpr!2305) lt!332259))))

(assert (=> d!277302 (= lt!332301 e!583388)))

(declare-fun c!144070 () Bool)

(assert (=> d!277302 (= c!144070 (isEmpty!5721 s!10566))))

(assert (=> d!277302 (validRegex!774 lt!332259)))

(assert (=> d!277302 (= (matchR!843 lt!332259 s!10566) lt!332301)))

(declare-fun b!890338 () Bool)

(assert (=> b!890338 (= e!583389 e!583393)))

(declare-fun c!144069 () Bool)

(assert (=> b!890338 (= c!144069 ((_ is EmptyLang!2305) lt!332259))))

(declare-fun b!890339 () Bool)

(declare-fun res!404858 () Bool)

(assert (=> b!890339 (=> res!404858 e!583392)))

(assert (=> b!890339 (= res!404858 (not ((_ is ElementMatch!2305) lt!332259)))))

(assert (=> b!890339 (= e!583393 e!583392)))

(declare-fun b!890340 () Bool)

(assert (=> b!890340 (= e!583387 (= (head!1564 s!10566) (c!143940 lt!332259)))))

(declare-fun bm!52512 () Bool)

(assert (=> bm!52512 (= call!52517 (isEmpty!5721 s!10566))))

(declare-fun b!890341 () Bool)

(assert (=> b!890341 (= e!583388 (nullable!599 lt!332259))))

(declare-fun b!890342 () Bool)

(assert (=> b!890342 (= e!583391 e!583390)))

(declare-fun res!404854 () Bool)

(assert (=> b!890342 (=> res!404854 e!583390)))

(assert (=> b!890342 (= res!404854 call!52517)))

(assert (= (and d!277302 c!144070) b!890341))

(assert (= (and d!277302 (not c!144070)) b!890336))

(assert (= (and d!277302 c!144068) b!890329))

(assert (= (and d!277302 (not c!144068)) b!890338))

(assert (= (and b!890338 c!144069) b!890334))

(assert (= (and b!890338 (not c!144069)) b!890339))

(assert (= (and b!890339 (not res!404858)) b!890335))

(assert (= (and b!890335 res!404851) b!890332))

(assert (= (and b!890332 res!404853) b!890330))

(assert (= (and b!890330 res!404855) b!890340))

(assert (= (and b!890335 (not res!404857)) b!890331))

(assert (= (and b!890331 res!404852) b!890342))

(assert (= (and b!890342 (not res!404854)) b!890337))

(assert (= (and b!890337 (not res!404856)) b!890333))

(assert (= (or b!890329 b!890342 b!890332) bm!52512))

(assert (=> b!890333 m!1133665))

(assert (=> b!890337 m!1133667))

(assert (=> b!890337 m!1133667))

(assert (=> b!890337 m!1133669))

(assert (=> b!890340 m!1133665))

(assert (=> bm!52512 m!1133671))

(declare-fun m!1133753 () Bool)

(assert (=> b!890341 m!1133753))

(assert (=> b!890330 m!1133667))

(assert (=> b!890330 m!1133667))

(assert (=> b!890330 m!1133669))

(assert (=> d!277302 m!1133671))

(assert (=> d!277302 m!1133545))

(assert (=> b!890336 m!1133665))

(assert (=> b!890336 m!1133665))

(declare-fun m!1133755 () Bool)

(assert (=> b!890336 m!1133755))

(assert (=> b!890336 m!1133667))

(assert (=> b!890336 m!1133755))

(assert (=> b!890336 m!1133667))

(declare-fun m!1133757 () Bool)

(assert (=> b!890336 m!1133757))

(assert (=> b!889832 d!277302))

(declare-fun d!277304 () Bool)

(assert (=> d!277304 (= (matchR!843 (regOne!5123 r!15766) s!10566) (matchR!843 (removeUselessConcat!42 (regOne!5123 r!15766)) s!10566))))

(declare-fun lt!332304 () Unit!14189)

(declare-fun choose!5318 (Regex!2305 List!9535) Unit!14189)

(assert (=> d!277304 (= lt!332304 (choose!5318 (regOne!5123 r!15766) s!10566))))

(assert (=> d!277304 (validRegex!774 (regOne!5123 r!15766))))

(assert (=> d!277304 (= (lemmaRemoveUselessConcatSound!36 (regOne!5123 r!15766) s!10566) lt!332304)))

(declare-fun bs!234822 () Bool)

(assert (= bs!234822 d!277304))

(assert (=> bs!234822 m!1133541))

(declare-fun m!1133759 () Bool)

(assert (=> bs!234822 m!1133759))

(assert (=> bs!234822 m!1133535))

(declare-fun m!1133761 () Bool)

(assert (=> bs!234822 m!1133761))

(assert (=> bs!234822 m!1133749))

(assert (=> bs!234822 m!1133541))

(assert (=> b!889832 d!277304))

(declare-fun b!890343 () Bool)

(declare-fun e!583396 () Bool)

(declare-fun lt!332305 () Bool)

(declare-fun call!52518 () Bool)

(assert (=> b!890343 (= e!583396 (= lt!332305 call!52518))))

(declare-fun b!890344 () Bool)

(declare-fun res!404863 () Bool)

(declare-fun e!583394 () Bool)

(assert (=> b!890344 (=> (not res!404863) (not e!583394))))

(assert (=> b!890344 (= res!404863 (isEmpty!5721 (tail!1126 s!10566)))))

(declare-fun b!890345 () Bool)

(declare-fun e!583399 () Bool)

(declare-fun e!583398 () Bool)

(assert (=> b!890345 (= e!583399 e!583398)))

(declare-fun res!404860 () Bool)

(assert (=> b!890345 (=> (not res!404860) (not e!583398))))

(assert (=> b!890345 (= res!404860 (not lt!332305))))

(declare-fun b!890346 () Bool)

(declare-fun res!404861 () Bool)

(assert (=> b!890346 (=> (not res!404861) (not e!583394))))

(assert (=> b!890346 (= res!404861 (not call!52518))))

(declare-fun b!890347 () Bool)

(declare-fun e!583397 () Bool)

(assert (=> b!890347 (= e!583397 (not (= (head!1564 s!10566) (c!143940 (regOne!5123 r!15766)))))))

(declare-fun b!890348 () Bool)

(declare-fun e!583400 () Bool)

(assert (=> b!890348 (= e!583400 (not lt!332305))))

(declare-fun b!890349 () Bool)

(declare-fun res!404865 () Bool)

(assert (=> b!890349 (=> res!404865 e!583399)))

(assert (=> b!890349 (= res!404865 e!583394)))

(declare-fun res!404859 () Bool)

(assert (=> b!890349 (=> (not res!404859) (not e!583394))))

(assert (=> b!890349 (= res!404859 lt!332305)))

(declare-fun b!890350 () Bool)

(declare-fun e!583395 () Bool)

(assert (=> b!890350 (= e!583395 (matchR!843 (derivativeStep!411 (regOne!5123 r!15766) (head!1564 s!10566)) (tail!1126 s!10566)))))

(declare-fun b!890351 () Bool)

(declare-fun res!404864 () Bool)

(assert (=> b!890351 (=> res!404864 e!583397)))

(assert (=> b!890351 (= res!404864 (not (isEmpty!5721 (tail!1126 s!10566))))))

(declare-fun d!277306 () Bool)

(assert (=> d!277306 e!583396))

(declare-fun c!144071 () Bool)

(assert (=> d!277306 (= c!144071 ((_ is EmptyExpr!2305) (regOne!5123 r!15766)))))

(assert (=> d!277306 (= lt!332305 e!583395)))

(declare-fun c!144073 () Bool)

(assert (=> d!277306 (= c!144073 (isEmpty!5721 s!10566))))

(assert (=> d!277306 (validRegex!774 (regOne!5123 r!15766))))

(assert (=> d!277306 (= (matchR!843 (regOne!5123 r!15766) s!10566) lt!332305)))

(declare-fun b!890352 () Bool)

(assert (=> b!890352 (= e!583396 e!583400)))

(declare-fun c!144072 () Bool)

(assert (=> b!890352 (= c!144072 ((_ is EmptyLang!2305) (regOne!5123 r!15766)))))

(declare-fun b!890353 () Bool)

(declare-fun res!404866 () Bool)

(assert (=> b!890353 (=> res!404866 e!583399)))

(assert (=> b!890353 (= res!404866 (not ((_ is ElementMatch!2305) (regOne!5123 r!15766))))))

(assert (=> b!890353 (= e!583400 e!583399)))

(declare-fun b!890354 () Bool)

(assert (=> b!890354 (= e!583394 (= (head!1564 s!10566) (c!143940 (regOne!5123 r!15766))))))

(declare-fun bm!52513 () Bool)

(assert (=> bm!52513 (= call!52518 (isEmpty!5721 s!10566))))

(declare-fun b!890355 () Bool)

(assert (=> b!890355 (= e!583395 (nullable!599 (regOne!5123 r!15766)))))

(declare-fun b!890356 () Bool)

(assert (=> b!890356 (= e!583398 e!583397)))

(declare-fun res!404862 () Bool)

(assert (=> b!890356 (=> res!404862 e!583397)))

(assert (=> b!890356 (= res!404862 call!52518)))

(assert (= (and d!277306 c!144073) b!890355))

(assert (= (and d!277306 (not c!144073)) b!890350))

(assert (= (and d!277306 c!144071) b!890343))

(assert (= (and d!277306 (not c!144071)) b!890352))

(assert (= (and b!890352 c!144072) b!890348))

(assert (= (and b!890352 (not c!144072)) b!890353))

(assert (= (and b!890353 (not res!404866)) b!890349))

(assert (= (and b!890349 res!404859) b!890346))

(assert (= (and b!890346 res!404861) b!890344))

(assert (= (and b!890344 res!404863) b!890354))

(assert (= (and b!890349 (not res!404865)) b!890345))

(assert (= (and b!890345 res!404860) b!890356))

(assert (= (and b!890356 (not res!404862)) b!890351))

(assert (= (and b!890351 (not res!404864)) b!890347))

(assert (= (or b!890343 b!890356 b!890346) bm!52513))

(assert (=> b!890347 m!1133665))

(assert (=> b!890351 m!1133667))

(assert (=> b!890351 m!1133667))

(assert (=> b!890351 m!1133669))

(assert (=> b!890354 m!1133665))

(assert (=> bm!52513 m!1133671))

(assert (=> b!890355 m!1133743))

(assert (=> b!890344 m!1133667))

(assert (=> b!890344 m!1133667))

(assert (=> b!890344 m!1133669))

(assert (=> d!277306 m!1133671))

(assert (=> d!277306 m!1133749))

(assert (=> b!890350 m!1133665))

(assert (=> b!890350 m!1133665))

(declare-fun m!1133763 () Bool)

(assert (=> b!890350 m!1133763))

(assert (=> b!890350 m!1133667))

(assert (=> b!890350 m!1133763))

(assert (=> b!890350 m!1133667))

(declare-fun m!1133765 () Bool)

(assert (=> b!890350 m!1133765))

(assert (=> b!889826 d!277306))

(declare-fun d!277308 () Bool)

(declare-fun e!583406 () Bool)

(assert (=> d!277308 e!583406))

(declare-fun res!404872 () Bool)

(assert (=> d!277308 (=> res!404872 e!583406)))

(assert (=> d!277308 (= res!404872 (matchR!843 (regOne!5123 r!15766) s!10566))))

(declare-fun lt!332308 () Unit!14189)

(declare-fun choose!5319 (Regex!2305 Regex!2305 List!9535) Unit!14189)

(assert (=> d!277308 (= lt!332308 (choose!5319 (regOne!5123 r!15766) (regTwo!5123 r!15766) s!10566))))

(declare-fun e!583405 () Bool)

(assert (=> d!277308 e!583405))

(declare-fun res!404871 () Bool)

(assert (=> d!277308 (=> (not res!404871) (not e!583405))))

(assert (=> d!277308 (= res!404871 (validRegex!774 (regOne!5123 r!15766)))))

(assert (=> d!277308 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!16 (regOne!5123 r!15766) (regTwo!5123 r!15766) s!10566) lt!332308)))

(declare-fun b!890361 () Bool)

(assert (=> b!890361 (= e!583405 (validRegex!774 (regTwo!5123 r!15766)))))

(declare-fun b!890362 () Bool)

(assert (=> b!890362 (= e!583406 (matchR!843 (regTwo!5123 r!15766) s!10566))))

(assert (= (and d!277308 res!404871) b!890361))

(assert (= (and d!277308 (not res!404872)) b!890362))

(assert (=> d!277308 m!1133535))

(declare-fun m!1133767 () Bool)

(assert (=> d!277308 m!1133767))

(assert (=> d!277308 m!1133749))

(assert (=> b!890361 m!1133737))

(assert (=> b!890362 m!1133559))

(assert (=> b!889826 d!277308))

(declare-fun b!890363 () Bool)

(declare-fun e!583409 () Bool)

(declare-fun call!52521 () Bool)

(assert (=> b!890363 (= e!583409 call!52521)))

(declare-fun b!890364 () Bool)

(declare-fun res!404877 () Bool)

(declare-fun e!583408 () Bool)

(assert (=> b!890364 (=> res!404877 e!583408)))

(assert (=> b!890364 (= res!404877 (not ((_ is Concat!4138) lt!332254)))))

(declare-fun e!583413 () Bool)

(assert (=> b!890364 (= e!583413 e!583408)))

(declare-fun b!890365 () Bool)

(declare-fun e!583410 () Bool)

(assert (=> b!890365 (= e!583408 e!583410)))

(declare-fun res!404876 () Bool)

(assert (=> b!890365 (=> (not res!404876) (not e!583410))))

(declare-fun call!52520 () Bool)

(assert (=> b!890365 (= res!404876 call!52520)))

(declare-fun d!277310 () Bool)

(declare-fun res!404874 () Bool)

(declare-fun e!583411 () Bool)

(assert (=> d!277310 (=> res!404874 e!583411)))

(assert (=> d!277310 (= res!404874 ((_ is ElementMatch!2305) lt!332254))))

(assert (=> d!277310 (= (validRegex!774 lt!332254) e!583411)))

(declare-fun b!890366 () Bool)

(declare-fun e!583407 () Bool)

(declare-fun e!583412 () Bool)

(assert (=> b!890366 (= e!583407 e!583412)))

(declare-fun res!404875 () Bool)

(assert (=> b!890366 (= res!404875 (not (nullable!599 (reg!2634 lt!332254))))))

(assert (=> b!890366 (=> (not res!404875) (not e!583412))))

(declare-fun bm!52514 () Bool)

(declare-fun c!144074 () Bool)

(declare-fun call!52519 () Bool)

(declare-fun c!144075 () Bool)

(assert (=> bm!52514 (= call!52519 (validRegex!774 (ite c!144075 (reg!2634 lt!332254) (ite c!144074 (regTwo!5123 lt!332254) (regTwo!5122 lt!332254)))))))

(declare-fun bm!52515 () Bool)

(assert (=> bm!52515 (= call!52520 (validRegex!774 (ite c!144074 (regOne!5123 lt!332254) (regOne!5122 lt!332254))))))

(declare-fun b!890367 () Bool)

(assert (=> b!890367 (= e!583410 call!52521)))

(declare-fun bm!52516 () Bool)

(assert (=> bm!52516 (= call!52521 call!52519)))

(declare-fun b!890368 () Bool)

(assert (=> b!890368 (= e!583407 e!583413)))

(assert (=> b!890368 (= c!144074 ((_ is Union!2305) lt!332254))))

(declare-fun b!890369 () Bool)

(assert (=> b!890369 (= e!583411 e!583407)))

(assert (=> b!890369 (= c!144075 ((_ is Star!2305) lt!332254))))

(declare-fun b!890370 () Bool)

(assert (=> b!890370 (= e!583412 call!52519)))

(declare-fun b!890371 () Bool)

(declare-fun res!404873 () Bool)

(assert (=> b!890371 (=> (not res!404873) (not e!583409))))

(assert (=> b!890371 (= res!404873 call!52520)))

(assert (=> b!890371 (= e!583413 e!583409)))

(assert (= (and d!277310 (not res!404874)) b!890369))

(assert (= (and b!890369 c!144075) b!890366))

(assert (= (and b!890369 (not c!144075)) b!890368))

(assert (= (and b!890366 res!404875) b!890370))

(assert (= (and b!890368 c!144074) b!890371))

(assert (= (and b!890368 (not c!144074)) b!890364))

(assert (= (and b!890371 res!404873) b!890363))

(assert (= (and b!890364 (not res!404877)) b!890365))

(assert (= (and b!890365 res!404876) b!890367))

(assert (= (or b!890363 b!890367) bm!52516))

(assert (= (or b!890371 b!890365) bm!52515))

(assert (= (or b!890370 bm!52516) bm!52514))

(declare-fun m!1133769 () Bool)

(assert (=> b!890366 m!1133769))

(declare-fun m!1133771 () Bool)

(assert (=> bm!52514 m!1133771))

(declare-fun m!1133773 () Bool)

(assert (=> bm!52515 m!1133773))

(assert (=> b!889831 d!277310))

(declare-fun b!890372 () Bool)

(declare-fun e!583416 () Bool)

(declare-fun lt!332309 () Bool)

(declare-fun call!52522 () Bool)

(assert (=> b!890372 (= e!583416 (= lt!332309 call!52522))))

(declare-fun b!890373 () Bool)

(declare-fun res!404882 () Bool)

(declare-fun e!583414 () Bool)

(assert (=> b!890373 (=> (not res!404882) (not e!583414))))

(assert (=> b!890373 (= res!404882 (isEmpty!5721 (tail!1126 s!10566)))))

(declare-fun b!890374 () Bool)

(declare-fun e!583419 () Bool)

(declare-fun e!583418 () Bool)

(assert (=> b!890374 (= e!583419 e!583418)))

(declare-fun res!404879 () Bool)

(assert (=> b!890374 (=> (not res!404879) (not e!583418))))

(assert (=> b!890374 (= res!404879 (not lt!332309))))

(declare-fun b!890375 () Bool)

(declare-fun res!404880 () Bool)

(assert (=> b!890375 (=> (not res!404880) (not e!583414))))

(assert (=> b!890375 (= res!404880 (not call!52522))))

(declare-fun b!890376 () Bool)

(declare-fun e!583417 () Bool)

(assert (=> b!890376 (= e!583417 (not (= (head!1564 s!10566) (c!143940 (regTwo!5123 r!15766)))))))

(declare-fun b!890377 () Bool)

(declare-fun e!583420 () Bool)

(assert (=> b!890377 (= e!583420 (not lt!332309))))

(declare-fun b!890378 () Bool)

(declare-fun res!404884 () Bool)

(assert (=> b!890378 (=> res!404884 e!583419)))

(assert (=> b!890378 (= res!404884 e!583414)))

(declare-fun res!404878 () Bool)

(assert (=> b!890378 (=> (not res!404878) (not e!583414))))

(assert (=> b!890378 (= res!404878 lt!332309)))

(declare-fun b!890379 () Bool)

(declare-fun e!583415 () Bool)

(assert (=> b!890379 (= e!583415 (matchR!843 (derivativeStep!411 (regTwo!5123 r!15766) (head!1564 s!10566)) (tail!1126 s!10566)))))

(declare-fun b!890380 () Bool)

(declare-fun res!404883 () Bool)

(assert (=> b!890380 (=> res!404883 e!583417)))

(assert (=> b!890380 (= res!404883 (not (isEmpty!5721 (tail!1126 s!10566))))))

(declare-fun d!277312 () Bool)

(assert (=> d!277312 e!583416))

(declare-fun c!144076 () Bool)

(assert (=> d!277312 (= c!144076 ((_ is EmptyExpr!2305) (regTwo!5123 r!15766)))))

(assert (=> d!277312 (= lt!332309 e!583415)))

(declare-fun c!144078 () Bool)

(assert (=> d!277312 (= c!144078 (isEmpty!5721 s!10566))))

(assert (=> d!277312 (validRegex!774 (regTwo!5123 r!15766))))

(assert (=> d!277312 (= (matchR!843 (regTwo!5123 r!15766) s!10566) lt!332309)))

(declare-fun b!890381 () Bool)

(assert (=> b!890381 (= e!583416 e!583420)))

(declare-fun c!144077 () Bool)

(assert (=> b!890381 (= c!144077 ((_ is EmptyLang!2305) (regTwo!5123 r!15766)))))

(declare-fun b!890382 () Bool)

(declare-fun res!404885 () Bool)

(assert (=> b!890382 (=> res!404885 e!583419)))

(assert (=> b!890382 (= res!404885 (not ((_ is ElementMatch!2305) (regTwo!5123 r!15766))))))

(assert (=> b!890382 (= e!583420 e!583419)))

(declare-fun b!890383 () Bool)

(assert (=> b!890383 (= e!583414 (= (head!1564 s!10566) (c!143940 (regTwo!5123 r!15766))))))

(declare-fun bm!52517 () Bool)

(assert (=> bm!52517 (= call!52522 (isEmpty!5721 s!10566))))

(declare-fun b!890384 () Bool)

(assert (=> b!890384 (= e!583415 (nullable!599 (regTwo!5123 r!15766)))))

(declare-fun b!890385 () Bool)

(assert (=> b!890385 (= e!583418 e!583417)))

(declare-fun res!404881 () Bool)

(assert (=> b!890385 (=> res!404881 e!583417)))

(assert (=> b!890385 (= res!404881 call!52522)))

(assert (= (and d!277312 c!144078) b!890384))

(assert (= (and d!277312 (not c!144078)) b!890379))

(assert (= (and d!277312 c!144076) b!890372))

(assert (= (and d!277312 (not c!144076)) b!890381))

(assert (= (and b!890381 c!144077) b!890377))

(assert (= (and b!890381 (not c!144077)) b!890382))

(assert (= (and b!890382 (not res!404885)) b!890378))

(assert (= (and b!890378 res!404878) b!890375))

(assert (= (and b!890375 res!404880) b!890373))

(assert (= (and b!890373 res!404882) b!890383))

(assert (= (and b!890378 (not res!404884)) b!890374))

(assert (= (and b!890374 res!404879) b!890385))

(assert (= (and b!890385 (not res!404881)) b!890380))

(assert (= (and b!890380 (not res!404883)) b!890376))

(assert (= (or b!890372 b!890385 b!890375) bm!52517))

(assert (=> b!890376 m!1133665))

(assert (=> b!890380 m!1133667))

(assert (=> b!890380 m!1133667))

(assert (=> b!890380 m!1133669))

(assert (=> b!890383 m!1133665))

(assert (=> bm!52517 m!1133671))

(assert (=> b!890384 m!1133731))

(assert (=> b!890373 m!1133667))

(assert (=> b!890373 m!1133667))

(assert (=> b!890373 m!1133669))

(assert (=> d!277312 m!1133671))

(assert (=> d!277312 m!1133737))

(assert (=> b!890379 m!1133665))

(assert (=> b!890379 m!1133665))

(declare-fun m!1133775 () Bool)

(assert (=> b!890379 m!1133775))

(assert (=> b!890379 m!1133667))

(assert (=> b!890379 m!1133775))

(assert (=> b!890379 m!1133667))

(declare-fun m!1133777 () Bool)

(assert (=> b!890379 m!1133777))

(assert (=> b!889825 d!277312))

(declare-fun b!890386 () Bool)

(declare-fun e!583423 () Bool)

(declare-fun call!52525 () Bool)

(assert (=> b!890386 (= e!583423 call!52525)))

(declare-fun b!890387 () Bool)

(declare-fun res!404890 () Bool)

(declare-fun e!583422 () Bool)

(assert (=> b!890387 (=> res!404890 e!583422)))

(assert (=> b!890387 (= res!404890 (not ((_ is Concat!4138) r!15766)))))

(declare-fun e!583427 () Bool)

(assert (=> b!890387 (= e!583427 e!583422)))

(declare-fun b!890388 () Bool)

(declare-fun e!583424 () Bool)

(assert (=> b!890388 (= e!583422 e!583424)))

(declare-fun res!404889 () Bool)

(assert (=> b!890388 (=> (not res!404889) (not e!583424))))

(declare-fun call!52524 () Bool)

(assert (=> b!890388 (= res!404889 call!52524)))

(declare-fun d!277314 () Bool)

(declare-fun res!404887 () Bool)

(declare-fun e!583425 () Bool)

(assert (=> d!277314 (=> res!404887 e!583425)))

(assert (=> d!277314 (= res!404887 ((_ is ElementMatch!2305) r!15766))))

(assert (=> d!277314 (= (validRegex!774 r!15766) e!583425)))

(declare-fun b!890389 () Bool)

(declare-fun e!583421 () Bool)

(declare-fun e!583426 () Bool)

(assert (=> b!890389 (= e!583421 e!583426)))

(declare-fun res!404888 () Bool)

(assert (=> b!890389 (= res!404888 (not (nullable!599 (reg!2634 r!15766))))))

(assert (=> b!890389 (=> (not res!404888) (not e!583426))))

(declare-fun call!52523 () Bool)

(declare-fun c!144079 () Bool)

(declare-fun bm!52518 () Bool)

(declare-fun c!144080 () Bool)

(assert (=> bm!52518 (= call!52523 (validRegex!774 (ite c!144080 (reg!2634 r!15766) (ite c!144079 (regTwo!5123 r!15766) (regTwo!5122 r!15766)))))))

(declare-fun bm!52519 () Bool)

(assert (=> bm!52519 (= call!52524 (validRegex!774 (ite c!144079 (regOne!5123 r!15766) (regOne!5122 r!15766))))))

(declare-fun b!890390 () Bool)

(assert (=> b!890390 (= e!583424 call!52525)))

(declare-fun bm!52520 () Bool)

(assert (=> bm!52520 (= call!52525 call!52523)))

(declare-fun b!890391 () Bool)

(assert (=> b!890391 (= e!583421 e!583427)))

(assert (=> b!890391 (= c!144079 ((_ is Union!2305) r!15766))))

(declare-fun b!890392 () Bool)

(assert (=> b!890392 (= e!583425 e!583421)))

(assert (=> b!890392 (= c!144080 ((_ is Star!2305) r!15766))))

(declare-fun b!890393 () Bool)

(assert (=> b!890393 (= e!583426 call!52523)))

(declare-fun b!890394 () Bool)

(declare-fun res!404886 () Bool)

(assert (=> b!890394 (=> (not res!404886) (not e!583423))))

(assert (=> b!890394 (= res!404886 call!52524)))

(assert (=> b!890394 (= e!583427 e!583423)))

(assert (= (and d!277314 (not res!404887)) b!890392))

(assert (= (and b!890392 c!144080) b!890389))

(assert (= (and b!890392 (not c!144080)) b!890391))

(assert (= (and b!890389 res!404888) b!890393))

(assert (= (and b!890391 c!144079) b!890394))

(assert (= (and b!890391 (not c!144079)) b!890387))

(assert (= (and b!890394 res!404886) b!890386))

(assert (= (and b!890387 (not res!404890)) b!890388))

(assert (= (and b!890388 res!404889) b!890390))

(assert (= (or b!890386 b!890390) bm!52520))

(assert (= (or b!890394 b!890388) bm!52519))

(assert (= (or b!890393 bm!52520) bm!52518))

(declare-fun m!1133779 () Bool)

(assert (=> b!890389 m!1133779))

(declare-fun m!1133781 () Bool)

(assert (=> bm!52518 m!1133781))

(declare-fun m!1133783 () Bool)

(assert (=> bm!52519 m!1133783))

(assert (=> start!80294 d!277314))

(declare-fun b!890406 () Bool)

(declare-fun e!583430 () Bool)

(declare-fun tp!280282 () Bool)

(declare-fun tp!280284 () Bool)

(assert (=> b!890406 (= e!583430 (and tp!280282 tp!280284))))

(declare-fun b!890405 () Bool)

(assert (=> b!890405 (= e!583430 tp_is_empty!4253)))

(declare-fun b!890407 () Bool)

(declare-fun tp!280281 () Bool)

(assert (=> b!890407 (= e!583430 tp!280281)))

(assert (=> b!889823 (= tp!280231 e!583430)))

(declare-fun b!890408 () Bool)

(declare-fun tp!280285 () Bool)

(declare-fun tp!280283 () Bool)

(assert (=> b!890408 (= e!583430 (and tp!280285 tp!280283))))

(assert (= (and b!889823 ((_ is ElementMatch!2305) (regOne!5123 r!15766))) b!890405))

(assert (= (and b!889823 ((_ is Concat!4138) (regOne!5123 r!15766))) b!890406))

(assert (= (and b!889823 ((_ is Star!2305) (regOne!5123 r!15766))) b!890407))

(assert (= (and b!889823 ((_ is Union!2305) (regOne!5123 r!15766))) b!890408))

(declare-fun b!890410 () Bool)

(declare-fun e!583431 () Bool)

(declare-fun tp!280287 () Bool)

(declare-fun tp!280289 () Bool)

(assert (=> b!890410 (= e!583431 (and tp!280287 tp!280289))))

(declare-fun b!890409 () Bool)

(assert (=> b!890409 (= e!583431 tp_is_empty!4253)))

(declare-fun b!890411 () Bool)

(declare-fun tp!280286 () Bool)

(assert (=> b!890411 (= e!583431 tp!280286)))

(assert (=> b!889823 (= tp!280227 e!583431)))

(declare-fun b!890412 () Bool)

(declare-fun tp!280290 () Bool)

(declare-fun tp!280288 () Bool)

(assert (=> b!890412 (= e!583431 (and tp!280290 tp!280288))))

(assert (= (and b!889823 ((_ is ElementMatch!2305) (regTwo!5123 r!15766))) b!890409))

(assert (= (and b!889823 ((_ is Concat!4138) (regTwo!5123 r!15766))) b!890410))

(assert (= (and b!889823 ((_ is Star!2305) (regTwo!5123 r!15766))) b!890411))

(assert (= (and b!889823 ((_ is Union!2305) (regTwo!5123 r!15766))) b!890412))

(declare-fun b!890414 () Bool)

(declare-fun e!583432 () Bool)

(declare-fun tp!280292 () Bool)

(declare-fun tp!280294 () Bool)

(assert (=> b!890414 (= e!583432 (and tp!280292 tp!280294))))

(declare-fun b!890413 () Bool)

(assert (=> b!890413 (= e!583432 tp_is_empty!4253)))

(declare-fun b!890415 () Bool)

(declare-fun tp!280291 () Bool)

(assert (=> b!890415 (= e!583432 tp!280291)))

(assert (=> b!889833 (= tp!280232 e!583432)))

(declare-fun b!890416 () Bool)

(declare-fun tp!280295 () Bool)

(declare-fun tp!280293 () Bool)

(assert (=> b!890416 (= e!583432 (and tp!280295 tp!280293))))

(assert (= (and b!889833 ((_ is ElementMatch!2305) (regOne!5122 r!15766))) b!890413))

(assert (= (and b!889833 ((_ is Concat!4138) (regOne!5122 r!15766))) b!890414))

(assert (= (and b!889833 ((_ is Star!2305) (regOne!5122 r!15766))) b!890415))

(assert (= (and b!889833 ((_ is Union!2305) (regOne!5122 r!15766))) b!890416))

(declare-fun b!890418 () Bool)

(declare-fun e!583433 () Bool)

(declare-fun tp!280297 () Bool)

(declare-fun tp!280299 () Bool)

(assert (=> b!890418 (= e!583433 (and tp!280297 tp!280299))))

(declare-fun b!890417 () Bool)

(assert (=> b!890417 (= e!583433 tp_is_empty!4253)))

(declare-fun b!890419 () Bool)

(declare-fun tp!280296 () Bool)

(assert (=> b!890419 (= e!583433 tp!280296)))

(assert (=> b!889833 (= tp!280228 e!583433)))

(declare-fun b!890420 () Bool)

(declare-fun tp!280300 () Bool)

(declare-fun tp!280298 () Bool)

(assert (=> b!890420 (= e!583433 (and tp!280300 tp!280298))))

(assert (= (and b!889833 ((_ is ElementMatch!2305) (regTwo!5122 r!15766))) b!890417))

(assert (= (and b!889833 ((_ is Concat!4138) (regTwo!5122 r!15766))) b!890418))

(assert (= (and b!889833 ((_ is Star!2305) (regTwo!5122 r!15766))) b!890419))

(assert (= (and b!889833 ((_ is Union!2305) (regTwo!5122 r!15766))) b!890420))

(declare-fun b!890422 () Bool)

(declare-fun e!583434 () Bool)

(declare-fun tp!280302 () Bool)

(declare-fun tp!280304 () Bool)

(assert (=> b!890422 (= e!583434 (and tp!280302 tp!280304))))

(declare-fun b!890421 () Bool)

(assert (=> b!890421 (= e!583434 tp_is_empty!4253)))

(declare-fun b!890423 () Bool)

(declare-fun tp!280301 () Bool)

(assert (=> b!890423 (= e!583434 tp!280301)))

(assert (=> b!889824 (= tp!280229 e!583434)))

(declare-fun b!890424 () Bool)

(declare-fun tp!280305 () Bool)

(declare-fun tp!280303 () Bool)

(assert (=> b!890424 (= e!583434 (and tp!280305 tp!280303))))

(assert (= (and b!889824 ((_ is ElementMatch!2305) (reg!2634 r!15766))) b!890421))

(assert (= (and b!889824 ((_ is Concat!4138) (reg!2634 r!15766))) b!890422))

(assert (= (and b!889824 ((_ is Star!2305) (reg!2634 r!15766))) b!890423))

(assert (= (and b!889824 ((_ is Union!2305) (reg!2634 r!15766))) b!890424))

(declare-fun b!890429 () Bool)

(declare-fun e!583437 () Bool)

(declare-fun tp!280308 () Bool)

(assert (=> b!890429 (= e!583437 (and tp_is_empty!4253 tp!280308))))

(assert (=> b!889829 (= tp!280230 e!583437)))

(assert (= (and b!889829 ((_ is Cons!9519) (t!100581 s!10566))) b!890429))

(check-sat (not d!277254) (not b!890131) (not b!890092) (not b!890275) (not b!890344) (not b!890347) (not b!890336) (not b!890407) (not bm!52506) (not b!890361) (not b!890330) (not d!277306) tp_is_empty!4253 (not bm!52457) (not b!890318) (not b!890341) (not d!277312) (not b!890355) (not b!890376) (not bm!52518) (not b!890291) (not bm!52498) (not bm!52515) (not b!890373) (not b!890406) (not b!890350) (not b!890087) (not bm!52431) (not b!890389) (not b!890362) (not bm!52500) (not b!890340) (not b!890307) (not b!890285) (not b!890295) (not b!890384) (not b!890354) (not b!890379) (not bm!52499) (not b!890091) (not bm!52496) (not b!890408) (not b!890271) (not d!277276) (not d!277262) (not b!890420) (not b!889954) (not b!890416) (not d!277294) (not bm!52507) (not bm!52461) (not d!277304) (not b!890301) (not b!890423) (not d!277292) (not bm!52519) (not b!890366) (not bm!52512) (not bm!52479) (not b!890333) (not b!890088) (not b!890084) (not d!277308) (not b!890292) (not b!890296) (not bm!52513) (not b!890419) (not b!890288) (not b!890410) (not b!890422) (not b!889888) (not b!890351) (not b!890383) (not b!890429) (not b!890337) (not b!890414) (not b!890380) (not b!890081) (not b!890418) (not b!890415) (not d!277300) (not d!277298) (not d!277302) (not bm!52517) (not bm!52502) (not bm!52514) (not b!890424) (not b!890411) (not bm!52511) (not bm!52497) (not b!890412) (not bm!52430))
(check-sat)
