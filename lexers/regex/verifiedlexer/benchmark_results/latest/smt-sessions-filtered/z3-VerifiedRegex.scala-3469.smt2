; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200588 () Bool)

(assert start!200588)

(declare-fun b!2036103 () Bool)

(declare-fun e!1285863 () Bool)

(declare-datatypes ((T!35920 0))(
  ( (T!35921 (val!6464 Int)) )
))
(declare-datatypes ((List!22347 0))(
  ( (Nil!22265) (Cons!22265 (h!27666 T!35920) (t!191246 List!22347)) )
))
(declare-datatypes ((IArray!14919 0))(
  ( (IArray!14920 (innerList!7517 List!22347)) )
))
(declare-datatypes ((Conc!7457 0))(
  ( (Node!7457 (left!17722 Conc!7457) (right!18052 Conc!7457) (csize!15144 Int) (cheight!7668 Int)) (Leaf!10927 (xs!10359 IArray!14919) (csize!15145 Int)) (Empty!7457) )
))
(declare-fun t!4319 () Conc!7457)

(declare-fun ConcPrimitiveSize!18 (Conc!7457) Int)

(assert (=> b!2036103 (= e!1285863 (< (ConcPrimitiveSize!18 t!4319) 0))))

(declare-fun tp!604661 () Bool)

(declare-fun tp!604662 () Bool)

(declare-fun b!2036104 () Bool)

(declare-fun e!1285861 () Bool)

(declare-fun inv!29517 (Conc!7457) Bool)

(assert (=> b!2036104 (= e!1285861 (and (inv!29517 (left!17722 t!4319)) tp!604661 (inv!29517 (right!18052 t!4319)) tp!604662))))

(declare-fun res!892769 () Bool)

(assert (=> start!200588 (=> (not res!892769) (not e!1285863))))

(declare-fun isBalanced!2335 (Conc!7457) Bool)

(assert (=> start!200588 (= res!892769 (isBalanced!2335 t!4319))))

(assert (=> start!200588 e!1285863))

(assert (=> start!200588 (and (inv!29517 t!4319) e!1285861)))

(declare-fun b!2036105 () Bool)

(declare-fun e!1285862 () Bool)

(declare-fun inv!29518 (IArray!14919) Bool)

(assert (=> b!2036105 (= e!1285861 (and (inv!29518 (xs!10359 t!4319)) e!1285862))))

(declare-fun b!2036106 () Bool)

(declare-fun tp!604660 () Bool)

(assert (=> b!2036106 (= e!1285862 tp!604660)))

(assert (= (and start!200588 res!892769) b!2036103))

(get-info :version)

(assert (= (and start!200588 ((_ is Node!7457) t!4319)) b!2036104))

(assert (= b!2036105 b!2036106))

(assert (= (and start!200588 ((_ is Leaf!10927) t!4319)) b!2036105))

(declare-fun m!2478881 () Bool)

(assert (=> b!2036103 m!2478881))

(declare-fun m!2478883 () Bool)

(assert (=> b!2036104 m!2478883))

(declare-fun m!2478885 () Bool)

(assert (=> b!2036104 m!2478885))

(declare-fun m!2478887 () Bool)

(assert (=> start!200588 m!2478887))

(declare-fun m!2478889 () Bool)

(assert (=> start!200588 m!2478889))

(declare-fun m!2478891 () Bool)

(assert (=> b!2036105 m!2478891))

(check-sat (not b!2036105) (not b!2036106) (not b!2036103) (not b!2036104) (not start!200588))
(check-sat)
(get-model)

(declare-fun d!623190 () Bool)

(declare-fun size!17403 (List!22347) Int)

(assert (=> d!623190 (= (inv!29518 (xs!10359 t!4319)) (<= (size!17403 (innerList!7517 (xs!10359 t!4319))) 2147483647))))

(declare-fun bs!421337 () Bool)

(assert (= bs!421337 d!623190))

(declare-fun m!2478893 () Bool)

(assert (=> bs!421337 m!2478893))

(assert (=> b!2036105 d!623190))

(declare-fun b!2036125 () Bool)

(declare-fun res!892785 () Bool)

(declare-fun e!1285873 () Bool)

(assert (=> b!2036125 (=> (not res!892785) (not e!1285873))))

(assert (=> b!2036125 (= res!892785 (isBalanced!2335 (right!18052 t!4319)))))

(declare-fun b!2036126 () Bool)

(declare-fun res!892788 () Bool)

(assert (=> b!2036126 (=> (not res!892788) (not e!1285873))))

(declare-fun isEmpty!13915 (Conc!7457) Bool)

(assert (=> b!2036126 (= res!892788 (not (isEmpty!13915 (left!17722 t!4319))))))

(declare-fun b!2036127 () Bool)

(assert (=> b!2036127 (= e!1285873 (not (isEmpty!13915 (right!18052 t!4319))))))

(declare-fun b!2036128 () Bool)

(declare-fun e!1285872 () Bool)

(assert (=> b!2036128 (= e!1285872 e!1285873)))

(declare-fun res!892786 () Bool)

(assert (=> b!2036128 (=> (not res!892786) (not e!1285873))))

(declare-fun height!1157 (Conc!7457) Int)

(assert (=> b!2036128 (= res!892786 (<= (- 1) (- (height!1157 (left!17722 t!4319)) (height!1157 (right!18052 t!4319)))))))

(declare-fun b!2036129 () Bool)

(declare-fun res!892784 () Bool)

(assert (=> b!2036129 (=> (not res!892784) (not e!1285873))))

(assert (=> b!2036129 (= res!892784 (<= (- (height!1157 (left!17722 t!4319)) (height!1157 (right!18052 t!4319))) 1))))

(declare-fun d!623194 () Bool)

(declare-fun res!892789 () Bool)

(assert (=> d!623194 (=> res!892789 e!1285872)))

(assert (=> d!623194 (= res!892789 (not ((_ is Node!7457) t!4319)))))

(assert (=> d!623194 (= (isBalanced!2335 t!4319) e!1285872)))

(declare-fun b!2036130 () Bool)

(declare-fun res!892787 () Bool)

(assert (=> b!2036130 (=> (not res!892787) (not e!1285873))))

(assert (=> b!2036130 (= res!892787 (isBalanced!2335 (left!17722 t!4319)))))

(assert (= (and d!623194 (not res!892789)) b!2036128))

(assert (= (and b!2036128 res!892786) b!2036129))

(assert (= (and b!2036129 res!892784) b!2036130))

(assert (= (and b!2036130 res!892787) b!2036125))

(assert (= (and b!2036125 res!892785) b!2036126))

(assert (= (and b!2036126 res!892788) b!2036127))

(declare-fun m!2478895 () Bool)

(assert (=> b!2036129 m!2478895))

(declare-fun m!2478897 () Bool)

(assert (=> b!2036129 m!2478897))

(declare-fun m!2478899 () Bool)

(assert (=> b!2036130 m!2478899))

(declare-fun m!2478901 () Bool)

(assert (=> b!2036126 m!2478901))

(assert (=> b!2036128 m!2478895))

(assert (=> b!2036128 m!2478897))

(declare-fun m!2478903 () Bool)

(assert (=> b!2036127 m!2478903))

(declare-fun m!2478905 () Bool)

(assert (=> b!2036125 m!2478905))

(assert (=> start!200588 d!623194))

(declare-fun d!623196 () Bool)

(declare-fun c!329748 () Bool)

(assert (=> d!623196 (= c!329748 ((_ is Node!7457) t!4319))))

(declare-fun e!1285882 () Bool)

(assert (=> d!623196 (= (inv!29517 t!4319) e!1285882)))

(declare-fun b!2036143 () Bool)

(declare-fun inv!29519 (Conc!7457) Bool)

(assert (=> b!2036143 (= e!1285882 (inv!29519 t!4319))))

(declare-fun b!2036144 () Bool)

(declare-fun e!1285883 () Bool)

(assert (=> b!2036144 (= e!1285882 e!1285883)))

(declare-fun res!892794 () Bool)

(assert (=> b!2036144 (= res!892794 (not ((_ is Leaf!10927) t!4319)))))

(assert (=> b!2036144 (=> res!892794 e!1285883)))

(declare-fun b!2036145 () Bool)

(declare-fun inv!29520 (Conc!7457) Bool)

(assert (=> b!2036145 (= e!1285883 (inv!29520 t!4319))))

(assert (= (and d!623196 c!329748) b!2036143))

(assert (= (and d!623196 (not c!329748)) b!2036144))

(assert (= (and b!2036144 (not res!892794)) b!2036145))

(declare-fun m!2478915 () Bool)

(assert (=> b!2036143 m!2478915))

(declare-fun m!2478917 () Bool)

(assert (=> b!2036145 m!2478917))

(assert (=> start!200588 d!623196))

(declare-fun d!623202 () Bool)

(declare-fun c!329749 () Bool)

(assert (=> d!623202 (= c!329749 ((_ is Node!7457) (left!17722 t!4319)))))

(declare-fun e!1285884 () Bool)

(assert (=> d!623202 (= (inv!29517 (left!17722 t!4319)) e!1285884)))

(declare-fun b!2036146 () Bool)

(assert (=> b!2036146 (= e!1285884 (inv!29519 (left!17722 t!4319)))))

(declare-fun b!2036147 () Bool)

(declare-fun e!1285885 () Bool)

(assert (=> b!2036147 (= e!1285884 e!1285885)))

(declare-fun res!892795 () Bool)

(assert (=> b!2036147 (= res!892795 (not ((_ is Leaf!10927) (left!17722 t!4319))))))

(assert (=> b!2036147 (=> res!892795 e!1285885)))

(declare-fun b!2036148 () Bool)

(assert (=> b!2036148 (= e!1285885 (inv!29520 (left!17722 t!4319)))))

(assert (= (and d!623202 c!329749) b!2036146))

(assert (= (and d!623202 (not c!329749)) b!2036147))

(assert (= (and b!2036147 (not res!892795)) b!2036148))

(declare-fun m!2478919 () Bool)

(assert (=> b!2036146 m!2478919))

(declare-fun m!2478921 () Bool)

(assert (=> b!2036148 m!2478921))

(assert (=> b!2036104 d!623202))

(declare-fun d!623204 () Bool)

(declare-fun c!329750 () Bool)

(assert (=> d!623204 (= c!329750 ((_ is Node!7457) (right!18052 t!4319)))))

(declare-fun e!1285886 () Bool)

(assert (=> d!623204 (= (inv!29517 (right!18052 t!4319)) e!1285886)))

(declare-fun b!2036149 () Bool)

(assert (=> b!2036149 (= e!1285886 (inv!29519 (right!18052 t!4319)))))

(declare-fun b!2036150 () Bool)

(declare-fun e!1285887 () Bool)

(assert (=> b!2036150 (= e!1285886 e!1285887)))

(declare-fun res!892796 () Bool)

(assert (=> b!2036150 (= res!892796 (not ((_ is Leaf!10927) (right!18052 t!4319))))))

(assert (=> b!2036150 (=> res!892796 e!1285887)))

(declare-fun b!2036151 () Bool)

(assert (=> b!2036151 (= e!1285887 (inv!29520 (right!18052 t!4319)))))

(assert (= (and d!623204 c!329750) b!2036149))

(assert (= (and d!623204 (not c!329750)) b!2036150))

(assert (= (and b!2036150 (not res!892796)) b!2036151))

(declare-fun m!2478923 () Bool)

(assert (=> b!2036149 m!2478923))

(declare-fun m!2478925 () Bool)

(assert (=> b!2036151 m!2478925))

(assert (=> b!2036104 d!623204))

(declare-fun b!2036168 () Bool)

(declare-fun e!1285896 () Int)

(assert (=> b!2036168 (= e!1285896 0)))

(declare-fun d!623206 () Bool)

(declare-fun lt!764787 () Int)

(assert (=> d!623206 (>= lt!764787 0)))

(declare-fun e!1285897 () Int)

(assert (=> d!623206 (= lt!764787 e!1285897)))

(declare-fun c!329759 () Bool)

(assert (=> d!623206 (= c!329759 ((_ is Node!7457) t!4319))))

(assert (=> d!623206 (= (ConcPrimitiveSize!18 t!4319) lt!764787)))

(declare-fun b!2036169 () Bool)

(declare-fun call!124925 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!2036169 (= e!1285897 (+ 1 (ConcPrimitiveSize!18 (left!17722 t!4319)) (ConcPrimitiveSize!18 (right!18052 t!4319)) call!124925 (BigIntAbs!0 (cheight!7668 t!4319))))))

(declare-fun b!2036170 () Bool)

(assert (=> b!2036170 (= e!1285897 e!1285896)))

(declare-fun c!329760 () Bool)

(assert (=> b!2036170 (= c!329760 ((_ is Leaf!10927) t!4319))))

(declare-fun b!2036171 () Bool)

(declare-fun IArrayPrimitiveSize!17 (IArray!14919) Int)

(assert (=> b!2036171 (= e!1285896 (+ 1 (IArrayPrimitiveSize!17 (xs!10359 t!4319)) call!124925))))

(declare-fun bm!124920 () Bool)

(assert (=> bm!124920 (= call!124925 (BigIntAbs!0 (ite c!329759 (csize!15144 t!4319) (csize!15145 t!4319))))))

(assert (= (and d!623206 c!329759) b!2036169))

(assert (= (and d!623206 (not c!329759)) b!2036170))

(assert (= (and b!2036170 c!329760) b!2036171))

(assert (= (and b!2036170 (not c!329760)) b!2036168))

(assert (= (or b!2036169 b!2036171) bm!124920))

(declare-fun m!2478927 () Bool)

(assert (=> b!2036169 m!2478927))

(declare-fun m!2478929 () Bool)

(assert (=> b!2036169 m!2478929))

(declare-fun m!2478931 () Bool)

(assert (=> b!2036169 m!2478931))

(declare-fun m!2478933 () Bool)

(assert (=> b!2036171 m!2478933))

(declare-fun m!2478935 () Bool)

(assert (=> bm!124920 m!2478935))

(assert (=> b!2036103 d!623206))

(declare-fun b!2036176 () Bool)

(declare-fun e!1285900 () Bool)

(declare-fun tp_is_empty!9251 () Bool)

(declare-fun tp!604665 () Bool)

(assert (=> b!2036176 (= e!1285900 (and tp_is_empty!9251 tp!604665))))

(assert (=> b!2036106 (= tp!604660 e!1285900)))

(assert (= (and b!2036106 ((_ is Cons!22265) (innerList!7517 (xs!10359 t!4319)))) b!2036176))

(declare-fun b!2036185 () Bool)

(declare-fun tp!604672 () Bool)

(declare-fun tp!604674 () Bool)

(declare-fun e!1285905 () Bool)

(assert (=> b!2036185 (= e!1285905 (and (inv!29517 (left!17722 (left!17722 t!4319))) tp!604674 (inv!29517 (right!18052 (left!17722 t!4319))) tp!604672))))

(declare-fun b!2036187 () Bool)

(declare-fun e!1285906 () Bool)

(declare-fun tp!604673 () Bool)

(assert (=> b!2036187 (= e!1285906 tp!604673)))

(declare-fun b!2036186 () Bool)

(assert (=> b!2036186 (= e!1285905 (and (inv!29518 (xs!10359 (left!17722 t!4319))) e!1285906))))

(assert (=> b!2036104 (= tp!604661 (and (inv!29517 (left!17722 t!4319)) e!1285905))))

(assert (= (and b!2036104 ((_ is Node!7457) (left!17722 t!4319))) b!2036185))

(assert (= b!2036186 b!2036187))

(assert (= (and b!2036104 ((_ is Leaf!10927) (left!17722 t!4319))) b!2036186))

(declare-fun m!2478937 () Bool)

(assert (=> b!2036185 m!2478937))

(declare-fun m!2478939 () Bool)

(assert (=> b!2036185 m!2478939))

(declare-fun m!2478941 () Bool)

(assert (=> b!2036186 m!2478941))

(assert (=> b!2036104 m!2478883))

(declare-fun tp!604675 () Bool)

(declare-fun b!2036188 () Bool)

(declare-fun e!1285907 () Bool)

(declare-fun tp!604677 () Bool)

(assert (=> b!2036188 (= e!1285907 (and (inv!29517 (left!17722 (right!18052 t!4319))) tp!604677 (inv!29517 (right!18052 (right!18052 t!4319))) tp!604675))))

(declare-fun b!2036190 () Bool)

(declare-fun e!1285908 () Bool)

(declare-fun tp!604676 () Bool)

(assert (=> b!2036190 (= e!1285908 tp!604676)))

(declare-fun b!2036189 () Bool)

(assert (=> b!2036189 (= e!1285907 (and (inv!29518 (xs!10359 (right!18052 t!4319))) e!1285908))))

(assert (=> b!2036104 (= tp!604662 (and (inv!29517 (right!18052 t!4319)) e!1285907))))

(assert (= (and b!2036104 ((_ is Node!7457) (right!18052 t!4319))) b!2036188))

(assert (= b!2036189 b!2036190))

(assert (= (and b!2036104 ((_ is Leaf!10927) (right!18052 t!4319))) b!2036189))

(declare-fun m!2478943 () Bool)

(assert (=> b!2036188 m!2478943))

(declare-fun m!2478945 () Bool)

(assert (=> b!2036188 m!2478945))

(declare-fun m!2478947 () Bool)

(assert (=> b!2036189 m!2478947))

(assert (=> b!2036104 m!2478885))

(check-sat (not b!2036176) (not b!2036143) (not b!2036149) (not b!2036104) (not b!2036126) (not b!2036190) (not b!2036145) (not b!2036185) (not d!623190) (not b!2036169) (not b!2036125) tp_is_empty!9251 (not b!2036146) (not b!2036189) (not b!2036188) (not b!2036130) (not b!2036151) (not bm!124920) (not b!2036148) (not b!2036186) (not b!2036127) (not b!2036128) (not b!2036187) (not b!2036171) (not b!2036129))
(check-sat)
