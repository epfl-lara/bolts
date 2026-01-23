; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186908 () Bool)

(assert start!186908)

(declare-fun res!836377 () Bool)

(declare-fun e!1192131 () Bool)

(assert (=> start!186908 (=> (not res!836377) (not e!1192131))))

(declare-datatypes ((T!33172 0))(
  ( (T!33173 (val!5950 Int)) )
))
(declare-datatypes ((List!20767 0))(
  ( (Nil!20685) (Cons!20685 (h!26086 T!33172) (t!172918 List!20767)) )
))
(declare-datatypes ((IArray!13765 0))(
  ( (IArray!13766 (innerList!6940 List!20767)) )
))
(declare-datatypes ((Conc!6880 0))(
  ( (Node!6880 (left!16673 Conc!6880) (right!17003 Conc!6880) (csize!13990 Int) (cheight!7091 Int)) (Leaf!10088 (xs!9762 IArray!13765) (csize!13991 Int)) (Empty!6880) )
))
(declare-fun t!4595 () Conc!6880)

(declare-fun isBalanced!2181 (Conc!6880) Bool)

(assert (=> start!186908 (= res!836377 (isBalanced!2181 t!4595))))

(assert (=> start!186908 e!1192131))

(declare-fun e!1192130 () Bool)

(declare-fun inv!27396 (Conc!6880) Bool)

(assert (=> start!186908 (and (inv!27396 t!4595) e!1192130)))

(declare-fun b!1868026 () Bool)

(declare-fun e!1192128 () Bool)

(declare-fun lt!718833 () Conc!6880)

(declare-fun list!8469 (Conc!6880) List!20767)

(declare-fun tail!2833 (List!20767) List!20767)

(assert (=> b!1868026 (= e!1192128 (= (list!8469 lt!718833) (tail!2833 (list!8469 t!4595))))))

(declare-fun b!1868027 () Bool)

(declare-fun res!836376 () Bool)

(assert (=> b!1868027 (=> (not res!836376) (not e!1192131))))

(get-info :version)

(assert (=> b!1868027 (= res!836376 (and ((_ is Leaf!10088) t!4595) (not (= (csize!13991 t!4595) 1))))))

(declare-fun b!1868028 () Bool)

(assert (=> b!1868028 (= e!1192131 (not e!1192128))))

(declare-fun res!836379 () Bool)

(assert (=> b!1868028 (=> (not res!836379) (not e!1192128))))

(assert (=> b!1868028 (= res!836379 (isBalanced!2181 lt!718833))))

(declare-fun slice!580 (IArray!13765 Int Int) IArray!13765)

(assert (=> b!1868028 (= lt!718833 (Leaf!10088 (slice!580 (xs!9762 t!4595) 1 (csize!13991 t!4595)) (- (csize!13991 t!4595) 1)))))

(declare-fun lt!718832 () List!20767)

(declare-fun slice!581 (List!20767 Int Int) List!20767)

(declare-fun size!16401 (List!20767) Int)

(assert (=> b!1868028 (= (tail!2833 lt!718832) (slice!581 lt!718832 1 (size!16401 lt!718832)))))

(declare-datatypes ((Unit!35303 0))(
  ( (Unit!35304) )
))
(declare-fun lt!718831 () Unit!35303)

(declare-fun sliceTailLemma!36 (List!20767) Unit!35303)

(assert (=> b!1868028 (= lt!718831 (sliceTailLemma!36 lt!718832))))

(declare-fun list!8470 (IArray!13765) List!20767)

(assert (=> b!1868028 (= lt!718832 (list!8470 (xs!9762 t!4595)))))

(declare-fun b!1868029 () Bool)

(declare-fun res!836378 () Bool)

(assert (=> b!1868029 (=> (not res!836378) (not e!1192131))))

(declare-fun isEmpty!12911 (Conc!6880) Bool)

(assert (=> b!1868029 (= res!836378 (not (isEmpty!12911 t!4595)))))

(declare-fun b!1868030 () Bool)

(declare-fun e!1192129 () Bool)

(declare-fun tp!531704 () Bool)

(assert (=> b!1868030 (= e!1192129 tp!531704)))

(declare-fun b!1868031 () Bool)

(declare-fun inv!27397 (IArray!13765) Bool)

(assert (=> b!1868031 (= e!1192130 (and (inv!27397 (xs!9762 t!4595)) e!1192129))))

(declare-fun b!1868032 () Bool)

(declare-fun tp!531705 () Bool)

(declare-fun tp!531703 () Bool)

(assert (=> b!1868032 (= e!1192130 (and (inv!27396 (left!16673 t!4595)) tp!531705 (inv!27396 (right!17003 t!4595)) tp!531703))))

(assert (= (and start!186908 res!836377) b!1868029))

(assert (= (and b!1868029 res!836378) b!1868027))

(assert (= (and b!1868027 res!836376) b!1868028))

(assert (= (and b!1868028 res!836379) b!1868026))

(assert (= (and start!186908 ((_ is Node!6880) t!4595)) b!1868032))

(assert (= b!1868031 b!1868030))

(assert (= (and start!186908 ((_ is Leaf!10088) t!4595)) b!1868031))

(declare-fun m!2293571 () Bool)

(assert (=> b!1868026 m!2293571))

(declare-fun m!2293573 () Bool)

(assert (=> b!1868026 m!2293573))

(assert (=> b!1868026 m!2293573))

(declare-fun m!2293575 () Bool)

(assert (=> b!1868026 m!2293575))

(declare-fun m!2293577 () Bool)

(assert (=> start!186908 m!2293577))

(declare-fun m!2293579 () Bool)

(assert (=> start!186908 m!2293579))

(declare-fun m!2293581 () Bool)

(assert (=> b!1868028 m!2293581))

(declare-fun m!2293583 () Bool)

(assert (=> b!1868028 m!2293583))

(declare-fun m!2293585 () Bool)

(assert (=> b!1868028 m!2293585))

(declare-fun m!2293587 () Bool)

(assert (=> b!1868028 m!2293587))

(declare-fun m!2293589 () Bool)

(assert (=> b!1868028 m!2293589))

(declare-fun m!2293591 () Bool)

(assert (=> b!1868028 m!2293591))

(declare-fun m!2293593 () Bool)

(assert (=> b!1868028 m!2293593))

(assert (=> b!1868028 m!2293591))

(declare-fun m!2293595 () Bool)

(assert (=> b!1868029 m!2293595))

(declare-fun m!2293597 () Bool)

(assert (=> b!1868031 m!2293597))

(declare-fun m!2293599 () Bool)

(assert (=> b!1868032 m!2293599))

(declare-fun m!2293601 () Bool)

(assert (=> b!1868032 m!2293601))

(check-sat (not b!1868030) (not b!1868028) (not b!1868032) (not b!1868029) (not b!1868026) (not b!1868031) (not start!186908))
(check-sat)
(get-model)

(declare-fun b!1868044 () Bool)

(declare-fun e!1192137 () List!20767)

(declare-fun ++!5607 (List!20767 List!20767) List!20767)

(assert (=> b!1868044 (= e!1192137 (++!5607 (list!8469 (left!16673 lt!718833)) (list!8469 (right!17003 lt!718833))))))

(declare-fun d!570942 () Bool)

(declare-fun c!304326 () Bool)

(assert (=> d!570942 (= c!304326 ((_ is Empty!6880) lt!718833))))

(declare-fun e!1192136 () List!20767)

(assert (=> d!570942 (= (list!8469 lt!718833) e!1192136)))

(declare-fun b!1868042 () Bool)

(assert (=> b!1868042 (= e!1192136 e!1192137)))

(declare-fun c!304327 () Bool)

(assert (=> b!1868042 (= c!304327 ((_ is Leaf!10088) lt!718833))))

(declare-fun b!1868043 () Bool)

(assert (=> b!1868043 (= e!1192137 (list!8470 (xs!9762 lt!718833)))))

(declare-fun b!1868041 () Bool)

(assert (=> b!1868041 (= e!1192136 Nil!20685)))

(assert (= (and d!570942 c!304326) b!1868041))

(assert (= (and d!570942 (not c!304326)) b!1868042))

(assert (= (and b!1868042 c!304327) b!1868043))

(assert (= (and b!1868042 (not c!304327)) b!1868044))

(declare-fun m!2293605 () Bool)

(assert (=> b!1868044 m!2293605))

(declare-fun m!2293607 () Bool)

(assert (=> b!1868044 m!2293607))

(assert (=> b!1868044 m!2293605))

(assert (=> b!1868044 m!2293607))

(declare-fun m!2293609 () Bool)

(assert (=> b!1868044 m!2293609))

(declare-fun m!2293611 () Bool)

(assert (=> b!1868043 m!2293611))

(assert (=> b!1868026 d!570942))

(declare-fun d!570948 () Bool)

(assert (=> d!570948 (= (tail!2833 (list!8469 t!4595)) (t!172918 (list!8469 t!4595)))))

(assert (=> b!1868026 d!570948))

(declare-fun b!1868048 () Bool)

(declare-fun e!1192139 () List!20767)

(assert (=> b!1868048 (= e!1192139 (++!5607 (list!8469 (left!16673 t!4595)) (list!8469 (right!17003 t!4595))))))

(declare-fun d!570950 () Bool)

(declare-fun c!304328 () Bool)

(assert (=> d!570950 (= c!304328 ((_ is Empty!6880) t!4595))))

(declare-fun e!1192138 () List!20767)

(assert (=> d!570950 (= (list!8469 t!4595) e!1192138)))

(declare-fun b!1868046 () Bool)

(assert (=> b!1868046 (= e!1192138 e!1192139)))

(declare-fun c!304329 () Bool)

(assert (=> b!1868046 (= c!304329 ((_ is Leaf!10088) t!4595))))

(declare-fun b!1868047 () Bool)

(assert (=> b!1868047 (= e!1192139 (list!8470 (xs!9762 t!4595)))))

(declare-fun b!1868045 () Bool)

(assert (=> b!1868045 (= e!1192138 Nil!20685)))

(assert (= (and d!570950 c!304328) b!1868045))

(assert (= (and d!570950 (not c!304328)) b!1868046))

(assert (= (and b!1868046 c!304329) b!1868047))

(assert (= (and b!1868046 (not c!304329)) b!1868048))

(declare-fun m!2293613 () Bool)

(assert (=> b!1868048 m!2293613))

(declare-fun m!2293615 () Bool)

(assert (=> b!1868048 m!2293615))

(assert (=> b!1868048 m!2293613))

(assert (=> b!1868048 m!2293615))

(declare-fun m!2293617 () Bool)

(assert (=> b!1868048 m!2293617))

(assert (=> b!1868047 m!2293583))

(assert (=> b!1868026 d!570950))

(declare-fun d!570952 () Bool)

(assert (=> d!570952 (= (inv!27397 (xs!9762 t!4595)) (<= (size!16401 (innerList!6940 (xs!9762 t!4595))) 2147483647))))

(declare-fun bs!411847 () Bool)

(assert (= bs!411847 d!570952))

(declare-fun m!2293619 () Bool)

(assert (=> bs!411847 m!2293619))

(assert (=> b!1868031 d!570952))

(declare-fun d!570954 () Bool)

(declare-fun c!304335 () Bool)

(assert (=> d!570954 (= c!304335 ((_ is Node!6880) (left!16673 t!4595)))))

(declare-fun e!1192150 () Bool)

(assert (=> d!570954 (= (inv!27396 (left!16673 t!4595)) e!1192150)))

(declare-fun b!1868064 () Bool)

(declare-fun inv!27398 (Conc!6880) Bool)

(assert (=> b!1868064 (= e!1192150 (inv!27398 (left!16673 t!4595)))))

(declare-fun b!1868065 () Bool)

(declare-fun e!1192151 () Bool)

(assert (=> b!1868065 (= e!1192150 e!1192151)))

(declare-fun res!836385 () Bool)

(assert (=> b!1868065 (= res!836385 (not ((_ is Leaf!10088) (left!16673 t!4595))))))

(assert (=> b!1868065 (=> res!836385 e!1192151)))

(declare-fun b!1868066 () Bool)

(declare-fun inv!27399 (Conc!6880) Bool)

(assert (=> b!1868066 (= e!1192151 (inv!27399 (left!16673 t!4595)))))

(assert (= (and d!570954 c!304335) b!1868064))

(assert (= (and d!570954 (not c!304335)) b!1868065))

(assert (= (and b!1868065 (not res!836385)) b!1868066))

(declare-fun m!2293629 () Bool)

(assert (=> b!1868064 m!2293629))

(declare-fun m!2293631 () Bool)

(assert (=> b!1868066 m!2293631))

(assert (=> b!1868032 d!570954))

(declare-fun d!570962 () Bool)

(declare-fun c!304336 () Bool)

(assert (=> d!570962 (= c!304336 ((_ is Node!6880) (right!17003 t!4595)))))

(declare-fun e!1192152 () Bool)

(assert (=> d!570962 (= (inv!27396 (right!17003 t!4595)) e!1192152)))

(declare-fun b!1868067 () Bool)

(assert (=> b!1868067 (= e!1192152 (inv!27398 (right!17003 t!4595)))))

(declare-fun b!1868068 () Bool)

(declare-fun e!1192153 () Bool)

(assert (=> b!1868068 (= e!1192152 e!1192153)))

(declare-fun res!836386 () Bool)

(assert (=> b!1868068 (= res!836386 (not ((_ is Leaf!10088) (right!17003 t!4595))))))

(assert (=> b!1868068 (=> res!836386 e!1192153)))

(declare-fun b!1868069 () Bool)

(assert (=> b!1868069 (= e!1192153 (inv!27399 (right!17003 t!4595)))))

(assert (= (and d!570962 c!304336) b!1868067))

(assert (= (and d!570962 (not c!304336)) b!1868068))

(assert (= (and b!1868068 (not res!836386)) b!1868069))

(declare-fun m!2293633 () Bool)

(assert (=> b!1868067 m!2293633))

(declare-fun m!2293635 () Bool)

(assert (=> b!1868069 m!2293635))

(assert (=> b!1868032 d!570962))

(declare-fun d!570964 () Bool)

(declare-fun lt!718845 () Bool)

(declare-fun isEmpty!12912 (List!20767) Bool)

(assert (=> d!570964 (= lt!718845 (isEmpty!12912 (list!8469 t!4595)))))

(declare-fun size!16403 (Conc!6880) Int)

(assert (=> d!570964 (= lt!718845 (= (size!16403 t!4595) 0))))

(assert (=> d!570964 (= (isEmpty!12911 t!4595) lt!718845)))

(declare-fun bs!411848 () Bool)

(assert (= bs!411848 d!570964))

(assert (=> bs!411848 m!2293573))

(assert (=> bs!411848 m!2293573))

(declare-fun m!2293637 () Bool)

(assert (=> bs!411848 m!2293637))

(declare-fun m!2293639 () Bool)

(assert (=> bs!411848 m!2293639))

(assert (=> b!1868029 d!570964))

(declare-fun d!570966 () Bool)

(assert (=> d!570966 (= (tail!2833 lt!718832) (slice!581 lt!718832 1 (size!16401 lt!718832)))))

(declare-fun lt!718848 () Unit!35303)

(declare-fun choose!11744 (List!20767) Unit!35303)

(assert (=> d!570966 (= lt!718848 (choose!11744 lt!718832))))

(assert (=> d!570966 (> (size!16401 lt!718832) 0)))

(assert (=> d!570966 (= (sliceTailLemma!36 lt!718832) lt!718848)))

(declare-fun bs!411849 () Bool)

(assert (= bs!411849 d!570966))

(assert (=> bs!411849 m!2293587))

(assert (=> bs!411849 m!2293591))

(assert (=> bs!411849 m!2293591))

(assert (=> bs!411849 m!2293593))

(declare-fun m!2293641 () Bool)

(assert (=> bs!411849 m!2293641))

(assert (=> b!1868028 d!570966))

(declare-fun d!570968 () Bool)

(declare-fun lt!718851 () Int)

(assert (=> d!570968 (>= lt!718851 0)))

(declare-fun e!1192162 () Int)

(assert (=> d!570968 (= lt!718851 e!1192162)))

(declare-fun c!304339 () Bool)

(assert (=> d!570968 (= c!304339 ((_ is Nil!20685) lt!718832))))

(assert (=> d!570968 (= (size!16401 lt!718832) lt!718851)))

(declare-fun b!1868092 () Bool)

(assert (=> b!1868092 (= e!1192162 0)))

(declare-fun b!1868093 () Bool)

(assert (=> b!1868093 (= e!1192162 (+ 1 (size!16401 (t!172918 lt!718832))))))

(assert (= (and d!570968 c!304339) b!1868092))

(assert (= (and d!570968 (not c!304339)) b!1868093))

(declare-fun m!2293657 () Bool)

(assert (=> b!1868093 m!2293657))

(assert (=> b!1868028 d!570968))

(declare-fun d!570972 () Bool)

(declare-fun lt!718854 () IArray!13765)

(assert (=> d!570972 (= lt!718854 (IArray!13766 (slice!581 (list!8470 (xs!9762 t!4595)) 1 (csize!13991 t!4595))))))

(declare-fun choose!11745 (IArray!13765 Int Int) IArray!13765)

(assert (=> d!570972 (= lt!718854 (choose!11745 (xs!9762 t!4595) 1 (csize!13991 t!4595)))))

(declare-fun e!1192171 () Bool)

(assert (=> d!570972 e!1192171))

(declare-fun res!836415 () Bool)

(assert (=> d!570972 (=> (not res!836415) (not e!1192171))))

(assert (=> d!570972 (= res!836415 (and (<= 0 1) (<= 1 (csize!13991 t!4595))))))

(assert (=> d!570972 (= (slice!580 (xs!9762 t!4595) 1 (csize!13991 t!4595)) lt!718854)))

(declare-fun b!1868108 () Bool)

(declare-fun size!16404 (IArray!13765) Int)

(assert (=> b!1868108 (= e!1192171 (<= (csize!13991 t!4595) (size!16404 (xs!9762 t!4595))))))

(assert (= (and d!570972 res!836415) b!1868108))

(assert (=> d!570972 m!2293583))

(assert (=> d!570972 m!2293583))

(declare-fun m!2293673 () Bool)

(assert (=> d!570972 m!2293673))

(declare-fun m!2293675 () Bool)

(assert (=> d!570972 m!2293675))

(declare-fun m!2293677 () Bool)

(assert (=> b!1868108 m!2293677))

(assert (=> b!1868028 d!570972))

(declare-fun d!570978 () Bool)

(assert (=> d!570978 (= (list!8470 (xs!9762 t!4595)) (innerList!6940 (xs!9762 t!4595)))))

(assert (=> b!1868028 d!570978))

(declare-fun b!1868146 () Bool)

(declare-fun res!836435 () Bool)

(declare-fun e!1192191 () Bool)

(assert (=> b!1868146 (=> (not res!836435) (not e!1192191))))

(assert (=> b!1868146 (= res!836435 (isBalanced!2181 (left!16673 lt!718833)))))

(declare-fun b!1868148 () Bool)

(declare-fun e!1192190 () Bool)

(assert (=> b!1868148 (= e!1192190 e!1192191)))

(declare-fun res!836434 () Bool)

(assert (=> b!1868148 (=> (not res!836434) (not e!1192191))))

(declare-fun height!1067 (Conc!6880) Int)

(assert (=> b!1868148 (= res!836434 (<= (- 1) (- (height!1067 (left!16673 lt!718833)) (height!1067 (right!17003 lt!718833)))))))

(declare-fun b!1868149 () Bool)

(assert (=> b!1868149 (= e!1192191 (not (isEmpty!12911 (right!17003 lt!718833))))))

(declare-fun b!1868150 () Bool)

(declare-fun res!836433 () Bool)

(assert (=> b!1868150 (=> (not res!836433) (not e!1192191))))

(assert (=> b!1868150 (= res!836433 (not (isEmpty!12911 (left!16673 lt!718833))))))

(declare-fun b!1868151 () Bool)

(declare-fun res!836432 () Bool)

(assert (=> b!1868151 (=> (not res!836432) (not e!1192191))))

(assert (=> b!1868151 (= res!836432 (isBalanced!2181 (right!17003 lt!718833)))))

(declare-fun d!570982 () Bool)

(declare-fun res!836431 () Bool)

(assert (=> d!570982 (=> res!836431 e!1192190)))

(assert (=> d!570982 (= res!836431 (not ((_ is Node!6880) lt!718833)))))

(assert (=> d!570982 (= (isBalanced!2181 lt!718833) e!1192190)))

(declare-fun b!1868147 () Bool)

(declare-fun res!836436 () Bool)

(assert (=> b!1868147 (=> (not res!836436) (not e!1192191))))

(assert (=> b!1868147 (= res!836436 (<= (- (height!1067 (left!16673 lt!718833)) (height!1067 (right!17003 lt!718833))) 1))))

(assert (= (and d!570982 (not res!836431)) b!1868148))

(assert (= (and b!1868148 res!836434) b!1868147))

(assert (= (and b!1868147 res!836436) b!1868146))

(assert (= (and b!1868146 res!836435) b!1868151))

(assert (= (and b!1868151 res!836432) b!1868150))

(assert (= (and b!1868150 res!836433) b!1868149))

(declare-fun m!2293707 () Bool)

(assert (=> b!1868149 m!2293707))

(declare-fun m!2293709 () Bool)

(assert (=> b!1868147 m!2293709))

(declare-fun m!2293711 () Bool)

(assert (=> b!1868147 m!2293711))

(assert (=> b!1868148 m!2293709))

(assert (=> b!1868148 m!2293711))

(declare-fun m!2293713 () Bool)

(assert (=> b!1868150 m!2293713))

(declare-fun m!2293715 () Bool)

(assert (=> b!1868146 m!2293715))

(declare-fun m!2293717 () Bool)

(assert (=> b!1868151 m!2293717))

(assert (=> b!1868028 d!570982))

(declare-fun d!570996 () Bool)

(assert (=> d!570996 (= (tail!2833 lt!718832) (t!172918 lt!718832))))

(assert (=> b!1868028 d!570996))

(declare-fun d!570998 () Bool)

(declare-fun take!165 (List!20767 Int) List!20767)

(declare-fun drop!992 (List!20767 Int) List!20767)

(assert (=> d!570998 (= (slice!581 lt!718832 1 (size!16401 lt!718832)) (take!165 (drop!992 lt!718832 1) (- (size!16401 lt!718832) 1)))))

(declare-fun bs!411852 () Bool)

(assert (= bs!411852 d!570998))

(declare-fun m!2293719 () Bool)

(assert (=> bs!411852 m!2293719))

(assert (=> bs!411852 m!2293719))

(declare-fun m!2293721 () Bool)

(assert (=> bs!411852 m!2293721))

(assert (=> b!1868028 d!570998))

(declare-fun b!1868152 () Bool)

(declare-fun res!836441 () Bool)

(declare-fun e!1192193 () Bool)

(assert (=> b!1868152 (=> (not res!836441) (not e!1192193))))

(assert (=> b!1868152 (= res!836441 (isBalanced!2181 (left!16673 t!4595)))))

(declare-fun b!1868154 () Bool)

(declare-fun e!1192192 () Bool)

(assert (=> b!1868154 (= e!1192192 e!1192193)))

(declare-fun res!836440 () Bool)

(assert (=> b!1868154 (=> (not res!836440) (not e!1192193))))

(assert (=> b!1868154 (= res!836440 (<= (- 1) (- (height!1067 (left!16673 t!4595)) (height!1067 (right!17003 t!4595)))))))

(declare-fun b!1868155 () Bool)

(assert (=> b!1868155 (= e!1192193 (not (isEmpty!12911 (right!17003 t!4595))))))

(declare-fun b!1868156 () Bool)

(declare-fun res!836439 () Bool)

(assert (=> b!1868156 (=> (not res!836439) (not e!1192193))))

(assert (=> b!1868156 (= res!836439 (not (isEmpty!12911 (left!16673 t!4595))))))

(declare-fun b!1868157 () Bool)

(declare-fun res!836438 () Bool)

(assert (=> b!1868157 (=> (not res!836438) (not e!1192193))))

(assert (=> b!1868157 (= res!836438 (isBalanced!2181 (right!17003 t!4595)))))

(declare-fun d!571000 () Bool)

(declare-fun res!836437 () Bool)

(assert (=> d!571000 (=> res!836437 e!1192192)))

(assert (=> d!571000 (= res!836437 (not ((_ is Node!6880) t!4595)))))

(assert (=> d!571000 (= (isBalanced!2181 t!4595) e!1192192)))

(declare-fun b!1868153 () Bool)

(declare-fun res!836442 () Bool)

(assert (=> b!1868153 (=> (not res!836442) (not e!1192193))))

(assert (=> b!1868153 (= res!836442 (<= (- (height!1067 (left!16673 t!4595)) (height!1067 (right!17003 t!4595))) 1))))

(assert (= (and d!571000 (not res!836437)) b!1868154))

(assert (= (and b!1868154 res!836440) b!1868153))

(assert (= (and b!1868153 res!836442) b!1868152))

(assert (= (and b!1868152 res!836441) b!1868157))

(assert (= (and b!1868157 res!836438) b!1868156))

(assert (= (and b!1868156 res!836439) b!1868155))

(declare-fun m!2293727 () Bool)

(assert (=> b!1868155 m!2293727))

(declare-fun m!2293729 () Bool)

(assert (=> b!1868153 m!2293729))

(declare-fun m!2293731 () Bool)

(assert (=> b!1868153 m!2293731))

(assert (=> b!1868154 m!2293729))

(assert (=> b!1868154 m!2293731))

(declare-fun m!2293733 () Bool)

(assert (=> b!1868156 m!2293733))

(declare-fun m!2293735 () Bool)

(assert (=> b!1868152 m!2293735))

(declare-fun m!2293737 () Bool)

(assert (=> b!1868157 m!2293737))

(assert (=> start!186908 d!571000))

(declare-fun d!571002 () Bool)

(declare-fun c!304353 () Bool)

(assert (=> d!571002 (= c!304353 ((_ is Node!6880) t!4595))))

(declare-fun e!1192198 () Bool)

(assert (=> d!571002 (= (inv!27396 t!4595) e!1192198)))

(declare-fun b!1868166 () Bool)

(assert (=> b!1868166 (= e!1192198 (inv!27398 t!4595))))

(declare-fun b!1868167 () Bool)

(declare-fun e!1192199 () Bool)

(assert (=> b!1868167 (= e!1192198 e!1192199)))

(declare-fun res!836443 () Bool)

(assert (=> b!1868167 (= res!836443 (not ((_ is Leaf!10088) t!4595)))))

(assert (=> b!1868167 (=> res!836443 e!1192199)))

(declare-fun b!1868168 () Bool)

(assert (=> b!1868168 (= e!1192199 (inv!27399 t!4595))))

(assert (= (and d!571002 c!304353) b!1868166))

(assert (= (and d!571002 (not c!304353)) b!1868167))

(assert (= (and b!1868167 (not res!836443)) b!1868168))

(declare-fun m!2293739 () Bool)

(assert (=> b!1868166 m!2293739))

(declare-fun m!2293741 () Bool)

(assert (=> b!1868168 m!2293741))

(assert (=> start!186908 d!571002))

(declare-fun tp!531728 () Bool)

(declare-fun tp!531726 () Bool)

(declare-fun b!1868187 () Bool)

(declare-fun e!1192210 () Bool)

(assert (=> b!1868187 (= e!1192210 (and (inv!27396 (left!16673 (left!16673 t!4595))) tp!531728 (inv!27396 (right!17003 (left!16673 t!4595))) tp!531726))))

(declare-fun b!1868189 () Bool)

(declare-fun e!1192211 () Bool)

(declare-fun tp!531727 () Bool)

(assert (=> b!1868189 (= e!1192211 tp!531727)))

(declare-fun b!1868188 () Bool)

(assert (=> b!1868188 (= e!1192210 (and (inv!27397 (xs!9762 (left!16673 t!4595))) e!1192211))))

(assert (=> b!1868032 (= tp!531705 (and (inv!27396 (left!16673 t!4595)) e!1192210))))

(assert (= (and b!1868032 ((_ is Node!6880) (left!16673 t!4595))) b!1868187))

(assert (= b!1868188 b!1868189))

(assert (= (and b!1868032 ((_ is Leaf!10088) (left!16673 t!4595))) b!1868188))

(declare-fun m!2293755 () Bool)

(assert (=> b!1868187 m!2293755))

(declare-fun m!2293757 () Bool)

(assert (=> b!1868187 m!2293757))

(declare-fun m!2293759 () Bool)

(assert (=> b!1868188 m!2293759))

(assert (=> b!1868032 m!2293599))

(declare-fun tp!531732 () Bool)

(declare-fun e!1192213 () Bool)

(declare-fun b!1868191 () Bool)

(declare-fun tp!531730 () Bool)

(assert (=> b!1868191 (= e!1192213 (and (inv!27396 (left!16673 (right!17003 t!4595))) tp!531732 (inv!27396 (right!17003 (right!17003 t!4595))) tp!531730))))

(declare-fun b!1868193 () Bool)

(declare-fun e!1192214 () Bool)

(declare-fun tp!531731 () Bool)

(assert (=> b!1868193 (= e!1192214 tp!531731)))

(declare-fun b!1868192 () Bool)

(assert (=> b!1868192 (= e!1192213 (and (inv!27397 (xs!9762 (right!17003 t!4595))) e!1192214))))

(assert (=> b!1868032 (= tp!531703 (and (inv!27396 (right!17003 t!4595)) e!1192213))))

(assert (= (and b!1868032 ((_ is Node!6880) (right!17003 t!4595))) b!1868191))

(assert (= b!1868192 b!1868193))

(assert (= (and b!1868032 ((_ is Leaf!10088) (right!17003 t!4595))) b!1868192))

(declare-fun m!2293761 () Bool)

(assert (=> b!1868191 m!2293761))

(declare-fun m!2293763 () Bool)

(assert (=> b!1868191 m!2293763))

(declare-fun m!2293765 () Bool)

(assert (=> b!1868192 m!2293765))

(assert (=> b!1868032 m!2293601))

(declare-fun b!1868198 () Bool)

(declare-fun e!1192217 () Bool)

(declare-fun tp_is_empty!8679 () Bool)

(declare-fun tp!531735 () Bool)

(assert (=> b!1868198 (= e!1192217 (and tp_is_empty!8679 tp!531735))))

(assert (=> b!1868030 (= tp!531704 e!1192217)))

(assert (= (and b!1868030 ((_ is Cons!20685) (innerList!6940 (xs!9762 t!4595)))) b!1868198))

(check-sat (not d!570998) (not b!1868067) (not b!1868189) (not b!1868066) (not b!1868154) (not d!570966) (not b!1868155) (not d!570952) (not b!1868048) (not b!1868147) (not b!1868157) (not b!1868043) (not b!1868188) (not b!1868192) (not b!1868156) (not b!1868150) (not b!1868108) (not b!1868148) (not b!1868193) (not b!1868191) (not b!1868044) (not b!1868069) (not b!1868153) (not b!1868166) (not d!570972) (not b!1868093) (not b!1868198) (not b!1868047) (not b!1868187) (not b!1868032) (not b!1868146) (not b!1868152) (not b!1868151) (not b!1868064) (not d!570964) (not b!1868168) (not b!1868149) tp_is_empty!8679)
(check-sat)
(get-model)

(declare-fun d!571004 () Bool)

(declare-fun e!1192229 () Bool)

(assert (=> d!571004 e!1192229))

(declare-fun res!836446 () Bool)

(assert (=> d!571004 (=> (not res!836446) (not e!1192229))))

(declare-fun lt!718860 () List!20767)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3080 (List!20767) (InoxSet T!33172))

(assert (=> d!571004 (= res!836446 (= ((_ map implies) (content!3080 lt!718860) (content!3080 (drop!992 lt!718832 1))) ((as const (InoxSet T!33172)) true)))))

(declare-fun e!1192228 () List!20767)

(assert (=> d!571004 (= lt!718860 e!1192228)))

(declare-fun c!304360 () Bool)

(assert (=> d!571004 (= c!304360 (or ((_ is Nil!20685) (drop!992 lt!718832 1)) (<= (- (size!16401 lt!718832) 1) 0)))))

(assert (=> d!571004 (= (take!165 (drop!992 lt!718832 1) (- (size!16401 lt!718832) 1)) lt!718860)))

(declare-fun b!1868213 () Bool)

(declare-fun e!1192226 () Int)

(assert (=> b!1868213 (= e!1192226 (- (size!16401 lt!718832) 1))))

(declare-fun b!1868214 () Bool)

(declare-fun e!1192227 () Int)

(assert (=> b!1868214 (= e!1192229 (= (size!16401 lt!718860) e!1192227))))

(declare-fun c!304362 () Bool)

(assert (=> b!1868214 (= c!304362 (<= (- (size!16401 lt!718832) 1) 0))))

(declare-fun b!1868215 () Bool)

(assert (=> b!1868215 (= e!1192227 0)))

(declare-fun b!1868216 () Bool)

(assert (=> b!1868216 (= e!1192228 (Cons!20685 (h!26086 (drop!992 lt!718832 1)) (take!165 (t!172918 (drop!992 lt!718832 1)) (- (- (size!16401 lt!718832) 1) 1))))))

(declare-fun b!1868217 () Bool)

(assert (=> b!1868217 (= e!1192227 e!1192226)))

(declare-fun c!304361 () Bool)

(assert (=> b!1868217 (= c!304361 (>= (- (size!16401 lt!718832) 1) (size!16401 (drop!992 lt!718832 1))))))

(declare-fun b!1868218 () Bool)

(assert (=> b!1868218 (= e!1192228 Nil!20685)))

(declare-fun b!1868219 () Bool)

(assert (=> b!1868219 (= e!1192226 (size!16401 (drop!992 lt!718832 1)))))

(assert (= (and d!571004 c!304360) b!1868218))

(assert (= (and d!571004 (not c!304360)) b!1868216))

(assert (= (and d!571004 res!836446) b!1868214))

(assert (= (and b!1868214 c!304362) b!1868215))

(assert (= (and b!1868214 (not c!304362)) b!1868217))

(assert (= (and b!1868217 c!304361) b!1868219))

(assert (= (and b!1868217 (not c!304361)) b!1868213))

(declare-fun m!2293767 () Bool)

(assert (=> d!571004 m!2293767))

(assert (=> d!571004 m!2293719))

(declare-fun m!2293769 () Bool)

(assert (=> d!571004 m!2293769))

(declare-fun m!2293771 () Bool)

(assert (=> b!1868214 m!2293771))

(declare-fun m!2293773 () Bool)

(assert (=> b!1868216 m!2293773))

(assert (=> b!1868217 m!2293719))

(declare-fun m!2293775 () Bool)

(assert (=> b!1868217 m!2293775))

(assert (=> b!1868219 m!2293719))

(assert (=> b!1868219 m!2293775))

(assert (=> d!570998 d!571004))

(declare-fun b!1868252 () Bool)

(declare-fun e!1192246 () List!20767)

(assert (=> b!1868252 (= e!1192246 (drop!992 (t!172918 lt!718832) (- 1 1)))))

(declare-fun b!1868253 () Bool)

(declare-fun e!1192247 () Int)

(declare-fun call!115912 () Int)

(assert (=> b!1868253 (= e!1192247 call!115912)))

(declare-fun b!1868254 () Bool)

(declare-fun e!1192250 () Int)

(assert (=> b!1868254 (= e!1192250 0)))

(declare-fun b!1868255 () Bool)

(assert (=> b!1868255 (= e!1192246 lt!718832)))

(declare-fun b!1868256 () Bool)

(declare-fun e!1192248 () Bool)

(declare-fun lt!718864 () List!20767)

(assert (=> b!1868256 (= e!1192248 (= (size!16401 lt!718864) e!1192247))))

(declare-fun c!304375 () Bool)

(assert (=> b!1868256 (= c!304375 (<= 1 0))))

(declare-fun d!571008 () Bool)

(assert (=> d!571008 e!1192248))

(declare-fun res!836461 () Bool)

(assert (=> d!571008 (=> (not res!836461) (not e!1192248))))

(assert (=> d!571008 (= res!836461 (= ((_ map implies) (content!3080 lt!718864) (content!3080 lt!718832)) ((as const (InoxSet T!33172)) true)))))

(declare-fun e!1192249 () List!20767)

(assert (=> d!571008 (= lt!718864 e!1192249)))

(declare-fun c!304372 () Bool)

(assert (=> d!571008 (= c!304372 ((_ is Nil!20685) lt!718832))))

(assert (=> d!571008 (= (drop!992 lt!718832 1) lt!718864)))

(declare-fun b!1868257 () Bool)

(assert (=> b!1868257 (= e!1192250 (- call!115912 1))))

(declare-fun b!1868258 () Bool)

(assert (=> b!1868258 (= e!1192247 e!1192250)))

(declare-fun c!304374 () Bool)

(assert (=> b!1868258 (= c!304374 (>= 1 call!115912))))

(declare-fun bm!115907 () Bool)

(assert (=> bm!115907 (= call!115912 (size!16401 lt!718832))))

(declare-fun b!1868259 () Bool)

(assert (=> b!1868259 (= e!1192249 Nil!20685)))

(declare-fun b!1868260 () Bool)

(assert (=> b!1868260 (= e!1192249 e!1192246)))

(declare-fun c!304373 () Bool)

(assert (=> b!1868260 (= c!304373 (<= 1 0))))

(assert (= (and d!571008 c!304372) b!1868259))

(assert (= (and d!571008 (not c!304372)) b!1868260))

(assert (= (and b!1868260 c!304373) b!1868255))

(assert (= (and b!1868260 (not c!304373)) b!1868252))

(assert (= (and d!571008 res!836461) b!1868256))

(assert (= (and b!1868256 c!304375) b!1868253))

(assert (= (and b!1868256 (not c!304375)) b!1868258))

(assert (= (and b!1868258 c!304374) b!1868254))

(assert (= (and b!1868258 (not c!304374)) b!1868257))

(assert (= (or b!1868253 b!1868258 b!1868257) bm!115907))

(declare-fun m!2293785 () Bool)

(assert (=> b!1868252 m!2293785))

(declare-fun m!2293787 () Bool)

(assert (=> b!1868256 m!2293787))

(declare-fun m!2293789 () Bool)

(assert (=> d!571008 m!2293789))

(declare-fun m!2293791 () Bool)

(assert (=> d!571008 m!2293791))

(assert (=> bm!115907 m!2293591))

(assert (=> d!570998 d!571008))

(declare-fun d!571020 () Bool)

(declare-fun res!836471 () Bool)

(declare-fun e!1192256 () Bool)

(assert (=> d!571020 (=> (not res!836471) (not e!1192256))))

(assert (=> d!571020 (= res!836471 (= (csize!13990 (right!17003 t!4595)) (+ (size!16403 (left!16673 (right!17003 t!4595))) (size!16403 (right!17003 (right!17003 t!4595))))))))

(assert (=> d!571020 (= (inv!27398 (right!17003 t!4595)) e!1192256)))

(declare-fun b!1868274 () Bool)

(declare-fun res!836472 () Bool)

(assert (=> b!1868274 (=> (not res!836472) (not e!1192256))))

(assert (=> b!1868274 (= res!836472 (and (not (= (left!16673 (right!17003 t!4595)) Empty!6880)) (not (= (right!17003 (right!17003 t!4595)) Empty!6880))))))

(declare-fun b!1868275 () Bool)

(declare-fun res!836473 () Bool)

(assert (=> b!1868275 (=> (not res!836473) (not e!1192256))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1868275 (= res!836473 (= (cheight!7091 (right!17003 t!4595)) (+ (max!0 (height!1067 (left!16673 (right!17003 t!4595))) (height!1067 (right!17003 (right!17003 t!4595)))) 1)))))

(declare-fun b!1868276 () Bool)

(assert (=> b!1868276 (= e!1192256 (<= 0 (cheight!7091 (right!17003 t!4595))))))

(assert (= (and d!571020 res!836471) b!1868274))

(assert (= (and b!1868274 res!836472) b!1868275))

(assert (= (and b!1868275 res!836473) b!1868276))

(declare-fun m!2293799 () Bool)

(assert (=> d!571020 m!2293799))

(declare-fun m!2293801 () Bool)

(assert (=> d!571020 m!2293801))

(declare-fun m!2293803 () Bool)

(assert (=> b!1868275 m!2293803))

(declare-fun m!2293805 () Bool)

(assert (=> b!1868275 m!2293805))

(assert (=> b!1868275 m!2293803))

(assert (=> b!1868275 m!2293805))

(declare-fun m!2293807 () Bool)

(assert (=> b!1868275 m!2293807))

(assert (=> b!1868067 d!571020))

(declare-fun d!571024 () Bool)

(assert (=> d!571024 (= (list!8470 (xs!9762 lt!718833)) (innerList!6940 (xs!9762 lt!718833)))))

(assert (=> b!1868043 d!571024))

(declare-fun b!1868287 () Bool)

(declare-fun res!836480 () Bool)

(declare-fun e!1192264 () Bool)

(assert (=> b!1868287 (=> (not res!836480) (not e!1192264))))

(assert (=> b!1868287 (= res!836480 (isBalanced!2181 (left!16673 (right!17003 lt!718833))))))

(declare-fun b!1868289 () Bool)

(declare-fun e!1192263 () Bool)

(assert (=> b!1868289 (= e!1192263 e!1192264)))

(declare-fun res!836479 () Bool)

(assert (=> b!1868289 (=> (not res!836479) (not e!1192264))))

(assert (=> b!1868289 (= res!836479 (<= (- 1) (- (height!1067 (left!16673 (right!17003 lt!718833))) (height!1067 (right!17003 (right!17003 lt!718833))))))))

(declare-fun b!1868290 () Bool)

(assert (=> b!1868290 (= e!1192264 (not (isEmpty!12911 (right!17003 (right!17003 lt!718833)))))))

(declare-fun b!1868291 () Bool)

(declare-fun res!836478 () Bool)

(assert (=> b!1868291 (=> (not res!836478) (not e!1192264))))

(assert (=> b!1868291 (= res!836478 (not (isEmpty!12911 (left!16673 (right!17003 lt!718833)))))))

(declare-fun b!1868292 () Bool)

(declare-fun res!836477 () Bool)

(assert (=> b!1868292 (=> (not res!836477) (not e!1192264))))

(assert (=> b!1868292 (= res!836477 (isBalanced!2181 (right!17003 (right!17003 lt!718833))))))

(declare-fun d!571026 () Bool)

(declare-fun res!836476 () Bool)

(assert (=> d!571026 (=> res!836476 e!1192263)))

(assert (=> d!571026 (= res!836476 (not ((_ is Node!6880) (right!17003 lt!718833))))))

(assert (=> d!571026 (= (isBalanced!2181 (right!17003 lt!718833)) e!1192263)))

(declare-fun b!1868288 () Bool)

(declare-fun res!836481 () Bool)

(assert (=> b!1868288 (=> (not res!836481) (not e!1192264))))

(assert (=> b!1868288 (= res!836481 (<= (- (height!1067 (left!16673 (right!17003 lt!718833))) (height!1067 (right!17003 (right!17003 lt!718833)))) 1))))

(assert (= (and d!571026 (not res!836476)) b!1868289))

(assert (= (and b!1868289 res!836479) b!1868288))

(assert (= (and b!1868288 res!836481) b!1868287))

(assert (= (and b!1868287 res!836480) b!1868292))

(assert (= (and b!1868292 res!836477) b!1868291))

(assert (= (and b!1868291 res!836478) b!1868290))

(declare-fun m!2293809 () Bool)

(assert (=> b!1868290 m!2293809))

(declare-fun m!2293811 () Bool)

(assert (=> b!1868288 m!2293811))

(declare-fun m!2293813 () Bool)

(assert (=> b!1868288 m!2293813))

(assert (=> b!1868289 m!2293811))

(assert (=> b!1868289 m!2293813))

(declare-fun m!2293815 () Bool)

(assert (=> b!1868291 m!2293815))

(declare-fun m!2293817 () Bool)

(assert (=> b!1868287 m!2293817))

(declare-fun m!2293819 () Bool)

(assert (=> b!1868292 m!2293819))

(assert (=> b!1868151 d!571026))

(declare-fun d!571028 () Bool)

(declare-fun c!304382 () Bool)

(assert (=> d!571028 (= c!304382 ((_ is Node!6880) (left!16673 (right!17003 t!4595))))))

(declare-fun e!1192265 () Bool)

(assert (=> d!571028 (= (inv!27396 (left!16673 (right!17003 t!4595))) e!1192265)))

(declare-fun b!1868293 () Bool)

(assert (=> b!1868293 (= e!1192265 (inv!27398 (left!16673 (right!17003 t!4595))))))

(declare-fun b!1868294 () Bool)

(declare-fun e!1192266 () Bool)

(assert (=> b!1868294 (= e!1192265 e!1192266)))

(declare-fun res!836482 () Bool)

(assert (=> b!1868294 (= res!836482 (not ((_ is Leaf!10088) (left!16673 (right!17003 t!4595)))))))

(assert (=> b!1868294 (=> res!836482 e!1192266)))

(declare-fun b!1868295 () Bool)

(assert (=> b!1868295 (= e!1192266 (inv!27399 (left!16673 (right!17003 t!4595))))))

(assert (= (and d!571028 c!304382) b!1868293))

(assert (= (and d!571028 (not c!304382)) b!1868294))

(assert (= (and b!1868294 (not res!836482)) b!1868295))

(declare-fun m!2293821 () Bool)

(assert (=> b!1868293 m!2293821))

(declare-fun m!2293823 () Bool)

(assert (=> b!1868295 m!2293823))

(assert (=> b!1868191 d!571028))

(declare-fun d!571030 () Bool)

(declare-fun c!304383 () Bool)

(assert (=> d!571030 (= c!304383 ((_ is Node!6880) (right!17003 (right!17003 t!4595))))))

(declare-fun e!1192267 () Bool)

(assert (=> d!571030 (= (inv!27396 (right!17003 (right!17003 t!4595))) e!1192267)))

(declare-fun b!1868296 () Bool)

(assert (=> b!1868296 (= e!1192267 (inv!27398 (right!17003 (right!17003 t!4595))))))

(declare-fun b!1868297 () Bool)

(declare-fun e!1192268 () Bool)

(assert (=> b!1868297 (= e!1192267 e!1192268)))

(declare-fun res!836483 () Bool)

(assert (=> b!1868297 (= res!836483 (not ((_ is Leaf!10088) (right!17003 (right!17003 t!4595)))))))

(assert (=> b!1868297 (=> res!836483 e!1192268)))

(declare-fun b!1868298 () Bool)

(assert (=> b!1868298 (= e!1192268 (inv!27399 (right!17003 (right!17003 t!4595))))))

(assert (= (and d!571030 c!304383) b!1868296))

(assert (= (and d!571030 (not c!304383)) b!1868297))

(assert (= (and b!1868297 (not res!836483)) b!1868298))

(declare-fun m!2293825 () Bool)

(assert (=> b!1868296 m!2293825))

(declare-fun m!2293827 () Bool)

(assert (=> b!1868298 m!2293827))

(assert (=> b!1868191 d!571030))

(declare-fun d!571032 () Bool)

(declare-fun lt!718867 () Bool)

(assert (=> d!571032 (= lt!718867 (isEmpty!12912 (list!8469 (right!17003 lt!718833))))))

(assert (=> d!571032 (= lt!718867 (= (size!16403 (right!17003 lt!718833)) 0))))

(assert (=> d!571032 (= (isEmpty!12911 (right!17003 lt!718833)) lt!718867)))

(declare-fun bs!411855 () Bool)

(assert (= bs!411855 d!571032))

(assert (=> bs!411855 m!2293607))

(assert (=> bs!411855 m!2293607))

(declare-fun m!2293829 () Bool)

(assert (=> bs!411855 m!2293829))

(declare-fun m!2293831 () Bool)

(assert (=> bs!411855 m!2293831))

(assert (=> b!1868149 d!571032))

(declare-fun d!571034 () Bool)

(declare-fun lt!718868 () Bool)

(assert (=> d!571034 (= lt!718868 (isEmpty!12912 (list!8469 (left!16673 lt!718833))))))

(assert (=> d!571034 (= lt!718868 (= (size!16403 (left!16673 lt!718833)) 0))))

(assert (=> d!571034 (= (isEmpty!12911 (left!16673 lt!718833)) lt!718868)))

(declare-fun bs!411856 () Bool)

(assert (= bs!411856 d!571034))

(assert (=> bs!411856 m!2293605))

(assert (=> bs!411856 m!2293605))

(declare-fun m!2293833 () Bool)

(assert (=> bs!411856 m!2293833))

(declare-fun m!2293835 () Bool)

(assert (=> bs!411856 m!2293835))

(assert (=> b!1868150 d!571034))

(assert (=> b!1868047 d!570978))

(declare-fun b!1868316 () Bool)

(declare-fun res!836490 () Bool)

(declare-fun e!1192278 () Bool)

(assert (=> b!1868316 (=> (not res!836490) (not e!1192278))))

(declare-fun lt!718872 () List!20767)

(assert (=> b!1868316 (= res!836490 (= (size!16401 lt!718872) (+ (size!16401 (list!8469 (left!16673 t!4595))) (size!16401 (list!8469 (right!17003 t!4595))))))))

(declare-fun b!1868317 () Bool)

(assert (=> b!1868317 (= e!1192278 (or (not (= (list!8469 (right!17003 t!4595)) Nil!20685)) (= lt!718872 (list!8469 (left!16673 t!4595)))))))

(declare-fun d!571036 () Bool)

(assert (=> d!571036 e!1192278))

(declare-fun res!836489 () Bool)

(assert (=> d!571036 (=> (not res!836489) (not e!1192278))))

(assert (=> d!571036 (= res!836489 (= (content!3080 lt!718872) ((_ map or) (content!3080 (list!8469 (left!16673 t!4595))) (content!3080 (list!8469 (right!17003 t!4595))))))))

(declare-fun e!1192277 () List!20767)

(assert (=> d!571036 (= lt!718872 e!1192277)))

(declare-fun c!304389 () Bool)

(assert (=> d!571036 (= c!304389 ((_ is Nil!20685) (list!8469 (left!16673 t!4595))))))

(assert (=> d!571036 (= (++!5607 (list!8469 (left!16673 t!4595)) (list!8469 (right!17003 t!4595))) lt!718872)))

(declare-fun b!1868314 () Bool)

(assert (=> b!1868314 (= e!1192277 (list!8469 (right!17003 t!4595)))))

(declare-fun b!1868315 () Bool)

(assert (=> b!1868315 (= e!1192277 (Cons!20685 (h!26086 (list!8469 (left!16673 t!4595))) (++!5607 (t!172918 (list!8469 (left!16673 t!4595))) (list!8469 (right!17003 t!4595)))))))

(assert (= (and d!571036 c!304389) b!1868314))

(assert (= (and d!571036 (not c!304389)) b!1868315))

(assert (= (and d!571036 res!836489) b!1868316))

(assert (= (and b!1868316 res!836490) b!1868317))

(declare-fun m!2293847 () Bool)

(assert (=> b!1868316 m!2293847))

(assert (=> b!1868316 m!2293613))

(declare-fun m!2293849 () Bool)

(assert (=> b!1868316 m!2293849))

(assert (=> b!1868316 m!2293615))

(declare-fun m!2293851 () Bool)

(assert (=> b!1868316 m!2293851))

(declare-fun m!2293853 () Bool)

(assert (=> d!571036 m!2293853))

(assert (=> d!571036 m!2293613))

(declare-fun m!2293855 () Bool)

(assert (=> d!571036 m!2293855))

(assert (=> d!571036 m!2293615))

(declare-fun m!2293857 () Bool)

(assert (=> d!571036 m!2293857))

(assert (=> b!1868315 m!2293615))

(declare-fun m!2293859 () Bool)

(assert (=> b!1868315 m!2293859))

(assert (=> b!1868048 d!571036))

(declare-fun b!1868331 () Bool)

(declare-fun e!1192286 () List!20767)

(assert (=> b!1868331 (= e!1192286 (++!5607 (list!8469 (left!16673 (left!16673 t!4595))) (list!8469 (right!17003 (left!16673 t!4595)))))))

(declare-fun d!571040 () Bool)

(declare-fun c!304394 () Bool)

(assert (=> d!571040 (= c!304394 ((_ is Empty!6880) (left!16673 t!4595)))))

(declare-fun e!1192285 () List!20767)

(assert (=> d!571040 (= (list!8469 (left!16673 t!4595)) e!1192285)))

(declare-fun b!1868329 () Bool)

(assert (=> b!1868329 (= e!1192285 e!1192286)))

(declare-fun c!304395 () Bool)

(assert (=> b!1868329 (= c!304395 ((_ is Leaf!10088) (left!16673 t!4595)))))

(declare-fun b!1868330 () Bool)

(assert (=> b!1868330 (= e!1192286 (list!8470 (xs!9762 (left!16673 t!4595))))))

(declare-fun b!1868328 () Bool)

(assert (=> b!1868328 (= e!1192285 Nil!20685)))

(assert (= (and d!571040 c!304394) b!1868328))

(assert (= (and d!571040 (not c!304394)) b!1868329))

(assert (= (and b!1868329 c!304395) b!1868330))

(assert (= (and b!1868329 (not c!304395)) b!1868331))

(declare-fun m!2293861 () Bool)

(assert (=> b!1868331 m!2293861))

(declare-fun m!2293863 () Bool)

(assert (=> b!1868331 m!2293863))

(assert (=> b!1868331 m!2293861))

(assert (=> b!1868331 m!2293863))

(declare-fun m!2293865 () Bool)

(assert (=> b!1868331 m!2293865))

(declare-fun m!2293867 () Bool)

(assert (=> b!1868330 m!2293867))

(assert (=> b!1868048 d!571040))

(declare-fun b!1868343 () Bool)

(declare-fun e!1192292 () List!20767)

(assert (=> b!1868343 (= e!1192292 (++!5607 (list!8469 (left!16673 (right!17003 t!4595))) (list!8469 (right!17003 (right!17003 t!4595)))))))

(declare-fun d!571042 () Bool)

(declare-fun c!304400 () Bool)

(assert (=> d!571042 (= c!304400 ((_ is Empty!6880) (right!17003 t!4595)))))

(declare-fun e!1192291 () List!20767)

(assert (=> d!571042 (= (list!8469 (right!17003 t!4595)) e!1192291)))

(declare-fun b!1868341 () Bool)

(assert (=> b!1868341 (= e!1192291 e!1192292)))

(declare-fun c!304401 () Bool)

(assert (=> b!1868341 (= c!304401 ((_ is Leaf!10088) (right!17003 t!4595)))))

(declare-fun b!1868342 () Bool)

(assert (=> b!1868342 (= e!1192292 (list!8470 (xs!9762 (right!17003 t!4595))))))

(declare-fun b!1868340 () Bool)

(assert (=> b!1868340 (= e!1192291 Nil!20685)))

(assert (= (and d!571042 c!304400) b!1868340))

(assert (= (and d!571042 (not c!304400)) b!1868341))

(assert (= (and b!1868341 c!304401) b!1868342))

(assert (= (and b!1868341 (not c!304401)) b!1868343))

(declare-fun m!2293869 () Bool)

(assert (=> b!1868343 m!2293869))

(declare-fun m!2293871 () Bool)

(assert (=> b!1868343 m!2293871))

(assert (=> b!1868343 m!2293869))

(assert (=> b!1868343 m!2293871))

(declare-fun m!2293873 () Bool)

(assert (=> b!1868343 m!2293873))

(declare-fun m!2293875 () Bool)

(assert (=> b!1868342 m!2293875))

(assert (=> b!1868048 d!571042))

(declare-fun d!571044 () Bool)

(assert (=> d!571044 (= (inv!27397 (xs!9762 (right!17003 t!4595))) (<= (size!16401 (innerList!6940 (xs!9762 (right!17003 t!4595)))) 2147483647))))

(declare-fun bs!411857 () Bool)

(assert (= bs!411857 d!571044))

(declare-fun m!2293877 () Bool)

(assert (=> bs!411857 m!2293877))

(assert (=> b!1868192 d!571044))

(declare-fun b!1868346 () Bool)

(declare-fun res!836494 () Bool)

(declare-fun e!1192294 () Bool)

(assert (=> b!1868346 (=> (not res!836494) (not e!1192294))))

(declare-fun lt!718875 () List!20767)

(assert (=> b!1868346 (= res!836494 (= (size!16401 lt!718875) (+ (size!16401 (list!8469 (left!16673 lt!718833))) (size!16401 (list!8469 (right!17003 lt!718833))))))))

(declare-fun b!1868347 () Bool)

(assert (=> b!1868347 (= e!1192294 (or (not (= (list!8469 (right!17003 lt!718833)) Nil!20685)) (= lt!718875 (list!8469 (left!16673 lt!718833)))))))

(declare-fun d!571046 () Bool)

(assert (=> d!571046 e!1192294))

(declare-fun res!836493 () Bool)

(assert (=> d!571046 (=> (not res!836493) (not e!1192294))))

(assert (=> d!571046 (= res!836493 (= (content!3080 lt!718875) ((_ map or) (content!3080 (list!8469 (left!16673 lt!718833))) (content!3080 (list!8469 (right!17003 lt!718833))))))))

(declare-fun e!1192293 () List!20767)

(assert (=> d!571046 (= lt!718875 e!1192293)))

(declare-fun c!304402 () Bool)

(assert (=> d!571046 (= c!304402 ((_ is Nil!20685) (list!8469 (left!16673 lt!718833))))))

(assert (=> d!571046 (= (++!5607 (list!8469 (left!16673 lt!718833)) (list!8469 (right!17003 lt!718833))) lt!718875)))

(declare-fun b!1868344 () Bool)

(assert (=> b!1868344 (= e!1192293 (list!8469 (right!17003 lt!718833)))))

(declare-fun b!1868345 () Bool)

(assert (=> b!1868345 (= e!1192293 (Cons!20685 (h!26086 (list!8469 (left!16673 lt!718833))) (++!5607 (t!172918 (list!8469 (left!16673 lt!718833))) (list!8469 (right!17003 lt!718833)))))))

(assert (= (and d!571046 c!304402) b!1868344))

(assert (= (and d!571046 (not c!304402)) b!1868345))

(assert (= (and d!571046 res!836493) b!1868346))

(assert (= (and b!1868346 res!836494) b!1868347))

(declare-fun m!2293879 () Bool)

(assert (=> b!1868346 m!2293879))

(assert (=> b!1868346 m!2293605))

(declare-fun m!2293881 () Bool)

(assert (=> b!1868346 m!2293881))

(assert (=> b!1868346 m!2293607))

(declare-fun m!2293883 () Bool)

(assert (=> b!1868346 m!2293883))

(declare-fun m!2293885 () Bool)

(assert (=> d!571046 m!2293885))

(assert (=> d!571046 m!2293605))

(declare-fun m!2293887 () Bool)

(assert (=> d!571046 m!2293887))

(assert (=> d!571046 m!2293607))

(declare-fun m!2293889 () Bool)

(assert (=> d!571046 m!2293889))

(assert (=> b!1868345 m!2293607))

(declare-fun m!2293891 () Bool)

(assert (=> b!1868345 m!2293891))

(assert (=> b!1868044 d!571046))

(declare-fun b!1868351 () Bool)

(declare-fun e!1192296 () List!20767)

(assert (=> b!1868351 (= e!1192296 (++!5607 (list!8469 (left!16673 (left!16673 lt!718833))) (list!8469 (right!17003 (left!16673 lt!718833)))))))

(declare-fun d!571048 () Bool)

(declare-fun c!304403 () Bool)

(assert (=> d!571048 (= c!304403 ((_ is Empty!6880) (left!16673 lt!718833)))))

(declare-fun e!1192295 () List!20767)

(assert (=> d!571048 (= (list!8469 (left!16673 lt!718833)) e!1192295)))

(declare-fun b!1868349 () Bool)

(assert (=> b!1868349 (= e!1192295 e!1192296)))

(declare-fun c!304404 () Bool)

(assert (=> b!1868349 (= c!304404 ((_ is Leaf!10088) (left!16673 lt!718833)))))

(declare-fun b!1868350 () Bool)

(assert (=> b!1868350 (= e!1192296 (list!8470 (xs!9762 (left!16673 lt!718833))))))

(declare-fun b!1868348 () Bool)

(assert (=> b!1868348 (= e!1192295 Nil!20685)))

(assert (= (and d!571048 c!304403) b!1868348))

(assert (= (and d!571048 (not c!304403)) b!1868349))

(assert (= (and b!1868349 c!304404) b!1868350))

(assert (= (and b!1868349 (not c!304404)) b!1868351))

(declare-fun m!2293893 () Bool)

(assert (=> b!1868351 m!2293893))

(declare-fun m!2293895 () Bool)

(assert (=> b!1868351 m!2293895))

(assert (=> b!1868351 m!2293893))

(assert (=> b!1868351 m!2293895))

(declare-fun m!2293897 () Bool)

(assert (=> b!1868351 m!2293897))

(declare-fun m!2293899 () Bool)

(assert (=> b!1868350 m!2293899))

(assert (=> b!1868044 d!571048))

(declare-fun b!1868355 () Bool)

(declare-fun e!1192298 () List!20767)

(assert (=> b!1868355 (= e!1192298 (++!5607 (list!8469 (left!16673 (right!17003 lt!718833))) (list!8469 (right!17003 (right!17003 lt!718833)))))))

(declare-fun d!571050 () Bool)

(declare-fun c!304405 () Bool)

(assert (=> d!571050 (= c!304405 ((_ is Empty!6880) (right!17003 lt!718833)))))

(declare-fun e!1192297 () List!20767)

(assert (=> d!571050 (= (list!8469 (right!17003 lt!718833)) e!1192297)))

(declare-fun b!1868353 () Bool)

(assert (=> b!1868353 (= e!1192297 e!1192298)))

(declare-fun c!304406 () Bool)

(assert (=> b!1868353 (= c!304406 ((_ is Leaf!10088) (right!17003 lt!718833)))))

(declare-fun b!1868354 () Bool)

(assert (=> b!1868354 (= e!1192298 (list!8470 (xs!9762 (right!17003 lt!718833))))))

(declare-fun b!1868352 () Bool)

(assert (=> b!1868352 (= e!1192297 Nil!20685)))

(assert (= (and d!571050 c!304405) b!1868352))

(assert (= (and d!571050 (not c!304405)) b!1868353))

(assert (= (and b!1868353 c!304406) b!1868354))

(assert (= (and b!1868353 (not c!304406)) b!1868355))

(declare-fun m!2293901 () Bool)

(assert (=> b!1868355 m!2293901))

(declare-fun m!2293903 () Bool)

(assert (=> b!1868355 m!2293903))

(assert (=> b!1868355 m!2293901))

(assert (=> b!1868355 m!2293903))

(declare-fun m!2293905 () Bool)

(assert (=> b!1868355 m!2293905))

(declare-fun m!2293907 () Bool)

(assert (=> b!1868354 m!2293907))

(assert (=> b!1868044 d!571050))

(declare-fun d!571052 () Bool)

(declare-fun res!836500 () Bool)

(declare-fun e!1192306 () Bool)

(assert (=> d!571052 (=> (not res!836500) (not e!1192306))))

(assert (=> d!571052 (= res!836500 (<= (size!16401 (list!8470 (xs!9762 (right!17003 t!4595)))) 512))))

(assert (=> d!571052 (= (inv!27399 (right!17003 t!4595)) e!1192306)))

(declare-fun b!1868369 () Bool)

(declare-fun res!836501 () Bool)

(assert (=> b!1868369 (=> (not res!836501) (not e!1192306))))

(assert (=> b!1868369 (= res!836501 (= (csize!13991 (right!17003 t!4595)) (size!16401 (list!8470 (xs!9762 (right!17003 t!4595))))))))

(declare-fun b!1868370 () Bool)

(assert (=> b!1868370 (= e!1192306 (and (> (csize!13991 (right!17003 t!4595)) 0) (<= (csize!13991 (right!17003 t!4595)) 512)))))

(assert (= (and d!571052 res!836500) b!1868369))

(assert (= (and b!1868369 res!836501) b!1868370))

(assert (=> d!571052 m!2293875))

(assert (=> d!571052 m!2293875))

(declare-fun m!2293917 () Bool)

(assert (=> d!571052 m!2293917))

(assert (=> b!1868369 m!2293875))

(assert (=> b!1868369 m!2293875))

(assert (=> b!1868369 m!2293917))

(assert (=> b!1868069 d!571052))

(declare-fun d!571058 () Bool)

(assert (=> d!571058 (= (inv!27397 (xs!9762 (left!16673 t!4595))) (<= (size!16401 (innerList!6940 (xs!9762 (left!16673 t!4595)))) 2147483647))))

(declare-fun bs!411858 () Bool)

(assert (= bs!411858 d!571058))

(declare-fun m!2293919 () Bool)

(assert (=> bs!411858 m!2293919))

(assert (=> b!1868188 d!571058))

(declare-fun d!571060 () Bool)

(declare-fun c!304411 () Bool)

(assert (=> d!571060 (= c!304411 ((_ is Node!6880) (left!16673 (left!16673 t!4595))))))

(declare-fun e!1192307 () Bool)

(assert (=> d!571060 (= (inv!27396 (left!16673 (left!16673 t!4595))) e!1192307)))

(declare-fun b!1868371 () Bool)

(assert (=> b!1868371 (= e!1192307 (inv!27398 (left!16673 (left!16673 t!4595))))))

(declare-fun b!1868372 () Bool)

(declare-fun e!1192308 () Bool)

(assert (=> b!1868372 (= e!1192307 e!1192308)))

(declare-fun res!836502 () Bool)

(assert (=> b!1868372 (= res!836502 (not ((_ is Leaf!10088) (left!16673 (left!16673 t!4595)))))))

(assert (=> b!1868372 (=> res!836502 e!1192308)))

(declare-fun b!1868373 () Bool)

(assert (=> b!1868373 (= e!1192308 (inv!27399 (left!16673 (left!16673 t!4595))))))

(assert (= (and d!571060 c!304411) b!1868371))

(assert (= (and d!571060 (not c!304411)) b!1868372))

(assert (= (and b!1868372 (not res!836502)) b!1868373))

(declare-fun m!2293921 () Bool)

(assert (=> b!1868371 m!2293921))

(declare-fun m!2293923 () Bool)

(assert (=> b!1868373 m!2293923))

(assert (=> b!1868187 d!571060))

(declare-fun d!571062 () Bool)

(declare-fun c!304412 () Bool)

(assert (=> d!571062 (= c!304412 ((_ is Node!6880) (right!17003 (left!16673 t!4595))))))

(declare-fun e!1192309 () Bool)

(assert (=> d!571062 (= (inv!27396 (right!17003 (left!16673 t!4595))) e!1192309)))

(declare-fun b!1868374 () Bool)

(assert (=> b!1868374 (= e!1192309 (inv!27398 (right!17003 (left!16673 t!4595))))))

(declare-fun b!1868375 () Bool)

(declare-fun e!1192310 () Bool)

(assert (=> b!1868375 (= e!1192309 e!1192310)))

(declare-fun res!836503 () Bool)

(assert (=> b!1868375 (= res!836503 (not ((_ is Leaf!10088) (right!17003 (left!16673 t!4595)))))))

(assert (=> b!1868375 (=> res!836503 e!1192310)))

(declare-fun b!1868376 () Bool)

(assert (=> b!1868376 (= e!1192310 (inv!27399 (right!17003 (left!16673 t!4595))))))

(assert (= (and d!571062 c!304412) b!1868374))

(assert (= (and d!571062 (not c!304412)) b!1868375))

(assert (= (and b!1868375 (not res!836503)) b!1868376))

(declare-fun m!2293925 () Bool)

(assert (=> b!1868374 m!2293925))

(declare-fun m!2293927 () Bool)

(assert (=> b!1868376 m!2293927))

(assert (=> b!1868187 d!571062))

(declare-fun d!571064 () Bool)

(declare-fun res!836504 () Bool)

(declare-fun e!1192311 () Bool)

(assert (=> d!571064 (=> (not res!836504) (not e!1192311))))

(assert (=> d!571064 (= res!836504 (= (csize!13990 (left!16673 t!4595)) (+ (size!16403 (left!16673 (left!16673 t!4595))) (size!16403 (right!17003 (left!16673 t!4595))))))))

(assert (=> d!571064 (= (inv!27398 (left!16673 t!4595)) e!1192311)))

(declare-fun b!1868377 () Bool)

(declare-fun res!836505 () Bool)

(assert (=> b!1868377 (=> (not res!836505) (not e!1192311))))

(assert (=> b!1868377 (= res!836505 (and (not (= (left!16673 (left!16673 t!4595)) Empty!6880)) (not (= (right!17003 (left!16673 t!4595)) Empty!6880))))))

(declare-fun b!1868378 () Bool)

(declare-fun res!836506 () Bool)

(assert (=> b!1868378 (=> (not res!836506) (not e!1192311))))

(assert (=> b!1868378 (= res!836506 (= (cheight!7091 (left!16673 t!4595)) (+ (max!0 (height!1067 (left!16673 (left!16673 t!4595))) (height!1067 (right!17003 (left!16673 t!4595)))) 1)))))

(declare-fun b!1868379 () Bool)

(assert (=> b!1868379 (= e!1192311 (<= 0 (cheight!7091 (left!16673 t!4595))))))

(assert (= (and d!571064 res!836504) b!1868377))

(assert (= (and b!1868377 res!836505) b!1868378))

(assert (= (and b!1868378 res!836506) b!1868379))

(declare-fun m!2293929 () Bool)

(assert (=> d!571064 m!2293929))

(declare-fun m!2293931 () Bool)

(assert (=> d!571064 m!2293931))

(declare-fun m!2293933 () Bool)

(assert (=> b!1868378 m!2293933))

(declare-fun m!2293935 () Bool)

(assert (=> b!1868378 m!2293935))

(assert (=> b!1868378 m!2293933))

(assert (=> b!1868378 m!2293935))

(declare-fun m!2293937 () Bool)

(assert (=> b!1868378 m!2293937))

(assert (=> b!1868064 d!571064))

(declare-fun d!571066 () Bool)

(assert (=> d!571066 (= (isEmpty!12912 (list!8469 t!4595)) ((_ is Nil!20685) (list!8469 t!4595)))))

(assert (=> d!570964 d!571066))

(assert (=> d!570964 d!570950))

(declare-fun d!571072 () Bool)

(declare-fun lt!718883 () Int)

(assert (=> d!571072 (= lt!718883 (size!16401 (list!8469 t!4595)))))

(assert (=> d!571072 (= lt!718883 (ite ((_ is Empty!6880) t!4595) 0 (ite ((_ is Leaf!10088) t!4595) (csize!13991 t!4595) (csize!13990 t!4595))))))

(assert (=> d!571072 (= (size!16403 t!4595) lt!718883)))

(declare-fun bs!411861 () Bool)

(assert (= bs!411861 d!571072))

(assert (=> bs!411861 m!2293573))

(assert (=> bs!411861 m!2293573))

(declare-fun m!2293977 () Bool)

(assert (=> bs!411861 m!2293977))

(assert (=> d!570964 d!571072))

(declare-fun d!571088 () Bool)

(assert (=> d!571088 (= (height!1067 (left!16673 t!4595)) (ite ((_ is Empty!6880) (left!16673 t!4595)) 0 (ite ((_ is Leaf!10088) (left!16673 t!4595)) 1 (cheight!7091 (left!16673 t!4595)))))))

(assert (=> b!1868153 d!571088))

(declare-fun d!571096 () Bool)

(assert (=> d!571096 (= (height!1067 (right!17003 t!4595)) (ite ((_ is Empty!6880) (right!17003 t!4595)) 0 (ite ((_ is Leaf!10088) (right!17003 t!4595)) 1 (cheight!7091 (right!17003 t!4595)))))))

(assert (=> b!1868153 d!571096))

(assert (=> b!1868154 d!571088))

(assert (=> b!1868154 d!571096))

(declare-fun b!1868405 () Bool)

(declare-fun res!836530 () Bool)

(declare-fun e!1192324 () Bool)

(assert (=> b!1868405 (=> (not res!836530) (not e!1192324))))

(assert (=> b!1868405 (= res!836530 (isBalanced!2181 (left!16673 (left!16673 t!4595))))))

(declare-fun b!1868407 () Bool)

(declare-fun e!1192323 () Bool)

(assert (=> b!1868407 (= e!1192323 e!1192324)))

(declare-fun res!836529 () Bool)

(assert (=> b!1868407 (=> (not res!836529) (not e!1192324))))

(assert (=> b!1868407 (= res!836529 (<= (- 1) (- (height!1067 (left!16673 (left!16673 t!4595))) (height!1067 (right!17003 (left!16673 t!4595))))))))

(declare-fun b!1868408 () Bool)

(assert (=> b!1868408 (= e!1192324 (not (isEmpty!12911 (right!17003 (left!16673 t!4595)))))))

(declare-fun b!1868409 () Bool)

(declare-fun res!836528 () Bool)

(assert (=> b!1868409 (=> (not res!836528) (not e!1192324))))

(assert (=> b!1868409 (= res!836528 (not (isEmpty!12911 (left!16673 (left!16673 t!4595)))))))

(declare-fun b!1868410 () Bool)

(declare-fun res!836527 () Bool)

(assert (=> b!1868410 (=> (not res!836527) (not e!1192324))))

(assert (=> b!1868410 (= res!836527 (isBalanced!2181 (right!17003 (left!16673 t!4595))))))

(declare-fun d!571098 () Bool)

(declare-fun res!836526 () Bool)

(assert (=> d!571098 (=> res!836526 e!1192323)))

(assert (=> d!571098 (= res!836526 (not ((_ is Node!6880) (left!16673 t!4595))))))

(assert (=> d!571098 (= (isBalanced!2181 (left!16673 t!4595)) e!1192323)))

(declare-fun b!1868406 () Bool)

(declare-fun res!836531 () Bool)

(assert (=> b!1868406 (=> (not res!836531) (not e!1192324))))

(assert (=> b!1868406 (= res!836531 (<= (- (height!1067 (left!16673 (left!16673 t!4595))) (height!1067 (right!17003 (left!16673 t!4595)))) 1))))

(assert (= (and d!571098 (not res!836526)) b!1868407))

(assert (= (and b!1868407 res!836529) b!1868406))

(assert (= (and b!1868406 res!836531) b!1868405))

(assert (= (and b!1868405 res!836530) b!1868410))

(assert (= (and b!1868410 res!836527) b!1868409))

(assert (= (and b!1868409 res!836528) b!1868408))

(declare-fun m!2294001 () Bool)

(assert (=> b!1868408 m!2294001))

(assert (=> b!1868406 m!2293933))

(assert (=> b!1868406 m!2293935))

(assert (=> b!1868407 m!2293933))

(assert (=> b!1868407 m!2293935))

(declare-fun m!2294003 () Bool)

(assert (=> b!1868409 m!2294003))

(declare-fun m!2294005 () Bool)

(assert (=> b!1868405 m!2294005))

(declare-fun m!2294007 () Bool)

(assert (=> b!1868410 m!2294007))

(assert (=> b!1868152 d!571098))

(assert (=> d!570966 d!570996))

(assert (=> d!570966 d!570998))

(assert (=> d!570966 d!570968))

(declare-fun d!571104 () Bool)

(assert (=> d!571104 (= (tail!2833 lt!718832) (slice!581 lt!718832 1 (size!16401 lt!718832)))))

(assert (=> d!571104 true))

(declare-fun _$13!1420 () Unit!35303)

(assert (=> d!571104 (= (choose!11744 lt!718832) _$13!1420)))

(declare-fun bs!411865 () Bool)

(assert (= bs!411865 d!571104))

(assert (=> bs!411865 m!2293587))

(assert (=> bs!411865 m!2293591))

(assert (=> bs!411865 m!2293591))

(assert (=> bs!411865 m!2293593))

(assert (=> d!570966 d!571104))

(declare-fun d!571108 () Bool)

(declare-fun lt!718888 () Int)

(assert (=> d!571108 (>= lt!718888 0)))

(declare-fun e!1192327 () Int)

(assert (=> d!571108 (= lt!718888 e!1192327)))

(declare-fun c!304416 () Bool)

(assert (=> d!571108 (= c!304416 ((_ is Nil!20685) (t!172918 lt!718832)))))

(assert (=> d!571108 (= (size!16401 (t!172918 lt!718832)) lt!718888)))

(declare-fun b!1868417 () Bool)

(assert (=> b!1868417 (= e!1192327 0)))

(declare-fun b!1868418 () Bool)

(assert (=> b!1868418 (= e!1192327 (+ 1 (size!16401 (t!172918 (t!172918 lt!718832)))))))

(assert (= (and d!571108 c!304416) b!1868417))

(assert (= (and d!571108 (not c!304416)) b!1868418))

(declare-fun m!2294021 () Bool)

(assert (=> b!1868418 m!2294021))

(assert (=> b!1868093 d!571108))

(declare-fun d!571110 () Bool)

(declare-fun lt!718889 () Bool)

(assert (=> d!571110 (= lt!718889 (isEmpty!12912 (list!8469 (right!17003 t!4595))))))

(assert (=> d!571110 (= lt!718889 (= (size!16403 (right!17003 t!4595)) 0))))

(assert (=> d!571110 (= (isEmpty!12911 (right!17003 t!4595)) lt!718889)))

(declare-fun bs!411867 () Bool)

(assert (= bs!411867 d!571110))

(assert (=> bs!411867 m!2293615))

(assert (=> bs!411867 m!2293615))

(declare-fun m!2294023 () Bool)

(assert (=> bs!411867 m!2294023))

(declare-fun m!2294025 () Bool)

(assert (=> bs!411867 m!2294025))

(assert (=> b!1868155 d!571110))

(declare-fun d!571114 () Bool)

(declare-fun lt!718890 () Int)

(assert (=> d!571114 (>= lt!718890 0)))

(declare-fun e!1192328 () Int)

(assert (=> d!571114 (= lt!718890 e!1192328)))

(declare-fun c!304417 () Bool)

(assert (=> d!571114 (= c!304417 ((_ is Nil!20685) (innerList!6940 (xs!9762 t!4595))))))

(assert (=> d!571114 (= (size!16401 (innerList!6940 (xs!9762 t!4595))) lt!718890)))

(declare-fun b!1868419 () Bool)

(assert (=> b!1868419 (= e!1192328 0)))

(declare-fun b!1868420 () Bool)

(assert (=> b!1868420 (= e!1192328 (+ 1 (size!16401 (t!172918 (innerList!6940 (xs!9762 t!4595))))))))

(assert (= (and d!571114 c!304417) b!1868419))

(assert (= (and d!571114 (not c!304417)) b!1868420))

(declare-fun m!2294029 () Bool)

(assert (=> b!1868420 m!2294029))

(assert (=> d!570952 d!571114))

(declare-fun d!571118 () Bool)

(declare-fun res!836540 () Bool)

(declare-fun e!1192330 () Bool)

(assert (=> d!571118 (=> (not res!836540) (not e!1192330))))

(assert (=> d!571118 (= res!836540 (<= (size!16401 (list!8470 (xs!9762 (left!16673 t!4595)))) 512))))

(assert (=> d!571118 (= (inv!27399 (left!16673 t!4595)) e!1192330)))

(declare-fun b!1868423 () Bool)

(declare-fun res!836541 () Bool)

(assert (=> b!1868423 (=> (not res!836541) (not e!1192330))))

(assert (=> b!1868423 (= res!836541 (= (csize!13991 (left!16673 t!4595)) (size!16401 (list!8470 (xs!9762 (left!16673 t!4595))))))))

(declare-fun b!1868424 () Bool)

(assert (=> b!1868424 (= e!1192330 (and (> (csize!13991 (left!16673 t!4595)) 0) (<= (csize!13991 (left!16673 t!4595)) 512)))))

(assert (= (and d!571118 res!836540) b!1868423))

(assert (= (and b!1868423 res!836541) b!1868424))

(assert (=> d!571118 m!2293867))

(assert (=> d!571118 m!2293867))

(declare-fun m!2294035 () Bool)

(assert (=> d!571118 m!2294035))

(assert (=> b!1868423 m!2293867))

(assert (=> b!1868423 m!2293867))

(assert (=> b!1868423 m!2294035))

(assert (=> b!1868066 d!571118))

(declare-fun d!571122 () Bool)

(declare-fun res!836548 () Bool)

(declare-fun e!1192333 () Bool)

(assert (=> d!571122 (=> (not res!836548) (not e!1192333))))

(assert (=> d!571122 (= res!836548 (= (csize!13990 t!4595) (+ (size!16403 (left!16673 t!4595)) (size!16403 (right!17003 t!4595)))))))

(assert (=> d!571122 (= (inv!27398 t!4595) e!1192333)))

(declare-fun b!1868431 () Bool)

(declare-fun res!836549 () Bool)

(assert (=> b!1868431 (=> (not res!836549) (not e!1192333))))

(assert (=> b!1868431 (= res!836549 (and (not (= (left!16673 t!4595) Empty!6880)) (not (= (right!17003 t!4595) Empty!6880))))))

(declare-fun b!1868432 () Bool)

(declare-fun res!836550 () Bool)

(assert (=> b!1868432 (=> (not res!836550) (not e!1192333))))

(assert (=> b!1868432 (= res!836550 (= (cheight!7091 t!4595) (+ (max!0 (height!1067 (left!16673 t!4595)) (height!1067 (right!17003 t!4595))) 1)))))

(declare-fun b!1868433 () Bool)

(assert (=> b!1868433 (= e!1192333 (<= 0 (cheight!7091 t!4595)))))

(assert (= (and d!571122 res!836548) b!1868431))

(assert (= (and b!1868431 res!836549) b!1868432))

(assert (= (and b!1868432 res!836550) b!1868433))

(declare-fun m!2294037 () Bool)

(assert (=> d!571122 m!2294037))

(assert (=> d!571122 m!2294025))

(assert (=> b!1868432 m!2293729))

(assert (=> b!1868432 m!2293731))

(assert (=> b!1868432 m!2293729))

(assert (=> b!1868432 m!2293731))

(declare-fun m!2294043 () Bool)

(assert (=> b!1868432 m!2294043))

(assert (=> b!1868166 d!571122))

(declare-fun b!1868434 () Bool)

(declare-fun res!836555 () Bool)

(declare-fun e!1192335 () Bool)

(assert (=> b!1868434 (=> (not res!836555) (not e!1192335))))

(assert (=> b!1868434 (= res!836555 (isBalanced!2181 (left!16673 (right!17003 t!4595))))))

(declare-fun b!1868436 () Bool)

(declare-fun e!1192334 () Bool)

(assert (=> b!1868436 (= e!1192334 e!1192335)))

(declare-fun res!836554 () Bool)

(assert (=> b!1868436 (=> (not res!836554) (not e!1192335))))

(assert (=> b!1868436 (= res!836554 (<= (- 1) (- (height!1067 (left!16673 (right!17003 t!4595))) (height!1067 (right!17003 (right!17003 t!4595))))))))

(declare-fun b!1868437 () Bool)

(assert (=> b!1868437 (= e!1192335 (not (isEmpty!12911 (right!17003 (right!17003 t!4595)))))))

(declare-fun b!1868438 () Bool)

(declare-fun res!836553 () Bool)

(assert (=> b!1868438 (=> (not res!836553) (not e!1192335))))

(assert (=> b!1868438 (= res!836553 (not (isEmpty!12911 (left!16673 (right!17003 t!4595)))))))

(declare-fun b!1868439 () Bool)

(declare-fun res!836552 () Bool)

(assert (=> b!1868439 (=> (not res!836552) (not e!1192335))))

(assert (=> b!1868439 (= res!836552 (isBalanced!2181 (right!17003 (right!17003 t!4595))))))

(declare-fun d!571124 () Bool)

(declare-fun res!836551 () Bool)

(assert (=> d!571124 (=> res!836551 e!1192334)))

(assert (=> d!571124 (= res!836551 (not ((_ is Node!6880) (right!17003 t!4595))))))

(assert (=> d!571124 (= (isBalanced!2181 (right!17003 t!4595)) e!1192334)))

(declare-fun b!1868435 () Bool)

(declare-fun res!836556 () Bool)

(assert (=> b!1868435 (=> (not res!836556) (not e!1192335))))

(assert (=> b!1868435 (= res!836556 (<= (- (height!1067 (left!16673 (right!17003 t!4595))) (height!1067 (right!17003 (right!17003 t!4595)))) 1))))

(assert (= (and d!571124 (not res!836551)) b!1868436))

(assert (= (and b!1868436 res!836554) b!1868435))

(assert (= (and b!1868435 res!836556) b!1868434))

(assert (= (and b!1868434 res!836555) b!1868439))

(assert (= (and b!1868439 res!836552) b!1868438))

(assert (= (and b!1868438 res!836553) b!1868437))

(declare-fun m!2294049 () Bool)

(assert (=> b!1868437 m!2294049))

(assert (=> b!1868435 m!2293803))

(assert (=> b!1868435 m!2293805))

(assert (=> b!1868436 m!2293803))

(assert (=> b!1868436 m!2293805))

(declare-fun m!2294051 () Bool)

(assert (=> b!1868438 m!2294051))

(declare-fun m!2294053 () Bool)

(assert (=> b!1868434 m!2294053))

(declare-fun m!2294055 () Bool)

(assert (=> b!1868439 m!2294055))

(assert (=> b!1868157 d!571124))

(declare-fun d!571128 () Bool)

(declare-fun lt!718891 () Bool)

(assert (=> d!571128 (= lt!718891 (isEmpty!12912 (list!8469 (left!16673 t!4595))))))

(assert (=> d!571128 (= lt!718891 (= (size!16403 (left!16673 t!4595)) 0))))

(assert (=> d!571128 (= (isEmpty!12911 (left!16673 t!4595)) lt!718891)))

(declare-fun bs!411869 () Bool)

(assert (= bs!411869 d!571128))

(assert (=> bs!411869 m!2293613))

(assert (=> bs!411869 m!2293613))

(declare-fun m!2294057 () Bool)

(assert (=> bs!411869 m!2294057))

(assert (=> bs!411869 m!2294037))

(assert (=> b!1868156 d!571128))

(declare-fun d!571130 () Bool)

(assert (=> d!571130 (= (slice!581 (list!8470 (xs!9762 t!4595)) 1 (csize!13991 t!4595)) (take!165 (drop!992 (list!8470 (xs!9762 t!4595)) 1) (- (csize!13991 t!4595) 1)))))

(declare-fun bs!411870 () Bool)

(assert (= bs!411870 d!571130))

(assert (=> bs!411870 m!2293583))

(declare-fun m!2294059 () Bool)

(assert (=> bs!411870 m!2294059))

(assert (=> bs!411870 m!2294059))

(declare-fun m!2294061 () Bool)

(assert (=> bs!411870 m!2294061))

(assert (=> d!570972 d!571130))

(assert (=> d!570972 d!570978))

(declare-fun d!571132 () Bool)

(declare-fun _$4!1091 () IArray!13765)

(assert (=> d!571132 (= _$4!1091 (IArray!13766 (slice!581 (list!8470 (xs!9762 t!4595)) 1 (csize!13991 t!4595))))))

(declare-fun e!1192342 () Bool)

(assert (=> d!571132 (and (inv!27397 _$4!1091) e!1192342)))

(assert (=> d!571132 (= (choose!11745 (xs!9762 t!4595) 1 (csize!13991 t!4595)) _$4!1091)))

(declare-fun b!1868450 () Bool)

(declare-fun tp!531738 () Bool)

(assert (=> b!1868450 (= e!1192342 tp!531738)))

(assert (= d!571132 b!1868450))

(assert (=> d!571132 m!2293583))

(assert (=> d!571132 m!2293583))

(assert (=> d!571132 m!2293673))

(declare-fun m!2294063 () Bool)

(assert (=> d!571132 m!2294063))

(assert (=> d!570972 d!571132))

(declare-fun d!571134 () Bool)

(declare-fun lt!718896 () Int)

(assert (=> d!571134 (= lt!718896 (size!16401 (list!8470 (xs!9762 t!4595))))))

(declare-fun choose!11746 (IArray!13765) Int)

(assert (=> d!571134 (= lt!718896 (choose!11746 (xs!9762 t!4595)))))

(assert (=> d!571134 (= (size!16404 (xs!9762 t!4595)) lt!718896)))

(declare-fun bs!411871 () Bool)

(assert (= bs!411871 d!571134))

(assert (=> bs!411871 m!2293583))

(assert (=> bs!411871 m!2293583))

(declare-fun m!2294065 () Bool)

(assert (=> bs!411871 m!2294065))

(declare-fun m!2294067 () Bool)

(assert (=> bs!411871 m!2294067))

(assert (=> b!1868108 d!571134))

(declare-fun d!571136 () Bool)

(declare-fun res!836563 () Bool)

(declare-fun e!1192345 () Bool)

(assert (=> d!571136 (=> (not res!836563) (not e!1192345))))

(assert (=> d!571136 (= res!836563 (<= (size!16401 (list!8470 (xs!9762 t!4595))) 512))))

(assert (=> d!571136 (= (inv!27399 t!4595) e!1192345)))

(declare-fun b!1868455 () Bool)

(declare-fun res!836564 () Bool)

(assert (=> b!1868455 (=> (not res!836564) (not e!1192345))))

(assert (=> b!1868455 (= res!836564 (= (csize!13991 t!4595) (size!16401 (list!8470 (xs!9762 t!4595)))))))

(declare-fun b!1868456 () Bool)

(assert (=> b!1868456 (= e!1192345 (and (> (csize!13991 t!4595) 0) (<= (csize!13991 t!4595) 512)))))

(assert (= (and d!571136 res!836563) b!1868455))

(assert (= (and b!1868455 res!836564) b!1868456))

(assert (=> d!571136 m!2293583))

(assert (=> d!571136 m!2293583))

(assert (=> d!571136 m!2294065))

(assert (=> b!1868455 m!2293583))

(assert (=> b!1868455 m!2293583))

(assert (=> b!1868455 m!2294065))

(assert (=> b!1868168 d!571136))

(assert (=> b!1868032 d!570954))

(assert (=> b!1868032 d!570962))

(declare-fun b!1868457 () Bool)

(declare-fun res!836569 () Bool)

(declare-fun e!1192347 () Bool)

(assert (=> b!1868457 (=> (not res!836569) (not e!1192347))))

(assert (=> b!1868457 (= res!836569 (isBalanced!2181 (left!16673 (left!16673 lt!718833))))))

(declare-fun b!1868459 () Bool)

(declare-fun e!1192346 () Bool)

(assert (=> b!1868459 (= e!1192346 e!1192347)))

(declare-fun res!836568 () Bool)

(assert (=> b!1868459 (=> (not res!836568) (not e!1192347))))

(assert (=> b!1868459 (= res!836568 (<= (- 1) (- (height!1067 (left!16673 (left!16673 lt!718833))) (height!1067 (right!17003 (left!16673 lt!718833))))))))

(declare-fun b!1868460 () Bool)

(assert (=> b!1868460 (= e!1192347 (not (isEmpty!12911 (right!17003 (left!16673 lt!718833)))))))

(declare-fun b!1868461 () Bool)

(declare-fun res!836567 () Bool)

(assert (=> b!1868461 (=> (not res!836567) (not e!1192347))))

(assert (=> b!1868461 (= res!836567 (not (isEmpty!12911 (left!16673 (left!16673 lt!718833)))))))

(declare-fun b!1868462 () Bool)

(declare-fun res!836566 () Bool)

(assert (=> b!1868462 (=> (not res!836566) (not e!1192347))))

(assert (=> b!1868462 (= res!836566 (isBalanced!2181 (right!17003 (left!16673 lt!718833))))))

(declare-fun d!571138 () Bool)

(declare-fun res!836565 () Bool)

(assert (=> d!571138 (=> res!836565 e!1192346)))

(assert (=> d!571138 (= res!836565 (not ((_ is Node!6880) (left!16673 lt!718833))))))

(assert (=> d!571138 (= (isBalanced!2181 (left!16673 lt!718833)) e!1192346)))

(declare-fun b!1868458 () Bool)

(declare-fun res!836570 () Bool)

(assert (=> b!1868458 (=> (not res!836570) (not e!1192347))))

(assert (=> b!1868458 (= res!836570 (<= (- (height!1067 (left!16673 (left!16673 lt!718833))) (height!1067 (right!17003 (left!16673 lt!718833)))) 1))))

(assert (= (and d!571138 (not res!836565)) b!1868459))

(assert (= (and b!1868459 res!836568) b!1868458))

(assert (= (and b!1868458 res!836570) b!1868457))

(assert (= (and b!1868457 res!836569) b!1868462))

(assert (= (and b!1868462 res!836566) b!1868461))

(assert (= (and b!1868461 res!836567) b!1868460))

(declare-fun m!2294087 () Bool)

(assert (=> b!1868460 m!2294087))

(declare-fun m!2294089 () Bool)

(assert (=> b!1868458 m!2294089))

(declare-fun m!2294093 () Bool)

(assert (=> b!1868458 m!2294093))

(assert (=> b!1868459 m!2294089))

(assert (=> b!1868459 m!2294093))

(declare-fun m!2294095 () Bool)

(assert (=> b!1868461 m!2294095))

(declare-fun m!2294097 () Bool)

(assert (=> b!1868457 m!2294097))

(declare-fun m!2294099 () Bool)

(assert (=> b!1868462 m!2294099))

(assert (=> b!1868146 d!571138))

(declare-fun d!571144 () Bool)

(assert (=> d!571144 (= (height!1067 (left!16673 lt!718833)) (ite ((_ is Empty!6880) (left!16673 lt!718833)) 0 (ite ((_ is Leaf!10088) (left!16673 lt!718833)) 1 (cheight!7091 (left!16673 lt!718833)))))))

(assert (=> b!1868148 d!571144))

(declare-fun d!571146 () Bool)

(assert (=> d!571146 (= (height!1067 (right!17003 lt!718833)) (ite ((_ is Empty!6880) (right!17003 lt!718833)) 0 (ite ((_ is Leaf!10088) (right!17003 lt!718833)) 1 (cheight!7091 (right!17003 lt!718833)))))))

(assert (=> b!1868148 d!571146))

(assert (=> b!1868147 d!571144))

(assert (=> b!1868147 d!571146))

(declare-fun b!1868471 () Bool)

(declare-fun e!1192352 () Bool)

(declare-fun tp!531741 () Bool)

(declare-fun tp!531739 () Bool)

(assert (=> b!1868471 (= e!1192352 (and (inv!27396 (left!16673 (left!16673 (right!17003 t!4595)))) tp!531741 (inv!27396 (right!17003 (left!16673 (right!17003 t!4595)))) tp!531739))))

(declare-fun b!1868473 () Bool)

(declare-fun e!1192353 () Bool)

(declare-fun tp!531740 () Bool)

(assert (=> b!1868473 (= e!1192353 tp!531740)))

(declare-fun b!1868472 () Bool)

(assert (=> b!1868472 (= e!1192352 (and (inv!27397 (xs!9762 (left!16673 (right!17003 t!4595)))) e!1192353))))

(assert (=> b!1868191 (= tp!531732 (and (inv!27396 (left!16673 (right!17003 t!4595))) e!1192352))))

(assert (= (and b!1868191 ((_ is Node!6880) (left!16673 (right!17003 t!4595)))) b!1868471))

(assert (= b!1868472 b!1868473))

(assert (= (and b!1868191 ((_ is Leaf!10088) (left!16673 (right!17003 t!4595)))) b!1868472))

(declare-fun m!2294107 () Bool)

(assert (=> b!1868471 m!2294107))

(declare-fun m!2294109 () Bool)

(assert (=> b!1868471 m!2294109))

(declare-fun m!2294111 () Bool)

(assert (=> b!1868472 m!2294111))

(assert (=> b!1868191 m!2293761))

(declare-fun tp!531742 () Bool)

(declare-fun e!1192356 () Bool)

(declare-fun b!1868478 () Bool)

(declare-fun tp!531744 () Bool)

(assert (=> b!1868478 (= e!1192356 (and (inv!27396 (left!16673 (right!17003 (right!17003 t!4595)))) tp!531744 (inv!27396 (right!17003 (right!17003 (right!17003 t!4595)))) tp!531742))))

(declare-fun b!1868480 () Bool)

(declare-fun e!1192357 () Bool)

(declare-fun tp!531743 () Bool)

(assert (=> b!1868480 (= e!1192357 tp!531743)))

(declare-fun b!1868479 () Bool)

(assert (=> b!1868479 (= e!1192356 (and (inv!27397 (xs!9762 (right!17003 (right!17003 t!4595)))) e!1192357))))

(assert (=> b!1868191 (= tp!531730 (and (inv!27396 (right!17003 (right!17003 t!4595))) e!1192356))))

(assert (= (and b!1868191 ((_ is Node!6880) (right!17003 (right!17003 t!4595)))) b!1868478))

(assert (= b!1868479 b!1868480))

(assert (= (and b!1868191 ((_ is Leaf!10088) (right!17003 (right!17003 t!4595)))) b!1868479))

(declare-fun m!2294117 () Bool)

(assert (=> b!1868478 m!2294117))

(declare-fun m!2294121 () Bool)

(assert (=> b!1868478 m!2294121))

(declare-fun m!2294125 () Bool)

(assert (=> b!1868479 m!2294125))

(assert (=> b!1868191 m!2293763))

(declare-fun b!1868481 () Bool)

(declare-fun e!1192358 () Bool)

(declare-fun tp!531745 () Bool)

(assert (=> b!1868481 (= e!1192358 (and tp_is_empty!8679 tp!531745))))

(assert (=> b!1868198 (= tp!531735 e!1192358)))

(assert (= (and b!1868198 ((_ is Cons!20685) (t!172918 (innerList!6940 (xs!9762 t!4595))))) b!1868481))

(declare-fun tp!531748 () Bool)

(declare-fun b!1868486 () Bool)

(declare-fun tp!531746 () Bool)

(declare-fun e!1192361 () Bool)

(assert (=> b!1868486 (= e!1192361 (and (inv!27396 (left!16673 (left!16673 (left!16673 t!4595)))) tp!531748 (inv!27396 (right!17003 (left!16673 (left!16673 t!4595)))) tp!531746))))

(declare-fun b!1868488 () Bool)

(declare-fun e!1192362 () Bool)

(declare-fun tp!531747 () Bool)

(assert (=> b!1868488 (= e!1192362 tp!531747)))

(declare-fun b!1868487 () Bool)

(assert (=> b!1868487 (= e!1192361 (and (inv!27397 (xs!9762 (left!16673 (left!16673 t!4595)))) e!1192362))))

(assert (=> b!1868187 (= tp!531728 (and (inv!27396 (left!16673 (left!16673 t!4595))) e!1192361))))

(assert (= (and b!1868187 ((_ is Node!6880) (left!16673 (left!16673 t!4595)))) b!1868486))

(assert (= b!1868487 b!1868488))

(assert (= (and b!1868187 ((_ is Leaf!10088) (left!16673 (left!16673 t!4595)))) b!1868487))

(declare-fun m!2294133 () Bool)

(assert (=> b!1868486 m!2294133))

(declare-fun m!2294137 () Bool)

(assert (=> b!1868486 m!2294137))

(declare-fun m!2294141 () Bool)

(assert (=> b!1868487 m!2294141))

(assert (=> b!1868187 m!2293755))

(declare-fun e!1192363 () Bool)

(declare-fun b!1868489 () Bool)

(declare-fun tp!531749 () Bool)

(declare-fun tp!531751 () Bool)

(assert (=> b!1868489 (= e!1192363 (and (inv!27396 (left!16673 (right!17003 (left!16673 t!4595)))) tp!531751 (inv!27396 (right!17003 (right!17003 (left!16673 t!4595)))) tp!531749))))

(declare-fun b!1868491 () Bool)

(declare-fun e!1192364 () Bool)

(declare-fun tp!531750 () Bool)

(assert (=> b!1868491 (= e!1192364 tp!531750)))

(declare-fun b!1868490 () Bool)

(assert (=> b!1868490 (= e!1192363 (and (inv!27397 (xs!9762 (right!17003 (left!16673 t!4595)))) e!1192364))))

(assert (=> b!1868187 (= tp!531726 (and (inv!27396 (right!17003 (left!16673 t!4595))) e!1192363))))

(assert (= (and b!1868187 ((_ is Node!6880) (right!17003 (left!16673 t!4595)))) b!1868489))

(assert (= b!1868490 b!1868491))

(assert (= (and b!1868187 ((_ is Leaf!10088) (right!17003 (left!16673 t!4595)))) b!1868490))

(declare-fun m!2294147 () Bool)

(assert (=> b!1868489 m!2294147))

(declare-fun m!2294149 () Bool)

(assert (=> b!1868489 m!2294149))

(declare-fun m!2294151 () Bool)

(assert (=> b!1868490 m!2294151))

(assert (=> b!1868187 m!2293757))

(declare-fun b!1868496 () Bool)

(declare-fun e!1192367 () Bool)

(declare-fun tp!531752 () Bool)

(assert (=> b!1868496 (= e!1192367 (and tp_is_empty!8679 tp!531752))))

(assert (=> b!1868193 (= tp!531731 e!1192367)))

(assert (= (and b!1868193 ((_ is Cons!20685) (innerList!6940 (xs!9762 (right!17003 t!4595))))) b!1868496))

(declare-fun b!1868497 () Bool)

(declare-fun e!1192368 () Bool)

(declare-fun tp!531753 () Bool)

(assert (=> b!1868497 (= e!1192368 (and tp_is_empty!8679 tp!531753))))

(assert (=> b!1868189 (= tp!531727 e!1192368)))

(assert (= (and b!1868189 ((_ is Cons!20685) (innerList!6940 (xs!9762 (left!16673 t!4595))))) b!1868497))

(check-sat (not b!1868418) (not b!1868187) (not b!1868293) (not d!571134) (not b!1868316) (not b!1868420) (not b!1868471) (not b!1868438) (not b!1868435) (not b!1868354) (not b!1868489) (not b!1868371) (not d!571058) (not b!1868346) (not b!1868410) (not b!1868343) (not b!1868473) (not b!1868275) (not b!1868479) (not b!1868374) (not bm!115907) (not b!1868378) (not b!1868292) (not d!571132) (not b!1868331) (not d!571044) (not b!1868437) (not d!571110) (not d!571020) (not b!1868287) (not b!1868408) (not d!571008) (not d!571004) (not b!1868462) (not b!1868191) (not b!1868496) (not b!1868450) (not b!1868491) (not b!1868252) (not b!1868436) (not b!1868290) (not b!1868486) (not b!1868487) (not b!1868315) (not d!571032) (not b!1868217) (not b!1868406) (not d!571118) (not b!1868350) (not d!571122) (not b!1868355) (not b!1868455) (not d!571046) (not d!571136) (not b!1868351) (not b!1868497) (not d!571064) (not d!571034) (not b!1868478) (not b!1868219) (not b!1868458) (not b!1868490) (not b!1868288) (not d!571128) (not d!571036) (not b!1868457) (not b!1868423) (not b!1868459) (not b!1868409) (not b!1868481) (not b!1868291) (not b!1868214) (not b!1868216) (not b!1868405) (not b!1868461) (not d!571104) (not b!1868376) (not d!571130) (not b!1868373) (not b!1868480) (not b!1868296) (not b!1868369) (not b!1868342) (not b!1868298) (not d!571052) (not b!1868460) (not d!571072) (not b!1868472) tp_is_empty!8679 (not b!1868345) (not b!1868407) (not b!1868289) (not b!1868439) (not b!1868488) (not b!1868330) (not b!1868256) (not b!1868432) (not b!1868295) (not b!1868434))
(check-sat)
