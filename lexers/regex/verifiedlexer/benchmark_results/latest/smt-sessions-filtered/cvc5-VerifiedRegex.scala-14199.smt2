; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744148 () Bool)

(assert start!744148)

(declare-fun b!7876811 () Bool)

(declare-fun res!3128613 () Bool)

(declare-fun e!4652156 () Bool)

(assert (=> b!7876811 (=> (not res!3128613) (not e!4652156))))

(declare-datatypes ((C!42666 0))(
  ( (C!42667 (val!31795 Int)) )
))
(declare-datatypes ((List!74029 0))(
  ( (Nil!73905) (Cons!73905 (h!80353 C!42666) (t!388764 List!74029)) )
))
(declare-fun s!14219 () List!74029)

(assert (=> b!7876811 (= res!3128613 (is-Cons!73905 s!14219))))

(declare-fun b!7876812 () Bool)

(declare-fun e!4652155 () Bool)

(declare-fun tp!2339852 () Bool)

(declare-fun tp!2339853 () Bool)

(assert (=> b!7876812 (= e!4652155 (and tp!2339852 tp!2339853))))

(declare-fun b!7876813 () Bool)

(declare-fun res!3128612 () Bool)

(assert (=> b!7876813 (=> (not res!3128612) (not e!4652156))))

(declare-datatypes ((Regex!21170 0))(
  ( (ElementMatch!21170 (c!1446574 C!42666)) (Concat!30015 (regOne!42852 Regex!21170) (regTwo!42852 Regex!21170)) (EmptyExpr!21170) (Star!21170 (reg!21499 Regex!21170)) (EmptyLang!21170) (Union!21170 (regOne!42853 Regex!21170) (regTwo!42853 Regex!21170)) )
))
(declare-fun r1!6200 () Regex!21170)

(declare-fun matchR!10606 (Regex!21170 List!74029) Bool)

(assert (=> b!7876813 (= res!3128612 (matchR!10606 r1!6200 s!14219))))

(declare-fun b!7876814 () Bool)

(declare-fun e!4652158 () Bool)

(declare-fun tp_is_empty!52739 () Bool)

(assert (=> b!7876814 (= e!4652158 tp_is_empty!52739)))

(declare-fun b!7876815 () Bool)

(declare-fun res!3128611 () Bool)

(assert (=> b!7876815 (=> (not res!3128611) (not e!4652156))))

(declare-fun r2!6138 () Regex!21170)

(declare-fun validRegex!11580 (Regex!21170) Bool)

(assert (=> b!7876815 (= res!3128611 (validRegex!11580 r2!6138))))

(declare-fun b!7876816 () Bool)

(declare-fun tp!2339849 () Bool)

(declare-fun tp!2339851 () Bool)

(assert (=> b!7876816 (= e!4652158 (and tp!2339849 tp!2339851))))

(declare-fun b!7876817 () Bool)

(declare-fun tp!2339857 () Bool)

(assert (=> b!7876817 (= e!4652158 tp!2339857)))

(declare-fun b!7876818 () Bool)

(declare-fun e!4652157 () Bool)

(declare-fun tp!2339847 () Bool)

(assert (=> b!7876818 (= e!4652157 (and tp_is_empty!52739 tp!2339847))))

(declare-fun b!7876819 () Bool)

(declare-fun res!3128609 () Bool)

(declare-fun e!4652154 () Bool)

(assert (=> b!7876819 (=> (not res!3128609) (not e!4652154))))

(declare-fun lt!2681030 () Regex!21170)

(assert (=> b!7876819 (= res!3128609 (validRegex!11580 lt!2681030))))

(declare-fun b!7876820 () Bool)

(assert (=> b!7876820 (= e!4652155 tp_is_empty!52739)))

(declare-fun b!7876821 () Bool)

(declare-fun tp!2339855 () Bool)

(declare-fun tp!2339856 () Bool)

(assert (=> b!7876821 (= e!4652158 (and tp!2339855 tp!2339856))))

(declare-fun res!3128614 () Bool)

(assert (=> start!744148 (=> (not res!3128614) (not e!4652156))))

(assert (=> start!744148 (= res!3128614 (validRegex!11580 r1!6200))))

(assert (=> start!744148 e!4652156))

(assert (=> start!744148 e!4652158))

(assert (=> start!744148 e!4652155))

(assert (=> start!744148 e!4652157))

(declare-fun b!7876822 () Bool)

(declare-fun lt!2681031 () Regex!21170)

(assert (=> b!7876822 (= e!4652154 (not (matchR!10606 lt!2681031 (t!388764 s!14219))))))

(declare-fun b!7876823 () Bool)

(declare-fun tp!2339850 () Bool)

(declare-fun tp!2339854 () Bool)

(assert (=> b!7876823 (= e!4652155 (and tp!2339850 tp!2339854))))

(declare-fun b!7876824 () Bool)

(assert (=> b!7876824 (= e!4652156 e!4652154)))

(declare-fun res!3128610 () Bool)

(assert (=> b!7876824 (=> (not res!3128610) (not e!4652154))))

(assert (=> b!7876824 (= res!3128610 (validRegex!11580 lt!2681031))))

(declare-fun derivativeStep!6401 (Regex!21170 C!42666) Regex!21170)

(assert (=> b!7876824 (= lt!2681030 (derivativeStep!6401 r2!6138 (h!80353 s!14219)))))

(assert (=> b!7876824 (= lt!2681031 (derivativeStep!6401 r1!6200 (h!80353 s!14219)))))

(declare-fun b!7876825 () Bool)

(declare-fun tp!2339848 () Bool)

(assert (=> b!7876825 (= e!4652155 tp!2339848)))

(assert (= (and start!744148 res!3128614) b!7876815))

(assert (= (and b!7876815 res!3128611) b!7876813))

(assert (= (and b!7876813 res!3128612) b!7876811))

(assert (= (and b!7876811 res!3128613) b!7876824))

(assert (= (and b!7876824 res!3128610) b!7876819))

(assert (= (and b!7876819 res!3128609) b!7876822))

(assert (= (and start!744148 (is-ElementMatch!21170 r1!6200)) b!7876814))

(assert (= (and start!744148 (is-Concat!30015 r1!6200)) b!7876816))

(assert (= (and start!744148 (is-Star!21170 r1!6200)) b!7876817))

(assert (= (and start!744148 (is-Union!21170 r1!6200)) b!7876821))

(assert (= (and start!744148 (is-ElementMatch!21170 r2!6138)) b!7876820))

(assert (= (and start!744148 (is-Concat!30015 r2!6138)) b!7876823))

(assert (= (and start!744148 (is-Star!21170 r2!6138)) b!7876825))

(assert (= (and start!744148 (is-Union!21170 r2!6138)) b!7876812))

(assert (= (and start!744148 (is-Cons!73905 s!14219)) b!7876818))

(declare-fun m!8266556 () Bool)

(assert (=> start!744148 m!8266556))

(declare-fun m!8266558 () Bool)

(assert (=> b!7876819 m!8266558))

(declare-fun m!8266560 () Bool)

(assert (=> b!7876815 m!8266560))

(declare-fun m!8266562 () Bool)

(assert (=> b!7876813 m!8266562))

(declare-fun m!8266564 () Bool)

(assert (=> b!7876824 m!8266564))

(declare-fun m!8266566 () Bool)

(assert (=> b!7876824 m!8266566))

(declare-fun m!8266568 () Bool)

(assert (=> b!7876824 m!8266568))

(declare-fun m!8266570 () Bool)

(assert (=> b!7876822 m!8266570))

(push 1)

(assert tp_is_empty!52739)

(assert (not start!744148))

(assert (not b!7876813))

(assert (not b!7876815))

(assert (not b!7876823))

(assert (not b!7876825))

(assert (not b!7876822))

(assert (not b!7876812))

(assert (not b!7876818))

(assert (not b!7876824))

(assert (not b!7876817))

(assert (not b!7876819))

(assert (not b!7876816))

(assert (not b!7876821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!730484 () Bool)

(declare-fun call!730489 () Bool)

(declare-fun isEmpty!42401 (List!74029) Bool)

(assert (=> bm!730484 (= call!730489 (isEmpty!42401 s!14219))))

(declare-fun b!7876917 () Bool)

(declare-fun e!4652204 () Bool)

(declare-fun nullable!9434 (Regex!21170) Bool)

(assert (=> b!7876917 (= e!4652204 (nullable!9434 r1!6200))))

(declare-fun b!7876918 () Bool)

(declare-fun res!3128662 () Bool)

(declare-fun e!4652203 () Bool)

(assert (=> b!7876918 (=> res!3128662 e!4652203)))

(declare-fun e!4652205 () Bool)

(assert (=> b!7876918 (= res!3128662 e!4652205)))

(declare-fun res!3128659 () Bool)

(assert (=> b!7876918 (=> (not res!3128659) (not e!4652205))))

(declare-fun lt!2681040 () Bool)

(assert (=> b!7876918 (= res!3128659 lt!2681040)))

(declare-fun b!7876919 () Bool)

(declare-fun res!3128664 () Bool)

(assert (=> b!7876919 (=> (not res!3128664) (not e!4652205))))

(declare-fun tail!15655 (List!74029) List!74029)

(assert (=> b!7876919 (= res!3128664 (isEmpty!42401 (tail!15655 s!14219)))))

(declare-fun b!7876920 () Bool)

(declare-fun e!4652206 () Bool)

(declare-fun e!4652207 () Bool)

(assert (=> b!7876920 (= e!4652206 e!4652207)))

(declare-fun res!3128666 () Bool)

(assert (=> b!7876920 (=> res!3128666 e!4652207)))

(assert (=> b!7876920 (= res!3128666 call!730489)))

(declare-fun b!7876921 () Bool)

(declare-fun e!4652208 () Bool)

(assert (=> b!7876921 (= e!4652208 (not lt!2681040))))

(declare-fun b!7876922 () Bool)

(declare-fun res!3128665 () Bool)

(assert (=> b!7876922 (=> res!3128665 e!4652207)))

(assert (=> b!7876922 (= res!3128665 (not (isEmpty!42401 (tail!15655 s!14219))))))

(declare-fun b!7876923 () Bool)

(declare-fun head!16112 (List!74029) C!42666)

(assert (=> b!7876923 (= e!4652207 (not (= (head!16112 s!14219) (c!1446574 r1!6200))))))

(declare-fun b!7876924 () Bool)

(declare-fun e!4652202 () Bool)

(assert (=> b!7876924 (= e!4652202 (= lt!2681040 call!730489))))

(declare-fun d!2355698 () Bool)

(assert (=> d!2355698 e!4652202))

(declare-fun c!1446587 () Bool)

(assert (=> d!2355698 (= c!1446587 (is-EmptyExpr!21170 r1!6200))))

(assert (=> d!2355698 (= lt!2681040 e!4652204)))

(declare-fun c!1446588 () Bool)

(assert (=> d!2355698 (= c!1446588 (isEmpty!42401 s!14219))))

(assert (=> d!2355698 (validRegex!11580 r1!6200)))

(assert (=> d!2355698 (= (matchR!10606 r1!6200 s!14219) lt!2681040)))

(declare-fun b!7876925 () Bool)

(declare-fun res!3128660 () Bool)

(assert (=> b!7876925 (=> (not res!3128660) (not e!4652205))))

(assert (=> b!7876925 (= res!3128660 (not call!730489))))

(declare-fun b!7876926 () Bool)

(assert (=> b!7876926 (= e!4652202 e!4652208)))

(declare-fun c!1446586 () Bool)

(assert (=> b!7876926 (= c!1446586 (is-EmptyLang!21170 r1!6200))))

(declare-fun b!7876927 () Bool)

(assert (=> b!7876927 (= e!4652203 e!4652206)))

(declare-fun res!3128663 () Bool)

(assert (=> b!7876927 (=> (not res!3128663) (not e!4652206))))

(assert (=> b!7876927 (= res!3128663 (not lt!2681040))))

(declare-fun b!7876928 () Bool)

(assert (=> b!7876928 (= e!4652205 (= (head!16112 s!14219) (c!1446574 r1!6200)))))

(declare-fun b!7876929 () Bool)

(assert (=> b!7876929 (= e!4652204 (matchR!10606 (derivativeStep!6401 r1!6200 (head!16112 s!14219)) (tail!15655 s!14219)))))

(declare-fun b!7876930 () Bool)

(declare-fun res!3128661 () Bool)

(assert (=> b!7876930 (=> res!3128661 e!4652203)))

(assert (=> b!7876930 (= res!3128661 (not (is-ElementMatch!21170 r1!6200)))))

(assert (=> b!7876930 (= e!4652208 e!4652203)))

(assert (= (and d!2355698 c!1446588) b!7876917))

(assert (= (and d!2355698 (not c!1446588)) b!7876929))

(assert (= (and d!2355698 c!1446587) b!7876924))

(assert (= (and d!2355698 (not c!1446587)) b!7876926))

(assert (= (and b!7876926 c!1446586) b!7876921))

(assert (= (and b!7876926 (not c!1446586)) b!7876930))

(assert (= (and b!7876930 (not res!3128661)) b!7876918))

(assert (= (and b!7876918 res!3128659) b!7876925))

(assert (= (and b!7876925 res!3128660) b!7876919))

(assert (= (and b!7876919 res!3128664) b!7876928))

(assert (= (and b!7876918 (not res!3128662)) b!7876927))

(assert (= (and b!7876927 res!3128663) b!7876920))

(assert (= (and b!7876920 (not res!3128666)) b!7876922))

(assert (= (and b!7876922 (not res!3128665)) b!7876923))

(assert (= (or b!7876924 b!7876920 b!7876925) bm!730484))

(declare-fun m!8266588 () Bool)

(assert (=> b!7876919 m!8266588))

(assert (=> b!7876919 m!8266588))

(declare-fun m!8266590 () Bool)

(assert (=> b!7876919 m!8266590))

(declare-fun m!8266592 () Bool)

(assert (=> bm!730484 m!8266592))

(assert (=> d!2355698 m!8266592))

(assert (=> d!2355698 m!8266556))

(declare-fun m!8266594 () Bool)

(assert (=> b!7876928 m!8266594))

(declare-fun m!8266596 () Bool)

(assert (=> b!7876917 m!8266596))

(assert (=> b!7876922 m!8266588))

(assert (=> b!7876922 m!8266588))

(assert (=> b!7876922 m!8266590))

(assert (=> b!7876923 m!8266594))

(assert (=> b!7876929 m!8266594))

(assert (=> b!7876929 m!8266594))

(declare-fun m!8266598 () Bool)

(assert (=> b!7876929 m!8266598))

(assert (=> b!7876929 m!8266588))

(assert (=> b!7876929 m!8266598))

(assert (=> b!7876929 m!8266588))

(declare-fun m!8266600 () Bool)

(assert (=> b!7876929 m!8266600))

(assert (=> b!7876813 d!2355698))

(declare-fun b!7876976 () Bool)

(declare-fun e!4652250 () Bool)

(declare-fun call!730507 () Bool)

(assert (=> b!7876976 (= e!4652250 call!730507)))

(declare-fun bm!730500 () Bool)

(declare-fun c!1446599 () Bool)

(declare-fun c!1446600 () Bool)

(assert (=> bm!730500 (= call!730507 (validRegex!11580 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))))))

(declare-fun b!7876977 () Bool)

(declare-fun e!4652249 () Bool)

(declare-fun e!4652247 () Bool)

(assert (=> b!7876977 (= e!4652249 e!4652247)))

(assert (=> b!7876977 (= c!1446599 (is-Union!21170 lt!2681031))))

(declare-fun b!7876978 () Bool)

(declare-fun e!4652245 () Bool)

(declare-fun call!730505 () Bool)

(assert (=> b!7876978 (= e!4652245 call!730505)))

(declare-fun b!7876979 () Bool)

(declare-fun e!4652246 () Bool)

(assert (=> b!7876979 (= e!4652246 e!4652249)))

(assert (=> b!7876979 (= c!1446600 (is-Star!21170 lt!2681031))))

(declare-fun b!7876980 () Bool)

(declare-fun res!3128695 () Bool)

(declare-fun e!4652248 () Bool)

(assert (=> b!7876980 (=> res!3128695 e!4652248)))

(assert (=> b!7876980 (= res!3128695 (not (is-Concat!30015 lt!2681031)))))

(assert (=> b!7876980 (= e!4652247 e!4652248)))

(declare-fun bm!730501 () Bool)

(declare-fun call!730506 () Bool)

(assert (=> bm!730501 (= call!730506 call!730507)))

(declare-fun b!7876981 () Bool)

(declare-fun res!3128694 () Bool)

(assert (=> b!7876981 (=> (not res!3128694) (not e!4652245))))

(assert (=> b!7876981 (= res!3128694 call!730506)))

(assert (=> b!7876981 (= e!4652247 e!4652245)))

(declare-fun d!2355700 () Bool)

(declare-fun res!3128696 () Bool)

(assert (=> d!2355700 (=> res!3128696 e!4652246)))

(assert (=> d!2355700 (= res!3128696 (is-ElementMatch!21170 lt!2681031))))

(assert (=> d!2355700 (= (validRegex!11580 lt!2681031) e!4652246)))

(declare-fun b!7876982 () Bool)

(assert (=> b!7876982 (= e!4652249 e!4652250)))

(declare-fun res!3128693 () Bool)

(assert (=> b!7876982 (= res!3128693 (not (nullable!9434 (reg!21499 lt!2681031))))))

(assert (=> b!7876982 (=> (not res!3128693) (not e!4652250))))

(declare-fun b!7876983 () Bool)

(declare-fun e!4652244 () Bool)

(assert (=> b!7876983 (= e!4652248 e!4652244)))

(declare-fun res!3128692 () Bool)

(assert (=> b!7876983 (=> (not res!3128692) (not e!4652244))))

(assert (=> b!7876983 (= res!3128692 call!730505)))

(declare-fun b!7876984 () Bool)

(assert (=> b!7876984 (= e!4652244 call!730506)))

(declare-fun bm!730502 () Bool)

(assert (=> bm!730502 (= call!730505 (validRegex!11580 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))))))

(assert (= (and d!2355700 (not res!3128696)) b!7876979))

(assert (= (and b!7876979 c!1446600) b!7876982))

(assert (= (and b!7876979 (not c!1446600)) b!7876977))

(assert (= (and b!7876982 res!3128693) b!7876976))

(assert (= (and b!7876977 c!1446599) b!7876981))

(assert (= (and b!7876977 (not c!1446599)) b!7876980))

(assert (= (and b!7876981 res!3128694) b!7876978))

(assert (= (and b!7876980 (not res!3128695)) b!7876983))

(assert (= (and b!7876983 res!3128692) b!7876984))

(assert (= (or b!7876978 b!7876983) bm!730502))

(assert (= (or b!7876981 b!7876984) bm!730501))

(assert (= (or b!7876976 bm!730501) bm!730500))

(declare-fun m!8266614 () Bool)

(assert (=> bm!730500 m!8266614))

(declare-fun m!8266616 () Bool)

(assert (=> b!7876982 m!8266616))

(declare-fun m!8266618 () Bool)

(assert (=> bm!730502 m!8266618))

(assert (=> b!7876824 d!2355700))

(declare-fun b!7877005 () Bool)

(declare-fun e!4652264 () Regex!21170)

(assert (=> b!7877005 (= e!4652264 EmptyLang!21170)))

(declare-fun b!7877006 () Bool)

(declare-fun c!1446613 () Bool)

(assert (=> b!7877006 (= c!1446613 (is-Union!21170 r2!6138))))

(declare-fun e!4652262 () Regex!21170)

(declare-fun e!4652263 () Regex!21170)

(assert (=> b!7877006 (= e!4652262 e!4652263)))

(declare-fun b!7877007 () Bool)

(declare-fun e!4652265 () Regex!21170)

(declare-fun call!730516 () Regex!21170)

(declare-fun call!730518 () Regex!21170)

(assert (=> b!7877007 (= e!4652265 (Union!21170 (Concat!30015 call!730518 (regTwo!42852 r2!6138)) call!730516))))

(declare-fun d!2355706 () Bool)

(declare-fun lt!2681043 () Regex!21170)

(assert (=> d!2355706 (validRegex!11580 lt!2681043)))

(assert (=> d!2355706 (= lt!2681043 e!4652264)))

(declare-fun c!1446611 () Bool)

(assert (=> d!2355706 (= c!1446611 (or (is-EmptyExpr!21170 r2!6138) (is-EmptyLang!21170 r2!6138)))))

(assert (=> d!2355706 (validRegex!11580 r2!6138)))

(assert (=> d!2355706 (= (derivativeStep!6401 r2!6138 (h!80353 s!14219)) lt!2681043)))

(declare-fun b!7877008 () Bool)

(assert (=> b!7877008 (= e!4652265 (Union!21170 (Concat!30015 call!730518 (regTwo!42852 r2!6138)) EmptyLang!21170))))

(declare-fun bm!730511 () Bool)

(assert (=> bm!730511 (= call!730516 (derivativeStep!6401 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)) (h!80353 s!14219)))))

(declare-fun b!7877009 () Bool)

(declare-fun e!4652261 () Regex!21170)

(assert (=> b!7877009 (= e!4652263 e!4652261)))

(declare-fun c!1446614 () Bool)

(assert (=> b!7877009 (= c!1446614 (is-Star!21170 r2!6138))))

(declare-fun b!7877010 () Bool)

(assert (=> b!7877010 (= e!4652264 e!4652262)))

(declare-fun c!1446615 () Bool)

(assert (=> b!7877010 (= c!1446615 (is-ElementMatch!21170 r2!6138))))

(declare-fun call!730517 () Regex!21170)

(declare-fun bm!730512 () Bool)

(assert (=> bm!730512 (= call!730517 (derivativeStep!6401 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))) (h!80353 s!14219)))))

(declare-fun b!7877011 () Bool)

(assert (=> b!7877011 (= e!4652262 (ite (= (h!80353 s!14219) (c!1446574 r2!6138)) EmptyExpr!21170 EmptyLang!21170))))

(declare-fun b!7877012 () Bool)

(assert (=> b!7877012 (= e!4652263 (Union!21170 call!730516 call!730517))))

(declare-fun bm!730513 () Bool)

(declare-fun call!730519 () Regex!21170)

(assert (=> bm!730513 (= call!730519 call!730517)))

(declare-fun bm!730514 () Bool)

(assert (=> bm!730514 (= call!730518 call!730519)))

(declare-fun b!7877013 () Bool)

(declare-fun c!1446612 () Bool)

(assert (=> b!7877013 (= c!1446612 (nullable!9434 (regOne!42852 r2!6138)))))

(assert (=> b!7877013 (= e!4652261 e!4652265)))

(declare-fun b!7877014 () Bool)

(assert (=> b!7877014 (= e!4652261 (Concat!30015 call!730519 r2!6138))))

(assert (= (and d!2355706 c!1446611) b!7877005))

(assert (= (and d!2355706 (not c!1446611)) b!7877010))

(assert (= (and b!7877010 c!1446615) b!7877011))

(assert (= (and b!7877010 (not c!1446615)) b!7877006))

(assert (= (and b!7877006 c!1446613) b!7877012))

(assert (= (and b!7877006 (not c!1446613)) b!7877009))

(assert (= (and b!7877009 c!1446614) b!7877014))

(assert (= (and b!7877009 (not c!1446614)) b!7877013))

(assert (= (and b!7877013 c!1446612) b!7877007))

(assert (= (and b!7877013 (not c!1446612)) b!7877008))

(assert (= (or b!7877007 b!7877008) bm!730514))

(assert (= (or b!7877014 bm!730514) bm!730513))

(assert (= (or b!7877012 bm!730513) bm!730512))

(assert (= (or b!7877012 b!7877007) bm!730511))

(declare-fun m!8266626 () Bool)

(assert (=> d!2355706 m!8266626))

(assert (=> d!2355706 m!8266560))

(declare-fun m!8266628 () Bool)

(assert (=> bm!730511 m!8266628))

(declare-fun m!8266630 () Bool)

(assert (=> bm!730512 m!8266630))

(declare-fun m!8266632 () Bool)

(assert (=> b!7877013 m!8266632))

(assert (=> b!7876824 d!2355706))

(declare-fun b!7877015 () Bool)

(declare-fun e!4652269 () Regex!21170)

(assert (=> b!7877015 (= e!4652269 EmptyLang!21170)))

(declare-fun b!7877016 () Bool)

(declare-fun c!1446618 () Bool)

(assert (=> b!7877016 (= c!1446618 (is-Union!21170 r1!6200))))

(declare-fun e!4652267 () Regex!21170)

(declare-fun e!4652268 () Regex!21170)

(assert (=> b!7877016 (= e!4652267 e!4652268)))

(declare-fun call!730520 () Regex!21170)

(declare-fun b!7877017 () Bool)

(declare-fun e!4652270 () Regex!21170)

(declare-fun call!730522 () Regex!21170)

(assert (=> b!7877017 (= e!4652270 (Union!21170 (Concat!30015 call!730522 (regTwo!42852 r1!6200)) call!730520))))

(declare-fun d!2355710 () Bool)

(declare-fun lt!2681044 () Regex!21170)

(assert (=> d!2355710 (validRegex!11580 lt!2681044)))

(assert (=> d!2355710 (= lt!2681044 e!4652269)))

(declare-fun c!1446616 () Bool)

(assert (=> d!2355710 (= c!1446616 (or (is-EmptyExpr!21170 r1!6200) (is-EmptyLang!21170 r1!6200)))))

(assert (=> d!2355710 (validRegex!11580 r1!6200)))

(assert (=> d!2355710 (= (derivativeStep!6401 r1!6200 (h!80353 s!14219)) lt!2681044)))

(declare-fun b!7877018 () Bool)

(assert (=> b!7877018 (= e!4652270 (Union!21170 (Concat!30015 call!730522 (regTwo!42852 r1!6200)) EmptyLang!21170))))

(declare-fun bm!730515 () Bool)

(assert (=> bm!730515 (= call!730520 (derivativeStep!6401 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)) (h!80353 s!14219)))))

(declare-fun b!7877019 () Bool)

(declare-fun e!4652266 () Regex!21170)

(assert (=> b!7877019 (= e!4652268 e!4652266)))

(declare-fun c!1446619 () Bool)

(assert (=> b!7877019 (= c!1446619 (is-Star!21170 r1!6200))))

(declare-fun b!7877020 () Bool)

(assert (=> b!7877020 (= e!4652269 e!4652267)))

(declare-fun c!1446620 () Bool)

(assert (=> b!7877020 (= c!1446620 (is-ElementMatch!21170 r1!6200))))

(declare-fun call!730521 () Regex!21170)

(declare-fun bm!730516 () Bool)

(assert (=> bm!730516 (= call!730521 (derivativeStep!6401 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))) (h!80353 s!14219)))))

(declare-fun b!7877021 () Bool)

(assert (=> b!7877021 (= e!4652267 (ite (= (h!80353 s!14219) (c!1446574 r1!6200)) EmptyExpr!21170 EmptyLang!21170))))

(declare-fun b!7877022 () Bool)

(assert (=> b!7877022 (= e!4652268 (Union!21170 call!730520 call!730521))))

(declare-fun bm!730517 () Bool)

(declare-fun call!730523 () Regex!21170)

(assert (=> bm!730517 (= call!730523 call!730521)))

(declare-fun bm!730518 () Bool)

(assert (=> bm!730518 (= call!730522 call!730523)))

(declare-fun b!7877023 () Bool)

(declare-fun c!1446617 () Bool)

(assert (=> b!7877023 (= c!1446617 (nullable!9434 (regOne!42852 r1!6200)))))

(assert (=> b!7877023 (= e!4652266 e!4652270)))

(declare-fun b!7877024 () Bool)

(assert (=> b!7877024 (= e!4652266 (Concat!30015 call!730523 r1!6200))))

(assert (= (and d!2355710 c!1446616) b!7877015))

(assert (= (and d!2355710 (not c!1446616)) b!7877020))

(assert (= (and b!7877020 c!1446620) b!7877021))

(assert (= (and b!7877020 (not c!1446620)) b!7877016))

(assert (= (and b!7877016 c!1446618) b!7877022))

(assert (= (and b!7877016 (not c!1446618)) b!7877019))

(assert (= (and b!7877019 c!1446619) b!7877024))

(assert (= (and b!7877019 (not c!1446619)) b!7877023))

(assert (= (and b!7877023 c!1446617) b!7877017))

(assert (= (and b!7877023 (not c!1446617)) b!7877018))

(assert (= (or b!7877017 b!7877018) bm!730518))

(assert (= (or b!7877024 bm!730518) bm!730517))

(assert (= (or b!7877022 bm!730517) bm!730516))

(assert (= (or b!7877022 b!7877017) bm!730515))

(declare-fun m!8266634 () Bool)

(assert (=> d!2355710 m!8266634))

(assert (=> d!2355710 m!8266556))

(declare-fun m!8266636 () Bool)

(assert (=> bm!730515 m!8266636))

(declare-fun m!8266638 () Bool)

(assert (=> bm!730516 m!8266638))

(declare-fun m!8266640 () Bool)

(assert (=> b!7877023 m!8266640))

(assert (=> b!7876824 d!2355710))

(declare-fun b!7877025 () Bool)

(declare-fun e!4652277 () Bool)

(declare-fun call!730526 () Bool)

(assert (=> b!7877025 (= e!4652277 call!730526)))

(declare-fun c!1446621 () Bool)

(declare-fun bm!730519 () Bool)

(declare-fun c!1446622 () Bool)

(assert (=> bm!730519 (= call!730526 (validRegex!11580 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))))))

(declare-fun b!7877026 () Bool)

(declare-fun e!4652276 () Bool)

(declare-fun e!4652274 () Bool)

(assert (=> b!7877026 (= e!4652276 e!4652274)))

(assert (=> b!7877026 (= c!1446621 (is-Union!21170 lt!2681030))))

(declare-fun b!7877027 () Bool)

(declare-fun e!4652272 () Bool)

(declare-fun call!730524 () Bool)

(assert (=> b!7877027 (= e!4652272 call!730524)))

(declare-fun b!7877028 () Bool)

(declare-fun e!4652273 () Bool)

(assert (=> b!7877028 (= e!4652273 e!4652276)))

(assert (=> b!7877028 (= c!1446622 (is-Star!21170 lt!2681030))))

(declare-fun b!7877029 () Bool)

(declare-fun res!3128700 () Bool)

(declare-fun e!4652275 () Bool)

(assert (=> b!7877029 (=> res!3128700 e!4652275)))

(assert (=> b!7877029 (= res!3128700 (not (is-Concat!30015 lt!2681030)))))

(assert (=> b!7877029 (= e!4652274 e!4652275)))

(declare-fun bm!730520 () Bool)

(declare-fun call!730525 () Bool)

(assert (=> bm!730520 (= call!730525 call!730526)))

(declare-fun b!7877030 () Bool)

(declare-fun res!3128699 () Bool)

(assert (=> b!7877030 (=> (not res!3128699) (not e!4652272))))

(assert (=> b!7877030 (= res!3128699 call!730525)))

(assert (=> b!7877030 (= e!4652274 e!4652272)))

(declare-fun d!2355712 () Bool)

(declare-fun res!3128701 () Bool)

(assert (=> d!2355712 (=> res!3128701 e!4652273)))

(assert (=> d!2355712 (= res!3128701 (is-ElementMatch!21170 lt!2681030))))

(assert (=> d!2355712 (= (validRegex!11580 lt!2681030) e!4652273)))

(declare-fun b!7877031 () Bool)

(assert (=> b!7877031 (= e!4652276 e!4652277)))

(declare-fun res!3128698 () Bool)

(assert (=> b!7877031 (= res!3128698 (not (nullable!9434 (reg!21499 lt!2681030))))))

(assert (=> b!7877031 (=> (not res!3128698) (not e!4652277))))

(declare-fun b!7877032 () Bool)

(declare-fun e!4652271 () Bool)

(assert (=> b!7877032 (= e!4652275 e!4652271)))

(declare-fun res!3128697 () Bool)

(assert (=> b!7877032 (=> (not res!3128697) (not e!4652271))))

(assert (=> b!7877032 (= res!3128697 call!730524)))

(declare-fun b!7877033 () Bool)

(assert (=> b!7877033 (= e!4652271 call!730525)))

(declare-fun bm!730521 () Bool)

(assert (=> bm!730521 (= call!730524 (validRegex!11580 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))))))

(assert (= (and d!2355712 (not res!3128701)) b!7877028))

(assert (= (and b!7877028 c!1446622) b!7877031))

(assert (= (and b!7877028 (not c!1446622)) b!7877026))

(assert (= (and b!7877031 res!3128698) b!7877025))

(assert (= (and b!7877026 c!1446621) b!7877030))

(assert (= (and b!7877026 (not c!1446621)) b!7877029))

(assert (= (and b!7877030 res!3128699) b!7877027))

(assert (= (and b!7877029 (not res!3128700)) b!7877032))

(assert (= (and b!7877032 res!3128697) b!7877033))

(assert (= (or b!7877027 b!7877032) bm!730521))

(assert (= (or b!7877030 b!7877033) bm!730520))

(assert (= (or b!7877025 bm!730520) bm!730519))

(declare-fun m!8266642 () Bool)

(assert (=> bm!730519 m!8266642))

(declare-fun m!8266644 () Bool)

(assert (=> b!7877031 m!8266644))

(declare-fun m!8266646 () Bool)

(assert (=> bm!730521 m!8266646))

(assert (=> b!7876819 d!2355712))

(declare-fun b!7877038 () Bool)

(declare-fun e!4652286 () Bool)

(declare-fun call!730529 () Bool)

(assert (=> b!7877038 (= e!4652286 call!730529)))

(declare-fun bm!730522 () Bool)

(declare-fun c!1446626 () Bool)

(declare-fun c!1446625 () Bool)

(assert (=> bm!730522 (= call!730529 (validRegex!11580 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))))

(declare-fun b!7877039 () Bool)

(declare-fun e!4652285 () Bool)

(declare-fun e!4652283 () Bool)

(assert (=> b!7877039 (= e!4652285 e!4652283)))

(assert (=> b!7877039 (= c!1446625 (is-Union!21170 r1!6200))))

(declare-fun b!7877040 () Bool)

(declare-fun e!4652281 () Bool)

(declare-fun call!730527 () Bool)

(assert (=> b!7877040 (= e!4652281 call!730527)))

(declare-fun b!7877041 () Bool)

(declare-fun e!4652282 () Bool)

(assert (=> b!7877041 (= e!4652282 e!4652285)))

(assert (=> b!7877041 (= c!1446626 (is-Star!21170 r1!6200))))

(declare-fun b!7877042 () Bool)

(declare-fun res!3128705 () Bool)

(declare-fun e!4652284 () Bool)

(assert (=> b!7877042 (=> res!3128705 e!4652284)))

(assert (=> b!7877042 (= res!3128705 (not (is-Concat!30015 r1!6200)))))

(assert (=> b!7877042 (= e!4652283 e!4652284)))

(declare-fun bm!730523 () Bool)

(declare-fun call!730528 () Bool)

(assert (=> bm!730523 (= call!730528 call!730529)))

(declare-fun b!7877043 () Bool)

(declare-fun res!3128704 () Bool)

(assert (=> b!7877043 (=> (not res!3128704) (not e!4652281))))

(assert (=> b!7877043 (= res!3128704 call!730528)))

(assert (=> b!7877043 (= e!4652283 e!4652281)))

(declare-fun d!2355714 () Bool)

(declare-fun res!3128706 () Bool)

(assert (=> d!2355714 (=> res!3128706 e!4652282)))

(assert (=> d!2355714 (= res!3128706 (is-ElementMatch!21170 r1!6200))))

(assert (=> d!2355714 (= (validRegex!11580 r1!6200) e!4652282)))

(declare-fun b!7877044 () Bool)

(assert (=> b!7877044 (= e!4652285 e!4652286)))

(declare-fun res!3128703 () Bool)

(assert (=> b!7877044 (= res!3128703 (not (nullable!9434 (reg!21499 r1!6200))))))

(assert (=> b!7877044 (=> (not res!3128703) (not e!4652286))))

(declare-fun b!7877045 () Bool)

(declare-fun e!4652280 () Bool)

(assert (=> b!7877045 (= e!4652284 e!4652280)))

(declare-fun res!3128702 () Bool)

(assert (=> b!7877045 (=> (not res!3128702) (not e!4652280))))

(assert (=> b!7877045 (= res!3128702 call!730527)))

(declare-fun b!7877046 () Bool)

(assert (=> b!7877046 (= e!4652280 call!730528)))

(declare-fun bm!730524 () Bool)

(assert (=> bm!730524 (= call!730527 (validRegex!11580 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))))))

(assert (= (and d!2355714 (not res!3128706)) b!7877041))

(assert (= (and b!7877041 c!1446626) b!7877044))

(assert (= (and b!7877041 (not c!1446626)) b!7877039))

(assert (= (and b!7877044 res!3128703) b!7877038))

(assert (= (and b!7877039 c!1446625) b!7877043))

(assert (= (and b!7877039 (not c!1446625)) b!7877042))

(assert (= (and b!7877043 res!3128704) b!7877040))

(assert (= (and b!7877042 (not res!3128705)) b!7877045))

(assert (= (and b!7877045 res!3128702) b!7877046))

(assert (= (or b!7877040 b!7877045) bm!730524))

(assert (= (or b!7877043 b!7877046) bm!730523))

(assert (= (or b!7877038 bm!730523) bm!730522))

(declare-fun m!8266648 () Bool)

(assert (=> bm!730522 m!8266648))

(declare-fun m!8266650 () Bool)

(assert (=> b!7877044 m!8266650))

(declare-fun m!8266652 () Bool)

(assert (=> bm!730524 m!8266652))

(assert (=> start!744148 d!2355714))

(declare-fun bm!730525 () Bool)

(declare-fun call!730530 () Bool)

(assert (=> bm!730525 (= call!730530 (isEmpty!42401 (t!388764 s!14219)))))

(declare-fun b!7877049 () Bool)

(declare-fun e!4652289 () Bool)

(assert (=> b!7877049 (= e!4652289 (nullable!9434 lt!2681031))))

(declare-fun b!7877050 () Bool)

(declare-fun res!3128710 () Bool)

(declare-fun e!4652288 () Bool)

(assert (=> b!7877050 (=> res!3128710 e!4652288)))

(declare-fun e!4652290 () Bool)

(assert (=> b!7877050 (= res!3128710 e!4652290)))

(declare-fun res!3128707 () Bool)

(assert (=> b!7877050 (=> (not res!3128707) (not e!4652290))))

(declare-fun lt!2681047 () Bool)

(assert (=> b!7877050 (= res!3128707 lt!2681047)))

(declare-fun b!7877051 () Bool)

(declare-fun res!3128712 () Bool)

(assert (=> b!7877051 (=> (not res!3128712) (not e!4652290))))

(assert (=> b!7877051 (= res!3128712 (isEmpty!42401 (tail!15655 (t!388764 s!14219))))))

(declare-fun b!7877052 () Bool)

(declare-fun e!4652291 () Bool)

(declare-fun e!4652292 () Bool)

(assert (=> b!7877052 (= e!4652291 e!4652292)))

(declare-fun res!3128714 () Bool)

(assert (=> b!7877052 (=> res!3128714 e!4652292)))

(assert (=> b!7877052 (= res!3128714 call!730530)))

(declare-fun b!7877053 () Bool)

(declare-fun e!4652293 () Bool)

(assert (=> b!7877053 (= e!4652293 (not lt!2681047))))

(declare-fun b!7877054 () Bool)

(declare-fun res!3128713 () Bool)

(assert (=> b!7877054 (=> res!3128713 e!4652292)))

(assert (=> b!7877054 (= res!3128713 (not (isEmpty!42401 (tail!15655 (t!388764 s!14219)))))))

(declare-fun b!7877055 () Bool)

(assert (=> b!7877055 (= e!4652292 (not (= (head!16112 (t!388764 s!14219)) (c!1446574 lt!2681031))))))

(declare-fun b!7877057 () Bool)

(declare-fun e!4652287 () Bool)

(assert (=> b!7877057 (= e!4652287 (= lt!2681047 call!730530))))

(declare-fun d!2355716 () Bool)

(assert (=> d!2355716 e!4652287))

(declare-fun c!1446628 () Bool)

(assert (=> d!2355716 (= c!1446628 (is-EmptyExpr!21170 lt!2681031))))

(assert (=> d!2355716 (= lt!2681047 e!4652289)))

(declare-fun c!1446629 () Bool)

(assert (=> d!2355716 (= c!1446629 (isEmpty!42401 (t!388764 s!14219)))))

(assert (=> d!2355716 (validRegex!11580 lt!2681031)))

(assert (=> d!2355716 (= (matchR!10606 lt!2681031 (t!388764 s!14219)) lt!2681047)))

(declare-fun b!7877058 () Bool)

(declare-fun res!3128708 () Bool)

(assert (=> b!7877058 (=> (not res!3128708) (not e!4652290))))

(assert (=> b!7877058 (= res!3128708 (not call!730530))))

(declare-fun b!7877059 () Bool)

(assert (=> b!7877059 (= e!4652287 e!4652293)))

(declare-fun c!1446627 () Bool)

(assert (=> b!7877059 (= c!1446627 (is-EmptyLang!21170 lt!2681031))))

(declare-fun b!7877060 () Bool)

(assert (=> b!7877060 (= e!4652288 e!4652291)))

(declare-fun res!3128711 () Bool)

(assert (=> b!7877060 (=> (not res!3128711) (not e!4652291))))

(assert (=> b!7877060 (= res!3128711 (not lt!2681047))))

(declare-fun b!7877062 () Bool)

(assert (=> b!7877062 (= e!4652290 (= (head!16112 (t!388764 s!14219)) (c!1446574 lt!2681031)))))

(declare-fun b!7877063 () Bool)

(assert (=> b!7877063 (= e!4652289 (matchR!10606 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219))) (tail!15655 (t!388764 s!14219))))))

(declare-fun b!7877064 () Bool)

(declare-fun res!3128709 () Bool)

(assert (=> b!7877064 (=> res!3128709 e!4652288)))

(assert (=> b!7877064 (= res!3128709 (not (is-ElementMatch!21170 lt!2681031)))))

(assert (=> b!7877064 (= e!4652293 e!4652288)))

(assert (= (and d!2355716 c!1446629) b!7877049))

(assert (= (and d!2355716 (not c!1446629)) b!7877063))

(assert (= (and d!2355716 c!1446628) b!7877057))

(assert (= (and d!2355716 (not c!1446628)) b!7877059))

(assert (= (and b!7877059 c!1446627) b!7877053))

(assert (= (and b!7877059 (not c!1446627)) b!7877064))

(assert (= (and b!7877064 (not res!3128709)) b!7877050))

(assert (= (and b!7877050 res!3128707) b!7877058))

(assert (= (and b!7877058 res!3128708) b!7877051))

(assert (= (and b!7877051 res!3128712) b!7877062))

(assert (= (and b!7877050 (not res!3128710)) b!7877060))

(assert (= (and b!7877060 res!3128711) b!7877052))

(assert (= (and b!7877052 (not res!3128714)) b!7877054))

(assert (= (and b!7877054 (not res!3128713)) b!7877055))

(assert (= (or b!7877057 b!7877052 b!7877058) bm!730525))

(declare-fun m!8266654 () Bool)

(assert (=> b!7877051 m!8266654))

(assert (=> b!7877051 m!8266654))

(declare-fun m!8266656 () Bool)

(assert (=> b!7877051 m!8266656))

(declare-fun m!8266658 () Bool)

(assert (=> bm!730525 m!8266658))

(assert (=> d!2355716 m!8266658))

(assert (=> d!2355716 m!8266564))

(declare-fun m!8266660 () Bool)

(assert (=> b!7877062 m!8266660))

(declare-fun m!8266662 () Bool)

(assert (=> b!7877049 m!8266662))

(assert (=> b!7877054 m!8266654))

(assert (=> b!7877054 m!8266654))

(assert (=> b!7877054 m!8266656))

(assert (=> b!7877055 m!8266660))

(assert (=> b!7877063 m!8266660))

(assert (=> b!7877063 m!8266660))

(declare-fun m!8266664 () Bool)

(assert (=> b!7877063 m!8266664))

(assert (=> b!7877063 m!8266654))

(assert (=> b!7877063 m!8266664))

(assert (=> b!7877063 m!8266654))

(declare-fun m!8266666 () Bool)

(assert (=> b!7877063 m!8266666))

(assert (=> b!7876822 d!2355716))

(declare-fun b!7877085 () Bool)

(declare-fun e!4652312 () Bool)

(declare-fun call!730533 () Bool)

(assert (=> b!7877085 (= e!4652312 call!730533)))

(declare-fun c!1446634 () Bool)

(declare-fun c!1446635 () Bool)

(declare-fun bm!730526 () Bool)

(assert (=> bm!730526 (= call!730533 (validRegex!11580 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))))

(declare-fun b!7877086 () Bool)

(declare-fun e!4652311 () Bool)

(declare-fun e!4652309 () Bool)

(assert (=> b!7877086 (= e!4652311 e!4652309)))

(assert (=> b!7877086 (= c!1446634 (is-Union!21170 r2!6138))))

(declare-fun b!7877087 () Bool)

(declare-fun e!4652307 () Bool)

(declare-fun call!730531 () Bool)

(assert (=> b!7877087 (= e!4652307 call!730531)))

(declare-fun b!7877088 () Bool)

(declare-fun e!4652308 () Bool)

(assert (=> b!7877088 (= e!4652308 e!4652311)))

(assert (=> b!7877088 (= c!1446635 (is-Star!21170 r2!6138))))

(declare-fun b!7877089 () Bool)

(declare-fun res!3128734 () Bool)

(declare-fun e!4652310 () Bool)

(assert (=> b!7877089 (=> res!3128734 e!4652310)))

(assert (=> b!7877089 (= res!3128734 (not (is-Concat!30015 r2!6138)))))

(assert (=> b!7877089 (= e!4652309 e!4652310)))

(declare-fun bm!730527 () Bool)

(declare-fun call!730532 () Bool)

(assert (=> bm!730527 (= call!730532 call!730533)))

(declare-fun b!7877090 () Bool)

(declare-fun res!3128733 () Bool)

(assert (=> b!7877090 (=> (not res!3128733) (not e!4652307))))

(assert (=> b!7877090 (= res!3128733 call!730532)))

(assert (=> b!7877090 (= e!4652309 e!4652307)))

(declare-fun d!2355718 () Bool)

(declare-fun res!3128735 () Bool)

(assert (=> d!2355718 (=> res!3128735 e!4652308)))

(assert (=> d!2355718 (= res!3128735 (is-ElementMatch!21170 r2!6138))))

(assert (=> d!2355718 (= (validRegex!11580 r2!6138) e!4652308)))

(declare-fun b!7877091 () Bool)

(assert (=> b!7877091 (= e!4652311 e!4652312)))

(declare-fun res!3128732 () Bool)

(assert (=> b!7877091 (= res!3128732 (not (nullable!9434 (reg!21499 r2!6138))))))

(assert (=> b!7877091 (=> (not res!3128732) (not e!4652312))))

(declare-fun b!7877092 () Bool)

(declare-fun e!4652306 () Bool)

(assert (=> b!7877092 (= e!4652310 e!4652306)))

(declare-fun res!3128731 () Bool)

(assert (=> b!7877092 (=> (not res!3128731) (not e!4652306))))

(assert (=> b!7877092 (= res!3128731 call!730531)))

(declare-fun b!7877093 () Bool)

(assert (=> b!7877093 (= e!4652306 call!730532)))

(declare-fun bm!730528 () Bool)

(assert (=> bm!730528 (= call!730531 (validRegex!11580 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))))))

(assert (= (and d!2355718 (not res!3128735)) b!7877088))

(assert (= (and b!7877088 c!1446635) b!7877091))

(assert (= (and b!7877088 (not c!1446635)) b!7877086))

(assert (= (and b!7877091 res!3128732) b!7877085))

(assert (= (and b!7877086 c!1446634) b!7877090))

(assert (= (and b!7877086 (not c!1446634)) b!7877089))

(assert (= (and b!7877090 res!3128733) b!7877087))

(assert (= (and b!7877089 (not res!3128734)) b!7877092))

(assert (= (and b!7877092 res!3128731) b!7877093))

(assert (= (or b!7877087 b!7877092) bm!730528))

(assert (= (or b!7877090 b!7877093) bm!730527))

(assert (= (or b!7877085 bm!730527) bm!730526))

(declare-fun m!8266668 () Bool)

(assert (=> bm!730526 m!8266668))

(declare-fun m!8266670 () Bool)

(assert (=> b!7877091 m!8266670))

(declare-fun m!8266672 () Bool)

(assert (=> bm!730528 m!8266672))

(assert (=> b!7876815 d!2355718))

(declare-fun b!7877105 () Bool)

(declare-fun e!4652315 () Bool)

(declare-fun tp!2339903 () Bool)

(declare-fun tp!2339901 () Bool)

(assert (=> b!7877105 (= e!4652315 (and tp!2339903 tp!2339901))))

(assert (=> b!7876817 (= tp!2339857 e!4652315)))

(declare-fun b!7877106 () Bool)

(declare-fun tp!2339902 () Bool)

(assert (=> b!7877106 (= e!4652315 tp!2339902)))

(declare-fun b!7877107 () Bool)

(declare-fun tp!2339905 () Bool)

(declare-fun tp!2339904 () Bool)

(assert (=> b!7877107 (= e!4652315 (and tp!2339905 tp!2339904))))

(declare-fun b!7877104 () Bool)

(assert (=> b!7877104 (= e!4652315 tp_is_empty!52739)))

(assert (= (and b!7876817 (is-ElementMatch!21170 (reg!21499 r1!6200))) b!7877104))

(assert (= (and b!7876817 (is-Concat!30015 (reg!21499 r1!6200))) b!7877105))

(assert (= (and b!7876817 (is-Star!21170 (reg!21499 r1!6200))) b!7877106))

(assert (= (and b!7876817 (is-Union!21170 (reg!21499 r1!6200))) b!7877107))

(declare-fun b!7877109 () Bool)

(declare-fun e!4652316 () Bool)

(declare-fun tp!2339908 () Bool)

(declare-fun tp!2339906 () Bool)

(assert (=> b!7877109 (= e!4652316 (and tp!2339908 tp!2339906))))

(assert (=> b!7876812 (= tp!2339852 e!4652316)))

(declare-fun b!7877110 () Bool)

(declare-fun tp!2339907 () Bool)

(assert (=> b!7877110 (= e!4652316 tp!2339907)))

(declare-fun b!7877111 () Bool)

(declare-fun tp!2339910 () Bool)

(declare-fun tp!2339909 () Bool)

(assert (=> b!7877111 (= e!4652316 (and tp!2339910 tp!2339909))))

(declare-fun b!7877108 () Bool)

(assert (=> b!7877108 (= e!4652316 tp_is_empty!52739)))

(assert (= (and b!7876812 (is-ElementMatch!21170 (regOne!42853 r2!6138))) b!7877108))

(assert (= (and b!7876812 (is-Concat!30015 (regOne!42853 r2!6138))) b!7877109))

(assert (= (and b!7876812 (is-Star!21170 (regOne!42853 r2!6138))) b!7877110))

(assert (= (and b!7876812 (is-Union!21170 (regOne!42853 r2!6138))) b!7877111))

(declare-fun b!7877113 () Bool)

(declare-fun e!4652317 () Bool)

(declare-fun tp!2339913 () Bool)

(declare-fun tp!2339911 () Bool)

(assert (=> b!7877113 (= e!4652317 (and tp!2339913 tp!2339911))))

(assert (=> b!7876812 (= tp!2339853 e!4652317)))

(declare-fun b!7877114 () Bool)

(declare-fun tp!2339912 () Bool)

(assert (=> b!7877114 (= e!4652317 tp!2339912)))

(declare-fun b!7877115 () Bool)

(declare-fun tp!2339915 () Bool)

(declare-fun tp!2339914 () Bool)

(assert (=> b!7877115 (= e!4652317 (and tp!2339915 tp!2339914))))

(declare-fun b!7877112 () Bool)

(assert (=> b!7877112 (= e!4652317 tp_is_empty!52739)))

(assert (= (and b!7876812 (is-ElementMatch!21170 (regTwo!42853 r2!6138))) b!7877112))

(assert (= (and b!7876812 (is-Concat!30015 (regTwo!42853 r2!6138))) b!7877113))

(assert (= (and b!7876812 (is-Star!21170 (regTwo!42853 r2!6138))) b!7877114))

(assert (= (and b!7876812 (is-Union!21170 (regTwo!42853 r2!6138))) b!7877115))

(declare-fun b!7877117 () Bool)

(declare-fun e!4652318 () Bool)

(declare-fun tp!2339918 () Bool)

(declare-fun tp!2339916 () Bool)

(assert (=> b!7877117 (= e!4652318 (and tp!2339918 tp!2339916))))

(assert (=> b!7876823 (= tp!2339850 e!4652318)))

(declare-fun b!7877118 () Bool)

(declare-fun tp!2339917 () Bool)

(assert (=> b!7877118 (= e!4652318 tp!2339917)))

(declare-fun b!7877119 () Bool)

(declare-fun tp!2339920 () Bool)

(declare-fun tp!2339919 () Bool)

(assert (=> b!7877119 (= e!4652318 (and tp!2339920 tp!2339919))))

(declare-fun b!7877116 () Bool)

(assert (=> b!7877116 (= e!4652318 tp_is_empty!52739)))

(assert (= (and b!7876823 (is-ElementMatch!21170 (regOne!42852 r2!6138))) b!7877116))

(assert (= (and b!7876823 (is-Concat!30015 (regOne!42852 r2!6138))) b!7877117))

(assert (= (and b!7876823 (is-Star!21170 (regOne!42852 r2!6138))) b!7877118))

(assert (= (and b!7876823 (is-Union!21170 (regOne!42852 r2!6138))) b!7877119))

(declare-fun b!7877121 () Bool)

(declare-fun e!4652319 () Bool)

(declare-fun tp!2339923 () Bool)

(declare-fun tp!2339921 () Bool)

(assert (=> b!7877121 (= e!4652319 (and tp!2339923 tp!2339921))))

(assert (=> b!7876823 (= tp!2339854 e!4652319)))

(declare-fun b!7877122 () Bool)

(declare-fun tp!2339922 () Bool)

(assert (=> b!7877122 (= e!4652319 tp!2339922)))

(declare-fun b!7877123 () Bool)

(declare-fun tp!2339925 () Bool)

(declare-fun tp!2339924 () Bool)

(assert (=> b!7877123 (= e!4652319 (and tp!2339925 tp!2339924))))

(declare-fun b!7877120 () Bool)

(assert (=> b!7877120 (= e!4652319 tp_is_empty!52739)))

(assert (= (and b!7876823 (is-ElementMatch!21170 (regTwo!42852 r2!6138))) b!7877120))

(assert (= (and b!7876823 (is-Concat!30015 (regTwo!42852 r2!6138))) b!7877121))

(assert (= (and b!7876823 (is-Star!21170 (regTwo!42852 r2!6138))) b!7877122))

(assert (= (and b!7876823 (is-Union!21170 (regTwo!42852 r2!6138))) b!7877123))

(declare-fun b!7877128 () Bool)

(declare-fun e!4652322 () Bool)

(declare-fun tp!2339928 () Bool)

(assert (=> b!7877128 (= e!4652322 (and tp_is_empty!52739 tp!2339928))))

(assert (=> b!7876818 (= tp!2339847 e!4652322)))

(assert (= (and b!7876818 (is-Cons!73905 (t!388764 s!14219))) b!7877128))

(declare-fun b!7877130 () Bool)

(declare-fun e!4652323 () Bool)

(declare-fun tp!2339931 () Bool)

(declare-fun tp!2339929 () Bool)

(assert (=> b!7877130 (= e!4652323 (and tp!2339931 tp!2339929))))

(assert (=> b!7876821 (= tp!2339855 e!4652323)))

(declare-fun b!7877131 () Bool)

(declare-fun tp!2339930 () Bool)

(assert (=> b!7877131 (= e!4652323 tp!2339930)))

(declare-fun b!7877132 () Bool)

(declare-fun tp!2339933 () Bool)

(declare-fun tp!2339932 () Bool)

(assert (=> b!7877132 (= e!4652323 (and tp!2339933 tp!2339932))))

(declare-fun b!7877129 () Bool)

(assert (=> b!7877129 (= e!4652323 tp_is_empty!52739)))

(assert (= (and b!7876821 (is-ElementMatch!21170 (regOne!42853 r1!6200))) b!7877129))

(assert (= (and b!7876821 (is-Concat!30015 (regOne!42853 r1!6200))) b!7877130))

(assert (= (and b!7876821 (is-Star!21170 (regOne!42853 r1!6200))) b!7877131))

(assert (= (and b!7876821 (is-Union!21170 (regOne!42853 r1!6200))) b!7877132))

(declare-fun b!7877134 () Bool)

(declare-fun e!4652324 () Bool)

(declare-fun tp!2339936 () Bool)

(declare-fun tp!2339934 () Bool)

(assert (=> b!7877134 (= e!4652324 (and tp!2339936 tp!2339934))))

(assert (=> b!7876821 (= tp!2339856 e!4652324)))

(declare-fun b!7877135 () Bool)

(declare-fun tp!2339935 () Bool)

(assert (=> b!7877135 (= e!4652324 tp!2339935)))

(declare-fun b!7877136 () Bool)

(declare-fun tp!2339938 () Bool)

(declare-fun tp!2339937 () Bool)

(assert (=> b!7877136 (= e!4652324 (and tp!2339938 tp!2339937))))

(declare-fun b!7877133 () Bool)

(assert (=> b!7877133 (= e!4652324 tp_is_empty!52739)))

(assert (= (and b!7876821 (is-ElementMatch!21170 (regTwo!42853 r1!6200))) b!7877133))

(assert (= (and b!7876821 (is-Concat!30015 (regTwo!42853 r1!6200))) b!7877134))

(assert (= (and b!7876821 (is-Star!21170 (regTwo!42853 r1!6200))) b!7877135))

(assert (= (and b!7876821 (is-Union!21170 (regTwo!42853 r1!6200))) b!7877136))

(declare-fun b!7877138 () Bool)

(declare-fun e!4652325 () Bool)

(declare-fun tp!2339941 () Bool)

(declare-fun tp!2339939 () Bool)

(assert (=> b!7877138 (= e!4652325 (and tp!2339941 tp!2339939))))

(assert (=> b!7876816 (= tp!2339849 e!4652325)))

(declare-fun b!7877139 () Bool)

(declare-fun tp!2339940 () Bool)

(assert (=> b!7877139 (= e!4652325 tp!2339940)))

(declare-fun b!7877140 () Bool)

(declare-fun tp!2339943 () Bool)

(declare-fun tp!2339942 () Bool)

(assert (=> b!7877140 (= e!4652325 (and tp!2339943 tp!2339942))))

(declare-fun b!7877137 () Bool)

(assert (=> b!7877137 (= e!4652325 tp_is_empty!52739)))

(assert (= (and b!7876816 (is-ElementMatch!21170 (regOne!42852 r1!6200))) b!7877137))

(assert (= (and b!7876816 (is-Concat!30015 (regOne!42852 r1!6200))) b!7877138))

(assert (= (and b!7876816 (is-Star!21170 (regOne!42852 r1!6200))) b!7877139))

(assert (= (and b!7876816 (is-Union!21170 (regOne!42852 r1!6200))) b!7877140))

(declare-fun b!7877142 () Bool)

(declare-fun e!4652326 () Bool)

(declare-fun tp!2339946 () Bool)

(declare-fun tp!2339944 () Bool)

(assert (=> b!7877142 (= e!4652326 (and tp!2339946 tp!2339944))))

(assert (=> b!7876816 (= tp!2339851 e!4652326)))

(declare-fun b!7877143 () Bool)

(declare-fun tp!2339945 () Bool)

(assert (=> b!7877143 (= e!4652326 tp!2339945)))

(declare-fun b!7877144 () Bool)

(declare-fun tp!2339948 () Bool)

(declare-fun tp!2339947 () Bool)

(assert (=> b!7877144 (= e!4652326 (and tp!2339948 tp!2339947))))

(declare-fun b!7877141 () Bool)

(assert (=> b!7877141 (= e!4652326 tp_is_empty!52739)))

(assert (= (and b!7876816 (is-ElementMatch!21170 (regTwo!42852 r1!6200))) b!7877141))

(assert (= (and b!7876816 (is-Concat!30015 (regTwo!42852 r1!6200))) b!7877142))

(assert (= (and b!7876816 (is-Star!21170 (regTwo!42852 r1!6200))) b!7877143))

(assert (= (and b!7876816 (is-Union!21170 (regTwo!42852 r1!6200))) b!7877144))

(declare-fun b!7877146 () Bool)

(declare-fun e!4652327 () Bool)

(declare-fun tp!2339951 () Bool)

(declare-fun tp!2339949 () Bool)

(assert (=> b!7877146 (= e!4652327 (and tp!2339951 tp!2339949))))

(assert (=> b!7876825 (= tp!2339848 e!4652327)))

(declare-fun b!7877147 () Bool)

(declare-fun tp!2339950 () Bool)

(assert (=> b!7877147 (= e!4652327 tp!2339950)))

(declare-fun b!7877148 () Bool)

(declare-fun tp!2339953 () Bool)

(declare-fun tp!2339952 () Bool)

(assert (=> b!7877148 (= e!4652327 (and tp!2339953 tp!2339952))))

(declare-fun b!7877145 () Bool)

(assert (=> b!7877145 (= e!4652327 tp_is_empty!52739)))

(assert (= (and b!7876825 (is-ElementMatch!21170 (reg!21499 r2!6138))) b!7877145))

(assert (= (and b!7876825 (is-Concat!30015 (reg!21499 r2!6138))) b!7877146))

(assert (= (and b!7876825 (is-Star!21170 (reg!21499 r2!6138))) b!7877147))

(assert (= (and b!7876825 (is-Union!21170 (reg!21499 r2!6138))) b!7877148))

(push 1)

(assert (not b!7877062))

(assert (not b!7877110))

(assert (not b!7877144))

(assert (not bm!730515))

(assert (not d!2355716))

(assert (not b!7877140))

(assert (not b!7877142))

(assert (not b!7877031))

(assert (not b!7876919))

(assert (not b!7877091))

(assert tp_is_empty!52739)

(assert (not b!7876922))

(assert (not b!7877130))

(assert (not b!7876982))

(assert (not bm!730512))

(assert (not b!7877132))

(assert (not b!7877111))

(assert (not b!7877131))

(assert (not b!7877146))

(assert (not b!7877051))

(assert (not b!7876929))

(assert (not b!7877114))

(assert (not b!7877136))

(assert (not bm!730525))

(assert (not bm!730516))

(assert (not b!7877138))

(assert (not b!7877107))

(assert (not d!2355706))

(assert (not b!7877044))

(assert (not b!7876917))

(assert (not d!2355710))

(assert (not b!7877143))

(assert (not b!7877121))

(assert (not b!7877123))

(assert (not bm!730511))

(assert (not b!7877135))

(assert (not b!7877119))

(assert (not b!7876923))

(assert (not bm!730500))

(assert (not b!7877147))

(assert (not bm!730522))

(assert (not d!2355698))

(assert (not b!7877117))

(assert (not bm!730524))

(assert (not bm!730484))

(assert (not b!7877122))

(assert (not b!7877134))

(assert (not b!7877013))

(assert (not b!7877105))

(assert (not b!7877049))

(assert (not b!7877118))

(assert (not bm!730502))

(assert (not b!7877148))

(assert (not b!7877055))

(assert (not b!7877113))

(assert (not b!7877106))

(assert (not b!7877139))

(assert (not b!7876928))

(assert (not b!7877115))

(assert (not bm!730528))

(assert (not bm!730519))

(assert (not b!7877063))

(assert (not bm!730521))

(assert (not b!7877054))

(assert (not bm!730526))

(assert (not b!7877128))

(assert (not b!7877109))

(assert (not b!7877023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2355728 () Bool)

(assert (=> d!2355728 (= (isEmpty!42401 (t!388764 s!14219)) (is-Nil!73905 (t!388764 s!14219)))))

(assert (=> d!2355716 d!2355728))

(assert (=> d!2355716 d!2355700))

(declare-fun d!2355732 () Bool)

(declare-fun nullableFct!3728 (Regex!21170) Bool)

(assert (=> d!2355732 (= (nullable!9434 (reg!21499 lt!2681030)) (nullableFct!3728 (reg!21499 lt!2681030)))))

(declare-fun bs!1967341 () Bool)

(assert (= bs!1967341 d!2355732))

(declare-fun m!8266724 () Bool)

(assert (=> bs!1967341 m!8266724))

(assert (=> b!7877031 d!2355732))

(declare-fun d!2355734 () Bool)

(assert (=> d!2355734 (= (nullable!9434 r1!6200) (nullableFct!3728 r1!6200))))

(declare-fun bs!1967342 () Bool)

(assert (= bs!1967342 d!2355734))

(declare-fun m!8266726 () Bool)

(assert (=> bs!1967342 m!8266726))

(assert (=> b!7876917 d!2355734))

(assert (=> bm!730525 d!2355728))

(declare-fun b!7877295 () Bool)

(declare-fun e!4652394 () Regex!21170)

(assert (=> b!7877295 (= e!4652394 EmptyLang!21170)))

(declare-fun b!7877296 () Bool)

(declare-fun c!1446669 () Bool)

(assert (=> b!7877296 (= c!1446669 (is-Union!21170 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))))))

(declare-fun e!4652392 () Regex!21170)

(declare-fun e!4652393 () Regex!21170)

(assert (=> b!7877296 (= e!4652392 e!4652393)))

(declare-fun b!7877297 () Bool)

(declare-fun call!730558 () Regex!21170)

(declare-fun call!730560 () Regex!21170)

(declare-fun e!4652395 () Regex!21170)

(assert (=> b!7877297 (= e!4652395 (Union!21170 (Concat!30015 call!730560 (regTwo!42852 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))) call!730558))))

(declare-fun d!2355736 () Bool)

(declare-fun lt!2681055 () Regex!21170)

(assert (=> d!2355736 (validRegex!11580 lt!2681055)))

(assert (=> d!2355736 (= lt!2681055 e!4652394)))

(declare-fun c!1446667 () Bool)

(assert (=> d!2355736 (= c!1446667 (or (is-EmptyExpr!21170 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))) (is-EmptyLang!21170 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))))

(assert (=> d!2355736 (validRegex!11580 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))

(assert (=> d!2355736 (= (derivativeStep!6401 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)) (h!80353 s!14219)) lt!2681055)))

(declare-fun b!7877298 () Bool)

(assert (=> b!7877298 (= e!4652395 (Union!21170 (Concat!30015 call!730560 (regTwo!42852 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))) EmptyLang!21170))))

(declare-fun bm!730553 () Bool)

(assert (=> bm!730553 (= call!730558 (derivativeStep!6401 (ite c!1446669 (regOne!42853 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))) (regTwo!42852 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))) (h!80353 s!14219)))))

(declare-fun b!7877299 () Bool)

(declare-fun e!4652391 () Regex!21170)

(assert (=> b!7877299 (= e!4652393 e!4652391)))

(declare-fun c!1446670 () Bool)

(assert (=> b!7877299 (= c!1446670 (is-Star!21170 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))))))

(declare-fun b!7877300 () Bool)

(assert (=> b!7877300 (= e!4652394 e!4652392)))

(declare-fun c!1446671 () Bool)

(assert (=> b!7877300 (= c!1446671 (is-ElementMatch!21170 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))))))

(declare-fun call!730559 () Regex!21170)

(declare-fun bm!730554 () Bool)

(assert (=> bm!730554 (= call!730559 (derivativeStep!6401 (ite c!1446669 (regTwo!42853 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))) (ite c!1446670 (reg!21499 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))) (regOne!42852 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))))) (h!80353 s!14219)))))

(declare-fun b!7877301 () Bool)

(assert (=> b!7877301 (= e!4652392 (ite (= (h!80353 s!14219) (c!1446574 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))) EmptyExpr!21170 EmptyLang!21170))))

(declare-fun b!7877302 () Bool)

(assert (=> b!7877302 (= e!4652393 (Union!21170 call!730558 call!730559))))

(declare-fun bm!730555 () Bool)

(declare-fun call!730561 () Regex!21170)

(assert (=> bm!730555 (= call!730561 call!730559)))

(declare-fun bm!730556 () Bool)

(assert (=> bm!730556 (= call!730560 call!730561)))

(declare-fun b!7877303 () Bool)

(declare-fun c!1446668 () Bool)

(assert (=> b!7877303 (= c!1446668 (nullable!9434 (regOne!42852 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))))

(assert (=> b!7877303 (= e!4652391 e!4652395)))

(declare-fun b!7877304 () Bool)

(assert (=> b!7877304 (= e!4652391 (Concat!30015 call!730561 (ite c!1446613 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))))))

(assert (= (and d!2355736 c!1446667) b!7877295))

(assert (= (and d!2355736 (not c!1446667)) b!7877300))

(assert (= (and b!7877300 c!1446671) b!7877301))

(assert (= (and b!7877300 (not c!1446671)) b!7877296))

(assert (= (and b!7877296 c!1446669) b!7877302))

(assert (= (and b!7877296 (not c!1446669)) b!7877299))

(assert (= (and b!7877299 c!1446670) b!7877304))

(assert (= (and b!7877299 (not c!1446670)) b!7877303))

(assert (= (and b!7877303 c!1446668) b!7877297))

(assert (= (and b!7877303 (not c!1446668)) b!7877298))

(assert (= (or b!7877297 b!7877298) bm!730556))

(assert (= (or b!7877304 bm!730556) bm!730555))

(assert (= (or b!7877302 bm!730555) bm!730554))

(assert (= (or b!7877302 b!7877297) bm!730553))

(declare-fun m!8266728 () Bool)

(assert (=> d!2355736 m!8266728))

(declare-fun m!8266730 () Bool)

(assert (=> d!2355736 m!8266730))

(declare-fun m!8266732 () Bool)

(assert (=> bm!730553 m!8266732))

(declare-fun m!8266734 () Bool)

(assert (=> bm!730554 m!8266734))

(declare-fun m!8266738 () Bool)

(assert (=> b!7877303 m!8266738))

(assert (=> bm!730511 d!2355736))

(declare-fun b!7877305 () Bool)

(declare-fun e!4652402 () Bool)

(declare-fun call!730564 () Bool)

(assert (=> b!7877305 (= e!4652402 call!730564)))

(declare-fun bm!730557 () Bool)

(declare-fun c!1446673 () Bool)

(declare-fun c!1446672 () Bool)

(assert (=> bm!730557 (= call!730564 (validRegex!11580 (ite c!1446673 (reg!21499 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))) (ite c!1446672 (regOne!42853 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))) (regTwo!42852 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))))))))))

(declare-fun b!7877306 () Bool)

(declare-fun e!4652401 () Bool)

(declare-fun e!4652399 () Bool)

(assert (=> b!7877306 (= e!4652401 e!4652399)))

(assert (=> b!7877306 (= c!1446672 (is-Union!21170 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))))

(declare-fun b!7877307 () Bool)

(declare-fun e!4652397 () Bool)

(declare-fun call!730562 () Bool)

(assert (=> b!7877307 (= e!4652397 call!730562)))

(declare-fun b!7877308 () Bool)

(declare-fun e!4652398 () Bool)

(assert (=> b!7877308 (= e!4652398 e!4652401)))

(assert (=> b!7877308 (= c!1446673 (is-Star!21170 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))))

(declare-fun b!7877309 () Bool)

(declare-fun res!3128768 () Bool)

(declare-fun e!4652400 () Bool)

(assert (=> b!7877309 (=> res!3128768 e!4652400)))

(assert (=> b!7877309 (= res!3128768 (not (is-Concat!30015 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))))))))

(assert (=> b!7877309 (= e!4652399 e!4652400)))

(declare-fun bm!730558 () Bool)

(declare-fun call!730563 () Bool)

(assert (=> bm!730558 (= call!730563 call!730564)))

(declare-fun b!7877310 () Bool)

(declare-fun res!3128767 () Bool)

(assert (=> b!7877310 (=> (not res!3128767) (not e!4652397))))

(assert (=> b!7877310 (= res!3128767 call!730563)))

(assert (=> b!7877310 (= e!4652399 e!4652397)))

(declare-fun d!2355738 () Bool)

(declare-fun res!3128769 () Bool)

(assert (=> d!2355738 (=> res!3128769 e!4652398)))

(assert (=> d!2355738 (= res!3128769 (is-ElementMatch!21170 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))))

(assert (=> d!2355738 (= (validRegex!11580 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))) e!4652398)))

(declare-fun b!7877311 () Bool)

(assert (=> b!7877311 (= e!4652401 e!4652402)))

(declare-fun res!3128766 () Bool)

(assert (=> b!7877311 (= res!3128766 (not (nullable!9434 (reg!21499 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))))))

(assert (=> b!7877311 (=> (not res!3128766) (not e!4652402))))

(declare-fun b!7877312 () Bool)

(declare-fun e!4652396 () Bool)

(assert (=> b!7877312 (= e!4652400 e!4652396)))

(declare-fun res!3128765 () Bool)

(assert (=> b!7877312 (=> (not res!3128765) (not e!4652396))))

(assert (=> b!7877312 (= res!3128765 call!730562)))

(declare-fun b!7877313 () Bool)

(assert (=> b!7877313 (= e!4652396 call!730563)))

(declare-fun bm!730559 () Bool)

(assert (=> bm!730559 (= call!730562 (validRegex!11580 (ite c!1446672 (regTwo!42853 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))) (regOne!42852 (ite c!1446626 (reg!21499 r1!6200) (ite c!1446625 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))))))

(assert (= (and d!2355738 (not res!3128769)) b!7877308))

(assert (= (and b!7877308 c!1446673) b!7877311))

(assert (= (and b!7877308 (not c!1446673)) b!7877306))

(assert (= (and b!7877311 res!3128766) b!7877305))

(assert (= (and b!7877306 c!1446672) b!7877310))

(assert (= (and b!7877306 (not c!1446672)) b!7877309))

(assert (= (and b!7877310 res!3128767) b!7877307))

(assert (= (and b!7877309 (not res!3128768)) b!7877312))

(assert (= (and b!7877312 res!3128765) b!7877313))

(assert (= (or b!7877307 b!7877312) bm!730559))

(assert (= (or b!7877310 b!7877313) bm!730558))

(assert (= (or b!7877305 bm!730558) bm!730557))

(declare-fun m!8266752 () Bool)

(assert (=> bm!730557 m!8266752))

(declare-fun m!8266754 () Bool)

(assert (=> b!7877311 m!8266754))

(declare-fun m!8266756 () Bool)

(assert (=> bm!730559 m!8266756))

(assert (=> bm!730522 d!2355738))

(declare-fun b!7877324 () Bool)

(declare-fun e!4652414 () Bool)

(declare-fun call!730571 () Bool)

(assert (=> b!7877324 (= e!4652414 call!730571)))

(declare-fun bm!730564 () Bool)

(declare-fun c!1446680 () Bool)

(declare-fun c!1446679 () Bool)

(assert (=> bm!730564 (= call!730571 (validRegex!11580 (ite c!1446680 (reg!21499 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))) (ite c!1446679 (regOne!42853 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))) (regTwo!42852 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031))))))))))

(declare-fun b!7877325 () Bool)

(declare-fun e!4652413 () Bool)

(declare-fun e!4652411 () Bool)

(assert (=> b!7877325 (= e!4652413 e!4652411)))

(assert (=> b!7877325 (= c!1446679 (is-Union!21170 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))))))

(declare-fun b!7877326 () Bool)

(declare-fun e!4652409 () Bool)

(declare-fun call!730569 () Bool)

(assert (=> b!7877326 (= e!4652409 call!730569)))

(declare-fun b!7877327 () Bool)

(declare-fun e!4652410 () Bool)

(assert (=> b!7877327 (= e!4652410 e!4652413)))

(assert (=> b!7877327 (= c!1446680 (is-Star!21170 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))))))

(declare-fun b!7877328 () Bool)

(declare-fun res!3128773 () Bool)

(declare-fun e!4652412 () Bool)

(assert (=> b!7877328 (=> res!3128773 e!4652412)))

(assert (=> b!7877328 (= res!3128773 (not (is-Concat!30015 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031))))))))

(assert (=> b!7877328 (= e!4652411 e!4652412)))

(declare-fun bm!730565 () Bool)

(declare-fun call!730570 () Bool)

(assert (=> bm!730565 (= call!730570 call!730571)))

(declare-fun b!7877329 () Bool)

(declare-fun res!3128772 () Bool)

(assert (=> b!7877329 (=> (not res!3128772) (not e!4652409))))

(assert (=> b!7877329 (= res!3128772 call!730570)))

(assert (=> b!7877329 (= e!4652411 e!4652409)))

(declare-fun d!2355742 () Bool)

(declare-fun res!3128774 () Bool)

(assert (=> d!2355742 (=> res!3128774 e!4652410)))

(assert (=> d!2355742 (= res!3128774 (is-ElementMatch!21170 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))))))

(assert (=> d!2355742 (= (validRegex!11580 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))) e!4652410)))

(declare-fun b!7877330 () Bool)

(assert (=> b!7877330 (= e!4652413 e!4652414)))

(declare-fun res!3128771 () Bool)

(assert (=> b!7877330 (= res!3128771 (not (nullable!9434 (reg!21499 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))))))))

(assert (=> b!7877330 (=> (not res!3128771) (not e!4652414))))

(declare-fun b!7877331 () Bool)

(declare-fun e!4652408 () Bool)

(assert (=> b!7877331 (= e!4652412 e!4652408)))

(declare-fun res!3128770 () Bool)

(assert (=> b!7877331 (=> (not res!3128770) (not e!4652408))))

(assert (=> b!7877331 (= res!3128770 call!730569)))

(declare-fun b!7877332 () Bool)

(assert (=> b!7877332 (= e!4652408 call!730570)))

(declare-fun bm!730566 () Bool)

(assert (=> bm!730566 (= call!730569 (validRegex!11580 (ite c!1446679 (regTwo!42853 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))) (regOne!42852 (ite c!1446600 (reg!21499 lt!2681031) (ite c!1446599 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)))))))))

(assert (= (and d!2355742 (not res!3128774)) b!7877327))

(assert (= (and b!7877327 c!1446680) b!7877330))

(assert (= (and b!7877327 (not c!1446680)) b!7877325))

(assert (= (and b!7877330 res!3128771) b!7877324))

(assert (= (and b!7877325 c!1446679) b!7877329))

(assert (= (and b!7877325 (not c!1446679)) b!7877328))

(assert (= (and b!7877329 res!3128772) b!7877326))

(assert (= (and b!7877328 (not res!3128773)) b!7877331))

(assert (= (and b!7877331 res!3128770) b!7877332))

(assert (= (or b!7877326 b!7877331) bm!730566))

(assert (= (or b!7877329 b!7877332) bm!730565))

(assert (= (or b!7877324 bm!730565) bm!730564))

(declare-fun m!8266758 () Bool)

(assert (=> bm!730564 m!8266758))

(declare-fun m!8266760 () Bool)

(assert (=> b!7877330 m!8266760))

(declare-fun m!8266762 () Bool)

(assert (=> bm!730566 m!8266762))

(assert (=> bm!730500 d!2355742))

(declare-fun d!2355744 () Bool)

(assert (=> d!2355744 (= (isEmpty!42401 s!14219) (is-Nil!73905 s!14219))))

(assert (=> bm!730484 d!2355744))

(declare-fun b!7877333 () Bool)

(declare-fun e!4652418 () Regex!21170)

(assert (=> b!7877333 (= e!4652418 EmptyLang!21170)))

(declare-fun c!1446683 () Bool)

(declare-fun b!7877334 () Bool)

(assert (=> b!7877334 (= c!1446683 (is-Union!21170 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))))))

(declare-fun e!4652416 () Regex!21170)

(declare-fun e!4652417 () Regex!21170)

(assert (=> b!7877334 (= e!4652416 e!4652417)))

(declare-fun e!4652419 () Regex!21170)

(declare-fun call!730572 () Regex!21170)

(declare-fun call!730574 () Regex!21170)

(declare-fun b!7877335 () Bool)

(assert (=> b!7877335 (= e!4652419 (Union!21170 (Concat!30015 call!730574 (regTwo!42852 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))))) call!730572))))

(declare-fun d!2355746 () Bool)

(declare-fun lt!2681057 () Regex!21170)

(assert (=> d!2355746 (validRegex!11580 lt!2681057)))

(assert (=> d!2355746 (= lt!2681057 e!4652418)))

(declare-fun c!1446681 () Bool)

(assert (=> d!2355746 (= c!1446681 (or (is-EmptyExpr!21170 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))) (is-EmptyLang!21170 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))))))))

(assert (=> d!2355746 (validRegex!11580 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))))))

(assert (=> d!2355746 (= (derivativeStep!6401 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))) (h!80353 s!14219)) lt!2681057)))

(declare-fun b!7877336 () Bool)

(assert (=> b!7877336 (= e!4652419 (Union!21170 (Concat!30015 call!730574 (regTwo!42852 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))))) EmptyLang!21170))))

(declare-fun bm!730567 () Bool)

(assert (=> bm!730567 (= call!730572 (derivativeStep!6401 (ite c!1446683 (regOne!42853 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))) (regTwo!42852 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))))) (h!80353 s!14219)))))

(declare-fun b!7877337 () Bool)

(declare-fun e!4652415 () Regex!21170)

(assert (=> b!7877337 (= e!4652417 e!4652415)))

(declare-fun c!1446684 () Bool)

(assert (=> b!7877337 (= c!1446684 (is-Star!21170 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))))))

(declare-fun b!7877338 () Bool)

(assert (=> b!7877338 (= e!4652418 e!4652416)))

(declare-fun c!1446685 () Bool)

(assert (=> b!7877338 (= c!1446685 (is-ElementMatch!21170 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))))))

(declare-fun bm!730568 () Bool)

(declare-fun call!730573 () Regex!21170)

(assert (=> bm!730568 (= call!730573 (derivativeStep!6401 (ite c!1446683 (regTwo!42853 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))) (ite c!1446684 (reg!21499 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))) (regOne!42852 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))))) (h!80353 s!14219)))))

(declare-fun b!7877339 () Bool)

(assert (=> b!7877339 (= e!4652416 (ite (= (h!80353 s!14219) (c!1446574 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))))) EmptyExpr!21170 EmptyLang!21170))))

(declare-fun b!7877340 () Bool)

(assert (=> b!7877340 (= e!4652417 (Union!21170 call!730572 call!730573))))

(declare-fun bm!730569 () Bool)

(declare-fun call!730575 () Regex!21170)

(assert (=> bm!730569 (= call!730575 call!730573)))

(declare-fun bm!730570 () Bool)

(assert (=> bm!730570 (= call!730574 call!730575)))

(declare-fun b!7877341 () Bool)

(declare-fun c!1446682 () Bool)

(assert (=> b!7877341 (= c!1446682 (nullable!9434 (regOne!42852 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200))))))))

(assert (=> b!7877341 (= e!4652415 e!4652419)))

(declare-fun b!7877342 () Bool)

(assert (=> b!7877342 (= e!4652415 (Concat!30015 call!730575 (ite c!1446618 (regTwo!42853 r1!6200) (ite c!1446619 (reg!21499 r1!6200) (regOne!42852 r1!6200)))))))

(assert (= (and d!2355746 c!1446681) b!7877333))

(assert (= (and d!2355746 (not c!1446681)) b!7877338))

(assert (= (and b!7877338 c!1446685) b!7877339))

(assert (= (and b!7877338 (not c!1446685)) b!7877334))

(assert (= (and b!7877334 c!1446683) b!7877340))

(assert (= (and b!7877334 (not c!1446683)) b!7877337))

(assert (= (and b!7877337 c!1446684) b!7877342))

(assert (= (and b!7877337 (not c!1446684)) b!7877341))

(assert (= (and b!7877341 c!1446682) b!7877335))

(assert (= (and b!7877341 (not c!1446682)) b!7877336))

(assert (= (or b!7877335 b!7877336) bm!730570))

(assert (= (or b!7877342 bm!730570) bm!730569))

(assert (= (or b!7877340 bm!730569) bm!730568))

(assert (= (or b!7877340 b!7877335) bm!730567))

(declare-fun m!8266770 () Bool)

(assert (=> d!2355746 m!8266770))

(declare-fun m!8266772 () Bool)

(assert (=> d!2355746 m!8266772))

(declare-fun m!8266774 () Bool)

(assert (=> bm!730567 m!8266774))

(declare-fun m!8266776 () Bool)

(assert (=> bm!730568 m!8266776))

(declare-fun m!8266778 () Bool)

(assert (=> b!7877341 m!8266778))

(assert (=> bm!730516 d!2355746))

(declare-fun d!2355750 () Bool)

(assert (=> d!2355750 (= (nullable!9434 lt!2681031) (nullableFct!3728 lt!2681031))))

(declare-fun bs!1967343 () Bool)

(assert (= bs!1967343 d!2355750))

(declare-fun m!8266780 () Bool)

(assert (=> bs!1967343 m!8266780))

(assert (=> b!7877049 d!2355750))

(declare-fun d!2355752 () Bool)

(assert (=> d!2355752 (= (isEmpty!42401 (tail!15655 s!14219)) (is-Nil!73905 (tail!15655 s!14219)))))

(assert (=> b!7876919 d!2355752))

(declare-fun d!2355754 () Bool)

(assert (=> d!2355754 (= (tail!15655 s!14219) (t!388764 s!14219))))

(assert (=> b!7876919 d!2355754))

(declare-fun b!7877343 () Bool)

(declare-fun e!4652426 () Bool)

(declare-fun call!730578 () Bool)

(assert (=> b!7877343 (= e!4652426 call!730578)))

(declare-fun bm!730571 () Bool)

(declare-fun c!1446687 () Bool)

(declare-fun c!1446686 () Bool)

(assert (=> bm!730571 (= call!730578 (validRegex!11580 (ite c!1446687 (reg!21499 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))) (ite c!1446686 (regOne!42853 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))) (regTwo!42852 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030)))))))))

(declare-fun b!7877344 () Bool)

(declare-fun e!4652425 () Bool)

(declare-fun e!4652423 () Bool)

(assert (=> b!7877344 (= e!4652425 e!4652423)))

(assert (=> b!7877344 (= c!1446686 (is-Union!21170 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))))))

(declare-fun b!7877345 () Bool)

(declare-fun e!4652421 () Bool)

(declare-fun call!730576 () Bool)

(assert (=> b!7877345 (= e!4652421 call!730576)))

(declare-fun b!7877346 () Bool)

(declare-fun e!4652422 () Bool)

(assert (=> b!7877346 (= e!4652422 e!4652425)))

(assert (=> b!7877346 (= c!1446687 (is-Star!21170 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))))))

(declare-fun b!7877347 () Bool)

(declare-fun res!3128778 () Bool)

(declare-fun e!4652424 () Bool)

(assert (=> b!7877347 (=> res!3128778 e!4652424)))

(assert (=> b!7877347 (= res!3128778 (not (is-Concat!30015 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030)))))))

(assert (=> b!7877347 (= e!4652423 e!4652424)))

(declare-fun bm!730572 () Bool)

(declare-fun call!730577 () Bool)

(assert (=> bm!730572 (= call!730577 call!730578)))

(declare-fun b!7877348 () Bool)

(declare-fun res!3128777 () Bool)

(assert (=> b!7877348 (=> (not res!3128777) (not e!4652421))))

(assert (=> b!7877348 (= res!3128777 call!730577)))

(assert (=> b!7877348 (= e!4652423 e!4652421)))

(declare-fun d!2355756 () Bool)

(declare-fun res!3128779 () Bool)

(assert (=> d!2355756 (=> res!3128779 e!4652422)))

(assert (=> d!2355756 (= res!3128779 (is-ElementMatch!21170 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))))))

(assert (=> d!2355756 (= (validRegex!11580 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))) e!4652422)))

(declare-fun b!7877349 () Bool)

(assert (=> b!7877349 (= e!4652425 e!4652426)))

(declare-fun res!3128776 () Bool)

(assert (=> b!7877349 (= res!3128776 (not (nullable!9434 (reg!21499 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))))))))

(assert (=> b!7877349 (=> (not res!3128776) (not e!4652426))))

(declare-fun b!7877350 () Bool)

(declare-fun e!4652420 () Bool)

(assert (=> b!7877350 (= e!4652424 e!4652420)))

(declare-fun res!3128775 () Bool)

(assert (=> b!7877350 (=> (not res!3128775) (not e!4652420))))

(assert (=> b!7877350 (= res!3128775 call!730576)))

(declare-fun b!7877351 () Bool)

(assert (=> b!7877351 (= e!4652420 call!730577)))

(declare-fun bm!730573 () Bool)

(assert (=> bm!730573 (= call!730576 (validRegex!11580 (ite c!1446686 (regTwo!42853 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))) (regOne!42852 (ite c!1446621 (regTwo!42853 lt!2681030) (regOne!42852 lt!2681030))))))))

(assert (= (and d!2355756 (not res!3128779)) b!7877346))

(assert (= (and b!7877346 c!1446687) b!7877349))

(assert (= (and b!7877346 (not c!1446687)) b!7877344))

(assert (= (and b!7877349 res!3128776) b!7877343))

(assert (= (and b!7877344 c!1446686) b!7877348))

(assert (= (and b!7877344 (not c!1446686)) b!7877347))

(assert (= (and b!7877348 res!3128777) b!7877345))

(assert (= (and b!7877347 (not res!3128778)) b!7877350))

(assert (= (and b!7877350 res!3128775) b!7877351))

(assert (= (or b!7877345 b!7877350) bm!730573))

(assert (= (or b!7877348 b!7877351) bm!730572))

(assert (= (or b!7877343 bm!730572) bm!730571))

(declare-fun m!8266782 () Bool)

(assert (=> bm!730571 m!8266782))

(declare-fun m!8266784 () Bool)

(assert (=> b!7877349 m!8266784))

(declare-fun m!8266786 () Bool)

(assert (=> bm!730573 m!8266786))

(assert (=> bm!730521 d!2355756))

(declare-fun d!2355760 () Bool)

(assert (=> d!2355760 (= (nullable!9434 (reg!21499 r2!6138)) (nullableFct!3728 (reg!21499 r2!6138)))))

(declare-fun bs!1967344 () Bool)

(assert (= bs!1967344 d!2355760))

(declare-fun m!8266788 () Bool)

(assert (=> bs!1967344 m!8266788))

(assert (=> b!7877091 d!2355760))

(declare-fun d!2355762 () Bool)

(assert (=> d!2355762 (= (isEmpty!42401 (tail!15655 (t!388764 s!14219))) (is-Nil!73905 (tail!15655 (t!388764 s!14219))))))

(assert (=> b!7877051 d!2355762))

(declare-fun d!2355764 () Bool)

(assert (=> d!2355764 (= (tail!15655 (t!388764 s!14219)) (t!388764 (t!388764 s!14219)))))

(assert (=> b!7877051 d!2355764))

(declare-fun b!7877352 () Bool)

(declare-fun e!4652430 () Regex!21170)

(assert (=> b!7877352 (= e!4652430 EmptyLang!21170)))

(declare-fun b!7877353 () Bool)

(declare-fun c!1446690 () Bool)

(assert (=> b!7877353 (= c!1446690 (is-Union!21170 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))))))

(declare-fun e!4652428 () Regex!21170)

(declare-fun e!4652429 () Regex!21170)

(assert (=> b!7877353 (= e!4652428 e!4652429)))

(declare-fun call!730581 () Regex!21170)

(declare-fun b!7877354 () Bool)

(declare-fun call!730579 () Regex!21170)

(declare-fun e!4652431 () Regex!21170)

(assert (=> b!7877354 (= e!4652431 (Union!21170 (Concat!30015 call!730581 (regTwo!42852 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))))) call!730579))))

(declare-fun d!2355766 () Bool)

(declare-fun lt!2681058 () Regex!21170)

(assert (=> d!2355766 (validRegex!11580 lt!2681058)))

(assert (=> d!2355766 (= lt!2681058 e!4652430)))

(declare-fun c!1446688 () Bool)

(assert (=> d!2355766 (= c!1446688 (or (is-EmptyExpr!21170 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))) (is-EmptyLang!21170 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))))))))

(assert (=> d!2355766 (validRegex!11580 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))))))

(assert (=> d!2355766 (= (derivativeStep!6401 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))) (h!80353 s!14219)) lt!2681058)))

(declare-fun b!7877355 () Bool)

(assert (=> b!7877355 (= e!4652431 (Union!21170 (Concat!30015 call!730581 (regTwo!42852 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))))) EmptyLang!21170))))

(declare-fun bm!730574 () Bool)

(assert (=> bm!730574 (= call!730579 (derivativeStep!6401 (ite c!1446690 (regOne!42853 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))) (regTwo!42852 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))))) (h!80353 s!14219)))))

(declare-fun b!7877356 () Bool)

(declare-fun e!4652427 () Regex!21170)

(assert (=> b!7877356 (= e!4652429 e!4652427)))

(declare-fun c!1446691 () Bool)

(assert (=> b!7877356 (= c!1446691 (is-Star!21170 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))))))

(declare-fun b!7877357 () Bool)

(assert (=> b!7877357 (= e!4652430 e!4652428)))

(declare-fun c!1446692 () Bool)

(assert (=> b!7877357 (= c!1446692 (is-ElementMatch!21170 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))))))

(declare-fun bm!730575 () Bool)

(declare-fun call!730580 () Regex!21170)

(assert (=> bm!730575 (= call!730580 (derivativeStep!6401 (ite c!1446690 (regTwo!42853 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))) (ite c!1446691 (reg!21499 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))) (regOne!42852 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))))) (h!80353 s!14219)))))

(declare-fun b!7877358 () Bool)

(assert (=> b!7877358 (= e!4652428 (ite (= (h!80353 s!14219) (c!1446574 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))))) EmptyExpr!21170 EmptyLang!21170))))

(declare-fun b!7877359 () Bool)

(assert (=> b!7877359 (= e!4652429 (Union!21170 call!730579 call!730580))))

(declare-fun bm!730576 () Bool)

(declare-fun call!730582 () Regex!21170)

(assert (=> bm!730576 (= call!730582 call!730580)))

(declare-fun bm!730577 () Bool)

(assert (=> bm!730577 (= call!730581 call!730582)))

(declare-fun c!1446689 () Bool)

(declare-fun b!7877360 () Bool)

(assert (=> b!7877360 (= c!1446689 (nullable!9434 (regOne!42852 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138))))))))

(assert (=> b!7877360 (= e!4652427 e!4652431)))

(declare-fun b!7877361 () Bool)

(assert (=> b!7877361 (= e!4652427 (Concat!30015 call!730582 (ite c!1446613 (regTwo!42853 r2!6138) (ite c!1446614 (reg!21499 r2!6138) (regOne!42852 r2!6138)))))))

(assert (= (and d!2355766 c!1446688) b!7877352))

(assert (= (and d!2355766 (not c!1446688)) b!7877357))

(assert (= (and b!7877357 c!1446692) b!7877358))

(assert (= (and b!7877357 (not c!1446692)) b!7877353))

(assert (= (and b!7877353 c!1446690) b!7877359))

(assert (= (and b!7877353 (not c!1446690)) b!7877356))

(assert (= (and b!7877356 c!1446691) b!7877361))

(assert (= (and b!7877356 (not c!1446691)) b!7877360))

(assert (= (and b!7877360 c!1446689) b!7877354))

(assert (= (and b!7877360 (not c!1446689)) b!7877355))

(assert (= (or b!7877354 b!7877355) bm!730577))

(assert (= (or b!7877361 bm!730577) bm!730576))

(assert (= (or b!7877359 bm!730576) bm!730575))

(assert (= (or b!7877359 b!7877354) bm!730574))

(declare-fun m!8266790 () Bool)

(assert (=> d!2355766 m!8266790))

(declare-fun m!8266792 () Bool)

(assert (=> d!2355766 m!8266792))

(declare-fun m!8266794 () Bool)

(assert (=> bm!730574 m!8266794))

(declare-fun m!8266796 () Bool)

(assert (=> bm!730575 m!8266796))

(declare-fun m!8266798 () Bool)

(assert (=> b!7877360 m!8266798))

(assert (=> bm!730512 d!2355766))

(declare-fun d!2355770 () Bool)

(assert (=> d!2355770 (= (head!16112 (t!388764 s!14219)) (h!80353 (t!388764 s!14219)))))

(assert (=> b!7877062 d!2355770))

(declare-fun bm!730582 () Bool)

(declare-fun call!730587 () Bool)

(assert (=> bm!730582 (= call!730587 (isEmpty!42401 (tail!15655 (t!388764 s!14219))))))

(declare-fun b!7877372 () Bool)

(declare-fun e!4652439 () Bool)

(assert (=> b!7877372 (= e!4652439 (nullable!9434 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219)))))))

(declare-fun b!7877373 () Bool)

(declare-fun res!3128783 () Bool)

(declare-fun e!4652438 () Bool)

(assert (=> b!7877373 (=> res!3128783 e!4652438)))

(declare-fun e!4652440 () Bool)

(assert (=> b!7877373 (= res!3128783 e!4652440)))

(declare-fun res!3128780 () Bool)

(assert (=> b!7877373 (=> (not res!3128780) (not e!4652440))))

(declare-fun lt!2681060 () Bool)

(assert (=> b!7877373 (= res!3128780 lt!2681060)))

(declare-fun b!7877374 () Bool)

(declare-fun res!3128785 () Bool)

(assert (=> b!7877374 (=> (not res!3128785) (not e!4652440))))

(assert (=> b!7877374 (= res!3128785 (isEmpty!42401 (tail!15655 (tail!15655 (t!388764 s!14219)))))))

(declare-fun b!7877375 () Bool)

(declare-fun e!4652441 () Bool)

(declare-fun e!4652442 () Bool)

(assert (=> b!7877375 (= e!4652441 e!4652442)))

(declare-fun res!3128787 () Bool)

(assert (=> b!7877375 (=> res!3128787 e!4652442)))

(assert (=> b!7877375 (= res!3128787 call!730587)))

(declare-fun b!7877376 () Bool)

(declare-fun e!4652443 () Bool)

(assert (=> b!7877376 (= e!4652443 (not lt!2681060))))

(declare-fun b!7877377 () Bool)

(declare-fun res!3128786 () Bool)

(assert (=> b!7877377 (=> res!3128786 e!4652442)))

(assert (=> b!7877377 (= res!3128786 (not (isEmpty!42401 (tail!15655 (tail!15655 (t!388764 s!14219))))))))

(declare-fun b!7877378 () Bool)

(assert (=> b!7877378 (= e!4652442 (not (= (head!16112 (tail!15655 (t!388764 s!14219))) (c!1446574 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219)))))))))

(declare-fun b!7877379 () Bool)

(declare-fun e!4652437 () Bool)

(assert (=> b!7877379 (= e!4652437 (= lt!2681060 call!730587))))

(declare-fun d!2355776 () Bool)

(assert (=> d!2355776 e!4652437))

(declare-fun c!1446699 () Bool)

(assert (=> d!2355776 (= c!1446699 (is-EmptyExpr!21170 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219)))))))

(assert (=> d!2355776 (= lt!2681060 e!4652439)))

(declare-fun c!1446700 () Bool)

(assert (=> d!2355776 (= c!1446700 (isEmpty!42401 (tail!15655 (t!388764 s!14219))))))

(assert (=> d!2355776 (validRegex!11580 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219))))))

(assert (=> d!2355776 (= (matchR!10606 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219))) (tail!15655 (t!388764 s!14219))) lt!2681060)))

(declare-fun b!7877380 () Bool)

(declare-fun res!3128781 () Bool)

(assert (=> b!7877380 (=> (not res!3128781) (not e!4652440))))

(assert (=> b!7877380 (= res!3128781 (not call!730587))))

(declare-fun b!7877381 () Bool)

(assert (=> b!7877381 (= e!4652437 e!4652443)))

(declare-fun c!1446698 () Bool)

(assert (=> b!7877381 (= c!1446698 (is-EmptyLang!21170 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219)))))))

(declare-fun b!7877382 () Bool)

(assert (=> b!7877382 (= e!4652438 e!4652441)))

(declare-fun res!3128784 () Bool)

(assert (=> b!7877382 (=> (not res!3128784) (not e!4652441))))

(assert (=> b!7877382 (= res!3128784 (not lt!2681060))))

(declare-fun b!7877383 () Bool)

(assert (=> b!7877383 (= e!4652440 (= (head!16112 (tail!15655 (t!388764 s!14219))) (c!1446574 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219))))))))

(declare-fun b!7877384 () Bool)

(assert (=> b!7877384 (= e!4652439 (matchR!10606 (derivativeStep!6401 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219))) (head!16112 (tail!15655 (t!388764 s!14219)))) (tail!15655 (tail!15655 (t!388764 s!14219)))))))

(declare-fun b!7877385 () Bool)

(declare-fun res!3128782 () Bool)

(assert (=> b!7877385 (=> res!3128782 e!4652438)))

(assert (=> b!7877385 (= res!3128782 (not (is-ElementMatch!21170 (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219))))))))

(assert (=> b!7877385 (= e!4652443 e!4652438)))

(assert (= (and d!2355776 c!1446700) b!7877372))

(assert (= (and d!2355776 (not c!1446700)) b!7877384))

(assert (= (and d!2355776 c!1446699) b!7877379))

(assert (= (and d!2355776 (not c!1446699)) b!7877381))

(assert (= (and b!7877381 c!1446698) b!7877376))

(assert (= (and b!7877381 (not c!1446698)) b!7877385))

(assert (= (and b!7877385 (not res!3128782)) b!7877373))

(assert (= (and b!7877373 res!3128780) b!7877380))

(assert (= (and b!7877380 res!3128781) b!7877374))

(assert (= (and b!7877374 res!3128785) b!7877383))

(assert (= (and b!7877373 (not res!3128783)) b!7877382))

(assert (= (and b!7877382 res!3128784) b!7877375))

(assert (= (and b!7877375 (not res!3128787)) b!7877377))

(assert (= (and b!7877377 (not res!3128786)) b!7877378))

(assert (= (or b!7877379 b!7877375 b!7877380) bm!730582))

(assert (=> b!7877374 m!8266654))

(declare-fun m!8266800 () Bool)

(assert (=> b!7877374 m!8266800))

(assert (=> b!7877374 m!8266800))

(declare-fun m!8266802 () Bool)

(assert (=> b!7877374 m!8266802))

(assert (=> bm!730582 m!8266654))

(assert (=> bm!730582 m!8266656))

(assert (=> d!2355776 m!8266654))

(assert (=> d!2355776 m!8266656))

(assert (=> d!2355776 m!8266664))

(declare-fun m!8266804 () Bool)

(assert (=> d!2355776 m!8266804))

(assert (=> b!7877383 m!8266654))

(declare-fun m!8266806 () Bool)

(assert (=> b!7877383 m!8266806))

(assert (=> b!7877372 m!8266664))

(declare-fun m!8266810 () Bool)

(assert (=> b!7877372 m!8266810))

(assert (=> b!7877377 m!8266654))

(assert (=> b!7877377 m!8266800))

(assert (=> b!7877377 m!8266800))

(assert (=> b!7877377 m!8266802))

(assert (=> b!7877378 m!8266654))

(assert (=> b!7877378 m!8266806))

(assert (=> b!7877384 m!8266654))

(assert (=> b!7877384 m!8266806))

(assert (=> b!7877384 m!8266664))

(assert (=> b!7877384 m!8266806))

(declare-fun m!8266812 () Bool)

(assert (=> b!7877384 m!8266812))

(assert (=> b!7877384 m!8266654))

(assert (=> b!7877384 m!8266800))

(assert (=> b!7877384 m!8266812))

(assert (=> b!7877384 m!8266800))

(declare-fun m!8266820 () Bool)

(assert (=> b!7877384 m!8266820))

(assert (=> b!7877063 d!2355776))

(declare-fun b!7877386 () Bool)

(declare-fun e!4652447 () Regex!21170)

(assert (=> b!7877386 (= e!4652447 EmptyLang!21170)))

(declare-fun b!7877387 () Bool)

(declare-fun c!1446703 () Bool)

(assert (=> b!7877387 (= c!1446703 (is-Union!21170 lt!2681031))))

(declare-fun e!4652445 () Regex!21170)

(declare-fun e!4652446 () Regex!21170)

(assert (=> b!7877387 (= e!4652445 e!4652446)))

(declare-fun call!730590 () Regex!21170)

(declare-fun b!7877388 () Bool)

(declare-fun call!730588 () Regex!21170)

(declare-fun e!4652448 () Regex!21170)

(assert (=> b!7877388 (= e!4652448 (Union!21170 (Concat!30015 call!730590 (regTwo!42852 lt!2681031)) call!730588))))

(declare-fun d!2355778 () Bool)

(declare-fun lt!2681061 () Regex!21170)

(assert (=> d!2355778 (validRegex!11580 lt!2681061)))

(assert (=> d!2355778 (= lt!2681061 e!4652447)))

(declare-fun c!1446701 () Bool)

(assert (=> d!2355778 (= c!1446701 (or (is-EmptyExpr!21170 lt!2681031) (is-EmptyLang!21170 lt!2681031)))))

(assert (=> d!2355778 (validRegex!11580 lt!2681031)))

(assert (=> d!2355778 (= (derivativeStep!6401 lt!2681031 (head!16112 (t!388764 s!14219))) lt!2681061)))

(declare-fun b!7877389 () Bool)

(assert (=> b!7877389 (= e!4652448 (Union!21170 (Concat!30015 call!730590 (regTwo!42852 lt!2681031)) EmptyLang!21170))))

(declare-fun bm!730583 () Bool)

(assert (=> bm!730583 (= call!730588 (derivativeStep!6401 (ite c!1446703 (regOne!42853 lt!2681031) (regTwo!42852 lt!2681031)) (head!16112 (t!388764 s!14219))))))

(declare-fun b!7877390 () Bool)

(declare-fun e!4652444 () Regex!21170)

(assert (=> b!7877390 (= e!4652446 e!4652444)))

(declare-fun c!1446704 () Bool)

(assert (=> b!7877390 (= c!1446704 (is-Star!21170 lt!2681031))))

(declare-fun b!7877391 () Bool)

(assert (=> b!7877391 (= e!4652447 e!4652445)))

(declare-fun c!1446705 () Bool)

(assert (=> b!7877391 (= c!1446705 (is-ElementMatch!21170 lt!2681031))))

(declare-fun bm!730584 () Bool)

(declare-fun call!730589 () Regex!21170)

(assert (=> bm!730584 (= call!730589 (derivativeStep!6401 (ite c!1446703 (regTwo!42853 lt!2681031) (ite c!1446704 (reg!21499 lt!2681031) (regOne!42852 lt!2681031))) (head!16112 (t!388764 s!14219))))))

(declare-fun b!7877392 () Bool)

(assert (=> b!7877392 (= e!4652445 (ite (= (head!16112 (t!388764 s!14219)) (c!1446574 lt!2681031)) EmptyExpr!21170 EmptyLang!21170))))

(declare-fun b!7877393 () Bool)

(assert (=> b!7877393 (= e!4652446 (Union!21170 call!730588 call!730589))))

(declare-fun bm!730585 () Bool)

(declare-fun call!730591 () Regex!21170)

(assert (=> bm!730585 (= call!730591 call!730589)))

(declare-fun bm!730586 () Bool)

(assert (=> bm!730586 (= call!730590 call!730591)))

(declare-fun b!7877394 () Bool)

(declare-fun c!1446702 () Bool)

(assert (=> b!7877394 (= c!1446702 (nullable!9434 (regOne!42852 lt!2681031)))))

(assert (=> b!7877394 (= e!4652444 e!4652448)))

(declare-fun b!7877395 () Bool)

(assert (=> b!7877395 (= e!4652444 (Concat!30015 call!730591 lt!2681031))))

(assert (= (and d!2355778 c!1446701) b!7877386))

(assert (= (and d!2355778 (not c!1446701)) b!7877391))

(assert (= (and b!7877391 c!1446705) b!7877392))

(assert (= (and b!7877391 (not c!1446705)) b!7877387))

(assert (= (and b!7877387 c!1446703) b!7877393))

(assert (= (and b!7877387 (not c!1446703)) b!7877390))

(assert (= (and b!7877390 c!1446704) b!7877395))

(assert (= (and b!7877390 (not c!1446704)) b!7877394))

(assert (= (and b!7877394 c!1446702) b!7877388))

(assert (= (and b!7877394 (not c!1446702)) b!7877389))

(assert (= (or b!7877388 b!7877389) bm!730586))

(assert (= (or b!7877395 bm!730586) bm!730585))

(assert (= (or b!7877393 bm!730585) bm!730584))

(assert (= (or b!7877393 b!7877388) bm!730583))

(declare-fun m!8266824 () Bool)

(assert (=> d!2355778 m!8266824))

(assert (=> d!2355778 m!8266564))

(assert (=> bm!730583 m!8266660))

(declare-fun m!8266826 () Bool)

(assert (=> bm!730583 m!8266826))

(assert (=> bm!730584 m!8266660))

(declare-fun m!8266828 () Bool)

(assert (=> bm!730584 m!8266828))

(declare-fun m!8266830 () Bool)

(assert (=> b!7877394 m!8266830))

(assert (=> b!7877063 d!2355778))

(assert (=> b!7877063 d!2355770))

(assert (=> b!7877063 d!2355764))

(declare-fun b!7877405 () Bool)

(declare-fun e!4652462 () Bool)

(declare-fun call!730597 () Bool)

(assert (=> b!7877405 (= e!4652462 call!730597)))

(declare-fun c!1446709 () Bool)

(declare-fun bm!730590 () Bool)

(declare-fun c!1446708 () Bool)

(assert (=> bm!730590 (= call!730597 (validRegex!11580 (ite c!1446709 (reg!21499 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))) (ite c!1446708 (regOne!42853 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))) (regTwo!42852 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))))))))))

(declare-fun b!7877406 () Bool)

(declare-fun e!4652461 () Bool)

(declare-fun e!4652459 () Bool)

(assert (=> b!7877406 (= e!4652461 e!4652459)))

(assert (=> b!7877406 (= c!1446708 (is-Union!21170 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))))

(declare-fun b!7877407 () Bool)

(declare-fun e!4652457 () Bool)

(declare-fun call!730595 () Bool)

(assert (=> b!7877407 (= e!4652457 call!730595)))

(declare-fun b!7877408 () Bool)

(declare-fun e!4652458 () Bool)

(assert (=> b!7877408 (= e!4652458 e!4652461)))

(assert (=> b!7877408 (= c!1446709 (is-Star!21170 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))))

(declare-fun b!7877409 () Bool)

(declare-fun res!3128796 () Bool)

(declare-fun e!4652460 () Bool)

(assert (=> b!7877409 (=> res!3128796 e!4652460)))

(assert (=> b!7877409 (= res!3128796 (not (is-Concat!30015 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138))))))))

(assert (=> b!7877409 (= e!4652459 e!4652460)))

(declare-fun bm!730591 () Bool)

(declare-fun call!730596 () Bool)

(assert (=> bm!730591 (= call!730596 call!730597)))

(declare-fun b!7877410 () Bool)

(declare-fun res!3128795 () Bool)

(assert (=> b!7877410 (=> (not res!3128795) (not e!4652457))))

(assert (=> b!7877410 (= res!3128795 call!730596)))

(assert (=> b!7877410 (= e!4652459 e!4652457)))

(declare-fun d!2355782 () Bool)

(declare-fun res!3128797 () Bool)

(assert (=> d!2355782 (=> res!3128797 e!4652458)))

(assert (=> d!2355782 (= res!3128797 (is-ElementMatch!21170 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))))

(assert (=> d!2355782 (= (validRegex!11580 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))) e!4652458)))

(declare-fun b!7877411 () Bool)

(assert (=> b!7877411 (= e!4652461 e!4652462)))

(declare-fun res!3128794 () Bool)

(assert (=> b!7877411 (= res!3128794 (not (nullable!9434 (reg!21499 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))))))

(assert (=> b!7877411 (=> (not res!3128794) (not e!4652462))))

(declare-fun b!7877412 () Bool)

(declare-fun e!4652456 () Bool)

(assert (=> b!7877412 (= e!4652460 e!4652456)))

(declare-fun res!3128793 () Bool)

(assert (=> b!7877412 (=> (not res!3128793) (not e!4652456))))

(assert (=> b!7877412 (= res!3128793 call!730595)))

(declare-fun b!7877413 () Bool)

(assert (=> b!7877413 (= e!4652456 call!730596)))

(declare-fun bm!730592 () Bool)

(assert (=> bm!730592 (= call!730595 (validRegex!11580 (ite c!1446708 (regTwo!42853 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))) (regOne!42852 (ite c!1446635 (reg!21499 r2!6138) (ite c!1446634 (regOne!42853 r2!6138) (regTwo!42852 r2!6138)))))))))

(assert (= (and d!2355782 (not res!3128797)) b!7877408))

(assert (= (and b!7877408 c!1446709) b!7877411))

(assert (= (and b!7877408 (not c!1446709)) b!7877406))

(assert (= (and b!7877411 res!3128794) b!7877405))

(assert (= (and b!7877406 c!1446708) b!7877410))

(assert (= (and b!7877406 (not c!1446708)) b!7877409))

(assert (= (and b!7877410 res!3128795) b!7877407))

(assert (= (and b!7877409 (not res!3128796)) b!7877412))

(assert (= (and b!7877412 res!3128793) b!7877413))

(assert (= (or b!7877407 b!7877412) bm!730592))

(assert (= (or b!7877410 b!7877413) bm!730591))

(assert (= (or b!7877405 bm!730591) bm!730590))

(declare-fun m!8266836 () Bool)

(assert (=> bm!730590 m!8266836))

(declare-fun m!8266840 () Bool)

(assert (=> b!7877411 m!8266840))

(declare-fun m!8266842 () Bool)

(assert (=> bm!730592 m!8266842))

(assert (=> bm!730526 d!2355782))

(declare-fun b!7877423 () Bool)

(declare-fun e!4652473 () Regex!21170)

(assert (=> b!7877423 (= e!4652473 EmptyLang!21170)))

(declare-fun b!7877424 () Bool)

(declare-fun c!1446714 () Bool)

(assert (=> b!7877424 (= c!1446714 (is-Union!21170 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))))))

(declare-fun e!4652471 () Regex!21170)

(declare-fun e!4652472 () Regex!21170)

(assert (=> b!7877424 (= e!4652471 e!4652472)))

(declare-fun e!4652474 () Regex!21170)

(declare-fun call!730603 () Regex!21170)

(declare-fun b!7877425 () Bool)

(declare-fun call!730601 () Regex!21170)

(assert (=> b!7877425 (= e!4652474 (Union!21170 (Concat!30015 call!730603 (regTwo!42852 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))) call!730601))))

(declare-fun d!2355786 () Bool)

(declare-fun lt!2681062 () Regex!21170)

(assert (=> d!2355786 (validRegex!11580 lt!2681062)))

(assert (=> d!2355786 (= lt!2681062 e!4652473)))

(declare-fun c!1446712 () Bool)

(assert (=> d!2355786 (= c!1446712 (or (is-EmptyExpr!21170 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))) (is-EmptyLang!21170 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))))

(assert (=> d!2355786 (validRegex!11580 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))

(assert (=> d!2355786 (= (derivativeStep!6401 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)) (h!80353 s!14219)) lt!2681062)))

(declare-fun b!7877426 () Bool)

(assert (=> b!7877426 (= e!4652474 (Union!21170 (Concat!30015 call!730603 (regTwo!42852 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))) EmptyLang!21170))))

(declare-fun bm!730596 () Bool)

(assert (=> bm!730596 (= call!730601 (derivativeStep!6401 (ite c!1446714 (regOne!42853 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))) (regTwo!42852 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))) (h!80353 s!14219)))))

(declare-fun b!7877427 () Bool)

(declare-fun e!4652470 () Regex!21170)

(assert (=> b!7877427 (= e!4652472 e!4652470)))

(declare-fun c!1446715 () Bool)

(assert (=> b!7877427 (= c!1446715 (is-Star!21170 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))))))

(declare-fun b!7877428 () Bool)

(assert (=> b!7877428 (= e!4652473 e!4652471)))

(declare-fun c!1446716 () Bool)

(assert (=> b!7877428 (= c!1446716 (is-ElementMatch!21170 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))))))

(declare-fun bm!730597 () Bool)

(declare-fun call!730602 () Regex!21170)

(assert (=> bm!730597 (= call!730602 (derivativeStep!6401 (ite c!1446714 (regTwo!42853 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))) (ite c!1446715 (reg!21499 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))) (regOne!42852 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))))) (h!80353 s!14219)))))

(declare-fun b!7877429 () Bool)

(assert (=> b!7877429 (= e!4652471 (ite (= (h!80353 s!14219) (c!1446574 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))) EmptyExpr!21170 EmptyLang!21170))))

(declare-fun b!7877430 () Bool)

(assert (=> b!7877430 (= e!4652472 (Union!21170 call!730601 call!730602))))

(declare-fun bm!730598 () Bool)

(declare-fun call!730604 () Regex!21170)

(assert (=> bm!730598 (= call!730604 call!730602)))

(declare-fun bm!730599 () Bool)

(assert (=> bm!730599 (= call!730603 call!730604)))

(declare-fun b!7877431 () Bool)

(declare-fun c!1446713 () Bool)

(assert (=> b!7877431 (= c!1446713 (nullable!9434 (regOne!42852 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)))))))

(assert (=> b!7877431 (= e!4652470 e!4652474)))

(declare-fun b!7877432 () Bool)

(assert (=> b!7877432 (= e!4652470 (Concat!30015 call!730604 (ite c!1446618 (regOne!42853 r1!6200) (regTwo!42852 r1!6200))))))

(assert (= (and d!2355786 c!1446712) b!7877423))

(assert (= (and d!2355786 (not c!1446712)) b!7877428))

(assert (= (and b!7877428 c!1446716) b!7877429))

(assert (= (and b!7877428 (not c!1446716)) b!7877424))

(assert (= (and b!7877424 c!1446714) b!7877430))

(assert (= (and b!7877424 (not c!1446714)) b!7877427))

(assert (= (and b!7877427 c!1446715) b!7877432))

(assert (= (and b!7877427 (not c!1446715)) b!7877431))

(assert (= (and b!7877431 c!1446713) b!7877425))

(assert (= (and b!7877431 (not c!1446713)) b!7877426))

(assert (= (or b!7877425 b!7877426) bm!730599))

(assert (= (or b!7877432 bm!730599) bm!730598))

(assert (= (or b!7877430 bm!730598) bm!730597))

(assert (= (or b!7877430 b!7877425) bm!730596))

(declare-fun m!8266844 () Bool)

(assert (=> d!2355786 m!8266844))

(declare-fun m!8266846 () Bool)

(assert (=> d!2355786 m!8266846))

(declare-fun m!8266848 () Bool)

(assert (=> bm!730596 m!8266848))

(declare-fun m!8266850 () Bool)

(assert (=> bm!730597 m!8266850))

(declare-fun m!8266852 () Bool)

(assert (=> b!7877431 m!8266852))

(assert (=> bm!730515 d!2355786))

(declare-fun b!7877433 () Bool)

(declare-fun e!4652481 () Bool)

(declare-fun call!730607 () Bool)

(assert (=> b!7877433 (= e!4652481 call!730607)))

(declare-fun bm!730600 () Bool)

(declare-fun c!1446717 () Bool)

(declare-fun c!1446718 () Bool)

(assert (=> bm!730600 (= call!730607 (validRegex!11580 (ite c!1446718 (reg!21499 lt!2681043) (ite c!1446717 (regOne!42853 lt!2681043) (regTwo!42852 lt!2681043)))))))

(declare-fun b!7877434 () Bool)

(declare-fun e!4652480 () Bool)

(declare-fun e!4652478 () Bool)

(assert (=> b!7877434 (= e!4652480 e!4652478)))

(assert (=> b!7877434 (= c!1446717 (is-Union!21170 lt!2681043))))

(declare-fun b!7877435 () Bool)

(declare-fun e!4652476 () Bool)

(declare-fun call!730605 () Bool)

(assert (=> b!7877435 (= e!4652476 call!730605)))

(declare-fun b!7877436 () Bool)

(declare-fun e!4652477 () Bool)

(assert (=> b!7877436 (= e!4652477 e!4652480)))

(assert (=> b!7877436 (= c!1446718 (is-Star!21170 lt!2681043))))

(declare-fun b!7877437 () Bool)

(declare-fun res!3128806 () Bool)

(declare-fun e!4652479 () Bool)

(assert (=> b!7877437 (=> res!3128806 e!4652479)))

(assert (=> b!7877437 (= res!3128806 (not (is-Concat!30015 lt!2681043)))))

(assert (=> b!7877437 (= e!4652478 e!4652479)))

(declare-fun bm!730601 () Bool)

(declare-fun call!730606 () Bool)

(assert (=> bm!730601 (= call!730606 call!730607)))

(declare-fun b!7877438 () Bool)

(declare-fun res!3128805 () Bool)

(assert (=> b!7877438 (=> (not res!3128805) (not e!4652476))))

(assert (=> b!7877438 (= res!3128805 call!730606)))

(assert (=> b!7877438 (= e!4652478 e!4652476)))

(declare-fun d!2355788 () Bool)

(declare-fun res!3128807 () Bool)

(assert (=> d!2355788 (=> res!3128807 e!4652477)))

(assert (=> d!2355788 (= res!3128807 (is-ElementMatch!21170 lt!2681043))))

(assert (=> d!2355788 (= (validRegex!11580 lt!2681043) e!4652477)))

(declare-fun b!7877439 () Bool)

(assert (=> b!7877439 (= e!4652480 e!4652481)))

(declare-fun res!3128804 () Bool)

(assert (=> b!7877439 (= res!3128804 (not (nullable!9434 (reg!21499 lt!2681043))))))

(assert (=> b!7877439 (=> (not res!3128804) (not e!4652481))))

(declare-fun b!7877440 () Bool)

(declare-fun e!4652475 () Bool)

(assert (=> b!7877440 (= e!4652479 e!4652475)))

(declare-fun res!3128803 () Bool)

(assert (=> b!7877440 (=> (not res!3128803) (not e!4652475))))

(assert (=> b!7877440 (= res!3128803 call!730605)))

(declare-fun b!7877441 () Bool)

(assert (=> b!7877441 (= e!4652475 call!730606)))

(declare-fun bm!730602 () Bool)

(assert (=> bm!730602 (= call!730605 (validRegex!11580 (ite c!1446717 (regTwo!42853 lt!2681043) (regOne!42852 lt!2681043))))))

(assert (= (and d!2355788 (not res!3128807)) b!7877436))

(assert (= (and b!7877436 c!1446718) b!7877439))

(assert (= (and b!7877436 (not c!1446718)) b!7877434))

(assert (= (and b!7877439 res!3128804) b!7877433))

(assert (= (and b!7877434 c!1446717) b!7877438))

(assert (= (and b!7877434 (not c!1446717)) b!7877437))

(assert (= (and b!7877438 res!3128805) b!7877435))

(assert (= (and b!7877437 (not res!3128806)) b!7877440))

(assert (= (and b!7877440 res!3128803) b!7877441))

(assert (= (or b!7877435 b!7877440) bm!730602))

(assert (= (or b!7877438 b!7877441) bm!730601))

(assert (= (or b!7877433 bm!730601) bm!730600))

(declare-fun m!8266860 () Bool)

(assert (=> bm!730600 m!8266860))

(declare-fun m!8266862 () Bool)

(assert (=> b!7877439 m!8266862))

(declare-fun m!8266864 () Bool)

(assert (=> bm!730602 m!8266864))

(assert (=> d!2355706 d!2355788))

(assert (=> d!2355706 d!2355718))

(declare-fun b!7877442 () Bool)

(declare-fun e!4652488 () Bool)

(declare-fun call!730610 () Bool)

(assert (=> b!7877442 (= e!4652488 call!730610)))

(declare-fun bm!730603 () Bool)

(declare-fun c!1446719 () Bool)

(declare-fun c!1446720 () Bool)

(assert (=> bm!730603 (= call!730610 (validRegex!11580 (ite c!1446720 (reg!21499 lt!2681044) (ite c!1446719 (regOne!42853 lt!2681044) (regTwo!42852 lt!2681044)))))))

(declare-fun b!7877443 () Bool)

(declare-fun e!4652487 () Bool)

(declare-fun e!4652485 () Bool)

(assert (=> b!7877443 (= e!4652487 e!4652485)))

(assert (=> b!7877443 (= c!1446719 (is-Union!21170 lt!2681044))))

(declare-fun b!7877444 () Bool)

(declare-fun e!4652483 () Bool)

(declare-fun call!730608 () Bool)

(assert (=> b!7877444 (= e!4652483 call!730608)))

(declare-fun b!7877445 () Bool)

(declare-fun e!4652484 () Bool)

(assert (=> b!7877445 (= e!4652484 e!4652487)))

(assert (=> b!7877445 (= c!1446720 (is-Star!21170 lt!2681044))))

(declare-fun b!7877446 () Bool)

(declare-fun res!3128811 () Bool)

(declare-fun e!4652486 () Bool)

(assert (=> b!7877446 (=> res!3128811 e!4652486)))

(assert (=> b!7877446 (= res!3128811 (not (is-Concat!30015 lt!2681044)))))

(assert (=> b!7877446 (= e!4652485 e!4652486)))

(declare-fun bm!730604 () Bool)

(declare-fun call!730609 () Bool)

(assert (=> bm!730604 (= call!730609 call!730610)))

(declare-fun b!7877447 () Bool)

(declare-fun res!3128810 () Bool)

(assert (=> b!7877447 (=> (not res!3128810) (not e!4652483))))

(assert (=> b!7877447 (= res!3128810 call!730609)))

(assert (=> b!7877447 (= e!4652485 e!4652483)))

(declare-fun d!2355794 () Bool)

(declare-fun res!3128812 () Bool)

(assert (=> d!2355794 (=> res!3128812 e!4652484)))

(assert (=> d!2355794 (= res!3128812 (is-ElementMatch!21170 lt!2681044))))

(assert (=> d!2355794 (= (validRegex!11580 lt!2681044) e!4652484)))

(declare-fun b!7877448 () Bool)

(assert (=> b!7877448 (= e!4652487 e!4652488)))

(declare-fun res!3128809 () Bool)

(assert (=> b!7877448 (= res!3128809 (not (nullable!9434 (reg!21499 lt!2681044))))))

(assert (=> b!7877448 (=> (not res!3128809) (not e!4652488))))

(declare-fun b!7877449 () Bool)

(declare-fun e!4652482 () Bool)

(assert (=> b!7877449 (= e!4652486 e!4652482)))

(declare-fun res!3128808 () Bool)

(assert (=> b!7877449 (=> (not res!3128808) (not e!4652482))))

(assert (=> b!7877449 (= res!3128808 call!730608)))

(declare-fun b!7877450 () Bool)

(assert (=> b!7877450 (= e!4652482 call!730609)))

(declare-fun bm!730605 () Bool)

(assert (=> bm!730605 (= call!730608 (validRegex!11580 (ite c!1446719 (regTwo!42853 lt!2681044) (regOne!42852 lt!2681044))))))

(assert (= (and d!2355794 (not res!3128812)) b!7877445))

(assert (= (and b!7877445 c!1446720) b!7877448))

(assert (= (and b!7877445 (not c!1446720)) b!7877443))

(assert (= (and b!7877448 res!3128809) b!7877442))

(assert (= (and b!7877443 c!1446719) b!7877447))

(assert (= (and b!7877443 (not c!1446719)) b!7877446))

(assert (= (and b!7877447 res!3128810) b!7877444))

(assert (= (and b!7877446 (not res!3128811)) b!7877449))

(assert (= (and b!7877449 res!3128808) b!7877450))

(assert (= (or b!7877444 b!7877449) bm!730605))

(assert (= (or b!7877447 b!7877450) bm!730604))

(assert (= (or b!7877442 bm!730604) bm!730603))

(declare-fun m!8266866 () Bool)

(assert (=> bm!730603 m!8266866))

(declare-fun m!8266868 () Bool)

(assert (=> b!7877448 m!8266868))

(declare-fun m!8266870 () Bool)

(assert (=> bm!730605 m!8266870))

(assert (=> d!2355710 d!2355794))

(assert (=> d!2355710 d!2355714))

(declare-fun d!2355796 () Bool)

(assert (=> d!2355796 (= (head!16112 s!14219) (h!80353 s!14219))))

(assert (=> b!7876928 d!2355796))

(declare-fun b!7877451 () Bool)

(declare-fun e!4652495 () Bool)

(declare-fun call!730613 () Bool)

(assert (=> b!7877451 (= e!4652495 call!730613)))

(declare-fun c!1446722 () Bool)

(declare-fun c!1446721 () Bool)

(declare-fun bm!730606 () Bool)

(assert (=> bm!730606 (= call!730613 (validRegex!11580 (ite c!1446722 (reg!21499 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))) (ite c!1446721 (regOne!42853 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))) (regTwo!42852 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031)))))))))

(declare-fun b!7877452 () Bool)

(declare-fun e!4652494 () Bool)

(declare-fun e!4652492 () Bool)

(assert (=> b!7877452 (= e!4652494 e!4652492)))

(assert (=> b!7877452 (= c!1446721 (is-Union!21170 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))))))

(declare-fun b!7877453 () Bool)

(declare-fun e!4652490 () Bool)

(declare-fun call!730611 () Bool)

(assert (=> b!7877453 (= e!4652490 call!730611)))

(declare-fun b!7877454 () Bool)

(declare-fun e!4652491 () Bool)

(assert (=> b!7877454 (= e!4652491 e!4652494)))

(assert (=> b!7877454 (= c!1446722 (is-Star!21170 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))))))

(declare-fun b!7877455 () Bool)

(declare-fun res!3128816 () Bool)

(declare-fun e!4652493 () Bool)

(assert (=> b!7877455 (=> res!3128816 e!4652493)))

(assert (=> b!7877455 (= res!3128816 (not (is-Concat!30015 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031)))))))

(assert (=> b!7877455 (= e!4652492 e!4652493)))

(declare-fun bm!730607 () Bool)

(declare-fun call!730612 () Bool)

(assert (=> bm!730607 (= call!730612 call!730613)))

(declare-fun b!7877456 () Bool)

(declare-fun res!3128815 () Bool)

(assert (=> b!7877456 (=> (not res!3128815) (not e!4652490))))

(assert (=> b!7877456 (= res!3128815 call!730612)))

(assert (=> b!7877456 (= e!4652492 e!4652490)))

(declare-fun d!2355798 () Bool)

(declare-fun res!3128817 () Bool)

(assert (=> d!2355798 (=> res!3128817 e!4652491)))

(assert (=> d!2355798 (= res!3128817 (is-ElementMatch!21170 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))))))

(assert (=> d!2355798 (= (validRegex!11580 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))) e!4652491)))

(declare-fun b!7877457 () Bool)

(assert (=> b!7877457 (= e!4652494 e!4652495)))

(declare-fun res!3128814 () Bool)

(assert (=> b!7877457 (= res!3128814 (not (nullable!9434 (reg!21499 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))))))))

(assert (=> b!7877457 (=> (not res!3128814) (not e!4652495))))

(declare-fun b!7877458 () Bool)

(declare-fun e!4652489 () Bool)

(assert (=> b!7877458 (= e!4652493 e!4652489)))

(declare-fun res!3128813 () Bool)

(assert (=> b!7877458 (=> (not res!3128813) (not e!4652489))))

(assert (=> b!7877458 (= res!3128813 call!730611)))

(declare-fun b!7877459 () Bool)

(assert (=> b!7877459 (= e!4652489 call!730612)))

(declare-fun bm!730608 () Bool)

(assert (=> bm!730608 (= call!730611 (validRegex!11580 (ite c!1446721 (regTwo!42853 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))) (regOne!42852 (ite c!1446599 (regTwo!42853 lt!2681031) (regOne!42852 lt!2681031))))))))

(assert (= (and d!2355798 (not res!3128817)) b!7877454))

(assert (= (and b!7877454 c!1446722) b!7877457))

(assert (= (and b!7877454 (not c!1446722)) b!7877452))

(assert (= (and b!7877457 res!3128814) b!7877451))

(assert (= (and b!7877452 c!1446721) b!7877456))

(assert (= (and b!7877452 (not c!1446721)) b!7877455))

(assert (= (and b!7877456 res!3128815) b!7877453))

(assert (= (and b!7877455 (not res!3128816)) b!7877458))

(assert (= (and b!7877458 res!3128813) b!7877459))

(assert (= (or b!7877453 b!7877458) bm!730608))

(assert (= (or b!7877456 b!7877459) bm!730607))

(assert (= (or b!7877451 bm!730607) bm!730606))

(declare-fun m!8266874 () Bool)

(assert (=> bm!730606 m!8266874))

(declare-fun m!8266876 () Bool)

(assert (=> b!7877457 m!8266876))

(declare-fun m!8266878 () Bool)

(assert (=> bm!730608 m!8266878))

(assert (=> bm!730502 d!2355798))

(declare-fun b!7877469 () Bool)

(declare-fun e!4652509 () Bool)

(declare-fun call!730619 () Bool)

(assert (=> b!7877469 (= e!4652509 call!730619)))

(declare-fun c!1446725 () Bool)

(declare-fun c!1446726 () Bool)

(declare-fun bm!730612 () Bool)

(assert (=> bm!730612 (= call!730619 (validRegex!11580 (ite c!1446726 (reg!21499 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))) (ite c!1446725 (regOne!42853 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))) (regTwo!42852 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200)))))))))

(declare-fun b!7877470 () Bool)

(declare-fun e!4652508 () Bool)

(declare-fun e!4652506 () Bool)

(assert (=> b!7877470 (= e!4652508 e!4652506)))

(assert (=> b!7877470 (= c!1446725 (is-Union!21170 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))))))

(declare-fun b!7877471 () Bool)

(declare-fun e!4652504 () Bool)

(declare-fun call!730617 () Bool)

(assert (=> b!7877471 (= e!4652504 call!730617)))

(declare-fun b!7877472 () Bool)

(declare-fun e!4652505 () Bool)

(assert (=> b!7877472 (= e!4652505 e!4652508)))

(assert (=> b!7877472 (= c!1446726 (is-Star!21170 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))))))

(declare-fun b!7877473 () Bool)

(declare-fun res!3128826 () Bool)

(declare-fun e!4652507 () Bool)

(assert (=> b!7877473 (=> res!3128826 e!4652507)))

(assert (=> b!7877473 (= res!3128826 (not (is-Concat!30015 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200)))))))

(assert (=> b!7877473 (= e!4652506 e!4652507)))

(declare-fun bm!730613 () Bool)

(declare-fun call!730618 () Bool)

(assert (=> bm!730613 (= call!730618 call!730619)))

(declare-fun b!7877474 () Bool)

(declare-fun res!3128825 () Bool)

(assert (=> b!7877474 (=> (not res!3128825) (not e!4652504))))

(assert (=> b!7877474 (= res!3128825 call!730618)))

(assert (=> b!7877474 (= e!4652506 e!4652504)))

(declare-fun d!2355802 () Bool)

(declare-fun res!3128827 () Bool)

(assert (=> d!2355802 (=> res!3128827 e!4652505)))

(assert (=> d!2355802 (= res!3128827 (is-ElementMatch!21170 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))))))

(assert (=> d!2355802 (= (validRegex!11580 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))) e!4652505)))

(declare-fun b!7877475 () Bool)

(assert (=> b!7877475 (= e!4652508 e!4652509)))

(declare-fun res!3128824 () Bool)

(assert (=> b!7877475 (= res!3128824 (not (nullable!9434 (reg!21499 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))))))))

(assert (=> b!7877475 (=> (not res!3128824) (not e!4652509))))

(declare-fun b!7877476 () Bool)

(declare-fun e!4652503 () Bool)

(assert (=> b!7877476 (= e!4652507 e!4652503)))

(declare-fun res!3128823 () Bool)

(assert (=> b!7877476 (=> (not res!3128823) (not e!4652503))))

(assert (=> b!7877476 (= res!3128823 call!730617)))

(declare-fun b!7877477 () Bool)

(assert (=> b!7877477 (= e!4652503 call!730618)))

(declare-fun bm!730614 () Bool)

(assert (=> bm!730614 (= call!730617 (validRegex!11580 (ite c!1446725 (regTwo!42853 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))) (regOne!42852 (ite c!1446625 (regTwo!42853 r1!6200) (regOne!42852 r1!6200))))))))

(assert (= (and d!2355802 (not res!3128827)) b!7877472))

(assert (= (and b!7877472 c!1446726) b!7877475))

(assert (= (and b!7877472 (not c!1446726)) b!7877470))

(assert (= (and b!7877475 res!3128824) b!7877469))

(assert (= (and b!7877470 c!1446725) b!7877474))

(assert (= (and b!7877470 (not c!1446725)) b!7877473))

(assert (= (and b!7877474 res!3128825) b!7877471))

(assert (= (and b!7877473 (not res!3128826)) b!7877476))

(assert (= (and b!7877476 res!3128823) b!7877477))

(assert (= (or b!7877471 b!7877476) bm!730614))

(assert (= (or b!7877474 b!7877477) bm!730613))

(assert (= (or b!7877469 bm!730613) bm!730612))

(declare-fun m!8266880 () Bool)

(assert (=> bm!730612 m!8266880))

(declare-fun m!8266882 () Bool)

(assert (=> b!7877475 m!8266882))

(declare-fun m!8266884 () Bool)

(assert (=> bm!730614 m!8266884))

(assert (=> bm!730524 d!2355802))

(assert (=> d!2355698 d!2355744))

(assert (=> d!2355698 d!2355714))

(declare-fun bm!730615 () Bool)

(declare-fun call!730620 () Bool)

(assert (=> bm!730615 (= call!730620 (isEmpty!42401 (tail!15655 s!14219)))))

(declare-fun b!7877478 () Bool)

(declare-fun e!4652512 () Bool)

(assert (=> b!7877478 (= e!4652512 (nullable!9434 (derivativeStep!6401 r1!6200 (head!16112 s!14219))))))

(declare-fun b!7877479 () Bool)

(declare-fun res!3128831 () Bool)

(declare-fun e!4652511 () Bool)

(assert (=> b!7877479 (=> res!3128831 e!4652511)))

(declare-fun e!4652513 () Bool)

(assert (=> b!7877479 (= res!3128831 e!4652513)))

(declare-fun res!3128828 () Bool)

(assert (=> b!7877479 (=> (not res!3128828) (not e!4652513))))

(declare-fun lt!2681063 () Bool)

(assert (=> b!7877479 (= res!3128828 lt!2681063)))

(declare-fun b!7877480 () Bool)

(declare-fun res!3128833 () Bool)

(assert (=> b!7877480 (=> (not res!3128833) (not e!4652513))))

(assert (=> b!7877480 (= res!3128833 (isEmpty!42401 (tail!15655 (tail!15655 s!14219))))))

(declare-fun b!7877481 () Bool)

(declare-fun e!4652514 () Bool)

(declare-fun e!4652515 () Bool)

(assert (=> b!7877481 (= e!4652514 e!4652515)))

(declare-fun res!3128835 () Bool)

(assert (=> b!7877481 (=> res!3128835 e!4652515)))

(assert (=> b!7877481 (= res!3128835 call!730620)))

(declare-fun b!7877482 () Bool)

(declare-fun e!4652516 () Bool)

(assert (=> b!7877482 (= e!4652516 (not lt!2681063))))

(declare-fun b!7877483 () Bool)

(declare-fun res!3128834 () Bool)

(assert (=> b!7877483 (=> res!3128834 e!4652515)))

(assert (=> b!7877483 (= res!3128834 (not (isEmpty!42401 (tail!15655 (tail!15655 s!14219)))))))

(declare-fun b!7877484 () Bool)

(assert (=> b!7877484 (= e!4652515 (not (= (head!16112 (tail!15655 s!14219)) (c!1446574 (derivativeStep!6401 r1!6200 (head!16112 s!14219))))))))

(declare-fun b!7877485 () Bool)

(declare-fun e!4652510 () Bool)

(assert (=> b!7877485 (= e!4652510 (= lt!2681063 call!730620))))

(declare-fun d!2355804 () Bool)

(assert (=> d!2355804 e!4652510))

(declare-fun c!1446728 () Bool)

(assert (=> d!2355804 (= c!1446728 (is-EmptyExpr!21170 (derivativeStep!6401 r1!6200 (head!16112 s!14219))))))

(assert (=> d!2355804 (= lt!2681063 e!4652512)))

(declare-fun c!1446729 () Bool)

(assert (=> d!2355804 (= c!1446729 (isEmpty!42401 (tail!15655 s!14219)))))

(assert (=> d!2355804 (validRegex!11580 (derivativeStep!6401 r1!6200 (head!16112 s!14219)))))

(assert (=> d!2355804 (= (matchR!10606 (derivativeStep!6401 r1!6200 (head!16112 s!14219)) (tail!15655 s!14219)) lt!2681063)))

(declare-fun b!7877486 () Bool)

(declare-fun res!3128829 () Bool)

(assert (=> b!7877486 (=> (not res!3128829) (not e!4652513))))

(assert (=> b!7877486 (= res!3128829 (not call!730620))))

(declare-fun b!7877487 () Bool)

(assert (=> b!7877487 (= e!4652510 e!4652516)))

(declare-fun c!1446727 () Bool)

(assert (=> b!7877487 (= c!1446727 (is-EmptyLang!21170 (derivativeStep!6401 r1!6200 (head!16112 s!14219))))))

(declare-fun b!7877488 () Bool)

(assert (=> b!7877488 (= e!4652511 e!4652514)))

(declare-fun res!3128832 () Bool)

(assert (=> b!7877488 (=> (not res!3128832) (not e!4652514))))

(assert (=> b!7877488 (= res!3128832 (not lt!2681063))))

(declare-fun b!7877489 () Bool)

(assert (=> b!7877489 (= e!4652513 (= (head!16112 (tail!15655 s!14219)) (c!1446574 (derivativeStep!6401 r1!6200 (head!16112 s!14219)))))))

(declare-fun b!7877490 () Bool)

(assert (=> b!7877490 (= e!4652512 (matchR!10606 (derivativeStep!6401 (derivativeStep!6401 r1!6200 (head!16112 s!14219)) (head!16112 (tail!15655 s!14219))) (tail!15655 (tail!15655 s!14219))))))

(declare-fun b!7877491 () Bool)

(declare-fun res!3128830 () Bool)

(assert (=> b!7877491 (=> res!3128830 e!4652511)))

(assert (=> b!7877491 (= res!3128830 (not (is-ElementMatch!21170 (derivativeStep!6401 r1!6200 (head!16112 s!14219)))))))

(assert (=> b!7877491 (= e!4652516 e!4652511)))

(assert (= (and d!2355804 c!1446729) b!7877478))

(assert (= (and d!2355804 (not c!1446729)) b!7877490))

(assert (= (and d!2355804 c!1446728) b!7877485))

(assert (= (and d!2355804 (not c!1446728)) b!7877487))

(assert (= (and b!7877487 c!1446727) b!7877482))

(assert (= (and b!7877487 (not c!1446727)) b!7877491))

(assert (= (and b!7877491 (not res!3128830)) b!7877479))

(assert (= (and b!7877479 res!3128828) b!7877486))

(assert (= (and b!7877486 res!3128829) b!7877480))

(assert (= (and b!7877480 res!3128833) b!7877489))

(assert (= (and b!7877479 (not res!3128831)) b!7877488))

(assert (= (and b!7877488 res!3128832) b!7877481))

(assert (= (and b!7877481 (not res!3128835)) b!7877483))

(assert (= (and b!7877483 (not res!3128834)) b!7877484))

(assert (= (or b!7877485 b!7877481 b!7877486) bm!730615))

(assert (=> b!7877480 m!8266588))

(declare-fun m!8266892 () Bool)

(assert (=> b!7877480 m!8266892))

(assert (=> b!7877480 m!8266892))

(declare-fun m!8266894 () Bool)

(assert (=> b!7877480 m!8266894))

(assert (=> bm!730615 m!8266588))

(assert (=> bm!730615 m!8266590))

(assert (=> d!2355804 m!8266588))

(assert (=> d!2355804 m!8266590))

(assert (=> d!2355804 m!8266598))

(declare-fun m!8266896 () Bool)

(assert (=> d!2355804 m!8266896))

(assert (=> b!7877489 m!8266588))

(declare-fun m!8266898 () Bool)

(assert (=> b!7877489 m!8266898))

(assert (=> b!7877478 m!8266598))

(declare-fun m!8266900 () Bool)

(assert (=> b!7877478 m!8266900))

(assert (=> b!7877483 m!8266588))

(assert (=> b!7877483 m!8266892))

(assert (=> b!7877483 m!8266892))

(assert (=> b!7877483 m!8266894))

(assert (=> b!7877484 m!8266588))

(assert (=> b!7877484 m!8266898))

(assert (=> b!7877490 m!8266588))

(assert (=> b!7877490 m!8266898))

(assert (=> b!7877490 m!8266598))

(assert (=> b!7877490 m!8266898))

(declare-fun m!8266902 () Bool)

(assert (=> b!7877490 m!8266902))

(assert (=> b!7877490 m!8266588))

(assert (=> b!7877490 m!8266892))

(assert (=> b!7877490 m!8266902))

(assert (=> b!7877490 m!8266892))

(declare-fun m!8266904 () Bool)

(assert (=> b!7877490 m!8266904))

(assert (=> b!7876929 d!2355804))

(declare-fun b!7877502 () Bool)

(declare-fun e!4652525 () Regex!21170)

(assert (=> b!7877502 (= e!4652525 EmptyLang!21170)))

(declare-fun b!7877503 () Bool)

(declare-fun c!1446737 () Bool)

(assert (=> b!7877503 (= c!1446737 (is-Union!21170 r1!6200))))

(declare-fun e!4652523 () Regex!21170)

(declare-fun e!4652524 () Regex!21170)

(assert (=> b!7877503 (= e!4652523 e!4652524)))

(declare-fun e!4652526 () Regex!21170)

(declare-fun call!730625 () Regex!21170)

(declare-fun call!730627 () Regex!21170)

(declare-fun b!7877504 () Bool)

(assert (=> b!7877504 (= e!4652526 (Union!21170 (Concat!30015 call!730627 (regTwo!42852 r1!6200)) call!730625))))

(declare-fun d!2355808 () Bool)

(declare-fun lt!2681065 () Regex!21170)

(assert (=> d!2355808 (validRegex!11580 lt!2681065)))

(assert (=> d!2355808 (= lt!2681065 e!4652525)))

(declare-fun c!1446735 () Bool)

(assert (=> d!2355808 (= c!1446735 (or (is-EmptyExpr!21170 r1!6200) (is-EmptyLang!21170 r1!6200)))))

(assert (=> d!2355808 (validRegex!11580 r1!6200)))

(assert (=> d!2355808 (= (derivativeStep!6401 r1!6200 (head!16112 s!14219)) lt!2681065)))

(declare-fun b!7877505 () Bool)

(assert (=> b!7877505 (= e!4652526 (Union!21170 (Concat!30015 call!730627 (regTwo!42852 r1!6200)) EmptyLang!21170))))

(declare-fun bm!730620 () Bool)

(assert (=> bm!730620 (= call!730625 (derivativeStep!6401 (ite c!1446737 (regOne!42853 r1!6200) (regTwo!42852 r1!6200)) (head!16112 s!14219)))))

(declare-fun b!7877506 () Bool)

(declare-fun e!4652522 () Regex!21170)

(assert (=> b!7877506 (= e!4652524 e!4652522)))

(declare-fun c!1446738 () Bool)

(assert (=> b!7877506 (= c!1446738 (is-Star!21170 r1!6200))))

(declare-fun b!7877507 () Bool)

(assert (=> b!7877507 (= e!4652525 e!4652523)))

(declare-fun c!1446739 () Bool)

(assert (=> b!7877507 (= c!1446739 (is-ElementMatch!21170 r1!6200))))

(declare-fun call!730626 () Regex!21170)

(declare-fun bm!730621 () Bool)

(assert (=> bm!730621 (= call!730626 (derivativeStep!6401 (ite c!1446737 (regTwo!42853 r1!6200) (ite c!1446738 (reg!21499 r1!6200) (regOne!42852 r1!6200))) (head!16112 s!14219)))))

(declare-fun b!7877508 () Bool)

(assert (=> b!7877508 (= e!4652523 (ite (= (head!16112 s!14219) (c!1446574 r1!6200)) EmptyExpr!21170 EmptyLang!21170))))

(declare-fun b!7877509 () Bool)

(assert (=> b!7877509 (= e!4652524 (Union!21170 call!730625 call!730626))))

(declare-fun bm!730622 () Bool)

(declare-fun call!730628 () Regex!21170)

(assert (=> bm!730622 (= call!730628 call!730626)))

(declare-fun bm!730623 () Bool)

(assert (=> bm!730623 (= call!730627 call!730628)))

(declare-fun b!7877510 () Bool)

(declare-fun c!1446736 () Bool)

(assert (=> b!7877510 (= c!1446736 (nullable!9434 (regOne!42852 r1!6200)))))

(assert (=> b!7877510 (= e!4652522 e!4652526)))

(declare-fun b!7877511 () Bool)

(assert (=> b!7877511 (= e!4652522 (Concat!30015 call!730628 r1!6200))))

(assert (= (and d!2355808 c!1446735) b!7877502))

(assert (= (and d!2355808 (not c!1446735)) b!7877507))

(assert (= (and b!7877507 c!1446739) b!7877508))

(assert (= (and b!7877507 (not c!1446739)) b!7877503))

(assert (= (and b!7877503 c!1446737) b!7877509))

(assert (= (and b!7877503 (not c!1446737)) b!7877506))

(assert (= (and b!7877506 c!1446738) b!7877511))

(assert (= (and b!7877506 (not c!1446738)) b!7877510))

(assert (= (and b!7877510 c!1446736) b!7877504))

(assert (= (and b!7877510 (not c!1446736)) b!7877505))

(assert (= (or b!7877504 b!7877505) bm!730623))

(assert (= (or b!7877511 bm!730623) bm!730622))

(assert (= (or b!7877509 bm!730622) bm!730621))

(assert (= (or b!7877509 b!7877504) bm!730620))

(declare-fun m!8266906 () Bool)

(assert (=> d!2355808 m!8266906))

(assert (=> d!2355808 m!8266556))

(assert (=> bm!730620 m!8266594))

(declare-fun m!8266908 () Bool)

(assert (=> bm!730620 m!8266908))

(assert (=> bm!730621 m!8266594))

(declare-fun m!8266912 () Bool)

(assert (=> bm!730621 m!8266912))

(assert (=> b!7877510 m!8266640))

(assert (=> b!7876929 d!2355808))

(assert (=> b!7876929 d!2355796))

(assert (=> b!7876929 d!2355754))

(declare-fun b!7877512 () Bool)

(declare-fun e!4652533 () Bool)

(declare-fun call!730631 () Bool)

(assert (=> b!7877512 (= e!4652533 call!730631)))

(declare-fun bm!730624 () Bool)

(declare-fun c!1446741 () Bool)

(declare-fun c!1446740 () Bool)

(assert (=> bm!730624 (= call!730631 (validRegex!11580 (ite c!1446741 (reg!21499 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))) (ite c!1446740 (regOne!42853 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))) (regTwo!42852 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030))))))))))

(declare-fun b!7877513 () Bool)

(declare-fun e!4652532 () Bool)

(declare-fun e!4652530 () Bool)

(assert (=> b!7877513 (= e!4652532 e!4652530)))

(assert (=> b!7877513 (= c!1446740 (is-Union!21170 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))))))

(declare-fun b!7877514 () Bool)

(declare-fun e!4652528 () Bool)

(declare-fun call!730629 () Bool)

(assert (=> b!7877514 (= e!4652528 call!730629)))

(declare-fun b!7877515 () Bool)

(declare-fun e!4652529 () Bool)

(assert (=> b!7877515 (= e!4652529 e!4652532)))

(assert (=> b!7877515 (= c!1446741 (is-Star!21170 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))))))

(declare-fun b!7877516 () Bool)

(declare-fun res!3128839 () Bool)

(declare-fun e!4652531 () Bool)

(assert (=> b!7877516 (=> res!3128839 e!4652531)))

(assert (=> b!7877516 (= res!3128839 (not (is-Concat!30015 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030))))))))

(assert (=> b!7877516 (= e!4652530 e!4652531)))

(declare-fun bm!730625 () Bool)

(declare-fun call!730630 () Bool)

(assert (=> bm!730625 (= call!730630 call!730631)))

(declare-fun b!7877517 () Bool)

(declare-fun res!3128838 () Bool)

(assert (=> b!7877517 (=> (not res!3128838) (not e!4652528))))

(assert (=> b!7877517 (= res!3128838 call!730630)))

(assert (=> b!7877517 (= e!4652530 e!4652528)))

(declare-fun d!2355810 () Bool)

(declare-fun res!3128840 () Bool)

(assert (=> d!2355810 (=> res!3128840 e!4652529)))

(assert (=> d!2355810 (= res!3128840 (is-ElementMatch!21170 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))))))

(assert (=> d!2355810 (= (validRegex!11580 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))) e!4652529)))

(declare-fun b!7877518 () Bool)

(assert (=> b!7877518 (= e!4652532 e!4652533)))

(declare-fun res!3128837 () Bool)

(assert (=> b!7877518 (= res!3128837 (not (nullable!9434 (reg!21499 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))))))))

(assert (=> b!7877518 (=> (not res!3128837) (not e!4652533))))

(declare-fun b!7877519 () Bool)

(declare-fun e!4652527 () Bool)

(assert (=> b!7877519 (= e!4652531 e!4652527)))

(declare-fun res!3128836 () Bool)

(assert (=> b!7877519 (=> (not res!3128836) (not e!4652527))))

(assert (=> b!7877519 (= res!3128836 call!730629)))

(declare-fun b!7877520 () Bool)

(assert (=> b!7877520 (= e!4652527 call!730630)))

(declare-fun bm!730626 () Bool)

(assert (=> bm!730626 (= call!730629 (validRegex!11580 (ite c!1446740 (regTwo!42853 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))) (regOne!42852 (ite c!1446622 (reg!21499 lt!2681030) (ite c!1446621 (regOne!42853 lt!2681030) (regTwo!42852 lt!2681030)))))))))

(assert (= (and d!2355810 (not res!3128840)) b!7877515))

(assert (= (and b!7877515 c!1446741) b!7877518))

(assert (= (and b!7877515 (not c!1446741)) b!7877513))

(assert (= (and b!7877518 res!3128837) b!7877512))

(assert (= (and b!7877513 c!1446740) b!7877517))

(assert (= (and b!7877513 (not c!1446740)) b!7877516))

(assert (= (and b!7877517 res!3128838) b!7877514))

(assert (= (and b!7877516 (not res!3128839)) b!7877519))

(assert (= (and b!7877519 res!3128836) b!7877520))

(assert (= (or b!7877514 b!7877519) bm!730626))

(assert (= (or b!7877517 b!7877520) bm!730625))

(assert (= (or b!7877512 bm!730625) bm!730624))

(declare-fun m!8266922 () Bool)

(assert (=> bm!730624 m!8266922))

(declare-fun m!8266924 () Bool)

(assert (=> b!7877518 m!8266924))

(declare-fun m!8266926 () Bool)

(assert (=> bm!730626 m!8266926))

(assert (=> bm!730519 d!2355810))

(declare-fun d!2355816 () Bool)

(assert (=> d!2355816 (= (nullable!9434 (regOne!42852 r1!6200)) (nullableFct!3728 (regOne!42852 r1!6200)))))

(declare-fun bs!1967346 () Bool)

(assert (= bs!1967346 d!2355816))

(declare-fun m!8266928 () Bool)

(assert (=> bs!1967346 m!8266928))

(assert (=> b!7877023 d!2355816))

(assert (=> b!7877054 d!2355762))

(assert (=> b!7877054 d!2355764))

(assert (=> b!7876922 d!2355752))

(assert (=> b!7876922 d!2355754))

(declare-fun d!2355818 () Bool)

(assert (=> d!2355818 (= (nullable!9434 (reg!21499 lt!2681031)) (nullableFct!3728 (reg!21499 lt!2681031)))))

(declare-fun bs!1967347 () Bool)

(assert (= bs!1967347 d!2355818))

(declare-fun m!8266930 () Bool)

(assert (=> bs!1967347 m!8266930))

(assert (=> b!7876982 d!2355818))

(assert (=> b!7877055 d!2355770))

(declare-fun b!7877530 () Bool)

(declare-fun e!4652547 () Bool)

(declare-fun call!730637 () Bool)

(assert (=> b!7877530 (= e!4652547 call!730637)))

(declare-fun c!1446744 () Bool)

(declare-fun c!1446745 () Bool)

(declare-fun bm!730630 () Bool)

(assert (=> bm!730630 (= call!730637 (validRegex!11580 (ite c!1446745 (reg!21499 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))) (ite c!1446744 (regOne!42853 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))) (regTwo!42852 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138)))))))))

(declare-fun b!7877531 () Bool)

(declare-fun e!4652546 () Bool)

(declare-fun e!4652544 () Bool)

(assert (=> b!7877531 (= e!4652546 e!4652544)))

(assert (=> b!7877531 (= c!1446744 (is-Union!21170 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))))))

(declare-fun b!7877532 () Bool)

(declare-fun e!4652542 () Bool)

(declare-fun call!730635 () Bool)

(assert (=> b!7877532 (= e!4652542 call!730635)))

(declare-fun b!7877533 () Bool)

(declare-fun e!4652543 () Bool)

(assert (=> b!7877533 (= e!4652543 e!4652546)))

(assert (=> b!7877533 (= c!1446745 (is-Star!21170 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))))))

(declare-fun b!7877534 () Bool)

(declare-fun res!3128849 () Bool)

(declare-fun e!4652545 () Bool)

(assert (=> b!7877534 (=> res!3128849 e!4652545)))

(assert (=> b!7877534 (= res!3128849 (not (is-Concat!30015 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138)))))))

(assert (=> b!7877534 (= e!4652544 e!4652545)))

(declare-fun bm!730631 () Bool)

(declare-fun call!730636 () Bool)

(assert (=> bm!730631 (= call!730636 call!730637)))

(declare-fun b!7877535 () Bool)

(declare-fun res!3128848 () Bool)

(assert (=> b!7877535 (=> (not res!3128848) (not e!4652542))))

(assert (=> b!7877535 (= res!3128848 call!730636)))

(assert (=> b!7877535 (= e!4652544 e!4652542)))

(declare-fun d!2355820 () Bool)

(declare-fun res!3128850 () Bool)

(assert (=> d!2355820 (=> res!3128850 e!4652543)))

(assert (=> d!2355820 (= res!3128850 (is-ElementMatch!21170 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))))))

(assert (=> d!2355820 (= (validRegex!11580 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))) e!4652543)))

(declare-fun b!7877536 () Bool)

(assert (=> b!7877536 (= e!4652546 e!4652547)))

(declare-fun res!3128847 () Bool)

(assert (=> b!7877536 (= res!3128847 (not (nullable!9434 (reg!21499 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))))))))

(assert (=> b!7877536 (=> (not res!3128847) (not e!4652547))))

(declare-fun b!7877537 () Bool)

(declare-fun e!4652541 () Bool)

(assert (=> b!7877537 (= e!4652545 e!4652541)))

(declare-fun res!3128846 () Bool)

(assert (=> b!7877537 (=> (not res!3128846) (not e!4652541))))

(assert (=> b!7877537 (= res!3128846 call!730635)))

(declare-fun b!7877538 () Bool)

(assert (=> b!7877538 (= e!4652541 call!730636)))

(declare-fun bm!730632 () Bool)

(assert (=> bm!730632 (= call!730635 (validRegex!11580 (ite c!1446744 (regTwo!42853 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))) (regOne!42852 (ite c!1446634 (regTwo!42853 r2!6138) (regOne!42852 r2!6138))))))))

(assert (= (and d!2355820 (not res!3128850)) b!7877533))

(assert (= (and b!7877533 c!1446745) b!7877536))

(assert (= (and b!7877533 (not c!1446745)) b!7877531))

(assert (= (and b!7877536 res!3128847) b!7877530))

(assert (= (and b!7877531 c!1446744) b!7877535))

(assert (= (and b!7877531 (not c!1446744)) b!7877534))

(assert (= (and b!7877535 res!3128848) b!7877532))

(assert (= (and b!7877534 (not res!3128849)) b!7877537))

(assert (= (and b!7877537 res!3128846) b!7877538))

(assert (= (or b!7877532 b!7877537) bm!730632))

(assert (= (or b!7877535 b!7877538) bm!730631))

(assert (= (or b!7877530 bm!730631) bm!730630))

(declare-fun m!8266938 () Bool)

(assert (=> bm!730630 m!8266938))

(declare-fun m!8266940 () Bool)

(assert (=> b!7877536 m!8266940))

(declare-fun m!8266942 () Bool)

(assert (=> bm!730632 m!8266942))

(assert (=> bm!730528 d!2355820))

(declare-fun d!2355824 () Bool)

(assert (=> d!2355824 (= (nullable!9434 (reg!21499 r1!6200)) (nullableFct!3728 (reg!21499 r1!6200)))))

(declare-fun bs!1967348 () Bool)

(assert (= bs!1967348 d!2355824))

(declare-fun m!8266944 () Bool)

(assert (=> bs!1967348 m!8266944))

(assert (=> b!7877044 d!2355824))

(assert (=> b!7876923 d!2355796))

(declare-fun d!2355826 () Bool)

(assert (=> d!2355826 (= (nullable!9434 (regOne!42852 r2!6138)) (nullableFct!3728 (regOne!42852 r2!6138)))))

(declare-fun bs!1967349 () Bool)

(assert (= bs!1967349 d!2355826))

(declare-fun m!8266946 () Bool)

(assert (=> bs!1967349 m!8266946))

(assert (=> b!7877013 d!2355826))

(declare-fun b!7877549 () Bool)

(declare-fun e!4652553 () Bool)

(declare-fun tp!2340017 () Bool)

(assert (=> b!7877549 (= e!4652553 (and tp_is_empty!52739 tp!2340017))))

(assert (=> b!7877128 (= tp!2339928 e!4652553)))

(assert (= (and b!7877128 (is-Cons!73905 (t!388764 (t!388764 s!14219)))) b!7877549))

(declare-fun b!7877551 () Bool)

(declare-fun e!4652554 () Bool)

(declare-fun tp!2340020 () Bool)

(declare-fun tp!2340018 () Bool)

(assert (=> b!7877551 (= e!4652554 (and tp!2340020 tp!2340018))))

(assert (=> b!7877117 (= tp!2339918 e!4652554)))

(declare-fun b!7877552 () Bool)

(declare-fun tp!2340019 () Bool)

(assert (=> b!7877552 (= e!4652554 tp!2340019)))

(declare-fun b!7877553 () Bool)

(declare-fun tp!2340022 () Bool)

(declare-fun tp!2340021 () Bool)

(assert (=> b!7877553 (= e!4652554 (and tp!2340022 tp!2340021))))

(declare-fun b!7877550 () Bool)

(assert (=> b!7877550 (= e!4652554 tp_is_empty!52739)))

(assert (= (and b!7877117 (is-ElementMatch!21170 (regOne!42852 (regOne!42852 r2!6138)))) b!7877550))

(assert (= (and b!7877117 (is-Concat!30015 (regOne!42852 (regOne!42852 r2!6138)))) b!7877551))

(assert (= (and b!7877117 (is-Star!21170 (regOne!42852 (regOne!42852 r2!6138)))) b!7877552))

(assert (= (and b!7877117 (is-Union!21170 (regOne!42852 (regOne!42852 r2!6138)))) b!7877553))

(declare-fun b!7877555 () Bool)

(declare-fun e!4652555 () Bool)

(declare-fun tp!2340025 () Bool)

(declare-fun tp!2340023 () Bool)

(assert (=> b!7877555 (= e!4652555 (and tp!2340025 tp!2340023))))

(assert (=> b!7877117 (= tp!2339916 e!4652555)))

(declare-fun b!7877556 () Bool)

(declare-fun tp!2340024 () Bool)

(assert (=> b!7877556 (= e!4652555 tp!2340024)))

(declare-fun b!7877557 () Bool)

(declare-fun tp!2340027 () Bool)

(declare-fun tp!2340026 () Bool)

(assert (=> b!7877557 (= e!4652555 (and tp!2340027 tp!2340026))))

(declare-fun b!7877554 () Bool)

(assert (=> b!7877554 (= e!4652555 tp_is_empty!52739)))

(assert (= (and b!7877117 (is-ElementMatch!21170 (regTwo!42852 (regOne!42852 r2!6138)))) b!7877554))

(assert (= (and b!7877117 (is-Concat!30015 (regTwo!42852 (regOne!42852 r2!6138)))) b!7877555))

(assert (= (and b!7877117 (is-Star!21170 (regTwo!42852 (regOne!42852 r2!6138)))) b!7877556))

(assert (= (and b!7877117 (is-Union!21170 (regTwo!42852 (regOne!42852 r2!6138)))) b!7877557))

(declare-fun b!7877559 () Bool)

(declare-fun e!4652556 () Bool)

(declare-fun tp!2340030 () Bool)

(declare-fun tp!2340028 () Bool)

(assert (=> b!7877559 (= e!4652556 (and tp!2340030 tp!2340028))))

(assert (=> b!7877109 (= tp!2339908 e!4652556)))

(declare-fun b!7877560 () Bool)

(declare-fun tp!2340029 () Bool)

(assert (=> b!7877560 (= e!4652556 tp!2340029)))

(declare-fun b!7877561 () Bool)

(declare-fun tp!2340032 () Bool)

(declare-fun tp!2340031 () Bool)

(assert (=> b!7877561 (= e!4652556 (and tp!2340032 tp!2340031))))

(declare-fun b!7877558 () Bool)

(assert (=> b!7877558 (= e!4652556 tp_is_empty!52739)))

(assert (= (and b!7877109 (is-ElementMatch!21170 (regOne!42852 (regOne!42853 r2!6138)))) b!7877558))

(assert (= (and b!7877109 (is-Concat!30015 (regOne!42852 (regOne!42853 r2!6138)))) b!7877559))

(assert (= (and b!7877109 (is-Star!21170 (regOne!42852 (regOne!42853 r2!6138)))) b!7877560))

(assert (= (and b!7877109 (is-Union!21170 (regOne!42852 (regOne!42853 r2!6138)))) b!7877561))

(declare-fun b!7877563 () Bool)

(declare-fun e!4652557 () Bool)

(declare-fun tp!2340035 () Bool)

(declare-fun tp!2340033 () Bool)

(assert (=> b!7877563 (= e!4652557 (and tp!2340035 tp!2340033))))

(assert (=> b!7877109 (= tp!2339906 e!4652557)))

(declare-fun b!7877564 () Bool)

(declare-fun tp!2340034 () Bool)

(assert (=> b!7877564 (= e!4652557 tp!2340034)))

(declare-fun b!7877565 () Bool)

(declare-fun tp!2340037 () Bool)

(declare-fun tp!2340036 () Bool)

(assert (=> b!7877565 (= e!4652557 (and tp!2340037 tp!2340036))))

(declare-fun b!7877562 () Bool)

(assert (=> b!7877562 (= e!4652557 tp_is_empty!52739)))

(assert (= (and b!7877109 (is-ElementMatch!21170 (regTwo!42852 (regOne!42853 r2!6138)))) b!7877562))

(assert (= (and b!7877109 (is-Concat!30015 (regTwo!42852 (regOne!42853 r2!6138)))) b!7877563))

(assert (= (and b!7877109 (is-Star!21170 (regTwo!42852 (regOne!42853 r2!6138)))) b!7877564))

(assert (= (and b!7877109 (is-Union!21170 (regTwo!42852 (regOne!42853 r2!6138)))) b!7877565))

(declare-fun b!7877567 () Bool)

(declare-fun e!4652558 () Bool)

(declare-fun tp!2340040 () Bool)

(declare-fun tp!2340038 () Bool)

(assert (=> b!7877567 (= e!4652558 (and tp!2340040 tp!2340038))))

(assert (=> b!7877142 (= tp!2339946 e!4652558)))

(declare-fun b!7877568 () Bool)

(declare-fun tp!2340039 () Bool)

(assert (=> b!7877568 (= e!4652558 tp!2340039)))

(declare-fun b!7877569 () Bool)

(declare-fun tp!2340042 () Bool)

(declare-fun tp!2340041 () Bool)

(assert (=> b!7877569 (= e!4652558 (and tp!2340042 tp!2340041))))

(declare-fun b!7877566 () Bool)

(assert (=> b!7877566 (= e!4652558 tp_is_empty!52739)))

(assert (= (and b!7877142 (is-ElementMatch!21170 (regOne!42852 (regTwo!42852 r1!6200)))) b!7877566))

(assert (= (and b!7877142 (is-Concat!30015 (regOne!42852 (regTwo!42852 r1!6200)))) b!7877567))

(assert (= (and b!7877142 (is-Star!21170 (regOne!42852 (regTwo!42852 r1!6200)))) b!7877568))

(assert (= (and b!7877142 (is-Union!21170 (regOne!42852 (regTwo!42852 r1!6200)))) b!7877569))

(declare-fun b!7877571 () Bool)

(declare-fun e!4652559 () Bool)

(declare-fun tp!2340045 () Bool)

(declare-fun tp!2340043 () Bool)

(assert (=> b!7877571 (= e!4652559 (and tp!2340045 tp!2340043))))

(assert (=> b!7877142 (= tp!2339944 e!4652559)))

(declare-fun b!7877572 () Bool)

(declare-fun tp!2340044 () Bool)

(assert (=> b!7877572 (= e!4652559 tp!2340044)))

(declare-fun b!7877573 () Bool)

(declare-fun tp!2340047 () Bool)

(declare-fun tp!2340046 () Bool)

(assert (=> b!7877573 (= e!4652559 (and tp!2340047 tp!2340046))))

(declare-fun b!7877570 () Bool)

(assert (=> b!7877570 (= e!4652559 tp_is_empty!52739)))

(assert (= (and b!7877142 (is-ElementMatch!21170 (regTwo!42852 (regTwo!42852 r1!6200)))) b!7877570))

(assert (= (and b!7877142 (is-Concat!30015 (regTwo!42852 (regTwo!42852 r1!6200)))) b!7877571))

(assert (= (and b!7877142 (is-Star!21170 (regTwo!42852 (regTwo!42852 r1!6200)))) b!7877572))

(assert (= (and b!7877142 (is-Union!21170 (regTwo!42852 (regTwo!42852 r1!6200)))) b!7877573))

(declare-fun b!7877575 () Bool)

(declare-fun e!4652560 () Bool)

(declare-fun tp!2340050 () Bool)

(declare-fun tp!2340048 () Bool)

(assert (=> b!7877575 (= e!4652560 (and tp!2340050 tp!2340048))))

(assert (=> b!7877118 (= tp!2339917 e!4652560)))

(declare-fun b!7877576 () Bool)

(declare-fun tp!2340049 () Bool)

(assert (=> b!7877576 (= e!4652560 tp!2340049)))

(declare-fun b!7877577 () Bool)

(declare-fun tp!2340052 () Bool)

(declare-fun tp!2340051 () Bool)

(assert (=> b!7877577 (= e!4652560 (and tp!2340052 tp!2340051))))

(declare-fun b!7877574 () Bool)

(assert (=> b!7877574 (= e!4652560 tp_is_empty!52739)))

(assert (= (and b!7877118 (is-ElementMatch!21170 (reg!21499 (regOne!42852 r2!6138)))) b!7877574))

(assert (= (and b!7877118 (is-Concat!30015 (reg!21499 (regOne!42852 r2!6138)))) b!7877575))

(assert (= (and b!7877118 (is-Star!21170 (reg!21499 (regOne!42852 r2!6138)))) b!7877576))

(assert (= (and b!7877118 (is-Union!21170 (reg!21499 (regOne!42852 r2!6138)))) b!7877577))

(declare-fun b!7877588 () Bool)

(declare-fun e!4652568 () Bool)

(declare-fun tp!2340055 () Bool)

(declare-fun tp!2340053 () Bool)

(assert (=> b!7877588 (= e!4652568 (and tp!2340055 tp!2340053))))

(assert (=> b!7877144 (= tp!2339948 e!4652568)))

(declare-fun b!7877589 () Bool)

(declare-fun tp!2340054 () Bool)

(assert (=> b!7877589 (= e!4652568 tp!2340054)))

(declare-fun b!7877590 () Bool)

(declare-fun tp!2340057 () Bool)

(declare-fun tp!2340056 () Bool)

(assert (=> b!7877590 (= e!4652568 (and tp!2340057 tp!2340056))))

(declare-fun b!7877587 () Bool)

(assert (=> b!7877587 (= e!4652568 tp_is_empty!52739)))

(assert (= (and b!7877144 (is-ElementMatch!21170 (regOne!42853 (regTwo!42852 r1!6200)))) b!7877587))

(assert (= (and b!7877144 (is-Concat!30015 (regOne!42853 (regTwo!42852 r1!6200)))) b!7877588))

(assert (= (and b!7877144 (is-Star!21170 (regOne!42853 (regTwo!42852 r1!6200)))) b!7877589))

(assert (= (and b!7877144 (is-Union!21170 (regOne!42853 (regTwo!42852 r1!6200)))) b!7877590))

(declare-fun b!7877592 () Bool)

(declare-fun e!4652569 () Bool)

(declare-fun tp!2340060 () Bool)

(declare-fun tp!2340058 () Bool)

(assert (=> b!7877592 (= e!4652569 (and tp!2340060 tp!2340058))))

(assert (=> b!7877144 (= tp!2339947 e!4652569)))

(declare-fun b!7877593 () Bool)

(declare-fun tp!2340059 () Bool)

(assert (=> b!7877593 (= e!4652569 tp!2340059)))

(declare-fun b!7877594 () Bool)

(declare-fun tp!2340062 () Bool)

(declare-fun tp!2340061 () Bool)

(assert (=> b!7877594 (= e!4652569 (and tp!2340062 tp!2340061))))

(declare-fun b!7877591 () Bool)

(assert (=> b!7877591 (= e!4652569 tp_is_empty!52739)))

(assert (= (and b!7877144 (is-ElementMatch!21170 (regTwo!42853 (regTwo!42852 r1!6200)))) b!7877591))

(assert (= (and b!7877144 (is-Concat!30015 (regTwo!42853 (regTwo!42852 r1!6200)))) b!7877592))

(assert (= (and b!7877144 (is-Star!21170 (regTwo!42853 (regTwo!42852 r1!6200)))) b!7877593))

(assert (= (and b!7877144 (is-Union!21170 (regTwo!42853 (regTwo!42852 r1!6200)))) b!7877594))

(declare-fun b!7877596 () Bool)

(declare-fun e!4652570 () Bool)

(declare-fun tp!2340065 () Bool)

(declare-fun tp!2340063 () Bool)

(assert (=> b!7877596 (= e!4652570 (and tp!2340065 tp!2340063))))

(assert (=> b!7877134 (= tp!2339936 e!4652570)))

(declare-fun b!7877597 () Bool)

(declare-fun tp!2340064 () Bool)

(assert (=> b!7877597 (= e!4652570 tp!2340064)))

(declare-fun b!7877598 () Bool)

(declare-fun tp!2340067 () Bool)

(declare-fun tp!2340066 () Bool)

(assert (=> b!7877598 (= e!4652570 (and tp!2340067 tp!2340066))))

(declare-fun b!7877595 () Bool)

(assert (=> b!7877595 (= e!4652570 tp_is_empty!52739)))

(assert (= (and b!7877134 (is-ElementMatch!21170 (regOne!42852 (regTwo!42853 r1!6200)))) b!7877595))

(assert (= (and b!7877134 (is-Concat!30015 (regOne!42852 (regTwo!42853 r1!6200)))) b!7877596))

(assert (= (and b!7877134 (is-Star!21170 (regOne!42852 (regTwo!42853 r1!6200)))) b!7877597))

(assert (= (and b!7877134 (is-Union!21170 (regOne!42852 (regTwo!42853 r1!6200)))) b!7877598))

(declare-fun b!7877600 () Bool)

(declare-fun e!4652571 () Bool)

(declare-fun tp!2340070 () Bool)

(declare-fun tp!2340068 () Bool)

(assert (=> b!7877600 (= e!4652571 (and tp!2340070 tp!2340068))))

(assert (=> b!7877134 (= tp!2339934 e!4652571)))

(declare-fun b!7877601 () Bool)

(declare-fun tp!2340069 () Bool)

(assert (=> b!7877601 (= e!4652571 tp!2340069)))

(declare-fun b!7877602 () Bool)

(declare-fun tp!2340072 () Bool)

(declare-fun tp!2340071 () Bool)

(assert (=> b!7877602 (= e!4652571 (and tp!2340072 tp!2340071))))

(declare-fun b!7877599 () Bool)

(assert (=> b!7877599 (= e!4652571 tp_is_empty!52739)))

(assert (= (and b!7877134 (is-ElementMatch!21170 (regTwo!42852 (regTwo!42853 r1!6200)))) b!7877599))

(assert (= (and b!7877134 (is-Concat!30015 (regTwo!42852 (regTwo!42853 r1!6200)))) b!7877600))

(assert (= (and b!7877134 (is-Star!21170 (regTwo!42852 (regTwo!42853 r1!6200)))) b!7877601))

(assert (= (and b!7877134 (is-Union!21170 (regTwo!42852 (regTwo!42853 r1!6200)))) b!7877602))

(declare-fun b!7877604 () Bool)

(declare-fun e!4652572 () Bool)

(declare-fun tp!2340075 () Bool)

(declare-fun tp!2340073 () Bool)

(assert (=> b!7877604 (= e!4652572 (and tp!2340075 tp!2340073))))

(assert (=> b!7877110 (= tp!2339907 e!4652572)))

(declare-fun b!7877605 () Bool)

(declare-fun tp!2340074 () Bool)

(assert (=> b!7877605 (= e!4652572 tp!2340074)))

(declare-fun b!7877606 () Bool)

(declare-fun tp!2340077 () Bool)

(declare-fun tp!2340076 () Bool)

(assert (=> b!7877606 (= e!4652572 (and tp!2340077 tp!2340076))))

(declare-fun b!7877603 () Bool)

(assert (=> b!7877603 (= e!4652572 tp_is_empty!52739)))

(assert (= (and b!7877110 (is-ElementMatch!21170 (reg!21499 (regOne!42853 r2!6138)))) b!7877603))

(assert (= (and b!7877110 (is-Concat!30015 (reg!21499 (regOne!42853 r2!6138)))) b!7877604))

(assert (= (and b!7877110 (is-Star!21170 (reg!21499 (regOne!42853 r2!6138)))) b!7877605))

(assert (= (and b!7877110 (is-Union!21170 (reg!21499 (regOne!42853 r2!6138)))) b!7877606))

(declare-fun b!7877608 () Bool)

(declare-fun e!4652573 () Bool)

(declare-fun tp!2340080 () Bool)

(declare-fun tp!2340078 () Bool)

(assert (=> b!7877608 (= e!4652573 (and tp!2340080 tp!2340078))))

(assert (=> b!7877143 (= tp!2339945 e!4652573)))

(declare-fun b!7877609 () Bool)

(declare-fun tp!2340079 () Bool)

(assert (=> b!7877609 (= e!4652573 tp!2340079)))

(declare-fun b!7877610 () Bool)

(declare-fun tp!2340082 () Bool)

(declare-fun tp!2340081 () Bool)

(assert (=> b!7877610 (= e!4652573 (and tp!2340082 tp!2340081))))

(declare-fun b!7877607 () Bool)

(assert (=> b!7877607 (= e!4652573 tp_is_empty!52739)))

(assert (= (and b!7877143 (is-ElementMatch!21170 (reg!21499 (regTwo!42852 r1!6200)))) b!7877607))

(assert (= (and b!7877143 (is-Concat!30015 (reg!21499 (regTwo!42852 r1!6200)))) b!7877608))

(assert (= (and b!7877143 (is-Star!21170 (reg!21499 (regTwo!42852 r1!6200)))) b!7877609))

(assert (= (and b!7877143 (is-Union!21170 (reg!21499 (regTwo!42852 r1!6200)))) b!7877610))

(declare-fun b!7877612 () Bool)

(declare-fun e!4652574 () Bool)

(declare-fun tp!2340085 () Bool)

(declare-fun tp!2340083 () Bool)

(assert (=> b!7877612 (= e!4652574 (and tp!2340085 tp!2340083))))

(assert (=> b!7877119 (= tp!2339920 e!4652574)))

(declare-fun b!7877613 () Bool)

(declare-fun tp!2340084 () Bool)

(assert (=> b!7877613 (= e!4652574 tp!2340084)))

(declare-fun b!7877614 () Bool)

(declare-fun tp!2340087 () Bool)

(declare-fun tp!2340086 () Bool)

(assert (=> b!7877614 (= e!4652574 (and tp!2340087 tp!2340086))))

(declare-fun b!7877611 () Bool)

(assert (=> b!7877611 (= e!4652574 tp_is_empty!52739)))

(assert (= (and b!7877119 (is-ElementMatch!21170 (regOne!42853 (regOne!42852 r2!6138)))) b!7877611))

(assert (= (and b!7877119 (is-Concat!30015 (regOne!42853 (regOne!42852 r2!6138)))) b!7877612))

(assert (= (and b!7877119 (is-Star!21170 (regOne!42853 (regOne!42852 r2!6138)))) b!7877613))

(assert (= (and b!7877119 (is-Union!21170 (regOne!42853 (regOne!42852 r2!6138)))) b!7877614))

(declare-fun b!7877625 () Bool)

(declare-fun e!4652582 () Bool)

(declare-fun tp!2340090 () Bool)

(declare-fun tp!2340088 () Bool)

(assert (=> b!7877625 (= e!4652582 (and tp!2340090 tp!2340088))))

(assert (=> b!7877119 (= tp!2339919 e!4652582)))

(declare-fun b!7877626 () Bool)

(declare-fun tp!2340089 () Bool)

(assert (=> b!7877626 (= e!4652582 tp!2340089)))

(declare-fun b!7877627 () Bool)

(declare-fun tp!2340092 () Bool)

(declare-fun tp!2340091 () Bool)

(assert (=> b!7877627 (= e!4652582 (and tp!2340092 tp!2340091))))

(declare-fun b!7877624 () Bool)

(assert (=> b!7877624 (= e!4652582 tp_is_empty!52739)))

(assert (= (and b!7877119 (is-ElementMatch!21170 (regTwo!42853 (regOne!42852 r2!6138)))) b!7877624))

(assert (= (and b!7877119 (is-Concat!30015 (regTwo!42853 (regOne!42852 r2!6138)))) b!7877625))

(assert (= (and b!7877119 (is-Star!21170 (regTwo!42853 (regOne!42852 r2!6138)))) b!7877626))

(assert (= (and b!7877119 (is-Union!21170 (regTwo!42853 (regOne!42852 r2!6138)))) b!7877627))

(declare-fun b!7877629 () Bool)

(declare-fun e!4652583 () Bool)

(declare-fun tp!2340095 () Bool)

(declare-fun tp!2340093 () Bool)

(assert (=> b!7877629 (= e!4652583 (and tp!2340095 tp!2340093))))

(assert (=> b!7877136 (= tp!2339938 e!4652583)))

(declare-fun b!7877630 () Bool)

(declare-fun tp!2340094 () Bool)

(assert (=> b!7877630 (= e!4652583 tp!2340094)))

(declare-fun b!7877631 () Bool)

(declare-fun tp!2340097 () Bool)

(declare-fun tp!2340096 () Bool)

(assert (=> b!7877631 (= e!4652583 (and tp!2340097 tp!2340096))))

(declare-fun b!7877628 () Bool)

(assert (=> b!7877628 (= e!4652583 tp_is_empty!52739)))

(assert (= (and b!7877136 (is-ElementMatch!21170 (regOne!42853 (regTwo!42853 r1!6200)))) b!7877628))

(assert (= (and b!7877136 (is-Concat!30015 (regOne!42853 (regTwo!42853 r1!6200)))) b!7877629))

(assert (= (and b!7877136 (is-Star!21170 (regOne!42853 (regTwo!42853 r1!6200)))) b!7877630))

(assert (= (and b!7877136 (is-Union!21170 (regOne!42853 (regTwo!42853 r1!6200)))) b!7877631))

(declare-fun b!7877633 () Bool)

(declare-fun e!4652584 () Bool)

(declare-fun tp!2340100 () Bool)

(declare-fun tp!2340098 () Bool)

(assert (=> b!7877633 (= e!4652584 (and tp!2340100 tp!2340098))))

(assert (=> b!7877136 (= tp!2339937 e!4652584)))

(declare-fun b!7877634 () Bool)

(declare-fun tp!2340099 () Bool)

(assert (=> b!7877634 (= e!4652584 tp!2340099)))

(declare-fun b!7877635 () Bool)

(declare-fun tp!2340102 () Bool)

(declare-fun tp!2340101 () Bool)

(assert (=> b!7877635 (= e!4652584 (and tp!2340102 tp!2340101))))

(declare-fun b!7877632 () Bool)

(assert (=> b!7877632 (= e!4652584 tp_is_empty!52739)))

(assert (= (and b!7877136 (is-ElementMatch!21170 (regTwo!42853 (regTwo!42853 r1!6200)))) b!7877632))

(assert (= (and b!7877136 (is-Concat!30015 (regTwo!42853 (regTwo!42853 r1!6200)))) b!7877633))

(assert (= (and b!7877136 (is-Star!21170 (regTwo!42853 (regTwo!42853 r1!6200)))) b!7877634))

(assert (= (and b!7877136 (is-Union!21170 (regTwo!42853 (regTwo!42853 r1!6200)))) b!7877635))

(declare-fun b!7877637 () Bool)

(declare-fun e!4652585 () Bool)

(declare-fun tp!2340105 () Bool)

(declare-fun tp!2340103 () Bool)

(assert (=> b!7877637 (= e!4652585 (and tp!2340105 tp!2340103))))

(assert (=> b!7877135 (= tp!2339935 e!4652585)))

(declare-fun b!7877638 () Bool)

(declare-fun tp!2340104 () Bool)

(assert (=> b!7877638 (= e!4652585 tp!2340104)))

(declare-fun b!7877639 () Bool)

(declare-fun tp!2340107 () Bool)

(declare-fun tp!2340106 () Bool)

(assert (=> b!7877639 (= e!4652585 (and tp!2340107 tp!2340106))))

(declare-fun b!7877636 () Bool)

(assert (=> b!7877636 (= e!4652585 tp_is_empty!52739)))

(assert (= (and b!7877135 (is-ElementMatch!21170 (reg!21499 (regTwo!42853 r1!6200)))) b!7877636))

(assert (= (and b!7877135 (is-Concat!30015 (reg!21499 (regTwo!42853 r1!6200)))) b!7877637))

(assert (= (and b!7877135 (is-Star!21170 (reg!21499 (regTwo!42853 r1!6200)))) b!7877638))

(assert (= (and b!7877135 (is-Union!21170 (reg!21499 (regTwo!42853 r1!6200)))) b!7877639))

(declare-fun b!7877641 () Bool)

(declare-fun e!4652586 () Bool)

(declare-fun tp!2340110 () Bool)

(declare-fun tp!2340108 () Bool)

(assert (=> b!7877641 (= e!4652586 (and tp!2340110 tp!2340108))))

(assert (=> b!7877111 (= tp!2339910 e!4652586)))

(declare-fun b!7877642 () Bool)

(declare-fun tp!2340109 () Bool)

(assert (=> b!7877642 (= e!4652586 tp!2340109)))

(declare-fun b!7877643 () Bool)

(declare-fun tp!2340112 () Bool)

(declare-fun tp!2340111 () Bool)

(assert (=> b!7877643 (= e!4652586 (and tp!2340112 tp!2340111))))

(declare-fun b!7877640 () Bool)

(assert (=> b!7877640 (= e!4652586 tp_is_empty!52739)))

(assert (= (and b!7877111 (is-ElementMatch!21170 (regOne!42853 (regOne!42853 r2!6138)))) b!7877640))

(assert (= (and b!7877111 (is-Concat!30015 (regOne!42853 (regOne!42853 r2!6138)))) b!7877641))

(assert (= (and b!7877111 (is-Star!21170 (regOne!42853 (regOne!42853 r2!6138)))) b!7877642))

(assert (= (and b!7877111 (is-Union!21170 (regOne!42853 (regOne!42853 r2!6138)))) b!7877643))

(declare-fun b!7877645 () Bool)

(declare-fun e!4652587 () Bool)

(declare-fun tp!2340115 () Bool)

(declare-fun tp!2340113 () Bool)

(assert (=> b!7877645 (= e!4652587 (and tp!2340115 tp!2340113))))

(assert (=> b!7877111 (= tp!2339909 e!4652587)))

(declare-fun b!7877646 () Bool)

(declare-fun tp!2340114 () Bool)

(assert (=> b!7877646 (= e!4652587 tp!2340114)))

(declare-fun b!7877647 () Bool)

(declare-fun tp!2340117 () Bool)

(declare-fun tp!2340116 () Bool)

(assert (=> b!7877647 (= e!4652587 (and tp!2340117 tp!2340116))))

(declare-fun b!7877644 () Bool)

(assert (=> b!7877644 (= e!4652587 tp_is_empty!52739)))

(assert (= (and b!7877111 (is-ElementMatch!21170 (regTwo!42853 (regOne!42853 r2!6138)))) b!7877644))

(assert (= (and b!7877111 (is-Concat!30015 (regTwo!42853 (regOne!42853 r2!6138)))) b!7877645))

(assert (= (and b!7877111 (is-Star!21170 (regTwo!42853 (regOne!42853 r2!6138)))) b!7877646))

(assert (= (and b!7877111 (is-Union!21170 (regTwo!42853 (regOne!42853 r2!6138)))) b!7877647))

(declare-fun b!7877649 () Bool)

(declare-fun e!4652588 () Bool)

(declare-fun tp!2340120 () Bool)

(declare-fun tp!2340118 () Bool)

(assert (=> b!7877649 (= e!4652588 (and tp!2340120 tp!2340118))))

(assert (=> b!7877132 (= tp!2339933 e!4652588)))

(declare-fun b!7877650 () Bool)

(declare-fun tp!2340119 () Bool)

(assert (=> b!7877650 (= e!4652588 tp!2340119)))

(declare-fun b!7877651 () Bool)

(declare-fun tp!2340122 () Bool)

(declare-fun tp!2340121 () Bool)

(assert (=> b!7877651 (= e!4652588 (and tp!2340122 tp!2340121))))

(declare-fun b!7877648 () Bool)

(assert (=> b!7877648 (= e!4652588 tp_is_empty!52739)))

(assert (= (and b!7877132 (is-ElementMatch!21170 (regOne!42853 (regOne!42853 r1!6200)))) b!7877648))

(assert (= (and b!7877132 (is-Concat!30015 (regOne!42853 (regOne!42853 r1!6200)))) b!7877649))

(assert (= (and b!7877132 (is-Star!21170 (regOne!42853 (regOne!42853 r1!6200)))) b!7877650))

(assert (= (and b!7877132 (is-Union!21170 (regOne!42853 (regOne!42853 r1!6200)))) b!7877651))

(declare-fun b!7877653 () Bool)

(declare-fun e!4652589 () Bool)

(declare-fun tp!2340125 () Bool)

(declare-fun tp!2340123 () Bool)

(assert (=> b!7877653 (= e!4652589 (and tp!2340125 tp!2340123))))

(assert (=> b!7877132 (= tp!2339932 e!4652589)))

(declare-fun b!7877654 () Bool)

(declare-fun tp!2340124 () Bool)

(assert (=> b!7877654 (= e!4652589 tp!2340124)))

(declare-fun b!7877655 () Bool)

(declare-fun tp!2340127 () Bool)

(declare-fun tp!2340126 () Bool)

(assert (=> b!7877655 (= e!4652589 (and tp!2340127 tp!2340126))))

(declare-fun b!7877652 () Bool)

(assert (=> b!7877652 (= e!4652589 tp_is_empty!52739)))

(assert (= (and b!7877132 (is-ElementMatch!21170 (regTwo!42853 (regOne!42853 r1!6200)))) b!7877652))

(assert (= (and b!7877132 (is-Concat!30015 (regTwo!42853 (regOne!42853 r1!6200)))) b!7877653))

(assert (= (and b!7877132 (is-Star!21170 (regTwo!42853 (regOne!42853 r1!6200)))) b!7877654))

(assert (= (and b!7877132 (is-Union!21170 (regTwo!42853 (regOne!42853 r1!6200)))) b!7877655))

(declare-fun b!7877657 () Bool)

(declare-fun e!4652590 () Bool)

(declare-fun tp!2340130 () Bool)

(declare-fun tp!2340128 () Bool)

(assert (=> b!7877657 (= e!4652590 (and tp!2340130 tp!2340128))))

(assert (=> b!7877146 (= tp!2339951 e!4652590)))

(declare-fun b!7877658 () Bool)

(declare-fun tp!2340129 () Bool)

(assert (=> b!7877658 (= e!4652590 tp!2340129)))

(declare-fun b!7877659 () Bool)

(declare-fun tp!2340132 () Bool)

(declare-fun tp!2340131 () Bool)

(assert (=> b!7877659 (= e!4652590 (and tp!2340132 tp!2340131))))

(declare-fun b!7877656 () Bool)

(assert (=> b!7877656 (= e!4652590 tp_is_empty!52739)))

(assert (= (and b!7877146 (is-ElementMatch!21170 (regOne!42852 (reg!21499 r2!6138)))) b!7877656))

(assert (= (and b!7877146 (is-Concat!30015 (regOne!42852 (reg!21499 r2!6138)))) b!7877657))

(assert (= (and b!7877146 (is-Star!21170 (regOne!42852 (reg!21499 r2!6138)))) b!7877658))

(assert (= (and b!7877146 (is-Union!21170 (regOne!42852 (reg!21499 r2!6138)))) b!7877659))

(declare-fun b!7877670 () Bool)

(declare-fun e!4652598 () Bool)

(declare-fun tp!2340135 () Bool)

(declare-fun tp!2340133 () Bool)

(assert (=> b!7877670 (= e!4652598 (and tp!2340135 tp!2340133))))

(assert (=> b!7877146 (= tp!2339949 e!4652598)))

(declare-fun b!7877671 () Bool)

(declare-fun tp!2340134 () Bool)

(assert (=> b!7877671 (= e!4652598 tp!2340134)))

(declare-fun b!7877672 () Bool)

(declare-fun tp!2340137 () Bool)

(declare-fun tp!2340136 () Bool)

(assert (=> b!7877672 (= e!4652598 (and tp!2340137 tp!2340136))))

(declare-fun b!7877669 () Bool)

(assert (=> b!7877669 (= e!4652598 tp_is_empty!52739)))

(assert (= (and b!7877146 (is-ElementMatch!21170 (regTwo!42852 (reg!21499 r2!6138)))) b!7877669))

(assert (= (and b!7877146 (is-Concat!30015 (regTwo!42852 (reg!21499 r2!6138)))) b!7877670))

(assert (= (and b!7877146 (is-Star!21170 (regTwo!42852 (reg!21499 r2!6138)))) b!7877671))

(assert (= (and b!7877146 (is-Union!21170 (regTwo!42852 (reg!21499 r2!6138)))) b!7877672))

(declare-fun b!7877674 () Bool)

(declare-fun e!4652599 () Bool)

(declare-fun tp!2340140 () Bool)

(declare-fun tp!2340138 () Bool)

(assert (=> b!7877674 (= e!4652599 (and tp!2340140 tp!2340138))))

(assert (=> b!7877122 (= tp!2339922 e!4652599)))

(declare-fun b!7877675 () Bool)

(declare-fun tp!2340139 () Bool)

(assert (=> b!7877675 (= e!4652599 tp!2340139)))

(declare-fun b!7877676 () Bool)

(declare-fun tp!2340142 () Bool)

(declare-fun tp!2340141 () Bool)

(assert (=> b!7877676 (= e!4652599 (and tp!2340142 tp!2340141))))

(declare-fun b!7877673 () Bool)

(assert (=> b!7877673 (= e!4652599 tp_is_empty!52739)))

(assert (= (and b!7877122 (is-ElementMatch!21170 (reg!21499 (regTwo!42852 r2!6138)))) b!7877673))

(assert (= (and b!7877122 (is-Concat!30015 (reg!21499 (regTwo!42852 r2!6138)))) b!7877674))

(assert (= (and b!7877122 (is-Star!21170 (reg!21499 (regTwo!42852 r2!6138)))) b!7877675))

(assert (= (and b!7877122 (is-Union!21170 (reg!21499 (regTwo!42852 r2!6138)))) b!7877676))

(declare-fun b!7877678 () Bool)

(declare-fun e!4652600 () Bool)

(declare-fun tp!2340145 () Bool)

(declare-fun tp!2340143 () Bool)

(assert (=> b!7877678 (= e!4652600 (and tp!2340145 tp!2340143))))

(assert (=> b!7877105 (= tp!2339903 e!4652600)))

(declare-fun b!7877679 () Bool)

(declare-fun tp!2340144 () Bool)

(assert (=> b!7877679 (= e!4652600 tp!2340144)))

(declare-fun b!7877680 () Bool)

(declare-fun tp!2340147 () Bool)

(declare-fun tp!2340146 () Bool)

(assert (=> b!7877680 (= e!4652600 (and tp!2340147 tp!2340146))))

(declare-fun b!7877677 () Bool)

(assert (=> b!7877677 (= e!4652600 tp_is_empty!52739)))

(assert (= (and b!7877105 (is-ElementMatch!21170 (regOne!42852 (reg!21499 r1!6200)))) b!7877677))

(assert (= (and b!7877105 (is-Concat!30015 (regOne!42852 (reg!21499 r1!6200)))) b!7877678))

(assert (= (and b!7877105 (is-Star!21170 (regOne!42852 (reg!21499 r1!6200)))) b!7877679))

(assert (= (and b!7877105 (is-Union!21170 (regOne!42852 (reg!21499 r1!6200)))) b!7877680))

(declare-fun b!7877682 () Bool)

(declare-fun e!4652601 () Bool)

(declare-fun tp!2340150 () Bool)

(declare-fun tp!2340148 () Bool)

(assert (=> b!7877682 (= e!4652601 (and tp!2340150 tp!2340148))))

(assert (=> b!7877105 (= tp!2339901 e!4652601)))

(declare-fun b!7877683 () Bool)

(declare-fun tp!2340149 () Bool)

(assert (=> b!7877683 (= e!4652601 tp!2340149)))

(declare-fun b!7877684 () Bool)

(declare-fun tp!2340152 () Bool)

(declare-fun tp!2340151 () Bool)

(assert (=> b!7877684 (= e!4652601 (and tp!2340152 tp!2340151))))

(declare-fun b!7877681 () Bool)

(assert (=> b!7877681 (= e!4652601 tp_is_empty!52739)))

(assert (= (and b!7877105 (is-ElementMatch!21170 (regTwo!42852 (reg!21499 r1!6200)))) b!7877681))

(assert (= (and b!7877105 (is-Concat!30015 (regTwo!42852 (reg!21499 r1!6200)))) b!7877682))

(assert (= (and b!7877105 (is-Star!21170 (regTwo!42852 (reg!21499 r1!6200)))) b!7877683))

(assert (= (and b!7877105 (is-Union!21170 (regTwo!42852 (reg!21499 r1!6200)))) b!7877684))

(declare-fun b!7877686 () Bool)

(declare-fun e!4652602 () Bool)

(declare-fun tp!2340155 () Bool)

(declare-fun tp!2340153 () Bool)

(assert (=> b!7877686 (= e!4652602 (and tp!2340155 tp!2340153))))

(assert (=> b!7877121 (= tp!2339923 e!4652602)))

(declare-fun b!7877687 () Bool)

(declare-fun tp!2340154 () Bool)

(assert (=> b!7877687 (= e!4652602 tp!2340154)))

(declare-fun b!7877688 () Bool)

(declare-fun tp!2340157 () Bool)

(declare-fun tp!2340156 () Bool)

(assert (=> b!7877688 (= e!4652602 (and tp!2340157 tp!2340156))))

(declare-fun b!7877685 () Bool)

(assert (=> b!7877685 (= e!4652602 tp_is_empty!52739)))

(assert (= (and b!7877121 (is-ElementMatch!21170 (regOne!42852 (regTwo!42852 r2!6138)))) b!7877685))

(assert (= (and b!7877121 (is-Concat!30015 (regOne!42852 (regTwo!42852 r2!6138)))) b!7877686))

(assert (= (and b!7877121 (is-Star!21170 (regOne!42852 (regTwo!42852 r2!6138)))) b!7877687))

(assert (= (and b!7877121 (is-Union!21170 (regOne!42852 (regTwo!42852 r2!6138)))) b!7877688))

(declare-fun b!7877690 () Bool)

(declare-fun e!4652603 () Bool)

(declare-fun tp!2340160 () Bool)

(declare-fun tp!2340158 () Bool)

(assert (=> b!7877690 (= e!4652603 (and tp!2340160 tp!2340158))))

(assert (=> b!7877121 (= tp!2339921 e!4652603)))

(declare-fun b!7877691 () Bool)

(declare-fun tp!2340159 () Bool)

(assert (=> b!7877691 (= e!4652603 tp!2340159)))

(declare-fun b!7877692 () Bool)

(declare-fun tp!2340162 () Bool)

(declare-fun tp!2340161 () Bool)

(assert (=> b!7877692 (= e!4652603 (and tp!2340162 tp!2340161))))

(declare-fun b!7877689 () Bool)

(assert (=> b!7877689 (= e!4652603 tp_is_empty!52739)))

(assert (= (and b!7877121 (is-ElementMatch!21170 (regTwo!42852 (regTwo!42852 r2!6138)))) b!7877689))

(assert (= (and b!7877121 (is-Concat!30015 (regTwo!42852 (regTwo!42852 r2!6138)))) b!7877690))

(assert (= (and b!7877121 (is-Star!21170 (regTwo!42852 (regTwo!42852 r2!6138)))) b!7877691))

(assert (= (and b!7877121 (is-Union!21170 (regTwo!42852 (regTwo!42852 r2!6138)))) b!7877692))

(declare-fun b!7877694 () Bool)

(declare-fun e!4652604 () Bool)

(declare-fun tp!2340165 () Bool)

(declare-fun tp!2340163 () Bool)

(assert (=> b!7877694 (= e!4652604 (and tp!2340165 tp!2340163))))

(assert (=> b!7877138 (= tp!2339941 e!4652604)))

(declare-fun b!7877695 () Bool)

(declare-fun tp!2340164 () Bool)

(assert (=> b!7877695 (= e!4652604 tp!2340164)))

(declare-fun b!7877696 () Bool)

(declare-fun tp!2340167 () Bool)

(declare-fun tp!2340166 () Bool)

(assert (=> b!7877696 (= e!4652604 (and tp!2340167 tp!2340166))))

(declare-fun b!7877693 () Bool)

(assert (=> b!7877693 (= e!4652604 tp_is_empty!52739)))

(assert (= (and b!7877138 (is-ElementMatch!21170 (regOne!42852 (regOne!42852 r1!6200)))) b!7877693))

(assert (= (and b!7877138 (is-Concat!30015 (regOne!42852 (regOne!42852 r1!6200)))) b!7877694))

(assert (= (and b!7877138 (is-Star!21170 (regOne!42852 (regOne!42852 r1!6200)))) b!7877695))

(assert (= (and b!7877138 (is-Union!21170 (regOne!42852 (regOne!42852 r1!6200)))) b!7877696))

(declare-fun b!7877698 () Bool)

(declare-fun e!4652605 () Bool)

(declare-fun tp!2340170 () Bool)

(declare-fun tp!2340168 () Bool)

(assert (=> b!7877698 (= e!4652605 (and tp!2340170 tp!2340168))))

(assert (=> b!7877138 (= tp!2339939 e!4652605)))

(declare-fun b!7877699 () Bool)

(declare-fun tp!2340169 () Bool)

(assert (=> b!7877699 (= e!4652605 tp!2340169)))

(declare-fun b!7877700 () Bool)

(declare-fun tp!2340172 () Bool)

(declare-fun tp!2340171 () Bool)

(assert (=> b!7877700 (= e!4652605 (and tp!2340172 tp!2340171))))

(declare-fun b!7877697 () Bool)

(assert (=> b!7877697 (= e!4652605 tp_is_empty!52739)))

(assert (= (and b!7877138 (is-ElementMatch!21170 (regTwo!42852 (regOne!42852 r1!6200)))) b!7877697))

(assert (= (and b!7877138 (is-Concat!30015 (regTwo!42852 (regOne!42852 r1!6200)))) b!7877698))

(assert (= (and b!7877138 (is-Star!21170 (regTwo!42852 (regOne!42852 r1!6200)))) b!7877699))

(assert (= (and b!7877138 (is-Union!21170 (regTwo!42852 (regOne!42852 r1!6200)))) b!7877700))

(declare-fun b!7877702 () Bool)

(declare-fun e!4652606 () Bool)

(declare-fun tp!2340175 () Bool)

(declare-fun tp!2340173 () Bool)

(assert (=> b!7877702 (= e!4652606 (and tp!2340175 tp!2340173))))

(assert (=> b!7877114 (= tp!2339912 e!4652606)))

(declare-fun b!7877703 () Bool)

(declare-fun tp!2340174 () Bool)

(assert (=> b!7877703 (= e!4652606 tp!2340174)))

(declare-fun b!7877704 () Bool)

(declare-fun tp!2340177 () Bool)

(declare-fun tp!2340176 () Bool)

(assert (=> b!7877704 (= e!4652606 (and tp!2340177 tp!2340176))))

(declare-fun b!7877701 () Bool)

(assert (=> b!7877701 (= e!4652606 tp_is_empty!52739)))

(assert (= (and b!7877114 (is-ElementMatch!21170 (reg!21499 (regTwo!42853 r2!6138)))) b!7877701))

(assert (= (and b!7877114 (is-Concat!30015 (reg!21499 (regTwo!42853 r2!6138)))) b!7877702))

(assert (= (and b!7877114 (is-Star!21170 (reg!21499 (regTwo!42853 r2!6138)))) b!7877703))

(assert (= (and b!7877114 (is-Union!21170 (reg!21499 (regTwo!42853 r2!6138)))) b!7877704))

(declare-fun b!7877706 () Bool)

(declare-fun e!4652607 () Bool)

(declare-fun tp!2340180 () Bool)

(declare-fun tp!2340178 () Bool)

(assert (=> b!7877706 (= e!4652607 (and tp!2340180 tp!2340178))))

(assert (=> b!7877147 (= tp!2339950 e!4652607)))

(declare-fun b!7877707 () Bool)

(declare-fun tp!2340179 () Bool)

(assert (=> b!7877707 (= e!4652607 tp!2340179)))

(declare-fun b!7877708 () Bool)

(declare-fun tp!2340182 () Bool)

(declare-fun tp!2340181 () Bool)

(assert (=> b!7877708 (= e!4652607 (and tp!2340182 tp!2340181))))

(declare-fun b!7877705 () Bool)

(assert (=> b!7877705 (= e!4652607 tp_is_empty!52739)))

(assert (= (and b!7877147 (is-ElementMatch!21170 (reg!21499 (reg!21499 r2!6138)))) b!7877705))

(assert (= (and b!7877147 (is-Concat!30015 (reg!21499 (reg!21499 r2!6138)))) b!7877706))

(assert (= (and b!7877147 (is-Star!21170 (reg!21499 (reg!21499 r2!6138)))) b!7877707))

(assert (= (and b!7877147 (is-Union!21170 (reg!21499 (reg!21499 r2!6138)))) b!7877708))

(declare-fun b!7877719 () Bool)

(declare-fun e!4652615 () Bool)

(declare-fun tp!2340185 () Bool)

(declare-fun tp!2340183 () Bool)

(assert (=> b!7877719 (= e!4652615 (and tp!2340185 tp!2340183))))

(assert (=> b!7877123 (= tp!2339925 e!4652615)))

(declare-fun b!7877720 () Bool)

(declare-fun tp!2340184 () Bool)

(assert (=> b!7877720 (= e!4652615 tp!2340184)))

(declare-fun b!7877721 () Bool)

(declare-fun tp!2340187 () Bool)

(declare-fun tp!2340186 () Bool)

(assert (=> b!7877721 (= e!4652615 (and tp!2340187 tp!2340186))))

(declare-fun b!7877718 () Bool)

(assert (=> b!7877718 (= e!4652615 tp_is_empty!52739)))

(assert (= (and b!7877123 (is-ElementMatch!21170 (regOne!42853 (regTwo!42852 r2!6138)))) b!7877718))

(assert (= (and b!7877123 (is-Concat!30015 (regOne!42853 (regTwo!42852 r2!6138)))) b!7877719))

(assert (= (and b!7877123 (is-Star!21170 (regOne!42853 (regTwo!42852 r2!6138)))) b!7877720))

(assert (= (and b!7877123 (is-Union!21170 (regOne!42853 (regTwo!42852 r2!6138)))) b!7877721))

(declare-fun b!7877723 () Bool)

(declare-fun e!4652616 () Bool)

(declare-fun tp!2340190 () Bool)

(declare-fun tp!2340188 () Bool)

(assert (=> b!7877723 (= e!4652616 (and tp!2340190 tp!2340188))))

(assert (=> b!7877123 (= tp!2339924 e!4652616)))

(declare-fun b!7877724 () Bool)

(declare-fun tp!2340189 () Bool)

(assert (=> b!7877724 (= e!4652616 tp!2340189)))

(declare-fun b!7877725 () Bool)

(declare-fun tp!2340192 () Bool)

(declare-fun tp!2340191 () Bool)

(assert (=> b!7877725 (= e!4652616 (and tp!2340192 tp!2340191))))

(declare-fun b!7877722 () Bool)

(assert (=> b!7877722 (= e!4652616 tp_is_empty!52739)))

(assert (= (and b!7877123 (is-ElementMatch!21170 (regTwo!42853 (regTwo!42852 r2!6138)))) b!7877722))

(assert (= (and b!7877123 (is-Concat!30015 (regTwo!42853 (regTwo!42852 r2!6138)))) b!7877723))

(assert (= (and b!7877123 (is-Star!21170 (regTwo!42853 (regTwo!42852 r2!6138)))) b!7877724))

(assert (= (and b!7877123 (is-Union!21170 (regTwo!42853 (regTwo!42852 r2!6138)))) b!7877725))

(declare-fun b!7877727 () Bool)

(declare-fun e!4652617 () Bool)

(declare-fun tp!2340195 () Bool)

(declare-fun tp!2340193 () Bool)

(assert (=> b!7877727 (= e!4652617 (and tp!2340195 tp!2340193))))

(assert (=> b!7877106 (= tp!2339902 e!4652617)))

(declare-fun b!7877728 () Bool)

(declare-fun tp!2340194 () Bool)

(assert (=> b!7877728 (= e!4652617 tp!2340194)))

(declare-fun b!7877729 () Bool)

(declare-fun tp!2340197 () Bool)

(declare-fun tp!2340196 () Bool)

(assert (=> b!7877729 (= e!4652617 (and tp!2340197 tp!2340196))))

(declare-fun b!7877726 () Bool)

(assert (=> b!7877726 (= e!4652617 tp_is_empty!52739)))

(assert (= (and b!7877106 (is-ElementMatch!21170 (reg!21499 (reg!21499 r1!6200)))) b!7877726))

(assert (= (and b!7877106 (is-Concat!30015 (reg!21499 (reg!21499 r1!6200)))) b!7877727))

(assert (= (and b!7877106 (is-Star!21170 (reg!21499 (reg!21499 r1!6200)))) b!7877728))

(assert (= (and b!7877106 (is-Union!21170 (reg!21499 (reg!21499 r1!6200)))) b!7877729))

(declare-fun b!7877731 () Bool)

(declare-fun e!4652618 () Bool)

(declare-fun tp!2340200 () Bool)

(declare-fun tp!2340198 () Bool)

(assert (=> b!7877731 (= e!4652618 (and tp!2340200 tp!2340198))))

(assert (=> b!7877113 (= tp!2339913 e!4652618)))

(declare-fun b!7877732 () Bool)

(declare-fun tp!2340199 () Bool)

(assert (=> b!7877732 (= e!4652618 tp!2340199)))

(declare-fun b!7877733 () Bool)

(declare-fun tp!2340202 () Bool)

(declare-fun tp!2340201 () Bool)

(assert (=> b!7877733 (= e!4652618 (and tp!2340202 tp!2340201))))

(declare-fun b!7877730 () Bool)

(assert (=> b!7877730 (= e!4652618 tp_is_empty!52739)))

(assert (= (and b!7877113 (is-ElementMatch!21170 (regOne!42852 (regTwo!42853 r2!6138)))) b!7877730))

(assert (= (and b!7877113 (is-Concat!30015 (regOne!42852 (regTwo!42853 r2!6138)))) b!7877731))

(assert (= (and b!7877113 (is-Star!21170 (regOne!42852 (regTwo!42853 r2!6138)))) b!7877732))

(assert (= (and b!7877113 (is-Union!21170 (regOne!42852 (regTwo!42853 r2!6138)))) b!7877733))

(declare-fun b!7877735 () Bool)

(declare-fun e!4652619 () Bool)

(declare-fun tp!2340205 () Bool)

(declare-fun tp!2340203 () Bool)

(assert (=> b!7877735 (= e!4652619 (and tp!2340205 tp!2340203))))

(assert (=> b!7877113 (= tp!2339911 e!4652619)))

(declare-fun b!7877736 () Bool)

(declare-fun tp!2340204 () Bool)

(assert (=> b!7877736 (= e!4652619 tp!2340204)))

(declare-fun b!7877737 () Bool)

(declare-fun tp!2340207 () Bool)

(declare-fun tp!2340206 () Bool)

(assert (=> b!7877737 (= e!4652619 (and tp!2340207 tp!2340206))))

(declare-fun b!7877734 () Bool)

(assert (=> b!7877734 (= e!4652619 tp_is_empty!52739)))

(assert (= (and b!7877113 (is-ElementMatch!21170 (regTwo!42852 (regTwo!42853 r2!6138)))) b!7877734))

(assert (= (and b!7877113 (is-Concat!30015 (regTwo!42852 (regTwo!42853 r2!6138)))) b!7877735))

(assert (= (and b!7877113 (is-Star!21170 (regTwo!42852 (regTwo!42853 r2!6138)))) b!7877736))

(assert (= (and b!7877113 (is-Union!21170 (regTwo!42852 (regTwo!42853 r2!6138)))) b!7877737))

(declare-fun b!7877739 () Bool)

(declare-fun e!4652620 () Bool)

(declare-fun tp!2340210 () Bool)

(declare-fun tp!2340208 () Bool)

(assert (=> b!7877739 (= e!4652620 (and tp!2340210 tp!2340208))))

(assert (=> b!7877130 (= tp!2339931 e!4652620)))

(declare-fun b!7877740 () Bool)

(declare-fun tp!2340209 () Bool)

(assert (=> b!7877740 (= e!4652620 tp!2340209)))

(declare-fun b!7877741 () Bool)

(declare-fun tp!2340212 () Bool)

(declare-fun tp!2340211 () Bool)

(assert (=> b!7877741 (= e!4652620 (and tp!2340212 tp!2340211))))

(declare-fun b!7877738 () Bool)

(assert (=> b!7877738 (= e!4652620 tp_is_empty!52739)))

(assert (= (and b!7877130 (is-ElementMatch!21170 (regOne!42852 (regOne!42853 r1!6200)))) b!7877738))

(assert (= (and b!7877130 (is-Concat!30015 (regOne!42852 (regOne!42853 r1!6200)))) b!7877739))

(assert (= (and b!7877130 (is-Star!21170 (regOne!42852 (regOne!42853 r1!6200)))) b!7877740))

(assert (= (and b!7877130 (is-Union!21170 (regOne!42852 (regOne!42853 r1!6200)))) b!7877741))

(declare-fun b!7877743 () Bool)

(declare-fun e!4652621 () Bool)

(declare-fun tp!2340215 () Bool)

(declare-fun tp!2340213 () Bool)

(assert (=> b!7877743 (= e!4652621 (and tp!2340215 tp!2340213))))

(assert (=> b!7877130 (= tp!2339929 e!4652621)))

(declare-fun b!7877744 () Bool)

(declare-fun tp!2340214 () Bool)

(assert (=> b!7877744 (= e!4652621 tp!2340214)))

(declare-fun b!7877745 () Bool)

(declare-fun tp!2340217 () Bool)

(declare-fun tp!2340216 () Bool)

(assert (=> b!7877745 (= e!4652621 (and tp!2340217 tp!2340216))))

(declare-fun b!7877742 () Bool)

(assert (=> b!7877742 (= e!4652621 tp_is_empty!52739)))

(assert (= (and b!7877130 (is-ElementMatch!21170 (regTwo!42852 (regOne!42853 r1!6200)))) b!7877742))

(assert (= (and b!7877130 (is-Concat!30015 (regTwo!42852 (regOne!42853 r1!6200)))) b!7877743))

(assert (= (and b!7877130 (is-Star!21170 (regTwo!42852 (regOne!42853 r1!6200)))) b!7877744))

(assert (= (and b!7877130 (is-Union!21170 (regTwo!42852 (regOne!42853 r1!6200)))) b!7877745))

(declare-fun b!7877747 () Bool)

(declare-fun e!4652622 () Bool)

(declare-fun tp!2340220 () Bool)

(declare-fun tp!2340218 () Bool)

(assert (=> b!7877747 (= e!4652622 (and tp!2340220 tp!2340218))))

(assert (=> b!7877139 (= tp!2339940 e!4652622)))

(declare-fun b!7877748 () Bool)

(declare-fun tp!2340219 () Bool)

(assert (=> b!7877748 (= e!4652622 tp!2340219)))

(declare-fun b!7877749 () Bool)

(declare-fun tp!2340222 () Bool)

(declare-fun tp!2340221 () Bool)

(assert (=> b!7877749 (= e!4652622 (and tp!2340222 tp!2340221))))

(declare-fun b!7877746 () Bool)

(assert (=> b!7877746 (= e!4652622 tp_is_empty!52739)))

(assert (= (and b!7877139 (is-ElementMatch!21170 (reg!21499 (regOne!42852 r1!6200)))) b!7877746))

(assert (= (and b!7877139 (is-Concat!30015 (reg!21499 (regOne!42852 r1!6200)))) b!7877747))

(assert (= (and b!7877139 (is-Star!21170 (reg!21499 (regOne!42852 r1!6200)))) b!7877748))

(assert (= (and b!7877139 (is-Union!21170 (reg!21499 (regOne!42852 r1!6200)))) b!7877749))

(declare-fun b!7877756 () Bool)

(declare-fun e!4652628 () Bool)

(declare-fun tp!2340225 () Bool)

(declare-fun tp!2340223 () Bool)

(assert (=> b!7877756 (= e!4652628 (and tp!2340225 tp!2340223))))

(assert (=> b!7877115 (= tp!2339915 e!4652628)))

(declare-fun b!7877757 () Bool)

(declare-fun tp!2340224 () Bool)

(assert (=> b!7877757 (= e!4652628 tp!2340224)))

(declare-fun b!7877759 () Bool)

(declare-fun tp!2340227 () Bool)

(declare-fun tp!2340226 () Bool)

(assert (=> b!7877759 (= e!4652628 (and tp!2340227 tp!2340226))))

(declare-fun b!7877755 () Bool)

(assert (=> b!7877755 (= e!4652628 tp_is_empty!52739)))

(assert (= (and b!7877115 (is-ElementMatch!21170 (regOne!42853 (regTwo!42853 r2!6138)))) b!7877755))

(assert (= (and b!7877115 (is-Concat!30015 (regOne!42853 (regTwo!42853 r2!6138)))) b!7877756))

(assert (= (and b!7877115 (is-Star!21170 (regOne!42853 (regTwo!42853 r2!6138)))) b!7877757))

(assert (= (and b!7877115 (is-Union!21170 (regOne!42853 (regTwo!42853 r2!6138)))) b!7877759))

(declare-fun b!7877765 () Bool)

(declare-fun e!4652629 () Bool)

(declare-fun tp!2340230 () Bool)

(declare-fun tp!2340228 () Bool)

(assert (=> b!7877765 (= e!4652629 (and tp!2340230 tp!2340228))))

(assert (=> b!7877115 (= tp!2339914 e!4652629)))

(declare-fun b!7877766 () Bool)

(declare-fun tp!2340229 () Bool)

(assert (=> b!7877766 (= e!4652629 tp!2340229)))

(declare-fun b!7877767 () Bool)

(declare-fun tp!2340232 () Bool)

(declare-fun tp!2340231 () Bool)

(assert (=> b!7877767 (= e!4652629 (and tp!2340232 tp!2340231))))

(declare-fun b!7877764 () Bool)

(assert (=> b!7877764 (= e!4652629 tp_is_empty!52739)))

(assert (= (and b!7877115 (is-ElementMatch!21170 (regTwo!42853 (regTwo!42853 r2!6138)))) b!7877764))

(assert (= (and b!7877115 (is-Concat!30015 (regTwo!42853 (regTwo!42853 r2!6138)))) b!7877765))

(assert (= (and b!7877115 (is-Star!21170 (regTwo!42853 (regTwo!42853 r2!6138)))) b!7877766))

(assert (= (and b!7877115 (is-Union!21170 (regTwo!42853 (regTwo!42853 r2!6138)))) b!7877767))

(declare-fun b!7877769 () Bool)

(declare-fun e!4652630 () Bool)

(declare-fun tp!2340235 () Bool)

(declare-fun tp!2340233 () Bool)

(assert (=> b!7877769 (= e!4652630 (and tp!2340235 tp!2340233))))

(assert (=> b!7877148 (= tp!2339953 e!4652630)))

(declare-fun b!7877770 () Bool)

(declare-fun tp!2340234 () Bool)

(assert (=> b!7877770 (= e!4652630 tp!2340234)))

(declare-fun b!7877771 () Bool)

(declare-fun tp!2340237 () Bool)

(declare-fun tp!2340236 () Bool)

(assert (=> b!7877771 (= e!4652630 (and tp!2340237 tp!2340236))))

(declare-fun b!7877768 () Bool)

(assert (=> b!7877768 (= e!4652630 tp_is_empty!52739)))

(assert (= (and b!7877148 (is-ElementMatch!21170 (regOne!42853 (reg!21499 r2!6138)))) b!7877768))

(assert (= (and b!7877148 (is-Concat!30015 (regOne!42853 (reg!21499 r2!6138)))) b!7877769))

(assert (= (and b!7877148 (is-Star!21170 (regOne!42853 (reg!21499 r2!6138)))) b!7877770))

(assert (= (and b!7877148 (is-Union!21170 (regOne!42853 (reg!21499 r2!6138)))) b!7877771))

(declare-fun b!7877773 () Bool)

(declare-fun e!4652631 () Bool)

(declare-fun tp!2340240 () Bool)

(declare-fun tp!2340238 () Bool)

(assert (=> b!7877773 (= e!4652631 (and tp!2340240 tp!2340238))))

(assert (=> b!7877148 (= tp!2339952 e!4652631)))

(declare-fun b!7877774 () Bool)

(declare-fun tp!2340239 () Bool)

(assert (=> b!7877774 (= e!4652631 tp!2340239)))

(declare-fun b!7877775 () Bool)

(declare-fun tp!2340242 () Bool)

(declare-fun tp!2340241 () Bool)

(assert (=> b!7877775 (= e!4652631 (and tp!2340242 tp!2340241))))

(declare-fun b!7877772 () Bool)

(assert (=> b!7877772 (= e!4652631 tp_is_empty!52739)))

(assert (= (and b!7877148 (is-ElementMatch!21170 (regTwo!42853 (reg!21499 r2!6138)))) b!7877772))

(assert (= (and b!7877148 (is-Concat!30015 (regTwo!42853 (reg!21499 r2!6138)))) b!7877773))

(assert (= (and b!7877148 (is-Star!21170 (regTwo!42853 (reg!21499 r2!6138)))) b!7877774))

(assert (= (and b!7877148 (is-Union!21170 (regTwo!42853 (reg!21499 r2!6138)))) b!7877775))

(declare-fun b!7877777 () Bool)

(declare-fun e!4652632 () Bool)

(declare-fun tp!2340245 () Bool)

(declare-fun tp!2340243 () Bool)

(assert (=> b!7877777 (= e!4652632 (and tp!2340245 tp!2340243))))

(assert (=> b!7877107 (= tp!2339905 e!4652632)))

(declare-fun b!7877778 () Bool)

(declare-fun tp!2340244 () Bool)

(assert (=> b!7877778 (= e!4652632 tp!2340244)))

(declare-fun b!7877779 () Bool)

(declare-fun tp!2340247 () Bool)

(declare-fun tp!2340246 () Bool)

(assert (=> b!7877779 (= e!4652632 (and tp!2340247 tp!2340246))))

(declare-fun b!7877776 () Bool)

(assert (=> b!7877776 (= e!4652632 tp_is_empty!52739)))

(assert (= (and b!7877107 (is-ElementMatch!21170 (regOne!42853 (reg!21499 r1!6200)))) b!7877776))

(assert (= (and b!7877107 (is-Concat!30015 (regOne!42853 (reg!21499 r1!6200)))) b!7877777))

(assert (= (and b!7877107 (is-Star!21170 (regOne!42853 (reg!21499 r1!6200)))) b!7877778))

(assert (= (and b!7877107 (is-Union!21170 (regOne!42853 (reg!21499 r1!6200)))) b!7877779))

(declare-fun b!7877781 () Bool)

(declare-fun e!4652633 () Bool)

(declare-fun tp!2340250 () Bool)

(declare-fun tp!2340248 () Bool)

(assert (=> b!7877781 (= e!4652633 (and tp!2340250 tp!2340248))))

(assert (=> b!7877107 (= tp!2339904 e!4652633)))

(declare-fun b!7877782 () Bool)

(declare-fun tp!2340249 () Bool)

(assert (=> b!7877782 (= e!4652633 tp!2340249)))

(declare-fun b!7877783 () Bool)

(declare-fun tp!2340252 () Bool)

(declare-fun tp!2340251 () Bool)

(assert (=> b!7877783 (= e!4652633 (and tp!2340252 tp!2340251))))

(declare-fun b!7877780 () Bool)

(assert (=> b!7877780 (= e!4652633 tp_is_empty!52739)))

(assert (= (and b!7877107 (is-ElementMatch!21170 (regTwo!42853 (reg!21499 r1!6200)))) b!7877780))

(assert (= (and b!7877107 (is-Concat!30015 (regTwo!42853 (reg!21499 r1!6200)))) b!7877781))

(assert (= (and b!7877107 (is-Star!21170 (regTwo!42853 (reg!21499 r1!6200)))) b!7877782))

(assert (= (and b!7877107 (is-Union!21170 (regTwo!42853 (reg!21499 r1!6200)))) b!7877783))

(declare-fun b!7877785 () Bool)

(declare-fun e!4652634 () Bool)

(declare-fun tp!2340255 () Bool)

(declare-fun tp!2340253 () Bool)

(assert (=> b!7877785 (= e!4652634 (and tp!2340255 tp!2340253))))

(assert (=> b!7877131 (= tp!2339930 e!4652634)))

(declare-fun b!7877786 () Bool)

(declare-fun tp!2340254 () Bool)

(assert (=> b!7877786 (= e!4652634 tp!2340254)))

(declare-fun b!7877787 () Bool)

(declare-fun tp!2340257 () Bool)

(declare-fun tp!2340256 () Bool)

(assert (=> b!7877787 (= e!4652634 (and tp!2340257 tp!2340256))))

(declare-fun b!7877784 () Bool)

(assert (=> b!7877784 (= e!4652634 tp_is_empty!52739)))

(assert (= (and b!7877131 (is-ElementMatch!21170 (reg!21499 (regOne!42853 r1!6200)))) b!7877784))

(assert (= (and b!7877131 (is-Concat!30015 (reg!21499 (regOne!42853 r1!6200)))) b!7877785))

(assert (= (and b!7877131 (is-Star!21170 (reg!21499 (regOne!42853 r1!6200)))) b!7877786))

(assert (= (and b!7877131 (is-Union!21170 (reg!21499 (regOne!42853 r1!6200)))) b!7877787))

(declare-fun b!7877789 () Bool)

(declare-fun e!4652635 () Bool)

(declare-fun tp!2340260 () Bool)

(declare-fun tp!2340258 () Bool)

(assert (=> b!7877789 (= e!4652635 (and tp!2340260 tp!2340258))))

(assert (=> b!7877140 (= tp!2339943 e!4652635)))

(declare-fun b!7877790 () Bool)

(declare-fun tp!2340259 () Bool)

(assert (=> b!7877790 (= e!4652635 tp!2340259)))

(declare-fun b!7877791 () Bool)

(declare-fun tp!2340262 () Bool)

(declare-fun tp!2340261 () Bool)

(assert (=> b!7877791 (= e!4652635 (and tp!2340262 tp!2340261))))

(declare-fun b!7877788 () Bool)

(assert (=> b!7877788 (= e!4652635 tp_is_empty!52739)))

(assert (= (and b!7877140 (is-ElementMatch!21170 (regOne!42853 (regOne!42852 r1!6200)))) b!7877788))

(assert (= (and b!7877140 (is-Concat!30015 (regOne!42853 (regOne!42852 r1!6200)))) b!7877789))

(assert (= (and b!7877140 (is-Star!21170 (regOne!42853 (regOne!42852 r1!6200)))) b!7877790))

(assert (= (and b!7877140 (is-Union!21170 (regOne!42853 (regOne!42852 r1!6200)))) b!7877791))

(declare-fun b!7877793 () Bool)

(declare-fun e!4652636 () Bool)

(declare-fun tp!2340265 () Bool)

(declare-fun tp!2340263 () Bool)

(assert (=> b!7877793 (= e!4652636 (and tp!2340265 tp!2340263))))

(assert (=> b!7877140 (= tp!2339942 e!4652636)))

(declare-fun b!7877794 () Bool)

(declare-fun tp!2340264 () Bool)

(assert (=> b!7877794 (= e!4652636 tp!2340264)))

(declare-fun b!7877795 () Bool)

(declare-fun tp!2340267 () Bool)

(declare-fun tp!2340266 () Bool)

(assert (=> b!7877795 (= e!4652636 (and tp!2340267 tp!2340266))))

(declare-fun b!7877792 () Bool)

(assert (=> b!7877792 (= e!4652636 tp_is_empty!52739)))

(assert (= (and b!7877140 (is-ElementMatch!21170 (regTwo!42853 (regOne!42852 r1!6200)))) b!7877792))

(assert (= (and b!7877140 (is-Concat!30015 (regTwo!42853 (regOne!42852 r1!6200)))) b!7877793))

(assert (= (and b!7877140 (is-Star!21170 (regTwo!42853 (regOne!42852 r1!6200)))) b!7877794))

(assert (= (and b!7877140 (is-Union!21170 (regTwo!42853 (regOne!42852 r1!6200)))) b!7877795))

(push 1)

(assert (not b!7877536))

(assert (not b!7877687))

(assert (not b!7877384))

(assert (not b!7877678))

(assert (not b!7877674))

(assert (not b!7877789))

(assert (not b!7877732))

(assert (not b!7877600))

(assert (not bm!730559))

(assert (not b!7877633))

(assert (not b!7877567))

(assert (not b!7877787))

(assert (not b!7877601))

(assert tp_is_empty!52739)

(assert (not b!7877770))

(assert (not b!7877769))

(assert (not b!7877303))

(assert (not b!7877411))

(assert (not b!7877658))

(assert (not b!7877510))

(assert (not b!7877757))

(assert (not d!2355766))

(assert (not d!2355736))

(assert (not b!7877723))

(assert (not b!7877794))

(assert (not b!7877679))

(assert (not b!7877576))

(assert (not b!7877394))

(assert (not b!7877720))

(assert (not bm!730626))

(assert (not bm!730630))

(assert (not b!7877733))

(assert (not b!7877642))

(assert (not b!7877634))

(assert (not b!7877672))

(assert (not d!2355826))

(assert (not b!7877700))

(assert (not b!7877552))

(assert (not b!7877704))

(assert (not b!7877719))

(assert (not b!7877749))

(assert (not b!7877793))

(assert (not b!7877729))

(assert (not b!7877480))

(assert (not bm!730553))

(assert (not b!7877725))

(assert (not b!7877592))

(assert (not b!7877478))

(assert (not b!7877330))

(assert (not b!7877670))

(assert (not b!7877475))

(assert (not bm!730575))

(assert (not b!7877680))

(assert (not b!7877659))

(assert (not b!7877377))

(assert (not b!7877588))

(assert (not b!7877743))

(assert (not b!7877484))

(assert (not b!7877775))

(assert (not d!2355816))

(assert (not b!7877740))

(assert (not b!7877728))

(assert (not d!2355776))

(assert (not b!7877707))

(assert (not b!7877571))

(assert (not b!7877606))

(assert (not b!7877608))

(assert (not b!7877457))

(assert (not b!7877765))

(assert (not b!7877781))

(assert (not b!7877756))

(assert (not b!7877563))

(assert (not bm!730582))

(assert (not b!7877627))

(assert (not b!7877657))

(assert (not b!7877598))

(assert (not bm!730600))

(assert (not b!7877573))

(assert (not b!7877631))

(assert (not b!7877626))

(assert (not d!2355818))

(assert (not bm!730612))

(assert (not b!7877625))

(assert (not b!7877604))

(assert (not b!7877635))

(assert (not b!7877783))

(assert (not b!7877565))

(assert (not b!7877727))

(assert (not b!7877609))

(assert (not b!7877791))

(assert (not b!7877610))

(assert (not b!7877612))

(assert (not bm!730606))

(assert (not b!7877349))

(assert (not b!7877654))

(assert (not b!7877779))

(assert (not b!7877695))

(assert (not b!7877690))

(assert (not b!7877650))

(assert (not b!7877374))

(assert (not b!7877653))

(assert (not d!2355750))

(assert (not b!7877490))

(assert (not b!7877771))

(assert (not b!7877646))

(assert (not d!2355778))

(assert (not b!7877684))

(assert (not bm!730608))

(assert (not bm!730571))

(assert (not b!7877597))

(assert (not b!7877557))

(assert (not bm!730597))

(assert (not b!7877448))

(assert (not bm!730602))

(assert (not b!7877708))

(assert (not b!7877744))

(assert (not b!7877559))

(assert (not b!7877721))

(assert (not b!7877703))

(assert (not b!7877518))

(assert (not b!7877549))

(assert (not b!7877629))

(assert (not b!7877759))

(assert (not b!7877676))

(assert (not b!7877553))

(assert (not b!7877651))

(assert (not b!7877739))

(assert (not b!7877311))

(assert (not bm!730574))

(assert (not bm!730614))

(assert (not bm!730567))

(assert (not b!7877564))

(assert (not bm!730615))

(assert (not bm!730605))

(assert (not b!7877372))

(assert (not b!7877605))

(assert (not bm!730583))

(assert (not b!7877594))

(assert (not bm!730584))

(assert (not b!7877639))

(assert (not bm!730554))

(assert (not b!7877795))

(assert (not b!7877747))

(assert (not b!7877686))

(assert (not b!7877489))

(assert (not b!7877699))

(assert (not b!7877785))

(assert (not d!2355786))

(assert (not b!7877675))

(assert (not b!7877383))

(assert (not b!7877692))

(assert (not b!7877439))

(assert (not b!7877671))

(assert (not b!7877737))

(assert (not b!7877786))

(assert (not b!7877568))

(assert (not b!7877572))

(assert (not b!7877698))

(assert (not bm!730568))

(assert (not b!7877706))

(assert (not b!7877551))

(assert (not b!7877766))

(assert (not b!7877561))

(assert (not bm!730592))

(assert (not b!7877596))

(assert (not bm!730596))

(assert (not b!7877556))

(assert (not b!7877696))

(assert (not d!2355760))

(assert (not b!7877647))

(assert (not bm!730564))

(assert (not b!7877774))

(assert (not b!7877748))

(assert (not bm!730573))

(assert (not b!7877735))

(assert (not b!7877741))

(assert (not b!7877360))

(assert (not d!2355734))

(assert (not d!2355732))

(assert (not b!7877724))

(assert (not d!2355808))

(assert (not bm!730624))

(assert (not b!7877702))

(assert (not b!7877637))

(assert (not b!7877630))

(assert (not bm!730621))

(assert (not b!7877602))

(assert (not b!7877575))

(assert (not b!7877431))

(assert (not b!7877745))

(assert (not b!7877483))

(assert (not b!7877731))

(assert (not bm!730603))

(assert (not b!7877560))

(assert (not bm!730557))

(assert (not b!7877694))

(assert (not b!7877790))

(assert (not b!7877688))

(assert (not b!7877577))

(assert (not bm!730590))

(assert (not bm!730566))

(assert (not b!7877777))

(assert (not b!7877378))

(assert (not bm!730632))

(assert (not b!7877341))

(assert (not d!2355824))

(assert (not b!7877778))

(assert (not b!7877638))

(assert (not b!7877641))

(assert (not b!7877569))

(assert (not d!2355746))

(assert (not b!7877589))

(assert (not b!7877649))

(assert (not b!7877691))

(assert (not b!7877614))

(assert (not b!7877767))

(assert (not b!7877736))

(assert (not b!7877682))

(assert (not b!7877683))

(assert (not b!7877645))

(assert (not b!7877613))

(assert (not d!2355804))

(assert (not bm!730620))

(assert (not b!7877593))

(assert (not b!7877782))

(assert (not b!7877773))

(assert (not b!7877655))

(assert (not b!7877590))

(assert (not b!7877555))

(assert (not b!7877643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

