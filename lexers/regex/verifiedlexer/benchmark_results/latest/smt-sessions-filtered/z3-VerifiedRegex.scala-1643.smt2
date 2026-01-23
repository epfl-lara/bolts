; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83430 () Bool)

(assert start!83430)

(declare-fun b!932902 () Bool)

(declare-fun e!606180 () Bool)

(declare-fun tp!289566 () Bool)

(declare-fun tp!289567 () Bool)

(assert (=> b!932902 (= e!606180 (and tp!289566 tp!289567))))

(declare-fun b!932903 () Bool)

(declare-fun res!423683 () Bool)

(declare-fun e!606181 () Bool)

(assert (=> b!932903 (=> res!423683 e!606181)))

(declare-datatypes ((C!5660 0))(
  ( (C!5661 (val!3078 Int)) )
))
(declare-datatypes ((Regex!2545 0))(
  ( (ElementMatch!2545 (c!151680 C!5660)) (Concat!4378 (regOne!5602 Regex!2545) (regTwo!5602 Regex!2545)) (EmptyExpr!2545) (Star!2545 (reg!2874 Regex!2545)) (EmptyLang!2545) (Union!2545 (regOne!5603 Regex!2545) (regTwo!5603 Regex!2545)) )
))
(declare-fun r!15766 () Regex!2545)

(declare-datatypes ((List!9775 0))(
  ( (Nil!9759) (Cons!9759 (h!15160 C!5660) (t!100821 List!9775)) )
))
(declare-fun s!10566 () List!9775)

(declare-fun matchR!1083 (Regex!2545 List!9775) Bool)

(declare-fun removeUselessConcat!220 (Regex!2545) Regex!2545)

(assert (=> b!932903 (= res!423683 (matchR!1083 (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766))) s!10566))))

(declare-fun b!932904 () Bool)

(declare-fun e!606179 () Bool)

(declare-fun tp_is_empty!4733 () Bool)

(declare-fun tp!289563 () Bool)

(assert (=> b!932904 (= e!606179 (and tp_is_empty!4733 tp!289563))))

(declare-fun b!932905 () Bool)

(declare-fun validRegex!1014 (Regex!2545) Bool)

(assert (=> b!932905 (= e!606181 (validRegex!1014 (removeUselessConcat!220 r!15766)))))

(declare-fun res!423682 () Bool)

(declare-fun e!606178 () Bool)

(assert (=> start!83430 (=> (not res!423682) (not e!606178))))

(assert (=> start!83430 (= res!423682 (validRegex!1014 r!15766))))

(assert (=> start!83430 e!606178))

(assert (=> start!83430 e!606180))

(assert (=> start!83430 e!606179))

(declare-fun b!932906 () Bool)

(declare-fun tp!289565 () Bool)

(assert (=> b!932906 (= e!606180 tp!289565)))

(declare-fun b!932907 () Bool)

(declare-fun tp!289568 () Bool)

(declare-fun tp!289564 () Bool)

(assert (=> b!932907 (= e!606180 (and tp!289568 tp!289564))))

(declare-fun b!932908 () Bool)

(assert (=> b!932908 (= e!606180 tp_is_empty!4733)))

(declare-fun b!932909 () Bool)

(assert (=> b!932909 (= e!606178 (not e!606181))))

(declare-fun res!423684 () Bool)

(assert (=> b!932909 (=> res!423684 e!606181)))

(declare-fun lt!340787 () Bool)

(get-info :version)

(assert (=> b!932909 (= res!423684 (or lt!340787 (and ((_ is Concat!4378) r!15766) ((_ is EmptyExpr!2545) (regOne!5602 r!15766))) (and ((_ is Concat!4378) r!15766) ((_ is EmptyExpr!2545) (regTwo!5602 r!15766))) ((_ is Concat!4378) r!15766) (not ((_ is Union!2545) r!15766))))))

(declare-fun matchRSpec!346 (Regex!2545 List!9775) Bool)

(assert (=> b!932909 (= lt!340787 (matchRSpec!346 r!15766 s!10566))))

(assert (=> b!932909 (= lt!340787 (matchR!1083 r!15766 s!10566))))

(declare-datatypes ((Unit!14709 0))(
  ( (Unit!14710) )
))
(declare-fun lt!340786 () Unit!14709)

(declare-fun mainMatchTheorem!346 (Regex!2545 List!9775) Unit!14709)

(assert (=> b!932909 (= lt!340786 (mainMatchTheorem!346 r!15766 s!10566))))

(assert (= (and start!83430 res!423682) b!932909))

(assert (= (and b!932909 (not res!423684)) b!932903))

(assert (= (and b!932903 (not res!423683)) b!932905))

(assert (= (and start!83430 ((_ is ElementMatch!2545) r!15766)) b!932908))

(assert (= (and start!83430 ((_ is Concat!4378) r!15766)) b!932907))

(assert (= (and start!83430 ((_ is Star!2545) r!15766)) b!932906))

(assert (= (and start!83430 ((_ is Union!2545) r!15766)) b!932902))

(assert (= (and start!83430 ((_ is Cons!9759) s!10566)) b!932904))

(declare-fun m!1154175 () Bool)

(assert (=> b!932903 m!1154175))

(declare-fun m!1154177 () Bool)

(assert (=> b!932903 m!1154177))

(declare-fun m!1154179 () Bool)

(assert (=> b!932903 m!1154179))

(declare-fun m!1154181 () Bool)

(assert (=> b!932905 m!1154181))

(assert (=> b!932905 m!1154181))

(declare-fun m!1154183 () Bool)

(assert (=> b!932905 m!1154183))

(declare-fun m!1154185 () Bool)

(assert (=> start!83430 m!1154185))

(declare-fun m!1154187 () Bool)

(assert (=> b!932909 m!1154187))

(declare-fun m!1154189 () Bool)

(assert (=> b!932909 m!1154189))

(declare-fun m!1154191 () Bool)

(assert (=> b!932909 m!1154191))

(check-sat (not b!932907) (not b!932903) (not b!932904) (not b!932902) tp_is_empty!4733 (not b!932906) (not start!83430) (not b!932905) (not b!932909))
(check-sat)
(get-model)

(declare-fun c!151693 () Bool)

(declare-fun c!151694 () Bool)

(declare-fun bm!57649 () Bool)

(declare-fun call!57654 () Bool)

(assert (=> bm!57649 (= call!57654 (validRegex!1014 (ite c!151693 (reg!2874 r!15766) (ite c!151694 (regOne!5603 r!15766) (regOne!5602 r!15766)))))))

(declare-fun b!932950 () Bool)

(declare-fun e!606213 () Bool)

(declare-fun call!57655 () Bool)

(assert (=> b!932950 (= e!606213 call!57655)))

(declare-fun b!932951 () Bool)

(declare-fun e!606214 () Bool)

(assert (=> b!932951 (= e!606214 call!57654)))

(declare-fun b!932952 () Bool)

(declare-fun e!606215 () Bool)

(declare-fun e!606211 () Bool)

(assert (=> b!932952 (= e!606215 e!606211)))

(assert (=> b!932952 (= c!151693 ((_ is Star!2545) r!15766))))

(declare-fun b!932953 () Bool)

(assert (=> b!932953 (= e!606211 e!606214)))

(declare-fun res!423701 () Bool)

(declare-fun nullable!727 (Regex!2545) Bool)

(assert (=> b!932953 (= res!423701 (not (nullable!727 (reg!2874 r!15766))))))

(assert (=> b!932953 (=> (not res!423701) (not e!606214))))

(declare-fun b!932954 () Bool)

(declare-fun e!606210 () Bool)

(assert (=> b!932954 (= e!606210 call!57655)))

(declare-fun d!281596 () Bool)

(declare-fun res!423705 () Bool)

(assert (=> d!281596 (=> res!423705 e!606215)))

(assert (=> d!281596 (= res!423705 ((_ is ElementMatch!2545) r!15766))))

(assert (=> d!281596 (= (validRegex!1014 r!15766) e!606215)))

(declare-fun bm!57650 () Bool)

(declare-fun call!57656 () Bool)

(assert (=> bm!57650 (= call!57656 call!57654)))

(declare-fun bm!57651 () Bool)

(assert (=> bm!57651 (= call!57655 (validRegex!1014 (ite c!151694 (regTwo!5603 r!15766) (regTwo!5602 r!15766))))))

(declare-fun b!932955 () Bool)

(declare-fun e!606216 () Bool)

(assert (=> b!932955 (= e!606211 e!606216)))

(assert (=> b!932955 (= c!151694 ((_ is Union!2545) r!15766))))

(declare-fun b!932956 () Bool)

(declare-fun res!423703 () Bool)

(declare-fun e!606212 () Bool)

(assert (=> b!932956 (=> res!423703 e!606212)))

(assert (=> b!932956 (= res!423703 (not ((_ is Concat!4378) r!15766)))))

(assert (=> b!932956 (= e!606216 e!606212)))

(declare-fun b!932957 () Bool)

(assert (=> b!932957 (= e!606212 e!606213)))

(declare-fun res!423702 () Bool)

(assert (=> b!932957 (=> (not res!423702) (not e!606213))))

(assert (=> b!932957 (= res!423702 call!57656)))

(declare-fun b!932958 () Bool)

(declare-fun res!423704 () Bool)

(assert (=> b!932958 (=> (not res!423704) (not e!606210))))

(assert (=> b!932958 (= res!423704 call!57656)))

(assert (=> b!932958 (= e!606216 e!606210)))

(assert (= (and d!281596 (not res!423705)) b!932952))

(assert (= (and b!932952 c!151693) b!932953))

(assert (= (and b!932952 (not c!151693)) b!932955))

(assert (= (and b!932953 res!423701) b!932951))

(assert (= (and b!932955 c!151694) b!932958))

(assert (= (and b!932955 (not c!151694)) b!932956))

(assert (= (and b!932958 res!423704) b!932954))

(assert (= (and b!932956 (not res!423703)) b!932957))

(assert (= (and b!932957 res!423702) b!932950))

(assert (= (or b!932954 b!932950) bm!57651))

(assert (= (or b!932958 b!932957) bm!57650))

(assert (= (or b!932951 bm!57650) bm!57649))

(declare-fun m!1154193 () Bool)

(assert (=> bm!57649 m!1154193))

(declare-fun m!1154195 () Bool)

(assert (=> b!932953 m!1154195))

(declare-fun m!1154197 () Bool)

(assert (=> bm!57651 m!1154197))

(assert (=> start!83430 d!281596))

(declare-fun c!151696 () Bool)

(declare-fun call!57657 () Bool)

(declare-fun bm!57652 () Bool)

(declare-fun c!151695 () Bool)

(assert (=> bm!57652 (= call!57657 (validRegex!1014 (ite c!151695 (reg!2874 (removeUselessConcat!220 r!15766)) (ite c!151696 (regOne!5603 (removeUselessConcat!220 r!15766)) (regOne!5602 (removeUselessConcat!220 r!15766))))))))

(declare-fun b!932959 () Bool)

(declare-fun e!606220 () Bool)

(declare-fun call!57658 () Bool)

(assert (=> b!932959 (= e!606220 call!57658)))

(declare-fun b!932960 () Bool)

(declare-fun e!606221 () Bool)

(assert (=> b!932960 (= e!606221 call!57657)))

(declare-fun b!932961 () Bool)

(declare-fun e!606222 () Bool)

(declare-fun e!606218 () Bool)

(assert (=> b!932961 (= e!606222 e!606218)))

(assert (=> b!932961 (= c!151695 ((_ is Star!2545) (removeUselessConcat!220 r!15766)))))

(declare-fun b!932962 () Bool)

(assert (=> b!932962 (= e!606218 e!606221)))

(declare-fun res!423706 () Bool)

(assert (=> b!932962 (= res!423706 (not (nullable!727 (reg!2874 (removeUselessConcat!220 r!15766)))))))

(assert (=> b!932962 (=> (not res!423706) (not e!606221))))

(declare-fun b!932963 () Bool)

(declare-fun e!606217 () Bool)

(assert (=> b!932963 (= e!606217 call!57658)))

(declare-fun d!281600 () Bool)

(declare-fun res!423710 () Bool)

(assert (=> d!281600 (=> res!423710 e!606222)))

(assert (=> d!281600 (= res!423710 ((_ is ElementMatch!2545) (removeUselessConcat!220 r!15766)))))

(assert (=> d!281600 (= (validRegex!1014 (removeUselessConcat!220 r!15766)) e!606222)))

(declare-fun bm!57653 () Bool)

(declare-fun call!57659 () Bool)

(assert (=> bm!57653 (= call!57659 call!57657)))

(declare-fun bm!57654 () Bool)

(assert (=> bm!57654 (= call!57658 (validRegex!1014 (ite c!151696 (regTwo!5603 (removeUselessConcat!220 r!15766)) (regTwo!5602 (removeUselessConcat!220 r!15766)))))))

(declare-fun b!932964 () Bool)

(declare-fun e!606223 () Bool)

(assert (=> b!932964 (= e!606218 e!606223)))

(assert (=> b!932964 (= c!151696 ((_ is Union!2545) (removeUselessConcat!220 r!15766)))))

(declare-fun b!932965 () Bool)

(declare-fun res!423708 () Bool)

(declare-fun e!606219 () Bool)

(assert (=> b!932965 (=> res!423708 e!606219)))

(assert (=> b!932965 (= res!423708 (not ((_ is Concat!4378) (removeUselessConcat!220 r!15766))))))

(assert (=> b!932965 (= e!606223 e!606219)))

(declare-fun b!932966 () Bool)

(assert (=> b!932966 (= e!606219 e!606220)))

(declare-fun res!423707 () Bool)

(assert (=> b!932966 (=> (not res!423707) (not e!606220))))

(assert (=> b!932966 (= res!423707 call!57659)))

(declare-fun b!932967 () Bool)

(declare-fun res!423709 () Bool)

(assert (=> b!932967 (=> (not res!423709) (not e!606217))))

(assert (=> b!932967 (= res!423709 call!57659)))

(assert (=> b!932967 (= e!606223 e!606217)))

(assert (= (and d!281600 (not res!423710)) b!932961))

(assert (= (and b!932961 c!151695) b!932962))

(assert (= (and b!932961 (not c!151695)) b!932964))

(assert (= (and b!932962 res!423706) b!932960))

(assert (= (and b!932964 c!151696) b!932967))

(assert (= (and b!932964 (not c!151696)) b!932965))

(assert (= (and b!932967 res!423709) b!932963))

(assert (= (and b!932965 (not res!423708)) b!932966))

(assert (= (and b!932966 res!423707) b!932959))

(assert (= (or b!932963 b!932959) bm!57654))

(assert (= (or b!932967 b!932966) bm!57653))

(assert (= (or b!932960 bm!57653) bm!57652))

(declare-fun m!1154199 () Bool)

(assert (=> bm!57652 m!1154199))

(declare-fun m!1154201 () Bool)

(assert (=> b!932962 m!1154201))

(declare-fun m!1154203 () Bool)

(assert (=> bm!57654 m!1154203))

(assert (=> b!932905 d!281600))

(declare-fun bm!57666 () Bool)

(declare-fun call!57673 () Regex!2545)

(declare-fun call!57670 () Regex!2545)

(assert (=> bm!57666 (= call!57673 call!57670)))

(declare-fun b!932990 () Bool)

(declare-fun e!606239 () Regex!2545)

(assert (=> b!932990 (= e!606239 r!15766)))

(declare-fun b!932991 () Bool)

(declare-fun e!606238 () Regex!2545)

(assert (=> b!932991 (= e!606238 call!57673)))

(declare-fun bm!57667 () Bool)

(declare-fun call!57674 () Regex!2545)

(assert (=> bm!57667 (= call!57674 call!57673)))

(declare-fun b!932992 () Bool)

(declare-fun e!606240 () Regex!2545)

(declare-fun call!57672 () Regex!2545)

(declare-fun call!57671 () Regex!2545)

(assert (=> b!932992 (= e!606240 (Union!2545 call!57672 call!57671))))

(declare-fun b!932993 () Bool)

(declare-fun e!606241 () Regex!2545)

(assert (=> b!932993 (= e!606241 call!57670)))

(declare-fun b!932994 () Bool)

(declare-fun e!606236 () Regex!2545)

(assert (=> b!932994 (= e!606236 e!606240)))

(declare-fun c!151707 () Bool)

(assert (=> b!932994 (= c!151707 ((_ is Union!2545) r!15766))))

(declare-fun c!151709 () Bool)

(declare-fun c!151711 () Bool)

(declare-fun c!151710 () Bool)

(declare-fun bm!57668 () Bool)

(assert (=> bm!57668 (= call!57670 (removeUselessConcat!220 (ite c!151711 (regTwo!5602 r!15766) (ite c!151709 (regOne!5602 r!15766) (ite c!151710 (regTwo!5602 r!15766) (ite c!151707 (regTwo!5603 r!15766) (reg!2874 r!15766)))))))))

(declare-fun d!281602 () Bool)

(declare-fun e!606237 () Bool)

(assert (=> d!281602 e!606237))

(declare-fun res!423713 () Bool)

(assert (=> d!281602 (=> (not res!423713) (not e!606237))))

(declare-fun lt!340790 () Regex!2545)

(assert (=> d!281602 (= res!423713 (validRegex!1014 lt!340790))))

(assert (=> d!281602 (= lt!340790 e!606241)))

(assert (=> d!281602 (= c!151711 (and ((_ is Concat!4378) r!15766) ((_ is EmptyExpr!2545) (regOne!5602 r!15766))))))

(assert (=> d!281602 (validRegex!1014 r!15766)))

(assert (=> d!281602 (= (removeUselessConcat!220 r!15766) lt!340790)))

(declare-fun bm!57665 () Bool)

(assert (=> bm!57665 (= call!57671 call!57674)))

(declare-fun b!932995 () Bool)

(assert (=> b!932995 (= c!151710 ((_ is Concat!4378) r!15766))))

(assert (=> b!932995 (= e!606238 e!606236)))

(declare-fun b!932996 () Bool)

(assert (=> b!932996 (= e!606239 (Star!2545 call!57671))))

(declare-fun b!932997 () Bool)

(assert (=> b!932997 (= e!606236 (Concat!4378 call!57672 call!57674))))

(declare-fun b!932998 () Bool)

(declare-fun c!151708 () Bool)

(assert (=> b!932998 (= c!151708 ((_ is Star!2545) r!15766))))

(assert (=> b!932998 (= e!606240 e!606239)))

(declare-fun bm!57669 () Bool)

(assert (=> bm!57669 (= call!57672 (removeUselessConcat!220 (ite c!151710 (regOne!5602 r!15766) (regOne!5603 r!15766))))))

(declare-fun b!932999 () Bool)

(assert (=> b!932999 (= e!606237 (= (nullable!727 lt!340790) (nullable!727 r!15766)))))

(declare-fun b!933000 () Bool)

(assert (=> b!933000 (= e!606241 e!606238)))

(assert (=> b!933000 (= c!151709 (and ((_ is Concat!4378) r!15766) ((_ is EmptyExpr!2545) (regTwo!5602 r!15766))))))

(assert (= (and d!281602 c!151711) b!932993))

(assert (= (and d!281602 (not c!151711)) b!933000))

(assert (= (and b!933000 c!151709) b!932991))

(assert (= (and b!933000 (not c!151709)) b!932995))

(assert (= (and b!932995 c!151710) b!932997))

(assert (= (and b!932995 (not c!151710)) b!932994))

(assert (= (and b!932994 c!151707) b!932992))

(assert (= (and b!932994 (not c!151707)) b!932998))

(assert (= (and b!932998 c!151708) b!932996))

(assert (= (and b!932998 (not c!151708)) b!932990))

(assert (= (or b!932992 b!932996) bm!57665))

(assert (= (or b!932997 bm!57665) bm!57667))

(assert (= (or b!932997 b!932992) bm!57669))

(assert (= (or b!932991 bm!57667) bm!57666))

(assert (= (or b!932993 bm!57666) bm!57668))

(assert (= (and d!281602 res!423713) b!932999))

(declare-fun m!1154205 () Bool)

(assert (=> bm!57668 m!1154205))

(declare-fun m!1154207 () Bool)

(assert (=> d!281602 m!1154207))

(assert (=> d!281602 m!1154185))

(declare-fun m!1154209 () Bool)

(assert (=> bm!57669 m!1154209))

(declare-fun m!1154211 () Bool)

(assert (=> b!932999 m!1154211))

(declare-fun m!1154213 () Bool)

(assert (=> b!932999 m!1154213))

(assert (=> b!932905 d!281602))

(declare-fun b!933246 () Bool)

(assert (=> b!933246 true))

(assert (=> b!933246 true))

(declare-fun bs!237750 () Bool)

(declare-fun b!933243 () Bool)

(assert (= bs!237750 (and b!933243 b!933246)))

(declare-fun lambda!30848 () Int)

(declare-fun lambda!30847 () Int)

(assert (=> bs!237750 (not (= lambda!30848 lambda!30847))))

(assert (=> b!933243 true))

(assert (=> b!933243 true))

(declare-fun b!933240 () Bool)

(declare-fun e!606372 () Bool)

(assert (=> b!933240 (= e!606372 (= s!10566 (Cons!9759 (c!151680 r!15766) Nil!9759)))))

(declare-fun b!933241 () Bool)

(declare-fun e!606367 () Bool)

(assert (=> b!933241 (= e!606367 (matchRSpec!346 (regTwo!5603 r!15766) s!10566))))

(declare-fun bm!57721 () Bool)

(declare-fun call!57726 () Bool)

(declare-fun isEmpty!6000 (List!9775) Bool)

(assert (=> bm!57721 (= call!57726 (isEmpty!6000 s!10566))))

(declare-fun b!933242 () Bool)

(declare-fun e!606369 () Bool)

(declare-fun e!606371 () Bool)

(assert (=> b!933242 (= e!606369 e!606371)))

(declare-fun c!151769 () Bool)

(assert (=> b!933242 (= c!151769 ((_ is Star!2545) r!15766))))

(declare-fun call!57727 () Bool)

(assert (=> b!933243 (= e!606371 call!57727)))

(declare-fun b!933244 () Bool)

(assert (=> b!933244 (= e!606369 e!606367)))

(declare-fun res!423800 () Bool)

(assert (=> b!933244 (= res!423800 (matchRSpec!346 (regOne!5603 r!15766) s!10566))))

(assert (=> b!933244 (=> res!423800 e!606367)))

(declare-fun b!933245 () Bool)

(declare-fun e!606373 () Bool)

(declare-fun e!606368 () Bool)

(assert (=> b!933245 (= e!606373 e!606368)))

(declare-fun res!423801 () Bool)

(assert (=> b!933245 (= res!423801 (not ((_ is EmptyLang!2545) r!15766)))))

(assert (=> b!933245 (=> (not res!423801) (not e!606368))))

(declare-fun e!606370 () Bool)

(assert (=> b!933246 (= e!606370 call!57727)))

(declare-fun d!281604 () Bool)

(declare-fun c!151771 () Bool)

(assert (=> d!281604 (= c!151771 ((_ is EmptyExpr!2545) r!15766))))

(assert (=> d!281604 (= (matchRSpec!346 r!15766 s!10566) e!606373)))

(declare-fun bm!57722 () Bool)

(declare-fun Exists!298 (Int) Bool)

(assert (=> bm!57722 (= call!57727 (Exists!298 (ite c!151769 lambda!30847 lambda!30848)))))

(declare-fun b!933247 () Bool)

(declare-fun c!151772 () Bool)

(assert (=> b!933247 (= c!151772 ((_ is Union!2545) r!15766))))

(assert (=> b!933247 (= e!606372 e!606369)))

(declare-fun b!933248 () Bool)

(assert (=> b!933248 (= e!606373 call!57726)))

(declare-fun b!933249 () Bool)

(declare-fun res!423802 () Bool)

(assert (=> b!933249 (=> res!423802 e!606370)))

(assert (=> b!933249 (= res!423802 call!57726)))

(assert (=> b!933249 (= e!606371 e!606370)))

(declare-fun b!933250 () Bool)

(declare-fun c!151770 () Bool)

(assert (=> b!933250 (= c!151770 ((_ is ElementMatch!2545) r!15766))))

(assert (=> b!933250 (= e!606368 e!606372)))

(assert (= (and d!281604 c!151771) b!933248))

(assert (= (and d!281604 (not c!151771)) b!933245))

(assert (= (and b!933245 res!423801) b!933250))

(assert (= (and b!933250 c!151770) b!933240))

(assert (= (and b!933250 (not c!151770)) b!933247))

(assert (= (and b!933247 c!151772) b!933244))

(assert (= (and b!933247 (not c!151772)) b!933242))

(assert (= (and b!933244 (not res!423800)) b!933241))

(assert (= (and b!933242 c!151769) b!933249))

(assert (= (and b!933242 (not c!151769)) b!933243))

(assert (= (and b!933249 (not res!423802)) b!933246))

(assert (= (or b!933246 b!933243) bm!57722))

(assert (= (or b!933248 b!933249) bm!57721))

(declare-fun m!1154289 () Bool)

(assert (=> b!933241 m!1154289))

(declare-fun m!1154291 () Bool)

(assert (=> bm!57721 m!1154291))

(declare-fun m!1154293 () Bool)

(assert (=> b!933244 m!1154293))

(declare-fun m!1154295 () Bool)

(assert (=> bm!57722 m!1154295))

(assert (=> b!932909 d!281604))

(declare-fun b!933283 () Bool)

(declare-fun res!423822 () Bool)

(declare-fun e!606391 () Bool)

(assert (=> b!933283 (=> res!423822 e!606391)))

(declare-fun e!606393 () Bool)

(assert (=> b!933283 (= res!423822 e!606393)))

(declare-fun res!423819 () Bool)

(assert (=> b!933283 (=> (not res!423819) (not e!606393))))

(declare-fun lt!340805 () Bool)

(assert (=> b!933283 (= res!423819 lt!340805)))

(declare-fun b!933284 () Bool)

(declare-fun e!606392 () Bool)

(declare-fun e!606388 () Bool)

(assert (=> b!933284 (= e!606392 e!606388)))

(declare-fun res!423826 () Bool)

(assert (=> b!933284 (=> res!423826 e!606388)))

(declare-fun call!57730 () Bool)

(assert (=> b!933284 (= res!423826 call!57730)))

(declare-fun b!933285 () Bool)

(declare-fun e!606389 () Bool)

(assert (=> b!933285 (= e!606389 (nullable!727 r!15766))))

(declare-fun b!933286 () Bool)

(declare-fun res!423824 () Bool)

(assert (=> b!933286 (=> res!423824 e!606388)))

(declare-fun tail!1252 (List!9775) List!9775)

(assert (=> b!933286 (= res!423824 (not (isEmpty!6000 (tail!1252 s!10566))))))

(declare-fun b!933287 () Bool)

(declare-fun res!423823 () Bool)

(assert (=> b!933287 (=> (not res!423823) (not e!606393))))

(assert (=> b!933287 (= res!423823 (not call!57730))))

(declare-fun b!933288 () Bool)

(declare-fun e!606394 () Bool)

(declare-fun e!606390 () Bool)

(assert (=> b!933288 (= e!606394 e!606390)))

(declare-fun c!151779 () Bool)

(assert (=> b!933288 (= c!151779 ((_ is EmptyLang!2545) r!15766))))

(declare-fun b!933289 () Bool)

(declare-fun head!1690 (List!9775) C!5660)

(assert (=> b!933289 (= e!606393 (= (head!1690 s!10566) (c!151680 r!15766)))))

(declare-fun b!933290 () Bool)

(assert (=> b!933290 (= e!606391 e!606392)))

(declare-fun res!423821 () Bool)

(assert (=> b!933290 (=> (not res!423821) (not e!606392))))

(assert (=> b!933290 (= res!423821 (not lt!340805))))

(declare-fun b!933291 () Bool)

(declare-fun res!423825 () Bool)

(assert (=> b!933291 (=> res!423825 e!606391)))

(assert (=> b!933291 (= res!423825 (not ((_ is ElementMatch!2545) r!15766)))))

(assert (=> b!933291 (= e!606390 e!606391)))

(declare-fun b!933292 () Bool)

(declare-fun res!423820 () Bool)

(assert (=> b!933292 (=> (not res!423820) (not e!606393))))

(assert (=> b!933292 (= res!423820 (isEmpty!6000 (tail!1252 s!10566)))))

(declare-fun d!281622 () Bool)

(assert (=> d!281622 e!606394))

(declare-fun c!151781 () Bool)

(assert (=> d!281622 (= c!151781 ((_ is EmptyExpr!2545) r!15766))))

(assert (=> d!281622 (= lt!340805 e!606389)))

(declare-fun c!151780 () Bool)

(assert (=> d!281622 (= c!151780 (isEmpty!6000 s!10566))))

(assert (=> d!281622 (validRegex!1014 r!15766)))

(assert (=> d!281622 (= (matchR!1083 r!15766 s!10566) lt!340805)))

(declare-fun bm!57725 () Bool)

(assert (=> bm!57725 (= call!57730 (isEmpty!6000 s!10566))))

(declare-fun b!933293 () Bool)

(assert (=> b!933293 (= e!606388 (not (= (head!1690 s!10566) (c!151680 r!15766))))))

(declare-fun b!933294 () Bool)

(assert (=> b!933294 (= e!606394 (= lt!340805 call!57730))))

(declare-fun b!933295 () Bool)

(declare-fun derivativeStep!537 (Regex!2545 C!5660) Regex!2545)

(assert (=> b!933295 (= e!606389 (matchR!1083 (derivativeStep!537 r!15766 (head!1690 s!10566)) (tail!1252 s!10566)))))

(declare-fun b!933296 () Bool)

(assert (=> b!933296 (= e!606390 (not lt!340805))))

(assert (= (and d!281622 c!151780) b!933285))

(assert (= (and d!281622 (not c!151780)) b!933295))

(assert (= (and d!281622 c!151781) b!933294))

(assert (= (and d!281622 (not c!151781)) b!933288))

(assert (= (and b!933288 c!151779) b!933296))

(assert (= (and b!933288 (not c!151779)) b!933291))

(assert (= (and b!933291 (not res!423825)) b!933283))

(assert (= (and b!933283 res!423819) b!933287))

(assert (= (and b!933287 res!423823) b!933292))

(assert (= (and b!933292 res!423820) b!933289))

(assert (= (and b!933283 (not res!423822)) b!933290))

(assert (= (and b!933290 res!423821) b!933284))

(assert (= (and b!933284 (not res!423826)) b!933286))

(assert (= (and b!933286 (not res!423824)) b!933293))

(assert (= (or b!933294 b!933284 b!933287) bm!57725))

(declare-fun m!1154297 () Bool)

(assert (=> b!933292 m!1154297))

(assert (=> b!933292 m!1154297))

(declare-fun m!1154299 () Bool)

(assert (=> b!933292 m!1154299))

(declare-fun m!1154301 () Bool)

(assert (=> b!933293 m!1154301))

(assert (=> b!933285 m!1154213))

(assert (=> bm!57725 m!1154291))

(assert (=> b!933289 m!1154301))

(assert (=> b!933295 m!1154301))

(assert (=> b!933295 m!1154301))

(declare-fun m!1154303 () Bool)

(assert (=> b!933295 m!1154303))

(assert (=> b!933295 m!1154297))

(assert (=> b!933295 m!1154303))

(assert (=> b!933295 m!1154297))

(declare-fun m!1154305 () Bool)

(assert (=> b!933295 m!1154305))

(assert (=> d!281622 m!1154291))

(assert (=> d!281622 m!1154185))

(assert (=> b!933286 m!1154297))

(assert (=> b!933286 m!1154297))

(assert (=> b!933286 m!1154299))

(assert (=> b!932909 d!281622))

(declare-fun d!281624 () Bool)

(assert (=> d!281624 (= (matchR!1083 r!15766 s!10566) (matchRSpec!346 r!15766 s!10566))))

(declare-fun lt!340808 () Unit!14709)

(declare-fun choose!5739 (Regex!2545 List!9775) Unit!14709)

(assert (=> d!281624 (= lt!340808 (choose!5739 r!15766 s!10566))))

(assert (=> d!281624 (validRegex!1014 r!15766)))

(assert (=> d!281624 (= (mainMatchTheorem!346 r!15766 s!10566) lt!340808)))

(declare-fun bs!237751 () Bool)

(assert (= bs!237751 d!281624))

(assert (=> bs!237751 m!1154189))

(assert (=> bs!237751 m!1154187))

(declare-fun m!1154307 () Bool)

(assert (=> bs!237751 m!1154307))

(assert (=> bs!237751 m!1154185))

(assert (=> b!932909 d!281624))

(declare-fun b!933297 () Bool)

(declare-fun res!423830 () Bool)

(declare-fun e!606398 () Bool)

(assert (=> b!933297 (=> res!423830 e!606398)))

(declare-fun e!606400 () Bool)

(assert (=> b!933297 (= res!423830 e!606400)))

(declare-fun res!423827 () Bool)

(assert (=> b!933297 (=> (not res!423827) (not e!606400))))

(declare-fun lt!340809 () Bool)

(assert (=> b!933297 (= res!423827 lt!340809)))

(declare-fun b!933298 () Bool)

(declare-fun e!606399 () Bool)

(declare-fun e!606395 () Bool)

(assert (=> b!933298 (= e!606399 e!606395)))

(declare-fun res!423834 () Bool)

(assert (=> b!933298 (=> res!423834 e!606395)))

(declare-fun call!57731 () Bool)

(assert (=> b!933298 (= res!423834 call!57731)))

(declare-fun b!933299 () Bool)

(declare-fun e!606396 () Bool)

(assert (=> b!933299 (= e!606396 (nullable!727 (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766)))))))

(declare-fun b!933300 () Bool)

(declare-fun res!423832 () Bool)

(assert (=> b!933300 (=> res!423832 e!606395)))

(assert (=> b!933300 (= res!423832 (not (isEmpty!6000 (tail!1252 s!10566))))))

(declare-fun b!933301 () Bool)

(declare-fun res!423831 () Bool)

(assert (=> b!933301 (=> (not res!423831) (not e!606400))))

(assert (=> b!933301 (= res!423831 (not call!57731))))

(declare-fun b!933302 () Bool)

(declare-fun e!606401 () Bool)

(declare-fun e!606397 () Bool)

(assert (=> b!933302 (= e!606401 e!606397)))

(declare-fun c!151782 () Bool)

(assert (=> b!933302 (= c!151782 ((_ is EmptyLang!2545) (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766)))))))

(declare-fun b!933303 () Bool)

(assert (=> b!933303 (= e!606400 (= (head!1690 s!10566) (c!151680 (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766))))))))

(declare-fun b!933304 () Bool)

(assert (=> b!933304 (= e!606398 e!606399)))

(declare-fun res!423829 () Bool)

(assert (=> b!933304 (=> (not res!423829) (not e!606399))))

(assert (=> b!933304 (= res!423829 (not lt!340809))))

(declare-fun b!933305 () Bool)

(declare-fun res!423833 () Bool)

(assert (=> b!933305 (=> res!423833 e!606398)))

(assert (=> b!933305 (= res!423833 (not ((_ is ElementMatch!2545) (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766))))))))

(assert (=> b!933305 (= e!606397 e!606398)))

(declare-fun b!933306 () Bool)

(declare-fun res!423828 () Bool)

(assert (=> b!933306 (=> (not res!423828) (not e!606400))))

(assert (=> b!933306 (= res!423828 (isEmpty!6000 (tail!1252 s!10566)))))

(declare-fun d!281626 () Bool)

(assert (=> d!281626 e!606401))

(declare-fun c!151784 () Bool)

(assert (=> d!281626 (= c!151784 ((_ is EmptyExpr!2545) (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766)))))))

(assert (=> d!281626 (= lt!340809 e!606396)))

(declare-fun c!151783 () Bool)

(assert (=> d!281626 (= c!151783 (isEmpty!6000 s!10566))))

(assert (=> d!281626 (validRegex!1014 (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766))))))

(assert (=> d!281626 (= (matchR!1083 (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766))) s!10566) lt!340809)))

(declare-fun bm!57726 () Bool)

(assert (=> bm!57726 (= call!57731 (isEmpty!6000 s!10566))))

(declare-fun b!933307 () Bool)

(assert (=> b!933307 (= e!606395 (not (= (head!1690 s!10566) (c!151680 (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766)))))))))

(declare-fun b!933308 () Bool)

(assert (=> b!933308 (= e!606401 (= lt!340809 call!57731))))

(declare-fun b!933309 () Bool)

(assert (=> b!933309 (= e!606396 (matchR!1083 (derivativeStep!537 (Union!2545 (removeUselessConcat!220 (regOne!5603 r!15766)) (removeUselessConcat!220 (regTwo!5603 r!15766))) (head!1690 s!10566)) (tail!1252 s!10566)))))

(declare-fun b!933310 () Bool)

(assert (=> b!933310 (= e!606397 (not lt!340809))))

(assert (= (and d!281626 c!151783) b!933299))

(assert (= (and d!281626 (not c!151783)) b!933309))

(assert (= (and d!281626 c!151784) b!933308))

(assert (= (and d!281626 (not c!151784)) b!933302))

(assert (= (and b!933302 c!151782) b!933310))

(assert (= (and b!933302 (not c!151782)) b!933305))

(assert (= (and b!933305 (not res!423833)) b!933297))

(assert (= (and b!933297 res!423827) b!933301))

(assert (= (and b!933301 res!423831) b!933306))

(assert (= (and b!933306 res!423828) b!933303))

(assert (= (and b!933297 (not res!423830)) b!933304))

(assert (= (and b!933304 res!423829) b!933298))

(assert (= (and b!933298 (not res!423834)) b!933300))

(assert (= (and b!933300 (not res!423832)) b!933307))

(assert (= (or b!933308 b!933298 b!933301) bm!57726))

(assert (=> b!933306 m!1154297))

(assert (=> b!933306 m!1154297))

(assert (=> b!933306 m!1154299))

(assert (=> b!933307 m!1154301))

(declare-fun m!1154309 () Bool)

(assert (=> b!933299 m!1154309))

(assert (=> bm!57726 m!1154291))

(assert (=> b!933303 m!1154301))

(assert (=> b!933309 m!1154301))

(assert (=> b!933309 m!1154301))

(declare-fun m!1154311 () Bool)

(assert (=> b!933309 m!1154311))

(assert (=> b!933309 m!1154297))

(assert (=> b!933309 m!1154311))

(assert (=> b!933309 m!1154297))

(declare-fun m!1154313 () Bool)

(assert (=> b!933309 m!1154313))

(assert (=> d!281626 m!1154291))

(declare-fun m!1154315 () Bool)

(assert (=> d!281626 m!1154315))

(assert (=> b!933300 m!1154297))

(assert (=> b!933300 m!1154297))

(assert (=> b!933300 m!1154299))

(assert (=> b!932903 d!281626))

(declare-fun bm!57728 () Bool)

(declare-fun call!57735 () Regex!2545)

(declare-fun call!57732 () Regex!2545)

(assert (=> bm!57728 (= call!57735 call!57732)))

(declare-fun b!933311 () Bool)

(declare-fun e!606405 () Regex!2545)

(assert (=> b!933311 (= e!606405 (regOne!5603 r!15766))))

(declare-fun b!933312 () Bool)

(declare-fun e!606404 () Regex!2545)

(assert (=> b!933312 (= e!606404 call!57735)))

(declare-fun bm!57729 () Bool)

(declare-fun call!57736 () Regex!2545)

(assert (=> bm!57729 (= call!57736 call!57735)))

(declare-fun b!933313 () Bool)

(declare-fun e!606406 () Regex!2545)

(declare-fun call!57734 () Regex!2545)

(declare-fun call!57733 () Regex!2545)

(assert (=> b!933313 (= e!606406 (Union!2545 call!57734 call!57733))))

(declare-fun b!933314 () Bool)

(declare-fun e!606407 () Regex!2545)

(assert (=> b!933314 (= e!606407 call!57732)))

(declare-fun b!933315 () Bool)

(declare-fun e!606402 () Regex!2545)

(assert (=> b!933315 (= e!606402 e!606406)))

(declare-fun c!151785 () Bool)

(assert (=> b!933315 (= c!151785 ((_ is Union!2545) (regOne!5603 r!15766)))))

(declare-fun c!151789 () Bool)

(declare-fun bm!57730 () Bool)

(declare-fun c!151787 () Bool)

(declare-fun c!151788 () Bool)

(assert (=> bm!57730 (= call!57732 (removeUselessConcat!220 (ite c!151789 (regTwo!5602 (regOne!5603 r!15766)) (ite c!151787 (regOne!5602 (regOne!5603 r!15766)) (ite c!151788 (regTwo!5602 (regOne!5603 r!15766)) (ite c!151785 (regTwo!5603 (regOne!5603 r!15766)) (reg!2874 (regOne!5603 r!15766))))))))))

(declare-fun d!281628 () Bool)

(declare-fun e!606403 () Bool)

(assert (=> d!281628 e!606403))

(declare-fun res!423835 () Bool)

(assert (=> d!281628 (=> (not res!423835) (not e!606403))))

(declare-fun lt!340810 () Regex!2545)

(assert (=> d!281628 (= res!423835 (validRegex!1014 lt!340810))))

(assert (=> d!281628 (= lt!340810 e!606407)))

(assert (=> d!281628 (= c!151789 (and ((_ is Concat!4378) (regOne!5603 r!15766)) ((_ is EmptyExpr!2545) (regOne!5602 (regOne!5603 r!15766)))))))

(assert (=> d!281628 (validRegex!1014 (regOne!5603 r!15766))))

(assert (=> d!281628 (= (removeUselessConcat!220 (regOne!5603 r!15766)) lt!340810)))

(declare-fun bm!57727 () Bool)

(assert (=> bm!57727 (= call!57733 call!57736)))

(declare-fun b!933316 () Bool)

(assert (=> b!933316 (= c!151788 ((_ is Concat!4378) (regOne!5603 r!15766)))))

(assert (=> b!933316 (= e!606404 e!606402)))

(declare-fun b!933317 () Bool)

(assert (=> b!933317 (= e!606405 (Star!2545 call!57733))))

(declare-fun b!933318 () Bool)

(assert (=> b!933318 (= e!606402 (Concat!4378 call!57734 call!57736))))

(declare-fun b!933319 () Bool)

(declare-fun c!151786 () Bool)

(assert (=> b!933319 (= c!151786 ((_ is Star!2545) (regOne!5603 r!15766)))))

(assert (=> b!933319 (= e!606406 e!606405)))

(declare-fun bm!57731 () Bool)

(assert (=> bm!57731 (= call!57734 (removeUselessConcat!220 (ite c!151788 (regOne!5602 (regOne!5603 r!15766)) (regOne!5603 (regOne!5603 r!15766)))))))

(declare-fun b!933320 () Bool)

(assert (=> b!933320 (= e!606403 (= (nullable!727 lt!340810) (nullable!727 (regOne!5603 r!15766))))))

(declare-fun b!933321 () Bool)

(assert (=> b!933321 (= e!606407 e!606404)))

(assert (=> b!933321 (= c!151787 (and ((_ is Concat!4378) (regOne!5603 r!15766)) ((_ is EmptyExpr!2545) (regTwo!5602 (regOne!5603 r!15766)))))))

(assert (= (and d!281628 c!151789) b!933314))

(assert (= (and d!281628 (not c!151789)) b!933321))

(assert (= (and b!933321 c!151787) b!933312))

(assert (= (and b!933321 (not c!151787)) b!933316))

(assert (= (and b!933316 c!151788) b!933318))

(assert (= (and b!933316 (not c!151788)) b!933315))

(assert (= (and b!933315 c!151785) b!933313))

(assert (= (and b!933315 (not c!151785)) b!933319))

(assert (= (and b!933319 c!151786) b!933317))

(assert (= (and b!933319 (not c!151786)) b!933311))

(assert (= (or b!933313 b!933317) bm!57727))

(assert (= (or b!933318 bm!57727) bm!57729))

(assert (= (or b!933318 b!933313) bm!57731))

(assert (= (or b!933312 bm!57729) bm!57728))

(assert (= (or b!933314 bm!57728) bm!57730))

(assert (= (and d!281628 res!423835) b!933320))

(declare-fun m!1154317 () Bool)

(assert (=> bm!57730 m!1154317))

(declare-fun m!1154319 () Bool)

(assert (=> d!281628 m!1154319))

(declare-fun m!1154321 () Bool)

(assert (=> d!281628 m!1154321))

(declare-fun m!1154323 () Bool)

(assert (=> bm!57731 m!1154323))

(declare-fun m!1154325 () Bool)

(assert (=> b!933320 m!1154325))

(declare-fun m!1154327 () Bool)

(assert (=> b!933320 m!1154327))

(assert (=> b!932903 d!281628))

(declare-fun bm!57733 () Bool)

(declare-fun call!57740 () Regex!2545)

(declare-fun call!57737 () Regex!2545)

(assert (=> bm!57733 (= call!57740 call!57737)))

(declare-fun b!933322 () Bool)

(declare-fun e!606411 () Regex!2545)

(assert (=> b!933322 (= e!606411 (regTwo!5603 r!15766))))

(declare-fun b!933323 () Bool)

(declare-fun e!606410 () Regex!2545)

(assert (=> b!933323 (= e!606410 call!57740)))

(declare-fun bm!57734 () Bool)

(declare-fun call!57741 () Regex!2545)

(assert (=> bm!57734 (= call!57741 call!57740)))

(declare-fun b!933324 () Bool)

(declare-fun e!606412 () Regex!2545)

(declare-fun call!57739 () Regex!2545)

(declare-fun call!57738 () Regex!2545)

(assert (=> b!933324 (= e!606412 (Union!2545 call!57739 call!57738))))

(declare-fun b!933325 () Bool)

(declare-fun e!606413 () Regex!2545)

(assert (=> b!933325 (= e!606413 call!57737)))

(declare-fun b!933326 () Bool)

(declare-fun e!606408 () Regex!2545)

(assert (=> b!933326 (= e!606408 e!606412)))

(declare-fun c!151790 () Bool)

(assert (=> b!933326 (= c!151790 ((_ is Union!2545) (regTwo!5603 r!15766)))))

(declare-fun c!151794 () Bool)

(declare-fun c!151792 () Bool)

(declare-fun bm!57735 () Bool)

(declare-fun c!151793 () Bool)

(assert (=> bm!57735 (= call!57737 (removeUselessConcat!220 (ite c!151794 (regTwo!5602 (regTwo!5603 r!15766)) (ite c!151792 (regOne!5602 (regTwo!5603 r!15766)) (ite c!151793 (regTwo!5602 (regTwo!5603 r!15766)) (ite c!151790 (regTwo!5603 (regTwo!5603 r!15766)) (reg!2874 (regTwo!5603 r!15766))))))))))

(declare-fun d!281630 () Bool)

(declare-fun e!606409 () Bool)

(assert (=> d!281630 e!606409))

(declare-fun res!423836 () Bool)

(assert (=> d!281630 (=> (not res!423836) (not e!606409))))

(declare-fun lt!340811 () Regex!2545)

(assert (=> d!281630 (= res!423836 (validRegex!1014 lt!340811))))

(assert (=> d!281630 (= lt!340811 e!606413)))

(assert (=> d!281630 (= c!151794 (and ((_ is Concat!4378) (regTwo!5603 r!15766)) ((_ is EmptyExpr!2545) (regOne!5602 (regTwo!5603 r!15766)))))))

(assert (=> d!281630 (validRegex!1014 (regTwo!5603 r!15766))))

(assert (=> d!281630 (= (removeUselessConcat!220 (regTwo!5603 r!15766)) lt!340811)))

(declare-fun bm!57732 () Bool)

(assert (=> bm!57732 (= call!57738 call!57741)))

(declare-fun b!933327 () Bool)

(assert (=> b!933327 (= c!151793 ((_ is Concat!4378) (regTwo!5603 r!15766)))))

(assert (=> b!933327 (= e!606410 e!606408)))

(declare-fun b!933328 () Bool)

(assert (=> b!933328 (= e!606411 (Star!2545 call!57738))))

(declare-fun b!933329 () Bool)

(assert (=> b!933329 (= e!606408 (Concat!4378 call!57739 call!57741))))

(declare-fun b!933330 () Bool)

(declare-fun c!151791 () Bool)

(assert (=> b!933330 (= c!151791 ((_ is Star!2545) (regTwo!5603 r!15766)))))

(assert (=> b!933330 (= e!606412 e!606411)))

(declare-fun bm!57736 () Bool)

(assert (=> bm!57736 (= call!57739 (removeUselessConcat!220 (ite c!151793 (regOne!5602 (regTwo!5603 r!15766)) (regOne!5603 (regTwo!5603 r!15766)))))))

(declare-fun b!933331 () Bool)

(assert (=> b!933331 (= e!606409 (= (nullable!727 lt!340811) (nullable!727 (regTwo!5603 r!15766))))))

(declare-fun b!933332 () Bool)

(assert (=> b!933332 (= e!606413 e!606410)))

(assert (=> b!933332 (= c!151792 (and ((_ is Concat!4378) (regTwo!5603 r!15766)) ((_ is EmptyExpr!2545) (regTwo!5602 (regTwo!5603 r!15766)))))))

(assert (= (and d!281630 c!151794) b!933325))

(assert (= (and d!281630 (not c!151794)) b!933332))

(assert (= (and b!933332 c!151792) b!933323))

(assert (= (and b!933332 (not c!151792)) b!933327))

(assert (= (and b!933327 c!151793) b!933329))

(assert (= (and b!933327 (not c!151793)) b!933326))

(assert (= (and b!933326 c!151790) b!933324))

(assert (= (and b!933326 (not c!151790)) b!933330))

(assert (= (and b!933330 c!151791) b!933328))

(assert (= (and b!933330 (not c!151791)) b!933322))

(assert (= (or b!933324 b!933328) bm!57732))

(assert (= (or b!933329 bm!57732) bm!57734))

(assert (= (or b!933329 b!933324) bm!57736))

(assert (= (or b!933323 bm!57734) bm!57733))

(assert (= (or b!933325 bm!57733) bm!57735))

(assert (= (and d!281630 res!423836) b!933331))

(declare-fun m!1154329 () Bool)

(assert (=> bm!57735 m!1154329))

(declare-fun m!1154331 () Bool)

(assert (=> d!281630 m!1154331))

(declare-fun m!1154333 () Bool)

(assert (=> d!281630 m!1154333))

(declare-fun m!1154335 () Bool)

(assert (=> bm!57736 m!1154335))

(declare-fun m!1154337 () Bool)

(assert (=> b!933331 m!1154337))

(declare-fun m!1154339 () Bool)

(assert (=> b!933331 m!1154339))

(assert (=> b!932903 d!281630))

(declare-fun b!933343 () Bool)

(declare-fun e!606416 () Bool)

(assert (=> b!933343 (= e!606416 tp_is_empty!4733)))

(assert (=> b!932907 (= tp!289568 e!606416)))

(declare-fun b!933344 () Bool)

(declare-fun tp!289619 () Bool)

(declare-fun tp!289618 () Bool)

(assert (=> b!933344 (= e!606416 (and tp!289619 tp!289618))))

(declare-fun b!933346 () Bool)

(declare-fun tp!289620 () Bool)

(declare-fun tp!289617 () Bool)

(assert (=> b!933346 (= e!606416 (and tp!289620 tp!289617))))

(declare-fun b!933345 () Bool)

(declare-fun tp!289621 () Bool)

(assert (=> b!933345 (= e!606416 tp!289621)))

(assert (= (and b!932907 ((_ is ElementMatch!2545) (regOne!5602 r!15766))) b!933343))

(assert (= (and b!932907 ((_ is Concat!4378) (regOne!5602 r!15766))) b!933344))

(assert (= (and b!932907 ((_ is Star!2545) (regOne!5602 r!15766))) b!933345))

(assert (= (and b!932907 ((_ is Union!2545) (regOne!5602 r!15766))) b!933346))

(declare-fun b!933347 () Bool)

(declare-fun e!606417 () Bool)

(assert (=> b!933347 (= e!606417 tp_is_empty!4733)))

(assert (=> b!932907 (= tp!289564 e!606417)))

(declare-fun b!933348 () Bool)

(declare-fun tp!289624 () Bool)

(declare-fun tp!289623 () Bool)

(assert (=> b!933348 (= e!606417 (and tp!289624 tp!289623))))

(declare-fun b!933350 () Bool)

(declare-fun tp!289625 () Bool)

(declare-fun tp!289622 () Bool)

(assert (=> b!933350 (= e!606417 (and tp!289625 tp!289622))))

(declare-fun b!933349 () Bool)

(declare-fun tp!289626 () Bool)

(assert (=> b!933349 (= e!606417 tp!289626)))

(assert (= (and b!932907 ((_ is ElementMatch!2545) (regTwo!5602 r!15766))) b!933347))

(assert (= (and b!932907 ((_ is Concat!4378) (regTwo!5602 r!15766))) b!933348))

(assert (= (and b!932907 ((_ is Star!2545) (regTwo!5602 r!15766))) b!933349))

(assert (= (and b!932907 ((_ is Union!2545) (regTwo!5602 r!15766))) b!933350))

(declare-fun b!933351 () Bool)

(declare-fun e!606418 () Bool)

(assert (=> b!933351 (= e!606418 tp_is_empty!4733)))

(assert (=> b!932902 (= tp!289566 e!606418)))

(declare-fun b!933352 () Bool)

(declare-fun tp!289629 () Bool)

(declare-fun tp!289628 () Bool)

(assert (=> b!933352 (= e!606418 (and tp!289629 tp!289628))))

(declare-fun b!933354 () Bool)

(declare-fun tp!289630 () Bool)

(declare-fun tp!289627 () Bool)

(assert (=> b!933354 (= e!606418 (and tp!289630 tp!289627))))

(declare-fun b!933353 () Bool)

(declare-fun tp!289631 () Bool)

(assert (=> b!933353 (= e!606418 tp!289631)))

(assert (= (and b!932902 ((_ is ElementMatch!2545) (regOne!5603 r!15766))) b!933351))

(assert (= (and b!932902 ((_ is Concat!4378) (regOne!5603 r!15766))) b!933352))

(assert (= (and b!932902 ((_ is Star!2545) (regOne!5603 r!15766))) b!933353))

(assert (= (and b!932902 ((_ is Union!2545) (regOne!5603 r!15766))) b!933354))

(declare-fun b!933355 () Bool)

(declare-fun e!606419 () Bool)

(assert (=> b!933355 (= e!606419 tp_is_empty!4733)))

(assert (=> b!932902 (= tp!289567 e!606419)))

(declare-fun b!933356 () Bool)

(declare-fun tp!289634 () Bool)

(declare-fun tp!289633 () Bool)

(assert (=> b!933356 (= e!606419 (and tp!289634 tp!289633))))

(declare-fun b!933358 () Bool)

(declare-fun tp!289635 () Bool)

(declare-fun tp!289632 () Bool)

(assert (=> b!933358 (= e!606419 (and tp!289635 tp!289632))))

(declare-fun b!933357 () Bool)

(declare-fun tp!289636 () Bool)

(assert (=> b!933357 (= e!606419 tp!289636)))

(assert (= (and b!932902 ((_ is ElementMatch!2545) (regTwo!5603 r!15766))) b!933355))

(assert (= (and b!932902 ((_ is Concat!4378) (regTwo!5603 r!15766))) b!933356))

(assert (= (and b!932902 ((_ is Star!2545) (regTwo!5603 r!15766))) b!933357))

(assert (= (and b!932902 ((_ is Union!2545) (regTwo!5603 r!15766))) b!933358))

(declare-fun b!933359 () Bool)

(declare-fun e!606420 () Bool)

(assert (=> b!933359 (= e!606420 tp_is_empty!4733)))

(assert (=> b!932906 (= tp!289565 e!606420)))

(declare-fun b!933360 () Bool)

(declare-fun tp!289639 () Bool)

(declare-fun tp!289638 () Bool)

(assert (=> b!933360 (= e!606420 (and tp!289639 tp!289638))))

(declare-fun b!933362 () Bool)

(declare-fun tp!289640 () Bool)

(declare-fun tp!289637 () Bool)

(assert (=> b!933362 (= e!606420 (and tp!289640 tp!289637))))

(declare-fun b!933361 () Bool)

(declare-fun tp!289641 () Bool)

(assert (=> b!933361 (= e!606420 tp!289641)))

(assert (= (and b!932906 ((_ is ElementMatch!2545) (reg!2874 r!15766))) b!933359))

(assert (= (and b!932906 ((_ is Concat!4378) (reg!2874 r!15766))) b!933360))

(assert (= (and b!932906 ((_ is Star!2545) (reg!2874 r!15766))) b!933361))

(assert (= (and b!932906 ((_ is Union!2545) (reg!2874 r!15766))) b!933362))

(declare-fun b!933367 () Bool)

(declare-fun e!606423 () Bool)

(declare-fun tp!289644 () Bool)

(assert (=> b!933367 (= e!606423 (and tp_is_empty!4733 tp!289644))))

(assert (=> b!932904 (= tp!289563 e!606423)))

(assert (= (and b!932904 ((_ is Cons!9759) (t!100821 s!10566))) b!933367))

(check-sat (not b!932999) (not bm!57651) (not b!933367) (not b!933349) (not b!933286) (not b!933352) (not b!933356) tp_is_empty!4733 (not bm!57736) (not b!933350) (not bm!57725) (not b!933353) (not b!933348) (not b!932953) (not bm!57731) (not b!933300) (not b!933361) (not b!933344) (not b!933331) (not b!933354) (not bm!57652) (not b!933360) (not bm!57668) (not b!933358) (not b!933362) (not b!933292) (not b!933299) (not bm!57735) (not b!933241) (not b!933309) (not b!933244) (not b!933345) (not d!281626) (not bm!57649) (not d!281624) (not b!933357) (not bm!57722) (not b!933320) (not b!932962) (not b!933306) (not b!933289) (not bm!57654) (not d!281630) (not b!933346) (not b!933293) (not b!933285) (not bm!57730) (not d!281622) (not bm!57669) (not b!933303) (not d!281628) (not bm!57721) (not d!281602) (not b!933307) (not bm!57726) (not b!933295))
(check-sat)
