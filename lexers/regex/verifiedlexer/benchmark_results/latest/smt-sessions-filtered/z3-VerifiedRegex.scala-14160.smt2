; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743330 () Bool)

(assert start!743330)

(declare-fun b!7854048 () Bool)

(declare-fun e!4642290 () Bool)

(declare-fun tp!2326566 () Bool)

(declare-fun tp!2326571 () Bool)

(assert (=> b!7854048 (= e!4642290 (and tp!2326566 tp!2326571))))

(declare-fun res!3122850 () Bool)

(declare-fun e!4642287 () Bool)

(assert (=> start!743330 (=> (not res!3122850) (not e!4642287))))

(declare-datatypes ((C!42512 0))(
  ( (C!42513 (val!31718 Int)) )
))
(declare-datatypes ((Regex!21093 0))(
  ( (ElementMatch!21093 (c!1443469 C!42512)) (Concat!29938 (regOne!42698 Regex!21093) (regTwo!42698 Regex!21093)) (EmptyExpr!21093) (Star!21093 (reg!21422 Regex!21093)) (EmptyLang!21093) (Union!21093 (regOne!42699 Regex!21093) (regTwo!42699 Regex!21093)) )
))
(declare-fun r1!6227 () Regex!21093)

(declare-fun validRegex!11503 (Regex!21093) Bool)

(assert (=> start!743330 (= res!3122850 (validRegex!11503 r1!6227))))

(assert (=> start!743330 e!4642287))

(declare-fun e!4642291 () Bool)

(assert (=> start!743330 e!4642291))

(assert (=> start!743330 e!4642290))

(declare-fun e!4642289 () Bool)

(assert (=> start!743330 e!4642289))

(declare-fun e!4642288 () Bool)

(assert (=> start!743330 e!4642288))

(declare-fun b!7854049 () Bool)

(declare-fun res!3122848 () Bool)

(assert (=> b!7854049 (=> (not res!3122848) (not e!4642287))))

(declare-fun r2!6165 () Regex!21093)

(declare-datatypes ((List!73952 0))(
  ( (Nil!73828) (Cons!73828 (h!80276 C!42512) (t!388687 List!73952)) )
))
(declare-fun s2!3706 () List!73952)

(declare-fun matchR!10529 (Regex!21093 List!73952) Bool)

(assert (=> b!7854049 (= res!3122848 (matchR!10529 r2!6165 s2!3706))))

(declare-fun b!7854050 () Bool)

(declare-fun tp!2326567 () Bool)

(declare-fun tp!2326568 () Bool)

(assert (=> b!7854050 (= e!4642291 (and tp!2326567 tp!2326568))))

(declare-fun b!7854051 () Bool)

(declare-fun res!3122852 () Bool)

(declare-fun e!4642286 () Bool)

(assert (=> b!7854051 (=> (not res!3122852) (not e!4642286))))

(declare-fun lt!2679829 () Regex!21093)

(declare-fun s1!4084 () List!73952)

(assert (=> b!7854051 (= res!3122852 (matchR!10529 lt!2679829 (t!388687 s1!4084)))))

(declare-fun b!7854052 () Bool)

(declare-fun tp_is_empty!52585 () Bool)

(assert (=> b!7854052 (= e!4642291 tp_is_empty!52585)))

(declare-fun b!7854053 () Bool)

(assert (=> b!7854053 (= e!4642287 e!4642286)))

(declare-fun res!3122854 () Bool)

(assert (=> b!7854053 (=> (not res!3122854) (not e!4642286))))

(assert (=> b!7854053 (= res!3122854 (validRegex!11503 lt!2679829))))

(declare-fun derivativeStep!6328 (Regex!21093 C!42512) Regex!21093)

(assert (=> b!7854053 (= lt!2679829 (derivativeStep!6328 r1!6227 (h!80276 s1!4084)))))

(declare-fun b!7854054 () Bool)

(declare-fun tp!2326562 () Bool)

(assert (=> b!7854054 (= e!4642291 tp!2326562)))

(declare-fun b!7854055 () Bool)

(declare-fun res!3122851 () Bool)

(assert (=> b!7854055 (=> (not res!3122851) (not e!4642287))))

(assert (=> b!7854055 (= res!3122851 (matchR!10529 r1!6227 s1!4084))))

(declare-fun b!7854056 () Bool)

(declare-fun res!3122849 () Bool)

(assert (=> b!7854056 (=> (not res!3122849) (not e!4642287))))

(get-info :version)

(assert (=> b!7854056 (= res!3122849 ((_ is Cons!73828) s1!4084))))

(declare-fun b!7854057 () Bool)

(declare-fun tp!2326563 () Bool)

(declare-fun tp!2326565 () Bool)

(assert (=> b!7854057 (= e!4642291 (and tp!2326563 tp!2326565))))

(declare-fun b!7854058 () Bool)

(declare-fun tp!2326564 () Bool)

(assert (=> b!7854058 (= e!4642288 (and tp_is_empty!52585 tp!2326564))))

(declare-fun b!7854059 () Bool)

(declare-fun tp!2326570 () Bool)

(assert (=> b!7854059 (= e!4642290 tp!2326570)))

(declare-fun b!7854060 () Bool)

(declare-fun res!3122853 () Bool)

(assert (=> b!7854060 (=> (not res!3122853) (not e!4642287))))

(assert (=> b!7854060 (= res!3122853 (validRegex!11503 r2!6165))))

(declare-fun b!7854061 () Bool)

(declare-fun ListPrimitiveSize!466 (List!73952) Int)

(assert (=> b!7854061 (= e!4642286 (>= (ListPrimitiveSize!466 (t!388687 s1!4084)) (ListPrimitiveSize!466 s1!4084)))))

(declare-fun b!7854062 () Bool)

(declare-fun tp!2326569 () Bool)

(declare-fun tp!2326561 () Bool)

(assert (=> b!7854062 (= e!4642290 (and tp!2326569 tp!2326561))))

(declare-fun b!7854063 () Bool)

(assert (=> b!7854063 (= e!4642290 tp_is_empty!52585)))

(declare-fun b!7854064 () Bool)

(declare-fun tp!2326572 () Bool)

(assert (=> b!7854064 (= e!4642289 (and tp_is_empty!52585 tp!2326572))))

(assert (= (and start!743330 res!3122850) b!7854060))

(assert (= (and b!7854060 res!3122853) b!7854055))

(assert (= (and b!7854055 res!3122851) b!7854049))

(assert (= (and b!7854049 res!3122848) b!7854056))

(assert (= (and b!7854056 res!3122849) b!7854053))

(assert (= (and b!7854053 res!3122854) b!7854051))

(assert (= (and b!7854051 res!3122852) b!7854061))

(assert (= (and start!743330 ((_ is ElementMatch!21093) r1!6227)) b!7854052))

(assert (= (and start!743330 ((_ is Concat!29938) r1!6227)) b!7854057))

(assert (= (and start!743330 ((_ is Star!21093) r1!6227)) b!7854054))

(assert (= (and start!743330 ((_ is Union!21093) r1!6227)) b!7854050))

(assert (= (and start!743330 ((_ is ElementMatch!21093) r2!6165)) b!7854063))

(assert (= (and start!743330 ((_ is Concat!29938) r2!6165)) b!7854048))

(assert (= (and start!743330 ((_ is Star!21093) r2!6165)) b!7854059))

(assert (= (and start!743330 ((_ is Union!21093) r2!6165)) b!7854062))

(assert (= (and start!743330 ((_ is Cons!73828) s1!4084)) b!7854064))

(assert (= (and start!743330 ((_ is Cons!73828) s2!3706)) b!7854058))

(declare-fun m!8259422 () Bool)

(assert (=> b!7854055 m!8259422))

(declare-fun m!8259424 () Bool)

(assert (=> b!7854061 m!8259424))

(declare-fun m!8259426 () Bool)

(assert (=> b!7854061 m!8259426))

(declare-fun m!8259428 () Bool)

(assert (=> b!7854051 m!8259428))

(declare-fun m!8259430 () Bool)

(assert (=> b!7854053 m!8259430))

(declare-fun m!8259432 () Bool)

(assert (=> b!7854053 m!8259432))

(declare-fun m!8259434 () Bool)

(assert (=> b!7854049 m!8259434))

(declare-fun m!8259436 () Bool)

(assert (=> b!7854060 m!8259436))

(declare-fun m!8259438 () Bool)

(assert (=> start!743330 m!8259438))

(check-sat (not b!7854057) (not b!7854062) (not b!7854049) (not b!7854048) (not b!7854054) (not start!743330) (not b!7854050) tp_is_empty!52585 (not b!7854058) (not b!7854060) (not b!7854051) (not b!7854059) (not b!7854055) (not b!7854061) (not b!7854053) (not b!7854064))
(check-sat)
(get-model)

(declare-fun b!7854129 () Bool)

(declare-fun res!3122893 () Bool)

(declare-fun e!4642339 () Bool)

(assert (=> b!7854129 (=> res!3122893 e!4642339)))

(assert (=> b!7854129 (= res!3122893 (not ((_ is ElementMatch!21093) r1!6227)))))

(declare-fun e!4642338 () Bool)

(assert (=> b!7854129 (= e!4642338 e!4642339)))

(declare-fun b!7854130 () Bool)

(declare-fun lt!2679832 () Bool)

(assert (=> b!7854130 (= e!4642338 (not lt!2679832))))

(declare-fun b!7854131 () Bool)

(declare-fun e!4642335 () Bool)

(declare-fun nullable!9365 (Regex!21093) Bool)

(assert (=> b!7854131 (= e!4642335 (nullable!9365 r1!6227))))

(declare-fun b!7854132 () Bool)

(declare-fun e!4642334 () Bool)

(declare-fun call!727989 () Bool)

(assert (=> b!7854132 (= e!4642334 (= lt!2679832 call!727989))))

(declare-fun b!7854133 () Bool)

(declare-fun res!3122898 () Bool)

(assert (=> b!7854133 (=> res!3122898 e!4642339)))

(declare-fun e!4642340 () Bool)

(assert (=> b!7854133 (= res!3122898 e!4642340)))

(declare-fun res!3122892 () Bool)

(assert (=> b!7854133 (=> (not res!3122892) (not e!4642340))))

(assert (=> b!7854133 (= res!3122892 lt!2679832)))

(declare-fun d!2353671 () Bool)

(assert (=> d!2353671 e!4642334))

(declare-fun c!1443484 () Bool)

(assert (=> d!2353671 (= c!1443484 ((_ is EmptyExpr!21093) r1!6227))))

(assert (=> d!2353671 (= lt!2679832 e!4642335)))

(declare-fun c!1443485 () Bool)

(declare-fun isEmpty!42338 (List!73952) Bool)

(assert (=> d!2353671 (= c!1443485 (isEmpty!42338 s1!4084))))

(assert (=> d!2353671 (validRegex!11503 r1!6227)))

(assert (=> d!2353671 (= (matchR!10529 r1!6227 s1!4084) lt!2679832)))

(declare-fun b!7854134 () Bool)

(declare-fun head!16049 (List!73952) C!42512)

(declare-fun tail!15592 (List!73952) List!73952)

(assert (=> b!7854134 (= e!4642335 (matchR!10529 (derivativeStep!6328 r1!6227 (head!16049 s1!4084)) (tail!15592 s1!4084)))))

(declare-fun b!7854135 () Bool)

(declare-fun res!3122894 () Bool)

(declare-fun e!4642336 () Bool)

(assert (=> b!7854135 (=> res!3122894 e!4642336)))

(assert (=> b!7854135 (= res!3122894 (not (isEmpty!42338 (tail!15592 s1!4084))))))

(declare-fun b!7854136 () Bool)

(assert (=> b!7854136 (= e!4642340 (= (head!16049 s1!4084) (c!1443469 r1!6227)))))

(declare-fun b!7854137 () Bool)

(assert (=> b!7854137 (= e!4642334 e!4642338)))

(declare-fun c!1443486 () Bool)

(assert (=> b!7854137 (= c!1443486 ((_ is EmptyLang!21093) r1!6227))))

(declare-fun b!7854138 () Bool)

(assert (=> b!7854138 (= e!4642336 (not (= (head!16049 s1!4084) (c!1443469 r1!6227))))))

(declare-fun b!7854139 () Bool)

(declare-fun res!3122896 () Bool)

(assert (=> b!7854139 (=> (not res!3122896) (not e!4642340))))

(assert (=> b!7854139 (= res!3122896 (not call!727989))))

(declare-fun b!7854140 () Bool)

(declare-fun e!4642337 () Bool)

(assert (=> b!7854140 (= e!4642337 e!4642336)))

(declare-fun res!3122891 () Bool)

(assert (=> b!7854140 (=> res!3122891 e!4642336)))

(assert (=> b!7854140 (= res!3122891 call!727989)))

(declare-fun b!7854141 () Bool)

(assert (=> b!7854141 (= e!4642339 e!4642337)))

(declare-fun res!3122897 () Bool)

(assert (=> b!7854141 (=> (not res!3122897) (not e!4642337))))

(assert (=> b!7854141 (= res!3122897 (not lt!2679832))))

(declare-fun b!7854142 () Bool)

(declare-fun res!3122895 () Bool)

(assert (=> b!7854142 (=> (not res!3122895) (not e!4642340))))

(assert (=> b!7854142 (= res!3122895 (isEmpty!42338 (tail!15592 s1!4084)))))

(declare-fun bm!727984 () Bool)

(assert (=> bm!727984 (= call!727989 (isEmpty!42338 s1!4084))))

(assert (= (and d!2353671 c!1443485) b!7854131))

(assert (= (and d!2353671 (not c!1443485)) b!7854134))

(assert (= (and d!2353671 c!1443484) b!7854132))

(assert (= (and d!2353671 (not c!1443484)) b!7854137))

(assert (= (and b!7854137 c!1443486) b!7854130))

(assert (= (and b!7854137 (not c!1443486)) b!7854129))

(assert (= (and b!7854129 (not res!3122893)) b!7854133))

(assert (= (and b!7854133 res!3122892) b!7854139))

(assert (= (and b!7854139 res!3122896) b!7854142))

(assert (= (and b!7854142 res!3122895) b!7854136))

(assert (= (and b!7854133 (not res!3122898)) b!7854141))

(assert (= (and b!7854141 res!3122897) b!7854140))

(assert (= (and b!7854140 (not res!3122891)) b!7854135))

(assert (= (and b!7854135 (not res!3122894)) b!7854138))

(assert (= (or b!7854132 b!7854139 b!7854140) bm!727984))

(declare-fun m!8259452 () Bool)

(assert (=> d!2353671 m!8259452))

(assert (=> d!2353671 m!8259438))

(declare-fun m!8259454 () Bool)

(assert (=> b!7854135 m!8259454))

(assert (=> b!7854135 m!8259454))

(declare-fun m!8259456 () Bool)

(assert (=> b!7854135 m!8259456))

(assert (=> bm!727984 m!8259452))

(assert (=> b!7854142 m!8259454))

(assert (=> b!7854142 m!8259454))

(assert (=> b!7854142 m!8259456))

(declare-fun m!8259458 () Bool)

(assert (=> b!7854134 m!8259458))

(assert (=> b!7854134 m!8259458))

(declare-fun m!8259460 () Bool)

(assert (=> b!7854134 m!8259460))

(assert (=> b!7854134 m!8259454))

(assert (=> b!7854134 m!8259460))

(assert (=> b!7854134 m!8259454))

(declare-fun m!8259462 () Bool)

(assert (=> b!7854134 m!8259462))

(declare-fun m!8259464 () Bool)

(assert (=> b!7854131 m!8259464))

(assert (=> b!7854138 m!8259458))

(assert (=> b!7854136 m!8259458))

(assert (=> b!7854055 d!2353671))

(declare-fun c!1443507 () Bool)

(declare-fun call!728008 () Bool)

(declare-fun bm!728003 () Bool)

(declare-fun c!1443506 () Bool)

(assert (=> bm!728003 (= call!728008 (validRegex!11503 (ite c!1443507 (reg!21422 r1!6227) (ite c!1443506 (regTwo!42699 r1!6227) (regOne!42698 r1!6227)))))))

(declare-fun d!2353677 () Bool)

(declare-fun res!3122913 () Bool)

(declare-fun e!4642370 () Bool)

(assert (=> d!2353677 (=> res!3122913 e!4642370)))

(assert (=> d!2353677 (= res!3122913 ((_ is ElementMatch!21093) r1!6227))))

(assert (=> d!2353677 (= (validRegex!11503 r1!6227) e!4642370)))

(declare-fun b!7854191 () Bool)

(declare-fun e!4642372 () Bool)

(declare-fun e!4642376 () Bool)

(assert (=> b!7854191 (= e!4642372 e!4642376)))

(assert (=> b!7854191 (= c!1443506 ((_ is Union!21093) r1!6227))))

(declare-fun b!7854192 () Bool)

(declare-fun e!4642373 () Bool)

(assert (=> b!7854192 (= e!4642372 e!4642373)))

(declare-fun res!3122910 () Bool)

(assert (=> b!7854192 (= res!3122910 (not (nullable!9365 (reg!21422 r1!6227))))))

(assert (=> b!7854192 (=> (not res!3122910) (not e!4642373))))

(declare-fun b!7854193 () Bool)

(declare-fun res!3122909 () Bool)

(declare-fun e!4642371 () Bool)

(assert (=> b!7854193 (=> (not res!3122909) (not e!4642371))))

(declare-fun call!728009 () Bool)

(assert (=> b!7854193 (= res!3122909 call!728009)))

(assert (=> b!7854193 (= e!4642376 e!4642371)))

(declare-fun b!7854194 () Bool)

(assert (=> b!7854194 (= e!4642373 call!728008)))

(declare-fun b!7854195 () Bool)

(declare-fun call!728010 () Bool)

(assert (=> b!7854195 (= e!4642371 call!728010)))

(declare-fun bm!728004 () Bool)

(assert (=> bm!728004 (= call!728010 call!728008)))

(declare-fun bm!728005 () Bool)

(assert (=> bm!728005 (= call!728009 (validRegex!11503 (ite c!1443506 (regOne!42699 r1!6227) (regTwo!42698 r1!6227))))))

(declare-fun b!7854196 () Bool)

(assert (=> b!7854196 (= e!4642370 e!4642372)))

(assert (=> b!7854196 (= c!1443507 ((_ is Star!21093) r1!6227))))

(declare-fun b!7854197 () Bool)

(declare-fun e!4642375 () Bool)

(declare-fun e!4642374 () Bool)

(assert (=> b!7854197 (= e!4642375 e!4642374)))

(declare-fun res!3122911 () Bool)

(assert (=> b!7854197 (=> (not res!3122911) (not e!4642374))))

(assert (=> b!7854197 (= res!3122911 call!728010)))

(declare-fun b!7854198 () Bool)

(assert (=> b!7854198 (= e!4642374 call!728009)))

(declare-fun b!7854199 () Bool)

(declare-fun res!3122912 () Bool)

(assert (=> b!7854199 (=> res!3122912 e!4642375)))

(assert (=> b!7854199 (= res!3122912 (not ((_ is Concat!29938) r1!6227)))))

(assert (=> b!7854199 (= e!4642376 e!4642375)))

(assert (= (and d!2353677 (not res!3122913)) b!7854196))

(assert (= (and b!7854196 c!1443507) b!7854192))

(assert (= (and b!7854196 (not c!1443507)) b!7854191))

(assert (= (and b!7854192 res!3122910) b!7854194))

(assert (= (and b!7854191 c!1443506) b!7854193))

(assert (= (and b!7854191 (not c!1443506)) b!7854199))

(assert (= (and b!7854193 res!3122909) b!7854195))

(assert (= (and b!7854199 (not res!3122912)) b!7854197))

(assert (= (and b!7854197 res!3122911) b!7854198))

(assert (= (or b!7854193 b!7854198) bm!728005))

(assert (= (or b!7854195 b!7854197) bm!728004))

(assert (= (or b!7854194 bm!728004) bm!728003))

(declare-fun m!8259474 () Bool)

(assert (=> bm!728003 m!8259474))

(declare-fun m!8259476 () Bool)

(assert (=> b!7854192 m!8259476))

(declare-fun m!8259478 () Bool)

(assert (=> bm!728005 m!8259478))

(assert (=> start!743330 d!2353677))

(declare-fun d!2353681 () Bool)

(declare-fun lt!2679838 () Int)

(assert (=> d!2353681 (>= lt!2679838 0)))

(declare-fun e!4642379 () Int)

(assert (=> d!2353681 (= lt!2679838 e!4642379)))

(declare-fun c!1443510 () Bool)

(assert (=> d!2353681 (= c!1443510 ((_ is Nil!73828) (t!388687 s1!4084)))))

(assert (=> d!2353681 (= (ListPrimitiveSize!466 (t!388687 s1!4084)) lt!2679838)))

(declare-fun b!7854204 () Bool)

(assert (=> b!7854204 (= e!4642379 0)))

(declare-fun b!7854205 () Bool)

(assert (=> b!7854205 (= e!4642379 (+ 1 (ListPrimitiveSize!466 (t!388687 (t!388687 s1!4084)))))))

(assert (= (and d!2353681 c!1443510) b!7854204))

(assert (= (and d!2353681 (not c!1443510)) b!7854205))

(declare-fun m!8259480 () Bool)

(assert (=> b!7854205 m!8259480))

(assert (=> b!7854061 d!2353681))

(declare-fun d!2353683 () Bool)

(declare-fun lt!2679839 () Int)

(assert (=> d!2353683 (>= lt!2679839 0)))

(declare-fun e!4642380 () Int)

(assert (=> d!2353683 (= lt!2679839 e!4642380)))

(declare-fun c!1443511 () Bool)

(assert (=> d!2353683 (= c!1443511 ((_ is Nil!73828) s1!4084))))

(assert (=> d!2353683 (= (ListPrimitiveSize!466 s1!4084) lt!2679839)))

(declare-fun b!7854206 () Bool)

(assert (=> b!7854206 (= e!4642380 0)))

(declare-fun b!7854207 () Bool)

(assert (=> b!7854207 (= e!4642380 (+ 1 (ListPrimitiveSize!466 (t!388687 s1!4084))))))

(assert (= (and d!2353683 c!1443511) b!7854206))

(assert (= (and d!2353683 (not c!1443511)) b!7854207))

(assert (=> b!7854207 m!8259424))

(assert (=> b!7854061 d!2353683))

(declare-fun b!7854208 () Bool)

(declare-fun res!3122916 () Bool)

(declare-fun e!4642386 () Bool)

(assert (=> b!7854208 (=> res!3122916 e!4642386)))

(assert (=> b!7854208 (= res!3122916 (not ((_ is ElementMatch!21093) r2!6165)))))

(declare-fun e!4642385 () Bool)

(assert (=> b!7854208 (= e!4642385 e!4642386)))

(declare-fun b!7854209 () Bool)

(declare-fun lt!2679840 () Bool)

(assert (=> b!7854209 (= e!4642385 (not lt!2679840))))

(declare-fun b!7854210 () Bool)

(declare-fun e!4642382 () Bool)

(assert (=> b!7854210 (= e!4642382 (nullable!9365 r2!6165))))

(declare-fun b!7854211 () Bool)

(declare-fun e!4642381 () Bool)

(declare-fun call!728011 () Bool)

(assert (=> b!7854211 (= e!4642381 (= lt!2679840 call!728011))))

(declare-fun b!7854212 () Bool)

(declare-fun res!3122921 () Bool)

(assert (=> b!7854212 (=> res!3122921 e!4642386)))

(declare-fun e!4642387 () Bool)

(assert (=> b!7854212 (= res!3122921 e!4642387)))

(declare-fun res!3122915 () Bool)

(assert (=> b!7854212 (=> (not res!3122915) (not e!4642387))))

(assert (=> b!7854212 (= res!3122915 lt!2679840)))

(declare-fun d!2353685 () Bool)

(assert (=> d!2353685 e!4642381))

(declare-fun c!1443512 () Bool)

(assert (=> d!2353685 (= c!1443512 ((_ is EmptyExpr!21093) r2!6165))))

(assert (=> d!2353685 (= lt!2679840 e!4642382)))

(declare-fun c!1443513 () Bool)

(assert (=> d!2353685 (= c!1443513 (isEmpty!42338 s2!3706))))

(assert (=> d!2353685 (validRegex!11503 r2!6165)))

(assert (=> d!2353685 (= (matchR!10529 r2!6165 s2!3706) lt!2679840)))

(declare-fun b!7854213 () Bool)

(assert (=> b!7854213 (= e!4642382 (matchR!10529 (derivativeStep!6328 r2!6165 (head!16049 s2!3706)) (tail!15592 s2!3706)))))

(declare-fun b!7854214 () Bool)

(declare-fun res!3122917 () Bool)

(declare-fun e!4642383 () Bool)

(assert (=> b!7854214 (=> res!3122917 e!4642383)))

(assert (=> b!7854214 (= res!3122917 (not (isEmpty!42338 (tail!15592 s2!3706))))))

(declare-fun b!7854215 () Bool)

(assert (=> b!7854215 (= e!4642387 (= (head!16049 s2!3706) (c!1443469 r2!6165)))))

(declare-fun b!7854216 () Bool)

(assert (=> b!7854216 (= e!4642381 e!4642385)))

(declare-fun c!1443514 () Bool)

(assert (=> b!7854216 (= c!1443514 ((_ is EmptyLang!21093) r2!6165))))

(declare-fun b!7854217 () Bool)

(assert (=> b!7854217 (= e!4642383 (not (= (head!16049 s2!3706) (c!1443469 r2!6165))))))

(declare-fun b!7854218 () Bool)

(declare-fun res!3122919 () Bool)

(assert (=> b!7854218 (=> (not res!3122919) (not e!4642387))))

(assert (=> b!7854218 (= res!3122919 (not call!728011))))

(declare-fun b!7854219 () Bool)

(declare-fun e!4642384 () Bool)

(assert (=> b!7854219 (= e!4642384 e!4642383)))

(declare-fun res!3122914 () Bool)

(assert (=> b!7854219 (=> res!3122914 e!4642383)))

(assert (=> b!7854219 (= res!3122914 call!728011)))

(declare-fun b!7854220 () Bool)

(assert (=> b!7854220 (= e!4642386 e!4642384)))

(declare-fun res!3122920 () Bool)

(assert (=> b!7854220 (=> (not res!3122920) (not e!4642384))))

(assert (=> b!7854220 (= res!3122920 (not lt!2679840))))

(declare-fun b!7854221 () Bool)

(declare-fun res!3122918 () Bool)

(assert (=> b!7854221 (=> (not res!3122918) (not e!4642387))))

(assert (=> b!7854221 (= res!3122918 (isEmpty!42338 (tail!15592 s2!3706)))))

(declare-fun bm!728006 () Bool)

(assert (=> bm!728006 (= call!728011 (isEmpty!42338 s2!3706))))

(assert (= (and d!2353685 c!1443513) b!7854210))

(assert (= (and d!2353685 (not c!1443513)) b!7854213))

(assert (= (and d!2353685 c!1443512) b!7854211))

(assert (= (and d!2353685 (not c!1443512)) b!7854216))

(assert (= (and b!7854216 c!1443514) b!7854209))

(assert (= (and b!7854216 (not c!1443514)) b!7854208))

(assert (= (and b!7854208 (not res!3122916)) b!7854212))

(assert (= (and b!7854212 res!3122915) b!7854218))

(assert (= (and b!7854218 res!3122919) b!7854221))

(assert (= (and b!7854221 res!3122918) b!7854215))

(assert (= (and b!7854212 (not res!3122921)) b!7854220))

(assert (= (and b!7854220 res!3122920) b!7854219))

(assert (= (and b!7854219 (not res!3122914)) b!7854214))

(assert (= (and b!7854214 (not res!3122917)) b!7854217))

(assert (= (or b!7854211 b!7854218 b!7854219) bm!728006))

(declare-fun m!8259482 () Bool)

(assert (=> d!2353685 m!8259482))

(assert (=> d!2353685 m!8259436))

(declare-fun m!8259484 () Bool)

(assert (=> b!7854214 m!8259484))

(assert (=> b!7854214 m!8259484))

(declare-fun m!8259486 () Bool)

(assert (=> b!7854214 m!8259486))

(assert (=> bm!728006 m!8259482))

(assert (=> b!7854221 m!8259484))

(assert (=> b!7854221 m!8259484))

(assert (=> b!7854221 m!8259486))

(declare-fun m!8259488 () Bool)

(assert (=> b!7854213 m!8259488))

(assert (=> b!7854213 m!8259488))

(declare-fun m!8259490 () Bool)

(assert (=> b!7854213 m!8259490))

(assert (=> b!7854213 m!8259484))

(assert (=> b!7854213 m!8259490))

(assert (=> b!7854213 m!8259484))

(declare-fun m!8259492 () Bool)

(assert (=> b!7854213 m!8259492))

(declare-fun m!8259494 () Bool)

(assert (=> b!7854210 m!8259494))

(assert (=> b!7854217 m!8259488))

(assert (=> b!7854215 m!8259488))

(assert (=> b!7854049 d!2353685))

(declare-fun bm!728007 () Bool)

(declare-fun call!728012 () Bool)

(declare-fun c!1443515 () Bool)

(declare-fun c!1443516 () Bool)

(assert (=> bm!728007 (= call!728012 (validRegex!11503 (ite c!1443516 (reg!21422 r2!6165) (ite c!1443515 (regTwo!42699 r2!6165) (regOne!42698 r2!6165)))))))

(declare-fun d!2353687 () Bool)

(declare-fun res!3122926 () Bool)

(declare-fun e!4642388 () Bool)

(assert (=> d!2353687 (=> res!3122926 e!4642388)))

(assert (=> d!2353687 (= res!3122926 ((_ is ElementMatch!21093) r2!6165))))

(assert (=> d!2353687 (= (validRegex!11503 r2!6165) e!4642388)))

(declare-fun b!7854222 () Bool)

(declare-fun e!4642390 () Bool)

(declare-fun e!4642394 () Bool)

(assert (=> b!7854222 (= e!4642390 e!4642394)))

(assert (=> b!7854222 (= c!1443515 ((_ is Union!21093) r2!6165))))

(declare-fun b!7854223 () Bool)

(declare-fun e!4642391 () Bool)

(assert (=> b!7854223 (= e!4642390 e!4642391)))

(declare-fun res!3122923 () Bool)

(assert (=> b!7854223 (= res!3122923 (not (nullable!9365 (reg!21422 r2!6165))))))

(assert (=> b!7854223 (=> (not res!3122923) (not e!4642391))))

(declare-fun b!7854224 () Bool)

(declare-fun res!3122922 () Bool)

(declare-fun e!4642389 () Bool)

(assert (=> b!7854224 (=> (not res!3122922) (not e!4642389))))

(declare-fun call!728013 () Bool)

(assert (=> b!7854224 (= res!3122922 call!728013)))

(assert (=> b!7854224 (= e!4642394 e!4642389)))

(declare-fun b!7854225 () Bool)

(assert (=> b!7854225 (= e!4642391 call!728012)))

(declare-fun b!7854226 () Bool)

(declare-fun call!728014 () Bool)

(assert (=> b!7854226 (= e!4642389 call!728014)))

(declare-fun bm!728008 () Bool)

(assert (=> bm!728008 (= call!728014 call!728012)))

(declare-fun bm!728009 () Bool)

(assert (=> bm!728009 (= call!728013 (validRegex!11503 (ite c!1443515 (regOne!42699 r2!6165) (regTwo!42698 r2!6165))))))

(declare-fun b!7854227 () Bool)

(assert (=> b!7854227 (= e!4642388 e!4642390)))

(assert (=> b!7854227 (= c!1443516 ((_ is Star!21093) r2!6165))))

(declare-fun b!7854228 () Bool)

(declare-fun e!4642393 () Bool)

(declare-fun e!4642392 () Bool)

(assert (=> b!7854228 (= e!4642393 e!4642392)))

(declare-fun res!3122924 () Bool)

(assert (=> b!7854228 (=> (not res!3122924) (not e!4642392))))

(assert (=> b!7854228 (= res!3122924 call!728014)))

(declare-fun b!7854229 () Bool)

(assert (=> b!7854229 (= e!4642392 call!728013)))

(declare-fun b!7854230 () Bool)

(declare-fun res!3122925 () Bool)

(assert (=> b!7854230 (=> res!3122925 e!4642393)))

(assert (=> b!7854230 (= res!3122925 (not ((_ is Concat!29938) r2!6165)))))

(assert (=> b!7854230 (= e!4642394 e!4642393)))

(assert (= (and d!2353687 (not res!3122926)) b!7854227))

(assert (= (and b!7854227 c!1443516) b!7854223))

(assert (= (and b!7854227 (not c!1443516)) b!7854222))

(assert (= (and b!7854223 res!3122923) b!7854225))

(assert (= (and b!7854222 c!1443515) b!7854224))

(assert (= (and b!7854222 (not c!1443515)) b!7854230))

(assert (= (and b!7854224 res!3122922) b!7854226))

(assert (= (and b!7854230 (not res!3122925)) b!7854228))

(assert (= (and b!7854228 res!3122924) b!7854229))

(assert (= (or b!7854224 b!7854229) bm!728009))

(assert (= (or b!7854226 b!7854228) bm!728008))

(assert (= (or b!7854225 bm!728008) bm!728007))

(declare-fun m!8259496 () Bool)

(assert (=> bm!728007 m!8259496))

(declare-fun m!8259498 () Bool)

(assert (=> b!7854223 m!8259498))

(declare-fun m!8259500 () Bool)

(assert (=> bm!728009 m!8259500))

(assert (=> b!7854060 d!2353687))

(declare-fun c!1443517 () Bool)

(declare-fun bm!728010 () Bool)

(declare-fun c!1443518 () Bool)

(declare-fun call!728015 () Bool)

(assert (=> bm!728010 (= call!728015 (validRegex!11503 (ite c!1443518 (reg!21422 lt!2679829) (ite c!1443517 (regTwo!42699 lt!2679829) (regOne!42698 lt!2679829)))))))

(declare-fun d!2353689 () Bool)

(declare-fun res!3122931 () Bool)

(declare-fun e!4642395 () Bool)

(assert (=> d!2353689 (=> res!3122931 e!4642395)))

(assert (=> d!2353689 (= res!3122931 ((_ is ElementMatch!21093) lt!2679829))))

(assert (=> d!2353689 (= (validRegex!11503 lt!2679829) e!4642395)))

(declare-fun b!7854231 () Bool)

(declare-fun e!4642397 () Bool)

(declare-fun e!4642401 () Bool)

(assert (=> b!7854231 (= e!4642397 e!4642401)))

(assert (=> b!7854231 (= c!1443517 ((_ is Union!21093) lt!2679829))))

(declare-fun b!7854232 () Bool)

(declare-fun e!4642398 () Bool)

(assert (=> b!7854232 (= e!4642397 e!4642398)))

(declare-fun res!3122928 () Bool)

(assert (=> b!7854232 (= res!3122928 (not (nullable!9365 (reg!21422 lt!2679829))))))

(assert (=> b!7854232 (=> (not res!3122928) (not e!4642398))))

(declare-fun b!7854233 () Bool)

(declare-fun res!3122927 () Bool)

(declare-fun e!4642396 () Bool)

(assert (=> b!7854233 (=> (not res!3122927) (not e!4642396))))

(declare-fun call!728016 () Bool)

(assert (=> b!7854233 (= res!3122927 call!728016)))

(assert (=> b!7854233 (= e!4642401 e!4642396)))

(declare-fun b!7854234 () Bool)

(assert (=> b!7854234 (= e!4642398 call!728015)))

(declare-fun b!7854235 () Bool)

(declare-fun call!728017 () Bool)

(assert (=> b!7854235 (= e!4642396 call!728017)))

(declare-fun bm!728011 () Bool)

(assert (=> bm!728011 (= call!728017 call!728015)))

(declare-fun bm!728012 () Bool)

(assert (=> bm!728012 (= call!728016 (validRegex!11503 (ite c!1443517 (regOne!42699 lt!2679829) (regTwo!42698 lt!2679829))))))

(declare-fun b!7854236 () Bool)

(assert (=> b!7854236 (= e!4642395 e!4642397)))

(assert (=> b!7854236 (= c!1443518 ((_ is Star!21093) lt!2679829))))

(declare-fun b!7854237 () Bool)

(declare-fun e!4642400 () Bool)

(declare-fun e!4642399 () Bool)

(assert (=> b!7854237 (= e!4642400 e!4642399)))

(declare-fun res!3122929 () Bool)

(assert (=> b!7854237 (=> (not res!3122929) (not e!4642399))))

(assert (=> b!7854237 (= res!3122929 call!728017)))

(declare-fun b!7854238 () Bool)

(assert (=> b!7854238 (= e!4642399 call!728016)))

(declare-fun b!7854239 () Bool)

(declare-fun res!3122930 () Bool)

(assert (=> b!7854239 (=> res!3122930 e!4642400)))

(assert (=> b!7854239 (= res!3122930 (not ((_ is Concat!29938) lt!2679829)))))

(assert (=> b!7854239 (= e!4642401 e!4642400)))

(assert (= (and d!2353689 (not res!3122931)) b!7854236))

(assert (= (and b!7854236 c!1443518) b!7854232))

(assert (= (and b!7854236 (not c!1443518)) b!7854231))

(assert (= (and b!7854232 res!3122928) b!7854234))

(assert (= (and b!7854231 c!1443517) b!7854233))

(assert (= (and b!7854231 (not c!1443517)) b!7854239))

(assert (= (and b!7854233 res!3122927) b!7854235))

(assert (= (and b!7854239 (not res!3122930)) b!7854237))

(assert (= (and b!7854237 res!3122929) b!7854238))

(assert (= (or b!7854233 b!7854238) bm!728012))

(assert (= (or b!7854235 b!7854237) bm!728011))

(assert (= (or b!7854234 bm!728011) bm!728010))

(declare-fun m!8259502 () Bool)

(assert (=> bm!728010 m!8259502))

(declare-fun m!8259504 () Bool)

(assert (=> b!7854232 m!8259504))

(declare-fun m!8259506 () Bool)

(assert (=> bm!728012 m!8259506))

(assert (=> b!7854053 d!2353689))

(declare-fun b!7854361 () Bool)

(declare-fun e!4642464 () Regex!21093)

(assert (=> b!7854361 (= e!4642464 EmptyLang!21093)))

(declare-fun bm!728029 () Bool)

(declare-fun call!728034 () Regex!21093)

(declare-fun c!1443554 () Bool)

(declare-fun c!1443550 () Bool)

(assert (=> bm!728029 (= call!728034 (derivativeStep!6328 (ite c!1443554 (regOne!42699 r1!6227) (ite c!1443550 (regTwo!42698 r1!6227) (regOne!42698 r1!6227))) (h!80276 s1!4084)))))

(declare-fun b!7854362 () Bool)

(declare-fun e!4642461 () Regex!21093)

(assert (=> b!7854362 (= e!4642461 (ite (= (h!80276 s1!4084) (c!1443469 r1!6227)) EmptyExpr!21093 EmptyLang!21093))))

(declare-fun bm!728030 () Bool)

(declare-fun call!728037 () Regex!21093)

(declare-fun call!728036 () Regex!21093)

(assert (=> bm!728030 (= call!728037 call!728036)))

(declare-fun c!1443551 () Bool)

(declare-fun bm!728031 () Bool)

(assert (=> bm!728031 (= call!728036 (derivativeStep!6328 (ite c!1443554 (regTwo!42699 r1!6227) (ite c!1443551 (reg!21422 r1!6227) (regOne!42698 r1!6227))) (h!80276 s1!4084)))))

(declare-fun b!7854363 () Bool)

(assert (=> b!7854363 (= c!1443550 (nullable!9365 (regOne!42698 r1!6227)))))

(declare-fun e!4642462 () Regex!21093)

(declare-fun e!4642463 () Regex!21093)

(assert (=> b!7854363 (= e!4642462 e!4642463)))

(declare-fun b!7854364 () Bool)

(declare-fun call!728035 () Regex!21093)

(assert (=> b!7854364 (= e!4642463 (Union!21093 (Concat!29938 call!728035 (regTwo!42698 r1!6227)) EmptyLang!21093))))

(declare-fun b!7854365 () Bool)

(declare-fun e!4642465 () Regex!21093)

(assert (=> b!7854365 (= e!4642465 (Union!21093 call!728034 call!728036))))

(declare-fun d!2353691 () Bool)

(declare-fun lt!2679852 () Regex!21093)

(assert (=> d!2353691 (validRegex!11503 lt!2679852)))

(assert (=> d!2353691 (= lt!2679852 e!4642464)))

(declare-fun c!1443552 () Bool)

(assert (=> d!2353691 (= c!1443552 (or ((_ is EmptyExpr!21093) r1!6227) ((_ is EmptyLang!21093) r1!6227)))))

(assert (=> d!2353691 (validRegex!11503 r1!6227)))

(assert (=> d!2353691 (= (derivativeStep!6328 r1!6227 (h!80276 s1!4084)) lt!2679852)))

(declare-fun b!7854366 () Bool)

(assert (=> b!7854366 (= c!1443554 ((_ is Union!21093) r1!6227))))

(assert (=> b!7854366 (= e!4642461 e!4642465)))

(declare-fun b!7854367 () Bool)

(assert (=> b!7854367 (= e!4642463 (Union!21093 (Concat!29938 call!728037 (regTwo!42698 r1!6227)) call!728035))))

(declare-fun b!7854368 () Bool)

(assert (=> b!7854368 (= e!4642465 e!4642462)))

(assert (=> b!7854368 (= c!1443551 ((_ is Star!21093) r1!6227))))

(declare-fun b!7854369 () Bool)

(assert (=> b!7854369 (= e!4642462 (Concat!29938 call!728037 r1!6227))))

(declare-fun bm!728032 () Bool)

(assert (=> bm!728032 (= call!728035 call!728034)))

(declare-fun b!7854370 () Bool)

(assert (=> b!7854370 (= e!4642464 e!4642461)))

(declare-fun c!1443553 () Bool)

(assert (=> b!7854370 (= c!1443553 ((_ is ElementMatch!21093) r1!6227))))

(assert (= (and d!2353691 c!1443552) b!7854361))

(assert (= (and d!2353691 (not c!1443552)) b!7854370))

(assert (= (and b!7854370 c!1443553) b!7854362))

(assert (= (and b!7854370 (not c!1443553)) b!7854366))

(assert (= (and b!7854366 c!1443554) b!7854365))

(assert (= (and b!7854366 (not c!1443554)) b!7854368))

(assert (= (and b!7854368 c!1443551) b!7854369))

(assert (= (and b!7854368 (not c!1443551)) b!7854363))

(assert (= (and b!7854363 c!1443550) b!7854367))

(assert (= (and b!7854363 (not c!1443550)) b!7854364))

(assert (= (or b!7854367 b!7854364) bm!728032))

(assert (= (or b!7854369 b!7854367) bm!728030))

(assert (= (or b!7854365 bm!728030) bm!728031))

(assert (= (or b!7854365 bm!728032) bm!728029))

(declare-fun m!8259558 () Bool)

(assert (=> bm!728029 m!8259558))

(declare-fun m!8259560 () Bool)

(assert (=> bm!728031 m!8259560))

(declare-fun m!8259562 () Bool)

(assert (=> b!7854363 m!8259562))

(declare-fun m!8259564 () Bool)

(assert (=> d!2353691 m!8259564))

(assert (=> d!2353691 m!8259438))

(assert (=> b!7854053 d!2353691))

(declare-fun b!7854395 () Bool)

(declare-fun res!3122979 () Bool)

(declare-fun e!4642477 () Bool)

(assert (=> b!7854395 (=> res!3122979 e!4642477)))

(assert (=> b!7854395 (= res!3122979 (not ((_ is ElementMatch!21093) lt!2679829)))))

(declare-fun e!4642476 () Bool)

(assert (=> b!7854395 (= e!4642476 e!4642477)))

(declare-fun b!7854396 () Bool)

(declare-fun lt!2679853 () Bool)

(assert (=> b!7854396 (= e!4642476 (not lt!2679853))))

(declare-fun b!7854397 () Bool)

(declare-fun e!4642473 () Bool)

(assert (=> b!7854397 (= e!4642473 (nullable!9365 lt!2679829))))

(declare-fun b!7854398 () Bool)

(declare-fun e!4642472 () Bool)

(declare-fun call!728038 () Bool)

(assert (=> b!7854398 (= e!4642472 (= lt!2679853 call!728038))))

(declare-fun b!7854399 () Bool)

(declare-fun res!3122984 () Bool)

(assert (=> b!7854399 (=> res!3122984 e!4642477)))

(declare-fun e!4642478 () Bool)

(assert (=> b!7854399 (= res!3122984 e!4642478)))

(declare-fun res!3122978 () Bool)

(assert (=> b!7854399 (=> (not res!3122978) (not e!4642478))))

(assert (=> b!7854399 (= res!3122978 lt!2679853)))

(declare-fun d!2353703 () Bool)

(assert (=> d!2353703 e!4642472))

(declare-fun c!1443555 () Bool)

(assert (=> d!2353703 (= c!1443555 ((_ is EmptyExpr!21093) lt!2679829))))

(assert (=> d!2353703 (= lt!2679853 e!4642473)))

(declare-fun c!1443556 () Bool)

(assert (=> d!2353703 (= c!1443556 (isEmpty!42338 (t!388687 s1!4084)))))

(assert (=> d!2353703 (validRegex!11503 lt!2679829)))

(assert (=> d!2353703 (= (matchR!10529 lt!2679829 (t!388687 s1!4084)) lt!2679853)))

(declare-fun b!7854400 () Bool)

(assert (=> b!7854400 (= e!4642473 (matchR!10529 (derivativeStep!6328 lt!2679829 (head!16049 (t!388687 s1!4084))) (tail!15592 (t!388687 s1!4084))))))

(declare-fun b!7854401 () Bool)

(declare-fun res!3122980 () Bool)

(declare-fun e!4642474 () Bool)

(assert (=> b!7854401 (=> res!3122980 e!4642474)))

(assert (=> b!7854401 (= res!3122980 (not (isEmpty!42338 (tail!15592 (t!388687 s1!4084)))))))

(declare-fun b!7854402 () Bool)

(assert (=> b!7854402 (= e!4642478 (= (head!16049 (t!388687 s1!4084)) (c!1443469 lt!2679829)))))

(declare-fun b!7854403 () Bool)

(assert (=> b!7854403 (= e!4642472 e!4642476)))

(declare-fun c!1443557 () Bool)

(assert (=> b!7854403 (= c!1443557 ((_ is EmptyLang!21093) lt!2679829))))

(declare-fun b!7854404 () Bool)

(assert (=> b!7854404 (= e!4642474 (not (= (head!16049 (t!388687 s1!4084)) (c!1443469 lt!2679829))))))

(declare-fun b!7854405 () Bool)

(declare-fun res!3122982 () Bool)

(assert (=> b!7854405 (=> (not res!3122982) (not e!4642478))))

(assert (=> b!7854405 (= res!3122982 (not call!728038))))

(declare-fun b!7854406 () Bool)

(declare-fun e!4642475 () Bool)

(assert (=> b!7854406 (= e!4642475 e!4642474)))

(declare-fun res!3122977 () Bool)

(assert (=> b!7854406 (=> res!3122977 e!4642474)))

(assert (=> b!7854406 (= res!3122977 call!728038)))

(declare-fun b!7854407 () Bool)

(assert (=> b!7854407 (= e!4642477 e!4642475)))

(declare-fun res!3122983 () Bool)

(assert (=> b!7854407 (=> (not res!3122983) (not e!4642475))))

(assert (=> b!7854407 (= res!3122983 (not lt!2679853))))

(declare-fun b!7854408 () Bool)

(declare-fun res!3122981 () Bool)

(assert (=> b!7854408 (=> (not res!3122981) (not e!4642478))))

(assert (=> b!7854408 (= res!3122981 (isEmpty!42338 (tail!15592 (t!388687 s1!4084))))))

(declare-fun bm!728033 () Bool)

(assert (=> bm!728033 (= call!728038 (isEmpty!42338 (t!388687 s1!4084)))))

(assert (= (and d!2353703 c!1443556) b!7854397))

(assert (= (and d!2353703 (not c!1443556)) b!7854400))

(assert (= (and d!2353703 c!1443555) b!7854398))

(assert (= (and d!2353703 (not c!1443555)) b!7854403))

(assert (= (and b!7854403 c!1443557) b!7854396))

(assert (= (and b!7854403 (not c!1443557)) b!7854395))

(assert (= (and b!7854395 (not res!3122979)) b!7854399))

(assert (= (and b!7854399 res!3122978) b!7854405))

(assert (= (and b!7854405 res!3122982) b!7854408))

(assert (= (and b!7854408 res!3122981) b!7854402))

(assert (= (and b!7854399 (not res!3122984)) b!7854407))

(assert (= (and b!7854407 res!3122983) b!7854406))

(assert (= (and b!7854406 (not res!3122977)) b!7854401))

(assert (= (and b!7854401 (not res!3122980)) b!7854404))

(assert (= (or b!7854398 b!7854405 b!7854406) bm!728033))

(declare-fun m!8259566 () Bool)

(assert (=> d!2353703 m!8259566))

(assert (=> d!2353703 m!8259430))

(declare-fun m!8259568 () Bool)

(assert (=> b!7854401 m!8259568))

(assert (=> b!7854401 m!8259568))

(declare-fun m!8259570 () Bool)

(assert (=> b!7854401 m!8259570))

(assert (=> bm!728033 m!8259566))

(assert (=> b!7854408 m!8259568))

(assert (=> b!7854408 m!8259568))

(assert (=> b!7854408 m!8259570))

(declare-fun m!8259572 () Bool)

(assert (=> b!7854400 m!8259572))

(assert (=> b!7854400 m!8259572))

(declare-fun m!8259574 () Bool)

(assert (=> b!7854400 m!8259574))

(assert (=> b!7854400 m!8259568))

(assert (=> b!7854400 m!8259574))

(assert (=> b!7854400 m!8259568))

(declare-fun m!8259576 () Bool)

(assert (=> b!7854400 m!8259576))

(declare-fun m!8259578 () Bool)

(assert (=> b!7854397 m!8259578))

(assert (=> b!7854404 m!8259572))

(assert (=> b!7854402 m!8259572))

(assert (=> b!7854051 d!2353703))

(declare-fun b!7854438 () Bool)

(declare-fun e!4642488 () Bool)

(declare-fun tp!2326650 () Bool)

(declare-fun tp!2326647 () Bool)

(assert (=> b!7854438 (= e!4642488 (and tp!2326650 tp!2326647))))

(declare-fun b!7854440 () Bool)

(declare-fun tp!2326648 () Bool)

(declare-fun tp!2326649 () Bool)

(assert (=> b!7854440 (= e!4642488 (and tp!2326648 tp!2326649))))

(declare-fun b!7854439 () Bool)

(declare-fun tp!2326651 () Bool)

(assert (=> b!7854439 (= e!4642488 tp!2326651)))

(declare-fun b!7854437 () Bool)

(assert (=> b!7854437 (= e!4642488 tp_is_empty!52585)))

(assert (=> b!7854050 (= tp!2326567 e!4642488)))

(assert (= (and b!7854050 ((_ is ElementMatch!21093) (regOne!42699 r1!6227))) b!7854437))

(assert (= (and b!7854050 ((_ is Concat!29938) (regOne!42699 r1!6227))) b!7854438))

(assert (= (and b!7854050 ((_ is Star!21093) (regOne!42699 r1!6227))) b!7854439))

(assert (= (and b!7854050 ((_ is Union!21093) (regOne!42699 r1!6227))) b!7854440))

(declare-fun b!7854442 () Bool)

(declare-fun e!4642489 () Bool)

(declare-fun tp!2326655 () Bool)

(declare-fun tp!2326652 () Bool)

(assert (=> b!7854442 (= e!4642489 (and tp!2326655 tp!2326652))))

(declare-fun b!7854444 () Bool)

(declare-fun tp!2326653 () Bool)

(declare-fun tp!2326654 () Bool)

(assert (=> b!7854444 (= e!4642489 (and tp!2326653 tp!2326654))))

(declare-fun b!7854443 () Bool)

(declare-fun tp!2326656 () Bool)

(assert (=> b!7854443 (= e!4642489 tp!2326656)))

(declare-fun b!7854441 () Bool)

(assert (=> b!7854441 (= e!4642489 tp_is_empty!52585)))

(assert (=> b!7854050 (= tp!2326568 e!4642489)))

(assert (= (and b!7854050 ((_ is ElementMatch!21093) (regTwo!42699 r1!6227))) b!7854441))

(assert (= (and b!7854050 ((_ is Concat!29938) (regTwo!42699 r1!6227))) b!7854442))

(assert (= (and b!7854050 ((_ is Star!21093) (regTwo!42699 r1!6227))) b!7854443))

(assert (= (and b!7854050 ((_ is Union!21093) (regTwo!42699 r1!6227))) b!7854444))

(declare-fun b!7854446 () Bool)

(declare-fun e!4642490 () Bool)

(declare-fun tp!2326660 () Bool)

(declare-fun tp!2326657 () Bool)

(assert (=> b!7854446 (= e!4642490 (and tp!2326660 tp!2326657))))

(declare-fun b!7854448 () Bool)

(declare-fun tp!2326658 () Bool)

(declare-fun tp!2326659 () Bool)

(assert (=> b!7854448 (= e!4642490 (and tp!2326658 tp!2326659))))

(declare-fun b!7854447 () Bool)

(declare-fun tp!2326661 () Bool)

(assert (=> b!7854447 (= e!4642490 tp!2326661)))

(declare-fun b!7854445 () Bool)

(assert (=> b!7854445 (= e!4642490 tp_is_empty!52585)))

(assert (=> b!7854059 (= tp!2326570 e!4642490)))

(assert (= (and b!7854059 ((_ is ElementMatch!21093) (reg!21422 r2!6165))) b!7854445))

(assert (= (and b!7854059 ((_ is Concat!29938) (reg!21422 r2!6165))) b!7854446))

(assert (= (and b!7854059 ((_ is Star!21093) (reg!21422 r2!6165))) b!7854447))

(assert (= (and b!7854059 ((_ is Union!21093) (reg!21422 r2!6165))) b!7854448))

(declare-fun b!7854450 () Bool)

(declare-fun e!4642491 () Bool)

(declare-fun tp!2326665 () Bool)

(declare-fun tp!2326662 () Bool)

(assert (=> b!7854450 (= e!4642491 (and tp!2326665 tp!2326662))))

(declare-fun b!7854452 () Bool)

(declare-fun tp!2326663 () Bool)

(declare-fun tp!2326664 () Bool)

(assert (=> b!7854452 (= e!4642491 (and tp!2326663 tp!2326664))))

(declare-fun b!7854451 () Bool)

(declare-fun tp!2326666 () Bool)

(assert (=> b!7854451 (= e!4642491 tp!2326666)))

(declare-fun b!7854449 () Bool)

(assert (=> b!7854449 (= e!4642491 tp_is_empty!52585)))

(assert (=> b!7854054 (= tp!2326562 e!4642491)))

(assert (= (and b!7854054 ((_ is ElementMatch!21093) (reg!21422 r1!6227))) b!7854449))

(assert (= (and b!7854054 ((_ is Concat!29938) (reg!21422 r1!6227))) b!7854450))

(assert (= (and b!7854054 ((_ is Star!21093) (reg!21422 r1!6227))) b!7854451))

(assert (= (and b!7854054 ((_ is Union!21093) (reg!21422 r1!6227))) b!7854452))

(declare-fun b!7854457 () Bool)

(declare-fun e!4642494 () Bool)

(declare-fun tp!2326669 () Bool)

(assert (=> b!7854457 (= e!4642494 (and tp_is_empty!52585 tp!2326669))))

(assert (=> b!7854058 (= tp!2326564 e!4642494)))

(assert (= (and b!7854058 ((_ is Cons!73828) (t!388687 s2!3706))) b!7854457))

(declare-fun b!7854459 () Bool)

(declare-fun e!4642495 () Bool)

(declare-fun tp!2326673 () Bool)

(declare-fun tp!2326670 () Bool)

(assert (=> b!7854459 (= e!4642495 (and tp!2326673 tp!2326670))))

(declare-fun b!7854461 () Bool)

(declare-fun tp!2326671 () Bool)

(declare-fun tp!2326672 () Bool)

(assert (=> b!7854461 (= e!4642495 (and tp!2326671 tp!2326672))))

(declare-fun b!7854460 () Bool)

(declare-fun tp!2326674 () Bool)

(assert (=> b!7854460 (= e!4642495 tp!2326674)))

(declare-fun b!7854458 () Bool)

(assert (=> b!7854458 (= e!4642495 tp_is_empty!52585)))

(assert (=> b!7854048 (= tp!2326566 e!4642495)))

(assert (= (and b!7854048 ((_ is ElementMatch!21093) (regOne!42698 r2!6165))) b!7854458))

(assert (= (and b!7854048 ((_ is Concat!29938) (regOne!42698 r2!6165))) b!7854459))

(assert (= (and b!7854048 ((_ is Star!21093) (regOne!42698 r2!6165))) b!7854460))

(assert (= (and b!7854048 ((_ is Union!21093) (regOne!42698 r2!6165))) b!7854461))

(declare-fun b!7854463 () Bool)

(declare-fun e!4642496 () Bool)

(declare-fun tp!2326678 () Bool)

(declare-fun tp!2326675 () Bool)

(assert (=> b!7854463 (= e!4642496 (and tp!2326678 tp!2326675))))

(declare-fun b!7854465 () Bool)

(declare-fun tp!2326676 () Bool)

(declare-fun tp!2326677 () Bool)

(assert (=> b!7854465 (= e!4642496 (and tp!2326676 tp!2326677))))

(declare-fun b!7854464 () Bool)

(declare-fun tp!2326679 () Bool)

(assert (=> b!7854464 (= e!4642496 tp!2326679)))

(declare-fun b!7854462 () Bool)

(assert (=> b!7854462 (= e!4642496 tp_is_empty!52585)))

(assert (=> b!7854048 (= tp!2326571 e!4642496)))

(assert (= (and b!7854048 ((_ is ElementMatch!21093) (regTwo!42698 r2!6165))) b!7854462))

(assert (= (and b!7854048 ((_ is Concat!29938) (regTwo!42698 r2!6165))) b!7854463))

(assert (= (and b!7854048 ((_ is Star!21093) (regTwo!42698 r2!6165))) b!7854464))

(assert (= (and b!7854048 ((_ is Union!21093) (regTwo!42698 r2!6165))) b!7854465))

(declare-fun b!7854466 () Bool)

(declare-fun e!4642497 () Bool)

(declare-fun tp!2326680 () Bool)

(assert (=> b!7854466 (= e!4642497 (and tp_is_empty!52585 tp!2326680))))

(assert (=> b!7854064 (= tp!2326572 e!4642497)))

(assert (= (and b!7854064 ((_ is Cons!73828) (t!388687 s1!4084))) b!7854466))

(declare-fun b!7854468 () Bool)

(declare-fun e!4642498 () Bool)

(declare-fun tp!2326684 () Bool)

(declare-fun tp!2326681 () Bool)

(assert (=> b!7854468 (= e!4642498 (and tp!2326684 tp!2326681))))

(declare-fun b!7854470 () Bool)

(declare-fun tp!2326682 () Bool)

(declare-fun tp!2326683 () Bool)

(assert (=> b!7854470 (= e!4642498 (and tp!2326682 tp!2326683))))

(declare-fun b!7854469 () Bool)

(declare-fun tp!2326685 () Bool)

(assert (=> b!7854469 (= e!4642498 tp!2326685)))

(declare-fun b!7854467 () Bool)

(assert (=> b!7854467 (= e!4642498 tp_is_empty!52585)))

(assert (=> b!7854062 (= tp!2326569 e!4642498)))

(assert (= (and b!7854062 ((_ is ElementMatch!21093) (regOne!42699 r2!6165))) b!7854467))

(assert (= (and b!7854062 ((_ is Concat!29938) (regOne!42699 r2!6165))) b!7854468))

(assert (= (and b!7854062 ((_ is Star!21093) (regOne!42699 r2!6165))) b!7854469))

(assert (= (and b!7854062 ((_ is Union!21093) (regOne!42699 r2!6165))) b!7854470))

(declare-fun b!7854472 () Bool)

(declare-fun e!4642499 () Bool)

(declare-fun tp!2326689 () Bool)

(declare-fun tp!2326686 () Bool)

(assert (=> b!7854472 (= e!4642499 (and tp!2326689 tp!2326686))))

(declare-fun b!7854474 () Bool)

(declare-fun tp!2326687 () Bool)

(declare-fun tp!2326688 () Bool)

(assert (=> b!7854474 (= e!4642499 (and tp!2326687 tp!2326688))))

(declare-fun b!7854473 () Bool)

(declare-fun tp!2326690 () Bool)

(assert (=> b!7854473 (= e!4642499 tp!2326690)))

(declare-fun b!7854471 () Bool)

(assert (=> b!7854471 (= e!4642499 tp_is_empty!52585)))

(assert (=> b!7854062 (= tp!2326561 e!4642499)))

(assert (= (and b!7854062 ((_ is ElementMatch!21093) (regTwo!42699 r2!6165))) b!7854471))

(assert (= (and b!7854062 ((_ is Concat!29938) (regTwo!42699 r2!6165))) b!7854472))

(assert (= (and b!7854062 ((_ is Star!21093) (regTwo!42699 r2!6165))) b!7854473))

(assert (= (and b!7854062 ((_ is Union!21093) (regTwo!42699 r2!6165))) b!7854474))

(declare-fun b!7854476 () Bool)

(declare-fun e!4642500 () Bool)

(declare-fun tp!2326694 () Bool)

(declare-fun tp!2326691 () Bool)

(assert (=> b!7854476 (= e!4642500 (and tp!2326694 tp!2326691))))

(declare-fun b!7854478 () Bool)

(declare-fun tp!2326692 () Bool)

(declare-fun tp!2326693 () Bool)

(assert (=> b!7854478 (= e!4642500 (and tp!2326692 tp!2326693))))

(declare-fun b!7854477 () Bool)

(declare-fun tp!2326695 () Bool)

(assert (=> b!7854477 (= e!4642500 tp!2326695)))

(declare-fun b!7854475 () Bool)

(assert (=> b!7854475 (= e!4642500 tp_is_empty!52585)))

(assert (=> b!7854057 (= tp!2326563 e!4642500)))

(assert (= (and b!7854057 ((_ is ElementMatch!21093) (regOne!42698 r1!6227))) b!7854475))

(assert (= (and b!7854057 ((_ is Concat!29938) (regOne!42698 r1!6227))) b!7854476))

(assert (= (and b!7854057 ((_ is Star!21093) (regOne!42698 r1!6227))) b!7854477))

(assert (= (and b!7854057 ((_ is Union!21093) (regOne!42698 r1!6227))) b!7854478))

(declare-fun b!7854480 () Bool)

(declare-fun e!4642501 () Bool)

(declare-fun tp!2326699 () Bool)

(declare-fun tp!2326696 () Bool)

(assert (=> b!7854480 (= e!4642501 (and tp!2326699 tp!2326696))))

(declare-fun b!7854482 () Bool)

(declare-fun tp!2326697 () Bool)

(declare-fun tp!2326698 () Bool)

(assert (=> b!7854482 (= e!4642501 (and tp!2326697 tp!2326698))))

(declare-fun b!7854481 () Bool)

(declare-fun tp!2326700 () Bool)

(assert (=> b!7854481 (= e!4642501 tp!2326700)))

(declare-fun b!7854479 () Bool)

(assert (=> b!7854479 (= e!4642501 tp_is_empty!52585)))

(assert (=> b!7854057 (= tp!2326565 e!4642501)))

(assert (= (and b!7854057 ((_ is ElementMatch!21093) (regTwo!42698 r1!6227))) b!7854479))

(assert (= (and b!7854057 ((_ is Concat!29938) (regTwo!42698 r1!6227))) b!7854480))

(assert (= (and b!7854057 ((_ is Star!21093) (regTwo!42698 r1!6227))) b!7854481))

(assert (= (and b!7854057 ((_ is Union!21093) (regTwo!42698 r1!6227))) b!7854482))

(check-sat (not b!7854461) (not b!7854438) (not b!7854481) (not b!7854463) (not bm!728003) (not b!7854205) (not bm!728029) (not b!7854131) (not b!7854442) (not b!7854232) (not b!7854482) (not bm!728010) (not b!7854136) (not b!7854135) (not b!7854215) (not b!7854214) (not bm!728007) (not b!7854473) (not b!7854221) (not bm!728031) (not b!7854452) (not b!7854446) (not bm!728005) (not b!7854443) (not b!7854223) (not b!7854476) (not b!7854404) (not b!7854464) (not b!7854457) (not bm!728009) (not b!7854480) (not bm!728012) (not b!7854460) (not b!7854447) (not b!7854451) (not d!2353703) (not b!7854397) (not d!2353671) tp_is_empty!52585 (not b!7854138) (not b!7854470) (not b!7854440) (not d!2353685) (not b!7854408) (not bm!727984) (not b!7854213) (not b!7854466) (not b!7854444) (not b!7854450) (not b!7854448) (not b!7854210) (not b!7854192) (not b!7854134) (not b!7854478) (not b!7854142) (not b!7854465) (not b!7854401) (not d!2353691) (not b!7854207) (not bm!728033) (not bm!728006) (not b!7854469) (not b!7854400) (not b!7854474) (not b!7854217) (not b!7854472) (not b!7854468) (not b!7854439) (not b!7854477) (not b!7854459) (not b!7854363) (not b!7854402))
(check-sat)
