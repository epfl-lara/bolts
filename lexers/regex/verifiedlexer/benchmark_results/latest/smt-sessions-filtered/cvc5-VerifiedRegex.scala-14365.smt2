; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749594 () Bool)

(assert start!749594)

(declare-fun b!7941884 () Bool)

(declare-fun e!4685984 () Bool)

(declare-fun tp_is_empty!53363 () Bool)

(assert (=> b!7941884 (= e!4685984 tp_is_empty!53363)))

(declare-fun b!7941885 () Bool)

(declare-fun e!4685988 () Bool)

(declare-fun e!4685985 () Bool)

(assert (=> b!7941885 (= e!4685988 (not e!4685985))))

(declare-fun res!3150485 () Bool)

(assert (=> b!7941885 (=> res!3150485 e!4685985)))

(declare-datatypes ((C!43158 0))(
  ( (C!43159 (val!32127 Int)) )
))
(declare-datatypes ((List!74639 0))(
  ( (Nil!74515) (Cons!74515 (h!80963 C!43158) (t!390382 List!74639)) )
))
(declare-datatypes ((tuple2!70502 0))(
  ( (tuple2!70503 (_1!38554 List!74639) (_2!38554 List!74639)) )
))
(declare-fun lt!2696750 () tuple2!70502)

(declare-fun isEmpty!42826 (List!74639) Bool)

(assert (=> b!7941885 (= res!3150485 (isEmpty!42826 (_1!38554 lt!2696750)))))

(declare-fun lt!2696748 () Int)

(declare-datatypes ((Regex!21410 0))(
  ( (ElementMatch!21410 (c!1459071 C!43158)) (Concat!30409 (regOne!43332 Regex!21410) (regTwo!43332 Regex!21410)) (EmptyExpr!21410) (Star!21410 (reg!21739 Regex!21410)) (EmptyLang!21410) (Union!21410 (regOne!43333 Regex!21410) (regTwo!43333 Regex!21410)) )
))
(declare-fun r!15654 () Regex!21410)

(declare-fun input!6711 () List!74639)

(declare-fun lt!2696751 () Int)

(declare-fun findLongestMatchInner!2201 (Regex!21410 List!74639 Int List!74639 List!74639 Int) tuple2!70502)

(assert (=> b!7941885 (= lt!2696750 (findLongestMatchInner!2201 r!15654 Nil!74515 lt!2696751 input!6711 input!6711 lt!2696748))))

(declare-fun e!4685986 () Bool)

(assert (=> b!7941885 e!4685986))

(declare-fun res!3150482 () Bool)

(assert (=> b!7941885 (=> res!3150482 e!4685986)))

(declare-fun lt!2696752 () tuple2!70502)

(assert (=> b!7941885 (= res!3150482 (isEmpty!42826 (_1!38554 lt!2696752)))))

(declare-fun lt!2696753 () List!74639)

(assert (=> b!7941885 (= lt!2696752 (findLongestMatchInner!2201 r!15654 Nil!74515 lt!2696751 lt!2696753 input!6711 lt!2696748))))

(declare-fun size!43346 (List!74639) Int)

(assert (=> b!7941885 (= lt!2696748 (size!43346 input!6711))))

(declare-fun getSuffix!3717 (List!74639 List!74639) List!74639)

(assert (=> b!7941885 (= lt!2696753 (getSuffix!3717 input!6711 Nil!74515))))

(assert (=> b!7941885 (= lt!2696751 (size!43346 Nil!74515))))

(declare-datatypes ((Unit!169652 0))(
  ( (Unit!169653) )
))
(declare-fun lt!2696749 () Unit!169652)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!44 (Regex!21410 Regex!21410 List!74639 List!74639) Unit!169652)

(assert (=> b!7941885 (= lt!2696749 (longestMatchIsAcceptedByMatchOrIsEmptyRec!44 r!15654 r!15654 Nil!74515 input!6711))))

(declare-fun b!7941886 () Bool)

(declare-fun matchR!10713 (Regex!21410 List!74639) Bool)

(assert (=> b!7941886 (= e!4685985 (matchR!10713 r!15654 (_1!38554 lt!2696750)))))

(declare-fun b!7941887 () Bool)

(assert (=> b!7941887 (= e!4685986 (matchR!10713 r!15654 (_1!38554 lt!2696752)))))

(declare-fun b!7941888 () Bool)

(declare-fun tp!2361502 () Bool)

(assert (=> b!7941888 (= e!4685984 tp!2361502)))

(declare-fun b!7941889 () Bool)

(declare-fun e!4685987 () Bool)

(declare-fun tp!2361500 () Bool)

(assert (=> b!7941889 (= e!4685987 (and tp_is_empty!53363 tp!2361500))))

(declare-fun b!7941890 () Bool)

(declare-fun res!3150483 () Bool)

(assert (=> b!7941890 (=> (not res!3150483) (not e!4685988))))

(declare-fun isPrefix!6510 (List!74639 List!74639) Bool)

(assert (=> b!7941890 (= res!3150483 (isPrefix!6510 Nil!74515 input!6711))))

(declare-fun res!3150484 () Bool)

(assert (=> start!749594 (=> (not res!3150484) (not e!4685988))))

(declare-fun validRegex!11714 (Regex!21410) Bool)

(assert (=> start!749594 (= res!3150484 (validRegex!11714 r!15654))))

(assert (=> start!749594 e!4685988))

(assert (=> start!749594 e!4685984))

(assert (=> start!749594 e!4685987))

(declare-fun b!7941883 () Bool)

(declare-fun tp!2361504 () Bool)

(declare-fun tp!2361499 () Bool)

(assert (=> b!7941883 (= e!4685984 (and tp!2361504 tp!2361499))))

(declare-fun b!7941891 () Bool)

(declare-fun res!3150481 () Bool)

(assert (=> b!7941891 (=> (not res!3150481) (not e!4685988))))

(declare-fun derivative!596 (Regex!21410 List!74639) Regex!21410)

(assert (=> b!7941891 (= res!3150481 (= (derivative!596 r!15654 Nil!74515) r!15654))))

(declare-fun b!7941892 () Bool)

(declare-fun tp!2361501 () Bool)

(declare-fun tp!2361503 () Bool)

(assert (=> b!7941892 (= e!4685984 (and tp!2361501 tp!2361503))))

(assert (= (and start!749594 res!3150484) b!7941890))

(assert (= (and b!7941890 res!3150483) b!7941891))

(assert (= (and b!7941891 res!3150481) b!7941885))

(assert (= (and b!7941885 (not res!3150482)) b!7941887))

(assert (= (and b!7941885 (not res!3150485)) b!7941886))

(assert (= (and start!749594 (is-ElementMatch!21410 r!15654)) b!7941884))

(assert (= (and start!749594 (is-Concat!30409 r!15654)) b!7941892))

(assert (= (and start!749594 (is-Star!21410 r!15654)) b!7941888))

(assert (= (and start!749594 (is-Union!21410 r!15654)) b!7941883))

(assert (= (and start!749594 (is-Cons!74515 input!6711)) b!7941889))

(declare-fun m!8330434 () Bool)

(assert (=> start!749594 m!8330434))

(declare-fun m!8330436 () Bool)

(assert (=> b!7941887 m!8330436))

(declare-fun m!8330438 () Bool)

(assert (=> b!7941886 m!8330438))

(declare-fun m!8330440 () Bool)

(assert (=> b!7941885 m!8330440))

(declare-fun m!8330442 () Bool)

(assert (=> b!7941885 m!8330442))

(declare-fun m!8330444 () Bool)

(assert (=> b!7941885 m!8330444))

(declare-fun m!8330446 () Bool)

(assert (=> b!7941885 m!8330446))

(declare-fun m!8330448 () Bool)

(assert (=> b!7941885 m!8330448))

(declare-fun m!8330450 () Bool)

(assert (=> b!7941885 m!8330450))

(declare-fun m!8330452 () Bool)

(assert (=> b!7941885 m!8330452))

(declare-fun m!8330454 () Bool)

(assert (=> b!7941885 m!8330454))

(declare-fun m!8330456 () Bool)

(assert (=> b!7941890 m!8330456))

(declare-fun m!8330458 () Bool)

(assert (=> b!7941891 m!8330458))

(push 1)

(assert (not start!749594))

(assert (not b!7941887))

(assert (not b!7941890))

(assert (not b!7941889))

(assert (not b!7941888))

(assert (not b!7941885))

(assert (not b!7941892))

(assert tp_is_empty!53363)

(assert (not b!7941883))

(assert (not b!7941891))

(assert (not b!7941886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7941951 () Bool)

(declare-fun res!3150517 () Bool)

(declare-fun e!4686024 () Bool)

(assert (=> b!7941951 (=> res!3150517 e!4686024)))

(declare-fun e!4686018 () Bool)

(assert (=> b!7941951 (= res!3150517 e!4686018)))

(declare-fun res!3150519 () Bool)

(assert (=> b!7941951 (=> (not res!3150519) (not e!4686018))))

(declare-fun lt!2696774 () Bool)

(assert (=> b!7941951 (= res!3150519 lt!2696774)))

(declare-fun b!7941952 () Bool)

(declare-fun e!4686021 () Bool)

(declare-fun e!4686020 () Bool)

(assert (=> b!7941952 (= e!4686021 e!4686020)))

(declare-fun res!3150524 () Bool)

(assert (=> b!7941952 (=> res!3150524 e!4686020)))

(declare-fun call!735989 () Bool)

(assert (=> b!7941952 (= res!3150524 call!735989)))

(declare-fun b!7941953 () Bool)

(assert (=> b!7941953 (= e!4686024 e!4686021)))

(declare-fun res!3150523 () Bool)

(assert (=> b!7941953 (=> (not res!3150523) (not e!4686021))))

(assert (=> b!7941953 (= res!3150523 (not lt!2696774))))

(declare-fun b!7941954 () Bool)

(declare-fun res!3150520 () Bool)

(assert (=> b!7941954 (=> res!3150520 e!4686024)))

(assert (=> b!7941954 (= res!3150520 (not (is-ElementMatch!21410 r!15654)))))

(declare-fun e!4686019 () Bool)

(assert (=> b!7941954 (= e!4686019 e!4686024)))

(declare-fun b!7941955 () Bool)

(declare-fun head!16190 (List!74639) C!43158)

(assert (=> b!7941955 (= e!4686020 (not (= (head!16190 (_1!38554 lt!2696750)) (c!1459071 r!15654))))))

(declare-fun b!7941956 () Bool)

(declare-fun e!4686023 () Bool)

(assert (=> b!7941956 (= e!4686023 e!4686019)))

(declare-fun c!1459080 () Bool)

(assert (=> b!7941956 (= c!1459080 (is-EmptyLang!21410 r!15654))))

(declare-fun d!2375130 () Bool)

(assert (=> d!2375130 e!4686023))

(declare-fun c!1459079 () Bool)

(assert (=> d!2375130 (= c!1459079 (is-EmptyExpr!21410 r!15654))))

(declare-fun e!4686022 () Bool)

(assert (=> d!2375130 (= lt!2696774 e!4686022)))

(declare-fun c!1459081 () Bool)

(assert (=> d!2375130 (= c!1459081 (isEmpty!42826 (_1!38554 lt!2696750)))))

(assert (=> d!2375130 (validRegex!11714 r!15654)))

(assert (=> d!2375130 (= (matchR!10713 r!15654 (_1!38554 lt!2696750)) lt!2696774)))

(declare-fun b!7941957 () Bool)

(declare-fun nullable!9531 (Regex!21410) Bool)

(assert (=> b!7941957 (= e!4686022 (nullable!9531 r!15654))))

(declare-fun b!7941958 () Bool)

(declare-fun res!3150522 () Bool)

(assert (=> b!7941958 (=> res!3150522 e!4686020)))

(declare-fun tail!15733 (List!74639) List!74639)

(assert (=> b!7941958 (= res!3150522 (not (isEmpty!42826 (tail!15733 (_1!38554 lt!2696750)))))))

(declare-fun b!7941959 () Bool)

(declare-fun res!3150518 () Bool)

(assert (=> b!7941959 (=> (not res!3150518) (not e!4686018))))

(assert (=> b!7941959 (= res!3150518 (not call!735989))))

(declare-fun b!7941960 () Bool)

(assert (=> b!7941960 (= e!4686023 (= lt!2696774 call!735989))))

(declare-fun b!7941961 () Bool)

(declare-fun res!3150521 () Bool)

(assert (=> b!7941961 (=> (not res!3150521) (not e!4686018))))

(assert (=> b!7941961 (= res!3150521 (isEmpty!42826 (tail!15733 (_1!38554 lt!2696750))))))

(declare-fun b!7941962 () Bool)

(declare-fun derivativeStep!6468 (Regex!21410 C!43158) Regex!21410)

(assert (=> b!7941962 (= e!4686022 (matchR!10713 (derivativeStep!6468 r!15654 (head!16190 (_1!38554 lt!2696750))) (tail!15733 (_1!38554 lt!2696750))))))

(declare-fun bm!735984 () Bool)

(assert (=> bm!735984 (= call!735989 (isEmpty!42826 (_1!38554 lt!2696750)))))

(declare-fun b!7941963 () Bool)

(assert (=> b!7941963 (= e!4686019 (not lt!2696774))))

(declare-fun b!7941964 () Bool)

(assert (=> b!7941964 (= e!4686018 (= (head!16190 (_1!38554 lt!2696750)) (c!1459071 r!15654)))))

(assert (= (and d!2375130 c!1459081) b!7941957))

(assert (= (and d!2375130 (not c!1459081)) b!7941962))

(assert (= (and d!2375130 c!1459079) b!7941960))

(assert (= (and d!2375130 (not c!1459079)) b!7941956))

(assert (= (and b!7941956 c!1459080) b!7941963))

(assert (= (and b!7941956 (not c!1459080)) b!7941954))

(assert (= (and b!7941954 (not res!3150520)) b!7941951))

(assert (= (and b!7941951 res!3150519) b!7941959))

(assert (= (and b!7941959 res!3150518) b!7941961))

(assert (= (and b!7941961 res!3150521) b!7941964))

(assert (= (and b!7941951 (not res!3150517)) b!7941953))

(assert (= (and b!7941953 res!3150523) b!7941952))

(assert (= (and b!7941952 (not res!3150524)) b!7941958))

(assert (= (and b!7941958 (not res!3150522)) b!7941955))

(assert (= (or b!7941960 b!7941952 b!7941959) bm!735984))

(assert (=> bm!735984 m!8330454))

(declare-fun m!8330486 () Bool)

(assert (=> b!7941964 m!8330486))

(assert (=> d!2375130 m!8330454))

(assert (=> d!2375130 m!8330434))

(declare-fun m!8330488 () Bool)

(assert (=> b!7941958 m!8330488))

(assert (=> b!7941958 m!8330488))

(declare-fun m!8330490 () Bool)

(assert (=> b!7941958 m!8330490))

(assert (=> b!7941961 m!8330488))

(assert (=> b!7941961 m!8330488))

(assert (=> b!7941961 m!8330490))

(assert (=> b!7941955 m!8330486))

(declare-fun m!8330492 () Bool)

(assert (=> b!7941957 m!8330492))

(assert (=> b!7941962 m!8330486))

(assert (=> b!7941962 m!8330486))

(declare-fun m!8330494 () Bool)

(assert (=> b!7941962 m!8330494))

(assert (=> b!7941962 m!8330488))

(assert (=> b!7941962 m!8330494))

(assert (=> b!7941962 m!8330488))

(declare-fun m!8330496 () Bool)

(assert (=> b!7941962 m!8330496))

(assert (=> b!7941886 d!2375130))

(declare-fun d!2375134 () Bool)

(declare-fun lt!2696777 () Regex!21410)

(assert (=> d!2375134 (validRegex!11714 lt!2696777)))

(declare-fun e!4686027 () Regex!21410)

(assert (=> d!2375134 (= lt!2696777 e!4686027)))

(declare-fun c!1459084 () Bool)

(assert (=> d!2375134 (= c!1459084 (is-Cons!74515 Nil!74515))))

(assert (=> d!2375134 (validRegex!11714 r!15654)))

(assert (=> d!2375134 (= (derivative!596 r!15654 Nil!74515) lt!2696777)))

(declare-fun b!7941969 () Bool)

(assert (=> b!7941969 (= e!4686027 (derivative!596 (derivativeStep!6468 r!15654 (h!80963 Nil!74515)) (t!390382 Nil!74515)))))

(declare-fun b!7941970 () Bool)

(assert (=> b!7941970 (= e!4686027 r!15654)))

(assert (= (and d!2375134 c!1459084) b!7941969))

(assert (= (and d!2375134 (not c!1459084)) b!7941970))

(declare-fun m!8330498 () Bool)

(assert (=> d!2375134 m!8330498))

(assert (=> d!2375134 m!8330434))

(declare-fun m!8330500 () Bool)

(assert (=> b!7941969 m!8330500))

(assert (=> b!7941969 m!8330500))

(declare-fun m!8330502 () Bool)

(assert (=> b!7941969 m!8330502))

(assert (=> b!7941891 d!2375134))

(declare-fun d!2375136 () Bool)

(declare-fun e!4686044 () Bool)

(assert (=> d!2375136 e!4686044))

(declare-fun res!3150543 () Bool)

(assert (=> d!2375136 (=> res!3150543 e!4686044)))

(assert (=> d!2375136 (= res!3150543 (isEmpty!42826 (_1!38554 (findLongestMatchInner!2201 r!15654 Nil!74515 (size!43346 Nil!74515) (getSuffix!3717 input!6711 Nil!74515) input!6711 (size!43346 input!6711)))))))

(declare-fun lt!2696782 () Unit!169652)

(declare-fun choose!59875 (Regex!21410 Regex!21410 List!74639 List!74639) Unit!169652)

(assert (=> d!2375136 (= lt!2696782 (choose!59875 r!15654 r!15654 Nil!74515 input!6711))))

(assert (=> d!2375136 (validRegex!11714 r!15654)))

(assert (=> d!2375136 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!44 r!15654 r!15654 Nil!74515 input!6711) lt!2696782)))

(declare-fun b!7942001 () Bool)

(assert (=> b!7942001 (= e!4686044 (matchR!10713 r!15654 (_1!38554 (findLongestMatchInner!2201 r!15654 Nil!74515 (size!43346 Nil!74515) (getSuffix!3717 input!6711 Nil!74515) input!6711 (size!43346 input!6711)))))))

(assert (= (and d!2375136 (not res!3150543)) b!7942001))

(declare-fun m!8330504 () Bool)

(assert (=> d!2375136 m!8330504))

(assert (=> d!2375136 m!8330440))

(assert (=> d!2375136 m!8330448))

(assert (=> d!2375136 m!8330434))

(declare-fun m!8330506 () Bool)

(assert (=> d!2375136 m!8330506))

(assert (=> d!2375136 m!8330444))

(assert (=> d!2375136 m!8330444))

(assert (=> d!2375136 m!8330440))

(assert (=> d!2375136 m!8330448))

(declare-fun m!8330508 () Bool)

(assert (=> d!2375136 m!8330508))

(assert (=> b!7942001 m!8330440))

(declare-fun m!8330510 () Bool)

(assert (=> b!7942001 m!8330510))

(assert (=> b!7942001 m!8330448))

(assert (=> b!7942001 m!8330444))

(assert (=> b!7942001 m!8330444))

(assert (=> b!7942001 m!8330440))

(assert (=> b!7942001 m!8330448))

(assert (=> b!7942001 m!8330508))

(assert (=> b!7941885 d!2375136))

(declare-fun d!2375138 () Bool)

(declare-fun lt!2696785 () List!74639)

(declare-fun ++!18302 (List!74639 List!74639) List!74639)

(assert (=> d!2375138 (= (++!18302 Nil!74515 lt!2696785) input!6711)))

(declare-fun e!4686047 () List!74639)

(assert (=> d!2375138 (= lt!2696785 e!4686047)))

(declare-fun c!1459093 () Bool)

(assert (=> d!2375138 (= c!1459093 (is-Cons!74515 Nil!74515))))

(assert (=> d!2375138 (>= (size!43346 input!6711) (size!43346 Nil!74515))))

(assert (=> d!2375138 (= (getSuffix!3717 input!6711 Nil!74515) lt!2696785)))

(declare-fun b!7942006 () Bool)

(assert (=> b!7942006 (= e!4686047 (getSuffix!3717 (tail!15733 input!6711) (t!390382 Nil!74515)))))

(declare-fun b!7942007 () Bool)

(assert (=> b!7942007 (= e!4686047 input!6711)))

(assert (= (and d!2375138 c!1459093) b!7942006))

(assert (= (and d!2375138 (not c!1459093)) b!7942007))

(declare-fun m!8330512 () Bool)

(assert (=> d!2375138 m!8330512))

(assert (=> d!2375138 m!8330448))

(assert (=> d!2375138 m!8330444))

(declare-fun m!8330514 () Bool)

(assert (=> b!7942006 m!8330514))

(assert (=> b!7942006 m!8330514))

(declare-fun m!8330516 () Bool)

(assert (=> b!7942006 m!8330516))

(assert (=> b!7941885 d!2375138))

(declare-fun d!2375140 () Bool)

(assert (=> d!2375140 (= (isEmpty!42826 (_1!38554 lt!2696750)) (is-Nil!74515 (_1!38554 lt!2696750)))))

(assert (=> b!7941885 d!2375140))

(declare-fun d!2375142 () Bool)

(assert (=> d!2375142 (= (isEmpty!42826 (_1!38554 lt!2696752)) (is-Nil!74515 (_1!38554 lt!2696752)))))

(assert (=> b!7941885 d!2375142))

(declare-fun d!2375144 () Bool)

(declare-fun lt!2696789 () Int)

(assert (=> d!2375144 (>= lt!2696789 0)))

(declare-fun e!4686057 () Int)

(assert (=> d!2375144 (= lt!2696789 e!4686057)))

(declare-fun c!1459099 () Bool)

(assert (=> d!2375144 (= c!1459099 (is-Nil!74515 Nil!74515))))

(assert (=> d!2375144 (= (size!43346 Nil!74515) lt!2696789)))

(declare-fun b!7942026 () Bool)

(assert (=> b!7942026 (= e!4686057 0)))

(declare-fun b!7942027 () Bool)

(assert (=> b!7942027 (= e!4686057 (+ 1 (size!43346 (t!390382 Nil!74515))))))

(assert (= (and d!2375144 c!1459099) b!7942026))

(assert (= (and d!2375144 (not c!1459099)) b!7942027))

(declare-fun m!8330518 () Bool)

(assert (=> b!7942027 m!8330518))

(assert (=> b!7941885 d!2375144))

(declare-fun b!7942071 () Bool)

(declare-fun e!4686088 () tuple2!70502)

(assert (=> b!7942071 (= e!4686088 (tuple2!70503 Nil!74515 input!6711))))

(declare-fun b!7942072 () Bool)

(declare-fun e!4686089 () Unit!169652)

(declare-fun Unit!169656 () Unit!169652)

(assert (=> b!7942072 (= e!4686089 Unit!169656)))

(declare-fun d!2375146 () Bool)

(declare-fun e!4686083 () Bool)

(assert (=> d!2375146 e!4686083))

(declare-fun res!3150560 () Bool)

(assert (=> d!2375146 (=> (not res!3150560) (not e!4686083))))

(declare-fun lt!2696878 () tuple2!70502)

(assert (=> d!2375146 (= res!3150560 (= (++!18302 (_1!38554 lt!2696878) (_2!38554 lt!2696878)) input!6711))))

(declare-fun e!4686086 () tuple2!70502)

(assert (=> d!2375146 (= lt!2696878 e!4686086)))

(declare-fun c!1459118 () Bool)

(declare-fun lostCause!1939 (Regex!21410) Bool)

(assert (=> d!2375146 (= c!1459118 (lostCause!1939 r!15654))))

(declare-fun lt!2696879 () Unit!169652)

(declare-fun Unit!169657 () Unit!169652)

(assert (=> d!2375146 (= lt!2696879 Unit!169657)))

(assert (=> d!2375146 (= (getSuffix!3717 input!6711 Nil!74515) input!6711)))

(declare-fun lt!2696863 () Unit!169652)

(declare-fun lt!2696877 () Unit!169652)

(assert (=> d!2375146 (= lt!2696863 lt!2696877)))

(declare-fun lt!2696864 () List!74639)

(assert (=> d!2375146 (= input!6711 lt!2696864)))

(declare-fun lemmaSamePrefixThenSameSuffix!2955 (List!74639 List!74639 List!74639 List!74639 List!74639) Unit!169652)

(assert (=> d!2375146 (= lt!2696877 (lemmaSamePrefixThenSameSuffix!2955 Nil!74515 input!6711 Nil!74515 lt!2696864 input!6711))))

(assert (=> d!2375146 (= lt!2696864 (getSuffix!3717 input!6711 Nil!74515))))

(declare-fun lt!2696868 () Unit!169652)

(declare-fun lt!2696876 () Unit!169652)

(assert (=> d!2375146 (= lt!2696868 lt!2696876)))

(assert (=> d!2375146 (isPrefix!6510 Nil!74515 (++!18302 Nil!74515 input!6711))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3817 (List!74639 List!74639) Unit!169652)

(assert (=> d!2375146 (= lt!2696876 (lemmaConcatTwoListThenFirstIsPrefix!3817 Nil!74515 input!6711))))

(assert (=> d!2375146 (validRegex!11714 r!15654)))

(assert (=> d!2375146 (= (findLongestMatchInner!2201 r!15654 Nil!74515 lt!2696751 input!6711 input!6711 lt!2696748) lt!2696878)))

(declare-fun b!7942073 () Bool)

(declare-fun Unit!169658 () Unit!169652)

(assert (=> b!7942073 (= e!4686089 Unit!169658)))

(declare-fun lt!2696860 () Unit!169652)

(declare-fun call!736015 () Unit!169652)

(assert (=> b!7942073 (= lt!2696860 call!736015)))

(declare-fun call!736012 () Bool)

(assert (=> b!7942073 call!736012))

(declare-fun lt!2696855 () Unit!169652)

(assert (=> b!7942073 (= lt!2696855 lt!2696860)))

(declare-fun lt!2696882 () Unit!169652)

(declare-fun call!736009 () Unit!169652)

(assert (=> b!7942073 (= lt!2696882 call!736009)))

(assert (=> b!7942073 (= input!6711 Nil!74515)))

(declare-fun lt!2696872 () Unit!169652)

(assert (=> b!7942073 (= lt!2696872 lt!2696882)))

(assert (=> b!7942073 false))

(declare-fun b!7942074 () Bool)

(declare-fun e!4686084 () Bool)

(assert (=> b!7942074 (= e!4686083 e!4686084)))

(declare-fun res!3150559 () Bool)

(assert (=> b!7942074 (=> res!3150559 e!4686084)))

(assert (=> b!7942074 (= res!3150559 (isEmpty!42826 (_1!38554 lt!2696878)))))

(declare-fun bm!736004 () Bool)

(declare-fun call!736010 () List!74639)

(assert (=> bm!736004 (= call!736010 (tail!15733 input!6711))))

(declare-fun bm!736005 () Bool)

(declare-fun call!736011 () Bool)

(assert (=> bm!736005 (= call!736011 (nullable!9531 r!15654))))

(declare-fun bm!736006 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1588 (List!74639 List!74639 List!74639) Unit!169652)

(assert (=> bm!736006 (= call!736009 (lemmaIsPrefixSameLengthThenSameList!1588 input!6711 Nil!74515 input!6711))))

(declare-fun b!7942075 () Bool)

(assert (=> b!7942075 (= e!4686084 (>= (size!43346 (_1!38554 lt!2696878)) (size!43346 Nil!74515)))))

(declare-fun bm!736007 () Bool)

(declare-fun lemmaIsPrefixRefl!4006 (List!74639 List!74639) Unit!169652)

(assert (=> bm!736007 (= call!736015 (lemmaIsPrefixRefl!4006 input!6711 input!6711))))

(declare-fun lt!2696874 () List!74639)

(declare-fun call!736016 () Regex!21410)

(declare-fun call!736014 () tuple2!70502)

(declare-fun bm!736008 () Bool)

(assert (=> bm!736008 (= call!736014 (findLongestMatchInner!2201 call!736016 lt!2696874 (+ lt!2696751 1) call!736010 input!6711 lt!2696748))))

(declare-fun b!7942076 () Bool)

(declare-fun c!1459121 () Bool)

(assert (=> b!7942076 (= c!1459121 call!736011)))

(declare-fun lt!2696871 () Unit!169652)

(declare-fun lt!2696870 () Unit!169652)

(assert (=> b!7942076 (= lt!2696871 lt!2696870)))

(assert (=> b!7942076 (= input!6711 Nil!74515)))

(assert (=> b!7942076 (= lt!2696870 call!736009)))

(declare-fun lt!2696866 () Unit!169652)

(declare-fun lt!2696858 () Unit!169652)

(assert (=> b!7942076 (= lt!2696866 lt!2696858)))

(assert (=> b!7942076 call!736012))

(assert (=> b!7942076 (= lt!2696858 call!736015)))

(declare-fun e!4686087 () tuple2!70502)

(declare-fun e!4686090 () tuple2!70502)

(assert (=> b!7942076 (= e!4686087 e!4686090)))

(declare-fun b!7942077 () Bool)

(assert (=> b!7942077 (= e!4686086 (tuple2!70503 Nil!74515 input!6711))))

(declare-fun b!7942078 () Bool)

(declare-fun c!1459120 () Bool)

(assert (=> b!7942078 (= c!1459120 call!736011)))

(declare-fun lt!2696881 () Unit!169652)

(declare-fun lt!2696859 () Unit!169652)

(assert (=> b!7942078 (= lt!2696881 lt!2696859)))

(declare-fun lt!2696873 () C!43158)

(declare-fun lt!2696857 () List!74639)

(assert (=> b!7942078 (= (++!18302 (++!18302 Nil!74515 (Cons!74515 lt!2696873 Nil!74515)) lt!2696857) input!6711)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3495 (List!74639 C!43158 List!74639 List!74639) Unit!169652)

(assert (=> b!7942078 (= lt!2696859 (lemmaMoveElementToOtherListKeepsConcatEq!3495 Nil!74515 lt!2696873 lt!2696857 input!6711))))

(assert (=> b!7942078 (= lt!2696857 (tail!15733 input!6711))))

(assert (=> b!7942078 (= lt!2696873 (head!16190 input!6711))))

(declare-fun lt!2696880 () Unit!169652)

(declare-fun lt!2696867 () Unit!169652)

(assert (=> b!7942078 (= lt!2696880 lt!2696867)))

(assert (=> b!7942078 (isPrefix!6510 (++!18302 Nil!74515 (Cons!74515 (head!16190 (getSuffix!3717 input!6711 Nil!74515)) Nil!74515)) input!6711)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1273 (List!74639 List!74639) Unit!169652)

(assert (=> b!7942078 (= lt!2696867 (lemmaAddHeadSuffixToPrefixStillPrefix!1273 Nil!74515 input!6711))))

(declare-fun lt!2696865 () Unit!169652)

(declare-fun lt!2696861 () Unit!169652)

(assert (=> b!7942078 (= lt!2696865 lt!2696861)))

(assert (=> b!7942078 (= lt!2696861 (lemmaAddHeadSuffixToPrefixStillPrefix!1273 Nil!74515 input!6711))))

(assert (=> b!7942078 (= lt!2696874 (++!18302 Nil!74515 (Cons!74515 (head!16190 input!6711) Nil!74515)))))

(declare-fun lt!2696869 () Unit!169652)

(assert (=> b!7942078 (= lt!2696869 e!4686089)))

(declare-fun c!1459119 () Bool)

(assert (=> b!7942078 (= c!1459119 (= (size!43346 Nil!74515) (size!43346 input!6711)))))

(declare-fun lt!2696875 () Unit!169652)

(declare-fun lt!2696856 () Unit!169652)

(assert (=> b!7942078 (= lt!2696875 lt!2696856)))

(assert (=> b!7942078 (<= (size!43346 Nil!74515) (size!43346 input!6711))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1053 (List!74639 List!74639) Unit!169652)

(assert (=> b!7942078 (= lt!2696856 (lemmaIsPrefixThenSmallerEqSize!1053 Nil!74515 input!6711))))

(declare-fun e!4686085 () tuple2!70502)

(assert (=> b!7942078 (= e!4686087 e!4686085)))

(declare-fun bm!736009 () Bool)

(declare-fun call!736013 () C!43158)

(assert (=> bm!736009 (= call!736013 (head!16190 input!6711))))

(declare-fun b!7942079 () Bool)

(declare-fun lt!2696862 () tuple2!70502)

(assert (=> b!7942079 (= e!4686088 lt!2696862)))

(declare-fun b!7942080 () Bool)

(assert (=> b!7942080 (= e!4686090 (tuple2!70503 Nil!74515 Nil!74515))))

(declare-fun b!7942081 () Bool)

(assert (=> b!7942081 (= e!4686086 e!4686087)))

(declare-fun c!1459123 () Bool)

(assert (=> b!7942081 (= c!1459123 (= lt!2696751 lt!2696748))))

(declare-fun b!7942082 () Bool)

(assert (=> b!7942082 (= e!4686085 call!736014)))

(declare-fun b!7942083 () Bool)

(assert (=> b!7942083 (= e!4686085 e!4686088)))

(assert (=> b!7942083 (= lt!2696862 call!736014)))

(declare-fun c!1459122 () Bool)

(assert (=> b!7942083 (= c!1459122 (isEmpty!42826 (_1!38554 lt!2696862)))))

(declare-fun bm!736010 () Bool)

(assert (=> bm!736010 (= call!736012 (isPrefix!6510 input!6711 input!6711))))

(declare-fun bm!736011 () Bool)

(assert (=> bm!736011 (= call!736016 (derivativeStep!6468 r!15654 call!736013))))

(declare-fun b!7942084 () Bool)

(assert (=> b!7942084 (= e!4686090 (tuple2!70503 Nil!74515 input!6711))))

(assert (= (and d!2375146 c!1459118) b!7942077))

(assert (= (and d!2375146 (not c!1459118)) b!7942081))

(assert (= (and b!7942081 c!1459123) b!7942076))

(assert (= (and b!7942081 (not c!1459123)) b!7942078))

(assert (= (and b!7942076 c!1459121) b!7942080))

(assert (= (and b!7942076 (not c!1459121)) b!7942084))

(assert (= (and b!7942078 c!1459119) b!7942073))

(assert (= (and b!7942078 (not c!1459119)) b!7942072))

(assert (= (and b!7942078 c!1459120) b!7942083))

(assert (= (and b!7942078 (not c!1459120)) b!7942082))

(assert (= (and b!7942083 c!1459122) b!7942071))

(assert (= (and b!7942083 (not c!1459122)) b!7942079))

(assert (= (or b!7942083 b!7942082) bm!736004))

(assert (= (or b!7942083 b!7942082) bm!736009))

(assert (= (or b!7942083 b!7942082) bm!736011))

(assert (= (or b!7942083 b!7942082) bm!736008))

(assert (= (or b!7942076 b!7942073) bm!736010))

(assert (= (or b!7942076 b!7942078) bm!736005))

(assert (= (or b!7942076 b!7942073) bm!736007))

(assert (= (or b!7942076 b!7942073) bm!736006))

(assert (= (and d!2375146 res!3150560) b!7942074))

(assert (= (and b!7942074 (not res!3150559)) b!7942075))

(declare-fun m!8330548 () Bool)

(assert (=> b!7942075 m!8330548))

(assert (=> b!7942075 m!8330444))

(declare-fun m!8330550 () Bool)

(assert (=> b!7942083 m!8330550))

(declare-fun m!8330552 () Bool)

(assert (=> d!2375146 m!8330552))

(declare-fun m!8330554 () Bool)

(assert (=> d!2375146 m!8330554))

(declare-fun m!8330556 () Bool)

(assert (=> d!2375146 m!8330556))

(assert (=> d!2375146 m!8330434))

(declare-fun m!8330558 () Bool)

(assert (=> d!2375146 m!8330558))

(declare-fun m!8330560 () Bool)

(assert (=> d!2375146 m!8330560))

(declare-fun m!8330562 () Bool)

(assert (=> d!2375146 m!8330562))

(assert (=> d!2375146 m!8330440))

(assert (=> d!2375146 m!8330554))

(declare-fun m!8330564 () Bool)

(assert (=> bm!736010 m!8330564))

(declare-fun m!8330566 () Bool)

(assert (=> b!7942074 m!8330566))

(assert (=> bm!736005 m!8330492))

(declare-fun m!8330568 () Bool)

(assert (=> bm!736006 m!8330568))

(declare-fun m!8330570 () Bool)

(assert (=> bm!736011 m!8330570))

(assert (=> b!7942078 m!8330514))

(assert (=> b!7942078 m!8330440))

(declare-fun m!8330572 () Bool)

(assert (=> b!7942078 m!8330572))

(declare-fun m!8330574 () Bool)

(assert (=> b!7942078 m!8330574))

(declare-fun m!8330576 () Bool)

(assert (=> b!7942078 m!8330576))

(declare-fun m!8330578 () Bool)

(assert (=> b!7942078 m!8330578))

(declare-fun m!8330580 () Bool)

(assert (=> b!7942078 m!8330580))

(assert (=> b!7942078 m!8330448))

(assert (=> b!7942078 m!8330440))

(assert (=> b!7942078 m!8330444))

(declare-fun m!8330582 () Bool)

(assert (=> b!7942078 m!8330582))

(assert (=> b!7942078 m!8330578))

(declare-fun m!8330584 () Bool)

(assert (=> b!7942078 m!8330584))

(assert (=> b!7942078 m!8330574))

(declare-fun m!8330586 () Bool)

(assert (=> b!7942078 m!8330586))

(declare-fun m!8330588 () Bool)

(assert (=> b!7942078 m!8330588))

(declare-fun m!8330590 () Bool)

(assert (=> b!7942078 m!8330590))

(assert (=> bm!736009 m!8330580))

(assert (=> bm!736004 m!8330514))

(declare-fun m!8330592 () Bool)

(assert (=> bm!736007 m!8330592))

(declare-fun m!8330594 () Bool)

(assert (=> bm!736008 m!8330594))

(assert (=> b!7941885 d!2375146))

(declare-fun d!2375156 () Bool)

(declare-fun lt!2696883 () Int)

(assert (=> d!2375156 (>= lt!2696883 0)))

(declare-fun e!4686091 () Int)

(assert (=> d!2375156 (= lt!2696883 e!4686091)))

(declare-fun c!1459124 () Bool)

(assert (=> d!2375156 (= c!1459124 (is-Nil!74515 input!6711))))

(assert (=> d!2375156 (= (size!43346 input!6711) lt!2696883)))

(declare-fun b!7942085 () Bool)

(assert (=> b!7942085 (= e!4686091 0)))

(declare-fun b!7942086 () Bool)

(assert (=> b!7942086 (= e!4686091 (+ 1 (size!43346 (t!390382 input!6711))))))

(assert (= (and d!2375156 c!1459124) b!7942085))

(assert (= (and d!2375156 (not c!1459124)) b!7942086))

(declare-fun m!8330596 () Bool)

(assert (=> b!7942086 m!8330596))

(assert (=> b!7941885 d!2375156))

(declare-fun b!7942087 () Bool)

(declare-fun e!4686097 () tuple2!70502)

(assert (=> b!7942087 (= e!4686097 (tuple2!70503 Nil!74515 lt!2696753))))

(declare-fun b!7942088 () Bool)

(declare-fun e!4686098 () Unit!169652)

(declare-fun Unit!169659 () Unit!169652)

(assert (=> b!7942088 (= e!4686098 Unit!169659)))

(declare-fun d!2375158 () Bool)

(declare-fun e!4686092 () Bool)

(assert (=> d!2375158 e!4686092))

(declare-fun res!3150562 () Bool)

(assert (=> d!2375158 (=> (not res!3150562) (not e!4686092))))

(declare-fun lt!2696907 () tuple2!70502)

(assert (=> d!2375158 (= res!3150562 (= (++!18302 (_1!38554 lt!2696907) (_2!38554 lt!2696907)) input!6711))))

(declare-fun e!4686095 () tuple2!70502)

(assert (=> d!2375158 (= lt!2696907 e!4686095)))

(declare-fun c!1459125 () Bool)

(assert (=> d!2375158 (= c!1459125 (lostCause!1939 r!15654))))

(declare-fun lt!2696908 () Unit!169652)

(declare-fun Unit!169660 () Unit!169652)

(assert (=> d!2375158 (= lt!2696908 Unit!169660)))

(assert (=> d!2375158 (= (getSuffix!3717 input!6711 Nil!74515) lt!2696753)))

(declare-fun lt!2696892 () Unit!169652)

(declare-fun lt!2696906 () Unit!169652)

(assert (=> d!2375158 (= lt!2696892 lt!2696906)))

(declare-fun lt!2696893 () List!74639)

(assert (=> d!2375158 (= lt!2696753 lt!2696893)))

(assert (=> d!2375158 (= lt!2696906 (lemmaSamePrefixThenSameSuffix!2955 Nil!74515 lt!2696753 Nil!74515 lt!2696893 input!6711))))

(assert (=> d!2375158 (= lt!2696893 (getSuffix!3717 input!6711 Nil!74515))))

(declare-fun lt!2696897 () Unit!169652)

(declare-fun lt!2696905 () Unit!169652)

(assert (=> d!2375158 (= lt!2696897 lt!2696905)))

(assert (=> d!2375158 (isPrefix!6510 Nil!74515 (++!18302 Nil!74515 lt!2696753))))

(assert (=> d!2375158 (= lt!2696905 (lemmaConcatTwoListThenFirstIsPrefix!3817 Nil!74515 lt!2696753))))

(assert (=> d!2375158 (validRegex!11714 r!15654)))

(assert (=> d!2375158 (= (findLongestMatchInner!2201 r!15654 Nil!74515 lt!2696751 lt!2696753 input!6711 lt!2696748) lt!2696907)))

(declare-fun b!7942089 () Bool)

(declare-fun Unit!169661 () Unit!169652)

(assert (=> b!7942089 (= e!4686098 Unit!169661)))

(declare-fun lt!2696889 () Unit!169652)

(declare-fun call!736023 () Unit!169652)

(assert (=> b!7942089 (= lt!2696889 call!736023)))

(declare-fun call!736020 () Bool)

(assert (=> b!7942089 call!736020))

(declare-fun lt!2696884 () Unit!169652)

(assert (=> b!7942089 (= lt!2696884 lt!2696889)))

(declare-fun lt!2696911 () Unit!169652)

(declare-fun call!736017 () Unit!169652)

(assert (=> b!7942089 (= lt!2696911 call!736017)))

(assert (=> b!7942089 (= input!6711 Nil!74515)))

(declare-fun lt!2696901 () Unit!169652)

(assert (=> b!7942089 (= lt!2696901 lt!2696911)))

(assert (=> b!7942089 false))

(declare-fun b!7942090 () Bool)

(declare-fun e!4686093 () Bool)

(assert (=> b!7942090 (= e!4686092 e!4686093)))

(declare-fun res!3150561 () Bool)

(assert (=> b!7942090 (=> res!3150561 e!4686093)))

(assert (=> b!7942090 (= res!3150561 (isEmpty!42826 (_1!38554 lt!2696907)))))

(declare-fun bm!736012 () Bool)

(declare-fun call!736018 () List!74639)

(assert (=> bm!736012 (= call!736018 (tail!15733 lt!2696753))))

(declare-fun bm!736013 () Bool)

(declare-fun call!736019 () Bool)

(assert (=> bm!736013 (= call!736019 (nullable!9531 r!15654))))

(declare-fun bm!736014 () Bool)

(assert (=> bm!736014 (= call!736017 (lemmaIsPrefixSameLengthThenSameList!1588 input!6711 Nil!74515 input!6711))))

(declare-fun b!7942091 () Bool)

(assert (=> b!7942091 (= e!4686093 (>= (size!43346 (_1!38554 lt!2696907)) (size!43346 Nil!74515)))))

(declare-fun bm!736015 () Bool)

(assert (=> bm!736015 (= call!736023 (lemmaIsPrefixRefl!4006 input!6711 input!6711))))

(declare-fun lt!2696903 () List!74639)

(declare-fun call!736022 () tuple2!70502)

(declare-fun bm!736016 () Bool)

(declare-fun call!736024 () Regex!21410)

(assert (=> bm!736016 (= call!736022 (findLongestMatchInner!2201 call!736024 lt!2696903 (+ lt!2696751 1) call!736018 input!6711 lt!2696748))))

(declare-fun b!7942092 () Bool)

(declare-fun c!1459128 () Bool)

(assert (=> b!7942092 (= c!1459128 call!736019)))

(declare-fun lt!2696900 () Unit!169652)

(declare-fun lt!2696899 () Unit!169652)

(assert (=> b!7942092 (= lt!2696900 lt!2696899)))

(assert (=> b!7942092 (= input!6711 Nil!74515)))

(assert (=> b!7942092 (= lt!2696899 call!736017)))

(declare-fun lt!2696895 () Unit!169652)

(declare-fun lt!2696887 () Unit!169652)

(assert (=> b!7942092 (= lt!2696895 lt!2696887)))

(assert (=> b!7942092 call!736020))

(assert (=> b!7942092 (= lt!2696887 call!736023)))

(declare-fun e!4686096 () tuple2!70502)

(declare-fun e!4686099 () tuple2!70502)

(assert (=> b!7942092 (= e!4686096 e!4686099)))

(declare-fun b!7942093 () Bool)

(assert (=> b!7942093 (= e!4686095 (tuple2!70503 Nil!74515 input!6711))))

(declare-fun b!7942094 () Bool)

(declare-fun c!1459127 () Bool)

(assert (=> b!7942094 (= c!1459127 call!736019)))

(declare-fun lt!2696910 () Unit!169652)

(declare-fun lt!2696888 () Unit!169652)

(assert (=> b!7942094 (= lt!2696910 lt!2696888)))

(declare-fun lt!2696902 () C!43158)

(declare-fun lt!2696886 () List!74639)

(assert (=> b!7942094 (= (++!18302 (++!18302 Nil!74515 (Cons!74515 lt!2696902 Nil!74515)) lt!2696886) input!6711)))

(assert (=> b!7942094 (= lt!2696888 (lemmaMoveElementToOtherListKeepsConcatEq!3495 Nil!74515 lt!2696902 lt!2696886 input!6711))))

(assert (=> b!7942094 (= lt!2696886 (tail!15733 lt!2696753))))

(assert (=> b!7942094 (= lt!2696902 (head!16190 lt!2696753))))

(declare-fun lt!2696909 () Unit!169652)

(declare-fun lt!2696896 () Unit!169652)

(assert (=> b!7942094 (= lt!2696909 lt!2696896)))

(assert (=> b!7942094 (isPrefix!6510 (++!18302 Nil!74515 (Cons!74515 (head!16190 (getSuffix!3717 input!6711 Nil!74515)) Nil!74515)) input!6711)))

(assert (=> b!7942094 (= lt!2696896 (lemmaAddHeadSuffixToPrefixStillPrefix!1273 Nil!74515 input!6711))))

(declare-fun lt!2696894 () Unit!169652)

(declare-fun lt!2696890 () Unit!169652)

(assert (=> b!7942094 (= lt!2696894 lt!2696890)))

(assert (=> b!7942094 (= lt!2696890 (lemmaAddHeadSuffixToPrefixStillPrefix!1273 Nil!74515 input!6711))))

(assert (=> b!7942094 (= lt!2696903 (++!18302 Nil!74515 (Cons!74515 (head!16190 lt!2696753) Nil!74515)))))

(declare-fun lt!2696898 () Unit!169652)

(assert (=> b!7942094 (= lt!2696898 e!4686098)))

(declare-fun c!1459126 () Bool)

(assert (=> b!7942094 (= c!1459126 (= (size!43346 Nil!74515) (size!43346 input!6711)))))

(declare-fun lt!2696904 () Unit!169652)

(declare-fun lt!2696885 () Unit!169652)

(assert (=> b!7942094 (= lt!2696904 lt!2696885)))

(assert (=> b!7942094 (<= (size!43346 Nil!74515) (size!43346 input!6711))))

(assert (=> b!7942094 (= lt!2696885 (lemmaIsPrefixThenSmallerEqSize!1053 Nil!74515 input!6711))))

(declare-fun e!4686094 () tuple2!70502)

(assert (=> b!7942094 (= e!4686096 e!4686094)))

(declare-fun bm!736017 () Bool)

(declare-fun call!736021 () C!43158)

(assert (=> bm!736017 (= call!736021 (head!16190 lt!2696753))))

(declare-fun b!7942095 () Bool)

(declare-fun lt!2696891 () tuple2!70502)

(assert (=> b!7942095 (= e!4686097 lt!2696891)))

(declare-fun b!7942096 () Bool)

(assert (=> b!7942096 (= e!4686099 (tuple2!70503 Nil!74515 Nil!74515))))

(declare-fun b!7942097 () Bool)

(assert (=> b!7942097 (= e!4686095 e!4686096)))

(declare-fun c!1459130 () Bool)

(assert (=> b!7942097 (= c!1459130 (= lt!2696751 lt!2696748))))

(declare-fun b!7942098 () Bool)

(assert (=> b!7942098 (= e!4686094 call!736022)))

(declare-fun b!7942099 () Bool)

(assert (=> b!7942099 (= e!4686094 e!4686097)))

(assert (=> b!7942099 (= lt!2696891 call!736022)))

(declare-fun c!1459129 () Bool)

(assert (=> b!7942099 (= c!1459129 (isEmpty!42826 (_1!38554 lt!2696891)))))

(declare-fun bm!736018 () Bool)

(assert (=> bm!736018 (= call!736020 (isPrefix!6510 input!6711 input!6711))))

(declare-fun bm!736019 () Bool)

(assert (=> bm!736019 (= call!736024 (derivativeStep!6468 r!15654 call!736021))))

(declare-fun b!7942100 () Bool)

(assert (=> b!7942100 (= e!4686099 (tuple2!70503 Nil!74515 input!6711))))

(assert (= (and d!2375158 c!1459125) b!7942093))

(assert (= (and d!2375158 (not c!1459125)) b!7942097))

(assert (= (and b!7942097 c!1459130) b!7942092))

(assert (= (and b!7942097 (not c!1459130)) b!7942094))

(assert (= (and b!7942092 c!1459128) b!7942096))

(assert (= (and b!7942092 (not c!1459128)) b!7942100))

(assert (= (and b!7942094 c!1459126) b!7942089))

(assert (= (and b!7942094 (not c!1459126)) b!7942088))

(assert (= (and b!7942094 c!1459127) b!7942099))

(assert (= (and b!7942094 (not c!1459127)) b!7942098))

(assert (= (and b!7942099 c!1459129) b!7942087))

(assert (= (and b!7942099 (not c!1459129)) b!7942095))

(assert (= (or b!7942099 b!7942098) bm!736012))

(assert (= (or b!7942099 b!7942098) bm!736017))

(assert (= (or b!7942099 b!7942098) bm!736019))

(assert (= (or b!7942099 b!7942098) bm!736016))

(assert (= (or b!7942092 b!7942089) bm!736018))

(assert (= (or b!7942092 b!7942094) bm!736013))

(assert (= (or b!7942092 b!7942089) bm!736015))

(assert (= (or b!7942092 b!7942089) bm!736014))

(assert (= (and d!2375158 res!3150562) b!7942090))

(assert (= (and b!7942090 (not res!3150561)) b!7942091))

(declare-fun m!8330598 () Bool)

(assert (=> b!7942091 m!8330598))

(assert (=> b!7942091 m!8330444))

(declare-fun m!8330600 () Bool)

(assert (=> b!7942099 m!8330600))

(declare-fun m!8330602 () Bool)

(assert (=> d!2375158 m!8330602))

(declare-fun m!8330604 () Bool)

(assert (=> d!2375158 m!8330604))

(declare-fun m!8330606 () Bool)

(assert (=> d!2375158 m!8330606))

(assert (=> d!2375158 m!8330434))

(assert (=> d!2375158 m!8330558))

(declare-fun m!8330608 () Bool)

(assert (=> d!2375158 m!8330608))

(declare-fun m!8330610 () Bool)

(assert (=> d!2375158 m!8330610))

(assert (=> d!2375158 m!8330440))

(assert (=> d!2375158 m!8330604))

(assert (=> bm!736018 m!8330564))

(declare-fun m!8330612 () Bool)

(assert (=> b!7942090 m!8330612))

(assert (=> bm!736013 m!8330492))

(assert (=> bm!736014 m!8330568))

(declare-fun m!8330614 () Bool)

(assert (=> bm!736019 m!8330614))

(declare-fun m!8330616 () Bool)

(assert (=> b!7942094 m!8330616))

(assert (=> b!7942094 m!8330440))

(assert (=> b!7942094 m!8330572))

(declare-fun m!8330618 () Bool)

(assert (=> b!7942094 m!8330618))

(declare-fun m!8330620 () Bool)

(assert (=> b!7942094 m!8330620))

(assert (=> b!7942094 m!8330578))

(declare-fun m!8330622 () Bool)

(assert (=> b!7942094 m!8330622))

(assert (=> b!7942094 m!8330448))

(assert (=> b!7942094 m!8330440))

(assert (=> b!7942094 m!8330444))

(declare-fun m!8330624 () Bool)

(assert (=> b!7942094 m!8330624))

(assert (=> b!7942094 m!8330578))

(assert (=> b!7942094 m!8330584))

(assert (=> b!7942094 m!8330618))

(assert (=> b!7942094 m!8330586))

(assert (=> b!7942094 m!8330588))

(declare-fun m!8330626 () Bool)

(assert (=> b!7942094 m!8330626))

(assert (=> bm!736017 m!8330622))

(assert (=> bm!736012 m!8330616))

(assert (=> bm!736015 m!8330592))

(declare-fun m!8330628 () Bool)

(assert (=> bm!736016 m!8330628))

(assert (=> b!7941885 d!2375158))

(declare-fun b!7942119 () Bool)

(declare-fun res!3150575 () Bool)

(declare-fun e!4686117 () Bool)

(assert (=> b!7942119 (=> res!3150575 e!4686117)))

(assert (=> b!7942119 (= res!3150575 (not (is-Concat!30409 r!15654)))))

(declare-fun e!4686118 () Bool)

(assert (=> b!7942119 (= e!4686118 e!4686117)))

(declare-fun c!1459136 () Bool)

(declare-fun c!1459135 () Bool)

(declare-fun bm!736026 () Bool)

(declare-fun call!736031 () Bool)

(assert (=> bm!736026 (= call!736031 (validRegex!11714 (ite c!1459135 (reg!21739 r!15654) (ite c!1459136 (regTwo!43333 r!15654) (regOne!43332 r!15654)))))))

(declare-fun d!2375160 () Bool)

(declare-fun res!3150573 () Bool)

(declare-fun e!4686114 () Bool)

(assert (=> d!2375160 (=> res!3150573 e!4686114)))

(assert (=> d!2375160 (= res!3150573 (is-ElementMatch!21410 r!15654))))

(assert (=> d!2375160 (= (validRegex!11714 r!15654) e!4686114)))

(declare-fun bm!736027 () Bool)

(declare-fun call!736033 () Bool)

(assert (=> bm!736027 (= call!736033 call!736031)))

(declare-fun b!7942120 () Bool)

(declare-fun e!4686115 () Bool)

(assert (=> b!7942120 (= e!4686114 e!4686115)))

(assert (=> b!7942120 (= c!1459135 (is-Star!21410 r!15654))))

(declare-fun b!7942121 () Bool)

(assert (=> b!7942121 (= e!4686115 e!4686118)))

(assert (=> b!7942121 (= c!1459136 (is-Union!21410 r!15654))))

(declare-fun bm!736028 () Bool)

(declare-fun call!736032 () Bool)

(assert (=> bm!736028 (= call!736032 (validRegex!11714 (ite c!1459136 (regOne!43333 r!15654) (regTwo!43332 r!15654))))))

(declare-fun b!7942122 () Bool)

(declare-fun e!4686120 () Bool)

(assert (=> b!7942122 (= e!4686120 call!736031)))

(declare-fun b!7942123 () Bool)

(declare-fun e!4686116 () Bool)

(assert (=> b!7942123 (= e!4686116 call!736033)))

(declare-fun b!7942124 () Bool)

(declare-fun res!3150576 () Bool)

(assert (=> b!7942124 (=> (not res!3150576) (not e!4686116))))

(assert (=> b!7942124 (= res!3150576 call!736032)))

(assert (=> b!7942124 (= e!4686118 e!4686116)))

(declare-fun b!7942125 () Bool)

(assert (=> b!7942125 (= e!4686115 e!4686120)))

(declare-fun res!3150574 () Bool)

(assert (=> b!7942125 (= res!3150574 (not (nullable!9531 (reg!21739 r!15654))))))

(assert (=> b!7942125 (=> (not res!3150574) (not e!4686120))))

(declare-fun b!7942126 () Bool)

(declare-fun e!4686119 () Bool)

(assert (=> b!7942126 (= e!4686119 call!736032)))

(declare-fun b!7942127 () Bool)

(assert (=> b!7942127 (= e!4686117 e!4686119)))

(declare-fun res!3150577 () Bool)

(assert (=> b!7942127 (=> (not res!3150577) (not e!4686119))))

(assert (=> b!7942127 (= res!3150577 call!736033)))

(assert (= (and d!2375160 (not res!3150573)) b!7942120))

(assert (= (and b!7942120 c!1459135) b!7942125))

(assert (= (and b!7942120 (not c!1459135)) b!7942121))

(assert (= (and b!7942125 res!3150574) b!7942122))

(assert (= (and b!7942121 c!1459136) b!7942124))

(assert (= (and b!7942121 (not c!1459136)) b!7942119))

(assert (= (and b!7942124 res!3150576) b!7942123))

(assert (= (and b!7942119 (not res!3150575)) b!7942127))

(assert (= (and b!7942127 res!3150577) b!7942126))

(assert (= (or b!7942124 b!7942126) bm!736028))

(assert (= (or b!7942123 b!7942127) bm!736027))

(assert (= (or b!7942122 bm!736027) bm!736026))

(declare-fun m!8330630 () Bool)

(assert (=> bm!736026 m!8330630))

(declare-fun m!8330632 () Bool)

(assert (=> bm!736028 m!8330632))

(declare-fun m!8330634 () Bool)

(assert (=> b!7942125 m!8330634))

(assert (=> start!749594 d!2375160))

(declare-fun b!7942137 () Bool)

(declare-fun res!3150587 () Bool)

(declare-fun e!4686128 () Bool)

(assert (=> b!7942137 (=> (not res!3150587) (not e!4686128))))

(assert (=> b!7942137 (= res!3150587 (= (head!16190 Nil!74515) (head!16190 input!6711)))))

(declare-fun b!7942138 () Bool)

(assert (=> b!7942138 (= e!4686128 (isPrefix!6510 (tail!15733 Nil!74515) (tail!15733 input!6711)))))

(declare-fun b!7942136 () Bool)

(declare-fun e!4686127 () Bool)

(assert (=> b!7942136 (= e!4686127 e!4686128)))

(declare-fun res!3150586 () Bool)

(assert (=> b!7942136 (=> (not res!3150586) (not e!4686128))))

(assert (=> b!7942136 (= res!3150586 (not (is-Nil!74515 input!6711)))))

(declare-fun d!2375162 () Bool)

(declare-fun e!4686129 () Bool)

(assert (=> d!2375162 e!4686129))

(declare-fun res!3150589 () Bool)

(assert (=> d!2375162 (=> res!3150589 e!4686129)))

(declare-fun lt!2696914 () Bool)

(assert (=> d!2375162 (= res!3150589 (not lt!2696914))))

(assert (=> d!2375162 (= lt!2696914 e!4686127)))

(declare-fun res!3150588 () Bool)

(assert (=> d!2375162 (=> res!3150588 e!4686127)))

(assert (=> d!2375162 (= res!3150588 (is-Nil!74515 Nil!74515))))

(assert (=> d!2375162 (= (isPrefix!6510 Nil!74515 input!6711) lt!2696914)))

(declare-fun b!7942139 () Bool)

(assert (=> b!7942139 (= e!4686129 (>= (size!43346 input!6711) (size!43346 Nil!74515)))))

(assert (= (and d!2375162 (not res!3150588)) b!7942136))

(assert (= (and b!7942136 res!3150586) b!7942137))

(assert (= (and b!7942137 res!3150587) b!7942138))

(assert (= (and d!2375162 (not res!3150589)) b!7942139))

(declare-fun m!8330636 () Bool)

(assert (=> b!7942137 m!8330636))

(assert (=> b!7942137 m!8330580))

(declare-fun m!8330638 () Bool)

(assert (=> b!7942138 m!8330638))

(assert (=> b!7942138 m!8330514))

(assert (=> b!7942138 m!8330638))

(assert (=> b!7942138 m!8330514))

(declare-fun m!8330640 () Bool)

(assert (=> b!7942138 m!8330640))

(assert (=> b!7942139 m!8330448))

(assert (=> b!7942139 m!8330444))

(assert (=> b!7941890 d!2375162))

(declare-fun b!7942140 () Bool)

(declare-fun res!3150590 () Bool)

(declare-fun e!4686136 () Bool)

(assert (=> b!7942140 (=> res!3150590 e!4686136)))

(declare-fun e!4686130 () Bool)

(assert (=> b!7942140 (= res!3150590 e!4686130)))

(declare-fun res!3150592 () Bool)

(assert (=> b!7942140 (=> (not res!3150592) (not e!4686130))))

(declare-fun lt!2696915 () Bool)

(assert (=> b!7942140 (= res!3150592 lt!2696915)))

(declare-fun b!7942141 () Bool)

(declare-fun e!4686133 () Bool)

(declare-fun e!4686132 () Bool)

(assert (=> b!7942141 (= e!4686133 e!4686132)))

(declare-fun res!3150597 () Bool)

(assert (=> b!7942141 (=> res!3150597 e!4686132)))

(declare-fun call!736034 () Bool)

(assert (=> b!7942141 (= res!3150597 call!736034)))

(declare-fun b!7942142 () Bool)

(assert (=> b!7942142 (= e!4686136 e!4686133)))

(declare-fun res!3150596 () Bool)

(assert (=> b!7942142 (=> (not res!3150596) (not e!4686133))))

(assert (=> b!7942142 (= res!3150596 (not lt!2696915))))

(declare-fun b!7942143 () Bool)

(declare-fun res!3150593 () Bool)

(assert (=> b!7942143 (=> res!3150593 e!4686136)))

(assert (=> b!7942143 (= res!3150593 (not (is-ElementMatch!21410 r!15654)))))

(declare-fun e!4686131 () Bool)

(assert (=> b!7942143 (= e!4686131 e!4686136)))

(declare-fun b!7942144 () Bool)

(assert (=> b!7942144 (= e!4686132 (not (= (head!16190 (_1!38554 lt!2696752)) (c!1459071 r!15654))))))

(declare-fun b!7942145 () Bool)

(declare-fun e!4686135 () Bool)

(assert (=> b!7942145 (= e!4686135 e!4686131)))

(declare-fun c!1459138 () Bool)

(assert (=> b!7942145 (= c!1459138 (is-EmptyLang!21410 r!15654))))

(declare-fun d!2375164 () Bool)

(assert (=> d!2375164 e!4686135))

(declare-fun c!1459137 () Bool)

(assert (=> d!2375164 (= c!1459137 (is-EmptyExpr!21410 r!15654))))

(declare-fun e!4686134 () Bool)

(assert (=> d!2375164 (= lt!2696915 e!4686134)))

(declare-fun c!1459139 () Bool)

(assert (=> d!2375164 (= c!1459139 (isEmpty!42826 (_1!38554 lt!2696752)))))

(assert (=> d!2375164 (validRegex!11714 r!15654)))

(assert (=> d!2375164 (= (matchR!10713 r!15654 (_1!38554 lt!2696752)) lt!2696915)))

(declare-fun b!7942146 () Bool)

(assert (=> b!7942146 (= e!4686134 (nullable!9531 r!15654))))

(declare-fun b!7942147 () Bool)

(declare-fun res!3150595 () Bool)

(assert (=> b!7942147 (=> res!3150595 e!4686132)))

(assert (=> b!7942147 (= res!3150595 (not (isEmpty!42826 (tail!15733 (_1!38554 lt!2696752)))))))

(declare-fun b!7942148 () Bool)

(declare-fun res!3150591 () Bool)

(assert (=> b!7942148 (=> (not res!3150591) (not e!4686130))))

(assert (=> b!7942148 (= res!3150591 (not call!736034))))

(declare-fun b!7942149 () Bool)

(assert (=> b!7942149 (= e!4686135 (= lt!2696915 call!736034))))

(declare-fun b!7942150 () Bool)

(declare-fun res!3150594 () Bool)

(assert (=> b!7942150 (=> (not res!3150594) (not e!4686130))))

(assert (=> b!7942150 (= res!3150594 (isEmpty!42826 (tail!15733 (_1!38554 lt!2696752))))))

(declare-fun b!7942151 () Bool)

(assert (=> b!7942151 (= e!4686134 (matchR!10713 (derivativeStep!6468 r!15654 (head!16190 (_1!38554 lt!2696752))) (tail!15733 (_1!38554 lt!2696752))))))

(declare-fun bm!736029 () Bool)

(assert (=> bm!736029 (= call!736034 (isEmpty!42826 (_1!38554 lt!2696752)))))

(declare-fun b!7942152 () Bool)

(assert (=> b!7942152 (= e!4686131 (not lt!2696915))))

(declare-fun b!7942153 () Bool)

(assert (=> b!7942153 (= e!4686130 (= (head!16190 (_1!38554 lt!2696752)) (c!1459071 r!15654)))))

(assert (= (and d!2375164 c!1459139) b!7942146))

(assert (= (and d!2375164 (not c!1459139)) b!7942151))

(assert (= (and d!2375164 c!1459137) b!7942149))

(assert (= (and d!2375164 (not c!1459137)) b!7942145))

(assert (= (and b!7942145 c!1459138) b!7942152))

(assert (= (and b!7942145 (not c!1459138)) b!7942143))

(assert (= (and b!7942143 (not res!3150593)) b!7942140))

(assert (= (and b!7942140 res!3150592) b!7942148))

(assert (= (and b!7942148 res!3150591) b!7942150))

(assert (= (and b!7942150 res!3150594) b!7942153))

(assert (= (and b!7942140 (not res!3150590)) b!7942142))

(assert (= (and b!7942142 res!3150596) b!7942141))

(assert (= (and b!7942141 (not res!3150597)) b!7942147))

(assert (= (and b!7942147 (not res!3150595)) b!7942144))

(assert (= (or b!7942149 b!7942141 b!7942148) bm!736029))

(assert (=> bm!736029 m!8330450))

(declare-fun m!8330642 () Bool)

(assert (=> b!7942153 m!8330642))

(assert (=> d!2375164 m!8330450))

(assert (=> d!2375164 m!8330434))

(declare-fun m!8330644 () Bool)

(assert (=> b!7942147 m!8330644))

(assert (=> b!7942147 m!8330644))

(declare-fun m!8330646 () Bool)

(assert (=> b!7942147 m!8330646))

(assert (=> b!7942150 m!8330644))

(assert (=> b!7942150 m!8330644))

(assert (=> b!7942150 m!8330646))

(assert (=> b!7942144 m!8330642))

(assert (=> b!7942146 m!8330492))

(assert (=> b!7942151 m!8330642))

(assert (=> b!7942151 m!8330642))

(declare-fun m!8330648 () Bool)

(assert (=> b!7942151 m!8330648))

(assert (=> b!7942151 m!8330644))

(assert (=> b!7942151 m!8330648))

(assert (=> b!7942151 m!8330644))

(declare-fun m!8330650 () Bool)

(assert (=> b!7942151 m!8330650))

(assert (=> b!7941887 d!2375164))

(declare-fun b!7942158 () Bool)

(declare-fun e!4686139 () Bool)

(declare-fun tp!2361525 () Bool)

(assert (=> b!7942158 (= e!4686139 (and tp_is_empty!53363 tp!2361525))))

(assert (=> b!7941889 (= tp!2361500 e!4686139)))

(assert (= (and b!7941889 (is-Cons!74515 (t!390382 input!6711))) b!7942158))

(declare-fun b!7942172 () Bool)

(declare-fun e!4686142 () Bool)

(declare-fun tp!2361537 () Bool)

(declare-fun tp!2361536 () Bool)

(assert (=> b!7942172 (= e!4686142 (and tp!2361537 tp!2361536))))

(assert (=> b!7941883 (= tp!2361504 e!4686142)))

(declare-fun b!7942171 () Bool)

(declare-fun tp!2361539 () Bool)

(assert (=> b!7942171 (= e!4686142 tp!2361539)))

(declare-fun b!7942169 () Bool)

(assert (=> b!7942169 (= e!4686142 tp_is_empty!53363)))

(declare-fun b!7942170 () Bool)

(declare-fun tp!2361538 () Bool)

(declare-fun tp!2361540 () Bool)

(assert (=> b!7942170 (= e!4686142 (and tp!2361538 tp!2361540))))

(assert (= (and b!7941883 (is-ElementMatch!21410 (regOne!43333 r!15654))) b!7942169))

(assert (= (and b!7941883 (is-Concat!30409 (regOne!43333 r!15654))) b!7942170))

(assert (= (and b!7941883 (is-Star!21410 (regOne!43333 r!15654))) b!7942171))

(assert (= (and b!7941883 (is-Union!21410 (regOne!43333 r!15654))) b!7942172))

(declare-fun b!7942176 () Bool)

(declare-fun e!4686143 () Bool)

(declare-fun tp!2361542 () Bool)

(declare-fun tp!2361541 () Bool)

(assert (=> b!7942176 (= e!4686143 (and tp!2361542 tp!2361541))))

(assert (=> b!7941883 (= tp!2361499 e!4686143)))

(declare-fun b!7942175 () Bool)

(declare-fun tp!2361544 () Bool)

(assert (=> b!7942175 (= e!4686143 tp!2361544)))

(declare-fun b!7942173 () Bool)

(assert (=> b!7942173 (= e!4686143 tp_is_empty!53363)))

(declare-fun b!7942174 () Bool)

(declare-fun tp!2361543 () Bool)

(declare-fun tp!2361545 () Bool)

(assert (=> b!7942174 (= e!4686143 (and tp!2361543 tp!2361545))))

(assert (= (and b!7941883 (is-ElementMatch!21410 (regTwo!43333 r!15654))) b!7942173))

(assert (= (and b!7941883 (is-Concat!30409 (regTwo!43333 r!15654))) b!7942174))

(assert (= (and b!7941883 (is-Star!21410 (regTwo!43333 r!15654))) b!7942175))

(assert (= (and b!7941883 (is-Union!21410 (regTwo!43333 r!15654))) b!7942176))

(declare-fun b!7942180 () Bool)

(declare-fun e!4686144 () Bool)

(declare-fun tp!2361547 () Bool)

(declare-fun tp!2361546 () Bool)

(assert (=> b!7942180 (= e!4686144 (and tp!2361547 tp!2361546))))

(assert (=> b!7941888 (= tp!2361502 e!4686144)))

(declare-fun b!7942179 () Bool)

(declare-fun tp!2361549 () Bool)

(assert (=> b!7942179 (= e!4686144 tp!2361549)))

(declare-fun b!7942177 () Bool)

(assert (=> b!7942177 (= e!4686144 tp_is_empty!53363)))

(declare-fun b!7942178 () Bool)

(declare-fun tp!2361548 () Bool)

(declare-fun tp!2361550 () Bool)

(assert (=> b!7942178 (= e!4686144 (and tp!2361548 tp!2361550))))

(assert (= (and b!7941888 (is-ElementMatch!21410 (reg!21739 r!15654))) b!7942177))

(assert (= (and b!7941888 (is-Concat!30409 (reg!21739 r!15654))) b!7942178))

(assert (= (and b!7941888 (is-Star!21410 (reg!21739 r!15654))) b!7942179))

(assert (= (and b!7941888 (is-Union!21410 (reg!21739 r!15654))) b!7942180))

(declare-fun b!7942184 () Bool)

(declare-fun e!4686145 () Bool)

(declare-fun tp!2361552 () Bool)

(declare-fun tp!2361551 () Bool)

(assert (=> b!7942184 (= e!4686145 (and tp!2361552 tp!2361551))))

(assert (=> b!7941892 (= tp!2361501 e!4686145)))

(declare-fun b!7942183 () Bool)

(declare-fun tp!2361554 () Bool)

(assert (=> b!7942183 (= e!4686145 tp!2361554)))

(declare-fun b!7942181 () Bool)

(assert (=> b!7942181 (= e!4686145 tp_is_empty!53363)))

(declare-fun b!7942182 () Bool)

(declare-fun tp!2361553 () Bool)

(declare-fun tp!2361555 () Bool)

(assert (=> b!7942182 (= e!4686145 (and tp!2361553 tp!2361555))))

(assert (= (and b!7941892 (is-ElementMatch!21410 (regOne!43332 r!15654))) b!7942181))

(assert (= (and b!7941892 (is-Concat!30409 (regOne!43332 r!15654))) b!7942182))

(assert (= (and b!7941892 (is-Star!21410 (regOne!43332 r!15654))) b!7942183))

(assert (= (and b!7941892 (is-Union!21410 (regOne!43332 r!15654))) b!7942184))

(declare-fun b!7942188 () Bool)

(declare-fun e!4686146 () Bool)

(declare-fun tp!2361557 () Bool)

(declare-fun tp!2361556 () Bool)

(assert (=> b!7942188 (= e!4686146 (and tp!2361557 tp!2361556))))

(assert (=> b!7941892 (= tp!2361503 e!4686146)))

(declare-fun b!7942187 () Bool)

(declare-fun tp!2361559 () Bool)

(assert (=> b!7942187 (= e!4686146 tp!2361559)))

(declare-fun b!7942185 () Bool)

(assert (=> b!7942185 (= e!4686146 tp_is_empty!53363)))

(declare-fun b!7942186 () Bool)

(declare-fun tp!2361558 () Bool)

(declare-fun tp!2361560 () Bool)

(assert (=> b!7942186 (= e!4686146 (and tp!2361558 tp!2361560))))

(assert (= (and b!7941892 (is-ElementMatch!21410 (regTwo!43332 r!15654))) b!7942185))

(assert (= (and b!7941892 (is-Concat!30409 (regTwo!43332 r!15654))) b!7942186))

(assert (= (and b!7941892 (is-Star!21410 (regTwo!43332 r!15654))) b!7942187))

(assert (= (and b!7941892 (is-Union!21410 (regTwo!43332 r!15654))) b!7942188))

(push 1)

(assert (not b!7942153))

(assert (not b!7942006))

(assert (not b!7942086))

(assert (not bm!736006))

(assert (not bm!736018))

(assert (not d!2375138))

(assert (not b!7941969))

(assert (not d!2375136))

(assert (not b!7942183))

(assert (not b!7942187))

(assert (not b!7942027))

(assert (not b!7941958))

(assert (not b!7942147))

(assert (not b!7942139))

(assert (not b!7942078))

(assert (not b!7942146))

(assert (not b!7942074))

(assert (not b!7942182))

(assert (not bm!736013))

(assert (not b!7942170))

(assert (not b!7942075))

(assert (not bm!736016))

(assert (not bm!736005))

(assert (not b!7942150))

(assert (not b!7942091))

(assert (not bm!735984))

(assert (not b!7942138))

(assert (not d!2375158))

(assert (not bm!736007))

(assert (not b!7942001))

(assert (not b!7942174))

(assert (not b!7942094))

(assert (not bm!736026))

(assert (not bm!736029))

(assert (not d!2375164))

(assert (not b!7942158))

(assert (not b!7942176))

(assert (not b!7941957))

(assert (not b!7942175))

(assert (not b!7942125))

(assert (not b!7942172))

(assert (not b!7942151))

(assert (not b!7941964))

(assert (not d!2375130))

(assert (not b!7942144))

(assert (not b!7942179))

(assert (not b!7941955))

(assert (not b!7942083))

(assert (not b!7942178))

(assert (not bm!736011))

(assert (not b!7942099))

(assert (not b!7942180))

(assert (not b!7942188))

(assert (not bm!736012))

(assert (not bm!736028))

(assert (not bm!736019))

(assert (not bm!736015))

(assert tp_is_empty!53363)

(assert (not b!7942090))

(assert (not b!7941961))

(assert (not bm!736008))

(assert (not bm!736009))

(assert (not b!7941962))

(assert (not bm!736014))

(assert (not bm!736004))

(assert (not b!7942186))

(assert (not bm!736010))

(assert (not bm!736017))

(assert (not b!7942171))

(assert (not b!7942184))

(assert (not b!7942137))

(assert (not d!2375146))

(assert (not d!2375134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

