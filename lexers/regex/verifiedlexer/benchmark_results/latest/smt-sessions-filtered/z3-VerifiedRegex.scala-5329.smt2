; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272380 () Bool)

(assert start!272380)

(declare-datatypes ((List!32996 0) (BalanceConc!19998 0) (Conc!10180 0) (Object!5262 0) (IArray!20365 0))(
  ( (Nil!32872) (Cons!32872 (h!38292 Object!5262) (t!229964 List!32996)) )
  ( (BalanceConc!19999 (c!455820 Conc!10180)) )
  ( (Node!10180 (left!24793 Conc!10180) (right!25123 Conc!10180) (csize!20590 Int) (cheight!10391 Int)) (Leaf!15510 (xs!13292 IArray!20365) (csize!20591 Int)) (Empty!10180) )
  ( (BalanceConc!19997 (value!158191 BalanceConc!19998)) (List!32995 (value!158192 List!32996)) (Character!122 (value!158193 (_ BitVec 16))) (Open!122 (value!158194 Int)) )
  ( (IArray!20366 (innerList!10240 List!32996)) )
))
(declare-datatypes ((T!54884 0))(
  ( (T!54885 (val!10346 Int)) )
))
(declare-datatypes ((List!32997 0))(
  ( (Nil!32873) (Cons!32873 (h!38293 T!54884) (t!229965 List!32997)) )
))
(declare-datatypes ((Vector!252 0))(
  ( (Vector!253 (underlying!8366 Object!5262) (overflowing!183 List!32997)) )
))
(declare-fun thiss!9329 () Vector!252)

(declare-fun t!5890 () T!54884)

(declare-fun list!12315 (Vector!252) List!32997)

(declare-fun choose!16630 (Vector!252 T!54884) Vector!252)

(declare-fun $colon+!221 (List!32997 T!54884) List!32997)

(assert (=> start!272380 (not (= (list!12315 (choose!16630 thiss!9329 t!5890)) ($colon+!221 (list!12315 thiss!9329) t!5890)))))

(declare-fun e!1778973 () Bool)

(assert (=> start!272380 e!1778973))

(declare-fun tp_is_empty!14415 () Bool)

(assert (=> start!272380 tp_is_empty!14415))

(declare-fun b!2813071 () Bool)

(declare-fun tp!898249 () Bool)

(declare-fun tp!898250 () Bool)

(assert (=> b!2813071 (= e!1778973 (and tp!898249 tp!898250))))

(assert (= start!272380 b!2813071))

(declare-fun m!3243529 () Bool)

(assert (=> start!272380 m!3243529))

(assert (=> start!272380 m!3243529))

(declare-fun m!3243531 () Bool)

(assert (=> start!272380 m!3243531))

(declare-fun m!3243533 () Bool)

(assert (=> start!272380 m!3243533))

(assert (=> start!272380 m!3243533))

(declare-fun m!3243535 () Bool)

(assert (=> start!272380 m!3243535))

(check-sat (not start!272380) (not b!2813071) tp_is_empty!14415)
(check-sat)
(get-model)

(declare-fun d!816624 () Bool)

(declare-fun choose!16631 (Vector!252) List!32997)

(assert (=> d!816624 (= (list!12315 (choose!16630 thiss!9329 t!5890)) (choose!16631 (choose!16630 thiss!9329 t!5890)))))

(declare-fun bs!516504 () Bool)

(assert (= bs!516504 d!816624))

(assert (=> bs!516504 m!3243529))

(declare-fun m!3243541 () Bool)

(assert (=> bs!516504 m!3243541))

(assert (=> start!272380 d!816624))

(declare-fun d!816628 () Bool)

(declare-fun choose!16633 (Vector!252 T!54884) Vector!252)

(assert (=> d!816628 (= (choose!16630 thiss!9329 t!5890) (choose!16633 thiss!9329 t!5890))))

(declare-fun bs!516505 () Bool)

(assert (= bs!516505 d!816628))

(declare-fun m!3243543 () Bool)

(assert (=> bs!516505 m!3243543))

(assert (=> start!272380 d!816628))

(declare-fun lt!1005006 () List!32997)

(declare-fun b!2813104 () Bool)

(declare-fun e!1778986 () Bool)

(declare-fun ++!8078 (List!32997 List!32997) List!32997)

(assert (=> b!2813104 (= e!1778986 (= lt!1005006 (++!8078 (list!12315 thiss!9329) (Cons!32873 t!5890 Nil!32873))))))

(declare-fun b!2813105 () Bool)

(declare-fun e!1778988 () Bool)

(declare-fun call!183157 () (_ BitVec 32))

(declare-fun call!183158 () (_ BitVec 32))

(assert (=> b!2813105 (= e!1778988 (= call!183157 (bvadd call!183158 #b00000000000000000000000000000001)))))

(declare-fun b!2813106 () Bool)

(declare-fun e!1778987 () List!32997)

(assert (=> b!2813106 (= e!1778987 (Cons!32873 (h!38293 (list!12315 thiss!9329)) ($colon+!221 (t!229965 (list!12315 thiss!9329)) t!5890)))))

(declare-fun b!2813107 () Bool)

(assert (=> b!2813107 (= e!1778988 (= call!183157 call!183158))))

(declare-fun b!2813108 () Bool)

(assert (=> b!2813108 (= e!1778987 (Cons!32873 t!5890 (list!12315 thiss!9329)))))

(declare-fun b!2813109 () Bool)

(declare-fun res!1171044 () Bool)

(assert (=> b!2813109 (=> (not res!1171044) (not e!1778986))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4590 (List!32997) (InoxSet T!54884))

(assert (=> b!2813109 (= res!1171044 (= (content!4590 lt!1005006) ((_ map or) (content!4590 (list!12315 thiss!9329)) (store ((as const (Array T!54884 Bool)) false) t!5890 true))))))

(declare-fun bm!183152 () Bool)

(declare-fun isize!75 (List!32997) (_ BitVec 32))

(assert (=> bm!183152 (= call!183157 (isize!75 lt!1005006))))

(declare-fun b!2813110 () Bool)

(declare-fun res!1171041 () Bool)

(assert (=> b!2813110 (=> (not res!1171041) (not e!1778986))))

(declare-fun size!25615 (List!32997) Int)

(assert (=> b!2813110 (= res!1171041 (= (size!25615 lt!1005006) (+ (size!25615 (list!12315 thiss!9329)) 1)))))

(declare-fun d!816630 () Bool)

(assert (=> d!816630 e!1778986))

(declare-fun res!1171043 () Bool)

(assert (=> d!816630 (=> (not res!1171043) (not e!1778986))))

(get-info :version)

(assert (=> d!816630 (= res!1171043 ((_ is Cons!32873) lt!1005006))))

(assert (=> d!816630 (= lt!1005006 e!1778987)))

(declare-fun c!455829 () Bool)

(assert (=> d!816630 (= c!455829 ((_ is Nil!32873) (list!12315 thiss!9329)))))

(assert (=> d!816630 (= ($colon+!221 (list!12315 thiss!9329) t!5890) lt!1005006)))

(declare-fun bm!183153 () Bool)

(assert (=> bm!183153 (= call!183158 (isize!75 (list!12315 thiss!9329)))))

(declare-fun b!2813111 () Bool)

(declare-fun res!1171042 () Bool)

(assert (=> b!2813111 (=> (not res!1171042) (not e!1778986))))

(assert (=> b!2813111 (= res!1171042 e!1778988)))

(declare-fun c!455830 () Bool)

(assert (=> b!2813111 (= c!455830 (bvslt (isize!75 (list!12315 thiss!9329)) #b01111111111111111111111111111111))))

(assert (= (and d!816630 c!455829) b!2813108))

(assert (= (and d!816630 (not c!455829)) b!2813106))

(assert (= (and d!816630 res!1171043) b!2813110))

(assert (= (and b!2813110 res!1171041) b!2813111))

(assert (= (and b!2813111 c!455830) b!2813105))

(assert (= (and b!2813111 (not c!455830)) b!2813107))

(assert (= (or b!2813105 b!2813107) bm!183152))

(assert (= (or b!2813105 b!2813107) bm!183153))

(assert (= (and b!2813111 res!1171042) b!2813109))

(assert (= (and b!2813109 res!1171044) b!2813104))

(assert (=> bm!183153 m!3243533))

(declare-fun m!3243545 () Bool)

(assert (=> bm!183153 m!3243545))

(declare-fun m!3243547 () Bool)

(assert (=> b!2813106 m!3243547))

(declare-fun m!3243549 () Bool)

(assert (=> b!2813110 m!3243549))

(assert (=> b!2813110 m!3243533))

(declare-fun m!3243551 () Bool)

(assert (=> b!2813110 m!3243551))

(assert (=> b!2813104 m!3243533))

(declare-fun m!3243553 () Bool)

(assert (=> b!2813104 m!3243553))

(declare-fun m!3243555 () Bool)

(assert (=> b!2813109 m!3243555))

(assert (=> b!2813109 m!3243533))

(declare-fun m!3243557 () Bool)

(assert (=> b!2813109 m!3243557))

(declare-fun m!3243559 () Bool)

(assert (=> b!2813109 m!3243559))

(declare-fun m!3243561 () Bool)

(assert (=> bm!183152 m!3243561))

(assert (=> b!2813111 m!3243533))

(assert (=> b!2813111 m!3243545))

(assert (=> start!272380 d!816630))

(declare-fun d!816632 () Bool)

(assert (=> d!816632 (= (list!12315 thiss!9329) (choose!16631 thiss!9329))))

(declare-fun bs!516506 () Bool)

(assert (= bs!516506 d!816632))

(declare-fun m!3243569 () Bool)

(assert (=> bs!516506 m!3243569))

(assert (=> start!272380 d!816632))

(declare-fun b!2813137 () Bool)

(declare-fun e!1779001 () Bool)

(declare-fun tp!898259 () Bool)

(declare-fun inv!44633 (Conc!10180) Bool)

(assert (=> b!2813137 (= e!1779001 (and (inv!44633 (c!455820 (value!158191 (underlying!8366 thiss!9329)))) tp!898259))))

(declare-fun b!2813136 () Bool)

(declare-fun e!1779000 () Bool)

(declare-fun inv!44634 (BalanceConc!19998) Bool)

(assert (=> b!2813136 (= e!1779000 (and (inv!44634 (value!158191 (underlying!8366 thiss!9329))) e!1779001))))

(declare-fun b!2813138 () Bool)

(declare-fun tp!898260 () Bool)

(assert (=> b!2813138 (= e!1779000 tp!898260)))

(assert (=> b!2813071 (= tp!898249 e!1779000)))

(assert (= b!2813136 b!2813137))

(assert (= (and b!2813071 ((_ is BalanceConc!19997) (underlying!8366 thiss!9329))) b!2813136))

(assert (= (and b!2813071 ((_ is List!32995) (underlying!8366 thiss!9329))) b!2813138))

(declare-fun m!3243585 () Bool)

(assert (=> b!2813137 m!3243585))

(declare-fun m!3243587 () Bool)

(assert (=> b!2813136 m!3243587))

(declare-fun b!2813146 () Bool)

(declare-fun e!1779006 () Bool)

(declare-fun tp!898265 () Bool)

(assert (=> b!2813146 (= e!1779006 (and tp_is_empty!14415 tp!898265))))

(assert (=> b!2813071 (= tp!898250 e!1779006)))

(assert (= (and b!2813071 ((_ is Cons!32873) (overflowing!183 thiss!9329))) b!2813146))

(check-sat (not b!2813109) (not b!2813146) (not d!816628) (not d!816632) (not b!2813104) (not b!2813106) (not b!2813110) (not bm!183152) (not d!816624) tp_is_empty!14415 (not b!2813136) (not bm!183153) (not b!2813138) (not b!2813137) (not b!2813111))
(check-sat)
(get-model)

(declare-fun d!816636 () Bool)

(declare-fun lt!1005012 () (_ BitVec 32))

(assert (=> d!816636 (and (bvsle #b00000000000000000000000000000000 lt!1005012) (bvsle lt!1005012 #b01111111111111111111111111111111))))

(declare-fun e!1779012 () (_ BitVec 32))

(assert (=> d!816636 (= lt!1005012 e!1779012)))

(declare-fun c!455835 () Bool)

(assert (=> d!816636 (= c!455835 ((_ is Nil!32873) (list!12315 thiss!9329)))))

(assert (=> d!816636 (= (isize!75 (list!12315 thiss!9329)) lt!1005012)))

(declare-fun b!2813156 () Bool)

(assert (=> b!2813156 (= e!1779012 #b00000000000000000000000000000000)))

(declare-fun b!2813157 () Bool)

(declare-fun lt!1005013 () (_ BitVec 32))

(assert (=> b!2813157 (= e!1779012 (ite (= lt!1005013 #b01111111111111111111111111111111) lt!1005013 (bvadd #b00000000000000000000000000000001 lt!1005013)))))

(assert (=> b!2813157 (= lt!1005013 (isize!75 (t!229965 (list!12315 thiss!9329))))))

(assert (= (and d!816636 c!455835) b!2813156))

(assert (= (and d!816636 (not c!455835)) b!2813157))

(declare-fun m!3243593 () Bool)

(assert (=> b!2813157 m!3243593))

(assert (=> b!2813111 d!816636))

(declare-fun d!816638 () Bool)

(declare-fun res!1171051 () Vector!252)

(assert (=> d!816638 (= (list!12315 res!1171051) ($colon+!221 (list!12315 thiss!9329) t!5890))))

(declare-fun e!1779015 () Bool)

(assert (=> d!816638 e!1779015))

(assert (=> d!816638 (= (choose!16633 thiss!9329 t!5890) res!1171051)))

(declare-fun b!2813160 () Bool)

(declare-fun tp!898273 () Bool)

(declare-fun tp!898274 () Bool)

(assert (=> b!2813160 (= e!1779015 (and tp!898273 tp!898274))))

(assert (= d!816638 b!2813160))

(declare-fun m!3243595 () Bool)

(assert (=> d!816638 m!3243595))

(assert (=> d!816638 m!3243533))

(assert (=> d!816638 m!3243533))

(assert (=> d!816638 m!3243535))

(assert (=> d!816628 d!816638))

(assert (=> bm!183153 d!816636))

(declare-fun d!816640 () Bool)

(assert (=> d!816640 true))

(declare-fun e!1779018 () Bool)

(assert (=> d!816640 e!1779018))

(declare-fun res!1171054 () List!32997)

(assert (=> d!816640 (= (choose!16631 thiss!9329) res!1171054)))

(declare-fun b!2813163 () Bool)

(declare-fun tp!898277 () Bool)

(assert (=> b!2813163 (= e!1779018 (and tp_is_empty!14415 tp!898277))))

(assert (= (and d!816640 ((_ is Cons!32873) res!1171054)) b!2813163))

(assert (=> d!816632 d!816640))

(declare-fun b!2813173 () Bool)

(declare-fun e!1779024 () List!32997)

(assert (=> b!2813173 (= e!1779024 (Cons!32873 (h!38293 (list!12315 thiss!9329)) (++!8078 (t!229965 (list!12315 thiss!9329)) (Cons!32873 t!5890 Nil!32873))))))

(declare-fun d!816642 () Bool)

(declare-fun e!1779023 () Bool)

(assert (=> d!816642 e!1779023))

(declare-fun res!1171060 () Bool)

(assert (=> d!816642 (=> (not res!1171060) (not e!1779023))))

(declare-fun lt!1005016 () List!32997)

(assert (=> d!816642 (= res!1171060 (= (content!4590 lt!1005016) ((_ map or) (content!4590 (list!12315 thiss!9329)) (content!4590 (Cons!32873 t!5890 Nil!32873)))))))

(assert (=> d!816642 (= lt!1005016 e!1779024)))

(declare-fun c!455838 () Bool)

(assert (=> d!816642 (= c!455838 ((_ is Nil!32873) (list!12315 thiss!9329)))))

(assert (=> d!816642 (= (++!8078 (list!12315 thiss!9329) (Cons!32873 t!5890 Nil!32873)) lt!1005016)))

(declare-fun b!2813174 () Bool)

(declare-fun res!1171059 () Bool)

(assert (=> b!2813174 (=> (not res!1171059) (not e!1779023))))

(assert (=> b!2813174 (= res!1171059 (= (size!25615 lt!1005016) (+ (size!25615 (list!12315 thiss!9329)) (size!25615 (Cons!32873 t!5890 Nil!32873)))))))

(declare-fun b!2813175 () Bool)

(assert (=> b!2813175 (= e!1779023 (or (not (= (Cons!32873 t!5890 Nil!32873) Nil!32873)) (= lt!1005016 (list!12315 thiss!9329))))))

(declare-fun b!2813172 () Bool)

(assert (=> b!2813172 (= e!1779024 (Cons!32873 t!5890 Nil!32873))))

(assert (= (and d!816642 c!455838) b!2813172))

(assert (= (and d!816642 (not c!455838)) b!2813173))

(assert (= (and d!816642 res!1171060) b!2813174))

(assert (= (and b!2813174 res!1171059) b!2813175))

(declare-fun m!3243597 () Bool)

(assert (=> b!2813173 m!3243597))

(declare-fun m!3243599 () Bool)

(assert (=> d!816642 m!3243599))

(assert (=> d!816642 m!3243533))

(assert (=> d!816642 m!3243557))

(declare-fun m!3243601 () Bool)

(assert (=> d!816642 m!3243601))

(declare-fun m!3243603 () Bool)

(assert (=> b!2813174 m!3243603))

(assert (=> b!2813174 m!3243533))

(assert (=> b!2813174 m!3243551))

(declare-fun m!3243605 () Bool)

(assert (=> b!2813174 m!3243605))

(assert (=> b!2813104 d!816642))

(declare-fun lt!1005017 () List!32997)

(declare-fun b!2813176 () Bool)

(declare-fun e!1779025 () Bool)

(assert (=> b!2813176 (= e!1779025 (= lt!1005017 (++!8078 (t!229965 (list!12315 thiss!9329)) (Cons!32873 t!5890 Nil!32873))))))

(declare-fun b!2813177 () Bool)

(declare-fun e!1779027 () Bool)

(declare-fun call!183161 () (_ BitVec 32))

(declare-fun call!183162 () (_ BitVec 32))

(assert (=> b!2813177 (= e!1779027 (= call!183161 (bvadd call!183162 #b00000000000000000000000000000001)))))

(declare-fun b!2813178 () Bool)

(declare-fun e!1779026 () List!32997)

(assert (=> b!2813178 (= e!1779026 (Cons!32873 (h!38293 (t!229965 (list!12315 thiss!9329))) ($colon+!221 (t!229965 (t!229965 (list!12315 thiss!9329))) t!5890)))))

(declare-fun b!2813179 () Bool)

(assert (=> b!2813179 (= e!1779027 (= call!183161 call!183162))))

(declare-fun b!2813180 () Bool)

(assert (=> b!2813180 (= e!1779026 (Cons!32873 t!5890 (t!229965 (list!12315 thiss!9329))))))

(declare-fun b!2813181 () Bool)

(declare-fun res!1171064 () Bool)

(assert (=> b!2813181 (=> (not res!1171064) (not e!1779025))))

(assert (=> b!2813181 (= res!1171064 (= (content!4590 lt!1005017) ((_ map or) (content!4590 (t!229965 (list!12315 thiss!9329))) (store ((as const (Array T!54884 Bool)) false) t!5890 true))))))

(declare-fun bm!183156 () Bool)

(assert (=> bm!183156 (= call!183161 (isize!75 lt!1005017))))

(declare-fun b!2813182 () Bool)

(declare-fun res!1171061 () Bool)

(assert (=> b!2813182 (=> (not res!1171061) (not e!1779025))))

(assert (=> b!2813182 (= res!1171061 (= (size!25615 lt!1005017) (+ (size!25615 (t!229965 (list!12315 thiss!9329))) 1)))))

(declare-fun d!816644 () Bool)

(assert (=> d!816644 e!1779025))

(declare-fun res!1171063 () Bool)

(assert (=> d!816644 (=> (not res!1171063) (not e!1779025))))

(assert (=> d!816644 (= res!1171063 ((_ is Cons!32873) lt!1005017))))

(assert (=> d!816644 (= lt!1005017 e!1779026)))

(declare-fun c!455839 () Bool)

(assert (=> d!816644 (= c!455839 ((_ is Nil!32873) (t!229965 (list!12315 thiss!9329))))))

(assert (=> d!816644 (= ($colon+!221 (t!229965 (list!12315 thiss!9329)) t!5890) lt!1005017)))

(declare-fun bm!183157 () Bool)

(assert (=> bm!183157 (= call!183162 (isize!75 (t!229965 (list!12315 thiss!9329))))))

(declare-fun b!2813183 () Bool)

(declare-fun res!1171062 () Bool)

(assert (=> b!2813183 (=> (not res!1171062) (not e!1779025))))

(assert (=> b!2813183 (= res!1171062 e!1779027)))

(declare-fun c!455840 () Bool)

(assert (=> b!2813183 (= c!455840 (bvslt (isize!75 (t!229965 (list!12315 thiss!9329))) #b01111111111111111111111111111111))))

(assert (= (and d!816644 c!455839) b!2813180))

(assert (= (and d!816644 (not c!455839)) b!2813178))

(assert (= (and d!816644 res!1171063) b!2813182))

(assert (= (and b!2813182 res!1171061) b!2813183))

(assert (= (and b!2813183 c!455840) b!2813177))

(assert (= (and b!2813183 (not c!455840)) b!2813179))

(assert (= (or b!2813177 b!2813179) bm!183156))

(assert (= (or b!2813177 b!2813179) bm!183157))

(assert (= (and b!2813183 res!1171062) b!2813181))

(assert (= (and b!2813181 res!1171064) b!2813176))

(assert (=> bm!183157 m!3243593))

(declare-fun m!3243607 () Bool)

(assert (=> b!2813178 m!3243607))

(declare-fun m!3243609 () Bool)

(assert (=> b!2813182 m!3243609))

(declare-fun m!3243611 () Bool)

(assert (=> b!2813182 m!3243611))

(assert (=> b!2813176 m!3243597))

(declare-fun m!3243613 () Bool)

(assert (=> b!2813181 m!3243613))

(declare-fun m!3243615 () Bool)

(assert (=> b!2813181 m!3243615))

(assert (=> b!2813181 m!3243559))

(declare-fun m!3243617 () Bool)

(assert (=> bm!183156 m!3243617))

(assert (=> b!2813183 m!3243593))

(assert (=> b!2813106 d!816644))

(declare-fun d!816646 () Bool)

(declare-fun c!455843 () Bool)

(assert (=> d!816646 (= c!455843 ((_ is Nil!32873) lt!1005006))))

(declare-fun e!1779030 () (InoxSet T!54884))

(assert (=> d!816646 (= (content!4590 lt!1005006) e!1779030)))

(declare-fun b!2813188 () Bool)

(assert (=> b!2813188 (= e!1779030 ((as const (Array T!54884 Bool)) false))))

(declare-fun b!2813189 () Bool)

(assert (=> b!2813189 (= e!1779030 ((_ map or) (store ((as const (Array T!54884 Bool)) false) (h!38293 lt!1005006) true) (content!4590 (t!229965 lt!1005006))))))

(assert (= (and d!816646 c!455843) b!2813188))

(assert (= (and d!816646 (not c!455843)) b!2813189))

(declare-fun m!3243619 () Bool)

(assert (=> b!2813189 m!3243619))

(declare-fun m!3243621 () Bool)

(assert (=> b!2813189 m!3243621))

(assert (=> b!2813109 d!816646))

(declare-fun d!816648 () Bool)

(declare-fun c!455844 () Bool)

(assert (=> d!816648 (= c!455844 ((_ is Nil!32873) (list!12315 thiss!9329)))))

(declare-fun e!1779031 () (InoxSet T!54884))

(assert (=> d!816648 (= (content!4590 (list!12315 thiss!9329)) e!1779031)))

(declare-fun b!2813190 () Bool)

(assert (=> b!2813190 (= e!1779031 ((as const (Array T!54884 Bool)) false))))

(declare-fun b!2813191 () Bool)

(assert (=> b!2813191 (= e!1779031 ((_ map or) (store ((as const (Array T!54884 Bool)) false) (h!38293 (list!12315 thiss!9329)) true) (content!4590 (t!229965 (list!12315 thiss!9329)))))))

(assert (= (and d!816648 c!455844) b!2813190))

(assert (= (and d!816648 (not c!455844)) b!2813191))

(declare-fun m!3243623 () Bool)

(assert (=> b!2813191 m!3243623))

(assert (=> b!2813191 m!3243615))

(assert (=> b!2813109 d!816648))

(declare-fun d!816650 () Bool)

(declare-fun isBalanced!3089 (Conc!10180) Bool)

(assert (=> d!816650 (= (inv!44634 (value!158191 (underlying!8366 thiss!9329))) (isBalanced!3089 (c!455820 (value!158191 (underlying!8366 thiss!9329)))))))

(declare-fun bs!516508 () Bool)

(assert (= bs!516508 d!816650))

(declare-fun m!3243625 () Bool)

(assert (=> bs!516508 m!3243625))

(assert (=> b!2813136 d!816650))

(declare-fun d!816652 () Bool)

(assert (=> d!816652 true))

(declare-fun e!1779032 () Bool)

(assert (=> d!816652 e!1779032))

(declare-fun res!1171065 () List!32997)

(assert (=> d!816652 (= (choose!16631 (choose!16630 thiss!9329 t!5890)) res!1171065)))

(declare-fun b!2813192 () Bool)

(declare-fun tp!898278 () Bool)

(assert (=> b!2813192 (= e!1779032 (and tp_is_empty!14415 tp!898278))))

(assert (= (and d!816652 ((_ is Cons!32873) res!1171065)) b!2813192))

(assert (=> d!816624 d!816652))

(declare-fun d!816654 () Bool)

(declare-fun lt!1005018 () (_ BitVec 32))

(assert (=> d!816654 (and (bvsle #b00000000000000000000000000000000 lt!1005018) (bvsle lt!1005018 #b01111111111111111111111111111111))))

(declare-fun e!1779033 () (_ BitVec 32))

(assert (=> d!816654 (= lt!1005018 e!1779033)))

(declare-fun c!455845 () Bool)

(assert (=> d!816654 (= c!455845 ((_ is Nil!32873) lt!1005006))))

(assert (=> d!816654 (= (isize!75 lt!1005006) lt!1005018)))

(declare-fun b!2813193 () Bool)

(assert (=> b!2813193 (= e!1779033 #b00000000000000000000000000000000)))

(declare-fun b!2813194 () Bool)

(declare-fun lt!1005019 () (_ BitVec 32))

(assert (=> b!2813194 (= e!1779033 (ite (= lt!1005019 #b01111111111111111111111111111111) lt!1005019 (bvadd #b00000000000000000000000000000001 lt!1005019)))))

(assert (=> b!2813194 (= lt!1005019 (isize!75 (t!229965 lt!1005006)))))

(assert (= (and d!816654 c!455845) b!2813193))

(assert (= (and d!816654 (not c!455845)) b!2813194))

(declare-fun m!3243627 () Bool)

(assert (=> b!2813194 m!3243627))

(assert (=> bm!183152 d!816654))

(declare-fun d!816656 () Bool)

(declare-fun c!455848 () Bool)

(assert (=> d!816656 (= c!455848 ((_ is Node!10180) (c!455820 (value!158191 (underlying!8366 thiss!9329)))))))

(declare-fun e!1779038 () Bool)

(assert (=> d!816656 (= (inv!44633 (c!455820 (value!158191 (underlying!8366 thiss!9329)))) e!1779038)))

(declare-fun b!2813201 () Bool)

(declare-fun inv!44637 (Conc!10180) Bool)

(assert (=> b!2813201 (= e!1779038 (inv!44637 (c!455820 (value!158191 (underlying!8366 thiss!9329)))))))

(declare-fun b!2813202 () Bool)

(declare-fun e!1779039 () Bool)

(assert (=> b!2813202 (= e!1779038 e!1779039)))

(declare-fun res!1171068 () Bool)

(assert (=> b!2813202 (= res!1171068 (not ((_ is Leaf!15510) (c!455820 (value!158191 (underlying!8366 thiss!9329))))))))

(assert (=> b!2813202 (=> res!1171068 e!1779039)))

(declare-fun b!2813203 () Bool)

(declare-fun inv!44638 (Conc!10180) Bool)

(assert (=> b!2813203 (= e!1779039 (inv!44638 (c!455820 (value!158191 (underlying!8366 thiss!9329)))))))

(assert (= (and d!816656 c!455848) b!2813201))

(assert (= (and d!816656 (not c!455848)) b!2813202))

(assert (= (and b!2813202 (not res!1171068)) b!2813203))

(declare-fun m!3243629 () Bool)

(assert (=> b!2813201 m!3243629))

(declare-fun m!3243631 () Bool)

(assert (=> b!2813203 m!3243631))

(assert (=> b!2813137 d!816656))

(declare-fun d!816658 () Bool)

(declare-fun lt!1005022 () Int)

(assert (=> d!816658 (>= lt!1005022 0)))

(declare-fun e!1779042 () Int)

(assert (=> d!816658 (= lt!1005022 e!1779042)))

(declare-fun c!455851 () Bool)

(assert (=> d!816658 (= c!455851 ((_ is Nil!32873) lt!1005006))))

(assert (=> d!816658 (= (size!25615 lt!1005006) lt!1005022)))

(declare-fun b!2813208 () Bool)

(assert (=> b!2813208 (= e!1779042 0)))

(declare-fun b!2813209 () Bool)

(assert (=> b!2813209 (= e!1779042 (+ 1 (size!25615 (t!229965 lt!1005006))))))

(assert (= (and d!816658 c!455851) b!2813208))

(assert (= (and d!816658 (not c!455851)) b!2813209))

(declare-fun m!3243633 () Bool)

(assert (=> b!2813209 m!3243633))

(assert (=> b!2813110 d!816658))

(declare-fun d!816660 () Bool)

(declare-fun lt!1005023 () Int)

(assert (=> d!816660 (>= lt!1005023 0)))

(declare-fun e!1779043 () Int)

(assert (=> d!816660 (= lt!1005023 e!1779043)))

(declare-fun c!455852 () Bool)

(assert (=> d!816660 (= c!455852 ((_ is Nil!32873) (list!12315 thiss!9329)))))

(assert (=> d!816660 (= (size!25615 (list!12315 thiss!9329)) lt!1005023)))

(declare-fun b!2813210 () Bool)

(assert (=> b!2813210 (= e!1779043 0)))

(declare-fun b!2813211 () Bool)

(assert (=> b!2813211 (= e!1779043 (+ 1 (size!25615 (t!229965 (list!12315 thiss!9329)))))))

(assert (= (and d!816660 c!455852) b!2813210))

(assert (= (and d!816660 (not c!455852)) b!2813211))

(assert (=> b!2813211 m!3243611))

(assert (=> b!2813110 d!816660))

(declare-fun b!2813212 () Bool)

(declare-fun e!1779044 () Bool)

(declare-fun tp!898279 () Bool)

(assert (=> b!2813212 (= e!1779044 (and tp_is_empty!14415 tp!898279))))

(assert (=> b!2813146 (= tp!898265 e!1779044)))

(assert (= (and b!2813146 ((_ is Cons!32873) (t!229965 (overflowing!183 thiss!9329)))) b!2813212))

(declare-fun tp!898287 () Bool)

(declare-fun b!2813221 () Bool)

(declare-fun tp!898288 () Bool)

(declare-fun e!1779050 () Bool)

(assert (=> b!2813221 (= e!1779050 (and (inv!44633 (left!24793 (c!455820 (value!158191 (underlying!8366 thiss!9329))))) tp!898287 (inv!44633 (right!25123 (c!455820 (value!158191 (underlying!8366 thiss!9329))))) tp!898288))))

(declare-fun b!2813223 () Bool)

(declare-fun e!1779049 () Bool)

(declare-fun tp!898286 () Bool)

(assert (=> b!2813223 (= e!1779049 tp!898286)))

(declare-fun b!2813222 () Bool)

(declare-fun inv!44639 (IArray!20365) Bool)

(assert (=> b!2813222 (= e!1779050 (and (inv!44639 (xs!13292 (c!455820 (value!158191 (underlying!8366 thiss!9329))))) e!1779049))))

(assert (=> b!2813137 (= tp!898259 (and (inv!44633 (c!455820 (value!158191 (underlying!8366 thiss!9329)))) e!1779050))))

(assert (= (and b!2813137 ((_ is Node!10180) (c!455820 (value!158191 (underlying!8366 thiss!9329))))) b!2813221))

(assert (= b!2813222 b!2813223))

(assert (= (and b!2813137 ((_ is Leaf!15510) (c!455820 (value!158191 (underlying!8366 thiss!9329))))) b!2813222))

(declare-fun m!3243635 () Bool)

(assert (=> b!2813221 m!3243635))

(declare-fun m!3243637 () Bool)

(assert (=> b!2813221 m!3243637))

(declare-fun m!3243639 () Bool)

(assert (=> b!2813222 m!3243639))

(assert (=> b!2813137 m!3243585))

(declare-fun b!2813228 () Bool)

(declare-fun e!1779053 () Bool)

(declare-fun tp!898293 () Bool)

(declare-fun tp!898294 () Bool)

(assert (=> b!2813228 (= e!1779053 (and tp!898293 tp!898294))))

(assert (=> b!2813138 (= tp!898260 e!1779053)))

(assert (= (and b!2813138 ((_ is Cons!32872) (value!158192 (underlying!8366 thiss!9329)))) b!2813228))

(check-sat (not b!2813160) (not d!816650) (not b!2813228) (not b!2813223) (not b!2813212) (not b!2813176) (not d!816642) (not b!2813183) (not bm!183157) (not b!2813157) (not b!2813174) (not b!2813201) (not b!2813163) (not b!2813203) (not b!2813221) (not b!2813173) (not b!2813194) (not b!2813211) (not b!2813181) (not b!2813189) (not bm!183156) (not b!2813137) (not b!2813192) (not b!2813209) (not d!816638) (not b!2813191) (not b!2813182) (not b!2813222) (not b!2813178) tp_is_empty!14415)
(check-sat)
