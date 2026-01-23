; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!295982 () Bool)

(assert start!295982)

(declare-fun b!3141852 () Bool)

(declare-fun e!1959680 () Bool)

(declare-fun tp!984208 () Bool)

(assert (=> b!3141852 (= e!1959680 tp!984208)))

(declare-fun b!3141853 () Bool)

(declare-fun tp!984209 () Bool)

(declare-fun tp!984206 () Bool)

(assert (=> b!3141853 (= e!1959680 (and tp!984209 tp!984206))))

(declare-fun b!3141854 () Bool)

(declare-fun res!1283132 () Bool)

(declare-fun e!1959681 () Bool)

(assert (=> b!3141854 (=> (not res!1283132) (not e!1959681))))

(declare-datatypes ((C!19526 0))(
  ( (C!19527 (val!11799 Int)) )
))
(declare-datatypes ((Regex!9670 0))(
  ( (ElementMatch!9670 (c!528090 C!19526)) (Concat!14991 (regOne!19852 Regex!9670) (regTwo!19852 Regex!9670)) (EmptyExpr!9670) (Star!9670 (reg!9999 Regex!9670)) (EmptyLang!9670) (Union!9670 (regOne!19853 Regex!9670) (regTwo!19853 Regex!9670)) )
))
(declare-fun r!17345 () Regex!9670)

(assert (=> b!3141854 (= res!1283132 (and (not (is-EmptyLang!9670 r!17345)) (not (is-ElementMatch!9670 r!17345)) (not (is-EmptyExpr!9670 r!17345)) (not (is-Star!9670 r!17345)) (is-Union!9670 r!17345)))))

(declare-fun b!3141855 () Bool)

(declare-fun tp!984210 () Bool)

(declare-fun tp!984207 () Bool)

(assert (=> b!3141855 (= e!1959680 (and tp!984210 tp!984207))))

(declare-fun b!3141856 () Bool)

(declare-fun regexDepth!126 (Regex!9670) Int)

(assert (=> b!3141856 (= e!1959681 (>= (regexDepth!126 (regTwo!19853 r!17345)) (regexDepth!126 r!17345)))))

(declare-fun lt!1061245 () Regex!9670)

(declare-fun simplify!609 (Regex!9670) Regex!9670)

(assert (=> b!3141856 (= lt!1061245 (simplify!609 (regOne!19853 r!17345)))))

(declare-fun res!1283131 () Bool)

(assert (=> start!295982 (=> (not res!1283131) (not e!1959681))))

(declare-fun validRegex!4403 (Regex!9670) Bool)

(assert (=> start!295982 (= res!1283131 (validRegex!4403 r!17345))))

(assert (=> start!295982 e!1959681))

(assert (=> start!295982 e!1959680))

(declare-fun b!3141857 () Bool)

(declare-fun tp_is_empty!16903 () Bool)

(assert (=> b!3141857 (= e!1959680 tp_is_empty!16903)))

(assert (= (and start!295982 res!1283131) b!3141854))

(assert (= (and b!3141854 res!1283132) b!3141856))

(assert (= (and start!295982 (is-ElementMatch!9670 r!17345)) b!3141857))

(assert (= (and start!295982 (is-Concat!14991 r!17345)) b!3141853))

(assert (= (and start!295982 (is-Star!9670 r!17345)) b!3141852))

(assert (= (and start!295982 (is-Union!9670 r!17345)) b!3141855))

(declare-fun m!3418225 () Bool)

(assert (=> b!3141856 m!3418225))

(declare-fun m!3418227 () Bool)

(assert (=> b!3141856 m!3418227))

(declare-fun m!3418229 () Bool)

(assert (=> b!3141856 m!3418229))

(declare-fun m!3418231 () Bool)

(assert (=> start!295982 m!3418231))

(push 1)

(assert (not b!3141852))

(assert (not b!3141855))

(assert tp_is_empty!16903)

(assert (not b!3141853))

(assert (not b!3141856))

(assert (not start!295982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3141912 () Bool)

(declare-fun e!1959718 () Bool)

(declare-fun call!225745 () Bool)

(assert (=> b!3141912 (= e!1959718 call!225745)))

(declare-fun b!3141913 () Bool)

(declare-fun e!1959717 () Bool)

(declare-fun e!1959721 () Bool)

(assert (=> b!3141913 (= e!1959717 e!1959721)))

(declare-fun res!1283160 () Bool)

(declare-fun nullable!3304 (Regex!9670) Bool)

(assert (=> b!3141913 (= res!1283160 (not (nullable!3304 (reg!9999 r!17345))))))

(assert (=> b!3141913 (=> (not res!1283160) (not e!1959721))))

(declare-fun b!3141914 () Bool)

(declare-fun res!1283163 () Bool)

(declare-fun e!1959720 () Bool)

(assert (=> b!3141914 (=> res!1283163 e!1959720)))

(assert (=> b!3141914 (= res!1283163 (not (is-Concat!14991 r!17345)))))

(declare-fun e!1959722 () Bool)

(assert (=> b!3141914 (= e!1959722 e!1959720)))

(declare-fun b!3141915 () Bool)

(declare-fun call!225743 () Bool)

(assert (=> b!3141915 (= e!1959721 call!225743)))

(declare-fun d!865807 () Bool)

(declare-fun res!1283159 () Bool)

(declare-fun e!1959719 () Bool)

(assert (=> d!865807 (=> res!1283159 e!1959719)))

(assert (=> d!865807 (= res!1283159 (is-ElementMatch!9670 r!17345))))

(assert (=> d!865807 (= (validRegex!4403 r!17345) e!1959719)))

(declare-fun b!3141916 () Bool)

(assert (=> b!3141916 (= e!1959717 e!1959722)))

(declare-fun c!528100 () Bool)

(assert (=> b!3141916 (= c!528100 (is-Union!9670 r!17345))))

(declare-fun b!3141917 () Bool)

(assert (=> b!3141917 (= e!1959719 e!1959717)))

(declare-fun c!528101 () Bool)

(assert (=> b!3141917 (= c!528101 (is-Star!9670 r!17345))))

(declare-fun b!3141918 () Bool)

(declare-fun e!1959716 () Bool)

(declare-fun call!225744 () Bool)

(assert (=> b!3141918 (= e!1959716 call!225744)))

(declare-fun bm!225738 () Bool)

(assert (=> bm!225738 (= call!225743 (validRegex!4403 (ite c!528101 (reg!9999 r!17345) (ite c!528100 (regTwo!19853 r!17345) (regOne!19852 r!17345)))))))

(declare-fun bm!225739 () Bool)

(assert (=> bm!225739 (= call!225745 call!225743)))

(declare-fun b!3141919 () Bool)

(assert (=> b!3141919 (= e!1959720 e!1959716)))

(declare-fun res!1283162 () Bool)

(assert (=> b!3141919 (=> (not res!1283162) (not e!1959716))))

(assert (=> b!3141919 (= res!1283162 call!225745)))

(declare-fun b!3141920 () Bool)

(declare-fun res!1283161 () Bool)

(assert (=> b!3141920 (=> (not res!1283161) (not e!1959718))))

(assert (=> b!3141920 (= res!1283161 call!225744)))

(assert (=> b!3141920 (= e!1959722 e!1959718)))

(declare-fun bm!225740 () Bool)

(assert (=> bm!225740 (= call!225744 (validRegex!4403 (ite c!528100 (regOne!19853 r!17345) (regTwo!19852 r!17345))))))

(assert (= (and d!865807 (not res!1283159)) b!3141917))

(assert (= (and b!3141917 c!528101) b!3141913))

(assert (= (and b!3141917 (not c!528101)) b!3141916))

(assert (= (and b!3141913 res!1283160) b!3141915))

(assert (= (and b!3141916 c!528100) b!3141920))

(assert (= (and b!3141916 (not c!528100)) b!3141914))

(assert (= (and b!3141920 res!1283161) b!3141912))

(assert (= (and b!3141914 (not res!1283163)) b!3141919))

(assert (= (and b!3141919 res!1283162) b!3141918))

(assert (= (or b!3141912 b!3141919) bm!225739))

(assert (= (or b!3141920 b!3141918) bm!225740))

(assert (= (or b!3141915 bm!225739) bm!225738))

(declare-fun m!3418241 () Bool)

(assert (=> b!3141913 m!3418241))

(declare-fun m!3418243 () Bool)

(assert (=> bm!225738 m!3418243))

(declare-fun m!3418245 () Bool)

(assert (=> bm!225740 m!3418245))

(assert (=> start!295982 d!865807))

(declare-fun bm!225772 () Bool)

(declare-fun c!528138 () Bool)

(declare-fun call!225781 () Int)

(declare-fun c!528134 () Bool)

(assert (=> bm!225772 (= call!225781 (regexDepth!126 (ite c!528134 (reg!9999 (regTwo!19853 r!17345)) (ite c!528138 (regOne!19853 (regTwo!19853 r!17345)) (regTwo!19852 (regTwo!19853 r!17345))))))))

(declare-fun bm!225773 () Bool)

(declare-fun call!225783 () Int)

(declare-fun c!528132 () Bool)

(assert (=> bm!225773 (= call!225783 (regexDepth!126 (ite c!528132 (regOne!19853 (regTwo!19853 r!17345)) (regOne!19852 (regTwo!19853 r!17345)))))))

(declare-fun b!3141998 () Bool)

(declare-fun e!1959775 () Bool)

(declare-fun e!1959777 () Bool)

(assert (=> b!3141998 (= e!1959775 e!1959777)))

(declare-fun c!528135 () Bool)

(assert (=> b!3141998 (= c!528135 (is-Concat!14991 (regTwo!19853 r!17345)))))

(declare-fun b!3141999 () Bool)

(declare-fun e!1959778 () Int)

(declare-fun call!225779 () Int)

(assert (=> b!3141999 (= e!1959778 (+ 1 call!225779))))

(declare-fun b!3142000 () Bool)

(declare-fun e!1959770 () Bool)

(declare-fun lt!1061253 () Int)

(declare-fun call!225778 () Int)

(assert (=> b!3142000 (= e!1959770 (> lt!1061253 call!225778))))

(declare-fun b!3142001 () Bool)

(declare-fun e!1959771 () Bool)

(assert (=> b!3142001 (= e!1959771 e!1959775)))

(assert (=> b!3142001 (= c!528132 (is-Union!9670 (regTwo!19853 r!17345)))))

(declare-fun call!225780 () Int)

(declare-fun call!225777 () Int)

(declare-fun bm!225774 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!225774 (= call!225779 (maxBigInt!0 (ite c!528138 call!225780 call!225777) (ite c!528138 call!225777 call!225780)))))

(declare-fun b!3142002 () Bool)

(declare-fun res!1283181 () Bool)

(declare-fun e!1959772 () Bool)

(assert (=> b!3142002 (=> (not res!1283181) (not e!1959772))))

(assert (=> b!3142002 (= res!1283181 (> lt!1061253 call!225783))))

(assert (=> b!3142002 (= e!1959777 e!1959772)))

(declare-fun b!3142003 () Bool)

(declare-fun e!1959776 () Int)

(assert (=> b!3142003 (= e!1959776 (+ 1 call!225779))))

(declare-fun b!3142004 () Bool)

(assert (=> b!3142004 (= e!1959778 1)))

(declare-fun b!3142005 () Bool)

(declare-fun e!1959774 () Bool)

(declare-fun call!225782 () Int)

(assert (=> b!3142005 (= e!1959774 (> lt!1061253 call!225782))))

(declare-fun bm!225775 () Bool)

(assert (=> bm!225775 (= call!225780 call!225781)))

(declare-fun b!3142006 () Bool)

(declare-fun c!528133 () Bool)

(assert (=> b!3142006 (= c!528133 (is-Star!9670 (regTwo!19853 r!17345)))))

(assert (=> b!3142006 (= e!1959777 e!1959774)))

(declare-fun bm!225776 () Bool)

(assert (=> bm!225776 (= call!225777 (regexDepth!126 (ite c!528138 (regTwo!19853 (regTwo!19853 r!17345)) (regOne!19852 (regTwo!19853 r!17345)))))))

(declare-fun b!3142007 () Bool)

(assert (=> b!3142007 (= e!1959774 (= lt!1061253 1))))

(declare-fun b!3142008 () Bool)

(assert (=> b!3142008 (= e!1959772 (> lt!1061253 call!225782))))

(declare-fun b!3142009 () Bool)

(declare-fun e!1959773 () Int)

(declare-fun e!1959779 () Int)

(assert (=> b!3142009 (= e!1959773 e!1959779)))

(assert (=> b!3142009 (= c!528134 (is-Star!9670 (regTwo!19853 r!17345)))))

(declare-fun b!3142010 () Bool)

(assert (=> b!3142010 (= e!1959779 (+ 1 call!225781))))

(declare-fun d!865811 () Bool)

(assert (=> d!865811 e!1959771))

(declare-fun res!1283183 () Bool)

(assert (=> d!865811 (=> (not res!1283183) (not e!1959771))))

(assert (=> d!865811 (= res!1283183 (> lt!1061253 0))))

(assert (=> d!865811 (= lt!1061253 e!1959773)))

(declare-fun c!528137 () Bool)

(assert (=> d!865811 (= c!528137 (is-ElementMatch!9670 (regTwo!19853 r!17345)))))

(assert (=> d!865811 (= (regexDepth!126 (regTwo!19853 r!17345)) lt!1061253)))

(declare-fun b!3142011 () Bool)

(assert (=> b!3142011 (= e!1959773 1)))

(declare-fun bm!225777 () Bool)

(assert (=> bm!225777 (= call!225782 call!225778)))

(declare-fun b!3142012 () Bool)

(assert (=> b!3142012 (= e!1959776 e!1959778)))

(declare-fun c!528136 () Bool)

(assert (=> b!3142012 (= c!528136 (is-Concat!14991 (regTwo!19853 r!17345)))))

(declare-fun bm!225778 () Bool)

(assert (=> bm!225778 (= call!225778 (regexDepth!126 (ite c!528132 (regTwo!19853 (regTwo!19853 r!17345)) (ite c!528135 (regTwo!19852 (regTwo!19853 r!17345)) (reg!9999 (regTwo!19853 r!17345))))))))

(declare-fun b!3142013 () Bool)

(assert (=> b!3142013 (= e!1959775 e!1959770)))

(declare-fun res!1283182 () Bool)

(assert (=> b!3142013 (= res!1283182 (> lt!1061253 call!225783))))

(assert (=> b!3142013 (=> (not res!1283182) (not e!1959770))))

(declare-fun b!3142014 () Bool)

(assert (=> b!3142014 (= c!528138 (is-Union!9670 (regTwo!19853 r!17345)))))

(assert (=> b!3142014 (= e!1959779 e!1959776)))

(assert (= (and d!865811 c!528137) b!3142011))

(assert (= (and d!865811 (not c!528137)) b!3142009))

(assert (= (and b!3142009 c!528134) b!3142010))

(assert (= (and b!3142009 (not c!528134)) b!3142014))

(assert (= (and b!3142014 c!528138) b!3142003))

(assert (= (and b!3142014 (not c!528138)) b!3142012))

(assert (= (and b!3142012 c!528136) b!3141999))

(assert (= (and b!3142012 (not c!528136)) b!3142004))

(assert (= (or b!3142003 b!3141999) bm!225775))

(assert (= (or b!3142003 b!3141999) bm!225776))

(assert (= (or b!3142003 b!3141999) bm!225774))

(assert (= (or b!3142010 bm!225775) bm!225772))

(assert (= (and d!865811 res!1283183) b!3142001))

(assert (= (and b!3142001 c!528132) b!3142013))

(assert (= (and b!3142001 (not c!528132)) b!3141998))

(assert (= (and b!3142013 res!1283182) b!3142000))

(assert (= (and b!3141998 c!528135) b!3142002))

(assert (= (and b!3141998 (not c!528135)) b!3142006))

(assert (= (and b!3142002 res!1283181) b!3142008))

(assert (= (and b!3142006 c!528133) b!3142005))

(assert (= (and b!3142006 (not c!528133)) b!3142007))

(assert (= (or b!3142008 b!3142005) bm!225777))

(assert (= (or b!3142013 b!3142002) bm!225773))

(assert (= (or b!3142000 bm!225777) bm!225778))

(declare-fun m!3418253 () Bool)

(assert (=> bm!225772 m!3418253))

(declare-fun m!3418255 () Bool)

(assert (=> bm!225778 m!3418255))

(declare-fun m!3418257 () Bool)

(assert (=> bm!225776 m!3418257))

(declare-fun m!3418259 () Bool)

(assert (=> bm!225774 m!3418259))

(declare-fun m!3418261 () Bool)

(assert (=> bm!225773 m!3418261))

(assert (=> b!3141856 d!865811))

(declare-fun c!528141 () Bool)

(declare-fun bm!225779 () Bool)

(declare-fun c!528145 () Bool)

(declare-fun call!225788 () Int)

(assert (=> bm!225779 (= call!225788 (regexDepth!126 (ite c!528141 (reg!9999 r!17345) (ite c!528145 (regOne!19853 r!17345) (regTwo!19852 r!17345)))))))

(declare-fun bm!225780 () Bool)

(declare-fun call!225790 () Int)

(declare-fun c!528139 () Bool)

(assert (=> bm!225780 (= call!225790 (regexDepth!126 (ite c!528139 (regOne!19853 r!17345) (regOne!19852 r!17345))))))

(declare-fun b!3142015 () Bool)

(declare-fun e!1959785 () Bool)

(declare-fun e!1959787 () Bool)

(assert (=> b!3142015 (= e!1959785 e!1959787)))

(declare-fun c!528142 () Bool)

(assert (=> b!3142015 (= c!528142 (is-Concat!14991 r!17345))))

(declare-fun b!3142016 () Bool)

(declare-fun e!1959788 () Int)

(declare-fun call!225786 () Int)

(assert (=> b!3142016 (= e!1959788 (+ 1 call!225786))))

(declare-fun b!3142017 () Bool)

(declare-fun e!1959780 () Bool)

(declare-fun lt!1061254 () Int)

(declare-fun call!225785 () Int)

(assert (=> b!3142017 (= e!1959780 (> lt!1061254 call!225785))))

(declare-fun b!3142018 () Bool)

(declare-fun e!1959781 () Bool)

(assert (=> b!3142018 (= e!1959781 e!1959785)))

(assert (=> b!3142018 (= c!528139 (is-Union!9670 r!17345))))

(declare-fun call!225784 () Int)

(declare-fun bm!225781 () Bool)

(declare-fun call!225787 () Int)

(assert (=> bm!225781 (= call!225786 (maxBigInt!0 (ite c!528145 call!225787 call!225784) (ite c!528145 call!225784 call!225787)))))

(declare-fun b!3142019 () Bool)

(declare-fun res!1283184 () Bool)

(declare-fun e!1959782 () Bool)

(assert (=> b!3142019 (=> (not res!1283184) (not e!1959782))))

(assert (=> b!3142019 (= res!1283184 (> lt!1061254 call!225790))))

(assert (=> b!3142019 (= e!1959787 e!1959782)))

(declare-fun b!3142020 () Bool)

(declare-fun e!1959786 () Int)

(assert (=> b!3142020 (= e!1959786 (+ 1 call!225786))))

(declare-fun b!3142021 () Bool)

(assert (=> b!3142021 (= e!1959788 1)))

(declare-fun b!3142022 () Bool)

(declare-fun e!1959784 () Bool)

(declare-fun call!225789 () Int)

(assert (=> b!3142022 (= e!1959784 (> lt!1061254 call!225789))))

(declare-fun bm!225782 () Bool)

(assert (=> bm!225782 (= call!225787 call!225788)))

(declare-fun b!3142023 () Bool)

(declare-fun c!528140 () Bool)

(assert (=> b!3142023 (= c!528140 (is-Star!9670 r!17345))))

(assert (=> b!3142023 (= e!1959787 e!1959784)))

(declare-fun bm!225783 () Bool)

(assert (=> bm!225783 (= call!225784 (regexDepth!126 (ite c!528145 (regTwo!19853 r!17345) (regOne!19852 r!17345))))))

(declare-fun b!3142024 () Bool)

(assert (=> b!3142024 (= e!1959784 (= lt!1061254 1))))

(declare-fun b!3142025 () Bool)

(assert (=> b!3142025 (= e!1959782 (> lt!1061254 call!225789))))

(declare-fun b!3142026 () Bool)

(declare-fun e!1959783 () Int)

(declare-fun e!1959789 () Int)

(assert (=> b!3142026 (= e!1959783 e!1959789)))

(assert (=> b!3142026 (= c!528141 (is-Star!9670 r!17345))))

(declare-fun b!3142027 () Bool)

(assert (=> b!3142027 (= e!1959789 (+ 1 call!225788))))

(declare-fun d!865815 () Bool)

(assert (=> d!865815 e!1959781))

(declare-fun res!1283186 () Bool)

(assert (=> d!865815 (=> (not res!1283186) (not e!1959781))))

(assert (=> d!865815 (= res!1283186 (> lt!1061254 0))))

(assert (=> d!865815 (= lt!1061254 e!1959783)))

(declare-fun c!528144 () Bool)

(assert (=> d!865815 (= c!528144 (is-ElementMatch!9670 r!17345))))

(assert (=> d!865815 (= (regexDepth!126 r!17345) lt!1061254)))

(declare-fun b!3142028 () Bool)

(assert (=> b!3142028 (= e!1959783 1)))

(declare-fun bm!225784 () Bool)

(assert (=> bm!225784 (= call!225789 call!225785)))

(declare-fun b!3142029 () Bool)

(assert (=> b!3142029 (= e!1959786 e!1959788)))

(declare-fun c!528143 () Bool)

(assert (=> b!3142029 (= c!528143 (is-Concat!14991 r!17345))))

(declare-fun bm!225785 () Bool)

(assert (=> bm!225785 (= call!225785 (regexDepth!126 (ite c!528139 (regTwo!19853 r!17345) (ite c!528142 (regTwo!19852 r!17345) (reg!9999 r!17345)))))))

(declare-fun b!3142030 () Bool)

(assert (=> b!3142030 (= e!1959785 e!1959780)))

(declare-fun res!1283185 () Bool)

(assert (=> b!3142030 (= res!1283185 (> lt!1061254 call!225790))))

(assert (=> b!3142030 (=> (not res!1283185) (not e!1959780))))

(declare-fun b!3142031 () Bool)

(assert (=> b!3142031 (= c!528145 (is-Union!9670 r!17345))))

(assert (=> b!3142031 (= e!1959789 e!1959786)))

(assert (= (and d!865815 c!528144) b!3142028))

(assert (= (and d!865815 (not c!528144)) b!3142026))

(assert (= (and b!3142026 c!528141) b!3142027))

(assert (= (and b!3142026 (not c!528141)) b!3142031))

(assert (= (and b!3142031 c!528145) b!3142020))

(assert (= (and b!3142031 (not c!528145)) b!3142029))

(assert (= (and b!3142029 c!528143) b!3142016))

(assert (= (and b!3142029 (not c!528143)) b!3142021))

(assert (= (or b!3142020 b!3142016) bm!225782))

(assert (= (or b!3142020 b!3142016) bm!225783))

(assert (= (or b!3142020 b!3142016) bm!225781))

(assert (= (or b!3142027 bm!225782) bm!225779))

(assert (= (and d!865815 res!1283186) b!3142018))

(assert (= (and b!3142018 c!528139) b!3142030))

(assert (= (and b!3142018 (not c!528139)) b!3142015))

(assert (= (and b!3142030 res!1283185) b!3142017))

(assert (= (and b!3142015 c!528142) b!3142019))

(assert (= (and b!3142015 (not c!528142)) b!3142023))

(assert (= (and b!3142019 res!1283184) b!3142025))

(assert (= (and b!3142023 c!528140) b!3142022))

(assert (= (and b!3142023 (not c!528140)) b!3142024))

(assert (= (or b!3142025 b!3142022) bm!225784))

(assert (= (or b!3142030 b!3142019) bm!225780))

(assert (= (or b!3142017 bm!225784) bm!225785))

(declare-fun m!3418263 () Bool)

(assert (=> bm!225779 m!3418263))

(declare-fun m!3418265 () Bool)

(assert (=> bm!225785 m!3418265))

(declare-fun m!3418267 () Bool)

(assert (=> bm!225783 m!3418267))

(declare-fun m!3418269 () Bool)

(assert (=> bm!225781 m!3418269))

(declare-fun m!3418271 () Bool)

(assert (=> bm!225780 m!3418271))

(assert (=> b!3141856 d!865815))

(declare-fun b!3142166 () Bool)

(declare-fun e!1959872 () Regex!9670)

(assert (=> b!3142166 (= e!1959872 (regOne!19853 r!17345))))

(declare-fun lt!1061283 () Regex!9670)

(declare-fun lt!1061281 () Regex!9670)

(declare-fun bm!225828 () Bool)

(declare-fun call!225836 () Bool)

(declare-fun c!528214 () Bool)

(declare-fun isEmptyLang!705 (Regex!9670) Bool)

(assert (=> bm!225828 (= call!225836 (isEmptyLang!705 (ite c!528214 lt!1061281 lt!1061283)))))

(declare-fun b!3142167 () Bool)

(declare-fun e!1959879 () Regex!9670)

(declare-fun e!1959870 () Regex!9670)

(assert (=> b!3142167 (= e!1959879 e!1959870)))

(declare-fun c!528211 () Bool)

(declare-fun call!225839 () Bool)

(assert (=> b!3142167 (= c!528211 call!225839)))

(declare-fun call!225835 () Regex!9670)

(declare-fun bm!225829 () Bool)

(declare-fun c!528206 () Bool)

(assert (=> bm!225829 (= call!225835 (simplify!609 (ite c!528206 (reg!9999 (regOne!19853 r!17345)) (ite c!528214 (regTwo!19853 (regOne!19853 r!17345)) (regTwo!19852 (regOne!19853 r!17345))))))))

(declare-fun b!3142168 () Bool)

(declare-fun lt!1061284 () Regex!9670)

(assert (=> b!3142168 (= e!1959870 (Concat!14991 lt!1061284 lt!1061283))))

(declare-fun b!3142169 () Bool)

(assert (=> b!3142169 (= c!528214 (is-Union!9670 (regOne!19853 r!17345)))))

(declare-fun e!1959869 () Regex!9670)

(declare-fun e!1959873 () Regex!9670)

(assert (=> b!3142169 (= e!1959869 e!1959873)))

(declare-fun b!3142170 () Bool)

(declare-fun e!1959867 () Bool)

(assert (=> b!3142170 (= e!1959867 call!225839)))

(declare-fun b!3142171 () Bool)

(declare-fun e!1959874 () Regex!9670)

(assert (=> b!3142171 (= e!1959874 EmptyExpr!9670)))

(declare-fun b!3142172 () Bool)

(declare-fun e!1959876 () Regex!9670)

(declare-fun lt!1061282 () Regex!9670)

(assert (=> b!3142172 (= e!1959876 lt!1061282)))

(declare-fun bm!225830 () Bool)

(declare-fun call!225837 () Regex!9670)

(assert (=> bm!225830 (= call!225837 (simplify!609 (ite c!528214 (regOne!19853 (regOne!19853 r!17345)) (regOne!19852 (regOne!19853 r!17345)))))))

(declare-fun b!3142173 () Bool)

(assert (=> b!3142173 (= e!1959870 lt!1061284)))

(declare-fun d!865817 () Bool)

(declare-fun e!1959866 () Bool)

(assert (=> d!865817 e!1959866))

(declare-fun res!1283207 () Bool)

(assert (=> d!865817 (=> (not res!1283207) (not e!1959866))))

(declare-fun lt!1061285 () Regex!9670)

(assert (=> d!865817 (= res!1283207 (validRegex!4403 lt!1061285))))

(declare-fun e!1959878 () Regex!9670)

(assert (=> d!865817 (= lt!1061285 e!1959878)))

(declare-fun c!528209 () Bool)

(assert (=> d!865817 (= c!528209 (is-EmptyLang!9670 (regOne!19853 r!17345)))))

(assert (=> d!865817 (validRegex!4403 (regOne!19853 r!17345))))

(assert (=> d!865817 (= (simplify!609 (regOne!19853 r!17345)) lt!1061285)))

(declare-fun b!3142174 () Bool)

(declare-fun e!1959871 () Regex!9670)

(assert (=> b!3142174 (= e!1959871 e!1959869)))

(assert (=> b!3142174 (= c!528206 (is-Star!9670 (regOne!19853 r!17345)))))

(declare-fun call!225834 () Bool)

(declare-fun lt!1061286 () Regex!9670)

(declare-fun bm!225831 () Bool)

(assert (=> bm!225831 (= call!225834 (isEmptyLang!705 (ite c!528206 lt!1061286 (ite c!528214 lt!1061282 lt!1061284))))))

(declare-fun b!3142175 () Bool)

(declare-fun e!1959875 () Regex!9670)

(assert (=> b!3142175 (= e!1959875 lt!1061281)))

(declare-fun b!3142176 () Bool)

(assert (=> b!3142176 (= e!1959871 EmptyExpr!9670)))

(declare-fun b!3142177 () Bool)

(declare-fun c!528207 () Bool)

(declare-fun call!225838 () Bool)

(assert (=> b!3142177 (= c!528207 call!225838)))

(assert (=> b!3142177 (= e!1959876 e!1959875)))

(declare-fun b!3142178 () Bool)

(assert (=> b!3142178 (= e!1959866 (= (nullable!3304 lt!1061285) (nullable!3304 (regOne!19853 r!17345))))))

(declare-fun b!3142179 () Bool)

(declare-fun c!528210 () Bool)

(assert (=> b!3142179 (= c!528210 e!1959867)))

(declare-fun res!1283206 () Bool)

(assert (=> b!3142179 (=> res!1283206 e!1959867)))

(assert (=> b!3142179 (= res!1283206 call!225834)))

(assert (=> b!3142179 (= lt!1061286 call!225835)))

(assert (=> b!3142179 (= e!1959869 e!1959874)))

(declare-fun b!3142180 () Bool)

(assert (=> b!3142180 (= e!1959878 e!1959872)))

(declare-fun c!528213 () Bool)

(assert (=> b!3142180 (= c!528213 (is-ElementMatch!9670 (regOne!19853 r!17345)))))

(declare-fun bm!225832 () Bool)

(declare-fun isEmptyExpr!699 (Regex!9670) Bool)

(assert (=> bm!225832 (= call!225839 (isEmptyExpr!699 (ite c!528206 lt!1061286 lt!1061283)))))

(declare-fun b!3142181 () Bool)

(declare-fun c!528208 () Bool)

(assert (=> b!3142181 (= c!528208 (isEmptyExpr!699 lt!1061284))))

(declare-fun e!1959877 () Regex!9670)

(assert (=> b!3142181 (= e!1959877 e!1959879)))

(declare-fun b!3142182 () Bool)

(assert (=> b!3142182 (= e!1959875 (Union!9670 lt!1061281 lt!1061282))))

(declare-fun bm!225833 () Bool)

(declare-fun call!225833 () Regex!9670)

(assert (=> bm!225833 (= call!225833 call!225835)))

(declare-fun b!3142183 () Bool)

(assert (=> b!3142183 (= e!1959878 EmptyLang!9670)))

(declare-fun b!3142184 () Bool)

(declare-fun c!528212 () Bool)

(assert (=> b!3142184 (= c!528212 (is-EmptyExpr!9670 (regOne!19853 r!17345)))))

(assert (=> b!3142184 (= e!1959872 e!1959871)))

(declare-fun bm!225834 () Bool)

(assert (=> bm!225834 (= call!225838 call!225834)))

(declare-fun b!3142185 () Bool)

(assert (=> b!3142185 (= e!1959873 e!1959876)))

(assert (=> b!3142185 (= lt!1061281 call!225837)))

(assert (=> b!3142185 (= lt!1061282 call!225833)))

(declare-fun c!528204 () Bool)

(assert (=> b!3142185 (= c!528204 call!225836)))

(declare-fun b!3142186 () Bool)

(assert (=> b!3142186 (= e!1959877 EmptyLang!9670)))

(declare-fun b!3142187 () Bool)

(assert (=> b!3142187 (= e!1959879 lt!1061283)))

(declare-fun b!3142188 () Bool)

(declare-fun e!1959868 () Bool)

(assert (=> b!3142188 (= e!1959868 call!225836)))

(declare-fun b!3142189 () Bool)

(assert (=> b!3142189 (= e!1959873 e!1959877)))

(assert (=> b!3142189 (= lt!1061284 call!225837)))

(assert (=> b!3142189 (= lt!1061283 call!225833)))

(declare-fun res!1283205 () Bool)

(assert (=> b!3142189 (= res!1283205 call!225838)))

(assert (=> b!3142189 (=> res!1283205 e!1959868)))

(declare-fun c!528205 () Bool)

(assert (=> b!3142189 (= c!528205 e!1959868)))

(declare-fun b!3142190 () Bool)

(assert (=> b!3142190 (= e!1959874 (Star!9670 lt!1061286))))

(assert (= (and d!865817 c!528209) b!3142183))

(assert (= (and d!865817 (not c!528209)) b!3142180))

(assert (= (and b!3142180 c!528213) b!3142166))

(assert (= (and b!3142180 (not c!528213)) b!3142184))

(assert (= (and b!3142184 c!528212) b!3142176))

(assert (= (and b!3142184 (not c!528212)) b!3142174))

(assert (= (and b!3142174 c!528206) b!3142179))

(assert (= (and b!3142174 (not c!528206)) b!3142169))

(assert (= (and b!3142179 (not res!1283206)) b!3142170))

(assert (= (and b!3142179 c!528210) b!3142171))

(assert (= (and b!3142179 (not c!528210)) b!3142190))

(assert (= (and b!3142169 c!528214) b!3142185))

(assert (= (and b!3142169 (not c!528214)) b!3142189))

(assert (= (and b!3142185 c!528204) b!3142172))

(assert (= (and b!3142185 (not c!528204)) b!3142177))

(assert (= (and b!3142177 c!528207) b!3142175))

(assert (= (and b!3142177 (not c!528207)) b!3142182))

(assert (= (and b!3142189 (not res!1283205)) b!3142188))

(assert (= (and b!3142189 c!528205) b!3142186))

(assert (= (and b!3142189 (not c!528205)) b!3142181))

(assert (= (and b!3142181 c!528208) b!3142187))

(assert (= (and b!3142181 (not c!528208)) b!3142167))

(assert (= (and b!3142167 c!528211) b!3142173))

(assert (= (and b!3142167 (not c!528211)) b!3142168))

(assert (= (or b!3142185 b!3142188) bm!225828))

(assert (= (or b!3142177 b!3142189) bm!225834))

(assert (= (or b!3142185 b!3142189) bm!225830))

(assert (= (or b!3142185 b!3142189) bm!225833))

(assert (= (or b!3142170 b!3142167) bm!225832))

(assert (= (or b!3142179 bm!225834) bm!225831))

(assert (= (or b!3142179 bm!225833) bm!225829))

(assert (= (and d!865817 res!1283207) b!3142178))

(declare-fun m!3418293 () Bool)

(assert (=> bm!225831 m!3418293))

(declare-fun m!3418295 () Bool)

(assert (=> bm!225828 m!3418295))

(declare-fun m!3418297 () Bool)

(assert (=> bm!225832 m!3418297))

(declare-fun m!3418299 () Bool)

(assert (=> bm!225829 m!3418299))

(declare-fun m!3418301 () Bool)

(assert (=> bm!225830 m!3418301))

(declare-fun m!3418303 () Bool)

(assert (=> b!3142178 m!3418303))

(declare-fun m!3418305 () Bool)

(assert (=> b!3142178 m!3418305))

(declare-fun m!3418307 () Bool)

(assert (=> d!865817 m!3418307))

(declare-fun m!3418309 () Bool)

(assert (=> d!865817 m!3418309))

(declare-fun m!3418311 () Bool)

(assert (=> b!3142181 m!3418311))

(assert (=> b!3141856 d!865817))

(declare-fun b!3142202 () Bool)

(declare-fun e!1959882 () Bool)

(declare-fun tp!984238 () Bool)

(declare-fun tp!984236 () Bool)

(assert (=> b!3142202 (= e!1959882 (and tp!984238 tp!984236))))

(assert (=> b!3141855 (= tp!984210 e!1959882)))

(declare-fun b!3142204 () Bool)

(declare-fun tp!984237 () Bool)

(declare-fun tp!984240 () Bool)

(assert (=> b!3142204 (= e!1959882 (and tp!984237 tp!984240))))

(declare-fun b!3142201 () Bool)

(assert (=> b!3142201 (= e!1959882 tp_is_empty!16903)))

(declare-fun b!3142203 () Bool)

(declare-fun tp!984239 () Bool)

(assert (=> b!3142203 (= e!1959882 tp!984239)))

(assert (= (and b!3141855 (is-ElementMatch!9670 (regOne!19853 r!17345))) b!3142201))

(assert (= (and b!3141855 (is-Concat!14991 (regOne!19853 r!17345))) b!3142202))

(assert (= (and b!3141855 (is-Star!9670 (regOne!19853 r!17345))) b!3142203))

(assert (= (and b!3141855 (is-Union!9670 (regOne!19853 r!17345))) b!3142204))

(declare-fun b!3142206 () Bool)

(declare-fun e!1959883 () Bool)

(declare-fun tp!984243 () Bool)

(declare-fun tp!984241 () Bool)

(assert (=> b!3142206 (= e!1959883 (and tp!984243 tp!984241))))

(assert (=> b!3141855 (= tp!984207 e!1959883)))

(declare-fun b!3142208 () Bool)

(declare-fun tp!984242 () Bool)

(declare-fun tp!984245 () Bool)

(assert (=> b!3142208 (= e!1959883 (and tp!984242 tp!984245))))

(declare-fun b!3142205 () Bool)

(assert (=> b!3142205 (= e!1959883 tp_is_empty!16903)))

(declare-fun b!3142207 () Bool)

(declare-fun tp!984244 () Bool)

(assert (=> b!3142207 (= e!1959883 tp!984244)))

(assert (= (and b!3141855 (is-ElementMatch!9670 (regTwo!19853 r!17345))) b!3142205))

(assert (= (and b!3141855 (is-Concat!14991 (regTwo!19853 r!17345))) b!3142206))

(assert (= (and b!3141855 (is-Star!9670 (regTwo!19853 r!17345))) b!3142207))

(assert (= (and b!3141855 (is-Union!9670 (regTwo!19853 r!17345))) b!3142208))

(declare-fun b!3142235 () Bool)

(declare-fun e!1959898 () Bool)

(declare-fun tp!984248 () Bool)

(declare-fun tp!984246 () Bool)

(assert (=> b!3142235 (= e!1959898 (and tp!984248 tp!984246))))

(assert (=> b!3141852 (= tp!984208 e!1959898)))

(declare-fun b!3142237 () Bool)

(declare-fun tp!984247 () Bool)

(declare-fun tp!984250 () Bool)

(assert (=> b!3142237 (= e!1959898 (and tp!984247 tp!984250))))

(declare-fun b!3142234 () Bool)

(assert (=> b!3142234 (= e!1959898 tp_is_empty!16903)))

(declare-fun b!3142236 () Bool)

(declare-fun tp!984249 () Bool)

(assert (=> b!3142236 (= e!1959898 tp!984249)))

(assert (= (and b!3141852 (is-ElementMatch!9670 (reg!9999 r!17345))) b!3142234))

(assert (= (and b!3141852 (is-Concat!14991 (reg!9999 r!17345))) b!3142235))

(assert (= (and b!3141852 (is-Star!9670 (reg!9999 r!17345))) b!3142236))

(assert (= (and b!3141852 (is-Union!9670 (reg!9999 r!17345))) b!3142237))

(declare-fun b!3142239 () Bool)

(declare-fun e!1959899 () Bool)

(declare-fun tp!984253 () Bool)

(declare-fun tp!984251 () Bool)

(assert (=> b!3142239 (= e!1959899 (and tp!984253 tp!984251))))

(assert (=> b!3141853 (= tp!984209 e!1959899)))

(declare-fun b!3142241 () Bool)

(declare-fun tp!984252 () Bool)

(declare-fun tp!984255 () Bool)

(assert (=> b!3142241 (= e!1959899 (and tp!984252 tp!984255))))

(declare-fun b!3142238 () Bool)

(assert (=> b!3142238 (= e!1959899 tp_is_empty!16903)))

(declare-fun b!3142240 () Bool)

(declare-fun tp!984254 () Bool)

(assert (=> b!3142240 (= e!1959899 tp!984254)))

(assert (= (and b!3141853 (is-ElementMatch!9670 (regOne!19852 r!17345))) b!3142238))

(assert (= (and b!3141853 (is-Concat!14991 (regOne!19852 r!17345))) b!3142239))

(assert (= (and b!3141853 (is-Star!9670 (regOne!19852 r!17345))) b!3142240))

(assert (= (and b!3141853 (is-Union!9670 (regOne!19852 r!17345))) b!3142241))

(declare-fun b!3142243 () Bool)

(declare-fun e!1959900 () Bool)

(declare-fun tp!984258 () Bool)

(declare-fun tp!984256 () Bool)

(assert (=> b!3142243 (= e!1959900 (and tp!984258 tp!984256))))

(assert (=> b!3141853 (= tp!984206 e!1959900)))

(declare-fun b!3142245 () Bool)

(declare-fun tp!984257 () Bool)

(declare-fun tp!984260 () Bool)

(assert (=> b!3142245 (= e!1959900 (and tp!984257 tp!984260))))

(declare-fun b!3142242 () Bool)

(assert (=> b!3142242 (= e!1959900 tp_is_empty!16903)))

(declare-fun b!3142244 () Bool)

(declare-fun tp!984259 () Bool)

(assert (=> b!3142244 (= e!1959900 tp!984259)))

(assert (= (and b!3141853 (is-ElementMatch!9670 (regTwo!19852 r!17345))) b!3142242))

(assert (= (and b!3141853 (is-Concat!14991 (regTwo!19852 r!17345))) b!3142243))

(assert (= (and b!3141853 (is-Star!9670 (regTwo!19852 r!17345))) b!3142244))

(assert (= (and b!3141853 (is-Union!9670 (regTwo!19852 r!17345))) b!3142245))

(push 1)

(assert (not b!3142207))

(assert (not bm!225740))

(assert (not b!3142235))

(assert (not b!3142202))

(assert (not d!865817))

(assert (not b!3142181))

(assert (not b!3142244))

(assert (not bm!225785))

(assert tp_is_empty!16903)

(assert (not b!3142236))

(assert (not bm!225780))

(assert (not b!3142241))

(assert (not bm!225829))

(assert (not bm!225779))

(assert (not b!3142243))

(assert (not bm!225783))

(assert (not b!3142245))

(assert (not bm!225781))

(assert (not bm!225832))

(assert (not b!3142178))

(assert (not bm!225738))

(assert (not b!3142204))

(assert (not b!3142203))

(assert (not bm!225831))

(assert (not b!3142237))

(assert (not b!3142206))

(assert (not bm!225772))

(assert (not bm!225776))

(assert (not bm!225778))

(assert (not bm!225774))

(assert (not bm!225830))

(assert (not b!3142239))

(assert (not b!3141913))

(assert (not bm!225773))

(assert (not b!3142240))

(assert (not bm!225828))

(assert (not b!3142208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

