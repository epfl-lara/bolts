; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507142 () Bool)

(assert start!507142)

(declare-fun res!2072749 () Bool)

(declare-fun e!3035685 () Bool)

(assert (=> start!507142 (=> (not res!2072749) (not e!3035685))))

(declare-datatypes ((T!98504 0))(
  ( (T!98505 (val!22386 Int)) )
))
(declare-datatypes ((List!55854 0))(
  ( (Nil!55730) (Cons!55730 (h!62178 T!98504) (t!363380 List!55854)) )
))
(declare-datatypes ((IArray!29081 0))(
  ( (IArray!29082 (innerList!14598 List!55854)) )
))
(declare-datatypes ((Conc!14510 0))(
  ( (Node!14510 (left!40485 Conc!14510) (right!40815 Conc!14510) (csize!29250 Int) (cheight!14721 Int)) (Leaf!24180 (xs!17816 IArray!29081) (csize!29251 Int)) (Empty!14510) )
))
(declare-datatypes ((BalanceConc!28510 0))(
  ( (BalanceConc!28511 (c!825995 Conc!14510)) )
))
(declare-fun thiss!5795 () BalanceConc!28510)

(declare-fun isEmpty!29790 (BalanceConc!28510) Bool)

(assert (=> start!507142 (= res!2072749 (not (isEmpty!29790 thiss!5795)))))

(assert (=> start!507142 e!3035685))

(declare-fun e!3035686 () Bool)

(declare-fun inv!71475 (BalanceConc!28510) Bool)

(assert (=> start!507142 (and (inv!71475 thiss!5795) e!3035686)))

(declare-fun b!4855426 () Bool)

(declare-fun isEmpty!29791 (List!55854) Bool)

(declare-fun list!17382 (BalanceConc!28510) List!55854)

(assert (=> b!4855426 (= e!3035685 (isEmpty!29791 (list!17382 thiss!5795)))))

(declare-fun lt!1991249 () T!98504)

(declare-fun last!372 (Conc!14510) T!98504)

(assert (=> b!4855426 (= lt!1991249 (last!372 (c!825995 thiss!5795)))))

(declare-fun b!4855427 () Bool)

(declare-fun tp!1366091 () Bool)

(declare-fun inv!71476 (Conc!14510) Bool)

(assert (=> b!4855427 (= e!3035686 (and (inv!71476 (c!825995 thiss!5795)) tp!1366091))))

(assert (= (and start!507142 res!2072749) b!4855426))

(assert (= start!507142 b!4855427))

(declare-fun m!5853166 () Bool)

(assert (=> start!507142 m!5853166))

(declare-fun m!5853168 () Bool)

(assert (=> start!507142 m!5853168))

(declare-fun m!5853170 () Bool)

(assert (=> b!4855426 m!5853170))

(assert (=> b!4855426 m!5853170))

(declare-fun m!5853172 () Bool)

(assert (=> b!4855426 m!5853172))

(declare-fun m!5853174 () Bool)

(assert (=> b!4855426 m!5853174))

(declare-fun m!5853176 () Bool)

(assert (=> b!4855427 m!5853176))

(check-sat (not b!4855426) (not start!507142) (not b!4855427))
(check-sat)
(get-model)

(declare-fun d!1558508 () Bool)

(get-info :version)

(assert (=> d!1558508 (= (isEmpty!29791 (list!17382 thiss!5795)) ((_ is Nil!55730) (list!17382 thiss!5795)))))

(assert (=> b!4855426 d!1558508))

(declare-fun d!1558510 () Bool)

(declare-fun list!17384 (Conc!14510) List!55854)

(assert (=> d!1558510 (= (list!17382 thiss!5795) (list!17384 (c!825995 thiss!5795)))))

(declare-fun bs!1173696 () Bool)

(assert (= bs!1173696 d!1558510))

(declare-fun m!5853182 () Bool)

(assert (=> bs!1173696 m!5853182))

(assert (=> b!4855426 d!1558510))

(declare-fun b!4855457 () Bool)

(declare-fun res!2072766 () Bool)

(declare-fun lt!1991271 () List!55854)

(assert (=> b!4855457 (= res!2072766 (not (isEmpty!29791 lt!1991271)))))

(declare-fun e!3035709 () Bool)

(assert (=> b!4855457 (=> (not res!2072766) (not e!3035709))))

(declare-fun e!3035712 () Bool)

(assert (=> b!4855457 (= e!3035712 e!3035709)))

(declare-fun b!4855458 () Bool)

(declare-fun lt!1991270 () List!55854)

(declare-fun last!375 (List!55854) T!98504)

(declare-fun ++!12115 (List!55854 List!55854) List!55854)

(assert (=> b!4855458 (= e!3035709 (= (last!375 (++!12115 lt!1991270 lt!1991271)) (last!375 lt!1991271)))))

(declare-fun d!1558514 () Bool)

(declare-fun lt!1991272 () T!98504)

(assert (=> d!1558514 (= lt!1991272 (last!375 (list!17384 (c!825995 thiss!5795))))))

(declare-fun e!3035710 () T!98504)

(assert (=> d!1558514 (= lt!1991272 e!3035710)))

(declare-fun c!826003 () Bool)

(assert (=> d!1558514 (= c!826003 ((_ is Leaf!24180) (c!825995 thiss!5795)))))

(declare-fun isBalanced!3916 (Conc!14510) Bool)

(assert (=> d!1558514 (isBalanced!3916 (c!825995 thiss!5795))))

(assert (=> d!1558514 (= (last!372 (c!825995 thiss!5795)) lt!1991272)))

(declare-fun b!4855459 () Bool)

(declare-fun last!376 (IArray!29081) T!98504)

(assert (=> b!4855459 (= e!3035710 (last!376 (xs!17816 (c!825995 thiss!5795))))))

(declare-fun b!4855460 () Bool)

(declare-fun e!3035711 () Bool)

(assert (=> b!4855460 (= e!3035711 (= (last!375 (++!12115 lt!1991270 lt!1991271)) (last!375 lt!1991270)))))

(declare-fun b!4855461 () Bool)

(assert (=> b!4855461 (= e!3035710 (last!372 (right!40815 (c!825995 thiss!5795))))))

(assert (=> b!4855461 (= lt!1991270 (list!17384 (left!40485 (c!825995 thiss!5795))))))

(assert (=> b!4855461 (= lt!1991271 (list!17384 (right!40815 (c!825995 thiss!5795))))))

(declare-datatypes ((Unit!145835 0))(
  ( (Unit!145836) )
))
(declare-fun lt!1991273 () Unit!145835)

(declare-fun lemmaLastOfConcatIsLastOfRhs!24 (List!55854 List!55854) Unit!145835)

(assert (=> b!4855461 (= lt!1991273 (lemmaLastOfConcatIsLastOfRhs!24 lt!1991270 lt!1991271))))

(declare-fun res!2072765 () Bool)

(assert (=> b!4855461 (= res!2072765 (isEmpty!29791 lt!1991271))))

(assert (=> b!4855461 (=> (not res!2072765) (not e!3035711))))

(declare-fun res!2072767 () Bool)

(assert (=> b!4855461 (= res!2072767 e!3035711)))

(assert (=> b!4855461 (=> res!2072767 e!3035712)))

(assert (=> b!4855461 e!3035712))

(declare-fun lt!1991274 () Unit!145835)

(assert (=> b!4855461 (= lt!1991274 lt!1991273)))

(assert (= (and d!1558514 c!826003) b!4855459))

(assert (= (and d!1558514 (not c!826003)) b!4855461))

(assert (= (and b!4855461 res!2072765) b!4855460))

(assert (= (and b!4855461 (not res!2072767)) b!4855457))

(assert (= (and b!4855457 res!2072766) b!4855458))

(assert (=> d!1558514 m!5853182))

(assert (=> d!1558514 m!5853182))

(declare-fun m!5853186 () Bool)

(assert (=> d!1558514 m!5853186))

(declare-fun m!5853188 () Bool)

(assert (=> d!1558514 m!5853188))

(declare-fun m!5853190 () Bool)

(assert (=> b!4855459 m!5853190))

(declare-fun m!5853192 () Bool)

(assert (=> b!4855458 m!5853192))

(assert (=> b!4855458 m!5853192))

(declare-fun m!5853194 () Bool)

(assert (=> b!4855458 m!5853194))

(declare-fun m!5853196 () Bool)

(assert (=> b!4855458 m!5853196))

(assert (=> b!4855460 m!5853192))

(assert (=> b!4855460 m!5853192))

(assert (=> b!4855460 m!5853194))

(declare-fun m!5853198 () Bool)

(assert (=> b!4855460 m!5853198))

(declare-fun m!5853200 () Bool)

(assert (=> b!4855461 m!5853200))

(declare-fun m!5853202 () Bool)

(assert (=> b!4855461 m!5853202))

(declare-fun m!5853204 () Bool)

(assert (=> b!4855461 m!5853204))

(declare-fun m!5853206 () Bool)

(assert (=> b!4855461 m!5853206))

(declare-fun m!5853208 () Bool)

(assert (=> b!4855461 m!5853208))

(assert (=> b!4855457 m!5853200))

(assert (=> b!4855426 d!1558514))

(declare-fun d!1558520 () Bool)

(declare-fun lt!1991282 () Bool)

(assert (=> d!1558520 (= lt!1991282 (isEmpty!29791 (list!17382 thiss!5795)))))

(declare-fun isEmpty!29793 (Conc!14510) Bool)

(assert (=> d!1558520 (= lt!1991282 (isEmpty!29793 (c!825995 thiss!5795)))))

(assert (=> d!1558520 (= (isEmpty!29790 thiss!5795) lt!1991282)))

(declare-fun bs!1173698 () Bool)

(assert (= bs!1173698 d!1558520))

(assert (=> bs!1173698 m!5853170))

(assert (=> bs!1173698 m!5853170))

(assert (=> bs!1173698 m!5853172))

(declare-fun m!5853234 () Bool)

(assert (=> bs!1173698 m!5853234))

(assert (=> start!507142 d!1558520))

(declare-fun d!1558524 () Bool)

(assert (=> d!1558524 (= (inv!71475 thiss!5795) (isBalanced!3916 (c!825995 thiss!5795)))))

(declare-fun bs!1173700 () Bool)

(assert (= bs!1173700 d!1558524))

(assert (=> bs!1173700 m!5853188))

(assert (=> start!507142 d!1558524))

(declare-fun d!1558528 () Bool)

(declare-fun c!826007 () Bool)

(assert (=> d!1558528 (= c!826007 ((_ is Node!14510) (c!825995 thiss!5795)))))

(declare-fun e!3035727 () Bool)

(assert (=> d!1558528 (= (inv!71476 (c!825995 thiss!5795)) e!3035727)))

(declare-fun b!4855484 () Bool)

(declare-fun inv!71480 (Conc!14510) Bool)

(assert (=> b!4855484 (= e!3035727 (inv!71480 (c!825995 thiss!5795)))))

(declare-fun b!4855485 () Bool)

(declare-fun e!3035728 () Bool)

(assert (=> b!4855485 (= e!3035727 e!3035728)))

(declare-fun res!2072773 () Bool)

(assert (=> b!4855485 (= res!2072773 (not ((_ is Leaf!24180) (c!825995 thiss!5795))))))

(assert (=> b!4855485 (=> res!2072773 e!3035728)))

(declare-fun b!4855486 () Bool)

(declare-fun inv!71481 (Conc!14510) Bool)

(assert (=> b!4855486 (= e!3035728 (inv!71481 (c!825995 thiss!5795)))))

(assert (= (and d!1558528 c!826007) b!4855484))

(assert (= (and d!1558528 (not c!826007)) b!4855485))

(assert (= (and b!4855485 (not res!2072773)) b!4855486))

(declare-fun m!5853244 () Bool)

(assert (=> b!4855484 m!5853244))

(declare-fun m!5853246 () Bool)

(assert (=> b!4855486 m!5853246))

(assert (=> b!4855427 d!1558528))

(declare-fun tp!1366109 () Bool)

(declare-fun e!3035733 () Bool)

(declare-fun tp!1366107 () Bool)

(declare-fun b!4855495 () Bool)

(assert (=> b!4855495 (= e!3035733 (and (inv!71476 (left!40485 (c!825995 thiss!5795))) tp!1366109 (inv!71476 (right!40815 (c!825995 thiss!5795))) tp!1366107))))

(declare-fun b!4855497 () Bool)

(declare-fun e!3035734 () Bool)

(declare-fun tp!1366108 () Bool)

(assert (=> b!4855497 (= e!3035734 tp!1366108)))

(declare-fun b!4855496 () Bool)

(declare-fun inv!71482 (IArray!29081) Bool)

(assert (=> b!4855496 (= e!3035733 (and (inv!71482 (xs!17816 (c!825995 thiss!5795))) e!3035734))))

(assert (=> b!4855427 (= tp!1366091 (and (inv!71476 (c!825995 thiss!5795)) e!3035733))))

(assert (= (and b!4855427 ((_ is Node!14510) (c!825995 thiss!5795))) b!4855495))

(assert (= b!4855496 b!4855497))

(assert (= (and b!4855427 ((_ is Leaf!24180) (c!825995 thiss!5795))) b!4855496))

(declare-fun m!5853248 () Bool)

(assert (=> b!4855495 m!5853248))

(declare-fun m!5853250 () Bool)

(assert (=> b!4855495 m!5853250))

(declare-fun m!5853252 () Bool)

(assert (=> b!4855496 m!5853252))

(assert (=> b!4855427 m!5853176))

(check-sat (not b!4855461) (not b!4855496) (not b!4855457) (not b!4855497) (not b!4855459) (not b!4855495) (not b!4855460) (not b!4855427) (not d!1558510) (not b!4855484) (not b!4855458) (not d!1558514) (not b!4855486) (not d!1558520) (not d!1558524))
(check-sat)
