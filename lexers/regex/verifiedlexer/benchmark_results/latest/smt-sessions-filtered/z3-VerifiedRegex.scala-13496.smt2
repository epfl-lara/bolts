; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728124 () Bool)

(assert start!728124)

(declare-fun b!7522072 () Bool)

(declare-fun e!4483997 () Bool)

(declare-fun tp_is_empty!49929 () Bool)

(assert (=> b!7522072 (= e!4483997 tp_is_empty!49929)))

(declare-fun b!7522073 () Bool)

(declare-fun res!3015169 () Bool)

(declare-fun e!4483996 () Bool)

(assert (=> b!7522073 (=> (not res!3015169) (not e!4483996))))

(declare-datatypes ((C!39900 0))(
  ( (C!39901 (val!30390 Int)) )
))
(declare-datatypes ((Regex!19787 0))(
  ( (ElementMatch!19787 (c!1389680 C!39900)) (Concat!28632 (regOne!40086 Regex!19787) (regTwo!40086 Regex!19787)) (EmptyExpr!19787) (Star!19787 (reg!20116 Regex!19787)) (EmptyLang!19787) (Union!19787 (regOne!40087 Regex!19787) (regTwo!40087 Regex!19787)) )
))
(declare-fun expr!41 () Regex!19787)

(declare-fun a!1106 () C!39900)

(get-info :version)

(assert (=> b!7522073 (= res!3015169 (and (or (not ((_ is ElementMatch!19787) expr!41)) (not (= (c!1389680 expr!41) a!1106))) ((_ is Union!19787) expr!41)))))

(declare-fun b!7522074 () Bool)

(declare-fun tp!2185135 () Bool)

(declare-fun tp!2185139 () Bool)

(assert (=> b!7522074 (= e!4483997 (and tp!2185135 tp!2185139))))

(declare-fun b!7522075 () Bool)

(declare-fun regexDepth!447 (Regex!19787) Int)

(assert (=> b!7522075 (= e!4483996 (>= (regexDepth!447 (regOne!40087 expr!41)) (regexDepth!447 expr!41)))))

(declare-fun b!7522076 () Bool)

(declare-fun tp!2185138 () Bool)

(assert (=> b!7522076 (= e!4483997 tp!2185138)))

(declare-fun res!3015170 () Bool)

(assert (=> start!728124 (=> (not res!3015170) (not e!4483996))))

(declare-fun validRegex!10215 (Regex!19787) Bool)

(assert (=> start!728124 (= res!3015170 (validRegex!10215 expr!41))))

(assert (=> start!728124 e!4483996))

(assert (=> start!728124 e!4483997))

(assert (=> start!728124 tp_is_empty!49929))

(declare-fun b!7522077 () Bool)

(declare-fun tp!2185136 () Bool)

(declare-fun tp!2185137 () Bool)

(assert (=> b!7522077 (= e!4483997 (and tp!2185136 tp!2185137))))

(assert (= (and start!728124 res!3015170) b!7522073))

(assert (= (and b!7522073 res!3015169) b!7522075))

(assert (= (and start!728124 ((_ is ElementMatch!19787) expr!41)) b!7522072))

(assert (= (and start!728124 ((_ is Concat!28632) expr!41)) b!7522074))

(assert (= (and start!728124 ((_ is Star!19787) expr!41)) b!7522076))

(assert (= (and start!728124 ((_ is Union!19787) expr!41)) b!7522077))

(declare-fun m!8100508 () Bool)

(assert (=> b!7522075 m!8100508))

(declare-fun m!8100510 () Bool)

(assert (=> b!7522075 m!8100510))

(declare-fun m!8100512 () Bool)

(assert (=> start!728124 m!8100512))

(check-sat (not b!7522077) tp_is_empty!49929 (not b!7522076) (not start!728124) (not b!7522074) (not b!7522075))
(check-sat)
(get-model)

(declare-fun b!7522123 () Bool)

(declare-fun res!3015198 () Bool)

(declare-fun e!4484036 () Bool)

(assert (=> b!7522123 (=> res!3015198 e!4484036)))

(assert (=> b!7522123 (= res!3015198 (not ((_ is Concat!28632) expr!41)))))

(declare-fun e!4484035 () Bool)

(assert (=> b!7522123 (= e!4484035 e!4484036)))

(declare-fun b!7522124 () Bool)

(declare-fun e!4484034 () Bool)

(declare-fun e!4484038 () Bool)

(assert (=> b!7522124 (= e!4484034 e!4484038)))

(declare-fun c!1389691 () Bool)

(assert (=> b!7522124 (= c!1389691 ((_ is Star!19787) expr!41))))

(declare-fun b!7522125 () Bool)

(declare-fun e!4484037 () Bool)

(assert (=> b!7522125 (= e!4484038 e!4484037)))

(declare-fun res!3015200 () Bool)

(declare-fun nullable!8621 (Regex!19787) Bool)

(assert (=> b!7522125 (= res!3015200 (not (nullable!8621 (reg!20116 expr!41))))))

(assert (=> b!7522125 (=> (not res!3015200) (not e!4484037))))

(declare-fun call!689810 () Bool)

(declare-fun c!1389692 () Bool)

(declare-fun bm!689803 () Bool)

(assert (=> bm!689803 (= call!689810 (validRegex!10215 (ite c!1389691 (reg!20116 expr!41) (ite c!1389692 (regOne!40087 expr!41) (regTwo!40086 expr!41)))))))

(declare-fun d!2309091 () Bool)

(declare-fun res!3015197 () Bool)

(assert (=> d!2309091 (=> res!3015197 e!4484034)))

(assert (=> d!2309091 (= res!3015197 ((_ is ElementMatch!19787) expr!41))))

(assert (=> d!2309091 (= (validRegex!10215 expr!41) e!4484034)))

(declare-fun b!7522126 () Bool)

(declare-fun e!4484033 () Bool)

(declare-fun call!689808 () Bool)

(assert (=> b!7522126 (= e!4484033 call!689808)))

(declare-fun bm!689804 () Bool)

(assert (=> bm!689804 (= call!689808 (validRegex!10215 (ite c!1389692 (regTwo!40087 expr!41) (regOne!40086 expr!41))))))

(declare-fun bm!689805 () Bool)

(declare-fun call!689809 () Bool)

(assert (=> bm!689805 (= call!689809 call!689810)))

(declare-fun b!7522127 () Bool)

(declare-fun e!4484039 () Bool)

(assert (=> b!7522127 (= e!4484036 e!4484039)))

(declare-fun res!3015199 () Bool)

(assert (=> b!7522127 (=> (not res!3015199) (not e!4484039))))

(assert (=> b!7522127 (= res!3015199 call!689808)))

(declare-fun b!7522128 () Bool)

(assert (=> b!7522128 (= e!4484037 call!689810)))

(declare-fun b!7522129 () Bool)

(assert (=> b!7522129 (= e!4484038 e!4484035)))

(assert (=> b!7522129 (= c!1389692 ((_ is Union!19787) expr!41))))

(declare-fun b!7522130 () Bool)

(assert (=> b!7522130 (= e!4484039 call!689809)))

(declare-fun b!7522131 () Bool)

(declare-fun res!3015196 () Bool)

(assert (=> b!7522131 (=> (not res!3015196) (not e!4484033))))

(assert (=> b!7522131 (= res!3015196 call!689809)))

(assert (=> b!7522131 (= e!4484035 e!4484033)))

(assert (= (and d!2309091 (not res!3015197)) b!7522124))

(assert (= (and b!7522124 c!1389691) b!7522125))

(assert (= (and b!7522124 (not c!1389691)) b!7522129))

(assert (= (and b!7522125 res!3015200) b!7522128))

(assert (= (and b!7522129 c!1389692) b!7522131))

(assert (= (and b!7522129 (not c!1389692)) b!7522123))

(assert (= (and b!7522131 res!3015196) b!7522126))

(assert (= (and b!7522123 (not res!3015198)) b!7522127))

(assert (= (and b!7522127 res!3015199) b!7522130))

(assert (= (or b!7522126 b!7522127) bm!689804))

(assert (= (or b!7522131 b!7522130) bm!689805))

(assert (= (or b!7522128 bm!689805) bm!689803))

(declare-fun m!8100520 () Bool)

(assert (=> b!7522125 m!8100520))

(declare-fun m!8100522 () Bool)

(assert (=> bm!689803 m!8100522))

(declare-fun m!8100524 () Bool)

(assert (=> bm!689804 m!8100524))

(assert (=> start!728124 d!2309091))

(declare-fun b!7522218 () Bool)

(declare-fun e!4484091 () Bool)

(declare-fun lt!2638606 () Int)

(assert (=> b!7522218 (= e!4484091 (= lt!2638606 1))))

(declare-fun b!7522219 () Bool)

(declare-fun e!4484092 () Bool)

(declare-fun call!689851 () Int)

(assert (=> b!7522219 (= e!4484092 (> lt!2638606 call!689851))))

(declare-fun b!7522220 () Bool)

(declare-fun e!4484099 () Bool)

(declare-fun e!4484090 () Bool)

(assert (=> b!7522220 (= e!4484099 e!4484090)))

(declare-fun c!1389730 () Bool)

(assert (=> b!7522220 (= c!1389730 ((_ is Union!19787) (regOne!40087 expr!41)))))

(declare-fun bm!689841 () Bool)

(declare-fun call!689852 () Int)

(assert (=> bm!689841 (= call!689852 (regexDepth!447 (ite c!1389730 (regOne!40087 (regOne!40087 expr!41)) (regOne!40086 (regOne!40087 expr!41)))))))

(declare-fun bm!689842 () Bool)

(declare-fun call!689850 () Int)

(declare-fun c!1389732 () Bool)

(assert (=> bm!689842 (= call!689850 (regexDepth!447 (ite c!1389732 (regTwo!40087 (regOne!40087 expr!41)) (regOne!40086 (regOne!40087 expr!41)))))))

(declare-fun call!689848 () Int)

(declare-fun bm!689843 () Bool)

(declare-fun c!1389733 () Bool)

(assert (=> bm!689843 (= call!689848 (regexDepth!447 (ite c!1389730 (regTwo!40087 (regOne!40087 expr!41)) (ite c!1389733 (regTwo!40086 (regOne!40087 expr!41)) (reg!20116 (regOne!40087 expr!41))))))))

(declare-fun b!7522221 () Bool)

(declare-fun res!3015218 () Bool)

(assert (=> b!7522221 (=> (not res!3015218) (not e!4484092))))

(assert (=> b!7522221 (= res!3015218 (> lt!2638606 call!689852))))

(declare-fun e!4484098 () Bool)

(assert (=> b!7522221 (= e!4484098 e!4484092)))

(declare-fun b!7522222 () Bool)

(declare-fun e!4484094 () Int)

(declare-fun call!689847 () Int)

(assert (=> b!7522222 (= e!4484094 (+ 1 call!689847))))

(declare-fun b!7522223 () Bool)

(assert (=> b!7522223 (= e!4484090 e!4484098)))

(assert (=> b!7522223 (= c!1389733 ((_ is Concat!28632) (regOne!40087 expr!41)))))

(declare-fun b!7522224 () Bool)

(assert (=> b!7522224 (= e!4484091 (> lt!2638606 call!689851))))

(declare-fun b!7522225 () Bool)

(declare-fun e!4484096 () Int)

(assert (=> b!7522225 (= e!4484096 1)))

(declare-fun b!7522226 () Bool)

(declare-fun e!4484093 () Int)

(declare-fun call!689846 () Int)

(assert (=> b!7522226 (= e!4484093 (+ 1 call!689846))))

(declare-fun bm!689844 () Bool)

(assert (=> bm!689844 (= call!689851 call!689848)))

(declare-fun b!7522227 () Bool)

(declare-fun c!1389731 () Bool)

(assert (=> b!7522227 (= c!1389731 ((_ is Star!19787) (regOne!40087 expr!41)))))

(assert (=> b!7522227 (= e!4484098 e!4484091)))

(declare-fun b!7522228 () Bool)

(declare-fun e!4484097 () Bool)

(assert (=> b!7522228 (= e!4484097 (> lt!2638606 call!689848))))

(declare-fun b!7522229 () Bool)

(assert (=> b!7522229 (= e!4484094 1)))

(declare-fun bm!689845 () Bool)

(declare-fun call!689849 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!689845 (= call!689847 (maxBigInt!0 (ite c!1389732 call!689849 call!689850) (ite c!1389732 call!689850 call!689849)))))

(declare-fun b!7522230 () Bool)

(assert (=> b!7522230 (= c!1389732 ((_ is Union!19787) (regOne!40087 expr!41)))))

(declare-fun e!4484095 () Int)

(assert (=> b!7522230 (= e!4484093 e!4484095)))

(declare-fun b!7522231 () Bool)

(assert (=> b!7522231 (= e!4484090 e!4484097)))

(declare-fun res!3015216 () Bool)

(assert (=> b!7522231 (= res!3015216 (> lt!2638606 call!689852))))

(assert (=> b!7522231 (=> (not res!3015216) (not e!4484097))))

(declare-fun b!7522217 () Bool)

(assert (=> b!7522217 (= e!4484096 e!4484093)))

(declare-fun c!1389734 () Bool)

(assert (=> b!7522217 (= c!1389734 ((_ is Star!19787) (regOne!40087 expr!41)))))

(declare-fun d!2309095 () Bool)

(assert (=> d!2309095 e!4484099))

(declare-fun res!3015217 () Bool)

(assert (=> d!2309095 (=> (not res!3015217) (not e!4484099))))

(assert (=> d!2309095 (= res!3015217 (> lt!2638606 0))))

(assert (=> d!2309095 (= lt!2638606 e!4484096)))

(declare-fun c!1389728 () Bool)

(assert (=> d!2309095 (= c!1389728 ((_ is ElementMatch!19787) (regOne!40087 expr!41)))))

(assert (=> d!2309095 (= (regexDepth!447 (regOne!40087 expr!41)) lt!2638606)))

(declare-fun bm!689846 () Bool)

(assert (=> bm!689846 (= call!689849 call!689846)))

(declare-fun b!7522232 () Bool)

(assert (=> b!7522232 (= e!4484095 e!4484094)))

(declare-fun c!1389729 () Bool)

(assert (=> b!7522232 (= c!1389729 ((_ is Concat!28632) (regOne!40087 expr!41)))))

(declare-fun b!7522233 () Bool)

(assert (=> b!7522233 (= e!4484095 (+ 1 call!689847))))

(declare-fun bm!689847 () Bool)

(assert (=> bm!689847 (= call!689846 (regexDepth!447 (ite c!1389734 (reg!20116 (regOne!40087 expr!41)) (ite c!1389732 (regOne!40087 (regOne!40087 expr!41)) (regTwo!40086 (regOne!40087 expr!41))))))))

(assert (= (and d!2309095 c!1389728) b!7522225))

(assert (= (and d!2309095 (not c!1389728)) b!7522217))

(assert (= (and b!7522217 c!1389734) b!7522226))

(assert (= (and b!7522217 (not c!1389734)) b!7522230))

(assert (= (and b!7522230 c!1389732) b!7522233))

(assert (= (and b!7522230 (not c!1389732)) b!7522232))

(assert (= (and b!7522232 c!1389729) b!7522222))

(assert (= (and b!7522232 (not c!1389729)) b!7522229))

(assert (= (or b!7522233 b!7522222) bm!689846))

(assert (= (or b!7522233 b!7522222) bm!689842))

(assert (= (or b!7522233 b!7522222) bm!689845))

(assert (= (or b!7522226 bm!689846) bm!689847))

(assert (= (and d!2309095 res!3015217) b!7522220))

(assert (= (and b!7522220 c!1389730) b!7522231))

(assert (= (and b!7522220 (not c!1389730)) b!7522223))

(assert (= (and b!7522231 res!3015216) b!7522228))

(assert (= (and b!7522223 c!1389733) b!7522221))

(assert (= (and b!7522223 (not c!1389733)) b!7522227))

(assert (= (and b!7522221 res!3015218) b!7522219))

(assert (= (and b!7522227 c!1389731) b!7522224))

(assert (= (and b!7522227 (not c!1389731)) b!7522218))

(assert (= (or b!7522219 b!7522224) bm!689844))

(assert (= (or b!7522231 b!7522221) bm!689841))

(assert (= (or b!7522228 bm!689844) bm!689843))

(declare-fun m!8100538 () Bool)

(assert (=> bm!689842 m!8100538))

(declare-fun m!8100542 () Bool)

(assert (=> bm!689845 m!8100542))

(declare-fun m!8100546 () Bool)

(assert (=> bm!689843 m!8100546))

(declare-fun m!8100550 () Bool)

(assert (=> bm!689841 m!8100550))

(declare-fun m!8100554 () Bool)

(assert (=> bm!689847 m!8100554))

(assert (=> b!7522075 d!2309095))

(declare-fun b!7522258 () Bool)

(declare-fun e!4484113 () Bool)

(declare-fun lt!2638608 () Int)

(assert (=> b!7522258 (= e!4484113 (= lt!2638608 1))))

(declare-fun b!7522259 () Bool)

(declare-fun e!4484114 () Bool)

(declare-fun call!689865 () Int)

(assert (=> b!7522259 (= e!4484114 (> lt!2638608 call!689865))))

(declare-fun b!7522260 () Bool)

(declare-fun e!4484121 () Bool)

(declare-fun e!4484110 () Bool)

(assert (=> b!7522260 (= e!4484121 e!4484110)))

(declare-fun c!1389744 () Bool)

(assert (=> b!7522260 (= c!1389744 ((_ is Union!19787) expr!41))))

(declare-fun bm!689855 () Bool)

(declare-fun call!689866 () Int)

(assert (=> bm!689855 (= call!689866 (regexDepth!447 (ite c!1389744 (regOne!40087 expr!41) (regOne!40086 expr!41))))))

(declare-fun bm!689856 () Bool)

(declare-fun call!689864 () Int)

(declare-fun c!1389746 () Bool)

(assert (=> bm!689856 (= call!689864 (regexDepth!447 (ite c!1389746 (regTwo!40087 expr!41) (regOne!40086 expr!41))))))

(declare-fun bm!689857 () Bool)

(declare-fun call!689862 () Int)

(declare-fun c!1389747 () Bool)

(assert (=> bm!689857 (= call!689862 (regexDepth!447 (ite c!1389744 (regTwo!40087 expr!41) (ite c!1389747 (regTwo!40086 expr!41) (reg!20116 expr!41)))))))

(declare-fun b!7522261 () Bool)

(declare-fun res!3015224 () Bool)

(assert (=> b!7522261 (=> (not res!3015224) (not e!4484114))))

(assert (=> b!7522261 (= res!3015224 (> lt!2638608 call!689866))))

(declare-fun e!4484120 () Bool)

(assert (=> b!7522261 (= e!4484120 e!4484114)))

(declare-fun b!7522262 () Bool)

(declare-fun e!4484116 () Int)

(declare-fun call!689861 () Int)

(assert (=> b!7522262 (= e!4484116 (+ 1 call!689861))))

(declare-fun b!7522263 () Bool)

(assert (=> b!7522263 (= e!4484110 e!4484120)))

(assert (=> b!7522263 (= c!1389747 ((_ is Concat!28632) expr!41))))

(declare-fun b!7522264 () Bool)

(assert (=> b!7522264 (= e!4484113 (> lt!2638608 call!689865))))

(declare-fun b!7522265 () Bool)

(declare-fun e!4484118 () Int)

(assert (=> b!7522265 (= e!4484118 1)))

(declare-fun b!7522266 () Bool)

(declare-fun e!4484115 () Int)

(declare-fun call!689860 () Int)

(assert (=> b!7522266 (= e!4484115 (+ 1 call!689860))))

(declare-fun bm!689858 () Bool)

(assert (=> bm!689858 (= call!689865 call!689862)))

(declare-fun b!7522267 () Bool)

(declare-fun c!1389745 () Bool)

(assert (=> b!7522267 (= c!1389745 ((_ is Star!19787) expr!41))))

(assert (=> b!7522267 (= e!4484120 e!4484113)))

(declare-fun b!7522268 () Bool)

(declare-fun e!4484119 () Bool)

(assert (=> b!7522268 (= e!4484119 (> lt!2638608 call!689862))))

(declare-fun b!7522269 () Bool)

(assert (=> b!7522269 (= e!4484116 1)))

(declare-fun bm!689859 () Bool)

(declare-fun call!689863 () Int)

(assert (=> bm!689859 (= call!689861 (maxBigInt!0 (ite c!1389746 call!689863 call!689864) (ite c!1389746 call!689864 call!689863)))))

(declare-fun b!7522270 () Bool)

(assert (=> b!7522270 (= c!1389746 ((_ is Union!19787) expr!41))))

(declare-fun e!4484117 () Int)

(assert (=> b!7522270 (= e!4484115 e!4484117)))

(declare-fun b!7522271 () Bool)

(assert (=> b!7522271 (= e!4484110 e!4484119)))

(declare-fun res!3015222 () Bool)

(assert (=> b!7522271 (= res!3015222 (> lt!2638608 call!689866))))

(assert (=> b!7522271 (=> (not res!3015222) (not e!4484119))))

(declare-fun b!7522255 () Bool)

(assert (=> b!7522255 (= e!4484118 e!4484115)))

(declare-fun c!1389748 () Bool)

(assert (=> b!7522255 (= c!1389748 ((_ is Star!19787) expr!41))))

(declare-fun d!2309099 () Bool)

(assert (=> d!2309099 e!4484121))

(declare-fun res!3015223 () Bool)

(assert (=> d!2309099 (=> (not res!3015223) (not e!4484121))))

(assert (=> d!2309099 (= res!3015223 (> lt!2638608 0))))

(assert (=> d!2309099 (= lt!2638608 e!4484118)))

(declare-fun c!1389742 () Bool)

(assert (=> d!2309099 (= c!1389742 ((_ is ElementMatch!19787) expr!41))))

(assert (=> d!2309099 (= (regexDepth!447 expr!41) lt!2638608)))

(declare-fun bm!689860 () Bool)

(assert (=> bm!689860 (= call!689863 call!689860)))

(declare-fun b!7522272 () Bool)

(assert (=> b!7522272 (= e!4484117 e!4484116)))

(declare-fun c!1389743 () Bool)

(assert (=> b!7522272 (= c!1389743 ((_ is Concat!28632) expr!41))))

(declare-fun b!7522273 () Bool)

(assert (=> b!7522273 (= e!4484117 (+ 1 call!689861))))

(declare-fun bm!689861 () Bool)

(assert (=> bm!689861 (= call!689860 (regexDepth!447 (ite c!1389748 (reg!20116 expr!41) (ite c!1389746 (regOne!40087 expr!41) (regTwo!40086 expr!41)))))))

(assert (= (and d!2309099 c!1389742) b!7522265))

(assert (= (and d!2309099 (not c!1389742)) b!7522255))

(assert (= (and b!7522255 c!1389748) b!7522266))

(assert (= (and b!7522255 (not c!1389748)) b!7522270))

(assert (= (and b!7522270 c!1389746) b!7522273))

(assert (= (and b!7522270 (not c!1389746)) b!7522272))

(assert (= (and b!7522272 c!1389743) b!7522262))

(assert (= (and b!7522272 (not c!1389743)) b!7522269))

(assert (= (or b!7522273 b!7522262) bm!689860))

(assert (= (or b!7522273 b!7522262) bm!689856))

(assert (= (or b!7522273 b!7522262) bm!689859))

(assert (= (or b!7522266 bm!689860) bm!689861))

(assert (= (and d!2309099 res!3015223) b!7522260))

(assert (= (and b!7522260 c!1389744) b!7522271))

(assert (= (and b!7522260 (not c!1389744)) b!7522263))

(assert (= (and b!7522271 res!3015222) b!7522268))

(assert (= (and b!7522263 c!1389747) b!7522261))

(assert (= (and b!7522263 (not c!1389747)) b!7522267))

(assert (= (and b!7522261 res!3015224) b!7522259))

(assert (= (and b!7522267 c!1389745) b!7522264))

(assert (= (and b!7522267 (not c!1389745)) b!7522258))

(assert (= (or b!7522259 b!7522264) bm!689858))

(assert (= (or b!7522271 b!7522261) bm!689855))

(assert (= (or b!7522268 bm!689858) bm!689857))

(declare-fun m!8100556 () Bool)

(assert (=> bm!689856 m!8100556))

(declare-fun m!8100558 () Bool)

(assert (=> bm!689859 m!8100558))

(declare-fun m!8100560 () Bool)

(assert (=> bm!689857 m!8100560))

(declare-fun m!8100562 () Bool)

(assert (=> bm!689855 m!8100562))

(declare-fun m!8100564 () Bool)

(assert (=> bm!689861 m!8100564))

(assert (=> b!7522075 d!2309099))

(declare-fun b!7522308 () Bool)

(declare-fun e!4484129 () Bool)

(assert (=> b!7522308 (= e!4484129 tp_is_empty!49929)))

(declare-fun b!7522309 () Bool)

(declare-fun tp!2185189 () Bool)

(declare-fun tp!2185188 () Bool)

(assert (=> b!7522309 (= e!4484129 (and tp!2185189 tp!2185188))))

(assert (=> b!7522074 (= tp!2185135 e!4484129)))

(declare-fun b!7522310 () Bool)

(declare-fun tp!2185186 () Bool)

(assert (=> b!7522310 (= e!4484129 tp!2185186)))

(declare-fun b!7522311 () Bool)

(declare-fun tp!2185187 () Bool)

(declare-fun tp!2185185 () Bool)

(assert (=> b!7522311 (= e!4484129 (and tp!2185187 tp!2185185))))

(assert (= (and b!7522074 ((_ is ElementMatch!19787) (regOne!40086 expr!41))) b!7522308))

(assert (= (and b!7522074 ((_ is Concat!28632) (regOne!40086 expr!41))) b!7522309))

(assert (= (and b!7522074 ((_ is Star!19787) (regOne!40086 expr!41))) b!7522310))

(assert (= (and b!7522074 ((_ is Union!19787) (regOne!40086 expr!41))) b!7522311))

(declare-fun b!7522312 () Bool)

(declare-fun e!4484130 () Bool)

(assert (=> b!7522312 (= e!4484130 tp_is_empty!49929)))

(declare-fun b!7522313 () Bool)

(declare-fun tp!2185194 () Bool)

(declare-fun tp!2185193 () Bool)

(assert (=> b!7522313 (= e!4484130 (and tp!2185194 tp!2185193))))

(assert (=> b!7522074 (= tp!2185139 e!4484130)))

(declare-fun b!7522314 () Bool)

(declare-fun tp!2185191 () Bool)

(assert (=> b!7522314 (= e!4484130 tp!2185191)))

(declare-fun b!7522315 () Bool)

(declare-fun tp!2185192 () Bool)

(declare-fun tp!2185190 () Bool)

(assert (=> b!7522315 (= e!4484130 (and tp!2185192 tp!2185190))))

(assert (= (and b!7522074 ((_ is ElementMatch!19787) (regTwo!40086 expr!41))) b!7522312))

(assert (= (and b!7522074 ((_ is Concat!28632) (regTwo!40086 expr!41))) b!7522313))

(assert (= (and b!7522074 ((_ is Star!19787) (regTwo!40086 expr!41))) b!7522314))

(assert (= (and b!7522074 ((_ is Union!19787) (regTwo!40086 expr!41))) b!7522315))

(declare-fun b!7522316 () Bool)

(declare-fun e!4484131 () Bool)

(assert (=> b!7522316 (= e!4484131 tp_is_empty!49929)))

(declare-fun b!7522317 () Bool)

(declare-fun tp!2185199 () Bool)

(declare-fun tp!2185198 () Bool)

(assert (=> b!7522317 (= e!4484131 (and tp!2185199 tp!2185198))))

(assert (=> b!7522077 (= tp!2185136 e!4484131)))

(declare-fun b!7522318 () Bool)

(declare-fun tp!2185196 () Bool)

(assert (=> b!7522318 (= e!4484131 tp!2185196)))

(declare-fun b!7522319 () Bool)

(declare-fun tp!2185197 () Bool)

(declare-fun tp!2185195 () Bool)

(assert (=> b!7522319 (= e!4484131 (and tp!2185197 tp!2185195))))

(assert (= (and b!7522077 ((_ is ElementMatch!19787) (regOne!40087 expr!41))) b!7522316))

(assert (= (and b!7522077 ((_ is Concat!28632) (regOne!40087 expr!41))) b!7522317))

(assert (= (and b!7522077 ((_ is Star!19787) (regOne!40087 expr!41))) b!7522318))

(assert (= (and b!7522077 ((_ is Union!19787) (regOne!40087 expr!41))) b!7522319))

(declare-fun b!7522320 () Bool)

(declare-fun e!4484132 () Bool)

(assert (=> b!7522320 (= e!4484132 tp_is_empty!49929)))

(declare-fun b!7522321 () Bool)

(declare-fun tp!2185204 () Bool)

(declare-fun tp!2185203 () Bool)

(assert (=> b!7522321 (= e!4484132 (and tp!2185204 tp!2185203))))

(assert (=> b!7522077 (= tp!2185137 e!4484132)))

(declare-fun b!7522322 () Bool)

(declare-fun tp!2185201 () Bool)

(assert (=> b!7522322 (= e!4484132 tp!2185201)))

(declare-fun b!7522323 () Bool)

(declare-fun tp!2185202 () Bool)

(declare-fun tp!2185200 () Bool)

(assert (=> b!7522323 (= e!4484132 (and tp!2185202 tp!2185200))))

(assert (= (and b!7522077 ((_ is ElementMatch!19787) (regTwo!40087 expr!41))) b!7522320))

(assert (= (and b!7522077 ((_ is Concat!28632) (regTwo!40087 expr!41))) b!7522321))

(assert (= (and b!7522077 ((_ is Star!19787) (regTwo!40087 expr!41))) b!7522322))

(assert (= (and b!7522077 ((_ is Union!19787) (regTwo!40087 expr!41))) b!7522323))

(declare-fun b!7522324 () Bool)

(declare-fun e!4484133 () Bool)

(assert (=> b!7522324 (= e!4484133 tp_is_empty!49929)))

(declare-fun b!7522325 () Bool)

(declare-fun tp!2185209 () Bool)

(declare-fun tp!2185208 () Bool)

(assert (=> b!7522325 (= e!4484133 (and tp!2185209 tp!2185208))))

(assert (=> b!7522076 (= tp!2185138 e!4484133)))

(declare-fun b!7522326 () Bool)

(declare-fun tp!2185206 () Bool)

(assert (=> b!7522326 (= e!4484133 tp!2185206)))

(declare-fun b!7522327 () Bool)

(declare-fun tp!2185207 () Bool)

(declare-fun tp!2185205 () Bool)

(assert (=> b!7522327 (= e!4484133 (and tp!2185207 tp!2185205))))

(assert (= (and b!7522076 ((_ is ElementMatch!19787) (reg!20116 expr!41))) b!7522324))

(assert (= (and b!7522076 ((_ is Concat!28632) (reg!20116 expr!41))) b!7522325))

(assert (= (and b!7522076 ((_ is Star!19787) (reg!20116 expr!41))) b!7522326))

(assert (= (and b!7522076 ((_ is Union!19787) (reg!20116 expr!41))) b!7522327))

(check-sat (not bm!689847) (not bm!689845) (not b!7522318) (not b!7522327) tp_is_empty!49929 (not bm!689861) (not b!7522323) (not b!7522311) (not bm!689842) (not b!7522315) (not bm!689859) (not b!7522325) (not bm!689857) (not b!7522319) (not bm!689803) (not bm!689804) (not bm!689843) (not bm!689856) (not b!7522322) (not b!7522125) (not bm!689855) (not b!7522310) (not b!7522313) (not b!7522309) (not bm!689841) (not b!7522321) (not b!7522314) (not b!7522317) (not b!7522326))
(check-sat)
