; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!280360 () Bool)

(assert start!280360)

(declare-fun b!2872225 () Bool)

(declare-fun e!1817815 () Bool)

(declare-fun e!1817812 () Bool)

(assert (=> b!2872225 (= e!1817815 e!1817812)))

(declare-fun res!1191549 () Bool)

(assert (=> b!2872225 (=> (not res!1191549) (not e!1817812))))

(declare-datatypes ((C!17660 0))(
  ( (C!17661 (val!10864 Int)) )
))
(declare-datatypes ((List!34508 0))(
  ( (Nil!34384) (Cons!34384 (h!39804 C!17660) (t!233551 List!34508)) )
))
(declare-datatypes ((Option!6414 0))(
  ( (None!6413) (Some!6413 (v!34535 List!34508)) )
))
(declare-fun lt!1018175 () Option!6414)

(get-info :version)

(assert (=> b!2872225 (= res!1191549 ((_ is Some!6413) lt!1018175))))

(declare-datatypes ((Regex!8739 0))(
  ( (ElementMatch!8739 (c!464816 C!17660)) (Concat!14060 (regOne!17990 Regex!8739) (regTwo!17990 Regex!8739)) (EmptyExpr!8739) (Star!8739 (reg!9068 Regex!8739)) (EmptyLang!8739) (Union!8739 (regOne!17991 Regex!8739) (regTwo!17991 Regex!8739)) )
))
(declare-datatypes ((List!34509 0))(
  ( (Nil!34385) (Cons!34385 (h!39805 Regex!8739) (t!233552 List!34509)) )
))
(declare-datatypes ((Context!5398 0))(
  ( (Context!5399 (exprs!3199 List!34509)) )
))
(declare-fun c!7184 () Context!5398)

(declare-fun getLanguageWitness!429 (Regex!8739) Option!6414)

(assert (=> b!2872225 (= lt!1018175 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872226 () Bool)

(declare-fun e!1817817 () Bool)

(assert (=> b!2872226 (= e!1817812 e!1817817)))

(declare-fun res!1191550 () Bool)

(assert (=> b!2872226 (=> (not res!1191550) (not e!1817817))))

(declare-fun lt!1018173 () Option!6414)

(assert (=> b!2872226 (= res!1191550 ((_ is Some!6413) lt!1018173))))

(declare-fun lt!1018172 () Context!5398)

(declare-fun getLanguageWitness!430 (Context!5398) Option!6414)

(assert (=> b!2872226 (= lt!1018173 (getLanguageWitness!430 lt!1018172))))

(assert (=> b!2872226 (= lt!1018172 (Context!5399 (t!233552 (exprs!3199 c!7184))))))

(declare-fun b!2872227 () Bool)

(declare-fun res!1191548 () Bool)

(assert (=> b!2872227 (=> (not res!1191548) (not e!1817815))))

(assert (=> b!2872227 (= res!1191548 ((_ is Cons!34385) (exprs!3199 c!7184)))))

(declare-fun b!2872228 () Bool)

(declare-fun e!1817813 () Bool)

(declare-fun tp!923488 () Bool)

(assert (=> b!2872228 (= e!1817813 tp!923488)))

(declare-fun b!2872229 () Bool)

(declare-fun e!1817816 () Bool)

(declare-fun e!1817814 () Bool)

(assert (=> b!2872229 (= e!1817816 e!1817814)))

(declare-fun res!1191551 () Bool)

(assert (=> b!2872229 (=> res!1191551 e!1817814)))

(declare-fun validRegex!3517 (Regex!8739) Bool)

(assert (=> b!2872229 (= res!1191551 (not (validRegex!3517 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun lt!1018176 () Context!5398)

(assert (=> b!2872229 (= lt!1018176 (Context!5399 (Cons!34385 (h!39805 (exprs!3199 c!7184)) Nil!34385)))))

(declare-fun b!2872230 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!34510 0))(
  ( (Nil!34386) (Cons!34386 (h!39806 Context!5398) (t!233553 List!34510)) )
))
(declare-fun toList!2024 ((InoxSet Context!5398)) List!34510)

(assert (=> b!2872230 (= e!1817814 (= (toList!2024 (store ((as const (Array Context!5398 Bool)) false) lt!1018176 true)) (Cons!34386 lt!1018176 Nil!34386)))))

(declare-fun b!2872231 () Bool)

(assert (=> b!2872231 (= e!1817817 (not e!1817816))))

(declare-fun res!1191547 () Bool)

(assert (=> b!2872231 (=> res!1191547 e!1817816)))

(declare-fun matchR!3739 (Regex!8739 List!34508) Bool)

(assert (=> b!2872231 (= res!1191547 (not (matchR!3739 (h!39805 (exprs!3199 c!7184)) (v!34535 lt!1018175))))))

(declare-fun matchZipper!481 ((InoxSet Context!5398) List!34508) Bool)

(declare-fun get!10335 (Option!6414) List!34508)

(assert (=> b!2872231 (matchZipper!481 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (get!10335 lt!1018173))))

(declare-datatypes ((Unit!47979 0))(
  ( (Unit!47980) )
))
(declare-fun lt!1018177 () Unit!47979)

(declare-fun lemmaGetWitnessMatchesContext!38 (Context!5398) Unit!47979)

(assert (=> b!2872231 (= lt!1018177 (lemmaGetWitnessMatchesContext!38 lt!1018172))))

(assert (=> b!2872231 (matchR!3739 (h!39805 (exprs!3199 c!7184)) (get!10335 lt!1018175))))

(declare-fun lt!1018174 () Unit!47979)

(declare-fun lemmaGetWitnessMatches!46 (Regex!8739) Unit!47979)

(assert (=> b!2872231 (= lt!1018174 (lemmaGetWitnessMatches!46 (h!39805 (exprs!3199 c!7184))))))

(declare-fun res!1191546 () Bool)

(assert (=> start!280360 (=> (not res!1191546) (not e!1817815))))

(declare-fun lostCause!831 (Context!5398) Bool)

(assert (=> start!280360 (= res!1191546 (not (lostCause!831 c!7184)))))

(assert (=> start!280360 e!1817815))

(declare-fun inv!46434 (Context!5398) Bool)

(assert (=> start!280360 (and (inv!46434 c!7184) e!1817813)))

(assert (= (and start!280360 res!1191546) b!2872227))

(assert (= (and b!2872227 res!1191548) b!2872225))

(assert (= (and b!2872225 res!1191549) b!2872226))

(assert (= (and b!2872226 res!1191550) b!2872231))

(assert (= (and b!2872231 (not res!1191547)) b!2872229))

(assert (= (and b!2872229 (not res!1191551)) b!2872230))

(assert (= start!280360 b!2872228))

(declare-fun m!3290557 () Bool)

(assert (=> b!2872225 m!3290557))

(declare-fun m!3290559 () Bool)

(assert (=> b!2872226 m!3290559))

(declare-fun m!3290561 () Bool)

(assert (=> b!2872229 m!3290561))

(declare-fun m!3290563 () Bool)

(assert (=> b!2872230 m!3290563))

(assert (=> b!2872230 m!3290563))

(declare-fun m!3290565 () Bool)

(assert (=> b!2872230 m!3290565))

(declare-fun m!3290567 () Bool)

(assert (=> start!280360 m!3290567))

(declare-fun m!3290569 () Bool)

(assert (=> start!280360 m!3290569))

(declare-fun m!3290571 () Bool)

(assert (=> b!2872231 m!3290571))

(declare-fun m!3290573 () Bool)

(assert (=> b!2872231 m!3290573))

(declare-fun m!3290575 () Bool)

(assert (=> b!2872231 m!3290575))

(declare-fun m!3290577 () Bool)

(assert (=> b!2872231 m!3290577))

(declare-fun m!3290579 () Bool)

(assert (=> b!2872231 m!3290579))

(declare-fun m!3290581 () Bool)

(assert (=> b!2872231 m!3290581))

(declare-fun m!3290583 () Bool)

(assert (=> b!2872231 m!3290583))

(assert (=> b!2872231 m!3290583))

(assert (=> b!2872231 m!3290581))

(declare-fun m!3290585 () Bool)

(assert (=> b!2872231 m!3290585))

(assert (=> b!2872231 m!3290575))

(check-sat (not b!2872230) (not start!280360) (not b!2872231) (not b!2872228) (not b!2872229) (not b!2872225) (not b!2872226))
(check-sat)
(get-model)

(declare-fun b!2872407 () Bool)

(declare-fun e!1817915 () Option!6414)

(declare-fun lt!1018217 () Option!6414)

(declare-fun lt!1018215 () Option!6414)

(declare-fun ++!8175 (List!34508 List!34508) List!34508)

(assert (=> b!2872407 (= e!1817915 (Some!6413 (++!8175 (v!34535 lt!1018217) (v!34535 lt!1018215))))))

(declare-fun b!2872408 () Bool)

(declare-fun c!464880 () Bool)

(assert (=> b!2872408 (= c!464880 ((_ is Some!6413) lt!1018215))))

(assert (=> b!2872408 (= lt!1018215 (getLanguageWitness!430 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))

(declare-fun e!1817917 () Option!6414)

(assert (=> b!2872408 (= e!1817917 e!1817915)))

(declare-fun b!2872409 () Bool)

(assert (=> b!2872409 (= e!1817917 None!6413)))

(declare-fun b!2872410 () Bool)

(declare-fun e!1817916 () Option!6414)

(assert (=> b!2872410 (= e!1817916 e!1817917)))

(assert (=> b!2872410 (= lt!1018217 (getLanguageWitness!429 (h!39805 (exprs!3199 lt!1018172))))))

(declare-fun c!464882 () Bool)

(assert (=> b!2872410 (= c!464882 ((_ is Some!6413) lt!1018217))))

(declare-fun d!830065 () Bool)

(declare-fun lt!1018216 () Option!6414)

(declare-fun lambda!107140 () Int)

(declare-fun isEmpty!18719 (Option!6414) Bool)

(declare-fun exists!1161 (List!34509 Int) Bool)

(assert (=> d!830065 (= (isEmpty!18719 lt!1018216) (exists!1161 (exprs!3199 lt!1018172) lambda!107140))))

(assert (=> d!830065 (= lt!1018216 e!1817916)))

(declare-fun c!464881 () Bool)

(assert (=> d!830065 (= c!464881 ((_ is Cons!34385) (exprs!3199 lt!1018172)))))

(assert (=> d!830065 (= (getLanguageWitness!430 lt!1018172) lt!1018216)))

(declare-fun b!2872411 () Bool)

(assert (=> b!2872411 (= e!1817915 None!6413)))

(declare-fun b!2872412 () Bool)

(assert (=> b!2872412 (= e!1817916 (Some!6413 Nil!34384))))

(assert (= (and d!830065 c!464881) b!2872410))

(assert (= (and d!830065 (not c!464881)) b!2872412))

(assert (= (and b!2872410 c!464882) b!2872408))

(assert (= (and b!2872410 (not c!464882)) b!2872409))

(assert (= (and b!2872408 c!464880) b!2872407))

(assert (= (and b!2872408 (not c!464880)) b!2872411))

(declare-fun m!3290671 () Bool)

(assert (=> b!2872407 m!3290671))

(declare-fun m!3290673 () Bool)

(assert (=> b!2872408 m!3290673))

(declare-fun m!3290675 () Bool)

(assert (=> b!2872410 m!3290675))

(declare-fun m!3290677 () Bool)

(assert (=> d!830065 m!3290677))

(declare-fun m!3290679 () Bool)

(assert (=> d!830065 m!3290679))

(assert (=> b!2872226 d!830065))

(declare-fun d!830093 () Bool)

(assert (=> d!830093 (= (get!10335 lt!1018175) (v!34535 lt!1018175))))

(assert (=> b!2872231 d!830093))

(declare-fun d!830095 () Bool)

(assert (=> d!830095 (= (get!10335 lt!1018173) (v!34535 lt!1018173))))

(assert (=> b!2872231 d!830095))

(declare-fun bm!185583 () Bool)

(declare-fun call!185588 () Bool)

(declare-fun isEmpty!18720 (List!34508) Bool)

(assert (=> bm!185583 (= call!185588 (isEmpty!18720 (get!10335 lt!1018175)))))

(declare-fun b!2872441 () Bool)

(declare-fun res!1191623 () Bool)

(declare-fun e!1817935 () Bool)

(assert (=> b!2872441 (=> (not res!1191623) (not e!1817935))))

(declare-fun tail!4569 (List!34508) List!34508)

(assert (=> b!2872441 (= res!1191623 (isEmpty!18720 (tail!4569 (get!10335 lt!1018175))))))

(declare-fun b!2872442 () Bool)

(declare-fun e!1817933 () Bool)

(declare-fun lt!1018220 () Bool)

(assert (=> b!2872442 (= e!1817933 (= lt!1018220 call!185588))))

(declare-fun d!830097 () Bool)

(assert (=> d!830097 e!1817933))

(declare-fun c!464890 () Bool)

(assert (=> d!830097 (= c!464890 ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun e!1817937 () Bool)

(assert (=> d!830097 (= lt!1018220 e!1817937)))

(declare-fun c!464889 () Bool)

(assert (=> d!830097 (= c!464889 (isEmpty!18720 (get!10335 lt!1018175)))))

(assert (=> d!830097 (validRegex!3517 (h!39805 (exprs!3199 c!7184)))))

(assert (=> d!830097 (= (matchR!3739 (h!39805 (exprs!3199 c!7184)) (get!10335 lt!1018175)) lt!1018220)))

(declare-fun b!2872443 () Bool)

(declare-fun res!1191619 () Bool)

(declare-fun e!1817936 () Bool)

(assert (=> b!2872443 (=> res!1191619 e!1817936)))

(assert (=> b!2872443 (= res!1191619 (not ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184)))))))

(declare-fun e!1817932 () Bool)

(assert (=> b!2872443 (= e!1817932 e!1817936)))

(declare-fun b!2872444 () Bool)

(declare-fun res!1191620 () Bool)

(declare-fun e!1817934 () Bool)

(assert (=> b!2872444 (=> res!1191620 e!1817934)))

(assert (=> b!2872444 (= res!1191620 (not (isEmpty!18720 (tail!4569 (get!10335 lt!1018175)))))))

(declare-fun b!2872445 () Bool)

(declare-fun derivativeStep!2322 (Regex!8739 C!17660) Regex!8739)

(declare-fun head!6344 (List!34508) C!17660)

(assert (=> b!2872445 (= e!1817937 (matchR!3739 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (tail!4569 (get!10335 lt!1018175))))))

(declare-fun b!2872446 () Bool)

(assert (=> b!2872446 (= e!1817934 (not (= (head!6344 (get!10335 lt!1018175)) (c!464816 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872447 () Bool)

(assert (=> b!2872447 (= e!1817933 e!1817932)))

(declare-fun c!464891 () Bool)

(assert (=> b!2872447 (= c!464891 ((_ is EmptyLang!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872448 () Bool)

(assert (=> b!2872448 (= e!1817935 (= (head!6344 (get!10335 lt!1018175)) (c!464816 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun b!2872449 () Bool)

(declare-fun res!1191618 () Bool)

(assert (=> b!2872449 (=> res!1191618 e!1817936)))

(assert (=> b!2872449 (= res!1191618 e!1817935)))

(declare-fun res!1191621 () Bool)

(assert (=> b!2872449 (=> (not res!1191621) (not e!1817935))))

(assert (=> b!2872449 (= res!1191621 lt!1018220)))

(declare-fun b!2872450 () Bool)

(declare-fun nullable!2689 (Regex!8739) Bool)

(assert (=> b!2872450 (= e!1817937 (nullable!2689 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872451 () Bool)

(declare-fun res!1191624 () Bool)

(assert (=> b!2872451 (=> (not res!1191624) (not e!1817935))))

(assert (=> b!2872451 (= res!1191624 (not call!185588))))

(declare-fun b!2872452 () Bool)

(declare-fun e!1817938 () Bool)

(assert (=> b!2872452 (= e!1817938 e!1817934)))

(declare-fun res!1191622 () Bool)

(assert (=> b!2872452 (=> res!1191622 e!1817934)))

(assert (=> b!2872452 (= res!1191622 call!185588)))

(declare-fun b!2872453 () Bool)

(assert (=> b!2872453 (= e!1817936 e!1817938)))

(declare-fun res!1191625 () Bool)

(assert (=> b!2872453 (=> (not res!1191625) (not e!1817938))))

(assert (=> b!2872453 (= res!1191625 (not lt!1018220))))

(declare-fun b!2872454 () Bool)

(assert (=> b!2872454 (= e!1817932 (not lt!1018220))))

(assert (= (and d!830097 c!464889) b!2872450))

(assert (= (and d!830097 (not c!464889)) b!2872445))

(assert (= (and d!830097 c!464890) b!2872442))

(assert (= (and d!830097 (not c!464890)) b!2872447))

(assert (= (and b!2872447 c!464891) b!2872454))

(assert (= (and b!2872447 (not c!464891)) b!2872443))

(assert (= (and b!2872443 (not res!1191619)) b!2872449))

(assert (= (and b!2872449 res!1191621) b!2872451))

(assert (= (and b!2872451 res!1191624) b!2872441))

(assert (= (and b!2872441 res!1191623) b!2872448))

(assert (= (and b!2872449 (not res!1191618)) b!2872453))

(assert (= (and b!2872453 res!1191625) b!2872452))

(assert (= (and b!2872452 (not res!1191622)) b!2872444))

(assert (= (and b!2872444 (not res!1191620)) b!2872446))

(assert (= (or b!2872442 b!2872451 b!2872452) bm!185583))

(assert (=> b!2872446 m!3290575))

(declare-fun m!3290681 () Bool)

(assert (=> b!2872446 m!3290681))

(assert (=> bm!185583 m!3290575))

(declare-fun m!3290683 () Bool)

(assert (=> bm!185583 m!3290683))

(assert (=> b!2872448 m!3290575))

(assert (=> b!2872448 m!3290681))

(assert (=> b!2872445 m!3290575))

(assert (=> b!2872445 m!3290681))

(assert (=> b!2872445 m!3290681))

(declare-fun m!3290685 () Bool)

(assert (=> b!2872445 m!3290685))

(assert (=> b!2872445 m!3290575))

(declare-fun m!3290687 () Bool)

(assert (=> b!2872445 m!3290687))

(assert (=> b!2872445 m!3290685))

(assert (=> b!2872445 m!3290687))

(declare-fun m!3290689 () Bool)

(assert (=> b!2872445 m!3290689))

(declare-fun m!3290691 () Bool)

(assert (=> b!2872450 m!3290691))

(assert (=> b!2872444 m!3290575))

(assert (=> b!2872444 m!3290687))

(assert (=> b!2872444 m!3290687))

(declare-fun m!3290693 () Bool)

(assert (=> b!2872444 m!3290693))

(assert (=> d!830097 m!3290575))

(assert (=> d!830097 m!3290683))

(assert (=> d!830097 m!3290561))

(assert (=> b!2872441 m!3290575))

(assert (=> b!2872441 m!3290687))

(assert (=> b!2872441 m!3290687))

(assert (=> b!2872441 m!3290693))

(assert (=> b!2872231 d!830097))

(declare-fun d!830099 () Bool)

(assert (=> d!830099 (matchR!3739 (h!39805 (exprs!3199 c!7184)) (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun lt!1018223 () Unit!47979)

(declare-fun choose!16987 (Regex!8739) Unit!47979)

(assert (=> d!830099 (= lt!1018223 (choose!16987 (h!39805 (exprs!3199 c!7184))))))

(assert (=> d!830099 (validRegex!3517 (h!39805 (exprs!3199 c!7184)))))

(assert (=> d!830099 (= (lemmaGetWitnessMatches!46 (h!39805 (exprs!3199 c!7184))) lt!1018223)))

(declare-fun bs!522185 () Bool)

(assert (= bs!522185 d!830099))

(assert (=> bs!522185 m!3290557))

(declare-fun m!3290695 () Bool)

(assert (=> bs!522185 m!3290695))

(declare-fun m!3290697 () Bool)

(assert (=> bs!522185 m!3290697))

(assert (=> bs!522185 m!3290695))

(declare-fun m!3290699 () Bool)

(assert (=> bs!522185 m!3290699))

(assert (=> bs!522185 m!3290561))

(assert (=> bs!522185 m!3290557))

(assert (=> b!2872231 d!830099))

(declare-fun d!830101 () Bool)

(assert (=> d!830101 (matchZipper!481 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (get!10335 (getLanguageWitness!430 lt!1018172)))))

(declare-fun lt!1018226 () Unit!47979)

(declare-fun choose!16988 (Context!5398) Unit!47979)

(assert (=> d!830101 (= lt!1018226 (choose!16988 lt!1018172))))

(assert (=> d!830101 (not (lostCause!831 lt!1018172))))

(assert (=> d!830101 (= (lemmaGetWitnessMatchesContext!38 lt!1018172) lt!1018226)))

(declare-fun bs!522186 () Bool)

(assert (= bs!522186 d!830101))

(assert (=> bs!522186 m!3290559))

(declare-fun m!3290701 () Bool)

(assert (=> bs!522186 m!3290701))

(declare-fun m!3290703 () Bool)

(assert (=> bs!522186 m!3290703))

(assert (=> bs!522186 m!3290583))

(assert (=> bs!522186 m!3290559))

(declare-fun m!3290705 () Bool)

(assert (=> bs!522186 m!3290705))

(assert (=> bs!522186 m!3290583))

(assert (=> bs!522186 m!3290705))

(declare-fun m!3290707 () Bool)

(assert (=> bs!522186 m!3290707))

(assert (=> b!2872231 d!830101))

(declare-fun bm!185584 () Bool)

(declare-fun call!185589 () Bool)

(assert (=> bm!185584 (= call!185589 (isEmpty!18720 (v!34535 lt!1018175)))))

(declare-fun b!2872455 () Bool)

(declare-fun res!1191631 () Bool)

(declare-fun e!1817942 () Bool)

(assert (=> b!2872455 (=> (not res!1191631) (not e!1817942))))

(assert (=> b!2872455 (= res!1191631 (isEmpty!18720 (tail!4569 (v!34535 lt!1018175))))))

(declare-fun b!2872456 () Bool)

(declare-fun e!1817940 () Bool)

(declare-fun lt!1018227 () Bool)

(assert (=> b!2872456 (= e!1817940 (= lt!1018227 call!185589))))

(declare-fun d!830103 () Bool)

(assert (=> d!830103 e!1817940))

(declare-fun c!464894 () Bool)

(assert (=> d!830103 (= c!464894 ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun e!1817944 () Bool)

(assert (=> d!830103 (= lt!1018227 e!1817944)))

(declare-fun c!464893 () Bool)

(assert (=> d!830103 (= c!464893 (isEmpty!18720 (v!34535 lt!1018175)))))

(assert (=> d!830103 (validRegex!3517 (h!39805 (exprs!3199 c!7184)))))

(assert (=> d!830103 (= (matchR!3739 (h!39805 (exprs!3199 c!7184)) (v!34535 lt!1018175)) lt!1018227)))

(declare-fun b!2872457 () Bool)

(declare-fun res!1191627 () Bool)

(declare-fun e!1817943 () Bool)

(assert (=> b!2872457 (=> res!1191627 e!1817943)))

(assert (=> b!2872457 (= res!1191627 (not ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184)))))))

(declare-fun e!1817939 () Bool)

(assert (=> b!2872457 (= e!1817939 e!1817943)))

(declare-fun b!2872458 () Bool)

(declare-fun res!1191628 () Bool)

(declare-fun e!1817941 () Bool)

(assert (=> b!2872458 (=> res!1191628 e!1817941)))

(assert (=> b!2872458 (= res!1191628 (not (isEmpty!18720 (tail!4569 (v!34535 lt!1018175)))))))

(declare-fun b!2872459 () Bool)

(assert (=> b!2872459 (= e!1817944 (matchR!3739 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (tail!4569 (v!34535 lt!1018175))))))

(declare-fun b!2872460 () Bool)

(assert (=> b!2872460 (= e!1817941 (not (= (head!6344 (v!34535 lt!1018175)) (c!464816 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872461 () Bool)

(assert (=> b!2872461 (= e!1817940 e!1817939)))

(declare-fun c!464895 () Bool)

(assert (=> b!2872461 (= c!464895 ((_ is EmptyLang!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872462 () Bool)

(assert (=> b!2872462 (= e!1817942 (= (head!6344 (v!34535 lt!1018175)) (c!464816 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun b!2872463 () Bool)

(declare-fun res!1191626 () Bool)

(assert (=> b!2872463 (=> res!1191626 e!1817943)))

(assert (=> b!2872463 (= res!1191626 e!1817942)))

(declare-fun res!1191629 () Bool)

(assert (=> b!2872463 (=> (not res!1191629) (not e!1817942))))

(assert (=> b!2872463 (= res!1191629 lt!1018227)))

(declare-fun b!2872464 () Bool)

(assert (=> b!2872464 (= e!1817944 (nullable!2689 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872465 () Bool)

(declare-fun res!1191632 () Bool)

(assert (=> b!2872465 (=> (not res!1191632) (not e!1817942))))

(assert (=> b!2872465 (= res!1191632 (not call!185589))))

(declare-fun b!2872466 () Bool)

(declare-fun e!1817945 () Bool)

(assert (=> b!2872466 (= e!1817945 e!1817941)))

(declare-fun res!1191630 () Bool)

(assert (=> b!2872466 (=> res!1191630 e!1817941)))

(assert (=> b!2872466 (= res!1191630 call!185589)))

(declare-fun b!2872467 () Bool)

(assert (=> b!2872467 (= e!1817943 e!1817945)))

(declare-fun res!1191633 () Bool)

(assert (=> b!2872467 (=> (not res!1191633) (not e!1817945))))

(assert (=> b!2872467 (= res!1191633 (not lt!1018227))))

(declare-fun b!2872468 () Bool)

(assert (=> b!2872468 (= e!1817939 (not lt!1018227))))

(assert (= (and d!830103 c!464893) b!2872464))

(assert (= (and d!830103 (not c!464893)) b!2872459))

(assert (= (and d!830103 c!464894) b!2872456))

(assert (= (and d!830103 (not c!464894)) b!2872461))

(assert (= (and b!2872461 c!464895) b!2872468))

(assert (= (and b!2872461 (not c!464895)) b!2872457))

(assert (= (and b!2872457 (not res!1191627)) b!2872463))

(assert (= (and b!2872463 res!1191629) b!2872465))

(assert (= (and b!2872465 res!1191632) b!2872455))

(assert (= (and b!2872455 res!1191631) b!2872462))

(assert (= (and b!2872463 (not res!1191626)) b!2872467))

(assert (= (and b!2872467 res!1191633) b!2872466))

(assert (= (and b!2872466 (not res!1191630)) b!2872458))

(assert (= (and b!2872458 (not res!1191628)) b!2872460))

(assert (= (or b!2872456 b!2872465 b!2872466) bm!185584))

(declare-fun m!3290709 () Bool)

(assert (=> b!2872460 m!3290709))

(declare-fun m!3290711 () Bool)

(assert (=> bm!185584 m!3290711))

(assert (=> b!2872462 m!3290709))

(assert (=> b!2872459 m!3290709))

(assert (=> b!2872459 m!3290709))

(declare-fun m!3290713 () Bool)

(assert (=> b!2872459 m!3290713))

(declare-fun m!3290715 () Bool)

(assert (=> b!2872459 m!3290715))

(assert (=> b!2872459 m!3290713))

(assert (=> b!2872459 m!3290715))

(declare-fun m!3290717 () Bool)

(assert (=> b!2872459 m!3290717))

(assert (=> b!2872464 m!3290691))

(assert (=> b!2872458 m!3290715))

(assert (=> b!2872458 m!3290715))

(declare-fun m!3290719 () Bool)

(assert (=> b!2872458 m!3290719))

(assert (=> d!830103 m!3290711))

(assert (=> d!830103 m!3290561))

(assert (=> b!2872455 m!3290715))

(assert (=> b!2872455 m!3290715))

(assert (=> b!2872455 m!3290719))

(assert (=> b!2872231 d!830103))

(declare-fun d!830105 () Bool)

(declare-fun c!464898 () Bool)

(assert (=> d!830105 (= c!464898 (isEmpty!18720 (get!10335 lt!1018173)))))

(declare-fun e!1817948 () Bool)

(assert (=> d!830105 (= (matchZipper!481 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (get!10335 lt!1018173)) e!1817948)))

(declare-fun b!2872473 () Bool)

(declare-fun nullableZipper!717 ((InoxSet Context!5398)) Bool)

(assert (=> b!2872473 (= e!1817948 (nullableZipper!717 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true)))))

(declare-fun b!2872474 () Bool)

(declare-fun derivationStepZipper!473 ((InoxSet Context!5398) C!17660) (InoxSet Context!5398))

(assert (=> b!2872474 (= e!1817948 (matchZipper!481 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) (tail!4569 (get!10335 lt!1018173))))))

(assert (= (and d!830105 c!464898) b!2872473))

(assert (= (and d!830105 (not c!464898)) b!2872474))

(assert (=> d!830105 m!3290581))

(declare-fun m!3290721 () Bool)

(assert (=> d!830105 m!3290721))

(assert (=> b!2872473 m!3290583))

(declare-fun m!3290723 () Bool)

(assert (=> b!2872473 m!3290723))

(assert (=> b!2872474 m!3290581))

(declare-fun m!3290725 () Bool)

(assert (=> b!2872474 m!3290725))

(assert (=> b!2872474 m!3290583))

(assert (=> b!2872474 m!3290725))

(declare-fun m!3290727 () Bool)

(assert (=> b!2872474 m!3290727))

(assert (=> b!2872474 m!3290581))

(declare-fun m!3290729 () Bool)

(assert (=> b!2872474 m!3290729))

(assert (=> b!2872474 m!3290727))

(assert (=> b!2872474 m!3290729))

(declare-fun m!3290731 () Bool)

(assert (=> b!2872474 m!3290731))

(assert (=> b!2872231 d!830105))

(declare-fun b!2872507 () Bool)

(declare-fun e!1817967 () Option!6414)

(declare-fun call!185595 () Option!6414)

(assert (=> b!2872507 (= e!1817967 call!185595)))

(declare-fun bm!185589 () Bool)

(declare-fun c!464922 () Bool)

(assert (=> bm!185589 (= call!185595 (getLanguageWitness!429 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872508 () Bool)

(declare-fun e!1817969 () Option!6414)

(declare-fun e!1817972 () Option!6414)

(assert (=> b!2872508 (= e!1817969 e!1817972)))

(declare-fun c!464918 () Bool)

(assert (=> b!2872508 (= c!464918 ((_ is EmptyLang!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872509 () Bool)

(declare-fun e!1817970 () Option!6414)

(assert (=> b!2872509 (= e!1817970 None!6413)))

(declare-fun b!2872510 () Bool)

(declare-fun c!464920 () Bool)

(assert (=> b!2872510 (= c!464920 ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun e!1817971 () Option!6414)

(assert (=> b!2872510 (= e!1817972 e!1817971)))

(declare-fun b!2872511 () Bool)

(assert (=> b!2872511 (= e!1817969 (Some!6413 Nil!34384))))

(declare-fun b!2872512 () Bool)

(declare-fun e!1817966 () Option!6414)

(assert (=> b!2872512 (= e!1817966 None!6413)))

(declare-fun d!830107 () Bool)

(declare-fun c!464917 () Bool)

(assert (=> d!830107 (= c!464917 ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 c!7184))))))

(assert (=> d!830107 (= (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))) e!1817969)))

(declare-fun b!2872513 () Bool)

(declare-fun e!1817968 () Option!6414)

(assert (=> b!2872513 (= e!1817968 e!1817966)))

(declare-fun lt!1018235 () Option!6414)

(declare-fun call!185594 () Option!6414)

(assert (=> b!2872513 (= lt!1018235 call!185594)))

(declare-fun c!464916 () Bool)

(assert (=> b!2872513 (= c!464916 ((_ is Some!6413) lt!1018235))))

(declare-fun b!2872514 () Bool)

(assert (=> b!2872514 (= e!1817972 None!6413)))

(declare-fun b!2872515 () Bool)

(declare-fun e!1817965 () Option!6414)

(assert (=> b!2872515 (= e!1817965 (Some!6413 Nil!34384))))

(declare-fun bm!185590 () Bool)

(assert (=> bm!185590 (= call!185594 (getLanguageWitness!429 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872516 () Bool)

(declare-fun lt!1018236 () Option!6414)

(assert (=> b!2872516 (= e!1817967 lt!1018236)))

(declare-fun b!2872517 () Bool)

(assert (=> b!2872517 (= e!1817971 e!1817965)))

(declare-fun c!464921 () Bool)

(assert (=> b!2872517 (= c!464921 ((_ is Star!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872518 () Bool)

(assert (=> b!2872518 (= e!1817968 e!1817967)))

(assert (=> b!2872518 (= lt!1018236 call!185594)))

(declare-fun c!464915 () Bool)

(assert (=> b!2872518 (= c!464915 ((_ is Some!6413) lt!1018236))))

(declare-fun b!2872519 () Bool)

(declare-fun lt!1018234 () Option!6414)

(assert (=> b!2872519 (= e!1817970 (Some!6413 (++!8175 (v!34535 lt!1018235) (v!34535 lt!1018234))))))

(declare-fun b!2872520 () Bool)

(assert (=> b!2872520 (= c!464922 ((_ is Union!8739) (h!39805 (exprs!3199 c!7184))))))

(assert (=> b!2872520 (= e!1817965 e!1817968)))

(declare-fun b!2872521 () Bool)

(assert (=> b!2872521 (= e!1817971 (Some!6413 (Cons!34384 (c!464816 (h!39805 (exprs!3199 c!7184))) Nil!34384)))))

(declare-fun b!2872522 () Bool)

(declare-fun c!464919 () Bool)

(assert (=> b!2872522 (= c!464919 ((_ is Some!6413) lt!1018234))))

(assert (=> b!2872522 (= lt!1018234 call!185595)))

(assert (=> b!2872522 (= e!1817966 e!1817970)))

(assert (= (and d!830107 c!464917) b!2872511))

(assert (= (and d!830107 (not c!464917)) b!2872508))

(assert (= (and b!2872508 c!464918) b!2872514))

(assert (= (and b!2872508 (not c!464918)) b!2872510))

(assert (= (and b!2872510 c!464920) b!2872521))

(assert (= (and b!2872510 (not c!464920)) b!2872517))

(assert (= (and b!2872517 c!464921) b!2872515))

(assert (= (and b!2872517 (not c!464921)) b!2872520))

(assert (= (and b!2872520 c!464922) b!2872518))

(assert (= (and b!2872520 (not c!464922)) b!2872513))

(assert (= (and b!2872518 c!464915) b!2872516))

(assert (= (and b!2872518 (not c!464915)) b!2872507))

(assert (= (and b!2872513 c!464916) b!2872522))

(assert (= (and b!2872513 (not c!464916)) b!2872512))

(assert (= (and b!2872522 c!464919) b!2872519))

(assert (= (and b!2872522 (not c!464919)) b!2872509))

(assert (= (or b!2872507 b!2872522) bm!185589))

(assert (= (or b!2872518 b!2872513) bm!185590))

(declare-fun m!3290733 () Bool)

(assert (=> bm!185589 m!3290733))

(declare-fun m!3290735 () Bool)

(assert (=> bm!185590 m!3290735))

(declare-fun m!3290737 () Bool)

(assert (=> b!2872519 m!3290737))

(assert (=> b!2872225 d!830107))

(declare-fun d!830109 () Bool)

(declare-fun e!1817975 () Bool)

(assert (=> d!830109 e!1817975))

(declare-fun res!1191636 () Bool)

(assert (=> d!830109 (=> (not res!1191636) (not e!1817975))))

(declare-fun lt!1018239 () List!34510)

(declare-fun noDuplicate!580 (List!34510) Bool)

(assert (=> d!830109 (= res!1191636 (noDuplicate!580 lt!1018239))))

(declare-fun choose!16989 ((InoxSet Context!5398)) List!34510)

(assert (=> d!830109 (= lt!1018239 (choose!16989 (store ((as const (Array Context!5398 Bool)) false) lt!1018176 true)))))

(assert (=> d!830109 (= (toList!2024 (store ((as const (Array Context!5398 Bool)) false) lt!1018176 true)) lt!1018239)))

(declare-fun b!2872525 () Bool)

(declare-fun content!4699 (List!34510) (InoxSet Context!5398))

(assert (=> b!2872525 (= e!1817975 (= (content!4699 lt!1018239) (store ((as const (Array Context!5398 Bool)) false) lt!1018176 true)))))

(assert (= (and d!830109 res!1191636) b!2872525))

(declare-fun m!3290739 () Bool)

(assert (=> d!830109 m!3290739))

(assert (=> d!830109 m!3290563))

(declare-fun m!3290741 () Bool)

(assert (=> d!830109 m!3290741))

(declare-fun m!3290743 () Bool)

(assert (=> b!2872525 m!3290743))

(assert (=> b!2872230 d!830109))

(declare-fun b!2872544 () Bool)

(declare-fun e!1817992 () Bool)

(declare-fun call!185603 () Bool)

(assert (=> b!2872544 (= e!1817992 call!185603)))

(declare-fun b!2872545 () Bool)

(declare-fun res!1191650 () Bool)

(declare-fun e!1817995 () Bool)

(assert (=> b!2872545 (=> res!1191650 e!1817995)))

(assert (=> b!2872545 (= res!1191650 (not ((_ is Concat!14060) (h!39805 (exprs!3199 c!7184)))))))

(declare-fun e!1817993 () Bool)

(assert (=> b!2872545 (= e!1817993 e!1817995)))

(declare-fun bm!185597 () Bool)

(declare-fun c!464927 () Bool)

(declare-fun c!464928 () Bool)

(declare-fun call!185602 () Bool)

(assert (=> bm!185597 (= call!185602 (validRegex!3517 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun bm!185598 () Bool)

(declare-fun call!185604 () Bool)

(assert (=> bm!185598 (= call!185604 call!185602)))

(declare-fun b!2872546 () Bool)

(declare-fun e!1817990 () Bool)

(assert (=> b!2872546 (= e!1817995 e!1817990)))

(declare-fun res!1191651 () Bool)

(assert (=> b!2872546 (=> (not res!1191651) (not e!1817990))))

(assert (=> b!2872546 (= res!1191651 call!185603)))

(declare-fun d!830111 () Bool)

(declare-fun res!1191649 () Bool)

(declare-fun e!1817991 () Bool)

(assert (=> d!830111 (=> res!1191649 e!1817991)))

(assert (=> d!830111 (= res!1191649 ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184))))))

(assert (=> d!830111 (= (validRegex!3517 (h!39805 (exprs!3199 c!7184))) e!1817991)))

(declare-fun b!2872547 () Bool)

(declare-fun e!1817996 () Bool)

(assert (=> b!2872547 (= e!1817996 e!1817993)))

(assert (=> b!2872547 (= c!464928 ((_ is Union!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872548 () Bool)

(assert (=> b!2872548 (= e!1817990 call!185604)))

(declare-fun b!2872549 () Bool)

(declare-fun e!1817994 () Bool)

(assert (=> b!2872549 (= e!1817994 call!185602)))

(declare-fun b!2872550 () Bool)

(assert (=> b!2872550 (= e!1817991 e!1817996)))

(assert (=> b!2872550 (= c!464927 ((_ is Star!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872551 () Bool)

(declare-fun res!1191647 () Bool)

(assert (=> b!2872551 (=> (not res!1191647) (not e!1817992))))

(assert (=> b!2872551 (= res!1191647 call!185604)))

(assert (=> b!2872551 (= e!1817993 e!1817992)))

(declare-fun bm!185599 () Bool)

(assert (=> bm!185599 (= call!185603 (validRegex!3517 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872552 () Bool)

(assert (=> b!2872552 (= e!1817996 e!1817994)))

(declare-fun res!1191648 () Bool)

(assert (=> b!2872552 (= res!1191648 (not (nullable!2689 (reg!9068 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> b!2872552 (=> (not res!1191648) (not e!1817994))))

(assert (= (and d!830111 (not res!1191649)) b!2872550))

(assert (= (and b!2872550 c!464927) b!2872552))

(assert (= (and b!2872550 (not c!464927)) b!2872547))

(assert (= (and b!2872552 res!1191648) b!2872549))

(assert (= (and b!2872547 c!464928) b!2872551))

(assert (= (and b!2872547 (not c!464928)) b!2872545))

(assert (= (and b!2872551 res!1191647) b!2872544))

(assert (= (and b!2872545 (not res!1191650)) b!2872546))

(assert (= (and b!2872546 res!1191651) b!2872548))

(assert (= (or b!2872544 b!2872546) bm!185599))

(assert (= (or b!2872551 b!2872548) bm!185598))

(assert (= (or b!2872549 bm!185598) bm!185597))

(declare-fun m!3290745 () Bool)

(assert (=> bm!185597 m!3290745))

(declare-fun m!3290747 () Bool)

(assert (=> bm!185599 m!3290747))

(declare-fun m!3290749 () Bool)

(assert (=> b!2872552 m!3290749))

(assert (=> b!2872229 d!830111))

(declare-fun bs!522187 () Bool)

(declare-fun d!830113 () Bool)

(assert (= bs!522187 (and d!830113 d!830065)))

(declare-fun lambda!107143 () Int)

(assert (=> bs!522187 (= lambda!107143 lambda!107140)))

(assert (=> d!830113 (= (lostCause!831 c!7184) (exists!1161 (exprs!3199 c!7184) lambda!107143))))

(declare-fun bs!522188 () Bool)

(assert (= bs!522188 d!830113))

(declare-fun m!3290751 () Bool)

(assert (=> bs!522188 m!3290751))

(assert (=> start!280360 d!830113))

(declare-fun bs!522189 () Bool)

(declare-fun d!830115 () Bool)

(assert (= bs!522189 (and d!830115 d!830065)))

(declare-fun lambda!107146 () Int)

(assert (=> bs!522189 (not (= lambda!107146 lambda!107140))))

(declare-fun bs!522190 () Bool)

(assert (= bs!522190 (and d!830115 d!830113)))

(assert (=> bs!522190 (not (= lambda!107146 lambda!107143))))

(declare-fun forall!7083 (List!34509 Int) Bool)

(assert (=> d!830115 (= (inv!46434 c!7184) (forall!7083 (exprs!3199 c!7184) lambda!107146))))

(declare-fun bs!522191 () Bool)

(assert (= bs!522191 d!830115))

(declare-fun m!3290753 () Bool)

(assert (=> bs!522191 m!3290753))

(assert (=> start!280360 d!830115))

(declare-fun b!2872557 () Bool)

(declare-fun e!1817999 () Bool)

(declare-fun tp!923499 () Bool)

(declare-fun tp!923500 () Bool)

(assert (=> b!2872557 (= e!1817999 (and tp!923499 tp!923500))))

(assert (=> b!2872228 (= tp!923488 e!1817999)))

(assert (= (and b!2872228 ((_ is Cons!34385) (exprs!3199 c!7184))) b!2872557))

(check-sat (not d!830115) (not d!830103) (not b!2872525) (not d!830101) (not d!830097) (not b!2872460) (not bm!185590) (not b!2872557) (not bm!185589) (not b!2872462) (not b!2872519) (not b!2872445) (not b!2872408) (not bm!185584) (not b!2872446) (not b!2872444) (not d!830099) (not b!2872464) (not bm!185583) (not b!2872459) (not b!2872448) (not d!830109) (not b!2872407) (not b!2872455) (not b!2872458) (not d!830113) (not b!2872450) (not b!2872473) (not b!2872552) (not b!2872410) (not d!830105) (not d!830065) (not b!2872441) (not bm!185597) (not bm!185599) (not b!2872474))
(check-sat)
(get-model)

(declare-fun d!830125 () Bool)

(assert (=> d!830125 (= (isEmpty!18720 (tail!4569 (get!10335 lt!1018175))) ((_ is Nil!34384) (tail!4569 (get!10335 lt!1018175))))))

(assert (=> b!2872441 d!830125))

(declare-fun d!830141 () Bool)

(assert (=> d!830141 (= (tail!4569 (get!10335 lt!1018175)) (t!233551 (get!10335 lt!1018175)))))

(assert (=> b!2872441 d!830141))

(declare-fun d!830143 () Bool)

(assert (=> d!830143 (= (isEmpty!18720 (tail!4569 (v!34535 lt!1018175))) ((_ is Nil!34384) (tail!4569 (v!34535 lt!1018175))))))

(assert (=> b!2872455 d!830143))

(declare-fun d!830145 () Bool)

(assert (=> d!830145 (= (tail!4569 (v!34535 lt!1018175)) (t!233551 (v!34535 lt!1018175)))))

(assert (=> b!2872455 d!830145))

(declare-fun d!830147 () Bool)

(assert (=> d!830147 (= (isEmpty!18720 (get!10335 lt!1018175)) ((_ is Nil!34384) (get!10335 lt!1018175)))))

(assert (=> bm!185583 d!830147))

(declare-fun d!830149 () Bool)

(assert (=> d!830149 (= (isEmpty!18720 (v!34535 lt!1018175)) ((_ is Nil!34384) (v!34535 lt!1018175)))))

(assert (=> d!830103 d!830149))

(assert (=> d!830103 d!830111))

(declare-fun bm!185601 () Bool)

(declare-fun call!185606 () Bool)

(assert (=> bm!185601 (= call!185606 (isEmpty!18720 (tail!4569 (v!34535 lt!1018175))))))

(declare-fun b!2872576 () Bool)

(declare-fun res!1191665 () Bool)

(declare-fun e!1818011 () Bool)

(assert (=> b!2872576 (=> (not res!1191665) (not e!1818011))))

(assert (=> b!2872576 (= res!1191665 (isEmpty!18720 (tail!4569 (tail!4569 (v!34535 lt!1018175)))))))

(declare-fun b!2872577 () Bool)

(declare-fun e!1818009 () Bool)

(declare-fun lt!1018241 () Bool)

(assert (=> b!2872577 (= e!1818009 (= lt!1018241 call!185606))))

(declare-fun d!830151 () Bool)

(assert (=> d!830151 e!1818009))

(declare-fun c!464936 () Bool)

(assert (=> d!830151 (= c!464936 ((_ is EmptyExpr!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun e!1818013 () Bool)

(assert (=> d!830151 (= lt!1018241 e!1818013)))

(declare-fun c!464935 () Bool)

(assert (=> d!830151 (= c!464935 (isEmpty!18720 (tail!4569 (v!34535 lt!1018175))))))

(assert (=> d!830151 (validRegex!3517 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))))

(assert (=> d!830151 (= (matchR!3739 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (tail!4569 (v!34535 lt!1018175))) lt!1018241)))

(declare-fun b!2872578 () Bool)

(declare-fun res!1191661 () Bool)

(declare-fun e!1818012 () Bool)

(assert (=> b!2872578 (=> res!1191661 e!1818012)))

(assert (=> b!2872578 (= res!1191661 (not ((_ is ElementMatch!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))))))

(declare-fun e!1818008 () Bool)

(assert (=> b!2872578 (= e!1818008 e!1818012)))

(declare-fun b!2872579 () Bool)

(declare-fun res!1191662 () Bool)

(declare-fun e!1818010 () Bool)

(assert (=> b!2872579 (=> res!1191662 e!1818010)))

(assert (=> b!2872579 (= res!1191662 (not (isEmpty!18720 (tail!4569 (tail!4569 (v!34535 lt!1018175))))))))

(declare-fun b!2872580 () Bool)

(assert (=> b!2872580 (= e!1818013 (matchR!3739 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175)))) (tail!4569 (tail!4569 (v!34535 lt!1018175)))))))

(declare-fun b!2872581 () Bool)

(assert (=> b!2872581 (= e!1818010 (not (= (head!6344 (tail!4569 (v!34535 lt!1018175))) (c!464816 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))))

(declare-fun b!2872582 () Bool)

(assert (=> b!2872582 (= e!1818009 e!1818008)))

(declare-fun c!464937 () Bool)

(assert (=> b!2872582 (= c!464937 ((_ is EmptyLang!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun b!2872583 () Bool)

(assert (=> b!2872583 (= e!1818011 (= (head!6344 (tail!4569 (v!34535 lt!1018175))) (c!464816 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))))))

(declare-fun b!2872584 () Bool)

(declare-fun res!1191660 () Bool)

(assert (=> b!2872584 (=> res!1191660 e!1818012)))

(assert (=> b!2872584 (= res!1191660 e!1818011)))

(declare-fun res!1191663 () Bool)

(assert (=> b!2872584 (=> (not res!1191663) (not e!1818011))))

(assert (=> b!2872584 (= res!1191663 lt!1018241)))

(declare-fun b!2872585 () Bool)

(assert (=> b!2872585 (= e!1818013 (nullable!2689 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun b!2872586 () Bool)

(declare-fun res!1191666 () Bool)

(assert (=> b!2872586 (=> (not res!1191666) (not e!1818011))))

(assert (=> b!2872586 (= res!1191666 (not call!185606))))

(declare-fun b!2872587 () Bool)

(declare-fun e!1818014 () Bool)

(assert (=> b!2872587 (= e!1818014 e!1818010)))

(declare-fun res!1191664 () Bool)

(assert (=> b!2872587 (=> res!1191664 e!1818010)))

(assert (=> b!2872587 (= res!1191664 call!185606)))

(declare-fun b!2872588 () Bool)

(assert (=> b!2872588 (= e!1818012 e!1818014)))

(declare-fun res!1191667 () Bool)

(assert (=> b!2872588 (=> (not res!1191667) (not e!1818014))))

(assert (=> b!2872588 (= res!1191667 (not lt!1018241))))

(declare-fun b!2872589 () Bool)

(assert (=> b!2872589 (= e!1818008 (not lt!1018241))))

(assert (= (and d!830151 c!464935) b!2872585))

(assert (= (and d!830151 (not c!464935)) b!2872580))

(assert (= (and d!830151 c!464936) b!2872577))

(assert (= (and d!830151 (not c!464936)) b!2872582))

(assert (= (and b!2872582 c!464937) b!2872589))

(assert (= (and b!2872582 (not c!464937)) b!2872578))

(assert (= (and b!2872578 (not res!1191661)) b!2872584))

(assert (= (and b!2872584 res!1191663) b!2872586))

(assert (= (and b!2872586 res!1191666) b!2872576))

(assert (= (and b!2872576 res!1191665) b!2872583))

(assert (= (and b!2872584 (not res!1191660)) b!2872588))

(assert (= (and b!2872588 res!1191667) b!2872587))

(assert (= (and b!2872587 (not res!1191664)) b!2872579))

(assert (= (and b!2872579 (not res!1191662)) b!2872581))

(assert (= (or b!2872577 b!2872586 b!2872587) bm!185601))

(assert (=> b!2872581 m!3290715))

(declare-fun m!3290783 () Bool)

(assert (=> b!2872581 m!3290783))

(assert (=> bm!185601 m!3290715))

(assert (=> bm!185601 m!3290719))

(assert (=> b!2872583 m!3290715))

(assert (=> b!2872583 m!3290783))

(assert (=> b!2872580 m!3290715))

(assert (=> b!2872580 m!3290783))

(assert (=> b!2872580 m!3290713))

(assert (=> b!2872580 m!3290783))

(declare-fun m!3290785 () Bool)

(assert (=> b!2872580 m!3290785))

(assert (=> b!2872580 m!3290715))

(declare-fun m!3290787 () Bool)

(assert (=> b!2872580 m!3290787))

(assert (=> b!2872580 m!3290785))

(assert (=> b!2872580 m!3290787))

(declare-fun m!3290789 () Bool)

(assert (=> b!2872580 m!3290789))

(assert (=> b!2872585 m!3290713))

(declare-fun m!3290791 () Bool)

(assert (=> b!2872585 m!3290791))

(assert (=> b!2872579 m!3290715))

(assert (=> b!2872579 m!3290787))

(assert (=> b!2872579 m!3290787))

(declare-fun m!3290793 () Bool)

(assert (=> b!2872579 m!3290793))

(assert (=> d!830151 m!3290715))

(assert (=> d!830151 m!3290719))

(assert (=> d!830151 m!3290713))

(declare-fun m!3290795 () Bool)

(assert (=> d!830151 m!3290795))

(assert (=> b!2872576 m!3290715))

(assert (=> b!2872576 m!3290787))

(assert (=> b!2872576 m!3290787))

(assert (=> b!2872576 m!3290793))

(assert (=> b!2872459 d!830151))

(declare-fun bm!185622 () Bool)

(declare-fun call!185627 () Regex!8739)

(declare-fun call!185630 () Regex!8739)

(assert (=> bm!185622 (= call!185627 call!185630)))

(declare-fun bm!185623 () Bool)

(declare-fun call!185629 () Regex!8739)

(assert (=> bm!185623 (= call!185630 call!185629)))

(declare-fun bm!185624 () Bool)

(declare-fun call!185628 () Regex!8739)

(declare-fun c!464967 () Bool)

(assert (=> bm!185624 (= call!185628 (derivativeStep!2322 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) (head!6344 (v!34535 lt!1018175))))))

(declare-fun b!2872646 () Bool)

(declare-fun c!464965 () Bool)

(assert (=> b!2872646 (= c!464965 (nullable!2689 (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun e!1818047 () Regex!8739)

(declare-fun e!1818048 () Regex!8739)

(assert (=> b!2872646 (= e!1818047 e!1818048)))

(declare-fun b!2872647 () Bool)

(assert (=> b!2872647 (= e!1818047 (Concat!14060 call!185630 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872648 () Bool)

(declare-fun e!1818046 () Regex!8739)

(declare-fun e!1818049 () Regex!8739)

(assert (=> b!2872648 (= e!1818046 e!1818049)))

(declare-fun c!464963 () Bool)

(assert (=> b!2872648 (= c!464963 ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872649 () Bool)

(assert (=> b!2872649 (= e!1818049 (ite (= (head!6344 (v!34535 lt!1018175)) (c!464816 (h!39805 (exprs!3199 c!7184)))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2872651 () Bool)

(declare-fun e!1818050 () Regex!8739)

(assert (=> b!2872651 (= e!1818050 e!1818047)))

(declare-fun c!464964 () Bool)

(assert (=> b!2872651 (= c!464964 ((_ is Star!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun bm!185625 () Bool)

(assert (=> bm!185625 (= call!185629 (derivativeStep!2322 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (head!6344 (v!34535 lt!1018175))))))

(declare-fun b!2872652 () Bool)

(assert (=> b!2872652 (= c!464967 ((_ is Union!8739) (h!39805 (exprs!3199 c!7184))))))

(assert (=> b!2872652 (= e!1818049 e!1818050)))

(declare-fun b!2872653 () Bool)

(assert (=> b!2872653 (= e!1818050 (Union!8739 call!185628 call!185629))))

(declare-fun b!2872654 () Bool)

(assert (=> b!2872654 (= e!1818048 (Union!8739 (Concat!14060 call!185627 (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) call!185628))))

(declare-fun b!2872655 () Bool)

(assert (=> b!2872655 (= e!1818048 (Union!8739 (Concat!14060 call!185627 (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) EmptyLang!8739))))

(declare-fun b!2872650 () Bool)

(assert (=> b!2872650 (= e!1818046 EmptyLang!8739)))

(declare-fun d!830155 () Bool)

(declare-fun lt!1018247 () Regex!8739)

(assert (=> d!830155 (validRegex!3517 lt!1018247)))

(assert (=> d!830155 (= lt!1018247 e!1818046)))

(declare-fun c!464966 () Bool)

(assert (=> d!830155 (= c!464966 (or ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 c!7184))) ((_ is EmptyLang!8739) (h!39805 (exprs!3199 c!7184)))))))

(assert (=> d!830155 (validRegex!3517 (h!39805 (exprs!3199 c!7184)))))

(assert (=> d!830155 (= (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) lt!1018247)))

(assert (= (and d!830155 c!464966) b!2872650))

(assert (= (and d!830155 (not c!464966)) b!2872648))

(assert (= (and b!2872648 c!464963) b!2872649))

(assert (= (and b!2872648 (not c!464963)) b!2872652))

(assert (= (and b!2872652 c!464967) b!2872653))

(assert (= (and b!2872652 (not c!464967)) b!2872651))

(assert (= (and b!2872651 c!464964) b!2872647))

(assert (= (and b!2872651 (not c!464964)) b!2872646))

(assert (= (and b!2872646 c!464965) b!2872654))

(assert (= (and b!2872646 (not c!464965)) b!2872655))

(assert (= (or b!2872654 b!2872655) bm!185622))

(assert (= (or b!2872647 bm!185622) bm!185623))

(assert (= (or b!2872653 b!2872654) bm!185624))

(assert (= (or b!2872653 bm!185623) bm!185625))

(assert (=> bm!185624 m!3290709))

(declare-fun m!3290809 () Bool)

(assert (=> bm!185624 m!3290809))

(declare-fun m!3290811 () Bool)

(assert (=> b!2872646 m!3290811))

(assert (=> bm!185625 m!3290709))

(declare-fun m!3290813 () Bool)

(assert (=> bm!185625 m!3290813))

(declare-fun m!3290815 () Bool)

(assert (=> d!830155 m!3290815))

(assert (=> d!830155 m!3290561))

(assert (=> b!2872459 d!830155))

(declare-fun d!830161 () Bool)

(assert (=> d!830161 (= (head!6344 (v!34535 lt!1018175)) (h!39804 (v!34535 lt!1018175)))))

(assert (=> b!2872459 d!830161))

(assert (=> b!2872459 d!830145))

(assert (=> b!2872444 d!830125))

(assert (=> b!2872444 d!830141))

(declare-fun d!830163 () Bool)

(declare-fun c!464968 () Bool)

(assert (=> d!830163 (= c!464968 (isEmpty!18720 (tail!4569 (get!10335 lt!1018173))))))

(declare-fun e!1818051 () Bool)

(assert (=> d!830163 (= (matchZipper!481 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) (tail!4569 (get!10335 lt!1018173))) e!1818051)))

(declare-fun b!2872656 () Bool)

(assert (=> b!2872656 (= e!1818051 (nullableZipper!717 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173)))))))

(declare-fun b!2872657 () Bool)

(assert (=> b!2872657 (= e!1818051 (matchZipper!481 (derivationStepZipper!473 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) (head!6344 (tail!4569 (get!10335 lt!1018173)))) (tail!4569 (tail!4569 (get!10335 lt!1018173)))))))

(assert (= (and d!830163 c!464968) b!2872656))

(assert (= (and d!830163 (not c!464968)) b!2872657))

(assert (=> d!830163 m!3290729))

(declare-fun m!3290817 () Bool)

(assert (=> d!830163 m!3290817))

(assert (=> b!2872656 m!3290727))

(declare-fun m!3290819 () Bool)

(assert (=> b!2872656 m!3290819))

(assert (=> b!2872657 m!3290729))

(declare-fun m!3290821 () Bool)

(assert (=> b!2872657 m!3290821))

(assert (=> b!2872657 m!3290727))

(assert (=> b!2872657 m!3290821))

(declare-fun m!3290823 () Bool)

(assert (=> b!2872657 m!3290823))

(assert (=> b!2872657 m!3290729))

(declare-fun m!3290825 () Bool)

(assert (=> b!2872657 m!3290825))

(assert (=> b!2872657 m!3290823))

(assert (=> b!2872657 m!3290825))

(declare-fun m!3290827 () Bool)

(assert (=> b!2872657 m!3290827))

(assert (=> b!2872474 d!830163))

(declare-fun d!830165 () Bool)

(assert (=> d!830165 true))

(declare-fun lambda!107153 () Int)

(declare-fun flatMap!220 ((InoxSet Context!5398) Int) (InoxSet Context!5398))

(assert (=> d!830165 (= (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) (flatMap!220 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) lambda!107153))))

(declare-fun bs!522198 () Bool)

(assert (= bs!522198 d!830165))

(assert (=> bs!522198 m!3290583))

(declare-fun m!3290831 () Bool)

(assert (=> bs!522198 m!3290831))

(assert (=> b!2872474 d!830165))

(declare-fun d!830171 () Bool)

(assert (=> d!830171 (= (head!6344 (get!10335 lt!1018173)) (h!39804 (get!10335 lt!1018173)))))

(assert (=> b!2872474 d!830171))

(declare-fun d!830173 () Bool)

(assert (=> d!830173 (= (tail!4569 (get!10335 lt!1018173)) (t!233551 (get!10335 lt!1018173)))))

(assert (=> b!2872474 d!830173))

(declare-fun d!830175 () Bool)

(declare-fun c!464973 () Bool)

(assert (=> d!830175 (= c!464973 (isEmpty!18720 (get!10335 (getLanguageWitness!430 lt!1018172))))))

(declare-fun e!1818053 () Bool)

(assert (=> d!830175 (= (matchZipper!481 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (get!10335 (getLanguageWitness!430 lt!1018172))) e!1818053)))

(declare-fun b!2872662 () Bool)

(assert (=> b!2872662 (= e!1818053 (nullableZipper!717 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true)))))

(declare-fun b!2872663 () Bool)

(assert (=> b!2872663 (= e!1818053 (matchZipper!481 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 (getLanguageWitness!430 lt!1018172)))) (tail!4569 (get!10335 (getLanguageWitness!430 lt!1018172)))))))

(assert (= (and d!830175 c!464973) b!2872662))

(assert (= (and d!830175 (not c!464973)) b!2872663))

(assert (=> d!830175 m!3290705))

(declare-fun m!3290841 () Bool)

(assert (=> d!830175 m!3290841))

(assert (=> b!2872662 m!3290583))

(assert (=> b!2872662 m!3290723))

(assert (=> b!2872663 m!3290705))

(declare-fun m!3290845 () Bool)

(assert (=> b!2872663 m!3290845))

(assert (=> b!2872663 m!3290583))

(assert (=> b!2872663 m!3290845))

(declare-fun m!3290847 () Bool)

(assert (=> b!2872663 m!3290847))

(assert (=> b!2872663 m!3290705))

(declare-fun m!3290849 () Bool)

(assert (=> b!2872663 m!3290849))

(assert (=> b!2872663 m!3290847))

(assert (=> b!2872663 m!3290849))

(declare-fun m!3290851 () Bool)

(assert (=> b!2872663 m!3290851))

(assert (=> d!830101 d!830175))

(declare-fun d!830181 () Bool)

(assert (=> d!830181 (matchZipper!481 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (get!10335 (getLanguageWitness!430 lt!1018172)))))

(assert (=> d!830181 true))

(declare-fun _$31!148 () Unit!47979)

(assert (=> d!830181 (= (choose!16988 lt!1018172) _$31!148)))

(declare-fun bs!522200 () Bool)

(assert (= bs!522200 d!830181))

(assert (=> bs!522200 m!3290583))

(assert (=> bs!522200 m!3290559))

(assert (=> bs!522200 m!3290559))

(assert (=> bs!522200 m!3290705))

(assert (=> bs!522200 m!3290583))

(assert (=> bs!522200 m!3290705))

(assert (=> bs!522200 m!3290707))

(assert (=> d!830101 d!830181))

(assert (=> d!830101 d!830065))

(declare-fun d!830191 () Bool)

(assert (=> d!830191 (= (get!10335 (getLanguageWitness!430 lt!1018172)) (v!34535 (getLanguageWitness!430 lt!1018172)))))

(assert (=> d!830101 d!830191))

(declare-fun bs!522201 () Bool)

(declare-fun d!830193 () Bool)

(assert (= bs!522201 (and d!830193 d!830065)))

(declare-fun lambda!107154 () Int)

(assert (=> bs!522201 (= lambda!107154 lambda!107140)))

(declare-fun bs!522202 () Bool)

(assert (= bs!522202 (and d!830193 d!830113)))

(assert (=> bs!522202 (= lambda!107154 lambda!107143)))

(declare-fun bs!522203 () Bool)

(assert (= bs!522203 (and d!830193 d!830115)))

(assert (=> bs!522203 (not (= lambda!107154 lambda!107146))))

(assert (=> d!830193 (= (lostCause!831 lt!1018172) (exists!1161 (exprs!3199 lt!1018172) lambda!107154))))

(declare-fun bs!522204 () Bool)

(assert (= bs!522204 d!830193))

(declare-fun m!3290873 () Bool)

(assert (=> bs!522204 m!3290873))

(assert (=> d!830101 d!830193))

(assert (=> b!2872458 d!830143))

(assert (=> b!2872458 d!830145))

(declare-fun d!830195 () Bool)

(declare-fun lambda!107157 () Int)

(declare-fun exists!1162 ((InoxSet Context!5398) Int) Bool)

(assert (=> d!830195 (= (nullableZipper!717 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true)) (exists!1162 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) lambda!107157))))

(declare-fun bs!522205 () Bool)

(assert (= bs!522205 d!830195))

(assert (=> bs!522205 m!3290583))

(declare-fun m!3290875 () Bool)

(assert (=> bs!522205 m!3290875))

(assert (=> b!2872473 d!830195))

(declare-fun b!2872706 () Bool)

(declare-fun e!1818082 () Bool)

(declare-fun call!185640 () Bool)

(assert (=> b!2872706 (= e!1818082 call!185640)))

(declare-fun b!2872707 () Bool)

(declare-fun res!1191691 () Bool)

(declare-fun e!1818085 () Bool)

(assert (=> b!2872707 (=> res!1191691 e!1818085)))

(assert (=> b!2872707 (= res!1191691 (not ((_ is Concat!14060) (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun e!1818083 () Bool)

(assert (=> b!2872707 (= e!1818083 e!1818085)))

(declare-fun bm!185634 () Bool)

(declare-fun c!464991 () Bool)

(declare-fun call!185639 () Bool)

(declare-fun c!464992 () Bool)

(assert (=> bm!185634 (= call!185639 (validRegex!3517 (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun bm!185635 () Bool)

(declare-fun call!185641 () Bool)

(assert (=> bm!185635 (= call!185641 call!185639)))

(declare-fun b!2872708 () Bool)

(declare-fun e!1818080 () Bool)

(assert (=> b!2872708 (= e!1818085 e!1818080)))

(declare-fun res!1191692 () Bool)

(assert (=> b!2872708 (=> (not res!1191692) (not e!1818080))))

(assert (=> b!2872708 (= res!1191692 call!185640)))

(declare-fun d!830197 () Bool)

(declare-fun res!1191690 () Bool)

(declare-fun e!1818081 () Bool)

(assert (=> d!830197 (=> res!1191690 e!1818081)))

(assert (=> d!830197 (= res!1191690 ((_ is ElementMatch!8739) (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))

(assert (=> d!830197 (= (validRegex!3517 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) e!1818081)))

(declare-fun b!2872709 () Bool)

(declare-fun e!1818086 () Bool)

(assert (=> b!2872709 (= e!1818086 e!1818083)))

(assert (=> b!2872709 (= c!464992 ((_ is Union!8739) (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2872710 () Bool)

(assert (=> b!2872710 (= e!1818080 call!185641)))

(declare-fun b!2872711 () Bool)

(declare-fun e!1818084 () Bool)

(assert (=> b!2872711 (= e!1818084 call!185639)))

(declare-fun b!2872712 () Bool)

(assert (=> b!2872712 (= e!1818081 e!1818086)))

(assert (=> b!2872712 (= c!464991 ((_ is Star!8739) (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2872713 () Bool)

(declare-fun res!1191688 () Bool)

(assert (=> b!2872713 (=> (not res!1191688) (not e!1818082))))

(assert (=> b!2872713 (= res!1191688 call!185641)))

(assert (=> b!2872713 (= e!1818083 e!1818082)))

(declare-fun bm!185636 () Bool)

(assert (=> bm!185636 (= call!185640 (validRegex!3517 (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun b!2872714 () Bool)

(assert (=> b!2872714 (= e!1818086 e!1818084)))

(declare-fun res!1191689 () Bool)

(assert (=> b!2872714 (= res!1191689 (not (nullable!2689 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(assert (=> b!2872714 (=> (not res!1191689) (not e!1818084))))

(assert (= (and d!830197 (not res!1191690)) b!2872712))

(assert (= (and b!2872712 c!464991) b!2872714))

(assert (= (and b!2872712 (not c!464991)) b!2872709))

(assert (= (and b!2872714 res!1191689) b!2872711))

(assert (= (and b!2872709 c!464992) b!2872713))

(assert (= (and b!2872709 (not c!464992)) b!2872707))

(assert (= (and b!2872713 res!1191688) b!2872706))

(assert (= (and b!2872707 (not res!1191691)) b!2872708))

(assert (= (and b!2872708 res!1191692) b!2872710))

(assert (= (or b!2872706 b!2872708) bm!185636))

(assert (= (or b!2872713 b!2872710) bm!185635))

(assert (= (or b!2872711 bm!185635) bm!185634))

(declare-fun m!3290877 () Bool)

(assert (=> bm!185634 m!3290877))

(declare-fun m!3290879 () Bool)

(assert (=> bm!185636 m!3290879))

(declare-fun m!3290881 () Bool)

(assert (=> b!2872714 m!3290881))

(assert (=> bm!185597 d!830197))

(assert (=> b!2872462 d!830161))

(declare-fun d!830199 () Bool)

(assert (=> d!830199 (= (head!6344 (get!10335 lt!1018175)) (h!39804 (get!10335 lt!1018175)))))

(assert (=> b!2872446 d!830199))

(declare-fun bm!185637 () Bool)

(declare-fun call!185642 () Bool)

(assert (=> bm!185637 (= call!185642 (isEmpty!18720 (tail!4569 (get!10335 lt!1018175))))))

(declare-fun b!2872719 () Bool)

(declare-fun res!1191700 () Bool)

(declare-fun e!1818092 () Bool)

(assert (=> b!2872719 (=> (not res!1191700) (not e!1818092))))

(assert (=> b!2872719 (= res!1191700 (isEmpty!18720 (tail!4569 (tail!4569 (get!10335 lt!1018175)))))))

(declare-fun b!2872720 () Bool)

(declare-fun e!1818090 () Bool)

(declare-fun lt!1018254 () Bool)

(assert (=> b!2872720 (= e!1818090 (= lt!1018254 call!185642))))

(declare-fun d!830201 () Bool)

(assert (=> d!830201 e!1818090))

(declare-fun c!464995 () Bool)

(assert (=> d!830201 (= c!464995 ((_ is EmptyExpr!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun e!1818094 () Bool)

(assert (=> d!830201 (= lt!1018254 e!1818094)))

(declare-fun c!464994 () Bool)

(assert (=> d!830201 (= c!464994 (isEmpty!18720 (tail!4569 (get!10335 lt!1018175))))))

(assert (=> d!830201 (validRegex!3517 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))))

(assert (=> d!830201 (= (matchR!3739 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (tail!4569 (get!10335 lt!1018175))) lt!1018254)))

(declare-fun b!2872721 () Bool)

(declare-fun res!1191696 () Bool)

(declare-fun e!1818093 () Bool)

(assert (=> b!2872721 (=> res!1191696 e!1818093)))

(assert (=> b!2872721 (= res!1191696 (not ((_ is ElementMatch!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))))))

(declare-fun e!1818089 () Bool)

(assert (=> b!2872721 (= e!1818089 e!1818093)))

(declare-fun b!2872722 () Bool)

(declare-fun res!1191697 () Bool)

(declare-fun e!1818091 () Bool)

(assert (=> b!2872722 (=> res!1191697 e!1818091)))

(assert (=> b!2872722 (= res!1191697 (not (isEmpty!18720 (tail!4569 (tail!4569 (get!10335 lt!1018175))))))))

(declare-fun b!2872723 () Bool)

(assert (=> b!2872723 (= e!1818094 (matchR!3739 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175)))) (tail!4569 (tail!4569 (get!10335 lt!1018175)))))))

(declare-fun b!2872724 () Bool)

(assert (=> b!2872724 (= e!1818091 (not (= (head!6344 (tail!4569 (get!10335 lt!1018175))) (c!464816 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))))

(declare-fun b!2872725 () Bool)

(assert (=> b!2872725 (= e!1818090 e!1818089)))

(declare-fun c!464996 () Bool)

(assert (=> b!2872725 (= c!464996 ((_ is EmptyLang!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun b!2872726 () Bool)

(assert (=> b!2872726 (= e!1818092 (= (head!6344 (tail!4569 (get!10335 lt!1018175))) (c!464816 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))))))

(declare-fun b!2872727 () Bool)

(declare-fun res!1191695 () Bool)

(assert (=> b!2872727 (=> res!1191695 e!1818093)))

(assert (=> b!2872727 (= res!1191695 e!1818092)))

(declare-fun res!1191698 () Bool)

(assert (=> b!2872727 (=> (not res!1191698) (not e!1818092))))

(assert (=> b!2872727 (= res!1191698 lt!1018254)))

(declare-fun b!2872728 () Bool)

(assert (=> b!2872728 (= e!1818094 (nullable!2689 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun b!2872729 () Bool)

(declare-fun res!1191701 () Bool)

(assert (=> b!2872729 (=> (not res!1191701) (not e!1818092))))

(assert (=> b!2872729 (= res!1191701 (not call!185642))))

(declare-fun b!2872730 () Bool)

(declare-fun e!1818095 () Bool)

(assert (=> b!2872730 (= e!1818095 e!1818091)))

(declare-fun res!1191699 () Bool)

(assert (=> b!2872730 (=> res!1191699 e!1818091)))

(assert (=> b!2872730 (= res!1191699 call!185642)))

(declare-fun b!2872731 () Bool)

(assert (=> b!2872731 (= e!1818093 e!1818095)))

(declare-fun res!1191702 () Bool)

(assert (=> b!2872731 (=> (not res!1191702) (not e!1818095))))

(assert (=> b!2872731 (= res!1191702 (not lt!1018254))))

(declare-fun b!2872732 () Bool)

(assert (=> b!2872732 (= e!1818089 (not lt!1018254))))

(assert (= (and d!830201 c!464994) b!2872728))

(assert (= (and d!830201 (not c!464994)) b!2872723))

(assert (= (and d!830201 c!464995) b!2872720))

(assert (= (and d!830201 (not c!464995)) b!2872725))

(assert (= (and b!2872725 c!464996) b!2872732))

(assert (= (and b!2872725 (not c!464996)) b!2872721))

(assert (= (and b!2872721 (not res!1191696)) b!2872727))

(assert (= (and b!2872727 res!1191698) b!2872729))

(assert (= (and b!2872729 res!1191701) b!2872719))

(assert (= (and b!2872719 res!1191700) b!2872726))

(assert (= (and b!2872727 (not res!1191695)) b!2872731))

(assert (= (and b!2872731 res!1191702) b!2872730))

(assert (= (and b!2872730 (not res!1191699)) b!2872722))

(assert (= (and b!2872722 (not res!1191697)) b!2872724))

(assert (= (or b!2872720 b!2872729 b!2872730) bm!185637))

(assert (=> b!2872724 m!3290687))

(declare-fun m!3290897 () Bool)

(assert (=> b!2872724 m!3290897))

(assert (=> bm!185637 m!3290687))

(assert (=> bm!185637 m!3290693))

(assert (=> b!2872726 m!3290687))

(assert (=> b!2872726 m!3290897))

(assert (=> b!2872723 m!3290687))

(assert (=> b!2872723 m!3290897))

(assert (=> b!2872723 m!3290685))

(assert (=> b!2872723 m!3290897))

(declare-fun m!3290899 () Bool)

(assert (=> b!2872723 m!3290899))

(assert (=> b!2872723 m!3290687))

(declare-fun m!3290901 () Bool)

(assert (=> b!2872723 m!3290901))

(assert (=> b!2872723 m!3290899))

(assert (=> b!2872723 m!3290901))

(declare-fun m!3290903 () Bool)

(assert (=> b!2872723 m!3290903))

(assert (=> b!2872728 m!3290685))

(declare-fun m!3290905 () Bool)

(assert (=> b!2872728 m!3290905))

(assert (=> b!2872722 m!3290687))

(assert (=> b!2872722 m!3290901))

(assert (=> b!2872722 m!3290901))

(declare-fun m!3290907 () Bool)

(assert (=> b!2872722 m!3290907))

(assert (=> d!830201 m!3290687))

(assert (=> d!830201 m!3290693))

(assert (=> d!830201 m!3290685))

(declare-fun m!3290909 () Bool)

(assert (=> d!830201 m!3290909))

(assert (=> b!2872719 m!3290687))

(assert (=> b!2872719 m!3290901))

(assert (=> b!2872719 m!3290901))

(assert (=> b!2872719 m!3290907))

(assert (=> b!2872445 d!830201))

(declare-fun bm!185639 () Bool)

(declare-fun call!185644 () Regex!8739)

(declare-fun call!185647 () Regex!8739)

(assert (=> bm!185639 (= call!185644 call!185647)))

(declare-fun bm!185640 () Bool)

(declare-fun call!185646 () Regex!8739)

(assert (=> bm!185640 (= call!185647 call!185646)))

(declare-fun c!465004 () Bool)

(declare-fun call!185645 () Regex!8739)

(declare-fun bm!185641 () Bool)

(assert (=> bm!185641 (= call!185645 (derivativeStep!2322 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) (head!6344 (get!10335 lt!1018175))))))

(declare-fun b!2872747 () Bool)

(declare-fun c!465002 () Bool)

(assert (=> b!2872747 (= c!465002 (nullable!2689 (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun e!1818104 () Regex!8739)

(declare-fun e!1818105 () Regex!8739)

(assert (=> b!2872747 (= e!1818104 e!1818105)))

(declare-fun b!2872748 () Bool)

(assert (=> b!2872748 (= e!1818104 (Concat!14060 call!185647 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872749 () Bool)

(declare-fun e!1818103 () Regex!8739)

(declare-fun e!1818106 () Regex!8739)

(assert (=> b!2872749 (= e!1818103 e!1818106)))

(declare-fun c!465000 () Bool)

(assert (=> b!2872749 (= c!465000 ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872750 () Bool)

(assert (=> b!2872750 (= e!1818106 (ite (= (head!6344 (get!10335 lt!1018175)) (c!464816 (h!39805 (exprs!3199 c!7184)))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2872752 () Bool)

(declare-fun e!1818107 () Regex!8739)

(assert (=> b!2872752 (= e!1818107 e!1818104)))

(declare-fun c!465001 () Bool)

(assert (=> b!2872752 (= c!465001 ((_ is Star!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun bm!185642 () Bool)

(assert (=> bm!185642 (= call!185646 (derivativeStep!2322 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (head!6344 (get!10335 lt!1018175))))))

(declare-fun b!2872753 () Bool)

(assert (=> b!2872753 (= c!465004 ((_ is Union!8739) (h!39805 (exprs!3199 c!7184))))))

(assert (=> b!2872753 (= e!1818106 e!1818107)))

(declare-fun b!2872754 () Bool)

(assert (=> b!2872754 (= e!1818107 (Union!8739 call!185645 call!185646))))

(declare-fun b!2872755 () Bool)

(assert (=> b!2872755 (= e!1818105 (Union!8739 (Concat!14060 call!185644 (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) call!185645))))

(declare-fun b!2872756 () Bool)

(assert (=> b!2872756 (= e!1818105 (Union!8739 (Concat!14060 call!185644 (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) EmptyLang!8739))))

(declare-fun b!2872751 () Bool)

(assert (=> b!2872751 (= e!1818103 EmptyLang!8739)))

(declare-fun d!830207 () Bool)

(declare-fun lt!1018256 () Regex!8739)

(assert (=> d!830207 (validRegex!3517 lt!1018256)))

(assert (=> d!830207 (= lt!1018256 e!1818103)))

(declare-fun c!465003 () Bool)

(assert (=> d!830207 (= c!465003 (or ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 c!7184))) ((_ is EmptyLang!8739) (h!39805 (exprs!3199 c!7184)))))))

(assert (=> d!830207 (validRegex!3517 (h!39805 (exprs!3199 c!7184)))))

(assert (=> d!830207 (= (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) lt!1018256)))

(assert (= (and d!830207 c!465003) b!2872751))

(assert (= (and d!830207 (not c!465003)) b!2872749))

(assert (= (and b!2872749 c!465000) b!2872750))

(assert (= (and b!2872749 (not c!465000)) b!2872753))

(assert (= (and b!2872753 c!465004) b!2872754))

(assert (= (and b!2872753 (not c!465004)) b!2872752))

(assert (= (and b!2872752 c!465001) b!2872748))

(assert (= (and b!2872752 (not c!465001)) b!2872747))

(assert (= (and b!2872747 c!465002) b!2872755))

(assert (= (and b!2872747 (not c!465002)) b!2872756))

(assert (= (or b!2872755 b!2872756) bm!185639))

(assert (= (or b!2872748 bm!185639) bm!185640))

(assert (= (or b!2872754 b!2872755) bm!185641))

(assert (= (or b!2872754 bm!185640) bm!185642))

(assert (=> bm!185641 m!3290681))

(declare-fun m!3290925 () Bool)

(assert (=> bm!185641 m!3290925))

(assert (=> b!2872747 m!3290811))

(assert (=> bm!185642 m!3290681))

(declare-fun m!3290927 () Bool)

(assert (=> bm!185642 m!3290927))

(declare-fun m!3290929 () Bool)

(assert (=> d!830207 m!3290929))

(assert (=> d!830207 m!3290561))

(assert (=> b!2872445 d!830207))

(assert (=> b!2872445 d!830199))

(assert (=> b!2872445 d!830141))

(declare-fun b!2872767 () Bool)

(declare-fun e!1818115 () Option!6414)

(declare-fun call!185653 () Option!6414)

(assert (=> b!2872767 (= e!1818115 call!185653)))

(declare-fun bm!185647 () Bool)

(declare-fun c!465017 () Bool)

(assert (=> bm!185647 (= call!185653 (getLanguageWitness!429 (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2872768 () Bool)

(declare-fun e!1818117 () Option!6414)

(declare-fun e!1818120 () Option!6414)

(assert (=> b!2872768 (= e!1818117 e!1818120)))

(declare-fun c!465013 () Bool)

(assert (=> b!2872768 (= c!465013 ((_ is EmptyLang!8739) (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872769 () Bool)

(declare-fun e!1818118 () Option!6414)

(assert (=> b!2872769 (= e!1818118 None!6413)))

(declare-fun b!2872770 () Bool)

(declare-fun c!465015 () Bool)

(assert (=> b!2872770 (= c!465015 ((_ is ElementMatch!8739) (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun e!1818119 () Option!6414)

(assert (=> b!2872770 (= e!1818120 e!1818119)))

(declare-fun b!2872771 () Bool)

(assert (=> b!2872771 (= e!1818117 (Some!6413 Nil!34384))))

(declare-fun b!2872772 () Bool)

(declare-fun e!1818114 () Option!6414)

(assert (=> b!2872772 (= e!1818114 None!6413)))

(declare-fun d!830211 () Bool)

(declare-fun c!465012 () Bool)

(assert (=> d!830211 (= c!465012 ((_ is EmptyExpr!8739) (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> d!830211 (= (getLanguageWitness!429 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) e!1818117)))

(declare-fun b!2872773 () Bool)

(declare-fun e!1818116 () Option!6414)

(assert (=> b!2872773 (= e!1818116 e!1818114)))

(declare-fun lt!1018259 () Option!6414)

(declare-fun call!185652 () Option!6414)

(assert (=> b!2872773 (= lt!1018259 call!185652)))

(declare-fun c!465011 () Bool)

(assert (=> b!2872773 (= c!465011 ((_ is Some!6413) lt!1018259))))

(declare-fun b!2872774 () Bool)

(assert (=> b!2872774 (= e!1818120 None!6413)))

(declare-fun b!2872775 () Bool)

(declare-fun e!1818113 () Option!6414)

(assert (=> b!2872775 (= e!1818113 (Some!6413 Nil!34384))))

(declare-fun bm!185648 () Bool)

(assert (=> bm!185648 (= call!185652 (getLanguageWitness!429 (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2872776 () Bool)

(declare-fun lt!1018260 () Option!6414)

(assert (=> b!2872776 (= e!1818115 lt!1018260)))

(declare-fun b!2872777 () Bool)

(assert (=> b!2872777 (= e!1818119 e!1818113)))

(declare-fun c!465016 () Bool)

(assert (=> b!2872777 (= c!465016 ((_ is Star!8739) (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872778 () Bool)

(assert (=> b!2872778 (= e!1818116 e!1818115)))

(assert (=> b!2872778 (= lt!1018260 call!185652)))

(declare-fun c!465010 () Bool)

(assert (=> b!2872778 (= c!465010 ((_ is Some!6413) lt!1018260))))

(declare-fun b!2872779 () Bool)

(declare-fun lt!1018258 () Option!6414)

(assert (=> b!2872779 (= e!1818118 (Some!6413 (++!8175 (v!34535 lt!1018259) (v!34535 lt!1018258))))))

(declare-fun b!2872780 () Bool)

(assert (=> b!2872780 (= c!465017 ((_ is Union!8739) (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> b!2872780 (= e!1818113 e!1818116)))

(declare-fun b!2872781 () Bool)

(assert (=> b!2872781 (= e!1818119 (Some!6413 (Cons!34384 (c!464816 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) Nil!34384)))))

(declare-fun b!2872782 () Bool)

(declare-fun c!465014 () Bool)

(assert (=> b!2872782 (= c!465014 ((_ is Some!6413) lt!1018258))))

(assert (=> b!2872782 (= lt!1018258 call!185653)))

(assert (=> b!2872782 (= e!1818114 e!1818118)))

(assert (= (and d!830211 c!465012) b!2872771))

(assert (= (and d!830211 (not c!465012)) b!2872768))

(assert (= (and b!2872768 c!465013) b!2872774))

(assert (= (and b!2872768 (not c!465013)) b!2872770))

(assert (= (and b!2872770 c!465015) b!2872781))

(assert (= (and b!2872770 (not c!465015)) b!2872777))

(assert (= (and b!2872777 c!465016) b!2872775))

(assert (= (and b!2872777 (not c!465016)) b!2872780))

(assert (= (and b!2872780 c!465017) b!2872778))

(assert (= (and b!2872780 (not c!465017)) b!2872773))

(assert (= (and b!2872778 c!465010) b!2872776))

(assert (= (and b!2872778 (not c!465010)) b!2872767))

(assert (= (and b!2872773 c!465011) b!2872782))

(assert (= (and b!2872773 (not c!465011)) b!2872772))

(assert (= (and b!2872782 c!465014) b!2872779))

(assert (= (and b!2872782 (not c!465014)) b!2872769))

(assert (= (or b!2872767 b!2872782) bm!185647))

(assert (= (or b!2872778 b!2872773) bm!185648))

(declare-fun m!3290937 () Bool)

(assert (=> bm!185647 m!3290937))

(declare-fun m!3290942 () Bool)

(assert (=> bm!185648 m!3290942))

(declare-fun m!3290949 () Bool)

(assert (=> b!2872779 m!3290949))

(assert (=> bm!185590 d!830211))

(declare-fun d!830217 () Bool)

(assert (=> d!830217 (= (isEmpty!18720 (get!10335 lt!1018173)) ((_ is Nil!34384) (get!10335 lt!1018173)))))

(assert (=> d!830105 d!830217))

(assert (=> b!2872460 d!830161))

(declare-fun d!830221 () Bool)

(assert (=> d!830221 (= (isEmpty!18719 lt!1018216) (not ((_ is Some!6413) lt!1018216)))))

(assert (=> d!830065 d!830221))

(declare-fun bs!522211 () Bool)

(declare-fun d!830225 () Bool)

(assert (= bs!522211 (and d!830225 d!830065)))

(declare-fun lambda!107161 () Int)

(assert (=> bs!522211 (not (= lambda!107161 lambda!107140))))

(declare-fun bs!522212 () Bool)

(assert (= bs!522212 (and d!830225 d!830113)))

(assert (=> bs!522212 (not (= lambda!107161 lambda!107143))))

(declare-fun bs!522213 () Bool)

(assert (= bs!522213 (and d!830225 d!830115)))

(assert (=> bs!522213 (not (= lambda!107161 lambda!107146))))

(declare-fun bs!522214 () Bool)

(assert (= bs!522214 (and d!830225 d!830193)))

(assert (=> bs!522214 (not (= lambda!107161 lambda!107154))))

(assert (=> d!830225 true))

(declare-fun order!18129 () Int)

(declare-fun dynLambda!14311 (Int Int) Int)

(assert (=> d!830225 (< (dynLambda!14311 order!18129 lambda!107140) (dynLambda!14311 order!18129 lambda!107161))))

(assert (=> d!830225 (= (exists!1161 (exprs!3199 lt!1018172) lambda!107140) (not (forall!7083 (exprs!3199 lt!1018172) lambda!107161)))))

(declare-fun bs!522215 () Bool)

(assert (= bs!522215 d!830225))

(declare-fun m!3290975 () Bool)

(assert (=> bs!522215 m!3290975))

(assert (=> d!830065 d!830225))

(declare-fun e!1818149 () Bool)

(declare-fun b!2872842 () Bool)

(declare-fun lt!1018271 () List!34508)

(assert (=> b!2872842 (= e!1818149 (or (not (= (v!34535 lt!1018234) Nil!34384)) (= lt!1018271 (v!34535 lt!1018235))))))

(declare-fun b!2872841 () Bool)

(declare-fun res!1191725 () Bool)

(assert (=> b!2872841 (=> (not res!1191725) (not e!1818149))))

(declare-fun size!26322 (List!34508) Int)

(assert (=> b!2872841 (= res!1191725 (= (size!26322 lt!1018271) (+ (size!26322 (v!34535 lt!1018235)) (size!26322 (v!34535 lt!1018234)))))))

(declare-fun d!830231 () Bool)

(assert (=> d!830231 e!1818149))

(declare-fun res!1191726 () Bool)

(assert (=> d!830231 (=> (not res!1191726) (not e!1818149))))

(declare-fun content!4701 (List!34508) (InoxSet C!17660))

(assert (=> d!830231 (= res!1191726 (= (content!4701 lt!1018271) ((_ map or) (content!4701 (v!34535 lt!1018235)) (content!4701 (v!34535 lt!1018234)))))))

(declare-fun e!1818148 () List!34508)

(assert (=> d!830231 (= lt!1018271 e!1818148)))

(declare-fun c!465038 () Bool)

(assert (=> d!830231 (= c!465038 ((_ is Nil!34384) (v!34535 lt!1018235)))))

(assert (=> d!830231 (= (++!8175 (v!34535 lt!1018235) (v!34535 lt!1018234)) lt!1018271)))

(declare-fun b!2872839 () Bool)

(assert (=> b!2872839 (= e!1818148 (v!34535 lt!1018234))))

(declare-fun b!2872840 () Bool)

(assert (=> b!2872840 (= e!1818148 (Cons!34384 (h!39804 (v!34535 lt!1018235)) (++!8175 (t!233551 (v!34535 lt!1018235)) (v!34535 lt!1018234))))))

(assert (= (and d!830231 c!465038) b!2872839))

(assert (= (and d!830231 (not c!465038)) b!2872840))

(assert (= (and d!830231 res!1191726) b!2872841))

(assert (= (and b!2872841 res!1191725) b!2872842))

(declare-fun m!3290993 () Bool)

(assert (=> b!2872841 m!3290993))

(declare-fun m!3290995 () Bool)

(assert (=> b!2872841 m!3290995))

(declare-fun m!3290997 () Bool)

(assert (=> b!2872841 m!3290997))

(declare-fun m!3290999 () Bool)

(assert (=> d!830231 m!3290999))

(declare-fun m!3291001 () Bool)

(assert (=> d!830231 m!3291001))

(declare-fun m!3291003 () Bool)

(assert (=> d!830231 m!3291003))

(declare-fun m!3291005 () Bool)

(assert (=> b!2872840 m!3291005))

(assert (=> b!2872519 d!830231))

(assert (=> d!830099 d!830111))

(declare-fun d!830241 () Bool)

(assert (=> d!830241 (= (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))) (v!34535 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))

(assert (=> d!830099 d!830241))

(assert (=> d!830099 d!830107))

(declare-fun bm!185652 () Bool)

(declare-fun call!185657 () Bool)

(assert (=> bm!185652 (= call!185657 (isEmpty!18720 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872843 () Bool)

(declare-fun res!1191732 () Bool)

(declare-fun e!1818153 () Bool)

(assert (=> b!2872843 (=> (not res!1191732) (not e!1818153))))

(assert (=> b!2872843 (= res!1191732 (isEmpty!18720 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2872844 () Bool)

(declare-fun e!1818151 () Bool)

(declare-fun lt!1018272 () Bool)

(assert (=> b!2872844 (= e!1818151 (= lt!1018272 call!185657))))

(declare-fun d!830243 () Bool)

(assert (=> d!830243 e!1818151))

(declare-fun c!465040 () Bool)

(assert (=> d!830243 (= c!465040 ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun e!1818155 () Bool)

(assert (=> d!830243 (= lt!1018272 e!1818155)))

(declare-fun c!465039 () Bool)

(assert (=> d!830243 (= c!465039 (isEmpty!18720 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> d!830243 (validRegex!3517 (h!39805 (exprs!3199 c!7184)))))

(assert (=> d!830243 (= (matchR!3739 (h!39805 (exprs!3199 c!7184)) (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))) lt!1018272)))

(declare-fun b!2872845 () Bool)

(declare-fun res!1191728 () Bool)

(declare-fun e!1818154 () Bool)

(assert (=> b!2872845 (=> res!1191728 e!1818154)))

(assert (=> b!2872845 (= res!1191728 (not ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184)))))))

(declare-fun e!1818150 () Bool)

(assert (=> b!2872845 (= e!1818150 e!1818154)))

(declare-fun b!2872846 () Bool)

(declare-fun res!1191729 () Bool)

(declare-fun e!1818152 () Bool)

(assert (=> b!2872846 (=> res!1191729 e!1818152)))

(assert (=> b!2872846 (= res!1191729 (not (isEmpty!18720 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2872847 () Bool)

(assert (=> b!2872847 (= e!1818155 (matchR!3739 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))) (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2872848 () Bool)

(assert (=> b!2872848 (= e!1818152 (not (= (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))) (c!464816 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872849 () Bool)

(assert (=> b!2872849 (= e!1818151 e!1818150)))

(declare-fun c!465041 () Bool)

(assert (=> b!2872849 (= c!465041 ((_ is EmptyLang!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872850 () Bool)

(assert (=> b!2872850 (= e!1818153 (= (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))) (c!464816 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun b!2872851 () Bool)

(declare-fun res!1191727 () Bool)

(assert (=> b!2872851 (=> res!1191727 e!1818154)))

(assert (=> b!2872851 (= res!1191727 e!1818153)))

(declare-fun res!1191730 () Bool)

(assert (=> b!2872851 (=> (not res!1191730) (not e!1818153))))

(assert (=> b!2872851 (= res!1191730 lt!1018272)))

(declare-fun b!2872852 () Bool)

(assert (=> b!2872852 (= e!1818155 (nullable!2689 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872853 () Bool)

(declare-fun res!1191733 () Bool)

(assert (=> b!2872853 (=> (not res!1191733) (not e!1818153))))

(assert (=> b!2872853 (= res!1191733 (not call!185657))))

(declare-fun b!2872854 () Bool)

(declare-fun e!1818156 () Bool)

(assert (=> b!2872854 (= e!1818156 e!1818152)))

(declare-fun res!1191731 () Bool)

(assert (=> b!2872854 (=> res!1191731 e!1818152)))

(assert (=> b!2872854 (= res!1191731 call!185657)))

(declare-fun b!2872855 () Bool)

(assert (=> b!2872855 (= e!1818154 e!1818156)))

(declare-fun res!1191734 () Bool)

(assert (=> b!2872855 (=> (not res!1191734) (not e!1818156))))

(assert (=> b!2872855 (= res!1191734 (not lt!1018272))))

(declare-fun b!2872856 () Bool)

(assert (=> b!2872856 (= e!1818150 (not lt!1018272))))

(assert (= (and d!830243 c!465039) b!2872852))

(assert (= (and d!830243 (not c!465039)) b!2872847))

(assert (= (and d!830243 c!465040) b!2872844))

(assert (= (and d!830243 (not c!465040)) b!2872849))

(assert (= (and b!2872849 c!465041) b!2872856))

(assert (= (and b!2872849 (not c!465041)) b!2872845))

(assert (= (and b!2872845 (not res!1191728)) b!2872851))

(assert (= (and b!2872851 res!1191730) b!2872853))

(assert (= (and b!2872853 res!1191733) b!2872843))

(assert (= (and b!2872843 res!1191732) b!2872850))

(assert (= (and b!2872851 (not res!1191727)) b!2872855))

(assert (= (and b!2872855 res!1191734) b!2872854))

(assert (= (and b!2872854 (not res!1191731)) b!2872846))

(assert (= (and b!2872846 (not res!1191729)) b!2872848))

(assert (= (or b!2872844 b!2872853 b!2872854) bm!185652))

(assert (=> b!2872848 m!3290695))

(declare-fun m!3291007 () Bool)

(assert (=> b!2872848 m!3291007))

(assert (=> bm!185652 m!3290695))

(declare-fun m!3291009 () Bool)

(assert (=> bm!185652 m!3291009))

(assert (=> b!2872850 m!3290695))

(assert (=> b!2872850 m!3291007))

(assert (=> b!2872847 m!3290695))

(assert (=> b!2872847 m!3291007))

(assert (=> b!2872847 m!3291007))

(declare-fun m!3291011 () Bool)

(assert (=> b!2872847 m!3291011))

(assert (=> b!2872847 m!3290695))

(declare-fun m!3291013 () Bool)

(assert (=> b!2872847 m!3291013))

(assert (=> b!2872847 m!3291011))

(assert (=> b!2872847 m!3291013))

(declare-fun m!3291015 () Bool)

(assert (=> b!2872847 m!3291015))

(assert (=> b!2872852 m!3290691))

(assert (=> b!2872846 m!3290695))

(assert (=> b!2872846 m!3291013))

(assert (=> b!2872846 m!3291013))

(declare-fun m!3291017 () Bool)

(assert (=> b!2872846 m!3291017))

(assert (=> d!830243 m!3290695))

(assert (=> d!830243 m!3291009))

(assert (=> d!830243 m!3290561))

(assert (=> b!2872843 m!3290695))

(assert (=> b!2872843 m!3291013))

(assert (=> b!2872843 m!3291013))

(assert (=> b!2872843 m!3291017))

(assert (=> d!830099 d!830243))

(declare-fun d!830245 () Bool)

(assert (=> d!830245 (matchR!3739 (h!39805 (exprs!3199 c!7184)) (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))

(assert (=> d!830245 true))

(declare-fun _$101!99 () Unit!47979)

(assert (=> d!830245 (= (choose!16987 (h!39805 (exprs!3199 c!7184))) _$101!99)))

(declare-fun bs!522223 () Bool)

(assert (= bs!522223 d!830245))

(assert (=> bs!522223 m!3290557))

(assert (=> bs!522223 m!3290557))

(assert (=> bs!522223 m!3290695))

(assert (=> bs!522223 m!3290695))

(assert (=> bs!522223 m!3290699))

(assert (=> d!830099 d!830245))

(declare-fun d!830251 () Bool)

(declare-fun nullableFct!817 (Regex!8739) Bool)

(assert (=> d!830251 (= (nullable!2689 (h!39805 (exprs!3199 c!7184))) (nullableFct!817 (h!39805 (exprs!3199 c!7184))))))

(declare-fun bs!522224 () Bool)

(assert (= bs!522224 d!830251))

(declare-fun m!3291021 () Bool)

(assert (=> bs!522224 m!3291021))

(assert (=> b!2872464 d!830251))

(declare-fun bs!522225 () Bool)

(declare-fun d!830253 () Bool)

(assert (= bs!522225 (and d!830253 d!830115)))

(declare-fun lambda!107165 () Int)

(assert (=> bs!522225 (not (= lambda!107165 lambda!107146))))

(declare-fun bs!522226 () Bool)

(assert (= bs!522226 (and d!830253 d!830065)))

(assert (=> bs!522226 (= lambda!107165 lambda!107140)))

(declare-fun bs!522227 () Bool)

(assert (= bs!522227 (and d!830253 d!830193)))

(assert (=> bs!522227 (= lambda!107165 lambda!107154)))

(declare-fun bs!522228 () Bool)

(assert (= bs!522228 (and d!830253 d!830225)))

(assert (=> bs!522228 (not (= lambda!107165 lambda!107161))))

(declare-fun bs!522229 () Bool)

(assert (= bs!522229 (and d!830253 d!830113)))

(assert (=> bs!522229 (= lambda!107165 lambda!107143)))

(declare-fun b!2872863 () Bool)

(declare-fun e!1818161 () Option!6414)

(declare-fun lt!1018275 () Option!6414)

(declare-fun lt!1018273 () Option!6414)

(assert (=> b!2872863 (= e!1818161 (Some!6413 (++!8175 (v!34535 lt!1018275) (v!34535 lt!1018273))))))

(declare-fun b!2872864 () Bool)

(declare-fun c!465042 () Bool)

(assert (=> b!2872864 (= c!465042 ((_ is Some!6413) lt!1018273))))

(assert (=> b!2872864 (= lt!1018273 (getLanguageWitness!430 (Context!5399 (t!233552 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172))))))))))

(declare-fun e!1818163 () Option!6414)

(assert (=> b!2872864 (= e!1818163 e!1818161)))

(declare-fun b!2872865 () Bool)

(assert (=> b!2872865 (= e!1818163 None!6413)))

(declare-fun b!2872866 () Bool)

(declare-fun e!1818162 () Option!6414)

(assert (=> b!2872866 (= e!1818162 e!1818163)))

(assert (=> b!2872866 (= lt!1018275 (getLanguageWitness!429 (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))

(declare-fun c!465044 () Bool)

(assert (=> b!2872866 (= c!465044 ((_ is Some!6413) lt!1018275))))

(declare-fun lt!1018274 () Option!6414)

(assert (=> d!830253 (= (isEmpty!18719 lt!1018274) (exists!1161 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))) lambda!107165))))

(assert (=> d!830253 (= lt!1018274 e!1818162)))

(declare-fun c!465043 () Bool)

(assert (=> d!830253 (= c!465043 ((_ is Cons!34385) (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172))))))))

(assert (=> d!830253 (= (getLanguageWitness!430 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))) lt!1018274)))

(declare-fun b!2872867 () Bool)

(assert (=> b!2872867 (= e!1818161 None!6413)))

(declare-fun b!2872868 () Bool)

(assert (=> b!2872868 (= e!1818162 (Some!6413 Nil!34384))))

(assert (= (and d!830253 c!465043) b!2872866))

(assert (= (and d!830253 (not c!465043)) b!2872868))

(assert (= (and b!2872866 c!465044) b!2872864))

(assert (= (and b!2872866 (not c!465044)) b!2872865))

(assert (= (and b!2872864 c!465042) b!2872863))

(assert (= (and b!2872864 (not c!465042)) b!2872867))

(declare-fun m!3291027 () Bool)

(assert (=> b!2872863 m!3291027))

(declare-fun m!3291029 () Bool)

(assert (=> b!2872864 m!3291029))

(declare-fun m!3291031 () Bool)

(assert (=> b!2872866 m!3291031))

(declare-fun m!3291033 () Bool)

(assert (=> d!830253 m!3291033))

(declare-fun m!3291035 () Bool)

(assert (=> d!830253 m!3291035))

(assert (=> b!2872408 d!830253))

(assert (=> b!2872448 d!830199))

(declare-fun e!1818171 () Bool)

(declare-fun b!2872880 () Bool)

(declare-fun lt!1018276 () List!34508)

(assert (=> b!2872880 (= e!1818171 (or (not (= (v!34535 lt!1018215) Nil!34384)) (= lt!1018276 (v!34535 lt!1018217))))))

(declare-fun b!2872879 () Bool)

(declare-fun res!1191743 () Bool)

(assert (=> b!2872879 (=> (not res!1191743) (not e!1818171))))

(assert (=> b!2872879 (= res!1191743 (= (size!26322 lt!1018276) (+ (size!26322 (v!34535 lt!1018217)) (size!26322 (v!34535 lt!1018215)))))))

(declare-fun d!830257 () Bool)

(assert (=> d!830257 e!1818171))

(declare-fun res!1191746 () Bool)

(assert (=> d!830257 (=> (not res!1191746) (not e!1818171))))

(assert (=> d!830257 (= res!1191746 (= (content!4701 lt!1018276) ((_ map or) (content!4701 (v!34535 lt!1018217)) (content!4701 (v!34535 lt!1018215)))))))

(declare-fun e!1818170 () List!34508)

(assert (=> d!830257 (= lt!1018276 e!1818170)))

(declare-fun c!465045 () Bool)

(assert (=> d!830257 (= c!465045 ((_ is Nil!34384) (v!34535 lt!1018217)))))

(assert (=> d!830257 (= (++!8175 (v!34535 lt!1018217) (v!34535 lt!1018215)) lt!1018276)))

(declare-fun b!2872875 () Bool)

(assert (=> b!2872875 (= e!1818170 (v!34535 lt!1018215))))

(declare-fun b!2872878 () Bool)

(assert (=> b!2872878 (= e!1818170 (Cons!34384 (h!39804 (v!34535 lt!1018217)) (++!8175 (t!233551 (v!34535 lt!1018217)) (v!34535 lt!1018215))))))

(assert (= (and d!830257 c!465045) b!2872875))

(assert (= (and d!830257 (not c!465045)) b!2872878))

(assert (= (and d!830257 res!1191746) b!2872879))

(assert (= (and b!2872879 res!1191743) b!2872880))

(declare-fun m!3291037 () Bool)

(assert (=> b!2872879 m!3291037))

(declare-fun m!3291039 () Bool)

(assert (=> b!2872879 m!3291039))

(declare-fun m!3291041 () Bool)

(assert (=> b!2872879 m!3291041))

(declare-fun m!3291043 () Bool)

(assert (=> d!830257 m!3291043))

(declare-fun m!3291045 () Bool)

(assert (=> d!830257 m!3291045))

(declare-fun m!3291047 () Bool)

(assert (=> d!830257 m!3291047))

(declare-fun m!3291049 () Bool)

(assert (=> b!2872878 m!3291049))

(assert (=> b!2872407 d!830257))

(declare-fun d!830259 () Bool)

(declare-fun res!1191753 () Bool)

(declare-fun e!1818189 () Bool)

(assert (=> d!830259 (=> res!1191753 e!1818189)))

(assert (=> d!830259 (= res!1191753 ((_ is Nil!34385) (exprs!3199 c!7184)))))

(assert (=> d!830259 (= (forall!7083 (exprs!3199 c!7184) lambda!107146) e!1818189)))

(declare-fun b!2872904 () Bool)

(declare-fun e!1818190 () Bool)

(assert (=> b!2872904 (= e!1818189 e!1818190)))

(declare-fun res!1191754 () Bool)

(assert (=> b!2872904 (=> (not res!1191754) (not e!1818190))))

(declare-fun dynLambda!14312 (Int Regex!8739) Bool)

(assert (=> b!2872904 (= res!1191754 (dynLambda!14312 lambda!107146 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2872905 () Bool)

(assert (=> b!2872905 (= e!1818190 (forall!7083 (t!233552 (exprs!3199 c!7184)) lambda!107146))))

(assert (= (and d!830259 (not res!1191753)) b!2872904))

(assert (= (and b!2872904 res!1191754) b!2872905))

(declare-fun b_lambda!86053 () Bool)

(assert (=> (not b_lambda!86053) (not b!2872904)))

(declare-fun m!3291063 () Bool)

(assert (=> b!2872904 m!3291063))

(declare-fun m!3291065 () Bool)

(assert (=> b!2872905 m!3291065))

(assert (=> d!830115 d!830259))

(declare-fun d!830265 () Bool)

(assert (=> d!830265 (= (nullable!2689 (reg!9068 (h!39805 (exprs!3199 c!7184)))) (nullableFct!817 (reg!9068 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun bs!522230 () Bool)

(assert (= bs!522230 d!830265))

(declare-fun m!3291067 () Bool)

(assert (=> bs!522230 m!3291067))

(assert (=> b!2872552 d!830265))

(assert (=> d!830097 d!830147))

(assert (=> d!830097 d!830111))

(declare-fun b!2872906 () Bool)

(declare-fun e!1818193 () Option!6414)

(declare-fun call!185661 () Option!6414)

(assert (=> b!2872906 (= e!1818193 call!185661)))

(declare-fun bm!185655 () Bool)

(declare-fun c!465061 () Bool)

(assert (=> bm!185655 (= call!185661 (getLanguageWitness!429 (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(declare-fun b!2872907 () Bool)

(declare-fun e!1818195 () Option!6414)

(declare-fun e!1818198 () Option!6414)

(assert (=> b!2872907 (= e!1818195 e!1818198)))

(declare-fun c!465057 () Bool)

(assert (=> b!2872907 (= c!465057 ((_ is EmptyLang!8739) (h!39805 (exprs!3199 lt!1018172))))))

(declare-fun b!2872908 () Bool)

(declare-fun e!1818196 () Option!6414)

(assert (=> b!2872908 (= e!1818196 None!6413)))

(declare-fun b!2872909 () Bool)

(declare-fun c!465059 () Bool)

(assert (=> b!2872909 (= c!465059 ((_ is ElementMatch!8739) (h!39805 (exprs!3199 lt!1018172))))))

(declare-fun e!1818197 () Option!6414)

(assert (=> b!2872909 (= e!1818198 e!1818197)))

(declare-fun b!2872910 () Bool)

(assert (=> b!2872910 (= e!1818195 (Some!6413 Nil!34384))))

(declare-fun b!2872911 () Bool)

(declare-fun e!1818192 () Option!6414)

(assert (=> b!2872911 (= e!1818192 None!6413)))

(declare-fun d!830267 () Bool)

(declare-fun c!465056 () Bool)

(assert (=> d!830267 (= c!465056 ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 lt!1018172))))))

(assert (=> d!830267 (= (getLanguageWitness!429 (h!39805 (exprs!3199 lt!1018172))) e!1818195)))

(declare-fun b!2872912 () Bool)

(declare-fun e!1818194 () Option!6414)

(assert (=> b!2872912 (= e!1818194 e!1818192)))

(declare-fun lt!1018281 () Option!6414)

(declare-fun call!185660 () Option!6414)

(assert (=> b!2872912 (= lt!1018281 call!185660)))

(declare-fun c!465055 () Bool)

(assert (=> b!2872912 (= c!465055 ((_ is Some!6413) lt!1018281))))

(declare-fun b!2872913 () Bool)

(assert (=> b!2872913 (= e!1818198 None!6413)))

(declare-fun b!2872914 () Bool)

(declare-fun e!1818191 () Option!6414)

(assert (=> b!2872914 (= e!1818191 (Some!6413 Nil!34384))))

(declare-fun bm!185656 () Bool)

(assert (=> bm!185656 (= call!185660 (getLanguageWitness!429 (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(declare-fun b!2872915 () Bool)

(declare-fun lt!1018282 () Option!6414)

(assert (=> b!2872915 (= e!1818193 lt!1018282)))

(declare-fun b!2872916 () Bool)

(assert (=> b!2872916 (= e!1818197 e!1818191)))

(declare-fun c!465060 () Bool)

(assert (=> b!2872916 (= c!465060 ((_ is Star!8739) (h!39805 (exprs!3199 lt!1018172))))))

(declare-fun b!2872917 () Bool)

(assert (=> b!2872917 (= e!1818194 e!1818193)))

(assert (=> b!2872917 (= lt!1018282 call!185660)))

(declare-fun c!465054 () Bool)

(assert (=> b!2872917 (= c!465054 ((_ is Some!6413) lt!1018282))))

(declare-fun b!2872918 () Bool)

(declare-fun lt!1018280 () Option!6414)

(assert (=> b!2872918 (= e!1818196 (Some!6413 (++!8175 (v!34535 lt!1018281) (v!34535 lt!1018280))))))

(declare-fun b!2872919 () Bool)

(assert (=> b!2872919 (= c!465061 ((_ is Union!8739) (h!39805 (exprs!3199 lt!1018172))))))

(assert (=> b!2872919 (= e!1818191 e!1818194)))

(declare-fun b!2872920 () Bool)

(assert (=> b!2872920 (= e!1818197 (Some!6413 (Cons!34384 (c!464816 (h!39805 (exprs!3199 lt!1018172))) Nil!34384)))))

(declare-fun b!2872921 () Bool)

(declare-fun c!465058 () Bool)

(assert (=> b!2872921 (= c!465058 ((_ is Some!6413) lt!1018280))))

(assert (=> b!2872921 (= lt!1018280 call!185661)))

(assert (=> b!2872921 (= e!1818192 e!1818196)))

(assert (= (and d!830267 c!465056) b!2872910))

(assert (= (and d!830267 (not c!465056)) b!2872907))

(assert (= (and b!2872907 c!465057) b!2872913))

(assert (= (and b!2872907 (not c!465057)) b!2872909))

(assert (= (and b!2872909 c!465059) b!2872920))

(assert (= (and b!2872909 (not c!465059)) b!2872916))

(assert (= (and b!2872916 c!465060) b!2872914))

(assert (= (and b!2872916 (not c!465060)) b!2872919))

(assert (= (and b!2872919 c!465061) b!2872917))

(assert (= (and b!2872919 (not c!465061)) b!2872912))

(assert (= (and b!2872917 c!465054) b!2872915))

(assert (= (and b!2872917 (not c!465054)) b!2872906))

(assert (= (and b!2872912 c!465055) b!2872921))

(assert (= (and b!2872912 (not c!465055)) b!2872911))

(assert (= (and b!2872921 c!465058) b!2872918))

(assert (= (and b!2872921 (not c!465058)) b!2872908))

(assert (= (or b!2872906 b!2872921) bm!185655))

(assert (= (or b!2872917 b!2872912) bm!185656))

(declare-fun m!3291069 () Bool)

(assert (=> bm!185655 m!3291069))

(declare-fun m!3291071 () Bool)

(assert (=> bm!185656 m!3291071))

(declare-fun m!3291073 () Bool)

(assert (=> b!2872918 m!3291073))

(assert (=> b!2872410 d!830267))

(assert (=> b!2872450 d!830251))

(declare-fun b!2872922 () Bool)

(declare-fun e!1818201 () Bool)

(declare-fun call!185663 () Bool)

(assert (=> b!2872922 (= e!1818201 call!185663)))

(declare-fun b!2872923 () Bool)

(declare-fun res!1191758 () Bool)

(declare-fun e!1818204 () Bool)

(assert (=> b!2872923 (=> res!1191758 e!1818204)))

(assert (=> b!2872923 (= res!1191758 (not ((_ is Concat!14060) (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun e!1818202 () Bool)

(assert (=> b!2872923 (= e!1818202 e!1818204)))

(declare-fun bm!185657 () Bool)

(declare-fun c!465065 () Bool)

(declare-fun call!185662 () Bool)

(declare-fun c!465064 () Bool)

(assert (=> bm!185657 (= call!185662 (validRegex!3517 (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun bm!185658 () Bool)

(declare-fun call!185664 () Bool)

(assert (=> bm!185658 (= call!185664 call!185662)))

(declare-fun b!2872924 () Bool)

(declare-fun e!1818199 () Bool)

(assert (=> b!2872924 (= e!1818204 e!1818199)))

(declare-fun res!1191759 () Bool)

(assert (=> b!2872924 (=> (not res!1191759) (not e!1818199))))

(assert (=> b!2872924 (= res!1191759 call!185663)))

(declare-fun d!830269 () Bool)

(declare-fun res!1191757 () Bool)

(declare-fun e!1818200 () Bool)

(assert (=> d!830269 (=> res!1191757 e!1818200)))

(assert (=> d!830269 (= res!1191757 ((_ is ElementMatch!8739) (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> d!830269 (= (validRegex!3517 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) e!1818200)))

(declare-fun b!2872925 () Bool)

(declare-fun e!1818205 () Bool)

(assert (=> b!2872925 (= e!1818205 e!1818202)))

(assert (=> b!2872925 (= c!465065 ((_ is Union!8739) (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872926 () Bool)

(assert (=> b!2872926 (= e!1818199 call!185664)))

(declare-fun b!2872927 () Bool)

(declare-fun e!1818203 () Bool)

(assert (=> b!2872927 (= e!1818203 call!185662)))

(declare-fun b!2872928 () Bool)

(assert (=> b!2872928 (= e!1818200 e!1818205)))

(assert (=> b!2872928 (= c!465064 ((_ is Star!8739) (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872929 () Bool)

(declare-fun res!1191755 () Bool)

(assert (=> b!2872929 (=> (not res!1191755) (not e!1818201))))

(assert (=> b!2872929 (= res!1191755 call!185664)))

(assert (=> b!2872929 (= e!1818202 e!1818201)))

(declare-fun bm!185659 () Bool)

(assert (=> bm!185659 (= call!185663 (validRegex!3517 (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2872930 () Bool)

(assert (=> b!2872930 (= e!1818205 e!1818203)))

(declare-fun res!1191756 () Bool)

(assert (=> b!2872930 (= res!1191756 (not (nullable!2689 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> b!2872930 (=> (not res!1191756) (not e!1818203))))

(assert (= (and d!830269 (not res!1191757)) b!2872928))

(assert (= (and b!2872928 c!465064) b!2872930))

(assert (= (and b!2872928 (not c!465064)) b!2872925))

(assert (= (and b!2872930 res!1191756) b!2872927))

(assert (= (and b!2872925 c!465065) b!2872929))

(assert (= (and b!2872925 (not c!465065)) b!2872923))

(assert (= (and b!2872929 res!1191755) b!2872922))

(assert (= (and b!2872923 (not res!1191758)) b!2872924))

(assert (= (and b!2872924 res!1191759) b!2872926))

(assert (= (or b!2872922 b!2872924) bm!185659))

(assert (= (or b!2872929 b!2872926) bm!185658))

(assert (= (or b!2872927 bm!185658) bm!185657))

(declare-fun m!3291077 () Bool)

(assert (=> bm!185657 m!3291077))

(declare-fun m!3291079 () Bool)

(assert (=> bm!185659 m!3291079))

(declare-fun m!3291081 () Bool)

(assert (=> b!2872930 m!3291081))

(assert (=> bm!185599 d!830269))

(declare-fun b!2872931 () Bool)

(declare-fun e!1818208 () Option!6414)

(declare-fun call!185666 () Option!6414)

(assert (=> b!2872931 (= e!1818208 call!185666)))

(declare-fun bm!185660 () Bool)

(declare-fun c!465073 () Bool)

(assert (=> bm!185660 (= call!185666 (getLanguageWitness!429 (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2872932 () Bool)

(declare-fun e!1818210 () Option!6414)

(declare-fun e!1818213 () Option!6414)

(assert (=> b!2872932 (= e!1818210 e!1818213)))

(declare-fun c!465069 () Bool)

(assert (=> b!2872932 (= c!465069 ((_ is EmptyLang!8739) (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872933 () Bool)

(declare-fun e!1818211 () Option!6414)

(assert (=> b!2872933 (= e!1818211 None!6413)))

(declare-fun b!2872934 () Bool)

(declare-fun c!465071 () Bool)

(assert (=> b!2872934 (= c!465071 ((_ is ElementMatch!8739) (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun e!1818212 () Option!6414)

(assert (=> b!2872934 (= e!1818213 e!1818212)))

(declare-fun b!2872935 () Bool)

(assert (=> b!2872935 (= e!1818210 (Some!6413 Nil!34384))))

(declare-fun b!2872936 () Bool)

(declare-fun e!1818207 () Option!6414)

(assert (=> b!2872936 (= e!1818207 None!6413)))

(declare-fun d!830273 () Bool)

(declare-fun c!465068 () Bool)

(assert (=> d!830273 (= c!465068 ((_ is EmptyExpr!8739) (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> d!830273 (= (getLanguageWitness!429 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) e!1818210)))

(declare-fun b!2872937 () Bool)

(declare-fun e!1818209 () Option!6414)

(assert (=> b!2872937 (= e!1818209 e!1818207)))

(declare-fun lt!1018284 () Option!6414)

(declare-fun call!185665 () Option!6414)

(assert (=> b!2872937 (= lt!1018284 call!185665)))

(declare-fun c!465067 () Bool)

(assert (=> b!2872937 (= c!465067 ((_ is Some!6413) lt!1018284))))

(declare-fun b!2872938 () Bool)

(assert (=> b!2872938 (= e!1818213 None!6413)))

(declare-fun b!2872939 () Bool)

(declare-fun e!1818206 () Option!6414)

(assert (=> b!2872939 (= e!1818206 (Some!6413 Nil!34384))))

(declare-fun bm!185661 () Bool)

(assert (=> bm!185661 (= call!185665 (getLanguageWitness!429 (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2872940 () Bool)

(declare-fun lt!1018285 () Option!6414)

(assert (=> b!2872940 (= e!1818208 lt!1018285)))

(declare-fun b!2872941 () Bool)

(assert (=> b!2872941 (= e!1818212 e!1818206)))

(declare-fun c!465072 () Bool)

(assert (=> b!2872941 (= c!465072 ((_ is Star!8739) (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2872942 () Bool)

(assert (=> b!2872942 (= e!1818209 e!1818208)))

(assert (=> b!2872942 (= lt!1018285 call!185665)))

(declare-fun c!465066 () Bool)

(assert (=> b!2872942 (= c!465066 ((_ is Some!6413) lt!1018285))))

(declare-fun b!2872943 () Bool)

(declare-fun lt!1018283 () Option!6414)

(assert (=> b!2872943 (= e!1818211 (Some!6413 (++!8175 (v!34535 lt!1018284) (v!34535 lt!1018283))))))

(declare-fun b!2872944 () Bool)

(assert (=> b!2872944 (= c!465073 ((_ is Union!8739) (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> b!2872944 (= e!1818206 e!1818209)))

(declare-fun b!2872945 () Bool)

(assert (=> b!2872945 (= e!1818212 (Some!6413 (Cons!34384 (c!464816 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) Nil!34384)))))

(declare-fun b!2872946 () Bool)

(declare-fun c!465070 () Bool)

(assert (=> b!2872946 (= c!465070 ((_ is Some!6413) lt!1018283))))

(assert (=> b!2872946 (= lt!1018283 call!185666)))

(assert (=> b!2872946 (= e!1818207 e!1818211)))

(assert (= (and d!830273 c!465068) b!2872935))

(assert (= (and d!830273 (not c!465068)) b!2872932))

(assert (= (and b!2872932 c!465069) b!2872938))

(assert (= (and b!2872932 (not c!465069)) b!2872934))

(assert (= (and b!2872934 c!465071) b!2872945))

(assert (= (and b!2872934 (not c!465071)) b!2872941))

(assert (= (and b!2872941 c!465072) b!2872939))

(assert (= (and b!2872941 (not c!465072)) b!2872944))

(assert (= (and b!2872944 c!465073) b!2872942))

(assert (= (and b!2872944 (not c!465073)) b!2872937))

(assert (= (and b!2872942 c!465066) b!2872940))

(assert (= (and b!2872942 (not c!465066)) b!2872931))

(assert (= (and b!2872937 c!465067) b!2872946))

(assert (= (and b!2872937 (not c!465067)) b!2872936))

(assert (= (and b!2872946 c!465070) b!2872943))

(assert (= (and b!2872946 (not c!465070)) b!2872933))

(assert (= (or b!2872931 b!2872946) bm!185660))

(assert (= (or b!2872942 b!2872937) bm!185661))

(declare-fun m!3291083 () Bool)

(assert (=> bm!185660 m!3291083))

(declare-fun m!3291085 () Bool)

(assert (=> bm!185661 m!3291085))

(declare-fun m!3291087 () Bool)

(assert (=> b!2872943 m!3291087))

(assert (=> bm!185589 d!830273))

(declare-fun d!830277 () Bool)

(declare-fun c!465076 () Bool)

(assert (=> d!830277 (= c!465076 ((_ is Nil!34386) lt!1018239))))

(declare-fun e!1818219 () (InoxSet Context!5398))

(assert (=> d!830277 (= (content!4699 lt!1018239) e!1818219)))

(declare-fun b!2872965 () Bool)

(assert (=> b!2872965 (= e!1818219 ((as const (Array Context!5398 Bool)) false))))

(declare-fun b!2872966 () Bool)

(assert (=> b!2872966 (= e!1818219 ((_ map or) (store ((as const (Array Context!5398 Bool)) false) (h!39806 lt!1018239) true) (content!4699 (t!233553 lt!1018239))))))

(assert (= (and d!830277 c!465076) b!2872965))

(assert (= (and d!830277 (not c!465076)) b!2872966))

(declare-fun m!3291091 () Bool)

(assert (=> b!2872966 m!3291091))

(declare-fun m!3291093 () Bool)

(assert (=> b!2872966 m!3291093))

(assert (=> b!2872525 d!830277))

(assert (=> bm!185584 d!830149))

(declare-fun d!830279 () Bool)

(declare-fun res!1191764 () Bool)

(declare-fun e!1818225 () Bool)

(assert (=> d!830279 (=> res!1191764 e!1818225)))

(assert (=> d!830279 (= res!1191764 ((_ is Nil!34386) lt!1018239))))

(assert (=> d!830279 (= (noDuplicate!580 lt!1018239) e!1818225)))

(declare-fun b!2872972 () Bool)

(declare-fun e!1818226 () Bool)

(assert (=> b!2872972 (= e!1818225 e!1818226)))

(declare-fun res!1191765 () Bool)

(assert (=> b!2872972 (=> (not res!1191765) (not e!1818226))))

(declare-fun contains!6125 (List!34510 Context!5398) Bool)

(assert (=> b!2872972 (= res!1191765 (not (contains!6125 (t!233553 lt!1018239) (h!39806 lt!1018239))))))

(declare-fun b!2872973 () Bool)

(assert (=> b!2872973 (= e!1818226 (noDuplicate!580 (t!233553 lt!1018239)))))

(assert (= (and d!830279 (not res!1191764)) b!2872972))

(assert (= (and b!2872972 res!1191765) b!2872973))

(declare-fun m!3291095 () Bool)

(assert (=> b!2872972 m!3291095))

(declare-fun m!3291097 () Bool)

(assert (=> b!2872973 m!3291097))

(assert (=> d!830109 d!830279))

(declare-fun d!830283 () Bool)

(declare-fun e!1818233 () Bool)

(assert (=> d!830283 e!1818233))

(declare-fun res!1191770 () Bool)

(assert (=> d!830283 (=> (not res!1191770) (not e!1818233))))

(declare-fun res!1191771 () List!34510)

(assert (=> d!830283 (= res!1191770 (noDuplicate!580 res!1191771))))

(declare-fun e!1818235 () Bool)

(assert (=> d!830283 e!1818235))

(assert (=> d!830283 (= (choose!16989 (store ((as const (Array Context!5398 Bool)) false) lt!1018176 true)) res!1191771)))

(declare-fun b!2872981 () Bool)

(declare-fun e!1818234 () Bool)

(declare-fun tp!923528 () Bool)

(assert (=> b!2872981 (= e!1818234 tp!923528)))

(declare-fun tp!923529 () Bool)

(declare-fun b!2872980 () Bool)

(assert (=> b!2872980 (= e!1818235 (and (inv!46434 (h!39806 res!1191771)) e!1818234 tp!923529))))

(declare-fun b!2872982 () Bool)

(assert (=> b!2872982 (= e!1818233 (= (content!4699 res!1191771) (store ((as const (Array Context!5398 Bool)) false) lt!1018176 true)))))

(assert (= b!2872980 b!2872981))

(assert (= (and d!830283 ((_ is Cons!34386) res!1191771)) b!2872980))

(assert (= (and d!830283 res!1191770) b!2872982))

(declare-fun m!3291099 () Bool)

(assert (=> d!830283 m!3291099))

(declare-fun m!3291101 () Bool)

(assert (=> b!2872980 m!3291101))

(declare-fun m!3291103 () Bool)

(assert (=> b!2872982 m!3291103))

(assert (=> d!830109 d!830283))

(declare-fun bs!522240 () Bool)

(declare-fun d!830285 () Bool)

(assert (= bs!522240 (and d!830285 d!830115)))

(declare-fun lambda!107170 () Int)

(assert (=> bs!522240 (not (= lambda!107170 lambda!107146))))

(declare-fun bs!522241 () Bool)

(assert (= bs!522241 (and d!830285 d!830193)))

(assert (=> bs!522241 (not (= lambda!107170 lambda!107154))))

(declare-fun bs!522242 () Bool)

(assert (= bs!522242 (and d!830285 d!830225)))

(assert (=> bs!522242 (= (= lambda!107143 lambda!107140) (= lambda!107170 lambda!107161))))

(declare-fun bs!522243 () Bool)

(assert (= bs!522243 (and d!830285 d!830113)))

(assert (=> bs!522243 (not (= lambda!107170 lambda!107143))))

(declare-fun bs!522244 () Bool)

(assert (= bs!522244 (and d!830285 d!830253)))

(assert (=> bs!522244 (not (= lambda!107170 lambda!107165))))

(declare-fun bs!522245 () Bool)

(assert (= bs!522245 (and d!830285 d!830065)))

(assert (=> bs!522245 (not (= lambda!107170 lambda!107140))))

(assert (=> d!830285 true))

(assert (=> d!830285 (< (dynLambda!14311 order!18129 lambda!107143) (dynLambda!14311 order!18129 lambda!107170))))

(assert (=> d!830285 (= (exists!1161 (exprs!3199 c!7184) lambda!107143) (not (forall!7083 (exprs!3199 c!7184) lambda!107170)))))

(declare-fun bs!522246 () Bool)

(assert (= bs!522246 d!830285))

(declare-fun m!3291105 () Bool)

(assert (=> bs!522246 m!3291105))

(assert (=> d!830113 d!830285))

(declare-fun b!2872994 () Bool)

(declare-fun e!1818238 () Bool)

(declare-fun tp!923544 () Bool)

(declare-fun tp!923540 () Bool)

(assert (=> b!2872994 (= e!1818238 (and tp!923544 tp!923540))))

(assert (=> b!2872557 (= tp!923499 e!1818238)))

(declare-fun b!2872993 () Bool)

(declare-fun tp_is_empty!15075 () Bool)

(assert (=> b!2872993 (= e!1818238 tp_is_empty!15075)))

(declare-fun b!2872995 () Bool)

(declare-fun tp!923542 () Bool)

(assert (=> b!2872995 (= e!1818238 tp!923542)))

(declare-fun b!2872996 () Bool)

(declare-fun tp!923541 () Bool)

(declare-fun tp!923543 () Bool)

(assert (=> b!2872996 (= e!1818238 (and tp!923541 tp!923543))))

(assert (= (and b!2872557 ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184)))) b!2872993))

(assert (= (and b!2872557 ((_ is Concat!14060) (h!39805 (exprs!3199 c!7184)))) b!2872994))

(assert (= (and b!2872557 ((_ is Star!8739) (h!39805 (exprs!3199 c!7184)))) b!2872995))

(assert (= (and b!2872557 ((_ is Union!8739) (h!39805 (exprs!3199 c!7184)))) b!2872996))

(declare-fun b!2872997 () Bool)

(declare-fun e!1818239 () Bool)

(declare-fun tp!923545 () Bool)

(declare-fun tp!923546 () Bool)

(assert (=> b!2872997 (= e!1818239 (and tp!923545 tp!923546))))

(assert (=> b!2872557 (= tp!923500 e!1818239)))

(assert (= (and b!2872557 ((_ is Cons!34385) (t!233552 (exprs!3199 c!7184)))) b!2872997))

(declare-fun b_lambda!86057 () Bool)

(assert (= b_lambda!86053 (or d!830115 b_lambda!86057)))

(declare-fun bs!522247 () Bool)

(declare-fun d!830287 () Bool)

(assert (= bs!522247 (and d!830287 d!830115)))

(assert (=> bs!522247 (= (dynLambda!14312 lambda!107146 (h!39805 (exprs!3199 c!7184))) (validRegex!3517 (h!39805 (exprs!3199 c!7184))))))

(assert (=> bs!522247 m!3290561))

(assert (=> b!2872904 d!830287))

(check-sat (not bm!185625) (not bm!185655) (not d!830251) (not d!830181) (not d!830155) (not b!2872848) (not d!830253) (not b!2872583) (not bm!185656) (not d!830163) (not b!2872579) (not b!2872840) (not bm!185624) (not b!2872905) (not b!2872878) (not d!830231) (not b!2872779) (not b!2872943) (not b!2872866) (not bm!185601) (not b!2872841) (not b!2872879) (not b!2872966) (not b!2872657) (not b!2872747) (not bm!185637) (not d!830175) (not bm!185641) (not b!2872995) (not bm!185657) (not b!2872656) (not d!830165) (not b!2872714) (not b!2872723) (not bm!185648) (not b!2872852) (not b!2872980) (not d!830243) (not b!2872662) (not d!830201) (not b!2872728) (not d!830193) (not b!2872581) (not b!2872972) (not bm!185659) (not bm!185634) (not b!2872981) (not b!2872863) (not b!2872724) (not b!2872973) (not bs!522247) (not b!2872918) (not b!2872726) (not d!830265) (not bm!185660) (not b!2872850) (not b!2872930) (not b!2872843) (not b!2872576) (not b!2872996) (not b!2872585) tp_is_empty!15075 (not b!2872722) (not d!830225) (not b!2872846) (not d!830283) (not d!830195) (not b!2872982) (not bm!185642) (not d!830245) (not b!2872994) (not d!830285) (not bm!185647) (not b!2872646) (not b!2872997) (not d!830151) (not bm!185661) (not bm!185636) (not b!2872864) (not b!2872663) (not bm!185652) (not b!2872580) (not b!2872719) (not d!830207) (not b_lambda!86057) (not b!2872847) (not d!830257))
(check-sat)
(get-model)

(assert (=> bs!522247 d!830111))

(declare-fun d!830289 () Bool)

(declare-fun c!465077 () Bool)

(assert (=> d!830289 (= c!465077 (isEmpty!18720 (tail!4569 (get!10335 (getLanguageWitness!430 lt!1018172)))))))

(declare-fun e!1818240 () Bool)

(assert (=> d!830289 (= (matchZipper!481 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 (getLanguageWitness!430 lt!1018172)))) (tail!4569 (get!10335 (getLanguageWitness!430 lt!1018172)))) e!1818240)))

(declare-fun b!2872998 () Bool)

(assert (=> b!2872998 (= e!1818240 (nullableZipper!717 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 (getLanguageWitness!430 lt!1018172))))))))

(declare-fun b!2872999 () Bool)

(assert (=> b!2872999 (= e!1818240 (matchZipper!481 (derivationStepZipper!473 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 (getLanguageWitness!430 lt!1018172)))) (head!6344 (tail!4569 (get!10335 (getLanguageWitness!430 lt!1018172))))) (tail!4569 (tail!4569 (get!10335 (getLanguageWitness!430 lt!1018172))))))))

(assert (= (and d!830289 c!465077) b!2872998))

(assert (= (and d!830289 (not c!465077)) b!2872999))

(assert (=> d!830289 m!3290849))

(declare-fun m!3291107 () Bool)

(assert (=> d!830289 m!3291107))

(assert (=> b!2872998 m!3290847))

(declare-fun m!3291109 () Bool)

(assert (=> b!2872998 m!3291109))

(assert (=> b!2872999 m!3290849))

(declare-fun m!3291111 () Bool)

(assert (=> b!2872999 m!3291111))

(assert (=> b!2872999 m!3290847))

(assert (=> b!2872999 m!3291111))

(declare-fun m!3291113 () Bool)

(assert (=> b!2872999 m!3291113))

(assert (=> b!2872999 m!3290849))

(declare-fun m!3291115 () Bool)

(assert (=> b!2872999 m!3291115))

(assert (=> b!2872999 m!3291113))

(assert (=> b!2872999 m!3291115))

(declare-fun m!3291117 () Bool)

(assert (=> b!2872999 m!3291117))

(assert (=> b!2872663 d!830289))

(declare-fun bs!522248 () Bool)

(declare-fun d!830291 () Bool)

(assert (= bs!522248 (and d!830291 d!830165)))

(declare-fun lambda!107171 () Int)

(assert (=> bs!522248 (= (= (head!6344 (get!10335 (getLanguageWitness!430 lt!1018172))) (head!6344 (get!10335 lt!1018173))) (= lambda!107171 lambda!107153))))

(assert (=> d!830291 true))

(assert (=> d!830291 (= (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 (getLanguageWitness!430 lt!1018172)))) (flatMap!220 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) lambda!107171))))

(declare-fun bs!522249 () Bool)

(assert (= bs!522249 d!830291))

(assert (=> bs!522249 m!3290583))

(declare-fun m!3291119 () Bool)

(assert (=> bs!522249 m!3291119))

(assert (=> b!2872663 d!830291))

(declare-fun d!830293 () Bool)

(assert (=> d!830293 (= (head!6344 (get!10335 (getLanguageWitness!430 lt!1018172))) (h!39804 (get!10335 (getLanguageWitness!430 lt!1018172))))))

(assert (=> b!2872663 d!830293))

(declare-fun d!830295 () Bool)

(assert (=> d!830295 (= (tail!4569 (get!10335 (getLanguageWitness!430 lt!1018172))) (t!233551 (get!10335 (getLanguageWitness!430 lt!1018172))))))

(assert (=> b!2872663 d!830295))

(declare-fun bm!185662 () Bool)

(declare-fun call!185667 () Regex!8739)

(declare-fun call!185670 () Regex!8739)

(assert (=> bm!185662 (= call!185667 call!185670)))

(declare-fun bm!185663 () Bool)

(declare-fun call!185669 () Regex!8739)

(assert (=> bm!185663 (= call!185670 call!185669)))

(declare-fun bm!185664 () Bool)

(declare-fun c!465082 () Bool)

(declare-fun call!185668 () Regex!8739)

(assert (=> bm!185664 (= call!185668 (derivativeStep!2322 (ite c!465082 (regOne!17991 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (head!6344 (v!34535 lt!1018175))))))

(declare-fun b!2873000 () Bool)

(declare-fun c!465080 () Bool)

(assert (=> b!2873000 (= c!465080 (nullable!2689 (regOne!17990 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun e!1818242 () Regex!8739)

(declare-fun e!1818243 () Regex!8739)

(assert (=> b!2873000 (= e!1818242 e!1818243)))

(declare-fun b!2873001 () Bool)

(assert (=> b!2873001 (= e!1818242 (Concat!14060 call!185670 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2873002 () Bool)

(declare-fun e!1818241 () Regex!8739)

(declare-fun e!1818244 () Regex!8739)

(assert (=> b!2873002 (= e!1818241 e!1818244)))

(declare-fun c!465078 () Bool)

(assert (=> b!2873002 (= c!465078 ((_ is ElementMatch!8739) (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2873003 () Bool)

(assert (=> b!2873003 (= e!1818244 (ite (= (head!6344 (v!34535 lt!1018175)) (c!464816 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2873005 () Bool)

(declare-fun e!1818245 () Regex!8739)

(assert (=> b!2873005 (= e!1818245 e!1818242)))

(declare-fun c!465079 () Bool)

(assert (=> b!2873005 (= c!465079 ((_ is Star!8739) (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun bm!185665 () Bool)

(assert (=> bm!185665 (= call!185669 (derivativeStep!2322 (ite c!465082 (regTwo!17991 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465079 (reg!9068 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) (head!6344 (v!34535 lt!1018175))))))

(declare-fun b!2873006 () Bool)

(assert (=> b!2873006 (= c!465082 ((_ is Union!8739) (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> b!2873006 (= e!1818244 e!1818245)))

(declare-fun b!2873007 () Bool)

(assert (=> b!2873007 (= e!1818245 (Union!8739 call!185668 call!185669))))

(declare-fun b!2873008 () Bool)

(assert (=> b!2873008 (= e!1818243 (Union!8739 (Concat!14060 call!185667 (regTwo!17990 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) call!185668))))

(declare-fun b!2873009 () Bool)

(assert (=> b!2873009 (= e!1818243 (Union!8739 (Concat!14060 call!185667 (regTwo!17990 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) EmptyLang!8739))))

(declare-fun b!2873004 () Bool)

(assert (=> b!2873004 (= e!1818241 EmptyLang!8739)))

(declare-fun d!830297 () Bool)

(declare-fun lt!1018286 () Regex!8739)

(assert (=> d!830297 (validRegex!3517 lt!1018286)))

(assert (=> d!830297 (= lt!1018286 e!1818241)))

(declare-fun c!465081 () Bool)

(assert (=> d!830297 (= c!465081 (or ((_ is EmptyExpr!8739) (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) ((_ is EmptyLang!8739) (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))

(assert (=> d!830297 (validRegex!3517 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))

(assert (=> d!830297 (= (derivativeStep!2322 (ite c!464967 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) (head!6344 (v!34535 lt!1018175))) lt!1018286)))

(assert (= (and d!830297 c!465081) b!2873004))

(assert (= (and d!830297 (not c!465081)) b!2873002))

(assert (= (and b!2873002 c!465078) b!2873003))

(assert (= (and b!2873002 (not c!465078)) b!2873006))

(assert (= (and b!2873006 c!465082) b!2873007))

(assert (= (and b!2873006 (not c!465082)) b!2873005))

(assert (= (and b!2873005 c!465079) b!2873001))

(assert (= (and b!2873005 (not c!465079)) b!2873000))

(assert (= (and b!2873000 c!465080) b!2873008))

(assert (= (and b!2873000 (not c!465080)) b!2873009))

(assert (= (or b!2873008 b!2873009) bm!185662))

(assert (= (or b!2873001 bm!185662) bm!185663))

(assert (= (or b!2873007 b!2873008) bm!185664))

(assert (= (or b!2873007 bm!185663) bm!185665))

(assert (=> bm!185664 m!3290709))

(declare-fun m!3291121 () Bool)

(assert (=> bm!185664 m!3291121))

(declare-fun m!3291123 () Bool)

(assert (=> b!2873000 m!3291123))

(assert (=> bm!185665 m!3290709))

(declare-fun m!3291125 () Bool)

(assert (=> bm!185665 m!3291125))

(declare-fun m!3291127 () Bool)

(assert (=> d!830297 m!3291127))

(declare-fun m!3291129 () Bool)

(assert (=> d!830297 m!3291129))

(assert (=> bm!185624 d!830297))

(declare-fun d!830299 () Bool)

(assert (=> d!830299 (= (isEmpty!18720 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))) ((_ is Nil!34384) (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> d!830243 d!830299))

(assert (=> d!830243 d!830111))

(declare-fun d!830301 () Bool)

(declare-fun c!465083 () Bool)

(assert (=> d!830301 (= c!465083 ((_ is Nil!34386) res!1191771))))

(declare-fun e!1818246 () (InoxSet Context!5398))

(assert (=> d!830301 (= (content!4699 res!1191771) e!1818246)))

(declare-fun b!2873010 () Bool)

(assert (=> b!2873010 (= e!1818246 ((as const (Array Context!5398 Bool)) false))))

(declare-fun b!2873011 () Bool)

(assert (=> b!2873011 (= e!1818246 ((_ map or) (store ((as const (Array Context!5398 Bool)) false) (h!39806 res!1191771) true) (content!4699 (t!233553 res!1191771))))))

(assert (= (and d!830301 c!465083) b!2873010))

(assert (= (and d!830301 (not c!465083)) b!2873011))

(declare-fun m!3291131 () Bool)

(assert (=> b!2873011 m!3291131))

(declare-fun m!3291133 () Bool)

(assert (=> b!2873011 m!3291133))

(assert (=> b!2872982 d!830301))

(declare-fun d!830303 () Bool)

(assert (=> d!830303 (= (isEmpty!18720 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))) ((_ is Nil!34384) (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))

(assert (=> b!2872846 d!830303))

(declare-fun d!830305 () Bool)

(assert (=> d!830305 (= (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))) (t!233551 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> b!2872846 d!830305))

(declare-fun bm!185670 () Bool)

(declare-fun call!185676 () Bool)

(declare-fun c!465086 () Bool)

(assert (=> bm!185670 (= call!185676 (nullable!2689 (ite c!465086 (regOne!17991 (reg!9068 (h!39805 (exprs!3199 c!7184)))) (regOne!17990 (reg!9068 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2873026 () Bool)

(declare-fun e!1818262 () Bool)

(declare-fun e!1818264 () Bool)

(assert (=> b!2873026 (= e!1818262 e!1818264)))

(declare-fun res!1191782 () Bool)

(assert (=> b!2873026 (=> res!1191782 e!1818264)))

(assert (=> b!2873026 (= res!1191782 ((_ is Star!8739) (reg!9068 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun b!2873027 () Bool)

(declare-fun e!1818261 () Bool)

(declare-fun e!1818259 () Bool)

(assert (=> b!2873027 (= e!1818261 e!1818259)))

(declare-fun res!1191785 () Bool)

(assert (=> b!2873027 (= res!1191785 call!185676)))

(assert (=> b!2873027 (=> res!1191785 e!1818259)))

(declare-fun b!2873028 () Bool)

(declare-fun e!1818260 () Bool)

(assert (=> b!2873028 (= e!1818260 e!1818262)))

(declare-fun res!1191783 () Bool)

(assert (=> b!2873028 (=> (not res!1191783) (not e!1818262))))

(assert (=> b!2873028 (= res!1191783 (and (not ((_ is EmptyLang!8739) (reg!9068 (h!39805 (exprs!3199 c!7184))))) (not ((_ is ElementMatch!8739) (reg!9068 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun bm!185671 () Bool)

(declare-fun call!185675 () Bool)

(assert (=> bm!185671 (= call!185675 (nullable!2689 (ite c!465086 (regTwo!17991 (reg!9068 (h!39805 (exprs!3199 c!7184)))) (regTwo!17990 (reg!9068 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun d!830307 () Bool)

(declare-fun res!1191784 () Bool)

(assert (=> d!830307 (=> res!1191784 e!1818260)))

(assert (=> d!830307 (= res!1191784 ((_ is EmptyExpr!8739) (reg!9068 (h!39805 (exprs!3199 c!7184)))))))

(assert (=> d!830307 (= (nullableFct!817 (reg!9068 (h!39805 (exprs!3199 c!7184)))) e!1818260)))

(declare-fun b!2873029 () Bool)

(declare-fun e!1818263 () Bool)

(assert (=> b!2873029 (= e!1818261 e!1818263)))

(declare-fun res!1191786 () Bool)

(assert (=> b!2873029 (= res!1191786 call!185676)))

(assert (=> b!2873029 (=> (not res!1191786) (not e!1818263))))

(declare-fun b!2873030 () Bool)

(assert (=> b!2873030 (= e!1818263 call!185675)))

(declare-fun b!2873031 () Bool)

(assert (=> b!2873031 (= e!1818259 call!185675)))

(declare-fun b!2873032 () Bool)

(assert (=> b!2873032 (= e!1818264 e!1818261)))

(assert (=> b!2873032 (= c!465086 ((_ is Union!8739) (reg!9068 (h!39805 (exprs!3199 c!7184)))))))

(assert (= (and d!830307 (not res!1191784)) b!2873028))

(assert (= (and b!2873028 res!1191783) b!2873026))

(assert (= (and b!2873026 (not res!1191782)) b!2873032))

(assert (= (and b!2873032 c!465086) b!2873027))

(assert (= (and b!2873032 (not c!465086)) b!2873029))

(assert (= (and b!2873027 (not res!1191785)) b!2873031))

(assert (= (and b!2873029 res!1191786) b!2873030))

(assert (= (or b!2873027 b!2873029) bm!185670))

(assert (= (or b!2873031 b!2873030) bm!185671))

(declare-fun m!3291135 () Bool)

(assert (=> bm!185670 m!3291135))

(declare-fun m!3291137 () Bool)

(assert (=> bm!185671 m!3291137))

(assert (=> d!830265 d!830307))

(declare-fun d!830309 () Bool)

(declare-fun lt!1018289 () Bool)

(assert (=> d!830309 (= lt!1018289 (select (content!4699 (t!233553 lt!1018239)) (h!39806 lt!1018239)))))

(declare-fun e!1818269 () Bool)

(assert (=> d!830309 (= lt!1018289 e!1818269)))

(declare-fun res!1191792 () Bool)

(assert (=> d!830309 (=> (not res!1191792) (not e!1818269))))

(assert (=> d!830309 (= res!1191792 ((_ is Cons!34386) (t!233553 lt!1018239)))))

(assert (=> d!830309 (= (contains!6125 (t!233553 lt!1018239) (h!39806 lt!1018239)) lt!1018289)))

(declare-fun b!2873037 () Bool)

(declare-fun e!1818270 () Bool)

(assert (=> b!2873037 (= e!1818269 e!1818270)))

(declare-fun res!1191791 () Bool)

(assert (=> b!2873037 (=> res!1191791 e!1818270)))

(assert (=> b!2873037 (= res!1191791 (= (h!39806 (t!233553 lt!1018239)) (h!39806 lt!1018239)))))

(declare-fun b!2873038 () Bool)

(assert (=> b!2873038 (= e!1818270 (contains!6125 (t!233553 (t!233553 lt!1018239)) (h!39806 lt!1018239)))))

(assert (= (and d!830309 res!1191792) b!2873037))

(assert (= (and b!2873037 (not res!1191791)) b!2873038))

(assert (=> d!830309 m!3291093))

(declare-fun m!3291139 () Bool)

(assert (=> d!830309 m!3291139))

(declare-fun m!3291141 () Bool)

(assert (=> b!2873038 m!3291141))

(assert (=> b!2872972 d!830309))

(declare-fun b!2873039 () Bool)

(declare-fun e!1818273 () Option!6414)

(declare-fun call!185678 () Option!6414)

(assert (=> b!2873039 (= e!1818273 call!185678)))

(declare-fun c!465094 () Bool)

(declare-fun bm!185672 () Bool)

(assert (=> bm!185672 (= call!185678 (getLanguageWitness!429 (ite c!465094 (regTwo!17991 (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (regTwo!17990 (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873040 () Bool)

(declare-fun e!1818275 () Option!6414)

(declare-fun e!1818278 () Option!6414)

(assert (=> b!2873040 (= e!1818275 e!1818278)))

(declare-fun c!465090 () Bool)

(assert (=> b!2873040 (= c!465090 ((_ is EmptyLang!8739) (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873041 () Bool)

(declare-fun e!1818276 () Option!6414)

(assert (=> b!2873041 (= e!1818276 None!6413)))

(declare-fun c!465092 () Bool)

(declare-fun b!2873042 () Bool)

(assert (=> b!2873042 (= c!465092 ((_ is ElementMatch!8739) (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun e!1818277 () Option!6414)

(assert (=> b!2873042 (= e!1818278 e!1818277)))

(declare-fun b!2873043 () Bool)

(assert (=> b!2873043 (= e!1818275 (Some!6413 Nil!34384))))

(declare-fun b!2873044 () Bool)

(declare-fun e!1818272 () Option!6414)

(assert (=> b!2873044 (= e!1818272 None!6413)))

(declare-fun d!830311 () Bool)

(declare-fun c!465089 () Bool)

(assert (=> d!830311 (= c!465089 ((_ is EmptyExpr!8739) (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> d!830311 (= (getLanguageWitness!429 (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) e!1818275)))

(declare-fun b!2873045 () Bool)

(declare-fun e!1818274 () Option!6414)

(assert (=> b!2873045 (= e!1818274 e!1818272)))

(declare-fun lt!1018291 () Option!6414)

(declare-fun call!185677 () Option!6414)

(assert (=> b!2873045 (= lt!1018291 call!185677)))

(declare-fun c!465088 () Bool)

(assert (=> b!2873045 (= c!465088 ((_ is Some!6413) lt!1018291))))

(declare-fun b!2873046 () Bool)

(assert (=> b!2873046 (= e!1818278 None!6413)))

(declare-fun b!2873047 () Bool)

(declare-fun e!1818271 () Option!6414)

(assert (=> b!2873047 (= e!1818271 (Some!6413 Nil!34384))))

(declare-fun bm!185673 () Bool)

(assert (=> bm!185673 (= call!185677 (getLanguageWitness!429 (ite c!465094 (regOne!17991 (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (regOne!17990 (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873048 () Bool)

(declare-fun lt!1018292 () Option!6414)

(assert (=> b!2873048 (= e!1818273 lt!1018292)))

(declare-fun b!2873049 () Bool)

(assert (=> b!2873049 (= e!1818277 e!1818271)))

(declare-fun c!465093 () Bool)

(assert (=> b!2873049 (= c!465093 ((_ is Star!8739) (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873050 () Bool)

(assert (=> b!2873050 (= e!1818274 e!1818273)))

(assert (=> b!2873050 (= lt!1018292 call!185677)))

(declare-fun c!465087 () Bool)

(assert (=> b!2873050 (= c!465087 ((_ is Some!6413) lt!1018292))))

(declare-fun b!2873051 () Bool)

(declare-fun lt!1018290 () Option!6414)

(assert (=> b!2873051 (= e!1818276 (Some!6413 (++!8175 (v!34535 lt!1018291) (v!34535 lt!1018290))))))

(declare-fun b!2873052 () Bool)

(assert (=> b!2873052 (= c!465094 ((_ is Union!8739) (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> b!2873052 (= e!1818271 e!1818274)))

(declare-fun b!2873053 () Bool)

(assert (=> b!2873053 (= e!1818277 (Some!6413 (Cons!34384 (c!464816 (ite c!465017 (regTwo!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) Nil!34384)))))

(declare-fun b!2873054 () Bool)

(declare-fun c!465091 () Bool)

(assert (=> b!2873054 (= c!465091 ((_ is Some!6413) lt!1018290))))

(assert (=> b!2873054 (= lt!1018290 call!185678)))

(assert (=> b!2873054 (= e!1818272 e!1818276)))

(assert (= (and d!830311 c!465089) b!2873043))

(assert (= (and d!830311 (not c!465089)) b!2873040))

(assert (= (and b!2873040 c!465090) b!2873046))

(assert (= (and b!2873040 (not c!465090)) b!2873042))

(assert (= (and b!2873042 c!465092) b!2873053))

(assert (= (and b!2873042 (not c!465092)) b!2873049))

(assert (= (and b!2873049 c!465093) b!2873047))

(assert (= (and b!2873049 (not c!465093)) b!2873052))

(assert (= (and b!2873052 c!465094) b!2873050))

(assert (= (and b!2873052 (not c!465094)) b!2873045))

(assert (= (and b!2873050 c!465087) b!2873048))

(assert (= (and b!2873050 (not c!465087)) b!2873039))

(assert (= (and b!2873045 c!465088) b!2873054))

(assert (= (and b!2873045 (not c!465088)) b!2873044))

(assert (= (and b!2873054 c!465091) b!2873051))

(assert (= (and b!2873054 (not c!465091)) b!2873041))

(assert (= (or b!2873039 b!2873054) bm!185672))

(assert (= (or b!2873050 b!2873045) bm!185673))

(declare-fun m!3291143 () Bool)

(assert (=> bm!185672 m!3291143))

(declare-fun m!3291145 () Bool)

(assert (=> bm!185673 m!3291145))

(declare-fun m!3291147 () Bool)

(assert (=> b!2873051 m!3291147))

(assert (=> bm!185647 d!830311))

(declare-fun d!830313 () Bool)

(assert (=> d!830313 (= (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))) (h!39804 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> b!2872850 d!830313))

(declare-fun d!830315 () Bool)

(declare-fun choose!16990 ((InoxSet Context!5398) Int) (InoxSet Context!5398))

(assert (=> d!830315 (= (flatMap!220 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) lambda!107153) (choose!16990 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) lambda!107153))))

(declare-fun bs!522250 () Bool)

(assert (= bs!522250 d!830315))

(assert (=> bs!522250 m!3290583))

(declare-fun m!3291149 () Bool)

(assert (=> bs!522250 m!3291149))

(assert (=> d!830165 d!830315))

(assert (=> b!2872848 d!830313))

(declare-fun d!830317 () Bool)

(assert (=> d!830317 (= (isEmpty!18719 lt!1018274) (not ((_ is Some!6413) lt!1018274)))))

(assert (=> d!830253 d!830317))

(declare-fun bs!522251 () Bool)

(declare-fun d!830319 () Bool)

(assert (= bs!522251 (and d!830319 d!830285)))

(declare-fun lambda!107172 () Int)

(assert (=> bs!522251 (= (= lambda!107165 lambda!107143) (= lambda!107172 lambda!107170))))

(declare-fun bs!522252 () Bool)

(assert (= bs!522252 (and d!830319 d!830115)))

(assert (=> bs!522252 (not (= lambda!107172 lambda!107146))))

(declare-fun bs!522253 () Bool)

(assert (= bs!522253 (and d!830319 d!830193)))

(assert (=> bs!522253 (not (= lambda!107172 lambda!107154))))

(declare-fun bs!522254 () Bool)

(assert (= bs!522254 (and d!830319 d!830225)))

(assert (=> bs!522254 (= (= lambda!107165 lambda!107140) (= lambda!107172 lambda!107161))))

(declare-fun bs!522255 () Bool)

(assert (= bs!522255 (and d!830319 d!830113)))

(assert (=> bs!522255 (not (= lambda!107172 lambda!107143))))

(declare-fun bs!522256 () Bool)

(assert (= bs!522256 (and d!830319 d!830253)))

(assert (=> bs!522256 (not (= lambda!107172 lambda!107165))))

(declare-fun bs!522257 () Bool)

(assert (= bs!522257 (and d!830319 d!830065)))

(assert (=> bs!522257 (not (= lambda!107172 lambda!107140))))

(assert (=> d!830319 true))

(assert (=> d!830319 (< (dynLambda!14311 order!18129 lambda!107165) (dynLambda!14311 order!18129 lambda!107172))))

(assert (=> d!830319 (= (exists!1161 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))) lambda!107165) (not (forall!7083 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))) lambda!107172)))))

(declare-fun bs!522258 () Bool)

(assert (= bs!522258 d!830319))

(declare-fun m!3291151 () Bool)

(assert (=> bs!522258 m!3291151))

(assert (=> d!830253 d!830319))

(assert (=> b!2872852 d!830251))

(declare-fun d!830321 () Bool)

(assert (=> d!830321 (= (nullable!2689 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) (nullableFct!817 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun bs!522259 () Bool)

(assert (= bs!522259 d!830321))

(declare-fun m!3291153 () Bool)

(assert (=> bs!522259 m!3291153))

(assert (=> b!2872930 d!830321))

(declare-fun d!830323 () Bool)

(assert (=> d!830323 (= (nullable!2689 (regOne!17990 (h!39805 (exprs!3199 c!7184)))) (nullableFct!817 (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun bs!522260 () Bool)

(assert (= bs!522260 d!830323))

(declare-fun m!3291155 () Bool)

(assert (=> bs!522260 m!3291155))

(assert (=> b!2872747 d!830323))

(declare-fun d!830325 () Bool)

(declare-fun res!1191793 () Bool)

(declare-fun e!1818279 () Bool)

(assert (=> d!830325 (=> res!1191793 e!1818279)))

(assert (=> d!830325 (= res!1191793 ((_ is Nil!34385) (exprs!3199 c!7184)))))

(assert (=> d!830325 (= (forall!7083 (exprs!3199 c!7184) lambda!107170) e!1818279)))

(declare-fun b!2873055 () Bool)

(declare-fun e!1818280 () Bool)

(assert (=> b!2873055 (= e!1818279 e!1818280)))

(declare-fun res!1191794 () Bool)

(assert (=> b!2873055 (=> (not res!1191794) (not e!1818280))))

(assert (=> b!2873055 (= res!1191794 (dynLambda!14312 lambda!107170 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2873056 () Bool)

(assert (=> b!2873056 (= e!1818280 (forall!7083 (t!233552 (exprs!3199 c!7184)) lambda!107170))))

(assert (= (and d!830325 (not res!1191793)) b!2873055))

(assert (= (and b!2873055 res!1191794) b!2873056))

(declare-fun b_lambda!86059 () Bool)

(assert (=> (not b_lambda!86059) (not b!2873055)))

(declare-fun m!3291157 () Bool)

(assert (=> b!2873055 m!3291157))

(declare-fun m!3291159 () Bool)

(assert (=> b!2873056 m!3291159))

(assert (=> d!830285 d!830325))

(declare-fun b!2873057 () Bool)

(declare-fun e!1818283 () Bool)

(declare-fun call!185680 () Bool)

(assert (=> b!2873057 (= e!1818283 call!185680)))

(declare-fun b!2873058 () Bool)

(declare-fun res!1191798 () Bool)

(declare-fun e!1818286 () Bool)

(assert (=> b!2873058 (=> res!1191798 e!1818286)))

(assert (=> b!2873058 (= res!1191798 (not ((_ is Concat!14060) lt!1018256)))))

(declare-fun e!1818284 () Bool)

(assert (=> b!2873058 (= e!1818284 e!1818286)))

(declare-fun bm!185674 () Bool)

(declare-fun call!185679 () Bool)

(declare-fun c!465095 () Bool)

(declare-fun c!465096 () Bool)

(assert (=> bm!185674 (= call!185679 (validRegex!3517 (ite c!465095 (reg!9068 lt!1018256) (ite c!465096 (regOne!17991 lt!1018256) (regTwo!17990 lt!1018256)))))))

(declare-fun bm!185675 () Bool)

(declare-fun call!185681 () Bool)

(assert (=> bm!185675 (= call!185681 call!185679)))

(declare-fun b!2873059 () Bool)

(declare-fun e!1818281 () Bool)

(assert (=> b!2873059 (= e!1818286 e!1818281)))

(declare-fun res!1191799 () Bool)

(assert (=> b!2873059 (=> (not res!1191799) (not e!1818281))))

(assert (=> b!2873059 (= res!1191799 call!185680)))

(declare-fun d!830327 () Bool)

(declare-fun res!1191797 () Bool)

(declare-fun e!1818282 () Bool)

(assert (=> d!830327 (=> res!1191797 e!1818282)))

(assert (=> d!830327 (= res!1191797 ((_ is ElementMatch!8739) lt!1018256))))

(assert (=> d!830327 (= (validRegex!3517 lt!1018256) e!1818282)))

(declare-fun b!2873060 () Bool)

(declare-fun e!1818287 () Bool)

(assert (=> b!2873060 (= e!1818287 e!1818284)))

(assert (=> b!2873060 (= c!465096 ((_ is Union!8739) lt!1018256))))

(declare-fun b!2873061 () Bool)

(assert (=> b!2873061 (= e!1818281 call!185681)))

(declare-fun b!2873062 () Bool)

(declare-fun e!1818285 () Bool)

(assert (=> b!2873062 (= e!1818285 call!185679)))

(declare-fun b!2873063 () Bool)

(assert (=> b!2873063 (= e!1818282 e!1818287)))

(assert (=> b!2873063 (= c!465095 ((_ is Star!8739) lt!1018256))))

(declare-fun b!2873064 () Bool)

(declare-fun res!1191795 () Bool)

(assert (=> b!2873064 (=> (not res!1191795) (not e!1818283))))

(assert (=> b!2873064 (= res!1191795 call!185681)))

(assert (=> b!2873064 (= e!1818284 e!1818283)))

(declare-fun bm!185676 () Bool)

(assert (=> bm!185676 (= call!185680 (validRegex!3517 (ite c!465096 (regTwo!17991 lt!1018256) (regOne!17990 lt!1018256))))))

(declare-fun b!2873065 () Bool)

(assert (=> b!2873065 (= e!1818287 e!1818285)))

(declare-fun res!1191796 () Bool)

(assert (=> b!2873065 (= res!1191796 (not (nullable!2689 (reg!9068 lt!1018256))))))

(assert (=> b!2873065 (=> (not res!1191796) (not e!1818285))))

(assert (= (and d!830327 (not res!1191797)) b!2873063))

(assert (= (and b!2873063 c!465095) b!2873065))

(assert (= (and b!2873063 (not c!465095)) b!2873060))

(assert (= (and b!2873065 res!1191796) b!2873062))

(assert (= (and b!2873060 c!465096) b!2873064))

(assert (= (and b!2873060 (not c!465096)) b!2873058))

(assert (= (and b!2873064 res!1191795) b!2873057))

(assert (= (and b!2873058 (not res!1191798)) b!2873059))

(assert (= (and b!2873059 res!1191799) b!2873061))

(assert (= (or b!2873057 b!2873059) bm!185676))

(assert (= (or b!2873064 b!2873061) bm!185675))

(assert (= (or b!2873062 bm!185675) bm!185674))

(declare-fun m!3291161 () Bool)

(assert (=> bm!185674 m!3291161))

(declare-fun m!3291163 () Bool)

(assert (=> bm!185676 m!3291163))

(declare-fun m!3291165 () Bool)

(assert (=> b!2873065 m!3291165))

(assert (=> d!830207 d!830327))

(assert (=> d!830207 d!830111))

(declare-fun d!830329 () Bool)

(assert (=> d!830329 (= (isEmpty!18720 (tail!4569 (tail!4569 (get!10335 lt!1018175)))) ((_ is Nil!34384) (tail!4569 (tail!4569 (get!10335 lt!1018175)))))))

(assert (=> b!2872719 d!830329))

(declare-fun d!830331 () Bool)

(assert (=> d!830331 (= (tail!4569 (tail!4569 (get!10335 lt!1018175))) (t!233551 (tail!4569 (get!10335 lt!1018175))))))

(assert (=> b!2872719 d!830331))

(declare-fun d!830333 () Bool)

(assert (=> d!830333 (= (isEmpty!18720 (tail!4569 (tail!4569 (v!34535 lt!1018175)))) ((_ is Nil!34384) (tail!4569 (tail!4569 (v!34535 lt!1018175)))))))

(assert (=> b!2872576 d!830333))

(declare-fun d!830335 () Bool)

(assert (=> d!830335 (= (tail!4569 (tail!4569 (v!34535 lt!1018175))) (t!233551 (tail!4569 (v!34535 lt!1018175))))))

(assert (=> b!2872576 d!830335))

(declare-fun d!830337 () Bool)

(assert (=> d!830337 (= (nullable!2689 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) (nullableFct!817 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun bs!522261 () Bool)

(assert (= bs!522261 d!830337))

(declare-fun m!3291167 () Bool)

(assert (=> bs!522261 m!3291167))

(assert (=> b!2872714 d!830337))

(declare-fun d!830339 () Bool)

(declare-fun res!1191800 () Bool)

(declare-fun e!1818288 () Bool)

(assert (=> d!830339 (=> res!1191800 e!1818288)))

(assert (=> d!830339 (= res!1191800 ((_ is Nil!34385) (exprs!3199 lt!1018172)))))

(assert (=> d!830339 (= (forall!7083 (exprs!3199 lt!1018172) lambda!107161) e!1818288)))

(declare-fun b!2873066 () Bool)

(declare-fun e!1818289 () Bool)

(assert (=> b!2873066 (= e!1818288 e!1818289)))

(declare-fun res!1191801 () Bool)

(assert (=> b!2873066 (=> (not res!1191801) (not e!1818289))))

(assert (=> b!2873066 (= res!1191801 (dynLambda!14312 lambda!107161 (h!39805 (exprs!3199 lt!1018172))))))

(declare-fun b!2873067 () Bool)

(assert (=> b!2873067 (= e!1818289 (forall!7083 (t!233552 (exprs!3199 lt!1018172)) lambda!107161))))

(assert (= (and d!830339 (not res!1191800)) b!2873066))

(assert (= (and b!2873066 res!1191801) b!2873067))

(declare-fun b_lambda!86061 () Bool)

(assert (=> (not b_lambda!86061) (not b!2873066)))

(declare-fun m!3291169 () Bool)

(assert (=> b!2873066 m!3291169))

(declare-fun m!3291171 () Bool)

(assert (=> b!2873067 m!3291171))

(assert (=> d!830225 d!830339))

(declare-fun bs!522262 () Bool)

(declare-fun d!830341 () Bool)

(assert (= bs!522262 (and d!830341 d!830195)))

(declare-fun lambda!107173 () Int)

(assert (=> bs!522262 (= lambda!107173 lambda!107157)))

(assert (=> d!830341 (= (nullableZipper!717 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173)))) (exists!1162 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) lambda!107173))))

(declare-fun bs!522263 () Bool)

(assert (= bs!522263 d!830341))

(assert (=> bs!522263 m!3290727))

(declare-fun m!3291173 () Bool)

(assert (=> bs!522263 m!3291173))

(assert (=> b!2872656 d!830341))

(declare-fun b!2873068 () Bool)

(declare-fun e!1818292 () Option!6414)

(declare-fun call!185683 () Option!6414)

(assert (=> b!2873068 (= e!1818292 call!185683)))

(declare-fun bm!185677 () Bool)

(declare-fun c!465104 () Bool)

(assert (=> bm!185677 (= call!185683 (getLanguageWitness!429 (ite c!465104 (regTwo!17991 (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) (regTwo!17990 (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873069 () Bool)

(declare-fun e!1818294 () Option!6414)

(declare-fun e!1818297 () Option!6414)

(assert (=> b!2873069 (= e!1818294 e!1818297)))

(declare-fun c!465100 () Bool)

(assert (=> b!2873069 (= c!465100 ((_ is EmptyLang!8739) (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873070 () Bool)

(declare-fun e!1818295 () Option!6414)

(assert (=> b!2873070 (= e!1818295 None!6413)))

(declare-fun b!2873071 () Bool)

(declare-fun c!465102 () Bool)

(assert (=> b!2873071 (= c!465102 ((_ is ElementMatch!8739) (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun e!1818296 () Option!6414)

(assert (=> b!2873071 (= e!1818297 e!1818296)))

(declare-fun b!2873072 () Bool)

(assert (=> b!2873072 (= e!1818294 (Some!6413 Nil!34384))))

(declare-fun b!2873073 () Bool)

(declare-fun e!1818291 () Option!6414)

(assert (=> b!2873073 (= e!1818291 None!6413)))

(declare-fun d!830343 () Bool)

(declare-fun c!465099 () Bool)

(assert (=> d!830343 (= c!465099 ((_ is EmptyExpr!8739) (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> d!830343 (= (getLanguageWitness!429 (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) e!1818294)))

(declare-fun b!2873074 () Bool)

(declare-fun e!1818293 () Option!6414)

(assert (=> b!2873074 (= e!1818293 e!1818291)))

(declare-fun lt!1018294 () Option!6414)

(declare-fun call!185682 () Option!6414)

(assert (=> b!2873074 (= lt!1018294 call!185682)))

(declare-fun c!465098 () Bool)

(assert (=> b!2873074 (= c!465098 ((_ is Some!6413) lt!1018294))))

(declare-fun b!2873075 () Bool)

(assert (=> b!2873075 (= e!1818297 None!6413)))

(declare-fun b!2873076 () Bool)

(declare-fun e!1818290 () Option!6414)

(assert (=> b!2873076 (= e!1818290 (Some!6413 Nil!34384))))

(declare-fun bm!185678 () Bool)

(assert (=> bm!185678 (= call!185682 (getLanguageWitness!429 (ite c!465104 (regOne!17991 (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) (regOne!17990 (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873077 () Bool)

(declare-fun lt!1018295 () Option!6414)

(assert (=> b!2873077 (= e!1818292 lt!1018295)))

(declare-fun b!2873078 () Bool)

(assert (=> b!2873078 (= e!1818296 e!1818290)))

(declare-fun c!465103 () Bool)

(assert (=> b!2873078 (= c!465103 ((_ is Star!8739) (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873079 () Bool)

(assert (=> b!2873079 (= e!1818293 e!1818292)))

(assert (=> b!2873079 (= lt!1018295 call!185682)))

(declare-fun c!465097 () Bool)

(assert (=> b!2873079 (= c!465097 ((_ is Some!6413) lt!1018295))))

(declare-fun b!2873080 () Bool)

(declare-fun lt!1018293 () Option!6414)

(assert (=> b!2873080 (= e!1818295 (Some!6413 (++!8175 (v!34535 lt!1018294) (v!34535 lt!1018293))))))

(declare-fun b!2873081 () Bool)

(assert (=> b!2873081 (= c!465104 ((_ is Union!8739) (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> b!2873081 (= e!1818290 e!1818293)))

(declare-fun b!2873082 () Bool)

(assert (=> b!2873082 (= e!1818296 (Some!6413 (Cons!34384 (c!464816 (ite c!465073 (regOne!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) Nil!34384)))))

(declare-fun b!2873083 () Bool)

(declare-fun c!465101 () Bool)

(assert (=> b!2873083 (= c!465101 ((_ is Some!6413) lt!1018293))))

(assert (=> b!2873083 (= lt!1018293 call!185683)))

(assert (=> b!2873083 (= e!1818291 e!1818295)))

(assert (= (and d!830343 c!465099) b!2873072))

(assert (= (and d!830343 (not c!465099)) b!2873069))

(assert (= (and b!2873069 c!465100) b!2873075))

(assert (= (and b!2873069 (not c!465100)) b!2873071))

(assert (= (and b!2873071 c!465102) b!2873082))

(assert (= (and b!2873071 (not c!465102)) b!2873078))

(assert (= (and b!2873078 c!465103) b!2873076))

(assert (= (and b!2873078 (not c!465103)) b!2873081))

(assert (= (and b!2873081 c!465104) b!2873079))

(assert (= (and b!2873081 (not c!465104)) b!2873074))

(assert (= (and b!2873079 c!465097) b!2873077))

(assert (= (and b!2873079 (not c!465097)) b!2873068))

(assert (= (and b!2873074 c!465098) b!2873083))

(assert (= (and b!2873074 (not c!465098)) b!2873073))

(assert (= (and b!2873083 c!465101) b!2873080))

(assert (= (and b!2873083 (not c!465101)) b!2873070))

(assert (= (or b!2873068 b!2873083) bm!185677))

(assert (= (or b!2873079 b!2873074) bm!185678))

(declare-fun m!3291175 () Bool)

(assert (=> bm!185677 m!3291175))

(declare-fun m!3291177 () Bool)

(assert (=> bm!185678 m!3291177))

(declare-fun m!3291179 () Bool)

(assert (=> b!2873080 m!3291179))

(assert (=> bm!185661 d!830343))

(declare-fun bm!185679 () Bool)

(declare-fun call!185684 () Regex!8739)

(declare-fun call!185687 () Regex!8739)

(assert (=> bm!185679 (= call!185684 call!185687)))

(declare-fun bm!185680 () Bool)

(declare-fun call!185686 () Regex!8739)

(assert (=> bm!185680 (= call!185687 call!185686)))

(declare-fun call!185685 () Regex!8739)

(declare-fun c!465109 () Bool)

(declare-fun bm!185681 () Bool)

(assert (=> bm!185681 (= call!185685 (derivativeStep!2322 (ite c!465109 (regOne!17991 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (head!6344 (get!10335 lt!1018175))))))

(declare-fun b!2873084 () Bool)

(declare-fun c!465107 () Bool)

(assert (=> b!2873084 (= c!465107 (nullable!2689 (regOne!17990 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun e!1818299 () Regex!8739)

(declare-fun e!1818300 () Regex!8739)

(assert (=> b!2873084 (= e!1818299 e!1818300)))

(declare-fun b!2873085 () Bool)

(assert (=> b!2873085 (= e!1818299 (Concat!14060 call!185687 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2873086 () Bool)

(declare-fun e!1818298 () Regex!8739)

(declare-fun e!1818301 () Regex!8739)

(assert (=> b!2873086 (= e!1818298 e!1818301)))

(declare-fun c!465105 () Bool)

(assert (=> b!2873086 (= c!465105 ((_ is ElementMatch!8739) (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2873087 () Bool)

(assert (=> b!2873087 (= e!1818301 (ite (= (head!6344 (get!10335 lt!1018175)) (c!464816 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2873089 () Bool)

(declare-fun e!1818302 () Regex!8739)

(assert (=> b!2873089 (= e!1818302 e!1818299)))

(declare-fun c!465106 () Bool)

(assert (=> b!2873089 (= c!465106 ((_ is Star!8739) (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun bm!185682 () Bool)

(assert (=> bm!185682 (= call!185686 (derivativeStep!2322 (ite c!465109 (regTwo!17991 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!465106 (reg!9068 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))) (head!6344 (get!10335 lt!1018175))))))

(declare-fun b!2873090 () Bool)

(assert (=> b!2873090 (= c!465109 ((_ is Union!8739) (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(assert (=> b!2873090 (= e!1818301 e!1818302)))

(declare-fun b!2873091 () Bool)

(assert (=> b!2873091 (= e!1818302 (Union!8739 call!185685 call!185686))))

(declare-fun b!2873092 () Bool)

(assert (=> b!2873092 (= e!1818300 (Union!8739 (Concat!14060 call!185684 (regTwo!17990 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) call!185685))))

(declare-fun b!2873093 () Bool)

(assert (=> b!2873093 (= e!1818300 (Union!8739 (Concat!14060 call!185684 (regTwo!17990 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) EmptyLang!8739))))

(declare-fun b!2873088 () Bool)

(assert (=> b!2873088 (= e!1818298 EmptyLang!8739)))

(declare-fun d!830345 () Bool)

(declare-fun lt!1018296 () Regex!8739)

(assert (=> d!830345 (validRegex!3517 lt!1018296)))

(assert (=> d!830345 (= lt!1018296 e!1818298)))

(declare-fun c!465108 () Bool)

(assert (=> d!830345 (= c!465108 (or ((_ is EmptyExpr!8739) (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) ((_ is EmptyLang!8739) (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> d!830345 (validRegex!3517 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> d!830345 (= (derivativeStep!2322 (ite c!465004 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465001 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (head!6344 (get!10335 lt!1018175))) lt!1018296)))

(assert (= (and d!830345 c!465108) b!2873088))

(assert (= (and d!830345 (not c!465108)) b!2873086))

(assert (= (and b!2873086 c!465105) b!2873087))

(assert (= (and b!2873086 (not c!465105)) b!2873090))

(assert (= (and b!2873090 c!465109) b!2873091))

(assert (= (and b!2873090 (not c!465109)) b!2873089))

(assert (= (and b!2873089 c!465106) b!2873085))

(assert (= (and b!2873089 (not c!465106)) b!2873084))

(assert (= (and b!2873084 c!465107) b!2873092))

(assert (= (and b!2873084 (not c!465107)) b!2873093))

(assert (= (or b!2873092 b!2873093) bm!185679))

(assert (= (or b!2873085 bm!185679) bm!185680))

(assert (= (or b!2873091 b!2873092) bm!185681))

(assert (= (or b!2873091 bm!185680) bm!185682))

(assert (=> bm!185681 m!3290681))

(declare-fun m!3291181 () Bool)

(assert (=> bm!185681 m!3291181))

(declare-fun m!3291183 () Bool)

(assert (=> b!2873084 m!3291183))

(assert (=> bm!185682 m!3290681))

(declare-fun m!3291185 () Bool)

(assert (=> bm!185682 m!3291185))

(declare-fun m!3291187 () Bool)

(assert (=> d!830345 m!3291187))

(declare-fun m!3291189 () Bool)

(assert (=> d!830345 m!3291189))

(assert (=> bm!185642 d!830345))

(declare-fun e!1818304 () Bool)

(declare-fun b!2873097 () Bool)

(declare-fun lt!1018297 () List!34508)

(assert (=> b!2873097 (= e!1818304 (or (not (= (v!34535 lt!1018283) Nil!34384)) (= lt!1018297 (v!34535 lt!1018284))))))

(declare-fun b!2873096 () Bool)

(declare-fun res!1191802 () Bool)

(assert (=> b!2873096 (=> (not res!1191802) (not e!1818304))))

(assert (=> b!2873096 (= res!1191802 (= (size!26322 lt!1018297) (+ (size!26322 (v!34535 lt!1018284)) (size!26322 (v!34535 lt!1018283)))))))

(declare-fun d!830347 () Bool)

(assert (=> d!830347 e!1818304))

(declare-fun res!1191803 () Bool)

(assert (=> d!830347 (=> (not res!1191803) (not e!1818304))))

(assert (=> d!830347 (= res!1191803 (= (content!4701 lt!1018297) ((_ map or) (content!4701 (v!34535 lt!1018284)) (content!4701 (v!34535 lt!1018283)))))))

(declare-fun e!1818303 () List!34508)

(assert (=> d!830347 (= lt!1018297 e!1818303)))

(declare-fun c!465110 () Bool)

(assert (=> d!830347 (= c!465110 ((_ is Nil!34384) (v!34535 lt!1018284)))))

(assert (=> d!830347 (= (++!8175 (v!34535 lt!1018284) (v!34535 lt!1018283)) lt!1018297)))

(declare-fun b!2873094 () Bool)

(assert (=> b!2873094 (= e!1818303 (v!34535 lt!1018283))))

(declare-fun b!2873095 () Bool)

(assert (=> b!2873095 (= e!1818303 (Cons!34384 (h!39804 (v!34535 lt!1018284)) (++!8175 (t!233551 (v!34535 lt!1018284)) (v!34535 lt!1018283))))))

(assert (= (and d!830347 c!465110) b!2873094))

(assert (= (and d!830347 (not c!465110)) b!2873095))

(assert (= (and d!830347 res!1191803) b!2873096))

(assert (= (and b!2873096 res!1191802) b!2873097))

(declare-fun m!3291191 () Bool)

(assert (=> b!2873096 m!3291191))

(declare-fun m!3291193 () Bool)

(assert (=> b!2873096 m!3291193))

(declare-fun m!3291195 () Bool)

(assert (=> b!2873096 m!3291195))

(declare-fun m!3291197 () Bool)

(assert (=> d!830347 m!3291197))

(declare-fun m!3291199 () Bool)

(assert (=> d!830347 m!3291199))

(declare-fun m!3291201 () Bool)

(assert (=> d!830347 m!3291201))

(declare-fun m!3291203 () Bool)

(assert (=> b!2873095 m!3291203))

(assert (=> b!2872943 d!830347))

(declare-fun d!830349 () Bool)

(declare-fun c!465113 () Bool)

(assert (=> d!830349 (= c!465113 ((_ is Nil!34384) lt!1018271))))

(declare-fun e!1818307 () (InoxSet C!17660))

(assert (=> d!830349 (= (content!4701 lt!1018271) e!1818307)))

(declare-fun b!2873102 () Bool)

(assert (=> b!2873102 (= e!1818307 ((as const (Array C!17660 Bool)) false))))

(declare-fun b!2873103 () Bool)

(assert (=> b!2873103 (= e!1818307 ((_ map or) (store ((as const (Array C!17660 Bool)) false) (h!39804 lt!1018271) true) (content!4701 (t!233551 lt!1018271))))))

(assert (= (and d!830349 c!465113) b!2873102))

(assert (= (and d!830349 (not c!465113)) b!2873103))

(declare-fun m!3291205 () Bool)

(assert (=> b!2873103 m!3291205))

(declare-fun m!3291207 () Bool)

(assert (=> b!2873103 m!3291207))

(assert (=> d!830231 d!830349))

(declare-fun d!830351 () Bool)

(declare-fun c!465114 () Bool)

(assert (=> d!830351 (= c!465114 ((_ is Nil!34384) (v!34535 lt!1018235)))))

(declare-fun e!1818308 () (InoxSet C!17660))

(assert (=> d!830351 (= (content!4701 (v!34535 lt!1018235)) e!1818308)))

(declare-fun b!2873104 () Bool)

(assert (=> b!2873104 (= e!1818308 ((as const (Array C!17660 Bool)) false))))

(declare-fun b!2873105 () Bool)

(assert (=> b!2873105 (= e!1818308 ((_ map or) (store ((as const (Array C!17660 Bool)) false) (h!39804 (v!34535 lt!1018235)) true) (content!4701 (t!233551 (v!34535 lt!1018235)))))))

(assert (= (and d!830351 c!465114) b!2873104))

(assert (= (and d!830351 (not c!465114)) b!2873105))

(declare-fun m!3291209 () Bool)

(assert (=> b!2873105 m!3291209))

(declare-fun m!3291211 () Bool)

(assert (=> b!2873105 m!3291211))

(assert (=> d!830231 d!830351))

(declare-fun d!830353 () Bool)

(declare-fun c!465115 () Bool)

(assert (=> d!830353 (= c!465115 ((_ is Nil!34384) (v!34535 lt!1018234)))))

(declare-fun e!1818309 () (InoxSet C!17660))

(assert (=> d!830353 (= (content!4701 (v!34535 lt!1018234)) e!1818309)))

(declare-fun b!2873106 () Bool)

(assert (=> b!2873106 (= e!1818309 ((as const (Array C!17660 Bool)) false))))

(declare-fun b!2873107 () Bool)

(assert (=> b!2873107 (= e!1818309 ((_ map or) (store ((as const (Array C!17660 Bool)) false) (h!39804 (v!34535 lt!1018234)) true) (content!4701 (t!233551 (v!34535 lt!1018234)))))))

(assert (= (and d!830353 c!465115) b!2873106))

(assert (= (and d!830353 (not c!465115)) b!2873107))

(declare-fun m!3291213 () Bool)

(assert (=> b!2873107 m!3291213))

(declare-fun m!3291215 () Bool)

(assert (=> b!2873107 m!3291215))

(assert (=> d!830231 d!830353))

(declare-fun bm!185683 () Bool)

(declare-fun call!185688 () Bool)

(assert (=> bm!185683 (= call!185688 (isEmpty!18720 (tail!4569 (tail!4569 (get!10335 lt!1018175)))))))

(declare-fun b!2873108 () Bool)

(declare-fun res!1191809 () Bool)

(declare-fun e!1818313 () Bool)

(assert (=> b!2873108 (=> (not res!1191809) (not e!1818313))))

(assert (=> b!2873108 (= res!1191809 (isEmpty!18720 (tail!4569 (tail!4569 (tail!4569 (get!10335 lt!1018175))))))))

(declare-fun b!2873109 () Bool)

(declare-fun e!1818311 () Bool)

(declare-fun lt!1018298 () Bool)

(assert (=> b!2873109 (= e!1818311 (= lt!1018298 call!185688))))

(declare-fun d!830355 () Bool)

(assert (=> d!830355 e!1818311))

(declare-fun c!465117 () Bool)

(assert (=> d!830355 (= c!465117 ((_ is EmptyExpr!8739) (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175))))))))

(declare-fun e!1818315 () Bool)

(assert (=> d!830355 (= lt!1018298 e!1818315)))

(declare-fun c!465116 () Bool)

(assert (=> d!830355 (= c!465116 (isEmpty!18720 (tail!4569 (tail!4569 (get!10335 lt!1018175)))))))

(assert (=> d!830355 (validRegex!3517 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175)))))))

(assert (=> d!830355 (= (matchR!3739 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175)))) (tail!4569 (tail!4569 (get!10335 lt!1018175)))) lt!1018298)))

(declare-fun b!2873110 () Bool)

(declare-fun res!1191805 () Bool)

(declare-fun e!1818314 () Bool)

(assert (=> b!2873110 (=> res!1191805 e!1818314)))

(assert (=> b!2873110 (= res!1191805 (not ((_ is ElementMatch!8739) (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175)))))))))

(declare-fun e!1818310 () Bool)

(assert (=> b!2873110 (= e!1818310 e!1818314)))

(declare-fun b!2873111 () Bool)

(declare-fun res!1191806 () Bool)

(declare-fun e!1818312 () Bool)

(assert (=> b!2873111 (=> res!1191806 e!1818312)))

(assert (=> b!2873111 (= res!1191806 (not (isEmpty!18720 (tail!4569 (tail!4569 (tail!4569 (get!10335 lt!1018175)))))))))

(declare-fun b!2873112 () Bool)

(assert (=> b!2873112 (= e!1818315 (matchR!3739 (derivativeStep!2322 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175)))) (head!6344 (tail!4569 (tail!4569 (get!10335 lt!1018175))))) (tail!4569 (tail!4569 (tail!4569 (get!10335 lt!1018175))))))))

(declare-fun b!2873113 () Bool)

(assert (=> b!2873113 (= e!1818312 (not (= (head!6344 (tail!4569 (tail!4569 (get!10335 lt!1018175)))) (c!464816 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175))))))))))

(declare-fun b!2873114 () Bool)

(assert (=> b!2873114 (= e!1818311 e!1818310)))

(declare-fun c!465118 () Bool)

(assert (=> b!2873114 (= c!465118 ((_ is EmptyLang!8739) (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175))))))))

(declare-fun b!2873115 () Bool)

(assert (=> b!2873115 (= e!1818313 (= (head!6344 (tail!4569 (tail!4569 (get!10335 lt!1018175)))) (c!464816 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175)))))))))

(declare-fun b!2873116 () Bool)

(declare-fun res!1191804 () Bool)

(assert (=> b!2873116 (=> res!1191804 e!1818314)))

(assert (=> b!2873116 (= res!1191804 e!1818313)))

(declare-fun res!1191807 () Bool)

(assert (=> b!2873116 (=> (not res!1191807) (not e!1818313))))

(assert (=> b!2873116 (= res!1191807 lt!1018298)))

(declare-fun b!2873117 () Bool)

(assert (=> b!2873117 (= e!1818315 (nullable!2689 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175))))))))

(declare-fun b!2873118 () Bool)

(declare-fun res!1191810 () Bool)

(assert (=> b!2873118 (=> (not res!1191810) (not e!1818313))))

(assert (=> b!2873118 (= res!1191810 (not call!185688))))

(declare-fun b!2873119 () Bool)

(declare-fun e!1818316 () Bool)

(assert (=> b!2873119 (= e!1818316 e!1818312)))

(declare-fun res!1191808 () Bool)

(assert (=> b!2873119 (=> res!1191808 e!1818312)))

(assert (=> b!2873119 (= res!1191808 call!185688)))

(declare-fun b!2873120 () Bool)

(assert (=> b!2873120 (= e!1818314 e!1818316)))

(declare-fun res!1191811 () Bool)

(assert (=> b!2873120 (=> (not res!1191811) (not e!1818316))))

(assert (=> b!2873120 (= res!1191811 (not lt!1018298))))

(declare-fun b!2873121 () Bool)

(assert (=> b!2873121 (= e!1818310 (not lt!1018298))))

(assert (= (and d!830355 c!465116) b!2873117))

(assert (= (and d!830355 (not c!465116)) b!2873112))

(assert (= (and d!830355 c!465117) b!2873109))

(assert (= (and d!830355 (not c!465117)) b!2873114))

(assert (= (and b!2873114 c!465118) b!2873121))

(assert (= (and b!2873114 (not c!465118)) b!2873110))

(assert (= (and b!2873110 (not res!1191805)) b!2873116))

(assert (= (and b!2873116 res!1191807) b!2873118))

(assert (= (and b!2873118 res!1191810) b!2873108))

(assert (= (and b!2873108 res!1191809) b!2873115))

(assert (= (and b!2873116 (not res!1191804)) b!2873120))

(assert (= (and b!2873120 res!1191811) b!2873119))

(assert (= (and b!2873119 (not res!1191808)) b!2873111))

(assert (= (and b!2873111 (not res!1191806)) b!2873113))

(assert (= (or b!2873109 b!2873118 b!2873119) bm!185683))

(assert (=> b!2873113 m!3290901))

(declare-fun m!3291217 () Bool)

(assert (=> b!2873113 m!3291217))

(assert (=> bm!185683 m!3290901))

(assert (=> bm!185683 m!3290907))

(assert (=> b!2873115 m!3290901))

(assert (=> b!2873115 m!3291217))

(assert (=> b!2873112 m!3290901))

(assert (=> b!2873112 m!3291217))

(assert (=> b!2873112 m!3290899))

(assert (=> b!2873112 m!3291217))

(declare-fun m!3291219 () Bool)

(assert (=> b!2873112 m!3291219))

(assert (=> b!2873112 m!3290901))

(declare-fun m!3291221 () Bool)

(assert (=> b!2873112 m!3291221))

(assert (=> b!2873112 m!3291219))

(assert (=> b!2873112 m!3291221))

(declare-fun m!3291223 () Bool)

(assert (=> b!2873112 m!3291223))

(assert (=> b!2873117 m!3290899))

(declare-fun m!3291225 () Bool)

(assert (=> b!2873117 m!3291225))

(assert (=> b!2873111 m!3290901))

(assert (=> b!2873111 m!3291221))

(assert (=> b!2873111 m!3291221))

(declare-fun m!3291227 () Bool)

(assert (=> b!2873111 m!3291227))

(assert (=> d!830355 m!3290901))

(assert (=> d!830355 m!3290907))

(assert (=> d!830355 m!3290899))

(declare-fun m!3291229 () Bool)

(assert (=> d!830355 m!3291229))

(assert (=> b!2873108 m!3290901))

(assert (=> b!2873108 m!3291221))

(assert (=> b!2873108 m!3291221))

(assert (=> b!2873108 m!3291227))

(assert (=> b!2872723 d!830355))

(declare-fun bm!185684 () Bool)

(declare-fun call!185689 () Regex!8739)

(declare-fun call!185692 () Regex!8739)

(assert (=> bm!185684 (= call!185689 call!185692)))

(declare-fun bm!185685 () Bool)

(declare-fun call!185691 () Regex!8739)

(assert (=> bm!185685 (= call!185692 call!185691)))

(declare-fun c!465123 () Bool)

(declare-fun bm!185686 () Bool)

(declare-fun call!185690 () Regex!8739)

(assert (=> bm!185686 (= call!185690 (derivativeStep!2322 (ite c!465123 (regOne!17991 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) (regTwo!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))) (head!6344 (tail!4569 (get!10335 lt!1018175)))))))

(declare-fun b!2873122 () Bool)

(declare-fun c!465121 () Bool)

(assert (=> b!2873122 (= c!465121 (nullable!2689 (regOne!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))))))

(declare-fun e!1818318 () Regex!8739)

(declare-fun e!1818319 () Regex!8739)

(assert (=> b!2873122 (= e!1818318 e!1818319)))

(declare-fun b!2873123 () Bool)

(assert (=> b!2873123 (= e!1818318 (Concat!14060 call!185692 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun b!2873124 () Bool)

(declare-fun e!1818317 () Regex!8739)

(declare-fun e!1818320 () Regex!8739)

(assert (=> b!2873124 (= e!1818317 e!1818320)))

(declare-fun c!465119 () Bool)

(assert (=> b!2873124 (= c!465119 ((_ is ElementMatch!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun b!2873125 () Bool)

(assert (=> b!2873125 (= e!1818320 (ite (= (head!6344 (tail!4569 (get!10335 lt!1018175))) (c!464816 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2873127 () Bool)

(declare-fun e!1818321 () Regex!8739)

(assert (=> b!2873127 (= e!1818321 e!1818318)))

(declare-fun c!465120 () Bool)

(assert (=> b!2873127 (= c!465120 ((_ is Star!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun bm!185687 () Bool)

(assert (=> bm!185687 (= call!185691 (derivativeStep!2322 (ite c!465123 (regTwo!17991 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) (ite c!465120 (reg!9068 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) (regOne!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))) (head!6344 (tail!4569 (get!10335 lt!1018175)))))))

(declare-fun b!2873128 () Bool)

(assert (=> b!2873128 (= c!465123 ((_ is Union!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(assert (=> b!2873128 (= e!1818320 e!1818321)))

(declare-fun b!2873129 () Bool)

(assert (=> b!2873129 (= e!1818321 (Union!8739 call!185690 call!185691))))

(declare-fun b!2873130 () Bool)

(assert (=> b!2873130 (= e!1818319 (Union!8739 (Concat!14060 call!185689 (regTwo!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))) call!185690))))

(declare-fun b!2873131 () Bool)

(assert (=> b!2873131 (= e!1818319 (Union!8739 (Concat!14060 call!185689 (regTwo!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))) EmptyLang!8739))))

(declare-fun b!2873126 () Bool)

(assert (=> b!2873126 (= e!1818317 EmptyLang!8739)))

(declare-fun d!830357 () Bool)

(declare-fun lt!1018299 () Regex!8739)

(assert (=> d!830357 (validRegex!3517 lt!1018299)))

(assert (=> d!830357 (= lt!1018299 e!1818317)))

(declare-fun c!465122 () Bool)

(assert (=> d!830357 (= c!465122 (or ((_ is EmptyExpr!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) ((_ is EmptyLang!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))))))

(assert (=> d!830357 (validRegex!3517 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))))

(assert (=> d!830357 (= (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))) (head!6344 (tail!4569 (get!10335 lt!1018175)))) lt!1018299)))

(assert (= (and d!830357 c!465122) b!2873126))

(assert (= (and d!830357 (not c!465122)) b!2873124))

(assert (= (and b!2873124 c!465119) b!2873125))

(assert (= (and b!2873124 (not c!465119)) b!2873128))

(assert (= (and b!2873128 c!465123) b!2873129))

(assert (= (and b!2873128 (not c!465123)) b!2873127))

(assert (= (and b!2873127 c!465120) b!2873123))

(assert (= (and b!2873127 (not c!465120)) b!2873122))

(assert (= (and b!2873122 c!465121) b!2873130))

(assert (= (and b!2873122 (not c!465121)) b!2873131))

(assert (= (or b!2873130 b!2873131) bm!185684))

(assert (= (or b!2873123 bm!185684) bm!185685))

(assert (= (or b!2873129 b!2873130) bm!185686))

(assert (= (or b!2873129 bm!185685) bm!185687))

(assert (=> bm!185686 m!3290897))

(declare-fun m!3291231 () Bool)

(assert (=> bm!185686 m!3291231))

(declare-fun m!3291233 () Bool)

(assert (=> b!2873122 m!3291233))

(assert (=> bm!185687 m!3290897))

(declare-fun m!3291235 () Bool)

(assert (=> bm!185687 m!3291235))

(declare-fun m!3291237 () Bool)

(assert (=> d!830357 m!3291237))

(assert (=> d!830357 m!3290685))

(assert (=> d!830357 m!3290909))

(assert (=> b!2872723 d!830357))

(declare-fun d!830359 () Bool)

(assert (=> d!830359 (= (head!6344 (tail!4569 (get!10335 lt!1018175))) (h!39804 (tail!4569 (get!10335 lt!1018175))))))

(assert (=> b!2872723 d!830359))

(assert (=> b!2872723 d!830331))

(declare-fun lt!1018300 () List!34508)

(declare-fun b!2873135 () Bool)

(declare-fun e!1818323 () Bool)

(assert (=> b!2873135 (= e!1818323 (or (not (= (v!34535 lt!1018273) Nil!34384)) (= lt!1018300 (v!34535 lt!1018275))))))

(declare-fun b!2873134 () Bool)

(declare-fun res!1191812 () Bool)

(assert (=> b!2873134 (=> (not res!1191812) (not e!1818323))))

(assert (=> b!2873134 (= res!1191812 (= (size!26322 lt!1018300) (+ (size!26322 (v!34535 lt!1018275)) (size!26322 (v!34535 lt!1018273)))))))

(declare-fun d!830361 () Bool)

(assert (=> d!830361 e!1818323))

(declare-fun res!1191813 () Bool)

(assert (=> d!830361 (=> (not res!1191813) (not e!1818323))))

(assert (=> d!830361 (= res!1191813 (= (content!4701 lt!1018300) ((_ map or) (content!4701 (v!34535 lt!1018275)) (content!4701 (v!34535 lt!1018273)))))))

(declare-fun e!1818322 () List!34508)

(assert (=> d!830361 (= lt!1018300 e!1818322)))

(declare-fun c!465124 () Bool)

(assert (=> d!830361 (= c!465124 ((_ is Nil!34384) (v!34535 lt!1018275)))))

(assert (=> d!830361 (= (++!8175 (v!34535 lt!1018275) (v!34535 lt!1018273)) lt!1018300)))

(declare-fun b!2873132 () Bool)

(assert (=> b!2873132 (= e!1818322 (v!34535 lt!1018273))))

(declare-fun b!2873133 () Bool)

(assert (=> b!2873133 (= e!1818322 (Cons!34384 (h!39804 (v!34535 lt!1018275)) (++!8175 (t!233551 (v!34535 lt!1018275)) (v!34535 lt!1018273))))))

(assert (= (and d!830361 c!465124) b!2873132))

(assert (= (and d!830361 (not c!465124)) b!2873133))

(assert (= (and d!830361 res!1191813) b!2873134))

(assert (= (and b!2873134 res!1191812) b!2873135))

(declare-fun m!3291239 () Bool)

(assert (=> b!2873134 m!3291239))

(declare-fun m!3291241 () Bool)

(assert (=> b!2873134 m!3291241))

(declare-fun m!3291243 () Bool)

(assert (=> b!2873134 m!3291243))

(declare-fun m!3291245 () Bool)

(assert (=> d!830361 m!3291245))

(declare-fun m!3291247 () Bool)

(assert (=> d!830361 m!3291247))

(declare-fun m!3291249 () Bool)

(assert (=> d!830361 m!3291249))

(declare-fun m!3291251 () Bool)

(assert (=> b!2873133 m!3291251))

(assert (=> b!2872863 d!830361))

(declare-fun bm!185688 () Bool)

(declare-fun call!185693 () Bool)

(assert (=> bm!185688 (= call!185693 (isEmpty!18720 (tail!4569 (tail!4569 (v!34535 lt!1018175)))))))

(declare-fun b!2873136 () Bool)

(declare-fun res!1191819 () Bool)

(declare-fun e!1818327 () Bool)

(assert (=> b!2873136 (=> (not res!1191819) (not e!1818327))))

(assert (=> b!2873136 (= res!1191819 (isEmpty!18720 (tail!4569 (tail!4569 (tail!4569 (v!34535 lt!1018175))))))))

(declare-fun b!2873137 () Bool)

(declare-fun e!1818325 () Bool)

(declare-fun lt!1018301 () Bool)

(assert (=> b!2873137 (= e!1818325 (= lt!1018301 call!185693))))

(declare-fun d!830363 () Bool)

(assert (=> d!830363 e!1818325))

(declare-fun c!465126 () Bool)

(assert (=> d!830363 (= c!465126 ((_ is EmptyExpr!8739) (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175))))))))

(declare-fun e!1818329 () Bool)

(assert (=> d!830363 (= lt!1018301 e!1818329)))

(declare-fun c!465125 () Bool)

(assert (=> d!830363 (= c!465125 (isEmpty!18720 (tail!4569 (tail!4569 (v!34535 lt!1018175)))))))

(assert (=> d!830363 (validRegex!3517 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175)))))))

(assert (=> d!830363 (= (matchR!3739 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175)))) (tail!4569 (tail!4569 (v!34535 lt!1018175)))) lt!1018301)))

(declare-fun b!2873138 () Bool)

(declare-fun res!1191815 () Bool)

(declare-fun e!1818328 () Bool)

(assert (=> b!2873138 (=> res!1191815 e!1818328)))

(assert (=> b!2873138 (= res!1191815 (not ((_ is ElementMatch!8739) (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175)))))))))

(declare-fun e!1818324 () Bool)

(assert (=> b!2873138 (= e!1818324 e!1818328)))

(declare-fun b!2873139 () Bool)

(declare-fun res!1191816 () Bool)

(declare-fun e!1818326 () Bool)

(assert (=> b!2873139 (=> res!1191816 e!1818326)))

(assert (=> b!2873139 (= res!1191816 (not (isEmpty!18720 (tail!4569 (tail!4569 (tail!4569 (v!34535 lt!1018175)))))))))

(declare-fun b!2873140 () Bool)

(assert (=> b!2873140 (= e!1818329 (matchR!3739 (derivativeStep!2322 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175)))) (head!6344 (tail!4569 (tail!4569 (v!34535 lt!1018175))))) (tail!4569 (tail!4569 (tail!4569 (v!34535 lt!1018175))))))))

(declare-fun b!2873141 () Bool)

(assert (=> b!2873141 (= e!1818326 (not (= (head!6344 (tail!4569 (tail!4569 (v!34535 lt!1018175)))) (c!464816 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175))))))))))

(declare-fun b!2873142 () Bool)

(assert (=> b!2873142 (= e!1818325 e!1818324)))

(declare-fun c!465127 () Bool)

(assert (=> b!2873142 (= c!465127 ((_ is EmptyLang!8739) (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175))))))))

(declare-fun b!2873143 () Bool)

(assert (=> b!2873143 (= e!1818327 (= (head!6344 (tail!4569 (tail!4569 (v!34535 lt!1018175)))) (c!464816 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175)))))))))

(declare-fun b!2873144 () Bool)

(declare-fun res!1191814 () Bool)

(assert (=> b!2873144 (=> res!1191814 e!1818328)))

(assert (=> b!2873144 (= res!1191814 e!1818327)))

(declare-fun res!1191817 () Bool)

(assert (=> b!2873144 (=> (not res!1191817) (not e!1818327))))

(assert (=> b!2873144 (= res!1191817 lt!1018301)))

(declare-fun b!2873145 () Bool)

(assert (=> b!2873145 (= e!1818329 (nullable!2689 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175))))))))

(declare-fun b!2873146 () Bool)

(declare-fun res!1191820 () Bool)

(assert (=> b!2873146 (=> (not res!1191820) (not e!1818327))))

(assert (=> b!2873146 (= res!1191820 (not call!185693))))

(declare-fun b!2873147 () Bool)

(declare-fun e!1818330 () Bool)

(assert (=> b!2873147 (= e!1818330 e!1818326)))

(declare-fun res!1191818 () Bool)

(assert (=> b!2873147 (=> res!1191818 e!1818326)))

(assert (=> b!2873147 (= res!1191818 call!185693)))

(declare-fun b!2873148 () Bool)

(assert (=> b!2873148 (= e!1818328 e!1818330)))

(declare-fun res!1191821 () Bool)

(assert (=> b!2873148 (=> (not res!1191821) (not e!1818330))))

(assert (=> b!2873148 (= res!1191821 (not lt!1018301))))

(declare-fun b!2873149 () Bool)

(assert (=> b!2873149 (= e!1818324 (not lt!1018301))))

(assert (= (and d!830363 c!465125) b!2873145))

(assert (= (and d!830363 (not c!465125)) b!2873140))

(assert (= (and d!830363 c!465126) b!2873137))

(assert (= (and d!830363 (not c!465126)) b!2873142))

(assert (= (and b!2873142 c!465127) b!2873149))

(assert (= (and b!2873142 (not c!465127)) b!2873138))

(assert (= (and b!2873138 (not res!1191815)) b!2873144))

(assert (= (and b!2873144 res!1191817) b!2873146))

(assert (= (and b!2873146 res!1191820) b!2873136))

(assert (= (and b!2873136 res!1191819) b!2873143))

(assert (= (and b!2873144 (not res!1191814)) b!2873148))

(assert (= (and b!2873148 res!1191821) b!2873147))

(assert (= (and b!2873147 (not res!1191818)) b!2873139))

(assert (= (and b!2873139 (not res!1191816)) b!2873141))

(assert (= (or b!2873137 b!2873146 b!2873147) bm!185688))

(assert (=> b!2873141 m!3290787))

(declare-fun m!3291253 () Bool)

(assert (=> b!2873141 m!3291253))

(assert (=> bm!185688 m!3290787))

(assert (=> bm!185688 m!3290793))

(assert (=> b!2873143 m!3290787))

(assert (=> b!2873143 m!3291253))

(assert (=> b!2873140 m!3290787))

(assert (=> b!2873140 m!3291253))

(assert (=> b!2873140 m!3290785))

(assert (=> b!2873140 m!3291253))

(declare-fun m!3291255 () Bool)

(assert (=> b!2873140 m!3291255))

(assert (=> b!2873140 m!3290787))

(declare-fun m!3291257 () Bool)

(assert (=> b!2873140 m!3291257))

(assert (=> b!2873140 m!3291255))

(assert (=> b!2873140 m!3291257))

(declare-fun m!3291259 () Bool)

(assert (=> b!2873140 m!3291259))

(assert (=> b!2873145 m!3290785))

(declare-fun m!3291261 () Bool)

(assert (=> b!2873145 m!3291261))

(assert (=> b!2873139 m!3290787))

(assert (=> b!2873139 m!3291257))

(assert (=> b!2873139 m!3291257))

(declare-fun m!3291263 () Bool)

(assert (=> b!2873139 m!3291263))

(assert (=> d!830363 m!3290787))

(assert (=> d!830363 m!3290793))

(assert (=> d!830363 m!3290785))

(declare-fun m!3291265 () Bool)

(assert (=> d!830363 m!3291265))

(assert (=> b!2873136 m!3290787))

(assert (=> b!2873136 m!3291257))

(assert (=> b!2873136 m!3291257))

(assert (=> b!2873136 m!3291263))

(assert (=> b!2872580 d!830363))

(declare-fun bm!185689 () Bool)

(declare-fun call!185694 () Regex!8739)

(declare-fun call!185697 () Regex!8739)

(assert (=> bm!185689 (= call!185694 call!185697)))

(declare-fun bm!185690 () Bool)

(declare-fun call!185696 () Regex!8739)

(assert (=> bm!185690 (= call!185697 call!185696)))

(declare-fun bm!185691 () Bool)

(declare-fun call!185695 () Regex!8739)

(declare-fun c!465132 () Bool)

(assert (=> bm!185691 (= call!185695 (derivativeStep!2322 (ite c!465132 (regOne!17991 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) (regTwo!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))) (head!6344 (tail!4569 (v!34535 lt!1018175)))))))

(declare-fun b!2873150 () Bool)

(declare-fun c!465130 () Bool)

(assert (=> b!2873150 (= c!465130 (nullable!2689 (regOne!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))))))

(declare-fun e!1818332 () Regex!8739)

(declare-fun e!1818333 () Regex!8739)

(assert (=> b!2873150 (= e!1818332 e!1818333)))

(declare-fun b!2873151 () Bool)

(assert (=> b!2873151 (= e!1818332 (Concat!14060 call!185697 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun b!2873152 () Bool)

(declare-fun e!1818331 () Regex!8739)

(declare-fun e!1818334 () Regex!8739)

(assert (=> b!2873152 (= e!1818331 e!1818334)))

(declare-fun c!465128 () Bool)

(assert (=> b!2873152 (= c!465128 ((_ is ElementMatch!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun b!2873153 () Bool)

(assert (=> b!2873153 (= e!1818334 (ite (= (head!6344 (tail!4569 (v!34535 lt!1018175))) (c!464816 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2873155 () Bool)

(declare-fun e!1818335 () Regex!8739)

(assert (=> b!2873155 (= e!1818335 e!1818332)))

(declare-fun c!465129 () Bool)

(assert (=> b!2873155 (= c!465129 ((_ is Star!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun bm!185692 () Bool)

(assert (=> bm!185692 (= call!185696 (derivativeStep!2322 (ite c!465132 (regTwo!17991 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) (ite c!465129 (reg!9068 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) (regOne!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))) (head!6344 (tail!4569 (v!34535 lt!1018175)))))))

(declare-fun b!2873156 () Bool)

(assert (=> b!2873156 (= c!465132 ((_ is Union!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(assert (=> b!2873156 (= e!1818334 e!1818335)))

(declare-fun b!2873157 () Bool)

(assert (=> b!2873157 (= e!1818335 (Union!8739 call!185695 call!185696))))

(declare-fun b!2873158 () Bool)

(assert (=> b!2873158 (= e!1818333 (Union!8739 (Concat!14060 call!185694 (regTwo!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))) call!185695))))

(declare-fun b!2873159 () Bool)

(assert (=> b!2873159 (= e!1818333 (Union!8739 (Concat!14060 call!185694 (regTwo!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))) EmptyLang!8739))))

(declare-fun b!2873154 () Bool)

(assert (=> b!2873154 (= e!1818331 EmptyLang!8739)))

(declare-fun d!830365 () Bool)

(declare-fun lt!1018302 () Regex!8739)

(assert (=> d!830365 (validRegex!3517 lt!1018302)))

(assert (=> d!830365 (= lt!1018302 e!1818331)))

(declare-fun c!465131 () Bool)

(assert (=> d!830365 (= c!465131 (or ((_ is EmptyExpr!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) ((_ is EmptyLang!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))))))

(assert (=> d!830365 (validRegex!3517 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))))

(assert (=> d!830365 (= (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))) (head!6344 (tail!4569 (v!34535 lt!1018175)))) lt!1018302)))

(assert (= (and d!830365 c!465131) b!2873154))

(assert (= (and d!830365 (not c!465131)) b!2873152))

(assert (= (and b!2873152 c!465128) b!2873153))

(assert (= (and b!2873152 (not c!465128)) b!2873156))

(assert (= (and b!2873156 c!465132) b!2873157))

(assert (= (and b!2873156 (not c!465132)) b!2873155))

(assert (= (and b!2873155 c!465129) b!2873151))

(assert (= (and b!2873155 (not c!465129)) b!2873150))

(assert (= (and b!2873150 c!465130) b!2873158))

(assert (= (and b!2873150 (not c!465130)) b!2873159))

(assert (= (or b!2873158 b!2873159) bm!185689))

(assert (= (or b!2873151 bm!185689) bm!185690))

(assert (= (or b!2873157 b!2873158) bm!185691))

(assert (= (or b!2873157 bm!185690) bm!185692))

(assert (=> bm!185691 m!3290783))

(declare-fun m!3291267 () Bool)

(assert (=> bm!185691 m!3291267))

(declare-fun m!3291269 () Bool)

(assert (=> b!2873150 m!3291269))

(assert (=> bm!185692 m!3290783))

(declare-fun m!3291271 () Bool)

(assert (=> bm!185692 m!3291271))

(declare-fun m!3291273 () Bool)

(assert (=> d!830365 m!3291273))

(assert (=> d!830365 m!3290713))

(assert (=> d!830365 m!3290795))

(assert (=> b!2872580 d!830365))

(declare-fun d!830367 () Bool)

(assert (=> d!830367 (= (head!6344 (tail!4569 (v!34535 lt!1018175))) (h!39804 (tail!4569 (v!34535 lt!1018175))))))

(assert (=> b!2872580 d!830367))

(assert (=> b!2872580 d!830335))

(declare-fun e!1818337 () Bool)

(declare-fun lt!1018303 () List!34508)

(declare-fun b!2873163 () Bool)

(assert (=> b!2873163 (= e!1818337 (or (not (= (v!34535 lt!1018234) Nil!34384)) (= lt!1018303 (t!233551 (v!34535 lt!1018235)))))))

(declare-fun b!2873162 () Bool)

(declare-fun res!1191822 () Bool)

(assert (=> b!2873162 (=> (not res!1191822) (not e!1818337))))

(assert (=> b!2873162 (= res!1191822 (= (size!26322 lt!1018303) (+ (size!26322 (t!233551 (v!34535 lt!1018235))) (size!26322 (v!34535 lt!1018234)))))))

(declare-fun d!830369 () Bool)

(assert (=> d!830369 e!1818337))

(declare-fun res!1191823 () Bool)

(assert (=> d!830369 (=> (not res!1191823) (not e!1818337))))

(assert (=> d!830369 (= res!1191823 (= (content!4701 lt!1018303) ((_ map or) (content!4701 (t!233551 (v!34535 lt!1018235))) (content!4701 (v!34535 lt!1018234)))))))

(declare-fun e!1818336 () List!34508)

(assert (=> d!830369 (= lt!1018303 e!1818336)))

(declare-fun c!465133 () Bool)

(assert (=> d!830369 (= c!465133 ((_ is Nil!34384) (t!233551 (v!34535 lt!1018235))))))

(assert (=> d!830369 (= (++!8175 (t!233551 (v!34535 lt!1018235)) (v!34535 lt!1018234)) lt!1018303)))

(declare-fun b!2873160 () Bool)

(assert (=> b!2873160 (= e!1818336 (v!34535 lt!1018234))))

(declare-fun b!2873161 () Bool)

(assert (=> b!2873161 (= e!1818336 (Cons!34384 (h!39804 (t!233551 (v!34535 lt!1018235))) (++!8175 (t!233551 (t!233551 (v!34535 lt!1018235))) (v!34535 lt!1018234))))))

(assert (= (and d!830369 c!465133) b!2873160))

(assert (= (and d!830369 (not c!465133)) b!2873161))

(assert (= (and d!830369 res!1191823) b!2873162))

(assert (= (and b!2873162 res!1191822) b!2873163))

(declare-fun m!3291275 () Bool)

(assert (=> b!2873162 m!3291275))

(declare-fun m!3291277 () Bool)

(assert (=> b!2873162 m!3291277))

(assert (=> b!2873162 m!3290997))

(declare-fun m!3291279 () Bool)

(assert (=> d!830369 m!3291279))

(assert (=> d!830369 m!3291211))

(assert (=> d!830369 m!3291003))

(declare-fun m!3291281 () Bool)

(assert (=> b!2873161 m!3291281))

(assert (=> b!2872840 d!830369))

(declare-fun b!2873164 () Bool)

(declare-fun e!1818340 () Option!6414)

(declare-fun call!185699 () Option!6414)

(assert (=> b!2873164 (= e!1818340 call!185699)))

(declare-fun bm!185693 () Bool)

(declare-fun c!465141 () Bool)

(assert (=> bm!185693 (= call!185699 (getLanguageWitness!429 (ite c!465141 (regTwo!17991 (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))) (regTwo!17990 (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))))))))

(declare-fun b!2873165 () Bool)

(declare-fun e!1818342 () Option!6414)

(declare-fun e!1818345 () Option!6414)

(assert (=> b!2873165 (= e!1818342 e!1818345)))

(declare-fun c!465137 () Bool)

(assert (=> b!2873165 (= c!465137 ((_ is EmptyLang!8739) (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(declare-fun b!2873166 () Bool)

(declare-fun e!1818343 () Option!6414)

(assert (=> b!2873166 (= e!1818343 None!6413)))

(declare-fun b!2873167 () Bool)

(declare-fun c!465139 () Bool)

(assert (=> b!2873167 (= c!465139 ((_ is ElementMatch!8739) (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(declare-fun e!1818344 () Option!6414)

(assert (=> b!2873167 (= e!1818345 e!1818344)))

(declare-fun b!2873168 () Bool)

(assert (=> b!2873168 (= e!1818342 (Some!6413 Nil!34384))))

(declare-fun b!2873169 () Bool)

(declare-fun e!1818339 () Option!6414)

(assert (=> b!2873169 (= e!1818339 None!6413)))

(declare-fun d!830371 () Bool)

(declare-fun c!465136 () Bool)

(assert (=> d!830371 (= c!465136 ((_ is EmptyExpr!8739) (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(assert (=> d!830371 (= (getLanguageWitness!429 (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))) e!1818342)))

(declare-fun b!2873170 () Bool)

(declare-fun e!1818341 () Option!6414)

(assert (=> b!2873170 (= e!1818341 e!1818339)))

(declare-fun lt!1018305 () Option!6414)

(declare-fun call!185698 () Option!6414)

(assert (=> b!2873170 (= lt!1018305 call!185698)))

(declare-fun c!465135 () Bool)

(assert (=> b!2873170 (= c!465135 ((_ is Some!6413) lt!1018305))))

(declare-fun b!2873171 () Bool)

(assert (=> b!2873171 (= e!1818345 None!6413)))

(declare-fun b!2873172 () Bool)

(declare-fun e!1818338 () Option!6414)

(assert (=> b!2873172 (= e!1818338 (Some!6413 Nil!34384))))

(declare-fun bm!185694 () Bool)

(assert (=> bm!185694 (= call!185698 (getLanguageWitness!429 (ite c!465141 (regOne!17991 (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))) (regOne!17990 (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))))))))

(declare-fun b!2873173 () Bool)

(declare-fun lt!1018306 () Option!6414)

(assert (=> b!2873173 (= e!1818340 lt!1018306)))

(declare-fun b!2873174 () Bool)

(assert (=> b!2873174 (= e!1818344 e!1818338)))

(declare-fun c!465140 () Bool)

(assert (=> b!2873174 (= c!465140 ((_ is Star!8739) (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(declare-fun b!2873175 () Bool)

(assert (=> b!2873175 (= e!1818341 e!1818340)))

(assert (=> b!2873175 (= lt!1018306 call!185698)))

(declare-fun c!465134 () Bool)

(assert (=> b!2873175 (= c!465134 ((_ is Some!6413) lt!1018306))))

(declare-fun b!2873176 () Bool)

(declare-fun lt!1018304 () Option!6414)

(assert (=> b!2873176 (= e!1818343 (Some!6413 (++!8175 (v!34535 lt!1018305) (v!34535 lt!1018304))))))

(declare-fun b!2873177 () Bool)

(assert (=> b!2873177 (= c!465141 ((_ is Union!8739) (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(assert (=> b!2873177 (= e!1818338 e!1818341)))

(declare-fun b!2873178 () Bool)

(assert (=> b!2873178 (= e!1818344 (Some!6413 (Cons!34384 (c!464816 (ite c!465061 (regOne!17991 (h!39805 (exprs!3199 lt!1018172))) (regOne!17990 (h!39805 (exprs!3199 lt!1018172))))) Nil!34384)))))

(declare-fun b!2873179 () Bool)

(declare-fun c!465138 () Bool)

(assert (=> b!2873179 (= c!465138 ((_ is Some!6413) lt!1018304))))

(assert (=> b!2873179 (= lt!1018304 call!185699)))

(assert (=> b!2873179 (= e!1818339 e!1818343)))

(assert (= (and d!830371 c!465136) b!2873168))

(assert (= (and d!830371 (not c!465136)) b!2873165))

(assert (= (and b!2873165 c!465137) b!2873171))

(assert (= (and b!2873165 (not c!465137)) b!2873167))

(assert (= (and b!2873167 c!465139) b!2873178))

(assert (= (and b!2873167 (not c!465139)) b!2873174))

(assert (= (and b!2873174 c!465140) b!2873172))

(assert (= (and b!2873174 (not c!465140)) b!2873177))

(assert (= (and b!2873177 c!465141) b!2873175))

(assert (= (and b!2873177 (not c!465141)) b!2873170))

(assert (= (and b!2873175 c!465134) b!2873173))

(assert (= (and b!2873175 (not c!465134)) b!2873164))

(assert (= (and b!2873170 c!465135) b!2873179))

(assert (= (and b!2873170 (not c!465135)) b!2873169))

(assert (= (and b!2873179 c!465138) b!2873176))

(assert (= (and b!2873179 (not c!465138)) b!2873166))

(assert (= (or b!2873164 b!2873179) bm!185693))

(assert (= (or b!2873175 b!2873170) bm!185694))

(declare-fun m!3291283 () Bool)

(assert (=> bm!185693 m!3291283))

(declare-fun m!3291285 () Bool)

(assert (=> bm!185694 m!3291285))

(declare-fun m!3291287 () Bool)

(assert (=> b!2873176 m!3291287))

(assert (=> bm!185656 d!830371))

(declare-fun d!830373 () Bool)

(declare-fun lt!1018309 () Int)

(assert (=> d!830373 (>= lt!1018309 0)))

(declare-fun e!1818348 () Int)

(assert (=> d!830373 (= lt!1018309 e!1818348)))

(declare-fun c!465144 () Bool)

(assert (=> d!830373 (= c!465144 ((_ is Nil!34384) lt!1018276))))

(assert (=> d!830373 (= (size!26322 lt!1018276) lt!1018309)))

(declare-fun b!2873184 () Bool)

(assert (=> b!2873184 (= e!1818348 0)))

(declare-fun b!2873185 () Bool)

(assert (=> b!2873185 (= e!1818348 (+ 1 (size!26322 (t!233551 lt!1018276))))))

(assert (= (and d!830373 c!465144) b!2873184))

(assert (= (and d!830373 (not c!465144)) b!2873185))

(declare-fun m!3291289 () Bool)

(assert (=> b!2873185 m!3291289))

(assert (=> b!2872879 d!830373))

(declare-fun d!830375 () Bool)

(declare-fun lt!1018310 () Int)

(assert (=> d!830375 (>= lt!1018310 0)))

(declare-fun e!1818349 () Int)

(assert (=> d!830375 (= lt!1018310 e!1818349)))

(declare-fun c!465145 () Bool)

(assert (=> d!830375 (= c!465145 ((_ is Nil!34384) (v!34535 lt!1018217)))))

(assert (=> d!830375 (= (size!26322 (v!34535 lt!1018217)) lt!1018310)))

(declare-fun b!2873186 () Bool)

(assert (=> b!2873186 (= e!1818349 0)))

(declare-fun b!2873187 () Bool)

(assert (=> b!2873187 (= e!1818349 (+ 1 (size!26322 (t!233551 (v!34535 lt!1018217)))))))

(assert (= (and d!830375 c!465145) b!2873186))

(assert (= (and d!830375 (not c!465145)) b!2873187))

(declare-fun m!3291291 () Bool)

(assert (=> b!2873187 m!3291291))

(assert (=> b!2872879 d!830375))

(declare-fun d!830377 () Bool)

(declare-fun lt!1018311 () Int)

(assert (=> d!830377 (>= lt!1018311 0)))

(declare-fun e!1818350 () Int)

(assert (=> d!830377 (= lt!1018311 e!1818350)))

(declare-fun c!465146 () Bool)

(assert (=> d!830377 (= c!465146 ((_ is Nil!34384) (v!34535 lt!1018215)))))

(assert (=> d!830377 (= (size!26322 (v!34535 lt!1018215)) lt!1018311)))

(declare-fun b!2873188 () Bool)

(assert (=> b!2873188 (= e!1818350 0)))

(declare-fun b!2873189 () Bool)

(assert (=> b!2873189 (= e!1818350 (+ 1 (size!26322 (t!233551 (v!34535 lt!1018215)))))))

(assert (= (and d!830377 c!465146) b!2873188))

(assert (= (and d!830377 (not c!465146)) b!2873189))

(declare-fun m!3291293 () Bool)

(assert (=> b!2873189 m!3291293))

(assert (=> b!2872879 d!830377))

(assert (=> b!2872662 d!830195))

(assert (=> d!830201 d!830125))

(declare-fun b!2873190 () Bool)

(declare-fun e!1818353 () Bool)

(declare-fun call!185701 () Bool)

(assert (=> b!2873190 (= e!1818353 call!185701)))

(declare-fun b!2873191 () Bool)

(declare-fun res!1191827 () Bool)

(declare-fun e!1818356 () Bool)

(assert (=> b!2873191 (=> res!1191827 e!1818356)))

(assert (=> b!2873191 (= res!1191827 (not ((_ is Concat!14060) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))))))

(declare-fun e!1818354 () Bool)

(assert (=> b!2873191 (= e!1818354 e!1818356)))

(declare-fun call!185700 () Bool)

(declare-fun bm!185695 () Bool)

(declare-fun c!465148 () Bool)

(declare-fun c!465147 () Bool)

(assert (=> bm!185695 (= call!185700 (validRegex!3517 (ite c!465147 (reg!9068 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) (ite c!465148 (regOne!17991 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) (regTwo!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175))))))))))

(declare-fun bm!185696 () Bool)

(declare-fun call!185702 () Bool)

(assert (=> bm!185696 (= call!185702 call!185700)))

(declare-fun b!2873192 () Bool)

(declare-fun e!1818351 () Bool)

(assert (=> b!2873192 (= e!1818356 e!1818351)))

(declare-fun res!1191828 () Bool)

(assert (=> b!2873192 (=> (not res!1191828) (not e!1818351))))

(assert (=> b!2873192 (= res!1191828 call!185701)))

(declare-fun d!830379 () Bool)

(declare-fun res!1191826 () Bool)

(declare-fun e!1818352 () Bool)

(assert (=> d!830379 (=> res!1191826 e!1818352)))

(assert (=> d!830379 (= res!1191826 ((_ is ElementMatch!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(assert (=> d!830379 (= (validRegex!3517 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) e!1818352)))

(declare-fun b!2873193 () Bool)

(declare-fun e!1818357 () Bool)

(assert (=> b!2873193 (= e!1818357 e!1818354)))

(assert (=> b!2873193 (= c!465148 ((_ is Union!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun b!2873194 () Bool)

(assert (=> b!2873194 (= e!1818351 call!185702)))

(declare-fun b!2873195 () Bool)

(declare-fun e!1818355 () Bool)

(assert (=> b!2873195 (= e!1818355 call!185700)))

(declare-fun b!2873196 () Bool)

(assert (=> b!2873196 (= e!1818352 e!1818357)))

(assert (=> b!2873196 (= c!465147 ((_ is Star!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun b!2873197 () Bool)

(declare-fun res!1191824 () Bool)

(assert (=> b!2873197 (=> (not res!1191824) (not e!1818353))))

(assert (=> b!2873197 (= res!1191824 call!185702)))

(assert (=> b!2873197 (= e!1818354 e!1818353)))

(declare-fun bm!185697 () Bool)

(assert (=> bm!185697 (= call!185701 (validRegex!3517 (ite c!465148 (regTwo!17991 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) (regOne!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))))

(declare-fun b!2873198 () Bool)

(assert (=> b!2873198 (= e!1818357 e!1818355)))

(declare-fun res!1191825 () Bool)

(assert (=> b!2873198 (= res!1191825 (not (nullable!2689 (reg!9068 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))))

(assert (=> b!2873198 (=> (not res!1191825) (not e!1818355))))

(assert (= (and d!830379 (not res!1191826)) b!2873196))

(assert (= (and b!2873196 c!465147) b!2873198))

(assert (= (and b!2873196 (not c!465147)) b!2873193))

(assert (= (and b!2873198 res!1191825) b!2873195))

(assert (= (and b!2873193 c!465148) b!2873197))

(assert (= (and b!2873193 (not c!465148)) b!2873191))

(assert (= (and b!2873197 res!1191824) b!2873190))

(assert (= (and b!2873191 (not res!1191827)) b!2873192))

(assert (= (and b!2873192 res!1191828) b!2873194))

(assert (= (or b!2873190 b!2873192) bm!185697))

(assert (= (or b!2873197 b!2873194) bm!185696))

(assert (= (or b!2873195 bm!185696) bm!185695))

(declare-fun m!3291295 () Bool)

(assert (=> bm!185695 m!3291295))

(declare-fun m!3291297 () Bool)

(assert (=> bm!185697 m!3291297))

(declare-fun m!3291299 () Bool)

(assert (=> b!2873198 m!3291299))

(assert (=> d!830201 d!830379))

(declare-fun b!2873202 () Bool)

(declare-fun e!1818359 () Bool)

(declare-fun lt!1018312 () List!34508)

(assert (=> b!2873202 (= e!1818359 (or (not (= (v!34535 lt!1018280) Nil!34384)) (= lt!1018312 (v!34535 lt!1018281))))))

(declare-fun b!2873201 () Bool)

(declare-fun res!1191829 () Bool)

(assert (=> b!2873201 (=> (not res!1191829) (not e!1818359))))

(assert (=> b!2873201 (= res!1191829 (= (size!26322 lt!1018312) (+ (size!26322 (v!34535 lt!1018281)) (size!26322 (v!34535 lt!1018280)))))))

(declare-fun d!830381 () Bool)

(assert (=> d!830381 e!1818359))

(declare-fun res!1191830 () Bool)

(assert (=> d!830381 (=> (not res!1191830) (not e!1818359))))

(assert (=> d!830381 (= res!1191830 (= (content!4701 lt!1018312) ((_ map or) (content!4701 (v!34535 lt!1018281)) (content!4701 (v!34535 lt!1018280)))))))

(declare-fun e!1818358 () List!34508)

(assert (=> d!830381 (= lt!1018312 e!1818358)))

(declare-fun c!465149 () Bool)

(assert (=> d!830381 (= c!465149 ((_ is Nil!34384) (v!34535 lt!1018281)))))

(assert (=> d!830381 (= (++!8175 (v!34535 lt!1018281) (v!34535 lt!1018280)) lt!1018312)))

(declare-fun b!2873199 () Bool)

(assert (=> b!2873199 (= e!1818358 (v!34535 lt!1018280))))

(declare-fun b!2873200 () Bool)

(assert (=> b!2873200 (= e!1818358 (Cons!34384 (h!39804 (v!34535 lt!1018281)) (++!8175 (t!233551 (v!34535 lt!1018281)) (v!34535 lt!1018280))))))

(assert (= (and d!830381 c!465149) b!2873199))

(assert (= (and d!830381 (not c!465149)) b!2873200))

(assert (= (and d!830381 res!1191830) b!2873201))

(assert (= (and b!2873201 res!1191829) b!2873202))

(declare-fun m!3291301 () Bool)

(assert (=> b!2873201 m!3291301))

(declare-fun m!3291303 () Bool)

(assert (=> b!2873201 m!3291303))

(declare-fun m!3291305 () Bool)

(assert (=> b!2873201 m!3291305))

(declare-fun m!3291307 () Bool)

(assert (=> d!830381 m!3291307))

(declare-fun m!3291309 () Bool)

(assert (=> d!830381 m!3291309))

(declare-fun m!3291311 () Bool)

(assert (=> d!830381 m!3291311))

(declare-fun m!3291313 () Bool)

(assert (=> b!2873200 m!3291313))

(assert (=> b!2872918 d!830381))

(assert (=> b!2872843 d!830303))

(assert (=> b!2872843 d!830305))

(declare-fun b!2873203 () Bool)

(declare-fun e!1818362 () Bool)

(declare-fun call!185704 () Bool)

(assert (=> b!2873203 (= e!1818362 call!185704)))

(declare-fun b!2873204 () Bool)

(declare-fun res!1191834 () Bool)

(declare-fun e!1818365 () Bool)

(assert (=> b!2873204 (=> res!1191834 e!1818365)))

(assert (=> b!2873204 (= res!1191834 (not ((_ is Concat!14060) (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun e!1818363 () Bool)

(assert (=> b!2873204 (= e!1818363 e!1818365)))

(declare-fun c!465151 () Bool)

(declare-fun c!465150 () Bool)

(declare-fun bm!185698 () Bool)

(declare-fun call!185703 () Bool)

(assert (=> bm!185698 (= call!185703 (validRegex!3517 (ite c!465150 (reg!9068 (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))) (ite c!465151 (regOne!17991 (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))) (regTwo!17990 (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))))))

(declare-fun bm!185699 () Bool)

(declare-fun call!185705 () Bool)

(assert (=> bm!185699 (= call!185705 call!185703)))

(declare-fun b!2873205 () Bool)

(declare-fun e!1818360 () Bool)

(assert (=> b!2873205 (= e!1818365 e!1818360)))

(declare-fun res!1191835 () Bool)

(assert (=> b!2873205 (=> (not res!1191835) (not e!1818360))))

(assert (=> b!2873205 (= res!1191835 call!185704)))

(declare-fun d!830383 () Bool)

(declare-fun res!1191833 () Bool)

(declare-fun e!1818361 () Bool)

(assert (=> d!830383 (=> res!1191833 e!1818361)))

(assert (=> d!830383 (= res!1191833 ((_ is ElementMatch!8739) (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(assert (=> d!830383 (= (validRegex!3517 (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))) e!1818361)))

(declare-fun b!2873206 () Bool)

(declare-fun e!1818366 () Bool)

(assert (=> b!2873206 (= e!1818366 e!1818363)))

(assert (=> b!2873206 (= c!465151 ((_ is Union!8739) (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun b!2873207 () Bool)

(assert (=> b!2873207 (= e!1818360 call!185705)))

(declare-fun b!2873208 () Bool)

(declare-fun e!1818364 () Bool)

(assert (=> b!2873208 (= e!1818364 call!185703)))

(declare-fun b!2873209 () Bool)

(assert (=> b!2873209 (= e!1818361 e!1818366)))

(assert (=> b!2873209 (= c!465150 ((_ is Star!8739) (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun b!2873210 () Bool)

(declare-fun res!1191831 () Bool)

(assert (=> b!2873210 (=> (not res!1191831) (not e!1818362))))

(assert (=> b!2873210 (= res!1191831 call!185705)))

(assert (=> b!2873210 (= e!1818363 e!1818362)))

(declare-fun bm!185700 () Bool)

(assert (=> bm!185700 (= call!185704 (validRegex!3517 (ite c!465151 (regTwo!17991 (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))) (regOne!17990 (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))))))

(declare-fun b!2873211 () Bool)

(assert (=> b!2873211 (= e!1818366 e!1818364)))

(declare-fun res!1191832 () Bool)

(assert (=> b!2873211 (= res!1191832 (not (nullable!2689 (reg!9068 (ite c!465064 (reg!9068 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465065 (regOne!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))))))

(assert (=> b!2873211 (=> (not res!1191832) (not e!1818364))))

(assert (= (and d!830383 (not res!1191833)) b!2873209))

(assert (= (and b!2873209 c!465150) b!2873211))

(assert (= (and b!2873209 (not c!465150)) b!2873206))

(assert (= (and b!2873211 res!1191832) b!2873208))

(assert (= (and b!2873206 c!465151) b!2873210))

(assert (= (and b!2873206 (not c!465151)) b!2873204))

(assert (= (and b!2873210 res!1191831) b!2873203))

(assert (= (and b!2873204 (not res!1191834)) b!2873205))

(assert (= (and b!2873205 res!1191835) b!2873207))

(assert (= (or b!2873203 b!2873205) bm!185700))

(assert (= (or b!2873210 b!2873207) bm!185699))

(assert (= (or b!2873208 bm!185699) bm!185698))

(declare-fun m!3291315 () Bool)

(assert (=> bm!185698 m!3291315))

(declare-fun m!3291317 () Bool)

(assert (=> bm!185700 m!3291317))

(declare-fun m!3291319 () Bool)

(assert (=> b!2873211 m!3291319))

(assert (=> bm!185657 d!830383))

(declare-fun d!830385 () Bool)

(declare-fun c!465152 () Bool)

(assert (=> d!830385 (= c!465152 ((_ is Nil!34384) lt!1018276))))

(declare-fun e!1818367 () (InoxSet C!17660))

(assert (=> d!830385 (= (content!4701 lt!1018276) e!1818367)))

(declare-fun b!2873212 () Bool)

(assert (=> b!2873212 (= e!1818367 ((as const (Array C!17660 Bool)) false))))

(declare-fun b!2873213 () Bool)

(assert (=> b!2873213 (= e!1818367 ((_ map or) (store ((as const (Array C!17660 Bool)) false) (h!39804 lt!1018276) true) (content!4701 (t!233551 lt!1018276))))))

(assert (= (and d!830385 c!465152) b!2873212))

(assert (= (and d!830385 (not c!465152)) b!2873213))

(declare-fun m!3291321 () Bool)

(assert (=> b!2873213 m!3291321))

(declare-fun m!3291323 () Bool)

(assert (=> b!2873213 m!3291323))

(assert (=> d!830257 d!830385))

(declare-fun d!830387 () Bool)

(declare-fun c!465153 () Bool)

(assert (=> d!830387 (= c!465153 ((_ is Nil!34384) (v!34535 lt!1018217)))))

(declare-fun e!1818368 () (InoxSet C!17660))

(assert (=> d!830387 (= (content!4701 (v!34535 lt!1018217)) e!1818368)))

(declare-fun b!2873214 () Bool)

(assert (=> b!2873214 (= e!1818368 ((as const (Array C!17660 Bool)) false))))

(declare-fun b!2873215 () Bool)

(assert (=> b!2873215 (= e!1818368 ((_ map or) (store ((as const (Array C!17660 Bool)) false) (h!39804 (v!34535 lt!1018217)) true) (content!4701 (t!233551 (v!34535 lt!1018217)))))))

(assert (= (and d!830387 c!465153) b!2873214))

(assert (= (and d!830387 (not c!465153)) b!2873215))

(declare-fun m!3291325 () Bool)

(assert (=> b!2873215 m!3291325))

(declare-fun m!3291327 () Bool)

(assert (=> b!2873215 m!3291327))

(assert (=> d!830257 d!830387))

(declare-fun d!830389 () Bool)

(declare-fun c!465154 () Bool)

(assert (=> d!830389 (= c!465154 ((_ is Nil!34384) (v!34535 lt!1018215)))))

(declare-fun e!1818369 () (InoxSet C!17660))

(assert (=> d!830389 (= (content!4701 (v!34535 lt!1018215)) e!1818369)))

(declare-fun b!2873216 () Bool)

(assert (=> b!2873216 (= e!1818369 ((as const (Array C!17660 Bool)) false))))

(declare-fun b!2873217 () Bool)

(assert (=> b!2873217 (= e!1818369 ((_ map or) (store ((as const (Array C!17660 Bool)) false) (h!39804 (v!34535 lt!1018215)) true) (content!4701 (t!233551 (v!34535 lt!1018215)))))))

(assert (= (and d!830389 c!465154) b!2873216))

(assert (= (and d!830389 (not c!465154)) b!2873217))

(declare-fun m!3291329 () Bool)

(assert (=> b!2873217 m!3291329))

(declare-fun m!3291331 () Bool)

(assert (=> b!2873217 m!3291331))

(assert (=> d!830257 d!830389))

(declare-fun d!830391 () Bool)

(declare-fun res!1191836 () Bool)

(declare-fun e!1818370 () Bool)

(assert (=> d!830391 (=> res!1191836 e!1818370)))

(assert (=> d!830391 (= res!1191836 ((_ is Nil!34386) (t!233553 lt!1018239)))))

(assert (=> d!830391 (= (noDuplicate!580 (t!233553 lt!1018239)) e!1818370)))

(declare-fun b!2873218 () Bool)

(declare-fun e!1818371 () Bool)

(assert (=> b!2873218 (= e!1818370 e!1818371)))

(declare-fun res!1191837 () Bool)

(assert (=> b!2873218 (=> (not res!1191837) (not e!1818371))))

(assert (=> b!2873218 (= res!1191837 (not (contains!6125 (t!233553 (t!233553 lt!1018239)) (h!39806 (t!233553 lt!1018239)))))))

(declare-fun b!2873219 () Bool)

(assert (=> b!2873219 (= e!1818371 (noDuplicate!580 (t!233553 (t!233553 lt!1018239))))))

(assert (= (and d!830391 (not res!1191836)) b!2873218))

(assert (= (and b!2873218 res!1191837) b!2873219))

(declare-fun m!3291333 () Bool)

(assert (=> b!2873218 m!3291333))

(declare-fun m!3291335 () Bool)

(assert (=> b!2873219 m!3291335))

(assert (=> b!2872973 d!830391))

(declare-fun b!2873220 () Bool)

(declare-fun e!1818374 () Option!6414)

(declare-fun call!185707 () Option!6414)

(assert (=> b!2873220 (= e!1818374 call!185707)))

(declare-fun c!465162 () Bool)

(declare-fun bm!185701 () Bool)

(assert (=> bm!185701 (= call!185707 (getLanguageWitness!429 (ite c!465162 (regTwo!17991 (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) (regTwo!17990 (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873221 () Bool)

(declare-fun e!1818376 () Option!6414)

(declare-fun e!1818379 () Option!6414)

(assert (=> b!2873221 (= e!1818376 e!1818379)))

(declare-fun c!465158 () Bool)

(assert (=> b!2873221 (= c!465158 ((_ is EmptyLang!8739) (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873222 () Bool)

(declare-fun e!1818377 () Option!6414)

(assert (=> b!2873222 (= e!1818377 None!6413)))

(declare-fun c!465160 () Bool)

(declare-fun b!2873223 () Bool)

(assert (=> b!2873223 (= c!465160 ((_ is ElementMatch!8739) (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun e!1818378 () Option!6414)

(assert (=> b!2873223 (= e!1818379 e!1818378)))

(declare-fun b!2873224 () Bool)

(assert (=> b!2873224 (= e!1818376 (Some!6413 Nil!34384))))

(declare-fun b!2873225 () Bool)

(declare-fun e!1818373 () Option!6414)

(assert (=> b!2873225 (= e!1818373 None!6413)))

(declare-fun c!465157 () Bool)

(declare-fun d!830393 () Bool)

(assert (=> d!830393 (= c!465157 ((_ is EmptyExpr!8739) (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> d!830393 (= (getLanguageWitness!429 (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) e!1818376)))

(declare-fun b!2873226 () Bool)

(declare-fun e!1818375 () Option!6414)

(assert (=> b!2873226 (= e!1818375 e!1818373)))

(declare-fun lt!1018314 () Option!6414)

(declare-fun call!185706 () Option!6414)

(assert (=> b!2873226 (= lt!1018314 call!185706)))

(declare-fun c!465156 () Bool)

(assert (=> b!2873226 (= c!465156 ((_ is Some!6413) lt!1018314))))

(declare-fun b!2873227 () Bool)

(assert (=> b!2873227 (= e!1818379 None!6413)))

(declare-fun b!2873228 () Bool)

(declare-fun e!1818372 () Option!6414)

(assert (=> b!2873228 (= e!1818372 (Some!6413 Nil!34384))))

(declare-fun bm!185702 () Bool)

(assert (=> bm!185702 (= call!185706 (getLanguageWitness!429 (ite c!465162 (regOne!17991 (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) (regOne!17990 (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873229 () Bool)

(declare-fun lt!1018315 () Option!6414)

(assert (=> b!2873229 (= e!1818374 lt!1018315)))

(declare-fun b!2873230 () Bool)

(assert (=> b!2873230 (= e!1818378 e!1818372)))

(declare-fun c!465161 () Bool)

(assert (=> b!2873230 (= c!465161 ((_ is Star!8739) (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873231 () Bool)

(assert (=> b!2873231 (= e!1818375 e!1818374)))

(assert (=> b!2873231 (= lt!1018315 call!185706)))

(declare-fun c!465155 () Bool)

(assert (=> b!2873231 (= c!465155 ((_ is Some!6413) lt!1018315))))

(declare-fun b!2873232 () Bool)

(declare-fun lt!1018313 () Option!6414)

(assert (=> b!2873232 (= e!1818377 (Some!6413 (++!8175 (v!34535 lt!1018314) (v!34535 lt!1018313))))))

(declare-fun b!2873233 () Bool)

(assert (=> b!2873233 (= c!465162 ((_ is Union!8739) (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> b!2873233 (= e!1818372 e!1818375)))

(declare-fun b!2873234 () Bool)

(assert (=> b!2873234 (= e!1818378 (Some!6413 (Cons!34384 (c!464816 (ite c!465073 (regTwo!17991 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!464922 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) Nil!34384)))))

(declare-fun b!2873235 () Bool)

(declare-fun c!465159 () Bool)

(assert (=> b!2873235 (= c!465159 ((_ is Some!6413) lt!1018313))))

(assert (=> b!2873235 (= lt!1018313 call!185707)))

(assert (=> b!2873235 (= e!1818373 e!1818377)))

(assert (= (and d!830393 c!465157) b!2873224))

(assert (= (and d!830393 (not c!465157)) b!2873221))

(assert (= (and b!2873221 c!465158) b!2873227))

(assert (= (and b!2873221 (not c!465158)) b!2873223))

(assert (= (and b!2873223 c!465160) b!2873234))

(assert (= (and b!2873223 (not c!465160)) b!2873230))

(assert (= (and b!2873230 c!465161) b!2873228))

(assert (= (and b!2873230 (not c!465161)) b!2873233))

(assert (= (and b!2873233 c!465162) b!2873231))

(assert (= (and b!2873233 (not c!465162)) b!2873226))

(assert (= (and b!2873231 c!465155) b!2873229))

(assert (= (and b!2873231 (not c!465155)) b!2873220))

(assert (= (and b!2873226 c!465156) b!2873235))

(assert (= (and b!2873226 (not c!465156)) b!2873225))

(assert (= (and b!2873235 c!465159) b!2873232))

(assert (= (and b!2873235 (not c!465159)) b!2873222))

(assert (= (or b!2873220 b!2873235) bm!185701))

(assert (= (or b!2873231 b!2873226) bm!185702))

(declare-fun m!3291337 () Bool)

(assert (=> bm!185701 m!3291337))

(declare-fun m!3291339 () Bool)

(assert (=> bm!185702 m!3291339))

(declare-fun m!3291341 () Bool)

(assert (=> b!2873232 m!3291341))

(assert (=> bm!185660 d!830393))

(declare-fun bm!185703 () Bool)

(declare-fun call!185708 () Bool)

(assert (=> bm!185703 (= call!185708 (isEmpty!18720 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2873236 () Bool)

(declare-fun res!1191843 () Bool)

(declare-fun e!1818383 () Bool)

(assert (=> b!2873236 (=> (not res!1191843) (not e!1818383))))

(assert (=> b!2873236 (= res!1191843 (isEmpty!18720 (tail!4569 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873237 () Bool)

(declare-fun e!1818381 () Bool)

(declare-fun lt!1018316 () Bool)

(assert (=> b!2873237 (= e!1818381 (= lt!1018316 call!185708))))

(declare-fun d!830395 () Bool)

(assert (=> d!830395 e!1818381))

(declare-fun c!465164 () Bool)

(assert (=> d!830395 (= c!465164 ((_ is EmptyExpr!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun e!1818385 () Bool)

(assert (=> d!830395 (= lt!1018316 e!1818385)))

(declare-fun c!465163 () Bool)

(assert (=> d!830395 (= c!465163 (isEmpty!18720 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))

(assert (=> d!830395 (validRegex!3517 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))

(assert (=> d!830395 (= (matchR!3739 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))) (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))) lt!1018316)))

(declare-fun b!2873238 () Bool)

(declare-fun res!1191839 () Bool)

(declare-fun e!1818384 () Bool)

(assert (=> b!2873238 (=> res!1191839 e!1818384)))

(assert (=> b!2873238 (= res!1191839 (not ((_ is ElementMatch!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun e!1818380 () Bool)

(assert (=> b!2873238 (= e!1818380 e!1818384)))

(declare-fun b!2873239 () Bool)

(declare-fun res!1191840 () Bool)

(declare-fun e!1818382 () Bool)

(assert (=> b!2873239 (=> res!1191840 e!1818382)))

(assert (=> b!2873239 (= res!1191840 (not (isEmpty!18720 (tail!4569 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun b!2873240 () Bool)

(assert (=> b!2873240 (= e!1818385 (matchR!3739 (derivativeStep!2322 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))) (head!6344 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))) (tail!4569 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873241 () Bool)

(assert (=> b!2873241 (= e!1818382 (not (= (head!6344 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))) (c!464816 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873242 () Bool)

(assert (=> b!2873242 (= e!1818381 e!1818380)))

(declare-fun c!465165 () Bool)

(assert (=> b!2873242 (= c!465165 ((_ is EmptyLang!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873243 () Bool)

(assert (=> b!2873243 (= e!1818383 (= (head!6344 (tail!4569 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))) (c!464816 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun b!2873244 () Bool)

(declare-fun res!1191838 () Bool)

(assert (=> b!2873244 (=> res!1191838 e!1818384)))

(assert (=> b!2873244 (= res!1191838 e!1818383)))

(declare-fun res!1191841 () Bool)

(assert (=> b!2873244 (=> (not res!1191841) (not e!1818383))))

(assert (=> b!2873244 (= res!1191841 lt!1018316)))

(declare-fun b!2873245 () Bool)

(assert (=> b!2873245 (= e!1818385 (nullable!2689 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873246 () Bool)

(declare-fun res!1191844 () Bool)

(assert (=> b!2873246 (=> (not res!1191844) (not e!1818383))))

(assert (=> b!2873246 (= res!1191844 (not call!185708))))

(declare-fun b!2873247 () Bool)

(declare-fun e!1818386 () Bool)

(assert (=> b!2873247 (= e!1818386 e!1818382)))

(declare-fun res!1191842 () Bool)

(assert (=> b!2873247 (=> res!1191842 e!1818382)))

(assert (=> b!2873247 (= res!1191842 call!185708)))

(declare-fun b!2873248 () Bool)

(assert (=> b!2873248 (= e!1818384 e!1818386)))

(declare-fun res!1191845 () Bool)

(assert (=> b!2873248 (=> (not res!1191845) (not e!1818386))))

(assert (=> b!2873248 (= res!1191845 (not lt!1018316))))

(declare-fun b!2873249 () Bool)

(assert (=> b!2873249 (= e!1818380 (not lt!1018316))))

(assert (= (and d!830395 c!465163) b!2873245))

(assert (= (and d!830395 (not c!465163)) b!2873240))

(assert (= (and d!830395 c!465164) b!2873237))

(assert (= (and d!830395 (not c!465164)) b!2873242))

(assert (= (and b!2873242 c!465165) b!2873249))

(assert (= (and b!2873242 (not c!465165)) b!2873238))

(assert (= (and b!2873238 (not res!1191839)) b!2873244))

(assert (= (and b!2873244 res!1191841) b!2873246))

(assert (= (and b!2873246 res!1191844) b!2873236))

(assert (= (and b!2873236 res!1191843) b!2873243))

(assert (= (and b!2873244 (not res!1191838)) b!2873248))

(assert (= (and b!2873248 res!1191845) b!2873247))

(assert (= (and b!2873247 (not res!1191842)) b!2873239))

(assert (= (and b!2873239 (not res!1191840)) b!2873241))

(assert (= (or b!2873237 b!2873246 b!2873247) bm!185703))

(assert (=> b!2873241 m!3291013))

(declare-fun m!3291343 () Bool)

(assert (=> b!2873241 m!3291343))

(assert (=> bm!185703 m!3291013))

(assert (=> bm!185703 m!3291017))

(assert (=> b!2873243 m!3291013))

(assert (=> b!2873243 m!3291343))

(assert (=> b!2873240 m!3291013))

(assert (=> b!2873240 m!3291343))

(assert (=> b!2873240 m!3291011))

(assert (=> b!2873240 m!3291343))

(declare-fun m!3291345 () Bool)

(assert (=> b!2873240 m!3291345))

(assert (=> b!2873240 m!3291013))

(declare-fun m!3291347 () Bool)

(assert (=> b!2873240 m!3291347))

(assert (=> b!2873240 m!3291345))

(assert (=> b!2873240 m!3291347))

(declare-fun m!3291349 () Bool)

(assert (=> b!2873240 m!3291349))

(assert (=> b!2873245 m!3291011))

(declare-fun m!3291351 () Bool)

(assert (=> b!2873245 m!3291351))

(assert (=> b!2873239 m!3291013))

(assert (=> b!2873239 m!3291347))

(assert (=> b!2873239 m!3291347))

(declare-fun m!3291353 () Bool)

(assert (=> b!2873239 m!3291353))

(assert (=> d!830395 m!3291013))

(assert (=> d!830395 m!3291017))

(assert (=> d!830395 m!3291011))

(declare-fun m!3291355 () Bool)

(assert (=> d!830395 m!3291355))

(assert (=> b!2873236 m!3291013))

(assert (=> b!2873236 m!3291347))

(assert (=> b!2873236 m!3291347))

(assert (=> b!2873236 m!3291353))

(assert (=> b!2872847 d!830395))

(declare-fun bm!185704 () Bool)

(declare-fun call!185709 () Regex!8739)

(declare-fun call!185712 () Regex!8739)

(assert (=> bm!185704 (= call!185709 call!185712)))

(declare-fun bm!185705 () Bool)

(declare-fun call!185711 () Regex!8739)

(assert (=> bm!185705 (= call!185712 call!185711)))

(declare-fun bm!185706 () Bool)

(declare-fun call!185710 () Regex!8739)

(declare-fun c!465170 () Bool)

(assert (=> bm!185706 (= call!185710 (derivativeStep!2322 (ite c!465170 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2873250 () Bool)

(declare-fun c!465168 () Bool)

(assert (=> b!2873250 (= c!465168 (nullable!2689 (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun e!1818388 () Regex!8739)

(declare-fun e!1818389 () Regex!8739)

(assert (=> b!2873250 (= e!1818388 e!1818389)))

(declare-fun b!2873251 () Bool)

(assert (=> b!2873251 (= e!1818388 (Concat!14060 call!185712 (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2873252 () Bool)

(declare-fun e!1818387 () Regex!8739)

(declare-fun e!1818390 () Regex!8739)

(assert (=> b!2873252 (= e!1818387 e!1818390)))

(declare-fun c!465166 () Bool)

(assert (=> b!2873252 (= c!465166 ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2873253 () Bool)

(assert (=> b!2873253 (= e!1818390 (ite (= (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184))))) (c!464816 (h!39805 (exprs!3199 c!7184)))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2873255 () Bool)

(declare-fun e!1818391 () Regex!8739)

(assert (=> b!2873255 (= e!1818391 e!1818388)))

(declare-fun c!465167 () Bool)

(assert (=> b!2873255 (= c!465167 ((_ is Star!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun bm!185707 () Bool)

(assert (=> bm!185707 (= call!185711 (derivativeStep!2322 (ite c!465170 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!465167 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2873256 () Bool)

(assert (=> b!2873256 (= c!465170 ((_ is Union!8739) (h!39805 (exprs!3199 c!7184))))))

(assert (=> b!2873256 (= e!1818390 e!1818391)))

(declare-fun b!2873257 () Bool)

(assert (=> b!2873257 (= e!1818391 (Union!8739 call!185710 call!185711))))

(declare-fun b!2873258 () Bool)

(assert (=> b!2873258 (= e!1818389 (Union!8739 (Concat!14060 call!185709 (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) call!185710))))

(declare-fun b!2873259 () Bool)

(assert (=> b!2873259 (= e!1818389 (Union!8739 (Concat!14060 call!185709 (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) EmptyLang!8739))))

(declare-fun b!2873254 () Bool)

(assert (=> b!2873254 (= e!1818387 EmptyLang!8739)))

(declare-fun d!830397 () Bool)

(declare-fun lt!1018317 () Regex!8739)

(assert (=> d!830397 (validRegex!3517 lt!1018317)))

(assert (=> d!830397 (= lt!1018317 e!1818387)))

(declare-fun c!465169 () Bool)

(assert (=> d!830397 (= c!465169 (or ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 c!7184))) ((_ is EmptyLang!8739) (h!39805 (exprs!3199 c!7184)))))))

(assert (=> d!830397 (validRegex!3517 (h!39805 (exprs!3199 c!7184)))))

(assert (=> d!830397 (= (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 (getLanguageWitness!429 (h!39805 (exprs!3199 c!7184)))))) lt!1018317)))

(assert (= (and d!830397 c!465169) b!2873254))

(assert (= (and d!830397 (not c!465169)) b!2873252))

(assert (= (and b!2873252 c!465166) b!2873253))

(assert (= (and b!2873252 (not c!465166)) b!2873256))

(assert (= (and b!2873256 c!465170) b!2873257))

(assert (= (and b!2873256 (not c!465170)) b!2873255))

(assert (= (and b!2873255 c!465167) b!2873251))

(assert (= (and b!2873255 (not c!465167)) b!2873250))

(assert (= (and b!2873250 c!465168) b!2873258))

(assert (= (and b!2873250 (not c!465168)) b!2873259))

(assert (= (or b!2873258 b!2873259) bm!185704))

(assert (= (or b!2873251 bm!185704) bm!185705))

(assert (= (or b!2873257 b!2873258) bm!185706))

(assert (= (or b!2873257 bm!185705) bm!185707))

(assert (=> bm!185706 m!3291007))

(declare-fun m!3291357 () Bool)

(assert (=> bm!185706 m!3291357))

(assert (=> b!2873250 m!3290811))

(assert (=> bm!185707 m!3291007))

(declare-fun m!3291359 () Bool)

(assert (=> bm!185707 m!3291359))

(declare-fun m!3291361 () Bool)

(assert (=> d!830397 m!3291361))

(assert (=> d!830397 m!3290561))

(assert (=> b!2872847 d!830397))

(assert (=> b!2872847 d!830313))

(assert (=> b!2872847 d!830305))

(assert (=> b!2872646 d!830323))

(declare-fun b!2873260 () Bool)

(declare-fun e!1818394 () Bool)

(declare-fun call!185714 () Bool)

(assert (=> b!2873260 (= e!1818394 call!185714)))

(declare-fun b!2873261 () Bool)

(declare-fun res!1191849 () Bool)

(declare-fun e!1818397 () Bool)

(assert (=> b!2873261 (=> res!1191849 e!1818397)))

(assert (=> b!2873261 (= res!1191849 (not ((_ is Concat!14060) (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))))

(declare-fun e!1818395 () Bool)

(assert (=> b!2873261 (= e!1818395 e!1818397)))

(declare-fun c!465171 () Bool)

(declare-fun call!185713 () Bool)

(declare-fun c!465172 () Bool)

(declare-fun bm!185708 () Bool)

(assert (=> bm!185708 (= call!185713 (validRegex!3517 (ite c!465171 (reg!9068 (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))) (ite c!465172 (regOne!17991 (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))) (regTwo!17990 (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))))))

(declare-fun bm!185709 () Bool)

(declare-fun call!185715 () Bool)

(assert (=> bm!185709 (= call!185715 call!185713)))

(declare-fun b!2873262 () Bool)

(declare-fun e!1818392 () Bool)

(assert (=> b!2873262 (= e!1818397 e!1818392)))

(declare-fun res!1191850 () Bool)

(assert (=> b!2873262 (=> (not res!1191850) (not e!1818392))))

(assert (=> b!2873262 (= res!1191850 call!185714)))

(declare-fun d!830399 () Bool)

(declare-fun res!1191848 () Bool)

(declare-fun e!1818393 () Bool)

(assert (=> d!830399 (=> res!1191848 e!1818393)))

(assert (=> d!830399 (= res!1191848 ((_ is ElementMatch!8739) (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(assert (=> d!830399 (= (validRegex!3517 (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))) e!1818393)))

(declare-fun b!2873263 () Bool)

(declare-fun e!1818398 () Bool)

(assert (=> b!2873263 (= e!1818398 e!1818395)))

(assert (=> b!2873263 (= c!465172 ((_ is Union!8739) (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873264 () Bool)

(assert (=> b!2873264 (= e!1818392 call!185715)))

(declare-fun b!2873265 () Bool)

(declare-fun e!1818396 () Bool)

(assert (=> b!2873265 (= e!1818396 call!185713)))

(declare-fun b!2873266 () Bool)

(assert (=> b!2873266 (= e!1818393 e!1818398)))

(assert (=> b!2873266 (= c!465171 ((_ is Star!8739) (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873267 () Bool)

(declare-fun res!1191846 () Bool)

(assert (=> b!2873267 (=> (not res!1191846) (not e!1818394))))

(assert (=> b!2873267 (= res!1191846 call!185715)))

(assert (=> b!2873267 (= e!1818395 e!1818394)))

(declare-fun bm!185710 () Bool)

(assert (=> bm!185710 (= call!185714 (validRegex!3517 (ite c!465172 (regTwo!17991 (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))) (regOne!17990 (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))))

(declare-fun b!2873268 () Bool)

(assert (=> b!2873268 (= e!1818398 e!1818396)))

(declare-fun res!1191847 () Bool)

(assert (=> b!2873268 (= res!1191847 (not (nullable!2689 (reg!9068 (ite c!464991 (reg!9068 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!464992 (regOne!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))))

(assert (=> b!2873268 (=> (not res!1191847) (not e!1818396))))

(assert (= (and d!830399 (not res!1191848)) b!2873266))

(assert (= (and b!2873266 c!465171) b!2873268))

(assert (= (and b!2873266 (not c!465171)) b!2873263))

(assert (= (and b!2873268 res!1191847) b!2873265))

(assert (= (and b!2873263 c!465172) b!2873267))

(assert (= (and b!2873263 (not c!465172)) b!2873261))

(assert (= (and b!2873267 res!1191846) b!2873260))

(assert (= (and b!2873261 (not res!1191849)) b!2873262))

(assert (= (and b!2873262 res!1191850) b!2873264))

(assert (= (or b!2873260 b!2873262) bm!185710))

(assert (= (or b!2873267 b!2873264) bm!185709))

(assert (= (or b!2873265 bm!185709) bm!185708))

(declare-fun m!3291363 () Bool)

(assert (=> bm!185708 m!3291363))

(declare-fun m!3291365 () Bool)

(assert (=> bm!185710 m!3291365))

(declare-fun m!3291367 () Bool)

(assert (=> b!2873268 m!3291367))

(assert (=> bm!185634 d!830399))

(assert (=> d!830151 d!830143))

(declare-fun b!2873269 () Bool)

(declare-fun e!1818401 () Bool)

(declare-fun call!185717 () Bool)

(assert (=> b!2873269 (= e!1818401 call!185717)))

(declare-fun b!2873270 () Bool)

(declare-fun res!1191854 () Bool)

(declare-fun e!1818404 () Bool)

(assert (=> b!2873270 (=> res!1191854 e!1818404)))

(assert (=> b!2873270 (= res!1191854 (not ((_ is Concat!14060) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))))))

(declare-fun e!1818402 () Bool)

(assert (=> b!2873270 (= e!1818402 e!1818404)))

(declare-fun c!465174 () Bool)

(declare-fun call!185716 () Bool)

(declare-fun bm!185711 () Bool)

(declare-fun c!465173 () Bool)

(assert (=> bm!185711 (= call!185716 (validRegex!3517 (ite c!465173 (reg!9068 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) (ite c!465174 (regOne!17991 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) (regTwo!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175))))))))))

(declare-fun bm!185712 () Bool)

(declare-fun call!185718 () Bool)

(assert (=> bm!185712 (= call!185718 call!185716)))

(declare-fun b!2873271 () Bool)

(declare-fun e!1818399 () Bool)

(assert (=> b!2873271 (= e!1818404 e!1818399)))

(declare-fun res!1191855 () Bool)

(assert (=> b!2873271 (=> (not res!1191855) (not e!1818399))))

(assert (=> b!2873271 (= res!1191855 call!185717)))

(declare-fun d!830401 () Bool)

(declare-fun res!1191853 () Bool)

(declare-fun e!1818400 () Bool)

(assert (=> d!830401 (=> res!1191853 e!1818400)))

(assert (=> d!830401 (= res!1191853 ((_ is ElementMatch!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(assert (=> d!830401 (= (validRegex!3517 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) e!1818400)))

(declare-fun b!2873272 () Bool)

(declare-fun e!1818405 () Bool)

(assert (=> b!2873272 (= e!1818405 e!1818402)))

(assert (=> b!2873272 (= c!465174 ((_ is Union!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun b!2873273 () Bool)

(assert (=> b!2873273 (= e!1818399 call!185718)))

(declare-fun b!2873274 () Bool)

(declare-fun e!1818403 () Bool)

(assert (=> b!2873274 (= e!1818403 call!185716)))

(declare-fun b!2873275 () Bool)

(assert (=> b!2873275 (= e!1818400 e!1818405)))

(assert (=> b!2873275 (= c!465173 ((_ is Star!8739) (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun b!2873276 () Bool)

(declare-fun res!1191851 () Bool)

(assert (=> b!2873276 (=> (not res!1191851) (not e!1818401))))

(assert (=> b!2873276 (= res!1191851 call!185718)))

(assert (=> b!2873276 (= e!1818402 e!1818401)))

(declare-fun bm!185713 () Bool)

(assert (=> bm!185713 (= call!185717 (validRegex!3517 (ite c!465174 (regTwo!17991 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) (regOne!17990 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))))

(declare-fun b!2873277 () Bool)

(assert (=> b!2873277 (= e!1818405 e!1818403)))

(declare-fun res!1191852 () Bool)

(assert (=> b!2873277 (= res!1191852 (not (nullable!2689 (reg!9068 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))))

(assert (=> b!2873277 (=> (not res!1191852) (not e!1818403))))

(assert (= (and d!830401 (not res!1191853)) b!2873275))

(assert (= (and b!2873275 c!465173) b!2873277))

(assert (= (and b!2873275 (not c!465173)) b!2873272))

(assert (= (and b!2873277 res!1191852) b!2873274))

(assert (= (and b!2873272 c!465174) b!2873276))

(assert (= (and b!2873272 (not c!465174)) b!2873270))

(assert (= (and b!2873276 res!1191851) b!2873269))

(assert (= (and b!2873270 (not res!1191854)) b!2873271))

(assert (= (and b!2873271 res!1191855) b!2873273))

(assert (= (or b!2873269 b!2873271) bm!185713))

(assert (= (or b!2873276 b!2873273) bm!185712))

(assert (= (or b!2873274 bm!185712) bm!185711))

(declare-fun m!3291369 () Bool)

(assert (=> bm!185711 m!3291369))

(declare-fun m!3291371 () Bool)

(assert (=> bm!185713 m!3291371))

(declare-fun m!3291373 () Bool)

(assert (=> b!2873277 m!3291373))

(assert (=> d!830151 d!830401))

(assert (=> d!830181 d!830175))

(assert (=> d!830181 d!830191))

(assert (=> d!830181 d!830065))

(declare-fun d!830403 () Bool)

(declare-fun lt!1018320 () Bool)

(declare-fun exists!1164 (List!34510 Int) Bool)

(assert (=> d!830403 (= lt!1018320 (exists!1164 (toList!2024 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true)) lambda!107157))))

(declare-fun choose!16991 ((InoxSet Context!5398) Int) Bool)

(assert (=> d!830403 (= lt!1018320 (choose!16991 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) lambda!107157))))

(assert (=> d!830403 (= (exists!1162 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) lambda!107157) lt!1018320)))

(declare-fun bs!522264 () Bool)

(assert (= bs!522264 d!830403))

(assert (=> bs!522264 m!3290583))

(declare-fun m!3291375 () Bool)

(assert (=> bs!522264 m!3291375))

(assert (=> bs!522264 m!3291375))

(declare-fun m!3291377 () Bool)

(assert (=> bs!522264 m!3291377))

(assert (=> bs!522264 m!3290583))

(declare-fun m!3291379 () Bool)

(assert (=> bs!522264 m!3291379))

(assert (=> d!830195 d!830403))

(declare-fun bm!185714 () Bool)

(declare-fun call!185719 () Regex!8739)

(declare-fun call!185722 () Regex!8739)

(assert (=> bm!185714 (= call!185719 call!185722)))

(declare-fun bm!185715 () Bool)

(declare-fun call!185721 () Regex!8739)

(assert (=> bm!185715 (= call!185722 call!185721)))

(declare-fun c!465179 () Bool)

(declare-fun bm!185716 () Bool)

(declare-fun call!185720 () Regex!8739)

(assert (=> bm!185716 (= call!185720 (derivativeStep!2322 (ite c!465179 (regOne!17991 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regTwo!17990 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (head!6344 (get!10335 lt!1018175))))))

(declare-fun b!2873278 () Bool)

(declare-fun c!465177 () Bool)

(assert (=> b!2873278 (= c!465177 (nullable!2689 (regOne!17990 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun e!1818407 () Regex!8739)

(declare-fun e!1818408 () Regex!8739)

(assert (=> b!2873278 (= e!1818407 e!1818408)))

(declare-fun b!2873279 () Bool)

(assert (=> b!2873279 (= e!1818407 (Concat!14060 call!185722 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2873280 () Bool)

(declare-fun e!1818406 () Regex!8739)

(declare-fun e!1818409 () Regex!8739)

(assert (=> b!2873280 (= e!1818406 e!1818409)))

(declare-fun c!465175 () Bool)

(assert (=> b!2873280 (= c!465175 ((_ is ElementMatch!8739) (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2873281 () Bool)

(assert (=> b!2873281 (= e!1818409 (ite (= (head!6344 (get!10335 lt!1018175)) (c!464816 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2873283 () Bool)

(declare-fun e!1818410 () Regex!8739)

(assert (=> b!2873283 (= e!1818410 e!1818407)))

(declare-fun c!465176 () Bool)

(assert (=> b!2873283 (= c!465176 ((_ is Star!8739) (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun bm!185717 () Bool)

(assert (=> bm!185717 (= call!185721 (derivativeStep!2322 (ite c!465179 (regTwo!17991 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (ite c!465176 (reg!9068 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))) (head!6344 (get!10335 lt!1018175))))))

(declare-fun b!2873284 () Bool)

(assert (=> b!2873284 (= c!465179 ((_ is Union!8739) (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> b!2873284 (= e!1818409 e!1818410)))

(declare-fun b!2873285 () Bool)

(assert (=> b!2873285 (= e!1818410 (Union!8739 call!185720 call!185721))))

(declare-fun b!2873286 () Bool)

(assert (=> b!2873286 (= e!1818408 (Union!8739 (Concat!14060 call!185719 (regTwo!17990 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) call!185720))))

(declare-fun b!2873287 () Bool)

(assert (=> b!2873287 (= e!1818408 (Union!8739 (Concat!14060 call!185719 (regTwo!17990 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) EmptyLang!8739))))

(declare-fun b!2873282 () Bool)

(assert (=> b!2873282 (= e!1818406 EmptyLang!8739)))

(declare-fun d!830405 () Bool)

(declare-fun lt!1018321 () Regex!8739)

(assert (=> d!830405 (validRegex!3517 lt!1018321)))

(assert (=> d!830405 (= lt!1018321 e!1818406)))

(declare-fun c!465178 () Bool)

(assert (=> d!830405 (= c!465178 (or ((_ is EmptyExpr!8739) (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) ((_ is EmptyLang!8739) (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))

(assert (=> d!830405 (validRegex!3517 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))

(assert (=> d!830405 (= (derivativeStep!2322 (ite c!465004 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))) (head!6344 (get!10335 lt!1018175))) lt!1018321)))

(assert (= (and d!830405 c!465178) b!2873282))

(assert (= (and d!830405 (not c!465178)) b!2873280))

(assert (= (and b!2873280 c!465175) b!2873281))

(assert (= (and b!2873280 (not c!465175)) b!2873284))

(assert (= (and b!2873284 c!465179) b!2873285))

(assert (= (and b!2873284 (not c!465179)) b!2873283))

(assert (= (and b!2873283 c!465176) b!2873279))

(assert (= (and b!2873283 (not c!465176)) b!2873278))

(assert (= (and b!2873278 c!465177) b!2873286))

(assert (= (and b!2873278 (not c!465177)) b!2873287))

(assert (= (or b!2873286 b!2873287) bm!185714))

(assert (= (or b!2873279 bm!185714) bm!185715))

(assert (= (or b!2873285 b!2873286) bm!185716))

(assert (= (or b!2873285 bm!185715) bm!185717))

(assert (=> bm!185716 m!3290681))

(declare-fun m!3291381 () Bool)

(assert (=> bm!185716 m!3291381))

(declare-fun m!3291383 () Bool)

(assert (=> b!2873278 m!3291383))

(assert (=> bm!185717 m!3290681))

(declare-fun m!3291385 () Bool)

(assert (=> bm!185717 m!3291385))

(declare-fun m!3291387 () Bool)

(assert (=> d!830405 m!3291387))

(declare-fun m!3291389 () Bool)

(assert (=> d!830405 m!3291389))

(assert (=> bm!185641 d!830405))

(declare-fun b!2873288 () Bool)

(declare-fun e!1818413 () Option!6414)

(declare-fun call!185724 () Option!6414)

(assert (=> b!2873288 (= e!1818413 call!185724)))

(declare-fun c!465187 () Bool)

(declare-fun bm!185718 () Bool)

(assert (=> bm!185718 (= call!185724 (getLanguageWitness!429 (ite c!465187 (regTwo!17991 (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))) (regTwo!17990 (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))))))))

(declare-fun b!2873289 () Bool)

(declare-fun e!1818415 () Option!6414)

(declare-fun e!1818418 () Option!6414)

(assert (=> b!2873289 (= e!1818415 e!1818418)))

(declare-fun c!465183 () Bool)

(assert (=> b!2873289 (= c!465183 ((_ is EmptyLang!8739) (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(declare-fun b!2873290 () Bool)

(declare-fun e!1818416 () Option!6414)

(assert (=> b!2873290 (= e!1818416 None!6413)))

(declare-fun b!2873291 () Bool)

(declare-fun c!465185 () Bool)

(assert (=> b!2873291 (= c!465185 ((_ is ElementMatch!8739) (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(declare-fun e!1818417 () Option!6414)

(assert (=> b!2873291 (= e!1818418 e!1818417)))

(declare-fun b!2873292 () Bool)

(assert (=> b!2873292 (= e!1818415 (Some!6413 Nil!34384))))

(declare-fun b!2873293 () Bool)

(declare-fun e!1818412 () Option!6414)

(assert (=> b!2873293 (= e!1818412 None!6413)))

(declare-fun d!830407 () Bool)

(declare-fun c!465182 () Bool)

(assert (=> d!830407 (= c!465182 ((_ is EmptyExpr!8739) (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(assert (=> d!830407 (= (getLanguageWitness!429 (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))) e!1818415)))

(declare-fun b!2873294 () Bool)

(declare-fun e!1818414 () Option!6414)

(assert (=> b!2873294 (= e!1818414 e!1818412)))

(declare-fun lt!1018323 () Option!6414)

(declare-fun call!185723 () Option!6414)

(assert (=> b!2873294 (= lt!1018323 call!185723)))

(declare-fun c!465181 () Bool)

(assert (=> b!2873294 (= c!465181 ((_ is Some!6413) lt!1018323))))

(declare-fun b!2873295 () Bool)

(assert (=> b!2873295 (= e!1818418 None!6413)))

(declare-fun b!2873296 () Bool)

(declare-fun e!1818411 () Option!6414)

(assert (=> b!2873296 (= e!1818411 (Some!6413 Nil!34384))))

(declare-fun bm!185719 () Bool)

(assert (=> bm!185719 (= call!185723 (getLanguageWitness!429 (ite c!465187 (regOne!17991 (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))) (regOne!17990 (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))))))))

(declare-fun b!2873297 () Bool)

(declare-fun lt!1018324 () Option!6414)

(assert (=> b!2873297 (= e!1818413 lt!1018324)))

(declare-fun b!2873298 () Bool)

(assert (=> b!2873298 (= e!1818417 e!1818411)))

(declare-fun c!465186 () Bool)

(assert (=> b!2873298 (= c!465186 ((_ is Star!8739) (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(declare-fun b!2873299 () Bool)

(assert (=> b!2873299 (= e!1818414 e!1818413)))

(assert (=> b!2873299 (= lt!1018324 call!185723)))

(declare-fun c!465180 () Bool)

(assert (=> b!2873299 (= c!465180 ((_ is Some!6413) lt!1018324))))

(declare-fun b!2873300 () Bool)

(declare-fun lt!1018322 () Option!6414)

(assert (=> b!2873300 (= e!1818416 (Some!6413 (++!8175 (v!34535 lt!1018323) (v!34535 lt!1018322))))))

(declare-fun b!2873301 () Bool)

(assert (=> b!2873301 (= c!465187 ((_ is Union!8739) (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))))))

(assert (=> b!2873301 (= e!1818411 e!1818414)))

(declare-fun b!2873302 () Bool)

(assert (=> b!2873302 (= e!1818417 (Some!6413 (Cons!34384 (c!464816 (ite c!465061 (regTwo!17991 (h!39805 (exprs!3199 lt!1018172))) (regTwo!17990 (h!39805 (exprs!3199 lt!1018172))))) Nil!34384)))))

(declare-fun b!2873303 () Bool)

(declare-fun c!465184 () Bool)

(assert (=> b!2873303 (= c!465184 ((_ is Some!6413) lt!1018322))))

(assert (=> b!2873303 (= lt!1018322 call!185724)))

(assert (=> b!2873303 (= e!1818412 e!1818416)))

(assert (= (and d!830407 c!465182) b!2873292))

(assert (= (and d!830407 (not c!465182)) b!2873289))

(assert (= (and b!2873289 c!465183) b!2873295))

(assert (= (and b!2873289 (not c!465183)) b!2873291))

(assert (= (and b!2873291 c!465185) b!2873302))

(assert (= (and b!2873291 (not c!465185)) b!2873298))

(assert (= (and b!2873298 c!465186) b!2873296))

(assert (= (and b!2873298 (not c!465186)) b!2873301))

(assert (= (and b!2873301 c!465187) b!2873299))

(assert (= (and b!2873301 (not c!465187)) b!2873294))

(assert (= (and b!2873299 c!465180) b!2873297))

(assert (= (and b!2873299 (not c!465180)) b!2873288))

(assert (= (and b!2873294 c!465181) b!2873303))

(assert (= (and b!2873294 (not c!465181)) b!2873293))

(assert (= (and b!2873303 c!465184) b!2873300))

(assert (= (and b!2873303 (not c!465184)) b!2873290))

(assert (= (or b!2873288 b!2873303) bm!185718))

(assert (= (or b!2873299 b!2873294) bm!185719))

(declare-fun m!3291391 () Bool)

(assert (=> bm!185718 m!3291391))

(declare-fun m!3291393 () Bool)

(assert (=> bm!185719 m!3291393))

(declare-fun m!3291395 () Bool)

(assert (=> b!2873300 m!3291395))

(assert (=> bm!185655 d!830407))

(declare-fun d!830409 () Bool)

(declare-fun res!1191856 () Bool)

(declare-fun e!1818419 () Bool)

(assert (=> d!830409 (=> res!1191856 e!1818419)))

(assert (=> d!830409 (= res!1191856 ((_ is Nil!34386) res!1191771))))

(assert (=> d!830409 (= (noDuplicate!580 res!1191771) e!1818419)))

(declare-fun b!2873304 () Bool)

(declare-fun e!1818420 () Bool)

(assert (=> b!2873304 (= e!1818419 e!1818420)))

(declare-fun res!1191857 () Bool)

(assert (=> b!2873304 (=> (not res!1191857) (not e!1818420))))

(assert (=> b!2873304 (= res!1191857 (not (contains!6125 (t!233553 res!1191771) (h!39806 res!1191771))))))

(declare-fun b!2873305 () Bool)

(assert (=> b!2873305 (= e!1818420 (noDuplicate!580 (t!233553 res!1191771)))))

(assert (= (and d!830409 (not res!1191856)) b!2873304))

(assert (= (and b!2873304 res!1191857) b!2873305))

(declare-fun m!3291397 () Bool)

(assert (=> b!2873304 m!3291397))

(declare-fun m!3291399 () Bool)

(assert (=> b!2873305 m!3291399))

(assert (=> d!830283 d!830409))

(declare-fun bm!185720 () Bool)

(declare-fun call!185725 () Regex!8739)

(declare-fun call!185728 () Regex!8739)

(assert (=> bm!185720 (= call!185725 call!185728)))

(declare-fun bm!185721 () Bool)

(declare-fun call!185727 () Regex!8739)

(assert (=> bm!185721 (= call!185728 call!185727)))

(declare-fun c!465192 () Bool)

(declare-fun bm!185722 () Bool)

(declare-fun call!185726 () Regex!8739)

(assert (=> bm!185722 (= call!185726 (derivativeStep!2322 (ite c!465192 (regOne!17991 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) (regTwo!17990 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (head!6344 (v!34535 lt!1018175))))))

(declare-fun c!465190 () Bool)

(declare-fun b!2873306 () Bool)

(assert (=> b!2873306 (= c!465190 (nullable!2689 (regOne!17990 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun e!1818422 () Regex!8739)

(declare-fun e!1818423 () Regex!8739)

(assert (=> b!2873306 (= e!1818422 e!1818423)))

(declare-fun b!2873307 () Bool)

(assert (=> b!2873307 (= e!1818422 (Concat!14060 call!185728 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2873308 () Bool)

(declare-fun e!1818421 () Regex!8739)

(declare-fun e!1818424 () Regex!8739)

(assert (=> b!2873308 (= e!1818421 e!1818424)))

(declare-fun c!465188 () Bool)

(assert (=> b!2873308 (= c!465188 ((_ is ElementMatch!8739) (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun b!2873309 () Bool)

(assert (=> b!2873309 (= e!1818424 (ite (= (head!6344 (v!34535 lt!1018175)) (c!464816 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) EmptyExpr!8739 EmptyLang!8739))))

(declare-fun b!2873311 () Bool)

(declare-fun e!1818425 () Regex!8739)

(assert (=> b!2873311 (= e!1818425 e!1818422)))

(declare-fun c!465189 () Bool)

(assert (=> b!2873311 (= c!465189 ((_ is Star!8739) (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(declare-fun bm!185723 () Bool)

(assert (=> bm!185723 (= call!185727 (derivativeStep!2322 (ite c!465192 (regTwo!17991 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) (ite c!465189 (reg!9068 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))) (head!6344 (v!34535 lt!1018175))))))

(declare-fun b!2873312 () Bool)

(assert (=> b!2873312 (= c!465192 ((_ is Union!8739) (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))

(assert (=> b!2873312 (= e!1818424 e!1818425)))

(declare-fun b!2873313 () Bool)

(assert (=> b!2873313 (= e!1818425 (Union!8739 call!185726 call!185727))))

(declare-fun b!2873314 () Bool)

(assert (=> b!2873314 (= e!1818423 (Union!8739 (Concat!14060 call!185725 (regTwo!17990 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) call!185726))))

(declare-fun b!2873315 () Bool)

(assert (=> b!2873315 (= e!1818423 (Union!8739 (Concat!14060 call!185725 (regTwo!17990 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) EmptyLang!8739))))

(declare-fun b!2873310 () Bool)

(assert (=> b!2873310 (= e!1818421 EmptyLang!8739)))

(declare-fun d!830411 () Bool)

(declare-fun lt!1018325 () Regex!8739)

(assert (=> d!830411 (validRegex!3517 lt!1018325)))

(assert (=> d!830411 (= lt!1018325 e!1818421)))

(declare-fun c!465191 () Bool)

(assert (=> d!830411 (= c!465191 (or ((_ is EmptyExpr!8739) (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))) ((_ is EmptyLang!8739) (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> d!830411 (validRegex!3517 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(assert (=> d!830411 (= (derivativeStep!2322 (ite c!464967 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (ite c!464964 (reg!9068 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (head!6344 (v!34535 lt!1018175))) lt!1018325)))

(assert (= (and d!830411 c!465191) b!2873310))

(assert (= (and d!830411 (not c!465191)) b!2873308))

(assert (= (and b!2873308 c!465188) b!2873309))

(assert (= (and b!2873308 (not c!465188)) b!2873312))

(assert (= (and b!2873312 c!465192) b!2873313))

(assert (= (and b!2873312 (not c!465192)) b!2873311))

(assert (= (and b!2873311 c!465189) b!2873307))

(assert (= (and b!2873311 (not c!465189)) b!2873306))

(assert (= (and b!2873306 c!465190) b!2873314))

(assert (= (and b!2873306 (not c!465190)) b!2873315))

(assert (= (or b!2873314 b!2873315) bm!185720))

(assert (= (or b!2873307 bm!185720) bm!185721))

(assert (= (or b!2873313 b!2873314) bm!185722))

(assert (= (or b!2873313 bm!185721) bm!185723))

(assert (=> bm!185722 m!3290709))

(declare-fun m!3291401 () Bool)

(assert (=> bm!185722 m!3291401))

(declare-fun m!3291403 () Bool)

(assert (=> b!2873306 m!3291403))

(assert (=> bm!185723 m!3290709))

(declare-fun m!3291405 () Bool)

(assert (=> bm!185723 m!3291405))

(declare-fun m!3291407 () Bool)

(assert (=> d!830411 m!3291407))

(declare-fun m!3291409 () Bool)

(assert (=> d!830411 m!3291409))

(assert (=> bm!185625 d!830411))

(declare-fun b!2873316 () Bool)

(declare-fun e!1818428 () Bool)

(declare-fun call!185730 () Bool)

(assert (=> b!2873316 (= e!1818428 call!185730)))

(declare-fun b!2873317 () Bool)

(declare-fun res!1191861 () Bool)

(declare-fun e!1818431 () Bool)

(assert (=> b!2873317 (=> res!1191861 e!1818431)))

(assert (=> b!2873317 (= res!1191861 (not ((_ is Concat!14060) lt!1018247)))))

(declare-fun e!1818429 () Bool)

(assert (=> b!2873317 (= e!1818429 e!1818431)))

(declare-fun c!465193 () Bool)

(declare-fun bm!185724 () Bool)

(declare-fun call!185729 () Bool)

(declare-fun c!465194 () Bool)

(assert (=> bm!185724 (= call!185729 (validRegex!3517 (ite c!465193 (reg!9068 lt!1018247) (ite c!465194 (regOne!17991 lt!1018247) (regTwo!17990 lt!1018247)))))))

(declare-fun bm!185725 () Bool)

(declare-fun call!185731 () Bool)

(assert (=> bm!185725 (= call!185731 call!185729)))

(declare-fun b!2873318 () Bool)

(declare-fun e!1818426 () Bool)

(assert (=> b!2873318 (= e!1818431 e!1818426)))

(declare-fun res!1191862 () Bool)

(assert (=> b!2873318 (=> (not res!1191862) (not e!1818426))))

(assert (=> b!2873318 (= res!1191862 call!185730)))

(declare-fun d!830413 () Bool)

(declare-fun res!1191860 () Bool)

(declare-fun e!1818427 () Bool)

(assert (=> d!830413 (=> res!1191860 e!1818427)))

(assert (=> d!830413 (= res!1191860 ((_ is ElementMatch!8739) lt!1018247))))

(assert (=> d!830413 (= (validRegex!3517 lt!1018247) e!1818427)))

(declare-fun b!2873319 () Bool)

(declare-fun e!1818432 () Bool)

(assert (=> b!2873319 (= e!1818432 e!1818429)))

(assert (=> b!2873319 (= c!465194 ((_ is Union!8739) lt!1018247))))

(declare-fun b!2873320 () Bool)

(assert (=> b!2873320 (= e!1818426 call!185731)))

(declare-fun b!2873321 () Bool)

(declare-fun e!1818430 () Bool)

(assert (=> b!2873321 (= e!1818430 call!185729)))

(declare-fun b!2873322 () Bool)

(assert (=> b!2873322 (= e!1818427 e!1818432)))

(assert (=> b!2873322 (= c!465193 ((_ is Star!8739) lt!1018247))))

(declare-fun b!2873323 () Bool)

(declare-fun res!1191858 () Bool)

(assert (=> b!2873323 (=> (not res!1191858) (not e!1818428))))

(assert (=> b!2873323 (= res!1191858 call!185731)))

(assert (=> b!2873323 (= e!1818429 e!1818428)))

(declare-fun bm!185726 () Bool)

(assert (=> bm!185726 (= call!185730 (validRegex!3517 (ite c!465194 (regTwo!17991 lt!1018247) (regOne!17990 lt!1018247))))))

(declare-fun b!2873324 () Bool)

(assert (=> b!2873324 (= e!1818432 e!1818430)))

(declare-fun res!1191859 () Bool)

(assert (=> b!2873324 (= res!1191859 (not (nullable!2689 (reg!9068 lt!1018247))))))

(assert (=> b!2873324 (=> (not res!1191859) (not e!1818430))))

(assert (= (and d!830413 (not res!1191860)) b!2873322))

(assert (= (and b!2873322 c!465193) b!2873324))

(assert (= (and b!2873322 (not c!465193)) b!2873319))

(assert (= (and b!2873324 res!1191859) b!2873321))

(assert (= (and b!2873319 c!465194) b!2873323))

(assert (= (and b!2873319 (not c!465194)) b!2873317))

(assert (= (and b!2873323 res!1191858) b!2873316))

(assert (= (and b!2873317 (not res!1191861)) b!2873318))

(assert (= (and b!2873318 res!1191862) b!2873320))

(assert (= (or b!2873316 b!2873318) bm!185726))

(assert (= (or b!2873323 b!2873320) bm!185725))

(assert (= (or b!2873321 bm!185725) bm!185724))

(declare-fun m!3291411 () Bool)

(assert (=> bm!185724 m!3291411))

(declare-fun m!3291413 () Bool)

(assert (=> bm!185726 m!3291413))

(declare-fun m!3291415 () Bool)

(assert (=> b!2873324 m!3291415))

(assert (=> d!830155 d!830413))

(assert (=> d!830155 d!830111))

(declare-fun b!2873325 () Bool)

(declare-fun e!1818435 () Bool)

(declare-fun call!185733 () Bool)

(assert (=> b!2873325 (= e!1818435 call!185733)))

(declare-fun b!2873326 () Bool)

(declare-fun res!1191866 () Bool)

(declare-fun e!1818438 () Bool)

(assert (=> b!2873326 (=> res!1191866 e!1818438)))

(assert (=> b!2873326 (= res!1191866 (not ((_ is Concat!14060) (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun e!1818436 () Bool)

(assert (=> b!2873326 (= e!1818436 e!1818438)))

(declare-fun bm!185727 () Bool)

(declare-fun c!465196 () Bool)

(declare-fun call!185732 () Bool)

(declare-fun c!465195 () Bool)

(assert (=> bm!185727 (= call!185732 (validRegex!3517 (ite c!465195 (reg!9068 (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (ite c!465196 (regOne!17991 (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (regTwo!17990 (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184)))))))))))))

(declare-fun bm!185728 () Bool)

(declare-fun call!185734 () Bool)

(assert (=> bm!185728 (= call!185734 call!185732)))

(declare-fun b!2873327 () Bool)

(declare-fun e!1818433 () Bool)

(assert (=> b!2873327 (= e!1818438 e!1818433)))

(declare-fun res!1191867 () Bool)

(assert (=> b!2873327 (=> (not res!1191867) (not e!1818433))))

(assert (=> b!2873327 (= res!1191867 call!185733)))

(declare-fun d!830415 () Bool)

(declare-fun res!1191865 () Bool)

(declare-fun e!1818434 () Bool)

(assert (=> d!830415 (=> res!1191865 e!1818434)))

(assert (=> d!830415 (= res!1191865 ((_ is ElementMatch!8739) (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> d!830415 (= (validRegex!3517 (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) e!1818434)))

(declare-fun b!2873328 () Bool)

(declare-fun e!1818439 () Bool)

(assert (=> b!2873328 (= e!1818439 e!1818436)))

(assert (=> b!2873328 (= c!465196 ((_ is Union!8739) (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873329 () Bool)

(assert (=> b!2873329 (= e!1818433 call!185734)))

(declare-fun b!2873330 () Bool)

(declare-fun e!1818437 () Bool)

(assert (=> b!2873330 (= e!1818437 call!185732)))

(declare-fun b!2873331 () Bool)

(assert (=> b!2873331 (= e!1818434 e!1818439)))

(assert (=> b!2873331 (= c!465195 ((_ is Star!8739) (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873332 () Bool)

(declare-fun res!1191863 () Bool)

(assert (=> b!2873332 (=> (not res!1191863) (not e!1818435))))

(assert (=> b!2873332 (= res!1191863 call!185734)))

(assert (=> b!2873332 (= e!1818436 e!1818435)))

(declare-fun bm!185729 () Bool)

(assert (=> bm!185729 (= call!185733 (validRegex!3517 (ite c!465196 (regTwo!17991 (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (regOne!17990 (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873333 () Bool)

(assert (=> b!2873333 (= e!1818439 e!1818437)))

(declare-fun res!1191864 () Bool)

(assert (=> b!2873333 (= res!1191864 (not (nullable!2689 (reg!9068 (ite c!465065 (regTwo!17991 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464928 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(assert (=> b!2873333 (=> (not res!1191864) (not e!1818437))))

(assert (= (and d!830415 (not res!1191865)) b!2873331))

(assert (= (and b!2873331 c!465195) b!2873333))

(assert (= (and b!2873331 (not c!465195)) b!2873328))

(assert (= (and b!2873333 res!1191864) b!2873330))

(assert (= (and b!2873328 c!465196) b!2873332))

(assert (= (and b!2873328 (not c!465196)) b!2873326))

(assert (= (and b!2873332 res!1191863) b!2873325))

(assert (= (and b!2873326 (not res!1191866)) b!2873327))

(assert (= (and b!2873327 res!1191867) b!2873329))

(assert (= (or b!2873325 b!2873327) bm!185729))

(assert (= (or b!2873332 b!2873329) bm!185728))

(assert (= (or b!2873330 bm!185728) bm!185727))

(declare-fun m!3291417 () Bool)

(assert (=> bm!185727 m!3291417))

(declare-fun m!3291419 () Bool)

(assert (=> bm!185729 m!3291419))

(declare-fun m!3291421 () Bool)

(assert (=> b!2873333 m!3291421))

(assert (=> bm!185659 d!830415))

(declare-fun d!830417 () Bool)

(declare-fun res!1191868 () Bool)

(declare-fun e!1818440 () Bool)

(assert (=> d!830417 (=> res!1191868 e!1818440)))

(assert (=> d!830417 (= res!1191868 ((_ is Nil!34385) (t!233552 (exprs!3199 c!7184))))))

(assert (=> d!830417 (= (forall!7083 (t!233552 (exprs!3199 c!7184)) lambda!107146) e!1818440)))

(declare-fun b!2873334 () Bool)

(declare-fun e!1818441 () Bool)

(assert (=> b!2873334 (= e!1818440 e!1818441)))

(declare-fun res!1191869 () Bool)

(assert (=> b!2873334 (=> (not res!1191869) (not e!1818441))))

(assert (=> b!2873334 (= res!1191869 (dynLambda!14312 lambda!107146 (h!39805 (t!233552 (exprs!3199 c!7184)))))))

(declare-fun b!2873335 () Bool)

(assert (=> b!2873335 (= e!1818441 (forall!7083 (t!233552 (t!233552 (exprs!3199 c!7184))) lambda!107146))))

(assert (= (and d!830417 (not res!1191868)) b!2873334))

(assert (= (and b!2873334 res!1191869) b!2873335))

(declare-fun b_lambda!86063 () Bool)

(assert (=> (not b_lambda!86063) (not b!2873334)))

(declare-fun m!3291423 () Bool)

(assert (=> b!2873334 m!3291423))

(declare-fun m!3291425 () Bool)

(assert (=> b!2873335 m!3291425))

(assert (=> b!2872905 d!830417))

(assert (=> bm!185637 d!830125))

(declare-fun d!830419 () Bool)

(assert (=> d!830419 (= (isEmpty!18720 (tail!4569 (get!10335 lt!1018173))) ((_ is Nil!34384) (tail!4569 (get!10335 lt!1018173))))))

(assert (=> d!830163 d!830419))

(declare-fun d!830421 () Bool)

(declare-fun c!465197 () Bool)

(assert (=> d!830421 (= c!465197 ((_ is Nil!34386) (t!233553 lt!1018239)))))

(declare-fun e!1818442 () (InoxSet Context!5398))

(assert (=> d!830421 (= (content!4699 (t!233553 lt!1018239)) e!1818442)))

(declare-fun b!2873336 () Bool)

(assert (=> b!2873336 (= e!1818442 ((as const (Array Context!5398 Bool)) false))))

(declare-fun b!2873337 () Bool)

(assert (=> b!2873337 (= e!1818442 ((_ map or) (store ((as const (Array Context!5398 Bool)) false) (h!39806 (t!233553 lt!1018239)) true) (content!4699 (t!233553 (t!233553 lt!1018239)))))))

(assert (= (and d!830421 c!465197) b!2873336))

(assert (= (and d!830421 (not c!465197)) b!2873337))

(declare-fun m!3291427 () Bool)

(assert (=> b!2873337 m!3291427))

(declare-fun m!3291429 () Bool)

(assert (=> b!2873337 m!3291429))

(assert (=> b!2872966 d!830421))

(declare-fun b!2873338 () Bool)

(declare-fun e!1818445 () Bool)

(declare-fun call!185736 () Bool)

(assert (=> b!2873338 (= e!1818445 call!185736)))

(declare-fun b!2873339 () Bool)

(declare-fun res!1191873 () Bool)

(declare-fun e!1818448 () Bool)

(assert (=> b!2873339 (=> res!1191873 e!1818448)))

(assert (=> b!2873339 (= res!1191873 (not ((_ is Concat!14060) (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun e!1818446 () Bool)

(assert (=> b!2873339 (= e!1818446 e!1818448)))

(declare-fun c!465199 () Bool)

(declare-fun call!185735 () Bool)

(declare-fun c!465198 () Bool)

(declare-fun bm!185730 () Bool)

(assert (=> bm!185730 (= call!185735 (validRegex!3517 (ite c!465198 (reg!9068 (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))) (ite c!465199 (regOne!17991 (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))) (regTwo!17990 (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))))))))

(declare-fun bm!185731 () Bool)

(declare-fun call!185737 () Bool)

(assert (=> bm!185731 (= call!185737 call!185735)))

(declare-fun b!2873340 () Bool)

(declare-fun e!1818443 () Bool)

(assert (=> b!2873340 (= e!1818448 e!1818443)))

(declare-fun res!1191874 () Bool)

(assert (=> b!2873340 (=> (not res!1191874) (not e!1818443))))

(assert (=> b!2873340 (= res!1191874 call!185736)))

(declare-fun d!830423 () Bool)

(declare-fun res!1191872 () Bool)

(declare-fun e!1818444 () Bool)

(assert (=> d!830423 (=> res!1191872 e!1818444)))

(assert (=> d!830423 (= res!1191872 ((_ is ElementMatch!8739) (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(assert (=> d!830423 (= (validRegex!3517 (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))) e!1818444)))

(declare-fun b!2873341 () Bool)

(declare-fun e!1818449 () Bool)

(assert (=> b!2873341 (= e!1818449 e!1818446)))

(assert (=> b!2873341 (= c!465199 ((_ is Union!8739) (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun b!2873342 () Bool)

(assert (=> b!2873342 (= e!1818443 call!185737)))

(declare-fun b!2873343 () Bool)

(declare-fun e!1818447 () Bool)

(assert (=> b!2873343 (= e!1818447 call!185735)))

(declare-fun b!2873344 () Bool)

(assert (=> b!2873344 (= e!1818444 e!1818449)))

(assert (=> b!2873344 (= c!465198 ((_ is Star!8739) (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))

(declare-fun b!2873345 () Bool)

(declare-fun res!1191870 () Bool)

(assert (=> b!2873345 (=> (not res!1191870) (not e!1818445))))

(assert (=> b!2873345 (= res!1191870 call!185737)))

(assert (=> b!2873345 (= e!1818446 e!1818445)))

(declare-fun bm!185732 () Bool)

(assert (=> bm!185732 (= call!185736 (validRegex!3517 (ite c!465199 (regTwo!17991 (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))) (regOne!17990 (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))))

(declare-fun b!2873346 () Bool)

(assert (=> b!2873346 (= e!1818449 e!1818447)))

(declare-fun res!1191871 () Bool)

(assert (=> b!2873346 (= res!1191871 (not (nullable!2689 (reg!9068 (ite c!464992 (regTwo!17991 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))) (regOne!17990 (ite c!464927 (reg!9068 (h!39805 (exprs!3199 c!7184))) (ite c!464928 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184)))))))))))))

(assert (=> b!2873346 (=> (not res!1191871) (not e!1818447))))

(assert (= (and d!830423 (not res!1191872)) b!2873344))

(assert (= (and b!2873344 c!465198) b!2873346))

(assert (= (and b!2873344 (not c!465198)) b!2873341))

(assert (= (and b!2873346 res!1191871) b!2873343))

(assert (= (and b!2873341 c!465199) b!2873345))

(assert (= (and b!2873341 (not c!465199)) b!2873339))

(assert (= (and b!2873345 res!1191870) b!2873338))

(assert (= (and b!2873339 (not res!1191873)) b!2873340))

(assert (= (and b!2873340 res!1191874) b!2873342))

(assert (= (or b!2873338 b!2873340) bm!185732))

(assert (= (or b!2873345 b!2873342) bm!185731))

(assert (= (or b!2873343 bm!185731) bm!185730))

(declare-fun m!3291431 () Bool)

(assert (=> bm!185730 m!3291431))

(declare-fun m!3291433 () Bool)

(assert (=> bm!185732 m!3291433))

(declare-fun m!3291435 () Bool)

(assert (=> b!2873346 m!3291435))

(assert (=> bm!185636 d!830423))

(assert (=> bm!185601 d!830143))

(assert (=> b!2872722 d!830329))

(assert (=> b!2872722 d!830331))

(declare-fun d!830425 () Bool)

(declare-fun c!465200 () Bool)

(assert (=> d!830425 (= c!465200 (isEmpty!18720 (tail!4569 (tail!4569 (get!10335 lt!1018173)))))))

(declare-fun e!1818450 () Bool)

(assert (=> d!830425 (= (matchZipper!481 (derivationStepZipper!473 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) (head!6344 (tail!4569 (get!10335 lt!1018173)))) (tail!4569 (tail!4569 (get!10335 lt!1018173)))) e!1818450)))

(declare-fun b!2873347 () Bool)

(assert (=> b!2873347 (= e!1818450 (nullableZipper!717 (derivationStepZipper!473 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) (head!6344 (tail!4569 (get!10335 lt!1018173))))))))

(declare-fun b!2873348 () Bool)

(assert (=> b!2873348 (= e!1818450 (matchZipper!481 (derivationStepZipper!473 (derivationStepZipper!473 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) (head!6344 (tail!4569 (get!10335 lt!1018173)))) (head!6344 (tail!4569 (tail!4569 (get!10335 lt!1018173))))) (tail!4569 (tail!4569 (tail!4569 (get!10335 lt!1018173))))))))

(assert (= (and d!830425 c!465200) b!2873347))

(assert (= (and d!830425 (not c!465200)) b!2873348))

(assert (=> d!830425 m!3290825))

(declare-fun m!3291437 () Bool)

(assert (=> d!830425 m!3291437))

(assert (=> b!2873347 m!3290823))

(declare-fun m!3291439 () Bool)

(assert (=> b!2873347 m!3291439))

(assert (=> b!2873348 m!3290825))

(declare-fun m!3291441 () Bool)

(assert (=> b!2873348 m!3291441))

(assert (=> b!2873348 m!3290823))

(assert (=> b!2873348 m!3291441))

(declare-fun m!3291443 () Bool)

(assert (=> b!2873348 m!3291443))

(assert (=> b!2873348 m!3290825))

(declare-fun m!3291445 () Bool)

(assert (=> b!2873348 m!3291445))

(assert (=> b!2873348 m!3291443))

(assert (=> b!2873348 m!3291445))

(declare-fun m!3291447 () Bool)

(assert (=> b!2873348 m!3291447))

(assert (=> b!2872657 d!830425))

(declare-fun bs!522265 () Bool)

(declare-fun d!830427 () Bool)

(assert (= bs!522265 (and d!830427 d!830165)))

(declare-fun lambda!107174 () Int)

(assert (=> bs!522265 (= (= (head!6344 (tail!4569 (get!10335 lt!1018173))) (head!6344 (get!10335 lt!1018173))) (= lambda!107174 lambda!107153))))

(declare-fun bs!522266 () Bool)

(assert (= bs!522266 (and d!830427 d!830291)))

(assert (=> bs!522266 (= (= (head!6344 (tail!4569 (get!10335 lt!1018173))) (head!6344 (get!10335 (getLanguageWitness!430 lt!1018172)))) (= lambda!107174 lambda!107171))))

(assert (=> d!830427 true))

(assert (=> d!830427 (= (derivationStepZipper!473 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) (head!6344 (tail!4569 (get!10335 lt!1018173)))) (flatMap!220 (derivationStepZipper!473 (store ((as const (Array Context!5398 Bool)) false) lt!1018172 true) (head!6344 (get!10335 lt!1018173))) lambda!107174))))

(declare-fun bs!522267 () Bool)

(assert (= bs!522267 d!830427))

(assert (=> bs!522267 m!3290727))

(declare-fun m!3291449 () Bool)

(assert (=> bs!522267 m!3291449))

(assert (=> b!2872657 d!830427))

(declare-fun d!830429 () Bool)

(assert (=> d!830429 (= (head!6344 (tail!4569 (get!10335 lt!1018173))) (h!39804 (tail!4569 (get!10335 lt!1018173))))))

(assert (=> b!2872657 d!830429))

(declare-fun d!830431 () Bool)

(assert (=> d!830431 (= (tail!4569 (tail!4569 (get!10335 lt!1018173))) (t!233551 (tail!4569 (get!10335 lt!1018173))))))

(assert (=> b!2872657 d!830431))

(assert (=> b!2872579 d!830333))

(assert (=> b!2872579 d!830335))

(declare-fun bs!522268 () Bool)

(declare-fun d!830433 () Bool)

(assert (= bs!522268 (and d!830433 d!830285)))

(declare-fun lambda!107175 () Int)

(assert (=> bs!522268 (not (= lambda!107175 lambda!107170))))

(declare-fun bs!522269 () Bool)

(assert (= bs!522269 (and d!830433 d!830115)))

(assert (=> bs!522269 (not (= lambda!107175 lambda!107146))))

(declare-fun bs!522270 () Bool)

(assert (= bs!522270 (and d!830433 d!830319)))

(assert (=> bs!522270 (not (= lambda!107175 lambda!107172))))

(declare-fun bs!522271 () Bool)

(assert (= bs!522271 (and d!830433 d!830193)))

(assert (=> bs!522271 (= lambda!107175 lambda!107154)))

(declare-fun bs!522272 () Bool)

(assert (= bs!522272 (and d!830433 d!830225)))

(assert (=> bs!522272 (not (= lambda!107175 lambda!107161))))

(declare-fun bs!522273 () Bool)

(assert (= bs!522273 (and d!830433 d!830113)))

(assert (=> bs!522273 (= lambda!107175 lambda!107143)))

(declare-fun bs!522274 () Bool)

(assert (= bs!522274 (and d!830433 d!830253)))

(assert (=> bs!522274 (= lambda!107175 lambda!107165)))

(declare-fun bs!522275 () Bool)

(assert (= bs!522275 (and d!830433 d!830065)))

(assert (=> bs!522275 (= lambda!107175 lambda!107140)))

(declare-fun b!2873349 () Bool)

(declare-fun e!1818451 () Option!6414)

(declare-fun lt!1018328 () Option!6414)

(declare-fun lt!1018326 () Option!6414)

(assert (=> b!2873349 (= e!1818451 (Some!6413 (++!8175 (v!34535 lt!1018328) (v!34535 lt!1018326))))))

(declare-fun b!2873350 () Bool)

(declare-fun c!465201 () Bool)

(assert (=> b!2873350 (= c!465201 ((_ is Some!6413) lt!1018326))))

(assert (=> b!2873350 (= lt!1018326 (getLanguageWitness!430 (Context!5399 (t!233552 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))))))

(declare-fun e!1818453 () Option!6414)

(assert (=> b!2873350 (= e!1818453 e!1818451)))

(declare-fun b!2873351 () Bool)

(assert (=> b!2873351 (= e!1818453 None!6413)))

(declare-fun b!2873352 () Bool)

(declare-fun e!1818452 () Option!6414)

(assert (=> b!2873352 (= e!1818452 e!1818453)))

(assert (=> b!2873352 (= lt!1018328 (getLanguageWitness!429 (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172))))))))))))

(declare-fun c!465203 () Bool)

(assert (=> b!2873352 (= c!465203 ((_ is Some!6413) lt!1018328))))

(declare-fun lt!1018327 () Option!6414)

(assert (=> d!830433 (= (isEmpty!18719 lt!1018327) (exists!1161 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172))))))) lambda!107175))))

(assert (=> d!830433 (= lt!1018327 e!1818452)))

(declare-fun c!465202 () Bool)

(assert (=> d!830433 (= c!465202 ((_ is Cons!34385) (exprs!3199 (Context!5399 (t!233552 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))))

(assert (=> d!830433 (= (getLanguageWitness!430 (Context!5399 (t!233552 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172))))))) lt!1018327)))

(declare-fun b!2873353 () Bool)

(assert (=> b!2873353 (= e!1818451 None!6413)))

(declare-fun b!2873354 () Bool)

(assert (=> b!2873354 (= e!1818452 (Some!6413 Nil!34384))))

(assert (= (and d!830433 c!465202) b!2873352))

(assert (= (and d!830433 (not c!465202)) b!2873354))

(assert (= (and b!2873352 c!465203) b!2873350))

(assert (= (and b!2873352 (not c!465203)) b!2873351))

(assert (= (and b!2873350 c!465201) b!2873349))

(assert (= (and b!2873350 (not c!465201)) b!2873353))

(declare-fun m!3291451 () Bool)

(assert (=> b!2873349 m!3291451))

(declare-fun m!3291453 () Bool)

(assert (=> b!2873350 m!3291453))

(declare-fun m!3291455 () Bool)

(assert (=> b!2873352 m!3291455))

(declare-fun m!3291457 () Bool)

(assert (=> d!830433 m!3291457))

(declare-fun m!3291459 () Bool)

(assert (=> d!830433 m!3291459))

(assert (=> b!2872864 d!830433))

(declare-fun b!2873358 () Bool)

(declare-fun lt!1018329 () List!34508)

(declare-fun e!1818455 () Bool)

(assert (=> b!2873358 (= e!1818455 (or (not (= (v!34535 lt!1018215) Nil!34384)) (= lt!1018329 (t!233551 (v!34535 lt!1018217)))))))

(declare-fun b!2873357 () Bool)

(declare-fun res!1191875 () Bool)

(assert (=> b!2873357 (=> (not res!1191875) (not e!1818455))))

(assert (=> b!2873357 (= res!1191875 (= (size!26322 lt!1018329) (+ (size!26322 (t!233551 (v!34535 lt!1018217))) (size!26322 (v!34535 lt!1018215)))))))

(declare-fun d!830435 () Bool)

(assert (=> d!830435 e!1818455))

(declare-fun res!1191876 () Bool)

(assert (=> d!830435 (=> (not res!1191876) (not e!1818455))))

(assert (=> d!830435 (= res!1191876 (= (content!4701 lt!1018329) ((_ map or) (content!4701 (t!233551 (v!34535 lt!1018217))) (content!4701 (v!34535 lt!1018215)))))))

(declare-fun e!1818454 () List!34508)

(assert (=> d!830435 (= lt!1018329 e!1818454)))

(declare-fun c!465204 () Bool)

(assert (=> d!830435 (= c!465204 ((_ is Nil!34384) (t!233551 (v!34535 lt!1018217))))))

(assert (=> d!830435 (= (++!8175 (t!233551 (v!34535 lt!1018217)) (v!34535 lt!1018215)) lt!1018329)))

(declare-fun b!2873355 () Bool)

(assert (=> b!2873355 (= e!1818454 (v!34535 lt!1018215))))

(declare-fun b!2873356 () Bool)

(assert (=> b!2873356 (= e!1818454 (Cons!34384 (h!39804 (t!233551 (v!34535 lt!1018217))) (++!8175 (t!233551 (t!233551 (v!34535 lt!1018217))) (v!34535 lt!1018215))))))

(assert (= (and d!830435 c!465204) b!2873355))

(assert (= (and d!830435 (not c!465204)) b!2873356))

(assert (= (and d!830435 res!1191876) b!2873357))

(assert (= (and b!2873357 res!1191875) b!2873358))

(declare-fun m!3291461 () Bool)

(assert (=> b!2873357 m!3291461))

(assert (=> b!2873357 m!3291291))

(assert (=> b!2873357 m!3291041))

(declare-fun m!3291463 () Bool)

(assert (=> d!830435 m!3291463))

(assert (=> d!830435 m!3291327))

(assert (=> d!830435 m!3291047))

(declare-fun m!3291465 () Bool)

(assert (=> b!2873356 m!3291465))

(assert (=> b!2872878 d!830435))

(assert (=> d!830245 d!830243))

(assert (=> d!830245 d!830241))

(assert (=> d!830245 d!830107))

(assert (=> b!2872581 d!830367))

(declare-fun b!2873359 () Bool)

(declare-fun e!1818458 () Option!6414)

(declare-fun call!185739 () Option!6414)

(assert (=> b!2873359 (= e!1818458 call!185739)))

(declare-fun bm!185733 () Bool)

(declare-fun c!465212 () Bool)

(assert (=> bm!185733 (= call!185739 (getLanguageWitness!429 (ite c!465212 (regTwo!17991 (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (regTwo!17990 (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873360 () Bool)

(declare-fun e!1818460 () Option!6414)

(declare-fun e!1818463 () Option!6414)

(assert (=> b!2873360 (= e!1818460 e!1818463)))

(declare-fun c!465208 () Bool)

(assert (=> b!2873360 (= c!465208 ((_ is EmptyLang!8739) (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873361 () Bool)

(declare-fun e!1818461 () Option!6414)

(assert (=> b!2873361 (= e!1818461 None!6413)))

(declare-fun b!2873362 () Bool)

(declare-fun c!465210 () Bool)

(assert (=> b!2873362 (= c!465210 ((_ is ElementMatch!8739) (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun e!1818462 () Option!6414)

(assert (=> b!2873362 (= e!1818463 e!1818462)))

(declare-fun b!2873363 () Bool)

(assert (=> b!2873363 (= e!1818460 (Some!6413 Nil!34384))))

(declare-fun b!2873364 () Bool)

(declare-fun e!1818457 () Option!6414)

(assert (=> b!2873364 (= e!1818457 None!6413)))

(declare-fun c!465207 () Bool)

(declare-fun d!830437 () Bool)

(assert (=> d!830437 (= c!465207 ((_ is EmptyExpr!8739) (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> d!830437 (= (getLanguageWitness!429 (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) e!1818460)))

(declare-fun b!2873365 () Bool)

(declare-fun e!1818459 () Option!6414)

(assert (=> b!2873365 (= e!1818459 e!1818457)))

(declare-fun lt!1018331 () Option!6414)

(declare-fun call!185738 () Option!6414)

(assert (=> b!2873365 (= lt!1018331 call!185738)))

(declare-fun c!465206 () Bool)

(assert (=> b!2873365 (= c!465206 ((_ is Some!6413) lt!1018331))))

(declare-fun b!2873366 () Bool)

(assert (=> b!2873366 (= e!1818463 None!6413)))

(declare-fun b!2873367 () Bool)

(declare-fun e!1818456 () Option!6414)

(assert (=> b!2873367 (= e!1818456 (Some!6413 Nil!34384))))

(declare-fun bm!185734 () Bool)

(assert (=> bm!185734 (= call!185738 (getLanguageWitness!429 (ite c!465212 (regOne!17991 (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) (regOne!17990 (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))))

(declare-fun b!2873368 () Bool)

(declare-fun lt!1018332 () Option!6414)

(assert (=> b!2873368 (= e!1818458 lt!1018332)))

(declare-fun b!2873369 () Bool)

(assert (=> b!2873369 (= e!1818462 e!1818456)))

(declare-fun c!465211 () Bool)

(assert (=> b!2873369 (= c!465211 ((_ is Star!8739) (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(declare-fun b!2873370 () Bool)

(assert (=> b!2873370 (= e!1818459 e!1818458)))

(assert (=> b!2873370 (= lt!1018332 call!185738)))

(declare-fun c!465205 () Bool)

(assert (=> b!2873370 (= c!465205 ((_ is Some!6413) lt!1018332))))

(declare-fun b!2873371 () Bool)

(declare-fun lt!1018330 () Option!6414)

(assert (=> b!2873371 (= e!1818461 (Some!6413 (++!8175 (v!34535 lt!1018331) (v!34535 lt!1018330))))))

(declare-fun b!2873372 () Bool)

(assert (=> b!2873372 (= c!465212 ((_ is Union!8739) (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))))

(assert (=> b!2873372 (= e!1818456 e!1818459)))

(declare-fun b!2873373 () Bool)

(assert (=> b!2873373 (= e!1818462 (Some!6413 (Cons!34384 (c!464816 (ite c!465017 (regOne!17991 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) (regOne!17990 (ite c!464922 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))) Nil!34384)))))

(declare-fun b!2873374 () Bool)

(declare-fun c!465209 () Bool)

(assert (=> b!2873374 (= c!465209 ((_ is Some!6413) lt!1018330))))

(assert (=> b!2873374 (= lt!1018330 call!185739)))

(assert (=> b!2873374 (= e!1818457 e!1818461)))

(assert (= (and d!830437 c!465207) b!2873363))

(assert (= (and d!830437 (not c!465207)) b!2873360))

(assert (= (and b!2873360 c!465208) b!2873366))

(assert (= (and b!2873360 (not c!465208)) b!2873362))

(assert (= (and b!2873362 c!465210) b!2873373))

(assert (= (and b!2873362 (not c!465210)) b!2873369))

(assert (= (and b!2873369 c!465211) b!2873367))

(assert (= (and b!2873369 (not c!465211)) b!2873372))

(assert (= (and b!2873372 c!465212) b!2873370))

(assert (= (and b!2873372 (not c!465212)) b!2873365))

(assert (= (and b!2873370 c!465205) b!2873368))

(assert (= (and b!2873370 (not c!465205)) b!2873359))

(assert (= (and b!2873365 c!465206) b!2873374))

(assert (= (and b!2873365 (not c!465206)) b!2873364))

(assert (= (and b!2873374 c!465209) b!2873371))

(assert (= (and b!2873374 (not c!465209)) b!2873361))

(assert (= (or b!2873359 b!2873374) bm!185733))

(assert (= (or b!2873370 b!2873365) bm!185734))

(declare-fun m!3291467 () Bool)

(assert (=> bm!185733 m!3291467))

(declare-fun m!3291469 () Bool)

(assert (=> bm!185734 m!3291469))

(declare-fun m!3291471 () Bool)

(assert (=> b!2873371 m!3291471))

(assert (=> bm!185648 d!830437))

(assert (=> b!2872724 d!830359))

(declare-fun bs!522276 () Bool)

(declare-fun d!830439 () Bool)

(assert (= bs!522276 (and d!830439 d!830285)))

(declare-fun lambda!107176 () Int)

(assert (=> bs!522276 (not (= lambda!107176 lambda!107170))))

(declare-fun bs!522277 () Bool)

(assert (= bs!522277 (and d!830439 d!830115)))

(assert (=> bs!522277 (= lambda!107176 lambda!107146)))

(declare-fun bs!522278 () Bool)

(assert (= bs!522278 (and d!830439 d!830319)))

(assert (=> bs!522278 (not (= lambda!107176 lambda!107172))))

(declare-fun bs!522279 () Bool)

(assert (= bs!522279 (and d!830439 d!830433)))

(assert (=> bs!522279 (not (= lambda!107176 lambda!107175))))

(declare-fun bs!522280 () Bool)

(assert (= bs!522280 (and d!830439 d!830193)))

(assert (=> bs!522280 (not (= lambda!107176 lambda!107154))))

(declare-fun bs!522281 () Bool)

(assert (= bs!522281 (and d!830439 d!830225)))

(assert (=> bs!522281 (not (= lambda!107176 lambda!107161))))

(declare-fun bs!522282 () Bool)

(assert (= bs!522282 (and d!830439 d!830113)))

(assert (=> bs!522282 (not (= lambda!107176 lambda!107143))))

(declare-fun bs!522283 () Bool)

(assert (= bs!522283 (and d!830439 d!830253)))

(assert (=> bs!522283 (not (= lambda!107176 lambda!107165))))

(declare-fun bs!522284 () Bool)

(assert (= bs!522284 (and d!830439 d!830065)))

(assert (=> bs!522284 (not (= lambda!107176 lambda!107140))))

(assert (=> d!830439 (= (inv!46434 (h!39806 res!1191771)) (forall!7083 (exprs!3199 (h!39806 res!1191771)) lambda!107176))))

(declare-fun bs!522285 () Bool)

(assert (= bs!522285 d!830439))

(declare-fun m!3291473 () Bool)

(assert (=> bs!522285 m!3291473))

(assert (=> b!2872980 d!830439))

(declare-fun d!830441 () Bool)

(assert (=> d!830441 (= (nullable!2689 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))) (nullableFct!817 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (v!34535 lt!1018175)))))))

(declare-fun bs!522286 () Bool)

(assert (= bs!522286 d!830441))

(assert (=> bs!522286 m!3290713))

(declare-fun m!3291475 () Bool)

(assert (=> bs!522286 m!3291475))

(assert (=> b!2872585 d!830441))

(declare-fun e!1818465 () Bool)

(declare-fun b!2873378 () Bool)

(declare-fun lt!1018333 () List!34508)

(assert (=> b!2873378 (= e!1818465 (or (not (= (v!34535 lt!1018258) Nil!34384)) (= lt!1018333 (v!34535 lt!1018259))))))

(declare-fun b!2873377 () Bool)

(declare-fun res!1191877 () Bool)

(assert (=> b!2873377 (=> (not res!1191877) (not e!1818465))))

(assert (=> b!2873377 (= res!1191877 (= (size!26322 lt!1018333) (+ (size!26322 (v!34535 lt!1018259)) (size!26322 (v!34535 lt!1018258)))))))

(declare-fun d!830443 () Bool)

(assert (=> d!830443 e!1818465))

(declare-fun res!1191878 () Bool)

(assert (=> d!830443 (=> (not res!1191878) (not e!1818465))))

(assert (=> d!830443 (= res!1191878 (= (content!4701 lt!1018333) ((_ map or) (content!4701 (v!34535 lt!1018259)) (content!4701 (v!34535 lt!1018258)))))))

(declare-fun e!1818464 () List!34508)

(assert (=> d!830443 (= lt!1018333 e!1818464)))

(declare-fun c!465213 () Bool)

(assert (=> d!830443 (= c!465213 ((_ is Nil!34384) (v!34535 lt!1018259)))))

(assert (=> d!830443 (= (++!8175 (v!34535 lt!1018259) (v!34535 lt!1018258)) lt!1018333)))

(declare-fun b!2873375 () Bool)

(assert (=> b!2873375 (= e!1818464 (v!34535 lt!1018258))))

(declare-fun b!2873376 () Bool)

(assert (=> b!2873376 (= e!1818464 (Cons!34384 (h!39804 (v!34535 lt!1018259)) (++!8175 (t!233551 (v!34535 lt!1018259)) (v!34535 lt!1018258))))))

(assert (= (and d!830443 c!465213) b!2873375))

(assert (= (and d!830443 (not c!465213)) b!2873376))

(assert (= (and d!830443 res!1191878) b!2873377))

(assert (= (and b!2873377 res!1191877) b!2873378))

(declare-fun m!3291477 () Bool)

(assert (=> b!2873377 m!3291477))

(declare-fun m!3291479 () Bool)

(assert (=> b!2873377 m!3291479))

(declare-fun m!3291481 () Bool)

(assert (=> b!2873377 m!3291481))

(declare-fun m!3291483 () Bool)

(assert (=> d!830443 m!3291483))

(declare-fun m!3291485 () Bool)

(assert (=> d!830443 m!3291485))

(declare-fun m!3291487 () Bool)

(assert (=> d!830443 m!3291487))

(declare-fun m!3291489 () Bool)

(assert (=> b!2873376 m!3291489))

(assert (=> b!2872779 d!830443))

(declare-fun d!830445 () Bool)

(assert (=> d!830445 (= (nullable!2689 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))) (nullableFct!817 (derivativeStep!2322 (h!39805 (exprs!3199 c!7184)) (head!6344 (get!10335 lt!1018175)))))))

(declare-fun bs!522287 () Bool)

(assert (= bs!522287 d!830445))

(assert (=> bs!522287 m!3290685))

(declare-fun m!3291491 () Bool)

(assert (=> bs!522287 m!3291491))

(assert (=> b!2872728 d!830445))

(assert (=> bm!185652 d!830299))

(assert (=> b!2872726 d!830359))

(declare-fun bs!522288 () Bool)

(declare-fun d!830447 () Bool)

(assert (= bs!522288 (and d!830447 d!830285)))

(declare-fun lambda!107177 () Int)

(assert (=> bs!522288 (= (= lambda!107154 lambda!107143) (= lambda!107177 lambda!107170))))

(declare-fun bs!522289 () Bool)

(assert (= bs!522289 (and d!830447 d!830115)))

(assert (=> bs!522289 (not (= lambda!107177 lambda!107146))))

(declare-fun bs!522290 () Bool)

(assert (= bs!522290 (and d!830447 d!830319)))

(assert (=> bs!522290 (= (= lambda!107154 lambda!107165) (= lambda!107177 lambda!107172))))

(declare-fun bs!522291 () Bool)

(assert (= bs!522291 (and d!830447 d!830433)))

(assert (=> bs!522291 (not (= lambda!107177 lambda!107175))))

(declare-fun bs!522292 () Bool)

(assert (= bs!522292 (and d!830447 d!830193)))

(assert (=> bs!522292 (not (= lambda!107177 lambda!107154))))

(declare-fun bs!522293 () Bool)

(assert (= bs!522293 (and d!830447 d!830225)))

(assert (=> bs!522293 (= (= lambda!107154 lambda!107140) (= lambda!107177 lambda!107161))))

(declare-fun bs!522294 () Bool)

(assert (= bs!522294 (and d!830447 d!830253)))

(assert (=> bs!522294 (not (= lambda!107177 lambda!107165))))

(declare-fun bs!522295 () Bool)

(assert (= bs!522295 (and d!830447 d!830065)))

(assert (=> bs!522295 (not (= lambda!107177 lambda!107140))))

(declare-fun bs!522296 () Bool)

(assert (= bs!522296 (and d!830447 d!830439)))

(assert (=> bs!522296 (not (= lambda!107177 lambda!107176))))

(declare-fun bs!522297 () Bool)

(assert (= bs!522297 (and d!830447 d!830113)))

(assert (=> bs!522297 (not (= lambda!107177 lambda!107143))))

(assert (=> d!830447 true))

(assert (=> d!830447 (< (dynLambda!14311 order!18129 lambda!107154) (dynLambda!14311 order!18129 lambda!107177))))

(assert (=> d!830447 (= (exists!1161 (exprs!3199 lt!1018172) lambda!107154) (not (forall!7083 (exprs!3199 lt!1018172) lambda!107177)))))

(declare-fun bs!522298 () Bool)

(assert (= bs!522298 d!830447))

(declare-fun m!3291493 () Bool)

(assert (=> bs!522298 m!3291493))

(assert (=> d!830193 d!830447))

(declare-fun d!830449 () Bool)

(assert (=> d!830449 (= (isEmpty!18720 (get!10335 (getLanguageWitness!430 lt!1018172))) ((_ is Nil!34384) (get!10335 (getLanguageWitness!430 lt!1018172))))))

(assert (=> d!830175 d!830449))

(declare-fun d!830451 () Bool)

(declare-fun lt!1018334 () Int)

(assert (=> d!830451 (>= lt!1018334 0)))

(declare-fun e!1818466 () Int)

(assert (=> d!830451 (= lt!1018334 e!1818466)))

(declare-fun c!465214 () Bool)

(assert (=> d!830451 (= c!465214 ((_ is Nil!34384) lt!1018271))))

(assert (=> d!830451 (= (size!26322 lt!1018271) lt!1018334)))

(declare-fun b!2873379 () Bool)

(assert (=> b!2873379 (= e!1818466 0)))

(declare-fun b!2873380 () Bool)

(assert (=> b!2873380 (= e!1818466 (+ 1 (size!26322 (t!233551 lt!1018271))))))

(assert (= (and d!830451 c!465214) b!2873379))

(assert (= (and d!830451 (not c!465214)) b!2873380))

(declare-fun m!3291495 () Bool)

(assert (=> b!2873380 m!3291495))

(assert (=> b!2872841 d!830451))

(declare-fun d!830453 () Bool)

(declare-fun lt!1018335 () Int)

(assert (=> d!830453 (>= lt!1018335 0)))

(declare-fun e!1818467 () Int)

(assert (=> d!830453 (= lt!1018335 e!1818467)))

(declare-fun c!465215 () Bool)

(assert (=> d!830453 (= c!465215 ((_ is Nil!34384) (v!34535 lt!1018235)))))

(assert (=> d!830453 (= (size!26322 (v!34535 lt!1018235)) lt!1018335)))

(declare-fun b!2873381 () Bool)

(assert (=> b!2873381 (= e!1818467 0)))

(declare-fun b!2873382 () Bool)

(assert (=> b!2873382 (= e!1818467 (+ 1 (size!26322 (t!233551 (v!34535 lt!1018235)))))))

(assert (= (and d!830453 c!465215) b!2873381))

(assert (= (and d!830453 (not c!465215)) b!2873382))

(assert (=> b!2873382 m!3291277))

(assert (=> b!2872841 d!830453))

(declare-fun d!830455 () Bool)

(declare-fun lt!1018336 () Int)

(assert (=> d!830455 (>= lt!1018336 0)))

(declare-fun e!1818468 () Int)

(assert (=> d!830455 (= lt!1018336 e!1818468)))

(declare-fun c!465216 () Bool)

(assert (=> d!830455 (= c!465216 ((_ is Nil!34384) (v!34535 lt!1018234)))))

(assert (=> d!830455 (= (size!26322 (v!34535 lt!1018234)) lt!1018336)))

(declare-fun b!2873383 () Bool)

(assert (=> b!2873383 (= e!1818468 0)))

(declare-fun b!2873384 () Bool)

(assert (=> b!2873384 (= e!1818468 (+ 1 (size!26322 (t!233551 (v!34535 lt!1018234)))))))

(assert (= (and d!830455 c!465216) b!2873383))

(assert (= (and d!830455 (not c!465216)) b!2873384))

(declare-fun m!3291497 () Bool)

(assert (=> b!2873384 m!3291497))

(assert (=> b!2872841 d!830455))

(declare-fun b!2873385 () Bool)

(declare-fun e!1818471 () Option!6414)

(declare-fun call!185741 () Option!6414)

(assert (=> b!2873385 (= e!1818471 call!185741)))

(declare-fun bm!185735 () Bool)

(declare-fun c!465224 () Bool)

(assert (=> bm!185735 (= call!185741 (getLanguageWitness!429 (ite c!465224 (regTwo!17991 (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))) (regTwo!17990 (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))))

(declare-fun b!2873386 () Bool)

(declare-fun e!1818473 () Option!6414)

(declare-fun e!1818476 () Option!6414)

(assert (=> b!2873386 (= e!1818473 e!1818476)))

(declare-fun c!465220 () Bool)

(assert (=> b!2873386 (= c!465220 ((_ is EmptyLang!8739) (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))

(declare-fun b!2873387 () Bool)

(declare-fun e!1818474 () Option!6414)

(assert (=> b!2873387 (= e!1818474 None!6413)))

(declare-fun b!2873388 () Bool)

(declare-fun c!465222 () Bool)

(assert (=> b!2873388 (= c!465222 ((_ is ElementMatch!8739) (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))

(declare-fun e!1818475 () Option!6414)

(assert (=> b!2873388 (= e!1818476 e!1818475)))

(declare-fun b!2873389 () Bool)

(assert (=> b!2873389 (= e!1818473 (Some!6413 Nil!34384))))

(declare-fun b!2873390 () Bool)

(declare-fun e!1818470 () Option!6414)

(assert (=> b!2873390 (= e!1818470 None!6413)))

(declare-fun d!830457 () Bool)

(declare-fun c!465219 () Bool)

(assert (=> d!830457 (= c!465219 ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))

(assert (=> d!830457 (= (getLanguageWitness!429 (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))) e!1818473)))

(declare-fun b!2873391 () Bool)

(declare-fun e!1818472 () Option!6414)

(assert (=> b!2873391 (= e!1818472 e!1818470)))

(declare-fun lt!1018338 () Option!6414)

(declare-fun call!185740 () Option!6414)

(assert (=> b!2873391 (= lt!1018338 call!185740)))

(declare-fun c!465218 () Bool)

(assert (=> b!2873391 (= c!465218 ((_ is Some!6413) lt!1018338))))

(declare-fun b!2873392 () Bool)

(assert (=> b!2873392 (= e!1818476 None!6413)))

(declare-fun b!2873393 () Bool)

(declare-fun e!1818469 () Option!6414)

(assert (=> b!2873393 (= e!1818469 (Some!6413 Nil!34384))))

(declare-fun bm!185736 () Bool)

(assert (=> bm!185736 (= call!185740 (getLanguageWitness!429 (ite c!465224 (regOne!17991 (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))) (regOne!17990 (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))))

(declare-fun b!2873394 () Bool)

(declare-fun lt!1018339 () Option!6414)

(assert (=> b!2873394 (= e!1818471 lt!1018339)))

(declare-fun b!2873395 () Bool)

(assert (=> b!2873395 (= e!1818475 e!1818469)))

(declare-fun c!465223 () Bool)

(assert (=> b!2873395 (= c!465223 ((_ is Star!8739) (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))

(declare-fun b!2873396 () Bool)

(assert (=> b!2873396 (= e!1818472 e!1818471)))

(assert (=> b!2873396 (= lt!1018339 call!185740)))

(declare-fun c!465217 () Bool)

(assert (=> b!2873396 (= c!465217 ((_ is Some!6413) lt!1018339))))

(declare-fun b!2873397 () Bool)

(declare-fun lt!1018337 () Option!6414)

(assert (=> b!2873397 (= e!1818474 (Some!6413 (++!8175 (v!34535 lt!1018338) (v!34535 lt!1018337))))))

(declare-fun b!2873398 () Bool)

(assert (=> b!2873398 (= c!465224 ((_ is Union!8739) (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))))))

(assert (=> b!2873398 (= e!1818469 e!1818472)))

(declare-fun b!2873399 () Bool)

(assert (=> b!2873399 (= e!1818475 (Some!6413 (Cons!34384 (c!464816 (h!39805 (exprs!3199 (Context!5399 (t!233552 (exprs!3199 lt!1018172)))))) Nil!34384)))))

(declare-fun b!2873400 () Bool)

(declare-fun c!465221 () Bool)

(assert (=> b!2873400 (= c!465221 ((_ is Some!6413) lt!1018337))))

(assert (=> b!2873400 (= lt!1018337 call!185741)))

(assert (=> b!2873400 (= e!1818470 e!1818474)))

(assert (= (and d!830457 c!465219) b!2873389))

(assert (= (and d!830457 (not c!465219)) b!2873386))

(assert (= (and b!2873386 c!465220) b!2873392))

(assert (= (and b!2873386 (not c!465220)) b!2873388))

(assert (= (and b!2873388 c!465222) b!2873399))

(assert (= (and b!2873388 (not c!465222)) b!2873395))

(assert (= (and b!2873395 c!465223) b!2873393))

(assert (= (and b!2873395 (not c!465223)) b!2873398))

(assert (= (and b!2873398 c!465224) b!2873396))

(assert (= (and b!2873398 (not c!465224)) b!2873391))

(assert (= (and b!2873396 c!465217) b!2873394))

(assert (= (and b!2873396 (not c!465217)) b!2873385))

(assert (= (and b!2873391 c!465218) b!2873400))

(assert (= (and b!2873391 (not c!465218)) b!2873390))

(assert (= (and b!2873400 c!465221) b!2873397))

(assert (= (and b!2873400 (not c!465221)) b!2873387))

(assert (= (or b!2873385 b!2873400) bm!185735))

(assert (= (or b!2873396 b!2873391) bm!185736))

(declare-fun m!3291499 () Bool)

(assert (=> bm!185735 m!3291499))

(declare-fun m!3291501 () Bool)

(assert (=> bm!185736 m!3291501))

(declare-fun m!3291503 () Bool)

(assert (=> b!2873397 m!3291503))

(assert (=> b!2872866 d!830457))

(assert (=> b!2872583 d!830367))

(declare-fun bm!185737 () Bool)

(declare-fun call!185743 () Bool)

(declare-fun c!465225 () Bool)

(assert (=> bm!185737 (= call!185743 (nullable!2689 (ite c!465225 (regOne!17991 (h!39805 (exprs!3199 c!7184))) (regOne!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun b!2873401 () Bool)

(declare-fun e!1818480 () Bool)

(declare-fun e!1818482 () Bool)

(assert (=> b!2873401 (= e!1818480 e!1818482)))

(declare-fun res!1191879 () Bool)

(assert (=> b!2873401 (=> res!1191879 e!1818482)))

(assert (=> b!2873401 (= res!1191879 ((_ is Star!8739) (h!39805 (exprs!3199 c!7184))))))

(declare-fun b!2873402 () Bool)

(declare-fun e!1818479 () Bool)

(declare-fun e!1818477 () Bool)

(assert (=> b!2873402 (= e!1818479 e!1818477)))

(declare-fun res!1191882 () Bool)

(assert (=> b!2873402 (= res!1191882 call!185743)))

(assert (=> b!2873402 (=> res!1191882 e!1818477)))

(declare-fun b!2873403 () Bool)

(declare-fun e!1818478 () Bool)

(assert (=> b!2873403 (= e!1818478 e!1818480)))

(declare-fun res!1191880 () Bool)

(assert (=> b!2873403 (=> (not res!1191880) (not e!1818480))))

(assert (=> b!2873403 (= res!1191880 (and (not ((_ is EmptyLang!8739) (h!39805 (exprs!3199 c!7184)))) (not ((_ is ElementMatch!8739) (h!39805 (exprs!3199 c!7184))))))))

(declare-fun bm!185738 () Bool)

(declare-fun call!185742 () Bool)

(assert (=> bm!185738 (= call!185742 (nullable!2689 (ite c!465225 (regTwo!17991 (h!39805 (exprs!3199 c!7184))) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))))))

(declare-fun d!830459 () Bool)

(declare-fun res!1191881 () Bool)

(assert (=> d!830459 (=> res!1191881 e!1818478)))

(assert (=> d!830459 (= res!1191881 ((_ is EmptyExpr!8739) (h!39805 (exprs!3199 c!7184))))))

(assert (=> d!830459 (= (nullableFct!817 (h!39805 (exprs!3199 c!7184))) e!1818478)))

(declare-fun b!2873404 () Bool)

(declare-fun e!1818481 () Bool)

(assert (=> b!2873404 (= e!1818479 e!1818481)))

(declare-fun res!1191883 () Bool)

(assert (=> b!2873404 (= res!1191883 call!185743)))

(assert (=> b!2873404 (=> (not res!1191883) (not e!1818481))))

(declare-fun b!2873405 () Bool)

(assert (=> b!2873405 (= e!1818481 call!185742)))

(declare-fun b!2873406 () Bool)

(assert (=> b!2873406 (= e!1818477 call!185742)))

(declare-fun b!2873407 () Bool)

(assert (=> b!2873407 (= e!1818482 e!1818479)))

(assert (=> b!2873407 (= c!465225 ((_ is Union!8739) (h!39805 (exprs!3199 c!7184))))))

(assert (= (and d!830459 (not res!1191881)) b!2873403))

(assert (= (and b!2873403 res!1191880) b!2873401))

(assert (= (and b!2873401 (not res!1191879)) b!2873407))

(assert (= (and b!2873407 c!465225) b!2873402))

(assert (= (and b!2873407 (not c!465225)) b!2873404))

(assert (= (and b!2873402 (not res!1191882)) b!2873406))

(assert (= (and b!2873404 res!1191883) b!2873405))

(assert (= (or b!2873402 b!2873404) bm!185737))

(assert (= (or b!2873406 b!2873405) bm!185738))

(declare-fun m!3291505 () Bool)

(assert (=> bm!185737 m!3291505))

(declare-fun m!3291507 () Bool)

(assert (=> bm!185738 m!3291507))

(assert (=> d!830251 d!830459))

(declare-fun b!2873409 () Bool)

(declare-fun e!1818483 () Bool)

(declare-fun tp!923551 () Bool)

(declare-fun tp!923547 () Bool)

(assert (=> b!2873409 (= e!1818483 (and tp!923551 tp!923547))))

(assert (=> b!2872994 (= tp!923544 e!1818483)))

(declare-fun b!2873408 () Bool)

(assert (=> b!2873408 (= e!1818483 tp_is_empty!15075)))

(declare-fun b!2873410 () Bool)

(declare-fun tp!923549 () Bool)

(assert (=> b!2873410 (= e!1818483 tp!923549)))

(declare-fun b!2873411 () Bool)

(declare-fun tp!923548 () Bool)

(declare-fun tp!923550 () Bool)

(assert (=> b!2873411 (= e!1818483 (and tp!923548 tp!923550))))

(assert (= (and b!2872994 ((_ is ElementMatch!8739) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) b!2873408))

(assert (= (and b!2872994 ((_ is Concat!14060) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) b!2873409))

(assert (= (and b!2872994 ((_ is Star!8739) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) b!2873410))

(assert (= (and b!2872994 ((_ is Union!8739) (regOne!17990 (h!39805 (exprs!3199 c!7184))))) b!2873411))

(declare-fun b!2873413 () Bool)

(declare-fun e!1818484 () Bool)

(declare-fun tp!923556 () Bool)

(declare-fun tp!923552 () Bool)

(assert (=> b!2873413 (= e!1818484 (and tp!923556 tp!923552))))

(assert (=> b!2872994 (= tp!923540 e!1818484)))

(declare-fun b!2873412 () Bool)

(assert (=> b!2873412 (= e!1818484 tp_is_empty!15075)))

(declare-fun b!2873414 () Bool)

(declare-fun tp!923554 () Bool)

(assert (=> b!2873414 (= e!1818484 tp!923554)))

(declare-fun b!2873415 () Bool)

(declare-fun tp!923553 () Bool)

(declare-fun tp!923555 () Bool)

(assert (=> b!2873415 (= e!1818484 (and tp!923553 tp!923555))))

(assert (= (and b!2872994 ((_ is ElementMatch!8739) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) b!2873412))

(assert (= (and b!2872994 ((_ is Concat!14060) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) b!2873413))

(assert (= (and b!2872994 ((_ is Star!8739) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) b!2873414))

(assert (= (and b!2872994 ((_ is Union!8739) (regTwo!17990 (h!39805 (exprs!3199 c!7184))))) b!2873415))

(declare-fun b!2873417 () Bool)

(declare-fun e!1818485 () Bool)

(declare-fun tp!923561 () Bool)

(declare-fun tp!923557 () Bool)

(assert (=> b!2873417 (= e!1818485 (and tp!923561 tp!923557))))

(assert (=> b!2872997 (= tp!923545 e!1818485)))

(declare-fun b!2873416 () Bool)

(assert (=> b!2873416 (= e!1818485 tp_is_empty!15075)))

(declare-fun b!2873418 () Bool)

(declare-fun tp!923559 () Bool)

(assert (=> b!2873418 (= e!1818485 tp!923559)))

(declare-fun b!2873419 () Bool)

(declare-fun tp!923558 () Bool)

(declare-fun tp!923560 () Bool)

(assert (=> b!2873419 (= e!1818485 (and tp!923558 tp!923560))))

(assert (= (and b!2872997 ((_ is ElementMatch!8739) (h!39805 (t!233552 (exprs!3199 c!7184))))) b!2873416))

(assert (= (and b!2872997 ((_ is Concat!14060) (h!39805 (t!233552 (exprs!3199 c!7184))))) b!2873417))

(assert (= (and b!2872997 ((_ is Star!8739) (h!39805 (t!233552 (exprs!3199 c!7184))))) b!2873418))

(assert (= (and b!2872997 ((_ is Union!8739) (h!39805 (t!233552 (exprs!3199 c!7184))))) b!2873419))

(declare-fun b!2873420 () Bool)

(declare-fun e!1818486 () Bool)

(declare-fun tp!923562 () Bool)

(declare-fun tp!923563 () Bool)

(assert (=> b!2873420 (= e!1818486 (and tp!923562 tp!923563))))

(assert (=> b!2872997 (= tp!923546 e!1818486)))

(assert (= (and b!2872997 ((_ is Cons!34385) (t!233552 (t!233552 (exprs!3199 c!7184))))) b!2873420))

(declare-fun b!2873422 () Bool)

(declare-fun e!1818487 () Bool)

(declare-fun tp!923568 () Bool)

(declare-fun tp!923564 () Bool)

(assert (=> b!2873422 (= e!1818487 (and tp!923568 tp!923564))))

(assert (=> b!2872995 (= tp!923542 e!1818487)))

(declare-fun b!2873421 () Bool)

(assert (=> b!2873421 (= e!1818487 tp_is_empty!15075)))

(declare-fun b!2873423 () Bool)

(declare-fun tp!923566 () Bool)

(assert (=> b!2873423 (= e!1818487 tp!923566)))

(declare-fun b!2873424 () Bool)

(declare-fun tp!923565 () Bool)

(declare-fun tp!923567 () Bool)

(assert (=> b!2873424 (= e!1818487 (and tp!923565 tp!923567))))

(assert (= (and b!2872995 ((_ is ElementMatch!8739) (reg!9068 (h!39805 (exprs!3199 c!7184))))) b!2873421))

(assert (= (and b!2872995 ((_ is Concat!14060) (reg!9068 (h!39805 (exprs!3199 c!7184))))) b!2873422))

(assert (= (and b!2872995 ((_ is Star!8739) (reg!9068 (h!39805 (exprs!3199 c!7184))))) b!2873423))

(assert (= (and b!2872995 ((_ is Union!8739) (reg!9068 (h!39805 (exprs!3199 c!7184))))) b!2873424))

(declare-fun b!2873432 () Bool)

(declare-fun e!1818493 () Bool)

(declare-fun tp!923573 () Bool)

(assert (=> b!2873432 (= e!1818493 tp!923573)))

(declare-fun e!1818492 () Bool)

(declare-fun tp!923574 () Bool)

(declare-fun b!2873431 () Bool)

(assert (=> b!2873431 (= e!1818492 (and (inv!46434 (h!39806 (t!233553 res!1191771))) e!1818493 tp!923574))))

(assert (=> b!2872980 (= tp!923529 e!1818492)))

(assert (= b!2873431 b!2873432))

(assert (= (and b!2872980 ((_ is Cons!34386) (t!233553 res!1191771))) b!2873431))

(declare-fun m!3291509 () Bool)

(assert (=> b!2873431 m!3291509))

(declare-fun b!2873433 () Bool)

(declare-fun e!1818494 () Bool)

(declare-fun tp!923575 () Bool)

(declare-fun tp!923576 () Bool)

(assert (=> b!2873433 (= e!1818494 (and tp!923575 tp!923576))))

(assert (=> b!2872981 (= tp!923528 e!1818494)))

(assert (= (and b!2872981 ((_ is Cons!34385) (exprs!3199 (h!39806 res!1191771)))) b!2873433))

(declare-fun b!2873435 () Bool)

(declare-fun e!1818495 () Bool)

(declare-fun tp!923581 () Bool)

(declare-fun tp!923577 () Bool)

(assert (=> b!2873435 (= e!1818495 (and tp!923581 tp!923577))))

(assert (=> b!2872996 (= tp!923541 e!1818495)))

(declare-fun b!2873434 () Bool)

(assert (=> b!2873434 (= e!1818495 tp_is_empty!15075)))

(declare-fun b!2873436 () Bool)

(declare-fun tp!923579 () Bool)

(assert (=> b!2873436 (= e!1818495 tp!923579)))

(declare-fun b!2873437 () Bool)

(declare-fun tp!923578 () Bool)

(declare-fun tp!923580 () Bool)

(assert (=> b!2873437 (= e!1818495 (and tp!923578 tp!923580))))

(assert (= (and b!2872996 ((_ is ElementMatch!8739) (regOne!17991 (h!39805 (exprs!3199 c!7184))))) b!2873434))

(assert (= (and b!2872996 ((_ is Concat!14060) (regOne!17991 (h!39805 (exprs!3199 c!7184))))) b!2873435))

(assert (= (and b!2872996 ((_ is Star!8739) (regOne!17991 (h!39805 (exprs!3199 c!7184))))) b!2873436))

(assert (= (and b!2872996 ((_ is Union!8739) (regOne!17991 (h!39805 (exprs!3199 c!7184))))) b!2873437))

(declare-fun b!2873439 () Bool)

(declare-fun e!1818496 () Bool)

(declare-fun tp!923586 () Bool)

(declare-fun tp!923582 () Bool)

(assert (=> b!2873439 (= e!1818496 (and tp!923586 tp!923582))))

(assert (=> b!2872996 (= tp!923543 e!1818496)))

(declare-fun b!2873438 () Bool)

(assert (=> b!2873438 (= e!1818496 tp_is_empty!15075)))

(declare-fun b!2873440 () Bool)

(declare-fun tp!923584 () Bool)

(assert (=> b!2873440 (= e!1818496 tp!923584)))

(declare-fun b!2873441 () Bool)

(declare-fun tp!923583 () Bool)

(declare-fun tp!923585 () Bool)

(assert (=> b!2873441 (= e!1818496 (and tp!923583 tp!923585))))

(assert (= (and b!2872996 ((_ is ElementMatch!8739) (regTwo!17991 (h!39805 (exprs!3199 c!7184))))) b!2873438))

(assert (= (and b!2872996 ((_ is Concat!14060) (regTwo!17991 (h!39805 (exprs!3199 c!7184))))) b!2873439))

(assert (= (and b!2872996 ((_ is Star!8739) (regTwo!17991 (h!39805 (exprs!3199 c!7184))))) b!2873440))

(assert (= (and b!2872996 ((_ is Union!8739) (regTwo!17991 (h!39805 (exprs!3199 c!7184))))) b!2873441))

(declare-fun b_lambda!86065 () Bool)

(assert (= b_lambda!86063 (or d!830115 b_lambda!86065)))

(declare-fun bs!522299 () Bool)

(declare-fun d!830461 () Bool)

(assert (= bs!522299 (and d!830461 d!830115)))

(assert (=> bs!522299 (= (dynLambda!14312 lambda!107146 (h!39805 (t!233552 (exprs!3199 c!7184)))) (validRegex!3517 (h!39805 (t!233552 (exprs!3199 c!7184)))))))

(declare-fun m!3291511 () Bool)

(assert (=> bs!522299 m!3291511))

(assert (=> b!2873334 d!830461))

(declare-fun b_lambda!86067 () Bool)

(assert (= b_lambda!86061 (or d!830225 b_lambda!86067)))

(declare-fun bs!522300 () Bool)

(declare-fun d!830463 () Bool)

(assert (= bs!522300 (and d!830463 d!830225)))

(assert (=> bs!522300 (= (dynLambda!14312 lambda!107161 (h!39805 (exprs!3199 lt!1018172))) (not (dynLambda!14312 lambda!107140 (h!39805 (exprs!3199 lt!1018172)))))))

(declare-fun b_lambda!86071 () Bool)

(assert (=> (not b_lambda!86071) (not bs!522300)))

(declare-fun m!3291513 () Bool)

(assert (=> bs!522300 m!3291513))

(assert (=> b!2873066 d!830463))

(declare-fun b_lambda!86069 () Bool)

(assert (= b_lambda!86059 (or d!830285 b_lambda!86069)))

(declare-fun bs!522301 () Bool)

(declare-fun d!830465 () Bool)

(assert (= bs!522301 (and d!830465 d!830285)))

(assert (=> bs!522301 (= (dynLambda!14312 lambda!107170 (h!39805 (exprs!3199 c!7184))) (not (dynLambda!14312 lambda!107143 (h!39805 (exprs!3199 c!7184)))))))

(declare-fun b_lambda!86073 () Bool)

(assert (=> (not b_lambda!86073) (not bs!522301)))

(declare-fun m!3291515 () Bool)

(assert (=> bs!522301 m!3291515))

(assert (=> b!2873055 d!830465))

(check-sat (not d!830309) (not b!2873436) (not b!2873113) (not b!2873356) (not bm!185723) (not d!830425) (not bm!185736) (not b!2873441) (not bm!185722) (not bm!185678) (not b!2873350) (not bm!185716) (not b!2873213) (not b!2873084) (not d!830319) (not b!2872999) (not b!2873431) (not b!2873103) (not b!2873065) (not bm!185692) (not b!2873324) (not bm!185717) (not b!2873432) (not b!2873304) (not bm!185702) (not bm!185665) (not b!2873108) (not bm!185734) (not bm!185708) (not b!2873410) (not b!2873136) (not bm!185687) (not b!2873376) (not b!2873382) (not b!2873011) (not bm!185724) (not b!2873357) (not b!2873422) (not d!830395) (not bm!185732) (not b!2873371) (not b!2873268) (not b_lambda!86073) (not b!2873420) (not bm!185695) (not b!2873145) (not d!830381) (not bm!185686) (not b!2873397) (not b!2873000) (not b!2873245) (not bm!185676) (not b!2873241) (not bm!185673) (not bm!185713) (not d!830297) (not b!2873380) (not bm!185698) (not d!830365) (not d!830321) (not d!830397) (not d!830361) (not b!2873433) (not bm!185729) (not d!830445) (not b!2873239) (not b!2873122) (not b!2873347) (not d!830357) (not d!830315) (not b!2873419) (not d!830435) (not bm!185691) (not b!2873377) (not b!2873333) (not bm!185735) (not bm!185664) (not bm!185688) (not d!830433) (not d!830427) (not b!2873240) (not d!830355) (not bm!185733) (not b!2873143) (not b!2873161) (not bm!185738) (not b!2873218) (not b!2873095) (not b!2873189) (not b!2873215) (not d!830403) (not bm!185694) (not b!2873409) (not bm!185682) (not b!2873414) (not b!2873211) (not b!2873219) (not bm!185674) (not b!2873117) (not b_lambda!86069) (not bm!185672) (not b!2873346) (not d!830363) (not b!2873150) (not bm!185710) (not b!2873051) (not b!2873440) (not d!830411) (not bm!185693) (not b!2873349) (not d!830345) (not b!2873112) (not b!2873337) (not b!2873437) (not b!2873424) (not b!2873038) (not b!2873111) (not b!2873411) (not b_lambda!86065) (not bm!185730) (not b!2873096) (not d!830323) (not b!2873141) (not bm!185677) (not bm!185727) (not bm!185726) (not b!2873250) (not b!2872998) (not bm!185707) (not b!2873415) tp_is_empty!15075 (not b!2873243) (not b!2873162) (not b!2873217) (not d!830291) (not b!2873133) (not b!2873107) (not d!830441) (not b!2873423) (not b!2873278) (not b!2873277) (not d!830347) (not b!2873418) (not b!2873413) (not d!830405) (not bm!185697) (not bm!185670) (not b!2873300) (not d!830439) (not bm!185737) (not b!2873140) (not b!2873435) (not b!2873201) (not b!2873417) (not b!2873115) (not bm!185718) (not b!2873176) (not bm!185703) (not bm!185683) (not d!830341) (not bm!185671) (not b!2873200) (not b!2873187) (not d!830369) (not b!2873236) (not b!2873352) (not b!2873305) (not b!2873134) (not b!2873067) (not b!2873335) (not bs!522299) (not b_lambda!86071) (not bm!185700) (not d!830289) (not b!2873185) (not b!2873139) (not b!2873439) (not b!2873232) (not d!830443) (not b!2873056) (not b_lambda!86057) (not bm!185681) (not bm!185706) (not b!2873105) (not b!2873306) (not b!2873080) (not d!830447) (not b!2873348) (not b!2873198) (not bm!185701) (not bm!185719) (not b_lambda!86067) (not b!2873384) (not d!830337) (not bm!185711))
(check-sat)
