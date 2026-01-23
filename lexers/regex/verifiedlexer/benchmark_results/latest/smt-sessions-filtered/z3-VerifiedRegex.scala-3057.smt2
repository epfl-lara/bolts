; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182846 () Bool)

(assert start!182846)

(declare-fun res!826164 () Bool)

(declare-fun e!1174590 () Bool)

(assert (=> start!182846 (=> (not res!826164) (not e!1174590))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1481 0))(
  ( (B!1482 (val!5688 Int)) )
))
(declare-datatypes ((List!20288 0))(
  ( (Nil!20218) (Cons!20218 (h!25619 B!1481) (t!171717 List!20288)) )
))
(declare-fun l!3005 () List!20288)

(get-info :version)

(assert (=> start!182846 (= res!826164 (and (>= i!921 0) (not ((_ is Nil!20218) l!3005)) (= i!921 0)))))

(assert (=> start!182846 e!1174590))

(assert (=> start!182846 true))

(declare-fun e!1174589 () Bool)

(assert (=> start!182846 e!1174589))

(declare-fun e!1174588 () Bool)

(assert (=> start!182846 e!1174588))

(declare-fun b!1838152 () Bool)

(declare-datatypes ((tuple2!19666 0))(
  ( (tuple2!19667 (_1!11235 List!20288) (_2!11235 List!20288)) )
))
(declare-fun lt!713428 () tuple2!19666)

(declare-fun acc!274 () List!20288)

(declare-fun splitAtIndexTr!14 (List!20288 Int List!20288) tuple2!19666)

(declare-fun ++!5489 (List!20288 List!20288) List!20288)

(assert (=> b!1838152 (= e!1174590 (not (= (splitAtIndexTr!14 l!3005 i!921 acc!274) (tuple2!19667 (++!5489 acc!274 (_1!11235 lt!713428)) (_2!11235 lt!713428)))))))

(declare-fun splitAtIndex!16 (List!20288 Int) tuple2!19666)

(assert (=> b!1838152 (= lt!713428 (splitAtIndex!16 l!3005 i!921))))

(declare-fun b!1838153 () Bool)

(declare-fun tp_is_empty!8229 () Bool)

(declare-fun tp!520024 () Bool)

(assert (=> b!1838153 (= e!1174589 (and tp_is_empty!8229 tp!520024))))

(declare-fun b!1838154 () Bool)

(declare-fun tp!520023 () Bool)

(assert (=> b!1838154 (= e!1174588 (and tp_is_empty!8229 tp!520023))))

(assert (= (and start!182846 res!826164) b!1838152))

(assert (= (and start!182846 ((_ is Cons!20218) l!3005)) b!1838153))

(assert (= (and start!182846 ((_ is Cons!20218) acc!274)) b!1838154))

(declare-fun m!2266003 () Bool)

(assert (=> b!1838152 m!2266003))

(declare-fun m!2266005 () Bool)

(assert (=> b!1838152 m!2266005))

(declare-fun m!2266007 () Bool)

(assert (=> b!1838152 m!2266007))

(check-sat (not b!1838152) (not b!1838154) (not b!1838153) tp_is_empty!8229)
(check-sat)
(get-model)

(declare-fun b!1838176 () Bool)

(declare-fun e!1174601 () tuple2!19666)

(declare-fun e!1174602 () tuple2!19666)

(assert (=> b!1838176 (= e!1174601 e!1174602)))

(declare-fun c!299949 () Bool)

(assert (=> b!1838176 (= c!299949 (= i!921 0))))

(declare-fun b!1838178 () Bool)

(assert (=> b!1838178 (= e!1174602 (splitAtIndexTr!14 (t!171717 l!3005) (- i!921 1) (++!5489 acc!274 (Cons!20218 (h!25619 l!3005) Nil!20218))))))

(declare-fun d!562090 () Bool)

(declare-fun c!299948 () Bool)

(assert (=> d!562090 (= c!299948 ((_ is Nil!20218) l!3005))))

(assert (=> d!562090 (= (splitAtIndexTr!14 l!3005 i!921 acc!274) e!1174601)))

(declare-fun b!1838177 () Bool)

(assert (=> b!1838177 (= e!1174602 (tuple2!19667 acc!274 l!3005))))

(declare-fun b!1838175 () Bool)

(assert (=> b!1838175 (= e!1174601 (tuple2!19667 acc!274 Nil!20218))))

(assert (= (and d!562090 c!299948) b!1838175))

(assert (= (and d!562090 (not c!299948)) b!1838176))

(assert (= (and b!1838176 c!299949) b!1838177))

(assert (= (and b!1838176 (not c!299949)) b!1838178))

(declare-fun m!2266013 () Bool)

(assert (=> b!1838178 m!2266013))

(assert (=> b!1838178 m!2266013))

(declare-fun m!2266015 () Bool)

(assert (=> b!1838178 m!2266015))

(assert (=> b!1838152 d!562090))

(declare-fun e!1174613 () Bool)

(declare-fun b!1838202 () Bool)

(declare-fun lt!713434 () List!20288)

(assert (=> b!1838202 (= e!1174613 (or (not (= (_1!11235 lt!713428) Nil!20218)) (= lt!713434 acc!274)))))

(declare-fun b!1838199 () Bool)

(declare-fun e!1174614 () List!20288)

(assert (=> b!1838199 (= e!1174614 (_1!11235 lt!713428))))

(declare-fun b!1838201 () Bool)

(declare-fun res!826176 () Bool)

(assert (=> b!1838201 (=> (not res!826176) (not e!1174613))))

(declare-fun size!16030 (List!20288) Int)

(assert (=> b!1838201 (= res!826176 (= (size!16030 lt!713434) (+ (size!16030 acc!274) (size!16030 (_1!11235 lt!713428)))))))

(declare-fun d!562094 () Bool)

(assert (=> d!562094 e!1174613))

(declare-fun res!826175 () Bool)

(assert (=> d!562094 (=> (not res!826175) (not e!1174613))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3009 (List!20288) (InoxSet B!1481))

(assert (=> d!562094 (= res!826175 (= (content!3009 lt!713434) ((_ map or) (content!3009 acc!274) (content!3009 (_1!11235 lt!713428)))))))

(assert (=> d!562094 (= lt!713434 e!1174614)))

(declare-fun c!299955 () Bool)

(assert (=> d!562094 (= c!299955 ((_ is Nil!20218) acc!274))))

(assert (=> d!562094 (= (++!5489 acc!274 (_1!11235 lt!713428)) lt!713434)))

(declare-fun b!1838200 () Bool)

(assert (=> b!1838200 (= e!1174614 (Cons!20218 (h!25619 acc!274) (++!5489 (t!171717 acc!274) (_1!11235 lt!713428))))))

(assert (= (and d!562094 c!299955) b!1838199))

(assert (= (and d!562094 (not c!299955)) b!1838200))

(assert (= (and d!562094 res!826175) b!1838201))

(assert (= (and b!1838201 res!826176) b!1838202))

(declare-fun m!2266031 () Bool)

(assert (=> b!1838201 m!2266031))

(declare-fun m!2266033 () Bool)

(assert (=> b!1838201 m!2266033))

(declare-fun m!2266035 () Bool)

(assert (=> b!1838201 m!2266035))

(declare-fun m!2266037 () Bool)

(assert (=> d!562094 m!2266037))

(declare-fun m!2266039 () Bool)

(assert (=> d!562094 m!2266039))

(declare-fun m!2266041 () Bool)

(assert (=> d!562094 m!2266041))

(declare-fun m!2266043 () Bool)

(assert (=> b!1838200 m!2266043))

(assert (=> b!1838152 d!562094))

(declare-fun b!1838239 () Bool)

(declare-fun res!826188 () Bool)

(declare-fun e!1174635 () Bool)

(assert (=> b!1838239 (=> (not res!826188) (not e!1174635))))

(declare-fun lt!713445 () tuple2!19666)

(declare-fun take!153 (List!20288 Int) List!20288)

(assert (=> b!1838239 (= res!826188 (= (_1!11235 lt!713445) (take!153 l!3005 i!921)))))

(declare-fun b!1838240 () Bool)

(declare-fun e!1174636 () tuple2!19666)

(assert (=> b!1838240 (= e!1174636 (tuple2!19667 Nil!20218 Nil!20218))))

(declare-fun b!1838241 () Bool)

(declare-fun drop!977 (List!20288 Int) List!20288)

(assert (=> b!1838241 (= e!1174635 (= (_2!11235 lt!713445) (drop!977 l!3005 i!921)))))

(declare-fun b!1838242 () Bool)

(declare-fun e!1174634 () tuple2!19666)

(assert (=> b!1838242 (= e!1174634 (tuple2!19667 Nil!20218 l!3005))))

(declare-fun d!562098 () Bool)

(assert (=> d!562098 e!1174635))

(declare-fun res!826187 () Bool)

(assert (=> d!562098 (=> (not res!826187) (not e!1174635))))

(assert (=> d!562098 (= res!826187 (= (++!5489 (_1!11235 lt!713445) (_2!11235 lt!713445)) l!3005))))

(assert (=> d!562098 (= lt!713445 e!1174636)))

(declare-fun c!299967 () Bool)

(assert (=> d!562098 (= c!299967 ((_ is Nil!20218) l!3005))))

(assert (=> d!562098 (= (splitAtIndex!16 l!3005 i!921) lt!713445)))

(declare-fun b!1838243 () Bool)

(declare-fun lt!713446 () tuple2!19666)

(assert (=> b!1838243 (= lt!713446 (splitAtIndex!16 (t!171717 l!3005) (- i!921 1)))))

(assert (=> b!1838243 (= e!1174634 (tuple2!19667 (Cons!20218 (h!25619 l!3005) (_1!11235 lt!713446)) (_2!11235 lt!713446)))))

(declare-fun b!1838244 () Bool)

(assert (=> b!1838244 (= e!1174636 e!1174634)))

(declare-fun c!299966 () Bool)

(assert (=> b!1838244 (= c!299966 (<= i!921 0))))

(assert (= (and d!562098 c!299967) b!1838240))

(assert (= (and d!562098 (not c!299967)) b!1838244))

(assert (= (and b!1838244 c!299966) b!1838242))

(assert (= (and b!1838244 (not c!299966)) b!1838243))

(assert (= (and d!562098 res!826187) b!1838239))

(assert (= (and b!1838239 res!826188) b!1838241))

(declare-fun m!2266053 () Bool)

(assert (=> b!1838239 m!2266053))

(declare-fun m!2266055 () Bool)

(assert (=> b!1838241 m!2266055))

(declare-fun m!2266057 () Bool)

(assert (=> d!562098 m!2266057))

(declare-fun m!2266059 () Bool)

(assert (=> b!1838243 m!2266059))

(assert (=> b!1838152 d!562098))

(declare-fun b!1838249 () Bool)

(declare-fun e!1174639 () Bool)

(declare-fun tp!520031 () Bool)

(assert (=> b!1838249 (= e!1174639 (and tp_is_empty!8229 tp!520031))))

(assert (=> b!1838154 (= tp!520023 e!1174639)))

(assert (= (and b!1838154 ((_ is Cons!20218) (t!171717 acc!274))) b!1838249))

(declare-fun b!1838250 () Bool)

(declare-fun e!1174640 () Bool)

(declare-fun tp!520032 () Bool)

(assert (=> b!1838250 (= e!1174640 (and tp_is_empty!8229 tp!520032))))

(assert (=> b!1838153 (= tp!520024 e!1174640)))

(assert (= (and b!1838153 ((_ is Cons!20218) (t!171717 l!3005))) b!1838250))

(check-sat (not b!1838250) (not b!1838200) (not b!1838249) (not d!562094) (not d!562098) tp_is_empty!8229 (not b!1838178) (not b!1838241) (not b!1838243) (not b!1838239) (not b!1838201))
(check-sat)
