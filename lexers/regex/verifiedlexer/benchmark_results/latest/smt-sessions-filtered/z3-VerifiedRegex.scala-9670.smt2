; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507170 () Bool)

(assert start!507170)

(declare-fun res!2072779 () Bool)

(declare-fun e!3035745 () Bool)

(assert (=> start!507170 (=> (not res!2072779) (not e!3035745))))

(declare-datatypes ((T!98518 0))(
  ( (T!98519 (val!22388 Int)) )
))
(declare-datatypes ((List!55856 0))(
  ( (Nil!55732) (Cons!55732 (h!62180 T!98518) (t!363384 List!55856)) )
))
(declare-datatypes ((IArray!29085 0))(
  ( (IArray!29086 (innerList!14600 List!55856)) )
))
(declare-datatypes ((Conc!14512 0))(
  ( (Node!14512 (left!40488 Conc!14512) (right!40818 Conc!14512) (csize!29254 Int) (cheight!14723 Int)) (Leaf!24183 (xs!17818 IArray!29085) (csize!29255 Int)) (Empty!14512) )
))
(declare-datatypes ((BalanceConc!28514 0))(
  ( (BalanceConc!28515 (c!826009 Conc!14512)) )
))
(declare-fun thiss!5795 () BalanceConc!28514)

(declare-fun isEmpty!29795 (BalanceConc!28514) Bool)

(assert (=> start!507170 (= res!2072779 (not (isEmpty!29795 thiss!5795)))))

(assert (=> start!507170 e!3035745))

(declare-fun e!3035746 () Bool)

(declare-fun inv!71488 (BalanceConc!28514) Bool)

(assert (=> start!507170 (and (inv!71488 thiss!5795) e!3035746)))

(declare-fun b!4855508 () Bool)

(declare-fun last!379 (Conc!14512) T!98518)

(declare-fun last!380 (List!55856) T!98518)

(declare-fun list!17386 (BalanceConc!28514) List!55856)

(assert (=> b!4855508 (= e!3035745 (not (= (last!379 (c!826009 thiss!5795)) (last!380 (list!17386 thiss!5795)))))))

(declare-fun b!4855509 () Bool)

(declare-fun tp!1366115 () Bool)

(declare-fun inv!71489 (Conc!14512) Bool)

(assert (=> b!4855509 (= e!3035746 (and (inv!71489 (c!826009 thiss!5795)) tp!1366115))))

(assert (= (and start!507170 res!2072779) b!4855508))

(assert (= start!507170 b!4855509))

(declare-fun m!5853266 () Bool)

(assert (=> start!507170 m!5853266))

(declare-fun m!5853268 () Bool)

(assert (=> start!507170 m!5853268))

(declare-fun m!5853270 () Bool)

(assert (=> b!4855508 m!5853270))

(declare-fun m!5853272 () Bool)

(assert (=> b!4855508 m!5853272))

(assert (=> b!4855508 m!5853272))

(declare-fun m!5853274 () Bool)

(assert (=> b!4855508 m!5853274))

(declare-fun m!5853276 () Bool)

(assert (=> b!4855509 m!5853276))

(check-sat (not b!4855509) (not start!507170) (not b!4855508))
(check-sat)
(get-model)

(declare-fun d!1558533 () Bool)

(declare-fun c!826012 () Bool)

(get-info :version)

(assert (=> d!1558533 (= c!826012 ((_ is Node!14512) (c!826009 thiss!5795)))))

(declare-fun e!3035751 () Bool)

(assert (=> d!1558533 (= (inv!71489 (c!826009 thiss!5795)) e!3035751)))

(declare-fun b!4855516 () Bool)

(declare-fun inv!71490 (Conc!14512) Bool)

(assert (=> b!4855516 (= e!3035751 (inv!71490 (c!826009 thiss!5795)))))

(declare-fun b!4855517 () Bool)

(declare-fun e!3035752 () Bool)

(assert (=> b!4855517 (= e!3035751 e!3035752)))

(declare-fun res!2072782 () Bool)

(assert (=> b!4855517 (= res!2072782 (not ((_ is Leaf!24183) (c!826009 thiss!5795))))))

(assert (=> b!4855517 (=> res!2072782 e!3035752)))

(declare-fun b!4855518 () Bool)

(declare-fun inv!71491 (Conc!14512) Bool)

(assert (=> b!4855518 (= e!3035752 (inv!71491 (c!826009 thiss!5795)))))

(assert (= (and d!1558533 c!826012) b!4855516))

(assert (= (and d!1558533 (not c!826012)) b!4855517))

(assert (= (and b!4855517 (not res!2072782)) b!4855518))

(declare-fun m!5853278 () Bool)

(assert (=> b!4855516 m!5853278))

(declare-fun m!5853280 () Bool)

(assert (=> b!4855518 m!5853280))

(assert (=> b!4855509 d!1558533))

(declare-fun d!1558535 () Bool)

(declare-fun lt!1991288 () Bool)

(declare-fun isEmpty!29797 (List!55856) Bool)

(assert (=> d!1558535 (= lt!1991288 (isEmpty!29797 (list!17386 thiss!5795)))))

(declare-fun isEmpty!29798 (Conc!14512) Bool)

(assert (=> d!1558535 (= lt!1991288 (isEmpty!29798 (c!826009 thiss!5795)))))

(assert (=> d!1558535 (= (isEmpty!29795 thiss!5795) lt!1991288)))

(declare-fun bs!1173704 () Bool)

(assert (= bs!1173704 d!1558535))

(assert (=> bs!1173704 m!5853272))

(assert (=> bs!1173704 m!5853272))

(declare-fun m!5853282 () Bool)

(assert (=> bs!1173704 m!5853282))

(declare-fun m!5853284 () Bool)

(assert (=> bs!1173704 m!5853284))

(assert (=> start!507170 d!1558535))

(declare-fun d!1558537 () Bool)

(declare-fun isBalanced!3918 (Conc!14512) Bool)

(assert (=> d!1558537 (= (inv!71488 thiss!5795) (isBalanced!3918 (c!826009 thiss!5795)))))

(declare-fun bs!1173705 () Bool)

(assert (= bs!1173705 d!1558537))

(declare-fun m!5853286 () Bool)

(assert (=> bs!1173705 m!5853286))

(assert (=> start!507170 d!1558537))

(declare-fun b!4855550 () Bool)

(declare-fun e!3035777 () T!98518)

(declare-fun last!382 (IArray!29085) T!98518)

(assert (=> b!4855550 (= e!3035777 (last!382 (xs!17818 (c!826009 thiss!5795))))))

(declare-fun b!4855551 () Bool)

(declare-fun res!2072799 () Bool)

(declare-fun lt!1991324 () List!55856)

(assert (=> b!4855551 (= res!2072799 (not (isEmpty!29797 lt!1991324)))))

(declare-fun e!3035778 () Bool)

(assert (=> b!4855551 (=> (not res!2072799) (not e!3035778))))

(declare-fun e!3035776 () Bool)

(assert (=> b!4855551 (= e!3035776 e!3035778)))

(declare-fun d!1558539 () Bool)

(declare-fun lt!1991322 () T!98518)

(declare-fun list!17388 (Conc!14512) List!55856)

(assert (=> d!1558539 (= lt!1991322 (last!380 (list!17388 (c!826009 thiss!5795))))))

(assert (=> d!1558539 (= lt!1991322 e!3035777)))

(declare-fun c!826021 () Bool)

(assert (=> d!1558539 (= c!826021 ((_ is Leaf!24183) (c!826009 thiss!5795)))))

(assert (=> d!1558539 (isBalanced!3918 (c!826009 thiss!5795))))

(assert (=> d!1558539 (= (last!379 (c!826009 thiss!5795)) lt!1991322)))

(declare-fun b!4855552 () Bool)

(declare-fun e!3035779 () Bool)

(declare-fun lt!1991321 () List!55856)

(declare-fun ++!12117 (List!55856 List!55856) List!55856)

(assert (=> b!4855552 (= e!3035779 (= (last!380 (++!12117 lt!1991321 lt!1991324)) (last!380 lt!1991321)))))

(declare-fun b!4855553 () Bool)

(assert (=> b!4855553 (= e!3035778 (= (last!380 (++!12117 lt!1991321 lt!1991324)) (last!380 lt!1991324)))))

(declare-fun b!4855554 () Bool)

(assert (=> b!4855554 (= e!3035777 (last!379 (right!40818 (c!826009 thiss!5795))))))

(assert (=> b!4855554 (= lt!1991321 (list!17388 (left!40488 (c!826009 thiss!5795))))))

(assert (=> b!4855554 (= lt!1991324 (list!17388 (right!40818 (c!826009 thiss!5795))))))

(declare-datatypes ((Unit!145839 0))(
  ( (Unit!145840) )
))
(declare-fun lt!1991323 () Unit!145839)

(declare-fun lemmaLastOfConcatIsLastOfRhs!26 (List!55856 List!55856) Unit!145839)

(assert (=> b!4855554 (= lt!1991323 (lemmaLastOfConcatIsLastOfRhs!26 lt!1991321 lt!1991324))))

(declare-fun res!2072800 () Bool)

(assert (=> b!4855554 (= res!2072800 (isEmpty!29797 lt!1991324))))

(assert (=> b!4855554 (=> (not res!2072800) (not e!3035779))))

(declare-fun res!2072798 () Bool)

(assert (=> b!4855554 (= res!2072798 e!3035779)))

(assert (=> b!4855554 (=> res!2072798 e!3035776)))

(assert (=> b!4855554 e!3035776))

(declare-fun lt!1991320 () Unit!145839)

(assert (=> b!4855554 (= lt!1991320 lt!1991323)))

(assert (= (and d!1558539 c!826021) b!4855550))

(assert (= (and d!1558539 (not c!826021)) b!4855554))

(assert (= (and b!4855554 res!2072800) b!4855552))

(assert (= (and b!4855554 (not res!2072798)) b!4855551))

(assert (= (and b!4855551 res!2072799) b!4855553))

(declare-fun m!5853322 () Bool)

(assert (=> b!4855552 m!5853322))

(assert (=> b!4855552 m!5853322))

(declare-fun m!5853324 () Bool)

(assert (=> b!4855552 m!5853324))

(declare-fun m!5853326 () Bool)

(assert (=> b!4855552 m!5853326))

(declare-fun m!5853328 () Bool)

(assert (=> b!4855554 m!5853328))

(declare-fun m!5853330 () Bool)

(assert (=> b!4855554 m!5853330))

(declare-fun m!5853332 () Bool)

(assert (=> b!4855554 m!5853332))

(declare-fun m!5853334 () Bool)

(assert (=> b!4855554 m!5853334))

(declare-fun m!5853336 () Bool)

(assert (=> b!4855554 m!5853336))

(assert (=> b!4855551 m!5853334))

(assert (=> b!4855553 m!5853322))

(assert (=> b!4855553 m!5853322))

(assert (=> b!4855553 m!5853324))

(declare-fun m!5853338 () Bool)

(assert (=> b!4855553 m!5853338))

(declare-fun m!5853340 () Bool)

(assert (=> d!1558539 m!5853340))

(assert (=> d!1558539 m!5853340))

(declare-fun m!5853342 () Bool)

(assert (=> d!1558539 m!5853342))

(assert (=> d!1558539 m!5853286))

(declare-fun m!5853344 () Bool)

(assert (=> b!4855550 m!5853344))

(assert (=> b!4855508 d!1558539))

(declare-fun d!1558549 () Bool)

(declare-fun lt!1991327 () T!98518)

(declare-fun contains!19355 (List!55856 T!98518) Bool)

(assert (=> d!1558549 (contains!19355 (list!17386 thiss!5795) lt!1991327)))

(declare-fun e!3035786 () T!98518)

(assert (=> d!1558549 (= lt!1991327 e!3035786)))

(declare-fun c!826026 () Bool)

(assert (=> d!1558549 (= c!826026 (and ((_ is Cons!55732) (list!17386 thiss!5795)) ((_ is Nil!55732) (t!363384 (list!17386 thiss!5795)))))))

(assert (=> d!1558549 (not (isEmpty!29797 (list!17386 thiss!5795)))))

(assert (=> d!1558549 (= (last!380 (list!17386 thiss!5795)) lt!1991327)))

(declare-fun b!4855565 () Bool)

(assert (=> b!4855565 (= e!3035786 (h!62180 (list!17386 thiss!5795)))))

(declare-fun b!4855566 () Bool)

(assert (=> b!4855566 (= e!3035786 (last!380 (t!363384 (list!17386 thiss!5795))))))

(assert (= (and d!1558549 c!826026) b!4855565))

(assert (= (and d!1558549 (not c!826026)) b!4855566))

(assert (=> d!1558549 m!5853272))

(declare-fun m!5853346 () Bool)

(assert (=> d!1558549 m!5853346))

(assert (=> d!1558549 m!5853272))

(assert (=> d!1558549 m!5853282))

(declare-fun m!5853348 () Bool)

(assert (=> b!4855566 m!5853348))

(assert (=> b!4855508 d!1558549))

(declare-fun d!1558553 () Bool)

(assert (=> d!1558553 (= (list!17386 thiss!5795) (list!17388 (c!826009 thiss!5795)))))

(declare-fun bs!1173709 () Bool)

(assert (= bs!1173709 d!1558553))

(assert (=> bs!1173709 m!5853340))

(assert (=> b!4855508 d!1558553))

(declare-fun e!3035799 () Bool)

(declare-fun b!4855589 () Bool)

(declare-fun tp!1366132 () Bool)

(declare-fun tp!1366131 () Bool)

(assert (=> b!4855589 (= e!3035799 (and (inv!71489 (left!40488 (c!826009 thiss!5795))) tp!1366132 (inv!71489 (right!40818 (c!826009 thiss!5795))) tp!1366131))))

(declare-fun b!4855591 () Bool)

(declare-fun e!3035800 () Bool)

(declare-fun tp!1366133 () Bool)

(assert (=> b!4855591 (= e!3035800 tp!1366133)))

(declare-fun b!4855590 () Bool)

(declare-fun inv!71493 (IArray!29085) Bool)

(assert (=> b!4855590 (= e!3035799 (and (inv!71493 (xs!17818 (c!826009 thiss!5795))) e!3035800))))

(assert (=> b!4855509 (= tp!1366115 (and (inv!71489 (c!826009 thiss!5795)) e!3035799))))

(assert (= (and b!4855509 ((_ is Node!14512) (c!826009 thiss!5795))) b!4855589))

(assert (= b!4855590 b!4855591))

(assert (= (and b!4855509 ((_ is Leaf!24183) (c!826009 thiss!5795))) b!4855590))

(declare-fun m!5853360 () Bool)

(assert (=> b!4855589 m!5853360))

(declare-fun m!5853362 () Bool)

(assert (=> b!4855589 m!5853362))

(declare-fun m!5853364 () Bool)

(assert (=> b!4855590 m!5853364))

(assert (=> b!4855509 m!5853276))

(check-sat (not b!4855591) (not d!1558539) (not b!4855550) (not b!4855566) (not d!1558553) (not b!4855554) (not b!4855589) (not b!4855590) (not d!1558537) (not b!4855518) (not b!4855516) (not d!1558549) (not b!4855553) (not b!4855552) (not b!4855551) (not d!1558535) (not b!4855509))
(check-sat)
