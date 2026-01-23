; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286812 () Bool)

(assert start!286812)

(declare-fun b!2959547 () Bool)

(declare-fun e!1863086 () Bool)

(declare-fun tp!944640 () Bool)

(declare-fun tp!944636 () Bool)

(assert (=> b!2959547 (= e!1863086 (and tp!944640 tp!944636))))

(declare-fun b!2959548 () Bool)

(declare-fun e!1863083 () Bool)

(declare-fun e!1863084 () Bool)

(assert (=> b!2959548 (= e!1863083 e!1863084)))

(declare-fun res!1221220 () Bool)

(assert (=> b!2959548 (=> res!1221220 e!1863084)))

(declare-datatypes ((C!18560 0))(
  ( (C!18561 (val!11316 Int)) )
))
(declare-datatypes ((Regex!9187 0))(
  ( (ElementMatch!9187 (c!484911 C!18560)) (Concat!14508 (regOne!18886 Regex!9187) (regTwo!18886 Regex!9187)) (EmptyExpr!9187) (Star!9187 (reg!9516 Regex!9187)) (EmptyLang!9187) (Union!9187 (regOne!18887 Regex!9187) (regTwo!18887 Regex!9187)) )
))
(declare-fun lt!1033918 () Regex!9187)

(declare-fun isEmptyLang!309 (Regex!9187) Bool)

(assert (=> b!2959548 (= res!1221220 (isEmptyLang!309 lt!1033918))))

(declare-fun lt!1033916 () Regex!9187)

(declare-fun r!17423 () Regex!9187)

(declare-fun simplify!192 (Regex!9187) Regex!9187)

(assert (=> b!2959548 (= lt!1033916 (simplify!192 (regTwo!18886 r!17423)))))

(assert (=> b!2959548 (= lt!1033918 (simplify!192 (regOne!18886 r!17423)))))

(declare-fun b!2959549 () Bool)

(declare-fun res!1221219 () Bool)

(assert (=> b!2959549 (=> res!1221219 e!1863084)))

(assert (=> b!2959549 (= res!1221219 (isEmptyLang!309 lt!1033916))))

(declare-fun b!2959550 () Bool)

(declare-fun tp_is_empty!15937 () Bool)

(assert (=> b!2959550 (= e!1863086 tp_is_empty!15937)))

(declare-fun b!2959551 () Bool)

(declare-fun res!1221217 () Bool)

(assert (=> b!2959551 (=> res!1221217 e!1863084)))

(declare-datatypes ((List!35052 0))(
  ( (Nil!34928) (Cons!34928 (h!40348 C!18560) (t!234117 List!35052)) )
))
(declare-fun s!11993 () List!35052)

(declare-fun matchR!4069 (Regex!9187 List!35052) Bool)

(assert (=> b!2959551 (= res!1221217 (matchR!4069 (Concat!14508 lt!1033918 lt!1033916) s!11993))))

(declare-fun b!2959552 () Bool)

(declare-fun validRegex!3920 (Regex!9187) Bool)

(assert (=> b!2959552 (= e!1863084 (validRegex!3920 (simplify!192 r!17423)))))

(declare-fun b!2959553 () Bool)

(declare-fun res!1221222 () Bool)

(assert (=> b!2959553 (=> res!1221222 e!1863084)))

(declare-fun isEmptyExpr!390 (Regex!9187) Bool)

(assert (=> b!2959553 (= res!1221222 (isEmptyExpr!390 lt!1033918))))

(declare-fun b!2959554 () Bool)

(declare-fun e!1863085 () Bool)

(declare-fun tp!944639 () Bool)

(assert (=> b!2959554 (= e!1863085 (and tp_is_empty!15937 tp!944639))))

(declare-fun b!2959555 () Bool)

(declare-fun tp!944638 () Bool)

(assert (=> b!2959555 (= e!1863086 tp!944638)))

(declare-fun b!2959557 () Bool)

(declare-fun e!1863087 () Bool)

(assert (=> b!2959557 (= e!1863087 (not e!1863083))))

(declare-fun res!1221223 () Bool)

(assert (=> b!2959557 (=> res!1221223 e!1863083)))

(declare-fun lt!1033919 () Bool)

(get-info :version)

(assert (=> b!2959557 (= res!1221223 (or lt!1033919 (not ((_ is Concat!14508) r!17423))))))

(declare-fun matchRSpec!1324 (Regex!9187 List!35052) Bool)

(assert (=> b!2959557 (= lt!1033919 (matchRSpec!1324 r!17423 s!11993))))

(assert (=> b!2959557 (= lt!1033919 (matchR!4069 r!17423 s!11993))))

(declare-datatypes ((Unit!48753 0))(
  ( (Unit!48754) )
))
(declare-fun lt!1033917 () Unit!48753)

(declare-fun mainMatchTheorem!1324 (Regex!9187 List!35052) Unit!48753)

(assert (=> b!2959557 (= lt!1033917 (mainMatchTheorem!1324 r!17423 s!11993))))

(declare-fun b!2959558 () Bool)

(declare-fun tp!944641 () Bool)

(declare-fun tp!944637 () Bool)

(assert (=> b!2959558 (= e!1863086 (and tp!944641 tp!944637))))

(declare-fun b!2959559 () Bool)

(declare-fun res!1221218 () Bool)

(assert (=> b!2959559 (=> res!1221218 e!1863084)))

(assert (=> b!2959559 (= res!1221218 (isEmptyExpr!390 lt!1033916))))

(declare-fun b!2959556 () Bool)

(declare-fun res!1221224 () Bool)

(assert (=> b!2959556 (=> res!1221224 e!1863083)))

(declare-fun isEmpty!19212 (List!35052) Bool)

(assert (=> b!2959556 (= res!1221224 (isEmpty!19212 s!11993))))

(declare-fun res!1221221 () Bool)

(assert (=> start!286812 (=> (not res!1221221) (not e!1863087))))

(assert (=> start!286812 (= res!1221221 (validRegex!3920 r!17423))))

(assert (=> start!286812 e!1863087))

(assert (=> start!286812 e!1863086))

(assert (=> start!286812 e!1863085))

(assert (= (and start!286812 res!1221221) b!2959557))

(assert (= (and b!2959557 (not res!1221223)) b!2959556))

(assert (= (and b!2959556 (not res!1221224)) b!2959548))

(assert (= (and b!2959548 (not res!1221220)) b!2959549))

(assert (= (and b!2959549 (not res!1221219)) b!2959553))

(assert (= (and b!2959553 (not res!1221222)) b!2959559))

(assert (= (and b!2959559 (not res!1221218)) b!2959551))

(assert (= (and b!2959551 (not res!1221217)) b!2959552))

(assert (= (and start!286812 ((_ is ElementMatch!9187) r!17423)) b!2959550))

(assert (= (and start!286812 ((_ is Concat!14508) r!17423)) b!2959547))

(assert (= (and start!286812 ((_ is Star!9187) r!17423)) b!2959555))

(assert (= (and start!286812 ((_ is Union!9187) r!17423)) b!2959558))

(assert (= (and start!286812 ((_ is Cons!34928) s!11993)) b!2959554))

(declare-fun m!3333833 () Bool)

(assert (=> b!2959548 m!3333833))

(declare-fun m!3333835 () Bool)

(assert (=> b!2959548 m!3333835))

(declare-fun m!3333837 () Bool)

(assert (=> b!2959548 m!3333837))

(declare-fun m!3333839 () Bool)

(assert (=> start!286812 m!3333839))

(declare-fun m!3333841 () Bool)

(assert (=> b!2959553 m!3333841))

(declare-fun m!3333843 () Bool)

(assert (=> b!2959552 m!3333843))

(assert (=> b!2959552 m!3333843))

(declare-fun m!3333845 () Bool)

(assert (=> b!2959552 m!3333845))

(declare-fun m!3333847 () Bool)

(assert (=> b!2959557 m!3333847))

(declare-fun m!3333849 () Bool)

(assert (=> b!2959557 m!3333849))

(declare-fun m!3333851 () Bool)

(assert (=> b!2959557 m!3333851))

(declare-fun m!3333853 () Bool)

(assert (=> b!2959551 m!3333853))

(declare-fun m!3333855 () Bool)

(assert (=> b!2959549 m!3333855))

(declare-fun m!3333857 () Bool)

(assert (=> b!2959556 m!3333857))

(declare-fun m!3333859 () Bool)

(assert (=> b!2959559 m!3333859))

(check-sat (not b!2959551) (not b!2959549) (not b!2959555) (not b!2959559) (not b!2959556) (not b!2959552) (not start!286812) (not b!2959554) tp_is_empty!15937 (not b!2959548) (not b!2959547) (not b!2959553) (not b!2959558) (not b!2959557))
(check-sat)
(get-model)

(declare-fun d!841919 () Bool)

(assert (=> d!841919 (= (isEmptyExpr!390 lt!1033918) ((_ is EmptyExpr!9187) lt!1033918))))

(assert (=> b!2959553 d!841919))

(declare-fun d!841929 () Bool)

(assert (=> d!841929 (= (isEmptyLang!309 lt!1033918) ((_ is EmptyLang!9187) lt!1033918))))

(assert (=> b!2959548 d!841929))

(declare-fun b!2959758 () Bool)

(declare-fun e!1863198 () Regex!9187)

(declare-fun lt!1033959 () Regex!9187)

(declare-fun lt!1033961 () Regex!9187)

(assert (=> b!2959758 (= e!1863198 (Concat!14508 lt!1033959 lt!1033961))))

(declare-fun b!2959759 () Bool)

(declare-fun e!1863202 () Regex!9187)

(declare-fun lt!1033962 () Regex!9187)

(assert (=> b!2959759 (= e!1863202 lt!1033962)))

(declare-fun call!196196 () Regex!9187)

(declare-fun bm!196189 () Bool)

(declare-fun c!484995 () Bool)

(declare-fun c!484989 () Bool)

(assert (=> bm!196189 (= call!196196 (simplify!192 (ite c!484989 (reg!9516 (regTwo!18886 r!17423)) (ite c!484995 (regTwo!18887 (regTwo!18886 r!17423)) (regOne!18886 (regTwo!18886 r!17423))))))))

(declare-fun b!2959760 () Bool)

(declare-fun e!1863209 () Regex!9187)

(assert (=> b!2959760 (= e!1863209 (regTwo!18886 r!17423))))

(declare-fun b!2959761 () Bool)

(declare-fun e!1863196 () Regex!9187)

(assert (=> b!2959761 (= e!1863196 e!1863209)))

(declare-fun c!484993 () Bool)

(assert (=> b!2959761 (= c!484993 ((_ is ElementMatch!9187) (regTwo!18886 r!17423)))))

(declare-fun b!2959762 () Bool)

(declare-fun e!1863210 () Regex!9187)

(assert (=> b!2959762 (= e!1863210 EmptyLang!9187)))

(declare-fun b!2959763 () Bool)

(declare-fun c!484996 () Bool)

(declare-fun e!1863204 () Bool)

(assert (=> b!2959763 (= c!484996 e!1863204)))

(declare-fun res!1221271 () Bool)

(assert (=> b!2959763 (=> res!1221271 e!1863204)))

(declare-fun call!196197 () Bool)

(assert (=> b!2959763 (= res!1221271 call!196197)))

(declare-fun lt!1033960 () Regex!9187)

(assert (=> b!2959763 (= lt!1033960 call!196196)))

(declare-fun e!1863197 () Regex!9187)

(declare-fun e!1863201 () Regex!9187)

(assert (=> b!2959763 (= e!1863197 e!1863201)))

(declare-fun b!2959764 () Bool)

(assert (=> b!2959764 (= e!1863198 lt!1033959)))

(declare-fun bm!196190 () Bool)

(declare-fun call!196198 () Regex!9187)

(assert (=> bm!196190 (= call!196198 (simplify!192 (ite c!484995 (regOne!18887 (regTwo!18886 r!17423)) (regTwo!18886 (regTwo!18886 r!17423)))))))

(declare-fun lt!1033963 () Regex!9187)

(declare-fun bm!196191 () Bool)

(declare-fun call!196199 () Bool)

(assert (=> bm!196191 (= call!196199 (isEmptyLang!309 (ite c!484995 lt!1033963 lt!1033961)))))

(declare-fun b!2959769 () Bool)

(declare-fun e!1863206 () Regex!9187)

(assert (=> b!2959769 (= e!1863206 e!1863198)))

(declare-fun c!484994 () Bool)

(assert (=> b!2959769 (= c!484994 (isEmptyExpr!390 lt!1033961))))

(declare-fun b!2959770 () Bool)

(declare-fun c!484991 () Bool)

(declare-fun call!196194 () Bool)

(assert (=> b!2959770 (= c!484991 call!196194)))

(declare-fun e!1863203 () Regex!9187)

(assert (=> b!2959770 (= e!1863202 e!1863203)))

(declare-fun bm!196192 () Bool)

(declare-fun call!196195 () Regex!9187)

(assert (=> bm!196192 (= call!196195 call!196196)))

(declare-fun call!196200 () Bool)

(declare-fun bm!196193 () Bool)

(assert (=> bm!196193 (= call!196200 (isEmptyExpr!390 (ite c!484989 lt!1033960 lt!1033959)))))

(declare-fun b!2959771 () Bool)

(assert (=> b!2959771 (= e!1863201 (Star!9187 lt!1033960))))

(declare-fun b!2959772 () Bool)

(declare-fun c!484990 () Bool)

(assert (=> b!2959772 (= c!484990 call!196200)))

(assert (=> b!2959772 (= e!1863210 e!1863206)))

(declare-fun b!2959773 () Bool)

(declare-fun e!1863200 () Regex!9187)

(assert (=> b!2959773 (= e!1863200 EmptyExpr!9187)))

(declare-fun b!2959774 () Bool)

(assert (=> b!2959774 (= e!1863203 (Union!9187 lt!1033963 lt!1033962))))

(declare-fun b!2959775 () Bool)

(assert (=> b!2959775 (= e!1863204 call!196200)))

(declare-fun b!2959776 () Bool)

(declare-fun e!1863199 () Regex!9187)

(assert (=> b!2959776 (= e!1863199 e!1863210)))

(assert (=> b!2959776 (= lt!1033959 call!196195)))

(assert (=> b!2959776 (= lt!1033961 call!196198)))

(declare-fun res!1221267 () Bool)

(assert (=> b!2959776 (= res!1221267 call!196194)))

(declare-fun e!1863195 () Bool)

(assert (=> b!2959776 (=> res!1221267 e!1863195)))

(declare-fun c!484999 () Bool)

(assert (=> b!2959776 (= c!484999 e!1863195)))

(declare-fun b!2959777 () Bool)

(declare-fun c!484992 () Bool)

(assert (=> b!2959777 (= c!484992 ((_ is EmptyExpr!9187) (regTwo!18886 r!17423)))))

(assert (=> b!2959777 (= e!1863209 e!1863200)))

(declare-fun b!2959778 () Bool)

(assert (=> b!2959778 (= e!1863203 lt!1033963)))

(declare-fun b!2959779 () Bool)

(assert (=> b!2959779 (= e!1863206 lt!1033961)))

(declare-fun bm!196194 () Bool)

(assert (=> bm!196194 (= call!196194 call!196197)))

(declare-fun b!2959780 () Bool)

(assert (=> b!2959780 (= e!1863200 e!1863197)))

(assert (=> b!2959780 (= c!484989 ((_ is Star!9187) (regTwo!18886 r!17423)))))

(declare-fun b!2959781 () Bool)

(assert (=> b!2959781 (= e!1863196 EmptyLang!9187)))

(declare-fun b!2959782 () Bool)

(assert (=> b!2959782 (= e!1863201 EmptyExpr!9187)))

(declare-fun b!2959783 () Bool)

(declare-fun e!1863205 () Bool)

(declare-fun lt!1033964 () Regex!9187)

(declare-fun nullable!2931 (Regex!9187) Bool)

(assert (=> b!2959783 (= e!1863205 (= (nullable!2931 lt!1033964) (nullable!2931 (regTwo!18886 r!17423))))))

(declare-fun b!2959784 () Bool)

(assert (=> b!2959784 (= c!484995 ((_ is Union!9187) (regTwo!18886 r!17423)))))

(assert (=> b!2959784 (= e!1863197 e!1863199)))

(declare-fun d!841931 () Bool)

(assert (=> d!841931 e!1863205))

(declare-fun res!1221268 () Bool)

(assert (=> d!841931 (=> (not res!1221268) (not e!1863205))))

(assert (=> d!841931 (= res!1221268 (validRegex!3920 lt!1033964))))

(assert (=> d!841931 (= lt!1033964 e!1863196)))

(declare-fun c!484997 () Bool)

(assert (=> d!841931 (= c!484997 ((_ is EmptyLang!9187) (regTwo!18886 r!17423)))))

(assert (=> d!841931 (validRegex!3920 (regTwo!18886 r!17423))))

(assert (=> d!841931 (= (simplify!192 (regTwo!18886 r!17423)) lt!1033964)))

(declare-fun b!2959785 () Bool)

(assert (=> b!2959785 (= e!1863199 e!1863202)))

(assert (=> b!2959785 (= lt!1033963 call!196198)))

(assert (=> b!2959785 (= lt!1033962 call!196195)))

(declare-fun c!484998 () Bool)

(assert (=> b!2959785 (= c!484998 call!196199)))

(declare-fun bm!196195 () Bool)

(assert (=> bm!196195 (= call!196197 (isEmptyLang!309 (ite c!484989 lt!1033960 (ite c!484995 lt!1033962 lt!1033959))))))

(declare-fun b!2959786 () Bool)

(assert (=> b!2959786 (= e!1863195 call!196199)))

(assert (= (and d!841931 c!484997) b!2959781))

(assert (= (and d!841931 (not c!484997)) b!2959761))

(assert (= (and b!2959761 c!484993) b!2959760))

(assert (= (and b!2959761 (not c!484993)) b!2959777))

(assert (= (and b!2959777 c!484992) b!2959773))

(assert (= (and b!2959777 (not c!484992)) b!2959780))

(assert (= (and b!2959780 c!484989) b!2959763))

(assert (= (and b!2959780 (not c!484989)) b!2959784))

(assert (= (and b!2959763 (not res!1221271)) b!2959775))

(assert (= (and b!2959763 c!484996) b!2959782))

(assert (= (and b!2959763 (not c!484996)) b!2959771))

(assert (= (and b!2959784 c!484995) b!2959785))

(assert (= (and b!2959784 (not c!484995)) b!2959776))

(assert (= (and b!2959785 c!484998) b!2959759))

(assert (= (and b!2959785 (not c!484998)) b!2959770))

(assert (= (and b!2959770 c!484991) b!2959778))

(assert (= (and b!2959770 (not c!484991)) b!2959774))

(assert (= (and b!2959776 (not res!1221267)) b!2959786))

(assert (= (and b!2959776 c!484999) b!2959762))

(assert (= (and b!2959776 (not c!484999)) b!2959772))

(assert (= (and b!2959772 c!484990) b!2959779))

(assert (= (and b!2959772 (not c!484990)) b!2959769))

(assert (= (and b!2959769 c!484994) b!2959764))

(assert (= (and b!2959769 (not c!484994)) b!2959758))

(assert (= (or b!2959785 b!2959776) bm!196190))

(assert (= (or b!2959785 b!2959776) bm!196192))

(assert (= (or b!2959785 b!2959786) bm!196191))

(assert (= (or b!2959770 b!2959776) bm!196194))

(assert (= (or b!2959775 b!2959772) bm!196193))

(assert (= (or b!2959763 bm!196192) bm!196189))

(assert (= (or b!2959763 bm!196194) bm!196195))

(assert (= (and d!841931 res!1221268) b!2959783))

(declare-fun m!3333915 () Bool)

(assert (=> bm!196193 m!3333915))

(declare-fun m!3333917 () Bool)

(assert (=> bm!196190 m!3333917))

(declare-fun m!3333919 () Bool)

(assert (=> b!2959783 m!3333919))

(declare-fun m!3333921 () Bool)

(assert (=> b!2959783 m!3333921))

(declare-fun m!3333923 () Bool)

(assert (=> bm!196189 m!3333923))

(declare-fun m!3333925 () Bool)

(assert (=> d!841931 m!3333925))

(declare-fun m!3333927 () Bool)

(assert (=> d!841931 m!3333927))

(declare-fun m!3333929 () Bool)

(assert (=> b!2959769 m!3333929))

(declare-fun m!3333931 () Bool)

(assert (=> bm!196195 m!3333931))

(declare-fun m!3333933 () Bool)

(assert (=> bm!196191 m!3333933))

(assert (=> b!2959548 d!841931))

(declare-fun b!2959799 () Bool)

(declare-fun e!1863224 () Regex!9187)

(declare-fun lt!1033965 () Regex!9187)

(declare-fun lt!1033967 () Regex!9187)

(assert (=> b!2959799 (= e!1863224 (Concat!14508 lt!1033965 lt!1033967))))

(declare-fun b!2959800 () Bool)

(declare-fun e!1863228 () Regex!9187)

(declare-fun lt!1033968 () Regex!9187)

(assert (=> b!2959800 (= e!1863228 lt!1033968)))

(declare-fun c!485012 () Bool)

(declare-fun c!485006 () Bool)

(declare-fun bm!196196 () Bool)

(declare-fun call!196203 () Regex!9187)

(assert (=> bm!196196 (= call!196203 (simplify!192 (ite c!485006 (reg!9516 (regOne!18886 r!17423)) (ite c!485012 (regTwo!18887 (regOne!18886 r!17423)) (regOne!18886 (regOne!18886 r!17423))))))))

(declare-fun b!2959801 () Bool)

(declare-fun e!1863233 () Regex!9187)

(assert (=> b!2959801 (= e!1863233 (regOne!18886 r!17423))))

(declare-fun b!2959802 () Bool)

(declare-fun e!1863222 () Regex!9187)

(assert (=> b!2959802 (= e!1863222 e!1863233)))

(declare-fun c!485010 () Bool)

(assert (=> b!2959802 (= c!485010 ((_ is ElementMatch!9187) (regOne!18886 r!17423)))))

(declare-fun b!2959803 () Bool)

(declare-fun e!1863234 () Regex!9187)

(assert (=> b!2959803 (= e!1863234 EmptyLang!9187)))

(declare-fun b!2959804 () Bool)

(declare-fun c!485013 () Bool)

(declare-fun e!1863230 () Bool)

(assert (=> b!2959804 (= c!485013 e!1863230)))

(declare-fun res!1221278 () Bool)

(assert (=> b!2959804 (=> res!1221278 e!1863230)))

(declare-fun call!196204 () Bool)

(assert (=> b!2959804 (= res!1221278 call!196204)))

(declare-fun lt!1033966 () Regex!9187)

(assert (=> b!2959804 (= lt!1033966 call!196203)))

(declare-fun e!1863223 () Regex!9187)

(declare-fun e!1863227 () Regex!9187)

(assert (=> b!2959804 (= e!1863223 e!1863227)))

(declare-fun b!2959805 () Bool)

(assert (=> b!2959805 (= e!1863224 lt!1033965)))

(declare-fun bm!196197 () Bool)

(declare-fun call!196205 () Regex!9187)

(assert (=> bm!196197 (= call!196205 (simplify!192 (ite c!485012 (regOne!18887 (regOne!18886 r!17423)) (regTwo!18886 (regOne!18886 r!17423)))))))

(declare-fun call!196206 () Bool)

(declare-fun lt!1033969 () Regex!9187)

(declare-fun bm!196198 () Bool)

(assert (=> bm!196198 (= call!196206 (isEmptyLang!309 (ite c!485012 lt!1033969 lt!1033967)))))

(declare-fun b!2959806 () Bool)

(declare-fun e!1863232 () Regex!9187)

(assert (=> b!2959806 (= e!1863232 e!1863224)))

(declare-fun c!485011 () Bool)

(assert (=> b!2959806 (= c!485011 (isEmptyExpr!390 lt!1033967))))

(declare-fun b!2959807 () Bool)

(declare-fun c!485008 () Bool)

(declare-fun call!196201 () Bool)

(assert (=> b!2959807 (= c!485008 call!196201)))

(declare-fun e!1863229 () Regex!9187)

(assert (=> b!2959807 (= e!1863228 e!1863229)))

(declare-fun bm!196199 () Bool)

(declare-fun call!196202 () Regex!9187)

(assert (=> bm!196199 (= call!196202 call!196203)))

(declare-fun bm!196200 () Bool)

(declare-fun call!196207 () Bool)

(assert (=> bm!196200 (= call!196207 (isEmptyExpr!390 (ite c!485006 lt!1033966 lt!1033965)))))

(declare-fun b!2959808 () Bool)

(assert (=> b!2959808 (= e!1863227 (Star!9187 lt!1033966))))

(declare-fun b!2959809 () Bool)

(declare-fun c!485007 () Bool)

(assert (=> b!2959809 (= c!485007 call!196207)))

(assert (=> b!2959809 (= e!1863234 e!1863232)))

(declare-fun b!2959810 () Bool)

(declare-fun e!1863226 () Regex!9187)

(assert (=> b!2959810 (= e!1863226 EmptyExpr!9187)))

(declare-fun b!2959811 () Bool)

(assert (=> b!2959811 (= e!1863229 (Union!9187 lt!1033969 lt!1033968))))

(declare-fun b!2959812 () Bool)

(assert (=> b!2959812 (= e!1863230 call!196207)))

(declare-fun b!2959813 () Bool)

(declare-fun e!1863225 () Regex!9187)

(assert (=> b!2959813 (= e!1863225 e!1863234)))

(assert (=> b!2959813 (= lt!1033965 call!196202)))

(assert (=> b!2959813 (= lt!1033967 call!196205)))

(declare-fun res!1221276 () Bool)

(assert (=> b!2959813 (= res!1221276 call!196201)))

(declare-fun e!1863221 () Bool)

(assert (=> b!2959813 (=> res!1221276 e!1863221)))

(declare-fun c!485016 () Bool)

(assert (=> b!2959813 (= c!485016 e!1863221)))

(declare-fun b!2959814 () Bool)

(declare-fun c!485009 () Bool)

(assert (=> b!2959814 (= c!485009 ((_ is EmptyExpr!9187) (regOne!18886 r!17423)))))

(assert (=> b!2959814 (= e!1863233 e!1863226)))

(declare-fun b!2959815 () Bool)

(assert (=> b!2959815 (= e!1863229 lt!1033969)))

(declare-fun b!2959816 () Bool)

(assert (=> b!2959816 (= e!1863232 lt!1033967)))

(declare-fun bm!196201 () Bool)

(assert (=> bm!196201 (= call!196201 call!196204)))

(declare-fun b!2959817 () Bool)

(assert (=> b!2959817 (= e!1863226 e!1863223)))

(assert (=> b!2959817 (= c!485006 ((_ is Star!9187) (regOne!18886 r!17423)))))

(declare-fun b!2959818 () Bool)

(assert (=> b!2959818 (= e!1863222 EmptyLang!9187)))

(declare-fun b!2959819 () Bool)

(assert (=> b!2959819 (= e!1863227 EmptyExpr!9187)))

(declare-fun b!2959820 () Bool)

(declare-fun e!1863231 () Bool)

(declare-fun lt!1033970 () Regex!9187)

(assert (=> b!2959820 (= e!1863231 (= (nullable!2931 lt!1033970) (nullable!2931 (regOne!18886 r!17423))))))

(declare-fun b!2959821 () Bool)

(assert (=> b!2959821 (= c!485012 ((_ is Union!9187) (regOne!18886 r!17423)))))

(assert (=> b!2959821 (= e!1863223 e!1863225)))

(declare-fun d!841943 () Bool)

(assert (=> d!841943 e!1863231))

(declare-fun res!1221277 () Bool)

(assert (=> d!841943 (=> (not res!1221277) (not e!1863231))))

(assert (=> d!841943 (= res!1221277 (validRegex!3920 lt!1033970))))

(assert (=> d!841943 (= lt!1033970 e!1863222)))

(declare-fun c!485014 () Bool)

(assert (=> d!841943 (= c!485014 ((_ is EmptyLang!9187) (regOne!18886 r!17423)))))

(assert (=> d!841943 (validRegex!3920 (regOne!18886 r!17423))))

(assert (=> d!841943 (= (simplify!192 (regOne!18886 r!17423)) lt!1033970)))

(declare-fun b!2959822 () Bool)

(assert (=> b!2959822 (= e!1863225 e!1863228)))

(assert (=> b!2959822 (= lt!1033969 call!196205)))

(assert (=> b!2959822 (= lt!1033968 call!196202)))

(declare-fun c!485015 () Bool)

(assert (=> b!2959822 (= c!485015 call!196206)))

(declare-fun bm!196202 () Bool)

(assert (=> bm!196202 (= call!196204 (isEmptyLang!309 (ite c!485006 lt!1033966 (ite c!485012 lt!1033968 lt!1033965))))))

(declare-fun b!2959823 () Bool)

(assert (=> b!2959823 (= e!1863221 call!196206)))

(assert (= (and d!841943 c!485014) b!2959818))

(assert (= (and d!841943 (not c!485014)) b!2959802))

(assert (= (and b!2959802 c!485010) b!2959801))

(assert (= (and b!2959802 (not c!485010)) b!2959814))

(assert (= (and b!2959814 c!485009) b!2959810))

(assert (= (and b!2959814 (not c!485009)) b!2959817))

(assert (= (and b!2959817 c!485006) b!2959804))

(assert (= (and b!2959817 (not c!485006)) b!2959821))

(assert (= (and b!2959804 (not res!1221278)) b!2959812))

(assert (= (and b!2959804 c!485013) b!2959819))

(assert (= (and b!2959804 (not c!485013)) b!2959808))

(assert (= (and b!2959821 c!485012) b!2959822))

(assert (= (and b!2959821 (not c!485012)) b!2959813))

(assert (= (and b!2959822 c!485015) b!2959800))

(assert (= (and b!2959822 (not c!485015)) b!2959807))

(assert (= (and b!2959807 c!485008) b!2959815))

(assert (= (and b!2959807 (not c!485008)) b!2959811))

(assert (= (and b!2959813 (not res!1221276)) b!2959823))

(assert (= (and b!2959813 c!485016) b!2959803))

(assert (= (and b!2959813 (not c!485016)) b!2959809))

(assert (= (and b!2959809 c!485007) b!2959816))

(assert (= (and b!2959809 (not c!485007)) b!2959806))

(assert (= (and b!2959806 c!485011) b!2959805))

(assert (= (and b!2959806 (not c!485011)) b!2959799))

(assert (= (or b!2959822 b!2959813) bm!196197))

(assert (= (or b!2959822 b!2959813) bm!196199))

(assert (= (or b!2959822 b!2959823) bm!196198))

(assert (= (or b!2959807 b!2959813) bm!196201))

(assert (= (or b!2959812 b!2959809) bm!196200))

(assert (= (or b!2959804 bm!196199) bm!196196))

(assert (= (or b!2959804 bm!196201) bm!196202))

(assert (= (and d!841943 res!1221277) b!2959820))

(declare-fun m!3333935 () Bool)

(assert (=> bm!196200 m!3333935))

(declare-fun m!3333937 () Bool)

(assert (=> bm!196197 m!3333937))

(declare-fun m!3333939 () Bool)

(assert (=> b!2959820 m!3333939))

(declare-fun m!3333941 () Bool)

(assert (=> b!2959820 m!3333941))

(declare-fun m!3333943 () Bool)

(assert (=> bm!196196 m!3333943))

(declare-fun m!3333945 () Bool)

(assert (=> d!841943 m!3333945))

(declare-fun m!3333947 () Bool)

(assert (=> d!841943 m!3333947))

(declare-fun m!3333949 () Bool)

(assert (=> b!2959806 m!3333949))

(declare-fun m!3333951 () Bool)

(assert (=> bm!196202 m!3333951))

(declare-fun m!3333953 () Bool)

(assert (=> bm!196198 m!3333953))

(assert (=> b!2959548 d!841943))

(declare-fun d!841945 () Bool)

(assert (=> d!841945 (= (isEmptyExpr!390 lt!1033916) ((_ is EmptyExpr!9187) lt!1033916))))

(assert (=> b!2959559 d!841945))

(declare-fun b!2960000 () Bool)

(assert (=> b!2960000 true))

(assert (=> b!2960000 true))

(declare-fun bs!526323 () Bool)

(declare-fun b!2959993 () Bool)

(assert (= bs!526323 (and b!2959993 b!2960000)))

(declare-fun lambda!110350 () Int)

(declare-fun lambda!110349 () Int)

(assert (=> bs!526323 (not (= lambda!110350 lambda!110349))))

(assert (=> b!2959993 true))

(assert (=> b!2959993 true))

(declare-fun b!2959991 () Bool)

(declare-fun c!485052 () Bool)

(assert (=> b!2959991 (= c!485052 ((_ is Union!9187) r!17423))))

(declare-fun e!1863324 () Bool)

(declare-fun e!1863323 () Bool)

(assert (=> b!2959991 (= e!1863324 e!1863323)))

(declare-fun b!2959992 () Bool)

(declare-fun e!1863325 () Bool)

(assert (=> b!2959992 (= e!1863325 (matchRSpec!1324 (regTwo!18887 r!17423) s!11993))))

(declare-fun e!1863328 () Bool)

(declare-fun call!196239 () Bool)

(assert (=> b!2959993 (= e!1863328 call!196239)))

(declare-fun b!2959994 () Bool)

(declare-fun e!1863329 () Bool)

(declare-fun call!196238 () Bool)

(assert (=> b!2959994 (= e!1863329 call!196238)))

(declare-fun b!2959995 () Bool)

(assert (=> b!2959995 (= e!1863323 e!1863325)))

(declare-fun res!1221340 () Bool)

(assert (=> b!2959995 (= res!1221340 (matchRSpec!1324 (regOne!18887 r!17423) s!11993))))

(assert (=> b!2959995 (=> res!1221340 e!1863325)))

(declare-fun b!2959996 () Bool)

(declare-fun c!485051 () Bool)

(assert (=> b!2959996 (= c!485051 ((_ is ElementMatch!9187) r!17423))))

(declare-fun e!1863326 () Bool)

(assert (=> b!2959996 (= e!1863326 e!1863324)))

(declare-fun b!2959997 () Bool)

(assert (=> b!2959997 (= e!1863323 e!1863328)))

(declare-fun c!485054 () Bool)

(assert (=> b!2959997 (= c!485054 ((_ is Star!9187) r!17423))))

(declare-fun b!2959998 () Bool)

(assert (=> b!2959998 (= e!1863329 e!1863326)))

(declare-fun res!1221339 () Bool)

(assert (=> b!2959998 (= res!1221339 (not ((_ is EmptyLang!9187) r!17423)))))

(assert (=> b!2959998 (=> (not res!1221339) (not e!1863326))))

(declare-fun b!2959999 () Bool)

(declare-fun res!1221341 () Bool)

(declare-fun e!1863327 () Bool)

(assert (=> b!2959999 (=> res!1221341 e!1863327)))

(assert (=> b!2959999 (= res!1221341 call!196238)))

(assert (=> b!2959999 (= e!1863328 e!1863327)))

(assert (=> b!2960000 (= e!1863327 call!196239)))

(declare-fun bm!196233 () Bool)

(assert (=> bm!196233 (= call!196238 (isEmpty!19212 s!11993))))

(declare-fun d!841947 () Bool)

(declare-fun c!485053 () Bool)

(assert (=> d!841947 (= c!485053 ((_ is EmptyExpr!9187) r!17423))))

(assert (=> d!841947 (= (matchRSpec!1324 r!17423 s!11993) e!1863329)))

(declare-fun bm!196234 () Bool)

(declare-fun Exists!1517 (Int) Bool)

(assert (=> bm!196234 (= call!196239 (Exists!1517 (ite c!485054 lambda!110349 lambda!110350)))))

(declare-fun b!2960001 () Bool)

(assert (=> b!2960001 (= e!1863324 (= s!11993 (Cons!34928 (c!484911 r!17423) Nil!34928)))))

(assert (= (and d!841947 c!485053) b!2959994))

(assert (= (and d!841947 (not c!485053)) b!2959998))

(assert (= (and b!2959998 res!1221339) b!2959996))

(assert (= (and b!2959996 c!485051) b!2960001))

(assert (= (and b!2959996 (not c!485051)) b!2959991))

(assert (= (and b!2959991 c!485052) b!2959995))

(assert (= (and b!2959991 (not c!485052)) b!2959997))

(assert (= (and b!2959995 (not res!1221340)) b!2959992))

(assert (= (and b!2959997 c!485054) b!2959999))

(assert (= (and b!2959997 (not c!485054)) b!2959993))

(assert (= (and b!2959999 (not res!1221341)) b!2960000))

(assert (= (or b!2960000 b!2959993) bm!196234))

(assert (= (or b!2959994 b!2959999) bm!196233))

(declare-fun m!3333997 () Bool)

(assert (=> b!2959992 m!3333997))

(declare-fun m!3333999 () Bool)

(assert (=> b!2959995 m!3333999))

(assert (=> bm!196233 m!3333857))

(declare-fun m!3334001 () Bool)

(assert (=> bm!196234 m!3334001))

(assert (=> b!2959557 d!841947))

(declare-fun b!2960034 () Bool)

(declare-fun e!1863348 () Bool)

(declare-fun lt!1033983 () Bool)

(assert (=> b!2960034 (= e!1863348 (not lt!1033983))))

(declare-fun b!2960035 () Bool)

(declare-fun res!1221364 () Bool)

(declare-fun e!1863346 () Bool)

(assert (=> b!2960035 (=> res!1221364 e!1863346)))

(declare-fun e!1863344 () Bool)

(assert (=> b!2960035 (= res!1221364 e!1863344)))

(declare-fun res!1221363 () Bool)

(assert (=> b!2960035 (=> (not res!1221363) (not e!1863344))))

(assert (=> b!2960035 (= res!1221363 lt!1033983)))

(declare-fun bm!196237 () Bool)

(declare-fun call!196242 () Bool)

(assert (=> bm!196237 (= call!196242 (isEmpty!19212 s!11993))))

(declare-fun b!2960036 () Bool)

(declare-fun e!1863349 () Bool)

(declare-fun head!6592 (List!35052) C!18560)

(assert (=> b!2960036 (= e!1863349 (not (= (head!6592 s!11993) (c!484911 r!17423))))))

(declare-fun b!2960037 () Bool)

(declare-fun e!1863347 () Bool)

(assert (=> b!2960037 (= e!1863347 e!1863349)))

(declare-fun res!1221362 () Bool)

(assert (=> b!2960037 (=> res!1221362 e!1863349)))

(assert (=> b!2960037 (= res!1221362 call!196242)))

(declare-fun b!2960038 () Bool)

(declare-fun res!1221365 () Bool)

(assert (=> b!2960038 (=> res!1221365 e!1863349)))

(declare-fun tail!4818 (List!35052) List!35052)

(assert (=> b!2960038 (= res!1221365 (not (isEmpty!19212 (tail!4818 s!11993))))))

(declare-fun b!2960039 () Bool)

(declare-fun res!1221361 () Bool)

(assert (=> b!2960039 (=> (not res!1221361) (not e!1863344))))

(assert (=> b!2960039 (= res!1221361 (not call!196242))))

(declare-fun b!2960040 () Bool)

(declare-fun e!1863345 () Bool)

(declare-fun derivativeStep!2533 (Regex!9187 C!18560) Regex!9187)

(assert (=> b!2960040 (= e!1863345 (matchR!4069 (derivativeStep!2533 r!17423 (head!6592 s!11993)) (tail!4818 s!11993)))))

(declare-fun b!2960041 () Bool)

(declare-fun res!1221359 () Bool)

(assert (=> b!2960041 (=> res!1221359 e!1863346)))

(assert (=> b!2960041 (= res!1221359 (not ((_ is ElementMatch!9187) r!17423)))))

(assert (=> b!2960041 (= e!1863348 e!1863346)))

(declare-fun b!2960042 () Bool)

(declare-fun e!1863350 () Bool)

(assert (=> b!2960042 (= e!1863350 (= lt!1033983 call!196242))))

(declare-fun b!2960043 () Bool)

(assert (=> b!2960043 (= e!1863344 (= (head!6592 s!11993) (c!484911 r!17423)))))

(declare-fun d!841959 () Bool)

(assert (=> d!841959 e!1863350))

(declare-fun c!485061 () Bool)

(assert (=> d!841959 (= c!485061 ((_ is EmptyExpr!9187) r!17423))))

(assert (=> d!841959 (= lt!1033983 e!1863345)))

(declare-fun c!485063 () Bool)

(assert (=> d!841959 (= c!485063 (isEmpty!19212 s!11993))))

(assert (=> d!841959 (validRegex!3920 r!17423)))

(assert (=> d!841959 (= (matchR!4069 r!17423 s!11993) lt!1033983)))

(declare-fun b!2960044 () Bool)

(assert (=> b!2960044 (= e!1863350 e!1863348)))

(declare-fun c!485062 () Bool)

(assert (=> b!2960044 (= c!485062 ((_ is EmptyLang!9187) r!17423))))

(declare-fun b!2960045 () Bool)

(assert (=> b!2960045 (= e!1863346 e!1863347)))

(declare-fun res!1221360 () Bool)

(assert (=> b!2960045 (=> (not res!1221360) (not e!1863347))))

(assert (=> b!2960045 (= res!1221360 (not lt!1033983))))

(declare-fun b!2960046 () Bool)

(declare-fun res!1221358 () Bool)

(assert (=> b!2960046 (=> (not res!1221358) (not e!1863344))))

(assert (=> b!2960046 (= res!1221358 (isEmpty!19212 (tail!4818 s!11993)))))

(declare-fun b!2960047 () Bool)

(assert (=> b!2960047 (= e!1863345 (nullable!2931 r!17423))))

(assert (= (and d!841959 c!485063) b!2960047))

(assert (= (and d!841959 (not c!485063)) b!2960040))

(assert (= (and d!841959 c!485061) b!2960042))

(assert (= (and d!841959 (not c!485061)) b!2960044))

(assert (= (and b!2960044 c!485062) b!2960034))

(assert (= (and b!2960044 (not c!485062)) b!2960041))

(assert (= (and b!2960041 (not res!1221359)) b!2960035))

(assert (= (and b!2960035 res!1221363) b!2960039))

(assert (= (and b!2960039 res!1221361) b!2960046))

(assert (= (and b!2960046 res!1221358) b!2960043))

(assert (= (and b!2960035 (not res!1221364)) b!2960045))

(assert (= (and b!2960045 res!1221360) b!2960037))

(assert (= (and b!2960037 (not res!1221362)) b!2960038))

(assert (= (and b!2960038 (not res!1221365)) b!2960036))

(assert (= (or b!2960042 b!2960037 b!2960039) bm!196237))

(declare-fun m!3334003 () Bool)

(assert (=> b!2960036 m!3334003))

(assert (=> d!841959 m!3333857))

(assert (=> d!841959 m!3333839))

(declare-fun m!3334005 () Bool)

(assert (=> b!2960046 m!3334005))

(assert (=> b!2960046 m!3334005))

(declare-fun m!3334007 () Bool)

(assert (=> b!2960046 m!3334007))

(declare-fun m!3334009 () Bool)

(assert (=> b!2960047 m!3334009))

(assert (=> b!2960043 m!3334003))

(assert (=> b!2960038 m!3334005))

(assert (=> b!2960038 m!3334005))

(assert (=> b!2960038 m!3334007))

(assert (=> bm!196237 m!3333857))

(assert (=> b!2960040 m!3334003))

(assert (=> b!2960040 m!3334003))

(declare-fun m!3334011 () Bool)

(assert (=> b!2960040 m!3334011))

(assert (=> b!2960040 m!3334005))

(assert (=> b!2960040 m!3334011))

(assert (=> b!2960040 m!3334005))

(declare-fun m!3334013 () Bool)

(assert (=> b!2960040 m!3334013))

(assert (=> b!2959557 d!841959))

(declare-fun d!841961 () Bool)

(assert (=> d!841961 (= (matchR!4069 r!17423 s!11993) (matchRSpec!1324 r!17423 s!11993))))

(declare-fun lt!1033986 () Unit!48753)

(declare-fun choose!17514 (Regex!9187 List!35052) Unit!48753)

(assert (=> d!841961 (= lt!1033986 (choose!17514 r!17423 s!11993))))

(assert (=> d!841961 (validRegex!3920 r!17423)))

(assert (=> d!841961 (= (mainMatchTheorem!1324 r!17423 s!11993) lt!1033986)))

(declare-fun bs!526324 () Bool)

(assert (= bs!526324 d!841961))

(assert (=> bs!526324 m!3333849))

(assert (=> bs!526324 m!3333847))

(declare-fun m!3334015 () Bool)

(assert (=> bs!526324 m!3334015))

(assert (=> bs!526324 m!3333839))

(assert (=> b!2959557 d!841961))

(declare-fun c!485068 () Bool)

(declare-fun call!196251 () Bool)

(declare-fun bm!196244 () Bool)

(declare-fun c!485069 () Bool)

(assert (=> bm!196244 (= call!196251 (validRegex!3920 (ite c!485069 (reg!9516 (simplify!192 r!17423)) (ite c!485068 (regTwo!18887 (simplify!192 r!17423)) (regOne!18886 (simplify!192 r!17423))))))))

(declare-fun b!2960066 () Bool)

(declare-fun e!1863365 () Bool)

(declare-fun e!1863366 () Bool)

(assert (=> b!2960066 (= e!1863365 e!1863366)))

(declare-fun res!1221378 () Bool)

(assert (=> b!2960066 (=> (not res!1221378) (not e!1863366))))

(declare-fun call!196249 () Bool)

(assert (=> b!2960066 (= res!1221378 call!196249)))

(declare-fun b!2960067 () Bool)

(declare-fun e!1863367 () Bool)

(assert (=> b!2960067 (= e!1863367 call!196251)))

(declare-fun b!2960068 () Bool)

(declare-fun e!1863369 () Bool)

(assert (=> b!2960068 (= e!1863369 e!1863367)))

(declare-fun res!1221379 () Bool)

(assert (=> b!2960068 (= res!1221379 (not (nullable!2931 (reg!9516 (simplify!192 r!17423)))))))

(assert (=> b!2960068 (=> (not res!1221379) (not e!1863367))))

(declare-fun b!2960069 () Bool)

(declare-fun e!1863370 () Bool)

(assert (=> b!2960069 (= e!1863369 e!1863370)))

(assert (=> b!2960069 (= c!485068 ((_ is Union!9187) (simplify!192 r!17423)))))

(declare-fun b!2960070 () Bool)

(declare-fun res!1221380 () Bool)

(declare-fun e!1863368 () Bool)

(assert (=> b!2960070 (=> (not res!1221380) (not e!1863368))))

(declare-fun call!196250 () Bool)

(assert (=> b!2960070 (= res!1221380 call!196250)))

(assert (=> b!2960070 (= e!1863370 e!1863368)))

(declare-fun d!841963 () Bool)

(declare-fun res!1221377 () Bool)

(declare-fun e!1863371 () Bool)

(assert (=> d!841963 (=> res!1221377 e!1863371)))

(assert (=> d!841963 (= res!1221377 ((_ is ElementMatch!9187) (simplify!192 r!17423)))))

(assert (=> d!841963 (= (validRegex!3920 (simplify!192 r!17423)) e!1863371)))

(declare-fun b!2960071 () Bool)

(assert (=> b!2960071 (= e!1863371 e!1863369)))

(assert (=> b!2960071 (= c!485069 ((_ is Star!9187) (simplify!192 r!17423)))))

(declare-fun b!2960072 () Bool)

(assert (=> b!2960072 (= e!1863366 call!196250)))

(declare-fun bm!196245 () Bool)

(assert (=> bm!196245 (= call!196249 call!196251)))

(declare-fun b!2960073 () Bool)

(assert (=> b!2960073 (= e!1863368 call!196249)))

(declare-fun bm!196246 () Bool)

(assert (=> bm!196246 (= call!196250 (validRegex!3920 (ite c!485068 (regOne!18887 (simplify!192 r!17423)) (regTwo!18886 (simplify!192 r!17423)))))))

(declare-fun b!2960074 () Bool)

(declare-fun res!1221376 () Bool)

(assert (=> b!2960074 (=> res!1221376 e!1863365)))

(assert (=> b!2960074 (= res!1221376 (not ((_ is Concat!14508) (simplify!192 r!17423))))))

(assert (=> b!2960074 (= e!1863370 e!1863365)))

(assert (= (and d!841963 (not res!1221377)) b!2960071))

(assert (= (and b!2960071 c!485069) b!2960068))

(assert (= (and b!2960071 (not c!485069)) b!2960069))

(assert (= (and b!2960068 res!1221379) b!2960067))

(assert (= (and b!2960069 c!485068) b!2960070))

(assert (= (and b!2960069 (not c!485068)) b!2960074))

(assert (= (and b!2960070 res!1221380) b!2960073))

(assert (= (and b!2960074 (not res!1221376)) b!2960066))

(assert (= (and b!2960066 res!1221378) b!2960072))

(assert (= (or b!2960070 b!2960072) bm!196246))

(assert (= (or b!2960073 b!2960066) bm!196245))

(assert (= (or b!2960067 bm!196245) bm!196244))

(declare-fun m!3334017 () Bool)

(assert (=> bm!196244 m!3334017))

(declare-fun m!3334019 () Bool)

(assert (=> b!2960068 m!3334019))

(declare-fun m!3334021 () Bool)

(assert (=> bm!196246 m!3334021))

(assert (=> b!2959552 d!841963))

(declare-fun b!2960075 () Bool)

(declare-fun e!1863375 () Regex!9187)

(declare-fun lt!1033987 () Regex!9187)

(declare-fun lt!1033989 () Regex!9187)

(assert (=> b!2960075 (= e!1863375 (Concat!14508 lt!1033987 lt!1033989))))

(declare-fun b!2960076 () Bool)

(declare-fun e!1863379 () Regex!9187)

(declare-fun lt!1033990 () Regex!9187)

(assert (=> b!2960076 (= e!1863379 lt!1033990)))

(declare-fun c!485070 () Bool)

(declare-fun c!485076 () Bool)

(declare-fun call!196254 () Regex!9187)

(declare-fun bm!196247 () Bool)

(assert (=> bm!196247 (= call!196254 (simplify!192 (ite c!485070 (reg!9516 r!17423) (ite c!485076 (regTwo!18887 r!17423) (regOne!18886 r!17423)))))))

(declare-fun b!2960077 () Bool)

(declare-fun e!1863384 () Regex!9187)

(assert (=> b!2960077 (= e!1863384 r!17423)))

(declare-fun b!2960078 () Bool)

(declare-fun e!1863373 () Regex!9187)

(assert (=> b!2960078 (= e!1863373 e!1863384)))

(declare-fun c!485074 () Bool)

(assert (=> b!2960078 (= c!485074 ((_ is ElementMatch!9187) r!17423))))

(declare-fun b!2960079 () Bool)

(declare-fun e!1863385 () Regex!9187)

(assert (=> b!2960079 (= e!1863385 EmptyLang!9187)))

(declare-fun b!2960080 () Bool)

(declare-fun c!485077 () Bool)

(declare-fun e!1863381 () Bool)

(assert (=> b!2960080 (= c!485077 e!1863381)))

(declare-fun res!1221383 () Bool)

(assert (=> b!2960080 (=> res!1221383 e!1863381)))

(declare-fun call!196255 () Bool)

(assert (=> b!2960080 (= res!1221383 call!196255)))

(declare-fun lt!1033988 () Regex!9187)

(assert (=> b!2960080 (= lt!1033988 call!196254)))

(declare-fun e!1863374 () Regex!9187)

(declare-fun e!1863378 () Regex!9187)

(assert (=> b!2960080 (= e!1863374 e!1863378)))

(declare-fun b!2960081 () Bool)

(assert (=> b!2960081 (= e!1863375 lt!1033987)))

(declare-fun bm!196248 () Bool)

(declare-fun call!196256 () Regex!9187)

(assert (=> bm!196248 (= call!196256 (simplify!192 (ite c!485076 (regOne!18887 r!17423) (regTwo!18886 r!17423))))))

(declare-fun call!196257 () Bool)

(declare-fun lt!1033991 () Regex!9187)

(declare-fun bm!196249 () Bool)

(assert (=> bm!196249 (= call!196257 (isEmptyLang!309 (ite c!485076 lt!1033991 lt!1033989)))))

(declare-fun b!2960082 () Bool)

(declare-fun e!1863383 () Regex!9187)

(assert (=> b!2960082 (= e!1863383 e!1863375)))

(declare-fun c!485075 () Bool)

(assert (=> b!2960082 (= c!485075 (isEmptyExpr!390 lt!1033989))))

(declare-fun b!2960083 () Bool)

(declare-fun c!485072 () Bool)

(declare-fun call!196252 () Bool)

(assert (=> b!2960083 (= c!485072 call!196252)))

(declare-fun e!1863380 () Regex!9187)

(assert (=> b!2960083 (= e!1863379 e!1863380)))

(declare-fun bm!196250 () Bool)

(declare-fun call!196253 () Regex!9187)

(assert (=> bm!196250 (= call!196253 call!196254)))

(declare-fun bm!196251 () Bool)

(declare-fun call!196258 () Bool)

(assert (=> bm!196251 (= call!196258 (isEmptyExpr!390 (ite c!485070 lt!1033988 lt!1033987)))))

(declare-fun b!2960084 () Bool)

(assert (=> b!2960084 (= e!1863378 (Star!9187 lt!1033988))))

(declare-fun b!2960085 () Bool)

(declare-fun c!485071 () Bool)

(assert (=> b!2960085 (= c!485071 call!196258)))

(assert (=> b!2960085 (= e!1863385 e!1863383)))

(declare-fun b!2960086 () Bool)

(declare-fun e!1863377 () Regex!9187)

(assert (=> b!2960086 (= e!1863377 EmptyExpr!9187)))

(declare-fun b!2960087 () Bool)

(assert (=> b!2960087 (= e!1863380 (Union!9187 lt!1033991 lt!1033990))))

(declare-fun b!2960088 () Bool)

(assert (=> b!2960088 (= e!1863381 call!196258)))

(declare-fun b!2960089 () Bool)

(declare-fun e!1863376 () Regex!9187)

(assert (=> b!2960089 (= e!1863376 e!1863385)))

(assert (=> b!2960089 (= lt!1033987 call!196253)))

(assert (=> b!2960089 (= lt!1033989 call!196256)))

(declare-fun res!1221381 () Bool)

(assert (=> b!2960089 (= res!1221381 call!196252)))

(declare-fun e!1863372 () Bool)

(assert (=> b!2960089 (=> res!1221381 e!1863372)))

(declare-fun c!485080 () Bool)

(assert (=> b!2960089 (= c!485080 e!1863372)))

(declare-fun b!2960090 () Bool)

(declare-fun c!485073 () Bool)

(assert (=> b!2960090 (= c!485073 ((_ is EmptyExpr!9187) r!17423))))

(assert (=> b!2960090 (= e!1863384 e!1863377)))

(declare-fun b!2960091 () Bool)

(assert (=> b!2960091 (= e!1863380 lt!1033991)))

(declare-fun b!2960092 () Bool)

(assert (=> b!2960092 (= e!1863383 lt!1033989)))

(declare-fun bm!196252 () Bool)

(assert (=> bm!196252 (= call!196252 call!196255)))

(declare-fun b!2960093 () Bool)

(assert (=> b!2960093 (= e!1863377 e!1863374)))

(assert (=> b!2960093 (= c!485070 ((_ is Star!9187) r!17423))))

(declare-fun b!2960094 () Bool)

(assert (=> b!2960094 (= e!1863373 EmptyLang!9187)))

(declare-fun b!2960095 () Bool)

(assert (=> b!2960095 (= e!1863378 EmptyExpr!9187)))

(declare-fun b!2960096 () Bool)

(declare-fun e!1863382 () Bool)

(declare-fun lt!1033992 () Regex!9187)

(assert (=> b!2960096 (= e!1863382 (= (nullable!2931 lt!1033992) (nullable!2931 r!17423)))))

(declare-fun b!2960097 () Bool)

(assert (=> b!2960097 (= c!485076 ((_ is Union!9187) r!17423))))

(assert (=> b!2960097 (= e!1863374 e!1863376)))

(declare-fun d!841965 () Bool)

(assert (=> d!841965 e!1863382))

(declare-fun res!1221382 () Bool)

(assert (=> d!841965 (=> (not res!1221382) (not e!1863382))))

(assert (=> d!841965 (= res!1221382 (validRegex!3920 lt!1033992))))

(assert (=> d!841965 (= lt!1033992 e!1863373)))

(declare-fun c!485078 () Bool)

(assert (=> d!841965 (= c!485078 ((_ is EmptyLang!9187) r!17423))))

(assert (=> d!841965 (validRegex!3920 r!17423)))

(assert (=> d!841965 (= (simplify!192 r!17423) lt!1033992)))

(declare-fun b!2960098 () Bool)

(assert (=> b!2960098 (= e!1863376 e!1863379)))

(assert (=> b!2960098 (= lt!1033991 call!196256)))

(assert (=> b!2960098 (= lt!1033990 call!196253)))

(declare-fun c!485079 () Bool)

(assert (=> b!2960098 (= c!485079 call!196257)))

(declare-fun bm!196253 () Bool)

(assert (=> bm!196253 (= call!196255 (isEmptyLang!309 (ite c!485070 lt!1033988 (ite c!485076 lt!1033990 lt!1033987))))))

(declare-fun b!2960099 () Bool)

(assert (=> b!2960099 (= e!1863372 call!196257)))

(assert (= (and d!841965 c!485078) b!2960094))

(assert (= (and d!841965 (not c!485078)) b!2960078))

(assert (= (and b!2960078 c!485074) b!2960077))

(assert (= (and b!2960078 (not c!485074)) b!2960090))

(assert (= (and b!2960090 c!485073) b!2960086))

(assert (= (and b!2960090 (not c!485073)) b!2960093))

(assert (= (and b!2960093 c!485070) b!2960080))

(assert (= (and b!2960093 (not c!485070)) b!2960097))

(assert (= (and b!2960080 (not res!1221383)) b!2960088))

(assert (= (and b!2960080 c!485077) b!2960095))

(assert (= (and b!2960080 (not c!485077)) b!2960084))

(assert (= (and b!2960097 c!485076) b!2960098))

(assert (= (and b!2960097 (not c!485076)) b!2960089))

(assert (= (and b!2960098 c!485079) b!2960076))

(assert (= (and b!2960098 (not c!485079)) b!2960083))

(assert (= (and b!2960083 c!485072) b!2960091))

(assert (= (and b!2960083 (not c!485072)) b!2960087))

(assert (= (and b!2960089 (not res!1221381)) b!2960099))

(assert (= (and b!2960089 c!485080) b!2960079))

(assert (= (and b!2960089 (not c!485080)) b!2960085))

(assert (= (and b!2960085 c!485071) b!2960092))

(assert (= (and b!2960085 (not c!485071)) b!2960082))

(assert (= (and b!2960082 c!485075) b!2960081))

(assert (= (and b!2960082 (not c!485075)) b!2960075))

(assert (= (or b!2960098 b!2960089) bm!196248))

(assert (= (or b!2960098 b!2960089) bm!196250))

(assert (= (or b!2960098 b!2960099) bm!196249))

(assert (= (or b!2960083 b!2960089) bm!196252))

(assert (= (or b!2960088 b!2960085) bm!196251))

(assert (= (or b!2960080 bm!196250) bm!196247))

(assert (= (or b!2960080 bm!196252) bm!196253))

(assert (= (and d!841965 res!1221382) b!2960096))

(declare-fun m!3334023 () Bool)

(assert (=> bm!196251 m!3334023))

(declare-fun m!3334025 () Bool)

(assert (=> bm!196248 m!3334025))

(declare-fun m!3334027 () Bool)

(assert (=> b!2960096 m!3334027))

(assert (=> b!2960096 m!3334009))

(declare-fun m!3334029 () Bool)

(assert (=> bm!196247 m!3334029))

(declare-fun m!3334031 () Bool)

(assert (=> d!841965 m!3334031))

(assert (=> d!841965 m!3333839))

(declare-fun m!3334033 () Bool)

(assert (=> b!2960082 m!3334033))

(declare-fun m!3334035 () Bool)

(assert (=> bm!196253 m!3334035))

(declare-fun m!3334037 () Bool)

(assert (=> bm!196249 m!3334037))

(assert (=> b!2959552 d!841965))

(declare-fun c!485081 () Bool)

(declare-fun c!485082 () Bool)

(declare-fun call!196261 () Bool)

(declare-fun bm!196254 () Bool)

(assert (=> bm!196254 (= call!196261 (validRegex!3920 (ite c!485082 (reg!9516 r!17423) (ite c!485081 (regTwo!18887 r!17423) (regOne!18886 r!17423)))))))

(declare-fun b!2960100 () Bool)

(declare-fun e!1863386 () Bool)

(declare-fun e!1863387 () Bool)

(assert (=> b!2960100 (= e!1863386 e!1863387)))

(declare-fun res!1221386 () Bool)

(assert (=> b!2960100 (=> (not res!1221386) (not e!1863387))))

(declare-fun call!196259 () Bool)

(assert (=> b!2960100 (= res!1221386 call!196259)))

(declare-fun b!2960101 () Bool)

(declare-fun e!1863388 () Bool)

(assert (=> b!2960101 (= e!1863388 call!196261)))

(declare-fun b!2960102 () Bool)

(declare-fun e!1863390 () Bool)

(assert (=> b!2960102 (= e!1863390 e!1863388)))

(declare-fun res!1221387 () Bool)

(assert (=> b!2960102 (= res!1221387 (not (nullable!2931 (reg!9516 r!17423))))))

(assert (=> b!2960102 (=> (not res!1221387) (not e!1863388))))

(declare-fun b!2960103 () Bool)

(declare-fun e!1863391 () Bool)

(assert (=> b!2960103 (= e!1863390 e!1863391)))

(assert (=> b!2960103 (= c!485081 ((_ is Union!9187) r!17423))))

(declare-fun b!2960104 () Bool)

(declare-fun res!1221388 () Bool)

(declare-fun e!1863389 () Bool)

(assert (=> b!2960104 (=> (not res!1221388) (not e!1863389))))

(declare-fun call!196260 () Bool)

(assert (=> b!2960104 (= res!1221388 call!196260)))

(assert (=> b!2960104 (= e!1863391 e!1863389)))

(declare-fun d!841967 () Bool)

(declare-fun res!1221385 () Bool)

(declare-fun e!1863392 () Bool)

(assert (=> d!841967 (=> res!1221385 e!1863392)))

(assert (=> d!841967 (= res!1221385 ((_ is ElementMatch!9187) r!17423))))

(assert (=> d!841967 (= (validRegex!3920 r!17423) e!1863392)))

(declare-fun b!2960105 () Bool)

(assert (=> b!2960105 (= e!1863392 e!1863390)))

(assert (=> b!2960105 (= c!485082 ((_ is Star!9187) r!17423))))

(declare-fun b!2960106 () Bool)

(assert (=> b!2960106 (= e!1863387 call!196260)))

(declare-fun bm!196255 () Bool)

(assert (=> bm!196255 (= call!196259 call!196261)))

(declare-fun b!2960107 () Bool)

(assert (=> b!2960107 (= e!1863389 call!196259)))

(declare-fun bm!196256 () Bool)

(assert (=> bm!196256 (= call!196260 (validRegex!3920 (ite c!485081 (regOne!18887 r!17423) (regTwo!18886 r!17423))))))

(declare-fun b!2960108 () Bool)

(declare-fun res!1221384 () Bool)

(assert (=> b!2960108 (=> res!1221384 e!1863386)))

(assert (=> b!2960108 (= res!1221384 (not ((_ is Concat!14508) r!17423)))))

(assert (=> b!2960108 (= e!1863391 e!1863386)))

(assert (= (and d!841967 (not res!1221385)) b!2960105))

(assert (= (and b!2960105 c!485082) b!2960102))

(assert (= (and b!2960105 (not c!485082)) b!2960103))

(assert (= (and b!2960102 res!1221387) b!2960101))

(assert (= (and b!2960103 c!485081) b!2960104))

(assert (= (and b!2960103 (not c!485081)) b!2960108))

(assert (= (and b!2960104 res!1221388) b!2960107))

(assert (= (and b!2960108 (not res!1221384)) b!2960100))

(assert (= (and b!2960100 res!1221386) b!2960106))

(assert (= (or b!2960104 b!2960106) bm!196256))

(assert (= (or b!2960107 b!2960100) bm!196255))

(assert (= (or b!2960101 bm!196255) bm!196254))

(declare-fun m!3334039 () Bool)

(assert (=> bm!196254 m!3334039))

(declare-fun m!3334041 () Bool)

(assert (=> b!2960102 m!3334041))

(declare-fun m!3334043 () Bool)

(assert (=> bm!196256 m!3334043))

(assert (=> start!286812 d!841967))

(declare-fun d!841969 () Bool)

(assert (=> d!841969 (= (isEmpty!19212 s!11993) ((_ is Nil!34928) s!11993))))

(assert (=> b!2959556 d!841969))

(declare-fun b!2960109 () Bool)

(declare-fun e!1863397 () Bool)

(declare-fun lt!1033993 () Bool)

(assert (=> b!2960109 (= e!1863397 (not lt!1033993))))

(declare-fun b!2960110 () Bool)

(declare-fun res!1221395 () Bool)

(declare-fun e!1863395 () Bool)

(assert (=> b!2960110 (=> res!1221395 e!1863395)))

(declare-fun e!1863393 () Bool)

(assert (=> b!2960110 (= res!1221395 e!1863393)))

(declare-fun res!1221394 () Bool)

(assert (=> b!2960110 (=> (not res!1221394) (not e!1863393))))

(assert (=> b!2960110 (= res!1221394 lt!1033993)))

(declare-fun bm!196257 () Bool)

(declare-fun call!196262 () Bool)

(assert (=> bm!196257 (= call!196262 (isEmpty!19212 s!11993))))

(declare-fun b!2960111 () Bool)

(declare-fun e!1863398 () Bool)

(assert (=> b!2960111 (= e!1863398 (not (= (head!6592 s!11993) (c!484911 (Concat!14508 lt!1033918 lt!1033916)))))))

(declare-fun b!2960112 () Bool)

(declare-fun e!1863396 () Bool)

(assert (=> b!2960112 (= e!1863396 e!1863398)))

(declare-fun res!1221393 () Bool)

(assert (=> b!2960112 (=> res!1221393 e!1863398)))

(assert (=> b!2960112 (= res!1221393 call!196262)))

(declare-fun b!2960113 () Bool)

(declare-fun res!1221396 () Bool)

(assert (=> b!2960113 (=> res!1221396 e!1863398)))

(assert (=> b!2960113 (= res!1221396 (not (isEmpty!19212 (tail!4818 s!11993))))))

(declare-fun b!2960114 () Bool)

(declare-fun res!1221392 () Bool)

(assert (=> b!2960114 (=> (not res!1221392) (not e!1863393))))

(assert (=> b!2960114 (= res!1221392 (not call!196262))))

(declare-fun e!1863394 () Bool)

(declare-fun b!2960115 () Bool)

(assert (=> b!2960115 (= e!1863394 (matchR!4069 (derivativeStep!2533 (Concat!14508 lt!1033918 lt!1033916) (head!6592 s!11993)) (tail!4818 s!11993)))))

(declare-fun b!2960116 () Bool)

(declare-fun res!1221390 () Bool)

(assert (=> b!2960116 (=> res!1221390 e!1863395)))

(assert (=> b!2960116 (= res!1221390 (not ((_ is ElementMatch!9187) (Concat!14508 lt!1033918 lt!1033916))))))

(assert (=> b!2960116 (= e!1863397 e!1863395)))

(declare-fun b!2960117 () Bool)

(declare-fun e!1863399 () Bool)

(assert (=> b!2960117 (= e!1863399 (= lt!1033993 call!196262))))

(declare-fun b!2960118 () Bool)

(assert (=> b!2960118 (= e!1863393 (= (head!6592 s!11993) (c!484911 (Concat!14508 lt!1033918 lt!1033916))))))

(declare-fun d!841971 () Bool)

(assert (=> d!841971 e!1863399))

(declare-fun c!485083 () Bool)

(assert (=> d!841971 (= c!485083 ((_ is EmptyExpr!9187) (Concat!14508 lt!1033918 lt!1033916)))))

(assert (=> d!841971 (= lt!1033993 e!1863394)))

(declare-fun c!485085 () Bool)

(assert (=> d!841971 (= c!485085 (isEmpty!19212 s!11993))))

(assert (=> d!841971 (validRegex!3920 (Concat!14508 lt!1033918 lt!1033916))))

(assert (=> d!841971 (= (matchR!4069 (Concat!14508 lt!1033918 lt!1033916) s!11993) lt!1033993)))

(declare-fun b!2960119 () Bool)

(assert (=> b!2960119 (= e!1863399 e!1863397)))

(declare-fun c!485084 () Bool)

(assert (=> b!2960119 (= c!485084 ((_ is EmptyLang!9187) (Concat!14508 lt!1033918 lt!1033916)))))

(declare-fun b!2960120 () Bool)

(assert (=> b!2960120 (= e!1863395 e!1863396)))

(declare-fun res!1221391 () Bool)

(assert (=> b!2960120 (=> (not res!1221391) (not e!1863396))))

(assert (=> b!2960120 (= res!1221391 (not lt!1033993))))

(declare-fun b!2960121 () Bool)

(declare-fun res!1221389 () Bool)

(assert (=> b!2960121 (=> (not res!1221389) (not e!1863393))))

(assert (=> b!2960121 (= res!1221389 (isEmpty!19212 (tail!4818 s!11993)))))

(declare-fun b!2960122 () Bool)

(assert (=> b!2960122 (= e!1863394 (nullable!2931 (Concat!14508 lt!1033918 lt!1033916)))))

(assert (= (and d!841971 c!485085) b!2960122))

(assert (= (and d!841971 (not c!485085)) b!2960115))

(assert (= (and d!841971 c!485083) b!2960117))

(assert (= (and d!841971 (not c!485083)) b!2960119))

(assert (= (and b!2960119 c!485084) b!2960109))

(assert (= (and b!2960119 (not c!485084)) b!2960116))

(assert (= (and b!2960116 (not res!1221390)) b!2960110))

(assert (= (and b!2960110 res!1221394) b!2960114))

(assert (= (and b!2960114 res!1221392) b!2960121))

(assert (= (and b!2960121 res!1221389) b!2960118))

(assert (= (and b!2960110 (not res!1221395)) b!2960120))

(assert (= (and b!2960120 res!1221391) b!2960112))

(assert (= (and b!2960112 (not res!1221393)) b!2960113))

(assert (= (and b!2960113 (not res!1221396)) b!2960111))

(assert (= (or b!2960117 b!2960112 b!2960114) bm!196257))

(assert (=> b!2960111 m!3334003))

(assert (=> d!841971 m!3333857))

(declare-fun m!3334045 () Bool)

(assert (=> d!841971 m!3334045))

(assert (=> b!2960121 m!3334005))

(assert (=> b!2960121 m!3334005))

(assert (=> b!2960121 m!3334007))

(declare-fun m!3334047 () Bool)

(assert (=> b!2960122 m!3334047))

(assert (=> b!2960118 m!3334003))

(assert (=> b!2960113 m!3334005))

(assert (=> b!2960113 m!3334005))

(assert (=> b!2960113 m!3334007))

(assert (=> bm!196257 m!3333857))

(assert (=> b!2960115 m!3334003))

(assert (=> b!2960115 m!3334003))

(declare-fun m!3334049 () Bool)

(assert (=> b!2960115 m!3334049))

(assert (=> b!2960115 m!3334005))

(assert (=> b!2960115 m!3334049))

(assert (=> b!2960115 m!3334005))

(declare-fun m!3334051 () Bool)

(assert (=> b!2960115 m!3334051))

(assert (=> b!2959551 d!841971))

(declare-fun d!841973 () Bool)

(assert (=> d!841973 (= (isEmptyLang!309 lt!1033916) ((_ is EmptyLang!9187) lt!1033916))))

(assert (=> b!2959549 d!841973))

(declare-fun b!2960127 () Bool)

(declare-fun e!1863402 () Bool)

(declare-fun tp!944682 () Bool)

(assert (=> b!2960127 (= e!1863402 (and tp_is_empty!15937 tp!944682))))

(assert (=> b!2959554 (= tp!944639 e!1863402)))

(assert (= (and b!2959554 ((_ is Cons!34928) (t!234117 s!11993))) b!2960127))

(declare-fun b!2960140 () Bool)

(declare-fun e!1863405 () Bool)

(declare-fun tp!944696 () Bool)

(assert (=> b!2960140 (= e!1863405 tp!944696)))

(declare-fun b!2960138 () Bool)

(assert (=> b!2960138 (= e!1863405 tp_is_empty!15937)))

(assert (=> b!2959547 (= tp!944640 e!1863405)))

(declare-fun b!2960139 () Bool)

(declare-fun tp!944694 () Bool)

(declare-fun tp!944697 () Bool)

(assert (=> b!2960139 (= e!1863405 (and tp!944694 tp!944697))))

(declare-fun b!2960141 () Bool)

(declare-fun tp!944695 () Bool)

(declare-fun tp!944693 () Bool)

(assert (=> b!2960141 (= e!1863405 (and tp!944695 tp!944693))))

(assert (= (and b!2959547 ((_ is ElementMatch!9187) (regOne!18886 r!17423))) b!2960138))

(assert (= (and b!2959547 ((_ is Concat!14508) (regOne!18886 r!17423))) b!2960139))

(assert (= (and b!2959547 ((_ is Star!9187) (regOne!18886 r!17423))) b!2960140))

(assert (= (and b!2959547 ((_ is Union!9187) (regOne!18886 r!17423))) b!2960141))

(declare-fun b!2960144 () Bool)

(declare-fun e!1863406 () Bool)

(declare-fun tp!944701 () Bool)

(assert (=> b!2960144 (= e!1863406 tp!944701)))

(declare-fun b!2960142 () Bool)

(assert (=> b!2960142 (= e!1863406 tp_is_empty!15937)))

(assert (=> b!2959547 (= tp!944636 e!1863406)))

(declare-fun b!2960143 () Bool)

(declare-fun tp!944699 () Bool)

(declare-fun tp!944702 () Bool)

(assert (=> b!2960143 (= e!1863406 (and tp!944699 tp!944702))))

(declare-fun b!2960145 () Bool)

(declare-fun tp!944700 () Bool)

(declare-fun tp!944698 () Bool)

(assert (=> b!2960145 (= e!1863406 (and tp!944700 tp!944698))))

(assert (= (and b!2959547 ((_ is ElementMatch!9187) (regTwo!18886 r!17423))) b!2960142))

(assert (= (and b!2959547 ((_ is Concat!14508) (regTwo!18886 r!17423))) b!2960143))

(assert (= (and b!2959547 ((_ is Star!9187) (regTwo!18886 r!17423))) b!2960144))

(assert (= (and b!2959547 ((_ is Union!9187) (regTwo!18886 r!17423))) b!2960145))

(declare-fun b!2960148 () Bool)

(declare-fun e!1863407 () Bool)

(declare-fun tp!944706 () Bool)

(assert (=> b!2960148 (= e!1863407 tp!944706)))

(declare-fun b!2960146 () Bool)

(assert (=> b!2960146 (= e!1863407 tp_is_empty!15937)))

(assert (=> b!2959558 (= tp!944641 e!1863407)))

(declare-fun b!2960147 () Bool)

(declare-fun tp!944704 () Bool)

(declare-fun tp!944707 () Bool)

(assert (=> b!2960147 (= e!1863407 (and tp!944704 tp!944707))))

(declare-fun b!2960149 () Bool)

(declare-fun tp!944705 () Bool)

(declare-fun tp!944703 () Bool)

(assert (=> b!2960149 (= e!1863407 (and tp!944705 tp!944703))))

(assert (= (and b!2959558 ((_ is ElementMatch!9187) (regOne!18887 r!17423))) b!2960146))

(assert (= (and b!2959558 ((_ is Concat!14508) (regOne!18887 r!17423))) b!2960147))

(assert (= (and b!2959558 ((_ is Star!9187) (regOne!18887 r!17423))) b!2960148))

(assert (= (and b!2959558 ((_ is Union!9187) (regOne!18887 r!17423))) b!2960149))

(declare-fun b!2960152 () Bool)

(declare-fun e!1863408 () Bool)

(declare-fun tp!944711 () Bool)

(assert (=> b!2960152 (= e!1863408 tp!944711)))

(declare-fun b!2960150 () Bool)

(assert (=> b!2960150 (= e!1863408 tp_is_empty!15937)))

(assert (=> b!2959558 (= tp!944637 e!1863408)))

(declare-fun b!2960151 () Bool)

(declare-fun tp!944709 () Bool)

(declare-fun tp!944712 () Bool)

(assert (=> b!2960151 (= e!1863408 (and tp!944709 tp!944712))))

(declare-fun b!2960153 () Bool)

(declare-fun tp!944710 () Bool)

(declare-fun tp!944708 () Bool)

(assert (=> b!2960153 (= e!1863408 (and tp!944710 tp!944708))))

(assert (= (and b!2959558 ((_ is ElementMatch!9187) (regTwo!18887 r!17423))) b!2960150))

(assert (= (and b!2959558 ((_ is Concat!14508) (regTwo!18887 r!17423))) b!2960151))

(assert (= (and b!2959558 ((_ is Star!9187) (regTwo!18887 r!17423))) b!2960152))

(assert (= (and b!2959558 ((_ is Union!9187) (regTwo!18887 r!17423))) b!2960153))

(declare-fun b!2960156 () Bool)

(declare-fun e!1863409 () Bool)

(declare-fun tp!944716 () Bool)

(assert (=> b!2960156 (= e!1863409 tp!944716)))

(declare-fun b!2960154 () Bool)

(assert (=> b!2960154 (= e!1863409 tp_is_empty!15937)))

(assert (=> b!2959555 (= tp!944638 e!1863409)))

(declare-fun b!2960155 () Bool)

(declare-fun tp!944714 () Bool)

(declare-fun tp!944717 () Bool)

(assert (=> b!2960155 (= e!1863409 (and tp!944714 tp!944717))))

(declare-fun b!2960157 () Bool)

(declare-fun tp!944715 () Bool)

(declare-fun tp!944713 () Bool)

(assert (=> b!2960157 (= e!1863409 (and tp!944715 tp!944713))))

(assert (= (and b!2959555 ((_ is ElementMatch!9187) (reg!9516 r!17423))) b!2960154))

(assert (= (and b!2959555 ((_ is Concat!14508) (reg!9516 r!17423))) b!2960155))

(assert (= (and b!2959555 ((_ is Star!9187) (reg!9516 r!17423))) b!2960156))

(assert (= (and b!2959555 ((_ is Union!9187) (reg!9516 r!17423))) b!2960157))

(check-sat (not b!2959995) (not b!2960149) (not b!2960118) (not bm!196249) (not b!2960038) (not b!2960127) (not b!2960113) (not b!2960121) (not b!2959806) (not b!2959783) (not bm!196196) (not bm!196197) (not b!2960147) (not bm!196251) (not b!2960111) (not bm!196257) (not d!841965) (not b!2960043) (not b!2960153) (not bm!196193) (not b!2960046) (not b!2960040) (not b!2959992) (not b!2960036) (not bm!196247) (not d!841961) (not d!841959) (not b!2959769) (not b!2960102) (not b!2960143) (not b!2960140) (not bm!196191) (not b!2959820) (not b!2960141) (not b!2960139) (not bm!196248) (not bm!196253) (not bm!196200) (not b!2960148) (not bm!196189) (not b!2960068) (not b!2960122) (not b!2960151) (not b!2960047) (not b!2960152) (not bm!196198) (not b!2960145) (not bm!196244) (not bm!196246) (not bm!196190) (not d!841971) (not b!2960082) (not bm!196234) (not b!2960155) (not d!841931) (not bm!196256) (not bm!196195) (not b!2960157) (not b!2960144) tp_is_empty!15937 (not bm!196254) (not bm!196233) (not b!2960115) (not bm!196237) (not b!2960096) (not d!841943) (not bm!196202) (not b!2960156))
(check-sat)
