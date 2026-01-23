; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215282 () Bool)

(assert start!215282)

(declare-fun b!2210840 () Bool)

(declare-fun e!1412032 () Bool)

(declare-datatypes ((T!40550 0))(
  ( (T!40551 (val!7378 Int)) )
))
(declare-datatypes ((List!25942 0))(
  ( (Nil!25858) (Cons!25858 (h!31259 T!40550) (t!198644 List!25942)) )
))
(declare-datatypes ((IArray!16915 0))(
  ( (IArray!16916 (innerList!8515 List!25942)) )
))
(declare-datatypes ((Conc!8455 0))(
  ( (Node!8455 (left!19885 Conc!8455) (right!20215 Conc!8455) (csize!17140 Int) (cheight!8666 Int)) (Leaf!12382 (xs!11397 IArray!16915) (csize!17141 Int)) (Empty!8455) )
))
(declare-fun t!4663 () Conc!8455)

(declare-fun list!10024 (Conc!8455) List!25942)

(assert (=> b!2210840 (= e!1412032 (= (list!10024 t!4663) Nil!25858))))

(declare-fun lt!826384 () T!40550)

(declare-fun head!4719 (Conc!8455) T!40550)

(assert (=> b!2210840 (= lt!826384 (head!4719 (left!19885 t!4663)))))

(declare-fun b!2210841 () Bool)

(declare-fun e!1412033 () Bool)

(declare-fun tp!687168 () Bool)

(assert (=> b!2210841 (= e!1412033 tp!687168)))

(declare-fun res!950159 () Bool)

(assert (=> start!215282 (=> (not res!950159) (not e!1412032))))

(declare-fun isBalanced!2613 (Conc!8455) Bool)

(assert (=> start!215282 (= res!950159 (isBalanced!2613 t!4663))))

(assert (=> start!215282 e!1412032))

(declare-fun e!1412031 () Bool)

(declare-fun inv!34997 (Conc!8455) Bool)

(assert (=> start!215282 (and (inv!34997 t!4663) e!1412031)))

(declare-fun b!2210842 () Bool)

(declare-fun inv!34998 (IArray!16915) Bool)

(assert (=> b!2210842 (= e!1412031 (and (inv!34998 (xs!11397 t!4663)) e!1412033))))

(declare-fun b!2210843 () Bool)

(declare-fun res!950160 () Bool)

(assert (=> b!2210843 (=> (not res!950160) (not e!1412032))))

(get-info :version)

(assert (=> b!2210843 (= res!950160 (and (not ((_ is Leaf!12382) t!4663)) ((_ is Node!8455) t!4663)))))

(declare-fun b!2210844 () Bool)

(declare-fun res!950161 () Bool)

(assert (=> b!2210844 (=> (not res!950161) (not e!1412032))))

(declare-fun isEmpty!14799 (Conc!8455) Bool)

(assert (=> b!2210844 (= res!950161 (not (isEmpty!14799 t!4663)))))

(declare-fun b!2210845 () Bool)

(declare-fun tp!687167 () Bool)

(declare-fun tp!687166 () Bool)

(assert (=> b!2210845 (= e!1412031 (and (inv!34997 (left!19885 t!4663)) tp!687167 (inv!34997 (right!20215 t!4663)) tp!687166))))

(assert (= (and start!215282 res!950159) b!2210844))

(assert (= (and b!2210844 res!950161) b!2210843))

(assert (= (and b!2210843 res!950160) b!2210840))

(assert (= (and start!215282 ((_ is Node!8455) t!4663)) b!2210845))

(assert (= b!2210842 b!2210841))

(assert (= (and start!215282 ((_ is Leaf!12382) t!4663)) b!2210842))

(declare-fun m!2652571 () Bool)

(assert (=> b!2210842 m!2652571))

(declare-fun m!2652573 () Bool)

(assert (=> b!2210840 m!2652573))

(declare-fun m!2652575 () Bool)

(assert (=> b!2210840 m!2652575))

(declare-fun m!2652577 () Bool)

(assert (=> b!2210845 m!2652577))

(declare-fun m!2652579 () Bool)

(assert (=> b!2210845 m!2652579))

(declare-fun m!2652581 () Bool)

(assert (=> b!2210844 m!2652581))

(declare-fun m!2652583 () Bool)

(assert (=> start!215282 m!2652583))

(declare-fun m!2652585 () Bool)

(assert (=> start!215282 m!2652585))

(check-sat (not b!2210842) (not b!2210841) (not start!215282) (not b!2210840) (not b!2210845) (not b!2210844))
(check-sat)
(get-model)

(declare-fun d!660797 () Bool)

(declare-fun lt!826387 () Bool)

(declare-fun isEmpty!14800 (List!25942) Bool)

(assert (=> d!660797 (= lt!826387 (isEmpty!14800 (list!10024 t!4663)))))

(declare-fun size!20163 (Conc!8455) Int)

(assert (=> d!660797 (= lt!826387 (= (size!20163 t!4663) 0))))

(assert (=> d!660797 (= (isEmpty!14799 t!4663) lt!826387)))

(declare-fun bs!451401 () Bool)

(assert (= bs!451401 d!660797))

(assert (=> bs!451401 m!2652573))

(assert (=> bs!451401 m!2652573))

(declare-fun m!2652587 () Bool)

(assert (=> bs!451401 m!2652587))

(declare-fun m!2652589 () Bool)

(assert (=> bs!451401 m!2652589))

(assert (=> b!2210844 d!660797))

(declare-fun b!2210854 () Bool)

(declare-fun e!1412038 () List!25942)

(assert (=> b!2210854 (= e!1412038 Nil!25858)))

(declare-fun b!2210856 () Bool)

(declare-fun e!1412039 () List!25942)

(declare-fun list!10025 (IArray!16915) List!25942)

(assert (=> b!2210856 (= e!1412039 (list!10025 (xs!11397 t!4663)))))

(declare-fun b!2210855 () Bool)

(assert (=> b!2210855 (= e!1412038 e!1412039)))

(declare-fun c!353349 () Bool)

(assert (=> b!2210855 (= c!353349 ((_ is Leaf!12382) t!4663))))

(declare-fun d!660799 () Bool)

(declare-fun c!353348 () Bool)

(assert (=> d!660799 (= c!353348 ((_ is Empty!8455) t!4663))))

(assert (=> d!660799 (= (list!10024 t!4663) e!1412038)))

(declare-fun b!2210857 () Bool)

(declare-fun ++!6444 (List!25942 List!25942) List!25942)

(assert (=> b!2210857 (= e!1412039 (++!6444 (list!10024 (left!19885 t!4663)) (list!10024 (right!20215 t!4663))))))

(assert (= (and d!660799 c!353348) b!2210854))

(assert (= (and d!660799 (not c!353348)) b!2210855))

(assert (= (and b!2210855 c!353349) b!2210856))

(assert (= (and b!2210855 (not c!353349)) b!2210857))

(declare-fun m!2652593 () Bool)

(assert (=> b!2210856 m!2652593))

(declare-fun m!2652595 () Bool)

(assert (=> b!2210857 m!2652595))

(declare-fun m!2652597 () Bool)

(assert (=> b!2210857 m!2652597))

(assert (=> b!2210857 m!2652595))

(assert (=> b!2210857 m!2652597))

(declare-fun m!2652599 () Bool)

(assert (=> b!2210857 m!2652599))

(assert (=> b!2210840 d!660799))

(declare-fun d!660805 () Bool)

(declare-fun lt!826390 () T!40550)

(declare-fun head!4720 (List!25942) T!40550)

(assert (=> d!660805 (= lt!826390 (head!4720 (list!10024 (left!19885 t!4663))))))

(declare-fun e!1412048 () T!40550)

(assert (=> d!660805 (= lt!826390 e!1412048)))

(declare-fun c!353352 () Bool)

(assert (=> d!660805 (= c!353352 ((_ is Leaf!12382) (left!19885 t!4663)))))

(assert (=> d!660805 (isBalanced!2613 (left!19885 t!4663))))

(assert (=> d!660805 (= (head!4719 (left!19885 t!4663)) lt!826390)))

(declare-fun b!2210880 () Bool)

(declare-fun apply!6402 (IArray!16915 Int) T!40550)

(assert (=> b!2210880 (= e!1412048 (apply!6402 (xs!11397 (left!19885 t!4663)) 0))))

(declare-fun b!2210881 () Bool)

(assert (=> b!2210881 (= e!1412048 (head!4719 (left!19885 (left!19885 t!4663))))))

(assert (= (and d!660805 c!353352) b!2210880))

(assert (= (and d!660805 (not c!353352)) b!2210881))

(assert (=> d!660805 m!2652595))

(assert (=> d!660805 m!2652595))

(declare-fun m!2652613 () Bool)

(assert (=> d!660805 m!2652613))

(declare-fun m!2652615 () Bool)

(assert (=> d!660805 m!2652615))

(declare-fun m!2652617 () Bool)

(assert (=> b!2210880 m!2652617))

(declare-fun m!2652619 () Bool)

(assert (=> b!2210881 m!2652619))

(assert (=> b!2210840 d!660805))

(declare-fun d!660809 () Bool)

(declare-fun c!353358 () Bool)

(assert (=> d!660809 (= c!353358 ((_ is Node!8455) (left!19885 t!4663)))))

(declare-fun e!1412059 () Bool)

(assert (=> d!660809 (= (inv!34997 (left!19885 t!4663)) e!1412059)))

(declare-fun b!2210897 () Bool)

(declare-fun inv!34999 (Conc!8455) Bool)

(assert (=> b!2210897 (= e!1412059 (inv!34999 (left!19885 t!4663)))))

(declare-fun b!2210898 () Bool)

(declare-fun e!1412060 () Bool)

(assert (=> b!2210898 (= e!1412059 e!1412060)))

(declare-fun res!950185 () Bool)

(assert (=> b!2210898 (= res!950185 (not ((_ is Leaf!12382) (left!19885 t!4663))))))

(assert (=> b!2210898 (=> res!950185 e!1412060)))

(declare-fun b!2210899 () Bool)

(declare-fun inv!35000 (Conc!8455) Bool)

(assert (=> b!2210899 (= e!1412060 (inv!35000 (left!19885 t!4663)))))

(assert (= (and d!660809 c!353358) b!2210897))

(assert (= (and d!660809 (not c!353358)) b!2210898))

(assert (= (and b!2210898 (not res!950185)) b!2210899))

(declare-fun m!2652625 () Bool)

(assert (=> b!2210897 m!2652625))

(declare-fun m!2652627 () Bool)

(assert (=> b!2210899 m!2652627))

(assert (=> b!2210845 d!660809))

(declare-fun d!660813 () Bool)

(declare-fun c!353359 () Bool)

(assert (=> d!660813 (= c!353359 ((_ is Node!8455) (right!20215 t!4663)))))

(declare-fun e!1412061 () Bool)

(assert (=> d!660813 (= (inv!34997 (right!20215 t!4663)) e!1412061)))

(declare-fun b!2210900 () Bool)

(assert (=> b!2210900 (= e!1412061 (inv!34999 (right!20215 t!4663)))))

(declare-fun b!2210901 () Bool)

(declare-fun e!1412062 () Bool)

(assert (=> b!2210901 (= e!1412061 e!1412062)))

(declare-fun res!950186 () Bool)

(assert (=> b!2210901 (= res!950186 (not ((_ is Leaf!12382) (right!20215 t!4663))))))

(assert (=> b!2210901 (=> res!950186 e!1412062)))

(declare-fun b!2210902 () Bool)

(assert (=> b!2210902 (= e!1412062 (inv!35000 (right!20215 t!4663)))))

(assert (= (and d!660813 c!353359) b!2210900))

(assert (= (and d!660813 (not c!353359)) b!2210901))

(assert (= (and b!2210901 (not res!950186)) b!2210902))

(declare-fun m!2652629 () Bool)

(assert (=> b!2210900 m!2652629))

(declare-fun m!2652631 () Bool)

(assert (=> b!2210902 m!2652631))

(assert (=> b!2210845 d!660813))

(declare-fun b!2210931 () Bool)

(declare-fun res!950204 () Bool)

(declare-fun e!1412076 () Bool)

(assert (=> b!2210931 (=> (not res!950204) (not e!1412076))))

(assert (=> b!2210931 (= res!950204 (not (isEmpty!14799 (left!19885 t!4663))))))

(declare-fun b!2210933 () Bool)

(declare-fun res!950201 () Bool)

(assert (=> b!2210933 (=> (not res!950201) (not e!1412076))))

(declare-fun height!1279 (Conc!8455) Int)

(assert (=> b!2210933 (= res!950201 (<= (- (height!1279 (left!19885 t!4663)) (height!1279 (right!20215 t!4663))) 1))))

(declare-fun b!2210934 () Bool)

(assert (=> b!2210934 (= e!1412076 (not (isEmpty!14799 (right!20215 t!4663))))))

(declare-fun b!2210935 () Bool)

(declare-fun e!1412075 () Bool)

(assert (=> b!2210935 (= e!1412075 e!1412076)))

(declare-fun res!950202 () Bool)

(assert (=> b!2210935 (=> (not res!950202) (not e!1412076))))

(assert (=> b!2210935 (= res!950202 (<= (- 1) (- (height!1279 (left!19885 t!4663)) (height!1279 (right!20215 t!4663)))))))

(declare-fun b!2210936 () Bool)

(declare-fun res!950199 () Bool)

(assert (=> b!2210936 (=> (not res!950199) (not e!1412076))))

(assert (=> b!2210936 (= res!950199 (isBalanced!2613 (right!20215 t!4663)))))

(declare-fun d!660815 () Bool)

(declare-fun res!950203 () Bool)

(assert (=> d!660815 (=> res!950203 e!1412075)))

(assert (=> d!660815 (= res!950203 (not ((_ is Node!8455) t!4663)))))

(assert (=> d!660815 (= (isBalanced!2613 t!4663) e!1412075)))

(declare-fun b!2210932 () Bool)

(declare-fun res!950200 () Bool)

(assert (=> b!2210932 (=> (not res!950200) (not e!1412076))))

(assert (=> b!2210932 (= res!950200 (isBalanced!2613 (left!19885 t!4663)))))

(assert (= (and d!660815 (not res!950203)) b!2210935))

(assert (= (and b!2210935 res!950202) b!2210933))

(assert (= (and b!2210933 res!950201) b!2210932))

(assert (= (and b!2210932 res!950200) b!2210936))

(assert (= (and b!2210936 res!950199) b!2210931))

(assert (= (and b!2210931 res!950204) b!2210934))

(assert (=> b!2210932 m!2652615))

(declare-fun m!2652641 () Bool)

(assert (=> b!2210935 m!2652641))

(declare-fun m!2652643 () Bool)

(assert (=> b!2210935 m!2652643))

(assert (=> b!2210933 m!2652641))

(assert (=> b!2210933 m!2652643))

(declare-fun m!2652645 () Bool)

(assert (=> b!2210936 m!2652645))

(declare-fun m!2652647 () Bool)

(assert (=> b!2210934 m!2652647))

(declare-fun m!2652649 () Bool)

(assert (=> b!2210931 m!2652649))

(assert (=> start!215282 d!660815))

(declare-fun d!660819 () Bool)

(declare-fun c!353368 () Bool)

(assert (=> d!660819 (= c!353368 ((_ is Node!8455) t!4663))))

(declare-fun e!1412077 () Bool)

(assert (=> d!660819 (= (inv!34997 t!4663) e!1412077)))

(declare-fun b!2210937 () Bool)

(assert (=> b!2210937 (= e!1412077 (inv!34999 t!4663))))

(declare-fun b!2210938 () Bool)

(declare-fun e!1412078 () Bool)

(assert (=> b!2210938 (= e!1412077 e!1412078)))

(declare-fun res!950205 () Bool)

(assert (=> b!2210938 (= res!950205 (not ((_ is Leaf!12382) t!4663)))))

(assert (=> b!2210938 (=> res!950205 e!1412078)))

(declare-fun b!2210939 () Bool)

(assert (=> b!2210939 (= e!1412078 (inv!35000 t!4663))))

(assert (= (and d!660819 c!353368) b!2210937))

(assert (= (and d!660819 (not c!353368)) b!2210938))

(assert (= (and b!2210938 (not res!950205)) b!2210939))

(declare-fun m!2652651 () Bool)

(assert (=> b!2210937 m!2652651))

(declare-fun m!2652653 () Bool)

(assert (=> b!2210939 m!2652653))

(assert (=> start!215282 d!660819))

(declare-fun d!660821 () Bool)

(declare-fun size!20165 (List!25942) Int)

(assert (=> d!660821 (= (inv!34998 (xs!11397 t!4663)) (<= (size!20165 (innerList!8515 (xs!11397 t!4663))) 2147483647))))

(declare-fun bs!451403 () Bool)

(assert (= bs!451403 d!660821))

(declare-fun m!2652661 () Bool)

(assert (=> bs!451403 m!2652661))

(assert (=> b!2210842 d!660821))

(declare-fun b!2210950 () Bool)

(declare-fun e!1412084 () Bool)

(declare-fun tp!687177 () Bool)

(declare-fun tp!687176 () Bool)

(assert (=> b!2210950 (= e!1412084 (and (inv!34997 (left!19885 (left!19885 t!4663))) tp!687176 (inv!34997 (right!20215 (left!19885 t!4663))) tp!687177))))

(declare-fun b!2210952 () Bool)

(declare-fun e!1412085 () Bool)

(declare-fun tp!687175 () Bool)

(assert (=> b!2210952 (= e!1412085 tp!687175)))

(declare-fun b!2210951 () Bool)

(assert (=> b!2210951 (= e!1412084 (and (inv!34998 (xs!11397 (left!19885 t!4663))) e!1412085))))

(assert (=> b!2210845 (= tp!687167 (and (inv!34997 (left!19885 t!4663)) e!1412084))))

(assert (= (and b!2210845 ((_ is Node!8455) (left!19885 t!4663))) b!2210950))

(assert (= b!2210951 b!2210952))

(assert (= (and b!2210845 ((_ is Leaf!12382) (left!19885 t!4663))) b!2210951))

(declare-fun m!2652663 () Bool)

(assert (=> b!2210950 m!2652663))

(declare-fun m!2652665 () Bool)

(assert (=> b!2210950 m!2652665))

(declare-fun m!2652667 () Bool)

(assert (=> b!2210951 m!2652667))

(assert (=> b!2210845 m!2652577))

(declare-fun tp!687179 () Bool)

(declare-fun e!1412086 () Bool)

(declare-fun tp!687180 () Bool)

(declare-fun b!2210953 () Bool)

(assert (=> b!2210953 (= e!1412086 (and (inv!34997 (left!19885 (right!20215 t!4663))) tp!687179 (inv!34997 (right!20215 (right!20215 t!4663))) tp!687180))))

(declare-fun b!2210955 () Bool)

(declare-fun e!1412087 () Bool)

(declare-fun tp!687178 () Bool)

(assert (=> b!2210955 (= e!1412087 tp!687178)))

(declare-fun b!2210954 () Bool)

(assert (=> b!2210954 (= e!1412086 (and (inv!34998 (xs!11397 (right!20215 t!4663))) e!1412087))))

(assert (=> b!2210845 (= tp!687166 (and (inv!34997 (right!20215 t!4663)) e!1412086))))

(assert (= (and b!2210845 ((_ is Node!8455) (right!20215 t!4663))) b!2210953))

(assert (= b!2210954 b!2210955))

(assert (= (and b!2210845 ((_ is Leaf!12382) (right!20215 t!4663))) b!2210954))

(declare-fun m!2652669 () Bool)

(assert (=> b!2210953 m!2652669))

(declare-fun m!2652671 () Bool)

(assert (=> b!2210953 m!2652671))

(declare-fun m!2652673 () Bool)

(assert (=> b!2210954 m!2652673))

(assert (=> b!2210845 m!2652579))

(declare-fun b!2210963 () Bool)

(declare-fun e!1412092 () Bool)

(declare-fun tp_is_empty!9775 () Bool)

(declare-fun tp!687183 () Bool)

(assert (=> b!2210963 (= e!1412092 (and tp_is_empty!9775 tp!687183))))

(assert (=> b!2210841 (= tp!687168 e!1412092)))

(assert (= (and b!2210841 ((_ is Cons!25858) (innerList!8515 (xs!11397 t!4663)))) b!2210963))

(check-sat (not b!2210933) (not b!2210935) (not b!2210936) (not b!2210939) (not b!2210954) (not b!2210937) (not b!2210952) (not b!2210856) (not b!2210963) (not b!2210881) (not b!2210932) (not d!660821) tp_is_empty!9775 (not d!660805) (not b!2210953) (not b!2210955) (not b!2210950) (not b!2210902) (not b!2210880) (not b!2210934) (not b!2210951) (not b!2210845) (not b!2210897) (not b!2210900) (not b!2210857) (not b!2210931) (not d!660797) (not b!2210899))
(check-sat)
(get-model)

(declare-fun b!2210986 () Bool)

(declare-fun res!950213 () Bool)

(declare-fun e!1412107 () Bool)

(assert (=> b!2210986 (=> (not res!950213) (not e!1412107))))

(assert (=> b!2210986 (= res!950213 (not (isEmpty!14799 (left!19885 (right!20215 t!4663)))))))

(declare-fun b!2210988 () Bool)

(declare-fun res!950210 () Bool)

(assert (=> b!2210988 (=> (not res!950210) (not e!1412107))))

(assert (=> b!2210988 (= res!950210 (<= (- (height!1279 (left!19885 (right!20215 t!4663))) (height!1279 (right!20215 (right!20215 t!4663)))) 1))))

(declare-fun b!2210989 () Bool)

(assert (=> b!2210989 (= e!1412107 (not (isEmpty!14799 (right!20215 (right!20215 t!4663)))))))

(declare-fun b!2210990 () Bool)

(declare-fun e!1412106 () Bool)

(assert (=> b!2210990 (= e!1412106 e!1412107)))

(declare-fun res!950211 () Bool)

(assert (=> b!2210990 (=> (not res!950211) (not e!1412107))))

(assert (=> b!2210990 (= res!950211 (<= (- 1) (- (height!1279 (left!19885 (right!20215 t!4663))) (height!1279 (right!20215 (right!20215 t!4663))))))))

(declare-fun b!2210991 () Bool)

(declare-fun res!950208 () Bool)

(assert (=> b!2210991 (=> (not res!950208) (not e!1412107))))

(assert (=> b!2210991 (= res!950208 (isBalanced!2613 (right!20215 (right!20215 t!4663))))))

(declare-fun d!660829 () Bool)

(declare-fun res!950212 () Bool)

(assert (=> d!660829 (=> res!950212 e!1412106)))

(assert (=> d!660829 (= res!950212 (not ((_ is Node!8455) (right!20215 t!4663))))))

(assert (=> d!660829 (= (isBalanced!2613 (right!20215 t!4663)) e!1412106)))

(declare-fun b!2210987 () Bool)

(declare-fun res!950209 () Bool)

(assert (=> b!2210987 (=> (not res!950209) (not e!1412107))))

(assert (=> b!2210987 (= res!950209 (isBalanced!2613 (left!19885 (right!20215 t!4663))))))

(assert (= (and d!660829 (not res!950212)) b!2210990))

(assert (= (and b!2210990 res!950211) b!2210988))

(assert (= (and b!2210988 res!950210) b!2210987))

(assert (= (and b!2210987 res!950209) b!2210991))

(assert (= (and b!2210991 res!950208) b!2210986))

(assert (= (and b!2210986 res!950213) b!2210989))

(declare-fun m!2652699 () Bool)

(assert (=> b!2210987 m!2652699))

(declare-fun m!2652701 () Bool)

(assert (=> b!2210990 m!2652701))

(declare-fun m!2652703 () Bool)

(assert (=> b!2210990 m!2652703))

(assert (=> b!2210988 m!2652701))

(assert (=> b!2210988 m!2652703))

(declare-fun m!2652705 () Bool)

(assert (=> b!2210991 m!2652705))

(declare-fun m!2652707 () Bool)

(assert (=> b!2210989 m!2652707))

(declare-fun m!2652709 () Bool)

(assert (=> b!2210986 m!2652709))

(assert (=> b!2210936 d!660829))

(declare-fun d!660831 () Bool)

(declare-fun res!950220 () Bool)

(declare-fun e!1412110 () Bool)

(assert (=> d!660831 (=> (not res!950220) (not e!1412110))))

(assert (=> d!660831 (= res!950220 (= (csize!17140 (right!20215 t!4663)) (+ (size!20163 (left!19885 (right!20215 t!4663))) (size!20163 (right!20215 (right!20215 t!4663))))))))

(assert (=> d!660831 (= (inv!34999 (right!20215 t!4663)) e!1412110)))

(declare-fun b!2210998 () Bool)

(declare-fun res!950221 () Bool)

(assert (=> b!2210998 (=> (not res!950221) (not e!1412110))))

(assert (=> b!2210998 (= res!950221 (and (not (= (left!19885 (right!20215 t!4663)) Empty!8455)) (not (= (right!20215 (right!20215 t!4663)) Empty!8455))))))

(declare-fun b!2210999 () Bool)

(declare-fun res!950222 () Bool)

(assert (=> b!2210999 (=> (not res!950222) (not e!1412110))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2210999 (= res!950222 (= (cheight!8666 (right!20215 t!4663)) (+ (max!0 (height!1279 (left!19885 (right!20215 t!4663))) (height!1279 (right!20215 (right!20215 t!4663)))) 1)))))

(declare-fun b!2211000 () Bool)

(assert (=> b!2211000 (= e!1412110 (<= 0 (cheight!8666 (right!20215 t!4663))))))

(assert (= (and d!660831 res!950220) b!2210998))

(assert (= (and b!2210998 res!950221) b!2210999))

(assert (= (and b!2210999 res!950222) b!2211000))

(declare-fun m!2652711 () Bool)

(assert (=> d!660831 m!2652711))

(declare-fun m!2652713 () Bool)

(assert (=> d!660831 m!2652713))

(assert (=> b!2210999 m!2652701))

(assert (=> b!2210999 m!2652703))

(assert (=> b!2210999 m!2652701))

(assert (=> b!2210999 m!2652703))

(declare-fun m!2652715 () Bool)

(assert (=> b!2210999 m!2652715))

(assert (=> b!2210900 d!660831))

(declare-fun d!660833 () Bool)

(declare-fun lt!826399 () Int)

(assert (=> d!660833 (>= lt!826399 0)))

(declare-fun e!1412113 () Int)

(assert (=> d!660833 (= lt!826399 e!1412113)))

(declare-fun c!353374 () Bool)

(assert (=> d!660833 (= c!353374 ((_ is Nil!25858) (innerList!8515 (xs!11397 t!4663))))))

(assert (=> d!660833 (= (size!20165 (innerList!8515 (xs!11397 t!4663))) lt!826399)))

(declare-fun b!2211005 () Bool)

(assert (=> b!2211005 (= e!1412113 0)))

(declare-fun b!2211006 () Bool)

(assert (=> b!2211006 (= e!1412113 (+ 1 (size!20165 (t!198644 (innerList!8515 (xs!11397 t!4663))))))))

(assert (= (and d!660833 c!353374) b!2211005))

(assert (= (and d!660833 (not c!353374)) b!2211006))

(declare-fun m!2652717 () Bool)

(assert (=> b!2211006 m!2652717))

(assert (=> d!660821 d!660833))

(assert (=> b!2210845 d!660809))

(assert (=> b!2210845 d!660813))

(declare-fun d!660835 () Bool)

(assert (=> d!660835 (= (isEmpty!14800 (list!10024 t!4663)) ((_ is Nil!25858) (list!10024 t!4663)))))

(assert (=> d!660797 d!660835))

(assert (=> d!660797 d!660799))

(declare-fun d!660837 () Bool)

(declare-fun lt!826402 () Int)

(assert (=> d!660837 (= lt!826402 (size!20165 (list!10024 t!4663)))))

(assert (=> d!660837 (= lt!826402 (ite ((_ is Empty!8455) t!4663) 0 (ite ((_ is Leaf!12382) t!4663) (csize!17141 t!4663) (csize!17140 t!4663))))))

(assert (=> d!660837 (= (size!20163 t!4663) lt!826402)))

(declare-fun bs!451405 () Bool)

(assert (= bs!451405 d!660837))

(assert (=> bs!451405 m!2652573))

(assert (=> bs!451405 m!2652573))

(declare-fun m!2652719 () Bool)

(assert (=> bs!451405 m!2652719))

(assert (=> d!660797 d!660837))

(declare-fun d!660839 () Bool)

(declare-fun res!950227 () Bool)

(declare-fun e!1412116 () Bool)

(assert (=> d!660839 (=> (not res!950227) (not e!1412116))))

(assert (=> d!660839 (= res!950227 (<= (size!20165 (list!10025 (xs!11397 (right!20215 t!4663)))) 512))))

(assert (=> d!660839 (= (inv!35000 (right!20215 t!4663)) e!1412116)))

(declare-fun b!2211011 () Bool)

(declare-fun res!950228 () Bool)

(assert (=> b!2211011 (=> (not res!950228) (not e!1412116))))

(assert (=> b!2211011 (= res!950228 (= (csize!17141 (right!20215 t!4663)) (size!20165 (list!10025 (xs!11397 (right!20215 t!4663))))))))

(declare-fun b!2211012 () Bool)

(assert (=> b!2211012 (= e!1412116 (and (> (csize!17141 (right!20215 t!4663)) 0) (<= (csize!17141 (right!20215 t!4663)) 512)))))

(assert (= (and d!660839 res!950227) b!2211011))

(assert (= (and b!2211011 res!950228) b!2211012))

(declare-fun m!2652721 () Bool)

(assert (=> d!660839 m!2652721))

(assert (=> d!660839 m!2652721))

(declare-fun m!2652723 () Bool)

(assert (=> d!660839 m!2652723))

(assert (=> b!2211011 m!2652721))

(assert (=> b!2211011 m!2652721))

(assert (=> b!2211011 m!2652723))

(assert (=> b!2210902 d!660839))

(declare-fun d!660841 () Bool)

(declare-fun c!353375 () Bool)

(assert (=> d!660841 (= c!353375 ((_ is Node!8455) (left!19885 (right!20215 t!4663))))))

(declare-fun e!1412117 () Bool)

(assert (=> d!660841 (= (inv!34997 (left!19885 (right!20215 t!4663))) e!1412117)))

(declare-fun b!2211013 () Bool)

(assert (=> b!2211013 (= e!1412117 (inv!34999 (left!19885 (right!20215 t!4663))))))

(declare-fun b!2211014 () Bool)

(declare-fun e!1412118 () Bool)

(assert (=> b!2211014 (= e!1412117 e!1412118)))

(declare-fun res!950229 () Bool)

(assert (=> b!2211014 (= res!950229 (not ((_ is Leaf!12382) (left!19885 (right!20215 t!4663)))))))

(assert (=> b!2211014 (=> res!950229 e!1412118)))

(declare-fun b!2211015 () Bool)

(assert (=> b!2211015 (= e!1412118 (inv!35000 (left!19885 (right!20215 t!4663))))))

(assert (= (and d!660841 c!353375) b!2211013))

(assert (= (and d!660841 (not c!353375)) b!2211014))

(assert (= (and b!2211014 (not res!950229)) b!2211015))

(declare-fun m!2652725 () Bool)

(assert (=> b!2211013 m!2652725))

(declare-fun m!2652727 () Bool)

(assert (=> b!2211015 m!2652727))

(assert (=> b!2210953 d!660841))

(declare-fun d!660843 () Bool)

(declare-fun c!353376 () Bool)

(assert (=> d!660843 (= c!353376 ((_ is Node!8455) (right!20215 (right!20215 t!4663))))))

(declare-fun e!1412119 () Bool)

(assert (=> d!660843 (= (inv!34997 (right!20215 (right!20215 t!4663))) e!1412119)))

(declare-fun b!2211016 () Bool)

(assert (=> b!2211016 (= e!1412119 (inv!34999 (right!20215 (right!20215 t!4663))))))

(declare-fun b!2211017 () Bool)

(declare-fun e!1412120 () Bool)

(assert (=> b!2211017 (= e!1412119 e!1412120)))

(declare-fun res!950230 () Bool)

(assert (=> b!2211017 (= res!950230 (not ((_ is Leaf!12382) (right!20215 (right!20215 t!4663)))))))

(assert (=> b!2211017 (=> res!950230 e!1412120)))

(declare-fun b!2211018 () Bool)

(assert (=> b!2211018 (= e!1412120 (inv!35000 (right!20215 (right!20215 t!4663))))))

(assert (= (and d!660843 c!353376) b!2211016))

(assert (= (and d!660843 (not c!353376)) b!2211017))

(assert (= (and b!2211017 (not res!950230)) b!2211018))

(declare-fun m!2652729 () Bool)

(assert (=> b!2211016 m!2652729))

(declare-fun m!2652731 () Bool)

(assert (=> b!2211018 m!2652731))

(assert (=> b!2210953 d!660843))

(declare-fun d!660845 () Bool)

(assert (=> d!660845 (= (inv!34998 (xs!11397 (right!20215 t!4663))) (<= (size!20165 (innerList!8515 (xs!11397 (right!20215 t!4663)))) 2147483647))))

(declare-fun bs!451406 () Bool)

(assert (= bs!451406 d!660845))

(declare-fun m!2652733 () Bool)

(assert (=> bs!451406 m!2652733))

(assert (=> b!2210954 d!660845))

(declare-fun d!660847 () Bool)

(assert (=> d!660847 (= (inv!34998 (xs!11397 (left!19885 t!4663))) (<= (size!20165 (innerList!8515 (xs!11397 (left!19885 t!4663)))) 2147483647))))

(declare-fun bs!451407 () Bool)

(assert (= bs!451407 d!660847))

(declare-fun m!2652735 () Bool)

(assert (=> bs!451407 m!2652735))

(assert (=> b!2210951 d!660847))

(declare-fun d!660849 () Bool)

(declare-fun c!353377 () Bool)

(assert (=> d!660849 (= c!353377 ((_ is Node!8455) (left!19885 (left!19885 t!4663))))))

(declare-fun e!1412121 () Bool)

(assert (=> d!660849 (= (inv!34997 (left!19885 (left!19885 t!4663))) e!1412121)))

(declare-fun b!2211019 () Bool)

(assert (=> b!2211019 (= e!1412121 (inv!34999 (left!19885 (left!19885 t!4663))))))

(declare-fun b!2211020 () Bool)

(declare-fun e!1412122 () Bool)

(assert (=> b!2211020 (= e!1412121 e!1412122)))

(declare-fun res!950231 () Bool)

(assert (=> b!2211020 (= res!950231 (not ((_ is Leaf!12382) (left!19885 (left!19885 t!4663)))))))

(assert (=> b!2211020 (=> res!950231 e!1412122)))

(declare-fun b!2211021 () Bool)

(assert (=> b!2211021 (= e!1412122 (inv!35000 (left!19885 (left!19885 t!4663))))))

(assert (= (and d!660849 c!353377) b!2211019))

(assert (= (and d!660849 (not c!353377)) b!2211020))

(assert (= (and b!2211020 (not res!950231)) b!2211021))

(declare-fun m!2652737 () Bool)

(assert (=> b!2211019 m!2652737))

(declare-fun m!2652739 () Bool)

(assert (=> b!2211021 m!2652739))

(assert (=> b!2210950 d!660849))

(declare-fun d!660851 () Bool)

(declare-fun c!353378 () Bool)

(assert (=> d!660851 (= c!353378 ((_ is Node!8455) (right!20215 (left!19885 t!4663))))))

(declare-fun e!1412123 () Bool)

(assert (=> d!660851 (= (inv!34997 (right!20215 (left!19885 t!4663))) e!1412123)))

(declare-fun b!2211022 () Bool)

(assert (=> b!2211022 (= e!1412123 (inv!34999 (right!20215 (left!19885 t!4663))))))

(declare-fun b!2211023 () Bool)

(declare-fun e!1412124 () Bool)

(assert (=> b!2211023 (= e!1412123 e!1412124)))

(declare-fun res!950232 () Bool)

(assert (=> b!2211023 (= res!950232 (not ((_ is Leaf!12382) (right!20215 (left!19885 t!4663)))))))

(assert (=> b!2211023 (=> res!950232 e!1412124)))

(declare-fun b!2211024 () Bool)

(assert (=> b!2211024 (= e!1412124 (inv!35000 (right!20215 (left!19885 t!4663))))))

(assert (= (and d!660851 c!353378) b!2211022))

(assert (= (and d!660851 (not c!353378)) b!2211023))

(assert (= (and b!2211023 (not res!950232)) b!2211024))

(declare-fun m!2652741 () Bool)

(assert (=> b!2211022 m!2652741))

(declare-fun m!2652743 () Bool)

(assert (=> b!2211024 m!2652743))

(assert (=> b!2210950 d!660851))

(declare-fun d!660853 () Bool)

(assert (=> d!660853 (= (head!4720 (list!10024 (left!19885 t!4663))) (h!31259 (list!10024 (left!19885 t!4663))))))

(assert (=> d!660805 d!660853))

(declare-fun b!2211025 () Bool)

(declare-fun e!1412125 () List!25942)

(assert (=> b!2211025 (= e!1412125 Nil!25858)))

(declare-fun b!2211027 () Bool)

(declare-fun e!1412126 () List!25942)

(assert (=> b!2211027 (= e!1412126 (list!10025 (xs!11397 (left!19885 t!4663))))))

(declare-fun b!2211026 () Bool)

(assert (=> b!2211026 (= e!1412125 e!1412126)))

(declare-fun c!353380 () Bool)

(assert (=> b!2211026 (= c!353380 ((_ is Leaf!12382) (left!19885 t!4663)))))

(declare-fun d!660855 () Bool)

(declare-fun c!353379 () Bool)

(assert (=> d!660855 (= c!353379 ((_ is Empty!8455) (left!19885 t!4663)))))

(assert (=> d!660855 (= (list!10024 (left!19885 t!4663)) e!1412125)))

(declare-fun b!2211028 () Bool)

(assert (=> b!2211028 (= e!1412126 (++!6444 (list!10024 (left!19885 (left!19885 t!4663))) (list!10024 (right!20215 (left!19885 t!4663)))))))

(assert (= (and d!660855 c!353379) b!2211025))

(assert (= (and d!660855 (not c!353379)) b!2211026))

(assert (= (and b!2211026 c!353380) b!2211027))

(assert (= (and b!2211026 (not c!353380)) b!2211028))

(declare-fun m!2652745 () Bool)

(assert (=> b!2211027 m!2652745))

(declare-fun m!2652747 () Bool)

(assert (=> b!2211028 m!2652747))

(declare-fun m!2652749 () Bool)

(assert (=> b!2211028 m!2652749))

(assert (=> b!2211028 m!2652747))

(assert (=> b!2211028 m!2652749))

(declare-fun m!2652751 () Bool)

(assert (=> b!2211028 m!2652751))

(assert (=> d!660805 d!660855))

(declare-fun b!2211029 () Bool)

(declare-fun res!950238 () Bool)

(declare-fun e!1412128 () Bool)

(assert (=> b!2211029 (=> (not res!950238) (not e!1412128))))

(assert (=> b!2211029 (= res!950238 (not (isEmpty!14799 (left!19885 (left!19885 t!4663)))))))

(declare-fun b!2211031 () Bool)

(declare-fun res!950235 () Bool)

(assert (=> b!2211031 (=> (not res!950235) (not e!1412128))))

(assert (=> b!2211031 (= res!950235 (<= (- (height!1279 (left!19885 (left!19885 t!4663))) (height!1279 (right!20215 (left!19885 t!4663)))) 1))))

(declare-fun b!2211032 () Bool)

(assert (=> b!2211032 (= e!1412128 (not (isEmpty!14799 (right!20215 (left!19885 t!4663)))))))

(declare-fun b!2211033 () Bool)

(declare-fun e!1412127 () Bool)

(assert (=> b!2211033 (= e!1412127 e!1412128)))

(declare-fun res!950236 () Bool)

(assert (=> b!2211033 (=> (not res!950236) (not e!1412128))))

(assert (=> b!2211033 (= res!950236 (<= (- 1) (- (height!1279 (left!19885 (left!19885 t!4663))) (height!1279 (right!20215 (left!19885 t!4663))))))))

(declare-fun b!2211034 () Bool)

(declare-fun res!950233 () Bool)

(assert (=> b!2211034 (=> (not res!950233) (not e!1412128))))

(assert (=> b!2211034 (= res!950233 (isBalanced!2613 (right!20215 (left!19885 t!4663))))))

(declare-fun d!660857 () Bool)

(declare-fun res!950237 () Bool)

(assert (=> d!660857 (=> res!950237 e!1412127)))

(assert (=> d!660857 (= res!950237 (not ((_ is Node!8455) (left!19885 t!4663))))))

(assert (=> d!660857 (= (isBalanced!2613 (left!19885 t!4663)) e!1412127)))

(declare-fun b!2211030 () Bool)

(declare-fun res!950234 () Bool)

(assert (=> b!2211030 (=> (not res!950234) (not e!1412128))))

(assert (=> b!2211030 (= res!950234 (isBalanced!2613 (left!19885 (left!19885 t!4663))))))

(assert (= (and d!660857 (not res!950237)) b!2211033))

(assert (= (and b!2211033 res!950236) b!2211031))

(assert (= (and b!2211031 res!950235) b!2211030))

(assert (= (and b!2211030 res!950234) b!2211034))

(assert (= (and b!2211034 res!950233) b!2211029))

(assert (= (and b!2211029 res!950238) b!2211032))

(declare-fun m!2652753 () Bool)

(assert (=> b!2211030 m!2652753))

(declare-fun m!2652755 () Bool)

(assert (=> b!2211033 m!2652755))

(declare-fun m!2652757 () Bool)

(assert (=> b!2211033 m!2652757))

(assert (=> b!2211031 m!2652755))

(assert (=> b!2211031 m!2652757))

(declare-fun m!2652759 () Bool)

(assert (=> b!2211034 m!2652759))

(declare-fun m!2652761 () Bool)

(assert (=> b!2211032 m!2652761))

(declare-fun m!2652763 () Bool)

(assert (=> b!2211029 m!2652763))

(assert (=> d!660805 d!660857))

(declare-fun d!660859 () Bool)

(declare-fun lt!826405 () T!40550)

(declare-fun apply!6404 (List!25942 Int) T!40550)

(assert (=> d!660859 (= lt!826405 (apply!6404 (list!10025 (xs!11397 (left!19885 t!4663))) 0))))

(declare-fun choose!13051 (IArray!16915 Int) T!40550)

(assert (=> d!660859 (= lt!826405 (choose!13051 (xs!11397 (left!19885 t!4663)) 0))))

(declare-fun e!1412131 () Bool)

(assert (=> d!660859 e!1412131))

(declare-fun res!950241 () Bool)

(assert (=> d!660859 (=> (not res!950241) (not e!1412131))))

(assert (=> d!660859 (= res!950241 (<= 0 0))))

(assert (=> d!660859 (= (apply!6402 (xs!11397 (left!19885 t!4663)) 0) lt!826405)))

(declare-fun b!2211037 () Bool)

(declare-fun size!20167 (IArray!16915) Int)

(assert (=> b!2211037 (= e!1412131 (< 0 (size!20167 (xs!11397 (left!19885 t!4663)))))))

(assert (= (and d!660859 res!950241) b!2211037))

(assert (=> d!660859 m!2652745))

(assert (=> d!660859 m!2652745))

(declare-fun m!2652765 () Bool)

(assert (=> d!660859 m!2652765))

(declare-fun m!2652767 () Bool)

(assert (=> d!660859 m!2652767))

(declare-fun m!2652769 () Bool)

(assert (=> b!2211037 m!2652769))

(assert (=> b!2210880 d!660859))

(declare-fun d!660861 () Bool)

(declare-fun res!950242 () Bool)

(declare-fun e!1412132 () Bool)

(assert (=> d!660861 (=> (not res!950242) (not e!1412132))))

(assert (=> d!660861 (= res!950242 (= (csize!17140 (left!19885 t!4663)) (+ (size!20163 (left!19885 (left!19885 t!4663))) (size!20163 (right!20215 (left!19885 t!4663))))))))

(assert (=> d!660861 (= (inv!34999 (left!19885 t!4663)) e!1412132)))

(declare-fun b!2211038 () Bool)

(declare-fun res!950243 () Bool)

(assert (=> b!2211038 (=> (not res!950243) (not e!1412132))))

(assert (=> b!2211038 (= res!950243 (and (not (= (left!19885 (left!19885 t!4663)) Empty!8455)) (not (= (right!20215 (left!19885 t!4663)) Empty!8455))))))

(declare-fun b!2211039 () Bool)

(declare-fun res!950244 () Bool)

(assert (=> b!2211039 (=> (not res!950244) (not e!1412132))))

(assert (=> b!2211039 (= res!950244 (= (cheight!8666 (left!19885 t!4663)) (+ (max!0 (height!1279 (left!19885 (left!19885 t!4663))) (height!1279 (right!20215 (left!19885 t!4663)))) 1)))))

(declare-fun b!2211040 () Bool)

(assert (=> b!2211040 (= e!1412132 (<= 0 (cheight!8666 (left!19885 t!4663))))))

(assert (= (and d!660861 res!950242) b!2211038))

(assert (= (and b!2211038 res!950243) b!2211039))

(assert (= (and b!2211039 res!950244) b!2211040))

(declare-fun m!2652771 () Bool)

(assert (=> d!660861 m!2652771))

(declare-fun m!2652773 () Bool)

(assert (=> d!660861 m!2652773))

(assert (=> b!2211039 m!2652755))

(assert (=> b!2211039 m!2652757))

(assert (=> b!2211039 m!2652755))

(assert (=> b!2211039 m!2652757))

(declare-fun m!2652775 () Bool)

(assert (=> b!2211039 m!2652775))

(assert (=> b!2210897 d!660861))

(declare-fun d!660863 () Bool)

(assert (=> d!660863 (= (list!10025 (xs!11397 t!4663)) (innerList!8515 (xs!11397 t!4663)))))

(assert (=> b!2210856 d!660863))

(declare-fun d!660865 () Bool)

(declare-fun res!950245 () Bool)

(declare-fun e!1412133 () Bool)

(assert (=> d!660865 (=> (not res!950245) (not e!1412133))))

(assert (=> d!660865 (= res!950245 (<= (size!20165 (list!10025 (xs!11397 (left!19885 t!4663)))) 512))))

(assert (=> d!660865 (= (inv!35000 (left!19885 t!4663)) e!1412133)))

(declare-fun b!2211041 () Bool)

(declare-fun res!950246 () Bool)

(assert (=> b!2211041 (=> (not res!950246) (not e!1412133))))

(assert (=> b!2211041 (= res!950246 (= (csize!17141 (left!19885 t!4663)) (size!20165 (list!10025 (xs!11397 (left!19885 t!4663))))))))

(declare-fun b!2211042 () Bool)

(assert (=> b!2211042 (= e!1412133 (and (> (csize!17141 (left!19885 t!4663)) 0) (<= (csize!17141 (left!19885 t!4663)) 512)))))

(assert (= (and d!660865 res!950245) b!2211041))

(assert (= (and b!2211041 res!950246) b!2211042))

(assert (=> d!660865 m!2652745))

(assert (=> d!660865 m!2652745))

(declare-fun m!2652777 () Bool)

(assert (=> d!660865 m!2652777))

(assert (=> b!2211041 m!2652745))

(assert (=> b!2211041 m!2652745))

(assert (=> b!2211041 m!2652777))

(assert (=> b!2210899 d!660865))

(declare-fun d!660867 () Bool)

(declare-fun lt!826406 () T!40550)

(assert (=> d!660867 (= lt!826406 (head!4720 (list!10024 (left!19885 (left!19885 t!4663)))))))

(declare-fun e!1412134 () T!40550)

(assert (=> d!660867 (= lt!826406 e!1412134)))

(declare-fun c!353381 () Bool)

(assert (=> d!660867 (= c!353381 ((_ is Leaf!12382) (left!19885 (left!19885 t!4663))))))

(assert (=> d!660867 (isBalanced!2613 (left!19885 (left!19885 t!4663)))))

(assert (=> d!660867 (= (head!4719 (left!19885 (left!19885 t!4663))) lt!826406)))

(declare-fun b!2211043 () Bool)

(assert (=> b!2211043 (= e!1412134 (apply!6402 (xs!11397 (left!19885 (left!19885 t!4663))) 0))))

(declare-fun b!2211044 () Bool)

(assert (=> b!2211044 (= e!1412134 (head!4719 (left!19885 (left!19885 (left!19885 t!4663)))))))

(assert (= (and d!660867 c!353381) b!2211043))

(assert (= (and d!660867 (not c!353381)) b!2211044))

(assert (=> d!660867 m!2652747))

(assert (=> d!660867 m!2652747))

(declare-fun m!2652779 () Bool)

(assert (=> d!660867 m!2652779))

(assert (=> d!660867 m!2652753))

(declare-fun m!2652781 () Bool)

(assert (=> b!2211043 m!2652781))

(declare-fun m!2652783 () Bool)

(assert (=> b!2211044 m!2652783))

(assert (=> b!2210881 d!660867))

(declare-fun b!2211053 () Bool)

(declare-fun e!1412139 () List!25942)

(assert (=> b!2211053 (= e!1412139 (list!10024 (right!20215 t!4663)))))

(declare-fun b!2211054 () Bool)

(assert (=> b!2211054 (= e!1412139 (Cons!25858 (h!31259 (list!10024 (left!19885 t!4663))) (++!6444 (t!198644 (list!10024 (left!19885 t!4663))) (list!10024 (right!20215 t!4663)))))))

(declare-fun d!660869 () Bool)

(declare-fun e!1412140 () Bool)

(assert (=> d!660869 e!1412140))

(declare-fun res!950251 () Bool)

(assert (=> d!660869 (=> (not res!950251) (not e!1412140))))

(declare-fun lt!826409 () List!25942)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3511 (List!25942) (InoxSet T!40550))

(assert (=> d!660869 (= res!950251 (= (content!3511 lt!826409) ((_ map or) (content!3511 (list!10024 (left!19885 t!4663))) (content!3511 (list!10024 (right!20215 t!4663))))))))

(assert (=> d!660869 (= lt!826409 e!1412139)))

(declare-fun c!353384 () Bool)

(assert (=> d!660869 (= c!353384 ((_ is Nil!25858) (list!10024 (left!19885 t!4663))))))

(assert (=> d!660869 (= (++!6444 (list!10024 (left!19885 t!4663)) (list!10024 (right!20215 t!4663))) lt!826409)))

(declare-fun b!2211055 () Bool)

(declare-fun res!950252 () Bool)

(assert (=> b!2211055 (=> (not res!950252) (not e!1412140))))

(assert (=> b!2211055 (= res!950252 (= (size!20165 lt!826409) (+ (size!20165 (list!10024 (left!19885 t!4663))) (size!20165 (list!10024 (right!20215 t!4663))))))))

(declare-fun b!2211056 () Bool)

(assert (=> b!2211056 (= e!1412140 (or (not (= (list!10024 (right!20215 t!4663)) Nil!25858)) (= lt!826409 (list!10024 (left!19885 t!4663)))))))

(assert (= (and d!660869 c!353384) b!2211053))

(assert (= (and d!660869 (not c!353384)) b!2211054))

(assert (= (and d!660869 res!950251) b!2211055))

(assert (= (and b!2211055 res!950252) b!2211056))

(assert (=> b!2211054 m!2652597))

(declare-fun m!2652791 () Bool)

(assert (=> b!2211054 m!2652791))

(declare-fun m!2652793 () Bool)

(assert (=> d!660869 m!2652793))

(assert (=> d!660869 m!2652595))

(declare-fun m!2652795 () Bool)

(assert (=> d!660869 m!2652795))

(assert (=> d!660869 m!2652597))

(declare-fun m!2652797 () Bool)

(assert (=> d!660869 m!2652797))

(declare-fun m!2652799 () Bool)

(assert (=> b!2211055 m!2652799))

(assert (=> b!2211055 m!2652595))

(declare-fun m!2652801 () Bool)

(assert (=> b!2211055 m!2652801))

(assert (=> b!2211055 m!2652597))

(declare-fun m!2652807 () Bool)

(assert (=> b!2211055 m!2652807))

(assert (=> b!2210857 d!660869))

(assert (=> b!2210857 d!660855))

(declare-fun b!2211063 () Bool)

(declare-fun e!1412145 () List!25942)

(assert (=> b!2211063 (= e!1412145 Nil!25858)))

(declare-fun b!2211065 () Bool)

(declare-fun e!1412146 () List!25942)

(assert (=> b!2211065 (= e!1412146 (list!10025 (xs!11397 (right!20215 t!4663))))))

(declare-fun b!2211064 () Bool)

(assert (=> b!2211064 (= e!1412145 e!1412146)))

(declare-fun c!353388 () Bool)

(assert (=> b!2211064 (= c!353388 ((_ is Leaf!12382) (right!20215 t!4663)))))

(declare-fun d!660879 () Bool)

(declare-fun c!353387 () Bool)

(assert (=> d!660879 (= c!353387 ((_ is Empty!8455) (right!20215 t!4663)))))

(assert (=> d!660879 (= (list!10024 (right!20215 t!4663)) e!1412145)))

(declare-fun b!2211066 () Bool)

(assert (=> b!2211066 (= e!1412146 (++!6444 (list!10024 (left!19885 (right!20215 t!4663))) (list!10024 (right!20215 (right!20215 t!4663)))))))

(assert (= (and d!660879 c!353387) b!2211063))

(assert (= (and d!660879 (not c!353387)) b!2211064))

(assert (= (and b!2211064 c!353388) b!2211065))

(assert (= (and b!2211064 (not c!353388)) b!2211066))

(assert (=> b!2211065 m!2652721))

(declare-fun m!2652813 () Bool)

(assert (=> b!2211066 m!2652813))

(declare-fun m!2652815 () Bool)

(assert (=> b!2211066 m!2652815))

(assert (=> b!2211066 m!2652813))

(assert (=> b!2211066 m!2652815))

(declare-fun m!2652817 () Bool)

(assert (=> b!2211066 m!2652817))

(assert (=> b!2210857 d!660879))

(declare-fun d!660883 () Bool)

(declare-fun res!950255 () Bool)

(declare-fun e!1412147 () Bool)

(assert (=> d!660883 (=> (not res!950255) (not e!1412147))))

(assert (=> d!660883 (= res!950255 (= (csize!17140 t!4663) (+ (size!20163 (left!19885 t!4663)) (size!20163 (right!20215 t!4663)))))))

(assert (=> d!660883 (= (inv!34999 t!4663) e!1412147)))

(declare-fun b!2211067 () Bool)

(declare-fun res!950256 () Bool)

(assert (=> b!2211067 (=> (not res!950256) (not e!1412147))))

(assert (=> b!2211067 (= res!950256 (and (not (= (left!19885 t!4663) Empty!8455)) (not (= (right!20215 t!4663) Empty!8455))))))

(declare-fun b!2211068 () Bool)

(declare-fun res!950257 () Bool)

(assert (=> b!2211068 (=> (not res!950257) (not e!1412147))))

(assert (=> b!2211068 (= res!950257 (= (cheight!8666 t!4663) (+ (max!0 (height!1279 (left!19885 t!4663)) (height!1279 (right!20215 t!4663))) 1)))))

(declare-fun b!2211069 () Bool)

(assert (=> b!2211069 (= e!1412147 (<= 0 (cheight!8666 t!4663)))))

(assert (= (and d!660883 res!950255) b!2211067))

(assert (= (and b!2211067 res!950256) b!2211068))

(assert (= (and b!2211068 res!950257) b!2211069))

(declare-fun m!2652819 () Bool)

(assert (=> d!660883 m!2652819))

(declare-fun m!2652821 () Bool)

(assert (=> d!660883 m!2652821))

(assert (=> b!2211068 m!2652641))

(assert (=> b!2211068 m!2652643))

(assert (=> b!2211068 m!2652641))

(assert (=> b!2211068 m!2652643))

(declare-fun m!2652823 () Bool)

(assert (=> b!2211068 m!2652823))

(assert (=> b!2210937 d!660883))

(declare-fun d!660885 () Bool)

(declare-fun lt!826411 () Bool)

(assert (=> d!660885 (= lt!826411 (isEmpty!14800 (list!10024 (left!19885 t!4663))))))

(assert (=> d!660885 (= lt!826411 (= (size!20163 (left!19885 t!4663)) 0))))

(assert (=> d!660885 (= (isEmpty!14799 (left!19885 t!4663)) lt!826411)))

(declare-fun bs!451410 () Bool)

(assert (= bs!451410 d!660885))

(assert (=> bs!451410 m!2652595))

(assert (=> bs!451410 m!2652595))

(declare-fun m!2652825 () Bool)

(assert (=> bs!451410 m!2652825))

(assert (=> bs!451410 m!2652819))

(assert (=> b!2210931 d!660885))

(declare-fun d!660887 () Bool)

(assert (=> d!660887 (= (height!1279 (left!19885 t!4663)) (ite ((_ is Empty!8455) (left!19885 t!4663)) 0 (ite ((_ is Leaf!12382) (left!19885 t!4663)) 1 (cheight!8666 (left!19885 t!4663)))))))

(assert (=> b!2210933 d!660887))

(declare-fun d!660889 () Bool)

(assert (=> d!660889 (= (height!1279 (right!20215 t!4663)) (ite ((_ is Empty!8455) (right!20215 t!4663)) 0 (ite ((_ is Leaf!12382) (right!20215 t!4663)) 1 (cheight!8666 (right!20215 t!4663)))))))

(assert (=> b!2210933 d!660889))

(assert (=> b!2210932 d!660857))

(declare-fun d!660891 () Bool)

(declare-fun lt!826412 () Bool)

(assert (=> d!660891 (= lt!826412 (isEmpty!14800 (list!10024 (right!20215 t!4663))))))

(assert (=> d!660891 (= lt!826412 (= (size!20163 (right!20215 t!4663)) 0))))

(assert (=> d!660891 (= (isEmpty!14799 (right!20215 t!4663)) lt!826412)))

(declare-fun bs!451411 () Bool)

(assert (= bs!451411 d!660891))

(assert (=> bs!451411 m!2652597))

(assert (=> bs!451411 m!2652597))

(declare-fun m!2652827 () Bool)

(assert (=> bs!451411 m!2652827))

(assert (=> bs!451411 m!2652821))

(assert (=> b!2210934 d!660891))

(declare-fun d!660893 () Bool)

(declare-fun res!950262 () Bool)

(declare-fun e!1412150 () Bool)

(assert (=> d!660893 (=> (not res!950262) (not e!1412150))))

(assert (=> d!660893 (= res!950262 (<= (size!20165 (list!10025 (xs!11397 t!4663))) 512))))

(assert (=> d!660893 (= (inv!35000 t!4663) e!1412150)))

(declare-fun b!2211074 () Bool)

(declare-fun res!950263 () Bool)

(assert (=> b!2211074 (=> (not res!950263) (not e!1412150))))

(assert (=> b!2211074 (= res!950263 (= (csize!17141 t!4663) (size!20165 (list!10025 (xs!11397 t!4663)))))))

(declare-fun b!2211075 () Bool)

(assert (=> b!2211075 (= e!1412150 (and (> (csize!17141 t!4663) 0) (<= (csize!17141 t!4663) 512)))))

(assert (= (and d!660893 res!950262) b!2211074))

(assert (= (and b!2211074 res!950263) b!2211075))

(assert (=> d!660893 m!2652593))

(assert (=> d!660893 m!2652593))

(declare-fun m!2652829 () Bool)

(assert (=> d!660893 m!2652829))

(assert (=> b!2211074 m!2652593))

(assert (=> b!2211074 m!2652593))

(assert (=> b!2211074 m!2652829))

(assert (=> b!2210939 d!660893))

(assert (=> b!2210935 d!660887))

(assert (=> b!2210935 d!660889))

(declare-fun e!1412151 () Bool)

(declare-fun b!2211076 () Bool)

(declare-fun tp!687201 () Bool)

(declare-fun tp!687200 () Bool)

(assert (=> b!2211076 (= e!1412151 (and (inv!34997 (left!19885 (left!19885 (right!20215 t!4663)))) tp!687200 (inv!34997 (right!20215 (left!19885 (right!20215 t!4663)))) tp!687201))))

(declare-fun b!2211078 () Bool)

(declare-fun e!1412152 () Bool)

(declare-fun tp!687199 () Bool)

(assert (=> b!2211078 (= e!1412152 tp!687199)))

(declare-fun b!2211077 () Bool)

(assert (=> b!2211077 (= e!1412151 (and (inv!34998 (xs!11397 (left!19885 (right!20215 t!4663)))) e!1412152))))

(assert (=> b!2210953 (= tp!687179 (and (inv!34997 (left!19885 (right!20215 t!4663))) e!1412151))))

(assert (= (and b!2210953 ((_ is Node!8455) (left!19885 (right!20215 t!4663)))) b!2211076))

(assert (= b!2211077 b!2211078))

(assert (= (and b!2210953 ((_ is Leaf!12382) (left!19885 (right!20215 t!4663)))) b!2211077))

(declare-fun m!2652831 () Bool)

(assert (=> b!2211076 m!2652831))

(declare-fun m!2652833 () Bool)

(assert (=> b!2211076 m!2652833))

(declare-fun m!2652835 () Bool)

(assert (=> b!2211077 m!2652835))

(assert (=> b!2210953 m!2652669))

(declare-fun b!2211081 () Bool)

(declare-fun tp!687204 () Bool)

(declare-fun tp!687203 () Bool)

(declare-fun e!1412154 () Bool)

(assert (=> b!2211081 (= e!1412154 (and (inv!34997 (left!19885 (right!20215 (right!20215 t!4663)))) tp!687203 (inv!34997 (right!20215 (right!20215 (right!20215 t!4663)))) tp!687204))))

(declare-fun b!2211083 () Bool)

(declare-fun e!1412155 () Bool)

(declare-fun tp!687202 () Bool)

(assert (=> b!2211083 (= e!1412155 tp!687202)))

(declare-fun b!2211082 () Bool)

(assert (=> b!2211082 (= e!1412154 (and (inv!34998 (xs!11397 (right!20215 (right!20215 t!4663)))) e!1412155))))

(assert (=> b!2210953 (= tp!687180 (and (inv!34997 (right!20215 (right!20215 t!4663))) e!1412154))))

(assert (= (and b!2210953 ((_ is Node!8455) (right!20215 (right!20215 t!4663)))) b!2211081))

(assert (= b!2211082 b!2211083))

(assert (= (and b!2210953 ((_ is Leaf!12382) (right!20215 (right!20215 t!4663)))) b!2211082))

(declare-fun m!2652841 () Bool)

(assert (=> b!2211081 m!2652841))

(declare-fun m!2652843 () Bool)

(assert (=> b!2211081 m!2652843))

(declare-fun m!2652845 () Bool)

(assert (=> b!2211082 m!2652845))

(assert (=> b!2210953 m!2652671))

(declare-fun b!2211090 () Bool)

(declare-fun e!1412158 () Bool)

(declare-fun tp!687205 () Bool)

(assert (=> b!2211090 (= e!1412158 (and tp_is_empty!9775 tp!687205))))

(assert (=> b!2210955 (= tp!687178 e!1412158)))

(assert (= (and b!2210955 ((_ is Cons!25858) (innerList!8515 (xs!11397 (right!20215 t!4663))))) b!2211090))

(declare-fun b!2211091 () Bool)

(declare-fun e!1412159 () Bool)

(declare-fun tp!687206 () Bool)

(assert (=> b!2211091 (= e!1412159 (and tp_is_empty!9775 tp!687206))))

(assert (=> b!2210963 (= tp!687183 e!1412159)))

(assert (= (and b!2210963 ((_ is Cons!25858) (t!198644 (innerList!8515 (xs!11397 t!4663))))) b!2211091))

(declare-fun tp!687209 () Bool)

(declare-fun b!2211092 () Bool)

(declare-fun e!1412160 () Bool)

(declare-fun tp!687208 () Bool)

(assert (=> b!2211092 (= e!1412160 (and (inv!34997 (left!19885 (left!19885 (left!19885 t!4663)))) tp!687208 (inv!34997 (right!20215 (left!19885 (left!19885 t!4663)))) tp!687209))))

(declare-fun b!2211094 () Bool)

(declare-fun e!1412161 () Bool)

(declare-fun tp!687207 () Bool)

(assert (=> b!2211094 (= e!1412161 tp!687207)))

(declare-fun b!2211093 () Bool)

(assert (=> b!2211093 (= e!1412160 (and (inv!34998 (xs!11397 (left!19885 (left!19885 t!4663)))) e!1412161))))

(assert (=> b!2210950 (= tp!687176 (and (inv!34997 (left!19885 (left!19885 t!4663))) e!1412160))))

(assert (= (and b!2210950 ((_ is Node!8455) (left!19885 (left!19885 t!4663)))) b!2211092))

(assert (= b!2211093 b!2211094))

(assert (= (and b!2210950 ((_ is Leaf!12382) (left!19885 (left!19885 t!4663)))) b!2211093))

(declare-fun m!2652847 () Bool)

(assert (=> b!2211092 m!2652847))

(declare-fun m!2652849 () Bool)

(assert (=> b!2211092 m!2652849))

(declare-fun m!2652853 () Bool)

(assert (=> b!2211093 m!2652853))

(assert (=> b!2210950 m!2652663))

(declare-fun b!2211095 () Bool)

(declare-fun tp!687212 () Bool)

(declare-fun e!1412162 () Bool)

(declare-fun tp!687211 () Bool)

(assert (=> b!2211095 (= e!1412162 (and (inv!34997 (left!19885 (right!20215 (left!19885 t!4663)))) tp!687211 (inv!34997 (right!20215 (right!20215 (left!19885 t!4663)))) tp!687212))))

(declare-fun b!2211097 () Bool)

(declare-fun e!1412163 () Bool)

(declare-fun tp!687210 () Bool)

(assert (=> b!2211097 (= e!1412163 tp!687210)))

(declare-fun b!2211096 () Bool)

(assert (=> b!2211096 (= e!1412162 (and (inv!34998 (xs!11397 (right!20215 (left!19885 t!4663)))) e!1412163))))

(assert (=> b!2210950 (= tp!687177 (and (inv!34997 (right!20215 (left!19885 t!4663))) e!1412162))))

(assert (= (and b!2210950 ((_ is Node!8455) (right!20215 (left!19885 t!4663)))) b!2211095))

(assert (= b!2211096 b!2211097))

(assert (= (and b!2210950 ((_ is Leaf!12382) (right!20215 (left!19885 t!4663)))) b!2211096))

(declare-fun m!2652865 () Bool)

(assert (=> b!2211095 m!2652865))

(declare-fun m!2652867 () Bool)

(assert (=> b!2211095 m!2652867))

(declare-fun m!2652869 () Bool)

(assert (=> b!2211096 m!2652869))

(assert (=> b!2210950 m!2652665))

(declare-fun b!2211098 () Bool)

(declare-fun e!1412164 () Bool)

(declare-fun tp!687213 () Bool)

(assert (=> b!2211098 (= e!1412164 (and tp_is_empty!9775 tp!687213))))

(assert (=> b!2210952 (= tp!687175 e!1412164)))

(assert (= (and b!2210952 ((_ is Cons!25858) (innerList!8515 (xs!11397 (left!19885 t!4663))))) b!2211098))

(check-sat (not d!660859) (not b!2210987) (not d!660837) (not d!660847) (not b!2211077) tp_is_empty!9775 (not b!2211031) (not b!2210953) (not b!2211006) (not b!2211028) (not d!660845) (not b!2211054) (not b!2211083) (not b!2211015) (not b!2211068) (not b!2211097) (not b!2211094) (not b!2211013) (not b!2210999) (not b!2211039) (not b!2211033) (not d!660891) (not b!2211019) (not b!2210988) (not d!660839) (not b!2211027) (not b!2211032) (not b!2211043) (not b!2211091) (not b!2211074) (not b!2211066) (not b!2211096) (not d!660867) (not b!2210986) (not b!2211024) (not b!2211029) (not b!2211092) (not b!2211030) (not d!660893) (not b!2211016) (not d!660883) (not b!2211018) (not d!660885) (not d!660865) (not b!2211022) (not b!2211055) (not b!2211082) (not b!2211078) (not b!2211021) (not b!2211081) (not b!2211037) (not b!2210990) (not b!2211065) (not b!2210991) (not b!2211093) (not b!2211044) (not b!2211095) (not b!2211034) (not d!660831) (not b!2211041) (not d!660869) (not b!2211011) (not b!2211090) (not b!2210989) (not b!2210950) (not b!2211098) (not d!660861) (not b!2211076))
(check-sat)
