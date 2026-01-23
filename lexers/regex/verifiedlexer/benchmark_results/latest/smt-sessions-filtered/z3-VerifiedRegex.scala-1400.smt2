; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73774 () Bool)

(assert start!73774)

(declare-fun b!824972 () Bool)

(declare-fun e!544547 () Bool)

(declare-fun tp!257861 () Bool)

(assert (=> b!824972 (= e!544547 tp!257861)))

(declare-fun b!824973 () Bool)

(declare-fun tp!257864 () Bool)

(declare-fun tp!257860 () Bool)

(assert (=> b!824973 (= e!544547 (and tp!257864 tp!257860))))

(declare-fun b!824974 () Bool)

(declare-fun res!380161 () Bool)

(declare-fun e!544546 () Bool)

(assert (=> b!824974 (=> (not res!380161) (not e!544546))))

(declare-datatypes ((C!4688 0))(
  ( (C!4689 (val!2592 Int)) )
))
(declare-datatypes ((Regex!2059 0))(
  ( (ElementMatch!2059 (c!133894 C!4688)) (Concat!3790 (regOne!4630 Regex!2059) (regTwo!4630 Regex!2059)) (EmptyExpr!2059) (Star!2059 (reg!2388 Regex!2059)) (EmptyLang!2059) (Union!2059 (regOne!4631 Regex!2059) (regTwo!4631 Regex!2059)) )
))
(declare-fun r!27177 () Regex!2059)

(get-info :version)

(assert (=> b!824974 (= res!380161 (and (not ((_ is EmptyExpr!2059) r!27177)) (not ((_ is EmptyLang!2059) r!27177)) (not ((_ is ElementMatch!2059) r!27177)) (not ((_ is Star!2059) r!27177)) ((_ is Union!2059) r!27177)))))

(declare-fun b!824975 () Bool)

(declare-fun tp!257862 () Bool)

(declare-fun tp!257863 () Bool)

(assert (=> b!824975 (= e!544547 (and tp!257862 tp!257863))))

(declare-fun res!380160 () Bool)

(assert (=> start!73774 (=> (not res!380160) (not e!544546))))

(declare-fun validRegex!612 (Regex!2059) Bool)

(assert (=> start!73774 (= res!380160 (validRegex!612 r!27177))))

(assert (=> start!73774 e!544546))

(assert (=> start!73774 e!544547))

(declare-fun tp_is_empty!3841 () Bool)

(assert (=> start!73774 tp_is_empty!3841))

(declare-fun b!824976 () Bool)

(declare-fun res!380162 () Bool)

(assert (=> b!824976 (=> (not res!380162) (not e!544546))))

(declare-fun c!13916 () C!4688)

(declare-datatypes ((List!8885 0))(
  ( (Nil!8869) (Cons!8869 (h!14270 C!4688) (t!93177 List!8885)) )
))
(declare-fun contains!1650 (List!8885 C!4688) Bool)

(declare-fun firstChars!30 (Regex!2059) List!8885)

(assert (=> b!824976 (= res!380162 (contains!1650 (firstChars!30 r!27177) c!13916))))

(declare-fun b!824977 () Bool)

(declare-fun res!380163 () Bool)

(assert (=> b!824977 (=> (not res!380163) (not e!544546))))

(assert (=> b!824977 (= res!380163 (contains!1650 (firstChars!30 (regOne!4631 r!27177)) c!13916))))

(declare-fun b!824978 () Bool)

(assert (=> b!824978 (= e!544546 (not (validRegex!612 (regOne!4631 r!27177))))))

(declare-fun b!824979 () Bool)

(assert (=> b!824979 (= e!544547 tp_is_empty!3841)))

(assert (= (and start!73774 res!380160) b!824976))

(assert (= (and b!824976 res!380162) b!824974))

(assert (= (and b!824974 res!380161) b!824977))

(assert (= (and b!824977 res!380163) b!824978))

(assert (= (and start!73774 ((_ is ElementMatch!2059) r!27177)) b!824979))

(assert (= (and start!73774 ((_ is Concat!3790) r!27177)) b!824975))

(assert (= (and start!73774 ((_ is Star!2059) r!27177)) b!824972))

(assert (= (and start!73774 ((_ is Union!2059) r!27177)) b!824973))

(declare-fun m!1064497 () Bool)

(assert (=> start!73774 m!1064497))

(declare-fun m!1064499 () Bool)

(assert (=> b!824976 m!1064499))

(assert (=> b!824976 m!1064499))

(declare-fun m!1064501 () Bool)

(assert (=> b!824976 m!1064501))

(declare-fun m!1064503 () Bool)

(assert (=> b!824977 m!1064503))

(assert (=> b!824977 m!1064503))

(declare-fun m!1064505 () Bool)

(assert (=> b!824977 m!1064505))

(declare-fun m!1064507 () Bool)

(assert (=> b!824978 m!1064507))

(check-sat (not b!824973) (not b!824976) (not b!824975) (not start!73774) (not b!824978) (not b!824977) tp_is_empty!3841 (not b!824972))
(check-sat)
(get-model)

(declare-fun d!259211 () Bool)

(declare-fun lt!317471 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1298 (List!8885) (InoxSet C!4688))

(assert (=> d!259211 (= lt!317471 (select (content!1298 (firstChars!30 r!27177)) c!13916))))

(declare-fun e!544569 () Bool)

(assert (=> d!259211 (= lt!317471 e!544569)))

(declare-fun res!380175 () Bool)

(assert (=> d!259211 (=> (not res!380175) (not e!544569))))

(assert (=> d!259211 (= res!380175 ((_ is Cons!8869) (firstChars!30 r!27177)))))

(assert (=> d!259211 (= (contains!1650 (firstChars!30 r!27177) c!13916) lt!317471)))

(declare-fun b!825010 () Bool)

(declare-fun e!544568 () Bool)

(assert (=> b!825010 (= e!544569 e!544568)))

(declare-fun res!380174 () Bool)

(assert (=> b!825010 (=> res!380174 e!544568)))

(assert (=> b!825010 (= res!380174 (= (h!14270 (firstChars!30 r!27177)) c!13916))))

(declare-fun b!825011 () Bool)

(assert (=> b!825011 (= e!544568 (contains!1650 (t!93177 (firstChars!30 r!27177)) c!13916))))

(assert (= (and d!259211 res!380175) b!825010))

(assert (= (and b!825010 (not res!380174)) b!825011))

(assert (=> d!259211 m!1064499))

(declare-fun m!1064515 () Bool)

(assert (=> d!259211 m!1064515))

(declare-fun m!1064517 () Bool)

(assert (=> d!259211 m!1064517))

(declare-fun m!1064519 () Bool)

(assert (=> b!825011 m!1064519))

(assert (=> b!824976 d!259211))

(declare-fun b!825120 () Bool)

(declare-fun e!544630 () List!8885)

(declare-fun call!47720 () List!8885)

(assert (=> b!825120 (= e!544630 call!47720)))

(declare-fun b!825122 () Bool)

(declare-fun c!133935 () Bool)

(assert (=> b!825122 (= c!133935 ((_ is Star!2059) r!27177))))

(declare-fun e!544631 () List!8885)

(declare-fun e!544629 () List!8885)

(assert (=> b!825122 (= e!544631 e!544629)))

(declare-fun b!825123 () Bool)

(declare-fun e!544628 () List!8885)

(assert (=> b!825123 (= e!544628 Nil!8869)))

(declare-fun call!47721 () List!8885)

(declare-fun call!47722 () List!8885)

(declare-fun bm!47713 () Bool)

(declare-fun call!47719 () List!8885)

(declare-fun c!133934 () Bool)

(declare-fun ++!2286 (List!8885 List!8885) List!8885)

(assert (=> bm!47713 (= call!47720 (++!2286 (ite c!133934 call!47721 call!47722) (ite c!133934 call!47719 call!47721)))))

(declare-fun bm!47714 () Bool)

(declare-fun call!47718 () List!8885)

(assert (=> bm!47714 (= call!47719 call!47718)))

(declare-fun b!825124 () Bool)

(assert (=> b!825124 (= e!544629 call!47718)))

(declare-fun b!825125 () Bool)

(declare-fun e!544627 () List!8885)

(assert (=> b!825125 (= e!544627 call!47720)))

(declare-fun b!825126 () Bool)

(assert (=> b!825126 (= e!544628 e!544631)))

(declare-fun c!133937 () Bool)

(assert (=> b!825126 (= c!133937 ((_ is ElementMatch!2059) r!27177))))

(declare-fun b!825121 () Bool)

(assert (=> b!825121 (= e!544630 call!47722)))

(declare-fun d!259215 () Bool)

(declare-fun c!133933 () Bool)

(assert (=> d!259215 (= c!133933 (or ((_ is EmptyExpr!2059) r!27177) ((_ is EmptyLang!2059) r!27177)))))

(assert (=> d!259215 (= (firstChars!30 r!27177) e!544628)))

(declare-fun b!825127 () Bool)

(assert (=> b!825127 (= e!544631 (Cons!8869 (c!133894 r!27177) Nil!8869))))

(declare-fun bm!47715 () Bool)

(assert (=> bm!47715 (= call!47722 call!47719)))

(declare-fun b!825128 () Bool)

(declare-fun c!133936 () Bool)

(declare-fun nullable!510 (Regex!2059) Bool)

(assert (=> b!825128 (= c!133936 (nullable!510 (regOne!4630 r!27177)))))

(assert (=> b!825128 (= e!544627 e!544630)))

(declare-fun bm!47716 () Bool)

(assert (=> bm!47716 (= call!47721 (firstChars!30 (ite c!133934 (regOne!4631 r!27177) (regTwo!4630 r!27177))))))

(declare-fun bm!47717 () Bool)

(assert (=> bm!47717 (= call!47718 (firstChars!30 (ite c!133935 (reg!2388 r!27177) (ite c!133934 (regTwo!4631 r!27177) (regOne!4630 r!27177)))))))

(declare-fun b!825129 () Bool)

(assert (=> b!825129 (= e!544629 e!544627)))

(assert (=> b!825129 (= c!133934 ((_ is Union!2059) r!27177))))

(assert (= (and d!259215 c!133933) b!825123))

(assert (= (and d!259215 (not c!133933)) b!825126))

(assert (= (and b!825126 c!133937) b!825127))

(assert (= (and b!825126 (not c!133937)) b!825122))

(assert (= (and b!825122 c!133935) b!825124))

(assert (= (and b!825122 (not c!133935)) b!825129))

(assert (= (and b!825129 c!133934) b!825125))

(assert (= (and b!825129 (not c!133934)) b!825128))

(assert (= (and b!825128 c!133936) b!825120))

(assert (= (and b!825128 (not c!133936)) b!825121))

(assert (= (or b!825120 b!825121) bm!47715))

(assert (= (or b!825125 bm!47715) bm!47714))

(assert (= (or b!825125 b!825120) bm!47716))

(assert (= (or b!825125 b!825120) bm!47713))

(assert (= (or b!825124 bm!47714) bm!47717))

(declare-fun m!1064555 () Bool)

(assert (=> bm!47713 m!1064555))

(declare-fun m!1064557 () Bool)

(assert (=> b!825128 m!1064557))

(declare-fun m!1064559 () Bool)

(assert (=> bm!47716 m!1064559))

(declare-fun m!1064561 () Bool)

(assert (=> bm!47717 m!1064561))

(assert (=> b!824976 d!259215))

(declare-fun b!825148 () Bool)

(declare-fun e!544650 () Bool)

(declare-fun call!47730 () Bool)

(assert (=> b!825148 (= e!544650 call!47730)))

(declare-fun b!825149 () Bool)

(declare-fun e!544649 () Bool)

(declare-fun e!544647 () Bool)

(assert (=> b!825149 (= e!544649 e!544647)))

(declare-fun c!133943 () Bool)

(assert (=> b!825149 (= c!133943 ((_ is Star!2059) r!27177))))

(declare-fun b!825150 () Bool)

(declare-fun res!380209 () Bool)

(declare-fun e!544651 () Bool)

(assert (=> b!825150 (=> (not res!380209) (not e!544651))))

(assert (=> b!825150 (= res!380209 call!47730)))

(declare-fun e!544652 () Bool)

(assert (=> b!825150 (= e!544652 e!544651)))

(declare-fun b!825151 () Bool)

(declare-fun call!47731 () Bool)

(assert (=> b!825151 (= e!544651 call!47731)))

(declare-fun b!825152 () Bool)

(declare-fun res!380211 () Bool)

(declare-fun e!544646 () Bool)

(assert (=> b!825152 (=> res!380211 e!544646)))

(assert (=> b!825152 (= res!380211 (not ((_ is Concat!3790) r!27177)))))

(assert (=> b!825152 (= e!544652 e!544646)))

(declare-fun bm!47725 () Bool)

(declare-fun c!133942 () Bool)

(declare-fun call!47729 () Bool)

(assert (=> bm!47725 (= call!47729 (validRegex!612 (ite c!133943 (reg!2388 r!27177) (ite c!133942 (regTwo!4631 r!27177) (regOne!4630 r!27177)))))))

(declare-fun b!825153 () Bool)

(assert (=> b!825153 (= e!544646 e!544650)))

(declare-fun res!380208 () Bool)

(assert (=> b!825153 (=> (not res!380208) (not e!544650))))

(assert (=> b!825153 (= res!380208 call!47731)))

(declare-fun bm!47724 () Bool)

(assert (=> bm!47724 (= call!47731 call!47729)))

(declare-fun d!259225 () Bool)

(declare-fun res!380212 () Bool)

(assert (=> d!259225 (=> res!380212 e!544649)))

(assert (=> d!259225 (= res!380212 ((_ is ElementMatch!2059) r!27177))))

(assert (=> d!259225 (= (validRegex!612 r!27177) e!544649)))

(declare-fun b!825154 () Bool)

(assert (=> b!825154 (= e!544647 e!544652)))

(assert (=> b!825154 (= c!133942 ((_ is Union!2059) r!27177))))

(declare-fun b!825155 () Bool)

(declare-fun e!544648 () Bool)

(assert (=> b!825155 (= e!544648 call!47729)))

(declare-fun b!825156 () Bool)

(assert (=> b!825156 (= e!544647 e!544648)))

(declare-fun res!380210 () Bool)

(assert (=> b!825156 (= res!380210 (not (nullable!510 (reg!2388 r!27177))))))

(assert (=> b!825156 (=> (not res!380210) (not e!544648))))

(declare-fun bm!47726 () Bool)

(assert (=> bm!47726 (= call!47730 (validRegex!612 (ite c!133942 (regOne!4631 r!27177) (regTwo!4630 r!27177))))))

(assert (= (and d!259225 (not res!380212)) b!825149))

(assert (= (and b!825149 c!133943) b!825156))

(assert (= (and b!825149 (not c!133943)) b!825154))

(assert (= (and b!825156 res!380210) b!825155))

(assert (= (and b!825154 c!133942) b!825150))

(assert (= (and b!825154 (not c!133942)) b!825152))

(assert (= (and b!825150 res!380209) b!825151))

(assert (= (and b!825152 (not res!380211)) b!825153))

(assert (= (and b!825153 res!380208) b!825148))

(assert (= (or b!825150 b!825148) bm!47726))

(assert (= (or b!825151 b!825153) bm!47724))

(assert (= (or b!825155 bm!47724) bm!47725))

(declare-fun m!1064563 () Bool)

(assert (=> bm!47725 m!1064563))

(declare-fun m!1064565 () Bool)

(assert (=> b!825156 m!1064565))

(declare-fun m!1064567 () Bool)

(assert (=> bm!47726 m!1064567))

(assert (=> start!73774 d!259225))

(declare-fun b!825157 () Bool)

(declare-fun e!544657 () Bool)

(declare-fun call!47733 () Bool)

(assert (=> b!825157 (= e!544657 call!47733)))

(declare-fun b!825158 () Bool)

(declare-fun e!544656 () Bool)

(declare-fun e!544654 () Bool)

(assert (=> b!825158 (= e!544656 e!544654)))

(declare-fun c!133945 () Bool)

(assert (=> b!825158 (= c!133945 ((_ is Star!2059) (regOne!4631 r!27177)))))

(declare-fun b!825159 () Bool)

(declare-fun res!380214 () Bool)

(declare-fun e!544658 () Bool)

(assert (=> b!825159 (=> (not res!380214) (not e!544658))))

(assert (=> b!825159 (= res!380214 call!47733)))

(declare-fun e!544659 () Bool)

(assert (=> b!825159 (= e!544659 e!544658)))

(declare-fun b!825160 () Bool)

(declare-fun call!47734 () Bool)

(assert (=> b!825160 (= e!544658 call!47734)))

(declare-fun b!825161 () Bool)

(declare-fun res!380216 () Bool)

(declare-fun e!544653 () Bool)

(assert (=> b!825161 (=> res!380216 e!544653)))

(assert (=> b!825161 (= res!380216 (not ((_ is Concat!3790) (regOne!4631 r!27177))))))

(assert (=> b!825161 (= e!544659 e!544653)))

(declare-fun bm!47728 () Bool)

(declare-fun call!47732 () Bool)

(declare-fun c!133944 () Bool)

(assert (=> bm!47728 (= call!47732 (validRegex!612 (ite c!133945 (reg!2388 (regOne!4631 r!27177)) (ite c!133944 (regTwo!4631 (regOne!4631 r!27177)) (regOne!4630 (regOne!4631 r!27177))))))))

(declare-fun b!825162 () Bool)

(assert (=> b!825162 (= e!544653 e!544657)))

(declare-fun res!380213 () Bool)

(assert (=> b!825162 (=> (not res!380213) (not e!544657))))

(assert (=> b!825162 (= res!380213 call!47734)))

(declare-fun bm!47727 () Bool)

(assert (=> bm!47727 (= call!47734 call!47732)))

(declare-fun d!259227 () Bool)

(declare-fun res!380217 () Bool)

(assert (=> d!259227 (=> res!380217 e!544656)))

(assert (=> d!259227 (= res!380217 ((_ is ElementMatch!2059) (regOne!4631 r!27177)))))

(assert (=> d!259227 (= (validRegex!612 (regOne!4631 r!27177)) e!544656)))

(declare-fun b!825163 () Bool)

(assert (=> b!825163 (= e!544654 e!544659)))

(assert (=> b!825163 (= c!133944 ((_ is Union!2059) (regOne!4631 r!27177)))))

(declare-fun b!825164 () Bool)

(declare-fun e!544655 () Bool)

(assert (=> b!825164 (= e!544655 call!47732)))

(declare-fun b!825165 () Bool)

(assert (=> b!825165 (= e!544654 e!544655)))

(declare-fun res!380215 () Bool)

(assert (=> b!825165 (= res!380215 (not (nullable!510 (reg!2388 (regOne!4631 r!27177)))))))

(assert (=> b!825165 (=> (not res!380215) (not e!544655))))

(declare-fun bm!47729 () Bool)

(assert (=> bm!47729 (= call!47733 (validRegex!612 (ite c!133944 (regOne!4631 (regOne!4631 r!27177)) (regTwo!4630 (regOne!4631 r!27177)))))))

(assert (= (and d!259227 (not res!380217)) b!825158))

(assert (= (and b!825158 c!133945) b!825165))

(assert (= (and b!825158 (not c!133945)) b!825163))

(assert (= (and b!825165 res!380215) b!825164))

(assert (= (and b!825163 c!133944) b!825159))

(assert (= (and b!825163 (not c!133944)) b!825161))

(assert (= (and b!825159 res!380214) b!825160))

(assert (= (and b!825161 (not res!380216)) b!825162))

(assert (= (and b!825162 res!380213) b!825157))

(assert (= (or b!825159 b!825157) bm!47729))

(assert (= (or b!825160 b!825162) bm!47727))

(assert (= (or b!825164 bm!47727) bm!47728))

(declare-fun m!1064569 () Bool)

(assert (=> bm!47728 m!1064569))

(declare-fun m!1064571 () Bool)

(assert (=> b!825165 m!1064571))

(declare-fun m!1064573 () Bool)

(assert (=> bm!47729 m!1064573))

(assert (=> b!824978 d!259227))

(declare-fun d!259229 () Bool)

(declare-fun lt!317473 () Bool)

(assert (=> d!259229 (= lt!317473 (select (content!1298 (firstChars!30 (regOne!4631 r!27177))) c!13916))))

(declare-fun e!544661 () Bool)

(assert (=> d!259229 (= lt!317473 e!544661)))

(declare-fun res!380219 () Bool)

(assert (=> d!259229 (=> (not res!380219) (not e!544661))))

(assert (=> d!259229 (= res!380219 ((_ is Cons!8869) (firstChars!30 (regOne!4631 r!27177))))))

(assert (=> d!259229 (= (contains!1650 (firstChars!30 (regOne!4631 r!27177)) c!13916) lt!317473)))

(declare-fun b!825166 () Bool)

(declare-fun e!544660 () Bool)

(assert (=> b!825166 (= e!544661 e!544660)))

(declare-fun res!380218 () Bool)

(assert (=> b!825166 (=> res!380218 e!544660)))

(assert (=> b!825166 (= res!380218 (= (h!14270 (firstChars!30 (regOne!4631 r!27177))) c!13916))))

(declare-fun b!825167 () Bool)

(assert (=> b!825167 (= e!544660 (contains!1650 (t!93177 (firstChars!30 (regOne!4631 r!27177))) c!13916))))

(assert (= (and d!259229 res!380219) b!825166))

(assert (= (and b!825166 (not res!380218)) b!825167))

(assert (=> d!259229 m!1064503))

(declare-fun m!1064575 () Bool)

(assert (=> d!259229 m!1064575))

(declare-fun m!1064577 () Bool)

(assert (=> d!259229 m!1064577))

(declare-fun m!1064579 () Bool)

(assert (=> b!825167 m!1064579))

(assert (=> b!824977 d!259229))

(declare-fun b!825168 () Bool)

(declare-fun e!544665 () List!8885)

(declare-fun call!47737 () List!8885)

(assert (=> b!825168 (= e!544665 call!47737)))

(declare-fun b!825170 () Bool)

(declare-fun c!133948 () Bool)

(assert (=> b!825170 (= c!133948 ((_ is Star!2059) (regOne!4631 r!27177)))))

(declare-fun e!544666 () List!8885)

(declare-fun e!544664 () List!8885)

(assert (=> b!825170 (= e!544666 e!544664)))

(declare-fun b!825171 () Bool)

(declare-fun e!544663 () List!8885)

(assert (=> b!825171 (= e!544663 Nil!8869)))

(declare-fun c!133947 () Bool)

(declare-fun call!47736 () List!8885)

(declare-fun call!47738 () List!8885)

(declare-fun call!47739 () List!8885)

(declare-fun bm!47730 () Bool)

(assert (=> bm!47730 (= call!47737 (++!2286 (ite c!133947 call!47738 call!47739) (ite c!133947 call!47736 call!47738)))))

(declare-fun bm!47731 () Bool)

(declare-fun call!47735 () List!8885)

(assert (=> bm!47731 (= call!47736 call!47735)))

(declare-fun b!825172 () Bool)

(assert (=> b!825172 (= e!544664 call!47735)))

(declare-fun b!825173 () Bool)

(declare-fun e!544662 () List!8885)

(assert (=> b!825173 (= e!544662 call!47737)))

(declare-fun b!825174 () Bool)

(assert (=> b!825174 (= e!544663 e!544666)))

(declare-fun c!133950 () Bool)

(assert (=> b!825174 (= c!133950 ((_ is ElementMatch!2059) (regOne!4631 r!27177)))))

(declare-fun b!825169 () Bool)

(assert (=> b!825169 (= e!544665 call!47739)))

(declare-fun d!259231 () Bool)

(declare-fun c!133946 () Bool)

(assert (=> d!259231 (= c!133946 (or ((_ is EmptyExpr!2059) (regOne!4631 r!27177)) ((_ is EmptyLang!2059) (regOne!4631 r!27177))))))

(assert (=> d!259231 (= (firstChars!30 (regOne!4631 r!27177)) e!544663)))

(declare-fun b!825175 () Bool)

(assert (=> b!825175 (= e!544666 (Cons!8869 (c!133894 (regOne!4631 r!27177)) Nil!8869))))

(declare-fun bm!47732 () Bool)

(assert (=> bm!47732 (= call!47739 call!47736)))

(declare-fun b!825176 () Bool)

(declare-fun c!133949 () Bool)

(assert (=> b!825176 (= c!133949 (nullable!510 (regOne!4630 (regOne!4631 r!27177))))))

(assert (=> b!825176 (= e!544662 e!544665)))

(declare-fun bm!47733 () Bool)

(assert (=> bm!47733 (= call!47738 (firstChars!30 (ite c!133947 (regOne!4631 (regOne!4631 r!27177)) (regTwo!4630 (regOne!4631 r!27177)))))))

(declare-fun bm!47734 () Bool)

(assert (=> bm!47734 (= call!47735 (firstChars!30 (ite c!133948 (reg!2388 (regOne!4631 r!27177)) (ite c!133947 (regTwo!4631 (regOne!4631 r!27177)) (regOne!4630 (regOne!4631 r!27177))))))))

(declare-fun b!825177 () Bool)

(assert (=> b!825177 (= e!544664 e!544662)))

(assert (=> b!825177 (= c!133947 ((_ is Union!2059) (regOne!4631 r!27177)))))

(assert (= (and d!259231 c!133946) b!825171))

(assert (= (and d!259231 (not c!133946)) b!825174))

(assert (= (and b!825174 c!133950) b!825175))

(assert (= (and b!825174 (not c!133950)) b!825170))

(assert (= (and b!825170 c!133948) b!825172))

(assert (= (and b!825170 (not c!133948)) b!825177))

(assert (= (and b!825177 c!133947) b!825173))

(assert (= (and b!825177 (not c!133947)) b!825176))

(assert (= (and b!825176 c!133949) b!825168))

(assert (= (and b!825176 (not c!133949)) b!825169))

(assert (= (or b!825168 b!825169) bm!47732))

(assert (= (or b!825173 bm!47732) bm!47731))

(assert (= (or b!825173 b!825168) bm!47733))

(assert (= (or b!825173 b!825168) bm!47730))

(assert (= (or b!825172 bm!47731) bm!47734))

(declare-fun m!1064581 () Bool)

(assert (=> bm!47730 m!1064581))

(declare-fun m!1064583 () Bool)

(assert (=> b!825176 m!1064583))

(declare-fun m!1064585 () Bool)

(assert (=> bm!47733 m!1064585))

(declare-fun m!1064587 () Bool)

(assert (=> bm!47734 m!1064587))

(assert (=> b!824977 d!259231))

(declare-fun b!825189 () Bool)

(declare-fun e!544669 () Bool)

(declare-fun tp!257911 () Bool)

(declare-fun tp!257914 () Bool)

(assert (=> b!825189 (= e!544669 (and tp!257911 tp!257914))))

(assert (=> b!824975 (= tp!257862 e!544669)))

(declare-fun b!825190 () Bool)

(declare-fun tp!257913 () Bool)

(assert (=> b!825190 (= e!544669 tp!257913)))

(declare-fun b!825188 () Bool)

(assert (=> b!825188 (= e!544669 tp_is_empty!3841)))

(declare-fun b!825191 () Bool)

(declare-fun tp!257910 () Bool)

(declare-fun tp!257912 () Bool)

(assert (=> b!825191 (= e!544669 (and tp!257910 tp!257912))))

(assert (= (and b!824975 ((_ is ElementMatch!2059) (regOne!4630 r!27177))) b!825188))

(assert (= (and b!824975 ((_ is Concat!3790) (regOne!4630 r!27177))) b!825189))

(assert (= (and b!824975 ((_ is Star!2059) (regOne!4630 r!27177))) b!825190))

(assert (= (and b!824975 ((_ is Union!2059) (regOne!4630 r!27177))) b!825191))

(declare-fun b!825193 () Bool)

(declare-fun e!544670 () Bool)

(declare-fun tp!257916 () Bool)

(declare-fun tp!257919 () Bool)

(assert (=> b!825193 (= e!544670 (and tp!257916 tp!257919))))

(assert (=> b!824975 (= tp!257863 e!544670)))

(declare-fun b!825194 () Bool)

(declare-fun tp!257918 () Bool)

(assert (=> b!825194 (= e!544670 tp!257918)))

(declare-fun b!825192 () Bool)

(assert (=> b!825192 (= e!544670 tp_is_empty!3841)))

(declare-fun b!825195 () Bool)

(declare-fun tp!257915 () Bool)

(declare-fun tp!257917 () Bool)

(assert (=> b!825195 (= e!544670 (and tp!257915 tp!257917))))

(assert (= (and b!824975 ((_ is ElementMatch!2059) (regTwo!4630 r!27177))) b!825192))

(assert (= (and b!824975 ((_ is Concat!3790) (regTwo!4630 r!27177))) b!825193))

(assert (= (and b!824975 ((_ is Star!2059) (regTwo!4630 r!27177))) b!825194))

(assert (= (and b!824975 ((_ is Union!2059) (regTwo!4630 r!27177))) b!825195))

(declare-fun b!825197 () Bool)

(declare-fun e!544671 () Bool)

(declare-fun tp!257921 () Bool)

(declare-fun tp!257924 () Bool)

(assert (=> b!825197 (= e!544671 (and tp!257921 tp!257924))))

(assert (=> b!824973 (= tp!257864 e!544671)))

(declare-fun b!825198 () Bool)

(declare-fun tp!257923 () Bool)

(assert (=> b!825198 (= e!544671 tp!257923)))

(declare-fun b!825196 () Bool)

(assert (=> b!825196 (= e!544671 tp_is_empty!3841)))

(declare-fun b!825199 () Bool)

(declare-fun tp!257920 () Bool)

(declare-fun tp!257922 () Bool)

(assert (=> b!825199 (= e!544671 (and tp!257920 tp!257922))))

(assert (= (and b!824973 ((_ is ElementMatch!2059) (regOne!4631 r!27177))) b!825196))

(assert (= (and b!824973 ((_ is Concat!3790) (regOne!4631 r!27177))) b!825197))

(assert (= (and b!824973 ((_ is Star!2059) (regOne!4631 r!27177))) b!825198))

(assert (= (and b!824973 ((_ is Union!2059) (regOne!4631 r!27177))) b!825199))

(declare-fun b!825201 () Bool)

(declare-fun e!544672 () Bool)

(declare-fun tp!257926 () Bool)

(declare-fun tp!257929 () Bool)

(assert (=> b!825201 (= e!544672 (and tp!257926 tp!257929))))

(assert (=> b!824973 (= tp!257860 e!544672)))

(declare-fun b!825202 () Bool)

(declare-fun tp!257928 () Bool)

(assert (=> b!825202 (= e!544672 tp!257928)))

(declare-fun b!825200 () Bool)

(assert (=> b!825200 (= e!544672 tp_is_empty!3841)))

(declare-fun b!825203 () Bool)

(declare-fun tp!257925 () Bool)

(declare-fun tp!257927 () Bool)

(assert (=> b!825203 (= e!544672 (and tp!257925 tp!257927))))

(assert (= (and b!824973 ((_ is ElementMatch!2059) (regTwo!4631 r!27177))) b!825200))

(assert (= (and b!824973 ((_ is Concat!3790) (regTwo!4631 r!27177))) b!825201))

(assert (= (and b!824973 ((_ is Star!2059) (regTwo!4631 r!27177))) b!825202))

(assert (= (and b!824973 ((_ is Union!2059) (regTwo!4631 r!27177))) b!825203))

(declare-fun b!825205 () Bool)

(declare-fun e!544673 () Bool)

(declare-fun tp!257931 () Bool)

(declare-fun tp!257934 () Bool)

(assert (=> b!825205 (= e!544673 (and tp!257931 tp!257934))))

(assert (=> b!824972 (= tp!257861 e!544673)))

(declare-fun b!825206 () Bool)

(declare-fun tp!257933 () Bool)

(assert (=> b!825206 (= e!544673 tp!257933)))

(declare-fun b!825204 () Bool)

(assert (=> b!825204 (= e!544673 tp_is_empty!3841)))

(declare-fun b!825207 () Bool)

(declare-fun tp!257930 () Bool)

(declare-fun tp!257932 () Bool)

(assert (=> b!825207 (= e!544673 (and tp!257930 tp!257932))))

(assert (= (and b!824972 ((_ is ElementMatch!2059) (reg!2388 r!27177))) b!825204))

(assert (= (and b!824972 ((_ is Concat!3790) (reg!2388 r!27177))) b!825205))

(assert (= (and b!824972 ((_ is Star!2059) (reg!2388 r!27177))) b!825206))

(assert (= (and b!824972 ((_ is Union!2059) (reg!2388 r!27177))) b!825207))

(check-sat (not b!825197) (not b!825189) (not bm!47725) (not b!825128) (not b!825207) (not bm!47717) (not bm!47713) (not bm!47729) (not b!825167) (not b!825191) (not b!825201) (not b!825206) (not b!825193) (not bm!47730) (not b!825199) (not bm!47728) (not b!825203) (not bm!47734) (not b!825202) (not b!825011) (not bm!47726) (not b!825195) (not bm!47733) (not d!259229) (not b!825156) tp_is_empty!3841 (not b!825198) (not d!259211) (not b!825190) (not b!825176) (not b!825194) (not b!825165) (not bm!47716) (not b!825205))
(check-sat)
