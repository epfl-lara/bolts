; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45964 () Bool)

(assert start!45964)

(declare-fun b!500084 () Bool)

(declare-fun e!300698 () Bool)

(declare-fun tp!150701 () Bool)

(declare-fun tp!150698 () Bool)

(assert (=> b!500084 (= e!300698 (and tp!150701 tp!150698))))

(declare-fun b!500085 () Bool)

(declare-fun tp!150697 () Bool)

(assert (=> b!500085 (= e!300698 tp!150697)))

(declare-fun b!500086 () Bool)

(declare-fun e!300699 () Bool)

(declare-datatypes ((C!3284 0))(
  ( (C!3285 (val!1628 Int)) )
))
(declare-datatypes ((Regex!1181 0))(
  ( (ElementMatch!1181 (c!98184 C!3284)) (Concat!2081 (regOne!2874 Regex!1181) (regTwo!2874 Regex!1181)) (EmptyExpr!1181) (Star!1181 (reg!1510 Regex!1181)) (EmptyLang!1181) (Union!1181 (regOne!2875 Regex!1181) (regTwo!2875 Regex!1181)) )
))
(declare-fun r!20230 () Regex!1181)

(declare-fun lostCause!175 (Regex!1181) Bool)

(assert (=> b!500086 (= e!300699 (lostCause!175 (regTwo!2874 r!20230)))))

(declare-fun b!500087 () Bool)

(declare-fun e!300696 () Bool)

(declare-fun validRegex!409 (Regex!1181) Bool)

(assert (=> b!500087 (= e!300696 (not (validRegex!409 (regTwo!2874 r!20230))))))

(declare-fun b!500088 () Bool)

(declare-fun res!214950 () Bool)

(declare-fun e!300697 () Bool)

(assert (=> b!500088 (=> (not res!214950) (not e!300697))))

(get-info :version)

(assert (=> b!500088 (= res!214950 (and (not ((_ is EmptyLang!1181) r!20230)) (not ((_ is EmptyExpr!1181) r!20230)) (not ((_ is ElementMatch!1181) r!20230)) (not ((_ is Union!1181) r!20230)) (not ((_ is Star!1181) r!20230))))))

(declare-fun b!500089 () Bool)

(declare-fun tp_is_empty!2359 () Bool)

(assert (=> b!500089 (= e!300698 tp_is_empty!2359)))

(declare-fun b!500090 () Bool)

(declare-fun res!214954 () Bool)

(assert (=> b!500090 (=> (not res!214954) (not e!300696))))

(declare-fun nullable!316 (Regex!1181) Bool)

(assert (=> b!500090 (= res!214954 (not (nullable!316 (regOne!2874 r!20230))))))

(declare-fun b!500091 () Bool)

(declare-fun res!214953 () Bool)

(assert (=> b!500091 (=> (not res!214953) (not e!300696))))

(declare-fun lt!211452 () Bool)

(assert (=> b!500091 (= res!214953 (not lt!211452))))

(declare-fun b!500093 () Bool)

(declare-fun res!214949 () Bool)

(assert (=> b!500093 (=> (not res!214949) (not e!300697))))

(assert (=> b!500093 (= res!214949 (lostCause!175 r!20230))))

(declare-fun b!500094 () Bool)

(declare-fun tp!150700 () Bool)

(declare-fun tp!150699 () Bool)

(assert (=> b!500094 (= e!300698 (and tp!150700 tp!150699))))

(declare-fun res!214951 () Bool)

(assert (=> start!45964 (=> (not res!214951) (not e!300697))))

(assert (=> start!45964 (= res!214951 (validRegex!409 r!20230))))

(assert (=> start!45964 e!300697))

(assert (=> start!45964 e!300698))

(declare-fun b!500092 () Bool)

(assert (=> b!500092 (= e!300697 e!300696)))

(declare-fun res!214955 () Bool)

(assert (=> b!500092 (=> (not res!214955) (not e!300696))))

(assert (=> b!500092 (= res!214955 e!300699)))

(declare-fun res!214952 () Bool)

(assert (=> b!500092 (=> res!214952 e!300699)))

(assert (=> b!500092 (= res!214952 lt!211452)))

(assert (=> b!500092 (= lt!211452 (lostCause!175 (regOne!2874 r!20230)))))

(assert (= (and start!45964 res!214951) b!500093))

(assert (= (and b!500093 res!214949) b!500088))

(assert (= (and b!500088 res!214950) b!500092))

(assert (= (and b!500092 (not res!214952)) b!500086))

(assert (= (and b!500092 res!214955) b!500090))

(assert (= (and b!500090 res!214954) b!500091))

(assert (= (and b!500091 res!214953) b!500087))

(assert (= (and start!45964 ((_ is ElementMatch!1181) r!20230)) b!500089))

(assert (= (and start!45964 ((_ is Concat!2081) r!20230)) b!500094))

(assert (= (and start!45964 ((_ is Star!1181) r!20230)) b!500085))

(assert (= (and start!45964 ((_ is Union!1181) r!20230)) b!500084))

(declare-fun m!754423 () Bool)

(assert (=> b!500090 m!754423))

(declare-fun m!754425 () Bool)

(assert (=> b!500093 m!754425))

(declare-fun m!754427 () Bool)

(assert (=> start!45964 m!754427))

(declare-fun m!754429 () Bool)

(assert (=> b!500086 m!754429))

(declare-fun m!754431 () Bool)

(assert (=> b!500087 m!754431))

(declare-fun m!754433 () Bool)

(assert (=> b!500092 m!754433))

(check-sat (not b!500093) (not start!45964) tp_is_empty!2359 (not b!500084) (not b!500086) (not b!500085) (not b!500092) (not b!500087) (not b!500090) (not b!500094))
(check-sat)
(get-model)

(declare-fun d!182459 () Bool)

(declare-fun lostCauseFct!82 (Regex!1181) Bool)

(assert (=> d!182459 (= (lostCause!175 (regOne!2874 r!20230)) (lostCauseFct!82 (regOne!2874 r!20230)))))

(declare-fun bs!59134 () Bool)

(assert (= bs!59134 d!182459))

(declare-fun m!754435 () Bool)

(assert (=> bs!59134 m!754435))

(assert (=> b!500092 d!182459))

(declare-fun b!500131 () Bool)

(declare-fun e!300734 () Bool)

(declare-fun e!300732 () Bool)

(assert (=> b!500131 (= e!300734 e!300732)))

(declare-fun c!98194 () Bool)

(assert (=> b!500131 (= c!98194 ((_ is Star!1181) (regTwo!2874 r!20230)))))

(declare-fun b!500132 () Bool)

(declare-fun res!214976 () Bool)

(declare-fun e!300730 () Bool)

(assert (=> b!500132 (=> (not res!214976) (not e!300730))))

(declare-fun call!36126 () Bool)

(assert (=> b!500132 (= res!214976 call!36126)))

(declare-fun e!300731 () Bool)

(assert (=> b!500132 (= e!300731 e!300730)))

(declare-fun b!500133 () Bool)

(declare-fun e!300728 () Bool)

(assert (=> b!500133 (= e!300728 call!36126)))

(declare-fun b!500134 () Bool)

(declare-fun e!300729 () Bool)

(assert (=> b!500134 (= e!300729 e!300728)))

(declare-fun res!214980 () Bool)

(assert (=> b!500134 (=> (not res!214980) (not e!300728))))

(declare-fun call!36124 () Bool)

(assert (=> b!500134 (= res!214980 call!36124)))

(declare-fun d!182461 () Bool)

(declare-fun res!214977 () Bool)

(assert (=> d!182461 (=> res!214977 e!300734)))

(assert (=> d!182461 (= res!214977 ((_ is ElementMatch!1181) (regTwo!2874 r!20230)))))

(assert (=> d!182461 (= (validRegex!409 (regTwo!2874 r!20230)) e!300734)))

(declare-fun call!36125 () Bool)

(declare-fun bm!36119 () Bool)

(declare-fun c!98193 () Bool)

(assert (=> bm!36119 (= call!36125 (validRegex!409 (ite c!98194 (reg!1510 (regTwo!2874 r!20230)) (ite c!98193 (regOne!2875 (regTwo!2874 r!20230)) (regTwo!2874 (regTwo!2874 r!20230))))))))

(declare-fun bm!36120 () Bool)

(assert (=> bm!36120 (= call!36126 call!36125)))

(declare-fun bm!36121 () Bool)

(assert (=> bm!36121 (= call!36124 (validRegex!409 (ite c!98193 (regTwo!2875 (regTwo!2874 r!20230)) (regOne!2874 (regTwo!2874 r!20230)))))))

(declare-fun b!500135 () Bool)

(assert (=> b!500135 (= e!300730 call!36124)))

(declare-fun b!500136 () Bool)

(assert (=> b!500136 (= e!300732 e!300731)))

(assert (=> b!500136 (= c!98193 ((_ is Union!1181) (regTwo!2874 r!20230)))))

(declare-fun b!500137 () Bool)

(declare-fun e!300733 () Bool)

(assert (=> b!500137 (= e!300732 e!300733)))

(declare-fun res!214978 () Bool)

(assert (=> b!500137 (= res!214978 (not (nullable!316 (reg!1510 (regTwo!2874 r!20230)))))))

(assert (=> b!500137 (=> (not res!214978) (not e!300733))))

(declare-fun b!500138 () Bool)

(declare-fun res!214979 () Bool)

(assert (=> b!500138 (=> res!214979 e!300729)))

(assert (=> b!500138 (= res!214979 (not ((_ is Concat!2081) (regTwo!2874 r!20230))))))

(assert (=> b!500138 (= e!300731 e!300729)))

(declare-fun b!500139 () Bool)

(assert (=> b!500139 (= e!300733 call!36125)))

(assert (= (and d!182461 (not res!214977)) b!500131))

(assert (= (and b!500131 c!98194) b!500137))

(assert (= (and b!500131 (not c!98194)) b!500136))

(assert (= (and b!500137 res!214978) b!500139))

(assert (= (and b!500136 c!98193) b!500132))

(assert (= (and b!500136 (not c!98193)) b!500138))

(assert (= (and b!500132 res!214976) b!500135))

(assert (= (and b!500138 (not res!214979)) b!500134))

(assert (= (and b!500134 res!214980) b!500133))

(assert (= (or b!500135 b!500134) bm!36121))

(assert (= (or b!500132 b!500133) bm!36120))

(assert (= (or b!500139 bm!36120) bm!36119))

(declare-fun m!754439 () Bool)

(assert (=> bm!36119 m!754439))

(declare-fun m!754441 () Bool)

(assert (=> bm!36121 m!754441))

(declare-fun m!754443 () Bool)

(assert (=> b!500137 m!754443))

(assert (=> b!500087 d!182461))

(declare-fun d!182467 () Bool)

(assert (=> d!182467 (= (lostCause!175 (regTwo!2874 r!20230)) (lostCauseFct!82 (regTwo!2874 r!20230)))))

(declare-fun bs!59136 () Bool)

(assert (= bs!59136 d!182467))

(declare-fun m!754445 () Bool)

(assert (=> bs!59136 m!754445))

(assert (=> b!500086 d!182467))

(declare-fun d!182469 () Bool)

(declare-fun nullableFct!121 (Regex!1181) Bool)

(assert (=> d!182469 (= (nullable!316 (regOne!2874 r!20230)) (nullableFct!121 (regOne!2874 r!20230)))))

(declare-fun bs!59137 () Bool)

(assert (= bs!59137 d!182469))

(declare-fun m!754447 () Bool)

(assert (=> bs!59137 m!754447))

(assert (=> b!500090 d!182469))

(declare-fun b!500149 () Bool)

(declare-fun e!300748 () Bool)

(declare-fun e!300746 () Bool)

(assert (=> b!500149 (= e!300748 e!300746)))

(declare-fun c!98198 () Bool)

(assert (=> b!500149 (= c!98198 ((_ is Star!1181) r!20230))))

(declare-fun b!500150 () Bool)

(declare-fun res!214986 () Bool)

(declare-fun e!300744 () Bool)

(assert (=> b!500150 (=> (not res!214986) (not e!300744))))

(declare-fun call!36132 () Bool)

(assert (=> b!500150 (= res!214986 call!36132)))

(declare-fun e!300745 () Bool)

(assert (=> b!500150 (= e!300745 e!300744)))

(declare-fun b!500151 () Bool)

(declare-fun e!300742 () Bool)

(assert (=> b!500151 (= e!300742 call!36132)))

(declare-fun b!500152 () Bool)

(declare-fun e!300743 () Bool)

(assert (=> b!500152 (= e!300743 e!300742)))

(declare-fun res!214990 () Bool)

(assert (=> b!500152 (=> (not res!214990) (not e!300742))))

(declare-fun call!36130 () Bool)

(assert (=> b!500152 (= res!214990 call!36130)))

(declare-fun d!182471 () Bool)

(declare-fun res!214987 () Bool)

(assert (=> d!182471 (=> res!214987 e!300748)))

(assert (=> d!182471 (= res!214987 ((_ is ElementMatch!1181) r!20230))))

(assert (=> d!182471 (= (validRegex!409 r!20230) e!300748)))

(declare-fun bm!36125 () Bool)

(declare-fun call!36131 () Bool)

(declare-fun c!98197 () Bool)

(assert (=> bm!36125 (= call!36131 (validRegex!409 (ite c!98198 (reg!1510 r!20230) (ite c!98197 (regOne!2875 r!20230) (regTwo!2874 r!20230)))))))

(declare-fun bm!36126 () Bool)

(assert (=> bm!36126 (= call!36132 call!36131)))

(declare-fun bm!36127 () Bool)

(assert (=> bm!36127 (= call!36130 (validRegex!409 (ite c!98197 (regTwo!2875 r!20230) (regOne!2874 r!20230))))))

(declare-fun b!500153 () Bool)

(assert (=> b!500153 (= e!300744 call!36130)))

(declare-fun b!500154 () Bool)

(assert (=> b!500154 (= e!300746 e!300745)))

(assert (=> b!500154 (= c!98197 ((_ is Union!1181) r!20230))))

(declare-fun b!500155 () Bool)

(declare-fun e!300747 () Bool)

(assert (=> b!500155 (= e!300746 e!300747)))

(declare-fun res!214988 () Bool)

(assert (=> b!500155 (= res!214988 (not (nullable!316 (reg!1510 r!20230))))))

(assert (=> b!500155 (=> (not res!214988) (not e!300747))))

(declare-fun b!500156 () Bool)

(declare-fun res!214989 () Bool)

(assert (=> b!500156 (=> res!214989 e!300743)))

(assert (=> b!500156 (= res!214989 (not ((_ is Concat!2081) r!20230)))))

(assert (=> b!500156 (= e!300745 e!300743)))

(declare-fun b!500157 () Bool)

(assert (=> b!500157 (= e!300747 call!36131)))

(assert (= (and d!182471 (not res!214987)) b!500149))

(assert (= (and b!500149 c!98198) b!500155))

(assert (= (and b!500149 (not c!98198)) b!500154))

(assert (= (and b!500155 res!214988) b!500157))

(assert (= (and b!500154 c!98197) b!500150))

(assert (= (and b!500154 (not c!98197)) b!500156))

(assert (= (and b!500150 res!214986) b!500153))

(assert (= (and b!500156 (not res!214989)) b!500152))

(assert (= (and b!500152 res!214990) b!500151))

(assert (= (or b!500153 b!500152) bm!36127))

(assert (= (or b!500150 b!500151) bm!36126))

(assert (= (or b!500157 bm!36126) bm!36125))

(declare-fun m!754455 () Bool)

(assert (=> bm!36125 m!754455))

(declare-fun m!754457 () Bool)

(assert (=> bm!36127 m!754457))

(declare-fun m!754459 () Bool)

(assert (=> b!500155 m!754459))

(assert (=> start!45964 d!182471))

(declare-fun d!182475 () Bool)

(assert (=> d!182475 (= (lostCause!175 r!20230) (lostCauseFct!82 r!20230))))

(declare-fun bs!59138 () Bool)

(assert (= bs!59138 d!182475))

(declare-fun m!754461 () Bool)

(assert (=> bs!59138 m!754461))

(assert (=> b!500093 d!182475))

(declare-fun b!500178 () Bool)

(declare-fun e!300758 () Bool)

(declare-fun tp!150714 () Bool)

(declare-fun tp!150716 () Bool)

(assert (=> b!500178 (= e!300758 (and tp!150714 tp!150716))))

(assert (=> b!500085 (= tp!150697 e!300758)))

(declare-fun b!500179 () Bool)

(declare-fun tp!150715 () Bool)

(assert (=> b!500179 (= e!300758 tp!150715)))

(declare-fun b!500177 () Bool)

(assert (=> b!500177 (= e!300758 tp_is_empty!2359)))

(declare-fun b!500180 () Bool)

(declare-fun tp!150713 () Bool)

(declare-fun tp!150712 () Bool)

(assert (=> b!500180 (= e!300758 (and tp!150713 tp!150712))))

(assert (= (and b!500085 ((_ is ElementMatch!1181) (reg!1510 r!20230))) b!500177))

(assert (= (and b!500085 ((_ is Concat!2081) (reg!1510 r!20230))) b!500178))

(assert (= (and b!500085 ((_ is Star!1181) (reg!1510 r!20230))) b!500179))

(assert (= (and b!500085 ((_ is Union!1181) (reg!1510 r!20230))) b!500180))

(declare-fun b!500182 () Bool)

(declare-fun e!300759 () Bool)

(declare-fun tp!150719 () Bool)

(declare-fun tp!150721 () Bool)

(assert (=> b!500182 (= e!300759 (and tp!150719 tp!150721))))

(assert (=> b!500084 (= tp!150701 e!300759)))

(declare-fun b!500183 () Bool)

(declare-fun tp!150720 () Bool)

(assert (=> b!500183 (= e!300759 tp!150720)))

(declare-fun b!500181 () Bool)

(assert (=> b!500181 (= e!300759 tp_is_empty!2359)))

(declare-fun b!500184 () Bool)

(declare-fun tp!150718 () Bool)

(declare-fun tp!150717 () Bool)

(assert (=> b!500184 (= e!300759 (and tp!150718 tp!150717))))

(assert (= (and b!500084 ((_ is ElementMatch!1181) (regOne!2875 r!20230))) b!500181))

(assert (= (and b!500084 ((_ is Concat!2081) (regOne!2875 r!20230))) b!500182))

(assert (= (and b!500084 ((_ is Star!1181) (regOne!2875 r!20230))) b!500183))

(assert (= (and b!500084 ((_ is Union!1181) (regOne!2875 r!20230))) b!500184))

(declare-fun b!500186 () Bool)

(declare-fun e!300760 () Bool)

(declare-fun tp!150724 () Bool)

(declare-fun tp!150726 () Bool)

(assert (=> b!500186 (= e!300760 (and tp!150724 tp!150726))))

(assert (=> b!500084 (= tp!150698 e!300760)))

(declare-fun b!500187 () Bool)

(declare-fun tp!150725 () Bool)

(assert (=> b!500187 (= e!300760 tp!150725)))

(declare-fun b!500185 () Bool)

(assert (=> b!500185 (= e!300760 tp_is_empty!2359)))

(declare-fun b!500188 () Bool)

(declare-fun tp!150723 () Bool)

(declare-fun tp!150722 () Bool)

(assert (=> b!500188 (= e!300760 (and tp!150723 tp!150722))))

(assert (= (and b!500084 ((_ is ElementMatch!1181) (regTwo!2875 r!20230))) b!500185))

(assert (= (and b!500084 ((_ is Concat!2081) (regTwo!2875 r!20230))) b!500186))

(assert (= (and b!500084 ((_ is Star!1181) (regTwo!2875 r!20230))) b!500187))

(assert (= (and b!500084 ((_ is Union!1181) (regTwo!2875 r!20230))) b!500188))

(declare-fun b!500190 () Bool)

(declare-fun e!300761 () Bool)

(declare-fun tp!150729 () Bool)

(declare-fun tp!150731 () Bool)

(assert (=> b!500190 (= e!300761 (and tp!150729 tp!150731))))

(assert (=> b!500094 (= tp!150700 e!300761)))

(declare-fun b!500191 () Bool)

(declare-fun tp!150730 () Bool)

(assert (=> b!500191 (= e!300761 tp!150730)))

(declare-fun b!500189 () Bool)

(assert (=> b!500189 (= e!300761 tp_is_empty!2359)))

(declare-fun b!500192 () Bool)

(declare-fun tp!150728 () Bool)

(declare-fun tp!150727 () Bool)

(assert (=> b!500192 (= e!300761 (and tp!150728 tp!150727))))

(assert (= (and b!500094 ((_ is ElementMatch!1181) (regOne!2874 r!20230))) b!500189))

(assert (= (and b!500094 ((_ is Concat!2081) (regOne!2874 r!20230))) b!500190))

(assert (= (and b!500094 ((_ is Star!1181) (regOne!2874 r!20230))) b!500191))

(assert (= (and b!500094 ((_ is Union!1181) (regOne!2874 r!20230))) b!500192))

(declare-fun b!500198 () Bool)

(declare-fun e!300764 () Bool)

(declare-fun tp!150734 () Bool)

(declare-fun tp!150736 () Bool)

(assert (=> b!500198 (= e!300764 (and tp!150734 tp!150736))))

(assert (=> b!500094 (= tp!150699 e!300764)))

(declare-fun b!500199 () Bool)

(declare-fun tp!150735 () Bool)

(assert (=> b!500199 (= e!300764 tp!150735)))

(declare-fun b!500197 () Bool)

(assert (=> b!500197 (= e!300764 tp_is_empty!2359)))

(declare-fun b!500200 () Bool)

(declare-fun tp!150733 () Bool)

(declare-fun tp!150732 () Bool)

(assert (=> b!500200 (= e!300764 (and tp!150733 tp!150732))))

(assert (= (and b!500094 ((_ is ElementMatch!1181) (regTwo!2874 r!20230))) b!500197))

(assert (= (and b!500094 ((_ is Concat!2081) (regTwo!2874 r!20230))) b!500198))

(assert (= (and b!500094 ((_ is Star!1181) (regTwo!2874 r!20230))) b!500199))

(assert (= (and b!500094 ((_ is Union!1181) (regTwo!2874 r!20230))) b!500200))

(check-sat (not d!182467) (not b!500183) tp_is_empty!2359 (not bm!36119) (not d!182469) (not b!500200) (not b!500184) (not d!182475) (not b!500192) (not b!500187) (not bm!36125) (not b!500178) (not b!500199) (not b!500190) (not b!500198) (not b!500186) (not b!500182) (not b!500191) (not b!500179) (not b!500137) (not bm!36127) (not b!500155) (not bm!36121) (not d!182459) (not b!500180) (not b!500188))
(check-sat)
