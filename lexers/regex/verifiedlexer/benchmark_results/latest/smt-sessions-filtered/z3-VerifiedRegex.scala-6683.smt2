; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350686 () Bool)

(assert start!350686)

(declare-fun res!1513296 () Bool)

(declare-fun e!2305164 () Bool)

(assert (=> start!350686 (=> (not res!1513296) (not e!2305164))))

(declare-datatypes ((C!21996 0))(
  ( (C!21997 (val!13046 Int)) )
))
(declare-datatypes ((Regex!10905 0))(
  ( (ElementMatch!10905 (c!644305 C!21996)) (Concat!17176 (regOne!22322 Regex!10905) (regTwo!22322 Regex!10905)) (EmptyExpr!10905) (Star!10905 (reg!11234 Regex!10905)) (EmptyLang!10905) (Union!10905 (regOne!22323 Regex!10905) (regTwo!22323 Regex!10905)) )
))
(declare-fun r!26968 () Regex!10905)

(declare-fun validRegex!5012 (Regex!10905) Bool)

(assert (=> start!350686 (= res!1513296 (validRegex!5012 r!26968))))

(assert (=> start!350686 e!2305164))

(declare-fun e!2305163 () Bool)

(assert (=> start!350686 e!2305163))

(declare-fun tp_is_empty!18825 () Bool)

(assert (=> start!350686 tp_is_empty!18825))

(declare-fun b!3724441 () Bool)

(declare-fun res!1513295 () Bool)

(assert (=> b!3724441 (=> (not res!1513295) (not e!2305164))))

(get-info :version)

(assert (=> b!3724441 (= res!1513295 (and (not ((_ is EmptyExpr!10905) r!26968)) (not ((_ is EmptyLang!10905) r!26968)) (not ((_ is ElementMatch!10905) r!26968)) ((_ is Union!10905) r!26968)))))

(declare-fun b!3724442 () Bool)

(declare-fun tp!1132882 () Bool)

(declare-fun tp!1132884 () Bool)

(assert (=> b!3724442 (= e!2305163 (and tp!1132882 tp!1132884))))

(declare-fun b!3724443 () Bool)

(declare-fun res!1513293 () Bool)

(assert (=> b!3724443 (=> (not res!1513293) (not e!2305164))))

(assert (=> b!3724443 (= res!1513293 (validRegex!5012 (regOne!22323 r!26968)))))

(declare-fun b!3724444 () Bool)

(declare-fun tp!1132880 () Bool)

(declare-fun tp!1132883 () Bool)

(assert (=> b!3724444 (= e!2305163 (and tp!1132880 tp!1132883))))

(declare-fun b!3724445 () Bool)

(declare-fun cNot!42 () C!21996)

(declare-datatypes ((List!39786 0))(
  ( (Nil!39662) (Cons!39662 (h!45082 C!21996) (t!302469 List!39786)) )
))
(declare-fun contains!7998 (List!39786 C!21996) Bool)

(declare-fun usedCharacters!1168 (Regex!10905) List!39786)

(assert (=> b!3724445 (= e!2305164 (contains!7998 (usedCharacters!1168 (regOne!22323 r!26968)) cNot!42))))

(declare-fun b!3724446 () Bool)

(declare-fun res!1513294 () Bool)

(assert (=> b!3724446 (=> (not res!1513294) (not e!2305164))))

(assert (=> b!3724446 (= res!1513294 (not (contains!7998 (usedCharacters!1168 r!26968) cNot!42)))))

(declare-fun b!3724447 () Bool)

(assert (=> b!3724447 (= e!2305163 tp_is_empty!18825)))

(declare-fun b!3724448 () Bool)

(declare-fun tp!1132881 () Bool)

(assert (=> b!3724448 (= e!2305163 tp!1132881)))

(assert (= (and start!350686 res!1513296) b!3724446))

(assert (= (and b!3724446 res!1513294) b!3724441))

(assert (= (and b!3724441 res!1513295) b!3724443))

(assert (= (and b!3724443 res!1513293) b!3724445))

(assert (= (and start!350686 ((_ is ElementMatch!10905) r!26968)) b!3724447))

(assert (= (and start!350686 ((_ is Concat!17176) r!26968)) b!3724444))

(assert (= (and start!350686 ((_ is Star!10905) r!26968)) b!3724448))

(assert (= (and start!350686 ((_ is Union!10905) r!26968)) b!3724442))

(declare-fun m!4227061 () Bool)

(assert (=> start!350686 m!4227061))

(declare-fun m!4227063 () Bool)

(assert (=> b!3724443 m!4227063))

(declare-fun m!4227065 () Bool)

(assert (=> b!3724445 m!4227065))

(assert (=> b!3724445 m!4227065))

(declare-fun m!4227067 () Bool)

(assert (=> b!3724445 m!4227067))

(declare-fun m!4227069 () Bool)

(assert (=> b!3724446 m!4227069))

(assert (=> b!3724446 m!4227069))

(declare-fun m!4227071 () Bool)

(assert (=> b!3724446 m!4227071))

(check-sat tp_is_empty!18825 (not b!3724448) (not b!3724446) (not start!350686) (not b!3724444) (not b!3724443) (not b!3724442) (not b!3724445))
(check-sat)
(get-model)

(declare-fun d!1089664 () Bool)

(declare-fun lt!1298304 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5762 (List!39786) (InoxSet C!21996))

(assert (=> d!1089664 (= lt!1298304 (select (content!5762 (usedCharacters!1168 (regOne!22323 r!26968))) cNot!42))))

(declare-fun e!2305175 () Bool)

(assert (=> d!1089664 (= lt!1298304 e!2305175)))

(declare-fun res!1513308 () Bool)

(assert (=> d!1089664 (=> (not res!1513308) (not e!2305175))))

(assert (=> d!1089664 (= res!1513308 ((_ is Cons!39662) (usedCharacters!1168 (regOne!22323 r!26968))))))

(assert (=> d!1089664 (= (contains!7998 (usedCharacters!1168 (regOne!22323 r!26968)) cNot!42) lt!1298304)))

(declare-fun b!3724459 () Bool)

(declare-fun e!2305176 () Bool)

(assert (=> b!3724459 (= e!2305175 e!2305176)))

(declare-fun res!1513307 () Bool)

(assert (=> b!3724459 (=> res!1513307 e!2305176)))

(assert (=> b!3724459 (= res!1513307 (= (h!45082 (usedCharacters!1168 (regOne!22323 r!26968))) cNot!42))))

(declare-fun b!3724460 () Bool)

(assert (=> b!3724460 (= e!2305176 (contains!7998 (t!302469 (usedCharacters!1168 (regOne!22323 r!26968))) cNot!42))))

(assert (= (and d!1089664 res!1513308) b!3724459))

(assert (= (and b!3724459 (not res!1513307)) b!3724460))

(assert (=> d!1089664 m!4227065))

(declare-fun m!4227079 () Bool)

(assert (=> d!1089664 m!4227079))

(declare-fun m!4227081 () Bool)

(assert (=> d!1089664 m!4227081))

(declare-fun m!4227083 () Bool)

(assert (=> b!3724460 m!4227083))

(assert (=> b!3724445 d!1089664))

(declare-fun b!3724501 () Bool)

(declare-fun e!2305199 () List!39786)

(declare-fun call!271108 () List!39786)

(assert (=> b!3724501 (= e!2305199 call!271108)))

(declare-fun d!1089668 () Bool)

(declare-fun c!644327 () Bool)

(assert (=> d!1089668 (= c!644327 (or ((_ is EmptyExpr!10905) (regOne!22323 r!26968)) ((_ is EmptyLang!10905) (regOne!22323 r!26968))))))

(declare-fun e!2305197 () List!39786)

(assert (=> d!1089668 (= (usedCharacters!1168 (regOne!22323 r!26968)) e!2305197)))

(declare-fun call!271110 () List!39786)

(declare-fun bm!271102 () Bool)

(declare-fun call!271107 () List!39786)

(declare-fun c!644326 () Bool)

(declare-fun ++!9828 (List!39786 List!39786) List!39786)

(assert (=> bm!271102 (= call!271108 (++!9828 (ite c!644326 call!271107 call!271110) (ite c!644326 call!271110 call!271107)))))

(declare-fun call!271109 () List!39786)

(declare-fun c!644329 () Bool)

(declare-fun bm!271103 () Bool)

(assert (=> bm!271103 (= call!271109 (usedCharacters!1168 (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))))))

(declare-fun bm!271104 () Bool)

(assert (=> bm!271104 (= call!271107 call!271109)))

(declare-fun b!3724502 () Bool)

(declare-fun e!2305198 () List!39786)

(assert (=> b!3724502 (= e!2305198 e!2305199)))

(assert (=> b!3724502 (= c!644326 ((_ is Union!10905) (regOne!22323 r!26968)))))

(declare-fun bm!271105 () Bool)

(assert (=> bm!271105 (= call!271110 (usedCharacters!1168 (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))))))

(declare-fun b!3724503 () Bool)

(assert (=> b!3724503 (= c!644329 ((_ is Star!10905) (regOne!22323 r!26968)))))

(declare-fun e!2305200 () List!39786)

(assert (=> b!3724503 (= e!2305200 e!2305198)))

(declare-fun b!3724504 () Bool)

(assert (=> b!3724504 (= e!2305197 Nil!39662)))

(declare-fun b!3724505 () Bool)

(assert (=> b!3724505 (= e!2305198 call!271109)))

(declare-fun b!3724506 () Bool)

(assert (=> b!3724506 (= e!2305200 (Cons!39662 (c!644305 (regOne!22323 r!26968)) Nil!39662))))

(declare-fun b!3724507 () Bool)

(assert (=> b!3724507 (= e!2305199 call!271108)))

(declare-fun b!3724508 () Bool)

(assert (=> b!3724508 (= e!2305197 e!2305200)))

(declare-fun c!644328 () Bool)

(assert (=> b!3724508 (= c!644328 ((_ is ElementMatch!10905) (regOne!22323 r!26968)))))

(assert (= (and d!1089668 c!644327) b!3724504))

(assert (= (and d!1089668 (not c!644327)) b!3724508))

(assert (= (and b!3724508 c!644328) b!3724506))

(assert (= (and b!3724508 (not c!644328)) b!3724503))

(assert (= (and b!3724503 c!644329) b!3724505))

(assert (= (and b!3724503 (not c!644329)) b!3724502))

(assert (= (and b!3724502 c!644326) b!3724501))

(assert (= (and b!3724502 (not c!644326)) b!3724507))

(assert (= (or b!3724501 b!3724507) bm!271104))

(assert (= (or b!3724501 b!3724507) bm!271105))

(assert (= (or b!3724501 b!3724507) bm!271102))

(assert (= (or b!3724505 bm!271104) bm!271103))

(declare-fun m!4227091 () Bool)

(assert (=> bm!271102 m!4227091))

(declare-fun m!4227093 () Bool)

(assert (=> bm!271103 m!4227093))

(declare-fun m!4227095 () Bool)

(assert (=> bm!271105 m!4227095))

(assert (=> b!3724445 d!1089668))

(declare-fun d!1089672 () Bool)

(declare-fun lt!1298305 () Bool)

(assert (=> d!1089672 (= lt!1298305 (select (content!5762 (usedCharacters!1168 r!26968)) cNot!42))))

(declare-fun e!2305201 () Bool)

(assert (=> d!1089672 (= lt!1298305 e!2305201)))

(declare-fun res!1513310 () Bool)

(assert (=> d!1089672 (=> (not res!1513310) (not e!2305201))))

(assert (=> d!1089672 (= res!1513310 ((_ is Cons!39662) (usedCharacters!1168 r!26968)))))

(assert (=> d!1089672 (= (contains!7998 (usedCharacters!1168 r!26968) cNot!42) lt!1298305)))

(declare-fun b!3724509 () Bool)

(declare-fun e!2305202 () Bool)

(assert (=> b!3724509 (= e!2305201 e!2305202)))

(declare-fun res!1513309 () Bool)

(assert (=> b!3724509 (=> res!1513309 e!2305202)))

(assert (=> b!3724509 (= res!1513309 (= (h!45082 (usedCharacters!1168 r!26968)) cNot!42))))

(declare-fun b!3724510 () Bool)

(assert (=> b!3724510 (= e!2305202 (contains!7998 (t!302469 (usedCharacters!1168 r!26968)) cNot!42))))

(assert (= (and d!1089672 res!1513310) b!3724509))

(assert (= (and b!3724509 (not res!1513309)) b!3724510))

(assert (=> d!1089672 m!4227069))

(declare-fun m!4227097 () Bool)

(assert (=> d!1089672 m!4227097))

(declare-fun m!4227099 () Bool)

(assert (=> d!1089672 m!4227099))

(declare-fun m!4227101 () Bool)

(assert (=> b!3724510 m!4227101))

(assert (=> b!3724446 d!1089672))

(declare-fun b!3724511 () Bool)

(declare-fun e!2305205 () List!39786)

(declare-fun call!271112 () List!39786)

(assert (=> b!3724511 (= e!2305205 call!271112)))

(declare-fun d!1089674 () Bool)

(declare-fun c!644331 () Bool)

(assert (=> d!1089674 (= c!644331 (or ((_ is EmptyExpr!10905) r!26968) ((_ is EmptyLang!10905) r!26968)))))

(declare-fun e!2305203 () List!39786)

(assert (=> d!1089674 (= (usedCharacters!1168 r!26968) e!2305203)))

(declare-fun call!271114 () List!39786)

(declare-fun bm!271106 () Bool)

(declare-fun c!644330 () Bool)

(declare-fun call!271111 () List!39786)

(assert (=> bm!271106 (= call!271112 (++!9828 (ite c!644330 call!271111 call!271114) (ite c!644330 call!271114 call!271111)))))

(declare-fun call!271113 () List!39786)

(declare-fun bm!271107 () Bool)

(declare-fun c!644333 () Bool)

(assert (=> bm!271107 (= call!271113 (usedCharacters!1168 (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))))))

(declare-fun bm!271108 () Bool)

(assert (=> bm!271108 (= call!271111 call!271113)))

(declare-fun b!3724512 () Bool)

(declare-fun e!2305204 () List!39786)

(assert (=> b!3724512 (= e!2305204 e!2305205)))

(assert (=> b!3724512 (= c!644330 ((_ is Union!10905) r!26968))))

(declare-fun bm!271109 () Bool)

(assert (=> bm!271109 (= call!271114 (usedCharacters!1168 (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))))))

(declare-fun b!3724513 () Bool)

(assert (=> b!3724513 (= c!644333 ((_ is Star!10905) r!26968))))

(declare-fun e!2305206 () List!39786)

(assert (=> b!3724513 (= e!2305206 e!2305204)))

(declare-fun b!3724514 () Bool)

(assert (=> b!3724514 (= e!2305203 Nil!39662)))

(declare-fun b!3724515 () Bool)

(assert (=> b!3724515 (= e!2305204 call!271113)))

(declare-fun b!3724516 () Bool)

(assert (=> b!3724516 (= e!2305206 (Cons!39662 (c!644305 r!26968) Nil!39662))))

(declare-fun b!3724517 () Bool)

(assert (=> b!3724517 (= e!2305205 call!271112)))

(declare-fun b!3724518 () Bool)

(assert (=> b!3724518 (= e!2305203 e!2305206)))

(declare-fun c!644332 () Bool)

(assert (=> b!3724518 (= c!644332 ((_ is ElementMatch!10905) r!26968))))

(assert (= (and d!1089674 c!644331) b!3724514))

(assert (= (and d!1089674 (not c!644331)) b!3724518))

(assert (= (and b!3724518 c!644332) b!3724516))

(assert (= (and b!3724518 (not c!644332)) b!3724513))

(assert (= (and b!3724513 c!644333) b!3724515))

(assert (= (and b!3724513 (not c!644333)) b!3724512))

(assert (= (and b!3724512 c!644330) b!3724511))

(assert (= (and b!3724512 (not c!644330)) b!3724517))

(assert (= (or b!3724511 b!3724517) bm!271108))

(assert (= (or b!3724511 b!3724517) bm!271109))

(assert (= (or b!3724511 b!3724517) bm!271106))

(assert (= (or b!3724515 bm!271108) bm!271107))

(declare-fun m!4227103 () Bool)

(assert (=> bm!271106 m!4227103))

(declare-fun m!4227105 () Bool)

(assert (=> bm!271107 m!4227105))

(declare-fun m!4227107 () Bool)

(assert (=> bm!271109 m!4227107))

(assert (=> b!3724446 d!1089674))

(declare-fun bm!271128 () Bool)

(declare-fun call!271133 () Bool)

(declare-fun call!271134 () Bool)

(assert (=> bm!271128 (= call!271133 call!271134)))

(declare-fun b!3724573 () Bool)

(declare-fun e!2305251 () Bool)

(declare-fun e!2305254 () Bool)

(assert (=> b!3724573 (= e!2305251 e!2305254)))

(declare-fun res!1513345 () Bool)

(assert (=> b!3724573 (=> (not res!1513345) (not e!2305254))))

(assert (=> b!3724573 (= res!1513345 call!271133)))

(declare-fun b!3724574 () Bool)

(declare-fun call!271135 () Bool)

(assert (=> b!3724574 (= e!2305254 call!271135)))

(declare-fun b!3724575 () Bool)

(declare-fun res!1513343 () Bool)

(assert (=> b!3724575 (=> res!1513343 e!2305251)))

(assert (=> b!3724575 (= res!1513343 (not ((_ is Concat!17176) r!26968)))))

(declare-fun e!2305253 () Bool)

(assert (=> b!3724575 (= e!2305253 e!2305251)))

(declare-fun bm!271129 () Bool)

(declare-fun c!644346 () Bool)

(assert (=> bm!271129 (= call!271135 (validRegex!5012 (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))))))

(declare-fun d!1089676 () Bool)

(declare-fun res!1513344 () Bool)

(declare-fun e!2305255 () Bool)

(assert (=> d!1089676 (=> res!1513344 e!2305255)))

(assert (=> d!1089676 (= res!1513344 ((_ is ElementMatch!10905) r!26968))))

(assert (=> d!1089676 (= (validRegex!5012 r!26968) e!2305255)))

(declare-fun bm!271130 () Bool)

(declare-fun c!644347 () Bool)

(assert (=> bm!271130 (= call!271134 (validRegex!5012 (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))))))

(declare-fun b!3724576 () Bool)

(declare-fun e!2305250 () Bool)

(assert (=> b!3724576 (= e!2305250 call!271135)))

(declare-fun b!3724577 () Bool)

(declare-fun e!2305252 () Bool)

(assert (=> b!3724577 (= e!2305252 call!271134)))

(declare-fun b!3724578 () Bool)

(declare-fun res!1513341 () Bool)

(assert (=> b!3724578 (=> (not res!1513341) (not e!2305250))))

(assert (=> b!3724578 (= res!1513341 call!271133)))

(assert (=> b!3724578 (= e!2305253 e!2305250)))

(declare-fun b!3724579 () Bool)

(declare-fun e!2305249 () Bool)

(assert (=> b!3724579 (= e!2305249 e!2305253)))

(assert (=> b!3724579 (= c!644346 ((_ is Union!10905) r!26968))))

(declare-fun b!3724580 () Bool)

(assert (=> b!3724580 (= e!2305249 e!2305252)))

(declare-fun res!1513342 () Bool)

(declare-fun nullable!3813 (Regex!10905) Bool)

(assert (=> b!3724580 (= res!1513342 (not (nullable!3813 (reg!11234 r!26968))))))

(assert (=> b!3724580 (=> (not res!1513342) (not e!2305252))))

(declare-fun b!3724581 () Bool)

(assert (=> b!3724581 (= e!2305255 e!2305249)))

(assert (=> b!3724581 (= c!644347 ((_ is Star!10905) r!26968))))

(assert (= (and d!1089676 (not res!1513344)) b!3724581))

(assert (= (and b!3724581 c!644347) b!3724580))

(assert (= (and b!3724581 (not c!644347)) b!3724579))

(assert (= (and b!3724580 res!1513342) b!3724577))

(assert (= (and b!3724579 c!644346) b!3724578))

(assert (= (and b!3724579 (not c!644346)) b!3724575))

(assert (= (and b!3724578 res!1513341) b!3724576))

(assert (= (and b!3724575 (not res!1513343)) b!3724573))

(assert (= (and b!3724573 res!1513345) b!3724574))

(assert (= (or b!3724576 b!3724574) bm!271129))

(assert (= (or b!3724578 b!3724573) bm!271128))

(assert (= (or b!3724577 bm!271128) bm!271130))

(declare-fun m!4227127 () Bool)

(assert (=> bm!271129 m!4227127))

(declare-fun m!4227129 () Bool)

(assert (=> bm!271130 m!4227129))

(declare-fun m!4227131 () Bool)

(assert (=> b!3724580 m!4227131))

(assert (=> start!350686 d!1089676))

(declare-fun bm!271135 () Bool)

(declare-fun call!271140 () Bool)

(declare-fun call!271141 () Bool)

(assert (=> bm!271135 (= call!271140 call!271141)))

(declare-fun b!3724592 () Bool)

(declare-fun e!2305264 () Bool)

(declare-fun e!2305267 () Bool)

(assert (=> b!3724592 (= e!2305264 e!2305267)))

(declare-fun res!1513352 () Bool)

(assert (=> b!3724592 (=> (not res!1513352) (not e!2305267))))

(assert (=> b!3724592 (= res!1513352 call!271140)))

(declare-fun b!3724593 () Bool)

(declare-fun call!271142 () Bool)

(assert (=> b!3724593 (= e!2305267 call!271142)))

(declare-fun b!3724594 () Bool)

(declare-fun res!1513350 () Bool)

(assert (=> b!3724594 (=> res!1513350 e!2305264)))

(assert (=> b!3724594 (= res!1513350 (not ((_ is Concat!17176) (regOne!22323 r!26968))))))

(declare-fun e!2305266 () Bool)

(assert (=> b!3724594 (= e!2305266 e!2305264)))

(declare-fun bm!271136 () Bool)

(declare-fun c!644352 () Bool)

(assert (=> bm!271136 (= call!271142 (validRegex!5012 (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))))))

(declare-fun d!1089684 () Bool)

(declare-fun res!1513351 () Bool)

(declare-fun e!2305268 () Bool)

(assert (=> d!1089684 (=> res!1513351 e!2305268)))

(assert (=> d!1089684 (= res!1513351 ((_ is ElementMatch!10905) (regOne!22323 r!26968)))))

(assert (=> d!1089684 (= (validRegex!5012 (regOne!22323 r!26968)) e!2305268)))

(declare-fun bm!271137 () Bool)

(declare-fun c!644353 () Bool)

(assert (=> bm!271137 (= call!271141 (validRegex!5012 (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))))))

(declare-fun b!3724595 () Bool)

(declare-fun e!2305263 () Bool)

(assert (=> b!3724595 (= e!2305263 call!271142)))

(declare-fun b!3724596 () Bool)

(declare-fun e!2305265 () Bool)

(assert (=> b!3724596 (= e!2305265 call!271141)))

(declare-fun b!3724597 () Bool)

(declare-fun res!1513348 () Bool)

(assert (=> b!3724597 (=> (not res!1513348) (not e!2305263))))

(assert (=> b!3724597 (= res!1513348 call!271140)))

(assert (=> b!3724597 (= e!2305266 e!2305263)))

(declare-fun b!3724598 () Bool)

(declare-fun e!2305262 () Bool)

(assert (=> b!3724598 (= e!2305262 e!2305266)))

(assert (=> b!3724598 (= c!644352 ((_ is Union!10905) (regOne!22323 r!26968)))))

(declare-fun b!3724599 () Bool)

(assert (=> b!3724599 (= e!2305262 e!2305265)))

(declare-fun res!1513349 () Bool)

(assert (=> b!3724599 (= res!1513349 (not (nullable!3813 (reg!11234 (regOne!22323 r!26968)))))))

(assert (=> b!3724599 (=> (not res!1513349) (not e!2305265))))

(declare-fun b!3724600 () Bool)

(assert (=> b!3724600 (= e!2305268 e!2305262)))

(assert (=> b!3724600 (= c!644353 ((_ is Star!10905) (regOne!22323 r!26968)))))

(assert (= (and d!1089684 (not res!1513351)) b!3724600))

(assert (= (and b!3724600 c!644353) b!3724599))

(assert (= (and b!3724600 (not c!644353)) b!3724598))

(assert (= (and b!3724599 res!1513349) b!3724596))

(assert (= (and b!3724598 c!644352) b!3724597))

(assert (= (and b!3724598 (not c!644352)) b!3724594))

(assert (= (and b!3724597 res!1513348) b!3724595))

(assert (= (and b!3724594 (not res!1513350)) b!3724592))

(assert (= (and b!3724592 res!1513352) b!3724593))

(assert (= (or b!3724595 b!3724593) bm!271136))

(assert (= (or b!3724597 b!3724592) bm!271135))

(assert (= (or b!3724596 bm!271135) bm!271137))

(declare-fun m!4227139 () Bool)

(assert (=> bm!271136 m!4227139))

(declare-fun m!4227141 () Bool)

(assert (=> bm!271137 m!4227141))

(declare-fun m!4227143 () Bool)

(assert (=> b!3724599 m!4227143))

(assert (=> b!3724443 d!1089684))

(declare-fun b!3724625 () Bool)

(declare-fun e!2305274 () Bool)

(assert (=> b!3724625 (= e!2305274 tp_is_empty!18825)))

(declare-fun b!3724626 () Bool)

(declare-fun tp!1132913 () Bool)

(declare-fun tp!1132912 () Bool)

(assert (=> b!3724626 (= e!2305274 (and tp!1132913 tp!1132912))))

(declare-fun b!3724628 () Bool)

(declare-fun tp!1132910 () Bool)

(declare-fun tp!1132914 () Bool)

(assert (=> b!3724628 (= e!2305274 (and tp!1132910 tp!1132914))))

(assert (=> b!3724442 (= tp!1132882 e!2305274)))

(declare-fun b!3724627 () Bool)

(declare-fun tp!1132911 () Bool)

(assert (=> b!3724627 (= e!2305274 tp!1132911)))

(assert (= (and b!3724442 ((_ is ElementMatch!10905) (regOne!22323 r!26968))) b!3724625))

(assert (= (and b!3724442 ((_ is Concat!17176) (regOne!22323 r!26968))) b!3724626))

(assert (= (and b!3724442 ((_ is Star!10905) (regOne!22323 r!26968))) b!3724627))

(assert (= (and b!3724442 ((_ is Union!10905) (regOne!22323 r!26968))) b!3724628))

(declare-fun b!3724633 () Bool)

(declare-fun e!2305276 () Bool)

(assert (=> b!3724633 (= e!2305276 tp_is_empty!18825)))

(declare-fun b!3724634 () Bool)

(declare-fun tp!1132923 () Bool)

(declare-fun tp!1132922 () Bool)

(assert (=> b!3724634 (= e!2305276 (and tp!1132923 tp!1132922))))

(declare-fun b!3724636 () Bool)

(declare-fun tp!1132920 () Bool)

(declare-fun tp!1132924 () Bool)

(assert (=> b!3724636 (= e!2305276 (and tp!1132920 tp!1132924))))

(assert (=> b!3724442 (= tp!1132884 e!2305276)))

(declare-fun b!3724635 () Bool)

(declare-fun tp!1132921 () Bool)

(assert (=> b!3724635 (= e!2305276 tp!1132921)))

(assert (= (and b!3724442 ((_ is ElementMatch!10905) (regTwo!22323 r!26968))) b!3724633))

(assert (= (and b!3724442 ((_ is Concat!17176) (regTwo!22323 r!26968))) b!3724634))

(assert (= (and b!3724442 ((_ is Star!10905) (regTwo!22323 r!26968))) b!3724635))

(assert (= (and b!3724442 ((_ is Union!10905) (regTwo!22323 r!26968))) b!3724636))

(declare-fun b!3724641 () Bool)

(declare-fun e!2305278 () Bool)

(assert (=> b!3724641 (= e!2305278 tp_is_empty!18825)))

(declare-fun b!3724642 () Bool)

(declare-fun tp!1132933 () Bool)

(declare-fun tp!1132932 () Bool)

(assert (=> b!3724642 (= e!2305278 (and tp!1132933 tp!1132932))))

(declare-fun b!3724644 () Bool)

(declare-fun tp!1132930 () Bool)

(declare-fun tp!1132934 () Bool)

(assert (=> b!3724644 (= e!2305278 (and tp!1132930 tp!1132934))))

(assert (=> b!3724448 (= tp!1132881 e!2305278)))

(declare-fun b!3724643 () Bool)

(declare-fun tp!1132931 () Bool)

(assert (=> b!3724643 (= e!2305278 tp!1132931)))

(assert (= (and b!3724448 ((_ is ElementMatch!10905) (reg!11234 r!26968))) b!3724641))

(assert (= (and b!3724448 ((_ is Concat!17176) (reg!11234 r!26968))) b!3724642))

(assert (= (and b!3724448 ((_ is Star!10905) (reg!11234 r!26968))) b!3724643))

(assert (= (and b!3724448 ((_ is Union!10905) (reg!11234 r!26968))) b!3724644))

(declare-fun b!3724649 () Bool)

(declare-fun e!2305280 () Bool)

(assert (=> b!3724649 (= e!2305280 tp_is_empty!18825)))

(declare-fun b!3724650 () Bool)

(declare-fun tp!1132944 () Bool)

(declare-fun tp!1132942 () Bool)

(assert (=> b!3724650 (= e!2305280 (and tp!1132944 tp!1132942))))

(declare-fun b!3724653 () Bool)

(declare-fun tp!1132940 () Bool)

(declare-fun tp!1132947 () Bool)

(assert (=> b!3724653 (= e!2305280 (and tp!1132940 tp!1132947))))

(assert (=> b!3724444 (= tp!1132880 e!2305280)))

(declare-fun b!3724651 () Bool)

(declare-fun tp!1132941 () Bool)

(assert (=> b!3724651 (= e!2305280 tp!1132941)))

(assert (= (and b!3724444 ((_ is ElementMatch!10905) (regOne!22322 r!26968))) b!3724649))

(assert (= (and b!3724444 ((_ is Concat!17176) (regOne!22322 r!26968))) b!3724650))

(assert (= (and b!3724444 ((_ is Star!10905) (regOne!22322 r!26968))) b!3724651))

(assert (= (and b!3724444 ((_ is Union!10905) (regOne!22322 r!26968))) b!3724653))

(declare-fun b!3724657 () Bool)

(declare-fun e!2305282 () Bool)

(assert (=> b!3724657 (= e!2305282 tp_is_empty!18825)))

(declare-fun b!3724658 () Bool)

(declare-fun tp!1132953 () Bool)

(declare-fun tp!1132952 () Bool)

(assert (=> b!3724658 (= e!2305282 (and tp!1132953 tp!1132952))))

(declare-fun b!3724660 () Bool)

(declare-fun tp!1132950 () Bool)

(declare-fun tp!1132954 () Bool)

(assert (=> b!3724660 (= e!2305282 (and tp!1132950 tp!1132954))))

(assert (=> b!3724444 (= tp!1132883 e!2305282)))

(declare-fun b!3724659 () Bool)

(declare-fun tp!1132951 () Bool)

(assert (=> b!3724659 (= e!2305282 tp!1132951)))

(assert (= (and b!3724444 ((_ is ElementMatch!10905) (regTwo!22322 r!26968))) b!3724657))

(assert (= (and b!3724444 ((_ is Concat!17176) (regTwo!22322 r!26968))) b!3724658))

(assert (= (and b!3724444 ((_ is Star!10905) (regTwo!22322 r!26968))) b!3724659))

(assert (= (and b!3724444 ((_ is Union!10905) (regTwo!22322 r!26968))) b!3724660))

(check-sat (not b!3724650) (not bm!271103) (not b!3724628) (not b!3724644) (not b!3724580) (not b!3724643) (not bm!271136) (not bm!271105) (not b!3724599) (not b!3724634) (not d!1089672) (not bm!271137) (not d!1089664) (not b!3724627) (not b!3724510) (not b!3724659) (not b!3724651) (not bm!271102) (not b!3724636) tp_is_empty!18825 (not b!3724626) (not b!3724660) (not bm!271129) (not bm!271106) (not bm!271130) (not b!3724635) (not bm!271109) (not bm!271107) (not b!3724653) (not b!3724642) (not b!3724658) (not b!3724460))
(check-sat)
(get-model)

(declare-fun d!1089686 () Bool)

(declare-fun lt!1298307 () Bool)

(assert (=> d!1089686 (= lt!1298307 (select (content!5762 (t!302469 (usedCharacters!1168 r!26968))) cNot!42))))

(declare-fun e!2305283 () Bool)

(assert (=> d!1089686 (= lt!1298307 e!2305283)))

(declare-fun res!1513354 () Bool)

(assert (=> d!1089686 (=> (not res!1513354) (not e!2305283))))

(assert (=> d!1089686 (= res!1513354 ((_ is Cons!39662) (t!302469 (usedCharacters!1168 r!26968))))))

(assert (=> d!1089686 (= (contains!7998 (t!302469 (usedCharacters!1168 r!26968)) cNot!42) lt!1298307)))

(declare-fun b!3724661 () Bool)

(declare-fun e!2305284 () Bool)

(assert (=> b!3724661 (= e!2305283 e!2305284)))

(declare-fun res!1513353 () Bool)

(assert (=> b!3724661 (=> res!1513353 e!2305284)))

(assert (=> b!3724661 (= res!1513353 (= (h!45082 (t!302469 (usedCharacters!1168 r!26968))) cNot!42))))

(declare-fun b!3724662 () Bool)

(assert (=> b!3724662 (= e!2305284 (contains!7998 (t!302469 (t!302469 (usedCharacters!1168 r!26968))) cNot!42))))

(assert (= (and d!1089686 res!1513354) b!3724661))

(assert (= (and b!3724661 (not res!1513353)) b!3724662))

(declare-fun m!4227145 () Bool)

(assert (=> d!1089686 m!4227145))

(declare-fun m!4227147 () Bool)

(assert (=> d!1089686 m!4227147))

(declare-fun m!4227149 () Bool)

(assert (=> b!3724662 m!4227149))

(assert (=> b!3724510 d!1089686))

(declare-fun b!3724663 () Bool)

(declare-fun e!2305287 () List!39786)

(declare-fun call!271144 () List!39786)

(assert (=> b!3724663 (= e!2305287 call!271144)))

(declare-fun d!1089688 () Bool)

(declare-fun c!644355 () Bool)

(assert (=> d!1089688 (= c!644355 (or ((_ is EmptyExpr!10905) (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))) ((_ is EmptyLang!10905) (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))))))))

(declare-fun e!2305285 () List!39786)

(assert (=> d!1089688 (= (usedCharacters!1168 (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))) e!2305285)))

(declare-fun c!644354 () Bool)

(declare-fun call!271143 () List!39786)

(declare-fun bm!271138 () Bool)

(declare-fun call!271146 () List!39786)

(assert (=> bm!271138 (= call!271144 (++!9828 (ite c!644354 call!271143 call!271146) (ite c!644354 call!271146 call!271143)))))

(declare-fun bm!271139 () Bool)

(declare-fun c!644357 () Bool)

(declare-fun call!271145 () List!39786)

(assert (=> bm!271139 (= call!271145 (usedCharacters!1168 (ite c!644357 (reg!11234 (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))) (ite c!644354 (regOne!22323 (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))) (regTwo!22322 (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))))))))))

(declare-fun bm!271140 () Bool)

(assert (=> bm!271140 (= call!271143 call!271145)))

(declare-fun b!3724664 () Bool)

(declare-fun e!2305286 () List!39786)

(assert (=> b!3724664 (= e!2305286 e!2305287)))

(assert (=> b!3724664 (= c!644354 ((_ is Union!10905) (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))))))

(declare-fun bm!271141 () Bool)

(assert (=> bm!271141 (= call!271146 (usedCharacters!1168 (ite c!644354 (regTwo!22323 (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))) (regOne!22322 (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))))))))

(declare-fun b!3724665 () Bool)

(assert (=> b!3724665 (= c!644357 ((_ is Star!10905) (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))))))

(declare-fun e!2305288 () List!39786)

(assert (=> b!3724665 (= e!2305288 e!2305286)))

(declare-fun b!3724666 () Bool)

(assert (=> b!3724666 (= e!2305285 Nil!39662)))

(declare-fun b!3724667 () Bool)

(assert (=> b!3724667 (= e!2305286 call!271145)))

(declare-fun b!3724668 () Bool)

(assert (=> b!3724668 (= e!2305288 (Cons!39662 (c!644305 (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))) Nil!39662))))

(declare-fun b!3724669 () Bool)

(assert (=> b!3724669 (= e!2305287 call!271144)))

(declare-fun b!3724670 () Bool)

(assert (=> b!3724670 (= e!2305285 e!2305288)))

(declare-fun c!644356 () Bool)

(assert (=> b!3724670 (= c!644356 ((_ is ElementMatch!10905) (ite c!644329 (reg!11234 (regOne!22323 r!26968)) (ite c!644326 (regOne!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))))))

(assert (= (and d!1089688 c!644355) b!3724666))

(assert (= (and d!1089688 (not c!644355)) b!3724670))

(assert (= (and b!3724670 c!644356) b!3724668))

(assert (= (and b!3724670 (not c!644356)) b!3724665))

(assert (= (and b!3724665 c!644357) b!3724667))

(assert (= (and b!3724665 (not c!644357)) b!3724664))

(assert (= (and b!3724664 c!644354) b!3724663))

(assert (= (and b!3724664 (not c!644354)) b!3724669))

(assert (= (or b!3724663 b!3724669) bm!271140))

(assert (= (or b!3724663 b!3724669) bm!271141))

(assert (= (or b!3724663 b!3724669) bm!271138))

(assert (= (or b!3724667 bm!271140) bm!271139))

(declare-fun m!4227151 () Bool)

(assert (=> bm!271138 m!4227151))

(declare-fun m!4227153 () Bool)

(assert (=> bm!271139 m!4227153))

(declare-fun m!4227155 () Bool)

(assert (=> bm!271141 m!4227155))

(assert (=> bm!271103 d!1089688))

(declare-fun d!1089690 () Bool)

(declare-fun nullableFct!1076 (Regex!10905) Bool)

(assert (=> d!1089690 (= (nullable!3813 (reg!11234 r!26968)) (nullableFct!1076 (reg!11234 r!26968)))))

(declare-fun bs!575018 () Bool)

(assert (= bs!575018 d!1089690))

(declare-fun m!4227157 () Bool)

(assert (=> bs!575018 m!4227157))

(assert (=> b!3724580 d!1089690))

(declare-fun b!3724679 () Bool)

(declare-fun e!2305293 () List!39786)

(assert (=> b!3724679 (= e!2305293 (ite c!644330 call!271114 call!271111))))

(declare-fun b!3724681 () Bool)

(declare-fun res!1513359 () Bool)

(declare-fun e!2305294 () Bool)

(assert (=> b!3724681 (=> (not res!1513359) (not e!2305294))))

(declare-fun lt!1298310 () List!39786)

(declare-fun size!30025 (List!39786) Int)

(assert (=> b!3724681 (= res!1513359 (= (size!30025 lt!1298310) (+ (size!30025 (ite c!644330 call!271111 call!271114)) (size!30025 (ite c!644330 call!271114 call!271111)))))))

(declare-fun d!1089692 () Bool)

(assert (=> d!1089692 e!2305294))

(declare-fun res!1513360 () Bool)

(assert (=> d!1089692 (=> (not res!1513360) (not e!2305294))))

(assert (=> d!1089692 (= res!1513360 (= (content!5762 lt!1298310) ((_ map or) (content!5762 (ite c!644330 call!271111 call!271114)) (content!5762 (ite c!644330 call!271114 call!271111)))))))

(assert (=> d!1089692 (= lt!1298310 e!2305293)))

(declare-fun c!644360 () Bool)

(assert (=> d!1089692 (= c!644360 ((_ is Nil!39662) (ite c!644330 call!271111 call!271114)))))

(assert (=> d!1089692 (= (++!9828 (ite c!644330 call!271111 call!271114) (ite c!644330 call!271114 call!271111)) lt!1298310)))

(declare-fun b!3724680 () Bool)

(assert (=> b!3724680 (= e!2305293 (Cons!39662 (h!45082 (ite c!644330 call!271111 call!271114)) (++!9828 (t!302469 (ite c!644330 call!271111 call!271114)) (ite c!644330 call!271114 call!271111))))))

(declare-fun b!3724682 () Bool)

(assert (=> b!3724682 (= e!2305294 (or (not (= (ite c!644330 call!271114 call!271111) Nil!39662)) (= lt!1298310 (ite c!644330 call!271111 call!271114))))))

(assert (= (and d!1089692 c!644360) b!3724679))

(assert (= (and d!1089692 (not c!644360)) b!3724680))

(assert (= (and d!1089692 res!1513360) b!3724681))

(assert (= (and b!3724681 res!1513359) b!3724682))

(declare-fun m!4227159 () Bool)

(assert (=> b!3724681 m!4227159))

(declare-fun m!4227161 () Bool)

(assert (=> b!3724681 m!4227161))

(declare-fun m!4227163 () Bool)

(assert (=> b!3724681 m!4227163))

(declare-fun m!4227165 () Bool)

(assert (=> d!1089692 m!4227165))

(declare-fun m!4227167 () Bool)

(assert (=> d!1089692 m!4227167))

(declare-fun m!4227169 () Bool)

(assert (=> d!1089692 m!4227169))

(declare-fun m!4227171 () Bool)

(assert (=> b!3724680 m!4227171))

(assert (=> bm!271106 d!1089692))

(declare-fun b!3724683 () Bool)

(declare-fun e!2305297 () List!39786)

(declare-fun call!271148 () List!39786)

(assert (=> b!3724683 (= e!2305297 call!271148)))

(declare-fun d!1089694 () Bool)

(declare-fun c!644362 () Bool)

(assert (=> d!1089694 (= c!644362 (or ((_ is EmptyExpr!10905) (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))) ((_ is EmptyLang!10905) (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968))))))))

(declare-fun e!2305295 () List!39786)

(assert (=> d!1089694 (= (usedCharacters!1168 (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))) e!2305295)))

(declare-fun c!644361 () Bool)

(declare-fun bm!271142 () Bool)

(declare-fun call!271150 () List!39786)

(declare-fun call!271147 () List!39786)

(assert (=> bm!271142 (= call!271148 (++!9828 (ite c!644361 call!271147 call!271150) (ite c!644361 call!271150 call!271147)))))

(declare-fun bm!271143 () Bool)

(declare-fun call!271149 () List!39786)

(declare-fun c!644364 () Bool)

(assert (=> bm!271143 (= call!271149 (usedCharacters!1168 (ite c!644364 (reg!11234 (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))) (ite c!644361 (regOne!22323 (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))) (regTwo!22322 (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968))))))))))

(declare-fun bm!271144 () Bool)

(assert (=> bm!271144 (= call!271147 call!271149)))

(declare-fun b!3724684 () Bool)

(declare-fun e!2305296 () List!39786)

(assert (=> b!3724684 (= e!2305296 e!2305297)))

(assert (=> b!3724684 (= c!644361 ((_ is Union!10905) (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))))))

(declare-fun bm!271145 () Bool)

(assert (=> bm!271145 (= call!271150 (usedCharacters!1168 (ite c!644361 (regTwo!22323 (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))) (regOne!22322 (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))))))))

(declare-fun b!3724685 () Bool)

(assert (=> b!3724685 (= c!644364 ((_ is Star!10905) (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))))))

(declare-fun e!2305298 () List!39786)

(assert (=> b!3724685 (= e!2305298 e!2305296)))

(declare-fun b!3724686 () Bool)

(assert (=> b!3724686 (= e!2305295 Nil!39662)))

(declare-fun b!3724687 () Bool)

(assert (=> b!3724687 (= e!2305296 call!271149)))

(declare-fun b!3724688 () Bool)

(assert (=> b!3724688 (= e!2305298 (Cons!39662 (c!644305 (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))) Nil!39662))))

(declare-fun b!3724689 () Bool)

(assert (=> b!3724689 (= e!2305297 call!271148)))

(declare-fun b!3724690 () Bool)

(assert (=> b!3724690 (= e!2305295 e!2305298)))

(declare-fun c!644363 () Bool)

(assert (=> b!3724690 (= c!644363 ((_ is ElementMatch!10905) (ite c!644333 (reg!11234 r!26968) (ite c!644330 (regOne!22323 r!26968) (regTwo!22322 r!26968)))))))

(assert (= (and d!1089694 c!644362) b!3724686))

(assert (= (and d!1089694 (not c!644362)) b!3724690))

(assert (= (and b!3724690 c!644363) b!3724688))

(assert (= (and b!3724690 (not c!644363)) b!3724685))

(assert (= (and b!3724685 c!644364) b!3724687))

(assert (= (and b!3724685 (not c!644364)) b!3724684))

(assert (= (and b!3724684 c!644361) b!3724683))

(assert (= (and b!3724684 (not c!644361)) b!3724689))

(assert (= (or b!3724683 b!3724689) bm!271144))

(assert (= (or b!3724683 b!3724689) bm!271145))

(assert (= (or b!3724683 b!3724689) bm!271142))

(assert (= (or b!3724687 bm!271144) bm!271143))

(declare-fun m!4227173 () Bool)

(assert (=> bm!271142 m!4227173))

(declare-fun m!4227175 () Bool)

(assert (=> bm!271143 m!4227175))

(declare-fun m!4227177 () Bool)

(assert (=> bm!271145 m!4227177))

(assert (=> bm!271107 d!1089694))

(declare-fun d!1089696 () Bool)

(declare-fun lt!1298311 () Bool)

(assert (=> d!1089696 (= lt!1298311 (select (content!5762 (t!302469 (usedCharacters!1168 (regOne!22323 r!26968)))) cNot!42))))

(declare-fun e!2305299 () Bool)

(assert (=> d!1089696 (= lt!1298311 e!2305299)))

(declare-fun res!1513362 () Bool)

(assert (=> d!1089696 (=> (not res!1513362) (not e!2305299))))

(assert (=> d!1089696 (= res!1513362 ((_ is Cons!39662) (t!302469 (usedCharacters!1168 (regOne!22323 r!26968)))))))

(assert (=> d!1089696 (= (contains!7998 (t!302469 (usedCharacters!1168 (regOne!22323 r!26968))) cNot!42) lt!1298311)))

(declare-fun b!3724691 () Bool)

(declare-fun e!2305300 () Bool)

(assert (=> b!3724691 (= e!2305299 e!2305300)))

(declare-fun res!1513361 () Bool)

(assert (=> b!3724691 (=> res!1513361 e!2305300)))

(assert (=> b!3724691 (= res!1513361 (= (h!45082 (t!302469 (usedCharacters!1168 (regOne!22323 r!26968)))) cNot!42))))

(declare-fun b!3724692 () Bool)

(assert (=> b!3724692 (= e!2305300 (contains!7998 (t!302469 (t!302469 (usedCharacters!1168 (regOne!22323 r!26968)))) cNot!42))))

(assert (= (and d!1089696 res!1513362) b!3724691))

(assert (= (and b!3724691 (not res!1513361)) b!3724692))

(declare-fun m!4227179 () Bool)

(assert (=> d!1089696 m!4227179))

(declare-fun m!4227181 () Bool)

(assert (=> d!1089696 m!4227181))

(declare-fun m!4227183 () Bool)

(assert (=> b!3724692 m!4227183))

(assert (=> b!3724460 d!1089696))

(declare-fun b!3724693 () Bool)

(declare-fun e!2305303 () List!39786)

(declare-fun call!271152 () List!39786)

(assert (=> b!3724693 (= e!2305303 call!271152)))

(declare-fun d!1089698 () Bool)

(declare-fun c!644366 () Bool)

(assert (=> d!1089698 (= c!644366 (or ((_ is EmptyExpr!10905) (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))) ((_ is EmptyLang!10905) (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))))))

(declare-fun e!2305301 () List!39786)

(assert (=> d!1089698 (= (usedCharacters!1168 (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))) e!2305301)))

(declare-fun call!271154 () List!39786)

(declare-fun bm!271146 () Bool)

(declare-fun call!271151 () List!39786)

(declare-fun c!644365 () Bool)

(assert (=> bm!271146 (= call!271152 (++!9828 (ite c!644365 call!271151 call!271154) (ite c!644365 call!271154 call!271151)))))

(declare-fun call!271153 () List!39786)

(declare-fun c!644368 () Bool)

(declare-fun bm!271147 () Bool)

(assert (=> bm!271147 (= call!271153 (usedCharacters!1168 (ite c!644368 (reg!11234 (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))) (ite c!644365 (regOne!22323 (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))) (regTwo!22322 (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))))))))

(declare-fun bm!271148 () Bool)

(assert (=> bm!271148 (= call!271151 call!271153)))

(declare-fun b!3724694 () Bool)

(declare-fun e!2305302 () List!39786)

(assert (=> b!3724694 (= e!2305302 e!2305303)))

(assert (=> b!3724694 (= c!644365 ((_ is Union!10905) (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))))))

(declare-fun bm!271149 () Bool)

(assert (=> bm!271149 (= call!271154 (usedCharacters!1168 (ite c!644365 (regTwo!22323 (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))) (regOne!22322 (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))))))))

(declare-fun b!3724695 () Bool)

(assert (=> b!3724695 (= c!644368 ((_ is Star!10905) (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))))))

(declare-fun e!2305304 () List!39786)

(assert (=> b!3724695 (= e!2305304 e!2305302)))

(declare-fun b!3724696 () Bool)

(assert (=> b!3724696 (= e!2305301 Nil!39662)))

(declare-fun b!3724697 () Bool)

(assert (=> b!3724697 (= e!2305302 call!271153)))

(declare-fun b!3724698 () Bool)

(assert (=> b!3724698 (= e!2305304 (Cons!39662 (c!644305 (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))) Nil!39662))))

(declare-fun b!3724699 () Bool)

(assert (=> b!3724699 (= e!2305303 call!271152)))

(declare-fun b!3724700 () Bool)

(assert (=> b!3724700 (= e!2305301 e!2305304)))

(declare-fun c!644367 () Bool)

(assert (=> b!3724700 (= c!644367 ((_ is ElementMatch!10905) (ite c!644326 (regTwo!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))))))

(assert (= (and d!1089698 c!644366) b!3724696))

(assert (= (and d!1089698 (not c!644366)) b!3724700))

(assert (= (and b!3724700 c!644367) b!3724698))

(assert (= (and b!3724700 (not c!644367)) b!3724695))

(assert (= (and b!3724695 c!644368) b!3724697))

(assert (= (and b!3724695 (not c!644368)) b!3724694))

(assert (= (and b!3724694 c!644365) b!3724693))

(assert (= (and b!3724694 (not c!644365)) b!3724699))

(assert (= (or b!3724693 b!3724699) bm!271148))

(assert (= (or b!3724693 b!3724699) bm!271149))

(assert (= (or b!3724693 b!3724699) bm!271146))

(assert (= (or b!3724697 bm!271148) bm!271147))

(declare-fun m!4227185 () Bool)

(assert (=> bm!271146 m!4227185))

(declare-fun m!4227187 () Bool)

(assert (=> bm!271147 m!4227187))

(declare-fun m!4227189 () Bool)

(assert (=> bm!271149 m!4227189))

(assert (=> bm!271105 d!1089698))

(declare-fun bm!271150 () Bool)

(declare-fun call!271155 () Bool)

(declare-fun call!271156 () Bool)

(assert (=> bm!271150 (= call!271155 call!271156)))

(declare-fun b!3724701 () Bool)

(declare-fun e!2305307 () Bool)

(declare-fun e!2305310 () Bool)

(assert (=> b!3724701 (= e!2305307 e!2305310)))

(declare-fun res!1513367 () Bool)

(assert (=> b!3724701 (=> (not res!1513367) (not e!2305310))))

(assert (=> b!3724701 (= res!1513367 call!271155)))

(declare-fun b!3724702 () Bool)

(declare-fun call!271157 () Bool)

(assert (=> b!3724702 (= e!2305310 call!271157)))

(declare-fun b!3724703 () Bool)

(declare-fun res!1513365 () Bool)

(assert (=> b!3724703 (=> res!1513365 e!2305307)))

(assert (=> b!3724703 (= res!1513365 (not ((_ is Concat!17176) (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))))))

(declare-fun e!2305309 () Bool)

(assert (=> b!3724703 (= e!2305309 e!2305307)))

(declare-fun c!644369 () Bool)

(declare-fun bm!271151 () Bool)

(assert (=> bm!271151 (= call!271157 (validRegex!5012 (ite c!644369 (regTwo!22323 (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))) (regTwo!22322 (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))))))))

(declare-fun d!1089700 () Bool)

(declare-fun res!1513366 () Bool)

(declare-fun e!2305311 () Bool)

(assert (=> d!1089700 (=> res!1513366 e!2305311)))

(assert (=> d!1089700 (= res!1513366 ((_ is ElementMatch!10905) (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))))))

(assert (=> d!1089700 (= (validRegex!5012 (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))) e!2305311)))

(declare-fun bm!271152 () Bool)

(declare-fun c!644370 () Bool)

(assert (=> bm!271152 (= call!271156 (validRegex!5012 (ite c!644370 (reg!11234 (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))) (ite c!644369 (regOne!22323 (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))) (regOne!22322 (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968))))))))))

(declare-fun b!3724704 () Bool)

(declare-fun e!2305306 () Bool)

(assert (=> b!3724704 (= e!2305306 call!271157)))

(declare-fun b!3724705 () Bool)

(declare-fun e!2305308 () Bool)

(assert (=> b!3724705 (= e!2305308 call!271156)))

(declare-fun b!3724706 () Bool)

(declare-fun res!1513363 () Bool)

(assert (=> b!3724706 (=> (not res!1513363) (not e!2305306))))

(assert (=> b!3724706 (= res!1513363 call!271155)))

(assert (=> b!3724706 (= e!2305309 e!2305306)))

(declare-fun b!3724707 () Bool)

(declare-fun e!2305305 () Bool)

(assert (=> b!3724707 (= e!2305305 e!2305309)))

(assert (=> b!3724707 (= c!644369 ((_ is Union!10905) (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))))))

(declare-fun b!3724708 () Bool)

(assert (=> b!3724708 (= e!2305305 e!2305308)))

(declare-fun res!1513364 () Bool)

(assert (=> b!3724708 (= res!1513364 (not (nullable!3813 (reg!11234 (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))))))))

(assert (=> b!3724708 (=> (not res!1513364) (not e!2305308))))

(declare-fun b!3724709 () Bool)

(assert (=> b!3724709 (= e!2305311 e!2305305)))

(assert (=> b!3724709 (= c!644370 ((_ is Star!10905) (ite c!644352 (regTwo!22323 (regOne!22323 r!26968)) (regTwo!22322 (regOne!22323 r!26968)))))))

(assert (= (and d!1089700 (not res!1513366)) b!3724709))

(assert (= (and b!3724709 c!644370) b!3724708))

(assert (= (and b!3724709 (not c!644370)) b!3724707))

(assert (= (and b!3724708 res!1513364) b!3724705))

(assert (= (and b!3724707 c!644369) b!3724706))

(assert (= (and b!3724707 (not c!644369)) b!3724703))

(assert (= (and b!3724706 res!1513363) b!3724704))

(assert (= (and b!3724703 (not res!1513365)) b!3724701))

(assert (= (and b!3724701 res!1513367) b!3724702))

(assert (= (or b!3724704 b!3724702) bm!271151))

(assert (= (or b!3724706 b!3724701) bm!271150))

(assert (= (or b!3724705 bm!271150) bm!271152))

(declare-fun m!4227191 () Bool)

(assert (=> bm!271151 m!4227191))

(declare-fun m!4227193 () Bool)

(assert (=> bm!271152 m!4227193))

(declare-fun m!4227195 () Bool)

(assert (=> b!3724708 m!4227195))

(assert (=> bm!271136 d!1089700))

(declare-fun d!1089702 () Bool)

(declare-fun c!644373 () Bool)

(assert (=> d!1089702 (= c!644373 ((_ is Nil!39662) (usedCharacters!1168 r!26968)))))

(declare-fun e!2305314 () (InoxSet C!21996))

(assert (=> d!1089702 (= (content!5762 (usedCharacters!1168 r!26968)) e!2305314)))

(declare-fun b!3724714 () Bool)

(assert (=> b!3724714 (= e!2305314 ((as const (Array C!21996 Bool)) false))))

(declare-fun b!3724715 () Bool)

(assert (=> b!3724715 (= e!2305314 ((_ map or) (store ((as const (Array C!21996 Bool)) false) (h!45082 (usedCharacters!1168 r!26968)) true) (content!5762 (t!302469 (usedCharacters!1168 r!26968)))))))

(assert (= (and d!1089702 c!644373) b!3724714))

(assert (= (and d!1089702 (not c!644373)) b!3724715))

(declare-fun m!4227197 () Bool)

(assert (=> b!3724715 m!4227197))

(assert (=> b!3724715 m!4227145))

(assert (=> d!1089672 d!1089702))

(declare-fun bm!271153 () Bool)

(declare-fun call!271158 () Bool)

(declare-fun call!271159 () Bool)

(assert (=> bm!271153 (= call!271158 call!271159)))

(declare-fun b!3724716 () Bool)

(declare-fun e!2305317 () Bool)

(declare-fun e!2305320 () Bool)

(assert (=> b!3724716 (= e!2305317 e!2305320)))

(declare-fun res!1513372 () Bool)

(assert (=> b!3724716 (=> (not res!1513372) (not e!2305320))))

(assert (=> b!3724716 (= res!1513372 call!271158)))

(declare-fun b!3724717 () Bool)

(declare-fun call!271160 () Bool)

(assert (=> b!3724717 (= e!2305320 call!271160)))

(declare-fun b!3724718 () Bool)

(declare-fun res!1513370 () Bool)

(assert (=> b!3724718 (=> res!1513370 e!2305317)))

(assert (=> b!3724718 (= res!1513370 (not ((_ is Concat!17176) (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))))))))

(declare-fun e!2305319 () Bool)

(assert (=> b!3724718 (= e!2305319 e!2305317)))

(declare-fun bm!271154 () Bool)

(declare-fun c!644374 () Bool)

(assert (=> bm!271154 (= call!271160 (validRegex!5012 (ite c!644374 (regTwo!22323 (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))) (regTwo!22322 (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))))))))

(declare-fun d!1089704 () Bool)

(declare-fun res!1513371 () Bool)

(declare-fun e!2305321 () Bool)

(assert (=> d!1089704 (=> res!1513371 e!2305321)))

(assert (=> d!1089704 (= res!1513371 ((_ is ElementMatch!10905) (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))))))

(assert (=> d!1089704 (= (validRegex!5012 (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))) e!2305321)))

(declare-fun bm!271155 () Bool)

(declare-fun c!644375 () Bool)

(assert (=> bm!271155 (= call!271159 (validRegex!5012 (ite c!644375 (reg!11234 (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))) (ite c!644374 (regOne!22323 (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))) (regOne!22322 (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968)))))))))))

(declare-fun b!3724719 () Bool)

(declare-fun e!2305316 () Bool)

(assert (=> b!3724719 (= e!2305316 call!271160)))

(declare-fun b!3724720 () Bool)

(declare-fun e!2305318 () Bool)

(assert (=> b!3724720 (= e!2305318 call!271159)))

(declare-fun b!3724721 () Bool)

(declare-fun res!1513368 () Bool)

(assert (=> b!3724721 (=> (not res!1513368) (not e!2305316))))

(assert (=> b!3724721 (= res!1513368 call!271158)))

(assert (=> b!3724721 (= e!2305319 e!2305316)))

(declare-fun b!3724722 () Bool)

(declare-fun e!2305315 () Bool)

(assert (=> b!3724722 (= e!2305315 e!2305319)))

(assert (=> b!3724722 (= c!644374 ((_ is Union!10905) (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))))))

(declare-fun b!3724723 () Bool)

(assert (=> b!3724723 (= e!2305315 e!2305318)))

(declare-fun res!1513369 () Bool)

(assert (=> b!3724723 (= res!1513369 (not (nullable!3813 (reg!11234 (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))))))))

(assert (=> b!3724723 (=> (not res!1513369) (not e!2305318))))

(declare-fun b!3724724 () Bool)

(assert (=> b!3724724 (= e!2305321 e!2305315)))

(assert (=> b!3724724 (= c!644375 ((_ is Star!10905) (ite c!644353 (reg!11234 (regOne!22323 r!26968)) (ite c!644352 (regOne!22323 (regOne!22323 r!26968)) (regOne!22322 (regOne!22323 r!26968))))))))

(assert (= (and d!1089704 (not res!1513371)) b!3724724))

(assert (= (and b!3724724 c!644375) b!3724723))

(assert (= (and b!3724724 (not c!644375)) b!3724722))

(assert (= (and b!3724723 res!1513369) b!3724720))

(assert (= (and b!3724722 c!644374) b!3724721))

(assert (= (and b!3724722 (not c!644374)) b!3724718))

(assert (= (and b!3724721 res!1513368) b!3724719))

(assert (= (and b!3724718 (not res!1513370)) b!3724716))

(assert (= (and b!3724716 res!1513372) b!3724717))

(assert (= (or b!3724719 b!3724717) bm!271154))

(assert (= (or b!3724721 b!3724716) bm!271153))

(assert (= (or b!3724720 bm!271153) bm!271155))

(declare-fun m!4227199 () Bool)

(assert (=> bm!271154 m!4227199))

(declare-fun m!4227201 () Bool)

(assert (=> bm!271155 m!4227201))

(declare-fun m!4227203 () Bool)

(assert (=> b!3724723 m!4227203))

(assert (=> bm!271137 d!1089704))

(declare-fun b!3724725 () Bool)

(declare-fun e!2305324 () List!39786)

(declare-fun call!271162 () List!39786)

(assert (=> b!3724725 (= e!2305324 call!271162)))

(declare-fun d!1089706 () Bool)

(declare-fun c!644377 () Bool)

(assert (=> d!1089706 (= c!644377 (or ((_ is EmptyExpr!10905) (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))) ((_ is EmptyLang!10905) (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968)))))))

(declare-fun e!2305322 () List!39786)

(assert (=> d!1089706 (= (usedCharacters!1168 (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))) e!2305322)))

(declare-fun call!271161 () List!39786)

(declare-fun call!271164 () List!39786)

(declare-fun c!644376 () Bool)

(declare-fun bm!271156 () Bool)

(assert (=> bm!271156 (= call!271162 (++!9828 (ite c!644376 call!271161 call!271164) (ite c!644376 call!271164 call!271161)))))

(declare-fun bm!271157 () Bool)

(declare-fun call!271163 () List!39786)

(declare-fun c!644379 () Bool)

(assert (=> bm!271157 (= call!271163 (usedCharacters!1168 (ite c!644379 (reg!11234 (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))) (ite c!644376 (regOne!22323 (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))) (regTwo!22322 (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968)))))))))

(declare-fun bm!271158 () Bool)

(assert (=> bm!271158 (= call!271161 call!271163)))

(declare-fun b!3724726 () Bool)

(declare-fun e!2305323 () List!39786)

(assert (=> b!3724726 (= e!2305323 e!2305324)))

(assert (=> b!3724726 (= c!644376 ((_ is Union!10905) (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))))))

(declare-fun bm!271159 () Bool)

(assert (=> bm!271159 (= call!271164 (usedCharacters!1168 (ite c!644376 (regTwo!22323 (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))) (regOne!22322 (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))))))))

(declare-fun b!3724727 () Bool)

(assert (=> b!3724727 (= c!644379 ((_ is Star!10905) (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))))))

(declare-fun e!2305325 () List!39786)

(assert (=> b!3724727 (= e!2305325 e!2305323)))

(declare-fun b!3724728 () Bool)

(assert (=> b!3724728 (= e!2305322 Nil!39662)))

(declare-fun b!3724729 () Bool)

(assert (=> b!3724729 (= e!2305323 call!271163)))

(declare-fun b!3724730 () Bool)

(assert (=> b!3724730 (= e!2305325 (Cons!39662 (c!644305 (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))) Nil!39662))))

(declare-fun b!3724731 () Bool)

(assert (=> b!3724731 (= e!2305324 call!271162)))

(declare-fun b!3724732 () Bool)

(assert (=> b!3724732 (= e!2305322 e!2305325)))

(declare-fun c!644378 () Bool)

(assert (=> b!3724732 (= c!644378 ((_ is ElementMatch!10905) (ite c!644330 (regTwo!22323 r!26968) (regOne!22322 r!26968))))))

(assert (= (and d!1089706 c!644377) b!3724728))

(assert (= (and d!1089706 (not c!644377)) b!3724732))

(assert (= (and b!3724732 c!644378) b!3724730))

(assert (= (and b!3724732 (not c!644378)) b!3724727))

(assert (= (and b!3724727 c!644379) b!3724729))

(assert (= (and b!3724727 (not c!644379)) b!3724726))

(assert (= (and b!3724726 c!644376) b!3724725))

(assert (= (and b!3724726 (not c!644376)) b!3724731))

(assert (= (or b!3724725 b!3724731) bm!271158))

(assert (= (or b!3724725 b!3724731) bm!271159))

(assert (= (or b!3724725 b!3724731) bm!271156))

(assert (= (or b!3724729 bm!271158) bm!271157))

(declare-fun m!4227205 () Bool)

(assert (=> bm!271156 m!4227205))

(declare-fun m!4227207 () Bool)

(assert (=> bm!271157 m!4227207))

(declare-fun m!4227209 () Bool)

(assert (=> bm!271159 m!4227209))

(assert (=> bm!271109 d!1089706))

(declare-fun bm!271160 () Bool)

(declare-fun call!271165 () Bool)

(declare-fun call!271166 () Bool)

(assert (=> bm!271160 (= call!271165 call!271166)))

(declare-fun b!3724733 () Bool)

(declare-fun e!2305328 () Bool)

(declare-fun e!2305331 () Bool)

(assert (=> b!3724733 (= e!2305328 e!2305331)))

(declare-fun res!1513377 () Bool)

(assert (=> b!3724733 (=> (not res!1513377) (not e!2305331))))

(assert (=> b!3724733 (= res!1513377 call!271165)))

(declare-fun b!3724734 () Bool)

(declare-fun call!271167 () Bool)

(assert (=> b!3724734 (= e!2305331 call!271167)))

(declare-fun b!3724735 () Bool)

(declare-fun res!1513375 () Bool)

(assert (=> b!3724735 (=> res!1513375 e!2305328)))

(assert (=> b!3724735 (= res!1513375 (not ((_ is Concat!17176) (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968)))))))

(declare-fun e!2305330 () Bool)

(assert (=> b!3724735 (= e!2305330 e!2305328)))

(declare-fun c!644380 () Bool)

(declare-fun bm!271161 () Bool)

(assert (=> bm!271161 (= call!271167 (validRegex!5012 (ite c!644380 (regTwo!22323 (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))) (regTwo!22322 (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))))))))

(declare-fun d!1089708 () Bool)

(declare-fun res!1513376 () Bool)

(declare-fun e!2305332 () Bool)

(assert (=> d!1089708 (=> res!1513376 e!2305332)))

(assert (=> d!1089708 (= res!1513376 ((_ is ElementMatch!10905) (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))))))

(assert (=> d!1089708 (= (validRegex!5012 (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))) e!2305332)))

(declare-fun c!644381 () Bool)

(declare-fun bm!271162 () Bool)

(assert (=> bm!271162 (= call!271166 (validRegex!5012 (ite c!644381 (reg!11234 (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))) (ite c!644380 (regOne!22323 (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))) (regOne!22322 (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968)))))))))

(declare-fun b!3724736 () Bool)

(declare-fun e!2305327 () Bool)

(assert (=> b!3724736 (= e!2305327 call!271167)))

(declare-fun b!3724737 () Bool)

(declare-fun e!2305329 () Bool)

(assert (=> b!3724737 (= e!2305329 call!271166)))

(declare-fun b!3724738 () Bool)

(declare-fun res!1513373 () Bool)

(assert (=> b!3724738 (=> (not res!1513373) (not e!2305327))))

(assert (=> b!3724738 (= res!1513373 call!271165)))

(assert (=> b!3724738 (= e!2305330 e!2305327)))

(declare-fun b!3724739 () Bool)

(declare-fun e!2305326 () Bool)

(assert (=> b!3724739 (= e!2305326 e!2305330)))

(assert (=> b!3724739 (= c!644380 ((_ is Union!10905) (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))))))

(declare-fun b!3724740 () Bool)

(assert (=> b!3724740 (= e!2305326 e!2305329)))

(declare-fun res!1513374 () Bool)

(assert (=> b!3724740 (= res!1513374 (not (nullable!3813 (reg!11234 (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))))))))

(assert (=> b!3724740 (=> (not res!1513374) (not e!2305329))))

(declare-fun b!3724741 () Bool)

(assert (=> b!3724741 (= e!2305332 e!2305326)))

(assert (=> b!3724741 (= c!644381 ((_ is Star!10905) (ite c!644346 (regTwo!22323 r!26968) (regTwo!22322 r!26968))))))

(assert (= (and d!1089708 (not res!1513376)) b!3724741))

(assert (= (and b!3724741 c!644381) b!3724740))

(assert (= (and b!3724741 (not c!644381)) b!3724739))

(assert (= (and b!3724740 res!1513374) b!3724737))

(assert (= (and b!3724739 c!644380) b!3724738))

(assert (= (and b!3724739 (not c!644380)) b!3724735))

(assert (= (and b!3724738 res!1513373) b!3724736))

(assert (= (and b!3724735 (not res!1513375)) b!3724733))

(assert (= (and b!3724733 res!1513377) b!3724734))

(assert (= (or b!3724736 b!3724734) bm!271161))

(assert (= (or b!3724738 b!3724733) bm!271160))

(assert (= (or b!3724737 bm!271160) bm!271162))

(declare-fun m!4227211 () Bool)

(assert (=> bm!271161 m!4227211))

(declare-fun m!4227213 () Bool)

(assert (=> bm!271162 m!4227213))

(declare-fun m!4227215 () Bool)

(assert (=> b!3724740 m!4227215))

(assert (=> bm!271129 d!1089708))

(declare-fun bm!271163 () Bool)

(declare-fun call!271168 () Bool)

(declare-fun call!271169 () Bool)

(assert (=> bm!271163 (= call!271168 call!271169)))

(declare-fun b!3724742 () Bool)

(declare-fun e!2305335 () Bool)

(declare-fun e!2305338 () Bool)

(assert (=> b!3724742 (= e!2305335 e!2305338)))

(declare-fun res!1513382 () Bool)

(assert (=> b!3724742 (=> (not res!1513382) (not e!2305338))))

(assert (=> b!3724742 (= res!1513382 call!271168)))

(declare-fun b!3724743 () Bool)

(declare-fun call!271170 () Bool)

(assert (=> b!3724743 (= e!2305338 call!271170)))

(declare-fun b!3724744 () Bool)

(declare-fun res!1513380 () Bool)

(assert (=> b!3724744 (=> res!1513380 e!2305335)))

(assert (=> b!3724744 (= res!1513380 (not ((_ is Concat!17176) (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968))))))))

(declare-fun e!2305337 () Bool)

(assert (=> b!3724744 (= e!2305337 e!2305335)))

(declare-fun c!644382 () Bool)

(declare-fun bm!271164 () Bool)

(assert (=> bm!271164 (= call!271170 (validRegex!5012 (ite c!644382 (regTwo!22323 (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))) (regTwo!22322 (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))))))))

(declare-fun d!1089710 () Bool)

(declare-fun res!1513381 () Bool)

(declare-fun e!2305339 () Bool)

(assert (=> d!1089710 (=> res!1513381 e!2305339)))

(assert (=> d!1089710 (= res!1513381 ((_ is ElementMatch!10905) (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))))))

(assert (=> d!1089710 (= (validRegex!5012 (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))) e!2305339)))

(declare-fun bm!271165 () Bool)

(declare-fun c!644383 () Bool)

(assert (=> bm!271165 (= call!271169 (validRegex!5012 (ite c!644383 (reg!11234 (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))) (ite c!644382 (regOne!22323 (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))) (regOne!22322 (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968))))))))))

(declare-fun b!3724745 () Bool)

(declare-fun e!2305334 () Bool)

(assert (=> b!3724745 (= e!2305334 call!271170)))

(declare-fun b!3724746 () Bool)

(declare-fun e!2305336 () Bool)

(assert (=> b!3724746 (= e!2305336 call!271169)))

(declare-fun b!3724747 () Bool)

(declare-fun res!1513378 () Bool)

(assert (=> b!3724747 (=> (not res!1513378) (not e!2305334))))

(assert (=> b!3724747 (= res!1513378 call!271168)))

(assert (=> b!3724747 (= e!2305337 e!2305334)))

(declare-fun b!3724748 () Bool)

(declare-fun e!2305333 () Bool)

(assert (=> b!3724748 (= e!2305333 e!2305337)))

(assert (=> b!3724748 (= c!644382 ((_ is Union!10905) (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))))))

(declare-fun b!3724749 () Bool)

(assert (=> b!3724749 (= e!2305333 e!2305336)))

(declare-fun res!1513379 () Bool)

(assert (=> b!3724749 (= res!1513379 (not (nullable!3813 (reg!11234 (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))))))))

(assert (=> b!3724749 (=> (not res!1513379) (not e!2305336))))

(declare-fun b!3724750 () Bool)

(assert (=> b!3724750 (= e!2305339 e!2305333)))

(assert (=> b!3724750 (= c!644383 ((_ is Star!10905) (ite c!644347 (reg!11234 r!26968) (ite c!644346 (regOne!22323 r!26968) (regOne!22322 r!26968)))))))

(assert (= (and d!1089710 (not res!1513381)) b!3724750))

(assert (= (and b!3724750 c!644383) b!3724749))

(assert (= (and b!3724750 (not c!644383)) b!3724748))

(assert (= (and b!3724749 res!1513379) b!3724746))

(assert (= (and b!3724748 c!644382) b!3724747))

(assert (= (and b!3724748 (not c!644382)) b!3724744))

(assert (= (and b!3724747 res!1513378) b!3724745))

(assert (= (and b!3724744 (not res!1513380)) b!3724742))

(assert (= (and b!3724742 res!1513382) b!3724743))

(assert (= (or b!3724745 b!3724743) bm!271164))

(assert (= (or b!3724747 b!3724742) bm!271163))

(assert (= (or b!3724746 bm!271163) bm!271165))

(declare-fun m!4227217 () Bool)

(assert (=> bm!271164 m!4227217))

(declare-fun m!4227219 () Bool)

(assert (=> bm!271165 m!4227219))

(declare-fun m!4227221 () Bool)

(assert (=> b!3724749 m!4227221))

(assert (=> bm!271130 d!1089710))

(declare-fun d!1089712 () Bool)

(declare-fun c!644384 () Bool)

(assert (=> d!1089712 (= c!644384 ((_ is Nil!39662) (usedCharacters!1168 (regOne!22323 r!26968))))))

(declare-fun e!2305340 () (InoxSet C!21996))

(assert (=> d!1089712 (= (content!5762 (usedCharacters!1168 (regOne!22323 r!26968))) e!2305340)))

(declare-fun b!3724751 () Bool)

(assert (=> b!3724751 (= e!2305340 ((as const (Array C!21996 Bool)) false))))

(declare-fun b!3724752 () Bool)

(assert (=> b!3724752 (= e!2305340 ((_ map or) (store ((as const (Array C!21996 Bool)) false) (h!45082 (usedCharacters!1168 (regOne!22323 r!26968))) true) (content!5762 (t!302469 (usedCharacters!1168 (regOne!22323 r!26968))))))))

(assert (= (and d!1089712 c!644384) b!3724751))

(assert (= (and d!1089712 (not c!644384)) b!3724752))

(declare-fun m!4227223 () Bool)

(assert (=> b!3724752 m!4227223))

(assert (=> b!3724752 m!4227179))

(assert (=> d!1089664 d!1089712))

(declare-fun d!1089714 () Bool)

(assert (=> d!1089714 (= (nullable!3813 (reg!11234 (regOne!22323 r!26968))) (nullableFct!1076 (reg!11234 (regOne!22323 r!26968))))))

(declare-fun bs!575019 () Bool)

(assert (= bs!575019 d!1089714))

(declare-fun m!4227225 () Bool)

(assert (=> bs!575019 m!4227225))

(assert (=> b!3724599 d!1089714))

(declare-fun e!2305341 () List!39786)

(declare-fun b!3724753 () Bool)

(assert (=> b!3724753 (= e!2305341 (ite c!644326 call!271110 call!271107))))

(declare-fun b!3724755 () Bool)

(declare-fun res!1513383 () Bool)

(declare-fun e!2305342 () Bool)

(assert (=> b!3724755 (=> (not res!1513383) (not e!2305342))))

(declare-fun lt!1298312 () List!39786)

(assert (=> b!3724755 (= res!1513383 (= (size!30025 lt!1298312) (+ (size!30025 (ite c!644326 call!271107 call!271110)) (size!30025 (ite c!644326 call!271110 call!271107)))))))

(declare-fun d!1089716 () Bool)

(assert (=> d!1089716 e!2305342))

(declare-fun res!1513384 () Bool)

(assert (=> d!1089716 (=> (not res!1513384) (not e!2305342))))

(assert (=> d!1089716 (= res!1513384 (= (content!5762 lt!1298312) ((_ map or) (content!5762 (ite c!644326 call!271107 call!271110)) (content!5762 (ite c!644326 call!271110 call!271107)))))))

(assert (=> d!1089716 (= lt!1298312 e!2305341)))

(declare-fun c!644385 () Bool)

(assert (=> d!1089716 (= c!644385 ((_ is Nil!39662) (ite c!644326 call!271107 call!271110)))))

(assert (=> d!1089716 (= (++!9828 (ite c!644326 call!271107 call!271110) (ite c!644326 call!271110 call!271107)) lt!1298312)))

(declare-fun b!3724754 () Bool)

(assert (=> b!3724754 (= e!2305341 (Cons!39662 (h!45082 (ite c!644326 call!271107 call!271110)) (++!9828 (t!302469 (ite c!644326 call!271107 call!271110)) (ite c!644326 call!271110 call!271107))))))

(declare-fun b!3724756 () Bool)

(assert (=> b!3724756 (= e!2305342 (or (not (= (ite c!644326 call!271110 call!271107) Nil!39662)) (= lt!1298312 (ite c!644326 call!271107 call!271110))))))

(assert (= (and d!1089716 c!644385) b!3724753))

(assert (= (and d!1089716 (not c!644385)) b!3724754))

(assert (= (and d!1089716 res!1513384) b!3724755))

(assert (= (and b!3724755 res!1513383) b!3724756))

(declare-fun m!4227227 () Bool)

(assert (=> b!3724755 m!4227227))

(declare-fun m!4227229 () Bool)

(assert (=> b!3724755 m!4227229))

(declare-fun m!4227231 () Bool)

(assert (=> b!3724755 m!4227231))

(declare-fun m!4227233 () Bool)

(assert (=> d!1089716 m!4227233))

(declare-fun m!4227235 () Bool)

(assert (=> d!1089716 m!4227235))

(declare-fun m!4227237 () Bool)

(assert (=> d!1089716 m!4227237))

(declare-fun m!4227239 () Bool)

(assert (=> b!3724754 m!4227239))

(assert (=> bm!271102 d!1089716))

(declare-fun b!3724757 () Bool)

(declare-fun e!2305343 () Bool)

(assert (=> b!3724757 (= e!2305343 tp_is_empty!18825)))

(declare-fun b!3724758 () Bool)

(declare-fun tp!1132958 () Bool)

(declare-fun tp!1132957 () Bool)

(assert (=> b!3724758 (= e!2305343 (and tp!1132958 tp!1132957))))

(declare-fun b!3724760 () Bool)

(declare-fun tp!1132955 () Bool)

(declare-fun tp!1132959 () Bool)

(assert (=> b!3724760 (= e!2305343 (and tp!1132955 tp!1132959))))

(assert (=> b!3724651 (= tp!1132941 e!2305343)))

(declare-fun b!3724759 () Bool)

(declare-fun tp!1132956 () Bool)

(assert (=> b!3724759 (= e!2305343 tp!1132956)))

(assert (= (and b!3724651 ((_ is ElementMatch!10905) (reg!11234 (regOne!22322 r!26968)))) b!3724757))

(assert (= (and b!3724651 ((_ is Concat!17176) (reg!11234 (regOne!22322 r!26968)))) b!3724758))

(assert (= (and b!3724651 ((_ is Star!10905) (reg!11234 (regOne!22322 r!26968)))) b!3724759))

(assert (= (and b!3724651 ((_ is Union!10905) (reg!11234 (regOne!22322 r!26968)))) b!3724760))

(declare-fun b!3724761 () Bool)

(declare-fun e!2305344 () Bool)

(assert (=> b!3724761 (= e!2305344 tp_is_empty!18825)))

(declare-fun b!3724762 () Bool)

(declare-fun tp!1132963 () Bool)

(declare-fun tp!1132962 () Bool)

(assert (=> b!3724762 (= e!2305344 (and tp!1132963 tp!1132962))))

(declare-fun b!3724764 () Bool)

(declare-fun tp!1132960 () Bool)

(declare-fun tp!1132964 () Bool)

(assert (=> b!3724764 (= e!2305344 (and tp!1132960 tp!1132964))))

(assert (=> b!3724650 (= tp!1132944 e!2305344)))

(declare-fun b!3724763 () Bool)

(declare-fun tp!1132961 () Bool)

(assert (=> b!3724763 (= e!2305344 tp!1132961)))

(assert (= (and b!3724650 ((_ is ElementMatch!10905) (regOne!22322 (regOne!22322 r!26968)))) b!3724761))

(assert (= (and b!3724650 ((_ is Concat!17176) (regOne!22322 (regOne!22322 r!26968)))) b!3724762))

(assert (= (and b!3724650 ((_ is Star!10905) (regOne!22322 (regOne!22322 r!26968)))) b!3724763))

(assert (= (and b!3724650 ((_ is Union!10905) (regOne!22322 (regOne!22322 r!26968)))) b!3724764))

(declare-fun b!3724765 () Bool)

(declare-fun e!2305345 () Bool)

(assert (=> b!3724765 (= e!2305345 tp_is_empty!18825)))

(declare-fun b!3724766 () Bool)

(declare-fun tp!1132968 () Bool)

(declare-fun tp!1132967 () Bool)

(assert (=> b!3724766 (= e!2305345 (and tp!1132968 tp!1132967))))

(declare-fun b!3724768 () Bool)

(declare-fun tp!1132965 () Bool)

(declare-fun tp!1132969 () Bool)

(assert (=> b!3724768 (= e!2305345 (and tp!1132965 tp!1132969))))

(assert (=> b!3724650 (= tp!1132942 e!2305345)))

(declare-fun b!3724767 () Bool)

(declare-fun tp!1132966 () Bool)

(assert (=> b!3724767 (= e!2305345 tp!1132966)))

(assert (= (and b!3724650 ((_ is ElementMatch!10905) (regTwo!22322 (regOne!22322 r!26968)))) b!3724765))

(assert (= (and b!3724650 ((_ is Concat!17176) (regTwo!22322 (regOne!22322 r!26968)))) b!3724766))

(assert (= (and b!3724650 ((_ is Star!10905) (regTwo!22322 (regOne!22322 r!26968)))) b!3724767))

(assert (= (and b!3724650 ((_ is Union!10905) (regTwo!22322 (regOne!22322 r!26968)))) b!3724768))

(declare-fun b!3724769 () Bool)

(declare-fun e!2305346 () Bool)

(assert (=> b!3724769 (= e!2305346 tp_is_empty!18825)))

(declare-fun b!3724770 () Bool)

(declare-fun tp!1132973 () Bool)

(declare-fun tp!1132972 () Bool)

(assert (=> b!3724770 (= e!2305346 (and tp!1132973 tp!1132972))))

(declare-fun b!3724772 () Bool)

(declare-fun tp!1132970 () Bool)

(declare-fun tp!1132974 () Bool)

(assert (=> b!3724772 (= e!2305346 (and tp!1132970 tp!1132974))))

(assert (=> b!3724634 (= tp!1132923 e!2305346)))

(declare-fun b!3724771 () Bool)

(declare-fun tp!1132971 () Bool)

(assert (=> b!3724771 (= e!2305346 tp!1132971)))

(assert (= (and b!3724634 ((_ is ElementMatch!10905) (regOne!22322 (regTwo!22323 r!26968)))) b!3724769))

(assert (= (and b!3724634 ((_ is Concat!17176) (regOne!22322 (regTwo!22323 r!26968)))) b!3724770))

(assert (= (and b!3724634 ((_ is Star!10905) (regOne!22322 (regTwo!22323 r!26968)))) b!3724771))

(assert (= (and b!3724634 ((_ is Union!10905) (regOne!22322 (regTwo!22323 r!26968)))) b!3724772))

(declare-fun b!3724773 () Bool)

(declare-fun e!2305347 () Bool)

(assert (=> b!3724773 (= e!2305347 tp_is_empty!18825)))

(declare-fun b!3724774 () Bool)

(declare-fun tp!1132978 () Bool)

(declare-fun tp!1132977 () Bool)

(assert (=> b!3724774 (= e!2305347 (and tp!1132978 tp!1132977))))

(declare-fun b!3724776 () Bool)

(declare-fun tp!1132975 () Bool)

(declare-fun tp!1132979 () Bool)

(assert (=> b!3724776 (= e!2305347 (and tp!1132975 tp!1132979))))

(assert (=> b!3724634 (= tp!1132922 e!2305347)))

(declare-fun b!3724775 () Bool)

(declare-fun tp!1132976 () Bool)

(assert (=> b!3724775 (= e!2305347 tp!1132976)))

(assert (= (and b!3724634 ((_ is ElementMatch!10905) (regTwo!22322 (regTwo!22323 r!26968)))) b!3724773))

(assert (= (and b!3724634 ((_ is Concat!17176) (regTwo!22322 (regTwo!22323 r!26968)))) b!3724774))

(assert (= (and b!3724634 ((_ is Star!10905) (regTwo!22322 (regTwo!22323 r!26968)))) b!3724775))

(assert (= (and b!3724634 ((_ is Union!10905) (regTwo!22322 (regTwo!22323 r!26968)))) b!3724776))

(declare-fun b!3724777 () Bool)

(declare-fun e!2305348 () Bool)

(assert (=> b!3724777 (= e!2305348 tp_is_empty!18825)))

(declare-fun b!3724778 () Bool)

(declare-fun tp!1132983 () Bool)

(declare-fun tp!1132982 () Bool)

(assert (=> b!3724778 (= e!2305348 (and tp!1132983 tp!1132982))))

(declare-fun b!3724780 () Bool)

(declare-fun tp!1132980 () Bool)

(declare-fun tp!1132984 () Bool)

(assert (=> b!3724780 (= e!2305348 (and tp!1132980 tp!1132984))))

(assert (=> b!3724642 (= tp!1132933 e!2305348)))

(declare-fun b!3724779 () Bool)

(declare-fun tp!1132981 () Bool)

(assert (=> b!3724779 (= e!2305348 tp!1132981)))

(assert (= (and b!3724642 ((_ is ElementMatch!10905) (regOne!22322 (reg!11234 r!26968)))) b!3724777))

(assert (= (and b!3724642 ((_ is Concat!17176) (regOne!22322 (reg!11234 r!26968)))) b!3724778))

(assert (= (and b!3724642 ((_ is Star!10905) (regOne!22322 (reg!11234 r!26968)))) b!3724779))

(assert (= (and b!3724642 ((_ is Union!10905) (regOne!22322 (reg!11234 r!26968)))) b!3724780))

(declare-fun b!3724781 () Bool)

(declare-fun e!2305349 () Bool)

(assert (=> b!3724781 (= e!2305349 tp_is_empty!18825)))

(declare-fun b!3724782 () Bool)

(declare-fun tp!1132988 () Bool)

(declare-fun tp!1132987 () Bool)

(assert (=> b!3724782 (= e!2305349 (and tp!1132988 tp!1132987))))

(declare-fun b!3724784 () Bool)

(declare-fun tp!1132985 () Bool)

(declare-fun tp!1132989 () Bool)

(assert (=> b!3724784 (= e!2305349 (and tp!1132985 tp!1132989))))

(assert (=> b!3724642 (= tp!1132932 e!2305349)))

(declare-fun b!3724783 () Bool)

(declare-fun tp!1132986 () Bool)

(assert (=> b!3724783 (= e!2305349 tp!1132986)))

(assert (= (and b!3724642 ((_ is ElementMatch!10905) (regTwo!22322 (reg!11234 r!26968)))) b!3724781))

(assert (= (and b!3724642 ((_ is Concat!17176) (regTwo!22322 (reg!11234 r!26968)))) b!3724782))

(assert (= (and b!3724642 ((_ is Star!10905) (regTwo!22322 (reg!11234 r!26968)))) b!3724783))

(assert (= (and b!3724642 ((_ is Union!10905) (regTwo!22322 (reg!11234 r!26968)))) b!3724784))

(declare-fun b!3724785 () Bool)

(declare-fun e!2305350 () Bool)

(assert (=> b!3724785 (= e!2305350 tp_is_empty!18825)))

(declare-fun b!3724786 () Bool)

(declare-fun tp!1132993 () Bool)

(declare-fun tp!1132992 () Bool)

(assert (=> b!3724786 (= e!2305350 (and tp!1132993 tp!1132992))))

(declare-fun b!3724788 () Bool)

(declare-fun tp!1132990 () Bool)

(declare-fun tp!1132994 () Bool)

(assert (=> b!3724788 (= e!2305350 (and tp!1132990 tp!1132994))))

(assert (=> b!3724635 (= tp!1132921 e!2305350)))

(declare-fun b!3724787 () Bool)

(declare-fun tp!1132991 () Bool)

(assert (=> b!3724787 (= e!2305350 tp!1132991)))

(assert (= (and b!3724635 ((_ is ElementMatch!10905) (reg!11234 (regTwo!22323 r!26968)))) b!3724785))

(assert (= (and b!3724635 ((_ is Concat!17176) (reg!11234 (regTwo!22323 r!26968)))) b!3724786))

(assert (= (and b!3724635 ((_ is Star!10905) (reg!11234 (regTwo!22323 r!26968)))) b!3724787))

(assert (= (and b!3724635 ((_ is Union!10905) (reg!11234 (regTwo!22323 r!26968)))) b!3724788))

(declare-fun b!3724789 () Bool)

(declare-fun e!2305351 () Bool)

(assert (=> b!3724789 (= e!2305351 tp_is_empty!18825)))

(declare-fun b!3724790 () Bool)

(declare-fun tp!1132998 () Bool)

(declare-fun tp!1132997 () Bool)

(assert (=> b!3724790 (= e!2305351 (and tp!1132998 tp!1132997))))

(declare-fun b!3724792 () Bool)

(declare-fun tp!1132995 () Bool)

(declare-fun tp!1132999 () Bool)

(assert (=> b!3724792 (= e!2305351 (and tp!1132995 tp!1132999))))

(assert (=> b!3724660 (= tp!1132950 e!2305351)))

(declare-fun b!3724791 () Bool)

(declare-fun tp!1132996 () Bool)

(assert (=> b!3724791 (= e!2305351 tp!1132996)))

(assert (= (and b!3724660 ((_ is ElementMatch!10905) (regOne!22323 (regTwo!22322 r!26968)))) b!3724789))

(assert (= (and b!3724660 ((_ is Concat!17176) (regOne!22323 (regTwo!22322 r!26968)))) b!3724790))

(assert (= (and b!3724660 ((_ is Star!10905) (regOne!22323 (regTwo!22322 r!26968)))) b!3724791))

(assert (= (and b!3724660 ((_ is Union!10905) (regOne!22323 (regTwo!22322 r!26968)))) b!3724792))

(declare-fun b!3724793 () Bool)

(declare-fun e!2305352 () Bool)

(assert (=> b!3724793 (= e!2305352 tp_is_empty!18825)))

(declare-fun b!3724794 () Bool)

(declare-fun tp!1133003 () Bool)

(declare-fun tp!1133002 () Bool)

(assert (=> b!3724794 (= e!2305352 (and tp!1133003 tp!1133002))))

(declare-fun b!3724796 () Bool)

(declare-fun tp!1133000 () Bool)

(declare-fun tp!1133004 () Bool)

(assert (=> b!3724796 (= e!2305352 (and tp!1133000 tp!1133004))))

(assert (=> b!3724660 (= tp!1132954 e!2305352)))

(declare-fun b!3724795 () Bool)

(declare-fun tp!1133001 () Bool)

(assert (=> b!3724795 (= e!2305352 tp!1133001)))

(assert (= (and b!3724660 ((_ is ElementMatch!10905) (regTwo!22323 (regTwo!22322 r!26968)))) b!3724793))

(assert (= (and b!3724660 ((_ is Concat!17176) (regTwo!22323 (regTwo!22322 r!26968)))) b!3724794))

(assert (= (and b!3724660 ((_ is Star!10905) (regTwo!22323 (regTwo!22322 r!26968)))) b!3724795))

(assert (= (and b!3724660 ((_ is Union!10905) (regTwo!22323 (regTwo!22322 r!26968)))) b!3724796))

(declare-fun b!3724797 () Bool)

(declare-fun e!2305353 () Bool)

(assert (=> b!3724797 (= e!2305353 tp_is_empty!18825)))

(declare-fun b!3724798 () Bool)

(declare-fun tp!1133008 () Bool)

(declare-fun tp!1133007 () Bool)

(assert (=> b!3724798 (= e!2305353 (and tp!1133008 tp!1133007))))

(declare-fun b!3724800 () Bool)

(declare-fun tp!1133005 () Bool)

(declare-fun tp!1133009 () Bool)

(assert (=> b!3724800 (= e!2305353 (and tp!1133005 tp!1133009))))

(assert (=> b!3724626 (= tp!1132913 e!2305353)))

(declare-fun b!3724799 () Bool)

(declare-fun tp!1133006 () Bool)

(assert (=> b!3724799 (= e!2305353 tp!1133006)))

(assert (= (and b!3724626 ((_ is ElementMatch!10905) (regOne!22322 (regOne!22323 r!26968)))) b!3724797))

(assert (= (and b!3724626 ((_ is Concat!17176) (regOne!22322 (regOne!22323 r!26968)))) b!3724798))

(assert (= (and b!3724626 ((_ is Star!10905) (regOne!22322 (regOne!22323 r!26968)))) b!3724799))

(assert (= (and b!3724626 ((_ is Union!10905) (regOne!22322 (regOne!22323 r!26968)))) b!3724800))

(declare-fun b!3724801 () Bool)

(declare-fun e!2305354 () Bool)

(assert (=> b!3724801 (= e!2305354 tp_is_empty!18825)))

(declare-fun b!3724802 () Bool)

(declare-fun tp!1133013 () Bool)

(declare-fun tp!1133012 () Bool)

(assert (=> b!3724802 (= e!2305354 (and tp!1133013 tp!1133012))))

(declare-fun b!3724804 () Bool)

(declare-fun tp!1133010 () Bool)

(declare-fun tp!1133014 () Bool)

(assert (=> b!3724804 (= e!2305354 (and tp!1133010 tp!1133014))))

(assert (=> b!3724626 (= tp!1132912 e!2305354)))

(declare-fun b!3724803 () Bool)

(declare-fun tp!1133011 () Bool)

(assert (=> b!3724803 (= e!2305354 tp!1133011)))

(assert (= (and b!3724626 ((_ is ElementMatch!10905) (regTwo!22322 (regOne!22323 r!26968)))) b!3724801))

(assert (= (and b!3724626 ((_ is Concat!17176) (regTwo!22322 (regOne!22323 r!26968)))) b!3724802))

(assert (= (and b!3724626 ((_ is Star!10905) (regTwo!22322 (regOne!22323 r!26968)))) b!3724803))

(assert (= (and b!3724626 ((_ is Union!10905) (regTwo!22322 (regOne!22323 r!26968)))) b!3724804))

(declare-fun b!3724805 () Bool)

(declare-fun e!2305355 () Bool)

(assert (=> b!3724805 (= e!2305355 tp_is_empty!18825)))

(declare-fun b!3724806 () Bool)

(declare-fun tp!1133018 () Bool)

(declare-fun tp!1133017 () Bool)

(assert (=> b!3724806 (= e!2305355 (and tp!1133018 tp!1133017))))

(declare-fun b!3724808 () Bool)

(declare-fun tp!1133015 () Bool)

(declare-fun tp!1133019 () Bool)

(assert (=> b!3724808 (= e!2305355 (and tp!1133015 tp!1133019))))

(assert (=> b!3724636 (= tp!1132920 e!2305355)))

(declare-fun b!3724807 () Bool)

(declare-fun tp!1133016 () Bool)

(assert (=> b!3724807 (= e!2305355 tp!1133016)))

(assert (= (and b!3724636 ((_ is ElementMatch!10905) (regOne!22323 (regTwo!22323 r!26968)))) b!3724805))

(assert (= (and b!3724636 ((_ is Concat!17176) (regOne!22323 (regTwo!22323 r!26968)))) b!3724806))

(assert (= (and b!3724636 ((_ is Star!10905) (regOne!22323 (regTwo!22323 r!26968)))) b!3724807))

(assert (= (and b!3724636 ((_ is Union!10905) (regOne!22323 (regTwo!22323 r!26968)))) b!3724808))

(declare-fun b!3724809 () Bool)

(declare-fun e!2305356 () Bool)

(assert (=> b!3724809 (= e!2305356 tp_is_empty!18825)))

(declare-fun b!3724810 () Bool)

(declare-fun tp!1133023 () Bool)

(declare-fun tp!1133022 () Bool)

(assert (=> b!3724810 (= e!2305356 (and tp!1133023 tp!1133022))))

(declare-fun b!3724812 () Bool)

(declare-fun tp!1133020 () Bool)

(declare-fun tp!1133024 () Bool)

(assert (=> b!3724812 (= e!2305356 (and tp!1133020 tp!1133024))))

(assert (=> b!3724636 (= tp!1132924 e!2305356)))

(declare-fun b!3724811 () Bool)

(declare-fun tp!1133021 () Bool)

(assert (=> b!3724811 (= e!2305356 tp!1133021)))

(assert (= (and b!3724636 ((_ is ElementMatch!10905) (regTwo!22323 (regTwo!22323 r!26968)))) b!3724809))

(assert (= (and b!3724636 ((_ is Concat!17176) (regTwo!22323 (regTwo!22323 r!26968)))) b!3724810))

(assert (= (and b!3724636 ((_ is Star!10905) (regTwo!22323 (regTwo!22323 r!26968)))) b!3724811))

(assert (= (and b!3724636 ((_ is Union!10905) (regTwo!22323 (regTwo!22323 r!26968)))) b!3724812))

(declare-fun b!3724813 () Bool)

(declare-fun e!2305357 () Bool)

(assert (=> b!3724813 (= e!2305357 tp_is_empty!18825)))

(declare-fun b!3724814 () Bool)

(declare-fun tp!1133028 () Bool)

(declare-fun tp!1133027 () Bool)

(assert (=> b!3724814 (= e!2305357 (and tp!1133028 tp!1133027))))

(declare-fun b!3724816 () Bool)

(declare-fun tp!1133025 () Bool)

(declare-fun tp!1133029 () Bool)

(assert (=> b!3724816 (= e!2305357 (and tp!1133025 tp!1133029))))

(assert (=> b!3724659 (= tp!1132951 e!2305357)))

(declare-fun b!3724815 () Bool)

(declare-fun tp!1133026 () Bool)

(assert (=> b!3724815 (= e!2305357 tp!1133026)))

(assert (= (and b!3724659 ((_ is ElementMatch!10905) (reg!11234 (regTwo!22322 r!26968)))) b!3724813))

(assert (= (and b!3724659 ((_ is Concat!17176) (reg!11234 (regTwo!22322 r!26968)))) b!3724814))

(assert (= (and b!3724659 ((_ is Star!10905) (reg!11234 (regTwo!22322 r!26968)))) b!3724815))

(assert (= (and b!3724659 ((_ is Union!10905) (reg!11234 (regTwo!22322 r!26968)))) b!3724816))

(declare-fun b!3724817 () Bool)

(declare-fun e!2305358 () Bool)

(assert (=> b!3724817 (= e!2305358 tp_is_empty!18825)))

(declare-fun b!3724818 () Bool)

(declare-fun tp!1133033 () Bool)

(declare-fun tp!1133032 () Bool)

(assert (=> b!3724818 (= e!2305358 (and tp!1133033 tp!1133032))))

(declare-fun b!3724820 () Bool)

(declare-fun tp!1133030 () Bool)

(declare-fun tp!1133034 () Bool)

(assert (=> b!3724820 (= e!2305358 (and tp!1133030 tp!1133034))))

(assert (=> b!3724627 (= tp!1132911 e!2305358)))

(declare-fun b!3724819 () Bool)

(declare-fun tp!1133031 () Bool)

(assert (=> b!3724819 (= e!2305358 tp!1133031)))

(assert (= (and b!3724627 ((_ is ElementMatch!10905) (reg!11234 (regOne!22323 r!26968)))) b!3724817))

(assert (= (and b!3724627 ((_ is Concat!17176) (reg!11234 (regOne!22323 r!26968)))) b!3724818))

(assert (= (and b!3724627 ((_ is Star!10905) (reg!11234 (regOne!22323 r!26968)))) b!3724819))

(assert (= (and b!3724627 ((_ is Union!10905) (reg!11234 (regOne!22323 r!26968)))) b!3724820))

(declare-fun b!3724821 () Bool)

(declare-fun e!2305359 () Bool)

(assert (=> b!3724821 (= e!2305359 tp_is_empty!18825)))

(declare-fun b!3724822 () Bool)

(declare-fun tp!1133038 () Bool)

(declare-fun tp!1133037 () Bool)

(assert (=> b!3724822 (= e!2305359 (and tp!1133038 tp!1133037))))

(declare-fun b!3724824 () Bool)

(declare-fun tp!1133035 () Bool)

(declare-fun tp!1133039 () Bool)

(assert (=> b!3724824 (= e!2305359 (and tp!1133035 tp!1133039))))

(assert (=> b!3724643 (= tp!1132931 e!2305359)))

(declare-fun b!3724823 () Bool)

(declare-fun tp!1133036 () Bool)

(assert (=> b!3724823 (= e!2305359 tp!1133036)))

(assert (= (and b!3724643 ((_ is ElementMatch!10905) (reg!11234 (reg!11234 r!26968)))) b!3724821))

(assert (= (and b!3724643 ((_ is Concat!17176) (reg!11234 (reg!11234 r!26968)))) b!3724822))

(assert (= (and b!3724643 ((_ is Star!10905) (reg!11234 (reg!11234 r!26968)))) b!3724823))

(assert (= (and b!3724643 ((_ is Union!10905) (reg!11234 (reg!11234 r!26968)))) b!3724824))

(declare-fun b!3724825 () Bool)

(declare-fun e!2305360 () Bool)

(assert (=> b!3724825 (= e!2305360 tp_is_empty!18825)))

(declare-fun b!3724826 () Bool)

(declare-fun tp!1133043 () Bool)

(declare-fun tp!1133042 () Bool)

(assert (=> b!3724826 (= e!2305360 (and tp!1133043 tp!1133042))))

(declare-fun b!3724828 () Bool)

(declare-fun tp!1133040 () Bool)

(declare-fun tp!1133044 () Bool)

(assert (=> b!3724828 (= e!2305360 (and tp!1133040 tp!1133044))))

(assert (=> b!3724658 (= tp!1132953 e!2305360)))

(declare-fun b!3724827 () Bool)

(declare-fun tp!1133041 () Bool)

(assert (=> b!3724827 (= e!2305360 tp!1133041)))

(assert (= (and b!3724658 ((_ is ElementMatch!10905) (regOne!22322 (regTwo!22322 r!26968)))) b!3724825))

(assert (= (and b!3724658 ((_ is Concat!17176) (regOne!22322 (regTwo!22322 r!26968)))) b!3724826))

(assert (= (and b!3724658 ((_ is Star!10905) (regOne!22322 (regTwo!22322 r!26968)))) b!3724827))

(assert (= (and b!3724658 ((_ is Union!10905) (regOne!22322 (regTwo!22322 r!26968)))) b!3724828))

(declare-fun b!3724829 () Bool)

(declare-fun e!2305361 () Bool)

(assert (=> b!3724829 (= e!2305361 tp_is_empty!18825)))

(declare-fun b!3724830 () Bool)

(declare-fun tp!1133048 () Bool)

(declare-fun tp!1133047 () Bool)

(assert (=> b!3724830 (= e!2305361 (and tp!1133048 tp!1133047))))

(declare-fun b!3724832 () Bool)

(declare-fun tp!1133045 () Bool)

(declare-fun tp!1133049 () Bool)

(assert (=> b!3724832 (= e!2305361 (and tp!1133045 tp!1133049))))

(assert (=> b!3724658 (= tp!1132952 e!2305361)))

(declare-fun b!3724831 () Bool)

(declare-fun tp!1133046 () Bool)

(assert (=> b!3724831 (= e!2305361 tp!1133046)))

(assert (= (and b!3724658 ((_ is ElementMatch!10905) (regTwo!22322 (regTwo!22322 r!26968)))) b!3724829))

(assert (= (and b!3724658 ((_ is Concat!17176) (regTwo!22322 (regTwo!22322 r!26968)))) b!3724830))

(assert (= (and b!3724658 ((_ is Star!10905) (regTwo!22322 (regTwo!22322 r!26968)))) b!3724831))

(assert (= (and b!3724658 ((_ is Union!10905) (regTwo!22322 (regTwo!22322 r!26968)))) b!3724832))

(declare-fun b!3724833 () Bool)

(declare-fun e!2305362 () Bool)

(assert (=> b!3724833 (= e!2305362 tp_is_empty!18825)))

(declare-fun b!3724834 () Bool)

(declare-fun tp!1133053 () Bool)

(declare-fun tp!1133052 () Bool)

(assert (=> b!3724834 (= e!2305362 (and tp!1133053 tp!1133052))))

(declare-fun b!3724836 () Bool)

(declare-fun tp!1133050 () Bool)

(declare-fun tp!1133054 () Bool)

(assert (=> b!3724836 (= e!2305362 (and tp!1133050 tp!1133054))))

(assert (=> b!3724628 (= tp!1132910 e!2305362)))

(declare-fun b!3724835 () Bool)

(declare-fun tp!1133051 () Bool)

(assert (=> b!3724835 (= e!2305362 tp!1133051)))

(assert (= (and b!3724628 ((_ is ElementMatch!10905) (regOne!22323 (regOne!22323 r!26968)))) b!3724833))

(assert (= (and b!3724628 ((_ is Concat!17176) (regOne!22323 (regOne!22323 r!26968)))) b!3724834))

(assert (= (and b!3724628 ((_ is Star!10905) (regOne!22323 (regOne!22323 r!26968)))) b!3724835))

(assert (= (and b!3724628 ((_ is Union!10905) (regOne!22323 (regOne!22323 r!26968)))) b!3724836))

(declare-fun b!3724837 () Bool)

(declare-fun e!2305363 () Bool)

(assert (=> b!3724837 (= e!2305363 tp_is_empty!18825)))

(declare-fun b!3724838 () Bool)

(declare-fun tp!1133058 () Bool)

(declare-fun tp!1133057 () Bool)

(assert (=> b!3724838 (= e!2305363 (and tp!1133058 tp!1133057))))

(declare-fun b!3724840 () Bool)

(declare-fun tp!1133055 () Bool)

(declare-fun tp!1133059 () Bool)

(assert (=> b!3724840 (= e!2305363 (and tp!1133055 tp!1133059))))

(assert (=> b!3724628 (= tp!1132914 e!2305363)))

(declare-fun b!3724839 () Bool)

(declare-fun tp!1133056 () Bool)

(assert (=> b!3724839 (= e!2305363 tp!1133056)))

(assert (= (and b!3724628 ((_ is ElementMatch!10905) (regTwo!22323 (regOne!22323 r!26968)))) b!3724837))

(assert (= (and b!3724628 ((_ is Concat!17176) (regTwo!22323 (regOne!22323 r!26968)))) b!3724838))

(assert (= (and b!3724628 ((_ is Star!10905) (regTwo!22323 (regOne!22323 r!26968)))) b!3724839))

(assert (= (and b!3724628 ((_ is Union!10905) (regTwo!22323 (regOne!22323 r!26968)))) b!3724840))

(declare-fun b!3724841 () Bool)

(declare-fun e!2305364 () Bool)

(assert (=> b!3724841 (= e!2305364 tp_is_empty!18825)))

(declare-fun b!3724842 () Bool)

(declare-fun tp!1133063 () Bool)

(declare-fun tp!1133062 () Bool)

(assert (=> b!3724842 (= e!2305364 (and tp!1133063 tp!1133062))))

(declare-fun b!3724844 () Bool)

(declare-fun tp!1133060 () Bool)

(declare-fun tp!1133064 () Bool)

(assert (=> b!3724844 (= e!2305364 (and tp!1133060 tp!1133064))))

(assert (=> b!3724653 (= tp!1132940 e!2305364)))

(declare-fun b!3724843 () Bool)

(declare-fun tp!1133061 () Bool)

(assert (=> b!3724843 (= e!2305364 tp!1133061)))

(assert (= (and b!3724653 ((_ is ElementMatch!10905) (regOne!22323 (regOne!22322 r!26968)))) b!3724841))

(assert (= (and b!3724653 ((_ is Concat!17176) (regOne!22323 (regOne!22322 r!26968)))) b!3724842))

(assert (= (and b!3724653 ((_ is Star!10905) (regOne!22323 (regOne!22322 r!26968)))) b!3724843))

(assert (= (and b!3724653 ((_ is Union!10905) (regOne!22323 (regOne!22322 r!26968)))) b!3724844))

(declare-fun b!3724845 () Bool)

(declare-fun e!2305365 () Bool)

(assert (=> b!3724845 (= e!2305365 tp_is_empty!18825)))

(declare-fun b!3724846 () Bool)

(declare-fun tp!1133068 () Bool)

(declare-fun tp!1133067 () Bool)

(assert (=> b!3724846 (= e!2305365 (and tp!1133068 tp!1133067))))

(declare-fun b!3724848 () Bool)

(declare-fun tp!1133065 () Bool)

(declare-fun tp!1133069 () Bool)

(assert (=> b!3724848 (= e!2305365 (and tp!1133065 tp!1133069))))

(assert (=> b!3724653 (= tp!1132947 e!2305365)))

(declare-fun b!3724847 () Bool)

(declare-fun tp!1133066 () Bool)

(assert (=> b!3724847 (= e!2305365 tp!1133066)))

(assert (= (and b!3724653 ((_ is ElementMatch!10905) (regTwo!22323 (regOne!22322 r!26968)))) b!3724845))

(assert (= (and b!3724653 ((_ is Concat!17176) (regTwo!22323 (regOne!22322 r!26968)))) b!3724846))

(assert (= (and b!3724653 ((_ is Star!10905) (regTwo!22323 (regOne!22322 r!26968)))) b!3724847))

(assert (= (and b!3724653 ((_ is Union!10905) (regTwo!22323 (regOne!22322 r!26968)))) b!3724848))

(declare-fun b!3724849 () Bool)

(declare-fun e!2305366 () Bool)

(assert (=> b!3724849 (= e!2305366 tp_is_empty!18825)))

(declare-fun b!3724850 () Bool)

(declare-fun tp!1133073 () Bool)

(declare-fun tp!1133072 () Bool)

(assert (=> b!3724850 (= e!2305366 (and tp!1133073 tp!1133072))))

(declare-fun b!3724852 () Bool)

(declare-fun tp!1133070 () Bool)

(declare-fun tp!1133074 () Bool)

(assert (=> b!3724852 (= e!2305366 (and tp!1133070 tp!1133074))))

(assert (=> b!3724644 (= tp!1132930 e!2305366)))

(declare-fun b!3724851 () Bool)

(declare-fun tp!1133071 () Bool)

(assert (=> b!3724851 (= e!2305366 tp!1133071)))

(assert (= (and b!3724644 ((_ is ElementMatch!10905) (regOne!22323 (reg!11234 r!26968)))) b!3724849))

(assert (= (and b!3724644 ((_ is Concat!17176) (regOne!22323 (reg!11234 r!26968)))) b!3724850))

(assert (= (and b!3724644 ((_ is Star!10905) (regOne!22323 (reg!11234 r!26968)))) b!3724851))

(assert (= (and b!3724644 ((_ is Union!10905) (regOne!22323 (reg!11234 r!26968)))) b!3724852))

(declare-fun b!3724853 () Bool)

(declare-fun e!2305367 () Bool)

(assert (=> b!3724853 (= e!2305367 tp_is_empty!18825)))

(declare-fun b!3724854 () Bool)

(declare-fun tp!1133078 () Bool)

(declare-fun tp!1133077 () Bool)

(assert (=> b!3724854 (= e!2305367 (and tp!1133078 tp!1133077))))

(declare-fun b!3724856 () Bool)

(declare-fun tp!1133075 () Bool)

(declare-fun tp!1133079 () Bool)

(assert (=> b!3724856 (= e!2305367 (and tp!1133075 tp!1133079))))

(assert (=> b!3724644 (= tp!1132934 e!2305367)))

(declare-fun b!3724855 () Bool)

(declare-fun tp!1133076 () Bool)

(assert (=> b!3724855 (= e!2305367 tp!1133076)))

(assert (= (and b!3724644 ((_ is ElementMatch!10905) (regTwo!22323 (reg!11234 r!26968)))) b!3724853))

(assert (= (and b!3724644 ((_ is Concat!17176) (regTwo!22323 (reg!11234 r!26968)))) b!3724854))

(assert (= (and b!3724644 ((_ is Star!10905) (regTwo!22323 (reg!11234 r!26968)))) b!3724855))

(assert (= (and b!3724644 ((_ is Union!10905) (regTwo!22323 (reg!11234 r!26968)))) b!3724856))

(check-sat (not bm!271159) (not b!3724804) (not b!3724823) (not bm!271142) (not bm!271147) (not b!3724790) (not d!1089714) (not b!3724814) (not b!3724799) (not b!3724770) (not b!3724788) (not b!3724830) (not b!3724847) (not bm!271138) (not b!3724787) (not b!3724846) (not d!1089696) (not b!3724776) (not b!3724764) (not bm!271152) (not b!3724783) (not b!3724791) (not b!3724835) (not b!3724708) (not b!3724800) (not b!3724778) (not b!3724836) (not b!3724816) (not b!3724795) (not b!3724755) (not b!3724768) (not b!3724834) (not b!3724760) (not b!3724844) (not b!3724662) (not bm!271149) (not b!3724779) (not b!3724763) tp_is_empty!18825 (not b!3724723) (not b!3724784) (not b!3724796) (not b!3724715) (not b!3724854) (not b!3724780) (not b!3724767) (not b!3724810) (not b!3724832) (not d!1089690) (not b!3724838) (not b!3724855) (not bm!271165) (not b!3724818) (not b!3724740) (not bm!271155) (not b!3724819) (not bm!271145) (not b!3724842) (not b!3724771) (not b!3724851) (not b!3724822) (not b!3724807) (not bm!271156) (not b!3724754) (not bm!271146) (not b!3724681) (not b!3724811) (not b!3724840) (not b!3724752) (not b!3724762) (not b!3724794) (not b!3724766) (not bm!271161) (not b!3724758) (not bm!271141) (not b!3724839) (not b!3724852) (not bm!271139) (not b!3724820) (not b!3724843) (not b!3724824) (not b!3724808) (not b!3724802) (not b!3724856) (not bm!271151) (not b!3724775) (not b!3724812) (not b!3724774) (not b!3724772) (not b!3724786) (not b!3724680) (not b!3724827) (not bm!271157) (not b!3724831) (not bm!271162) (not b!3724759) (not bm!271154) (not b!3724828) (not d!1089716) (not b!3724803) (not b!3724792) (not b!3724782) (not b!3724692) (not bm!271143) (not b!3724798) (not b!3724815) (not b!3724749) (not b!3724826) (not d!1089686) (not b!3724806) (not d!1089692) (not bm!271164) (not b!3724850) (not b!3724848))
(check-sat)
