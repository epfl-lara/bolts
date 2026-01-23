; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107324 () Bool)

(assert start!107324)

(declare-fun b!1204796 () Bool)

(declare-fun e!772978 () Bool)

(declare-fun tp_is_empty!6091 () Bool)

(declare-fun tp!341888 () Bool)

(assert (=> b!1204796 (= e!772978 (and tp_is_empty!6091 tp!341888))))

(declare-fun from!613 () Int)

(declare-datatypes ((T!22174 0))(
  ( (T!22175 (val!3944 Int)) )
))
(declare-datatypes ((List!12123 0))(
  ( (Nil!12099) (Cons!12099 (h!17500 T!22174) (t!112539 List!12123)) )
))
(declare-fun lt!411976 () List!12123)

(declare-fun r!2028 () List!12123)

(declare-fun until!61 () Int)

(declare-fun call!84133 () List!12123)

(declare-fun bm!84128 () Bool)

(declare-fun lt!411973 () Int)

(declare-fun c!201111 () Bool)

(declare-fun slice!511 (List!12123 Int Int) List!12123)

(assert (=> bm!84128 (= call!84133 (slice!511 (ite c!201111 r!2028 lt!411976) (ite c!201111 (- (- from!613 1) lt!411973) (- from!613 1)) (ite c!201111 (- (- until!61 1) lt!411973) lt!411973)))))

(declare-fun b!1204797 () Bool)

(declare-fun e!772979 () List!12123)

(declare-fun call!84134 () List!12123)

(assert (=> b!1204797 (= e!772979 call!84134)))

(declare-fun res!542671 () Bool)

(declare-fun e!772982 () Bool)

(assert (=> start!107324 (=> (not res!542671) (not e!772982))))

(assert (=> start!107324 (= res!542671 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107324 e!772982))

(assert (=> start!107324 true))

(declare-fun e!772984 () Bool)

(assert (=> start!107324 e!772984))

(assert (=> start!107324 e!772978))

(declare-fun b!1204798 () Bool)

(declare-fun e!772977 () Bool)

(declare-fun e!772981 () Bool)

(assert (=> b!1204798 (= e!772977 e!772981)))

(declare-fun res!542670 () Bool)

(assert (=> b!1204798 (=> (not res!542670) (not e!772981))))

(declare-fun lt!411975 () List!12123)

(declare-fun lt!411971 () List!12123)

(declare-fun tail!1726 (List!12123) List!12123)

(assert (=> b!1204798 (= res!542670 (= (tail!1726 lt!411975) lt!411971))))

(declare-fun ++!3123 (List!12123 List!12123) List!12123)

(assert (=> b!1204798 (= lt!411971 (++!3123 lt!411976 r!2028))))

(declare-fun l!2744 () List!12123)

(assert (=> b!1204798 (= lt!411976 (tail!1726 l!2744))))

(assert (=> b!1204798 (= lt!411975 (++!3123 l!2744 r!2028))))

(declare-fun b!1204799 () Bool)

(assert (=> b!1204799 (= e!772982 e!772977)))

(declare-fun res!542669 () Bool)

(assert (=> b!1204799 (=> (not res!542669) (not e!772977))))

(declare-fun lt!411970 () Int)

(declare-fun lt!411969 () Int)

(assert (=> b!1204799 (= res!542669 (and (<= until!61 (+ lt!411970 lt!411969)) (not (= l!2744 Nil!12099)) (not (= r!2028 Nil!12099)) (not (= until!61 0))))))

(declare-fun size!9639 (List!12123) Int)

(assert (=> b!1204799 (= lt!411969 (size!9639 r!2028))))

(assert (=> b!1204799 (= lt!411970 (size!9639 l!2744))))

(declare-fun b!1204800 () Bool)

(declare-fun e!772983 () Bool)

(declare-fun lt!411972 () List!12123)

(assert (=> b!1204800 (= e!772983 (= lt!411972 e!772979))))

(declare-fun c!201112 () Bool)

(assert (=> b!1204800 (= c!201112 (<= (- until!61 1) lt!411973))))

(declare-fun b!1204801 () Bool)

(declare-fun res!542668 () Bool)

(assert (=> b!1204801 (=> (not res!542668) (not e!772981))))

(assert (=> b!1204801 (= res!542668 (and (not (= from!613 0)) (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(declare-fun b!1204802 () Bool)

(declare-fun e!772980 () Bool)

(assert (=> b!1204802 (= e!772980 (not true))))

(assert (=> b!1204802 e!772983))

(assert (=> b!1204802 (= c!201111 (<= lt!411973 (- from!613 1)))))

(assert (=> b!1204802 (= lt!411972 (slice!511 lt!411971 (- from!613 1) (- until!61 1)))))

(declare-datatypes ((Unit!18500 0))(
  ( (Unit!18501) )
))
(declare-fun lt!411974 () Unit!18500)

(declare-fun sliceLemma!61 (List!12123 List!12123 Int Int) Unit!18500)

(assert (=> b!1204802 (= lt!411974 (sliceLemma!61 lt!411976 r!2028 (- from!613 1) (- until!61 1)))))

(declare-fun b!1204803 () Bool)

(assert (=> b!1204803 (= e!772979 (++!3123 call!84133 call!84134))))

(declare-fun bm!84129 () Bool)

(assert (=> bm!84129 (= call!84134 (slice!511 (ite c!201112 lt!411976 r!2028) (ite c!201112 (- from!613 1) 0) (ite c!201112 (- until!61 1) (- (- until!61 1) lt!411973))))))

(declare-fun b!1204804 () Bool)

(assert (=> b!1204804 (= e!772981 e!772980)))

(declare-fun res!542672 () Bool)

(assert (=> b!1204804 (=> (not res!542672) (not e!772980))))

(assert (=> b!1204804 (= res!542672 (<= (- until!61 1) (+ lt!411973 lt!411969)))))

(assert (=> b!1204804 (= lt!411973 (size!9639 lt!411976))))

(declare-fun b!1204805 () Bool)

(assert (=> b!1204805 (= e!772983 (= lt!411972 call!84133))))

(declare-fun b!1204806 () Bool)

(declare-fun tp!341889 () Bool)

(assert (=> b!1204806 (= e!772984 (and tp_is_empty!6091 tp!341889))))

(assert (= (and start!107324 res!542671) b!1204799))

(assert (= (and b!1204799 res!542669) b!1204798))

(assert (= (and b!1204798 res!542670) b!1204801))

(assert (= (and b!1204801 res!542668) b!1204804))

(assert (= (and b!1204804 res!542672) b!1204802))

(assert (= (and b!1204802 c!201111) b!1204805))

(assert (= (and b!1204802 (not c!201111)) b!1204800))

(assert (= (and b!1204800 c!201112) b!1204797))

(assert (= (and b!1204800 (not c!201112)) b!1204803))

(assert (= (or b!1204797 b!1204803) bm!84129))

(assert (= (or b!1204805 b!1204803) bm!84128))

(get-info :version)

(assert (= (and start!107324 ((_ is Cons!12099) l!2744)) b!1204806))

(assert (= (and start!107324 ((_ is Cons!12099) r!2028)) b!1204796))

(declare-fun m!1380153 () Bool)

(assert (=> b!1204803 m!1380153))

(declare-fun m!1380155 () Bool)

(assert (=> b!1204798 m!1380155))

(declare-fun m!1380157 () Bool)

(assert (=> b!1204798 m!1380157))

(declare-fun m!1380159 () Bool)

(assert (=> b!1204798 m!1380159))

(declare-fun m!1380161 () Bool)

(assert (=> b!1204798 m!1380161))

(declare-fun m!1380163 () Bool)

(assert (=> b!1204802 m!1380163))

(declare-fun m!1380165 () Bool)

(assert (=> b!1204802 m!1380165))

(declare-fun m!1380167 () Bool)

(assert (=> b!1204799 m!1380167))

(declare-fun m!1380169 () Bool)

(assert (=> b!1204799 m!1380169))

(declare-fun m!1380171 () Bool)

(assert (=> bm!84128 m!1380171))

(declare-fun m!1380173 () Bool)

(assert (=> bm!84129 m!1380173))

(declare-fun m!1380175 () Bool)

(assert (=> b!1204804 m!1380175))

(check-sat (not b!1204798) (not b!1204799) (not b!1204803) (not b!1204796) tp_is_empty!6091 (not b!1204804) (not bm!84128) (not b!1204806) (not b!1204802) (not bm!84129))
(check-sat)
