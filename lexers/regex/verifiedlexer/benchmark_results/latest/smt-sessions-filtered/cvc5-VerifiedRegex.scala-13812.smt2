; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735266 () Bool)

(assert start!735266)

(declare-fun b!7636822 () Bool)

(assert (=> b!7636822 true))

(assert (=> b!7636822 true))

(declare-fun b!7636818 () Bool)

(declare-fun e!4539736 () Bool)

(declare-fun e!4539741 () Bool)

(assert (=> b!7636818 (= e!4539736 e!4539741)))

(declare-fun res!3058767 () Bool)

(assert (=> b!7636818 (=> res!3058767 e!4539741)))

(declare-datatypes ((C!41162 0))(
  ( (C!41163 (val!31021 Int)) )
))
(declare-datatypes ((Regex!20418 0))(
  ( (ElementMatch!20418 (c!1406740 C!41162)) (Concat!29263 (regOne!41348 Regex!20418) (regTwo!41348 Regex!20418)) (EmptyExpr!20418) (Star!20418 (reg!20747 Regex!20418)) (EmptyLang!20418) (Union!20418 (regOne!41349 Regex!20418) (regTwo!41349 Regex!20418)) )
))
(declare-fun r!14126 () Regex!20418)

(declare-fun nullable!8931 (Regex!20418) Bool)

(assert (=> b!7636818 (= res!3058767 (nullable!8931 (reg!20747 r!14126)))))

(declare-datatypes ((List!73269 0))(
  ( (Nil!73145) (Cons!73145 (h!79593 C!41162) (t!388004 List!73269)) )
))
(declare-datatypes ((tuple2!69394 0))(
  ( (tuple2!69395 (_1!38000 List!73269) (_2!38000 List!73269)) )
))
(declare-fun lt!2659986 () tuple2!69394)

(declare-fun matchR!9921 (Regex!20418 List!73269) Bool)

(declare-fun matchRSpec!4557 (Regex!20418 List!73269) Bool)

(assert (=> b!7636818 (= (matchR!9921 r!14126 (_2!38000 lt!2659986)) (matchRSpec!4557 r!14126 (_2!38000 lt!2659986)))))

(declare-datatypes ((Unit!167820 0))(
  ( (Unit!167821) )
))
(declare-fun lt!2659985 () Unit!167820)

(declare-fun mainMatchTheorem!4543 (Regex!20418 List!73269) Unit!167820)

(assert (=> b!7636818 (= lt!2659985 (mainMatchTheorem!4543 r!14126 (_2!38000 lt!2659986)))))

(assert (=> b!7636818 (= (matchR!9921 (reg!20747 r!14126) (_1!38000 lt!2659986)) (matchRSpec!4557 (reg!20747 r!14126) (_1!38000 lt!2659986)))))

(declare-fun lt!2659994 () Unit!167820)

(assert (=> b!7636818 (= lt!2659994 (mainMatchTheorem!4543 (reg!20747 r!14126) (_1!38000 lt!2659986)))))

(declare-fun lambda!469436 () Int)

(declare-fun pickWitness!483 (Int) tuple2!69394)

(assert (=> b!7636818 (= lt!2659986 (pickWitness!483 lambda!469436))))

(declare-fun b!7636819 () Bool)

(declare-fun e!4539740 () Bool)

(declare-fun tp!2229318 () Bool)

(declare-fun tp!2229319 () Bool)

(assert (=> b!7636819 (= e!4539740 (and tp!2229318 tp!2229319))))

(declare-fun b!7636820 () Bool)

(declare-fun e!4539737 () Bool)

(assert (=> b!7636820 (= e!4539737 false)))

(declare-fun res!3058772 () Bool)

(declare-fun e!4539734 () Bool)

(assert (=> start!735266 (=> (not res!3058772) (not e!4539734))))

(declare-fun validRegex!10836 (Regex!20418) Bool)

(assert (=> start!735266 (= res!3058772 (validRegex!10836 r!14126))))

(assert (=> start!735266 e!4539734))

(assert (=> start!735266 e!4539740))

(declare-fun e!4539735 () Bool)

(assert (=> start!735266 e!4539735))

(declare-fun b!7636821 () Bool)

(declare-fun tp_is_empty!51191 () Bool)

(declare-fun tp!2229314 () Bool)

(assert (=> b!7636821 (= e!4539735 (and tp_is_empty!51191 tp!2229314))))

(declare-fun e!4539739 () Bool)

(assert (=> b!7636822 (= e!4539734 (not e!4539739))))

(declare-fun res!3058771 () Bool)

(assert (=> b!7636822 (=> res!3058771 e!4539739)))

(declare-fun lt!2659997 () Bool)

(assert (=> b!7636822 (= res!3058771 (not lt!2659997))))

(declare-fun Exists!4572 (Int) Bool)

(assert (=> b!7636822 (= lt!2659997 (Exists!4572 lambda!469436))))

(declare-datatypes ((Option!17491 0))(
  ( (None!17490) (Some!17490 (v!54625 tuple2!69394)) )
))
(declare-fun lt!2659995 () Option!17491)

(declare-fun isDefined!14107 (Option!17491) Bool)

(assert (=> b!7636822 (= lt!2659997 (isDefined!14107 lt!2659995))))

(declare-fun s!9605 () List!73269)

(declare-fun findConcatSeparation!3521 (Regex!20418 Regex!20418 List!73269 List!73269 List!73269) Option!17491)

(assert (=> b!7636822 (= lt!2659995 (findConcatSeparation!3521 (reg!20747 r!14126) r!14126 Nil!73145 s!9605 s!9605))))

(declare-fun lt!2659992 () Unit!167820)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3279 (Regex!20418 Regex!20418 List!73269) Unit!167820)

(assert (=> b!7636822 (= lt!2659992 (lemmaFindConcatSeparationEquivalentToExists!3279 (reg!20747 r!14126) r!14126 s!9605))))

(declare-fun b!7636823 () Bool)

(declare-fun e!4539738 () Unit!167820)

(declare-fun Unit!167822 () Unit!167820)

(assert (=> b!7636823 (= e!4539738 Unit!167822)))

(declare-fun lt!2659996 () Unit!167820)

(declare-fun lt!2659990 () tuple2!69394)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!175 (Regex!20418 Regex!20418 List!73269 List!73269 List!73269) Unit!167820)

(assert (=> b!7636823 (= lt!2659996 (lemmaFindSeparationIsDefinedThenConcatMatches!175 (reg!20747 r!14126) r!14126 (_1!38000 lt!2659990) (_2!38000 lt!2659990) s!9605))))

(declare-fun lt!2659989 () List!73269)

(declare-fun ++!17698 (List!73269 List!73269) List!73269)

(assert (=> b!7636823 (= lt!2659989 (++!17698 (_1!38000 lt!2659990) (_2!38000 lt!2659990)))))

(assert (=> b!7636823 (matchR!9921 (Concat!29263 (reg!20747 r!14126) r!14126) lt!2659989)))

(declare-fun lt!2659987 () Unit!167820)

(declare-fun lemmaStarApp!205 (Regex!20418 List!73269 List!73269) Unit!167820)

(assert (=> b!7636823 (= lt!2659987 (lemmaStarApp!205 (reg!20747 r!14126) (_1!38000 lt!2659990) (_2!38000 lt!2659990)))))

(declare-fun res!3058768 () Bool)

(assert (=> b!7636823 (= res!3058768 (matchR!9921 r!14126 lt!2659989))))

(assert (=> b!7636823 (=> (not res!3058768) (not e!4539737))))

(assert (=> b!7636823 e!4539737))

(declare-fun b!7636824 () Bool)

(declare-fun tp!2229316 () Bool)

(assert (=> b!7636824 (= e!4539740 tp!2229316)))

(declare-fun b!7636825 () Bool)

(assert (=> b!7636825 (= e!4539739 e!4539736)))

(declare-fun res!3058769 () Bool)

(assert (=> b!7636825 (=> res!3058769 e!4539736)))

(assert (=> b!7636825 (= res!3058769 (not (Exists!4572 lambda!469436)))))

(declare-fun lt!2659993 () Unit!167820)

(assert (=> b!7636825 (= lt!2659993 e!4539738)))

(declare-fun c!1406739 () Bool)

(assert (=> b!7636825 (= c!1406739 (not (matchR!9921 r!14126 s!9605)))))

(assert (=> b!7636825 (= (matchR!9921 r!14126 (_2!38000 lt!2659990)) (matchRSpec!4557 r!14126 (_2!38000 lt!2659990)))))

(declare-fun lt!2659991 () Unit!167820)

(assert (=> b!7636825 (= lt!2659991 (mainMatchTheorem!4543 r!14126 (_2!38000 lt!2659990)))))

(assert (=> b!7636825 (= (matchR!9921 (reg!20747 r!14126) (_1!38000 lt!2659990)) (matchRSpec!4557 (reg!20747 r!14126) (_1!38000 lt!2659990)))))

(declare-fun lt!2659988 () Unit!167820)

(assert (=> b!7636825 (= lt!2659988 (mainMatchTheorem!4543 (reg!20747 r!14126) (_1!38000 lt!2659990)))))

(declare-fun get!25892 (Option!17491) tuple2!69394)

(assert (=> b!7636825 (= lt!2659990 (get!25892 lt!2659995))))

(declare-fun b!7636826 () Bool)

(declare-fun res!3058773 () Bool)

(assert (=> b!7636826 (=> (not res!3058773) (not e!4539734))))

(assert (=> b!7636826 (= res!3058773 (and (not (is-EmptyExpr!20418 r!14126)) (not (is-EmptyLang!20418 r!14126)) (not (is-ElementMatch!20418 r!14126)) (not (is-Union!20418 r!14126)) (is-Star!20418 r!14126)))))

(declare-fun b!7636827 () Bool)

(declare-fun res!3058770 () Bool)

(assert (=> b!7636827 (=> (not res!3058770) (not e!4539734))))

(declare-fun isEmpty!41776 (List!73269) Bool)

(assert (=> b!7636827 (= res!3058770 (not (isEmpty!41776 s!9605)))))

(declare-fun b!7636828 () Bool)

(assert (=> b!7636828 (= e!4539741 (not (isEmpty!41776 (_1!38000 lt!2659986))))))

(declare-fun b!7636829 () Bool)

(assert (=> b!7636829 (= e!4539740 tp_is_empty!51191)))

(declare-fun b!7636830 () Bool)

(declare-fun tp!2229317 () Bool)

(declare-fun tp!2229315 () Bool)

(assert (=> b!7636830 (= e!4539740 (and tp!2229317 tp!2229315))))

(declare-fun b!7636831 () Bool)

(declare-fun Unit!167823 () Unit!167820)

(assert (=> b!7636831 (= e!4539738 Unit!167823)))

(assert (= (and start!735266 res!3058772) b!7636826))

(assert (= (and b!7636826 res!3058773) b!7636827))

(assert (= (and b!7636827 res!3058770) b!7636822))

(assert (= (and b!7636822 (not res!3058771)) b!7636825))

(assert (= (and b!7636825 c!1406739) b!7636823))

(assert (= (and b!7636825 (not c!1406739)) b!7636831))

(assert (= (and b!7636823 res!3058768) b!7636820))

(assert (= (and b!7636825 (not res!3058769)) b!7636818))

(assert (= (and b!7636818 (not res!3058767)) b!7636828))

(assert (= (and start!735266 (is-ElementMatch!20418 r!14126)) b!7636829))

(assert (= (and start!735266 (is-Concat!29263 r!14126)) b!7636830))

(assert (= (and start!735266 (is-Star!20418 r!14126)) b!7636824))

(assert (= (and start!735266 (is-Union!20418 r!14126)) b!7636819))

(assert (= (and start!735266 (is-Cons!73145 s!9605)) b!7636821))

(declare-fun m!8161162 () Bool)

(assert (=> b!7636818 m!8161162))

(declare-fun m!8161164 () Bool)

(assert (=> b!7636818 m!8161164))

(declare-fun m!8161166 () Bool)

(assert (=> b!7636818 m!8161166))

(declare-fun m!8161168 () Bool)

(assert (=> b!7636818 m!8161168))

(declare-fun m!8161170 () Bool)

(assert (=> b!7636818 m!8161170))

(declare-fun m!8161172 () Bool)

(assert (=> b!7636818 m!8161172))

(declare-fun m!8161174 () Bool)

(assert (=> b!7636818 m!8161174))

(declare-fun m!8161176 () Bool)

(assert (=> b!7636818 m!8161176))

(declare-fun m!8161178 () Bool)

(assert (=> b!7636822 m!8161178))

(declare-fun m!8161180 () Bool)

(assert (=> b!7636822 m!8161180))

(declare-fun m!8161182 () Bool)

(assert (=> b!7636822 m!8161182))

(declare-fun m!8161184 () Bool)

(assert (=> b!7636822 m!8161184))

(declare-fun m!8161186 () Bool)

(assert (=> start!735266 m!8161186))

(declare-fun m!8161188 () Bool)

(assert (=> b!7636827 m!8161188))

(declare-fun m!8161190 () Bool)

(assert (=> b!7636823 m!8161190))

(declare-fun m!8161192 () Bool)

(assert (=> b!7636823 m!8161192))

(declare-fun m!8161194 () Bool)

(assert (=> b!7636823 m!8161194))

(declare-fun m!8161196 () Bool)

(assert (=> b!7636823 m!8161196))

(declare-fun m!8161198 () Bool)

(assert (=> b!7636823 m!8161198))

(declare-fun m!8161200 () Bool)

(assert (=> b!7636828 m!8161200))

(declare-fun m!8161202 () Bool)

(assert (=> b!7636825 m!8161202))

(assert (=> b!7636825 m!8161178))

(declare-fun m!8161204 () Bool)

(assert (=> b!7636825 m!8161204))

(declare-fun m!8161206 () Bool)

(assert (=> b!7636825 m!8161206))

(declare-fun m!8161208 () Bool)

(assert (=> b!7636825 m!8161208))

(declare-fun m!8161210 () Bool)

(assert (=> b!7636825 m!8161210))

(declare-fun m!8161212 () Bool)

(assert (=> b!7636825 m!8161212))

(declare-fun m!8161214 () Bool)

(assert (=> b!7636825 m!8161214))

(declare-fun m!8161216 () Bool)

(assert (=> b!7636825 m!8161216))

(push 1)

(assert tp_is_empty!51191)

(assert (not b!7636828))

(assert (not b!7636823))

(assert (not b!7636822))

(assert (not b!7636830))

(assert (not b!7636818))

(assert (not b!7636827))

(assert (not b!7636825))

(assert (not b!7636821))

(assert (not b!7636819))

(assert (not start!735266))

(assert (not b!7636824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2324733 () Bool)

(assert (=> d!2324733 (= (isEmpty!41776 s!9605) (is-Nil!73145 s!9605))))

(assert (=> b!7636827 d!2324733))

(declare-fun b!7636922 () Bool)

(declare-fun res!3058824 () Bool)

(declare-fun e!4539790 () Bool)

(assert (=> b!7636922 (=> (not res!3058824) (not e!4539790))))

(declare-fun call!700929 () Bool)

(assert (=> b!7636922 (= res!3058824 (not call!700929))))

(declare-fun b!7636923 () Bool)

(declare-fun res!3058825 () Bool)

(declare-fun e!4539787 () Bool)

(assert (=> b!7636923 (=> res!3058825 e!4539787)))

(assert (=> b!7636923 (= res!3058825 e!4539790)))

(declare-fun res!3058826 () Bool)

(assert (=> b!7636923 (=> (not res!3058826) (not e!4539790))))

(declare-fun lt!2660039 () Bool)

(assert (=> b!7636923 (= res!3058826 lt!2660039)))

(declare-fun b!7636924 () Bool)

(declare-fun e!4539789 () Bool)

(assert (=> b!7636924 (= e!4539787 e!4539789)))

(declare-fun res!3058827 () Bool)

(assert (=> b!7636924 (=> (not res!3058827) (not e!4539789))))

(assert (=> b!7636924 (= res!3058827 (not lt!2660039))))

(declare-fun b!7636925 () Bool)

(declare-fun e!4539791 () Bool)

(declare-fun derivativeStep!5904 (Regex!20418 C!41162) Regex!20418)

(declare-fun head!15704 (List!73269) C!41162)

(declare-fun tail!15244 (List!73269) List!73269)

(assert (=> b!7636925 (= e!4539791 (matchR!9921 (derivativeStep!5904 r!14126 (head!15704 s!9605)) (tail!15244 s!9605)))))

(declare-fun b!7636926 () Bool)

(declare-fun e!4539786 () Bool)

(assert (=> b!7636926 (= e!4539786 (not lt!2660039))))

(declare-fun b!7636927 () Bool)

(declare-fun e!4539788 () Bool)

(assert (=> b!7636927 (= e!4539789 e!4539788)))

(declare-fun res!3058823 () Bool)

(assert (=> b!7636927 (=> res!3058823 e!4539788)))

(assert (=> b!7636927 (= res!3058823 call!700929)))

(declare-fun b!7636928 () Bool)

(declare-fun res!3058828 () Bool)

(assert (=> b!7636928 (=> res!3058828 e!4539788)))

(assert (=> b!7636928 (= res!3058828 (not (isEmpty!41776 (tail!15244 s!9605))))))

(declare-fun b!7636929 () Bool)

(assert (=> b!7636929 (= e!4539788 (not (= (head!15704 s!9605) (c!1406740 r!14126))))))

(declare-fun b!7636930 () Bool)

(assert (=> b!7636930 (= e!4539791 (nullable!8931 r!14126))))

(declare-fun b!7636931 () Bool)

(declare-fun e!4539792 () Bool)

(assert (=> b!7636931 (= e!4539792 (= lt!2660039 call!700929))))

(declare-fun b!7636932 () Bool)

(assert (=> b!7636932 (= e!4539792 e!4539786)))

(declare-fun c!1406752 () Bool)

(assert (=> b!7636932 (= c!1406752 (is-EmptyLang!20418 r!14126))))

(declare-fun b!7636933 () Bool)

(assert (=> b!7636933 (= e!4539790 (= (head!15704 s!9605) (c!1406740 r!14126)))))

(declare-fun bm!700924 () Bool)

(assert (=> bm!700924 (= call!700929 (isEmpty!41776 s!9605))))

(declare-fun d!2324735 () Bool)

(assert (=> d!2324735 e!4539792))

(declare-fun c!1406753 () Bool)

(assert (=> d!2324735 (= c!1406753 (is-EmptyExpr!20418 r!14126))))

(assert (=> d!2324735 (= lt!2660039 e!4539791)))

(declare-fun c!1406751 () Bool)

(assert (=> d!2324735 (= c!1406751 (isEmpty!41776 s!9605))))

(assert (=> d!2324735 (validRegex!10836 r!14126)))

(assert (=> d!2324735 (= (matchR!9921 r!14126 s!9605) lt!2660039)))

(declare-fun b!7636934 () Bool)

(declare-fun res!3058830 () Bool)

(assert (=> b!7636934 (=> res!3058830 e!4539787)))

(assert (=> b!7636934 (= res!3058830 (not (is-ElementMatch!20418 r!14126)))))

(assert (=> b!7636934 (= e!4539786 e!4539787)))

(declare-fun b!7636935 () Bool)

(declare-fun res!3058829 () Bool)

(assert (=> b!7636935 (=> (not res!3058829) (not e!4539790))))

(assert (=> b!7636935 (= res!3058829 (isEmpty!41776 (tail!15244 s!9605)))))

(assert (= (and d!2324735 c!1406751) b!7636930))

(assert (= (and d!2324735 (not c!1406751)) b!7636925))

(assert (= (and d!2324735 c!1406753) b!7636931))

(assert (= (and d!2324735 (not c!1406753)) b!7636932))

(assert (= (and b!7636932 c!1406752) b!7636926))

(assert (= (and b!7636932 (not c!1406752)) b!7636934))

(assert (= (and b!7636934 (not res!3058830)) b!7636923))

(assert (= (and b!7636923 res!3058826) b!7636922))

(assert (= (and b!7636922 res!3058824) b!7636935))

(assert (= (and b!7636935 res!3058829) b!7636933))

(assert (= (and b!7636923 (not res!3058825)) b!7636924))

(assert (= (and b!7636924 res!3058827) b!7636927))

(assert (= (and b!7636927 (not res!3058823)) b!7636928))

(assert (= (and b!7636928 (not res!3058828)) b!7636929))

(assert (= (or b!7636931 b!7636922 b!7636927) bm!700924))

(assert (=> d!2324735 m!8161188))

(assert (=> d!2324735 m!8161186))

(declare-fun m!8161274 () Bool)

(assert (=> b!7636933 m!8161274))

(declare-fun m!8161276 () Bool)

(assert (=> b!7636928 m!8161276))

(assert (=> b!7636928 m!8161276))

(declare-fun m!8161278 () Bool)

(assert (=> b!7636928 m!8161278))

(assert (=> b!7636929 m!8161274))

(declare-fun m!8161280 () Bool)

(assert (=> b!7636930 m!8161280))

(assert (=> b!7636925 m!8161274))

(assert (=> b!7636925 m!8161274))

(declare-fun m!8161282 () Bool)

(assert (=> b!7636925 m!8161282))

(assert (=> b!7636925 m!8161276))

(assert (=> b!7636925 m!8161282))

(assert (=> b!7636925 m!8161276))

(declare-fun m!8161284 () Bool)

(assert (=> b!7636925 m!8161284))

(assert (=> b!7636935 m!8161276))

(assert (=> b!7636935 m!8161276))

(assert (=> b!7636935 m!8161278))

(assert (=> bm!700924 m!8161188))

(assert (=> b!7636825 d!2324735))

(declare-fun d!2324737 () Bool)

(assert (=> d!2324737 (= (get!25892 lt!2659995) (v!54625 lt!2659995))))

(assert (=> b!7636825 d!2324737))

(declare-fun d!2324741 () Bool)

(assert (=> d!2324741 (= (matchR!9921 r!14126 (_2!38000 lt!2659990)) (matchRSpec!4557 r!14126 (_2!38000 lt!2659990)))))

(declare-fun lt!2660042 () Unit!167820)

(declare-fun choose!58969 (Regex!20418 List!73269) Unit!167820)

(assert (=> d!2324741 (= lt!2660042 (choose!58969 r!14126 (_2!38000 lt!2659990)))))

(assert (=> d!2324741 (validRegex!10836 r!14126)))

(assert (=> d!2324741 (= (mainMatchTheorem!4543 r!14126 (_2!38000 lt!2659990)) lt!2660042)))

(declare-fun bs!1944349 () Bool)

(assert (= bs!1944349 d!2324741))

(assert (=> bs!1944349 m!8161206))

(assert (=> bs!1944349 m!8161204))

(declare-fun m!8161286 () Bool)

(assert (=> bs!1944349 m!8161286))

(assert (=> bs!1944349 m!8161186))

(assert (=> b!7636825 d!2324741))

(declare-fun d!2324743 () Bool)

(declare-fun choose!58970 (Int) Bool)

(assert (=> d!2324743 (= (Exists!4572 lambda!469436) (choose!58970 lambda!469436))))

(declare-fun bs!1944350 () Bool)

(assert (= bs!1944350 d!2324743))

(declare-fun m!8161288 () Bool)

(assert (=> bs!1944350 m!8161288))

(assert (=> b!7636825 d!2324743))

(declare-fun bs!1944353 () Bool)

(declare-fun b!7637002 () Bool)

(assert (= bs!1944353 (and b!7637002 b!7636822)))

(declare-fun lambda!469448 () Int)

(assert (=> bs!1944353 (not (= lambda!469448 lambda!469436))))

(assert (=> b!7637002 true))

(assert (=> b!7637002 true))

(declare-fun bs!1944354 () Bool)

(declare-fun b!7636995 () Bool)

(assert (= bs!1944354 (and b!7636995 b!7636822)))

(declare-fun lambda!469449 () Int)

(assert (=> bs!1944354 (not (= lambda!469449 lambda!469436))))

(declare-fun bs!1944355 () Bool)

(assert (= bs!1944355 (and b!7636995 b!7637002)))

(assert (=> bs!1944355 (not (= lambda!469449 lambda!469448))))

(assert (=> b!7636995 true))

(assert (=> b!7636995 true))

(declare-fun e!4539835 () Bool)

(declare-fun call!700944 () Bool)

(assert (=> b!7636995 (= e!4539835 call!700944)))

(declare-fun b!7636996 () Bool)

(declare-fun c!1406769 () Bool)

(assert (=> b!7636996 (= c!1406769 (is-ElementMatch!20418 r!14126))))

(declare-fun e!4539836 () Bool)

(declare-fun e!4539832 () Bool)

(assert (=> b!7636996 (= e!4539836 e!4539832)))

(declare-fun b!7636997 () Bool)

(declare-fun e!4539838 () Bool)

(assert (=> b!7636997 (= e!4539838 (matchRSpec!4557 (regTwo!41349 r!14126) (_2!38000 lt!2659990)))))

(declare-fun b!7636998 () Bool)

(assert (=> b!7636998 (= e!4539832 (= (_2!38000 lt!2659990) (Cons!73145 (c!1406740 r!14126) Nil!73145)))))

(declare-fun b!7636999 () Bool)

(declare-fun res!3058862 () Bool)

(declare-fun e!4539834 () Bool)

(assert (=> b!7636999 (=> res!3058862 e!4539834)))

(declare-fun call!700943 () Bool)

(assert (=> b!7636999 (= res!3058862 call!700943)))

(assert (=> b!7636999 (= e!4539835 e!4539834)))

(declare-fun d!2324745 () Bool)

(declare-fun c!1406770 () Bool)

(assert (=> d!2324745 (= c!1406770 (is-EmptyExpr!20418 r!14126))))

(declare-fun e!4539837 () Bool)

(assert (=> d!2324745 (= (matchRSpec!4557 r!14126 (_2!38000 lt!2659990)) e!4539837)))

(declare-fun bm!700938 () Bool)

(declare-fun c!1406771 () Bool)

(assert (=> bm!700938 (= call!700944 (Exists!4572 (ite c!1406771 lambda!469448 lambda!469449)))))

(declare-fun b!7637000 () Bool)

(declare-fun e!4539833 () Bool)

(assert (=> b!7637000 (= e!4539833 e!4539838)))

(declare-fun res!3058864 () Bool)

(assert (=> b!7637000 (= res!3058864 (matchRSpec!4557 (regOne!41349 r!14126) (_2!38000 lt!2659990)))))

(assert (=> b!7637000 (=> res!3058864 e!4539838)))

(declare-fun b!7637001 () Bool)

(declare-fun c!1406768 () Bool)

(assert (=> b!7637001 (= c!1406768 (is-Union!20418 r!14126))))

(assert (=> b!7637001 (= e!4539832 e!4539833)))

(declare-fun bm!700939 () Bool)

(assert (=> bm!700939 (= call!700943 (isEmpty!41776 (_2!38000 lt!2659990)))))

(assert (=> b!7637002 (= e!4539834 call!700944)))

(declare-fun b!7637003 () Bool)

(assert (=> b!7637003 (= e!4539837 e!4539836)))

(declare-fun res!3058863 () Bool)

(assert (=> b!7637003 (= res!3058863 (not (is-EmptyLang!20418 r!14126)))))

(assert (=> b!7637003 (=> (not res!3058863) (not e!4539836))))

(declare-fun b!7637004 () Bool)

(assert (=> b!7637004 (= e!4539833 e!4539835)))

(assert (=> b!7637004 (= c!1406771 (is-Star!20418 r!14126))))

(declare-fun b!7637005 () Bool)

(assert (=> b!7637005 (= e!4539837 call!700943)))

(assert (= (and d!2324745 c!1406770) b!7637005))

(assert (= (and d!2324745 (not c!1406770)) b!7637003))

(assert (= (and b!7637003 res!3058863) b!7636996))

(assert (= (and b!7636996 c!1406769) b!7636998))

(assert (= (and b!7636996 (not c!1406769)) b!7637001))

(assert (= (and b!7637001 c!1406768) b!7637000))

(assert (= (and b!7637001 (not c!1406768)) b!7637004))

(assert (= (and b!7637000 (not res!3058864)) b!7636997))

(assert (= (and b!7637004 c!1406771) b!7636999))

(assert (= (and b!7637004 (not c!1406771)) b!7636995))

(assert (= (and b!7636999 (not res!3058862)) b!7637002))

(assert (= (or b!7637002 b!7636995) bm!700938))

(assert (= (or b!7637005 b!7636999) bm!700939))

(declare-fun m!8161298 () Bool)

(assert (=> b!7636997 m!8161298))

(declare-fun m!8161300 () Bool)

(assert (=> bm!700938 m!8161300))

(declare-fun m!8161302 () Bool)

(assert (=> b!7637000 m!8161302))

(declare-fun m!8161304 () Bool)

(assert (=> bm!700939 m!8161304))

(assert (=> b!7636825 d!2324745))

(declare-fun d!2324753 () Bool)

(assert (=> d!2324753 (= (matchR!9921 (reg!20747 r!14126) (_1!38000 lt!2659990)) (matchRSpec!4557 (reg!20747 r!14126) (_1!38000 lt!2659990)))))

(declare-fun lt!2660043 () Unit!167820)

(assert (=> d!2324753 (= lt!2660043 (choose!58969 (reg!20747 r!14126) (_1!38000 lt!2659990)))))

(assert (=> d!2324753 (validRegex!10836 (reg!20747 r!14126))))

(assert (=> d!2324753 (= (mainMatchTheorem!4543 (reg!20747 r!14126) (_1!38000 lt!2659990)) lt!2660043)))

(declare-fun bs!1944356 () Bool)

(assert (= bs!1944356 d!2324753))

(assert (=> bs!1944356 m!8161202))

(assert (=> bs!1944356 m!8161210))

(declare-fun m!8161306 () Bool)

(assert (=> bs!1944356 m!8161306))

(declare-fun m!8161308 () Bool)

(assert (=> bs!1944356 m!8161308))

(assert (=> b!7636825 d!2324753))

(declare-fun b!7637006 () Bool)

(declare-fun res!3058866 () Bool)

(declare-fun e!4539843 () Bool)

(assert (=> b!7637006 (=> (not res!3058866) (not e!4539843))))

(declare-fun call!700945 () Bool)

(assert (=> b!7637006 (= res!3058866 (not call!700945))))

(declare-fun b!7637007 () Bool)

(declare-fun res!3058867 () Bool)

(declare-fun e!4539840 () Bool)

(assert (=> b!7637007 (=> res!3058867 e!4539840)))

(assert (=> b!7637007 (= res!3058867 e!4539843)))

(declare-fun res!3058868 () Bool)

(assert (=> b!7637007 (=> (not res!3058868) (not e!4539843))))

(declare-fun lt!2660044 () Bool)

(assert (=> b!7637007 (= res!3058868 lt!2660044)))

(declare-fun b!7637008 () Bool)

(declare-fun e!4539842 () Bool)

(assert (=> b!7637008 (= e!4539840 e!4539842)))

(declare-fun res!3058869 () Bool)

(assert (=> b!7637008 (=> (not res!3058869) (not e!4539842))))

(assert (=> b!7637008 (= res!3058869 (not lt!2660044))))

(declare-fun b!7637009 () Bool)

(declare-fun e!4539844 () Bool)

(assert (=> b!7637009 (= e!4539844 (matchR!9921 (derivativeStep!5904 (reg!20747 r!14126) (head!15704 (_1!38000 lt!2659990))) (tail!15244 (_1!38000 lt!2659990))))))

(declare-fun b!7637010 () Bool)

(declare-fun e!4539839 () Bool)

(assert (=> b!7637010 (= e!4539839 (not lt!2660044))))

(declare-fun b!7637011 () Bool)

(declare-fun e!4539841 () Bool)

(assert (=> b!7637011 (= e!4539842 e!4539841)))

(declare-fun res!3058865 () Bool)

(assert (=> b!7637011 (=> res!3058865 e!4539841)))

(assert (=> b!7637011 (= res!3058865 call!700945)))

(declare-fun b!7637012 () Bool)

(declare-fun res!3058870 () Bool)

(assert (=> b!7637012 (=> res!3058870 e!4539841)))

(assert (=> b!7637012 (= res!3058870 (not (isEmpty!41776 (tail!15244 (_1!38000 lt!2659990)))))))

(declare-fun b!7637013 () Bool)

(assert (=> b!7637013 (= e!4539841 (not (= (head!15704 (_1!38000 lt!2659990)) (c!1406740 (reg!20747 r!14126)))))))

(declare-fun b!7637014 () Bool)

(assert (=> b!7637014 (= e!4539844 (nullable!8931 (reg!20747 r!14126)))))

(declare-fun b!7637015 () Bool)

(declare-fun e!4539845 () Bool)

(assert (=> b!7637015 (= e!4539845 (= lt!2660044 call!700945))))

(declare-fun b!7637016 () Bool)

(assert (=> b!7637016 (= e!4539845 e!4539839)))

(declare-fun c!1406773 () Bool)

(assert (=> b!7637016 (= c!1406773 (is-EmptyLang!20418 (reg!20747 r!14126)))))

(declare-fun b!7637017 () Bool)

(assert (=> b!7637017 (= e!4539843 (= (head!15704 (_1!38000 lt!2659990)) (c!1406740 (reg!20747 r!14126))))))

(declare-fun bm!700940 () Bool)

(assert (=> bm!700940 (= call!700945 (isEmpty!41776 (_1!38000 lt!2659990)))))

(declare-fun d!2324755 () Bool)

(assert (=> d!2324755 e!4539845))

(declare-fun c!1406774 () Bool)

(assert (=> d!2324755 (= c!1406774 (is-EmptyExpr!20418 (reg!20747 r!14126)))))

(assert (=> d!2324755 (= lt!2660044 e!4539844)))

(declare-fun c!1406772 () Bool)

(assert (=> d!2324755 (= c!1406772 (isEmpty!41776 (_1!38000 lt!2659990)))))

(assert (=> d!2324755 (validRegex!10836 (reg!20747 r!14126))))

(assert (=> d!2324755 (= (matchR!9921 (reg!20747 r!14126) (_1!38000 lt!2659990)) lt!2660044)))

(declare-fun b!7637018 () Bool)

(declare-fun res!3058872 () Bool)

(assert (=> b!7637018 (=> res!3058872 e!4539840)))

(assert (=> b!7637018 (= res!3058872 (not (is-ElementMatch!20418 (reg!20747 r!14126))))))

(assert (=> b!7637018 (= e!4539839 e!4539840)))

(declare-fun b!7637019 () Bool)

(declare-fun res!3058871 () Bool)

(assert (=> b!7637019 (=> (not res!3058871) (not e!4539843))))

(assert (=> b!7637019 (= res!3058871 (isEmpty!41776 (tail!15244 (_1!38000 lt!2659990))))))

(assert (= (and d!2324755 c!1406772) b!7637014))

(assert (= (and d!2324755 (not c!1406772)) b!7637009))

(assert (= (and d!2324755 c!1406774) b!7637015))

(assert (= (and d!2324755 (not c!1406774)) b!7637016))

(assert (= (and b!7637016 c!1406773) b!7637010))

(assert (= (and b!7637016 (not c!1406773)) b!7637018))

(assert (= (and b!7637018 (not res!3058872)) b!7637007))

(assert (= (and b!7637007 res!3058868) b!7637006))

(assert (= (and b!7637006 res!3058866) b!7637019))

(assert (= (and b!7637019 res!3058871) b!7637017))

(assert (= (and b!7637007 (not res!3058867)) b!7637008))

(assert (= (and b!7637008 res!3058869) b!7637011))

(assert (= (and b!7637011 (not res!3058865)) b!7637012))

(assert (= (and b!7637012 (not res!3058870)) b!7637013))

(assert (= (or b!7637015 b!7637006 b!7637011) bm!700940))

(declare-fun m!8161310 () Bool)

(assert (=> d!2324755 m!8161310))

(assert (=> d!2324755 m!8161308))

(declare-fun m!8161312 () Bool)

(assert (=> b!7637017 m!8161312))

(declare-fun m!8161314 () Bool)

(assert (=> b!7637012 m!8161314))

(assert (=> b!7637012 m!8161314))

(declare-fun m!8161316 () Bool)

(assert (=> b!7637012 m!8161316))

(assert (=> b!7637013 m!8161312))

(assert (=> b!7637014 m!8161174))

(assert (=> b!7637009 m!8161312))

(assert (=> b!7637009 m!8161312))

(declare-fun m!8161318 () Bool)

(assert (=> b!7637009 m!8161318))

(assert (=> b!7637009 m!8161314))

(assert (=> b!7637009 m!8161318))

(assert (=> b!7637009 m!8161314))

(declare-fun m!8161320 () Bool)

(assert (=> b!7637009 m!8161320))

(assert (=> b!7637019 m!8161314))

(assert (=> b!7637019 m!8161314))

(assert (=> b!7637019 m!8161316))

(assert (=> bm!700940 m!8161310))

(assert (=> b!7636825 d!2324755))

(declare-fun bs!1944357 () Bool)

(declare-fun b!7637027 () Bool)

(assert (= bs!1944357 (and b!7637027 b!7636822)))

(declare-fun lambda!469450 () Int)

(assert (=> bs!1944357 (not (= lambda!469450 lambda!469436))))

(declare-fun bs!1944358 () Bool)

(assert (= bs!1944358 (and b!7637027 b!7637002)))

(assert (=> bs!1944358 (= (and (= (_1!38000 lt!2659990) (_2!38000 lt!2659990)) (= (reg!20747 (reg!20747 r!14126)) (reg!20747 r!14126)) (= (reg!20747 r!14126) r!14126)) (= lambda!469450 lambda!469448))))

(declare-fun bs!1944359 () Bool)

(assert (= bs!1944359 (and b!7637027 b!7636995)))

(assert (=> bs!1944359 (not (= lambda!469450 lambda!469449))))

(assert (=> b!7637027 true))

(assert (=> b!7637027 true))

(declare-fun bs!1944360 () Bool)

(declare-fun b!7637020 () Bool)

(assert (= bs!1944360 (and b!7637020 b!7636822)))

(declare-fun lambda!469451 () Int)

(assert (=> bs!1944360 (not (= lambda!469451 lambda!469436))))

(declare-fun bs!1944361 () Bool)

(assert (= bs!1944361 (and b!7637020 b!7637002)))

(assert (=> bs!1944361 (not (= lambda!469451 lambda!469448))))

(declare-fun bs!1944362 () Bool)

(assert (= bs!1944362 (and b!7637020 b!7636995)))

(assert (=> bs!1944362 (= (and (= (_1!38000 lt!2659990) (_2!38000 lt!2659990)) (= (regOne!41348 (reg!20747 r!14126)) (regOne!41348 r!14126)) (= (regTwo!41348 (reg!20747 r!14126)) (regTwo!41348 r!14126))) (= lambda!469451 lambda!469449))))

(declare-fun bs!1944363 () Bool)

(assert (= bs!1944363 (and b!7637020 b!7637027)))

(assert (=> bs!1944363 (not (= lambda!469451 lambda!469450))))

(assert (=> b!7637020 true))

(assert (=> b!7637020 true))

(declare-fun e!4539849 () Bool)

(declare-fun call!700947 () Bool)

(assert (=> b!7637020 (= e!4539849 call!700947)))

(declare-fun b!7637021 () Bool)

(declare-fun c!1406776 () Bool)

(assert (=> b!7637021 (= c!1406776 (is-ElementMatch!20418 (reg!20747 r!14126)))))

(declare-fun e!4539850 () Bool)

(declare-fun e!4539846 () Bool)

(assert (=> b!7637021 (= e!4539850 e!4539846)))

(declare-fun b!7637022 () Bool)

(declare-fun e!4539852 () Bool)

(assert (=> b!7637022 (= e!4539852 (matchRSpec!4557 (regTwo!41349 (reg!20747 r!14126)) (_1!38000 lt!2659990)))))

(declare-fun b!7637023 () Bool)

(assert (=> b!7637023 (= e!4539846 (= (_1!38000 lt!2659990) (Cons!73145 (c!1406740 (reg!20747 r!14126)) Nil!73145)))))

(declare-fun b!7637024 () Bool)

(declare-fun res!3058873 () Bool)

(declare-fun e!4539848 () Bool)

(assert (=> b!7637024 (=> res!3058873 e!4539848)))

(declare-fun call!700946 () Bool)

(assert (=> b!7637024 (= res!3058873 call!700946)))

(assert (=> b!7637024 (= e!4539849 e!4539848)))

(declare-fun d!2324757 () Bool)

(declare-fun c!1406777 () Bool)

(assert (=> d!2324757 (= c!1406777 (is-EmptyExpr!20418 (reg!20747 r!14126)))))

(declare-fun e!4539851 () Bool)

(assert (=> d!2324757 (= (matchRSpec!4557 (reg!20747 r!14126) (_1!38000 lt!2659990)) e!4539851)))

(declare-fun bm!700941 () Bool)

(declare-fun c!1406778 () Bool)

(assert (=> bm!700941 (= call!700947 (Exists!4572 (ite c!1406778 lambda!469450 lambda!469451)))))

(declare-fun b!7637025 () Bool)

(declare-fun e!4539847 () Bool)

(assert (=> b!7637025 (= e!4539847 e!4539852)))

(declare-fun res!3058875 () Bool)

(assert (=> b!7637025 (= res!3058875 (matchRSpec!4557 (regOne!41349 (reg!20747 r!14126)) (_1!38000 lt!2659990)))))

(assert (=> b!7637025 (=> res!3058875 e!4539852)))

(declare-fun b!7637026 () Bool)

(declare-fun c!1406775 () Bool)

(assert (=> b!7637026 (= c!1406775 (is-Union!20418 (reg!20747 r!14126)))))

(assert (=> b!7637026 (= e!4539846 e!4539847)))

(declare-fun bm!700942 () Bool)

(assert (=> bm!700942 (= call!700946 (isEmpty!41776 (_1!38000 lt!2659990)))))

(assert (=> b!7637027 (= e!4539848 call!700947)))

(declare-fun b!7637028 () Bool)

(assert (=> b!7637028 (= e!4539851 e!4539850)))

(declare-fun res!3058874 () Bool)

(assert (=> b!7637028 (= res!3058874 (not (is-EmptyLang!20418 (reg!20747 r!14126))))))

(assert (=> b!7637028 (=> (not res!3058874) (not e!4539850))))

(declare-fun b!7637029 () Bool)

(assert (=> b!7637029 (= e!4539847 e!4539849)))

(assert (=> b!7637029 (= c!1406778 (is-Star!20418 (reg!20747 r!14126)))))

(declare-fun b!7637030 () Bool)

(assert (=> b!7637030 (= e!4539851 call!700946)))

(assert (= (and d!2324757 c!1406777) b!7637030))

(assert (= (and d!2324757 (not c!1406777)) b!7637028))

(assert (= (and b!7637028 res!3058874) b!7637021))

(assert (= (and b!7637021 c!1406776) b!7637023))

(assert (= (and b!7637021 (not c!1406776)) b!7637026))

(assert (= (and b!7637026 c!1406775) b!7637025))

(assert (= (and b!7637026 (not c!1406775)) b!7637029))

(assert (= (and b!7637025 (not res!3058875)) b!7637022))

(assert (= (and b!7637029 c!1406778) b!7637024))

(assert (= (and b!7637029 (not c!1406778)) b!7637020))

(assert (= (and b!7637024 (not res!3058873)) b!7637027))

(assert (= (or b!7637027 b!7637020) bm!700941))

(assert (= (or b!7637030 b!7637024) bm!700942))

(declare-fun m!8161322 () Bool)

(assert (=> b!7637022 m!8161322))

(declare-fun m!8161324 () Bool)

(assert (=> bm!700941 m!8161324))

(declare-fun m!8161326 () Bool)

(assert (=> b!7637025 m!8161326))

(assert (=> bm!700942 m!8161310))

(assert (=> b!7636825 d!2324757))

(declare-fun b!7637031 () Bool)

(declare-fun res!3058877 () Bool)

(declare-fun e!4539857 () Bool)

(assert (=> b!7637031 (=> (not res!3058877) (not e!4539857))))

(declare-fun call!700948 () Bool)

(assert (=> b!7637031 (= res!3058877 (not call!700948))))

(declare-fun b!7637032 () Bool)

(declare-fun res!3058878 () Bool)

(declare-fun e!4539854 () Bool)

(assert (=> b!7637032 (=> res!3058878 e!4539854)))

(assert (=> b!7637032 (= res!3058878 e!4539857)))

(declare-fun res!3058879 () Bool)

(assert (=> b!7637032 (=> (not res!3058879) (not e!4539857))))

(declare-fun lt!2660045 () Bool)

(assert (=> b!7637032 (= res!3058879 lt!2660045)))

(declare-fun b!7637033 () Bool)

(declare-fun e!4539856 () Bool)

(assert (=> b!7637033 (= e!4539854 e!4539856)))

(declare-fun res!3058880 () Bool)

(assert (=> b!7637033 (=> (not res!3058880) (not e!4539856))))

(assert (=> b!7637033 (= res!3058880 (not lt!2660045))))

(declare-fun b!7637034 () Bool)

(declare-fun e!4539858 () Bool)

(assert (=> b!7637034 (= e!4539858 (matchR!9921 (derivativeStep!5904 r!14126 (head!15704 (_2!38000 lt!2659990))) (tail!15244 (_2!38000 lt!2659990))))))

(declare-fun b!7637035 () Bool)

(declare-fun e!4539853 () Bool)

(assert (=> b!7637035 (= e!4539853 (not lt!2660045))))

(declare-fun b!7637036 () Bool)

(declare-fun e!4539855 () Bool)

(assert (=> b!7637036 (= e!4539856 e!4539855)))

(declare-fun res!3058876 () Bool)

(assert (=> b!7637036 (=> res!3058876 e!4539855)))

(assert (=> b!7637036 (= res!3058876 call!700948)))

(declare-fun b!7637037 () Bool)

(declare-fun res!3058881 () Bool)

(assert (=> b!7637037 (=> res!3058881 e!4539855)))

(assert (=> b!7637037 (= res!3058881 (not (isEmpty!41776 (tail!15244 (_2!38000 lt!2659990)))))))

(declare-fun b!7637038 () Bool)

(assert (=> b!7637038 (= e!4539855 (not (= (head!15704 (_2!38000 lt!2659990)) (c!1406740 r!14126))))))

(declare-fun b!7637039 () Bool)

(assert (=> b!7637039 (= e!4539858 (nullable!8931 r!14126))))

(declare-fun b!7637040 () Bool)

(declare-fun e!4539859 () Bool)

(assert (=> b!7637040 (= e!4539859 (= lt!2660045 call!700948))))

(declare-fun b!7637041 () Bool)

(assert (=> b!7637041 (= e!4539859 e!4539853)))

(declare-fun c!1406780 () Bool)

(assert (=> b!7637041 (= c!1406780 (is-EmptyLang!20418 r!14126))))

(declare-fun b!7637042 () Bool)

(assert (=> b!7637042 (= e!4539857 (= (head!15704 (_2!38000 lt!2659990)) (c!1406740 r!14126)))))

(declare-fun bm!700943 () Bool)

(assert (=> bm!700943 (= call!700948 (isEmpty!41776 (_2!38000 lt!2659990)))))

(declare-fun d!2324759 () Bool)

(assert (=> d!2324759 e!4539859))

(declare-fun c!1406781 () Bool)

(assert (=> d!2324759 (= c!1406781 (is-EmptyExpr!20418 r!14126))))

(assert (=> d!2324759 (= lt!2660045 e!4539858)))

(declare-fun c!1406779 () Bool)

(assert (=> d!2324759 (= c!1406779 (isEmpty!41776 (_2!38000 lt!2659990)))))

(assert (=> d!2324759 (validRegex!10836 r!14126)))

(assert (=> d!2324759 (= (matchR!9921 r!14126 (_2!38000 lt!2659990)) lt!2660045)))

(declare-fun b!7637043 () Bool)

(declare-fun res!3058883 () Bool)

(assert (=> b!7637043 (=> res!3058883 e!4539854)))

(assert (=> b!7637043 (= res!3058883 (not (is-ElementMatch!20418 r!14126)))))

(assert (=> b!7637043 (= e!4539853 e!4539854)))

(declare-fun b!7637044 () Bool)

(declare-fun res!3058882 () Bool)

(assert (=> b!7637044 (=> (not res!3058882) (not e!4539857))))

(assert (=> b!7637044 (= res!3058882 (isEmpty!41776 (tail!15244 (_2!38000 lt!2659990))))))

(assert (= (and d!2324759 c!1406779) b!7637039))

(assert (= (and d!2324759 (not c!1406779)) b!7637034))

(assert (= (and d!2324759 c!1406781) b!7637040))

(assert (= (and d!2324759 (not c!1406781)) b!7637041))

(assert (= (and b!7637041 c!1406780) b!7637035))

(assert (= (and b!7637041 (not c!1406780)) b!7637043))

(assert (= (and b!7637043 (not res!3058883)) b!7637032))

(assert (= (and b!7637032 res!3058879) b!7637031))

(assert (= (and b!7637031 res!3058877) b!7637044))

(assert (= (and b!7637044 res!3058882) b!7637042))

(assert (= (and b!7637032 (not res!3058878)) b!7637033))

(assert (= (and b!7637033 res!3058880) b!7637036))

(assert (= (and b!7637036 (not res!3058876)) b!7637037))

(assert (= (and b!7637037 (not res!3058881)) b!7637038))

(assert (= (or b!7637040 b!7637031 b!7637036) bm!700943))

(assert (=> d!2324759 m!8161304))

(assert (=> d!2324759 m!8161186))

(declare-fun m!8161328 () Bool)

(assert (=> b!7637042 m!8161328))

(declare-fun m!8161330 () Bool)

(assert (=> b!7637037 m!8161330))

(assert (=> b!7637037 m!8161330))

(declare-fun m!8161332 () Bool)

(assert (=> b!7637037 m!8161332))

(assert (=> b!7637038 m!8161328))

(assert (=> b!7637039 m!8161280))

(assert (=> b!7637034 m!8161328))

(assert (=> b!7637034 m!8161328))

(declare-fun m!8161334 () Bool)

(assert (=> b!7637034 m!8161334))

(assert (=> b!7637034 m!8161330))

(assert (=> b!7637034 m!8161334))

(assert (=> b!7637034 m!8161330))

(declare-fun m!8161336 () Bool)

(assert (=> b!7637034 m!8161336))

(assert (=> b!7637044 m!8161330))

(assert (=> b!7637044 m!8161330))

(assert (=> b!7637044 m!8161332))

(assert (=> bm!700943 m!8161304))

(assert (=> b!7636825 d!2324759))

(declare-fun bs!1944364 () Bool)

(declare-fun b!7637052 () Bool)

(assert (= bs!1944364 (and b!7637052 b!7637027)))

(declare-fun lambda!469452 () Int)

(assert (=> bs!1944364 (= (= (_1!38000 lt!2659986) (_1!38000 lt!2659990)) (= lambda!469452 lambda!469450))))

(declare-fun bs!1944365 () Bool)

(assert (= bs!1944365 (and b!7637052 b!7636995)))

(assert (=> bs!1944365 (not (= lambda!469452 lambda!469449))))

(declare-fun bs!1944366 () Bool)

(assert (= bs!1944366 (and b!7637052 b!7637002)))

(assert (=> bs!1944366 (= (and (= (_1!38000 lt!2659986) (_2!38000 lt!2659990)) (= (reg!20747 (reg!20747 r!14126)) (reg!20747 r!14126)) (= (reg!20747 r!14126) r!14126)) (= lambda!469452 lambda!469448))))

(declare-fun bs!1944367 () Bool)

(assert (= bs!1944367 (and b!7637052 b!7636822)))

(assert (=> bs!1944367 (not (= lambda!469452 lambda!469436))))

(declare-fun bs!1944368 () Bool)

(assert (= bs!1944368 (and b!7637052 b!7637020)))

(assert (=> bs!1944368 (not (= lambda!469452 lambda!469451))))

(assert (=> b!7637052 true))

(assert (=> b!7637052 true))

(declare-fun bs!1944369 () Bool)

(declare-fun b!7637045 () Bool)

(assert (= bs!1944369 (and b!7637045 b!7637027)))

(declare-fun lambda!469453 () Int)

(assert (=> bs!1944369 (not (= lambda!469453 lambda!469450))))

(declare-fun bs!1944370 () Bool)

(assert (= bs!1944370 (and b!7637045 b!7636995)))

(assert (=> bs!1944370 (= (and (= (_1!38000 lt!2659986) (_2!38000 lt!2659990)) (= (regOne!41348 (reg!20747 r!14126)) (regOne!41348 r!14126)) (= (regTwo!41348 (reg!20747 r!14126)) (regTwo!41348 r!14126))) (= lambda!469453 lambda!469449))))

(declare-fun bs!1944371 () Bool)

(assert (= bs!1944371 (and b!7637045 b!7637052)))

(assert (=> bs!1944371 (not (= lambda!469453 lambda!469452))))

(declare-fun bs!1944372 () Bool)

(assert (= bs!1944372 (and b!7637045 b!7637002)))

(assert (=> bs!1944372 (not (= lambda!469453 lambda!469448))))

(declare-fun bs!1944373 () Bool)

(assert (= bs!1944373 (and b!7637045 b!7636822)))

(assert (=> bs!1944373 (not (= lambda!469453 lambda!469436))))

(declare-fun bs!1944374 () Bool)

(assert (= bs!1944374 (and b!7637045 b!7637020)))

(assert (=> bs!1944374 (= (= (_1!38000 lt!2659986) (_1!38000 lt!2659990)) (= lambda!469453 lambda!469451))))

(assert (=> b!7637045 true))

(assert (=> b!7637045 true))

(declare-fun e!4539863 () Bool)

(declare-fun call!700950 () Bool)

(assert (=> b!7637045 (= e!4539863 call!700950)))

(declare-fun b!7637046 () Bool)

(declare-fun c!1406783 () Bool)

(assert (=> b!7637046 (= c!1406783 (is-ElementMatch!20418 (reg!20747 r!14126)))))

(declare-fun e!4539864 () Bool)

(declare-fun e!4539860 () Bool)

(assert (=> b!7637046 (= e!4539864 e!4539860)))

(declare-fun b!7637047 () Bool)

(declare-fun e!4539866 () Bool)

(assert (=> b!7637047 (= e!4539866 (matchRSpec!4557 (regTwo!41349 (reg!20747 r!14126)) (_1!38000 lt!2659986)))))

(declare-fun b!7637048 () Bool)

(assert (=> b!7637048 (= e!4539860 (= (_1!38000 lt!2659986) (Cons!73145 (c!1406740 (reg!20747 r!14126)) Nil!73145)))))

(declare-fun b!7637049 () Bool)

(declare-fun res!3058884 () Bool)

(declare-fun e!4539862 () Bool)

(assert (=> b!7637049 (=> res!3058884 e!4539862)))

(declare-fun call!700949 () Bool)

(assert (=> b!7637049 (= res!3058884 call!700949)))

(assert (=> b!7637049 (= e!4539863 e!4539862)))

(declare-fun d!2324761 () Bool)

(declare-fun c!1406784 () Bool)

(assert (=> d!2324761 (= c!1406784 (is-EmptyExpr!20418 (reg!20747 r!14126)))))

(declare-fun e!4539865 () Bool)

(assert (=> d!2324761 (= (matchRSpec!4557 (reg!20747 r!14126) (_1!38000 lt!2659986)) e!4539865)))

(declare-fun bm!700944 () Bool)

(declare-fun c!1406785 () Bool)

(assert (=> bm!700944 (= call!700950 (Exists!4572 (ite c!1406785 lambda!469452 lambda!469453)))))

(declare-fun b!7637050 () Bool)

(declare-fun e!4539861 () Bool)

(assert (=> b!7637050 (= e!4539861 e!4539866)))

(declare-fun res!3058886 () Bool)

(assert (=> b!7637050 (= res!3058886 (matchRSpec!4557 (regOne!41349 (reg!20747 r!14126)) (_1!38000 lt!2659986)))))

(assert (=> b!7637050 (=> res!3058886 e!4539866)))

(declare-fun b!7637051 () Bool)

(declare-fun c!1406782 () Bool)

(assert (=> b!7637051 (= c!1406782 (is-Union!20418 (reg!20747 r!14126)))))

(assert (=> b!7637051 (= e!4539860 e!4539861)))

(declare-fun bm!700945 () Bool)

(assert (=> bm!700945 (= call!700949 (isEmpty!41776 (_1!38000 lt!2659986)))))

(assert (=> b!7637052 (= e!4539862 call!700950)))

(declare-fun b!7637053 () Bool)

(assert (=> b!7637053 (= e!4539865 e!4539864)))

(declare-fun res!3058885 () Bool)

(assert (=> b!7637053 (= res!3058885 (not (is-EmptyLang!20418 (reg!20747 r!14126))))))

(assert (=> b!7637053 (=> (not res!3058885) (not e!4539864))))

(declare-fun b!7637054 () Bool)

(assert (=> b!7637054 (= e!4539861 e!4539863)))

(assert (=> b!7637054 (= c!1406785 (is-Star!20418 (reg!20747 r!14126)))))

(declare-fun b!7637055 () Bool)

(assert (=> b!7637055 (= e!4539865 call!700949)))

(assert (= (and d!2324761 c!1406784) b!7637055))

(assert (= (and d!2324761 (not c!1406784)) b!7637053))

(assert (= (and b!7637053 res!3058885) b!7637046))

(assert (= (and b!7637046 c!1406783) b!7637048))

(assert (= (and b!7637046 (not c!1406783)) b!7637051))

(assert (= (and b!7637051 c!1406782) b!7637050))

(assert (= (and b!7637051 (not c!1406782)) b!7637054))

(assert (= (and b!7637050 (not res!3058886)) b!7637047))

(assert (= (and b!7637054 c!1406785) b!7637049))

(assert (= (and b!7637054 (not c!1406785)) b!7637045))

(assert (= (and b!7637049 (not res!3058884)) b!7637052))

(assert (= (or b!7637052 b!7637045) bm!700944))

(assert (= (or b!7637055 b!7637049) bm!700945))

(declare-fun m!8161338 () Bool)

(assert (=> b!7637047 m!8161338))

(declare-fun m!8161340 () Bool)

(assert (=> bm!700944 m!8161340))

(declare-fun m!8161342 () Bool)

(assert (=> b!7637050 m!8161342))

(assert (=> bm!700945 m!8161200))

(assert (=> b!7636818 d!2324761))

(declare-fun d!2324763 () Bool)

(assert (=> d!2324763 (= (matchR!9921 r!14126 (_2!38000 lt!2659986)) (matchRSpec!4557 r!14126 (_2!38000 lt!2659986)))))

(declare-fun lt!2660046 () Unit!167820)

(assert (=> d!2324763 (= lt!2660046 (choose!58969 r!14126 (_2!38000 lt!2659986)))))

(assert (=> d!2324763 (validRegex!10836 r!14126)))

(assert (=> d!2324763 (= (mainMatchTheorem!4543 r!14126 (_2!38000 lt!2659986)) lt!2660046)))

(declare-fun bs!1944375 () Bool)

(assert (= bs!1944375 d!2324763))

(assert (=> bs!1944375 m!8161162))

(assert (=> bs!1944375 m!8161168))

(declare-fun m!8161344 () Bool)

(assert (=> bs!1944375 m!8161344))

(assert (=> bs!1944375 m!8161186))

(assert (=> b!7636818 d!2324763))

(declare-fun d!2324765 () Bool)

(declare-fun nullableFct!3550 (Regex!20418) Bool)

(assert (=> d!2324765 (= (nullable!8931 (reg!20747 r!14126)) (nullableFct!3550 (reg!20747 r!14126)))))

(declare-fun bs!1944376 () Bool)

(assert (= bs!1944376 d!2324765))

(declare-fun m!8161346 () Bool)

(assert (=> bs!1944376 m!8161346))

(assert (=> b!7636818 d!2324765))

(declare-fun d!2324767 () Bool)

(declare-fun lt!2660049 () tuple2!69394)

(declare-fun dynLambda!29929 (Int tuple2!69394) Bool)

(assert (=> d!2324767 (dynLambda!29929 lambda!469436 lt!2660049)))

(declare-fun choose!58971 (Int) tuple2!69394)

(assert (=> d!2324767 (= lt!2660049 (choose!58971 lambda!469436))))

(assert (=> d!2324767 (Exists!4572 lambda!469436)))

(assert (=> d!2324767 (= (pickWitness!483 lambda!469436) lt!2660049)))

(declare-fun b_lambda!289083 () Bool)

(assert (=> (not b_lambda!289083) (not d!2324767)))

(declare-fun bs!1944377 () Bool)

(assert (= bs!1944377 d!2324767))

(declare-fun m!8161348 () Bool)

(assert (=> bs!1944377 m!8161348))

(declare-fun m!8161350 () Bool)

(assert (=> bs!1944377 m!8161350))

(assert (=> bs!1944377 m!8161178))

(assert (=> b!7636818 d!2324767))

(declare-fun d!2324769 () Bool)

(assert (=> d!2324769 (= (matchR!9921 (reg!20747 r!14126) (_1!38000 lt!2659986)) (matchRSpec!4557 (reg!20747 r!14126) (_1!38000 lt!2659986)))))

(declare-fun lt!2660050 () Unit!167820)

(assert (=> d!2324769 (= lt!2660050 (choose!58969 (reg!20747 r!14126) (_1!38000 lt!2659986)))))

(assert (=> d!2324769 (validRegex!10836 (reg!20747 r!14126))))

(assert (=> d!2324769 (= (mainMatchTheorem!4543 (reg!20747 r!14126) (_1!38000 lt!2659986)) lt!2660050)))

(declare-fun bs!1944378 () Bool)

(assert (= bs!1944378 d!2324769))

(assert (=> bs!1944378 m!8161172))

(assert (=> bs!1944378 m!8161164))

(declare-fun m!8161352 () Bool)

(assert (=> bs!1944378 m!8161352))

(assert (=> bs!1944378 m!8161308))

(assert (=> b!7636818 d!2324769))

(declare-fun b!7637056 () Bool)

(declare-fun res!3058888 () Bool)

(declare-fun e!4539871 () Bool)

(assert (=> b!7637056 (=> (not res!3058888) (not e!4539871))))

(declare-fun call!700951 () Bool)

(assert (=> b!7637056 (= res!3058888 (not call!700951))))

(declare-fun b!7637057 () Bool)

(declare-fun res!3058889 () Bool)

(declare-fun e!4539868 () Bool)

(assert (=> b!7637057 (=> res!3058889 e!4539868)))

(assert (=> b!7637057 (= res!3058889 e!4539871)))

(declare-fun res!3058890 () Bool)

(assert (=> b!7637057 (=> (not res!3058890) (not e!4539871))))

(declare-fun lt!2660051 () Bool)

(assert (=> b!7637057 (= res!3058890 lt!2660051)))

(declare-fun b!7637058 () Bool)

(declare-fun e!4539870 () Bool)

(assert (=> b!7637058 (= e!4539868 e!4539870)))

(declare-fun res!3058891 () Bool)

(assert (=> b!7637058 (=> (not res!3058891) (not e!4539870))))

(assert (=> b!7637058 (= res!3058891 (not lt!2660051))))

(declare-fun b!7637059 () Bool)

(declare-fun e!4539872 () Bool)

(assert (=> b!7637059 (= e!4539872 (matchR!9921 (derivativeStep!5904 r!14126 (head!15704 (_2!38000 lt!2659986))) (tail!15244 (_2!38000 lt!2659986))))))

(declare-fun b!7637060 () Bool)

(declare-fun e!4539867 () Bool)

(assert (=> b!7637060 (= e!4539867 (not lt!2660051))))

(declare-fun b!7637061 () Bool)

(declare-fun e!4539869 () Bool)

(assert (=> b!7637061 (= e!4539870 e!4539869)))

(declare-fun res!3058887 () Bool)

(assert (=> b!7637061 (=> res!3058887 e!4539869)))

(assert (=> b!7637061 (= res!3058887 call!700951)))

(declare-fun b!7637062 () Bool)

(declare-fun res!3058892 () Bool)

(assert (=> b!7637062 (=> res!3058892 e!4539869)))

(assert (=> b!7637062 (= res!3058892 (not (isEmpty!41776 (tail!15244 (_2!38000 lt!2659986)))))))

(declare-fun b!7637063 () Bool)

(assert (=> b!7637063 (= e!4539869 (not (= (head!15704 (_2!38000 lt!2659986)) (c!1406740 r!14126))))))

(declare-fun b!7637064 () Bool)

(assert (=> b!7637064 (= e!4539872 (nullable!8931 r!14126))))

(declare-fun b!7637065 () Bool)

(declare-fun e!4539873 () Bool)

(assert (=> b!7637065 (= e!4539873 (= lt!2660051 call!700951))))

(declare-fun b!7637066 () Bool)

(assert (=> b!7637066 (= e!4539873 e!4539867)))

(declare-fun c!1406787 () Bool)

(assert (=> b!7637066 (= c!1406787 (is-EmptyLang!20418 r!14126))))

(declare-fun b!7637067 () Bool)

(assert (=> b!7637067 (= e!4539871 (= (head!15704 (_2!38000 lt!2659986)) (c!1406740 r!14126)))))

(declare-fun bm!700946 () Bool)

(assert (=> bm!700946 (= call!700951 (isEmpty!41776 (_2!38000 lt!2659986)))))

(declare-fun d!2324771 () Bool)

(assert (=> d!2324771 e!4539873))

(declare-fun c!1406788 () Bool)

(assert (=> d!2324771 (= c!1406788 (is-EmptyExpr!20418 r!14126))))

(assert (=> d!2324771 (= lt!2660051 e!4539872)))

(declare-fun c!1406786 () Bool)

(assert (=> d!2324771 (= c!1406786 (isEmpty!41776 (_2!38000 lt!2659986)))))

(assert (=> d!2324771 (validRegex!10836 r!14126)))

(assert (=> d!2324771 (= (matchR!9921 r!14126 (_2!38000 lt!2659986)) lt!2660051)))

(declare-fun b!7637068 () Bool)

(declare-fun res!3058894 () Bool)

(assert (=> b!7637068 (=> res!3058894 e!4539868)))

(assert (=> b!7637068 (= res!3058894 (not (is-ElementMatch!20418 r!14126)))))

(assert (=> b!7637068 (= e!4539867 e!4539868)))

(declare-fun b!7637069 () Bool)

(declare-fun res!3058893 () Bool)

(assert (=> b!7637069 (=> (not res!3058893) (not e!4539871))))

(assert (=> b!7637069 (= res!3058893 (isEmpty!41776 (tail!15244 (_2!38000 lt!2659986))))))

(assert (= (and d!2324771 c!1406786) b!7637064))

(assert (= (and d!2324771 (not c!1406786)) b!7637059))

(assert (= (and d!2324771 c!1406788) b!7637065))

(assert (= (and d!2324771 (not c!1406788)) b!7637066))

(assert (= (and b!7637066 c!1406787) b!7637060))

(assert (= (and b!7637066 (not c!1406787)) b!7637068))

(assert (= (and b!7637068 (not res!3058894)) b!7637057))

(assert (= (and b!7637057 res!3058890) b!7637056))

(assert (= (and b!7637056 res!3058888) b!7637069))

(assert (= (and b!7637069 res!3058893) b!7637067))

(assert (= (and b!7637057 (not res!3058889)) b!7637058))

(assert (= (and b!7637058 res!3058891) b!7637061))

(assert (= (and b!7637061 (not res!3058887)) b!7637062))

(assert (= (and b!7637062 (not res!3058892)) b!7637063))

(assert (= (or b!7637065 b!7637056 b!7637061) bm!700946))

(declare-fun m!8161354 () Bool)

(assert (=> d!2324771 m!8161354))

(assert (=> d!2324771 m!8161186))

(declare-fun m!8161356 () Bool)

(assert (=> b!7637067 m!8161356))

(declare-fun m!8161358 () Bool)

(assert (=> b!7637062 m!8161358))

(assert (=> b!7637062 m!8161358))

(declare-fun m!8161360 () Bool)

(assert (=> b!7637062 m!8161360))

(assert (=> b!7637063 m!8161356))

(assert (=> b!7637064 m!8161280))

(assert (=> b!7637059 m!8161356))

(assert (=> b!7637059 m!8161356))

(declare-fun m!8161362 () Bool)

(assert (=> b!7637059 m!8161362))

(assert (=> b!7637059 m!8161358))

(assert (=> b!7637059 m!8161362))

(assert (=> b!7637059 m!8161358))

(declare-fun m!8161364 () Bool)

(assert (=> b!7637059 m!8161364))

(assert (=> b!7637069 m!8161358))

(assert (=> b!7637069 m!8161358))

(assert (=> b!7637069 m!8161360))

(assert (=> bm!700946 m!8161354))

(assert (=> b!7636818 d!2324771))

(declare-fun b!7637070 () Bool)

(declare-fun res!3058896 () Bool)

(declare-fun e!4539878 () Bool)

(assert (=> b!7637070 (=> (not res!3058896) (not e!4539878))))

(declare-fun call!700952 () Bool)

(assert (=> b!7637070 (= res!3058896 (not call!700952))))

(declare-fun b!7637071 () Bool)

(declare-fun res!3058897 () Bool)

(declare-fun e!4539875 () Bool)

(assert (=> b!7637071 (=> res!3058897 e!4539875)))

(assert (=> b!7637071 (= res!3058897 e!4539878)))

(declare-fun res!3058898 () Bool)

(assert (=> b!7637071 (=> (not res!3058898) (not e!4539878))))

(declare-fun lt!2660052 () Bool)

(assert (=> b!7637071 (= res!3058898 lt!2660052)))

(declare-fun b!7637072 () Bool)

(declare-fun e!4539877 () Bool)

(assert (=> b!7637072 (= e!4539875 e!4539877)))

(declare-fun res!3058899 () Bool)

(assert (=> b!7637072 (=> (not res!3058899) (not e!4539877))))

(assert (=> b!7637072 (= res!3058899 (not lt!2660052))))

(declare-fun b!7637073 () Bool)

(declare-fun e!4539879 () Bool)

(assert (=> b!7637073 (= e!4539879 (matchR!9921 (derivativeStep!5904 (reg!20747 r!14126) (head!15704 (_1!38000 lt!2659986))) (tail!15244 (_1!38000 lt!2659986))))))

(declare-fun b!7637074 () Bool)

(declare-fun e!4539874 () Bool)

(assert (=> b!7637074 (= e!4539874 (not lt!2660052))))

(declare-fun b!7637075 () Bool)

(declare-fun e!4539876 () Bool)

(assert (=> b!7637075 (= e!4539877 e!4539876)))

(declare-fun res!3058895 () Bool)

(assert (=> b!7637075 (=> res!3058895 e!4539876)))

(assert (=> b!7637075 (= res!3058895 call!700952)))

(declare-fun b!7637076 () Bool)

(declare-fun res!3058900 () Bool)

(assert (=> b!7637076 (=> res!3058900 e!4539876)))

(assert (=> b!7637076 (= res!3058900 (not (isEmpty!41776 (tail!15244 (_1!38000 lt!2659986)))))))

(declare-fun b!7637077 () Bool)

(assert (=> b!7637077 (= e!4539876 (not (= (head!15704 (_1!38000 lt!2659986)) (c!1406740 (reg!20747 r!14126)))))))

(declare-fun b!7637078 () Bool)

(assert (=> b!7637078 (= e!4539879 (nullable!8931 (reg!20747 r!14126)))))

(declare-fun b!7637079 () Bool)

(declare-fun e!4539880 () Bool)

(assert (=> b!7637079 (= e!4539880 (= lt!2660052 call!700952))))

(declare-fun b!7637080 () Bool)

(assert (=> b!7637080 (= e!4539880 e!4539874)))

(declare-fun c!1406790 () Bool)

(assert (=> b!7637080 (= c!1406790 (is-EmptyLang!20418 (reg!20747 r!14126)))))

(declare-fun b!7637081 () Bool)

(assert (=> b!7637081 (= e!4539878 (= (head!15704 (_1!38000 lt!2659986)) (c!1406740 (reg!20747 r!14126))))))

(declare-fun bm!700947 () Bool)

(assert (=> bm!700947 (= call!700952 (isEmpty!41776 (_1!38000 lt!2659986)))))

(declare-fun d!2324773 () Bool)

(assert (=> d!2324773 e!4539880))

(declare-fun c!1406791 () Bool)

(assert (=> d!2324773 (= c!1406791 (is-EmptyExpr!20418 (reg!20747 r!14126)))))

(assert (=> d!2324773 (= lt!2660052 e!4539879)))

(declare-fun c!1406789 () Bool)

(assert (=> d!2324773 (= c!1406789 (isEmpty!41776 (_1!38000 lt!2659986)))))

(assert (=> d!2324773 (validRegex!10836 (reg!20747 r!14126))))

(assert (=> d!2324773 (= (matchR!9921 (reg!20747 r!14126) (_1!38000 lt!2659986)) lt!2660052)))

(declare-fun b!7637082 () Bool)

(declare-fun res!3058902 () Bool)

(assert (=> b!7637082 (=> res!3058902 e!4539875)))

(assert (=> b!7637082 (= res!3058902 (not (is-ElementMatch!20418 (reg!20747 r!14126))))))

(assert (=> b!7637082 (= e!4539874 e!4539875)))

(declare-fun b!7637083 () Bool)

(declare-fun res!3058901 () Bool)

(assert (=> b!7637083 (=> (not res!3058901) (not e!4539878))))

(assert (=> b!7637083 (= res!3058901 (isEmpty!41776 (tail!15244 (_1!38000 lt!2659986))))))

(assert (= (and d!2324773 c!1406789) b!7637078))

(assert (= (and d!2324773 (not c!1406789)) b!7637073))

(assert (= (and d!2324773 c!1406791) b!7637079))

(assert (= (and d!2324773 (not c!1406791)) b!7637080))

(assert (= (and b!7637080 c!1406790) b!7637074))

(assert (= (and b!7637080 (not c!1406790)) b!7637082))

(assert (= (and b!7637082 (not res!3058902)) b!7637071))

(assert (= (and b!7637071 res!3058898) b!7637070))

(assert (= (and b!7637070 res!3058896) b!7637083))

(assert (= (and b!7637083 res!3058901) b!7637081))

(assert (= (and b!7637071 (not res!3058897)) b!7637072))

(assert (= (and b!7637072 res!3058899) b!7637075))

(assert (= (and b!7637075 (not res!3058895)) b!7637076))

(assert (= (and b!7637076 (not res!3058900)) b!7637077))

(assert (= (or b!7637079 b!7637070 b!7637075) bm!700947))

(assert (=> d!2324773 m!8161200))

(assert (=> d!2324773 m!8161308))

(declare-fun m!8161366 () Bool)

(assert (=> b!7637081 m!8161366))

(declare-fun m!8161368 () Bool)

(assert (=> b!7637076 m!8161368))

(assert (=> b!7637076 m!8161368))

(declare-fun m!8161370 () Bool)

(assert (=> b!7637076 m!8161370))

(assert (=> b!7637077 m!8161366))

(assert (=> b!7637078 m!8161174))

(assert (=> b!7637073 m!8161366))

(assert (=> b!7637073 m!8161366))

(declare-fun m!8161372 () Bool)

(assert (=> b!7637073 m!8161372))

(assert (=> b!7637073 m!8161368))

(assert (=> b!7637073 m!8161372))

(assert (=> b!7637073 m!8161368))

(declare-fun m!8161374 () Bool)

(assert (=> b!7637073 m!8161374))

(assert (=> b!7637083 m!8161368))

(assert (=> b!7637083 m!8161368))

(assert (=> b!7637083 m!8161370))

(assert (=> bm!700947 m!8161200))

(assert (=> b!7636818 d!2324773))

(declare-fun bs!1944379 () Bool)

(declare-fun b!7637091 () Bool)

(assert (= bs!1944379 (and b!7637091 b!7637027)))

(declare-fun lambda!469454 () Int)

(assert (=> bs!1944379 (= (and (= (_2!38000 lt!2659986) (_1!38000 lt!2659990)) (= (reg!20747 r!14126) (reg!20747 (reg!20747 r!14126))) (= r!14126 (reg!20747 r!14126))) (= lambda!469454 lambda!469450))))

(declare-fun bs!1944380 () Bool)

(assert (= bs!1944380 (and b!7637091 b!7636995)))

(assert (=> bs!1944380 (not (= lambda!469454 lambda!469449))))

(declare-fun bs!1944381 () Bool)

(assert (= bs!1944381 (and b!7637091 b!7637052)))

(assert (=> bs!1944381 (= (and (= (_2!38000 lt!2659986) (_1!38000 lt!2659986)) (= (reg!20747 r!14126) (reg!20747 (reg!20747 r!14126))) (= r!14126 (reg!20747 r!14126))) (= lambda!469454 lambda!469452))))

(declare-fun bs!1944382 () Bool)

(assert (= bs!1944382 (and b!7637091 b!7637002)))

(assert (=> bs!1944382 (= (= (_2!38000 lt!2659986) (_2!38000 lt!2659990)) (= lambda!469454 lambda!469448))))

(declare-fun bs!1944383 () Bool)

(assert (= bs!1944383 (and b!7637091 b!7637045)))

(assert (=> bs!1944383 (not (= lambda!469454 lambda!469453))))

(declare-fun bs!1944384 () Bool)

(assert (= bs!1944384 (and b!7637091 b!7636822)))

(assert (=> bs!1944384 (not (= lambda!469454 lambda!469436))))

(declare-fun bs!1944385 () Bool)

(assert (= bs!1944385 (and b!7637091 b!7637020)))

(assert (=> bs!1944385 (not (= lambda!469454 lambda!469451))))

(assert (=> b!7637091 true))

(assert (=> b!7637091 true))

(declare-fun bs!1944386 () Bool)

(declare-fun b!7637084 () Bool)

(assert (= bs!1944386 (and b!7637084 b!7636995)))

(declare-fun lambda!469455 () Int)

(assert (=> bs!1944386 (= (= (_2!38000 lt!2659986) (_2!38000 lt!2659990)) (= lambda!469455 lambda!469449))))

(declare-fun bs!1944387 () Bool)

(assert (= bs!1944387 (and b!7637084 b!7637052)))

(assert (=> bs!1944387 (not (= lambda!469455 lambda!469452))))

(declare-fun bs!1944388 () Bool)

(assert (= bs!1944388 (and b!7637084 b!7637002)))

(assert (=> bs!1944388 (not (= lambda!469455 lambda!469448))))

(declare-fun bs!1944389 () Bool)

(assert (= bs!1944389 (and b!7637084 b!7637045)))

(assert (=> bs!1944389 (= (and (= (_2!38000 lt!2659986) (_1!38000 lt!2659986)) (= (regOne!41348 r!14126) (regOne!41348 (reg!20747 r!14126))) (= (regTwo!41348 r!14126) (regTwo!41348 (reg!20747 r!14126)))) (= lambda!469455 lambda!469453))))

(declare-fun bs!1944390 () Bool)

(assert (= bs!1944390 (and b!7637084 b!7637091)))

(assert (=> bs!1944390 (not (= lambda!469455 lambda!469454))))

(declare-fun bs!1944391 () Bool)

(assert (= bs!1944391 (and b!7637084 b!7637027)))

(assert (=> bs!1944391 (not (= lambda!469455 lambda!469450))))

(declare-fun bs!1944392 () Bool)

(assert (= bs!1944392 (and b!7637084 b!7636822)))

(assert (=> bs!1944392 (not (= lambda!469455 lambda!469436))))

(declare-fun bs!1944393 () Bool)

(assert (= bs!1944393 (and b!7637084 b!7637020)))

(assert (=> bs!1944393 (= (and (= (_2!38000 lt!2659986) (_1!38000 lt!2659990)) (= (regOne!41348 r!14126) (regOne!41348 (reg!20747 r!14126))) (= (regTwo!41348 r!14126) (regTwo!41348 (reg!20747 r!14126)))) (= lambda!469455 lambda!469451))))

(assert (=> b!7637084 true))

(assert (=> b!7637084 true))

(declare-fun e!4539884 () Bool)

(declare-fun call!700954 () Bool)

(assert (=> b!7637084 (= e!4539884 call!700954)))

(declare-fun b!7637085 () Bool)

(declare-fun c!1406793 () Bool)

(assert (=> b!7637085 (= c!1406793 (is-ElementMatch!20418 r!14126))))

(declare-fun e!4539885 () Bool)

(declare-fun e!4539881 () Bool)

(assert (=> b!7637085 (= e!4539885 e!4539881)))

(declare-fun b!7637086 () Bool)

(declare-fun e!4539887 () Bool)

(assert (=> b!7637086 (= e!4539887 (matchRSpec!4557 (regTwo!41349 r!14126) (_2!38000 lt!2659986)))))

(declare-fun b!7637087 () Bool)

(assert (=> b!7637087 (= e!4539881 (= (_2!38000 lt!2659986) (Cons!73145 (c!1406740 r!14126) Nil!73145)))))

(declare-fun b!7637088 () Bool)

(declare-fun res!3058903 () Bool)

(declare-fun e!4539883 () Bool)

(assert (=> b!7637088 (=> res!3058903 e!4539883)))

(declare-fun call!700953 () Bool)

(assert (=> b!7637088 (= res!3058903 call!700953)))

(assert (=> b!7637088 (= e!4539884 e!4539883)))

(declare-fun d!2324775 () Bool)

(declare-fun c!1406794 () Bool)

(assert (=> d!2324775 (= c!1406794 (is-EmptyExpr!20418 r!14126))))

(declare-fun e!4539886 () Bool)

(assert (=> d!2324775 (= (matchRSpec!4557 r!14126 (_2!38000 lt!2659986)) e!4539886)))

(declare-fun bm!700948 () Bool)

(declare-fun c!1406795 () Bool)

(assert (=> bm!700948 (= call!700954 (Exists!4572 (ite c!1406795 lambda!469454 lambda!469455)))))

(declare-fun b!7637089 () Bool)

(declare-fun e!4539882 () Bool)

(assert (=> b!7637089 (= e!4539882 e!4539887)))

(declare-fun res!3058905 () Bool)

(assert (=> b!7637089 (= res!3058905 (matchRSpec!4557 (regOne!41349 r!14126) (_2!38000 lt!2659986)))))

(assert (=> b!7637089 (=> res!3058905 e!4539887)))

(declare-fun b!7637090 () Bool)

(declare-fun c!1406792 () Bool)

(assert (=> b!7637090 (= c!1406792 (is-Union!20418 r!14126))))

(assert (=> b!7637090 (= e!4539881 e!4539882)))

(declare-fun bm!700949 () Bool)

(assert (=> bm!700949 (= call!700953 (isEmpty!41776 (_2!38000 lt!2659986)))))

(assert (=> b!7637091 (= e!4539883 call!700954)))

(declare-fun b!7637092 () Bool)

(assert (=> b!7637092 (= e!4539886 e!4539885)))

(declare-fun res!3058904 () Bool)

(assert (=> b!7637092 (= res!3058904 (not (is-EmptyLang!20418 r!14126)))))

(assert (=> b!7637092 (=> (not res!3058904) (not e!4539885))))

(declare-fun b!7637093 () Bool)

(assert (=> b!7637093 (= e!4539882 e!4539884)))

(assert (=> b!7637093 (= c!1406795 (is-Star!20418 r!14126))))

(declare-fun b!7637094 () Bool)

(assert (=> b!7637094 (= e!4539886 call!700953)))

(assert (= (and d!2324775 c!1406794) b!7637094))

(assert (= (and d!2324775 (not c!1406794)) b!7637092))

(assert (= (and b!7637092 res!3058904) b!7637085))

(assert (= (and b!7637085 c!1406793) b!7637087))

(assert (= (and b!7637085 (not c!1406793)) b!7637090))

(assert (= (and b!7637090 c!1406792) b!7637089))

(assert (= (and b!7637090 (not c!1406792)) b!7637093))

(assert (= (and b!7637089 (not res!3058905)) b!7637086))

(assert (= (and b!7637093 c!1406795) b!7637088))

(assert (= (and b!7637093 (not c!1406795)) b!7637084))

(assert (= (and b!7637088 (not res!3058903)) b!7637091))

(assert (= (or b!7637091 b!7637084) bm!700948))

(assert (= (or b!7637094 b!7637088) bm!700949))

(declare-fun m!8161376 () Bool)

(assert (=> b!7637086 m!8161376))

(declare-fun m!8161378 () Bool)

(assert (=> bm!700948 m!8161378))

(declare-fun m!8161380 () Bool)

(assert (=> b!7637089 m!8161380))

(assert (=> bm!700949 m!8161354))

(assert (=> b!7636818 d!2324775))

(declare-fun b!7637131 () Bool)

(declare-fun e!4539918 () Bool)

(declare-fun call!700963 () Bool)

(assert (=> b!7637131 (= e!4539918 call!700963)))

(declare-fun d!2324777 () Bool)

(declare-fun res!3058929 () Bool)

(declare-fun e!4539916 () Bool)

(assert (=> d!2324777 (=> res!3058929 e!4539916)))

(assert (=> d!2324777 (= res!3058929 (is-ElementMatch!20418 r!14126))))

(assert (=> d!2324777 (= (validRegex!10836 r!14126) e!4539916)))

(declare-fun b!7637132 () Bool)

(declare-fun e!4539917 () Bool)

(declare-fun e!4539913 () Bool)

(assert (=> b!7637132 (= e!4539917 e!4539913)))

(declare-fun c!1406805 () Bool)

(assert (=> b!7637132 (= c!1406805 (is-Union!20418 r!14126))))

(declare-fun b!7637133 () Bool)

(declare-fun e!4539915 () Bool)

(declare-fun e!4539914 () Bool)

(assert (=> b!7637133 (= e!4539915 e!4539914)))

(declare-fun res!3058926 () Bool)

(assert (=> b!7637133 (=> (not res!3058926) (not e!4539914))))

(declare-fun call!700961 () Bool)

(assert (=> b!7637133 (= res!3058926 call!700961)))

(declare-fun b!7637134 () Bool)

(declare-fun e!4539912 () Bool)

(declare-fun call!700962 () Bool)

(assert (=> b!7637134 (= e!4539912 call!700962)))

(declare-fun b!7637135 () Bool)

(declare-fun res!3058928 () Bool)

(assert (=> b!7637135 (=> res!3058928 e!4539915)))

(assert (=> b!7637135 (= res!3058928 (not (is-Concat!29263 r!14126)))))

(assert (=> b!7637135 (= e!4539913 e!4539915)))

(declare-fun bm!700956 () Bool)

(assert (=> bm!700956 (= call!700963 call!700962)))

(declare-fun b!7637136 () Bool)

(assert (=> b!7637136 (= e!4539914 call!700963)))

(declare-fun b!7637137 () Bool)

(assert (=> b!7637137 (= e!4539917 e!4539912)))

(declare-fun res!3058930 () Bool)

(assert (=> b!7637137 (= res!3058930 (not (nullable!8931 (reg!20747 r!14126))))))

(assert (=> b!7637137 (=> (not res!3058930) (not e!4539912))))

(declare-fun bm!700957 () Bool)

(declare-fun c!1406804 () Bool)

(assert (=> bm!700957 (= call!700962 (validRegex!10836 (ite c!1406804 (reg!20747 r!14126) (ite c!1406805 (regTwo!41349 r!14126) (regTwo!41348 r!14126)))))))

(declare-fun b!7637138 () Bool)

(assert (=> b!7637138 (= e!4539916 e!4539917)))

(assert (=> b!7637138 (= c!1406804 (is-Star!20418 r!14126))))

(declare-fun bm!700958 () Bool)

(assert (=> bm!700958 (= call!700961 (validRegex!10836 (ite c!1406805 (regOne!41349 r!14126) (regOne!41348 r!14126))))))

(declare-fun b!7637139 () Bool)

(declare-fun res!3058927 () Bool)

(assert (=> b!7637139 (=> (not res!3058927) (not e!4539918))))

(assert (=> b!7637139 (= res!3058927 call!700961)))

(assert (=> b!7637139 (= e!4539913 e!4539918)))

(assert (= (and d!2324777 (not res!3058929)) b!7637138))

(assert (= (and b!7637138 c!1406804) b!7637137))

(assert (= (and b!7637138 (not c!1406804)) b!7637132))

(assert (= (and b!7637137 res!3058930) b!7637134))

(assert (= (and b!7637132 c!1406805) b!7637139))

(assert (= (and b!7637132 (not c!1406805)) b!7637135))

(assert (= (and b!7637139 res!3058927) b!7637131))

(assert (= (and b!7637135 (not res!3058928)) b!7637133))

(assert (= (and b!7637133 res!3058926) b!7637136))

(assert (= (or b!7637139 b!7637133) bm!700958))

(assert (= (or b!7637131 b!7637136) bm!700956))

(assert (= (or b!7637134 bm!700956) bm!700957))

(assert (=> b!7637137 m!8161174))

(declare-fun m!8161382 () Bool)

(assert (=> bm!700957 m!8161382))

(declare-fun m!8161384 () Bool)

(assert (=> bm!700958 m!8161384))

(assert (=> start!735266 d!2324777))

(assert (=> b!7636822 d!2324743))

(declare-fun d!2324779 () Bool)

(declare-fun isEmpty!41779 (Option!17491) Bool)

(assert (=> d!2324779 (= (isDefined!14107 lt!2659995) (not (isEmpty!41779 lt!2659995)))))

(declare-fun bs!1944394 () Bool)

(assert (= bs!1944394 d!2324779))

(declare-fun m!8161386 () Bool)

(assert (=> bs!1944394 m!8161386))

(assert (=> b!7636822 d!2324779))

(declare-fun b!7637167 () Bool)

(declare-fun res!3058946 () Bool)

(declare-fun e!4539934 () Bool)

(assert (=> b!7637167 (=> (not res!3058946) (not e!4539934))))

(declare-fun lt!2660068 () Option!17491)

(assert (=> b!7637167 (= res!3058946 (matchR!9921 r!14126 (_2!38000 (get!25892 lt!2660068))))))

(declare-fun b!7637168 () Bool)

(declare-fun e!4539937 () Bool)

(assert (=> b!7637168 (= e!4539937 (not (isDefined!14107 lt!2660068)))))

(declare-fun b!7637169 () Bool)

(declare-fun lt!2660069 () Unit!167820)

(declare-fun lt!2660070 () Unit!167820)

(assert (=> b!7637169 (= lt!2660069 lt!2660070)))

(assert (=> b!7637169 (= (++!17698 (++!17698 Nil!73145 (Cons!73145 (h!79593 s!9605) Nil!73145)) (t!388004 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3259 (List!73269 C!41162 List!73269 List!73269) Unit!167820)

(assert (=> b!7637169 (= lt!2660070 (lemmaMoveElementToOtherListKeepsConcatEq!3259 Nil!73145 (h!79593 s!9605) (t!388004 s!9605) s!9605))))

(declare-fun e!4539938 () Option!17491)

(assert (=> b!7637169 (= e!4539938 (findConcatSeparation!3521 (reg!20747 r!14126) r!14126 (++!17698 Nil!73145 (Cons!73145 (h!79593 s!9605) Nil!73145)) (t!388004 s!9605) s!9605))))

(declare-fun b!7637170 () Bool)

(assert (=> b!7637170 (= e!4539938 None!17490)))

(declare-fun d!2324781 () Bool)

(assert (=> d!2324781 e!4539937))

(declare-fun res!3058948 () Bool)

(assert (=> d!2324781 (=> res!3058948 e!4539937)))

(assert (=> d!2324781 (= res!3058948 e!4539934)))

(declare-fun res!3058949 () Bool)

(assert (=> d!2324781 (=> (not res!3058949) (not e!4539934))))

(assert (=> d!2324781 (= res!3058949 (isDefined!14107 lt!2660068))))

(declare-fun e!4539935 () Option!17491)

(assert (=> d!2324781 (= lt!2660068 e!4539935)))

(declare-fun c!1406812 () Bool)

(declare-fun e!4539936 () Bool)

(assert (=> d!2324781 (= c!1406812 e!4539936)))

(declare-fun res!3058947 () Bool)

(assert (=> d!2324781 (=> (not res!3058947) (not e!4539936))))

(assert (=> d!2324781 (= res!3058947 (matchR!9921 (reg!20747 r!14126) Nil!73145))))

(assert (=> d!2324781 (validRegex!10836 (reg!20747 r!14126))))

(assert (=> d!2324781 (= (findConcatSeparation!3521 (reg!20747 r!14126) r!14126 Nil!73145 s!9605 s!9605) lt!2660068)))

(declare-fun b!7637171 () Bool)

(assert (=> b!7637171 (= e!4539935 (Some!17490 (tuple2!69395 Nil!73145 s!9605)))))

(declare-fun b!7637172 () Bool)

(assert (=> b!7637172 (= e!4539935 e!4539938)))

(declare-fun c!1406813 () Bool)

(assert (=> b!7637172 (= c!1406813 (is-Nil!73145 s!9605))))

(declare-fun b!7637173 () Bool)

(assert (=> b!7637173 (= e!4539934 (= (++!17698 (_1!38000 (get!25892 lt!2660068)) (_2!38000 (get!25892 lt!2660068))) s!9605))))

(declare-fun b!7637174 () Bool)

(assert (=> b!7637174 (= e!4539936 (matchR!9921 r!14126 s!9605))))

(declare-fun b!7637175 () Bool)

(declare-fun res!3058950 () Bool)

(assert (=> b!7637175 (=> (not res!3058950) (not e!4539934))))

(assert (=> b!7637175 (= res!3058950 (matchR!9921 (reg!20747 r!14126) (_1!38000 (get!25892 lt!2660068))))))

(assert (= (and d!2324781 res!3058947) b!7637174))

(assert (= (and d!2324781 c!1406812) b!7637171))

(assert (= (and d!2324781 (not c!1406812)) b!7637172))

(assert (= (and b!7637172 c!1406813) b!7637170))

(assert (= (and b!7637172 (not c!1406813)) b!7637169))

(assert (= (and d!2324781 res!3058949) b!7637175))

(assert (= (and b!7637175 res!3058950) b!7637167))

(assert (= (and b!7637167 res!3058946) b!7637173))

(assert (= (and d!2324781 (not res!3058948)) b!7637168))

(assert (=> b!7637174 m!8161208))

(declare-fun m!8161410 () Bool)

(assert (=> b!7637167 m!8161410))

(declare-fun m!8161412 () Bool)

(assert (=> b!7637167 m!8161412))

(declare-fun m!8161414 () Bool)

(assert (=> d!2324781 m!8161414))

(declare-fun m!8161416 () Bool)

(assert (=> d!2324781 m!8161416))

(assert (=> d!2324781 m!8161308))

(assert (=> b!7637175 m!8161410))

(declare-fun m!8161418 () Bool)

(assert (=> b!7637175 m!8161418))

(declare-fun m!8161420 () Bool)

(assert (=> b!7637169 m!8161420))

(assert (=> b!7637169 m!8161420))

(declare-fun m!8161422 () Bool)

(assert (=> b!7637169 m!8161422))

(declare-fun m!8161424 () Bool)

(assert (=> b!7637169 m!8161424))

(assert (=> b!7637169 m!8161420))

(declare-fun m!8161426 () Bool)

(assert (=> b!7637169 m!8161426))

(assert (=> b!7637168 m!8161414))

(assert (=> b!7637173 m!8161410))

(declare-fun m!8161428 () Bool)

(assert (=> b!7637173 m!8161428))

(assert (=> b!7636822 d!2324781))

(declare-fun bs!1944397 () Bool)

(declare-fun d!2324785 () Bool)

(assert (= bs!1944397 (and d!2324785 b!7636995)))

(declare-fun lambda!469461 () Int)

(assert (=> bs!1944397 (not (= lambda!469461 lambda!469449))))

(declare-fun bs!1944398 () Bool)

(assert (= bs!1944398 (and d!2324785 b!7637084)))

(assert (=> bs!1944398 (not (= lambda!469461 lambda!469455))))

(declare-fun bs!1944399 () Bool)

(assert (= bs!1944399 (and d!2324785 b!7637052)))

(assert (=> bs!1944399 (not (= lambda!469461 lambda!469452))))

(declare-fun bs!1944400 () Bool)

(assert (= bs!1944400 (and d!2324785 b!7637002)))

(assert (=> bs!1944400 (not (= lambda!469461 lambda!469448))))

(declare-fun bs!1944401 () Bool)

(assert (= bs!1944401 (and d!2324785 b!7637045)))

(assert (=> bs!1944401 (not (= lambda!469461 lambda!469453))))

(declare-fun bs!1944402 () Bool)

(assert (= bs!1944402 (and d!2324785 b!7637091)))

(assert (=> bs!1944402 (not (= lambda!469461 lambda!469454))))

(declare-fun bs!1944403 () Bool)

(assert (= bs!1944403 (and d!2324785 b!7637027)))

(assert (=> bs!1944403 (not (= lambda!469461 lambda!469450))))

(declare-fun bs!1944404 () Bool)

(assert (= bs!1944404 (and d!2324785 b!7636822)))

(assert (=> bs!1944404 (= lambda!469461 lambda!469436)))

(declare-fun bs!1944405 () Bool)

(assert (= bs!1944405 (and d!2324785 b!7637020)))

(assert (=> bs!1944405 (not (= lambda!469461 lambda!469451))))

(assert (=> d!2324785 true))

(assert (=> d!2324785 true))

(assert (=> d!2324785 true))

(assert (=> d!2324785 (= (isDefined!14107 (findConcatSeparation!3521 (reg!20747 r!14126) r!14126 Nil!73145 s!9605 s!9605)) (Exists!4572 lambda!469461))))

(declare-fun lt!2660076 () Unit!167820)

(declare-fun choose!58975 (Regex!20418 Regex!20418 List!73269) Unit!167820)

(assert (=> d!2324785 (= lt!2660076 (choose!58975 (reg!20747 r!14126) r!14126 s!9605))))

(assert (=> d!2324785 (validRegex!10836 (reg!20747 r!14126))))

(assert (=> d!2324785 (= (lemmaFindConcatSeparationEquivalentToExists!3279 (reg!20747 r!14126) r!14126 s!9605) lt!2660076)))

(declare-fun bs!1944406 () Bool)

(assert (= bs!1944406 d!2324785))

(assert (=> bs!1944406 m!8161308))

(assert (=> bs!1944406 m!8161182))

(assert (=> bs!1944406 m!8161182))

(declare-fun m!8161436 () Bool)

(assert (=> bs!1944406 m!8161436))

(declare-fun m!8161438 () Bool)

(assert (=> bs!1944406 m!8161438))

(declare-fun m!8161440 () Bool)

(assert (=> bs!1944406 m!8161440))

(assert (=> b!7636822 d!2324785))

(declare-fun d!2324789 () Bool)

(assert (=> d!2324789 (= (isEmpty!41776 (_1!38000 lt!2659986)) (is-Nil!73145 (_1!38000 lt!2659986)))))

(assert (=> b!7636828 d!2324789))

(declare-fun d!2324791 () Bool)

(assert (=> d!2324791 (matchR!9921 (Star!20418 (reg!20747 r!14126)) (++!17698 (_1!38000 lt!2659990) (_2!38000 lt!2659990)))))

(declare-fun lt!2660079 () Unit!167820)

(declare-fun choose!58976 (Regex!20418 List!73269 List!73269) Unit!167820)

(assert (=> d!2324791 (= lt!2660079 (choose!58976 (reg!20747 r!14126) (_1!38000 lt!2659990) (_2!38000 lt!2659990)))))

(assert (=> d!2324791 (validRegex!10836 (Star!20418 (reg!20747 r!14126)))))

(assert (=> d!2324791 (= (lemmaStarApp!205 (reg!20747 r!14126) (_1!38000 lt!2659990) (_2!38000 lt!2659990)) lt!2660079)))

(declare-fun bs!1944407 () Bool)

(assert (= bs!1944407 d!2324791))

(assert (=> bs!1944407 m!8161198))

(assert (=> bs!1944407 m!8161198))

(declare-fun m!8161442 () Bool)

(assert (=> bs!1944407 m!8161442))

(declare-fun m!8161444 () Bool)

(assert (=> bs!1944407 m!8161444))

(declare-fun m!8161446 () Bool)

(assert (=> bs!1944407 m!8161446))

(assert (=> b!7636823 d!2324791))

(declare-fun b!7637184 () Bool)

(declare-fun res!3058960 () Bool)

(declare-fun e!4539947 () Bool)

(assert (=> b!7637184 (=> (not res!3058960) (not e!4539947))))

(declare-fun call!700964 () Bool)

(assert (=> b!7637184 (= res!3058960 (not call!700964))))

(declare-fun b!7637185 () Bool)

(declare-fun res!3058961 () Bool)

(declare-fun e!4539944 () Bool)

(assert (=> b!7637185 (=> res!3058961 e!4539944)))

(assert (=> b!7637185 (= res!3058961 e!4539947)))

(declare-fun res!3058962 () Bool)

(assert (=> b!7637185 (=> (not res!3058962) (not e!4539947))))

(declare-fun lt!2660082 () Bool)

(assert (=> b!7637185 (= res!3058962 lt!2660082)))

(declare-fun b!7637186 () Bool)

(declare-fun e!4539946 () Bool)

(assert (=> b!7637186 (= e!4539944 e!4539946)))

(declare-fun res!3058963 () Bool)

(assert (=> b!7637186 (=> (not res!3058963) (not e!4539946))))

(assert (=> b!7637186 (= res!3058963 (not lt!2660082))))

(declare-fun b!7637187 () Bool)

(declare-fun e!4539948 () Bool)

(assert (=> b!7637187 (= e!4539948 (matchR!9921 (derivativeStep!5904 (Concat!29263 (reg!20747 r!14126) r!14126) (head!15704 lt!2659989)) (tail!15244 lt!2659989)))))

(declare-fun b!7637188 () Bool)

(declare-fun e!4539943 () Bool)

(assert (=> b!7637188 (= e!4539943 (not lt!2660082))))

(declare-fun b!7637189 () Bool)

(declare-fun e!4539945 () Bool)

(assert (=> b!7637189 (= e!4539946 e!4539945)))

(declare-fun res!3058959 () Bool)

(assert (=> b!7637189 (=> res!3058959 e!4539945)))

(assert (=> b!7637189 (= res!3058959 call!700964)))

(declare-fun b!7637190 () Bool)

(declare-fun res!3058964 () Bool)

(assert (=> b!7637190 (=> res!3058964 e!4539945)))

(assert (=> b!7637190 (= res!3058964 (not (isEmpty!41776 (tail!15244 lt!2659989))))))

(declare-fun b!7637191 () Bool)

(assert (=> b!7637191 (= e!4539945 (not (= (head!15704 lt!2659989) (c!1406740 (Concat!29263 (reg!20747 r!14126) r!14126)))))))

(declare-fun b!7637192 () Bool)

(assert (=> b!7637192 (= e!4539948 (nullable!8931 (Concat!29263 (reg!20747 r!14126) r!14126)))))

(declare-fun b!7637193 () Bool)

(declare-fun e!4539949 () Bool)

(assert (=> b!7637193 (= e!4539949 (= lt!2660082 call!700964))))

(declare-fun b!7637194 () Bool)

(assert (=> b!7637194 (= e!4539949 e!4539943)))

(declare-fun c!1406815 () Bool)

(assert (=> b!7637194 (= c!1406815 (is-EmptyLang!20418 (Concat!29263 (reg!20747 r!14126) r!14126)))))

(declare-fun b!7637195 () Bool)

(assert (=> b!7637195 (= e!4539947 (= (head!15704 lt!2659989) (c!1406740 (Concat!29263 (reg!20747 r!14126) r!14126))))))

(declare-fun bm!700959 () Bool)

(assert (=> bm!700959 (= call!700964 (isEmpty!41776 lt!2659989))))

(declare-fun d!2324793 () Bool)

(assert (=> d!2324793 e!4539949))

(declare-fun c!1406816 () Bool)

(assert (=> d!2324793 (= c!1406816 (is-EmptyExpr!20418 (Concat!29263 (reg!20747 r!14126) r!14126)))))

(assert (=> d!2324793 (= lt!2660082 e!4539948)))

(declare-fun c!1406814 () Bool)

(assert (=> d!2324793 (= c!1406814 (isEmpty!41776 lt!2659989))))

(assert (=> d!2324793 (validRegex!10836 (Concat!29263 (reg!20747 r!14126) r!14126))))

(assert (=> d!2324793 (= (matchR!9921 (Concat!29263 (reg!20747 r!14126) r!14126) lt!2659989) lt!2660082)))

(declare-fun b!7637196 () Bool)

(declare-fun res!3058966 () Bool)

(assert (=> b!7637196 (=> res!3058966 e!4539944)))

(assert (=> b!7637196 (= res!3058966 (not (is-ElementMatch!20418 (Concat!29263 (reg!20747 r!14126) r!14126))))))

(assert (=> b!7637196 (= e!4539943 e!4539944)))

(declare-fun b!7637197 () Bool)

(declare-fun res!3058965 () Bool)

(assert (=> b!7637197 (=> (not res!3058965) (not e!4539947))))

(assert (=> b!7637197 (= res!3058965 (isEmpty!41776 (tail!15244 lt!2659989)))))

(assert (= (and d!2324793 c!1406814) b!7637192))

(assert (= (and d!2324793 (not c!1406814)) b!7637187))

(assert (= (and d!2324793 c!1406816) b!7637193))

(assert (= (and d!2324793 (not c!1406816)) b!7637194))

(assert (= (and b!7637194 c!1406815) b!7637188))

(assert (= (and b!7637194 (not c!1406815)) b!7637196))

(assert (= (and b!7637196 (not res!3058966)) b!7637185))

(assert (= (and b!7637185 res!3058962) b!7637184))

(assert (= (and b!7637184 res!3058960) b!7637197))

(assert (= (and b!7637197 res!3058965) b!7637195))

(assert (= (and b!7637185 (not res!3058961)) b!7637186))

(assert (= (and b!7637186 res!3058963) b!7637189))

(assert (= (and b!7637189 (not res!3058959)) b!7637190))

(assert (= (and b!7637190 (not res!3058964)) b!7637191))

(assert (= (or b!7637193 b!7637184 b!7637189) bm!700959))

(declare-fun m!8161448 () Bool)

(assert (=> d!2324793 m!8161448))

(declare-fun m!8161450 () Bool)

(assert (=> d!2324793 m!8161450))

(declare-fun m!8161452 () Bool)

(assert (=> b!7637195 m!8161452))

(declare-fun m!8161454 () Bool)

(assert (=> b!7637190 m!8161454))

(assert (=> b!7637190 m!8161454))

(declare-fun m!8161456 () Bool)

(assert (=> b!7637190 m!8161456))

(assert (=> b!7637191 m!8161452))

(declare-fun m!8161458 () Bool)

(assert (=> b!7637192 m!8161458))

(assert (=> b!7637187 m!8161452))

(assert (=> b!7637187 m!8161452))

(declare-fun m!8161460 () Bool)

(assert (=> b!7637187 m!8161460))

(assert (=> b!7637187 m!8161454))

(assert (=> b!7637187 m!8161460))

(assert (=> b!7637187 m!8161454))

(declare-fun m!8161462 () Bool)

(assert (=> b!7637187 m!8161462))

(assert (=> b!7637197 m!8161454))

(assert (=> b!7637197 m!8161454))

(assert (=> b!7637197 m!8161456))

(assert (=> bm!700959 m!8161448))

(assert (=> b!7636823 d!2324793))

(declare-fun b!7637208 () Bool)

(declare-fun res!3058971 () Bool)

(declare-fun e!4539955 () Bool)

(assert (=> b!7637208 (=> (not res!3058971) (not e!4539955))))

(declare-fun lt!2660086 () List!73269)

(declare-fun size!42580 (List!73269) Int)

(assert (=> b!7637208 (= res!3058971 (= (size!42580 lt!2660086) (+ (size!42580 (_1!38000 lt!2659990)) (size!42580 (_2!38000 lt!2659990)))))))

(declare-fun b!7637207 () Bool)

(declare-fun e!4539954 () List!73269)

(assert (=> b!7637207 (= e!4539954 (Cons!73145 (h!79593 (_1!38000 lt!2659990)) (++!17698 (t!388004 (_1!38000 lt!2659990)) (_2!38000 lt!2659990))))))

(declare-fun d!2324795 () Bool)

(assert (=> d!2324795 e!4539955))

(declare-fun res!3058972 () Bool)

(assert (=> d!2324795 (=> (not res!3058972) (not e!4539955))))

(declare-fun content!15487 (List!73269) (Set C!41162))

(assert (=> d!2324795 (= res!3058972 (= (content!15487 lt!2660086) (set.union (content!15487 (_1!38000 lt!2659990)) (content!15487 (_2!38000 lt!2659990)))))))

(assert (=> d!2324795 (= lt!2660086 e!4539954)))

(declare-fun c!1406819 () Bool)

(assert (=> d!2324795 (= c!1406819 (is-Nil!73145 (_1!38000 lt!2659990)))))

(assert (=> d!2324795 (= (++!17698 (_1!38000 lt!2659990) (_2!38000 lt!2659990)) lt!2660086)))

(declare-fun b!7637206 () Bool)

(assert (=> b!7637206 (= e!4539954 (_2!38000 lt!2659990))))

(declare-fun b!7637209 () Bool)

(assert (=> b!7637209 (= e!4539955 (or (not (= (_2!38000 lt!2659990) Nil!73145)) (= lt!2660086 (_1!38000 lt!2659990))))))

(assert (= (and d!2324795 c!1406819) b!7637206))

(assert (= (and d!2324795 (not c!1406819)) b!7637207))

(assert (= (and d!2324795 res!3058972) b!7637208))

(assert (= (and b!7637208 res!3058971) b!7637209))

(declare-fun m!8161468 () Bool)

(assert (=> b!7637208 m!8161468))

(declare-fun m!8161470 () Bool)

(assert (=> b!7637208 m!8161470))

(declare-fun m!8161472 () Bool)

(assert (=> b!7637208 m!8161472))

(declare-fun m!8161474 () Bool)

(assert (=> b!7637207 m!8161474))

(declare-fun m!8161476 () Bool)

(assert (=> d!2324795 m!8161476))

(declare-fun m!8161478 () Bool)

(assert (=> d!2324795 m!8161478))

(declare-fun m!8161480 () Bool)

(assert (=> d!2324795 m!8161480))

(assert (=> b!7636823 d!2324795))

(declare-fun b!7637210 () Bool)

(declare-fun res!3058974 () Bool)

(declare-fun e!4539960 () Bool)

(assert (=> b!7637210 (=> (not res!3058974) (not e!4539960))))

(declare-fun call!700965 () Bool)

(assert (=> b!7637210 (= res!3058974 (not call!700965))))

(declare-fun b!7637211 () Bool)

(declare-fun res!3058975 () Bool)

(declare-fun e!4539957 () Bool)

(assert (=> b!7637211 (=> res!3058975 e!4539957)))

(assert (=> b!7637211 (= res!3058975 e!4539960)))

(declare-fun res!3058976 () Bool)

(assert (=> b!7637211 (=> (not res!3058976) (not e!4539960))))

(declare-fun lt!2660087 () Bool)

(assert (=> b!7637211 (= res!3058976 lt!2660087)))

(declare-fun b!7637212 () Bool)

(declare-fun e!4539959 () Bool)

(assert (=> b!7637212 (= e!4539957 e!4539959)))

(declare-fun res!3058977 () Bool)

(assert (=> b!7637212 (=> (not res!3058977) (not e!4539959))))

(assert (=> b!7637212 (= res!3058977 (not lt!2660087))))

(declare-fun b!7637213 () Bool)

(declare-fun e!4539961 () Bool)

(assert (=> b!7637213 (= e!4539961 (matchR!9921 (derivativeStep!5904 r!14126 (head!15704 lt!2659989)) (tail!15244 lt!2659989)))))

(declare-fun b!7637214 () Bool)

(declare-fun e!4539956 () Bool)

(assert (=> b!7637214 (= e!4539956 (not lt!2660087))))

(declare-fun b!7637215 () Bool)

(declare-fun e!4539958 () Bool)

(assert (=> b!7637215 (= e!4539959 e!4539958)))

(declare-fun res!3058973 () Bool)

(assert (=> b!7637215 (=> res!3058973 e!4539958)))

(assert (=> b!7637215 (= res!3058973 call!700965)))

(declare-fun b!7637216 () Bool)

(declare-fun res!3058978 () Bool)

(assert (=> b!7637216 (=> res!3058978 e!4539958)))

(assert (=> b!7637216 (= res!3058978 (not (isEmpty!41776 (tail!15244 lt!2659989))))))

(declare-fun b!7637217 () Bool)

(assert (=> b!7637217 (= e!4539958 (not (= (head!15704 lt!2659989) (c!1406740 r!14126))))))

(declare-fun b!7637218 () Bool)

(assert (=> b!7637218 (= e!4539961 (nullable!8931 r!14126))))

(declare-fun b!7637219 () Bool)

(declare-fun e!4539962 () Bool)

(assert (=> b!7637219 (= e!4539962 (= lt!2660087 call!700965))))

(declare-fun b!7637220 () Bool)

(assert (=> b!7637220 (= e!4539962 e!4539956)))

(declare-fun c!1406821 () Bool)

(assert (=> b!7637220 (= c!1406821 (is-EmptyLang!20418 r!14126))))

(declare-fun b!7637221 () Bool)

(assert (=> b!7637221 (= e!4539960 (= (head!15704 lt!2659989) (c!1406740 r!14126)))))

(declare-fun bm!700960 () Bool)

(assert (=> bm!700960 (= call!700965 (isEmpty!41776 lt!2659989))))

(declare-fun d!2324801 () Bool)

(assert (=> d!2324801 e!4539962))

(declare-fun c!1406822 () Bool)

(assert (=> d!2324801 (= c!1406822 (is-EmptyExpr!20418 r!14126))))

(assert (=> d!2324801 (= lt!2660087 e!4539961)))

(declare-fun c!1406820 () Bool)

(assert (=> d!2324801 (= c!1406820 (isEmpty!41776 lt!2659989))))

(assert (=> d!2324801 (validRegex!10836 r!14126)))

(assert (=> d!2324801 (= (matchR!9921 r!14126 lt!2659989) lt!2660087)))

(declare-fun b!7637222 () Bool)

(declare-fun res!3058980 () Bool)

(assert (=> b!7637222 (=> res!3058980 e!4539957)))

(assert (=> b!7637222 (= res!3058980 (not (is-ElementMatch!20418 r!14126)))))

(assert (=> b!7637222 (= e!4539956 e!4539957)))

(declare-fun b!7637223 () Bool)

(declare-fun res!3058979 () Bool)

(assert (=> b!7637223 (=> (not res!3058979) (not e!4539960))))

(assert (=> b!7637223 (= res!3058979 (isEmpty!41776 (tail!15244 lt!2659989)))))

(assert (= (and d!2324801 c!1406820) b!7637218))

(assert (= (and d!2324801 (not c!1406820)) b!7637213))

(assert (= (and d!2324801 c!1406822) b!7637219))

(assert (= (and d!2324801 (not c!1406822)) b!7637220))

(assert (= (and b!7637220 c!1406821) b!7637214))

(assert (= (and b!7637220 (not c!1406821)) b!7637222))

(assert (= (and b!7637222 (not res!3058980)) b!7637211))

(assert (= (and b!7637211 res!3058976) b!7637210))

(assert (= (and b!7637210 res!3058974) b!7637223))

(assert (= (and b!7637223 res!3058979) b!7637221))

(assert (= (and b!7637211 (not res!3058975)) b!7637212))

(assert (= (and b!7637212 res!3058977) b!7637215))

(assert (= (and b!7637215 (not res!3058973)) b!7637216))

(assert (= (and b!7637216 (not res!3058978)) b!7637217))

(assert (= (or b!7637219 b!7637210 b!7637215) bm!700960))

(assert (=> d!2324801 m!8161448))

(assert (=> d!2324801 m!8161186))

(assert (=> b!7637221 m!8161452))

(assert (=> b!7637216 m!8161454))

(assert (=> b!7637216 m!8161454))

(assert (=> b!7637216 m!8161456))

(assert (=> b!7637217 m!8161452))

(assert (=> b!7637218 m!8161280))

(assert (=> b!7637213 m!8161452))

(assert (=> b!7637213 m!8161452))

(declare-fun m!8161482 () Bool)

(assert (=> b!7637213 m!8161482))

(assert (=> b!7637213 m!8161454))

(assert (=> b!7637213 m!8161482))

(assert (=> b!7637213 m!8161454))

(declare-fun m!8161484 () Bool)

(assert (=> b!7637213 m!8161484))

(assert (=> b!7637223 m!8161454))

(assert (=> b!7637223 m!8161454))

(assert (=> b!7637223 m!8161456))

(assert (=> bm!700960 m!8161448))

(assert (=> b!7636823 d!2324801))

(declare-fun d!2324803 () Bool)

(assert (=> d!2324803 (matchR!9921 (Concat!29263 (reg!20747 r!14126) r!14126) (++!17698 (_1!38000 lt!2659990) (_2!38000 lt!2659990)))))

(declare-fun lt!2660090 () Unit!167820)

(declare-fun choose!58978 (Regex!20418 Regex!20418 List!73269 List!73269 List!73269) Unit!167820)

(assert (=> d!2324803 (= lt!2660090 (choose!58978 (reg!20747 r!14126) r!14126 (_1!38000 lt!2659990) (_2!38000 lt!2659990) s!9605))))

(assert (=> d!2324803 (validRegex!10836 (reg!20747 r!14126))))

(assert (=> d!2324803 (= (lemmaFindSeparationIsDefinedThenConcatMatches!175 (reg!20747 r!14126) r!14126 (_1!38000 lt!2659990) (_2!38000 lt!2659990) s!9605) lt!2660090)))

(declare-fun bs!1944410 () Bool)

(assert (= bs!1944410 d!2324803))

(assert (=> bs!1944410 m!8161198))

(assert (=> bs!1944410 m!8161198))

(declare-fun m!8161486 () Bool)

(assert (=> bs!1944410 m!8161486))

(declare-fun m!8161488 () Bool)

(assert (=> bs!1944410 m!8161488))

(assert (=> bs!1944410 m!8161308))

(assert (=> b!7636823 d!2324803))

(declare-fun b!7637228 () Bool)

(declare-fun e!4539965 () Bool)

(declare-fun tp!2229340 () Bool)

(assert (=> b!7637228 (= e!4539965 (and tp_is_empty!51191 tp!2229340))))

(assert (=> b!7636821 (= tp!2229314 e!4539965)))

(assert (= (and b!7636821 (is-Cons!73145 (t!388004 s!9605))) b!7637228))

(declare-fun b!7637241 () Bool)

(declare-fun e!4539968 () Bool)

(declare-fun tp!2229351 () Bool)

(assert (=> b!7637241 (= e!4539968 tp!2229351)))

(declare-fun b!7637240 () Bool)

(declare-fun tp!2229353 () Bool)

(declare-fun tp!2229355 () Bool)

(assert (=> b!7637240 (= e!4539968 (and tp!2229353 tp!2229355))))

(declare-fun b!7637242 () Bool)

(declare-fun tp!2229354 () Bool)

(declare-fun tp!2229352 () Bool)

(assert (=> b!7637242 (= e!4539968 (and tp!2229354 tp!2229352))))

(assert (=> b!7636830 (= tp!2229317 e!4539968)))

(declare-fun b!7637239 () Bool)

(assert (=> b!7637239 (= e!4539968 tp_is_empty!51191)))

(assert (= (and b!7636830 (is-ElementMatch!20418 (regOne!41348 r!14126))) b!7637239))

(assert (= (and b!7636830 (is-Concat!29263 (regOne!41348 r!14126))) b!7637240))

(assert (= (and b!7636830 (is-Star!20418 (regOne!41348 r!14126))) b!7637241))

(assert (= (and b!7636830 (is-Union!20418 (regOne!41348 r!14126))) b!7637242))

(declare-fun b!7637245 () Bool)

(declare-fun e!4539969 () Bool)

(declare-fun tp!2229356 () Bool)

(assert (=> b!7637245 (= e!4539969 tp!2229356)))

(declare-fun b!7637244 () Bool)

(declare-fun tp!2229358 () Bool)

(declare-fun tp!2229360 () Bool)

(assert (=> b!7637244 (= e!4539969 (and tp!2229358 tp!2229360))))

(declare-fun b!7637246 () Bool)

(declare-fun tp!2229359 () Bool)

(declare-fun tp!2229357 () Bool)

(assert (=> b!7637246 (= e!4539969 (and tp!2229359 tp!2229357))))

(assert (=> b!7636830 (= tp!2229315 e!4539969)))

(declare-fun b!7637243 () Bool)

(assert (=> b!7637243 (= e!4539969 tp_is_empty!51191)))

(assert (= (and b!7636830 (is-ElementMatch!20418 (regTwo!41348 r!14126))) b!7637243))

(assert (= (and b!7636830 (is-Concat!29263 (regTwo!41348 r!14126))) b!7637244))

(assert (= (and b!7636830 (is-Star!20418 (regTwo!41348 r!14126))) b!7637245))

(assert (= (and b!7636830 (is-Union!20418 (regTwo!41348 r!14126))) b!7637246))

(declare-fun b!7637249 () Bool)

(declare-fun e!4539970 () Bool)

(declare-fun tp!2229361 () Bool)

(assert (=> b!7637249 (= e!4539970 tp!2229361)))

(declare-fun b!7637248 () Bool)

(declare-fun tp!2229363 () Bool)

(declare-fun tp!2229365 () Bool)

(assert (=> b!7637248 (= e!4539970 (and tp!2229363 tp!2229365))))

(declare-fun b!7637250 () Bool)

(declare-fun tp!2229364 () Bool)

(declare-fun tp!2229362 () Bool)

(assert (=> b!7637250 (= e!4539970 (and tp!2229364 tp!2229362))))

(assert (=> b!7636824 (= tp!2229316 e!4539970)))

(declare-fun b!7637247 () Bool)

(assert (=> b!7637247 (= e!4539970 tp_is_empty!51191)))

(assert (= (and b!7636824 (is-ElementMatch!20418 (reg!20747 r!14126))) b!7637247))

(assert (= (and b!7636824 (is-Concat!29263 (reg!20747 r!14126))) b!7637248))

(assert (= (and b!7636824 (is-Star!20418 (reg!20747 r!14126))) b!7637249))

(assert (= (and b!7636824 (is-Union!20418 (reg!20747 r!14126))) b!7637250))

(declare-fun b!7637255 () Bool)

(declare-fun e!4539971 () Bool)

(declare-fun tp!2229366 () Bool)

(assert (=> b!7637255 (= e!4539971 tp!2229366)))

(declare-fun b!7637254 () Bool)

(declare-fun tp!2229368 () Bool)

(declare-fun tp!2229370 () Bool)

(assert (=> b!7637254 (= e!4539971 (and tp!2229368 tp!2229370))))

(declare-fun b!7637256 () Bool)

(declare-fun tp!2229369 () Bool)

(declare-fun tp!2229367 () Bool)

(assert (=> b!7637256 (= e!4539971 (and tp!2229369 tp!2229367))))

(assert (=> b!7636819 (= tp!2229318 e!4539971)))

(declare-fun b!7637253 () Bool)

(assert (=> b!7637253 (= e!4539971 tp_is_empty!51191)))

(assert (= (and b!7636819 (is-ElementMatch!20418 (regOne!41349 r!14126))) b!7637253))

(assert (= (and b!7636819 (is-Concat!29263 (regOne!41349 r!14126))) b!7637254))

(assert (= (and b!7636819 (is-Star!20418 (regOne!41349 r!14126))) b!7637255))

(assert (= (and b!7636819 (is-Union!20418 (regOne!41349 r!14126))) b!7637256))

(declare-fun b!7637259 () Bool)

(declare-fun e!4539972 () Bool)

(declare-fun tp!2229371 () Bool)

(assert (=> b!7637259 (= e!4539972 tp!2229371)))

(declare-fun b!7637258 () Bool)

(declare-fun tp!2229373 () Bool)

(declare-fun tp!2229375 () Bool)

(assert (=> b!7637258 (= e!4539972 (and tp!2229373 tp!2229375))))

(declare-fun b!7637260 () Bool)

(declare-fun tp!2229374 () Bool)

(declare-fun tp!2229372 () Bool)

(assert (=> b!7637260 (= e!4539972 (and tp!2229374 tp!2229372))))

(assert (=> b!7636819 (= tp!2229319 e!4539972)))

(declare-fun b!7637257 () Bool)

(assert (=> b!7637257 (= e!4539972 tp_is_empty!51191)))

(assert (= (and b!7636819 (is-ElementMatch!20418 (regTwo!41349 r!14126))) b!7637257))

(assert (= (and b!7636819 (is-Concat!29263 (regTwo!41349 r!14126))) b!7637258))

(assert (= (and b!7636819 (is-Star!20418 (regTwo!41349 r!14126))) b!7637259))

(assert (= (and b!7636819 (is-Union!20418 (regTwo!41349 r!14126))) b!7637260))

(declare-fun b_lambda!289085 () Bool)

(assert (= b_lambda!289083 (or b!7636822 b_lambda!289085)))

(declare-fun bs!1944411 () Bool)

(declare-fun d!2324805 () Bool)

(assert (= bs!1944411 (and d!2324805 b!7636822)))

(declare-fun res!3058981 () Bool)

(declare-fun e!4539975 () Bool)

(assert (=> bs!1944411 (=> (not res!3058981) (not e!4539975))))

(assert (=> bs!1944411 (= res!3058981 (= (++!17698 (_1!38000 lt!2660049) (_2!38000 lt!2660049)) s!9605))))

(assert (=> bs!1944411 (= (dynLambda!29929 lambda!469436 lt!2660049) e!4539975)))

(declare-fun b!7637263 () Bool)

(declare-fun res!3058982 () Bool)

(assert (=> b!7637263 (=> (not res!3058982) (not e!4539975))))

(assert (=> b!7637263 (= res!3058982 (matchR!9921 (reg!20747 r!14126) (_1!38000 lt!2660049)))))

(declare-fun b!7637264 () Bool)

(assert (=> b!7637264 (= e!4539975 (matchR!9921 r!14126 (_2!38000 lt!2660049)))))

(assert (= (and bs!1944411 res!3058981) b!7637263))

(assert (= (and b!7637263 res!3058982) b!7637264))

(declare-fun m!8161490 () Bool)

(assert (=> bs!1944411 m!8161490))

(declare-fun m!8161492 () Bool)

(assert (=> b!7637263 m!8161492))

(declare-fun m!8161494 () Bool)

(assert (=> b!7637264 m!8161494))

(assert (=> d!2324767 d!2324805))

(push 1)

(assert (not bm!700960))

(assert tp_is_empty!51191)

(assert (not b!7637259))

(assert (not b!7637034))

(assert (not b!7637022))

(assert (not b!7637258))

(assert (not b!7637250))

(assert (not b!7637086))

(assert (not bm!700946))

(assert (not b!7637241))

(assert (not b!7637191))

(assert (not b!7637168))

(assert (not b!7637248))

(assert (not b!7637083))

(assert (not b!7637037))

(assert (not b!7637242))

(assert (not d!2324801))

(assert (not b!7637174))

(assert (not b!7637228))

(assert (not b!7637213))

(assert (not b!7636933))

(assert (not d!2324795))

(assert (not bm!700948))

(assert (not b!7637089))

(assert (not b!7637067))

(assert (not b!7637197))

(assert (not b!7637047))

(assert (not b!7637264))

(assert (not b!7637009))

(assert (not b!7637218))

(assert (not d!2324767))

(assert (not bm!700941))

(assert (not b!7637019))

(assert (not bm!700949))

(assert (not b!7637173))

(assert (not b_lambda!289085))

(assert (not bm!700942))

(assert (not bm!700945))

(assert (not b!7637050))

(assert (not bm!700938))

(assert (not b!7637013))

(assert (not b!7636997))

(assert (not b!7637192))

(assert (not b!7637246))

(assert (not b!7637245))

(assert (not d!2324793))

(assert (not d!2324781))

(assert (not d!2324773))

(assert (not b!7637039))

(assert (not bm!700947))

(assert (not b!7637014))

(assert (not b!7637255))

(assert (not b!7637256))

(assert (not b!7636935))

(assert (not d!2324771))

(assert (not d!2324785))

(assert (not b!7637073))

(assert (not bs!1944411))

(assert (not bm!700959))

(assert (not bm!700924))

(assert (not b!7637059))

(assert (not bm!700958))

(assert (not d!2324743))

(assert (not d!2324765))

(assert (not b!7637042))

(assert (not b!7637217))

(assert (not b!7637260))

(assert (not b!7637207))

(assert (not d!2324763))

(assert (not b!7637017))

(assert (not b!7637216))

(assert (not b!7637249))

(assert (not b!7637038))

(assert (not b!7637175))

(assert (not d!2324741))

(assert (not b!7637190))

(assert (not b!7637000))

(assert (not b!7636928))

(assert (not b!7637137))

(assert (not d!2324735))

(assert (not b!7637195))

(assert (not b!7637244))

(assert (not b!7637169))

(assert (not b!7637025))

(assert (not b!7637221))

(assert (not b!7637263))

(assert (not b!7636925))

(assert (not d!2324753))

(assert (not b!7637223))

(assert (not b!7637076))

(assert (not b!7637208))

(assert (not bm!700939))

(assert (not d!2324759))

(assert (not b!7637063))

(assert (not b!7637044))

(assert (not b!7637064))

(assert (not d!2324769))

(assert (not b!7637012))

(assert (not bm!700940))

(assert (not b!7636929))

(assert (not bm!700944))

(assert (not d!2324791))

(assert (not b!7637187))

(assert (not d!2324803))

(assert (not bm!700943))

(assert (not b!7637081))

(assert (not bm!700957))

(assert (not b!7637254))

(assert (not b!7637167))

(assert (not b!7637069))

(assert (not b!7637077))

(assert (not d!2324779))

(assert (not b!7637078))

(assert (not b!7637240))

(assert (not b!7636930))

(assert (not d!2324755))

(assert (not b!7637062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

