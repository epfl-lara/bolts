; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289980 () Bool)

(assert start!289980)

(declare-fun b!3011117 () Bool)

(declare-fun e!1890583 () Bool)

(declare-fun tp!955628 () Bool)

(declare-fun tp!955633 () Bool)

(assert (=> b!3011117 (= e!1890583 (and tp!955628 tp!955633))))

(declare-fun b!3011118 () Bool)

(declare-fun tp_is_empty!16353 () Bool)

(assert (=> b!3011118 (= e!1890583 tp_is_empty!16353)))

(declare-fun b!3011119 () Bool)

(declare-fun tp!955632 () Bool)

(declare-fun tp!955629 () Bool)

(assert (=> b!3011119 (= e!1890583 (and tp!955632 tp!955629))))

(declare-fun b!3011120 () Bool)

(declare-fun res!1240844 () Bool)

(declare-fun e!1890582 () Bool)

(assert (=> b!3011120 (=> res!1240844 e!1890582)))

(declare-datatypes ((C!18976 0))(
  ( (C!18977 (val!11524 Int)) )
))
(declare-datatypes ((List!35260 0))(
  ( (Nil!35136) (Cons!35136 (h!40556 C!18976) (t!234325 List!35260)) )
))
(declare-fun s!11993 () List!35260)

(declare-fun isEmpty!19423 (List!35260) Bool)

(assert (=> b!3011120 (= res!1240844 (not (isEmpty!19423 s!11993)))))

(declare-fun b!3011121 () Bool)

(declare-fun tp!955631 () Bool)

(assert (=> b!3011121 (= e!1890583 tp!955631)))

(declare-fun res!1240846 () Bool)

(declare-fun e!1890580 () Bool)

(assert (=> start!289980 (=> (not res!1240846) (not e!1890580))))

(declare-datatypes ((Regex!9395 0))(
  ( (ElementMatch!9395 (c!496077 C!18976)) (Concat!14716 (regOne!19302 Regex!9395) (regTwo!19302 Regex!9395)) (EmptyExpr!9395) (Star!9395 (reg!9724 Regex!9395)) (EmptyLang!9395) (Union!9395 (regOne!19303 Regex!9395) (regTwo!19303 Regex!9395)) )
))
(declare-fun r!17423 () Regex!9395)

(declare-fun validRegex!4128 (Regex!9395) Bool)

(assert (=> start!289980 (= res!1240846 (validRegex!4128 r!17423))))

(assert (=> start!289980 e!1890580))

(assert (=> start!289980 e!1890583))

(declare-fun e!1890581 () Bool)

(assert (=> start!289980 e!1890581))

(declare-fun b!3011116 () Bool)

(assert (=> b!3011116 (= e!1890580 (not e!1890582))))

(declare-fun res!1240845 () Bool)

(assert (=> b!3011116 (=> res!1240845 e!1890582)))

(declare-fun lt!1043945 () Bool)

(get-info :version)

(assert (=> b!3011116 (= res!1240845 (or (not lt!1043945) (not ((_ is Concat!14716) r!17423))))))

(declare-fun matchRSpec!1532 (Regex!9395 List!35260) Bool)

(assert (=> b!3011116 (= lt!1043945 (matchRSpec!1532 r!17423 s!11993))))

(declare-fun matchR!4277 (Regex!9395 List!35260) Bool)

(assert (=> b!3011116 (= lt!1043945 (matchR!4277 r!17423 s!11993))))

(declare-datatypes ((Unit!49213 0))(
  ( (Unit!49214) )
))
(declare-fun lt!1043946 () Unit!49213)

(declare-fun mainMatchTheorem!1532 (Regex!9395 List!35260) Unit!49213)

(assert (=> b!3011116 (= lt!1043946 (mainMatchTheorem!1532 r!17423 s!11993))))

(declare-fun b!3011122 () Bool)

(declare-fun tp!955630 () Bool)

(assert (=> b!3011122 (= e!1890581 (and tp_is_empty!16353 tp!955630))))

(declare-fun b!3011123 () Bool)

(declare-fun simplify!386 (Regex!9395) Regex!9395)

(assert (=> b!3011123 (= e!1890582 (matchR!4277 (simplify!386 r!17423) s!11993))))

(assert (= (and start!289980 res!1240846) b!3011116))

(assert (= (and b!3011116 (not res!1240845)) b!3011120))

(assert (= (and b!3011120 (not res!1240844)) b!3011123))

(assert (= (and start!289980 ((_ is ElementMatch!9395) r!17423)) b!3011118))

(assert (= (and start!289980 ((_ is Concat!14716) r!17423)) b!3011117))

(assert (= (and start!289980 ((_ is Star!9395) r!17423)) b!3011121))

(assert (= (and start!289980 ((_ is Union!9395) r!17423)) b!3011119))

(assert (= (and start!289980 ((_ is Cons!35136) s!11993)) b!3011122))

(declare-fun m!3357679 () Bool)

(assert (=> b!3011120 m!3357679))

(declare-fun m!3357681 () Bool)

(assert (=> start!289980 m!3357681))

(declare-fun m!3357683 () Bool)

(assert (=> b!3011116 m!3357683))

(declare-fun m!3357685 () Bool)

(assert (=> b!3011116 m!3357685))

(declare-fun m!3357687 () Bool)

(assert (=> b!3011116 m!3357687))

(declare-fun m!3357689 () Bool)

(assert (=> b!3011123 m!3357689))

(assert (=> b!3011123 m!3357689))

(declare-fun m!3357691 () Bool)

(assert (=> b!3011123 m!3357691))

(check-sat (not b!3011119) (not b!3011117) (not b!3011122) (not b!3011123) tp_is_empty!16353 (not start!289980) (not b!3011116) (not b!3011121) (not b!3011120))
(check-sat)
(get-model)

(declare-fun b!3011180 () Bool)

(assert (=> b!3011180 true))

(assert (=> b!3011180 true))

(declare-fun bs!529584 () Bool)

(declare-fun b!3011185 () Bool)

(assert (= bs!529584 (and b!3011185 b!3011180)))

(declare-fun lambda!112666 () Int)

(declare-fun lambda!112665 () Int)

(assert (=> bs!529584 (not (= lambda!112666 lambda!112665))))

(assert (=> b!3011185 true))

(assert (=> b!3011185 true))

(declare-fun b!3011178 () Bool)

(declare-fun e!1890616 () Bool)

(declare-fun e!1890617 () Bool)

(assert (=> b!3011178 (= e!1890616 e!1890617)))

(declare-fun res!1240870 () Bool)

(assert (=> b!3011178 (= res!1240870 (not ((_ is EmptyLang!9395) r!17423)))))

(assert (=> b!3011178 (=> (not res!1240870) (not e!1890617))))

(declare-fun b!3011179 () Bool)

(declare-fun c!496094 () Bool)

(assert (=> b!3011179 (= c!496094 ((_ is Union!9395) r!17423))))

(declare-fun e!1890621 () Bool)

(declare-fun e!1890622 () Bool)

(assert (=> b!3011179 (= e!1890621 e!1890622)))

(declare-fun e!1890618 () Bool)

(declare-fun call!202899 () Bool)

(assert (=> b!3011180 (= e!1890618 call!202899)))

(declare-fun b!3011181 () Bool)

(declare-fun c!496096 () Bool)

(assert (=> b!3011181 (= c!496096 ((_ is ElementMatch!9395) r!17423))))

(assert (=> b!3011181 (= e!1890617 e!1890621)))

(declare-fun bm!202894 () Bool)

(declare-fun c!496097 () Bool)

(declare-fun Exists!1663 (Int) Bool)

(assert (=> bm!202894 (= call!202899 (Exists!1663 (ite c!496097 lambda!112665 lambda!112666)))))

(declare-fun b!3011183 () Bool)

(declare-fun e!1890619 () Bool)

(assert (=> b!3011183 (= e!1890622 e!1890619)))

(declare-fun res!1240869 () Bool)

(assert (=> b!3011183 (= res!1240869 (matchRSpec!1532 (regOne!19303 r!17423) s!11993))))

(assert (=> b!3011183 (=> res!1240869 e!1890619)))

(declare-fun b!3011184 () Bool)

(assert (=> b!3011184 (= e!1890621 (= s!11993 (Cons!35136 (c!496077 r!17423) Nil!35136)))))

(declare-fun d!847797 () Bool)

(declare-fun c!496095 () Bool)

(assert (=> d!847797 (= c!496095 ((_ is EmptyExpr!9395) r!17423))))

(assert (=> d!847797 (= (matchRSpec!1532 r!17423 s!11993) e!1890616)))

(declare-fun b!3011182 () Bool)

(declare-fun res!1240871 () Bool)

(assert (=> b!3011182 (=> res!1240871 e!1890618)))

(declare-fun call!202900 () Bool)

(assert (=> b!3011182 (= res!1240871 call!202900)))

(declare-fun e!1890620 () Bool)

(assert (=> b!3011182 (= e!1890620 e!1890618)))

(declare-fun bm!202895 () Bool)

(assert (=> bm!202895 (= call!202900 (isEmpty!19423 s!11993))))

(assert (=> b!3011185 (= e!1890620 call!202899)))

(declare-fun b!3011186 () Bool)

(assert (=> b!3011186 (= e!1890622 e!1890620)))

(assert (=> b!3011186 (= c!496097 ((_ is Star!9395) r!17423))))

(declare-fun b!3011187 () Bool)

(assert (=> b!3011187 (= e!1890616 call!202900)))

(declare-fun b!3011188 () Bool)

(assert (=> b!3011188 (= e!1890619 (matchRSpec!1532 (regTwo!19303 r!17423) s!11993))))

(assert (= (and d!847797 c!496095) b!3011187))

(assert (= (and d!847797 (not c!496095)) b!3011178))

(assert (= (and b!3011178 res!1240870) b!3011181))

(assert (= (and b!3011181 c!496096) b!3011184))

(assert (= (and b!3011181 (not c!496096)) b!3011179))

(assert (= (and b!3011179 c!496094) b!3011183))

(assert (= (and b!3011179 (not c!496094)) b!3011186))

(assert (= (and b!3011183 (not res!1240869)) b!3011188))

(assert (= (and b!3011186 c!496097) b!3011182))

(assert (= (and b!3011186 (not c!496097)) b!3011185))

(assert (= (and b!3011182 (not res!1240871)) b!3011180))

(assert (= (or b!3011180 b!3011185) bm!202894))

(assert (= (or b!3011187 b!3011182) bm!202895))

(declare-fun m!3357693 () Bool)

(assert (=> bm!202894 m!3357693))

(declare-fun m!3357695 () Bool)

(assert (=> b!3011183 m!3357695))

(assert (=> bm!202895 m!3357679))

(declare-fun m!3357697 () Bool)

(assert (=> b!3011188 m!3357697))

(assert (=> b!3011116 d!847797))

(declare-fun b!3011221 () Bool)

(declare-fun e!1890643 () Bool)

(declare-fun lt!1043949 () Bool)

(assert (=> b!3011221 (= e!1890643 (not lt!1043949))))

(declare-fun bm!202898 () Bool)

(declare-fun call!202903 () Bool)

(assert (=> bm!202898 (= call!202903 (isEmpty!19423 s!11993))))

(declare-fun b!3011222 () Bool)

(declare-fun e!1890640 () Bool)

(declare-fun e!1890642 () Bool)

(assert (=> b!3011222 (= e!1890640 e!1890642)))

(declare-fun res!1240890 () Bool)

(assert (=> b!3011222 (=> res!1240890 e!1890642)))

(assert (=> b!3011222 (= res!1240890 call!202903)))

(declare-fun b!3011223 () Bool)

(declare-fun e!1890638 () Bool)

(declare-fun head!6704 (List!35260) C!18976)

(assert (=> b!3011223 (= e!1890638 (= (head!6704 s!11993) (c!496077 r!17423)))))

(declare-fun b!3011224 () Bool)

(declare-fun e!1890637 () Bool)

(declare-fun nullable!3047 (Regex!9395) Bool)

(assert (=> b!3011224 (= e!1890637 (nullable!3047 r!17423))))

(declare-fun b!3011225 () Bool)

(declare-fun res!1240892 () Bool)

(declare-fun e!1890639 () Bool)

(assert (=> b!3011225 (=> res!1240892 e!1890639)))

(assert (=> b!3011225 (= res!1240892 e!1890638)))

(declare-fun res!1240895 () Bool)

(assert (=> b!3011225 (=> (not res!1240895) (not e!1890638))))

(assert (=> b!3011225 (= res!1240895 lt!1043949)))

(declare-fun b!3011226 () Bool)

(declare-fun res!1240889 () Bool)

(assert (=> b!3011226 (=> (not res!1240889) (not e!1890638))))

(assert (=> b!3011226 (= res!1240889 (not call!202903))))

(declare-fun b!3011227 () Bool)

(assert (=> b!3011227 (= e!1890642 (not (= (head!6704 s!11993) (c!496077 r!17423))))))

(declare-fun b!3011228 () Bool)

(declare-fun e!1890641 () Bool)

(assert (=> b!3011228 (= e!1890641 (= lt!1043949 call!202903))))

(declare-fun d!847801 () Bool)

(assert (=> d!847801 e!1890641))

(declare-fun c!496104 () Bool)

(assert (=> d!847801 (= c!496104 ((_ is EmptyExpr!9395) r!17423))))

(assert (=> d!847801 (= lt!1043949 e!1890637)))

(declare-fun c!496106 () Bool)

(assert (=> d!847801 (= c!496106 (isEmpty!19423 s!11993))))

(assert (=> d!847801 (validRegex!4128 r!17423)))

(assert (=> d!847801 (= (matchR!4277 r!17423 s!11993) lt!1043949)))

(declare-fun b!3011229 () Bool)

(assert (=> b!3011229 (= e!1890641 e!1890643)))

(declare-fun c!496105 () Bool)

(assert (=> b!3011229 (= c!496105 ((_ is EmptyLang!9395) r!17423))))

(declare-fun b!3011230 () Bool)

(declare-fun res!1240888 () Bool)

(assert (=> b!3011230 (=> res!1240888 e!1890642)))

(declare-fun tail!4930 (List!35260) List!35260)

(assert (=> b!3011230 (= res!1240888 (not (isEmpty!19423 (tail!4930 s!11993))))))

(declare-fun b!3011231 () Bool)

(declare-fun res!1240891 () Bool)

(assert (=> b!3011231 (=> (not res!1240891) (not e!1890638))))

(assert (=> b!3011231 (= res!1240891 (isEmpty!19423 (tail!4930 s!11993)))))

(declare-fun b!3011232 () Bool)

(declare-fun res!1240894 () Bool)

(assert (=> b!3011232 (=> res!1240894 e!1890639)))

(assert (=> b!3011232 (= res!1240894 (not ((_ is ElementMatch!9395) r!17423)))))

(assert (=> b!3011232 (= e!1890643 e!1890639)))

(declare-fun b!3011233 () Bool)

(declare-fun derivativeStep!2645 (Regex!9395 C!18976) Regex!9395)

(assert (=> b!3011233 (= e!1890637 (matchR!4277 (derivativeStep!2645 r!17423 (head!6704 s!11993)) (tail!4930 s!11993)))))

(declare-fun b!3011234 () Bool)

(assert (=> b!3011234 (= e!1890639 e!1890640)))

(declare-fun res!1240893 () Bool)

(assert (=> b!3011234 (=> (not res!1240893) (not e!1890640))))

(assert (=> b!3011234 (= res!1240893 (not lt!1043949))))

(assert (= (and d!847801 c!496106) b!3011224))

(assert (= (and d!847801 (not c!496106)) b!3011233))

(assert (= (and d!847801 c!496104) b!3011228))

(assert (= (and d!847801 (not c!496104)) b!3011229))

(assert (= (and b!3011229 c!496105) b!3011221))

(assert (= (and b!3011229 (not c!496105)) b!3011232))

(assert (= (and b!3011232 (not res!1240894)) b!3011225))

(assert (= (and b!3011225 res!1240895) b!3011226))

(assert (= (and b!3011226 res!1240889) b!3011231))

(assert (= (and b!3011231 res!1240891) b!3011223))

(assert (= (and b!3011225 (not res!1240892)) b!3011234))

(assert (= (and b!3011234 res!1240893) b!3011222))

(assert (= (and b!3011222 (not res!1240890)) b!3011230))

(assert (= (and b!3011230 (not res!1240888)) b!3011227))

(assert (= (or b!3011228 b!3011222 b!3011226) bm!202898))

(assert (=> bm!202898 m!3357679))

(declare-fun m!3357699 () Bool)

(assert (=> b!3011224 m!3357699))

(declare-fun m!3357701 () Bool)

(assert (=> b!3011227 m!3357701))

(declare-fun m!3357703 () Bool)

(assert (=> b!3011231 m!3357703))

(assert (=> b!3011231 m!3357703))

(declare-fun m!3357705 () Bool)

(assert (=> b!3011231 m!3357705))

(assert (=> d!847801 m!3357679))

(assert (=> d!847801 m!3357681))

(assert (=> b!3011230 m!3357703))

(assert (=> b!3011230 m!3357703))

(assert (=> b!3011230 m!3357705))

(assert (=> b!3011233 m!3357701))

(assert (=> b!3011233 m!3357701))

(declare-fun m!3357707 () Bool)

(assert (=> b!3011233 m!3357707))

(assert (=> b!3011233 m!3357703))

(assert (=> b!3011233 m!3357707))

(assert (=> b!3011233 m!3357703))

(declare-fun m!3357709 () Bool)

(assert (=> b!3011233 m!3357709))

(assert (=> b!3011223 m!3357701))

(assert (=> b!3011116 d!847801))

(declare-fun d!847803 () Bool)

(assert (=> d!847803 (= (matchR!4277 r!17423 s!11993) (matchRSpec!1532 r!17423 s!11993))))

(declare-fun lt!1043952 () Unit!49213)

(declare-fun choose!17878 (Regex!9395 List!35260) Unit!49213)

(assert (=> d!847803 (= lt!1043952 (choose!17878 r!17423 s!11993))))

(assert (=> d!847803 (validRegex!4128 r!17423)))

(assert (=> d!847803 (= (mainMatchTheorem!1532 r!17423 s!11993) lt!1043952)))

(declare-fun bs!529585 () Bool)

(assert (= bs!529585 d!847803))

(assert (=> bs!529585 m!3357685))

(assert (=> bs!529585 m!3357683))

(declare-fun m!3357711 () Bool)

(assert (=> bs!529585 m!3357711))

(assert (=> bs!529585 m!3357681))

(assert (=> b!3011116 d!847803))

(declare-fun b!3011253 () Bool)

(declare-fun e!1890664 () Bool)

(declare-fun call!202911 () Bool)

(assert (=> b!3011253 (= e!1890664 call!202911)))

(declare-fun b!3011254 () Bool)

(declare-fun e!1890660 () Bool)

(declare-fun e!1890658 () Bool)

(assert (=> b!3011254 (= e!1890660 e!1890658)))

(declare-fun res!1240910 () Bool)

(assert (=> b!3011254 (=> (not res!1240910) (not e!1890658))))

(assert (=> b!3011254 (= res!1240910 call!202911)))

(declare-fun d!847805 () Bool)

(declare-fun res!1240908 () Bool)

(declare-fun e!1890659 () Bool)

(assert (=> d!847805 (=> res!1240908 e!1890659)))

(assert (=> d!847805 (= res!1240908 ((_ is ElementMatch!9395) r!17423))))

(assert (=> d!847805 (= (validRegex!4128 r!17423) e!1890659)))

(declare-fun b!3011255 () Bool)

(declare-fun e!1890663 () Bool)

(declare-fun e!1890661 () Bool)

(assert (=> b!3011255 (= e!1890663 e!1890661)))

(declare-fun c!496111 () Bool)

(assert (=> b!3011255 (= c!496111 ((_ is Union!9395) r!17423))))

(declare-fun b!3011256 () Bool)

(declare-fun e!1890662 () Bool)

(declare-fun call!202910 () Bool)

(assert (=> b!3011256 (= e!1890662 call!202910)))

(declare-fun bm!202905 () Bool)

(declare-fun call!202912 () Bool)

(assert (=> bm!202905 (= call!202912 (validRegex!4128 (ite c!496111 (regOne!19303 r!17423) (regTwo!19302 r!17423))))))

(declare-fun b!3011257 () Bool)

(declare-fun res!1240906 () Bool)

(assert (=> b!3011257 (=> (not res!1240906) (not e!1890664))))

(assert (=> b!3011257 (= res!1240906 call!202912)))

(assert (=> b!3011257 (= e!1890661 e!1890664)))

(declare-fun b!3011258 () Bool)

(assert (=> b!3011258 (= e!1890658 call!202912)))

(declare-fun bm!202906 () Bool)

(assert (=> bm!202906 (= call!202911 call!202910)))

(declare-fun bm!202907 () Bool)

(declare-fun c!496112 () Bool)

(assert (=> bm!202907 (= call!202910 (validRegex!4128 (ite c!496112 (reg!9724 r!17423) (ite c!496111 (regTwo!19303 r!17423) (regOne!19302 r!17423)))))))

(declare-fun b!3011259 () Bool)

(declare-fun res!1240909 () Bool)

(assert (=> b!3011259 (=> res!1240909 e!1890660)))

(assert (=> b!3011259 (= res!1240909 (not ((_ is Concat!14716) r!17423)))))

(assert (=> b!3011259 (= e!1890661 e!1890660)))

(declare-fun b!3011260 () Bool)

(assert (=> b!3011260 (= e!1890659 e!1890663)))

(assert (=> b!3011260 (= c!496112 ((_ is Star!9395) r!17423))))

(declare-fun b!3011261 () Bool)

(assert (=> b!3011261 (= e!1890663 e!1890662)))

(declare-fun res!1240907 () Bool)

(assert (=> b!3011261 (= res!1240907 (not (nullable!3047 (reg!9724 r!17423))))))

(assert (=> b!3011261 (=> (not res!1240907) (not e!1890662))))

(assert (= (and d!847805 (not res!1240908)) b!3011260))

(assert (= (and b!3011260 c!496112) b!3011261))

(assert (= (and b!3011260 (not c!496112)) b!3011255))

(assert (= (and b!3011261 res!1240907) b!3011256))

(assert (= (and b!3011255 c!496111) b!3011257))

(assert (= (and b!3011255 (not c!496111)) b!3011259))

(assert (= (and b!3011257 res!1240906) b!3011253))

(assert (= (and b!3011259 (not res!1240909)) b!3011254))

(assert (= (and b!3011254 res!1240910) b!3011258))

(assert (= (or b!3011257 b!3011258) bm!202905))

(assert (= (or b!3011253 b!3011254) bm!202906))

(assert (= (or b!3011256 bm!202906) bm!202907))

(declare-fun m!3357713 () Bool)

(assert (=> bm!202905 m!3357713))

(declare-fun m!3357715 () Bool)

(assert (=> bm!202907 m!3357715))

(declare-fun m!3357717 () Bool)

(assert (=> b!3011261 m!3357717))

(assert (=> start!289980 d!847805))

(declare-fun d!847807 () Bool)

(assert (=> d!847807 (= (isEmpty!19423 s!11993) ((_ is Nil!35136) s!11993))))

(assert (=> b!3011120 d!847807))

(declare-fun b!3011262 () Bool)

(declare-fun e!1890671 () Bool)

(declare-fun lt!1043953 () Bool)

(assert (=> b!3011262 (= e!1890671 (not lt!1043953))))

(declare-fun bm!202908 () Bool)

(declare-fun call!202913 () Bool)

(assert (=> bm!202908 (= call!202913 (isEmpty!19423 s!11993))))

(declare-fun b!3011263 () Bool)

(declare-fun e!1890668 () Bool)

(declare-fun e!1890670 () Bool)

(assert (=> b!3011263 (= e!1890668 e!1890670)))

(declare-fun res!1240913 () Bool)

(assert (=> b!3011263 (=> res!1240913 e!1890670)))

(assert (=> b!3011263 (= res!1240913 call!202913)))

(declare-fun b!3011264 () Bool)

(declare-fun e!1890666 () Bool)

(assert (=> b!3011264 (= e!1890666 (= (head!6704 s!11993) (c!496077 (simplify!386 r!17423))))))

(declare-fun b!3011265 () Bool)

(declare-fun e!1890665 () Bool)

(assert (=> b!3011265 (= e!1890665 (nullable!3047 (simplify!386 r!17423)))))

(declare-fun b!3011266 () Bool)

(declare-fun res!1240915 () Bool)

(declare-fun e!1890667 () Bool)

(assert (=> b!3011266 (=> res!1240915 e!1890667)))

(assert (=> b!3011266 (= res!1240915 e!1890666)))

(declare-fun res!1240918 () Bool)

(assert (=> b!3011266 (=> (not res!1240918) (not e!1890666))))

(assert (=> b!3011266 (= res!1240918 lt!1043953)))

(declare-fun b!3011267 () Bool)

(declare-fun res!1240912 () Bool)

(assert (=> b!3011267 (=> (not res!1240912) (not e!1890666))))

(assert (=> b!3011267 (= res!1240912 (not call!202913))))

(declare-fun b!3011268 () Bool)

(assert (=> b!3011268 (= e!1890670 (not (= (head!6704 s!11993) (c!496077 (simplify!386 r!17423)))))))

(declare-fun b!3011269 () Bool)

(declare-fun e!1890669 () Bool)

(assert (=> b!3011269 (= e!1890669 (= lt!1043953 call!202913))))

(declare-fun d!847809 () Bool)

(assert (=> d!847809 e!1890669))

(declare-fun c!496113 () Bool)

(assert (=> d!847809 (= c!496113 ((_ is EmptyExpr!9395) (simplify!386 r!17423)))))

(assert (=> d!847809 (= lt!1043953 e!1890665)))

(declare-fun c!496115 () Bool)

(assert (=> d!847809 (= c!496115 (isEmpty!19423 s!11993))))

(assert (=> d!847809 (validRegex!4128 (simplify!386 r!17423))))

(assert (=> d!847809 (= (matchR!4277 (simplify!386 r!17423) s!11993) lt!1043953)))

(declare-fun b!3011270 () Bool)

(assert (=> b!3011270 (= e!1890669 e!1890671)))

(declare-fun c!496114 () Bool)

(assert (=> b!3011270 (= c!496114 ((_ is EmptyLang!9395) (simplify!386 r!17423)))))

(declare-fun b!3011271 () Bool)

(declare-fun res!1240911 () Bool)

(assert (=> b!3011271 (=> res!1240911 e!1890670)))

(assert (=> b!3011271 (= res!1240911 (not (isEmpty!19423 (tail!4930 s!11993))))))

(declare-fun b!3011272 () Bool)

(declare-fun res!1240914 () Bool)

(assert (=> b!3011272 (=> (not res!1240914) (not e!1890666))))

(assert (=> b!3011272 (= res!1240914 (isEmpty!19423 (tail!4930 s!11993)))))

(declare-fun b!3011273 () Bool)

(declare-fun res!1240917 () Bool)

(assert (=> b!3011273 (=> res!1240917 e!1890667)))

(assert (=> b!3011273 (= res!1240917 (not ((_ is ElementMatch!9395) (simplify!386 r!17423))))))

(assert (=> b!3011273 (= e!1890671 e!1890667)))

(declare-fun b!3011274 () Bool)

(assert (=> b!3011274 (= e!1890665 (matchR!4277 (derivativeStep!2645 (simplify!386 r!17423) (head!6704 s!11993)) (tail!4930 s!11993)))))

(declare-fun b!3011275 () Bool)

(assert (=> b!3011275 (= e!1890667 e!1890668)))

(declare-fun res!1240916 () Bool)

(assert (=> b!3011275 (=> (not res!1240916) (not e!1890668))))

(assert (=> b!3011275 (= res!1240916 (not lt!1043953))))

(assert (= (and d!847809 c!496115) b!3011265))

(assert (= (and d!847809 (not c!496115)) b!3011274))

(assert (= (and d!847809 c!496113) b!3011269))

(assert (= (and d!847809 (not c!496113)) b!3011270))

(assert (= (and b!3011270 c!496114) b!3011262))

(assert (= (and b!3011270 (not c!496114)) b!3011273))

(assert (= (and b!3011273 (not res!1240917)) b!3011266))

(assert (= (and b!3011266 res!1240918) b!3011267))

(assert (= (and b!3011267 res!1240912) b!3011272))

(assert (= (and b!3011272 res!1240914) b!3011264))

(assert (= (and b!3011266 (not res!1240915)) b!3011275))

(assert (= (and b!3011275 res!1240916) b!3011263))

(assert (= (and b!3011263 (not res!1240913)) b!3011271))

(assert (= (and b!3011271 (not res!1240911)) b!3011268))

(assert (= (or b!3011269 b!3011263 b!3011267) bm!202908))

(assert (=> bm!202908 m!3357679))

(assert (=> b!3011265 m!3357689))

(declare-fun m!3357719 () Bool)

(assert (=> b!3011265 m!3357719))

(assert (=> b!3011268 m!3357701))

(assert (=> b!3011272 m!3357703))

(assert (=> b!3011272 m!3357703))

(assert (=> b!3011272 m!3357705))

(assert (=> d!847809 m!3357679))

(assert (=> d!847809 m!3357689))

(declare-fun m!3357721 () Bool)

(assert (=> d!847809 m!3357721))

(assert (=> b!3011271 m!3357703))

(assert (=> b!3011271 m!3357703))

(assert (=> b!3011271 m!3357705))

(assert (=> b!3011274 m!3357701))

(assert (=> b!3011274 m!3357689))

(assert (=> b!3011274 m!3357701))

(declare-fun m!3357723 () Bool)

(assert (=> b!3011274 m!3357723))

(assert (=> b!3011274 m!3357703))

(assert (=> b!3011274 m!3357723))

(assert (=> b!3011274 m!3357703))

(declare-fun m!3357725 () Bool)

(assert (=> b!3011274 m!3357725))

(assert (=> b!3011264 m!3357701))

(assert (=> b!3011123 d!847809))

(declare-fun lt!1043967 () Regex!9395)

(declare-fun c!496141 () Bool)

(declare-fun lt!1043970 () Regex!9395)

(declare-fun bm!202923 () Bool)

(declare-fun call!202932 () Bool)

(declare-fun isEmptyLang!484 (Regex!9395) Bool)

(assert (=> bm!202923 (= call!202932 (isEmptyLang!484 (ite c!496141 lt!1043970 lt!1043967)))))

(declare-fun b!3011332 () Bool)

(assert (=> b!3011332 (= c!496141 ((_ is Union!9395) r!17423))))

(declare-fun e!1890714 () Regex!9395)

(declare-fun e!1890703 () Regex!9395)

(assert (=> b!3011332 (= e!1890714 e!1890703)))

(declare-fun b!3011333 () Bool)

(declare-fun e!1890702 () Regex!9395)

(assert (=> b!3011333 (= e!1890702 e!1890714)))

(declare-fun c!496147 () Bool)

(assert (=> b!3011333 (= c!496147 ((_ is Star!9395) r!17423))))

(declare-fun bm!202924 () Bool)

(declare-fun call!202930 () Regex!9395)

(declare-fun call!202931 () Regex!9395)

(assert (=> bm!202924 (= call!202930 call!202931)))

(declare-fun b!3011334 () Bool)

(declare-fun c!496145 () Bool)

(declare-fun call!202934 () Bool)

(assert (=> b!3011334 (= c!496145 call!202934)))

(declare-fun e!1890705 () Regex!9395)

(declare-fun e!1890715 () Regex!9395)

(assert (=> b!3011334 (= e!1890705 e!1890715)))

(declare-fun b!3011335 () Bool)

(assert (=> b!3011335 (= e!1890705 EmptyLang!9395)))

(declare-fun b!3011336 () Bool)

(declare-fun c!496148 () Bool)

(declare-fun e!1890711 () Bool)

(assert (=> b!3011336 (= c!496148 e!1890711)))

(declare-fun res!1240932 () Bool)

(assert (=> b!3011336 (=> res!1240932 e!1890711)))

(declare-fun call!202928 () Bool)

(assert (=> b!3011336 (= res!1240932 call!202928)))

(declare-fun lt!1043968 () Regex!9395)

(assert (=> b!3011336 (= lt!1043968 call!202931)))

(declare-fun e!1890712 () Regex!9395)

(assert (=> b!3011336 (= e!1890714 e!1890712)))

(declare-fun b!3011337 () Bool)

(declare-fun e!1890706 () Bool)

(assert (=> b!3011337 (= e!1890706 call!202932)))

(declare-fun b!3011338 () Bool)

(declare-fun e!1890710 () Regex!9395)

(declare-fun lt!1043971 () Regex!9395)

(assert (=> b!3011338 (= e!1890710 lt!1043971)))

(declare-fun bm!202925 () Bool)

(declare-fun call!202933 () Regex!9395)

(assert (=> bm!202925 (= call!202933 (simplify!386 (ite c!496141 (regOne!19303 r!17423) (regTwo!19302 r!17423))))))

(declare-fun b!3011339 () Bool)

(assert (=> b!3011339 (= e!1890703 e!1890705)))

(declare-fun lt!1043966 () Regex!9395)

(assert (=> b!3011339 (= lt!1043966 call!202930)))

(assert (=> b!3011339 (= lt!1043967 call!202933)))

(declare-fun res!1240931 () Bool)

(declare-fun call!202929 () Bool)

(assert (=> b!3011339 (= res!1240931 call!202929)))

(assert (=> b!3011339 (=> res!1240931 e!1890706)))

(declare-fun c!496146 () Bool)

(assert (=> b!3011339 (= c!496146 e!1890706)))

(declare-fun b!3011340 () Bool)

(assert (=> b!3011340 (= e!1890702 EmptyExpr!9395)))

(declare-fun b!3011341 () Bool)

(declare-fun e!1890708 () Regex!9395)

(declare-fun e!1890713 () Regex!9395)

(assert (=> b!3011341 (= e!1890708 e!1890713)))

(declare-fun c!496143 () Bool)

(assert (=> b!3011341 (= c!496143 ((_ is ElementMatch!9395) r!17423))))

(declare-fun bm!202926 () Bool)

(declare-fun isEmptyExpr!490 (Regex!9395) Bool)

(assert (=> bm!202926 (= call!202934 (isEmptyExpr!490 (ite c!496147 lt!1043968 lt!1043966)))))

(declare-fun b!3011342 () Bool)

(declare-fun e!1890709 () Regex!9395)

(assert (=> b!3011342 (= e!1890709 (Concat!14716 lt!1043966 lt!1043967))))

(declare-fun b!3011343 () Bool)

(assert (=> b!3011343 (= e!1890712 EmptyExpr!9395)))

(declare-fun b!3011344 () Bool)

(assert (=> b!3011344 (= e!1890715 lt!1043967)))

(declare-fun b!3011345 () Bool)

(assert (=> b!3011345 (= e!1890709 lt!1043966)))

(declare-fun bm!202927 () Bool)

(assert (=> bm!202927 (= call!202928 (isEmptyLang!484 (ite c!496147 lt!1043968 (ite c!496141 lt!1043971 lt!1043966))))))

(declare-fun b!3011346 () Bool)

(assert (=> b!3011346 (= e!1890711 call!202934)))

(declare-fun bm!202928 () Bool)

(assert (=> bm!202928 (= call!202929 call!202928)))

(declare-fun bm!202929 () Bool)

(assert (=> bm!202929 (= call!202931 (simplify!386 (ite c!496147 (reg!9724 r!17423) (ite c!496141 (regTwo!19303 r!17423) (regOne!19302 r!17423)))))))

(declare-fun b!3011347 () Bool)

(declare-fun e!1890704 () Regex!9395)

(assert (=> b!3011347 (= e!1890704 lt!1043970)))

(declare-fun b!3011348 () Bool)

(assert (=> b!3011348 (= e!1890708 EmptyLang!9395)))

(declare-fun b!3011349 () Bool)

(assert (=> b!3011349 (= e!1890712 (Star!9395 lt!1043968))))

(declare-fun b!3011350 () Bool)

(assert (=> b!3011350 (= e!1890703 e!1890710)))

(assert (=> b!3011350 (= lt!1043970 call!202933)))

(assert (=> b!3011350 (= lt!1043971 call!202930)))

(declare-fun c!496138 () Bool)

(assert (=> b!3011350 (= c!496138 call!202932)))

(declare-fun b!3011351 () Bool)

(declare-fun e!1890707 () Bool)

(declare-fun lt!1043969 () Regex!9395)

(assert (=> b!3011351 (= e!1890707 (= (nullable!3047 lt!1043969) (nullable!3047 r!17423)))))

(declare-fun b!3011352 () Bool)

(assert (=> b!3011352 (= e!1890704 (Union!9395 lt!1043970 lt!1043971))))

(declare-fun b!3011353 () Bool)

(declare-fun c!496142 () Bool)

(assert (=> b!3011353 (= c!496142 ((_ is EmptyExpr!9395) r!17423))))

(assert (=> b!3011353 (= e!1890713 e!1890702)))

(declare-fun b!3011354 () Bool)

(declare-fun c!496139 () Bool)

(assert (=> b!3011354 (= c!496139 call!202929)))

(assert (=> b!3011354 (= e!1890710 e!1890704)))

(declare-fun b!3011355 () Bool)

(assert (=> b!3011355 (= e!1890715 e!1890709)))

(declare-fun c!496144 () Bool)

(assert (=> b!3011355 (= c!496144 (isEmptyExpr!490 lt!1043967))))

(declare-fun d!847811 () Bool)

(assert (=> d!847811 e!1890707))

(declare-fun res!1240933 () Bool)

(assert (=> d!847811 (=> (not res!1240933) (not e!1890707))))

(assert (=> d!847811 (= res!1240933 (validRegex!4128 lt!1043969))))

(assert (=> d!847811 (= lt!1043969 e!1890708)))

(declare-fun c!496140 () Bool)

(assert (=> d!847811 (= c!496140 ((_ is EmptyLang!9395) r!17423))))

(assert (=> d!847811 (validRegex!4128 r!17423)))

(assert (=> d!847811 (= (simplify!386 r!17423) lt!1043969)))

(declare-fun b!3011356 () Bool)

(assert (=> b!3011356 (= e!1890713 r!17423)))

(assert (= (and d!847811 c!496140) b!3011348))

(assert (= (and d!847811 (not c!496140)) b!3011341))

(assert (= (and b!3011341 c!496143) b!3011356))

(assert (= (and b!3011341 (not c!496143)) b!3011353))

(assert (= (and b!3011353 c!496142) b!3011340))

(assert (= (and b!3011353 (not c!496142)) b!3011333))

(assert (= (and b!3011333 c!496147) b!3011336))

(assert (= (and b!3011333 (not c!496147)) b!3011332))

(assert (= (and b!3011336 (not res!1240932)) b!3011346))

(assert (= (and b!3011336 c!496148) b!3011343))

(assert (= (and b!3011336 (not c!496148)) b!3011349))

(assert (= (and b!3011332 c!496141) b!3011350))

(assert (= (and b!3011332 (not c!496141)) b!3011339))

(assert (= (and b!3011350 c!496138) b!3011338))

(assert (= (and b!3011350 (not c!496138)) b!3011354))

(assert (= (and b!3011354 c!496139) b!3011347))

(assert (= (and b!3011354 (not c!496139)) b!3011352))

(assert (= (and b!3011339 (not res!1240931)) b!3011337))

(assert (= (and b!3011339 c!496146) b!3011335))

(assert (= (and b!3011339 (not c!496146)) b!3011334))

(assert (= (and b!3011334 c!496145) b!3011344))

(assert (= (and b!3011334 (not c!496145)) b!3011355))

(assert (= (and b!3011355 c!496144) b!3011345))

(assert (= (and b!3011355 (not c!496144)) b!3011342))

(assert (= (or b!3011350 b!3011339) bm!202925))

(assert (= (or b!3011350 b!3011339) bm!202924))

(assert (= (or b!3011354 b!3011339) bm!202928))

(assert (= (or b!3011350 b!3011337) bm!202923))

(assert (= (or b!3011346 b!3011334) bm!202926))

(assert (= (or b!3011336 bm!202924) bm!202929))

(assert (= (or b!3011336 bm!202928) bm!202927))

(assert (= (and d!847811 res!1240933) b!3011351))

(declare-fun m!3357727 () Bool)

(assert (=> bm!202927 m!3357727))

(declare-fun m!3357729 () Bool)

(assert (=> bm!202929 m!3357729))

(declare-fun m!3357731 () Bool)

(assert (=> bm!202923 m!3357731))

(declare-fun m!3357733 () Bool)

(assert (=> b!3011355 m!3357733))

(declare-fun m!3357735 () Bool)

(assert (=> bm!202926 m!3357735))

(declare-fun m!3357737 () Bool)

(assert (=> d!847811 m!3357737))

(assert (=> d!847811 m!3357681))

(declare-fun m!3357739 () Bool)

(assert (=> b!3011351 m!3357739))

(assert (=> b!3011351 m!3357699))

(declare-fun m!3357741 () Bool)

(assert (=> bm!202925 m!3357741))

(assert (=> b!3011123 d!847811))

(declare-fun b!3011371 () Bool)

(declare-fun e!1890720 () Bool)

(assert (=> b!3011371 (= e!1890720 tp_is_empty!16353)))

(declare-fun b!3011372 () Bool)

(declare-fun tp!955647 () Bool)

(declare-fun tp!955644 () Bool)

(assert (=> b!3011372 (= e!1890720 (and tp!955647 tp!955644))))

(declare-fun b!3011373 () Bool)

(declare-fun tp!955646 () Bool)

(assert (=> b!3011373 (= e!1890720 tp!955646)))

(assert (=> b!3011121 (= tp!955631 e!1890720)))

(declare-fun b!3011374 () Bool)

(declare-fun tp!955645 () Bool)

(declare-fun tp!955648 () Bool)

(assert (=> b!3011374 (= e!1890720 (and tp!955645 tp!955648))))

(assert (= (and b!3011121 ((_ is ElementMatch!9395) (reg!9724 r!17423))) b!3011371))

(assert (= (and b!3011121 ((_ is Concat!14716) (reg!9724 r!17423))) b!3011372))

(assert (= (and b!3011121 ((_ is Star!9395) (reg!9724 r!17423))) b!3011373))

(assert (= (and b!3011121 ((_ is Union!9395) (reg!9724 r!17423))) b!3011374))

(declare-fun b!3011375 () Bool)

(declare-fun e!1890721 () Bool)

(assert (=> b!3011375 (= e!1890721 tp_is_empty!16353)))

(declare-fun b!3011376 () Bool)

(declare-fun tp!955652 () Bool)

(declare-fun tp!955649 () Bool)

(assert (=> b!3011376 (= e!1890721 (and tp!955652 tp!955649))))

(declare-fun b!3011377 () Bool)

(declare-fun tp!955651 () Bool)

(assert (=> b!3011377 (= e!1890721 tp!955651)))

(assert (=> b!3011119 (= tp!955632 e!1890721)))

(declare-fun b!3011378 () Bool)

(declare-fun tp!955650 () Bool)

(declare-fun tp!955653 () Bool)

(assert (=> b!3011378 (= e!1890721 (and tp!955650 tp!955653))))

(assert (= (and b!3011119 ((_ is ElementMatch!9395) (regOne!19303 r!17423))) b!3011375))

(assert (= (and b!3011119 ((_ is Concat!14716) (regOne!19303 r!17423))) b!3011376))

(assert (= (and b!3011119 ((_ is Star!9395) (regOne!19303 r!17423))) b!3011377))

(assert (= (and b!3011119 ((_ is Union!9395) (regOne!19303 r!17423))) b!3011378))

(declare-fun b!3011379 () Bool)

(declare-fun e!1890722 () Bool)

(assert (=> b!3011379 (= e!1890722 tp_is_empty!16353)))

(declare-fun b!3011380 () Bool)

(declare-fun tp!955657 () Bool)

(declare-fun tp!955654 () Bool)

(assert (=> b!3011380 (= e!1890722 (and tp!955657 tp!955654))))

(declare-fun b!3011381 () Bool)

(declare-fun tp!955656 () Bool)

(assert (=> b!3011381 (= e!1890722 tp!955656)))

(assert (=> b!3011119 (= tp!955629 e!1890722)))

(declare-fun b!3011382 () Bool)

(declare-fun tp!955655 () Bool)

(declare-fun tp!955658 () Bool)

(assert (=> b!3011382 (= e!1890722 (and tp!955655 tp!955658))))

(assert (= (and b!3011119 ((_ is ElementMatch!9395) (regTwo!19303 r!17423))) b!3011379))

(assert (= (and b!3011119 ((_ is Concat!14716) (regTwo!19303 r!17423))) b!3011380))

(assert (= (and b!3011119 ((_ is Star!9395) (regTwo!19303 r!17423))) b!3011381))

(assert (= (and b!3011119 ((_ is Union!9395) (regTwo!19303 r!17423))) b!3011382))

(declare-fun b!3011383 () Bool)

(declare-fun e!1890723 () Bool)

(assert (=> b!3011383 (= e!1890723 tp_is_empty!16353)))

(declare-fun b!3011384 () Bool)

(declare-fun tp!955662 () Bool)

(declare-fun tp!955659 () Bool)

(assert (=> b!3011384 (= e!1890723 (and tp!955662 tp!955659))))

(declare-fun b!3011385 () Bool)

(declare-fun tp!955661 () Bool)

(assert (=> b!3011385 (= e!1890723 tp!955661)))

(assert (=> b!3011117 (= tp!955628 e!1890723)))

(declare-fun b!3011386 () Bool)

(declare-fun tp!955660 () Bool)

(declare-fun tp!955663 () Bool)

(assert (=> b!3011386 (= e!1890723 (and tp!955660 tp!955663))))

(assert (= (and b!3011117 ((_ is ElementMatch!9395) (regOne!19302 r!17423))) b!3011383))

(assert (= (and b!3011117 ((_ is Concat!14716) (regOne!19302 r!17423))) b!3011384))

(assert (= (and b!3011117 ((_ is Star!9395) (regOne!19302 r!17423))) b!3011385))

(assert (= (and b!3011117 ((_ is Union!9395) (regOne!19302 r!17423))) b!3011386))

(declare-fun b!3011387 () Bool)

(declare-fun e!1890724 () Bool)

(assert (=> b!3011387 (= e!1890724 tp_is_empty!16353)))

(declare-fun b!3011388 () Bool)

(declare-fun tp!955667 () Bool)

(declare-fun tp!955664 () Bool)

(assert (=> b!3011388 (= e!1890724 (and tp!955667 tp!955664))))

(declare-fun b!3011389 () Bool)

(declare-fun tp!955666 () Bool)

(assert (=> b!3011389 (= e!1890724 tp!955666)))

(assert (=> b!3011117 (= tp!955633 e!1890724)))

(declare-fun b!3011390 () Bool)

(declare-fun tp!955665 () Bool)

(declare-fun tp!955668 () Bool)

(assert (=> b!3011390 (= e!1890724 (and tp!955665 tp!955668))))

(assert (= (and b!3011117 ((_ is ElementMatch!9395) (regTwo!19302 r!17423))) b!3011387))

(assert (= (and b!3011117 ((_ is Concat!14716) (regTwo!19302 r!17423))) b!3011388))

(assert (= (and b!3011117 ((_ is Star!9395) (regTwo!19302 r!17423))) b!3011389))

(assert (= (and b!3011117 ((_ is Union!9395) (regTwo!19302 r!17423))) b!3011390))

(declare-fun b!3011395 () Bool)

(declare-fun e!1890727 () Bool)

(declare-fun tp!955671 () Bool)

(assert (=> b!3011395 (= e!1890727 (and tp_is_empty!16353 tp!955671))))

(assert (=> b!3011122 (= tp!955630 e!1890727)))

(assert (= (and b!3011122 ((_ is Cons!35136) (t!234325 s!11993))) b!3011395))

(check-sat (not b!3011231) (not bm!202925) (not b!3011373) (not b!3011274) (not b!3011271) (not bm!202895) (not bm!202905) (not bm!202927) (not bm!202908) (not b!3011230) (not b!3011382) (not b!3011233) (not b!3011188) (not b!3011378) (not b!3011272) (not d!847809) (not bm!202898) (not b!3011384) (not b!3011376) (not b!3011268) (not b!3011355) (not b!3011385) (not b!3011351) (not b!3011265) (not bm!202926) (not b!3011224) (not b!3011395) (not b!3011389) (not b!3011388) (not bm!202923) (not b!3011381) (not b!3011223) (not bm!202929) (not b!3011372) (not b!3011227) (not b!3011377) (not d!847803) (not b!3011183) (not bm!202894) tp_is_empty!16353 (not d!847801) (not b!3011374) (not bm!202907) (not b!3011390) (not b!3011264) (not b!3011261) (not b!3011380) (not d!847811) (not b!3011386))
(check-sat)
