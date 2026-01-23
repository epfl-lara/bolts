; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105992 () Bool)

(assert start!105992)

(declare-fun b!1192093 () Bool)

(declare-fun res!538437 () Bool)

(declare-fun e!766202 () Bool)

(assert (=> b!1192093 (=> (not res!538437) (not e!766202))))

(declare-fun until!31 () Int)

(declare-datatypes ((T!21530 0))(
  ( (T!21531 (val!3852 Int)) )
))
(declare-datatypes ((List!12031 0))(
  ( (Nil!12007) (Cons!12007 (h!17408 T!21530) (t!112273 List!12031)) )
))
(declare-datatypes ((IArray!7885 0))(
  ( (IArray!7886 (innerList!4000 List!12031)) )
))
(declare-datatypes ((Conc!3940 0))(
  ( (Node!3940 (left!10458 Conc!3940) (right!10788 Conc!3940) (csize!8110 Int) (cheight!4151 Int)) (Leaf!6035 (xs!6645 IArray!7885) (csize!8111 Int)) (Empty!3940) )
))
(declare-fun t!4115 () Conc!3940)

(declare-fun size!9498 (Conc!3940) Int)

(assert (=> b!1192093 (= res!538437 (<= until!31 (size!9498 t!4115)))))

(declare-fun b!1192095 () Bool)

(declare-fun e!766204 () Bool)

(declare-fun lt!409478 () List!12031)

(declare-fun call!82790 () List!12031)

(assert (=> b!1192095 (= e!766204 (= lt!409478 call!82790))))

(declare-fun lt!409477 () Int)

(declare-fun lt!409476 () List!12031)

(declare-fun c!197891 () Bool)

(declare-fun from!553 () Int)

(declare-fun lt!409475 () List!12031)

(declare-fun bm!82784 () Bool)

(declare-fun slice!421 (List!12031 Int Int) List!12031)

(assert (=> bm!82784 (= call!82790 (slice!421 (ite c!197891 lt!409475 lt!409476) (ite c!197891 (- from!553 lt!409477) from!553) (ite c!197891 (- until!31 lt!409477) lt!409477)))))

(declare-fun b!1192096 () Bool)

(declare-fun res!538438 () Bool)

(assert (=> b!1192096 (=> (not res!538438) (not e!766202))))

(declare-fun isBalanced!1125 (Conc!3940) Bool)

(assert (=> b!1192096 (= res!538438 (isBalanced!1125 t!4115))))

(declare-fun tp!340057 () Bool)

(declare-fun b!1192097 () Bool)

(declare-fun e!766201 () Bool)

(declare-fun tp!340055 () Bool)

(declare-fun inv!15925 (Conc!3940) Bool)

(assert (=> b!1192097 (= e!766201 (and (inv!15925 (left!10458 t!4115)) tp!340055 (inv!15925 (right!10788 t!4115)) tp!340057))))

(declare-fun b!1192098 () Bool)

(declare-fun e!766205 () List!12031)

(assert (=> b!1192098 (= e!766204 (= lt!409478 e!766205))))

(declare-fun c!197892 () Bool)

(assert (=> b!1192098 (= c!197892 (<= until!31 lt!409477))))

(declare-fun b!1192099 () Bool)

(declare-fun e!766206 () Bool)

(assert (=> b!1192099 (= e!766206 (isBalanced!1125 (left!10458 t!4115)))))

(declare-fun bm!82785 () Bool)

(declare-fun call!82789 () List!12031)

(assert (=> bm!82785 (= call!82789 (slice!421 (ite c!197892 lt!409476 lt!409475) (ite c!197892 from!553 0) (ite c!197892 until!31 (- until!31 lt!409477))))))

(declare-fun b!1192100 () Bool)

(assert (=> b!1192100 (= e!766202 (not e!766206))))

(declare-fun res!538436 () Bool)

(assert (=> b!1192100 (=> res!538436 e!766206)))

(declare-fun lt!409473 () Int)

(assert (=> b!1192100 (= res!538436 (or (<= lt!409473 from!553) (> until!31 lt!409473)))))

(assert (=> b!1192100 (= lt!409473 (size!9498 (left!10458 t!4115)))))

(assert (=> b!1192100 e!766204))

(assert (=> b!1192100 (= c!197891 (<= lt!409477 from!553))))

(declare-fun ++!3042 (List!12031 List!12031) List!12031)

(assert (=> b!1192100 (= lt!409478 (slice!421 (++!3042 lt!409476 lt!409475) from!553 until!31))))

(declare-fun size!9499 (List!12031) Int)

(assert (=> b!1192100 (= lt!409477 (size!9499 lt!409476))))

(declare-datatypes ((Unit!18420 0))(
  ( (Unit!18421) )
))
(declare-fun lt!409474 () Unit!18420)

(declare-fun sliceLemma!21 (List!12031 List!12031 Int Int) Unit!18420)

(assert (=> b!1192100 (= lt!409474 (sliceLemma!21 lt!409476 lt!409475 from!553 until!31))))

(declare-fun list!4423 (Conc!3940) List!12031)

(assert (=> b!1192100 (= lt!409475 (list!4423 (right!10788 t!4115)))))

(assert (=> b!1192100 (= lt!409476 (list!4423 (left!10458 t!4115)))))

(declare-fun b!1192101 () Bool)

(assert (=> b!1192101 (= e!766205 call!82789)))

(declare-fun b!1192102 () Bool)

(assert (=> b!1192102 (= e!766205 (++!3042 call!82790 call!82789))))

(declare-fun b!1192094 () Bool)

(declare-fun e!766203 () Bool)

(declare-fun tp!340056 () Bool)

(assert (=> b!1192094 (= e!766203 tp!340056)))

(declare-fun res!538434 () Bool)

(assert (=> start!105992 (=> (not res!538434) (not e!766202))))

(assert (=> start!105992 (= res!538434 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!105992 e!766202))

(assert (=> start!105992 true))

(assert (=> start!105992 (and (inv!15925 t!4115) e!766201)))

(declare-fun b!1192103 () Bool)

(declare-fun res!538435 () Bool)

(assert (=> b!1192103 (=> (not res!538435) (not e!766202))))

(get-info :version)

(assert (=> b!1192103 (= res!538435 (and (not (= from!553 until!31)) (not ((_ is Leaf!6035) t!4115)) ((_ is Node!3940) t!4115)))))

(declare-fun b!1192104 () Bool)

(declare-fun inv!15926 (IArray!7885) Bool)

(assert (=> b!1192104 (= e!766201 (and (inv!15926 (xs!6645 t!4115)) e!766203))))

(assert (= (and start!105992 res!538434) b!1192093))

(assert (= (and b!1192093 res!538437) b!1192096))

(assert (= (and b!1192096 res!538438) b!1192103))

(assert (= (and b!1192103 res!538435) b!1192100))

(assert (= (and b!1192100 c!197891) b!1192095))

(assert (= (and b!1192100 (not c!197891)) b!1192098))

(assert (= (and b!1192098 c!197892) b!1192101))

(assert (= (and b!1192098 (not c!197892)) b!1192102))

(assert (= (or b!1192101 b!1192102) bm!82785))

(assert (= (or b!1192095 b!1192102) bm!82784))

(assert (= (and b!1192100 (not res!538436)) b!1192099))

(assert (= (and start!105992 ((_ is Node!3940) t!4115)) b!1192097))

(assert (= b!1192104 b!1192094))

(assert (= (and start!105992 ((_ is Leaf!6035) t!4115)) b!1192104))

(declare-fun m!1366953 () Bool)

(assert (=> b!1192104 m!1366953))

(declare-fun m!1366955 () Bool)

(assert (=> b!1192096 m!1366955))

(declare-fun m!1366957 () Bool)

(assert (=> bm!82784 m!1366957))

(declare-fun m!1366959 () Bool)

(assert (=> bm!82785 m!1366959))

(declare-fun m!1366961 () Bool)

(assert (=> start!105992 m!1366961))

(declare-fun m!1366963 () Bool)

(assert (=> b!1192097 m!1366963))

(declare-fun m!1366965 () Bool)

(assert (=> b!1192097 m!1366965))

(declare-fun m!1366967 () Bool)

(assert (=> b!1192093 m!1366967))

(declare-fun m!1366969 () Bool)

(assert (=> b!1192102 m!1366969))

(declare-fun m!1366971 () Bool)

(assert (=> b!1192099 m!1366971))

(declare-fun m!1366973 () Bool)

(assert (=> b!1192100 m!1366973))

(declare-fun m!1366975 () Bool)

(assert (=> b!1192100 m!1366975))

(declare-fun m!1366977 () Bool)

(assert (=> b!1192100 m!1366977))

(assert (=> b!1192100 m!1366975))

(declare-fun m!1366979 () Bool)

(assert (=> b!1192100 m!1366979))

(declare-fun m!1366981 () Bool)

(assert (=> b!1192100 m!1366981))

(declare-fun m!1366983 () Bool)

(assert (=> b!1192100 m!1366983))

(declare-fun m!1366985 () Bool)

(assert (=> b!1192100 m!1366985))

(check-sat (not b!1192104) (not b!1192096) (not b!1192094) (not start!105992) (not b!1192102) (not b!1192099) (not b!1192100) (not b!1192093) (not bm!82785) (not b!1192097) (not bm!82784))
(check-sat)
(get-model)

(declare-fun d!340557 () Bool)

(assert (=> d!340557 (= (inv!15926 (xs!6645 t!4115)) (<= (size!9499 (innerList!4000 (xs!6645 t!4115))) 2147483647))))

(declare-fun bs!287927 () Bool)

(assert (= bs!287927 d!340557))

(declare-fun m!1366993 () Bool)

(assert (=> bs!287927 m!1366993))

(assert (=> b!1192104 d!340557))

(declare-fun b!1192133 () Bool)

(declare-fun res!538454 () Bool)

(declare-fun e!766219 () Bool)

(assert (=> b!1192133 (=> (not res!538454) (not e!766219))))

(declare-fun height!537 (Conc!3940) Int)

(assert (=> b!1192133 (= res!538454 (<= (- (height!537 (left!10458 (left!10458 t!4115))) (height!537 (right!10788 (left!10458 t!4115)))) 1))))

(declare-fun b!1192134 () Bool)

(declare-fun e!766220 () Bool)

(assert (=> b!1192134 (= e!766220 e!766219)))

(declare-fun res!538451 () Bool)

(assert (=> b!1192134 (=> (not res!538451) (not e!766219))))

(assert (=> b!1192134 (= res!538451 (<= (- 1) (- (height!537 (left!10458 (left!10458 t!4115))) (height!537 (right!10788 (left!10458 t!4115))))))))

(declare-fun b!1192135 () Bool)

(declare-fun res!538455 () Bool)

(assert (=> b!1192135 (=> (not res!538455) (not e!766219))))

(assert (=> b!1192135 (= res!538455 (isBalanced!1125 (right!10788 (left!10458 t!4115))))))

(declare-fun b!1192136 () Bool)

(declare-fun res!538456 () Bool)

(assert (=> b!1192136 (=> (not res!538456) (not e!766219))))

(declare-fun isEmpty!7218 (Conc!3940) Bool)

(assert (=> b!1192136 (= res!538456 (not (isEmpty!7218 (left!10458 (left!10458 t!4115)))))))

(declare-fun b!1192137 () Bool)

(declare-fun res!538453 () Bool)

(assert (=> b!1192137 (=> (not res!538453) (not e!766219))))

(assert (=> b!1192137 (= res!538453 (isBalanced!1125 (left!10458 (left!10458 t!4115))))))

(declare-fun d!340561 () Bool)

(declare-fun res!538452 () Bool)

(assert (=> d!340561 (=> res!538452 e!766220)))

(assert (=> d!340561 (= res!538452 (not ((_ is Node!3940) (left!10458 t!4115))))))

(assert (=> d!340561 (= (isBalanced!1125 (left!10458 t!4115)) e!766220)))

(declare-fun b!1192138 () Bool)

(assert (=> b!1192138 (= e!766219 (not (isEmpty!7218 (right!10788 (left!10458 t!4115)))))))

(assert (= (and d!340561 (not res!538452)) b!1192134))

(assert (= (and b!1192134 res!538451) b!1192133))

(assert (= (and b!1192133 res!538454) b!1192137))

(assert (= (and b!1192137 res!538453) b!1192135))

(assert (= (and b!1192135 res!538455) b!1192136))

(assert (= (and b!1192136 res!538456) b!1192138))

(declare-fun m!1367011 () Bool)

(assert (=> b!1192137 m!1367011))

(declare-fun m!1367013 () Bool)

(assert (=> b!1192134 m!1367013))

(declare-fun m!1367015 () Bool)

(assert (=> b!1192134 m!1367015))

(declare-fun m!1367017 () Bool)

(assert (=> b!1192135 m!1367017))

(declare-fun m!1367019 () Bool)

(assert (=> b!1192138 m!1367019))

(assert (=> b!1192133 m!1367013))

(assert (=> b!1192133 m!1367015))

(declare-fun m!1367021 () Bool)

(assert (=> b!1192136 m!1367021))

(assert (=> b!1192099 d!340561))

(declare-fun d!340567 () Bool)

(declare-fun lt!409481 () Int)

(assert (=> d!340567 (= lt!409481 (size!9499 (list!4423 t!4115)))))

(assert (=> d!340567 (= lt!409481 (ite ((_ is Empty!3940) t!4115) 0 (ite ((_ is Leaf!6035) t!4115) (csize!8111 t!4115) (csize!8110 t!4115))))))

(assert (=> d!340567 (= (size!9498 t!4115) lt!409481)))

(declare-fun bs!287928 () Bool)

(assert (= bs!287928 d!340567))

(declare-fun m!1367023 () Bool)

(assert (=> bs!287928 m!1367023))

(assert (=> bs!287928 m!1367023))

(declare-fun m!1367025 () Bool)

(assert (=> bs!287928 m!1367025))

(assert (=> b!1192093 d!340567))

(declare-fun d!340569 () Bool)

(declare-fun c!197909 () Bool)

(assert (=> d!340569 (= c!197909 ((_ is Node!3940) t!4115))))

(declare-fun e!766233 () Bool)

(assert (=> d!340569 (= (inv!15925 t!4115) e!766233)))

(declare-fun b!1192159 () Bool)

(declare-fun inv!15927 (Conc!3940) Bool)

(assert (=> b!1192159 (= e!766233 (inv!15927 t!4115))))

(declare-fun b!1192160 () Bool)

(declare-fun e!766234 () Bool)

(assert (=> b!1192160 (= e!766233 e!766234)))

(declare-fun res!538461 () Bool)

(assert (=> b!1192160 (= res!538461 (not ((_ is Leaf!6035) t!4115)))))

(assert (=> b!1192160 (=> res!538461 e!766234)))

(declare-fun b!1192161 () Bool)

(declare-fun inv!15928 (Conc!3940) Bool)

(assert (=> b!1192161 (= e!766234 (inv!15928 t!4115))))

(assert (= (and d!340569 c!197909) b!1192159))

(assert (= (and d!340569 (not c!197909)) b!1192160))

(assert (= (and b!1192160 (not res!538461)) b!1192161))

(declare-fun m!1367027 () Bool)

(assert (=> b!1192159 m!1367027))

(declare-fun m!1367029 () Bool)

(assert (=> b!1192161 m!1367029))

(assert (=> start!105992 d!340569))

(declare-fun b!1192183 () Bool)

(declare-fun e!766247 () List!12031)

(assert (=> b!1192183 (= e!766247 call!82789)))

(declare-fun d!340571 () Bool)

(declare-fun e!766246 () Bool)

(assert (=> d!340571 e!766246))

(declare-fun res!538468 () Bool)

(assert (=> d!340571 (=> (not res!538468) (not e!766246))))

(declare-fun lt!409490 () List!12031)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1663 (List!12031) (InoxSet T!21530))

(assert (=> d!340571 (= res!538468 (= (content!1663 lt!409490) ((_ map or) (content!1663 call!82790) (content!1663 call!82789))))))

(assert (=> d!340571 (= lt!409490 e!766247)))

(declare-fun c!197918 () Bool)

(assert (=> d!340571 (= c!197918 ((_ is Nil!12007) call!82790))))

(assert (=> d!340571 (= (++!3042 call!82790 call!82789) lt!409490)))

(declare-fun b!1192184 () Bool)

(assert (=> b!1192184 (= e!766247 (Cons!12007 (h!17408 call!82790) (++!3042 (t!112273 call!82790) call!82789)))))

(declare-fun b!1192185 () Bool)

(declare-fun res!538467 () Bool)

(assert (=> b!1192185 (=> (not res!538467) (not e!766246))))

(assert (=> b!1192185 (= res!538467 (= (size!9499 lt!409490) (+ (size!9499 call!82790) (size!9499 call!82789))))))

(declare-fun b!1192186 () Bool)

(assert (=> b!1192186 (= e!766246 (or (not (= call!82789 Nil!12007)) (= lt!409490 call!82790)))))

(assert (= (and d!340571 c!197918) b!1192183))

(assert (= (and d!340571 (not c!197918)) b!1192184))

(assert (= (and d!340571 res!538468) b!1192185))

(assert (= (and b!1192185 res!538467) b!1192186))

(declare-fun m!1367043 () Bool)

(assert (=> d!340571 m!1367043))

(declare-fun m!1367045 () Bool)

(assert (=> d!340571 m!1367045))

(declare-fun m!1367047 () Bool)

(assert (=> d!340571 m!1367047))

(declare-fun m!1367049 () Bool)

(assert (=> b!1192184 m!1367049))

(declare-fun m!1367051 () Bool)

(assert (=> b!1192185 m!1367051))

(declare-fun m!1367053 () Bool)

(assert (=> b!1192185 m!1367053))

(declare-fun m!1367055 () Bool)

(assert (=> b!1192185 m!1367055))

(assert (=> b!1192102 d!340571))

(declare-fun d!340577 () Bool)

(declare-fun c!197919 () Bool)

(assert (=> d!340577 (= c!197919 ((_ is Node!3940) (left!10458 t!4115)))))

(declare-fun e!766248 () Bool)

(assert (=> d!340577 (= (inv!15925 (left!10458 t!4115)) e!766248)))

(declare-fun b!1192187 () Bool)

(assert (=> b!1192187 (= e!766248 (inv!15927 (left!10458 t!4115)))))

(declare-fun b!1192188 () Bool)

(declare-fun e!766249 () Bool)

(assert (=> b!1192188 (= e!766248 e!766249)))

(declare-fun res!538469 () Bool)

(assert (=> b!1192188 (= res!538469 (not ((_ is Leaf!6035) (left!10458 t!4115))))))

(assert (=> b!1192188 (=> res!538469 e!766249)))

(declare-fun b!1192189 () Bool)

(assert (=> b!1192189 (= e!766249 (inv!15928 (left!10458 t!4115)))))

(assert (= (and d!340577 c!197919) b!1192187))

(assert (= (and d!340577 (not c!197919)) b!1192188))

(assert (= (and b!1192188 (not res!538469)) b!1192189))

(declare-fun m!1367057 () Bool)

(assert (=> b!1192187 m!1367057))

(declare-fun m!1367059 () Bool)

(assert (=> b!1192189 m!1367059))

(assert (=> b!1192097 d!340577))

(declare-fun d!340579 () Bool)

(declare-fun c!197920 () Bool)

(assert (=> d!340579 (= c!197920 ((_ is Node!3940) (right!10788 t!4115)))))

(declare-fun e!766250 () Bool)

(assert (=> d!340579 (= (inv!15925 (right!10788 t!4115)) e!766250)))

(declare-fun b!1192190 () Bool)

(assert (=> b!1192190 (= e!766250 (inv!15927 (right!10788 t!4115)))))

(declare-fun b!1192191 () Bool)

(declare-fun e!766251 () Bool)

(assert (=> b!1192191 (= e!766250 e!766251)))

(declare-fun res!538470 () Bool)

(assert (=> b!1192191 (= res!538470 (not ((_ is Leaf!6035) (right!10788 t!4115))))))

(assert (=> b!1192191 (=> res!538470 e!766251)))

(declare-fun b!1192192 () Bool)

(assert (=> b!1192192 (= e!766251 (inv!15928 (right!10788 t!4115)))))

(assert (= (and d!340579 c!197920) b!1192190))

(assert (= (and d!340579 (not c!197920)) b!1192191))

(assert (= (and b!1192191 (not res!538470)) b!1192192))

(declare-fun m!1367061 () Bool)

(assert (=> b!1192190 m!1367061))

(declare-fun m!1367063 () Bool)

(assert (=> b!1192192 m!1367063))

(assert (=> b!1192097 d!340579))

(declare-fun b!1192193 () Bool)

(declare-fun res!538474 () Bool)

(declare-fun e!766252 () Bool)

(assert (=> b!1192193 (=> (not res!538474) (not e!766252))))

(assert (=> b!1192193 (= res!538474 (<= (- (height!537 (left!10458 t!4115)) (height!537 (right!10788 t!4115))) 1))))

(declare-fun b!1192194 () Bool)

(declare-fun e!766253 () Bool)

(assert (=> b!1192194 (= e!766253 e!766252)))

(declare-fun res!538471 () Bool)

(assert (=> b!1192194 (=> (not res!538471) (not e!766252))))

(assert (=> b!1192194 (= res!538471 (<= (- 1) (- (height!537 (left!10458 t!4115)) (height!537 (right!10788 t!4115)))))))

(declare-fun b!1192195 () Bool)

(declare-fun res!538475 () Bool)

(assert (=> b!1192195 (=> (not res!538475) (not e!766252))))

(assert (=> b!1192195 (= res!538475 (isBalanced!1125 (right!10788 t!4115)))))

(declare-fun b!1192196 () Bool)

(declare-fun res!538476 () Bool)

(assert (=> b!1192196 (=> (not res!538476) (not e!766252))))

(assert (=> b!1192196 (= res!538476 (not (isEmpty!7218 (left!10458 t!4115))))))

(declare-fun b!1192197 () Bool)

(declare-fun res!538473 () Bool)

(assert (=> b!1192197 (=> (not res!538473) (not e!766252))))

(assert (=> b!1192197 (= res!538473 (isBalanced!1125 (left!10458 t!4115)))))

(declare-fun d!340581 () Bool)

(declare-fun res!538472 () Bool)

(assert (=> d!340581 (=> res!538472 e!766253)))

(assert (=> d!340581 (= res!538472 (not ((_ is Node!3940) t!4115)))))

(assert (=> d!340581 (= (isBalanced!1125 t!4115) e!766253)))

(declare-fun b!1192198 () Bool)

(assert (=> b!1192198 (= e!766252 (not (isEmpty!7218 (right!10788 t!4115))))))

(assert (= (and d!340581 (not res!538472)) b!1192194))

(assert (= (and b!1192194 res!538471) b!1192193))

(assert (= (and b!1192193 res!538474) b!1192197))

(assert (= (and b!1192197 res!538473) b!1192195))

(assert (= (and b!1192195 res!538475) b!1192196))

(assert (= (and b!1192196 res!538476) b!1192198))

(assert (=> b!1192197 m!1366971))

(declare-fun m!1367067 () Bool)

(assert (=> b!1192194 m!1367067))

(declare-fun m!1367069 () Bool)

(assert (=> b!1192194 m!1367069))

(declare-fun m!1367071 () Bool)

(assert (=> b!1192195 m!1367071))

(declare-fun m!1367073 () Bool)

(assert (=> b!1192198 m!1367073))

(assert (=> b!1192193 m!1367067))

(assert (=> b!1192193 m!1367069))

(declare-fun m!1367075 () Bool)

(assert (=> b!1192196 m!1367075))

(assert (=> b!1192096 d!340581))

(declare-fun d!340585 () Bool)

(declare-fun lt!409494 () Int)

(assert (=> d!340585 (= lt!409494 (size!9499 (list!4423 (left!10458 t!4115))))))

(assert (=> d!340585 (= lt!409494 (ite ((_ is Empty!3940) (left!10458 t!4115)) 0 (ite ((_ is Leaf!6035) (left!10458 t!4115)) (csize!8111 (left!10458 t!4115)) (csize!8110 (left!10458 t!4115)))))))

(assert (=> d!340585 (= (size!9498 (left!10458 t!4115)) lt!409494)))

(declare-fun bs!287930 () Bool)

(assert (= bs!287930 d!340585))

(assert (=> bs!287930 m!1366973))

(assert (=> bs!287930 m!1366973))

(declare-fun m!1367077 () Bool)

(assert (=> bs!287930 m!1367077))

(assert (=> b!1192100 d!340585))

(declare-fun d!340587 () Bool)

(declare-fun take!105 (List!12031 Int) List!12031)

(declare-fun drop!577 (List!12031 Int) List!12031)

(assert (=> d!340587 (= (slice!421 (++!3042 lt!409476 lt!409475) from!553 until!31) (take!105 (drop!577 (++!3042 lt!409476 lt!409475) from!553) (- until!31 from!553)))))

(declare-fun bs!287931 () Bool)

(assert (= bs!287931 d!340587))

(assert (=> bs!287931 m!1366975))

(declare-fun m!1367079 () Bool)

(assert (=> bs!287931 m!1367079))

(assert (=> bs!287931 m!1367079))

(declare-fun m!1367081 () Bool)

(assert (=> bs!287931 m!1367081))

(assert (=> b!1192100 d!340587))

(declare-fun d!340589 () Bool)

(declare-fun lt!409499 () Int)

(assert (=> d!340589 (>= lt!409499 0)))

(declare-fun e!766260 () Int)

(assert (=> d!340589 (= lt!409499 e!766260)))

(declare-fun c!197925 () Bool)

(assert (=> d!340589 (= c!197925 ((_ is Nil!12007) lt!409476))))

(assert (=> d!340589 (= (size!9499 lt!409476) lt!409499)))

(declare-fun b!1192211 () Bool)

(assert (=> b!1192211 (= e!766260 0)))

(declare-fun b!1192212 () Bool)

(assert (=> b!1192212 (= e!766260 (+ 1 (size!9499 (t!112273 lt!409476))))))

(assert (= (and d!340589 c!197925) b!1192211))

(assert (= (and d!340589 (not c!197925)) b!1192212))

(declare-fun m!1367083 () Bool)

(assert (=> b!1192212 m!1367083))

(assert (=> b!1192100 d!340589))

(declare-fun b!1192232 () Bool)

(declare-fun e!766271 () List!12031)

(declare-fun e!766272 () List!12031)

(assert (=> b!1192232 (= e!766271 e!766272)))

(declare-fun c!197934 () Bool)

(assert (=> b!1192232 (= c!197934 ((_ is Leaf!6035) (left!10458 t!4115)))))

(declare-fun b!1192233 () Bool)

(declare-fun list!4425 (IArray!7885) List!12031)

(assert (=> b!1192233 (= e!766272 (list!4425 (xs!6645 (left!10458 t!4115))))))

(declare-fun b!1192234 () Bool)

(assert (=> b!1192234 (= e!766272 (++!3042 (list!4423 (left!10458 (left!10458 t!4115))) (list!4423 (right!10788 (left!10458 t!4115)))))))

(declare-fun b!1192231 () Bool)

(assert (=> b!1192231 (= e!766271 Nil!12007)))

(declare-fun d!340591 () Bool)

(declare-fun c!197933 () Bool)

(assert (=> d!340591 (= c!197933 ((_ is Empty!3940) (left!10458 t!4115)))))

(assert (=> d!340591 (= (list!4423 (left!10458 t!4115)) e!766271)))

(assert (= (and d!340591 c!197933) b!1192231))

(assert (= (and d!340591 (not c!197933)) b!1192232))

(assert (= (and b!1192232 c!197934) b!1192233))

(assert (= (and b!1192232 (not c!197934)) b!1192234))

(declare-fun m!1367095 () Bool)

(assert (=> b!1192233 m!1367095))

(declare-fun m!1367097 () Bool)

(assert (=> b!1192234 m!1367097))

(declare-fun m!1367099 () Bool)

(assert (=> b!1192234 m!1367099))

(assert (=> b!1192234 m!1367097))

(assert (=> b!1192234 m!1367099))

(declare-fun m!1367101 () Bool)

(assert (=> b!1192234 m!1367101))

(assert (=> b!1192100 d!340591))

(declare-fun b!1192239 () Bool)

(declare-fun e!766275 () List!12031)

(declare-fun e!766276 () List!12031)

(assert (=> b!1192239 (= e!766275 e!766276)))

(declare-fun c!197937 () Bool)

(assert (=> b!1192239 (= c!197937 ((_ is Leaf!6035) (right!10788 t!4115)))))

(declare-fun b!1192240 () Bool)

(assert (=> b!1192240 (= e!766276 (list!4425 (xs!6645 (right!10788 t!4115))))))

(declare-fun b!1192241 () Bool)

(assert (=> b!1192241 (= e!766276 (++!3042 (list!4423 (left!10458 (right!10788 t!4115))) (list!4423 (right!10788 (right!10788 t!4115)))))))

(declare-fun b!1192238 () Bool)

(assert (=> b!1192238 (= e!766275 Nil!12007)))

(declare-fun d!340595 () Bool)

(declare-fun c!197936 () Bool)

(assert (=> d!340595 (= c!197936 ((_ is Empty!3940) (right!10788 t!4115)))))

(assert (=> d!340595 (= (list!4423 (right!10788 t!4115)) e!766275)))

(assert (= (and d!340595 c!197936) b!1192238))

(assert (= (and d!340595 (not c!197936)) b!1192239))

(assert (= (and b!1192239 c!197937) b!1192240))

(assert (= (and b!1192239 (not c!197937)) b!1192241))

(declare-fun m!1367111 () Bool)

(assert (=> b!1192240 m!1367111))

(declare-fun m!1367113 () Bool)

(assert (=> b!1192241 m!1367113))

(declare-fun m!1367115 () Bool)

(assert (=> b!1192241 m!1367115))

(assert (=> b!1192241 m!1367113))

(assert (=> b!1192241 m!1367115))

(declare-fun m!1367119 () Bool)

(assert (=> b!1192241 m!1367119))

(assert (=> b!1192100 d!340595))

(declare-fun b!1192245 () Bool)

(declare-fun e!766280 () List!12031)

(assert (=> b!1192245 (= e!766280 lt!409475)))

(declare-fun d!340601 () Bool)

(declare-fun e!766279 () Bool)

(assert (=> d!340601 e!766279))

(declare-fun res!538488 () Bool)

(assert (=> d!340601 (=> (not res!538488) (not e!766279))))

(declare-fun lt!409502 () List!12031)

(assert (=> d!340601 (= res!538488 (= (content!1663 lt!409502) ((_ map or) (content!1663 lt!409476) (content!1663 lt!409475))))))

(assert (=> d!340601 (= lt!409502 e!766280)))

(declare-fun c!197939 () Bool)

(assert (=> d!340601 (= c!197939 ((_ is Nil!12007) lt!409476))))

(assert (=> d!340601 (= (++!3042 lt!409476 lt!409475) lt!409502)))

(declare-fun b!1192246 () Bool)

(assert (=> b!1192246 (= e!766280 (Cons!12007 (h!17408 lt!409476) (++!3042 (t!112273 lt!409476) lt!409475)))))

(declare-fun b!1192247 () Bool)

(declare-fun res!538487 () Bool)

(assert (=> b!1192247 (=> (not res!538487) (not e!766279))))

(assert (=> b!1192247 (= res!538487 (= (size!9499 lt!409502) (+ (size!9499 lt!409476) (size!9499 lt!409475))))))

(declare-fun b!1192248 () Bool)

(assert (=> b!1192248 (= e!766279 (or (not (= lt!409475 Nil!12007)) (= lt!409502 lt!409476)))))

(assert (= (and d!340601 c!197939) b!1192245))

(assert (= (and d!340601 (not c!197939)) b!1192246))

(assert (= (and d!340601 res!538488) b!1192247))

(assert (= (and b!1192247 res!538487) b!1192248))

(declare-fun m!1367131 () Bool)

(assert (=> d!340601 m!1367131))

(declare-fun m!1367133 () Bool)

(assert (=> d!340601 m!1367133))

(declare-fun m!1367135 () Bool)

(assert (=> d!340601 m!1367135))

(declare-fun m!1367137 () Bool)

(assert (=> b!1192246 m!1367137))

(declare-fun m!1367139 () Bool)

(assert (=> b!1192247 m!1367139))

(assert (=> b!1192247 m!1366977))

(declare-fun m!1367141 () Bool)

(assert (=> b!1192247 m!1367141))

(assert (=> b!1192100 d!340601))

(declare-fun bm!82801 () Bool)

(declare-fun c!197949 () Bool)

(declare-fun c!197950 () Bool)

(assert (=> bm!82801 (= c!197949 c!197950)))

(declare-fun call!82806 () List!12031)

(declare-fun call!82807 () List!12031)

(assert (=> bm!82801 (= call!82806 call!82807)))

(declare-fun b!1192314 () Bool)

(declare-fun e!766312 () List!12031)

(assert (=> b!1192314 (= e!766312 call!82806)))

(declare-fun bm!82802 () Bool)

(declare-fun call!82808 () Int)

(assert (=> bm!82802 (= call!82808 (size!9499 lt!409476))))

(declare-fun b!1192315 () Bool)

(declare-fun e!766313 () Int)

(assert (=> b!1192315 (= e!766313 until!31)))

(declare-fun b!1192316 () Bool)

(assert (=> b!1192316 (= e!766312 (++!3042 call!82806 (slice!421 lt!409475 0 (- until!31 call!82808))))))

(declare-fun e!766315 () Bool)

(declare-fun b!1192317 () Bool)

(assert (=> b!1192317 (= e!766315 (<= until!31 (+ (size!9499 lt!409476) (size!9499 lt!409475))))))

(declare-fun e!766314 () List!12031)

(declare-fun d!340609 () Bool)

(assert (=> d!340609 (= (slice!421 (++!3042 lt!409476 lt!409475) from!553 until!31) e!766314)))

(declare-fun c!197948 () Bool)

(assert (=> d!340609 (= c!197948 (<= (size!9499 lt!409476) from!553))))

(declare-fun lt!409506 () Unit!18420)

(declare-fun choose!7706 (List!12031 List!12031 Int Int) Unit!18420)

(assert (=> d!340609 (= lt!409506 (choose!7706 lt!409476 lt!409475 from!553 until!31))))

(assert (=> d!340609 e!766315))

(declare-fun res!538518 () Bool)

(assert (=> d!340609 (=> (not res!538518) (not e!766315))))

(assert (=> d!340609 (= res!538518 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340609 (= (sliceLemma!21 lt!409476 lt!409475 from!553 until!31) lt!409506)))

(declare-fun b!1192313 () Bool)

(assert (=> b!1192313 (= e!766313 call!82808)))

(declare-fun b!1192318 () Bool)

(assert (=> b!1192318 (= e!766314 call!82807)))

(declare-fun bm!82803 () Bool)

(assert (=> bm!82803 (= call!82807 (slice!421 (ite c!197948 lt!409475 lt!409476) (ite c!197948 (- from!553 call!82808) from!553) (ite c!197948 (- until!31 call!82808) e!766313)))))

(declare-fun b!1192319 () Bool)

(assert (=> b!1192319 (= e!766314 e!766312)))

(assert (=> b!1192319 (= c!197950 (<= until!31 call!82808))))

(assert (= (and d!340609 res!538518) b!1192317))

(assert (= (and d!340609 c!197948) b!1192318))

(assert (= (and d!340609 (not c!197948)) b!1192319))

(assert (= (and b!1192319 c!197950) b!1192314))

(assert (= (and b!1192319 (not c!197950)) b!1192316))

(assert (= (or b!1192314 b!1192316) bm!82801))

(assert (= (and bm!82801 c!197949) b!1192315))

(assert (= (and bm!82801 (not c!197949)) b!1192313))

(assert (= (or b!1192318 b!1192313 b!1192316 b!1192319) bm!82802))

(assert (= (or b!1192318 bm!82801) bm!82803))

(assert (=> bm!82802 m!1366977))

(declare-fun m!1367195 () Bool)

(assert (=> bm!82803 m!1367195))

(declare-fun m!1367197 () Bool)

(assert (=> b!1192316 m!1367197))

(assert (=> b!1192316 m!1367197))

(declare-fun m!1367199 () Bool)

(assert (=> b!1192316 m!1367199))

(assert (=> d!340609 m!1366975))

(assert (=> d!340609 m!1366975))

(assert (=> d!340609 m!1366979))

(assert (=> d!340609 m!1366977))

(declare-fun m!1367201 () Bool)

(assert (=> d!340609 m!1367201))

(assert (=> b!1192317 m!1366977))

(assert (=> b!1192317 m!1367141))

(assert (=> b!1192100 d!340609))

(declare-fun d!340617 () Bool)

(assert (=> d!340617 (= (slice!421 (ite c!197892 lt!409476 lt!409475) (ite c!197892 from!553 0) (ite c!197892 until!31 (- until!31 lt!409477))) (take!105 (drop!577 (ite c!197892 lt!409476 lt!409475) (ite c!197892 from!553 0)) (- (ite c!197892 until!31 (- until!31 lt!409477)) (ite c!197892 from!553 0))))))

(declare-fun bs!287935 () Bool)

(assert (= bs!287935 d!340617))

(declare-fun m!1367203 () Bool)

(assert (=> bs!287935 m!1367203))

(assert (=> bs!287935 m!1367203))

(declare-fun m!1367205 () Bool)

(assert (=> bs!287935 m!1367205))

(assert (=> bm!82785 d!340617))

(declare-fun d!340619 () Bool)

(assert (=> d!340619 (= (slice!421 (ite c!197891 lt!409475 lt!409476) (ite c!197891 (- from!553 lt!409477) from!553) (ite c!197891 (- until!31 lt!409477) lt!409477)) (take!105 (drop!577 (ite c!197891 lt!409475 lt!409476) (ite c!197891 (- from!553 lt!409477) from!553)) (- (ite c!197891 (- until!31 lt!409477) lt!409477) (ite c!197891 (- from!553 lt!409477) from!553))))))

(declare-fun bs!287936 () Bool)

(assert (= bs!287936 d!340619))

(declare-fun m!1367207 () Bool)

(assert (=> bs!287936 m!1367207))

(assert (=> bs!287936 m!1367207))

(declare-fun m!1367209 () Bool)

(assert (=> bs!287936 m!1367209))

(assert (=> bm!82784 d!340619))

(declare-fun b!1192324 () Bool)

(declare-fun e!766318 () Bool)

(declare-fun tp_is_empty!5915 () Bool)

(declare-fun tp!340075 () Bool)

(assert (=> b!1192324 (= e!766318 (and tp_is_empty!5915 tp!340075))))

(assert (=> b!1192094 (= tp!340056 e!766318)))

(assert (= (and b!1192094 ((_ is Cons!12007) (innerList!4000 (xs!6645 t!4115)))) b!1192324))

(declare-fun tp!340082 () Bool)

(declare-fun tp!340084 () Bool)

(declare-fun e!766324 () Bool)

(declare-fun b!1192333 () Bool)

(assert (=> b!1192333 (= e!766324 (and (inv!15925 (left!10458 (left!10458 t!4115))) tp!340082 (inv!15925 (right!10788 (left!10458 t!4115))) tp!340084))))

(declare-fun b!1192335 () Bool)

(declare-fun e!766323 () Bool)

(declare-fun tp!340083 () Bool)

(assert (=> b!1192335 (= e!766323 tp!340083)))

(declare-fun b!1192334 () Bool)

(assert (=> b!1192334 (= e!766324 (and (inv!15926 (xs!6645 (left!10458 t!4115))) e!766323))))

(assert (=> b!1192097 (= tp!340055 (and (inv!15925 (left!10458 t!4115)) e!766324))))

(assert (= (and b!1192097 ((_ is Node!3940) (left!10458 t!4115))) b!1192333))

(assert (= b!1192334 b!1192335))

(assert (= (and b!1192097 ((_ is Leaf!6035) (left!10458 t!4115))) b!1192334))

(declare-fun m!1367211 () Bool)

(assert (=> b!1192333 m!1367211))

(declare-fun m!1367213 () Bool)

(assert (=> b!1192333 m!1367213))

(declare-fun m!1367215 () Bool)

(assert (=> b!1192334 m!1367215))

(assert (=> b!1192097 m!1366963))

(declare-fun tp!340085 () Bool)

(declare-fun tp!340087 () Bool)

(declare-fun b!1192336 () Bool)

(declare-fun e!766326 () Bool)

(assert (=> b!1192336 (= e!766326 (and (inv!15925 (left!10458 (right!10788 t!4115))) tp!340085 (inv!15925 (right!10788 (right!10788 t!4115))) tp!340087))))

(declare-fun b!1192338 () Bool)

(declare-fun e!766325 () Bool)

(declare-fun tp!340086 () Bool)

(assert (=> b!1192338 (= e!766325 tp!340086)))

(declare-fun b!1192337 () Bool)

(assert (=> b!1192337 (= e!766326 (and (inv!15926 (xs!6645 (right!10788 t!4115))) e!766325))))

(assert (=> b!1192097 (= tp!340057 (and (inv!15925 (right!10788 t!4115)) e!766326))))

(assert (= (and b!1192097 ((_ is Node!3940) (right!10788 t!4115))) b!1192336))

(assert (= b!1192337 b!1192338))

(assert (= (and b!1192097 ((_ is Leaf!6035) (right!10788 t!4115))) b!1192337))

(declare-fun m!1367217 () Bool)

(assert (=> b!1192336 m!1367217))

(declare-fun m!1367219 () Bool)

(assert (=> b!1192336 m!1367219))

(declare-fun m!1367221 () Bool)

(assert (=> b!1192337 m!1367221))

(assert (=> b!1192097 m!1366965))

(check-sat (not b!1192246) (not d!340567) (not b!1192196) (not b!1192189) (not b!1192316) (not b!1192336) (not b!1192184) (not b!1192317) (not b!1192137) (not d!340557) (not b!1192233) (not b!1192212) (not b!1192198) (not d!340587) (not b!1192324) (not b!1192240) (not d!340571) (not b!1192185) (not b!1192195) (not b!1192138) (not b!1192334) (not b!1192194) (not d!340601) (not b!1192241) (not b!1192159) (not b!1192187) (not b!1192135) (not d!340585) (not b!1192234) (not b!1192193) (not b!1192338) tp_is_empty!5915 (not d!340619) (not b!1192134) (not b!1192136) (not b!1192197) (not d!340609) (not b!1192161) (not b!1192337) (not b!1192133) (not bm!82802) (not b!1192190) (not bm!82803) (not b!1192097) (not b!1192192) (not b!1192335) (not b!1192247) (not d!340617) (not b!1192333))
(check-sat)
