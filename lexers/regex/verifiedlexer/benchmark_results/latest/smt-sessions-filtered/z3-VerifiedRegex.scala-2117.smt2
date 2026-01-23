; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107144 () Bool)

(assert start!107144)

(declare-fun b!1203262 () Bool)

(declare-fun res!542030 () Bool)

(declare-fun e!771972 () Bool)

(assert (=> b!1203262 (=> (not res!542030) (not e!771972))))

(declare-datatypes ((T!21852 0))(
  ( (T!21853 (val!3898 Int)) )
))
(declare-datatypes ((List!12077 0))(
  ( (Nil!12053) (Cons!12053 (h!17454 T!21852) (t!112487 List!12077)) )
))
(declare-datatypes ((IArray!7977 0))(
  ( (IArray!7978 (innerList!4046 List!12077)) )
))
(declare-datatypes ((Conc!3986 0))(
  ( (Node!3986 (left!10527 Conc!3986) (right!10857 Conc!3986) (csize!8202 Int) (cheight!4197 Int)) (Leaf!6104 (xs!6697 IArray!7977) (csize!8203 Int)) (Empty!3986) )
))
(declare-fun t!4115 () Conc!3986)

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(get-info :version)

(assert (=> b!1203262 (= res!542030 (and (not (= from!553 until!31)) (not ((_ is Leaf!6104) t!4115)) (not ((_ is Node!3986) t!4115))))))

(declare-fun lt!411352 () Conc!3986)

(declare-fun e!771971 () Bool)

(declare-fun b!1203263 () Bool)

(declare-fun list!4503 (Conc!3986) List!12077)

(declare-fun slice!491 (List!12077 Int Int) List!12077)

(assert (=> b!1203263 (= e!771971 (not (= (list!4503 lt!411352) (slice!491 (list!4503 t!4115) from!553 until!31))))))

(declare-fun b!1203264 () Bool)

(declare-fun res!542034 () Bool)

(assert (=> b!1203264 (=> (not res!542034) (not e!771972))))

(declare-fun isBalanced!1171 (Conc!3986) Bool)

(assert (=> b!1203264 (= res!542034 (isBalanced!1171 t!4115))))

(declare-fun b!1203265 () Bool)

(declare-fun e!771974 () Bool)

(declare-fun tp!341529 () Bool)

(assert (=> b!1203265 (= e!771974 tp!341529)))

(declare-fun b!1203266 () Bool)

(declare-fun res!542032 () Bool)

(assert (=> b!1203266 (=> (not res!542032) (not e!771972))))

(declare-fun size!9591 (Conc!3986) Int)

(assert (=> b!1203266 (= res!542032 (<= until!31 (size!9591 t!4115)))))

(declare-fun b!1203268 () Bool)

(declare-fun e!771973 () Bool)

(declare-fun err!3121 () Conc!3986)

(declare-fun e!771976 () Bool)

(declare-fun inv!16170 (IArray!7977) Bool)

(assert (=> b!1203268 (= e!771973 (and (inv!16170 (xs!6697 err!3121)) e!771976))))

(declare-fun b!1203269 () Bool)

(assert (=> b!1203269 (= e!771972 e!771971)))

(declare-fun res!542033 () Bool)

(assert (=> b!1203269 (=> res!542033 e!771971)))

(assert (=> b!1203269 (= res!542033 (not (isBalanced!1171 lt!411352)))))

(assert (=> b!1203269 (= lt!411352 err!3121)))

(assert (=> b!1203269 true))

(declare-fun inv!16171 (Conc!3986) Bool)

(assert (=> b!1203269 (and (inv!16171 err!3121) e!771973)))

(declare-fun b!1203270 () Bool)

(declare-fun e!771975 () Bool)

(declare-fun tp!341527 () Bool)

(declare-fun tp!341524 () Bool)

(assert (=> b!1203270 (= e!771975 (and (inv!16171 (left!10527 t!4115)) tp!341524 (inv!16171 (right!10857 t!4115)) tp!341527))))

(declare-fun b!1203267 () Bool)

(declare-fun tp!341526 () Bool)

(declare-fun tp!341525 () Bool)

(assert (=> b!1203267 (= e!771973 (and (inv!16171 (left!10527 err!3121)) tp!341525 (inv!16171 (right!10857 err!3121)) tp!341526))))

(declare-fun res!542031 () Bool)

(assert (=> start!107144 (=> (not res!542031) (not e!771972))))

(assert (=> start!107144 (= res!542031 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!107144 e!771972))

(assert (=> start!107144 true))

(assert (=> start!107144 (and (inv!16171 t!4115) e!771975)))

(declare-fun b!1203271 () Bool)

(assert (=> b!1203271 (= e!771975 (and (inv!16170 (xs!6697 t!4115)) e!771974))))

(declare-fun b!1203272 () Bool)

(declare-fun tp!341528 () Bool)

(assert (=> b!1203272 (= e!771976 tp!341528)))

(assert (= (and start!107144 res!542031) b!1203266))

(assert (= (and b!1203266 res!542032) b!1203264))

(assert (= (and b!1203264 res!542034) b!1203262))

(assert (= (and b!1203262 res!542030) b!1203269))

(assert (= (and b!1203269 ((_ is Node!3986) err!3121)) b!1203267))

(assert (= b!1203268 b!1203272))

(assert (= (and b!1203269 ((_ is Leaf!6104) err!3121)) b!1203268))

(assert (= (and b!1203269 (not res!542033)) b!1203263))

(assert (= (and start!107144 ((_ is Node!3986) t!4115)) b!1203270))

(assert (= b!1203271 b!1203265))

(assert (= (and start!107144 ((_ is Leaf!6104) t!4115)) b!1203271))

(declare-fun m!1378997 () Bool)

(assert (=> b!1203263 m!1378997))

(declare-fun m!1378999 () Bool)

(assert (=> b!1203263 m!1378999))

(assert (=> b!1203263 m!1378999))

(declare-fun m!1379001 () Bool)

(assert (=> b!1203263 m!1379001))

(declare-fun m!1379003 () Bool)

(assert (=> b!1203270 m!1379003))

(declare-fun m!1379005 () Bool)

(assert (=> b!1203270 m!1379005))

(declare-fun m!1379007 () Bool)

(assert (=> b!1203264 m!1379007))

(declare-fun m!1379009 () Bool)

(assert (=> b!1203266 m!1379009))

(declare-fun m!1379011 () Bool)

(assert (=> b!1203271 m!1379011))

(declare-fun m!1379013 () Bool)

(assert (=> b!1203268 m!1379013))

(declare-fun m!1379015 () Bool)

(assert (=> start!107144 m!1379015))

(declare-fun m!1379017 () Bool)

(assert (=> b!1203269 m!1379017))

(declare-fun m!1379019 () Bool)

(assert (=> b!1203269 m!1379019))

(declare-fun m!1379021 () Bool)

(assert (=> b!1203267 m!1379021))

(declare-fun m!1379023 () Bool)

(assert (=> b!1203267 m!1379023))

(check-sat (not b!1203272) (not b!1203263) (not b!1203269) (not b!1203266) (not start!107144) (not b!1203270) (not b!1203267) (not b!1203271) (not b!1203265) (not b!1203268) (not b!1203264))
(check-sat)
(get-model)

(declare-fun d!344076 () Bool)

(declare-fun lt!411355 () Int)

(declare-fun size!9592 (List!12077) Int)

(assert (=> d!344076 (= lt!411355 (size!9592 (list!4503 t!4115)))))

(assert (=> d!344076 (= lt!411355 (ite ((_ is Empty!3986) t!4115) 0 (ite ((_ is Leaf!6104) t!4115) (csize!8203 t!4115) (csize!8202 t!4115))))))

(assert (=> d!344076 (= (size!9591 t!4115) lt!411355)))

(declare-fun bs!288355 () Bool)

(assert (= bs!288355 d!344076))

(assert (=> bs!288355 m!1378999))

(assert (=> bs!288355 m!1378999))

(declare-fun m!1379025 () Bool)

(assert (=> bs!288355 m!1379025))

(assert (=> b!1203266 d!344076))

(declare-fun d!344078 () Bool)

(assert (=> d!344078 (= (inv!16170 (xs!6697 t!4115)) (<= (size!9592 (innerList!4046 (xs!6697 t!4115))) 2147483647))))

(declare-fun bs!288356 () Bool)

(assert (= bs!288356 d!344078))

(declare-fun m!1379027 () Bool)

(assert (=> bs!288356 m!1379027))

(assert (=> b!1203271 d!344078))

(declare-fun d!344080 () Bool)

(declare-fun c!200861 () Bool)

(assert (=> d!344080 (= c!200861 ((_ is Node!3986) (left!10527 t!4115)))))

(declare-fun e!771981 () Bool)

(assert (=> d!344080 (= (inv!16171 (left!10527 t!4115)) e!771981)))

(declare-fun b!1203279 () Bool)

(declare-fun inv!16172 (Conc!3986) Bool)

(assert (=> b!1203279 (= e!771981 (inv!16172 (left!10527 t!4115)))))

(declare-fun b!1203280 () Bool)

(declare-fun e!771982 () Bool)

(assert (=> b!1203280 (= e!771981 e!771982)))

(declare-fun res!542037 () Bool)

(assert (=> b!1203280 (= res!542037 (not ((_ is Leaf!6104) (left!10527 t!4115))))))

(assert (=> b!1203280 (=> res!542037 e!771982)))

(declare-fun b!1203281 () Bool)

(declare-fun inv!16173 (Conc!3986) Bool)

(assert (=> b!1203281 (= e!771982 (inv!16173 (left!10527 t!4115)))))

(assert (= (and d!344080 c!200861) b!1203279))

(assert (= (and d!344080 (not c!200861)) b!1203280))

(assert (= (and b!1203280 (not res!542037)) b!1203281))

(declare-fun m!1379029 () Bool)

(assert (=> b!1203279 m!1379029))

(declare-fun m!1379031 () Bool)

(assert (=> b!1203281 m!1379031))

(assert (=> b!1203270 d!344080))

(declare-fun d!344084 () Bool)

(declare-fun c!200862 () Bool)

(assert (=> d!344084 (= c!200862 ((_ is Node!3986) (right!10857 t!4115)))))

(declare-fun e!771983 () Bool)

(assert (=> d!344084 (= (inv!16171 (right!10857 t!4115)) e!771983)))

(declare-fun b!1203282 () Bool)

(assert (=> b!1203282 (= e!771983 (inv!16172 (right!10857 t!4115)))))

(declare-fun b!1203283 () Bool)

(declare-fun e!771984 () Bool)

(assert (=> b!1203283 (= e!771983 e!771984)))

(declare-fun res!542038 () Bool)

(assert (=> b!1203283 (= res!542038 (not ((_ is Leaf!6104) (right!10857 t!4115))))))

(assert (=> b!1203283 (=> res!542038 e!771984)))

(declare-fun b!1203284 () Bool)

(assert (=> b!1203284 (= e!771984 (inv!16173 (right!10857 t!4115)))))

(assert (= (and d!344084 c!200862) b!1203282))

(assert (= (and d!344084 (not c!200862)) b!1203283))

(assert (= (and b!1203283 (not res!542038)) b!1203284))

(declare-fun m!1379033 () Bool)

(assert (=> b!1203282 m!1379033))

(declare-fun m!1379035 () Bool)

(assert (=> b!1203284 m!1379035))

(assert (=> b!1203270 d!344084))

(declare-fun b!1203306 () Bool)

(declare-fun e!771996 () Bool)

(declare-fun isEmpty!7275 (Conc!3986) Bool)

(assert (=> b!1203306 (= e!771996 (not (isEmpty!7275 (right!10857 t!4115))))))

(declare-fun d!344086 () Bool)

(declare-fun res!542058 () Bool)

(declare-fun e!771995 () Bool)

(assert (=> d!344086 (=> res!542058 e!771995)))

(assert (=> d!344086 (= res!542058 (not ((_ is Node!3986) t!4115)))))

(assert (=> d!344086 (= (isBalanced!1171 t!4115) e!771995)))

(declare-fun b!1203307 () Bool)

(declare-fun res!542059 () Bool)

(assert (=> b!1203307 (=> (not res!542059) (not e!771996))))

(declare-fun height!579 (Conc!3986) Int)

(assert (=> b!1203307 (= res!542059 (<= (- (height!579 (left!10527 t!4115)) (height!579 (right!10857 t!4115))) 1))))

(declare-fun b!1203308 () Bool)

(declare-fun res!542056 () Bool)

(assert (=> b!1203308 (=> (not res!542056) (not e!771996))))

(assert (=> b!1203308 (= res!542056 (isBalanced!1171 (left!10527 t!4115)))))

(declare-fun b!1203309 () Bool)

(declare-fun res!542054 () Bool)

(assert (=> b!1203309 (=> (not res!542054) (not e!771996))))

(assert (=> b!1203309 (= res!542054 (not (isEmpty!7275 (left!10527 t!4115))))))

(declare-fun b!1203310 () Bool)

(assert (=> b!1203310 (= e!771995 e!771996)))

(declare-fun res!542055 () Bool)

(assert (=> b!1203310 (=> (not res!542055) (not e!771996))))

(assert (=> b!1203310 (= res!542055 (<= (- 1) (- (height!579 (left!10527 t!4115)) (height!579 (right!10857 t!4115)))))))

(declare-fun b!1203311 () Bool)

(declare-fun res!542057 () Bool)

(assert (=> b!1203311 (=> (not res!542057) (not e!771996))))

(assert (=> b!1203311 (= res!542057 (isBalanced!1171 (right!10857 t!4115)))))

(assert (= (and d!344086 (not res!542058)) b!1203310))

(assert (= (and b!1203310 res!542055) b!1203307))

(assert (= (and b!1203307 res!542059) b!1203308))

(assert (= (and b!1203308 res!542056) b!1203311))

(assert (= (and b!1203311 res!542057) b!1203309))

(assert (= (and b!1203309 res!542054) b!1203306))

(declare-fun m!1379045 () Bool)

(assert (=> b!1203309 m!1379045))

(declare-fun m!1379047 () Bool)

(assert (=> b!1203311 m!1379047))

(declare-fun m!1379049 () Bool)

(assert (=> b!1203310 m!1379049))

(declare-fun m!1379051 () Bool)

(assert (=> b!1203310 m!1379051))

(assert (=> b!1203307 m!1379049))

(assert (=> b!1203307 m!1379051))

(declare-fun m!1379053 () Bool)

(assert (=> b!1203308 m!1379053))

(declare-fun m!1379055 () Bool)

(assert (=> b!1203306 m!1379055))

(assert (=> b!1203264 d!344086))

(declare-fun b!1203315 () Bool)

(declare-fun e!772000 () Bool)

(assert (=> b!1203315 (= e!772000 (not (isEmpty!7275 (right!10857 lt!411352))))))

(declare-fun d!344092 () Bool)

(declare-fun res!542065 () Bool)

(declare-fun e!771999 () Bool)

(assert (=> d!344092 (=> res!542065 e!771999)))

(assert (=> d!344092 (= res!542065 (not ((_ is Node!3986) lt!411352)))))

(assert (=> d!344092 (= (isBalanced!1171 lt!411352) e!771999)))

(declare-fun b!1203316 () Bool)

(declare-fun res!542066 () Bool)

(assert (=> b!1203316 (=> (not res!542066) (not e!772000))))

(assert (=> b!1203316 (= res!542066 (<= (- (height!579 (left!10527 lt!411352)) (height!579 (right!10857 lt!411352))) 1))))

(declare-fun b!1203317 () Bool)

(declare-fun res!542063 () Bool)

(assert (=> b!1203317 (=> (not res!542063) (not e!772000))))

(assert (=> b!1203317 (= res!542063 (isBalanced!1171 (left!10527 lt!411352)))))

(declare-fun b!1203318 () Bool)

(declare-fun res!542061 () Bool)

(assert (=> b!1203318 (=> (not res!542061) (not e!772000))))

(assert (=> b!1203318 (= res!542061 (not (isEmpty!7275 (left!10527 lt!411352))))))

(declare-fun b!1203319 () Bool)

(assert (=> b!1203319 (= e!771999 e!772000)))

(declare-fun res!542062 () Bool)

(assert (=> b!1203319 (=> (not res!542062) (not e!772000))))

(assert (=> b!1203319 (= res!542062 (<= (- 1) (- (height!579 (left!10527 lt!411352)) (height!579 (right!10857 lt!411352)))))))

(declare-fun b!1203320 () Bool)

(declare-fun res!542064 () Bool)

(assert (=> b!1203320 (=> (not res!542064) (not e!772000))))

(assert (=> b!1203320 (= res!542064 (isBalanced!1171 (right!10857 lt!411352)))))

(assert (= (and d!344092 (not res!542065)) b!1203319))

(assert (= (and b!1203319 res!542062) b!1203316))

(assert (= (and b!1203316 res!542066) b!1203317))

(assert (= (and b!1203317 res!542063) b!1203320))

(assert (= (and b!1203320 res!542064) b!1203318))

(assert (= (and b!1203318 res!542061) b!1203315))

(declare-fun m!1379057 () Bool)

(assert (=> b!1203318 m!1379057))

(declare-fun m!1379059 () Bool)

(assert (=> b!1203320 m!1379059))

(declare-fun m!1379061 () Bool)

(assert (=> b!1203319 m!1379061))

(declare-fun m!1379063 () Bool)

(assert (=> b!1203319 m!1379063))

(assert (=> b!1203316 m!1379061))

(assert (=> b!1203316 m!1379063))

(declare-fun m!1379065 () Bool)

(assert (=> b!1203317 m!1379065))

(declare-fun m!1379067 () Bool)

(assert (=> b!1203315 m!1379067))

(assert (=> b!1203269 d!344092))

(declare-fun d!344094 () Bool)

(declare-fun c!200867 () Bool)

(assert (=> d!344094 (= c!200867 ((_ is Node!3986) err!3121))))

(declare-fun e!772001 () Bool)

(assert (=> d!344094 (= (inv!16171 err!3121) e!772001)))

(declare-fun b!1203321 () Bool)

(assert (=> b!1203321 (= e!772001 (inv!16172 err!3121))))

(declare-fun b!1203322 () Bool)

(declare-fun e!772002 () Bool)

(assert (=> b!1203322 (= e!772001 e!772002)))

(declare-fun res!542067 () Bool)

(assert (=> b!1203322 (= res!542067 (not ((_ is Leaf!6104) err!3121)))))

(assert (=> b!1203322 (=> res!542067 e!772002)))

(declare-fun b!1203323 () Bool)

(assert (=> b!1203323 (= e!772002 (inv!16173 err!3121))))

(assert (= (and d!344094 c!200867) b!1203321))

(assert (= (and d!344094 (not c!200867)) b!1203322))

(assert (= (and b!1203322 (not res!542067)) b!1203323))

(declare-fun m!1379069 () Bool)

(assert (=> b!1203321 m!1379069))

(declare-fun m!1379071 () Bool)

(assert (=> b!1203323 m!1379071))

(assert (=> b!1203269 d!344094))

(declare-fun d!344096 () Bool)

(assert (=> d!344096 (= (inv!16170 (xs!6697 err!3121)) (<= (size!9592 (innerList!4046 (xs!6697 err!3121))) 2147483647))))

(declare-fun bs!288357 () Bool)

(assert (= bs!288357 d!344096))

(declare-fun m!1379073 () Bool)

(assert (=> bs!288357 m!1379073))

(assert (=> b!1203268 d!344096))

(declare-fun b!1203333 () Bool)

(declare-fun e!772007 () List!12077)

(declare-fun e!772008 () List!12077)

(assert (=> b!1203333 (= e!772007 e!772008)))

(declare-fun c!200873 () Bool)

(assert (=> b!1203333 (= c!200873 ((_ is Leaf!6104) lt!411352))))

(declare-fun b!1203335 () Bool)

(declare-fun ++!3093 (List!12077 List!12077) List!12077)

(assert (=> b!1203335 (= e!772008 (++!3093 (list!4503 (left!10527 lt!411352)) (list!4503 (right!10857 lt!411352))))))

(declare-fun b!1203334 () Bool)

(declare-fun list!4504 (IArray!7977) List!12077)

(assert (=> b!1203334 (= e!772008 (list!4504 (xs!6697 lt!411352)))))

(declare-fun b!1203332 () Bool)

(assert (=> b!1203332 (= e!772007 Nil!12053)))

(declare-fun d!344098 () Bool)

(declare-fun c!200872 () Bool)

(assert (=> d!344098 (= c!200872 ((_ is Empty!3986) lt!411352))))

(assert (=> d!344098 (= (list!4503 lt!411352) e!772007)))

(assert (= (and d!344098 c!200872) b!1203332))

(assert (= (and d!344098 (not c!200872)) b!1203333))

(assert (= (and b!1203333 c!200873) b!1203334))

(assert (= (and b!1203333 (not c!200873)) b!1203335))

(declare-fun m!1379077 () Bool)

(assert (=> b!1203335 m!1379077))

(declare-fun m!1379079 () Bool)

(assert (=> b!1203335 m!1379079))

(assert (=> b!1203335 m!1379077))

(assert (=> b!1203335 m!1379079))

(declare-fun m!1379081 () Bool)

(assert (=> b!1203335 m!1379081))

(declare-fun m!1379083 () Bool)

(assert (=> b!1203334 m!1379083))

(assert (=> b!1203263 d!344098))

(declare-fun d!344102 () Bool)

(declare-fun take!136 (List!12077 Int) List!12077)

(declare-fun drop!608 (List!12077 Int) List!12077)

(assert (=> d!344102 (= (slice!491 (list!4503 t!4115) from!553 until!31) (take!136 (drop!608 (list!4503 t!4115) from!553) (- until!31 from!553)))))

(declare-fun bs!288359 () Bool)

(assert (= bs!288359 d!344102))

(assert (=> bs!288359 m!1378999))

(declare-fun m!1379085 () Bool)

(assert (=> bs!288359 m!1379085))

(assert (=> bs!288359 m!1379085))

(declare-fun m!1379087 () Bool)

(assert (=> bs!288359 m!1379087))

(assert (=> b!1203263 d!344102))

(declare-fun b!1203337 () Bool)

(declare-fun e!772009 () List!12077)

(declare-fun e!772010 () List!12077)

(assert (=> b!1203337 (= e!772009 e!772010)))

(declare-fun c!200875 () Bool)

(assert (=> b!1203337 (= c!200875 ((_ is Leaf!6104) t!4115))))

(declare-fun b!1203339 () Bool)

(assert (=> b!1203339 (= e!772010 (++!3093 (list!4503 (left!10527 t!4115)) (list!4503 (right!10857 t!4115))))))

(declare-fun b!1203338 () Bool)

(assert (=> b!1203338 (= e!772010 (list!4504 (xs!6697 t!4115)))))

(declare-fun b!1203336 () Bool)

(assert (=> b!1203336 (= e!772009 Nil!12053)))

(declare-fun d!344104 () Bool)

(declare-fun c!200874 () Bool)

(assert (=> d!344104 (= c!200874 ((_ is Empty!3986) t!4115))))

(assert (=> d!344104 (= (list!4503 t!4115) e!772009)))

(assert (= (and d!344104 c!200874) b!1203336))

(assert (= (and d!344104 (not c!200874)) b!1203337))

(assert (= (and b!1203337 c!200875) b!1203338))

(assert (= (and b!1203337 (not c!200875)) b!1203339))

(declare-fun m!1379089 () Bool)

(assert (=> b!1203339 m!1379089))

(declare-fun m!1379091 () Bool)

(assert (=> b!1203339 m!1379091))

(assert (=> b!1203339 m!1379089))

(assert (=> b!1203339 m!1379091))

(declare-fun m!1379093 () Bool)

(assert (=> b!1203339 m!1379093))

(declare-fun m!1379095 () Bool)

(assert (=> b!1203338 m!1379095))

(assert (=> b!1203263 d!344104))

(declare-fun d!344106 () Bool)

(declare-fun c!200876 () Bool)

(assert (=> d!344106 (= c!200876 ((_ is Node!3986) t!4115))))

(declare-fun e!772011 () Bool)

(assert (=> d!344106 (= (inv!16171 t!4115) e!772011)))

(declare-fun b!1203340 () Bool)

(assert (=> b!1203340 (= e!772011 (inv!16172 t!4115))))

(declare-fun b!1203341 () Bool)

(declare-fun e!772012 () Bool)

(assert (=> b!1203341 (= e!772011 e!772012)))

(declare-fun res!542068 () Bool)

(assert (=> b!1203341 (= res!542068 (not ((_ is Leaf!6104) t!4115)))))

(assert (=> b!1203341 (=> res!542068 e!772012)))

(declare-fun b!1203342 () Bool)

(assert (=> b!1203342 (= e!772012 (inv!16173 t!4115))))

(assert (= (and d!344106 c!200876) b!1203340))

(assert (= (and d!344106 (not c!200876)) b!1203341))

(assert (= (and b!1203341 (not res!542068)) b!1203342))

(declare-fun m!1379097 () Bool)

(assert (=> b!1203340 m!1379097))

(declare-fun m!1379099 () Bool)

(assert (=> b!1203342 m!1379099))

(assert (=> start!107144 d!344106))

(declare-fun d!344108 () Bool)

(declare-fun c!200877 () Bool)

(assert (=> d!344108 (= c!200877 ((_ is Node!3986) (left!10527 err!3121)))))

(declare-fun e!772013 () Bool)

(assert (=> d!344108 (= (inv!16171 (left!10527 err!3121)) e!772013)))

(declare-fun b!1203343 () Bool)

(assert (=> b!1203343 (= e!772013 (inv!16172 (left!10527 err!3121)))))

(declare-fun b!1203344 () Bool)

(declare-fun e!772014 () Bool)

(assert (=> b!1203344 (= e!772013 e!772014)))

(declare-fun res!542069 () Bool)

(assert (=> b!1203344 (= res!542069 (not ((_ is Leaf!6104) (left!10527 err!3121))))))

(assert (=> b!1203344 (=> res!542069 e!772014)))

(declare-fun b!1203345 () Bool)

(assert (=> b!1203345 (= e!772014 (inv!16173 (left!10527 err!3121)))))

(assert (= (and d!344108 c!200877) b!1203343))

(assert (= (and d!344108 (not c!200877)) b!1203344))

(assert (= (and b!1203344 (not res!542069)) b!1203345))

(declare-fun m!1379101 () Bool)

(assert (=> b!1203343 m!1379101))

(declare-fun m!1379103 () Bool)

(assert (=> b!1203345 m!1379103))

(assert (=> b!1203267 d!344108))

(declare-fun d!344110 () Bool)

(declare-fun c!200878 () Bool)

(assert (=> d!344110 (= c!200878 ((_ is Node!3986) (right!10857 err!3121)))))

(declare-fun e!772015 () Bool)

(assert (=> d!344110 (= (inv!16171 (right!10857 err!3121)) e!772015)))

(declare-fun b!1203346 () Bool)

(assert (=> b!1203346 (= e!772015 (inv!16172 (right!10857 err!3121)))))

(declare-fun b!1203347 () Bool)

(declare-fun e!772016 () Bool)

(assert (=> b!1203347 (= e!772015 e!772016)))

(declare-fun res!542070 () Bool)

(assert (=> b!1203347 (= res!542070 (not ((_ is Leaf!6104) (right!10857 err!3121))))))

(assert (=> b!1203347 (=> res!542070 e!772016)))

(declare-fun b!1203348 () Bool)

(assert (=> b!1203348 (= e!772016 (inv!16173 (right!10857 err!3121)))))

(assert (= (and d!344110 c!200878) b!1203346))

(assert (= (and d!344110 (not c!200878)) b!1203347))

(assert (= (and b!1203347 (not res!542070)) b!1203348))

(declare-fun m!1379105 () Bool)

(assert (=> b!1203346 m!1379105))

(declare-fun m!1379107 () Bool)

(assert (=> b!1203348 m!1379107))

(assert (=> b!1203267 d!344110))

(declare-fun tp!341537 () Bool)

(declare-fun e!772026 () Bool)

(declare-fun tp!341536 () Bool)

(declare-fun b!1203369 () Bool)

(assert (=> b!1203369 (= e!772026 (and (inv!16171 (left!10527 (left!10527 t!4115))) tp!341536 (inv!16171 (right!10857 (left!10527 t!4115))) tp!341537))))

(declare-fun b!1203371 () Bool)

(declare-fun e!772025 () Bool)

(declare-fun tp!341538 () Bool)

(assert (=> b!1203371 (= e!772025 tp!341538)))

(declare-fun b!1203370 () Bool)

(assert (=> b!1203370 (= e!772026 (and (inv!16170 (xs!6697 (left!10527 t!4115))) e!772025))))

(assert (=> b!1203270 (= tp!341524 (and (inv!16171 (left!10527 t!4115)) e!772026))))

(assert (= (and b!1203270 ((_ is Node!3986) (left!10527 t!4115))) b!1203369))

(assert (= b!1203370 b!1203371))

(assert (= (and b!1203270 ((_ is Leaf!6104) (left!10527 t!4115))) b!1203370))

(declare-fun m!1379109 () Bool)

(assert (=> b!1203369 m!1379109))

(declare-fun m!1379111 () Bool)

(assert (=> b!1203369 m!1379111))

(declare-fun m!1379113 () Bool)

(assert (=> b!1203370 m!1379113))

(assert (=> b!1203270 m!1379003))

(declare-fun tp!341540 () Bool)

(declare-fun e!772028 () Bool)

(declare-fun tp!341539 () Bool)

(declare-fun b!1203372 () Bool)

(assert (=> b!1203372 (= e!772028 (and (inv!16171 (left!10527 (right!10857 t!4115))) tp!341539 (inv!16171 (right!10857 (right!10857 t!4115))) tp!341540))))

(declare-fun b!1203374 () Bool)

(declare-fun e!772027 () Bool)

(declare-fun tp!341541 () Bool)

(assert (=> b!1203374 (= e!772027 tp!341541)))

(declare-fun b!1203373 () Bool)

(assert (=> b!1203373 (= e!772028 (and (inv!16170 (xs!6697 (right!10857 t!4115))) e!772027))))

(assert (=> b!1203270 (= tp!341527 (and (inv!16171 (right!10857 t!4115)) e!772028))))

(assert (= (and b!1203270 ((_ is Node!3986) (right!10857 t!4115))) b!1203372))

(assert (= b!1203373 b!1203374))

(assert (= (and b!1203270 ((_ is Leaf!6104) (right!10857 t!4115))) b!1203373))

(declare-fun m!1379115 () Bool)

(assert (=> b!1203372 m!1379115))

(declare-fun m!1379117 () Bool)

(assert (=> b!1203372 m!1379117))

(declare-fun m!1379119 () Bool)

(assert (=> b!1203373 m!1379119))

(assert (=> b!1203270 m!1379005))

(declare-fun b!1203379 () Bool)

(declare-fun e!772031 () Bool)

(declare-fun tp_is_empty!5997 () Bool)

(declare-fun tp!341544 () Bool)

(assert (=> b!1203379 (= e!772031 (and tp_is_empty!5997 tp!341544))))

(assert (=> b!1203265 (= tp!341529 e!772031)))

(assert (= (and b!1203265 ((_ is Cons!12053) (innerList!4046 (xs!6697 t!4115)))) b!1203379))

(declare-fun b!1203380 () Bool)

(declare-fun e!772032 () Bool)

(declare-fun tp!341545 () Bool)

(assert (=> b!1203380 (= e!772032 (and tp_is_empty!5997 tp!341545))))

(assert (=> b!1203272 (= tp!341528 e!772032)))

(assert (= (and b!1203272 ((_ is Cons!12053) (innerList!4046 (xs!6697 err!3121)))) b!1203380))

(declare-fun b!1203381 () Bool)

(declare-fun tp!341546 () Bool)

(declare-fun e!772034 () Bool)

(declare-fun tp!341547 () Bool)

(assert (=> b!1203381 (= e!772034 (and (inv!16171 (left!10527 (left!10527 err!3121))) tp!341546 (inv!16171 (right!10857 (left!10527 err!3121))) tp!341547))))

(declare-fun b!1203383 () Bool)

(declare-fun e!772033 () Bool)

(declare-fun tp!341548 () Bool)

(assert (=> b!1203383 (= e!772033 tp!341548)))

(declare-fun b!1203382 () Bool)

(assert (=> b!1203382 (= e!772034 (and (inv!16170 (xs!6697 (left!10527 err!3121))) e!772033))))

(assert (=> b!1203267 (= tp!341525 (and (inv!16171 (left!10527 err!3121)) e!772034))))

(assert (= (and b!1203267 ((_ is Node!3986) (left!10527 err!3121))) b!1203381))

(assert (= b!1203382 b!1203383))

(assert (= (and b!1203267 ((_ is Leaf!6104) (left!10527 err!3121))) b!1203382))

(declare-fun m!1379121 () Bool)

(assert (=> b!1203381 m!1379121))

(declare-fun m!1379123 () Bool)

(assert (=> b!1203381 m!1379123))

(declare-fun m!1379125 () Bool)

(assert (=> b!1203382 m!1379125))

(assert (=> b!1203267 m!1379021))

(declare-fun b!1203384 () Bool)

(declare-fun tp!341550 () Bool)

(declare-fun tp!341549 () Bool)

(declare-fun e!772036 () Bool)

(assert (=> b!1203384 (= e!772036 (and (inv!16171 (left!10527 (right!10857 err!3121))) tp!341549 (inv!16171 (right!10857 (right!10857 err!3121))) tp!341550))))

(declare-fun b!1203386 () Bool)

(declare-fun e!772035 () Bool)

(declare-fun tp!341551 () Bool)

(assert (=> b!1203386 (= e!772035 tp!341551)))

(declare-fun b!1203385 () Bool)

(assert (=> b!1203385 (= e!772036 (and (inv!16170 (xs!6697 (right!10857 err!3121))) e!772035))))

(assert (=> b!1203267 (= tp!341526 (and (inv!16171 (right!10857 err!3121)) e!772036))))

(assert (= (and b!1203267 ((_ is Node!3986) (right!10857 err!3121))) b!1203384))

(assert (= b!1203385 b!1203386))

(assert (= (and b!1203267 ((_ is Leaf!6104) (right!10857 err!3121))) b!1203385))

(declare-fun m!1379127 () Bool)

(assert (=> b!1203384 m!1379127))

(declare-fun m!1379129 () Bool)

(assert (=> b!1203384 m!1379129))

(declare-fun m!1379131 () Bool)

(assert (=> b!1203385 m!1379131))

(assert (=> b!1203267 m!1379023))

(check-sat (not b!1203345) (not b!1203386) (not b!1203309) (not b!1203317) (not b!1203270) (not b!1203281) (not b!1203383) (not b!1203308) (not b!1203340) (not b!1203384) tp_is_empty!5997 (not b!1203279) (not b!1203310) (not b!1203307) (not b!1203316) (not b!1203284) (not b!1203338) (not d!344102) (not b!1203339) (not b!1203311) (not b!1203319) (not b!1203372) (not b!1203371) (not d!344096) (not b!1203382) (not b!1203374) (not b!1203335) (not b!1203346) (not b!1203267) (not b!1203343) (not b!1203381) (not b!1203282) (not b!1203306) (not b!1203318) (not b!1203334) (not b!1203323) (not b!1203373) (not b!1203380) (not b!1203369) (not b!1203342) (not b!1203321) (not b!1203385) (not b!1203370) (not d!344076) (not b!1203379) (not d!344078) (not b!1203315) (not b!1203320) (not b!1203348))
(check-sat)
