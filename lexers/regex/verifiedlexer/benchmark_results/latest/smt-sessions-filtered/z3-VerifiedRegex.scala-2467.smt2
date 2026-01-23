; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130680 () Bool)

(assert start!130680)

(declare-fun res!642925 () Bool)

(declare-fun e!906377 () Bool)

(assert (=> start!130680 (=> (not res!642925) (not e!906377))))

(declare-datatypes ((T!25580 0))(
  ( (T!25581 (val!4506 Int)) )
))
(declare-datatypes ((List!14648 0))(
  ( (Nil!14582) (Cons!14582 (h!19983 T!25580) (t!124421 List!14648)) )
))
(declare-datatypes ((IArray!9807 0))(
  ( (IArray!9808 (innerList!4961 List!14648)) )
))
(declare-datatypes ((Conc!4901 0))(
  ( (Node!4901 (left!12470 Conc!4901) (right!12800 Conc!4901) (csize!10032 Int) (cheight!5112 Int)) (Leaf!7369 (xs!7628 IArray!9807) (csize!10033 Int)) (Empty!4901) )
))
(declare-datatypes ((BalanceConc!9742 0))(
  ( (BalanceConc!9743 (c!233386 Conc!4901)) )
))
(declare-fun thiss!5870 () BalanceConc!9742)

(declare-fun isEmpty!8974 (BalanceConc!9742) Bool)

(assert (=> start!130680 (= res!642925 (not (isEmpty!8974 thiss!5870)))))

(assert (=> start!130680 e!906377))

(declare-fun e!906378 () Bool)

(declare-fun inv!19253 (BalanceConc!9742) Bool)

(assert (=> start!130680 (and (inv!19253 thiss!5870) e!906378)))

(declare-fun b!1419942 () Bool)

(declare-fun isBalanced!1458 (Conc!4901) Bool)

(assert (=> b!1419942 (= e!906377 (not (isBalanced!1458 (c!233386 thiss!5870))))))

(declare-fun b!1419943 () Bool)

(declare-fun tp!402606 () Bool)

(declare-fun inv!19254 (Conc!4901) Bool)

(assert (=> b!1419943 (= e!906378 (and (inv!19254 (c!233386 thiss!5870)) tp!402606))))

(assert (= (and start!130680 res!642925) b!1419942))

(assert (= start!130680 b!1419943))

(declare-fun m!1609561 () Bool)

(assert (=> start!130680 m!1609561))

(declare-fun m!1609563 () Bool)

(assert (=> start!130680 m!1609563))

(declare-fun m!1609565 () Bool)

(assert (=> b!1419942 m!1609565))

(declare-fun m!1609567 () Bool)

(assert (=> b!1419943 m!1609567))

(check-sat (not b!1419942) (not b!1419943) (not start!130680))
(check-sat)
(get-model)

(declare-fun b!1419960 () Bool)

(declare-fun res!642944 () Bool)

(declare-fun e!906388 () Bool)

(assert (=> b!1419960 (=> (not res!642944) (not e!906388))))

(assert (=> b!1419960 (= res!642944 (isBalanced!1458 (right!12800 (c!233386 thiss!5870))))))

(declare-fun b!1419961 () Bool)

(declare-fun isEmpty!8977 (Conc!4901) Bool)

(assert (=> b!1419961 (= e!906388 (not (isEmpty!8977 (right!12800 (c!233386 thiss!5870)))))))

(declare-fun b!1419962 () Bool)

(declare-fun e!906387 () Bool)

(assert (=> b!1419962 (= e!906387 e!906388)))

(declare-fun res!642948 () Bool)

(assert (=> b!1419962 (=> (not res!642948) (not e!906388))))

(declare-fun height!712 (Conc!4901) Int)

(assert (=> b!1419962 (= res!642948 (<= (- 1) (- (height!712 (left!12470 (c!233386 thiss!5870))) (height!712 (right!12800 (c!233386 thiss!5870))))))))

(declare-fun b!1419963 () Bool)

(declare-fun res!642946 () Bool)

(assert (=> b!1419963 (=> (not res!642946) (not e!906388))))

(assert (=> b!1419963 (= res!642946 (isBalanced!1458 (left!12470 (c!233386 thiss!5870))))))

(declare-fun d!406784 () Bool)

(declare-fun res!642947 () Bool)

(assert (=> d!406784 (=> res!642947 e!906387)))

(get-info :version)

(assert (=> d!406784 (= res!642947 (not ((_ is Node!4901) (c!233386 thiss!5870))))))

(assert (=> d!406784 (= (isBalanced!1458 (c!233386 thiss!5870)) e!906387)))

(declare-fun b!1419964 () Bool)

(declare-fun res!642949 () Bool)

(assert (=> b!1419964 (=> (not res!642949) (not e!906388))))

(assert (=> b!1419964 (= res!642949 (<= (- (height!712 (left!12470 (c!233386 thiss!5870))) (height!712 (right!12800 (c!233386 thiss!5870)))) 1))))

(declare-fun b!1419965 () Bool)

(declare-fun res!642945 () Bool)

(assert (=> b!1419965 (=> (not res!642945) (not e!906388))))

(assert (=> b!1419965 (= res!642945 (not (isEmpty!8977 (left!12470 (c!233386 thiss!5870)))))))

(assert (= (and d!406784 (not res!642947)) b!1419962))

(assert (= (and b!1419962 res!642948) b!1419964))

(assert (= (and b!1419964 res!642949) b!1419963))

(assert (= (and b!1419963 res!642946) b!1419960))

(assert (= (and b!1419960 res!642944) b!1419965))

(assert (= (and b!1419965 res!642945) b!1419961))

(declare-fun m!1609575 () Bool)

(assert (=> b!1419963 m!1609575))

(declare-fun m!1609577 () Bool)

(assert (=> b!1419962 m!1609577))

(declare-fun m!1609579 () Bool)

(assert (=> b!1419962 m!1609579))

(declare-fun m!1609581 () Bool)

(assert (=> b!1419961 m!1609581))

(declare-fun m!1609583 () Bool)

(assert (=> b!1419965 m!1609583))

(declare-fun m!1609585 () Bool)

(assert (=> b!1419960 m!1609585))

(assert (=> b!1419964 m!1609577))

(assert (=> b!1419964 m!1609579))

(assert (=> b!1419942 d!406784))

(declare-fun d!406790 () Bool)

(declare-fun c!233389 () Bool)

(assert (=> d!406790 (= c!233389 ((_ is Node!4901) (c!233386 thiss!5870)))))

(declare-fun e!906395 () Bool)

(assert (=> d!406790 (= (inv!19254 (c!233386 thiss!5870)) e!906395)))

(declare-fun b!1419986 () Bool)

(declare-fun inv!19256 (Conc!4901) Bool)

(assert (=> b!1419986 (= e!906395 (inv!19256 (c!233386 thiss!5870)))))

(declare-fun b!1419987 () Bool)

(declare-fun e!906396 () Bool)

(assert (=> b!1419987 (= e!906395 e!906396)))

(declare-fun res!642964 () Bool)

(assert (=> b!1419987 (= res!642964 (not ((_ is Leaf!7369) (c!233386 thiss!5870))))))

(assert (=> b!1419987 (=> res!642964 e!906396)))

(declare-fun b!1419988 () Bool)

(declare-fun inv!19258 (Conc!4901) Bool)

(assert (=> b!1419988 (= e!906396 (inv!19258 (c!233386 thiss!5870)))))

(assert (= (and d!406790 c!233389) b!1419986))

(assert (= (and d!406790 (not c!233389)) b!1419987))

(assert (= (and b!1419987 (not res!642964)) b!1419988))

(declare-fun m!1609599 () Bool)

(assert (=> b!1419986 m!1609599))

(declare-fun m!1609601 () Bool)

(assert (=> b!1419988 m!1609601))

(assert (=> b!1419943 d!406790))

(declare-fun d!406794 () Bool)

(declare-fun lt!479388 () Bool)

(declare-fun isEmpty!8978 (List!14648) Bool)

(declare-fun list!5753 (BalanceConc!9742) List!14648)

(assert (=> d!406794 (= lt!479388 (isEmpty!8978 (list!5753 thiss!5870)))))

(assert (=> d!406794 (= lt!479388 (isEmpty!8977 (c!233386 thiss!5870)))))

(assert (=> d!406794 (= (isEmpty!8974 thiss!5870) lt!479388)))

(declare-fun bs!339711 () Bool)

(assert (= bs!339711 d!406794))

(declare-fun m!1609607 () Bool)

(assert (=> bs!339711 m!1609607))

(assert (=> bs!339711 m!1609607))

(declare-fun m!1609609 () Bool)

(assert (=> bs!339711 m!1609609))

(declare-fun m!1609611 () Bool)

(assert (=> bs!339711 m!1609611))

(assert (=> start!130680 d!406794))

(declare-fun d!406796 () Bool)

(assert (=> d!406796 (= (inv!19253 thiss!5870) (isBalanced!1458 (c!233386 thiss!5870)))))

(declare-fun bs!339712 () Bool)

(assert (= bs!339712 d!406796))

(assert (=> bs!339712 m!1609565))

(assert (=> start!130680 d!406796))

(declare-fun tp!402624 () Bool)

(declare-fun tp!402623 () Bool)

(declare-fun e!906414 () Bool)

(declare-fun b!1420017 () Bool)

(assert (=> b!1420017 (= e!906414 (and (inv!19254 (left!12470 (c!233386 thiss!5870))) tp!402623 (inv!19254 (right!12800 (c!233386 thiss!5870))) tp!402624))))

(declare-fun b!1420019 () Bool)

(declare-fun e!906413 () Bool)

(declare-fun tp!402622 () Bool)

(assert (=> b!1420019 (= e!906413 tp!402622)))

(declare-fun b!1420018 () Bool)

(declare-fun inv!19260 (IArray!9807) Bool)

(assert (=> b!1420018 (= e!906414 (and (inv!19260 (xs!7628 (c!233386 thiss!5870))) e!906413))))

(assert (=> b!1419943 (= tp!402606 (and (inv!19254 (c!233386 thiss!5870)) e!906414))))

(assert (= (and b!1419943 ((_ is Node!4901) (c!233386 thiss!5870))) b!1420017))

(assert (= b!1420018 b!1420019))

(assert (= (and b!1419943 ((_ is Leaf!7369) (c!233386 thiss!5870))) b!1420018))

(declare-fun m!1609619 () Bool)

(assert (=> b!1420017 m!1609619))

(declare-fun m!1609621 () Bool)

(assert (=> b!1420017 m!1609621))

(declare-fun m!1609623 () Bool)

(assert (=> b!1420018 m!1609623))

(assert (=> b!1419943 m!1609567))

(check-sat (not b!1419961) (not b!1419986) (not b!1419962) (not b!1420018) (not b!1419988) (not b!1419964) (not b!1419960) (not b!1419963) (not b!1420017) (not b!1419943) (not b!1420019) (not d!406796) (not d!406794) (not b!1419965))
(check-sat)
