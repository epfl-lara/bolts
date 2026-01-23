; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184978 () Bool)

(assert start!184978)

(declare-fun res!831364 () Bool)

(declare-fun e!1184325 () Bool)

(assert (=> start!184978 (=> (not res!831364) (not e!1184325))))

(declare-datatypes ((T!32496 0))(
  ( (T!32497 (val!5852 Int)) )
))
(declare-datatypes ((List!20639 0))(
  ( (Nil!20561) (Cons!20561 (h!25962 T!32496) (t!172458 List!20639)) )
))
(declare-datatypes ((IArray!13613 0))(
  ( (IArray!13614 (innerList!6864 List!20639)) )
))
(declare-datatypes ((Conc!6804 0))(
  ( (Node!6804 (left!16495 Conc!6804) (right!16825 Conc!6804) (csize!13838 Int) (cheight!7015 Int)) (Leaf!9954 (xs!9680 IArray!13613) (csize!13839 Int)) (Empty!6804) )
))
(declare-datatypes ((BalanceConc!13536 0))(
  ( (BalanceConc!13537 (c!302241 Conc!6804)) )
))
(declare-fun thiss!5788 () BalanceConc!13536)

(declare-fun isEmpty!12815 (BalanceConc!13536) Bool)

(assert (=> start!184978 (= res!831364 (not (isEmpty!12815 thiss!5788)))))

(assert (=> start!184978 e!1184325))

(declare-fun e!1184326 () Bool)

(declare-fun inv!26955 (BalanceConc!13536) Bool)

(assert (=> start!184978 (and (inv!26955 thiss!5788) e!1184326)))

(declare-fun b!1852909 () Bool)

(declare-fun head!4339 (Conc!6804) T!32496)

(declare-fun head!4340 (List!20639) T!32496)

(declare-fun list!8338 (BalanceConc!13536) List!20639)

(assert (=> b!1852909 (= e!1184325 (not (= (head!4339 (c!302241 thiss!5788)) (head!4340 (list!8338 thiss!5788)))))))

(declare-fun b!1852910 () Bool)

(declare-fun tp!525258 () Bool)

(declare-fun inv!26956 (Conc!6804) Bool)

(assert (=> b!1852910 (= e!1184326 (and (inv!26956 (c!302241 thiss!5788)) tp!525258))))

(assert (= (and start!184978 res!831364) b!1852909))

(assert (= start!184978 b!1852910))

(declare-fun m!2279761 () Bool)

(assert (=> start!184978 m!2279761))

(declare-fun m!2279763 () Bool)

(assert (=> start!184978 m!2279763))

(declare-fun m!2279765 () Bool)

(assert (=> b!1852909 m!2279765))

(declare-fun m!2279767 () Bool)

(assert (=> b!1852909 m!2279767))

(assert (=> b!1852909 m!2279767))

(declare-fun m!2279769 () Bool)

(assert (=> b!1852909 m!2279769))

(declare-fun m!2279771 () Bool)

(assert (=> b!1852910 m!2279771))

(check-sat (not start!184978) (not b!1852909) (not b!1852910))
(check-sat)
(get-model)

(declare-fun d!566250 () Bool)

(declare-fun lt!716351 () Bool)

(declare-fun isEmpty!12816 (List!20639) Bool)

(assert (=> d!566250 (= lt!716351 (isEmpty!12816 (list!8338 thiss!5788)))))

(declare-fun isEmpty!12817 (Conc!6804) Bool)

(assert (=> d!566250 (= lt!716351 (isEmpty!12817 (c!302241 thiss!5788)))))

(assert (=> d!566250 (= (isEmpty!12815 thiss!5788) lt!716351)))

(declare-fun bs!410492 () Bool)

(assert (= bs!410492 d!566250))

(assert (=> bs!410492 m!2279767))

(assert (=> bs!410492 m!2279767))

(declare-fun m!2279773 () Bool)

(assert (=> bs!410492 m!2279773))

(declare-fun m!2279775 () Bool)

(assert (=> bs!410492 m!2279775))

(assert (=> start!184978 d!566250))

(declare-fun d!566254 () Bool)

(declare-fun isBalanced!2120 (Conc!6804) Bool)

(assert (=> d!566254 (= (inv!26955 thiss!5788) (isBalanced!2120 (c!302241 thiss!5788)))))

(declare-fun bs!410493 () Bool)

(assert (= bs!410493 d!566254))

(declare-fun m!2279777 () Bool)

(assert (=> bs!410493 m!2279777))

(assert (=> start!184978 d!566254))

(declare-fun d!566256 () Bool)

(declare-fun lt!716357 () T!32496)

(declare-fun list!8339 (Conc!6804) List!20639)

(assert (=> d!566256 (= lt!716357 (head!4340 (list!8339 (c!302241 thiss!5788))))))

(declare-fun e!1184329 () T!32496)

(assert (=> d!566256 (= lt!716357 e!1184329)))

(declare-fun c!302244 () Bool)

(get-info :version)

(assert (=> d!566256 (= c!302244 ((_ is Leaf!9954) (c!302241 thiss!5788)))))

(assert (=> d!566256 (isBalanced!2120 (c!302241 thiss!5788))))

(assert (=> d!566256 (= (head!4339 (c!302241 thiss!5788)) lt!716357)))

(declare-fun b!1852915 () Bool)

(declare-fun apply!5463 (IArray!13613 Int) T!32496)

(assert (=> b!1852915 (= e!1184329 (apply!5463 (xs!9680 (c!302241 thiss!5788)) 0))))

(declare-fun b!1852916 () Bool)

(assert (=> b!1852916 (= e!1184329 (head!4339 (left!16495 (c!302241 thiss!5788))))))

(assert (= (and d!566256 c!302244) b!1852915))

(assert (= (and d!566256 (not c!302244)) b!1852916))

(declare-fun m!2279783 () Bool)

(assert (=> d!566256 m!2279783))

(assert (=> d!566256 m!2279783))

(declare-fun m!2279785 () Bool)

(assert (=> d!566256 m!2279785))

(assert (=> d!566256 m!2279777))

(declare-fun m!2279787 () Bool)

(assert (=> b!1852915 m!2279787))

(declare-fun m!2279789 () Bool)

(assert (=> b!1852916 m!2279789))

(assert (=> b!1852909 d!566256))

(declare-fun d!566260 () Bool)

(assert (=> d!566260 (= (head!4340 (list!8338 thiss!5788)) (h!25962 (list!8338 thiss!5788)))))

(assert (=> b!1852909 d!566260))

(declare-fun d!566262 () Bool)

(assert (=> d!566262 (= (list!8338 thiss!5788) (list!8339 (c!302241 thiss!5788)))))

(declare-fun bs!410496 () Bool)

(assert (= bs!410496 d!566262))

(assert (=> bs!410496 m!2279783))

(assert (=> b!1852909 d!566262))

(declare-fun d!566266 () Bool)

(declare-fun c!302247 () Bool)

(assert (=> d!566266 (= c!302247 ((_ is Node!6804) (c!302241 thiss!5788)))))

(declare-fun e!1184334 () Bool)

(assert (=> d!566266 (= (inv!26956 (c!302241 thiss!5788)) e!1184334)))

(declare-fun b!1852923 () Bool)

(declare-fun inv!26957 (Conc!6804) Bool)

(assert (=> b!1852923 (= e!1184334 (inv!26957 (c!302241 thiss!5788)))))

(declare-fun b!1852924 () Bool)

(declare-fun e!1184335 () Bool)

(assert (=> b!1852924 (= e!1184334 e!1184335)))

(declare-fun res!831367 () Bool)

(assert (=> b!1852924 (= res!831367 (not ((_ is Leaf!9954) (c!302241 thiss!5788))))))

(assert (=> b!1852924 (=> res!831367 e!1184335)))

(declare-fun b!1852925 () Bool)

(declare-fun inv!26958 (Conc!6804) Bool)

(assert (=> b!1852925 (= e!1184335 (inv!26958 (c!302241 thiss!5788)))))

(assert (= (and d!566266 c!302247) b!1852923))

(assert (= (and d!566266 (not c!302247)) b!1852924))

(assert (= (and b!1852924 (not res!831367)) b!1852925))

(declare-fun m!2279793 () Bool)

(assert (=> b!1852923 m!2279793))

(declare-fun m!2279795 () Bool)

(assert (=> b!1852925 m!2279795))

(assert (=> b!1852910 d!566266))

(declare-fun e!1184340 () Bool)

(declare-fun tp!525266 () Bool)

(declare-fun b!1852934 () Bool)

(declare-fun tp!525265 () Bool)

(assert (=> b!1852934 (= e!1184340 (and (inv!26956 (left!16495 (c!302241 thiss!5788))) tp!525266 (inv!26956 (right!16825 (c!302241 thiss!5788))) tp!525265))))

(declare-fun b!1852936 () Bool)

(declare-fun e!1184341 () Bool)

(declare-fun tp!525267 () Bool)

(assert (=> b!1852936 (= e!1184341 tp!525267)))

(declare-fun b!1852935 () Bool)

(declare-fun inv!26959 (IArray!13613) Bool)

(assert (=> b!1852935 (= e!1184340 (and (inv!26959 (xs!9680 (c!302241 thiss!5788))) e!1184341))))

(assert (=> b!1852910 (= tp!525258 (and (inv!26956 (c!302241 thiss!5788)) e!1184340))))

(assert (= (and b!1852910 ((_ is Node!6804) (c!302241 thiss!5788))) b!1852934))

(assert (= b!1852935 b!1852936))

(assert (= (and b!1852910 ((_ is Leaf!9954) (c!302241 thiss!5788))) b!1852935))

(declare-fun m!2279797 () Bool)

(assert (=> b!1852934 m!2279797))

(declare-fun m!2279799 () Bool)

(assert (=> b!1852934 m!2279799))

(declare-fun m!2279801 () Bool)

(assert (=> b!1852935 m!2279801))

(assert (=> b!1852910 m!2279771))

(check-sat (not d!566262) (not d!566250) (not b!1852915) (not b!1852935) (not b!1852923) (not d!566254) (not b!1852934) (not b!1852925) (not b!1852936) (not b!1852910) (not b!1852916) (not d!566256))
(check-sat)
