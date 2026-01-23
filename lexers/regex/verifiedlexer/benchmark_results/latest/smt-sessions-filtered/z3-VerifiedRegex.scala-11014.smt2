; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570874 () Bool)

(assert start!570874)

(declare-fun b!5445313 () Bool)

(assert (=> b!5445313 true))

(assert (=> b!5445313 true))

(declare-fun lambda!286900 () Int)

(declare-fun lambda!286899 () Int)

(assert (=> b!5445313 (not (= lambda!286900 lambda!286899))))

(assert (=> b!5445313 true))

(assert (=> b!5445313 true))

(declare-fun b!5445296 () Bool)

(assert (=> b!5445296 true))

(declare-fun bs!1256244 () Bool)

(declare-fun b!5445295 () Bool)

(assert (= bs!1256244 (and b!5445295 b!5445313)))

(declare-datatypes ((C!30820 0))(
  ( (C!30821 (val!25112 Int)) )
))
(declare-datatypes ((Regex!15275 0))(
  ( (ElementMatch!15275 (c!950283 C!30820)) (Concat!24120 (regOne!31062 Regex!15275) (regTwo!31062 Regex!15275)) (EmptyExpr!15275) (Star!15275 (reg!15604 Regex!15275)) (EmptyLang!15275) (Union!15275 (regOne!31063 Regex!15275) (regTwo!31063 Regex!15275)) )
))
(declare-fun r!7292 () Regex!15275)

(declare-fun lt!2221067 () Regex!15275)

(declare-fun lambda!286902 () Int)

(assert (=> bs!1256244 (= (and (= (regOne!31062 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2221067 (regTwo!31062 r!7292))) (= lambda!286902 lambda!286899))))

(assert (=> bs!1256244 (not (= lambda!286902 lambda!286900))))

(assert (=> b!5445295 true))

(assert (=> b!5445295 true))

(assert (=> b!5445295 true))

(declare-fun lambda!286903 () Int)

(assert (=> bs!1256244 (not (= lambda!286903 lambda!286899))))

(assert (=> bs!1256244 (= (and (= (regOne!31062 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2221067 (regTwo!31062 r!7292))) (= lambda!286903 lambda!286900))))

(assert (=> b!5445295 (not (= lambda!286903 lambda!286902))))

(assert (=> b!5445295 true))

(assert (=> b!5445295 true))

(assert (=> b!5445295 true))

(declare-fun lt!2220976 () Regex!15275)

(declare-fun lambda!286904 () Int)

(assert (=> bs!1256244 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220976 (regTwo!31062 r!7292))) (= lambda!286904 lambda!286899))))

(assert (=> bs!1256244 (not (= lambda!286904 lambda!286900))))

(assert (=> b!5445295 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220976 lt!2221067)) (= lambda!286904 lambda!286902))))

(assert (=> b!5445295 (not (= lambda!286904 lambda!286903))))

(assert (=> b!5445295 true))

(assert (=> b!5445295 true))

(assert (=> b!5445295 true))

(declare-fun lambda!286905 () Int)

(assert (=> bs!1256244 (not (= lambda!286905 lambda!286899))))

(assert (=> bs!1256244 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220976 (regTwo!31062 r!7292))) (= lambda!286905 lambda!286900))))

(assert (=> b!5445295 (not (= lambda!286905 lambda!286904))))

(assert (=> b!5445295 (not (= lambda!286905 lambda!286902))))

(assert (=> b!5445295 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220976 lt!2221067)) (= lambda!286905 lambda!286903))))

(assert (=> b!5445295 true))

(assert (=> b!5445295 true))

(assert (=> b!5445295 true))

(declare-fun bs!1256245 () Bool)

(declare-fun b!5445301 () Bool)

(assert (= bs!1256245 (and b!5445301 b!5445313)))

(declare-fun lt!2220961 () Regex!15275)

(declare-fun lambda!286906 () Int)

(assert (=> bs!1256245 (= (and (= (regOne!31062 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220961 (regTwo!31062 r!7292))) (= lambda!286906 lambda!286899))))

(assert (=> bs!1256245 (not (= lambda!286906 lambda!286900))))

(declare-fun bs!1256246 () Bool)

(assert (= bs!1256246 (and b!5445301 b!5445295)))

(assert (=> bs!1256246 (not (= lambda!286906 lambda!286905))))

(assert (=> bs!1256246 (= (and (= (regOne!31062 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220961 lt!2220976)) (= lambda!286906 lambda!286904))))

(assert (=> bs!1256246 (= (= lt!2220961 lt!2221067) (= lambda!286906 lambda!286902))))

(assert (=> bs!1256246 (not (= lambda!286906 lambda!286903))))

(assert (=> b!5445301 true))

(assert (=> b!5445301 true))

(assert (=> b!5445301 true))

(declare-fun lambda!286907 () Int)

(assert (=> bs!1256245 (not (= lambda!286907 lambda!286899))))

(assert (=> bs!1256245 (= (and (= (regOne!31062 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220961 (regTwo!31062 r!7292))) (= lambda!286907 lambda!286900))))

(assert (=> bs!1256246 (= (and (= (regOne!31062 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220961 lt!2220976)) (= lambda!286907 lambda!286905))))

(assert (=> b!5445301 (not (= lambda!286907 lambda!286906))))

(assert (=> bs!1256246 (not (= lambda!286907 lambda!286904))))

(assert (=> bs!1256246 (not (= lambda!286907 lambda!286902))))

(assert (=> bs!1256246 (= (= lt!2220961 lt!2221067) (= lambda!286907 lambda!286903))))

(assert (=> b!5445301 true))

(assert (=> b!5445301 true))

(assert (=> b!5445301 true))

(declare-fun lt!2220942 () Regex!15275)

(declare-fun lambda!286908 () Int)

(assert (=> bs!1256245 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220942 (regTwo!31062 r!7292))) (= lambda!286908 lambda!286899))))

(assert (=> bs!1256246 (not (= lambda!286908 lambda!286905))))

(assert (=> b!5445301 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220942 lt!2220961)) (= lambda!286908 lambda!286906))))

(assert (=> bs!1256246 (= (= lt!2220942 lt!2220976) (= lambda!286908 lambda!286904))))

(assert (=> bs!1256246 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220942 lt!2221067)) (= lambda!286908 lambda!286902))))

(assert (=> bs!1256246 (not (= lambda!286908 lambda!286903))))

(assert (=> bs!1256245 (not (= lambda!286908 lambda!286900))))

(assert (=> b!5445301 (not (= lambda!286908 lambda!286907))))

(assert (=> b!5445301 true))

(assert (=> b!5445301 true))

(assert (=> b!5445301 true))

(declare-fun lambda!286909 () Int)

(assert (=> bs!1256245 (not (= lambda!286909 lambda!286899))))

(assert (=> bs!1256246 (= (= lt!2220942 lt!2220976) (= lambda!286909 lambda!286905))))

(assert (=> b!5445301 (not (= lambda!286909 lambda!286906))))

(assert (=> bs!1256246 (not (= lambda!286909 lambda!286904))))

(assert (=> bs!1256246 (not (= lambda!286909 lambda!286902))))

(assert (=> bs!1256245 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220942 (regTwo!31062 r!7292))) (= lambda!286909 lambda!286900))))

(assert (=> b!5445301 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220942 lt!2220961)) (= lambda!286909 lambda!286907))))

(assert (=> bs!1256246 (= (and (= (regTwo!31062 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220942 lt!2221067)) (= lambda!286909 lambda!286903))))

(assert (=> b!5445301 (not (= lambda!286909 lambda!286908))))

(assert (=> b!5445301 true))

(assert (=> b!5445301 true))

(assert (=> b!5445301 true))

(declare-fun bs!1256247 () Bool)

(declare-fun b!5445316 () Bool)

(assert (= bs!1256247 (and b!5445316 b!5445313)))

(declare-fun lt!2220921 () Regex!15275)

(declare-fun lambda!286910 () Int)

(assert (=> bs!1256247 (= (= lt!2220921 (regOne!31062 r!7292)) (= lambda!286910 lambda!286899))))

(declare-fun bs!1256248 () Bool)

(assert (= bs!1256248 (and b!5445316 b!5445295)))

(assert (=> bs!1256248 (not (= lambda!286910 lambda!286905))))

(declare-fun bs!1256249 () Bool)

(assert (= bs!1256249 (and b!5445316 b!5445301)))

(assert (=> bs!1256249 (= (and (= lt!2220921 (regOne!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220961)) (= lambda!286910 lambda!286906))))

(assert (=> bs!1256248 (= (and (= lt!2220921 (regTwo!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220976)) (= lambda!286910 lambda!286904))))

(assert (=> bs!1256248 (= (and (= lt!2220921 (regOne!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2221067)) (= lambda!286910 lambda!286902))))

(assert (=> bs!1256249 (not (= lambda!286910 lambda!286909))))

(assert (=> bs!1256247 (not (= lambda!286910 lambda!286900))))

(assert (=> bs!1256249 (not (= lambda!286910 lambda!286907))))

(assert (=> bs!1256248 (not (= lambda!286910 lambda!286903))))

(assert (=> bs!1256249 (= (and (= lt!2220921 (regTwo!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220942)) (= lambda!286910 lambda!286908))))

(assert (=> b!5445316 true))

(assert (=> b!5445316 true))

(assert (=> b!5445316 true))

(declare-fun lambda!286911 () Int)

(assert (=> bs!1256247 (not (= lambda!286911 lambda!286899))))

(assert (=> bs!1256248 (= (and (= lt!2220921 (regTwo!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220976)) (= lambda!286911 lambda!286905))))

(assert (=> bs!1256249 (not (= lambda!286911 lambda!286906))))

(assert (=> bs!1256248 (not (= lambda!286911 lambda!286904))))

(assert (=> bs!1256248 (not (= lambda!286911 lambda!286902))))

(assert (=> bs!1256249 (= (and (= lt!2220921 (regTwo!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220942)) (= lambda!286911 lambda!286909))))

(assert (=> b!5445316 (not (= lambda!286911 lambda!286910))))

(assert (=> bs!1256247 (= (= lt!2220921 (regOne!31062 r!7292)) (= lambda!286911 lambda!286900))))

(assert (=> bs!1256249 (= (and (= lt!2220921 (regOne!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220961)) (= lambda!286911 lambda!286907))))

(assert (=> bs!1256248 (= (and (= lt!2220921 (regOne!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2221067)) (= lambda!286911 lambda!286903))))

(assert (=> bs!1256249 (not (= lambda!286911 lambda!286908))))

(assert (=> b!5445316 true))

(assert (=> b!5445316 true))

(assert (=> b!5445316 true))

(declare-fun bs!1256250 () Bool)

(declare-fun b!5445284 () Bool)

(assert (= bs!1256250 (and b!5445284 b!5445313)))

(declare-datatypes ((List!62124 0))(
  ( (Nil!62000) (Cons!62000 (h!68448 C!30820) (t!375351 List!62124)) )
))
(declare-fun s!2326 () List!62124)

(declare-datatypes ((tuple2!64948 0))(
  ( (tuple2!64949 (_1!35777 List!62124) (_2!35777 List!62124)) )
))
(declare-fun lt!2220971 () tuple2!64948)

(declare-fun lambda!286912 () Int)

(assert (=> bs!1256250 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286912 lambda!286899))))

(declare-fun bs!1256251 () Bool)

(assert (= bs!1256251 (and b!5445284 b!5445295)))

(assert (=> bs!1256251 (not (= lambda!286912 lambda!286905))))

(declare-fun bs!1256252 () Bool)

(assert (= bs!1256252 (and b!5445284 b!5445301)))

(assert (=> bs!1256252 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220961)) (= lambda!286912 lambda!286906))))

(assert (=> bs!1256251 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220976)) (= lambda!286912 lambda!286904))))

(assert (=> bs!1256251 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2221067)) (= lambda!286912 lambda!286902))))

(assert (=> bs!1256252 (not (= lambda!286912 lambda!286909))))

(declare-fun bs!1256253 () Bool)

(assert (= bs!1256253 (and b!5445284 b!5445316)))

(assert (=> bs!1256253 (not (= lambda!286912 lambda!286911))))

(assert (=> bs!1256253 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2220921) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286912 lambda!286910))))

(assert (=> bs!1256250 (not (= lambda!286912 lambda!286900))))

(assert (=> bs!1256252 (not (= lambda!286912 lambda!286907))))

(assert (=> bs!1256251 (not (= lambda!286912 lambda!286903))))

(assert (=> bs!1256252 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220942)) (= lambda!286912 lambda!286908))))

(assert (=> b!5445284 true))

(assert (=> b!5445284 true))

(assert (=> b!5445284 true))

(declare-fun lambda!286913 () Int)

(assert (=> bs!1256250 (not (= lambda!286913 lambda!286899))))

(assert (=> b!5445284 (not (= lambda!286913 lambda!286912))))

(assert (=> bs!1256251 (not (= lambda!286913 lambda!286905))))

(assert (=> bs!1256252 (not (= lambda!286913 lambda!286906))))

(assert (=> bs!1256251 (not (= lambda!286913 lambda!286904))))

(assert (=> bs!1256251 (not (= lambda!286913 lambda!286902))))

(assert (=> bs!1256252 (not (= lambda!286913 lambda!286909))))

(assert (=> bs!1256253 (not (= lambda!286913 lambda!286911))))

(assert (=> bs!1256253 (not (= lambda!286913 lambda!286910))))

(assert (=> bs!1256250 (not (= lambda!286913 lambda!286900))))

(assert (=> bs!1256252 (not (= lambda!286913 lambda!286907))))

(assert (=> bs!1256251 (not (= lambda!286913 lambda!286903))))

(assert (=> bs!1256252 (not (= lambda!286913 lambda!286908))))

(assert (=> b!5445284 true))

(assert (=> b!5445284 true))

(assert (=> b!5445284 true))

(declare-fun lambda!286914 () Int)

(assert (=> b!5445284 (not (= lambda!286914 lambda!286912))))

(assert (=> bs!1256251 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220976)) (= lambda!286914 lambda!286905))))

(assert (=> bs!1256252 (not (= lambda!286914 lambda!286906))))

(assert (=> bs!1256251 (not (= lambda!286914 lambda!286904))))

(assert (=> bs!1256251 (not (= lambda!286914 lambda!286902))))

(assert (=> bs!1256252 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220942)) (= lambda!286914 lambda!286909))))

(assert (=> bs!1256253 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2220921) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286914 lambda!286911))))

(assert (=> bs!1256253 (not (= lambda!286914 lambda!286910))))

(assert (=> bs!1256250 (not (= lambda!286914 lambda!286899))))

(assert (=> b!5445284 (not (= lambda!286914 lambda!286913))))

(assert (=> bs!1256250 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286914 lambda!286900))))

(assert (=> bs!1256252 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220961)) (= lambda!286914 lambda!286907))))

(assert (=> bs!1256251 (= (and (= (_1!35777 lt!2220971) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2221067)) (= lambda!286914 lambda!286903))))

(assert (=> bs!1256252 (not (= lambda!286914 lambda!286908))))

(assert (=> b!5445284 true))

(assert (=> b!5445284 true))

(assert (=> b!5445284 true))

(declare-fun b!5445321 () Bool)

(assert (=> b!5445321 true))

(declare-fun bs!1256254 () Bool)

(assert (= bs!1256254 (and b!5445321 b!5445284)))

(declare-fun lambda!286917 () Int)

(declare-fun lambda!286915 () Int)

(assert (=> bs!1256254 (= lambda!286917 lambda!286915)))

(declare-fun lambda!286918 () Int)

(declare-fun lt!2221060 () Regex!15275)

(assert (=> bs!1256254 (= (and (= s!2326 (_1!35777 lt!2220971)) (= lt!2221060 (reg!15604 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220921)) (= lambda!286918 lambda!286912))))

(declare-fun bs!1256255 () Bool)

(assert (= bs!1256255 (and b!5445321 b!5445295)))

(assert (=> bs!1256255 (not (= lambda!286918 lambda!286905))))

(declare-fun bs!1256256 () Bool)

(assert (= bs!1256256 (and b!5445321 b!5445301)))

(assert (=> bs!1256256 (= (and (= lt!2221060 (regOne!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220961)) (= lambda!286918 lambda!286906))))

(assert (=> bs!1256255 (= (and (= lt!2221060 (regTwo!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220976)) (= lambda!286918 lambda!286904))))

(assert (=> bs!1256255 (= (and (= lt!2221060 (regOne!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2221067)) (= lambda!286918 lambda!286902))))

(assert (=> bs!1256254 (not (= lambda!286918 lambda!286914))))

(assert (=> bs!1256256 (not (= lambda!286918 lambda!286909))))

(declare-fun bs!1256257 () Bool)

(assert (= bs!1256257 (and b!5445321 b!5445316)))

(assert (=> bs!1256257 (not (= lambda!286918 lambda!286911))))

(assert (=> bs!1256257 (= (= lt!2221060 lt!2220921) (= lambda!286918 lambda!286910))))

(declare-fun bs!1256258 () Bool)

(assert (= bs!1256258 (and b!5445321 b!5445313)))

(assert (=> bs!1256258 (= (= lt!2221060 (regOne!31062 r!7292)) (= lambda!286918 lambda!286899))))

(assert (=> bs!1256254 (not (= lambda!286918 lambda!286913))))

(assert (=> bs!1256258 (not (= lambda!286918 lambda!286900))))

(assert (=> bs!1256256 (not (= lambda!286918 lambda!286907))))

(assert (=> bs!1256255 (not (= lambda!286918 lambda!286903))))

(assert (=> bs!1256256 (= (and (= lt!2221060 (regTwo!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220942)) (= lambda!286918 lambda!286908))))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(declare-fun lambda!286919 () Int)

(assert (=> bs!1256254 (not (= lambda!286919 lambda!286912))))

(assert (=> bs!1256255 (= (and (= lt!2221060 (regTwo!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220976)) (= lambda!286919 lambda!286905))))

(assert (=> bs!1256256 (not (= lambda!286919 lambda!286906))))

(assert (=> bs!1256255 (not (= lambda!286919 lambda!286904))))

(assert (=> bs!1256255 (not (= lambda!286919 lambda!286902))))

(assert (=> b!5445321 (not (= lambda!286919 lambda!286918))))

(assert (=> bs!1256254 (= (and (= s!2326 (_1!35777 lt!2220971)) (= lt!2221060 (reg!15604 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220921)) (= lambda!286919 lambda!286914))))

(assert (=> bs!1256256 (= (and (= lt!2221060 (regTwo!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220942)) (= lambda!286919 lambda!286909))))

(assert (=> bs!1256257 (= (= lt!2221060 lt!2220921) (= lambda!286919 lambda!286911))))

(assert (=> bs!1256257 (not (= lambda!286919 lambda!286910))))

(assert (=> bs!1256258 (not (= lambda!286919 lambda!286899))))

(assert (=> bs!1256254 (not (= lambda!286919 lambda!286913))))

(assert (=> bs!1256258 (= (= lt!2221060 (regOne!31062 r!7292)) (= lambda!286919 lambda!286900))))

(assert (=> bs!1256256 (= (and (= lt!2221060 (regOne!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2220961)) (= lambda!286919 lambda!286907))))

(assert (=> bs!1256255 (= (and (= lt!2221060 (regOne!31062 (regOne!31062 r!7292))) (= (regTwo!31062 r!7292) lt!2221067)) (= lambda!286919 lambda!286903))))

(assert (=> bs!1256256 (not (= lambda!286919 lambda!286908))))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(declare-fun lt!2221050 () tuple2!64948)

(declare-fun lambda!286920 () Int)

(assert (=> bs!1256254 (= (= (_1!35777 lt!2221050) (_1!35777 lt!2220971)) (= lambda!286920 lambda!286912))))

(assert (=> bs!1256255 (not (= lambda!286920 lambda!286905))))

(assert (=> bs!1256256 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220961)) (= lambda!286920 lambda!286906))))

(assert (=> bs!1256255 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220976)) (= lambda!286920 lambda!286904))))

(assert (=> bs!1256255 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2221067)) (= lambda!286920 lambda!286902))))

(assert (=> b!5445321 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2221060) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286920 lambda!286918))))

(assert (=> bs!1256254 (not (= lambda!286920 lambda!286914))))

(assert (=> bs!1256256 (not (= lambda!286920 lambda!286909))))

(assert (=> bs!1256257 (not (= lambda!286920 lambda!286911))))

(assert (=> bs!1256258 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286920 lambda!286899))))

(assert (=> bs!1256254 (not (= lambda!286920 lambda!286913))))

(assert (=> bs!1256258 (not (= lambda!286920 lambda!286900))))

(assert (=> bs!1256256 (not (= lambda!286920 lambda!286907))))

(assert (=> bs!1256255 (not (= lambda!286920 lambda!286903))))

(assert (=> bs!1256256 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220942)) (= lambda!286920 lambda!286908))))

(assert (=> bs!1256257 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2220921) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286920 lambda!286910))))

(assert (=> b!5445321 (not (= lambda!286920 lambda!286919))))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(declare-fun lambda!286921 () Int)

(assert (=> bs!1256254 (not (= lambda!286921 lambda!286912))))

(assert (=> bs!1256256 (not (= lambda!286921 lambda!286906))))

(assert (=> bs!1256255 (not (= lambda!286921 lambda!286904))))

(assert (=> bs!1256255 (not (= lambda!286921 lambda!286902))))

(assert (=> b!5445321 (not (= lambda!286921 lambda!286918))))

(assert (=> bs!1256254 (= (= (_1!35777 lt!2221050) (_1!35777 lt!2220971)) (= lambda!286921 lambda!286914))))

(assert (=> bs!1256256 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220942)) (= lambda!286921 lambda!286909))))

(assert (=> bs!1256257 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2220921) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286921 lambda!286911))))

(assert (=> bs!1256258 (not (= lambda!286921 lambda!286899))))

(assert (=> bs!1256254 (not (= lambda!286921 lambda!286913))))

(assert (=> bs!1256258 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286921 lambda!286900))))

(assert (=> bs!1256256 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220961)) (= lambda!286921 lambda!286907))))

(assert (=> bs!1256255 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220976)) (= lambda!286921 lambda!286905))))

(assert (=> b!5445321 (not (= lambda!286921 lambda!286920))))

(assert (=> bs!1256255 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2221067)) (= lambda!286921 lambda!286903))))

(assert (=> bs!1256256 (not (= lambda!286921 lambda!286908))))

(assert (=> bs!1256257 (not (= lambda!286921 lambda!286910))))

(assert (=> b!5445321 (= (and (= (_1!35777 lt!2221050) s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2221060) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286921 lambda!286919))))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(declare-fun lambda!286922 () Int)

(assert (=> bs!1256254 (not (= lambda!286922 lambda!286912))))

(assert (=> bs!1256256 (not (= lambda!286922 lambda!286906))))

(assert (=> bs!1256255 (not (= lambda!286922 lambda!286904))))

(assert (=> bs!1256255 (not (= lambda!286922 lambda!286902))))

(assert (=> b!5445321 (not (= lambda!286922 lambda!286918))))

(assert (=> bs!1256254 (not (= lambda!286922 lambda!286914))))

(assert (=> bs!1256256 (not (= lambda!286922 lambda!286909))))

(assert (=> bs!1256257 (not (= lambda!286922 lambda!286911))))

(assert (=> b!5445321 (not (= lambda!286922 lambda!286921))))

(assert (=> bs!1256258 (not (= lambda!286922 lambda!286899))))

(assert (=> bs!1256254 (= (= (_1!35777 lt!2221050) (_1!35777 lt!2220971)) (= lambda!286922 lambda!286913))))

(assert (=> bs!1256258 (not (= lambda!286922 lambda!286900))))

(assert (=> bs!1256256 (not (= lambda!286922 lambda!286907))))

(assert (=> bs!1256255 (not (= lambda!286922 lambda!286905))))

(assert (=> b!5445321 (not (= lambda!286922 lambda!286920))))

(assert (=> bs!1256255 (not (= lambda!286922 lambda!286903))))

(assert (=> bs!1256256 (not (= lambda!286922 lambda!286908))))

(assert (=> bs!1256257 (not (= lambda!286922 lambda!286910))))

(assert (=> b!5445321 (not (= lambda!286922 lambda!286919))))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(assert (=> b!5445321 true))

(declare-fun bs!1256259 () Bool)

(declare-fun b!5445311 () Bool)

(assert (= bs!1256259 (and b!5445311 b!5445284)))

(declare-fun lambda!286923 () Int)

(assert (=> bs!1256259 (= (= Nil!62000 (_1!35777 lt!2220971)) (= lambda!286923 lambda!286912))))

(declare-fun bs!1256260 () Bool)

(assert (= bs!1256260 (and b!5445311 b!5445301)))

(assert (=> bs!1256260 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220961)) (= lambda!286923 lambda!286906))))

(declare-fun bs!1256261 () Bool)

(assert (= bs!1256261 (and b!5445311 b!5445295)))

(assert (=> bs!1256261 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220976)) (= lambda!286923 lambda!286904))))

(assert (=> bs!1256261 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2221067)) (= lambda!286923 lambda!286902))))

(declare-fun bs!1256262 () Bool)

(assert (= bs!1256262 (and b!5445311 b!5445321)))

(assert (=> bs!1256262 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2221060) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286923 lambda!286918))))

(assert (=> bs!1256259 (not (= lambda!286923 lambda!286914))))

(assert (=> bs!1256260 (not (= lambda!286923 lambda!286909))))

(declare-fun bs!1256263 () Bool)

(assert (= bs!1256263 (and b!5445311 b!5445316)))

(assert (=> bs!1256263 (not (= lambda!286923 lambda!286911))))

(assert (=> bs!1256262 (not (= lambda!286923 lambda!286922))))

(assert (=> bs!1256262 (not (= lambda!286923 lambda!286921))))

(declare-fun bs!1256264 () Bool)

(assert (= bs!1256264 (and b!5445311 b!5445313)))

(assert (=> bs!1256264 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286923 lambda!286899))))

(assert (=> bs!1256259 (not (= lambda!286923 lambda!286913))))

(assert (=> bs!1256264 (not (= lambda!286923 lambda!286900))))

(assert (=> bs!1256260 (not (= lambda!286923 lambda!286907))))

(assert (=> bs!1256261 (not (= lambda!286923 lambda!286905))))

(assert (=> bs!1256262 (= (= Nil!62000 (_1!35777 lt!2221050)) (= lambda!286923 lambda!286920))))

(assert (=> bs!1256261 (not (= lambda!286923 lambda!286903))))

(assert (=> bs!1256260 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220942)) (= lambda!286923 lambda!286908))))

(assert (=> bs!1256263 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2220921) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286923 lambda!286910))))

(assert (=> bs!1256262 (not (= lambda!286923 lambda!286919))))

(assert (=> b!5445311 true))

(assert (=> b!5445311 true))

(declare-fun lambda!286924 () Int)

(assert (=> b!5445311 (not (= lambda!286924 lambda!286923))))

(assert (=> bs!1256259 (not (= lambda!286924 lambda!286912))))

(assert (=> bs!1256260 (not (= lambda!286924 lambda!286906))))

(assert (=> bs!1256261 (not (= lambda!286924 lambda!286904))))

(assert (=> bs!1256261 (not (= lambda!286924 lambda!286902))))

(assert (=> bs!1256262 (not (= lambda!286924 lambda!286918))))

(assert (=> bs!1256259 (= (= Nil!62000 (_1!35777 lt!2220971)) (= lambda!286924 lambda!286914))))

(assert (=> bs!1256260 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220942)) (= lambda!286924 lambda!286909))))

(assert (=> bs!1256263 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2220921) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286924 lambda!286911))))

(assert (=> bs!1256262 (not (= lambda!286924 lambda!286922))))

(assert (=> bs!1256262 (= (= Nil!62000 (_1!35777 lt!2221050)) (= lambda!286924 lambda!286921))))

(assert (=> bs!1256264 (not (= lambda!286924 lambda!286899))))

(assert (=> bs!1256259 (not (= lambda!286924 lambda!286913))))

(assert (=> bs!1256264 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 r!7292)) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286924 lambda!286900))))

(assert (=> bs!1256260 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220961)) (= lambda!286924 lambda!286907))))

(assert (=> bs!1256261 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2220976)) (= lambda!286924 lambda!286905))))

(assert (=> bs!1256262 (not (= lambda!286924 lambda!286920))))

(assert (=> bs!1256261 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (= lt!2220921 lt!2221067)) (= lambda!286924 lambda!286903))))

(assert (=> bs!1256260 (not (= lambda!286924 lambda!286908))))

(assert (=> bs!1256263 (not (= lambda!286924 lambda!286910))))

(assert (=> bs!1256262 (= (and (= Nil!62000 s!2326) (= (reg!15604 (regOne!31062 r!7292)) lt!2221060) (= lt!2220921 (regTwo!31062 r!7292))) (= lambda!286924 lambda!286919))))

(assert (=> b!5445311 true))

(assert (=> b!5445311 true))

(declare-fun lambda!286925 () Int)

(assert (=> b!5445311 (not (= lambda!286925 lambda!286923))))

(assert (=> bs!1256259 (not (= lambda!286925 lambda!286912))))

(assert (=> bs!1256260 (not (= lambda!286925 lambda!286906))))

(assert (=> bs!1256261 (not (= lambda!286925 lambda!286904))))

(assert (=> bs!1256261 (not (= lambda!286925 lambda!286902))))

(assert (=> bs!1256262 (not (= lambda!286925 lambda!286918))))

(assert (=> bs!1256259 (not (= lambda!286925 lambda!286914))))

(assert (=> bs!1256260 (not (= lambda!286925 lambda!286909))))

(assert (=> bs!1256263 (not (= lambda!286925 lambda!286911))))

(assert (=> bs!1256262 (= (= Nil!62000 (_1!35777 lt!2221050)) (= lambda!286925 lambda!286922))))

(assert (=> bs!1256262 (not (= lambda!286925 lambda!286921))))

(assert (=> bs!1256264 (not (= lambda!286925 lambda!286899))))

(assert (=> bs!1256259 (= (= Nil!62000 (_1!35777 lt!2220971)) (= lambda!286925 lambda!286913))))

(assert (=> bs!1256264 (not (= lambda!286925 lambda!286900))))

(assert (=> bs!1256260 (not (= lambda!286925 lambda!286907))))

(assert (=> bs!1256262 (not (= lambda!286925 lambda!286920))))

(assert (=> bs!1256261 (not (= lambda!286925 lambda!286905))))

(assert (=> b!5445311 (not (= lambda!286925 lambda!286924))))

(assert (=> bs!1256261 (not (= lambda!286925 lambda!286903))))

(assert (=> bs!1256260 (not (= lambda!286925 lambda!286908))))

(assert (=> bs!1256263 (not (= lambda!286925 lambda!286910))))

(assert (=> bs!1256262 (not (= lambda!286925 lambda!286919))))

(assert (=> b!5445311 true))

(assert (=> b!5445311 true))

(declare-fun bm!391517 () Bool)

(declare-datatypes ((Unit!154660 0))(
  ( (Unit!154661) )
))
(declare-fun call!391640 () Unit!154660)

(declare-fun call!391653 () Unit!154660)

(assert (=> bm!391517 (= call!391640 call!391653)))

(declare-fun bm!391518 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62125 0))(
  ( (Nil!62001) (Cons!62001 (h!68449 Regex!15275) (t!375352 List!62125)) )
))
(declare-datatypes ((Context!9318 0))(
  ( (Context!9319 (exprs!5159 List!62125)) )
))
(declare-fun call!391712 () (InoxSet Context!9318))

(declare-fun call!391686 () (InoxSet Context!9318))

(assert (=> bm!391518 (= call!391712 call!391686)))

(declare-fun bm!391519 () Bool)

(declare-fun call!391709 () Bool)

(declare-fun call!391617 () Bool)

(assert (=> bm!391519 (= call!391709 call!391617)))

(declare-fun b!5445279 () Bool)

(declare-fun e!3372831 () Unit!154660)

(declare-fun e!3372857 () Unit!154660)

(assert (=> b!5445279 (= e!3372831 e!3372857)))

(declare-fun c!950279 () Bool)

(get-info :version)

(assert (=> b!5445279 (= c!950279 ((_ is Concat!24120) (regOne!31062 r!7292)))))

(declare-fun setIsEmpty!35635 () Bool)

(declare-fun setRes!35635 () Bool)

(assert (=> setIsEmpty!35635 setRes!35635))

(declare-fun bm!391520 () Bool)

(declare-fun call!391702 () Unit!154660)

(declare-fun call!391689 () Unit!154660)

(assert (=> bm!391520 (= call!391702 call!391689)))

(declare-fun b!5445280 () Bool)

(declare-fun e!3372836 () Bool)

(declare-fun call!391529 () Bool)

(assert (=> b!5445280 (= e!3372836 call!391529)))

(declare-fun b!5445281 () Bool)

(declare-fun e!3372832 () Bool)

(declare-fun lt!2220927 () (InoxSet Context!9318))

(declare-fun matchZipper!1519 ((InoxSet Context!9318) List!62124) Bool)

(assert (=> b!5445281 (= e!3372832 (matchZipper!1519 lt!2220927 (t!375351 s!2326)))))

(declare-fun bm!391521 () Bool)

(declare-fun call!391624 () Unit!154660)

(declare-fun call!391592 () Unit!154660)

(assert (=> bm!391521 (= call!391624 call!391592)))

(declare-fun call!391623 () (InoxSet Context!9318))

(declare-fun c!950272 () Bool)

(declare-fun lt!2221064 () Context!9318)

(declare-fun lt!2221053 () Context!9318)

(declare-fun lt!2221091 () Context!9318)

(declare-fun bm!391522 () Bool)

(declare-fun c!950277 () Bool)

(declare-fun derivationStepZipperUp!647 (Context!9318 C!30820) (InoxSet Context!9318))

(assert (=> bm!391522 (= call!391623 (derivationStepZipperUp!647 (ite c!950272 lt!2221091 (ite c!950277 lt!2221064 lt!2221053)) (h!68448 s!2326)))))

(declare-fun b!5445282 () Bool)

(declare-fun e!3372842 () Bool)

(declare-fun call!391526 () Bool)

(assert (=> b!5445282 (= e!3372842 call!391526)))

(declare-fun bm!391523 () Bool)

(declare-fun call!391537 () Unit!154660)

(declare-fun call!391530 () Unit!154660)

(assert (=> bm!391523 (= call!391537 call!391530)))

(declare-fun lt!2220949 () tuple2!64948)

(declare-fun bm!391524 () Bool)

(declare-fun c!950276 () Bool)

(declare-fun lt!2221010 () Regex!15275)

(declare-fun c!950271 () Bool)

(declare-fun lt!2220937 () Regex!15275)

(declare-fun lt!2221072 () Regex!15275)

(declare-fun call!391627 () List!62124)

(declare-fun call!391600 () Bool)

(declare-fun c!950270 () Bool)

(declare-fun lt!2221059 () tuple2!64948)

(declare-fun c!950275 () Bool)

(declare-fun matchR!7460 (Regex!15275 List!62124) Bool)

(assert (=> bm!391524 (= call!391600 (matchR!7460 (ite c!950272 lt!2220937 (ite c!950277 (Concat!24120 (regOne!31062 (regOne!31062 r!7292)) (Concat!24120 (regTwo!31062 (regOne!31062 r!7292)) lt!2220976)) (ite c!950279 (Concat!24120 (regOne!31062 (regOne!31062 r!7292)) (Concat!24120 (regTwo!31062 (regOne!31062 r!7292)) lt!2220942)) (ite c!950270 (ite (or c!950271 c!950276) (reg!15604 (regOne!31062 r!7292)) lt!2221072) (ite c!950275 lt!2221010 (regTwo!31062 r!7292)))))) (ite (or c!950272 c!950277 c!950279) s!2326 (ite c!950270 (ite c!950271 (_1!35777 lt!2221059) (ite c!950276 (_1!35777 lt!2220949) call!391627)) s!2326))))))

(declare-fun bm!391525 () Bool)

(declare-datatypes ((Option!15386 0))(
  ( (None!15385) (Some!15385 (v!51414 tuple2!64948)) )
))
(declare-fun call!391654 () Option!15386)

(declare-fun findConcatSeparation!1800 (Regex!15275 Regex!15275 List!62124 List!62124 List!62124) Option!15386)

(assert (=> bm!391525 (= call!391654 (findConcatSeparation!1800 (ite (or c!950277 c!950279) (regTwo!31062 (regOne!31062 r!7292)) (ite c!950271 lt!2220921 (ite c!950276 lt!2221060 (reg!15604 (regOne!31062 r!7292))))) (ite c!950277 lt!2220976 (ite c!950279 lt!2220942 (ite (or c!950271 c!950276) (regTwo!31062 r!7292) lt!2220921))) Nil!62000 (ite (or c!950277 c!950279 c!950271 c!950276) s!2326 Nil!62000) (ite (or c!950277 c!950279 c!950271 c!950276) s!2326 Nil!62000)))))

(declare-fun bm!391526 () Bool)

(declare-fun call!391587 () Bool)

(declare-fun call!391540 () Bool)

(assert (=> bm!391526 (= call!391587 call!391540)))

(declare-fun lt!2220962 () Regex!15275)

(declare-fun bm!391527 () Bool)

(declare-fun lt!2221022 () Regex!15275)

(declare-fun call!391638 () Bool)

(declare-fun c!950274 () Bool)

(declare-fun lt!2221054 () List!62124)

(declare-fun lt!2221097 () List!62124)

(declare-fun lt!2220956 () Regex!15275)

(assert (=> bm!391527 (= call!391638 (matchR!7460 (ite c!950272 lt!2220956 (ite c!950277 lt!2220962 (ite c!950271 (ite c!950274 lt!2221022 lt!2221072) lt!2220921))) (ite (or c!950272 c!950277) s!2326 (ite c!950271 (ite c!950274 s!2326 lt!2221097) lt!2221054))))))

(declare-fun lt!2220943 () Option!15386)

(declare-fun call!391527 () Bool)

(declare-fun bm!391528 () Bool)

(declare-fun call!391726 () Option!15386)

(declare-fun lt!2221008 () Option!15386)

(declare-fun call!391683 () Option!15386)

(declare-fun call!391670 () Option!15386)

(declare-fun isDefined!12089 (Option!15386) Bool)

(assert (=> bm!391528 (= call!391527 (isDefined!12089 (ite c!950277 call!391670 (ite c!950279 call!391683 (ite c!950271 lt!2220943 (ite c!950276 lt!2221008 call!391726))))))))

(declare-fun bm!391529 () Bool)

(declare-fun call!391618 () Bool)

(declare-fun call!391660 () Bool)

(assert (=> bm!391529 (= call!391618 call!391660)))

(declare-fun b!5445283 () Bool)

(declare-fun e!3372845 () Bool)

(declare-fun tp!1500940 () Bool)

(declare-fun tp!1500938 () Bool)

(assert (=> b!5445283 (= e!3372845 (and tp!1500940 tp!1500938))))

(declare-fun bm!391530 () Bool)

(declare-fun call!391634 () Bool)

(declare-fun call!391665 () Bool)

(assert (=> bm!391530 (= call!391634 call!391665)))

(declare-fun bm!391531 () Bool)

(declare-fun call!391674 () Bool)

(declare-fun call!391577 () Bool)

(assert (=> bm!391531 (= call!391674 call!391577)))

(declare-fun bm!391532 () Bool)

(declare-fun mainMatchTheorem!2378 (Regex!15275 List!62124) Unit!154660)

(assert (=> bm!391532 (= call!391592 (mainMatchTheorem!2378 (ite c!950272 lt!2220956 (ite c!950276 lt!2221060 lt!2220921)) (ite c!950272 s!2326 (ite c!950276 (_1!35777 lt!2221050) Nil!62000))))))

(declare-fun bm!391533 () Bool)

(declare-fun call!391535 () Bool)

(declare-fun call!391610 () Bool)

(assert (=> bm!391533 (= call!391535 call!391610)))

(declare-fun bm!391534 () Bool)

(declare-fun call!391641 () Unit!154660)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1110 (Regex!15275 Regex!15275 List!62124) Unit!154660)

(assert (=> bm!391534 (= call!391641 (lemmaExistCutMatchRandMatchRSpecEquivalent!1110 (ite c!950277 (regOne!31062 (regOne!31062 r!7292)) (ite c!950279 (regTwo!31062 (regOne!31062 r!7292)) (ite c!950271 lt!2220921 (ite c!950276 lt!2221060 (reg!15604 (regOne!31062 r!7292)))))) (ite c!950277 lt!2221067 (ite c!950279 lt!2220942 (ite (or c!950271 c!950276) (regTwo!31062 r!7292) lt!2220921))) (ite (or c!950277 c!950279 c!950271 c!950276) s!2326 Nil!62000)))))

(declare-fun e!3372847 () Unit!154660)

(declare-fun Unit!154662 () Unit!154660)

(assert (=> b!5445284 (= e!3372847 Unit!154662)))

(declare-fun lt!2220950 () Unit!154660)

(declare-fun call!391522 () Unit!154660)

(assert (=> b!5445284 (= lt!2220950 call!391522)))

(declare-fun call!391693 () Bool)

(declare-fun call!391707 () Bool)

(assert (=> b!5445284 (= call!391693 call!391707)))

(declare-fun lt!2220997 () Unit!154660)

(declare-fun call!391604 () Unit!154660)

(assert (=> b!5445284 (= lt!2220997 call!391604)))

(declare-fun call!391575 () Option!15386)

(assert (=> b!5445284 (= lt!2220943 call!391575)))

(declare-fun call!391664 () Bool)

(declare-fun call!391676 () Bool)

(assert (=> b!5445284 (= call!391664 call!391676)))

(declare-fun lt!2221081 () Unit!154660)

(assert (=> b!5445284 (= lt!2221081 call!391653)))

(declare-fun call!391722 () Bool)

(declare-fun call!391524 () Bool)

(assert (=> b!5445284 (= call!391722 call!391524)))

(declare-fun lt!2221036 () Unit!154660)

(declare-fun call!391646 () Unit!154660)

(assert (=> b!5445284 (= lt!2221036 call!391646)))

(declare-fun call!391688 () Bool)

(declare-fun call!391714 () Bool)

(assert (=> b!5445284 (= call!391688 call!391714)))

(declare-fun call!391629 () tuple2!64948)

(assert (=> b!5445284 (= lt!2221059 call!391629)))

(declare-fun lt!2220964 () Unit!154660)

(declare-fun call!391570 () Unit!154660)

(assert (=> b!5445284 (= lt!2220964 call!391570)))

(declare-fun lt!2221028 () List!62124)

(declare-fun call!391713 () List!62124)

(assert (=> b!5445284 (= lt!2221028 call!391713)))

(declare-fun call!391609 () List!62124)

(assert (=> b!5445284 (= lt!2221097 call!391609)))

(declare-fun lt!2221016 () List!62124)

(declare-fun call!391678 () List!62124)

(assert (=> b!5445284 (= lt!2221016 call!391678)))

(declare-fun lt!2221079 () List!62124)

(declare-fun call!391671 () List!62124)

(assert (=> b!5445284 (= lt!2221079 call!391671)))

(assert (=> b!5445284 (= lt!2221016 lt!2221079)))

(declare-fun lt!2221076 () Unit!154660)

(declare-fun call!391719 () Unit!154660)

(assert (=> b!5445284 (= lt!2221076 call!391719)))

(declare-fun call!391649 () Bool)

(assert (=> b!5445284 call!391649))

(declare-fun lt!2220975 () Unit!154660)

(declare-fun call!391591 () Unit!154660)

(assert (=> b!5445284 (= lt!2220975 call!391591)))

(declare-fun call!391531 () Bool)

(assert (=> b!5445284 call!391531))

(declare-fun lt!2221090 () Unit!154660)

(declare-fun call!391710 () Unit!154660)

(assert (=> b!5445284 (= lt!2221090 call!391710)))

(declare-fun call!391590 () Bool)

(declare-fun call!391684 () Bool)

(assert (=> b!5445284 (= call!391590 call!391684)))

(declare-fun lt!2220911 () Unit!154660)

(declare-fun call!391564 () Unit!154660)

(assert (=> b!5445284 (= lt!2220911 call!391564)))

(declare-fun call!391700 () Bool)

(assert (=> b!5445284 call!391700))

(declare-fun lt!2221075 () Unit!154660)

(declare-fun call!391724 () Unit!154660)

(assert (=> b!5445284 (= lt!2221075 call!391724)))

(declare-fun lt!2220915 () Unit!154660)

(declare-fun call!391681 () Unit!154660)

(assert (=> b!5445284 (= lt!2220915 call!391681)))

(declare-fun call!391711 () Bool)

(assert (=> b!5445284 call!391711))

(declare-fun lt!2220901 () Unit!154660)

(declare-fun call!391569 () Unit!154660)

(assert (=> b!5445284 (= lt!2220901 call!391569)))

(declare-fun res!2318618 () Bool)

(declare-fun call!391701 () Bool)

(assert (=> b!5445284 (= res!2318618 call!391701)))

(declare-fun e!3372860 () Bool)

(assert (=> b!5445284 (=> (not res!2318618) (not e!3372860))))

(assert (=> b!5445284 e!3372860))

(declare-fun lt!2220917 () Unit!154660)

(declare-fun call!391696 () Unit!154660)

(assert (=> b!5445284 (= lt!2220917 call!391696)))

(declare-fun call!391534 () Bool)

(assert (=> b!5445284 call!391534))

(declare-fun call!391596 () Bool)

(declare-fun lt!2220955 () Regex!15275)

(declare-fun lt!2220992 () Regex!15275)

(declare-fun bm!391535 () Bool)

(assert (=> bm!391535 (= call!391596 (matchR!7460 (ite c!950277 lt!2221067 (ite c!950279 (Concat!24120 (regOne!31062 r!7292) lt!2220942) (ite c!950271 lt!2220955 (ite c!950276 lt!2221072 lt!2220992)))) (ite (or c!950277 c!950279) s!2326 (ite c!950271 lt!2221079 (ite c!950276 (_2!35777 lt!2220949) s!2326)))))))

(declare-fun bm!391536 () Bool)

(declare-fun call!391633 () Option!15386)

(assert (=> bm!391536 (= call!391575 call!391633)))

(declare-fun b!5445285 () Bool)

(declare-fun e!3372837 () Bool)

(assert (=> b!5445285 (= e!3372837 false)))

(declare-fun tp!1500936 () Bool)

(declare-fun setNonEmpty!35635 () Bool)

(declare-fun e!3372863 () Bool)

(declare-fun setElem!35635 () Context!9318)

(declare-fun inv!81434 (Context!9318) Bool)

(assert (=> setNonEmpty!35635 (= setRes!35635 (and tp!1500936 (inv!81434 setElem!35635) e!3372863))))

(declare-fun z!1189 () (InoxSet Context!9318))

(declare-fun setRest!35635 () (InoxSet Context!9318))

(assert (=> setNonEmpty!35635 (= z!1189 ((_ map or) (store ((as const (Array Context!9318 Bool)) false) setElem!35635 true) setRest!35635))))

(declare-fun bm!391537 () Bool)

(declare-fun call!391632 () Bool)

(declare-fun call!391698 () Bool)

(assert (=> bm!391537 (= call!391632 call!391698)))

(declare-fun lt!2220912 () (InoxSet Context!9318))

(declare-fun call!391716 () Unit!154660)

(declare-fun lt!2220983 () (InoxSet Context!9318))

(declare-fun bm!391538 () Bool)

(declare-fun lt!2220960 () (InoxSet Context!9318))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!512 ((InoxSet Context!9318) (InoxSet Context!9318) List!62124) Unit!154660)

(assert (=> bm!391538 (= call!391716 (lemmaZipperConcatMatchesSameAsBothZippers!512 (ite c!950272 lt!2220960 lt!2220983) (ite c!950272 lt!2220927 lt!2220912) (t!375351 s!2326)))))

(declare-fun bm!391539 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!242 (Regex!15275 Regex!15275 List!62124 List!62124) Unit!154660)

(assert (=> bm!391539 (= call!391569 (lemmaTwoRegexMatchThenConcatMatchesConcatString!242 (ite c!950271 (reg!15604 (regOne!31062 r!7292)) lt!2220921) (ite c!950271 lt!2221072 (regTwo!31062 r!7292)) (ite c!950271 (_1!35777 lt!2221059) lt!2221054) (ite c!950271 lt!2221097 (_2!35777 lt!2221050))))))

(declare-fun bm!391540 () Bool)

(declare-fun call!391692 () Unit!154660)

(assert (=> bm!391540 (= call!391710 call!391692)))

(declare-fun b!5445286 () Bool)

(declare-fun tp_is_empty!39803 () Bool)

(assert (=> b!5445286 (= e!3372845 tp_is_empty!39803)))

(declare-fun bm!391541 () Bool)

(declare-fun call!391652 () (InoxSet Context!9318))

(declare-fun lt!2220935 () Context!9318)

(assert (=> bm!391541 (= call!391652 (derivationStepZipperUp!647 lt!2220935 (h!68448 s!2326)))))

(declare-fun bm!391542 () Bool)

(declare-fun call!391639 () Bool)

(assert (=> bm!391542 (= call!391610 call!391639)))

(declare-fun bm!391543 () Bool)

(declare-fun call!391565 () Unit!154660)

(declare-fun call!391616 () Unit!154660)

(assert (=> bm!391543 (= call!391565 call!391616)))

(declare-fun bm!391544 () Bool)

(declare-fun call!391594 () Bool)

(declare-fun call!391635 () Bool)

(assert (=> bm!391544 (= call!391594 call!391635)))

(declare-fun bm!391545 () Bool)

(declare-fun call!391598 () Bool)

(assert (=> bm!391545 (= call!391598 call!391707)))

(declare-fun b!5445287 () Bool)

(assert (=> b!5445287 (= c!950270 ((_ is Star!15275) (regOne!31062 r!7292)))))

(declare-fun e!3372844 () Unit!154660)

(assert (=> b!5445287 (= e!3372857 e!3372844)))

(declare-fun lt!2221062 () Regex!15275)

(declare-fun bm!391546 () Bool)

(declare-fun lt!2221006 () Regex!15275)

(assert (=> bm!391546 (= call!391689 (mainMatchTheorem!2378 (ite c!950272 lt!2221062 (ite c!950277 lt!2221067 (ite c!950279 lt!2221006 (ite c!950270 lt!2220955 (regTwo!31062 r!7292))))) s!2326))))

(declare-fun bm!391547 () Bool)

(declare-fun call!391568 () Unit!154660)

(declare-fun call!391533 () Unit!154660)

(assert (=> bm!391547 (= call!391568 call!391533)))

(declare-fun lt!2221093 () (InoxSet Context!9318))

(declare-fun lt!2221032 () (InoxSet Context!9318))

(declare-fun bm!391548 () Bool)

(declare-fun call!391574 () (InoxSet Context!9318))

(declare-fun lambda!286901 () Int)

(declare-fun lt!2221009 () (InoxSet Context!9318))

(declare-fun flatMap!1002 ((InoxSet Context!9318) Int) (InoxSet Context!9318))

(assert (=> bm!391548 (= call!391574 (flatMap!1002 (ite c!950277 lt!2221093 (ite c!950270 lt!2221009 lt!2221032)) (ite c!950277 lambda!286901 (ite c!950270 lambda!286901 lambda!286901))))))

(declare-fun bm!391549 () Bool)

(declare-fun call!391573 () Bool)

(declare-fun call!391611 () Bool)

(assert (=> bm!391549 (= call!391573 call!391611)))

(declare-fun bm!391550 () Bool)

(assert (=> bm!391550 (= call!391591 (lemmaTwoRegexMatchThenConcatMatchesConcatString!242 (ite c!950271 lt!2220921 (ite c!950276 (reg!15604 (regOne!31062 r!7292)) lt!2220921)) (ite c!950271 (regTwo!31062 r!7292) (ite c!950276 lt!2221072 (regTwo!31062 r!7292))) (ite c!950271 (_2!35777 lt!2221059) (ite c!950276 (_1!35777 lt!2220949) Nil!62000)) (ite c!950271 (_2!35777 lt!2220971) (ite c!950276 (_2!35777 lt!2220949) s!2326))))))

(declare-fun bm!391551 () Bool)

(declare-fun ++!13629 (List!62124 List!62124) List!62124)

(assert (=> bm!391551 (= call!391609 (++!13629 (ite c!950271 (_2!35777 lt!2221059) (_1!35777 lt!2220949)) (ite c!950271 (_2!35777 lt!2220971) (_2!35777 lt!2220949))))))

(declare-fun bm!391552 () Bool)

(declare-fun matchRSpec!2378 (Regex!15275 List!62124) Bool)

(assert (=> bm!391552 (= call!391665 (matchRSpec!2378 (ite c!950272 lt!2220956 (ite c!950277 lt!2221067 (ite c!950279 lt!2220961 (ite c!950270 lt!2220955 (regTwo!31062 r!7292))))) s!2326))))

(declare-fun bm!391553 () Bool)

(declare-fun call!391637 () Bool)

(declare-fun call!391556 () Bool)

(assert (=> bm!391553 (= call!391637 call!391556)))

(declare-fun b!5445288 () Bool)

(declare-fun e!3372840 () Bool)

(declare-fun e!3372862 () Bool)

(assert (=> b!5445288 (= e!3372840 (not e!3372862))))

(declare-fun res!2318627 () Bool)

(assert (=> b!5445288 (=> res!2318627 e!3372862)))

(declare-datatypes ((List!62126 0))(
  ( (Nil!62002) (Cons!62002 (h!68450 Context!9318) (t!375353 List!62126)) )
))
(declare-fun zl!343 () List!62126)

(assert (=> b!5445288 (= res!2318627 (not ((_ is Cons!62002) zl!343)))))

(declare-fun lt!2220908 () Bool)

(declare-fun lt!2220899 () Bool)

(assert (=> b!5445288 (= lt!2220908 lt!2220899)))

(assert (=> b!5445288 (= lt!2220899 (matchRSpec!2378 r!7292 s!2326))))

(assert (=> b!5445288 (= lt!2220908 (matchR!7460 r!7292 s!2326))))

(declare-fun lt!2221089 () Unit!154660)

(assert (=> b!5445288 (= lt!2221089 (mainMatchTheorem!2378 r!7292 s!2326))))

(declare-fun bm!391554 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1564 (Regex!15275 Regex!15275 List!62124) Unit!154660)

(assert (=> bm!391554 (= call!391530 (lemmaFindConcatSeparationEquivalentToExists!1564 (ite c!950277 (regOne!31062 (regOne!31062 r!7292)) (ite c!950279 (regTwo!31062 (regOne!31062 r!7292)) (ite c!950271 (reg!15604 (regOne!31062 r!7292)) lt!2221060))) (ite c!950277 lt!2221067 (ite c!950279 lt!2220942 (ite c!950271 lt!2220921 (regTwo!31062 r!7292)))) (ite (or c!950277 c!950279) s!2326 (ite c!950271 (_1!35777 lt!2220971) s!2326))))))

(declare-fun bm!391555 () Bool)

(declare-fun call!391607 () Unit!154660)

(assert (=> bm!391555 (= call!391646 call!391607)))

(declare-fun lt!2221018 () List!62125)

(declare-fun bm!391556 () Bool)

(declare-fun lt!2220906 () List!62125)

(declare-fun lemmaConcatPreservesForall!242 (List!62125 List!62125 Int) Unit!154660)

(assert (=> bm!391556 (= call!391696 (lemmaConcatPreservesForall!242 lt!2220906 lt!2221018 (ite c!950271 lambda!286915 lambda!286917)))))

(declare-fun bm!391557 () Bool)

(declare-fun call!391717 () Regex!15275)

(declare-fun call!391685 () Regex!15275)

(assert (=> bm!391557 (= call!391717 call!391685)))

(declare-fun bm!391558 () Bool)

(declare-fun call!391614 () Regex!15275)

(declare-fun call!391642 () Regex!15275)

(assert (=> bm!391558 (= call!391614 call!391642)))

(declare-fun bm!391560 () Bool)

(declare-fun call!391544 () Bool)

(declare-fun call!391645 () Bool)

(assert (=> bm!391560 (= call!391544 call!391645)))

(declare-fun b!5445289 () Bool)

(declare-fun e!3372855 () Bool)

(declare-fun tp!1500939 () Bool)

(assert (=> b!5445289 (= e!3372855 tp!1500939)))

(declare-fun bm!391561 () Bool)

(declare-fun call!391525 () (InoxSet Context!9318))

(assert (=> bm!391561 (= call!391525 call!391623)))

(declare-fun b!5445290 () Bool)

(declare-fun e!3372865 () Bool)

(declare-fun call!391680 () Bool)

(assert (=> b!5445290 (= e!3372865 (= lt!2220908 call!391680))))

(declare-fun b!5445291 () Bool)

(declare-fun e!3372868 () Bool)

(declare-fun call!391546 () Bool)

(assert (=> b!5445291 (= e!3372868 (= lt!2220908 call!391546))))

(declare-fun res!2318624 () Bool)

(assert (=> start!570874 (=> (not res!2318624) (not e!3372840))))

(declare-fun validRegex!7011 (Regex!15275) Bool)

(assert (=> start!570874 (= res!2318624 (validRegex!7011 r!7292))))

(assert (=> start!570874 e!3372840))

(assert (=> start!570874 e!3372845))

(declare-fun condSetEmpty!35635 () Bool)

(assert (=> start!570874 (= condSetEmpty!35635 (= z!1189 ((as const (Array Context!9318 Bool)) false)))))

(assert (=> start!570874 setRes!35635))

(declare-fun e!3372866 () Bool)

(assert (=> start!570874 e!3372866))

(declare-fun e!3372841 () Bool)

(assert (=> start!570874 e!3372841))

(declare-fun bm!391559 () Bool)

(declare-fun call!391673 () Bool)

(declare-fun call!391612 () Bool)

(assert (=> bm!391559 (= call!391673 call!391612)))

(declare-fun bm!391562 () Bool)

(declare-fun call!391636 () Bool)

(assert (=> bm!391562 (= call!391660 call!391636)))

(declare-fun call!391720 () Bool)

(declare-fun bm!391563 () Bool)

(declare-fun Exists!2456 (Int) Bool)

(assert (=> bm!391563 (= call!391720 (Exists!2456 (ite c!950277 lambda!286904 (ite c!950271 lambda!286912 (ite c!950276 lambda!286920 lambda!286923)))))))

(declare-fun bm!391564 () Bool)

(declare-fun lt!2221002 () (InoxSet Context!9318))

(declare-fun lt!2220994 () Context!9318)

(declare-fun lt!2221063 () Context!9318)

(declare-fun lt!2221085 () (InoxSet Context!9318))

(declare-fun call!391695 () Unit!154660)

(declare-fun lemmaFlatMapOnSingletonSet!534 ((InoxSet Context!9318) Context!9318 Int) Unit!154660)

(assert (=> bm!391564 (= call!391695 (lemmaFlatMapOnSingletonSet!534 (ite c!950272 lt!2221002 (ite c!950270 lt!2221085 lt!2221032)) (ite c!950272 lt!2220994 (ite c!950270 lt!2221063 lt!2220935)) (ite c!950272 lambda!286901 (ite c!950270 lambda!286901 lambda!286901))))))

(declare-fun bm!391565 () Bool)

(assert (=> bm!391565 (= call!391636 call!391600)))

(declare-fun bm!391566 () Bool)

(declare-fun call!391677 () Bool)

(assert (=> bm!391566 (= call!391531 call!391677)))

(declare-fun bm!391567 () Bool)

(assert (=> bm!391567 (= call!391700 call!391632)))

(declare-fun lt!2221037 () List!62125)

(declare-fun bm!391568 () Bool)

(declare-fun lt!2220980 () (InoxSet Context!9318))

(declare-fun lt!2221056 () (InoxSet Context!9318))

(declare-fun lt!2221011 () List!62124)

(declare-fun lt!2220981 () (InoxSet Context!9318))

(declare-fun call!391621 () List!62125)

(assert (=> bm!391568 (= call!391639 (matchZipper!1519 (ite c!950272 lt!2220980 (ite c!950277 lt!2221056 (ite c!950270 (ite c!950271 (store ((as const (Array Context!9318 Bool)) false) (Context!9319 call!391621) true) (ite c!950276 (store ((as const (Array Context!9318 Bool)) false) (Context!9319 lt!2221037) true) lt!2220981)) lt!2220927))) (ite c!950272 (t!375351 s!2326) (ite c!950277 s!2326 (ite c!950270 (ite c!950271 lt!2221079 (ite c!950276 lt!2221011 s!2326)) (t!375351 s!2326))))))))

(declare-fun b!5445292 () Bool)

(declare-fun lt!2220926 () Bool)

(assert (=> b!5445292 (= e!3372860 lt!2220926)))

(declare-fun bm!391569 () Bool)

(declare-fun call!391661 () Bool)

(assert (=> bm!391569 (= call!391661 call!391688)))

(declare-fun bm!391570 () Bool)

(declare-fun call!391647 () Bool)

(declare-fun call!391659 () Bool)

(assert (=> bm!391570 (= call!391647 call!391659)))

(declare-fun lt!2221057 () (InoxSet Context!9318))

(declare-fun call!391567 () Bool)

(declare-fun bm!391571 () Bool)

(declare-fun lt!2221004 () (InoxSet Context!9318))

(assert (=> bm!391571 (= call!391567 (matchZipper!1519 (ite c!950272 ((_ map or) lt!2220960 lt!2220927) (ite c!950277 z!1189 (ite c!950279 lt!2221004 (ite c!950270 z!1189 ((_ map or) lt!2221057 lt!2220927))))) (ite c!950272 (t!375351 s!2326) (ite (or c!950277 c!950279 c!950270) s!2326 (t!375351 s!2326)))))))

(declare-fun bm!391572 () Bool)

(declare-fun call!391706 () Bool)

(assert (=> bm!391572 (= call!391706 (Exists!2456 (ite c!950277 lambda!286905 (ite c!950279 lambda!286909 (ite c!950271 lambda!286910 lambda!286918)))))))

(declare-fun bm!391573 () Bool)

(assert (=> bm!391573 (= call!391713 (++!13629 (ite c!950271 (_1!35777 lt!2221059) lt!2221054) (ite c!950271 (_2!35777 lt!2221059) (_2!35777 lt!2221050))))))

(declare-fun b!5445293 () Bool)

(declare-fun tp!1500935 () Bool)

(assert (=> b!5445293 (= e!3372841 (and tp_is_empty!39803 tp!1500935))))

(declare-fun bm!391574 () Bool)

(declare-fun call!391721 () Bool)

(assert (=> bm!391574 (= call!391611 call!391721)))

(declare-fun b!5445294 () Bool)

(declare-fun e!3372833 () Bool)

(assert (=> b!5445294 (= e!3372833 call!391659)))

(declare-fun bm!391575 () Bool)

(assert (=> bm!391575 (= call!391676 (Exists!2456 (ite c!950271 lambda!286912 lambda!286922)))))

(declare-fun bm!391576 () Bool)

(declare-fun call!391694 () Bool)

(assert (=> bm!391576 (= call!391694 call!391714)))

(declare-fun bm!391577 () Bool)

(declare-fun call!391650 () Unit!154660)

(declare-fun lt!2221058 () Regex!15275)

(declare-fun lt!2221043 () Regex!15275)

(assert (=> bm!391577 (= call!391650 (mainMatchTheorem!2378 (ite c!950272 lt!2221043 (ite c!950277 lt!2220962 (ite c!950279 lt!2220961 (ite c!950270 (ite c!950271 lt!2220921 lt!2221058) (regOne!31062 r!7292))))) (ite (or c!950272 c!950277 c!950279) s!2326 (ite (and c!950270 c!950271) (_1!35777 lt!2220971) s!2326))))))

(declare-fun Unit!154663 () Unit!154660)

(assert (=> b!5445295 (= e!3372831 Unit!154663)))

(declare-fun lt!2221017 () List!62125)

(assert (=> b!5445295 (= lt!2221017 (Cons!62001 (regTwo!31062 (regOne!31062 r!7292)) (t!375352 (exprs!5159 (h!68450 zl!343)))))))

(declare-fun lt!2220993 () Context!9318)

(assert (=> b!5445295 (= lt!2220993 (Context!9319 lt!2221017))))

(declare-fun call!391585 () (InoxSet Context!9318))

(assert (=> b!5445295 (= lt!2220983 call!391585)))

(declare-fun lt!2221001 () (InoxSet Context!9318))

(declare-fun call!391625 () (InoxSet Context!9318))

(assert (=> b!5445295 (= lt!2221001 call!391625)))

(declare-fun lt!2221044 () Unit!154660)

(declare-fun call!391580 () Unit!154660)

(assert (=> b!5445295 (= lt!2221044 call!391580)))

(declare-fun lt!2221096 () Bool)

(assert (=> b!5445295 (= lt!2221096 call!391594)))

(declare-fun res!2318612 () Bool)

(assert (=> b!5445295 (= res!2318612 lt!2221096)))

(assert (=> b!5445295 (=> res!2318612 e!3372833)))

(declare-fun call!391662 () Bool)

(assert (=> b!5445295 (= call!391662 e!3372833)))

(declare-fun lt!2221019 () List!62125)

(assert (=> b!5445295 (= lt!2221019 (Cons!62001 (regOne!31062 (regOne!31062 r!7292)) lt!2221017))))

(assert (=> b!5445295 (= lt!2221064 (Context!9319 lt!2221019))))

(assert (=> b!5445295 (= lt!2221093 (store ((as const (Array Context!9318 Bool)) false) lt!2221064 true))))

(assert (=> b!5445295 (= lt!2221056 (store ((as const (Array Context!9318 Bool)) false) lt!2220993 true))))

(declare-fun lt!2220910 () (InoxSet Context!9318))

(assert (=> b!5445295 (= lt!2220910 call!391525)))

(declare-fun lt!2220944 () Unit!154660)

(declare-fun call!391578 () Unit!154660)

(assert (=> b!5445295 (= lt!2220944 call!391578)))

(assert (=> b!5445295 (= call!391574 call!391525)))

(declare-fun call!391630 () (InoxSet Context!9318))

(assert (=> b!5445295 (= lt!2220912 call!391630)))

(declare-fun lt!2221095 () Unit!154660)

(declare-fun call!391615 () Unit!154660)

(assert (=> b!5445295 (= lt!2221095 call!391615)))

(declare-fun call!391548 () (InoxSet Context!9318))

(assert (=> b!5445295 (= call!391548 call!391630)))

(declare-fun lt!2221023 () Unit!154660)

(assert (=> b!5445295 (= lt!2221023 call!391716)))

(declare-fun res!2318630 () Bool)

(assert (=> b!5445295 (= res!2318630 lt!2221096)))

(assert (=> b!5445295 (=> res!2318630 e!3372836)))

(declare-fun call!391669 () Bool)

(assert (=> b!5445295 (= call!391669 e!3372836)))

(declare-fun call!391553 () Regex!15275)

(assert (=> b!5445295 (= lt!2220962 call!391553)))

(declare-fun lt!2221088 () Unit!154660)

(declare-fun call!391643 () Unit!154660)

(assert (=> b!5445295 (= lt!2221088 call!391643)))

(declare-fun lt!2220958 () Bool)

(declare-fun call!391672 () Bool)

(assert (=> b!5445295 (= lt!2220958 call!391672)))

(declare-fun call!391532 () Bool)

(assert (=> b!5445295 (= lt!2220958 call!391532)))

(declare-fun call!391554 () Regex!15275)

(assert (=> b!5445295 (= lt!2221067 call!391554)))

(declare-fun lt!2220969 () Unit!154660)

(assert (=> b!5445295 (= lt!2220969 call!391616)))

(declare-fun lt!2220903 () Bool)

(assert (=> b!5445295 (= lt!2220903 call!391596)))

(assert (=> b!5445295 (= lt!2220903 call!391610)))

(declare-fun lt!2221070 () Unit!154660)

(declare-fun call!391601 () Unit!154660)

(assert (=> b!5445295 (= lt!2221070 call!391601)))

(assert (=> b!5445295 (= lt!2220958 call!391674)))

(declare-fun lt!2220952 () Unit!154660)

(assert (=> b!5445295 (= lt!2220952 call!391530)))

(declare-fun call!391581 () Bool)

(assert (=> b!5445295 (= call!391527 call!391581)))

(declare-fun lt!2220988 () Unit!154660)

(assert (=> b!5445295 (= lt!2220988 call!391641)))

(declare-fun call!391648 () Bool)

(assert (=> b!5445295 (= call!391617 call!391648)))

(declare-fun lt!2220936 () Unit!154660)

(assert (=> b!5445295 (= lt!2220936 call!391702)))

(assert (=> b!5445295 (= lt!2220903 call!391634)))

(assert (=> b!5445295 (= lt!2220976 call!391685)))

(declare-fun lt!2220940 () Unit!154660)

(declare-fun call!391666 () Unit!154660)

(assert (=> b!5445295 (= lt!2220940 call!391666)))

(declare-fun call!391703 () Bool)

(assert (=> b!5445295 (= call!391703 call!391720)))

(declare-fun lt!2221039 () Unit!154660)

(declare-fun call!391597 () Unit!154660)

(assert (=> b!5445295 (= lt!2221039 call!391597)))

(assert (=> b!5445295 (= call!391556 call!391706)))

(declare-fun lt!2220931 () Unit!154660)

(declare-fun call!391552 () Unit!154660)

(assert (=> b!5445295 (= lt!2220931 call!391552)))

(declare-fun res!2318610 () Bool)

(declare-fun call!391549 () Bool)

(assert (=> b!5445295 (= res!2318610 (= call!391549 call!391636))))

(assert (=> b!5445295 (=> (not res!2318610) (not e!3372865))))

(assert (=> b!5445295 e!3372865))

(declare-fun bm!391578 () Bool)

(declare-fun call!391571 () Bool)

(assert (=> bm!391578 (= call!391664 call!391571)))

(declare-fun bm!391579 () Bool)

(declare-fun call!391668 () Unit!154660)

(assert (=> bm!391579 (= call!391564 call!391668)))

(declare-fun e!3372834 () Bool)

(assert (=> b!5445296 (= e!3372834 true)))

(declare-fun lt!2220977 () Unit!154660)

(declare-fun e!3372867 () Unit!154660)

(assert (=> b!5445296 (= lt!2220977 e!3372867)))

(declare-fun c!950282 () Bool)

(assert (=> b!5445296 (= c!950282 (and ((_ is ElementMatch!15275) (regOne!31062 r!7292)) (= (c!950283 (regOne!31062 r!7292)) (h!68448 s!2326))))))

(declare-fun lt!2220953 () Unit!154660)

(declare-fun e!3372843 () Unit!154660)

(assert (=> b!5445296 (= lt!2220953 e!3372843)))

(declare-fun c!950278 () Bool)

(declare-fun nullable!5444 (Regex!15275) Bool)

(assert (=> b!5445296 (= c!950278 (nullable!5444 (h!68449 (exprs!5159 (h!68450 zl!343)))))))

(assert (=> b!5445296 (= (flatMap!1002 z!1189 lambda!286901) (derivationStepZipperUp!647 (h!68450 zl!343) (h!68448 s!2326)))))

(declare-fun lt!2221031 () Unit!154660)

(assert (=> b!5445296 (= lt!2221031 (lemmaFlatMapOnSingletonSet!534 z!1189 (h!68450 zl!343) lambda!286901))))

(assert (=> b!5445296 (= lt!2220927 (derivationStepZipperUp!647 lt!2220935 (h!68448 s!2326)))))

(declare-fun derivationStepZipperDown!723 (Regex!15275 Context!9318 C!30820) (InoxSet Context!9318))

(assert (=> b!5445296 (= lt!2221057 (derivationStepZipperDown!723 (h!68449 (exprs!5159 (h!68450 zl!343))) lt!2220935 (h!68448 s!2326)))))

(assert (=> b!5445296 (= lt!2220935 (Context!9319 (t!375352 (exprs!5159 (h!68450 zl!343)))))))

(declare-fun lt!2221092 () (InoxSet Context!9318))

(assert (=> b!5445296 (= lt!2221092 (derivationStepZipperUp!647 (Context!9319 (Cons!62001 (h!68449 (exprs!5159 (h!68450 zl!343))) (t!375352 (exprs!5159 (h!68450 zl!343))))) (h!68448 s!2326)))))

(declare-fun bm!391580 () Bool)

(assert (=> bm!391580 (= call!391681 (lemmaConcatPreservesForall!242 lt!2220906 lt!2221018 (ite c!950271 lambda!286915 lambda!286917)))))

(declare-fun b!5445297 () Bool)

(declare-fun e!3372851 () Unit!154660)

(declare-fun Unit!154664 () Unit!154660)

(assert (=> b!5445297 (= e!3372851 Unit!154664)))

(declare-fun b!5445298 () Bool)

(declare-fun e!3372849 () Unit!154660)

(assert (=> b!5445298 (= e!3372844 e!3372849)))

(assert (=> b!5445298 (= c!950275 ((_ is EmptyExpr!15275) (regOne!31062 r!7292)))))

(declare-fun b!5445299 () Bool)

(declare-fun e!3372846 () Bool)

(assert (=> b!5445299 (= e!3372846 call!391529)))

(declare-fun bm!391581 () Bool)

(assert (=> bm!391581 (= call!391597 (lemmaExistCutMatchRandMatchRSpecEquivalent!1110 (ite c!950277 (regTwo!31062 (regOne!31062 r!7292)) (ite c!950279 (regOne!31062 (regOne!31062 r!7292)) (reg!15604 (regOne!31062 r!7292)))) (ite c!950277 lt!2220976 (ite c!950279 lt!2220961 lt!2220921)) (ite (or c!950277 c!950279) s!2326 (ite c!950271 (_1!35777 lt!2220971) (_1!35777 lt!2221050)))))))

(declare-fun bm!391582 () Bool)

(declare-fun call!391687 () Bool)

(assert (=> bm!391582 (= call!391693 call!391687)))

(declare-fun bm!391583 () Bool)

(declare-fun call!391690 () Unit!154660)

(assert (=> bm!391583 (= call!391690 call!391601)))

(declare-fun bm!391584 () Bool)

(assert (=> bm!391584 (= call!391668 call!391565)))

(declare-fun b!5445300 () Bool)

(declare-fun lt!2221061 () Bool)

(assert (=> b!5445300 (not lt!2221061)))

(declare-fun lt!2221041 () Unit!154660)

(declare-fun e!3372859 () Unit!154660)

(assert (=> b!5445300 (= lt!2221041 e!3372859)))

(declare-fun c!950280 () Bool)

(assert (=> b!5445300 (= c!950280 lt!2221061)))

(declare-fun call!391545 () Bool)

(assert (=> b!5445300 (= lt!2221061 call!391545)))

(declare-fun e!3372850 () Unit!154660)

(declare-fun Unit!154665 () Unit!154660)

(assert (=> b!5445300 (= e!3372850 Unit!154665)))

(declare-fun bm!391585 () Bool)

(declare-fun call!391584 () Unit!154660)

(assert (=> bm!391585 (= call!391584 call!391695)))

(declare-fun bm!391586 () Bool)

(declare-fun call!391528 () Bool)

(declare-fun call!391628 () Bool)

(assert (=> bm!391586 (= call!391528 call!391628)))

(declare-fun bm!391587 () Bool)

(assert (=> bm!391587 (= call!391698 call!391532)))

(declare-fun bm!391588 () Bool)

(assert (=> bm!391588 (= call!391683 call!391654)))

(declare-fun bm!391589 () Bool)

(declare-fun call!391626 () Unit!154660)

(assert (=> bm!391589 (= call!391626 call!391690)))

(declare-fun bm!391590 () Bool)

(declare-fun call!391558 () Bool)

(assert (=> bm!391590 (= call!391526 call!391558)))

(declare-fun e!3372835 () Bool)

(assert (=> b!5445301 e!3372835))

(declare-fun res!2318604 () Bool)

(assert (=> b!5445301 (=> (not res!2318604) (not e!3372835))))

(declare-fun call!391582 () Bool)

(assert (=> b!5445301 (= res!2318604 (= call!391582 call!391660))))

(declare-fun lt!2220929 () Unit!154660)

(declare-fun call!391718 () Unit!154660)

(assert (=> b!5445301 (= lt!2220929 call!391718)))

(declare-fun call!391603 () Bool)

(assert (=> b!5445301 (= call!391603 call!391540)))

(declare-fun lt!2221024 () Unit!154660)

(declare-fun call!391682 () Unit!154660)

(assert (=> b!5445301 (= lt!2221024 call!391682)))

(declare-fun call!391559 () Bool)

(assert (=> b!5445301 (= call!391571 call!391559)))

(declare-fun lt!2221003 () Unit!154660)

(assert (=> b!5445301 (= lt!2221003 call!391537)))

(assert (=> b!5445301 (= lt!2220942 call!391717)))

(declare-fun call!391523 () Bool)

(assert (=> b!5445301 (= call!391523 call!391645)))

(declare-fun lt!2221065 () Unit!154660)

(assert (=> b!5445301 (= lt!2221065 call!391690)))

(assert (=> b!5445301 (= call!391709 call!391721)))

(declare-fun lt!2221029 () Unit!154660)

(assert (=> b!5445301 (= lt!2221029 call!391607)))

(assert (=> b!5445301 (= call!391628 call!391637)))

(declare-fun lt!2221069 () Unit!154660)

(declare-fun call!391663 () Unit!154660)

(assert (=> b!5445301 (= lt!2221069 call!391663)))

(assert (=> b!5445301 (= lt!2220961 call!391554)))

(declare-fun lt!2221027 () Bool)

(declare-fun call!391715 () Bool)

(assert (=> b!5445301 (= lt!2221027 call!391715)))

(declare-fun lt!2220968 () Unit!154660)

(declare-fun call!391562 () Unit!154660)

(assert (=> b!5445301 (= lt!2220968 call!391562)))

(declare-fun call!391541 () Bool)

(assert (=> b!5445301 (= lt!2221027 call!391541)))

(assert (=> b!5445301 (= lt!2221027 call!391673)))

(declare-fun lt!2221055 () Unit!154660)

(assert (=> b!5445301 (= lt!2221055 call!391565)))

(assert (=> b!5445301 (= lt!2221006 call!391553)))

(declare-fun call!391563 () (InoxSet Context!9318))

(assert (=> b!5445301 (= call!391686 call!391563)))

(declare-fun lt!2220907 () Unit!154660)

(declare-fun call!391631 () Unit!154660)

(assert (=> b!5445301 (= lt!2220907 call!391631)))

(declare-fun lt!2221005 () (InoxSet Context!9318))

(assert (=> b!5445301 (= lt!2221005 call!391563)))

(declare-fun lt!2220984 () Context!9318)

(assert (=> b!5445301 (= lt!2221004 (store ((as const (Array Context!9318 Bool)) false) lt!2220984 true))))

(declare-fun lt!2220972 () List!62125)

(assert (=> b!5445301 (= lt!2220984 (Context!9319 lt!2220972))))

(declare-fun lt!2220947 () List!62125)

(assert (=> b!5445301 (= lt!2220972 (Cons!62001 (regOne!31062 (regOne!31062 r!7292)) lt!2220947))))

(declare-fun lt!2220900 () (InoxSet Context!9318))

(declare-fun call!391691 () (InoxSet Context!9318))

(assert (=> b!5445301 (= lt!2220900 call!391691)))

(assert (=> b!5445301 (= lt!2220947 (Cons!62001 (regTwo!31062 (regOne!31062 r!7292)) (t!375352 (exprs!5159 (h!68450 zl!343)))))))

(declare-fun Unit!154666 () Unit!154660)

(assert (=> b!5445301 (= e!3372857 Unit!154666)))

(declare-fun bm!391591 () Bool)

(assert (=> bm!391591 (= call!391562 call!391702)))

(declare-fun bm!391592 () Bool)

(declare-fun call!391697 () (InoxSet Context!9318))

(assert (=> bm!391592 (= call!391697 call!391563)))

(declare-fun bm!391593 () Bool)

(assert (=> bm!391593 (= call!391645 call!391634)))

(declare-fun b!5445302 () Bool)

(declare-fun e!3372852 () Bool)

(declare-fun call!391536 () Bool)

(assert (=> b!5445302 (= e!3372852 call!391536)))

(declare-fun bm!391594 () Bool)

(assert (=> bm!391594 (= call!391522 call!391626)))

(declare-fun bm!391595 () Bool)

(declare-fun call!391644 () Bool)

(assert (=> bm!391595 (= call!391644 call!391701)))

(declare-fun bm!391596 () Bool)

(declare-fun call!391560 () Bool)

(assert (=> bm!391596 (= call!391560 call!391722)))

(declare-fun lt!2220920 () (InoxSet Context!9318))

(declare-fun call!391586 () (InoxSet Context!9318))

(declare-fun lt!2221080 () (InoxSet Context!9318))

(declare-fun bm!391597 () Bool)

(assert (=> bm!391597 (= call!391586 (flatMap!1002 (ite c!950272 lt!2221080 (ite c!950279 lt!2221004 (ite c!950271 lt!2220920 lt!2220981))) (ite c!950272 lambda!286901 (ite c!950279 lambda!286901 (ite c!950271 lambda!286901 lambda!286901)))))))

(declare-fun lt!2220934 () (InoxSet Context!9318))

(declare-fun lt!2221015 () (InoxSet Context!9318))

(declare-fun bm!391598 () Bool)

(assert (=> bm!391598 (= call!391558 (matchZipper!1519 (ite c!950282 lt!2221015 (ite c!950272 lt!2220960 (ite c!950277 lt!2221093 (ite c!950270 (ite c!950271 (ite c!950274 lt!2220920 lt!2220934) lt!2221057) (ite c!950275 lt!2221032 z!1189))))) (ite (or c!950282 c!950272) (t!375351 s!2326) (ite c!950277 s!2326 (ite c!950270 (ite c!950271 (ite c!950274 s!2326 lt!2221097) (t!375351 s!2326)) s!2326)))))))

(declare-fun bm!391599 () Bool)

(declare-fun call!391622 () Unit!154660)

(declare-fun lemmaEmptyZipperMatchesNothing!30 ((InoxSet Context!9318) List!62124) Unit!154660)

(assert (=> bm!391599 (= call!391622 (lemmaEmptyZipperMatchesNothing!30 lt!2221057 (t!375351 s!2326)))))

(declare-fun bm!391600 () Bool)

(assert (=> bm!391600 (= call!391672 call!391638)))

(declare-fun bm!391601 () Bool)

(declare-fun call!391619 () Regex!15275)

(assert (=> bm!391601 (= call!391619 call!391717)))

(declare-fun bm!391602 () Bool)

(declare-fun call!391595 () (InoxSet Context!9318))

(assert (=> bm!391602 (= call!391630 call!391595)))

(declare-fun b!5445303 () Bool)

(declare-fun res!2318611 () Bool)

(assert (=> b!5445303 (=> res!2318611 e!3372862)))

(declare-fun generalisedConcat!944 (List!62125) Regex!15275)

(assert (=> b!5445303 (= res!2318611 (not (= r!7292 (generalisedConcat!944 (exprs!5159 (h!68450 zl!343))))))))

(declare-fun bm!391603 () Bool)

(declare-fun call!391572 () Unit!154660)

(declare-fun theoremZipperRegexEquiv!555 ((InoxSet Context!9318) List!62126 Regex!15275 List!62124) Unit!154660)

(assert (=> bm!391603 (= call!391572 (theoremZipperRegexEquiv!555 (ite c!950272 lt!2221002 (ite c!950277 lt!2221056 (ite c!950279 lt!2221004 (ite c!950270 (ite (or c!950271 c!950276) lt!2220934 lt!2220981) lt!2221032)))) (ite c!950272 (Cons!62002 lt!2220994 Nil!62002) (ite c!950277 (Cons!62002 lt!2220993 Nil!62002) (ite c!950279 (Cons!62002 lt!2220984 Nil!62002) (ite (and c!950270 (or c!950271 c!950276)) (Cons!62002 lt!2221053 Nil!62002) (Cons!62002 lt!2220935 Nil!62002))))) (ite c!950272 lt!2220937 (ite c!950277 lt!2221067 (ite c!950279 lt!2221006 (ite c!950270 (ite (or c!950271 c!950276) lt!2221072 lt!2220992) lt!2221010)))) (ite (or c!950272 c!950277 c!950279) s!2326 (ite c!950270 (ite c!950271 lt!2221097 (ite c!950276 (_2!35777 lt!2220949) s!2326)) s!2326))))))

(declare-fun bm!391604 () Bool)

(declare-fun call!391589 () Bool)

(assert (=> bm!391604 (= call!391612 call!391589)))

(declare-fun b!5445304 () Bool)

(declare-fun e!3372864 () Bool)

(assert (=> b!5445304 (= e!3372864 lt!2220926)))

(declare-fun bm!391605 () Bool)

(declare-fun call!391656 () Unit!154660)

(assert (=> bm!391605 (= call!391643 call!391656)))

(declare-fun lt!2220967 () Option!15386)

(declare-fun lt!2220939 () Option!15386)

(declare-fun bm!391606 () Bool)

(assert (=> bm!391606 (= call!391703 (isDefined!12089 (ite c!950277 call!391654 (ite c!950279 call!391633 (ite c!950271 lt!2220967 lt!2220939)))))))

(declare-fun bm!391607 () Bool)

(assert (=> bm!391607 (= call!391677 call!391672)))

(declare-fun lt!2221048 () List!62125)

(declare-fun bm!391608 () Bool)

(declare-fun call!391566 () Regex!15275)

(assert (=> bm!391608 (= call!391566 (generalisedConcat!944 (ite c!950272 lt!2221048 (ite c!950277 lt!2221019 lt!2220972))))))

(declare-fun bm!391609 () Bool)

(declare-fun call!391605 () Bool)

(assert (=> bm!391609 (= call!391605 (matchR!7460 (ite c!950272 lt!2221043 (ite c!950277 (Concat!24120 (Concat!24120 (regOne!31062 (regOne!31062 r!7292)) (regTwo!31062 (regOne!31062 r!7292))) lt!2220976) (ite c!950279 lt!2220961 (ite c!950270 (ite c!950271 lt!2220921 lt!2220955) (regOne!31062 r!7292))))) (ite (or c!950272 c!950277 c!950279) s!2326 (ite c!950270 (ite c!950271 lt!2221028 lt!2221011) s!2326))))))

(declare-fun bm!391610 () Bool)

(assert (=> bm!391610 (= call!391540 call!391706)))

(declare-fun b!5445305 () Bool)

(declare-fun Unit!154667 () Unit!154660)

(assert (=> b!5445305 (= e!3372843 Unit!154667)))

(declare-fun bm!391611 () Bool)

(assert (=> bm!391611 (= call!391715 call!391674)))

(declare-fun b!5445306 () Bool)

(declare-fun Unit!154668 () Unit!154660)

(assert (=> b!5445306 (= e!3372847 Unit!154668)))

(assert (=> b!5445306 (= lt!2220920 (store ((as const (Array Context!9318 Bool)) false) lt!2220935 true))))

(declare-fun lt!2221052 () Unit!154660)

(declare-fun call!391651 () Unit!154660)

(assert (=> b!5445306 (= lt!2221052 call!391651)))

(assert (=> b!5445306 (= call!391712 call!391652)))

(declare-fun call!391550 () Regex!15275)

(assert (=> b!5445306 (= lt!2221022 call!391550)))

(declare-fun lt!2220982 () Unit!154660)

(assert (=> b!5445306 (= lt!2220982 call!391710)))

(declare-fun res!2318629 () Bool)

(assert (=> b!5445306 (= res!2318629 (= call!391531 call!391700))))

(declare-fun e!3372861 () Bool)

(assert (=> b!5445306 (=> (not res!2318629) (not e!3372861))))

(assert (=> b!5445306 e!3372861))

(declare-fun bm!391612 () Bool)

(assert (=> bm!391612 (= call!391582 call!391596)))

(declare-fun bm!391613 () Bool)

(assert (=> bm!391613 (= call!391595 (derivationStepZipperUp!647 (ite c!950272 lt!2220994 (ite c!950277 lt!2220993 lt!2221063)) (h!68448 s!2326)))))

(declare-fun lt!2221035 () Context!9318)

(declare-fun bm!391614 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!90 (Context!9318 Context!9318 List!62124 List!62124) Unit!154660)

(assert (=> bm!391614 (= call!391724 (lemmaConcatenateContextMatchesConcatOfStrings!90 lt!2221035 lt!2221053 (ite c!950271 (_1!35777 lt!2221059) (_1!35777 lt!2220949)) (ite c!950271 lt!2221097 (_2!35777 lt!2220949))))))

(declare-fun b!5445307 () Bool)

(declare-fun e!3372830 () Bool)

(assert (=> b!5445307 (= e!3372830 false)))

(declare-fun bm!391615 () Bool)

(assert (=> bm!391615 (= call!391691 call!391625)))

(declare-fun bm!391616 () Bool)

(assert (=> bm!391616 (= call!391711 call!391535)))

(declare-fun bm!391617 () Bool)

(declare-fun call!391667 () tuple2!64948)

(declare-fun get!21377 (Option!15386) tuple2!64948)

(assert (=> bm!391617 (= call!391667 (get!21377 (ite c!950271 lt!2220967 lt!2221008)))))

(declare-fun tp!1500933 () Bool)

(declare-fun b!5445308 () Bool)

(assert (=> b!5445308 (= e!3372866 (and (inv!81434 (h!68450 zl!343)) e!3372855 tp!1500933))))

(declare-fun bm!391618 () Bool)

(assert (=> bm!391618 (= call!391577 (matchRSpec!2378 (ite c!950272 lt!2221062 (ite c!950277 lt!2220962 (ite c!950279 lt!2221006 (ite c!950270 (ite c!950271 lt!2220921 (ite c!950276 lt!2221060 lt!2220921)) (regOne!31062 r!7292))))) (ite (or c!950272 c!950277 c!950279) s!2326 (ite c!950270 (ite c!950271 (_1!35777 lt!2220971) (ite c!950276 (_1!35777 lt!2221050) Nil!62000)) s!2326))))))

(declare-fun bm!391619 () Bool)

(assert (=> bm!391619 (= call!391680 call!391567)))

(declare-fun bm!391620 () Bool)

(declare-fun call!391579 () Unit!154660)

(assert (=> bm!391620 (= call!391580 call!391579)))

(declare-fun bm!391621 () Bool)

(declare-fun call!391658 () Unit!154660)

(assert (=> bm!391621 (= call!391656 call!391658)))

(declare-fun bm!391622 () Bool)

(assert (=> bm!391622 (= call!391686 call!391586)))

(declare-fun b!5445309 () Bool)

(declare-fun e!3372853 () Bool)

(assert (=> b!5445309 (= e!3372853 (= lt!2220908 call!391662))))

(declare-fun bm!391623 () Bool)

(declare-fun call!391543 () Bool)

(assert (=> bm!391623 (= call!391649 call!391543)))

(declare-fun b!5445310 () Bool)

(declare-fun e!3372839 () Unit!154660)

(declare-fun Unit!154669 () Unit!154660)

(assert (=> b!5445310 (= e!3372839 Unit!154669)))

(declare-fun bm!391624 () Bool)

(assert (=> bm!391624 (= call!391607 call!391597)))

(declare-fun bm!391625 () Bool)

(assert (=> bm!391625 (= call!391546 call!391698)))

(declare-fun bm!391626 () Bool)

(assert (=> bm!391626 (= call!391666 (lemmaFindConcatSeparationEquivalentToExists!1564 (ite c!950277 (regTwo!31062 (regOne!31062 r!7292)) (ite c!950279 (regOne!31062 (regOne!31062 r!7292)) (ite c!950271 lt!2220921 (reg!15604 (regOne!31062 r!7292))))) (ite c!950277 lt!2220976 (ite c!950279 lt!2220961 (ite c!950271 (regTwo!31062 r!7292) lt!2220921))) (ite (or c!950277 c!950279 c!950271) s!2326 (ite c!950276 (_1!35777 lt!2221050) Nil!62000))))))

(declare-fun bm!391627 () Bool)

(assert (=> bm!391627 (= call!391617 (Exists!2456 (ite c!950277 lambda!286902 (ite c!950279 lambda!286906 (ite c!950271 lambda!286913 lambda!286920)))))))

(declare-fun bm!391628 () Bool)

(declare-fun call!391675 () Unit!154660)

(declare-fun call!391705 () Unit!154660)

(assert (=> bm!391628 (= call!391675 call!391705)))

(declare-fun bm!391629 () Bool)

(assert (=> bm!391629 (= call!391628 call!391703)))

(declare-fun bm!391630 () Bool)

(declare-fun call!391593 () Option!15386)

(assert (=> bm!391630 (= call!391593 call!391683)))

(declare-fun bm!391631 () Bool)

(declare-fun call!391727 () Bool)

(assert (=> bm!391631 (= call!391727 call!391647)))

(declare-fun bm!391632 () Bool)

(assert (=> bm!391632 (= call!391687 call!391673)))

(declare-fun bm!391633 () Bool)

(assert (=> bm!391633 (= call!391631 call!391615)))

(declare-fun bm!391634 () Bool)

(assert (=> bm!391634 (= call!391635 (matchZipper!1519 (ite c!950272 ((_ map or) lt!2220980 lt!2220960) (ite c!950277 lt!2220983 (ite c!950270 (ite c!950271 lt!2221009 lt!2220934) (ite c!950275 z!1189 lt!2221057)))) (ite (or c!950272 c!950277) (t!375351 s!2326) (ite c!950270 (ite c!950271 (_1!35777 lt!2221059) (_2!35777 lt!2220949)) (ite c!950275 s!2326 (t!375351 s!2326))))))))

(declare-fun bm!391635 () Bool)

(assert (=> bm!391635 (= call!391648 (Exists!2456 (ite c!950277 lambda!286903 (ite c!950279 lambda!286908 (ite c!950271 lambda!286912 (ite c!950276 lambda!286919 lambda!286925))))))))

(declare-fun bm!391636 () Bool)

(declare-fun call!391708 () Bool)

(assert (=> bm!391636 (= call!391708 call!391559)))

(assert (=> b!5445311 e!3372830))

(declare-fun res!2318609 () Bool)

(assert (=> b!5445311 (=> (not res!2318609) (not e!3372830))))

(declare-fun call!391608 () Bool)

(assert (=> b!5445311 (= res!2318609 call!391608)))

(declare-fun lt!2220954 () Unit!154660)

(declare-fun call!391655 () Unit!154660)

(assert (=> b!5445311 (= lt!2220954 call!391655)))

(assert (=> b!5445311 (= call!391661 call!391560)))

(declare-fun lt!2221051 () Unit!154660)

(assert (=> b!5445311 (= lt!2221051 call!391640)))

(assert (=> b!5445311 (= call!391573 call!391694)))

(declare-fun lt!2221074 () Unit!154660)

(assert (=> b!5445311 (= lt!2221074 call!391675)))

(declare-fun call!391557 () Bool)

(declare-fun call!391547 () Bool)

(assert (=> b!5445311 (= call!391557 call!391547)))

(declare-fun lt!2220998 () Unit!154660)

(declare-fun call!391542 () Unit!154660)

(assert (=> b!5445311 (= lt!2220998 call!391542)))

(declare-fun call!391576 () Bool)

(assert (=> b!5445311 (= call!391576 call!391598)))

(declare-fun lt!2221073 () Unit!154660)

(assert (=> b!5445311 (= lt!2221073 call!391624)))

(declare-fun call!391613 () Bool)

(assert (=> b!5445311 (= call!391644 call!391613)))

(declare-fun lt!2220974 () Unit!154660)

(declare-fun call!391538 () Unit!154660)

(assert (=> b!5445311 (= lt!2220974 call!391538)))

(assert (=> b!5445311 (= lt!2220992 call!391550)))

(assert (=> b!5445311 (= call!391712 call!391652)))

(declare-fun lt!2220995 () Unit!154660)

(assert (=> b!5445311 (= lt!2220995 call!391651)))

(assert (=> b!5445311 (= lt!2220981 (store ((as const (Array Context!9318 Bool)) false) lt!2220935 true))))

(declare-fun e!3372854 () Unit!154660)

(declare-fun Unit!154670 () Unit!154660)

(assert (=> b!5445311 (= e!3372854 Unit!154670)))

(declare-fun bm!391637 () Bool)

(assert (=> bm!391637 (= call!391545 call!391541)))

(declare-fun bm!391638 () Bool)

(assert (=> bm!391638 (= call!391685 call!391614)))

(declare-fun bm!391639 () Bool)

(declare-fun call!391583 () (InoxSet Context!9318))

(assert (=> bm!391639 (= call!391625 call!391583)))

(declare-fun bm!391640 () Bool)

(assert (=> bm!391640 (= call!391529 (matchZipper!1519 (ite c!950272 lt!2220927 lt!2220912) (t!375351 s!2326)))))

(declare-fun b!5445312 () Bool)

(assert (=> b!5445312 e!3372853))

(declare-fun res!2318616 () Bool)

(assert (=> b!5445312 (=> (not res!2318616) (not e!3372853))))

(declare-fun lt!2221046 () Bool)

(assert (=> b!5445312 (= res!2318616 (= lt!2221046 call!391577))))

(declare-fun lt!2220913 () Unit!154660)

(assert (=> b!5445312 (= lt!2220913 call!391689)))

(declare-fun lt!2220999 () Bool)

(assert (=> b!5445312 (= lt!2220999 (matchRSpec!2378 lt!2221043 s!2326))))

(declare-fun lt!2220946 () Unit!154660)

(assert (=> b!5445312 (= lt!2220946 call!391650)))

(assert (=> b!5445312 (= lt!2221046 lt!2220999)))

(assert (=> b!5445312 (= lt!2220999 call!391605)))

(assert (=> b!5445312 (= lt!2221046 call!391612)))

(assert (=> b!5445312 (= lt!2221043 (Union!15275 (Concat!24120 (regOne!31063 (regOne!31062 r!7292)) (regTwo!31062 r!7292)) (Concat!24120 (regTwo!31063 (regOne!31062 r!7292)) (regTwo!31062 r!7292))))))

(assert (=> b!5445312 (= lt!2221062 (Concat!24120 (regOne!31062 r!7292) (regTwo!31062 r!7292)))))

(declare-fun lt!2220919 () Unit!154660)

(declare-fun lemmaConcatDistributesInUnion!22 (Regex!15275 Regex!15275 Regex!15275 List!62124) Unit!154660)

(assert (=> b!5445312 (= lt!2220919 (lemmaConcatDistributesInUnion!22 (regOne!31063 (regOne!31062 r!7292)) (regTwo!31063 (regOne!31062 r!7292)) (regTwo!31062 r!7292) s!2326))))

(declare-fun lt!2221084 () Bool)

(assert (=> b!5445312 (= lt!2221084 call!391665)))

(declare-fun lt!2220959 () Unit!154660)

(assert (=> b!5445312 (= lt!2220959 call!391592)))

(declare-fun lt!2220970 () Bool)

(declare-fun call!391657 () Bool)

(assert (=> b!5445312 (= lt!2220970 call!391657)))

(declare-fun lt!2221026 () Unit!154660)

(assert (=> b!5445312 (= lt!2221026 (mainMatchTheorem!2378 lt!2220937 s!2326))))

(assert (=> b!5445312 (= lt!2221084 call!391669)))

(assert (=> b!5445312 (= lt!2221084 call!391638)))

(declare-fun lt!2220932 () Unit!154660)

(assert (=> b!5445312 (= lt!2220932 call!391656)))

(assert (=> b!5445312 (= lt!2220956 call!391614)))

(declare-fun call!391561 () Bool)

(assert (=> b!5445312 (= lt!2220970 call!391561)))

(assert (=> b!5445312 (= lt!2220970 call!391600)))

(declare-fun lt!2221077 () Unit!154660)

(assert (=> b!5445312 (= lt!2221077 call!391572)))

(assert (=> b!5445312 (= lt!2220937 call!391566)))

(declare-fun lt!2220985 () Unit!154660)

(assert (=> b!5445312 (= lt!2220985 e!3372839)))

(declare-fun c!950281 () Bool)

(assert (=> b!5445312 (= c!950281 (nullable!5444 (regTwo!31063 (regOne!31062 r!7292))))))

(assert (=> b!5445312 (= call!391586 call!391623)))

(declare-fun lt!2220898 () Unit!154660)

(declare-fun call!391539 () Unit!154660)

(assert (=> b!5445312 (= lt!2220898 call!391539)))

(declare-fun lt!2220905 () (InoxSet Context!9318))

(assert (=> b!5445312 (= lt!2220905 call!391623)))

(declare-fun lt!2220914 () Unit!154660)

(assert (=> b!5445312 (= lt!2220914 e!3372851)))

(declare-fun c!950273 () Bool)

(assert (=> b!5445312 (= c!950273 call!391536)))

(declare-fun call!391679 () (InoxSet Context!9318))

(assert (=> b!5445312 (= call!391679 call!391595)))

(declare-fun lt!2220933 () Unit!154660)

(assert (=> b!5445312 (= lt!2220933 call!391695)))

(declare-fun lt!2221047 () (InoxSet Context!9318))

(assert (=> b!5445312 (= lt!2221047 call!391595)))

(assert (=> b!5445312 (= lt!2221080 (store ((as const (Array Context!9318 Bool)) false) lt!2221091 true))))

(declare-fun lt!2221038 () List!62125)

(assert (=> b!5445312 (= lt!2221091 (Context!9319 lt!2221038))))

(assert (=> b!5445312 (= lt!2221038 (Cons!62001 (regTwo!31063 (regOne!31062 r!7292)) (t!375352 (exprs!5159 (h!68450 zl!343)))))))

(assert (=> b!5445312 (= lt!2221002 (store ((as const (Array Context!9318 Bool)) false) lt!2220994 true))))

(assert (=> b!5445312 (= lt!2220994 (Context!9319 lt!2221048))))

(assert (=> b!5445312 (= lt!2221048 (Cons!62001 (regOne!31063 (regOne!31062 r!7292)) (t!375352 (exprs!5159 (h!68450 zl!343)))))))

(assert (=> b!5445312 (= call!391635 e!3372842)))

(declare-fun res!2318606 () Bool)

(assert (=> b!5445312 (=> res!2318606 e!3372842)))

(declare-fun lt!2220923 () Bool)

(assert (=> b!5445312 (= res!2318606 lt!2220923)))

(assert (=> b!5445312 (= lt!2220923 call!391639)))

(declare-fun lt!2220924 () Unit!154660)

(assert (=> b!5445312 (= lt!2220924 (lemmaZipperConcatMatchesSameAsBothZippers!512 lt!2220980 lt!2220960 (t!375351 s!2326)))))

(assert (=> b!5445312 (= lt!2220960 call!391585)))

(assert (=> b!5445312 (= lt!2220980 call!391583)))

(declare-fun e!3372838 () Unit!154660)

(declare-fun Unit!154671 () Unit!154660)

(assert (=> b!5445312 (= e!3372838 Unit!154671)))

(declare-fun bm!391641 () Bool)

(declare-fun call!391699 () Bool)

(assert (=> bm!391641 (= call!391534 call!391699)))

(assert (=> b!5445313 (= e!3372862 e!3372834)))

(declare-fun res!2318625 () Bool)

(assert (=> b!5445313 (=> res!2318625 e!3372834)))

(declare-fun lt!2221049 () Bool)

(assert (=> b!5445313 (= res!2318625 (or (not (= lt!2220908 lt!2221049)) ((_ is Nil!62000) s!2326)))))

(assert (=> b!5445313 (= (Exists!2456 lambda!286899) (Exists!2456 lambda!286900))))

(declare-fun lt!2220991 () Unit!154660)

(assert (=> b!5445313 (= lt!2220991 (lemmaExistCutMatchRandMatchRSpecEquivalent!1110 (regOne!31062 r!7292) (regTwo!31062 r!7292) s!2326))))

(assert (=> b!5445313 (= lt!2221049 (Exists!2456 lambda!286899))))

(assert (=> b!5445313 (= lt!2221049 (isDefined!12089 (findConcatSeparation!1800 (regOne!31062 r!7292) (regTwo!31062 r!7292) Nil!62000 s!2326 s!2326)))))

(declare-fun lt!2220904 () Unit!154660)

(assert (=> b!5445313 (= lt!2220904 (lemmaFindConcatSeparationEquivalentToExists!1564 (regOne!31062 r!7292) (regTwo!31062 r!7292) s!2326))))

(declare-fun bm!391642 () Bool)

(declare-fun call!391723 () Bool)

(declare-fun call!391704 () Bool)

(assert (=> bm!391642 (= call!391723 call!391704)))

(declare-fun b!5445314 () Bool)

(assert (=> b!5445314 (= e!3372835 (= lt!2220908 call!391647))))

(declare-fun bm!391643 () Bool)

(declare-fun call!391551 () Bool)

(assert (=> bm!391643 (= call!391551 call!391594)))

(declare-fun lt!2221012 () tuple2!64948)

(declare-fun bm!391644 () Bool)

(declare-fun lemmaStarApp!70 (Regex!15275 List!62124 List!62124) Unit!154660)

(assert (=> bm!391644 (= call!391719 (lemmaStarApp!70 (reg!15604 (regOne!31062 r!7292)) (ite c!950271 (_1!35777 lt!2221059) (_1!35777 lt!2221012)) (ite c!950271 (_2!35777 lt!2221059) (_2!35777 lt!2221012))))))

(declare-fun bm!391645 () Bool)

(assert (=> bm!391645 (= call!391532 call!391526)))

(declare-fun bm!391646 () Bool)

(assert (=> bm!391646 (= call!391608 call!391590)))

(declare-fun bm!391647 () Bool)

(declare-fun call!391725 () Bool)

(assert (=> bm!391647 (= call!391725 call!391618)))

(declare-fun bm!391648 () Bool)

(assert (=> bm!391648 (= call!391539 (lemmaFlatMapOnSingletonSet!534 (ite c!950272 lt!2221080 (ite c!950277 lt!2221093 lt!2220934)) (ite c!950272 lt!2221091 (ite c!950277 lt!2221064 lt!2221053)) (ite c!950272 lambda!286901 (ite c!950277 lambda!286901 lambda!286901))))))

(declare-fun bm!391649 () Bool)

(assert (=> bm!391649 (= call!391603 call!391648)))

(declare-fun bm!391650 () Bool)

(assert (=> bm!391650 (= call!391559 (Exists!2456 (ite c!950279 lambda!286908 (ite c!950271 lambda!286911 (ite c!950276 lambda!286921 lambda!286923)))))))

(declare-fun b!5445315 () Bool)

(declare-fun res!2318608 () Bool)

(assert (=> b!5445315 (=> (not res!2318608) (not e!3372840))))

(declare-fun unfocusZipper!1017 (List!62126) Regex!15275)

(assert (=> b!5445315 (= res!2318608 (= r!7292 (unfocusZipper!1017 zl!343)))))

(declare-fun bm!391651 () Bool)

(assert (=> bm!391651 (= call!391663 call!391666)))

(declare-fun bm!391652 () Bool)

(declare-fun call!391599 () (InoxSet Context!9318))

(assert (=> bm!391652 (= call!391599 call!391574)))

(declare-fun bm!391653 () Bool)

(assert (=> bm!391653 (= call!391688 call!391720)))

(assert (=> b!5445316 call!391699))

(declare-fun lt!2220918 () Unit!154660)

(assert (=> b!5445316 (= lt!2220918 e!3372847)))

(declare-fun isEmpty!33979 (List!62124) Bool)

(assert (=> b!5445316 (= c!950274 (isEmpty!33979 (_1!35777 lt!2220971)))))

(assert (=> b!5445316 (= lt!2220971 call!391667)))

(assert (=> b!5445316 (= call!391611 call!391708)))

(declare-fun lt!2221083 () Unit!154660)

(assert (=> b!5445316 (= lt!2221083 call!391705)))

(assert (=> b!5445316 (= call!391528 call!391587)))

(assert (=> b!5445316 (= lt!2220967 call!391593)))

(declare-fun lt!2221013 () Unit!154660)

(declare-fun call!391620 () Unit!154660)

(assert (=> b!5445316 (= lt!2221013 call!391620)))

(declare-fun Unit!154672 () Unit!154660)

(assert (=> b!5445316 (= e!3372850 Unit!154672)))

(declare-fun bm!391654 () Bool)

(assert (=> bm!391654 (= call!391701 call!391582)))

(declare-fun bm!391655 () Bool)

(assert (=> bm!391655 (= call!391585 (derivationStepZipperDown!723 (ite c!950272 (regTwo!31063 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292))) (ite c!950272 lt!2220935 lt!2220993) (h!68448 s!2326)))))

(declare-fun bm!391656 () Bool)

(assert (=> bm!391656 (= call!391704 call!391715)))

(declare-fun b!5445317 () Bool)

(assert (=> b!5445317 e!3372868))

(declare-fun res!2318607 () Bool)

(assert (=> b!5445317 (=> (not res!2318607) (not e!3372868))))

(declare-fun call!391555 () Bool)

(assert (=> b!5445317 (= res!2318607 (= call!391725 call!391555))))

(declare-fun lt!2220978 () Unit!154660)

(assert (=> b!5445317 (= lt!2220978 call!391568)))

(declare-fun call!391602 () Bool)

(assert (=> b!5445317 (= call!391602 call!391723)))

(declare-fun lt!2220989 () Unit!154660)

(declare-fun call!391588 () Unit!154660)

(assert (=> b!5445317 (= lt!2220989 call!391588)))

(declare-fun call!391606 () Bool)

(assert (=> b!5445317 (not call!391606)))

(declare-fun lt!2220941 () Unit!154660)

(assert (=> b!5445317 (= lt!2220941 call!391622)))

(declare-fun Unit!154673 () Unit!154660)

(assert (=> b!5445317 (= e!3372849 Unit!154673)))

(declare-fun bm!391657 () Bool)

(declare-fun ++!13630 (List!62125 List!62125) List!62125)

(assert (=> bm!391657 (= call!391621 (++!13630 lt!2220906 lt!2221018))))

(declare-fun b!5445318 () Bool)

(assert (=> b!5445318 (= c!950277 e!3372852)))

(declare-fun res!2318619 () Bool)

(assert (=> b!5445318 (=> (not res!2318619) (not e!3372852))))

(assert (=> b!5445318 (= res!2318619 ((_ is Concat!24120) (regOne!31062 r!7292)))))

(assert (=> b!5445318 (= e!3372838 e!3372831)))

(declare-fun bm!391658 () Bool)

(assert (=> bm!391658 (= call!391523 call!391549)))

(declare-fun bm!391659 () Bool)

(assert (=> bm!391659 (= call!391554 (generalisedConcat!944 (ite c!950277 lt!2221017 lt!2220947)))))

(declare-fun bm!391660 () Bool)

(assert (=> bm!391660 (= call!391549 call!391605)))

(declare-fun bm!391661 () Bool)

(assert (=> bm!391661 (= call!391588 call!391626)))

(declare-fun b!5445319 () Bool)

(declare-fun Unit!154674 () Unit!154660)

(assert (=> b!5445319 (= e!3372844 Unit!154674)))

(assert (=> b!5445319 (= lt!2220921 (regOne!31062 r!7292))))

(assert (=> b!5445319 (= lt!2221018 (Cons!62001 lt!2220921 (t!375352 (exprs!5159 (h!68450 zl!343)))))))

(assert (=> b!5445319 (= lt!2221063 (Context!9319 (Cons!62001 (reg!15604 (regOne!31062 r!7292)) lt!2221018)))))

(assert (=> b!5445319 (= lt!2221085 (store ((as const (Array Context!9318 Bool)) false) lt!2221063 true))))

(declare-fun lt!2220987 () (InoxSet Context!9318))

(assert (=> b!5445319 (= lt!2220987 call!391630)))

(declare-fun lt!2221087 () Unit!154660)

(assert (=> b!5445319 (= lt!2221087 call!391584)))

(assert (=> b!5445319 (= call!391548 call!391630)))

(assert (=> b!5445319 (= lt!2221053 (Context!9319 lt!2221018))))

(declare-fun lt!2220966 () (InoxSet Context!9318))

(assert (=> b!5445319 (= lt!2220966 call!391691)))

(assert (=> b!5445319 (= lt!2221072 (Concat!24120 lt!2220921 (regTwo!31062 r!7292)))))

(assert (=> b!5445319 (= lt!2220955 (Concat!24120 (reg!15604 (regOne!31062 r!7292)) lt!2221072))))

(assert (=> b!5445319 (= lt!2220906 (Cons!62001 (reg!15604 (regOne!31062 r!7292)) Nil!62001))))

(assert (=> b!5445319 (= lt!2221035 (Context!9319 lt!2220906))))

(assert (=> b!5445319 (= lt!2221009 (store ((as const (Array Context!9318 Bool)) false) lt!2221035 true))))

(assert (=> b!5445319 (= lt!2220934 (store ((as const (Array Context!9318 Bool)) false) lt!2221053 true))))

(declare-fun lt!2221066 () (InoxSet Context!9318))

(assert (=> b!5445319 (= lt!2221066 call!391697)))

(declare-fun lt!2220986 () (InoxSet Context!9318))

(assert (=> b!5445319 (= lt!2220986 call!391525)))

(declare-fun lt!2221068 () Unit!154660)

(assert (=> b!5445319 (= lt!2221068 call!391631)))

(assert (=> b!5445319 (= call!391599 call!391697)))

(declare-fun lt!2221033 () Unit!154660)

(assert (=> b!5445319 (= lt!2221033 call!391578)))

(assert (=> b!5445319 (= (flatMap!1002 lt!2220934 lambda!286901) call!391525)))

(declare-fun lt!2221040 () Unit!154660)

(assert (=> b!5445319 (= lt!2221040 call!391533)))

(assert (=> b!5445319 (= lt!2220926 (matchR!7460 lt!2220955 s!2326))))

(declare-fun res!2318614 () Bool)

(assert (=> b!5445319 (= res!2318614 (= lt!2220926 call!391544))))

(declare-fun e!3372848 () Bool)

(assert (=> b!5445319 (=> (not res!2318614) (not e!3372848))))

(assert (=> b!5445319 e!3372848))

(assert (=> b!5445319 (= c!950271 lt!2220908)))

(declare-fun lt!2220902 () Unit!154660)

(assert (=> b!5445319 (= lt!2220902 e!3372850)))

(assert (=> b!5445319 (= lt!2220908 call!391545)))

(declare-fun bm!391662 () Bool)

(assert (=> bm!391662 (= call!391576 call!391693)))

(declare-fun b!5445320 () Bool)

(declare-fun res!2318626 () Bool)

(assert (=> b!5445320 (=> res!2318626 e!3372862)))

(assert (=> b!5445320 (= res!2318626 (or ((_ is EmptyExpr!15275) r!7292) ((_ is EmptyLang!15275) r!7292) ((_ is ElementMatch!15275) r!7292) ((_ is Union!15275) r!7292) (not ((_ is Concat!24120) r!7292))))))

(declare-fun bm!391663 () Bool)

(assert (=> bm!391663 (= call!391721 call!391581)))

(declare-fun bm!391664 () Bool)

(assert (=> bm!391664 (= call!391726 call!391593)))

(declare-fun bm!391665 () Bool)

(declare-fun lemmaConcatAssociative!70 (Regex!15275 Regex!15275 Regex!15275 List!62124) Unit!154660)

(assert (=> bm!391665 (= call!391552 (lemmaConcatAssociative!70 (ite (or c!950277 c!950279) (regOne!31062 (regOne!31062 r!7292)) (reg!15604 (regOne!31062 r!7292))) (ite (or c!950277 c!950279) (regTwo!31062 (regOne!31062 r!7292)) lt!2220921) (ite c!950277 lt!2220976 (ite c!950279 lt!2220942 (regTwo!31062 r!7292))) s!2326))))

(declare-fun bm!391666 () Bool)

(assert (=> bm!391666 (= call!391662 (matchZipper!1519 (ite c!950272 z!1189 ((_ map or) lt!2220983 lt!2221001)) (ite c!950272 s!2326 (t!375351 s!2326))))))

(declare-fun bm!391667 () Bool)

(assert (=> bm!391667 (= call!391536 (nullable!5444 (ite c!950272 (regOne!31063 (regOne!31062 r!7292)) (regOne!31062 (regOne!31062 r!7292)))))))

(declare-fun bm!391668 () Bool)

(assert (=> bm!391668 (= call!391550 call!391619)))

(declare-fun bm!391669 () Bool)

(assert (=> bm!391669 (= call!391555 call!391544)))

(declare-fun bm!391670 () Bool)

(assert (=> bm!391670 (= call!391682 call!391641)))

(assert (=> b!5445321 e!3372837))

(declare-fun res!2318620 () Bool)

(assert (=> b!5445321 (=> (not res!2318620) (not e!3372837))))

(declare-fun lt!2220928 () List!62124)

(assert (=> b!5445321 (= res!2318620 (matchR!7460 lt!2221072 lt!2220928))))

(declare-fun lt!2220963 () Unit!154660)

(assert (=> b!5445321 (= lt!2220963 call!391569)))

(assert (=> b!5445321 call!391677))

(declare-fun lt!2220909 () Unit!154660)

(assert (=> b!5445321 (= lt!2220909 call!391719)))

(declare-fun lt!2220979 () List!62124)

(assert (=> b!5445321 (= lt!2220928 (++!13629 (_1!35777 lt!2221012) lt!2220979))))

(assert (=> b!5445321 (= lt!2220928 call!391713)))

(assert (=> b!5445321 (= lt!2220979 call!391627)))

(assert (=> b!5445321 (= lt!2221054 call!391671)))

(declare-fun lt!2220973 () Unit!154660)

(assert (=> b!5445321 (= lt!2220973 call!391570)))

(assert (=> b!5445321 (= lt!2221012 (get!21377 lt!2220939))))

(assert (=> b!5445321 (= call!391661 call!391676)))

(declare-fun lt!2221030 () Unit!154660)

(assert (=> b!5445321 (= lt!2221030 call!391640)))

(assert (=> b!5445321 (= call!391573 call!391547)))

(declare-fun lt!2221071 () Unit!154660)

(assert (=> b!5445321 (= lt!2221071 call!391646)))

(assert (=> b!5445321 (= call!391528 call!391524)))

(assert (=> b!5445321 (= lt!2220939 call!391575)))

(declare-fun lt!2221098 () Unit!154660)

(assert (=> b!5445321 (= lt!2221098 call!391542)))

(assert (=> b!5445321 (= (matchR!7460 lt!2221060 (_1!35777 lt!2221050)) call!391598)))

(declare-fun lt!2220916 () Unit!154660)

(assert (=> b!5445321 (= lt!2220916 call!391624)))

(assert (=> b!5445321 (= lt!2221050 call!391629)))

(assert (=> b!5445321 (= call!391694 call!391560)))

(declare-fun lt!2221045 () Unit!154660)

(assert (=> b!5445321 (= lt!2221045 call!391675)))

(declare-fun lt!2220925 () Option!15386)

(assert (=> b!5445321 (= (isDefined!12089 lt!2220925) call!391587)))

(assert (=> b!5445321 (= lt!2220925 call!391726)))

(declare-fun lt!2221082 () Unit!154660)

(assert (=> b!5445321 (= lt!2221082 call!391604)))

(assert (=> b!5445321 call!391657))

(declare-fun lt!2221007 () Unit!154660)

(assert (=> b!5445321 (= lt!2221007 call!391522)))

(assert (=> b!5445321 call!391576))

(assert (=> b!5445321 (= lt!2221058 (Concat!24120 lt!2221060 (regTwo!31062 r!7292)))))

(assert (=> b!5445321 (= lt!2221060 (Concat!24120 (reg!15604 (regOne!31062 r!7292)) lt!2220921))))

(declare-fun lt!2221021 () Unit!154660)

(assert (=> b!5445321 (= lt!2221021 call!391718)))

(assert (=> b!5445321 e!3372864))

(declare-fun res!2318631 () Bool)

(assert (=> b!5445321 (=> (not res!2318631) (not e!3372864))))

(assert (=> b!5445321 (= res!2318631 call!391649)))

(declare-fun lt!2221000 () Unit!154660)

(assert (=> b!5445321 (= lt!2221000 call!391655)))

(assert (=> b!5445321 (= call!391644 call!391684)))

(declare-fun lt!2221025 () Unit!154660)

(assert (=> b!5445321 (= lt!2221025 call!391538)))

(assert (=> b!5445321 (= call!391608 call!391699)))

(declare-fun lt!2221014 () Unit!154660)

(assert (=> b!5445321 (= lt!2221014 call!391692)))

(assert (=> b!5445321 call!391613))

(assert (=> b!5445321 (= lt!2221011 call!391609)))

(assert (=> b!5445321 (= lt!2221037 call!391621)))

(declare-fun lt!2220965 () Unit!154660)

(assert (=> b!5445321 (= lt!2220965 call!391681)))

(declare-fun lt!2220996 () Unit!154660)

(assert (=> b!5445321 (= lt!2220996 call!391724)))

(assert (=> b!5445321 (= lt!2220949 call!391667)))

(assert (=> b!5445321 call!391557))

(declare-fun findConcatSeparationZippers!74 ((InoxSet Context!9318) (InoxSet Context!9318) List!62124 List!62124 List!62124) Option!15386)

(assert (=> b!5445321 (= lt!2221008 (findConcatSeparationZippers!74 lt!2221009 lt!2220934 Nil!62000 s!2326 s!2326))))

(declare-fun lt!2220990 () Unit!154660)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!74 ((InoxSet Context!9318) Context!9318 List!62124) Unit!154660)

(assert (=> b!5445321 (= lt!2220990 (lemmaConcatZipperMatchesStringThenFindConcatDefined!74 lt!2221009 lt!2221053 s!2326))))

(declare-fun lambda!286916 () Int)

(declare-fun map!14239 ((InoxSet Context!9318) Int) (InoxSet Context!9318))

(assert (=> b!5445321 (= (map!14239 lt!2221009 lambda!286916) (store ((as const (Array Context!9318 Bool)) false) (Context!9319 call!391621) true))))

(declare-fun lt!2221034 () Unit!154660)

(assert (=> b!5445321 (= lt!2221034 call!391696)))

(declare-fun lt!2220922 () Unit!154660)

(declare-fun lemmaMapOnSingletonSet!76 ((InoxSet Context!9318) Context!9318 Int) Unit!154660)

(assert (=> b!5445321 (= lt!2220922 (lemmaMapOnSingletonSet!76 lt!2221009 lt!2221035 lambda!286916))))

(declare-fun Unit!154675 () Unit!154660)

(assert (=> b!5445321 (= e!3372854 Unit!154675)))

(declare-fun b!5445322 () Bool)

(assert (=> b!5445322 (= e!3372867 e!3372838)))

(assert (=> b!5445322 (= c!950272 ((_ is Union!15275) (regOne!31062 r!7292)))))

(declare-fun bm!391671 () Bool)

(assert (=> bm!391671 (= call!391547 call!391708)))

(declare-fun bm!391672 () Bool)

(assert (=> bm!391672 (= call!391629 (get!21377 (ite c!950271 lt!2220943 lt!2220925)))))

(declare-fun bm!391673 () Bool)

(assert (=> bm!391673 (= call!391613 call!391711)))

(declare-fun bm!391674 () Bool)

(assert (=> bm!391674 (= call!391583 (derivationStepZipperDown!723 (ite c!950272 (regOne!31063 (regOne!31062 r!7292)) (ite c!950277 (regTwo!31062 (regOne!31062 r!7292)) (ite c!950279 (regOne!31062 (regOne!31062 r!7292)) (reg!15604 (regOne!31062 r!7292))))) (ite (or c!950272 c!950277) lt!2220935 (ite c!950279 (Context!9319 lt!2220947) lt!2221053)) (h!68448 s!2326)))))

(declare-fun bm!391675 () Bool)

(assert (=> bm!391675 (= call!391548 call!391679)))

(declare-fun b!5445323 () Bool)

(declare-fun e!3372856 () Bool)

(assert (=> b!5445323 (= e!3372856 call!391529)))

(declare-fun bm!391676 () Bool)

(assert (=> bm!391676 (= call!391714 call!391637)))

(declare-fun bm!391677 () Bool)

(assert (=> bm!391677 (= call!391718 call!391552)))

(declare-fun bm!391678 () Bool)

(assert (=> bm!391678 (= call!391604 call!391537)))

(declare-fun bm!391679 () Bool)

(assert (=> bm!391679 (= call!391578 call!391539)))

(declare-fun bm!391680 () Bool)

(assert (=> bm!391680 (= call!391601 call!391650)))

(declare-fun b!5445324 () Bool)

(declare-fun Unit!154676 () Unit!154660)

(assert (=> b!5445324 (= e!3372839 Unit!154676)))

(declare-fun lt!2220948 () Unit!154660)

(assert (=> b!5445324 (= lt!2220948 call!391716)))

(declare-fun res!2318603 () Bool)

(assert (=> b!5445324 (= res!2318603 call!391526)))

(assert (=> b!5445324 (=> res!2318603 e!3372856)))

(assert (=> b!5445324 (= call!391567 e!3372856)))

(declare-fun bm!391681 () Bool)

(assert (=> bm!391681 (= call!391615 (lemmaFlatMapOnSingletonSet!534 (ite c!950277 lt!2221056 (ite c!950279 lt!2221004 lt!2221009)) (ite c!950277 lt!2220993 (ite c!950279 lt!2220984 lt!2221035)) (ite c!950277 lambda!286901 (ite c!950279 lambda!286901 lambda!286901))))))

(declare-fun b!5445325 () Bool)

(declare-fun res!2318617 () Bool)

(assert (=> b!5445325 (=> (not res!2318617) (not e!3372840))))

(declare-fun toList!9059 ((InoxSet Context!9318)) List!62126)

(assert (=> b!5445325 (= res!2318617 (= (toList!9059 z!1189) zl!343))))

(declare-fun b!5445326 () Bool)

(assert (=> b!5445326 (= e!3372859 e!3372854)))

(assert (=> b!5445326 (= c!950276 call!391632)))

(declare-fun b!5445327 () Bool)

(declare-fun Unit!154677 () Unit!154660)

(assert (=> b!5445327 (= e!3372851 Unit!154677)))

(declare-fun lt!2221086 () Unit!154660)

(assert (=> b!5445327 (= lt!2221086 call!391579)))

(declare-fun res!2318613 () Bool)

(assert (=> b!5445327 (= res!2318613 lt!2220923)))

(assert (=> b!5445327 (=> res!2318613 e!3372846)))

(assert (=> b!5445327 (= (matchZipper!1519 ((_ map or) lt!2220980 lt!2220927) (t!375351 s!2326)) e!3372846)))

(declare-fun bm!391682 () Bool)

(assert (=> bm!391682 (= call!391633 call!391670)))

(declare-fun b!5445328 () Bool)

(declare-fun res!2318622 () Bool)

(assert (=> b!5445328 (=> res!2318622 e!3372834)))

(declare-fun isEmpty!33980 (List!62125) Bool)

(assert (=> b!5445328 (= res!2318622 (isEmpty!33980 (t!375352 (exprs!5159 (h!68450 zl!343)))))))

(declare-fun bm!391683 () Bool)

(assert (=> bm!391683 (= call!391524 call!391709)))

(declare-fun bm!391684 () Bool)

(assert (=> bm!391684 (= call!391538 call!391564)))

(declare-fun bm!391685 () Bool)

(declare-fun lemmaConcatAssociativity!2852 (List!62124 List!62124 List!62124) Unit!154660)

(assert (=> bm!391685 (= call!391570 (lemmaConcatAssociativity!2852 (ite c!950271 (_1!35777 lt!2221059) (_1!35777 lt!2221012)) (ite c!950271 (_2!35777 lt!2221059) (_2!35777 lt!2221012)) (ite c!950271 (_2!35777 lt!2220971) (_2!35777 lt!2221050))))))

(declare-fun bm!391686 () Bool)

(assert (=> bm!391686 (= call!391542 call!391620)))

(declare-fun bm!391687 () Bool)

(assert (=> bm!391687 (= call!391659 call!391561)))

(declare-fun b!5445329 () Bool)

(declare-fun tp!1500934 () Bool)

(declare-fun tp!1500941 () Bool)

(assert (=> b!5445329 (= e!3372845 (and tp!1500934 tp!1500941))))

(declare-fun b!5445330 () Bool)

(declare-fun res!2318615 () Bool)

(assert (=> b!5445330 (=> res!2318615 e!3372862)))

(assert (=> b!5445330 (= res!2318615 (not ((_ is Cons!62001) (exprs!5159 (h!68450 zl!343)))))))

(declare-fun bm!391688 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!432 (Regex!15275 List!62124) Unit!154660)

(assert (=> bm!391688 (= call!391653 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!432 (reg!15604 (regOne!31062 r!7292)) (ite c!950271 (_1!35777 lt!2220971) (ite c!950276 (_1!35777 lt!2221050) Nil!62000))))))

(declare-fun bm!391689 () Bool)

(assert (=> bm!391689 (= call!391651 (lemmaFlatMapOnSingletonSet!534 (ite c!950271 lt!2220920 lt!2220981) lt!2220935 (ite c!950271 lambda!286901 lambda!286901)))))

(declare-fun bm!391690 () Bool)

(assert (=> bm!391690 (= call!391581 (Exists!2456 (ite c!950277 lambda!286902 (ite c!950279 lambda!286907 (ite c!950271 lambda!286910 (ite c!950276 lambda!286920 lambda!286923))))))))

(declare-fun bm!391691 () Bool)

(assert (=> bm!391691 (= call!391563 (derivationStepZipperUp!647 (ite c!950279 lt!2220984 (ite c!950270 lt!2221035 lt!2220935)) (h!68448 s!2326)))))

(declare-fun b!5445331 () Bool)

(declare-fun Unit!154678 () Unit!154660)

(assert (=> b!5445331 (= e!3372843 Unit!154678)))

(declare-fun lt!2221042 () Unit!154660)

(assert (=> b!5445331 (= lt!2221042 (lemmaZipperConcatMatchesSameAsBothZippers!512 lt!2221057 lt!2220927 (t!375351 s!2326)))))

(declare-fun res!2318621 () Bool)

(assert (=> b!5445331 (= res!2318621 (matchZipper!1519 lt!2221057 (t!375351 s!2326)))))

(assert (=> b!5445331 (=> res!2318621 e!3372832)))

(assert (=> b!5445331 (= (matchZipper!1519 ((_ map or) lt!2221057 lt!2220927) (t!375351 s!2326)) e!3372832)))

(declare-fun bm!391692 () Bool)

(assert (=> bm!391692 (= call!391699 call!391727)))

(declare-fun bm!391693 () Bool)

(assert (=> bm!391693 (= call!391533 call!391562)))

(declare-fun bm!391694 () Bool)

(assert (=> bm!391694 (= call!391679 (flatMap!1002 (ite c!950272 lt!2221002 (ite c!950277 lt!2221056 lt!2221085)) (ite c!950272 lambda!286901 (ite c!950277 lambda!286901 lambda!286901))))))

(declare-fun bm!391695 () Bool)

(assert (=> bm!391695 (= call!391692 call!391643)))

(declare-fun bm!391696 () Bool)

(assert (=> bm!391696 (= call!391556 (Exists!2456 (ite c!950277 lambda!286904 (ite c!950279 lambda!286906 (ite c!950271 lambda!286914 (ite c!950276 lambda!286918 lambda!286924))))))))

(declare-fun b!5445332 () Bool)

(declare-fun e!3372858 () Bool)

(assert (=> b!5445332 (= e!3372858 (= lt!2220908 call!391606))))

(declare-fun bm!391697 () Bool)

(assert (=> bm!391697 (= call!391579 (lemmaZipperConcatMatchesSameAsBothZippers!512 (ite c!950272 lt!2220980 (ite c!950277 lt!2220983 lt!2221057)) (ite c!950272 lt!2220927 (ite c!950277 lt!2221001 lt!2220927)) (t!375351 s!2326)))))

(declare-fun bm!391698 () Bool)

(assert (=> bm!391698 (= call!391669 (matchZipper!1519 (ite c!950272 lt!2221080 ((_ map or) lt!2220983 lt!2220912)) (ite c!950272 s!2326 (t!375351 s!2326))))))

(declare-fun b!5445333 () Bool)

(declare-fun tp!1500932 () Bool)

(assert (=> b!5445333 (= e!3372863 tp!1500932)))

(declare-fun bm!391699 () Bool)

(assert (=> bm!391699 (= call!391557 call!391664)))

(declare-fun b!5445334 () Bool)

(declare-fun res!2318605 () Bool)

(assert (=> b!5445334 (=> res!2318605 e!3372862)))

(declare-fun generalisedUnion!1204 (List!62125) Regex!15275)

(declare-fun unfocusZipperList!717 (List!62126) List!62125)

(assert (=> b!5445334 (= res!2318605 (not (= r!7292 (generalisedUnion!1204 (unfocusZipperList!717 zl!343)))))))

(declare-fun bm!391700 () Bool)

(assert (=> bm!391700 (= call!391620 call!391663)))

(declare-fun bm!391701 () Bool)

(assert (=> bm!391701 (= call!391678 (++!13629 (ite c!950271 lt!2221028 (ite c!950276 (_2!35777 lt!2221012) Nil!62000)) (ite c!950271 (_2!35777 lt!2220971) (ite c!950276 (_2!35777 lt!2221050) s!2326))))))

(declare-fun b!5445335 () Bool)

(assert (=> b!5445335 (= e!3372848 (or (not lt!2220908) lt!2220899))))

(declare-fun bm!391702 () Bool)

(assert (=> bm!391702 (= call!391541 call!391680)))

(declare-fun bm!391703 () Bool)

(assert (=> bm!391703 (= call!391671 (++!13629 (ite c!950271 (_1!35777 lt!2221059) (_1!35777 lt!2221012)) (ite c!950271 lt!2221097 (_2!35777 lt!2221012))))))

(declare-fun bm!391704 () Bool)

(assert (=> bm!391704 (= call!391543 call!391523)))

(declare-fun bm!391705 () Bool)

(assert (=> bm!391705 (= call!391642 (generalisedConcat!944 (ite c!950282 (t!375352 (exprs!5159 (h!68450 zl!343))) (ite c!950272 lt!2221038 (t!375352 (exprs!5159 (h!68450 zl!343)))))))))

(declare-fun b!5445336 () Bool)

(assert (=> b!5445336 e!3372858))

(declare-fun res!2318628 () Bool)

(assert (=> b!5445336 (=> (not res!2318628) (not e!3372858))))

(assert (=> b!5445336 (= res!2318628 (= call!391725 call!391546))))

(declare-fun lt!2221020 () Unit!154660)

(assert (=> b!5445336 (= lt!2221020 call!391668)))

(assert (=> b!5445336 (= lt!2221010 call!391619)))

(assert (=> b!5445336 (= call!391545 call!391535)))

(declare-fun lt!2220951 () Unit!154660)

(assert (=> b!5445336 (= lt!2220951 call!391580)))

(assert (=> b!5445336 (= call!391599 call!391697)))

(declare-fun lt!2221094 () Unit!154660)

(assert (=> b!5445336 (= lt!2221094 call!391584)))

(assert (=> b!5445336 (= lt!2221032 (store ((as const (Array Context!9318 Bool)) false) lt!2220935 true))))

(assert (=> b!5445336 (= call!391687 call!391555)))

(declare-fun lt!2220930 () Unit!154660)

(assert (=> b!5445336 (= lt!2220930 call!391568)))

(assert (=> b!5445336 (= call!391602 call!391723)))

(declare-fun lt!2220957 () Unit!154660)

(assert (=> b!5445336 (= lt!2220957 call!391588)))

(assert (=> b!5445336 (not call!391727)))

(declare-fun lt!2221078 () Unit!154660)

(assert (=> b!5445336 (= lt!2221078 call!391622)))

(declare-fun Unit!154679 () Unit!154660)

(assert (=> b!5445336 (= e!3372849 Unit!154679)))

(declare-fun bm!391706 () Bool)

(assert (=> bm!391706 (= call!391655 call!391591)))

(declare-fun bm!391707 () Bool)

(assert (=> bm!391707 (= call!391606 call!391551)))

(declare-fun bm!391708 () Bool)

(assert (=> bm!391708 (= call!391705 call!391682)))

(declare-fun b!5445337 () Bool)

(assert (=> b!5445337 (= e!3372861 call!391534)))

(declare-fun bm!391709 () Bool)

(assert (=> bm!391709 (= call!391684 call!391551)))

(declare-fun bm!391710 () Bool)

(assert (=> bm!391710 (= call!391627 call!391678)))

(declare-fun bm!391711 () Bool)

(assert (=> bm!391711 (= call!391657 (matchRSpec!2378 (ite c!950272 lt!2220937 lt!2221058) s!2326))))

(declare-fun bm!391712 () Bool)

(assert (=> bm!391712 (= call!391602 call!391543)))

(declare-fun bm!391713 () Bool)

(assert (=> bm!391713 (= call!391590 call!391618)))

(declare-fun bm!391714 () Bool)

(assert (=> bm!391714 (= call!391571 call!391527)))

(declare-fun bm!391715 () Bool)

(assert (=> bm!391715 (= call!391616 call!391572)))

(declare-fun b!5445338 () Bool)

(declare-fun res!2318623 () Bool)

(assert (=> b!5445338 (=> res!2318623 e!3372862)))

(declare-fun isEmpty!33981 (List!62126) Bool)

(assert (=> b!5445338 (= res!2318623 (not (isEmpty!33981 (t!375353 zl!343))))))

(declare-fun b!5445339 () Bool)

(declare-fun Unit!154680 () Unit!154660)

(assert (=> b!5445339 (= e!3372867 Unit!154680)))

(assert (=> b!5445339 (= lt!2221015 (store ((as const (Array Context!9318 Bool)) false) lt!2220935 true))))

(declare-fun lt!2220945 () Regex!15275)

(assert (=> b!5445339 (= lt!2220945 call!391642)))

(declare-fun lt!2220938 () Unit!154660)

(assert (=> b!5445339 (= lt!2220938 call!391658)))

(assert (=> b!5445339 (= call!391589 call!391558)))

(declare-fun bm!391716 () Bool)

(assert (=> bm!391716 (= call!391722 call!391603)))

(declare-fun bm!391717 () Bool)

(assert (=> bm!391717 (= call!391589 (matchR!7460 (ite c!950282 lt!2220945 (ite c!950272 lt!2221062 (ite c!950279 lt!2221006 (ite c!950270 (ite c!950271 lt!2220921 (ite c!950276 lt!2221058 lt!2220921)) (regTwo!31062 r!7292))))) (ite c!950282 (t!375351 s!2326) (ite (or c!950272 c!950279) s!2326 (ite c!950270 (ite c!950271 (_1!35777 lt!2220971) (ite c!950276 s!2326 Nil!62000)) s!2326)))))))

(declare-fun bm!391718 () Bool)

(assert (=> bm!391718 (= call!391658 (theoremZipperRegexEquiv!555 (ite c!950282 lt!2221015 (ite c!950272 lt!2221080 (ite c!950277 lt!2221093 (ite (and c!950271 c!950274) lt!2220920 lt!2221009)))) (ite c!950282 (Cons!62002 lt!2220935 Nil!62002) (ite c!950272 (Cons!62002 lt!2221091 Nil!62002) (ite c!950277 (Cons!62002 lt!2221064 Nil!62002) (ite (and c!950271 c!950274) (Cons!62002 lt!2220935 Nil!62002) (Cons!62002 lt!2221035 Nil!62002))))) (ite c!950282 lt!2220945 (ite c!950272 lt!2220956 (ite c!950277 lt!2220962 (ite (and c!950271 c!950274) lt!2221022 (reg!15604 (regOne!31062 r!7292)))))) (ite c!950282 (t!375351 s!2326) (ite (or c!950272 c!950277) s!2326 (ite c!950271 (ite c!950274 s!2326 (_1!35777 lt!2221059)) (_1!35777 lt!2220949))))))))

(declare-fun bm!391719 () Bool)

(assert (=> bm!391719 (= call!391707 call!391704)))

(declare-fun b!5445340 () Bool)

(declare-fun tp!1500937 () Bool)

(assert (=> b!5445340 (= e!3372845 tp!1500937)))

(declare-fun bm!391720 () Bool)

(assert (=> bm!391720 (= call!391553 call!391566)))

(declare-fun bm!391721 () Bool)

(assert (=> bm!391721 (= call!391561 (matchZipper!1519 (ite c!950272 lt!2221002 (ite c!950277 lt!2221001 (ite c!950279 z!1189 (ite c!950270 (ite c!950271 z!1189 lt!2221009) lt!2221057)))) (ite c!950272 s!2326 (ite c!950277 (t!375351 s!2326) (ite c!950279 s!2326 (ite c!950270 (ite c!950271 s!2326 (_1!35777 lt!2220949)) (t!375351 s!2326)))))))))

(declare-fun b!5445341 () Bool)

(declare-fun Unit!154681 () Unit!154660)

(assert (=> b!5445341 (= e!3372859 Unit!154681)))

(declare-fun bm!391722 () Bool)

(assert (=> bm!391722 (= call!391670 (findConcatSeparation!1800 (ite (or c!950277 c!950279) (regOne!31062 (regOne!31062 r!7292)) (reg!15604 (regOne!31062 r!7292))) (ite c!950277 lt!2221067 (ite c!950279 lt!2220961 lt!2220921)) Nil!62000 (ite (or c!950277 c!950279) s!2326 (ite c!950271 (_1!35777 lt!2220971) (_1!35777 lt!2221050))) (ite (or c!950277 c!950279) s!2326 (ite c!950271 (_1!35777 lt!2220971) (_1!35777 lt!2221050)))))))

(assert (= (and start!570874 res!2318624) b!5445325))

(assert (= (and b!5445325 res!2318617) b!5445315))

(assert (= (and b!5445315 res!2318608) b!5445288))

(assert (= (and b!5445288 (not res!2318627)) b!5445338))

(assert (= (and b!5445338 (not res!2318623)) b!5445303))

(assert (= (and b!5445303 (not res!2318611)) b!5445330))

(assert (= (and b!5445330 (not res!2318615)) b!5445334))

(assert (= (and b!5445334 (not res!2318605)) b!5445320))

(assert (= (and b!5445320 (not res!2318626)) b!5445313))

(assert (= (and b!5445313 (not res!2318625)) b!5445328))

(assert (= (and b!5445328 (not res!2318622)) b!5445296))

(assert (= (and b!5445296 c!950278) b!5445331))

(assert (= (and b!5445296 (not c!950278)) b!5445305))

(assert (= (and b!5445331 (not res!2318621)) b!5445281))

(assert (= (and b!5445296 c!950282) b!5445339))

(assert (= (and b!5445296 (not c!950282)) b!5445322))

(assert (= (and b!5445322 c!950272) b!5445312))

(assert (= (and b!5445322 (not c!950272)) b!5445318))

(assert (= (and b!5445312 (not res!2318606)) b!5445282))

(assert (= (and b!5445312 c!950273) b!5445327))

(assert (= (and b!5445312 (not c!950273)) b!5445297))

(assert (= (and b!5445327 (not res!2318613)) b!5445299))

(assert (= (and b!5445312 c!950281) b!5445324))

(assert (= (and b!5445312 (not c!950281)) b!5445310))

(assert (= (and b!5445324 (not res!2318603)) b!5445323))

(assert (= (and b!5445312 res!2318616) b!5445309))

(assert (= (and b!5445318 res!2318619) b!5445302))

(assert (= (and b!5445318 c!950277) b!5445295))

(assert (= (and b!5445318 (not c!950277)) b!5445279))

(assert (= (and b!5445295 (not res!2318612)) b!5445294))

(assert (= (and b!5445295 (not res!2318630)) b!5445280))

(assert (= (and b!5445295 res!2318610) b!5445290))

(assert (= (and b!5445279 c!950279) b!5445301))

(assert (= (and b!5445279 (not c!950279)) b!5445287))

(assert (= (and b!5445301 res!2318604) b!5445314))

(assert (= (and b!5445287 c!950270) b!5445319))

(assert (= (and b!5445287 (not c!950270)) b!5445298))

(assert (= (and b!5445319 res!2318614) b!5445335))

(assert (= (and b!5445319 c!950271) b!5445316))

(assert (= (and b!5445319 (not c!950271)) b!5445300))

(assert (= (and b!5445316 c!950274) b!5445306))

(assert (= (and b!5445316 (not c!950274)) b!5445284))

(assert (= (and b!5445306 res!2318629) b!5445337))

(assert (= (and b!5445284 res!2318618) b!5445292))

(assert (= (or b!5445306 b!5445284) bm!391566))

(assert (= (or b!5445306 b!5445284) bm!391540))

(assert (= (or b!5445337 b!5445284) bm!391641))

(assert (= (or b!5445306 b!5445284) bm!391567))

(assert (= (and b!5445300 c!950280) b!5445326))

(assert (= (and b!5445300 (not c!950280)) b!5445341))

(assert (= (and b!5445326 c!950276) b!5445321))

(assert (= (and b!5445326 (not c!950276)) b!5445311))

(assert (= (and b!5445321 res!2318631) b!5445304))

(assert (= (and b!5445321 res!2318620) b!5445285))

(assert (= (and b!5445311 res!2318609) b!5445307))

(assert (= (or b!5445321 b!5445311) bm!391664))

(assert (= (or b!5445321 b!5445311) bm!391595))

(assert (= (or b!5445321 b!5445311) bm!391596))

(assert (= (or b!5445321 b!5445311) bm!391671))

(assert (= (or b!5445321 b!5445311) bm!391521))

(assert (= (or b!5445321 b!5445311) bm!391706))

(assert (= (or b!5445321 b!5445311) bm!391545))

(assert (= (or b!5445321 b!5445311) bm!391549))

(assert (= (or b!5445321 b!5445311) bm!391576))

(assert (= (or b!5445321 b!5445311) bm!391673))

(assert (= (or b!5445321 b!5445311) bm!391662))

(assert (= (or b!5445321 b!5445311) bm!391684))

(assert (= (or b!5445321 b!5445311) bm!391710))

(assert (= (or b!5445321 b!5445311) bm!391569))

(assert (= (or b!5445321 b!5445311) bm!391628))

(assert (= (or b!5445321 b!5445311) bm!391686))

(assert (= (or b!5445321 b!5445311) bm!391517))

(assert (= (or b!5445321 b!5445311) bm!391646))

(assert (= (or b!5445321 b!5445311) bm!391699))

(assert (= (or b!5445284 bm!391545) bm!391719))

(assert (= (or bm!391566 b!5445321) bm!391607))

(assert (= (or bm!391540 b!5445321) bm!391695))

(assert (= (or b!5445284 bm!391595) bm!391654))

(assert (= (or b!5445306 b!5445311) bm!391689))

(assert (= (or b!5445306 b!5445311) bm!391541))

(assert (= (or b!5445284 b!5445321) bm!391678))

(assert (= (or b!5445284 b!5445321) bm!391683))

(assert (= (or b!5445284 b!5445321) bm!391685))

(assert (= (or b!5445316 bm!391549) bm!391574))

(assert (= (or b!5445284 b!5445321) bm!391539))

(assert (= (or b!5445284 bm!391646) bm!391713))

(assert (= (or b!5445306 b!5445311) bm!391518))

(assert (= (or b!5445284 b!5445321) bm!391703))

(assert (= (or b!5445284 b!5445321) bm!391575))

(assert (= (or b!5445284 bm!391684) bm!391579))

(assert (= (or b!5445316 bm!391628) bm!391708))

(assert (= (or b!5445284 b!5445321) bm!391573))

(assert (= (or b!5445284 bm!391569) bm!391653))

(assert (= (or b!5445284 bm!391517) bm!391688))

(assert (= (or b!5445316 bm!391671) bm!391636))

(assert (= (or b!5445316 bm!391686) bm!391700))

(assert (= (or b!5445284 b!5445321) bm!391644))

(assert (= (or b!5445316 b!5445321) bm!391617))

(assert (= (or b!5445284 bm!391699) bm!391578))

(assert (= (or bm!391567 b!5445326) bm!391537))

(assert (= (or b!5445284 b!5445321) bm!391556))

(assert (= (or b!5445284 b!5445321) bm!391594))

(assert (= (or b!5445284 b!5445321) bm!391657))

(assert (= (or b!5445284 b!5445321) bm!391536))

(assert (= (or b!5445284 b!5445321) bm!391580))

(assert (= (or b!5445316 bm!391664) bm!391630))

(assert (= (or b!5445284 b!5445321) bm!391709))

(assert (= (or bm!391641 b!5445316 b!5445321) bm!391692))

(assert (= (or b!5445316 b!5445321) bm!391526))

(assert (= (or b!5445284 bm!391710) bm!391701))

(assert (= (or b!5445284 b!5445321) bm!391672))

(assert (= (or b!5445284 b!5445321) bm!391555))

(assert (= (or b!5445316 b!5445321) bm!391586))

(assert (= (or b!5445284 bm!391576) bm!391676))

(assert (= (or b!5445284 bm!391596) bm!391716))

(assert (= (or b!5445284 b!5445321) bm!391551))

(assert (= (or b!5445284 bm!391662) bm!391582))

(assert (= (or b!5445284 b!5445321) bm!391623))

(assert (= (or b!5445284 bm!391706) bm!391550))

(assert (= (or b!5445284 b!5445321) bm!391614))

(assert (= (or b!5445306 b!5445311) bm!391668))

(assert (= (or b!5445284 bm!391673) bm!391616))

(assert (= (and b!5445298 c!950275) b!5445336))

(assert (= (and b!5445298 (not c!950275)) b!5445317))

(assert (= (and b!5445336 res!2318628) b!5445332))

(assert (= (and b!5445317 res!2318607) b!5445291))

(assert (= (or b!5445336 b!5445317) bm!391547))

(assert (= (or b!5445336 b!5445317) bm!391712))

(assert (= (or b!5445336 b!5445317) bm!391642))

(assert (= (or b!5445336 b!5445317) bm!391599))

(assert (= (or b!5445336 b!5445317) bm!391661))

(assert (= (or b!5445336 b!5445291) bm!391625))

(assert (= (or b!5445336 b!5445317) bm!391669))

(assert (= (or b!5445332 b!5445317) bm!391707))

(assert (= (or b!5445336 b!5445317) bm!391647))

(assert (= (or bm!391616 b!5445336) bm!391533))

(assert (= (or bm!391709 bm!391707) bm!391643))

(assert (= (or b!5445319 b!5445336) bm!391652))

(assert (= (or bm!391623 bm!391712) bm!391704))

(assert (= (or b!5445319 b!5445336) bm!391585))

(assert (= (or b!5445319 b!5445336) bm!391592))

(assert (= (or bm!391594 bm!391661) bm!391589))

(assert (= (or b!5445300 b!5445319 b!5445336) bm!391637))

(assert (= (or bm!391713 bm!391647) bm!391529))

(assert (= (or b!5445319 bm!391547) bm!391693))

(assert (= (or bm!391582 b!5445336) bm!391632))

(assert (= (or bm!391537 bm!391625) bm!391587))

(assert (= (or bm!391668 b!5445336) bm!391601))

(assert (= (or bm!391692 b!5445336) bm!391631))

(assert (= (or bm!391579 b!5445336) bm!391584))

(assert (= (or bm!391719 bm!391642) bm!391656))

(assert (= (or b!5445319 bm!391669) bm!391560))

(assert (= (or b!5445301 bm!391560) bm!391593))

(assert (= (or b!5445301 bm!391536) bm!391682))

(assert (= (or b!5445301 bm!391574) bm!391663))

(assert (= (or b!5445301 bm!391584) bm!391543))

(assert (= (or b!5445301 b!5445319) bm!391615))

(assert (= (or b!5445314 bm!391631) bm!391570))

(assert (= (or b!5445301 bm!391589) bm!391583))

(assert (= (or b!5445301 bm!391592) bm!391691))

(assert (= (or b!5445301 bm!391693) bm!391591))

(assert (= (or b!5445301 bm!391601) bm!391557))

(assert (= (or b!5445301 bm!391683) bm!391519))

(assert (= (or b!5445301 bm!391656) bm!391611))

(assert (= (or b!5445301 bm!391676) bm!391553))

(assert (= (or b!5445301 bm!391654) bm!391612))

(assert (= (or b!5445301 bm!391637) bm!391702))

(assert (= (or b!5445301 bm!391632) bm!391559))

(assert (= (or b!5445301 bm!391518) bm!391622))

(assert (= (or b!5445301 bm!391708) bm!391670))

(assert (= (or b!5445301 bm!391678) bm!391523))

(assert (= (or b!5445301 bm!391700) bm!391651))

(assert (= (or b!5445301 bm!391630) bm!391588))

(assert (= (or b!5445301 bm!391716) bm!391649))

(assert (= (or b!5445301 b!5445321) bm!391677))

(assert (= (or b!5445301 b!5445319) bm!391633))

(assert (= (or b!5445301 bm!391529) bm!391562))

(assert (= (or b!5445301 bm!391704) bm!391658))

(assert (= (or b!5445301 bm!391636) bm!391650))

(assert (= (or b!5445301 bm!391526) bm!391610))

(assert (= (or b!5445301 bm!391555) bm!391624))

(assert (= (or b!5445301 bm!391578) bm!391714))

(assert (= (or b!5445301 bm!391586) bm!391629))

(assert (= (or b!5445295 b!5445301) bm!391659))

(assert (= (or b!5445295 bm!391611) bm!391531))

(assert (= (or b!5445295 bm!391557) bm!391638))

(assert (= (or b!5445295 bm!391682) bm!391722))

(assert (= (or b!5445295 b!5445319) bm!391675))

(assert (= (or b!5445295 bm!391533) bm!391542))

(assert (= (or b!5445295 bm!391612) bm!391535))

(assert (= (or b!5445295 bm!391658) bm!391660))

(assert (= (or b!5445295 bm!391651) bm!391626))

(assert (= (or b!5445294 bm!391570) bm!391687))

(assert (= (or b!5445295 bm!391553) bm!391696))

(assert (= (or b!5445295 bm!391652) bm!391548))

(assert (= (or b!5445295 b!5445319) bm!391561))

(assert (= (or b!5445295 bm!391633) bm!391681))

(assert (= (or b!5445295 bm!391624) bm!391581))

(assert (= (or b!5445295 bm!391677) bm!391665))

(assert (= (or b!5445295 bm!391519) bm!391627))

(assert (= (or b!5445295 bm!391615) bm!391639))

(assert (= (or b!5445295 bm!391587) bm!391645))

(assert (= (or b!5445295 bm!391591) bm!391520))

(assert (= (or b!5445295 bm!391643) bm!391544))

(assert (= (or b!5445295 bm!391583) bm!391680))

(assert (= (or b!5445295 bm!391543) bm!391715))

(assert (= (or b!5445295 b!5445336) bm!391620))

(assert (= (or b!5445295 bm!391562) bm!391565))

(assert (= (or b!5445295 bm!391610) bm!391572))

(assert (= (or b!5445295 bm!391649) bm!391635))

(assert (= (or b!5445295 bm!391663) bm!391690))

(assert (= (or b!5445295 bm!391593) bm!391530))

(assert (= (or b!5445295 bm!391695) bm!391605))

(assert (= (or b!5445295 bm!391588) bm!391525))

(assert (= (or b!5445290 bm!391702) bm!391619))

(assert (= (or b!5445295 b!5445319) bm!391679))

(assert (= (or b!5445295 b!5445319) bm!391602))

(assert (= (or b!5445295 bm!391607) bm!391600))

(assert (= (or b!5445295 bm!391523) bm!391554))

(assert (= (or b!5445295 b!5445301) bm!391720))

(assert (= (or b!5445295 bm!391653) bm!391563))

(assert (= (or b!5445295 bm!391670) bm!391534))

(assert (= (or b!5445295 bm!391629) bm!391606))

(assert (= (or b!5445295 bm!391714) bm!391528))

(assert (= (or b!5445312 bm!391680) bm!391577))

(assert (= (or b!5445312 bm!391660) bm!391609))

(assert (= (or b!5445324 b!5445295) bm!391538))

(assert (= (or b!5445327 bm!391620) bm!391697))

(assert (= (or b!5445312 bm!391675) bm!391694))

(assert (= (or b!5445312 bm!391530) bm!391552))

(assert (= (or b!5445312 b!5445321) bm!391711))

(assert (= (or b!5445299 b!5445323 b!5445280) bm!391640))

(assert (= (or b!5445312 bm!391679) bm!391648))

(assert (= (or b!5445312 bm!391715) bm!391603))

(assert (= (or b!5445312 bm!391622) bm!391597))

(assert (= (or b!5445312 bm!391565) bm!391524))

(assert (= (or b!5445312 bm!391585) bm!391564))

(assert (= (or b!5445312 bm!391638) bm!391558))

(assert (= (or b!5445312 bm!391521) bm!391532))

(assert (= (or b!5445312 bm!391542) bm!391568))

(assert (= (or b!5445312 bm!391544) bm!391634))

(assert (= (or b!5445282 b!5445324 bm!391645) bm!391590))

(assert (= (or b!5445312 bm!391559) bm!391604))

(assert (= (or b!5445312 bm!391605) bm!391621))

(assert (= (or b!5445312 bm!391531) bm!391618))

(assert (= (or b!5445312 bm!391520) bm!391546))

(assert (= (or b!5445312 b!5445295) bm!391655))

(assert (= (or b!5445312 bm!391600) bm!391527))

(assert (= (or b!5445312 bm!391639) bm!391674))

(assert (= (or b!5445312 bm!391602) bm!391613))

(assert (= (or b!5445312 b!5445302) bm!391667))

(assert (= (or b!5445312 bm!391720) bm!391608))

(assert (= (or b!5445324 bm!391619) bm!391571))

(assert (= (or b!5445312 bm!391687) bm!391721))

(assert (= (or b!5445309 b!5445295) bm!391666))

(assert (= (or b!5445312 b!5445295) bm!391698))

(assert (= (or b!5445312 bm!391561) bm!391522))

(assert (= (or b!5445339 bm!391604) bm!391717))

(assert (= (or b!5445339 bm!391558) bm!391705))

(assert (= (or b!5445339 bm!391621) bm!391718))

(assert (= (or b!5445339 bm!391590) bm!391598))

(assert (= (and start!570874 ((_ is ElementMatch!15275) r!7292)) b!5445286))

(assert (= (and start!570874 ((_ is Concat!24120) r!7292)) b!5445329))

(assert (= (and start!570874 ((_ is Star!15275) r!7292)) b!5445340))

(assert (= (and start!570874 ((_ is Union!15275) r!7292)) b!5445283))

(assert (= (and start!570874 condSetEmpty!35635) setIsEmpty!35635))

(assert (= (and start!570874 (not condSetEmpty!35635)) setNonEmpty!35635))

(assert (= setNonEmpty!35635 b!5445333))

(assert (= b!5445308 b!5445289))

(assert (= (and start!570874 ((_ is Cons!62002) zl!343)) b!5445308))

(assert (= (and start!570874 ((_ is Cons!62000) s!2326)) b!5445293))

(declare-fun m!6464820 () Bool)

(assert (=> bm!391634 m!6464820))

(declare-fun m!6464822 () Bool)

(assert (=> bm!391534 m!6464822))

(declare-fun m!6464824 () Bool)

(assert (=> b!5445325 m!6464824))

(declare-fun m!6464826 () Bool)

(assert (=> b!5445281 m!6464826))

(declare-fun m!6464828 () Bool)

(assert (=> bm!391667 m!6464828))

(declare-fun m!6464830 () Bool)

(assert (=> bm!391690 m!6464830))

(declare-fun m!6464832 () Bool)

(assert (=> bm!391525 m!6464832))

(declare-fun m!6464834 () Bool)

(assert (=> b!5445303 m!6464834))

(declare-fun m!6464836 () Bool)

(assert (=> bm!391573 m!6464836))

(declare-fun m!6464838 () Bool)

(assert (=> bm!391538 m!6464838))

(declare-fun m!6464840 () Bool)

(assert (=> b!5445331 m!6464840))

(declare-fun m!6464842 () Bool)

(assert (=> b!5445331 m!6464842))

(declare-fun m!6464844 () Bool)

(assert (=> b!5445331 m!6464844))

(declare-fun m!6464846 () Bool)

(assert (=> b!5445295 m!6464846))

(declare-fun m!6464848 () Bool)

(assert (=> b!5445295 m!6464848))

(declare-fun m!6464850 () Bool)

(assert (=> bm!391696 m!6464850))

(declare-fun m!6464852 () Bool)

(assert (=> bm!391563 m!6464852))

(declare-fun m!6464854 () Bool)

(assert (=> bm!391674 m!6464854))

(declare-fun m!6464856 () Bool)

(assert (=> bm!391571 m!6464856))

(declare-fun m!6464858 () Bool)

(assert (=> bm!391597 m!6464858))

(declare-fun m!6464860 () Bool)

(assert (=> bm!391581 m!6464860))

(declare-fun m!6464862 () Bool)

(assert (=> bm!391711 m!6464862))

(declare-fun m!6464864 () Bool)

(assert (=> b!5445327 m!6464864))

(declare-fun m!6464866 () Bool)

(assert (=> b!5445328 m!6464866))

(declare-fun m!6464868 () Bool)

(assert (=> bm!391703 m!6464868))

(declare-fun m!6464870 () Bool)

(assert (=> bm!391568 m!6464870))

(declare-fun m!6464872 () Bool)

(assert (=> bm!391568 m!6464872))

(declare-fun m!6464874 () Bool)

(assert (=> bm!391568 m!6464874))

(declare-fun m!6464876 () Bool)

(assert (=> bm!391572 m!6464876))

(declare-fun m!6464878 () Bool)

(assert (=> bm!391697 m!6464878))

(declare-fun m!6464880 () Bool)

(assert (=> bm!391718 m!6464880))

(declare-fun m!6464882 () Bool)

(assert (=> b!5445311 m!6464882))

(declare-fun m!6464884 () Bool)

(assert (=> bm!391609 m!6464884))

(declare-fun m!6464886 () Bool)

(assert (=> b!5445321 m!6464886))

(declare-fun m!6464888 () Bool)

(assert (=> b!5445321 m!6464888))

(declare-fun m!6464890 () Bool)

(assert (=> b!5445321 m!6464890))

(declare-fun m!6464892 () Bool)

(assert (=> b!5445321 m!6464892))

(declare-fun m!6464894 () Bool)

(assert (=> b!5445321 m!6464894))

(declare-fun m!6464896 () Bool)

(assert (=> b!5445321 m!6464896))

(declare-fun m!6464898 () Bool)

(assert (=> b!5445321 m!6464898))

(assert (=> b!5445321 m!6464870))

(declare-fun m!6464900 () Bool)

(assert (=> b!5445321 m!6464900))

(declare-fun m!6464902 () Bool)

(assert (=> b!5445321 m!6464902))

(declare-fun m!6464904 () Bool)

(assert (=> bm!391617 m!6464904))

(declare-fun m!6464906 () Bool)

(assert (=> bm!391694 m!6464906))

(declare-fun m!6464908 () Bool)

(assert (=> bm!391644 m!6464908))

(declare-fun m!6464910 () Bool)

(assert (=> bm!391717 m!6464910))

(declare-fun m!6464912 () Bool)

(assert (=> bm!391650 m!6464912))

(declare-fun m!6464914 () Bool)

(assert (=> bm!391599 m!6464914))

(declare-fun m!6464916 () Bool)

(assert (=> bm!391613 m!6464916))

(declare-fun m!6464918 () Bool)

(assert (=> bm!391541 m!6464918))

(declare-fun m!6464920 () Bool)

(assert (=> setNonEmpty!35635 m!6464920))

(declare-fun m!6464922 () Bool)

(assert (=> bm!391635 m!6464922))

(declare-fun m!6464924 () Bool)

(assert (=> b!5445316 m!6464924))

(declare-fun m!6464926 () Bool)

(assert (=> bm!391524 m!6464926))

(declare-fun m!6464928 () Bool)

(assert (=> bm!391685 m!6464928))

(declare-fun m!6464930 () Bool)

(assert (=> bm!391528 m!6464930))

(declare-fun m!6464932 () Bool)

(assert (=> b!5445288 m!6464932))

(declare-fun m!6464934 () Bool)

(assert (=> b!5445288 m!6464934))

(declare-fun m!6464936 () Bool)

(assert (=> b!5445288 m!6464936))

(declare-fun m!6464938 () Bool)

(assert (=> bm!391705 m!6464938))

(declare-fun m!6464940 () Bool)

(assert (=> b!5445319 m!6464940))

(declare-fun m!6464942 () Bool)

(assert (=> b!5445319 m!6464942))

(declare-fun m!6464944 () Bool)

(assert (=> b!5445319 m!6464944))

(declare-fun m!6464946 () Bool)

(assert (=> b!5445319 m!6464946))

(declare-fun m!6464948 () Bool)

(assert (=> b!5445319 m!6464948))

(declare-fun m!6464950 () Bool)

(assert (=> bm!391659 m!6464950))

(declare-fun m!6464952 () Bool)

(assert (=> bm!391722 m!6464952))

(declare-fun m!6464954 () Bool)

(assert (=> bm!391546 m!6464954))

(declare-fun m!6464956 () Bool)

(assert (=> b!5445301 m!6464956))

(declare-fun m!6464958 () Bool)

(assert (=> bm!391550 m!6464958))

(assert (=> b!5445306 m!6464882))

(declare-fun m!6464960 () Bool)

(assert (=> bm!391580 m!6464960))

(declare-fun m!6464962 () Bool)

(assert (=> bm!391655 m!6464962))

(assert (=> b!5445339 m!6464882))

(declare-fun m!6464964 () Bool)

(assert (=> bm!391527 m!6464964))

(declare-fun m!6464966 () Bool)

(assert (=> b!5445308 m!6464966))

(declare-fun m!6464968 () Bool)

(assert (=> bm!391672 m!6464968))

(declare-fun m!6464970 () Bool)

(assert (=> bm!391552 m!6464970))

(declare-fun m!6464972 () Bool)

(assert (=> b!5445296 m!6464972))

(declare-fun m!6464974 () Bool)

(assert (=> b!5445296 m!6464974))

(declare-fun m!6464976 () Bool)

(assert (=> b!5445296 m!6464976))

(declare-fun m!6464978 () Bool)

(assert (=> b!5445296 m!6464978))

(declare-fun m!6464980 () Bool)

(assert (=> b!5445296 m!6464980))

(assert (=> b!5445296 m!6464918))

(declare-fun m!6464982 () Bool)

(assert (=> b!5445296 m!6464982))

(assert (=> b!5445336 m!6464882))

(declare-fun m!6464984 () Bool)

(assert (=> bm!391606 m!6464984))

(declare-fun m!6464986 () Bool)

(assert (=> bm!391575 m!6464986))

(declare-fun m!6464988 () Bool)

(assert (=> bm!391657 m!6464988))

(declare-fun m!6464990 () Bool)

(assert (=> bm!391698 m!6464990))

(declare-fun m!6464992 () Bool)

(assert (=> b!5445315 m!6464992))

(declare-fun m!6464994 () Bool)

(assert (=> bm!391691 m!6464994))

(declare-fun m!6464996 () Bool)

(assert (=> bm!391522 m!6464996))

(declare-fun m!6464998 () Bool)

(assert (=> bm!391577 m!6464998))

(declare-fun m!6465000 () Bool)

(assert (=> bm!391665 m!6465000))

(declare-fun m!6465002 () Bool)

(assert (=> bm!391701 m!6465002))

(declare-fun m!6465004 () Bool)

(assert (=> bm!391554 m!6465004))

(declare-fun m!6465006 () Bool)

(assert (=> bm!391608 m!6465006))

(declare-fun m!6465008 () Bool)

(assert (=> bm!391648 m!6465008))

(declare-fun m!6465010 () Bool)

(assert (=> b!5445312 m!6465010))

(declare-fun m!6465012 () Bool)

(assert (=> b!5445312 m!6465012))

(declare-fun m!6465014 () Bool)

(assert (=> b!5445312 m!6465014))

(declare-fun m!6465016 () Bool)

(assert (=> b!5445312 m!6465016))

(declare-fun m!6465018 () Bool)

(assert (=> b!5445312 m!6465018))

(declare-fun m!6465020 () Bool)

(assert (=> b!5445312 m!6465020))

(declare-fun m!6465022 () Bool)

(assert (=> b!5445312 m!6465022))

(declare-fun m!6465024 () Bool)

(assert (=> bm!391532 m!6465024))

(declare-fun m!6465026 () Bool)

(assert (=> bm!391689 m!6465026))

(declare-fun m!6465028 () Bool)

(assert (=> bm!391603 m!6465028))

(declare-fun m!6465030 () Bool)

(assert (=> b!5445338 m!6465030))

(declare-fun m!6465032 () Bool)

(assert (=> bm!391598 m!6465032))

(declare-fun m!6465034 () Bool)

(assert (=> bm!391666 m!6465034))

(declare-fun m!6465036 () Bool)

(assert (=> bm!391626 m!6465036))

(declare-fun m!6465038 () Bool)

(assert (=> b!5445313 m!6465038))

(declare-fun m!6465040 () Bool)

(assert (=> b!5445313 m!6465040))

(declare-fun m!6465042 () Bool)

(assert (=> b!5445313 m!6465042))

(declare-fun m!6465044 () Bool)

(assert (=> b!5445313 m!6465044))

(declare-fun m!6465046 () Bool)

(assert (=> b!5445313 m!6465046))

(assert (=> b!5445313 m!6465042))

(assert (=> b!5445313 m!6465038))

(declare-fun m!6465048 () Bool)

(assert (=> b!5445313 m!6465048))

(declare-fun m!6465050 () Bool)

(assert (=> bm!391535 m!6465050))

(declare-fun m!6465052 () Bool)

(assert (=> bm!391614 m!6465052))

(declare-fun m!6465054 () Bool)

(assert (=> bm!391721 m!6465054))

(declare-fun m!6465056 () Bool)

(assert (=> bm!391548 m!6465056))

(declare-fun m!6465058 () Bool)

(assert (=> start!570874 m!6465058))

(declare-fun m!6465060 () Bool)

(assert (=> bm!391627 m!6465060))

(declare-fun m!6465062 () Bool)

(assert (=> bm!391618 m!6465062))

(declare-fun m!6465064 () Bool)

(assert (=> bm!391681 m!6465064))

(declare-fun m!6465066 () Bool)

(assert (=> bm!391564 m!6465066))

(assert (=> bm!391556 m!6464960))

(declare-fun m!6465068 () Bool)

(assert (=> bm!391640 m!6465068))

(declare-fun m!6465070 () Bool)

(assert (=> b!5445334 m!6465070))

(assert (=> b!5445334 m!6465070))

(declare-fun m!6465072 () Bool)

(assert (=> b!5445334 m!6465072))

(declare-fun m!6465074 () Bool)

(assert (=> bm!391688 m!6465074))

(declare-fun m!6465076 () Bool)

(assert (=> bm!391551 m!6465076))

(declare-fun m!6465078 () Bool)

(assert (=> bm!391539 m!6465078))

(check-sat (not setNonEmpty!35635) (not b!5445289) (not bm!391532) (not bm!391717) (not bm!391524) (not bm!391655) (not bm!391527) (not bm!391672) (not bm!391698) (not b!5445338) (not bm!391603) (not bm!391722) (not bm!391659) (not bm!391581) (not bm!391580) (not b!5445321) (not bm!391688) (not b!5445313) (not bm!391535) (not b!5445325) (not bm!391538) (not bm!391546) (not bm!391667) (not bm!391571) (not bm!391634) (not bm!391525) (not bm!391613) (not bm!391650) (not bm!391718) (not b!5445329) (not b!5445319) (not b!5445334) (not bm!391563) (not b!5445293) (not b!5445303) (not bm!391635) (not b!5445315) (not start!570874) (not b!5445316) (not b!5445288) (not bm!391644) (not bm!391648) (not bm!391674) (not bm!391599) (not bm!391556) (not b!5445312) (not bm!391701) (not bm!391696) (not bm!391550) (not bm!391627) (not bm!391697) (not bm!391539) (not bm!391534) (not bm!391618) (not bm!391568) (not bm!391548) (not bm!391572) (not b!5445331) tp_is_empty!39803 (not bm!391609) (not bm!391554) (not b!5445281) (not b!5445283) (not b!5445340) (not b!5445296) (not bm!391703) (not bm!391564) (not bm!391690) (not b!5445327) (not bm!391598) (not bm!391681) (not b!5445328) (not bm!391528) (not bm!391721) (not bm!391575) (not bm!391608) (not bm!391617) (not bm!391657) (not bm!391626) (not bm!391694) (not bm!391577) (not bm!391689) (not bm!391552) (not bm!391551) (not bm!391705) (not bm!391606) (not b!5445308) (not bm!391573) (not bm!391522) (not bm!391711) (not bm!391640) (not bm!391614) (not bm!391665) (not bm!391691) (not bm!391541) (not bm!391666) (not bm!391597) (not b!5445333) (not bm!391685))
(check-sat)
