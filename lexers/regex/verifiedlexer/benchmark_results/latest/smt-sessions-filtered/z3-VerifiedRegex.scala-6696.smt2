; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351066 () Bool)

(assert start!351066)

(declare-fun b!3732145 () Bool)

(declare-fun e!2308906 () Bool)

(declare-fun tp!1135930 () Bool)

(declare-fun tp!1135933 () Bool)

(assert (=> b!3732145 (= e!2308906 (and tp!1135930 tp!1135933))))

(declare-fun b!3732146 () Bool)

(declare-fun tp!1135934 () Bool)

(assert (=> b!3732146 (= e!2308906 tp!1135934)))

(declare-fun b!3732147 () Bool)

(declare-fun res!1514981 () Bool)

(declare-fun e!2308905 () Bool)

(assert (=> b!3732147 (=> (not res!1514981) (not e!2308905))))

(declare-datatypes ((C!22048 0))(
  ( (C!22049 (val!13072 Int)) )
))
(declare-datatypes ((Regex!10931 0))(
  ( (ElementMatch!10931 (c!646109 C!22048)) (Concat!17202 (regOne!22374 Regex!10931) (regTwo!22374 Regex!10931)) (EmptyExpr!10931) (Star!10931 (reg!11260 Regex!10931)) (EmptyLang!10931) (Union!10931 (regOne!22375 Regex!10931) (regTwo!22375 Regex!10931)) )
))
(declare-fun r!26968 () Regex!10931)

(declare-fun cNot!42 () C!22048)

(declare-datatypes ((List!39812 0))(
  ( (Nil!39688) (Cons!39688 (h!45108 C!22048) (t!302495 List!39812)) )
))
(declare-fun contains!8024 (List!39812 C!22048) Bool)

(declare-fun usedCharacters!1194 (Regex!10931) List!39812)

(assert (=> b!3732147 (= res!1514981 (not (contains!8024 (usedCharacters!1194 r!26968) cNot!42)))))

(declare-fun res!1514979 () Bool)

(assert (=> start!351066 (=> (not res!1514979) (not e!2308905))))

(declare-fun validRegex!5038 (Regex!10931) Bool)

(assert (=> start!351066 (= res!1514979 (validRegex!5038 r!26968))))

(assert (=> start!351066 e!2308905))

(assert (=> start!351066 e!2308906))

(declare-fun tp_is_empty!18877 () Bool)

(assert (=> start!351066 tp_is_empty!18877))

(declare-fun b!3732148 () Bool)

(assert (=> b!3732148 (= e!2308906 tp_is_empty!18877)))

(declare-fun b!3732149 () Bool)

(declare-fun res!1514980 () Bool)

(assert (=> b!3732149 (=> (not res!1514980) (not e!2308905))))

(declare-fun nullable!3839 (Regex!10931) Bool)

(assert (=> b!3732149 (= res!1514980 (nullable!3839 (regOne!22374 r!26968)))))

(declare-fun b!3732150 () Bool)

(declare-fun res!1514982 () Bool)

(assert (=> b!3732150 (=> (not res!1514982) (not e!2308905))))

(get-info :version)

(assert (=> b!3732150 (= res!1514982 (and (not ((_ is EmptyExpr!10931) r!26968)) (not ((_ is EmptyLang!10931) r!26968)) (not ((_ is ElementMatch!10931) r!26968)) (not ((_ is Union!10931) r!26968)) (not ((_ is Star!10931) r!26968))))))

(declare-fun b!3732151 () Bool)

(declare-fun tp!1135931 () Bool)

(declare-fun tp!1135932 () Bool)

(assert (=> b!3732151 (= e!2308906 (and tp!1135931 tp!1135932))))

(declare-fun b!3732152 () Bool)

(assert (=> b!3732152 (= e!2308905 (not (validRegex!5038 (regTwo!22374 r!26968))))))

(declare-fun c!13797 () C!22048)

(declare-fun derivativeStep!3366 (Regex!10931 C!22048) Regex!10931)

(assert (=> b!3732152 (not (contains!8024 (usedCharacters!1194 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57588 0))(
  ( (Unit!57589) )
))
(declare-fun lt!1298724 () Unit!57588)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!50 (Regex!10931 C!22048 C!22048) Unit!57588)

(assert (=> b!3732152 (= lt!1298724 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!50 (regOne!22374 r!26968) c!13797 cNot!42))))

(assert (= (and start!351066 res!1514979) b!3732147))

(assert (= (and b!3732147 res!1514981) b!3732150))

(assert (= (and b!3732150 res!1514982) b!3732149))

(assert (= (and b!3732149 res!1514980) b!3732152))

(assert (= (and start!351066 ((_ is ElementMatch!10931) r!26968)) b!3732148))

(assert (= (and start!351066 ((_ is Concat!17202) r!26968)) b!3732151))

(assert (= (and start!351066 ((_ is Star!10931) r!26968)) b!3732146))

(assert (= (and start!351066 ((_ is Union!10931) r!26968)) b!3732145))

(declare-fun m!4230807 () Bool)

(assert (=> b!3732147 m!4230807))

(assert (=> b!3732147 m!4230807))

(declare-fun m!4230809 () Bool)

(assert (=> b!3732147 m!4230809))

(declare-fun m!4230811 () Bool)

(assert (=> start!351066 m!4230811))

(declare-fun m!4230813 () Bool)

(assert (=> b!3732149 m!4230813))

(declare-fun m!4230815 () Bool)

(assert (=> b!3732152 m!4230815))

(declare-fun m!4230817 () Bool)

(assert (=> b!3732152 m!4230817))

(declare-fun m!4230819 () Bool)

(assert (=> b!3732152 m!4230819))

(declare-fun m!4230821 () Bool)

(assert (=> b!3732152 m!4230821))

(declare-fun m!4230823 () Bool)

(assert (=> b!3732152 m!4230823))

(assert (=> b!3732152 m!4230821))

(assert (=> b!3732152 m!4230817))

(check-sat (not b!3732146) (not start!351066) (not b!3732151) (not b!3732147) (not b!3732149) (not b!3732145) tp_is_empty!18877 (not b!3732152))
(check-sat)
(get-model)

(declare-fun d!1090795 () Bool)

(declare-fun lt!1298727 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5787 (List!39812) (InoxSet C!22048))

(assert (=> d!1090795 (= lt!1298727 (select (content!5787 (usedCharacters!1194 r!26968)) cNot!42))))

(declare-fun e!2308912 () Bool)

(assert (=> d!1090795 (= lt!1298727 e!2308912)))

(declare-fun res!1514987 () Bool)

(assert (=> d!1090795 (=> (not res!1514987) (not e!2308912))))

(assert (=> d!1090795 (= res!1514987 ((_ is Cons!39688) (usedCharacters!1194 r!26968)))))

(assert (=> d!1090795 (= (contains!8024 (usedCharacters!1194 r!26968) cNot!42) lt!1298727)))

(declare-fun b!3732157 () Bool)

(declare-fun e!2308911 () Bool)

(assert (=> b!3732157 (= e!2308912 e!2308911)))

(declare-fun res!1514988 () Bool)

(assert (=> b!3732157 (=> res!1514988 e!2308911)))

(assert (=> b!3732157 (= res!1514988 (= (h!45108 (usedCharacters!1194 r!26968)) cNot!42))))

(declare-fun b!3732158 () Bool)

(assert (=> b!3732158 (= e!2308911 (contains!8024 (t!302495 (usedCharacters!1194 r!26968)) cNot!42))))

(assert (= (and d!1090795 res!1514987) b!3732157))

(assert (= (and b!3732157 (not res!1514988)) b!3732158))

(assert (=> d!1090795 m!4230807))

(declare-fun m!4230825 () Bool)

(assert (=> d!1090795 m!4230825))

(declare-fun m!4230827 () Bool)

(assert (=> d!1090795 m!4230827))

(declare-fun m!4230829 () Bool)

(assert (=> b!3732158 m!4230829))

(assert (=> b!3732147 d!1090795))

(declare-fun bm!272744 () Bool)

(declare-fun call!272752 () List!39812)

(declare-fun c!646128 () Bool)

(assert (=> bm!272744 (= call!272752 (usedCharacters!1194 (ite c!646128 (regTwo!22375 r!26968) (regOne!22374 r!26968))))))

(declare-fun b!3732198 () Bool)

(declare-fun e!2308935 () List!39812)

(declare-fun e!2308937 () List!39812)

(assert (=> b!3732198 (= e!2308935 e!2308937)))

(assert (=> b!3732198 (= c!646128 ((_ is Union!10931) r!26968))))

(declare-fun b!3732199 () Bool)

(declare-fun e!2308936 () List!39812)

(assert (=> b!3732199 (= e!2308936 (Cons!39688 (c!646109 r!26968) Nil!39688))))

(declare-fun bm!272745 () Bool)

(declare-fun call!272750 () List!39812)

(declare-fun call!272751 () List!39812)

(declare-fun ++!9854 (List!39812 List!39812) List!39812)

(assert (=> bm!272745 (= call!272751 (++!9854 (ite c!646128 call!272750 call!272752) (ite c!646128 call!272752 call!272750)))))

(declare-fun b!3732200 () Bool)

(declare-fun c!646129 () Bool)

(assert (=> b!3732200 (= c!646129 ((_ is Star!10931) r!26968))))

(assert (=> b!3732200 (= e!2308936 e!2308935)))

(declare-fun b!3732201 () Bool)

(declare-fun e!2308938 () List!39812)

(assert (=> b!3732201 (= e!2308938 Nil!39688)))

(declare-fun bm!272746 () Bool)

(declare-fun call!272749 () List!39812)

(assert (=> bm!272746 (= call!272749 (usedCharacters!1194 (ite c!646129 (reg!11260 r!26968) (ite c!646128 (regOne!22375 r!26968) (regTwo!22374 r!26968)))))))

(declare-fun b!3732202 () Bool)

(assert (=> b!3732202 (= e!2308935 call!272749)))

(declare-fun b!3732203 () Bool)

(assert (=> b!3732203 (= e!2308937 call!272751)))

(declare-fun b!3732197 () Bool)

(assert (=> b!3732197 (= e!2308938 e!2308936)))

(declare-fun c!646127 () Bool)

(assert (=> b!3732197 (= c!646127 ((_ is ElementMatch!10931) r!26968))))

(declare-fun d!1090799 () Bool)

(declare-fun c!646126 () Bool)

(assert (=> d!1090799 (= c!646126 (or ((_ is EmptyExpr!10931) r!26968) ((_ is EmptyLang!10931) r!26968)))))

(assert (=> d!1090799 (= (usedCharacters!1194 r!26968) e!2308938)))

(declare-fun bm!272747 () Bool)

(assert (=> bm!272747 (= call!272750 call!272749)))

(declare-fun b!3732204 () Bool)

(assert (=> b!3732204 (= e!2308937 call!272751)))

(assert (= (and d!1090799 c!646126) b!3732201))

(assert (= (and d!1090799 (not c!646126)) b!3732197))

(assert (= (and b!3732197 c!646127) b!3732199))

(assert (= (and b!3732197 (not c!646127)) b!3732200))

(assert (= (and b!3732200 c!646129) b!3732202))

(assert (= (and b!3732200 (not c!646129)) b!3732198))

(assert (= (and b!3732198 c!646128) b!3732203))

(assert (= (and b!3732198 (not c!646128)) b!3732204))

(assert (= (or b!3732203 b!3732204) bm!272747))

(assert (= (or b!3732203 b!3732204) bm!272744))

(assert (= (or b!3732203 b!3732204) bm!272745))

(assert (= (or b!3732202 bm!272747) bm!272746))

(declare-fun m!4230837 () Bool)

(assert (=> bm!272744 m!4230837))

(declare-fun m!4230839 () Bool)

(assert (=> bm!272745 m!4230839))

(declare-fun m!4230841 () Bool)

(assert (=> bm!272746 m!4230841))

(assert (=> b!3732147 d!1090799))

(declare-fun bm!272765 () Bool)

(declare-fun call!272769 () Regex!10931)

(declare-fun call!272772 () Regex!10931)

(assert (=> bm!272765 (= call!272769 call!272772)))

(declare-fun b!3732253 () Bool)

(declare-fun e!2308965 () Regex!10931)

(declare-fun call!272770 () Regex!10931)

(declare-fun call!272771 () Regex!10931)

(assert (=> b!3732253 (= e!2308965 (Union!10931 call!272770 call!272771))))

(declare-fun bm!272766 () Bool)

(assert (=> bm!272766 (= call!272772 call!272770)))

(declare-fun b!3732254 () Bool)

(declare-fun e!2308963 () Regex!10931)

(assert (=> b!3732254 (= e!2308963 (ite (= c!13797 (c!646109 (regOne!22374 r!26968))) EmptyExpr!10931 EmptyLang!10931))))

(declare-fun b!3732255 () Bool)

(declare-fun e!2308964 () Regex!10931)

(assert (=> b!3732255 (= e!2308964 EmptyLang!10931)))

(declare-fun b!3732256 () Bool)

(declare-fun e!2308967 () Regex!10931)

(assert (=> b!3732256 (= e!2308967 (Union!10931 (Concat!17202 call!272771 (regTwo!22374 (regOne!22374 r!26968))) call!272769))))

(declare-fun bm!272767 () Bool)

(declare-fun c!646154 () Bool)

(assert (=> bm!272767 (= call!272771 (derivativeStep!3366 (ite c!646154 (regTwo!22375 (regOne!22374 r!26968)) (regOne!22374 (regOne!22374 r!26968))) c!13797))))

(declare-fun c!646155 () Bool)

(declare-fun c!646157 () Bool)

(declare-fun bm!272764 () Bool)

(assert (=> bm!272764 (= call!272770 (derivativeStep!3366 (ite c!646154 (regOne!22375 (regOne!22374 r!26968)) (ite c!646157 (reg!11260 (regOne!22374 r!26968)) (ite c!646155 (regTwo!22374 (regOne!22374 r!26968)) (regOne!22374 (regOne!22374 r!26968))))) c!13797))))

(declare-fun d!1090803 () Bool)

(declare-fun lt!1298735 () Regex!10931)

(assert (=> d!1090803 (validRegex!5038 lt!1298735)))

(assert (=> d!1090803 (= lt!1298735 e!2308964)))

(declare-fun c!646156 () Bool)

(assert (=> d!1090803 (= c!646156 (or ((_ is EmptyExpr!10931) (regOne!22374 r!26968)) ((_ is EmptyLang!10931) (regOne!22374 r!26968))))))

(assert (=> d!1090803 (validRegex!5038 (regOne!22374 r!26968))))

(assert (=> d!1090803 (= (derivativeStep!3366 (regOne!22374 r!26968) c!13797) lt!1298735)))

(declare-fun b!3732257 () Bool)

(assert (=> b!3732257 (= c!646154 ((_ is Union!10931) (regOne!22374 r!26968)))))

(assert (=> b!3732257 (= e!2308963 e!2308965)))

(declare-fun b!3732258 () Bool)

(assert (=> b!3732258 (= c!646155 (nullable!3839 (regOne!22374 (regOne!22374 r!26968))))))

(declare-fun e!2308966 () Regex!10931)

(assert (=> b!3732258 (= e!2308966 e!2308967)))

(declare-fun b!3732259 () Bool)

(assert (=> b!3732259 (= e!2308967 (Union!10931 (Concat!17202 call!272769 (regTwo!22374 (regOne!22374 r!26968))) EmptyLang!10931))))

(declare-fun b!3732260 () Bool)

(assert (=> b!3732260 (= e!2308964 e!2308963)))

(declare-fun c!646158 () Bool)

(assert (=> b!3732260 (= c!646158 ((_ is ElementMatch!10931) (regOne!22374 r!26968)))))

(declare-fun b!3732261 () Bool)

(assert (=> b!3732261 (= e!2308965 e!2308966)))

(assert (=> b!3732261 (= c!646157 ((_ is Star!10931) (regOne!22374 r!26968)))))

(declare-fun b!3732262 () Bool)

(assert (=> b!3732262 (= e!2308966 (Concat!17202 call!272772 (regOne!22374 r!26968)))))

(assert (= (and d!1090803 c!646156) b!3732255))

(assert (= (and d!1090803 (not c!646156)) b!3732260))

(assert (= (and b!3732260 c!646158) b!3732254))

(assert (= (and b!3732260 (not c!646158)) b!3732257))

(assert (= (and b!3732257 c!646154) b!3732253))

(assert (= (and b!3732257 (not c!646154)) b!3732261))

(assert (= (and b!3732261 c!646157) b!3732262))

(assert (= (and b!3732261 (not c!646157)) b!3732258))

(assert (= (and b!3732258 c!646155) b!3732256))

(assert (= (and b!3732258 (not c!646155)) b!3732259))

(assert (= (or b!3732256 b!3732259) bm!272765))

(assert (= (or b!3732262 bm!272765) bm!272766))

(assert (= (or b!3732253 bm!272766) bm!272764))

(assert (= (or b!3732253 b!3732256) bm!272767))

(declare-fun m!4230849 () Bool)

(assert (=> bm!272767 m!4230849))

(declare-fun m!4230851 () Bool)

(assert (=> bm!272764 m!4230851))

(declare-fun m!4230853 () Bool)

(assert (=> d!1090803 m!4230853))

(declare-fun m!4230855 () Bool)

(assert (=> d!1090803 m!4230855))

(declare-fun m!4230857 () Bool)

(assert (=> b!3732258 m!4230857))

(assert (=> b!3732152 d!1090803))

(declare-fun c!646161 () Bool)

(declare-fun call!272780 () List!39812)

(declare-fun bm!272772 () Bool)

(assert (=> bm!272772 (= call!272780 (usedCharacters!1194 (ite c!646161 (regTwo!22375 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) (regOne!22374 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)))))))

(declare-fun b!3732264 () Bool)

(declare-fun e!2308968 () List!39812)

(declare-fun e!2308970 () List!39812)

(assert (=> b!3732264 (= e!2308968 e!2308970)))

(assert (=> b!3732264 (= c!646161 ((_ is Union!10931) (derivativeStep!3366 (regOne!22374 r!26968) c!13797)))))

(declare-fun b!3732265 () Bool)

(declare-fun e!2308969 () List!39812)

(assert (=> b!3732265 (= e!2308969 (Cons!39688 (c!646109 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) Nil!39688))))

(declare-fun call!272778 () List!39812)

(declare-fun call!272779 () List!39812)

(declare-fun bm!272773 () Bool)

(assert (=> bm!272773 (= call!272779 (++!9854 (ite c!646161 call!272778 call!272780) (ite c!646161 call!272780 call!272778)))))

(declare-fun b!3732266 () Bool)

(declare-fun c!646162 () Bool)

(assert (=> b!3732266 (= c!646162 ((_ is Star!10931) (derivativeStep!3366 (regOne!22374 r!26968) c!13797)))))

(assert (=> b!3732266 (= e!2308969 e!2308968)))

(declare-fun b!3732267 () Bool)

(declare-fun e!2308971 () List!39812)

(assert (=> b!3732267 (= e!2308971 Nil!39688)))

(declare-fun call!272777 () List!39812)

(declare-fun bm!272774 () Bool)

(assert (=> bm!272774 (= call!272777 (usedCharacters!1194 (ite c!646162 (reg!11260 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) (ite c!646161 (regOne!22375 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) (regTwo!22374 (derivativeStep!3366 (regOne!22374 r!26968) c!13797))))))))

(declare-fun b!3732268 () Bool)

(assert (=> b!3732268 (= e!2308968 call!272777)))

(declare-fun b!3732269 () Bool)

(assert (=> b!3732269 (= e!2308970 call!272779)))

(declare-fun b!3732263 () Bool)

(assert (=> b!3732263 (= e!2308971 e!2308969)))

(declare-fun c!646160 () Bool)

(assert (=> b!3732263 (= c!646160 ((_ is ElementMatch!10931) (derivativeStep!3366 (regOne!22374 r!26968) c!13797)))))

(declare-fun d!1090807 () Bool)

(declare-fun c!646159 () Bool)

(assert (=> d!1090807 (= c!646159 (or ((_ is EmptyExpr!10931) (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) ((_ is EmptyLang!10931) (derivativeStep!3366 (regOne!22374 r!26968) c!13797))))))

(assert (=> d!1090807 (= (usedCharacters!1194 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) e!2308971)))

(declare-fun bm!272775 () Bool)

(assert (=> bm!272775 (= call!272778 call!272777)))

(declare-fun b!3732270 () Bool)

(assert (=> b!3732270 (= e!2308970 call!272779)))

(assert (= (and d!1090807 c!646159) b!3732267))

(assert (= (and d!1090807 (not c!646159)) b!3732263))

(assert (= (and b!3732263 c!646160) b!3732265))

(assert (= (and b!3732263 (not c!646160)) b!3732266))

(assert (= (and b!3732266 c!646162) b!3732268))

(assert (= (and b!3732266 (not c!646162)) b!3732264))

(assert (= (and b!3732264 c!646161) b!3732269))

(assert (= (and b!3732264 (not c!646161)) b!3732270))

(assert (= (or b!3732269 b!3732270) bm!272775))

(assert (= (or b!3732269 b!3732270) bm!272772))

(assert (= (or b!3732269 b!3732270) bm!272773))

(assert (= (or b!3732268 bm!272775) bm!272774))

(declare-fun m!4230859 () Bool)

(assert (=> bm!272772 m!4230859))

(declare-fun m!4230861 () Bool)

(assert (=> bm!272773 m!4230861))

(declare-fun m!4230863 () Bool)

(assert (=> bm!272774 m!4230863))

(assert (=> b!3732152 d!1090807))

(declare-fun b!3732307 () Bool)

(declare-fun e!2309000 () Bool)

(declare-fun e!2308998 () Bool)

(assert (=> b!3732307 (= e!2309000 e!2308998)))

(declare-fun c!646177 () Bool)

(assert (=> b!3732307 (= c!646177 ((_ is Union!10931) (regTwo!22374 r!26968)))))

(declare-fun b!3732308 () Bool)

(declare-fun res!1515005 () Bool)

(declare-fun e!2308999 () Bool)

(assert (=> b!3732308 (=> (not res!1515005) (not e!2308999))))

(declare-fun call!272795 () Bool)

(assert (=> b!3732308 (= res!1515005 call!272795)))

(assert (=> b!3732308 (= e!2308998 e!2308999)))

(declare-fun b!3732309 () Bool)

(declare-fun e!2308996 () Bool)

(declare-fun call!272796 () Bool)

(assert (=> b!3732309 (= e!2308996 call!272796)))

(declare-fun b!3732310 () Bool)

(declare-fun e!2309001 () Bool)

(declare-fun call!272797 () Bool)

(assert (=> b!3732310 (= e!2309001 call!272797)))

(declare-fun bm!272790 () Bool)

(assert (=> bm!272790 (= call!272795 call!272796)))

(declare-fun b!3732311 () Bool)

(declare-fun e!2308995 () Bool)

(assert (=> b!3732311 (= e!2308995 e!2309000)))

(declare-fun c!646176 () Bool)

(assert (=> b!3732311 (= c!646176 ((_ is Star!10931) (regTwo!22374 r!26968)))))

(declare-fun bm!272791 () Bool)

(assert (=> bm!272791 (= call!272797 (validRegex!5038 (ite c!646177 (regTwo!22375 (regTwo!22374 r!26968)) (regTwo!22374 (regTwo!22374 r!26968)))))))

(declare-fun d!1090809 () Bool)

(declare-fun res!1515008 () Bool)

(assert (=> d!1090809 (=> res!1515008 e!2308995)))

(assert (=> d!1090809 (= res!1515008 ((_ is ElementMatch!10931) (regTwo!22374 r!26968)))))

(assert (=> d!1090809 (= (validRegex!5038 (regTwo!22374 r!26968)) e!2308995)))

(declare-fun b!3732312 () Bool)

(declare-fun e!2308997 () Bool)

(assert (=> b!3732312 (= e!2308997 e!2309001)))

(declare-fun res!1515009 () Bool)

(assert (=> b!3732312 (=> (not res!1515009) (not e!2309001))))

(assert (=> b!3732312 (= res!1515009 call!272795)))

(declare-fun b!3732313 () Bool)

(assert (=> b!3732313 (= e!2309000 e!2308996)))

(declare-fun res!1515006 () Bool)

(assert (=> b!3732313 (= res!1515006 (not (nullable!3839 (reg!11260 (regTwo!22374 r!26968)))))))

(assert (=> b!3732313 (=> (not res!1515006) (not e!2308996))))

(declare-fun b!3732314 () Bool)

(assert (=> b!3732314 (= e!2308999 call!272797)))

(declare-fun b!3732315 () Bool)

(declare-fun res!1515007 () Bool)

(assert (=> b!3732315 (=> res!1515007 e!2308997)))

(assert (=> b!3732315 (= res!1515007 (not ((_ is Concat!17202) (regTwo!22374 r!26968))))))

(assert (=> b!3732315 (= e!2308998 e!2308997)))

(declare-fun bm!272792 () Bool)

(assert (=> bm!272792 (= call!272796 (validRegex!5038 (ite c!646176 (reg!11260 (regTwo!22374 r!26968)) (ite c!646177 (regOne!22375 (regTwo!22374 r!26968)) (regOne!22374 (regTwo!22374 r!26968))))))))

(assert (= (and d!1090809 (not res!1515008)) b!3732311))

(assert (= (and b!3732311 c!646176) b!3732313))

(assert (= (and b!3732311 (not c!646176)) b!3732307))

(assert (= (and b!3732313 res!1515006) b!3732309))

(assert (= (and b!3732307 c!646177) b!3732308))

(assert (= (and b!3732307 (not c!646177)) b!3732315))

(assert (= (and b!3732308 res!1515005) b!3732314))

(assert (= (and b!3732315 (not res!1515007)) b!3732312))

(assert (= (and b!3732312 res!1515009) b!3732310))

(assert (= (or b!3732314 b!3732310) bm!272791))

(assert (= (or b!3732308 b!3732312) bm!272790))

(assert (= (or b!3732309 bm!272790) bm!272792))

(declare-fun m!4230881 () Bool)

(assert (=> bm!272791 m!4230881))

(declare-fun m!4230883 () Bool)

(assert (=> b!3732313 m!4230883))

(declare-fun m!4230885 () Bool)

(assert (=> bm!272792 m!4230885))

(assert (=> b!3732152 d!1090809))

(declare-fun d!1090815 () Bool)

(assert (=> d!1090815 (not (contains!8024 (usedCharacters!1194 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298739 () Unit!57588)

(declare-fun choose!22232 (Regex!10931 C!22048 C!22048) Unit!57588)

(assert (=> d!1090815 (= lt!1298739 (choose!22232 (regOne!22374 r!26968) c!13797 cNot!42))))

(assert (=> d!1090815 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!50 (regOne!22374 r!26968) c!13797 cNot!42) lt!1298739)))

(declare-fun bs!575106 () Bool)

(assert (= bs!575106 d!1090815))

(assert (=> bs!575106 m!4230821))

(assert (=> bs!575106 m!4230821))

(assert (=> bs!575106 m!4230817))

(assert (=> bs!575106 m!4230817))

(assert (=> bs!575106 m!4230819))

(declare-fun m!4230887 () Bool)

(assert (=> bs!575106 m!4230887))

(assert (=> b!3732152 d!1090815))

(declare-fun d!1090817 () Bool)

(declare-fun lt!1298740 () Bool)

(assert (=> d!1090817 (= lt!1298740 (select (content!5787 (usedCharacters!1194 (derivativeStep!3366 (regOne!22374 r!26968) c!13797))) cNot!42))))

(declare-fun e!2309017 () Bool)

(assert (=> d!1090817 (= lt!1298740 e!2309017)))

(declare-fun res!1515020 () Bool)

(assert (=> d!1090817 (=> (not res!1515020) (not e!2309017))))

(assert (=> d!1090817 (= res!1515020 ((_ is Cons!39688) (usedCharacters!1194 (derivativeStep!3366 (regOne!22374 r!26968) c!13797))))))

(assert (=> d!1090817 (= (contains!8024 (usedCharacters!1194 (derivativeStep!3366 (regOne!22374 r!26968) c!13797)) cNot!42) lt!1298740)))

(declare-fun b!3732334 () Bool)

(declare-fun e!2309016 () Bool)

(assert (=> b!3732334 (= e!2309017 e!2309016)))

(declare-fun res!1515021 () Bool)

(assert (=> b!3732334 (=> res!1515021 e!2309016)))

(assert (=> b!3732334 (= res!1515021 (= (h!45108 (usedCharacters!1194 (derivativeStep!3366 (regOne!22374 r!26968) c!13797))) cNot!42))))

(declare-fun b!3732335 () Bool)

(assert (=> b!3732335 (= e!2309016 (contains!8024 (t!302495 (usedCharacters!1194 (derivativeStep!3366 (regOne!22374 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1090817 res!1515020) b!3732334))

(assert (= (and b!3732334 (not res!1515021)) b!3732335))

(assert (=> d!1090817 m!4230817))

(declare-fun m!4230889 () Bool)

(assert (=> d!1090817 m!4230889))

(declare-fun m!4230891 () Bool)

(assert (=> d!1090817 m!4230891))

(declare-fun m!4230893 () Bool)

(assert (=> b!3732335 m!4230893))

(assert (=> b!3732152 d!1090817))

(declare-fun b!3732336 () Bool)

(declare-fun e!2309023 () Bool)

(declare-fun e!2309021 () Bool)

(assert (=> b!3732336 (= e!2309023 e!2309021)))

(declare-fun c!646184 () Bool)

(assert (=> b!3732336 (= c!646184 ((_ is Union!10931) r!26968))))

(declare-fun b!3732337 () Bool)

(declare-fun res!1515022 () Bool)

(declare-fun e!2309022 () Bool)

(assert (=> b!3732337 (=> (not res!1515022) (not e!2309022))))

(declare-fun call!272802 () Bool)

(assert (=> b!3732337 (= res!1515022 call!272802)))

(assert (=> b!3732337 (= e!2309021 e!2309022)))

(declare-fun b!3732338 () Bool)

(declare-fun e!2309019 () Bool)

(declare-fun call!272803 () Bool)

(assert (=> b!3732338 (= e!2309019 call!272803)))

(declare-fun b!3732339 () Bool)

(declare-fun e!2309024 () Bool)

(declare-fun call!272804 () Bool)

(assert (=> b!3732339 (= e!2309024 call!272804)))

(declare-fun bm!272797 () Bool)

(assert (=> bm!272797 (= call!272802 call!272803)))

(declare-fun b!3732340 () Bool)

(declare-fun e!2309018 () Bool)

(assert (=> b!3732340 (= e!2309018 e!2309023)))

(declare-fun c!646183 () Bool)

(assert (=> b!3732340 (= c!646183 ((_ is Star!10931) r!26968))))

(declare-fun bm!272798 () Bool)

(assert (=> bm!272798 (= call!272804 (validRegex!5038 (ite c!646184 (regTwo!22375 r!26968) (regTwo!22374 r!26968))))))

(declare-fun d!1090819 () Bool)

(declare-fun res!1515025 () Bool)

(assert (=> d!1090819 (=> res!1515025 e!2309018)))

(assert (=> d!1090819 (= res!1515025 ((_ is ElementMatch!10931) r!26968))))

(assert (=> d!1090819 (= (validRegex!5038 r!26968) e!2309018)))

(declare-fun b!3732341 () Bool)

(declare-fun e!2309020 () Bool)

(assert (=> b!3732341 (= e!2309020 e!2309024)))

(declare-fun res!1515026 () Bool)

(assert (=> b!3732341 (=> (not res!1515026) (not e!2309024))))

(assert (=> b!3732341 (= res!1515026 call!272802)))

(declare-fun b!3732342 () Bool)

(assert (=> b!3732342 (= e!2309023 e!2309019)))

(declare-fun res!1515023 () Bool)

(assert (=> b!3732342 (= res!1515023 (not (nullable!3839 (reg!11260 r!26968))))))

(assert (=> b!3732342 (=> (not res!1515023) (not e!2309019))))

(declare-fun b!3732343 () Bool)

(assert (=> b!3732343 (= e!2309022 call!272804)))

(declare-fun b!3732344 () Bool)

(declare-fun res!1515024 () Bool)

(assert (=> b!3732344 (=> res!1515024 e!2309020)))

(assert (=> b!3732344 (= res!1515024 (not ((_ is Concat!17202) r!26968)))))

(assert (=> b!3732344 (= e!2309021 e!2309020)))

(declare-fun bm!272799 () Bool)

(assert (=> bm!272799 (= call!272803 (validRegex!5038 (ite c!646183 (reg!11260 r!26968) (ite c!646184 (regOne!22375 r!26968) (regOne!22374 r!26968)))))))

(assert (= (and d!1090819 (not res!1515025)) b!3732340))

(assert (= (and b!3732340 c!646183) b!3732342))

(assert (= (and b!3732340 (not c!646183)) b!3732336))

(assert (= (and b!3732342 res!1515023) b!3732338))

(assert (= (and b!3732336 c!646184) b!3732337))

(assert (= (and b!3732336 (not c!646184)) b!3732344))

(assert (= (and b!3732337 res!1515022) b!3732343))

(assert (= (and b!3732344 (not res!1515024)) b!3732341))

(assert (= (and b!3732341 res!1515026) b!3732339))

(assert (= (or b!3732343 b!3732339) bm!272798))

(assert (= (or b!3732337 b!3732341) bm!272797))

(assert (= (or b!3732338 bm!272797) bm!272799))

(declare-fun m!4230895 () Bool)

(assert (=> bm!272798 m!4230895))

(declare-fun m!4230897 () Bool)

(assert (=> b!3732342 m!4230897))

(declare-fun m!4230899 () Bool)

(assert (=> bm!272799 m!4230899))

(assert (=> start!351066 d!1090819))

(declare-fun d!1090821 () Bool)

(declare-fun nullableFct!1091 (Regex!10931) Bool)

(assert (=> d!1090821 (= (nullable!3839 (regOne!22374 r!26968)) (nullableFct!1091 (regOne!22374 r!26968)))))

(declare-fun bs!575107 () Bool)

(assert (= bs!575107 d!1090821))

(declare-fun m!4230901 () Bool)

(assert (=> bs!575107 m!4230901))

(assert (=> b!3732149 d!1090821))

(declare-fun b!3732358 () Bool)

(declare-fun e!2309027 () Bool)

(declare-fun tp!1135947 () Bool)

(declare-fun tp!1135946 () Bool)

(assert (=> b!3732358 (= e!2309027 (and tp!1135947 tp!1135946))))

(declare-fun b!3732357 () Bool)

(declare-fun tp!1135949 () Bool)

(assert (=> b!3732357 (= e!2309027 tp!1135949)))

(assert (=> b!3732146 (= tp!1135934 e!2309027)))

(declare-fun b!3732356 () Bool)

(declare-fun tp!1135948 () Bool)

(declare-fun tp!1135945 () Bool)

(assert (=> b!3732356 (= e!2309027 (and tp!1135948 tp!1135945))))

(declare-fun b!3732355 () Bool)

(assert (=> b!3732355 (= e!2309027 tp_is_empty!18877)))

(assert (= (and b!3732146 ((_ is ElementMatch!10931) (reg!11260 r!26968))) b!3732355))

(assert (= (and b!3732146 ((_ is Concat!17202) (reg!11260 r!26968))) b!3732356))

(assert (= (and b!3732146 ((_ is Star!10931) (reg!11260 r!26968))) b!3732357))

(assert (= (and b!3732146 ((_ is Union!10931) (reg!11260 r!26968))) b!3732358))

(declare-fun b!3732362 () Bool)

(declare-fun e!2309028 () Bool)

(declare-fun tp!1135952 () Bool)

(declare-fun tp!1135951 () Bool)

(assert (=> b!3732362 (= e!2309028 (and tp!1135952 tp!1135951))))

(declare-fun b!3732361 () Bool)

(declare-fun tp!1135954 () Bool)

(assert (=> b!3732361 (= e!2309028 tp!1135954)))

(assert (=> b!3732151 (= tp!1135931 e!2309028)))

(declare-fun b!3732360 () Bool)

(declare-fun tp!1135953 () Bool)

(declare-fun tp!1135950 () Bool)

(assert (=> b!3732360 (= e!2309028 (and tp!1135953 tp!1135950))))

(declare-fun b!3732359 () Bool)

(assert (=> b!3732359 (= e!2309028 tp_is_empty!18877)))

(assert (= (and b!3732151 ((_ is ElementMatch!10931) (regOne!22374 r!26968))) b!3732359))

(assert (= (and b!3732151 ((_ is Concat!17202) (regOne!22374 r!26968))) b!3732360))

(assert (= (and b!3732151 ((_ is Star!10931) (regOne!22374 r!26968))) b!3732361))

(assert (= (and b!3732151 ((_ is Union!10931) (regOne!22374 r!26968))) b!3732362))

(declare-fun b!3732366 () Bool)

(declare-fun e!2309029 () Bool)

(declare-fun tp!1135957 () Bool)

(declare-fun tp!1135956 () Bool)

(assert (=> b!3732366 (= e!2309029 (and tp!1135957 tp!1135956))))

(declare-fun b!3732365 () Bool)

(declare-fun tp!1135959 () Bool)

(assert (=> b!3732365 (= e!2309029 tp!1135959)))

(assert (=> b!3732151 (= tp!1135932 e!2309029)))

(declare-fun b!3732364 () Bool)

(declare-fun tp!1135958 () Bool)

(declare-fun tp!1135955 () Bool)

(assert (=> b!3732364 (= e!2309029 (and tp!1135958 tp!1135955))))

(declare-fun b!3732363 () Bool)

(assert (=> b!3732363 (= e!2309029 tp_is_empty!18877)))

(assert (= (and b!3732151 ((_ is ElementMatch!10931) (regTwo!22374 r!26968))) b!3732363))

(assert (= (and b!3732151 ((_ is Concat!17202) (regTwo!22374 r!26968))) b!3732364))

(assert (= (and b!3732151 ((_ is Star!10931) (regTwo!22374 r!26968))) b!3732365))

(assert (= (and b!3732151 ((_ is Union!10931) (regTwo!22374 r!26968))) b!3732366))

(declare-fun b!3732370 () Bool)

(declare-fun e!2309030 () Bool)

(declare-fun tp!1135962 () Bool)

(declare-fun tp!1135961 () Bool)

(assert (=> b!3732370 (= e!2309030 (and tp!1135962 tp!1135961))))

(declare-fun b!3732369 () Bool)

(declare-fun tp!1135964 () Bool)

(assert (=> b!3732369 (= e!2309030 tp!1135964)))

(assert (=> b!3732145 (= tp!1135930 e!2309030)))

(declare-fun b!3732368 () Bool)

(declare-fun tp!1135963 () Bool)

(declare-fun tp!1135960 () Bool)

(assert (=> b!3732368 (= e!2309030 (and tp!1135963 tp!1135960))))

(declare-fun b!3732367 () Bool)

(assert (=> b!3732367 (= e!2309030 tp_is_empty!18877)))

(assert (= (and b!3732145 ((_ is ElementMatch!10931) (regOne!22375 r!26968))) b!3732367))

(assert (= (and b!3732145 ((_ is Concat!17202) (regOne!22375 r!26968))) b!3732368))

(assert (= (and b!3732145 ((_ is Star!10931) (regOne!22375 r!26968))) b!3732369))

(assert (= (and b!3732145 ((_ is Union!10931) (regOne!22375 r!26968))) b!3732370))

(declare-fun b!3732374 () Bool)

(declare-fun e!2309031 () Bool)

(declare-fun tp!1135967 () Bool)

(declare-fun tp!1135966 () Bool)

(assert (=> b!3732374 (= e!2309031 (and tp!1135967 tp!1135966))))

(declare-fun b!3732373 () Bool)

(declare-fun tp!1135969 () Bool)

(assert (=> b!3732373 (= e!2309031 tp!1135969)))

(assert (=> b!3732145 (= tp!1135933 e!2309031)))

(declare-fun b!3732372 () Bool)

(declare-fun tp!1135968 () Bool)

(declare-fun tp!1135965 () Bool)

(assert (=> b!3732372 (= e!2309031 (and tp!1135968 tp!1135965))))

(declare-fun b!3732371 () Bool)

(assert (=> b!3732371 (= e!2309031 tp_is_empty!18877)))

(assert (= (and b!3732145 ((_ is ElementMatch!10931) (regTwo!22375 r!26968))) b!3732371))

(assert (= (and b!3732145 ((_ is Concat!17202) (regTwo!22375 r!26968))) b!3732372))

(assert (= (and b!3732145 ((_ is Star!10931) (regTwo!22375 r!26968))) b!3732373))

(assert (= (and b!3732145 ((_ is Union!10931) (regTwo!22375 r!26968))) b!3732374))

(check-sat (not bm!272767) (not b!3732335) (not b!3732365) (not bm!272773) (not b!3732258) (not bm!272745) (not b!3732370) (not b!3732342) (not d!1090817) (not b!3732360) (not bm!272764) (not bm!272792) (not d!1090803) (not bm!272774) (not bm!272791) (not b!3732356) (not bm!272746) (not b!3732374) (not b!3732364) (not bm!272799) (not bm!272798) (not b!3732158) (not bm!272772) (not b!3732358) (not b!3732368) (not bm!272744) (not b!3732369) (not d!1090815) (not d!1090821) (not b!3732372) tp_is_empty!18877 (not b!3732362) (not b!3732357) (not b!3732361) (not b!3732366) (not b!3732373) (not d!1090795) (not b!3732313))
(check-sat)
