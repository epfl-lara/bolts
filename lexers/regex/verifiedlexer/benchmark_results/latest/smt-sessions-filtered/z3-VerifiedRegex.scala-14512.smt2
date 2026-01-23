; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754592 () Bool)

(assert start!754592)

(declare-fun b!8018010 () Bool)

(declare-fun res!3170162 () Bool)

(declare-fun e!4723103 () Bool)

(assert (=> b!8018010 (=> (not res!3170162) (not e!4723103))))

(declare-datatypes ((B!4065 0))(
  ( (B!4066 (val!32422 Int)) )
))
(declare-datatypes ((List!74934 0))(
  ( (Nil!74810) (Cons!74810 (h!81258 B!4065) (t!390677 List!74934)) )
))
(declare-fun p!2003 () List!74934)

(declare-fun l!3425 () List!74934)

(get-info :version)

(assert (=> b!8018010 (= res!3170162 (and (not ((_ is Nil!74810) p!2003)) (not ((_ is Nil!74810) l!3425))))))

(declare-fun b!8018011 () Bool)

(declare-fun e!4723102 () Bool)

(declare-fun tp_is_empty!53953 () Bool)

(declare-fun tp!2399990 () Bool)

(assert (=> b!8018011 (= e!4723102 (and tp_is_empty!53953 tp!2399990))))

(declare-fun b!8018012 () Bool)

(declare-fun e!4723104 () Bool)

(declare-fun tp!2399989 () Bool)

(assert (=> b!8018012 (= e!4723104 (and tp_is_empty!53953 tp!2399989))))

(declare-fun b!8018013 () Bool)

(declare-fun e!4723105 () Bool)

(assert (=> b!8018013 (= e!4723103 e!4723105)))

(declare-fun res!3170163 () Bool)

(assert (=> b!8018013 (=> (not res!3170163) (not e!4723105))))

(declare-fun lt!2719141 () List!74934)

(declare-fun isPrefix!6757 (List!74934 List!74934) Bool)

(declare-fun tail!15898 (List!74934) List!74934)

(assert (=> b!8018013 (= res!3170163 (isPrefix!6757 lt!2719141 (tail!15898 l!3425)))))

(assert (=> b!8018013 (= lt!2719141 (tail!15898 p!2003))))

(declare-fun res!3170164 () Bool)

(assert (=> start!754592 (=> (not res!3170164) (not e!4723103))))

(assert (=> start!754592 (= res!3170164 (isPrefix!6757 p!2003 l!3425))))

(assert (=> start!754592 e!4723103))

(assert (=> start!754592 e!4723104))

(assert (=> start!754592 e!4723102))

(declare-fun b!8018014 () Bool)

(declare-fun ListPrimitiveSize!487 (List!74934) Int)

(assert (=> b!8018014 (= e!4723105 (>= (ListPrimitiveSize!487 lt!2719141) (ListPrimitiveSize!487 p!2003)))))

(assert (= (and start!754592 res!3170164) b!8018010))

(assert (= (and b!8018010 res!3170162) b!8018013))

(assert (= (and b!8018013 res!3170163) b!8018014))

(assert (= (and start!754592 ((_ is Cons!74810) p!2003)) b!8018012))

(assert (= (and start!754592 ((_ is Cons!74810) l!3425)) b!8018011))

(declare-fun m!8381030 () Bool)

(assert (=> b!8018013 m!8381030))

(assert (=> b!8018013 m!8381030))

(declare-fun m!8381032 () Bool)

(assert (=> b!8018013 m!8381032))

(declare-fun m!8381034 () Bool)

(assert (=> b!8018013 m!8381034))

(declare-fun m!8381036 () Bool)

(assert (=> start!754592 m!8381036))

(declare-fun m!8381038 () Bool)

(assert (=> b!8018014 m!8381038))

(declare-fun m!8381040 () Bool)

(assert (=> b!8018014 m!8381040))

(check-sat (not b!8018014) (not start!754592) (not b!8018012) (not b!8018011) tp_is_empty!53953 (not b!8018013))
(check-sat)
(get-model)

(declare-fun d!2390655 () Bool)

(declare-fun lt!2719148 () Int)

(assert (=> d!2390655 (>= lt!2719148 0)))

(declare-fun e!4723112 () Int)

(assert (=> d!2390655 (= lt!2719148 e!4723112)))

(declare-fun c!1471645 () Bool)

(assert (=> d!2390655 (= c!1471645 ((_ is Nil!74810) lt!2719141))))

(assert (=> d!2390655 (= (ListPrimitiveSize!487 lt!2719141) lt!2719148)))

(declare-fun b!8018027 () Bool)

(assert (=> b!8018027 (= e!4723112 0)))

(declare-fun b!8018028 () Bool)

(assert (=> b!8018028 (= e!4723112 (+ 1 (ListPrimitiveSize!487 (t!390677 lt!2719141))))))

(assert (= (and d!2390655 c!1471645) b!8018027))

(assert (= (and d!2390655 (not c!1471645)) b!8018028))

(declare-fun m!8381046 () Bool)

(assert (=> b!8018028 m!8381046))

(assert (=> b!8018014 d!2390655))

(declare-fun d!2390661 () Bool)

(declare-fun lt!2719149 () Int)

(assert (=> d!2390661 (>= lt!2719149 0)))

(declare-fun e!4723113 () Int)

(assert (=> d!2390661 (= lt!2719149 e!4723113)))

(declare-fun c!1471646 () Bool)

(assert (=> d!2390661 (= c!1471646 ((_ is Nil!74810) p!2003))))

(assert (=> d!2390661 (= (ListPrimitiveSize!487 p!2003) lt!2719149)))

(declare-fun b!8018029 () Bool)

(assert (=> b!8018029 (= e!4723113 0)))

(declare-fun b!8018030 () Bool)

(assert (=> b!8018030 (= e!4723113 (+ 1 (ListPrimitiveSize!487 (t!390677 p!2003))))))

(assert (= (and d!2390661 c!1471646) b!8018029))

(assert (= (and d!2390661 (not c!1471646)) b!8018030))

(declare-fun m!8381048 () Bool)

(assert (=> b!8018030 m!8381048))

(assert (=> b!8018014 d!2390661))

(declare-fun b!8018058 () Bool)

(declare-fun e!4723134 () Bool)

(declare-fun size!43600 (List!74934) Int)

(assert (=> b!8018058 (= e!4723134 (>= (size!43600 (tail!15898 l!3425)) (size!43600 lt!2719141)))))

(declare-fun b!8018057 () Bool)

(declare-fun e!4723132 () Bool)

(assert (=> b!8018057 (= e!4723132 (isPrefix!6757 (tail!15898 lt!2719141) (tail!15898 (tail!15898 l!3425))))))

(declare-fun b!8018056 () Bool)

(declare-fun res!3170190 () Bool)

(assert (=> b!8018056 (=> (not res!3170190) (not e!4723132))))

(declare-fun head!16373 (List!74934) B!4065)

(assert (=> b!8018056 (= res!3170190 (= (head!16373 lt!2719141) (head!16373 (tail!15898 l!3425))))))

(declare-fun b!8018055 () Bool)

(declare-fun e!4723133 () Bool)

(assert (=> b!8018055 (= e!4723133 e!4723132)))

(declare-fun res!3170191 () Bool)

(assert (=> b!8018055 (=> (not res!3170191) (not e!4723132))))

(assert (=> b!8018055 (= res!3170191 (not ((_ is Nil!74810) (tail!15898 l!3425))))))

(declare-fun d!2390663 () Bool)

(assert (=> d!2390663 e!4723134))

(declare-fun res!3170192 () Bool)

(assert (=> d!2390663 (=> res!3170192 e!4723134)))

(declare-fun lt!2719156 () Bool)

(assert (=> d!2390663 (= res!3170192 (not lt!2719156))))

(assert (=> d!2390663 (= lt!2719156 e!4723133)))

(declare-fun res!3170189 () Bool)

(assert (=> d!2390663 (=> res!3170189 e!4723133)))

(assert (=> d!2390663 (= res!3170189 ((_ is Nil!74810) lt!2719141))))

(assert (=> d!2390663 (= (isPrefix!6757 lt!2719141 (tail!15898 l!3425)) lt!2719156)))

(assert (= (and d!2390663 (not res!3170189)) b!8018055))

(assert (= (and b!8018055 res!3170191) b!8018056))

(assert (= (and b!8018056 res!3170190) b!8018057))

(assert (= (and d!2390663 (not res!3170192)) b!8018058))

(assert (=> b!8018058 m!8381030))

(declare-fun m!8381074 () Bool)

(assert (=> b!8018058 m!8381074))

(declare-fun m!8381076 () Bool)

(assert (=> b!8018058 m!8381076))

(declare-fun m!8381078 () Bool)

(assert (=> b!8018057 m!8381078))

(assert (=> b!8018057 m!8381030))

(declare-fun m!8381080 () Bool)

(assert (=> b!8018057 m!8381080))

(assert (=> b!8018057 m!8381078))

(assert (=> b!8018057 m!8381080))

(declare-fun m!8381082 () Bool)

(assert (=> b!8018057 m!8381082))

(declare-fun m!8381084 () Bool)

(assert (=> b!8018056 m!8381084))

(assert (=> b!8018056 m!8381030))

(declare-fun m!8381086 () Bool)

(assert (=> b!8018056 m!8381086))

(assert (=> b!8018013 d!2390663))

(declare-fun d!2390671 () Bool)

(assert (=> d!2390671 (= (tail!15898 l!3425) (t!390677 l!3425))))

(assert (=> b!8018013 d!2390671))

(declare-fun d!2390673 () Bool)

(assert (=> d!2390673 (= (tail!15898 p!2003) (t!390677 p!2003))))

(assert (=> b!8018013 d!2390673))

(declare-fun b!8018068 () Bool)

(declare-fun e!4723141 () Bool)

(assert (=> b!8018068 (= e!4723141 (>= (size!43600 l!3425) (size!43600 p!2003)))))

(declare-fun b!8018067 () Bool)

(declare-fun e!4723139 () Bool)

(assert (=> b!8018067 (= e!4723139 (isPrefix!6757 (tail!15898 p!2003) (tail!15898 l!3425)))))

(declare-fun b!8018066 () Bool)

(declare-fun res!3170194 () Bool)

(assert (=> b!8018066 (=> (not res!3170194) (not e!4723139))))

(assert (=> b!8018066 (= res!3170194 (= (head!16373 p!2003) (head!16373 l!3425)))))

(declare-fun b!8018065 () Bool)

(declare-fun e!4723140 () Bool)

(assert (=> b!8018065 (= e!4723140 e!4723139)))

(declare-fun res!3170195 () Bool)

(assert (=> b!8018065 (=> (not res!3170195) (not e!4723139))))

(assert (=> b!8018065 (= res!3170195 (not ((_ is Nil!74810) l!3425)))))

(declare-fun d!2390675 () Bool)

(assert (=> d!2390675 e!4723141))

(declare-fun res!3170196 () Bool)

(assert (=> d!2390675 (=> res!3170196 e!4723141)))

(declare-fun lt!2719157 () Bool)

(assert (=> d!2390675 (= res!3170196 (not lt!2719157))))

(assert (=> d!2390675 (= lt!2719157 e!4723140)))

(declare-fun res!3170193 () Bool)

(assert (=> d!2390675 (=> res!3170193 e!4723140)))

(assert (=> d!2390675 (= res!3170193 ((_ is Nil!74810) p!2003))))

(assert (=> d!2390675 (= (isPrefix!6757 p!2003 l!3425) lt!2719157)))

(assert (= (and d!2390675 (not res!3170193)) b!8018065))

(assert (= (and b!8018065 res!3170195) b!8018066))

(assert (= (and b!8018066 res!3170194) b!8018067))

(assert (= (and d!2390675 (not res!3170196)) b!8018068))

(declare-fun m!8381088 () Bool)

(assert (=> b!8018068 m!8381088))

(declare-fun m!8381090 () Bool)

(assert (=> b!8018068 m!8381090))

(assert (=> b!8018067 m!8381034))

(assert (=> b!8018067 m!8381030))

(assert (=> b!8018067 m!8381034))

(assert (=> b!8018067 m!8381030))

(declare-fun m!8381092 () Bool)

(assert (=> b!8018067 m!8381092))

(declare-fun m!8381094 () Bool)

(assert (=> b!8018066 m!8381094))

(declare-fun m!8381096 () Bool)

(assert (=> b!8018066 m!8381096))

(assert (=> start!754592 d!2390675))

(declare-fun b!8018073 () Bool)

(declare-fun e!4723144 () Bool)

(declare-fun tp!2399997 () Bool)

(assert (=> b!8018073 (= e!4723144 (and tp_is_empty!53953 tp!2399997))))

(assert (=> b!8018012 (= tp!2399989 e!4723144)))

(assert (= (and b!8018012 ((_ is Cons!74810) (t!390677 p!2003))) b!8018073))

(declare-fun b!8018074 () Bool)

(declare-fun e!4723145 () Bool)

(declare-fun tp!2399998 () Bool)

(assert (=> b!8018074 (= e!4723145 (and tp_is_empty!53953 tp!2399998))))

(assert (=> b!8018011 (= tp!2399990 e!4723145)))

(assert (= (and b!8018011 ((_ is Cons!74810) (t!390677 l!3425))) b!8018074))

(check-sat (not b!8018056) (not b!8018066) (not b!8018067) (not b!8018074) tp_is_empty!53953 (not b!8018057) (not b!8018073) (not b!8018028) (not b!8018068) (not b!8018058) (not b!8018030))
(check-sat)
