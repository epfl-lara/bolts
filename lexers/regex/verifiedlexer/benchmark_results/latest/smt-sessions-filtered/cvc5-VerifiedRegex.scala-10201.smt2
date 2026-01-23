; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532448 () Bool)

(assert start!532448)

(declare-fun b!5033467 () Bool)

(declare-fun e!3144213 () Bool)

(declare-fun i!618 () Int)

(declare-fun lt!2082779 () Int)

(assert (=> b!5033467 (= e!3144213 (not (<= i!618 lt!2082779)))))

(declare-datatypes ((T!103926 0))(
  ( (T!103927 (val!23477 Int)) )
))
(declare-datatypes ((List!58387 0))(
  ( (Nil!58263) (Cons!58263 (h!64711 T!103926) (t!370830 List!58387)) )
))
(declare-fun lt!2082777 () List!58387)

(declare-fun lt!2082775 () List!58387)

(declare-fun slice!834 (List!58387 Int Int) List!58387)

(assert (=> b!5033467 (= lt!2082775 (slice!834 lt!2082777 i!618 lt!2082779))))

(declare-fun size!38820 (List!58387) Int)

(assert (=> b!5033467 (= lt!2082779 (size!38820 lt!2082777))))

(declare-datatypes ((Unit!149449 0))(
  ( (Unit!149450) )
))
(declare-fun lt!2082776 () Unit!149449)

(declare-fun dropLemma!59 (List!58387 Int) Unit!149449)

(assert (=> b!5033467 (= lt!2082776 (dropLemma!59 lt!2082777 i!618))))

(declare-fun b!5033468 () Bool)

(declare-fun e!3144212 () Bool)

(declare-fun e!3144209 () Bool)

(assert (=> b!5033468 (= e!3144212 e!3144209)))

(declare-fun res!2144935 () Bool)

(assert (=> b!5033468 (=> (not res!2144935) (not e!3144209))))

(declare-datatypes ((tuple2!63168 0))(
  ( (tuple2!63169 (_1!34887 List!58387) (_2!34887 List!58387)) )
))
(declare-fun lt!2082778 () tuple2!63168)

(declare-fun take!796 (List!58387 Int) List!58387)

(assert (=> b!5033468 (= res!2144935 (= (_1!34887 lt!2082778) (take!796 lt!2082777 i!618)))))

(declare-fun splitAtIndex!178 (List!58387 Int) tuple2!63168)

(assert (=> b!5033468 (= lt!2082778 (splitAtIndex!178 lt!2082777 i!618))))

(declare-datatypes ((IArray!31011 0))(
  ( (IArray!31012 (innerList!15563 List!58387)) )
))
(declare-datatypes ((Conc!15475 0))(
  ( (Node!15475 (left!42642 Conc!15475) (right!42972 Conc!15475) (csize!31180 Int) (cheight!15686 Int)) (Leaf!25677 (xs!18801 IArray!31011) (csize!31181 Int)) (Empty!15475) )
))
(declare-fun t!4198 () Conc!15475)

(declare-fun list!18847 (IArray!31011) List!58387)

(assert (=> b!5033468 (= lt!2082777 (list!18847 (xs!18801 t!4198)))))

(declare-fun b!5033469 () Bool)

(declare-fun res!2144934 () Bool)

(assert (=> b!5033469 (=> (not res!2144934) (not e!3144212))))

(assert (=> b!5033469 (= res!2144934 (and (not (is-Empty!15475 t!4198)) (is-Leaf!25677 t!4198) (> i!618 0) (not (= i!618 (csize!31181 t!4198)))))))

(declare-fun b!5033470 () Bool)

(declare-fun e!3144211 () Bool)

(declare-fun tp!1409943 () Bool)

(assert (=> b!5033470 (= e!3144211 tp!1409943)))

(declare-fun b!5033471 () Bool)

(declare-fun e!3144210 () Bool)

(declare-fun inv!76960 (IArray!31011) Bool)

(assert (=> b!5033471 (= e!3144210 (and (inv!76960 (xs!18801 t!4198)) e!3144211))))

(declare-fun res!2144932 () Bool)

(assert (=> start!532448 (=> (not res!2144932) (not e!3144212))))

(declare-fun isBalanced!4337 (Conc!15475) Bool)

(assert (=> start!532448 (= res!2144932 (isBalanced!4337 t!4198))))

(assert (=> start!532448 e!3144212))

(declare-fun inv!76961 (Conc!15475) Bool)

(assert (=> start!532448 (and (inv!76961 t!4198) e!3144210)))

(assert (=> start!532448 true))

(declare-fun b!5033472 () Bool)

(assert (=> b!5033472 (= e!3144209 e!3144213)))

(declare-fun res!2144930 () Bool)

(assert (=> b!5033472 (=> (not res!2144930) (not e!3144213))))

(assert (=> b!5033472 (= res!2144930 (= (_2!34887 lt!2082778) lt!2082775))))

(declare-fun drop!2603 (List!58387 Int) List!58387)

(assert (=> b!5033472 (= lt!2082775 (drop!2603 lt!2082777 i!618))))

(declare-fun b!5033473 () Bool)

(declare-fun res!2144933 () Bool)

(assert (=> b!5033473 (=> (not res!2144933) (not e!3144212))))

(declare-fun size!38821 (Conc!15475) Int)

(assert (=> b!5033473 (= res!2144933 (<= i!618 (size!38821 t!4198)))))

(declare-fun b!5033474 () Bool)

(declare-fun res!2144931 () Bool)

(assert (=> b!5033474 (=> (not res!2144931) (not e!3144212))))

(assert (=> b!5033474 (= res!2144931 (<= 0 i!618))))

(declare-fun tp!1409945 () Bool)

(declare-fun b!5033475 () Bool)

(declare-fun tp!1409944 () Bool)

(assert (=> b!5033475 (= e!3144210 (and (inv!76961 (left!42642 t!4198)) tp!1409944 (inv!76961 (right!42972 t!4198)) tp!1409945))))

(assert (= (and start!532448 res!2144932) b!5033474))

(assert (= (and b!5033474 res!2144931) b!5033473))

(assert (= (and b!5033473 res!2144933) b!5033469))

(assert (= (and b!5033469 res!2144934) b!5033468))

(assert (= (and b!5033468 res!2144935) b!5033472))

(assert (= (and b!5033472 res!2144930) b!5033467))

(assert (= (and start!532448 (is-Node!15475 t!4198)) b!5033475))

(assert (= b!5033471 b!5033470))

(assert (= (and start!532448 (is-Leaf!25677 t!4198)) b!5033471))

(declare-fun m!6068256 () Bool)

(assert (=> b!5033473 m!6068256))

(declare-fun m!6068258 () Bool)

(assert (=> start!532448 m!6068258))

(declare-fun m!6068260 () Bool)

(assert (=> start!532448 m!6068260))

(declare-fun m!6068262 () Bool)

(assert (=> b!5033472 m!6068262))

(declare-fun m!6068264 () Bool)

(assert (=> b!5033467 m!6068264))

(declare-fun m!6068266 () Bool)

(assert (=> b!5033467 m!6068266))

(declare-fun m!6068268 () Bool)

(assert (=> b!5033467 m!6068268))

(declare-fun m!6068270 () Bool)

(assert (=> b!5033475 m!6068270))

(declare-fun m!6068272 () Bool)

(assert (=> b!5033475 m!6068272))

(declare-fun m!6068274 () Bool)

(assert (=> b!5033468 m!6068274))

(declare-fun m!6068276 () Bool)

(assert (=> b!5033468 m!6068276))

(declare-fun m!6068278 () Bool)

(assert (=> b!5033468 m!6068278))

(declare-fun m!6068280 () Bool)

(assert (=> b!5033471 m!6068280))

(push 1)

(assert (not b!5033473))

(assert (not b!5033475))

(assert (not b!5033472))

(assert (not start!532448))

(assert (not b!5033468))

(assert (not b!5033470))

(assert (not b!5033471))

(assert (not b!5033467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1619568 () Bool)

(declare-fun c!861982 () Bool)

(assert (=> d!1619568 (= c!861982 (is-Node!15475 (left!42642 t!4198)))))

(declare-fun e!3144233 () Bool)

(assert (=> d!1619568 (= (inv!76961 (left!42642 t!4198)) e!3144233)))

(declare-fun b!5033509 () Bool)

(declare-fun inv!76964 (Conc!15475) Bool)

(assert (=> b!5033509 (= e!3144233 (inv!76964 (left!42642 t!4198)))))

(declare-fun b!5033510 () Bool)

(declare-fun e!3144234 () Bool)

(assert (=> b!5033510 (= e!3144233 e!3144234)))

(declare-fun res!2144956 () Bool)

(assert (=> b!5033510 (= res!2144956 (not (is-Leaf!25677 (left!42642 t!4198))))))

(assert (=> b!5033510 (=> res!2144956 e!3144234)))

(declare-fun b!5033511 () Bool)

(declare-fun inv!76965 (Conc!15475) Bool)

(assert (=> b!5033511 (= e!3144234 (inv!76965 (left!42642 t!4198)))))

(assert (= (and d!1619568 c!861982) b!5033509))

(assert (= (and d!1619568 (not c!861982)) b!5033510))

(assert (= (and b!5033510 (not res!2144956)) b!5033511))

(declare-fun m!6068308 () Bool)

(assert (=> b!5033509 m!6068308))

(declare-fun m!6068310 () Bool)

(assert (=> b!5033511 m!6068310))

(assert (=> b!5033475 d!1619568))

(declare-fun d!1619572 () Bool)

(declare-fun c!861983 () Bool)

(assert (=> d!1619572 (= c!861983 (is-Node!15475 (right!42972 t!4198)))))

(declare-fun e!3144235 () Bool)

(assert (=> d!1619572 (= (inv!76961 (right!42972 t!4198)) e!3144235)))

(declare-fun b!5033512 () Bool)

(assert (=> b!5033512 (= e!3144235 (inv!76964 (right!42972 t!4198)))))

(declare-fun b!5033513 () Bool)

(declare-fun e!3144236 () Bool)

(assert (=> b!5033513 (= e!3144235 e!3144236)))

(declare-fun res!2144957 () Bool)

(assert (=> b!5033513 (= res!2144957 (not (is-Leaf!25677 (right!42972 t!4198))))))

(assert (=> b!5033513 (=> res!2144957 e!3144236)))

(declare-fun b!5033514 () Bool)

(assert (=> b!5033514 (= e!3144236 (inv!76965 (right!42972 t!4198)))))

(assert (= (and d!1619572 c!861983) b!5033512))

(assert (= (and d!1619572 (not c!861983)) b!5033513))

(assert (= (and b!5033513 (not res!2144957)) b!5033514))

(declare-fun m!6068312 () Bool)

(assert (=> b!5033512 m!6068312))

(declare-fun m!6068314 () Bool)

(assert (=> b!5033514 m!6068314))

(assert (=> b!5033475 d!1619572))

(declare-fun d!1619574 () Bool)

(assert (=> d!1619574 (= (inv!76960 (xs!18801 t!4198)) (<= (size!38820 (innerList!15563 (xs!18801 t!4198))) 2147483647))))

(declare-fun bs!1188689 () Bool)

(assert (= bs!1188689 d!1619574))

(declare-fun m!6068316 () Bool)

(assert (=> bs!1188689 m!6068316))

(assert (=> b!5033471 d!1619574))

(declare-fun b!5033533 () Bool)

(declare-fun e!3144245 () Bool)

(declare-fun isEmpty!31495 (Conc!15475) Bool)

(assert (=> b!5033533 (= e!3144245 (not (isEmpty!31495 (right!42972 t!4198))))))

(declare-fun b!5033534 () Bool)

(declare-fun res!2144976 () Bool)

(assert (=> b!5033534 (=> (not res!2144976) (not e!3144245))))

(assert (=> b!5033534 (= res!2144976 (not (isEmpty!31495 (left!42642 t!4198))))))

(declare-fun d!1619576 () Bool)

(declare-fun res!2144974 () Bool)

(declare-fun e!3144246 () Bool)

(assert (=> d!1619576 (=> res!2144974 e!3144246)))

(assert (=> d!1619576 (= res!2144974 (not (is-Node!15475 t!4198)))))

(assert (=> d!1619576 (= (isBalanced!4337 t!4198) e!3144246)))

(declare-fun b!5033535 () Bool)

(declare-fun res!2144977 () Bool)

(assert (=> b!5033535 (=> (not res!2144977) (not e!3144245))))

(assert (=> b!5033535 (= res!2144977 (isBalanced!4337 (left!42642 t!4198)))))

(declare-fun b!5033536 () Bool)

(declare-fun res!2144975 () Bool)

(assert (=> b!5033536 (=> (not res!2144975) (not e!3144245))))

(assert (=> b!5033536 (= res!2144975 (isBalanced!4337 (right!42972 t!4198)))))

(declare-fun b!5033537 () Bool)

(assert (=> b!5033537 (= e!3144246 e!3144245)))

(declare-fun res!2144973 () Bool)

(assert (=> b!5033537 (=> (not res!2144973) (not e!3144245))))

(declare-fun height!2059 (Conc!15475) Int)

(assert (=> b!5033537 (= res!2144973 (<= (- 1) (- (height!2059 (left!42642 t!4198)) (height!2059 (right!42972 t!4198)))))))

(declare-fun b!5033538 () Bool)

(declare-fun res!2144972 () Bool)

(assert (=> b!5033538 (=> (not res!2144972) (not e!3144245))))

(assert (=> b!5033538 (= res!2144972 (<= (- (height!2059 (left!42642 t!4198)) (height!2059 (right!42972 t!4198))) 1))))

(assert (= (and d!1619576 (not res!2144974)) b!5033537))

(assert (= (and b!5033537 res!2144973) b!5033538))

(assert (= (and b!5033538 res!2144972) b!5033535))

(assert (= (and b!5033535 res!2144977) b!5033536))

(assert (= (and b!5033536 res!2144975) b!5033534))

(assert (= (and b!5033534 res!2144976) b!5033533))

(declare-fun m!6068318 () Bool)

(assert (=> b!5033537 m!6068318))

(declare-fun m!6068320 () Bool)

(assert (=> b!5033537 m!6068320))

(declare-fun m!6068322 () Bool)

(assert (=> b!5033536 m!6068322))

(declare-fun m!6068324 () Bool)

(assert (=> b!5033535 m!6068324))

(declare-fun m!6068326 () Bool)

(assert (=> b!5033533 m!6068326))

(assert (=> b!5033538 m!6068318))

(assert (=> b!5033538 m!6068320))

(declare-fun m!6068328 () Bool)

(assert (=> b!5033534 m!6068328))

(assert (=> start!532448 d!1619576))

(declare-fun d!1619578 () Bool)

(declare-fun c!861986 () Bool)

(assert (=> d!1619578 (= c!861986 (is-Node!15475 t!4198))))

(declare-fun e!3144247 () Bool)

(assert (=> d!1619578 (= (inv!76961 t!4198) e!3144247)))

(declare-fun b!5033539 () Bool)

(assert (=> b!5033539 (= e!3144247 (inv!76964 t!4198))))

(declare-fun b!5033540 () Bool)

(declare-fun e!3144248 () Bool)

(assert (=> b!5033540 (= e!3144247 e!3144248)))

(declare-fun res!2144978 () Bool)

(assert (=> b!5033540 (= res!2144978 (not (is-Leaf!25677 t!4198)))))

(assert (=> b!5033540 (=> res!2144978 e!3144248)))

(declare-fun b!5033541 () Bool)

(assert (=> b!5033541 (= e!3144248 (inv!76965 t!4198))))

(assert (= (and d!1619578 c!861986) b!5033539))

(assert (= (and d!1619578 (not c!861986)) b!5033540))

(assert (= (and b!5033540 (not res!2144978)) b!5033541))

(declare-fun m!6068330 () Bool)

(assert (=> b!5033539 m!6068330))

(declare-fun m!6068332 () Bool)

(assert (=> b!5033541 m!6068332))

(assert (=> start!532448 d!1619578))

(declare-fun b!5033566 () Bool)

(declare-fun e!3144264 () Bool)

(declare-fun lt!2082797 () List!58387)

(declare-fun e!3144263 () Int)

(assert (=> b!5033566 (= e!3144264 (= (size!38820 lt!2082797) e!3144263))))

(declare-fun c!862000 () Bool)

(assert (=> b!5033566 (= c!862000 (<= i!618 0))))

(declare-fun b!5033567 () Bool)

(declare-fun e!3144267 () Int)

(assert (=> b!5033567 (= e!3144263 e!3144267)))

(declare-fun c!861999 () Bool)

(declare-fun call!351145 () Int)

(assert (=> b!5033567 (= c!861999 (>= i!618 call!351145))))

(declare-fun b!5033568 () Bool)

(declare-fun e!3144266 () List!58387)

(declare-fun e!3144265 () List!58387)

(assert (=> b!5033568 (= e!3144266 e!3144265)))

(declare-fun c!861997 () Bool)

(assert (=> b!5033568 (= c!861997 (<= i!618 0))))

(declare-fun b!5033569 () Bool)

(assert (=> b!5033569 (= e!3144266 Nil!58263)))

(declare-fun b!5033570 () Bool)

(assert (=> b!5033570 (= e!3144263 call!351145)))

(declare-fun bm!351140 () Bool)

(assert (=> bm!351140 (= call!351145 (size!38820 lt!2082777))))

(declare-fun b!5033571 () Bool)

(assert (=> b!5033571 (= e!3144267 (- call!351145 i!618))))

(declare-fun b!5033572 () Bool)

(assert (=> b!5033572 (= e!3144267 0)))

(declare-fun b!5033573 () Bool)

(assert (=> b!5033573 (= e!3144265 lt!2082777)))

(declare-fun b!5033574 () Bool)

(assert (=> b!5033574 (= e!3144265 (drop!2603 (t!370830 lt!2082777) (- i!618 1)))))

(declare-fun d!1619580 () Bool)

(assert (=> d!1619580 e!3144264))

(declare-fun res!2144983 () Bool)

(assert (=> d!1619580 (=> (not res!2144983) (not e!3144264))))

(declare-fun content!10331 (List!58387) (Set T!103926))

(assert (=> d!1619580 (= res!2144983 (set.subset (content!10331 lt!2082797) (content!10331 lt!2082777)))))

(assert (=> d!1619580 (= lt!2082797 e!3144266)))

(declare-fun c!861998 () Bool)

(assert (=> d!1619580 (= c!861998 (is-Nil!58263 lt!2082777))))

(assert (=> d!1619580 (= (drop!2603 lt!2082777 i!618) lt!2082797)))

(assert (= (and d!1619580 c!861998) b!5033569))

(assert (= (and d!1619580 (not c!861998)) b!5033568))

(assert (= (and b!5033568 c!861997) b!5033573))

(assert (= (and b!5033568 (not c!861997)) b!5033574))

(assert (= (and d!1619580 res!2144983) b!5033566))

(assert (= (and b!5033566 c!862000) b!5033570))

(assert (= (and b!5033566 (not c!862000)) b!5033567))

(assert (= (and b!5033567 c!861999) b!5033572))

(assert (= (and b!5033567 (not c!861999)) b!5033571))

(assert (= (or b!5033570 b!5033567 b!5033571) bm!351140))

(declare-fun m!6068344 () Bool)

(assert (=> b!5033566 m!6068344))

(assert (=> bm!351140 m!6068266))

(declare-fun m!6068346 () Bool)

(assert (=> b!5033574 m!6068346))

(declare-fun m!6068348 () Bool)

(assert (=> d!1619580 m!6068348))

(declare-fun m!6068350 () Bool)

(assert (=> d!1619580 m!6068350))

(assert (=> b!5033472 d!1619580))

(declare-fun d!1619588 () Bool)

(assert (=> d!1619588 (= (slice!834 lt!2082777 i!618 lt!2082779) (take!796 (drop!2603 lt!2082777 i!618) (- lt!2082779 i!618)))))

(declare-fun bs!1188691 () Bool)

(assert (= bs!1188691 d!1619588))

(assert (=> bs!1188691 m!6068262))

(assert (=> bs!1188691 m!6068262))

(declare-fun m!6068352 () Bool)

(assert (=> bs!1188691 m!6068352))

(assert (=> b!5033467 d!1619588))

(declare-fun d!1619590 () Bool)

(declare-fun lt!2082803 () Int)

(assert (=> d!1619590 (>= lt!2082803 0)))

(declare-fun e!3144273 () Int)

(assert (=> d!1619590 (= lt!2082803 e!3144273)))

(declare-fun c!862006 () Bool)

(assert (=> d!1619590 (= c!862006 (is-Nil!58263 lt!2082777))))

(assert (=> d!1619590 (= (size!38820 lt!2082777) lt!2082803)))

(declare-fun b!5033585 () Bool)

(assert (=> b!5033585 (= e!3144273 0)))

(declare-fun b!5033586 () Bool)

(assert (=> b!5033586 (= e!3144273 (+ 1 (size!38820 (t!370830 lt!2082777))))))

(assert (= (and d!1619590 c!862006) b!5033585))

(assert (= (and d!1619590 (not c!862006)) b!5033586))

(declare-fun m!6068356 () Bool)

(assert (=> b!5033586 m!6068356))

(assert (=> b!5033467 d!1619590))

(declare-fun d!1619594 () Bool)

(assert (=> d!1619594 (= (drop!2603 lt!2082777 i!618) (slice!834 lt!2082777 i!618 (size!38820 lt!2082777)))))

(declare-fun lt!2082806 () Unit!149449)

(declare-fun choose!37232 (List!58387 Int) Unit!149449)

(assert (=> d!1619594 (= lt!2082806 (choose!37232 lt!2082777 i!618))))

(declare-fun e!3144276 () Bool)

(assert (=> d!1619594 e!3144276))

(declare-fun res!2144986 () Bool)

(assert (=> d!1619594 (=> (not res!2144986) (not e!3144276))))

(assert (=> d!1619594 (= res!2144986 (<= 0 i!618))))

(assert (=> d!1619594 (= (dropLemma!59 lt!2082777 i!618) lt!2082806)))

(declare-fun b!5033589 () Bool)

(assert (=> b!5033589 (= e!3144276 (<= i!618 (size!38820 lt!2082777)))))

(assert (= (and d!1619594 res!2144986) b!5033589))

(assert (=> d!1619594 m!6068262))

(assert (=> d!1619594 m!6068266))

(assert (=> d!1619594 m!6068266))

(declare-fun m!6068358 () Bool)

(assert (=> d!1619594 m!6068358))

(declare-fun m!6068360 () Bool)

(assert (=> d!1619594 m!6068360))

(assert (=> b!5033589 m!6068266))

(assert (=> b!5033467 d!1619594))

(declare-fun b!5033607 () Bool)

(declare-fun e!3144288 () Int)

(assert (=> b!5033607 (= e!3144288 0)))

(declare-fun b!5033608 () Bool)

(declare-fun e!3144289 () Int)

(assert (=> b!5033608 (= e!3144289 (size!38820 lt!2082777))))

(declare-fun b!5033610 () Bool)

(declare-fun e!3144291 () Bool)

(declare-fun lt!2082812 () List!58387)

(assert (=> b!5033610 (= e!3144291 (= (size!38820 lt!2082812) e!3144288))))

(declare-fun c!862015 () Bool)

(assert (=> b!5033610 (= c!862015 (<= i!618 0))))

(declare-fun b!5033611 () Bool)

(assert (=> b!5033611 (= e!3144288 e!3144289)))

(declare-fun c!862014 () Bool)

(assert (=> b!5033611 (= c!862014 (>= i!618 (size!38820 lt!2082777)))))

(declare-fun b!5033612 () Bool)

(declare-fun e!3144290 () List!58387)

(assert (=> b!5033612 (= e!3144290 Nil!58263)))

(declare-fun b!5033613 () Bool)

(assert (=> b!5033613 (= e!3144289 i!618)))

(declare-fun b!5033609 () Bool)

(assert (=> b!5033609 (= e!3144290 (Cons!58263 (h!64711 lt!2082777) (take!796 (t!370830 lt!2082777) (- i!618 1))))))

(declare-fun d!1619596 () Bool)

(assert (=> d!1619596 e!3144291))

(declare-fun res!2144992 () Bool)

(assert (=> d!1619596 (=> (not res!2144992) (not e!3144291))))

(assert (=> d!1619596 (= res!2144992 (set.subset (content!10331 lt!2082812) (content!10331 lt!2082777)))))

(assert (=> d!1619596 (= lt!2082812 e!3144290)))

(declare-fun c!862013 () Bool)

(assert (=> d!1619596 (= c!862013 (or (is-Nil!58263 lt!2082777) (<= i!618 0)))))

(assert (=> d!1619596 (= (take!796 lt!2082777 i!618) lt!2082812)))

(assert (= (and d!1619596 c!862013) b!5033612))

(assert (= (and d!1619596 (not c!862013)) b!5033609))

(assert (= (and d!1619596 res!2144992) b!5033610))

(assert (= (and b!5033610 c!862015) b!5033607))

(assert (= (and b!5033610 (not c!862015)) b!5033611))

(assert (= (and b!5033611 c!862014) b!5033608))

(assert (= (and b!5033611 (not c!862014)) b!5033613))

(declare-fun m!6068366 () Bool)

(assert (=> d!1619596 m!6068366))

(assert (=> d!1619596 m!6068350))

(assert (=> b!5033608 m!6068266))

(declare-fun m!6068368 () Bool)

(assert (=> b!5033609 m!6068368))

(assert (=> b!5033611 m!6068266))

(declare-fun m!6068370 () Bool)

(assert (=> b!5033610 m!6068370))

(assert (=> b!5033468 d!1619596))

(declare-fun b!5033640 () Bool)

(declare-fun res!2145000 () Bool)

(declare-fun e!3144306 () Bool)

(assert (=> b!5033640 (=> (not res!2145000) (not e!3144306))))

(declare-fun lt!2082819 () tuple2!63168)

(assert (=> b!5033640 (= res!2145000 (= (_1!34887 lt!2082819) (take!796 lt!2082777 i!618)))))

(declare-fun b!5033641 () Bool)

(declare-fun e!3144307 () tuple2!63168)

(assert (=> b!5033641 (= e!3144307 (tuple2!63169 Nil!58263 lt!2082777))))

(declare-fun b!5033642 () Bool)

(declare-fun e!3144308 () tuple2!63168)

(assert (=> b!5033642 (= e!3144308 (tuple2!63169 Nil!58263 Nil!58263))))

(declare-fun b!5033643 () Bool)

(declare-fun lt!2082820 () tuple2!63168)

(assert (=> b!5033643 (= lt!2082820 (splitAtIndex!178 (t!370830 lt!2082777) (- i!618 1)))))

(assert (=> b!5033643 (= e!3144307 (tuple2!63169 (Cons!58263 (h!64711 lt!2082777) (_1!34887 lt!2082820)) (_2!34887 lt!2082820)))))

(declare-fun d!1619600 () Bool)

(assert (=> d!1619600 e!3144306))

(declare-fun res!2144999 () Bool)

(assert (=> d!1619600 (=> (not res!2144999) (not e!3144306))))

(declare-fun ++!12693 (List!58387 List!58387) List!58387)

(assert (=> d!1619600 (= res!2144999 (= (++!12693 (_1!34887 lt!2082819) (_2!34887 lt!2082819)) lt!2082777))))

(assert (=> d!1619600 (= lt!2082819 e!3144308)))

(declare-fun c!862026 () Bool)

(assert (=> d!1619600 (= c!862026 (is-Nil!58263 lt!2082777))))

(assert (=> d!1619600 (= (splitAtIndex!178 lt!2082777 i!618) lt!2082819)))

(declare-fun b!5033644 () Bool)

(assert (=> b!5033644 (= e!3144306 (= (_2!34887 lt!2082819) (drop!2603 lt!2082777 i!618)))))

(declare-fun b!5033645 () Bool)

(assert (=> b!5033645 (= e!3144308 e!3144307)))

(declare-fun c!862027 () Bool)

(assert (=> b!5033645 (= c!862027 (<= i!618 0))))

(assert (= (and d!1619600 c!862026) b!5033642))

(assert (= (and d!1619600 (not c!862026)) b!5033645))

(assert (= (and b!5033645 c!862027) b!5033641))

(assert (= (and b!5033645 (not c!862027)) b!5033643))

(assert (= (and d!1619600 res!2144999) b!5033640))

(assert (= (and b!5033640 res!2145000) b!5033644))

(assert (=> b!5033640 m!6068274))

(declare-fun m!6068372 () Bool)

(assert (=> b!5033643 m!6068372))

(declare-fun m!6068374 () Bool)

(assert (=> d!1619600 m!6068374))

(assert (=> b!5033644 m!6068262))

(assert (=> b!5033468 d!1619600))

(declare-fun d!1619602 () Bool)

(assert (=> d!1619602 (= (list!18847 (xs!18801 t!4198)) (innerList!15563 (xs!18801 t!4198)))))

(assert (=> b!5033468 d!1619602))

(declare-fun d!1619604 () Bool)

(declare-fun lt!2082823 () Int)

(declare-fun list!18849 (Conc!15475) List!58387)

(assert (=> d!1619604 (= lt!2082823 (size!38820 (list!18849 t!4198)))))

(assert (=> d!1619604 (= lt!2082823 (ite (is-Empty!15475 t!4198) 0 (ite (is-Leaf!25677 t!4198) (csize!31181 t!4198) (csize!31180 t!4198))))))

(assert (=> d!1619604 (= (size!38821 t!4198) lt!2082823)))

(declare-fun bs!1188692 () Bool)

(assert (= bs!1188692 d!1619604))

(declare-fun m!6068376 () Bool)

(assert (=> bs!1188692 m!6068376))

(assert (=> bs!1188692 m!6068376))

(declare-fun m!6068378 () Bool)

(assert (=> bs!1188692 m!6068378))

(assert (=> b!5033473 d!1619604))

(declare-fun b!5033650 () Bool)

(declare-fun e!3144311 () Bool)

(declare-fun tp_is_empty!36721 () Bool)

(declare-fun tp!1409957 () Bool)

(assert (=> b!5033650 (= e!3144311 (and tp_is_empty!36721 tp!1409957))))

(assert (=> b!5033470 (= tp!1409943 e!3144311)))

(assert (= (and b!5033470 (is-Cons!58263 (innerList!15563 (xs!18801 t!4198)))) b!5033650))

(declare-fun tp!1409966 () Bool)

(declare-fun tp!1409964 () Bool)

(declare-fun e!3144320 () Bool)

(declare-fun b!5033666 () Bool)

(assert (=> b!5033666 (= e!3144320 (and (inv!76961 (left!42642 (left!42642 t!4198))) tp!1409966 (inv!76961 (right!42972 (left!42642 t!4198))) tp!1409964))))

(declare-fun b!5033668 () Bool)

(declare-fun e!3144321 () Bool)

(declare-fun tp!1409965 () Bool)

(assert (=> b!5033668 (= e!3144321 tp!1409965)))

(declare-fun b!5033667 () Bool)

(assert (=> b!5033667 (= e!3144320 (and (inv!76960 (xs!18801 (left!42642 t!4198))) e!3144321))))

(assert (=> b!5033475 (= tp!1409944 (and (inv!76961 (left!42642 t!4198)) e!3144320))))

(assert (= (and b!5033475 (is-Node!15475 (left!42642 t!4198))) b!5033666))

(assert (= b!5033667 b!5033668))

(assert (= (and b!5033475 (is-Leaf!25677 (left!42642 t!4198))) b!5033667))

(declare-fun m!6068388 () Bool)

(assert (=> b!5033666 m!6068388))

(declare-fun m!6068390 () Bool)

(assert (=> b!5033666 m!6068390))

(declare-fun m!6068392 () Bool)

(assert (=> b!5033667 m!6068392))

(assert (=> b!5033475 m!6068270))

(declare-fun b!5033669 () Bool)

(declare-fun e!3144322 () Bool)

(declare-fun tp!1409967 () Bool)

(declare-fun tp!1409969 () Bool)

(assert (=> b!5033669 (= e!3144322 (and (inv!76961 (left!42642 (right!42972 t!4198))) tp!1409969 (inv!76961 (right!42972 (right!42972 t!4198))) tp!1409967))))

(declare-fun b!5033671 () Bool)

(declare-fun e!3144323 () Bool)

(declare-fun tp!1409968 () Bool)

(assert (=> b!5033671 (= e!3144323 tp!1409968)))

(declare-fun b!5033670 () Bool)

(assert (=> b!5033670 (= e!3144322 (and (inv!76960 (xs!18801 (right!42972 t!4198))) e!3144323))))

(assert (=> b!5033475 (= tp!1409945 (and (inv!76961 (right!42972 t!4198)) e!3144322))))

(assert (= (and b!5033475 (is-Node!15475 (right!42972 t!4198))) b!5033669))

(assert (= b!5033670 b!5033671))

(assert (= (and b!5033475 (is-Leaf!25677 (right!42972 t!4198))) b!5033670))

(declare-fun m!6068394 () Bool)

(assert (=> b!5033669 m!6068394))

(declare-fun m!6068396 () Bool)

(assert (=> b!5033669 m!6068396))

(declare-fun m!6068398 () Bool)

(assert (=> b!5033670 m!6068398))

(assert (=> b!5033475 m!6068272))

(push 1)

(assert (not b!5033611))

(assert (not d!1619596))

(assert (not b!5033534))

(assert (not d!1619580))

(assert (not b!5033589))

(assert (not b!5033533))

(assert (not b!5033671))

(assert (not b!5033514))

(assert (not b!5033539))

(assert (not b!5033586))

(assert (not b!5033566))

(assert (not b!5033610))

(assert (not b!5033512))

(assert (not b!5033537))

(assert (not b!5033511))

(assert (not b!5033668))

(assert (not bm!351140))

(assert tp_is_empty!36721)

(assert (not b!5033650))

(assert (not b!5033541))

(assert (not b!5033644))

(assert (not b!5033535))

(assert (not b!5033609))

(assert (not b!5033643))

(assert (not b!5033574))

(assert (not b!5033608))

(assert (not d!1619594))

(assert (not b!5033475))

(assert (not d!1619600))

(assert (not b!5033538))

(assert (not d!1619588))

(assert (not b!5033666))

(assert (not d!1619604))

(assert (not b!5033536))

(assert (not d!1619574))

(assert (not b!5033667))

(assert (not b!5033669))

(assert (not b!5033670))

(assert (not b!5033509))

(assert (not b!5033640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

