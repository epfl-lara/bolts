; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536578 () Bool)

(assert start!536578)

(declare-fun b!5091840 () Bool)

(declare-fun e!3175467 () Bool)

(declare-datatypes ((T!105636 0))(
  ( (T!105637 (val!23726 Int)) )
))
(declare-datatypes ((List!58651 0))(
  ( (Nil!58527) (Cons!58527 (h!64975 T!105636) (t!371576 List!58651)) )
))
(declare-datatypes ((IArray!31345 0))(
  ( (IArray!31346 (innerList!15730 List!58651)) )
))
(declare-datatypes ((Conc!15642 0))(
  ( (Node!15642 (left!42935 Conc!15642) (right!43265 Conc!15642) (csize!31514 Int) (cheight!15853 Int)) (Leaf!25968 (xs!19024 IArray!31345) (csize!31515 Int)) (Empty!15642) )
))
(declare-fun t!3643 () Conc!15642)

(declare-fun e!3175469 () Bool)

(declare-fun inv!77971 (IArray!31345) Bool)

(assert (=> b!5091840 (= e!3175467 (and (inv!77971 (xs!19024 t!3643)) e!3175469))))

(declare-fun b!5091841 () Bool)

(declare-fun tp!1419426 () Bool)

(assert (=> b!5091841 (= e!3175469 tp!1419426)))

(declare-fun b!5091842 () Bool)

(declare-fun res!2167065 () Bool)

(declare-fun e!3175470 () Bool)

(assert (=> b!5091842 (=> (not res!2167065) (not e!3175470))))

(get-info :version)

(assert (=> b!5091842 (= res!2167065 (and (not ((_ is Leaf!25968) t!3643)) ((_ is Node!15642) t!3643)))))

(declare-fun b!5091843 () Bool)

(declare-fun e!3175468 () Bool)

(declare-fun ConcPrimitiveSize!44 (Conc!15642) Int)

(assert (=> b!5091843 (= e!3175468 (>= (ConcPrimitiveSize!44 (right!43265 t!3643)) (ConcPrimitiveSize!44 t!3643)))))

(declare-fun b!5091844 () Bool)

(declare-fun res!2167063 () Bool)

(assert (=> b!5091844 (=> (not res!2167063) (not e!3175470))))

(declare-fun i!607 () Int)

(declare-fun size!39227 (Conc!15642) Int)

(assert (=> b!5091844 (= res!2167063 (< i!607 (size!39227 t!3643)))))

(declare-fun b!5091845 () Bool)

(assert (=> b!5091845 (= e!3175470 e!3175468)))

(declare-fun res!2167064 () Bool)

(assert (=> b!5091845 (=> (not res!2167064) (not e!3175468))))

(assert (=> b!5091845 (= res!2167064 (>= i!607 (size!39227 (left!42935 t!3643))))))

(declare-fun lt!2092562 () Bool)

(declare-fun appendIndex!423 (List!58651 List!58651 Int) Bool)

(declare-fun list!19112 (Conc!15642) List!58651)

(assert (=> b!5091845 (= lt!2092562 (appendIndex!423 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643)) i!607))))

(declare-fun res!2167066 () Bool)

(assert (=> start!536578 (=> (not res!2167066) (not e!3175470))))

(assert (=> start!536578 (= res!2167066 (<= 0 i!607))))

(assert (=> start!536578 e!3175470))

(assert (=> start!536578 true))

(declare-fun inv!77972 (Conc!15642) Bool)

(assert (=> start!536578 (and (inv!77972 t!3643) e!3175467)))

(declare-fun b!5091846 () Bool)

(declare-fun tp!1419427 () Bool)

(declare-fun tp!1419425 () Bool)

(assert (=> b!5091846 (= e!3175467 (and (inv!77972 (left!42935 t!3643)) tp!1419425 (inv!77972 (right!43265 t!3643)) tp!1419427))))

(assert (= (and start!536578 res!2167066) b!5091844))

(assert (= (and b!5091844 res!2167063) b!5091842))

(assert (= (and b!5091842 res!2167065) b!5091845))

(assert (= (and b!5091845 res!2167064) b!5091843))

(assert (= (and start!536578 ((_ is Node!15642) t!3643)) b!5091846))

(assert (= b!5091840 b!5091841))

(assert (= (and start!536578 ((_ is Leaf!25968) t!3643)) b!5091840))

(declare-fun m!6150004 () Bool)

(assert (=> b!5091840 m!6150004))

(declare-fun m!6150006 () Bool)

(assert (=> b!5091845 m!6150006))

(declare-fun m!6150008 () Bool)

(assert (=> b!5091845 m!6150008))

(declare-fun m!6150010 () Bool)

(assert (=> b!5091845 m!6150010))

(assert (=> b!5091845 m!6150008))

(assert (=> b!5091845 m!6150010))

(declare-fun m!6150012 () Bool)

(assert (=> b!5091845 m!6150012))

(declare-fun m!6150014 () Bool)

(assert (=> b!5091846 m!6150014))

(declare-fun m!6150016 () Bool)

(assert (=> b!5091846 m!6150016))

(declare-fun m!6150018 () Bool)

(assert (=> b!5091844 m!6150018))

(declare-fun m!6150020 () Bool)

(assert (=> b!5091843 m!6150020))

(declare-fun m!6150022 () Bool)

(assert (=> b!5091843 m!6150022))

(declare-fun m!6150024 () Bool)

(assert (=> start!536578 m!6150024))

(check-sat (not b!5091843) (not b!5091841) (not b!5091840) (not b!5091844) (not b!5091846) (not b!5091845) (not start!536578))
(check-sat)
(get-model)

(declare-fun d!1648210 () Bool)

(declare-fun lt!2092565 () Int)

(declare-fun size!39229 (List!58651) Int)

(assert (=> d!1648210 (= lt!2092565 (size!39229 (list!19112 t!3643)))))

(assert (=> d!1648210 (= lt!2092565 (ite ((_ is Empty!15642) t!3643) 0 (ite ((_ is Leaf!25968) t!3643) (csize!31515 t!3643) (csize!31514 t!3643))))))

(assert (=> d!1648210 (= (size!39227 t!3643) lt!2092565)))

(declare-fun bs!1191186 () Bool)

(assert (= bs!1191186 d!1648210))

(declare-fun m!6150026 () Bool)

(assert (=> bs!1191186 m!6150026))

(assert (=> bs!1191186 m!6150026))

(declare-fun m!6150028 () Bool)

(assert (=> bs!1191186 m!6150028))

(assert (=> b!5091844 d!1648210))

(declare-fun d!1648214 () Bool)

(declare-fun c!875109 () Bool)

(assert (=> d!1648214 (= c!875109 ((_ is Node!15642) t!3643))))

(declare-fun e!3175479 () Bool)

(assert (=> d!1648214 (= (inv!77972 t!3643) e!3175479)))

(declare-fun b!5091859 () Bool)

(declare-fun inv!77975 (Conc!15642) Bool)

(assert (=> b!5091859 (= e!3175479 (inv!77975 t!3643))))

(declare-fun b!5091860 () Bool)

(declare-fun e!3175480 () Bool)

(assert (=> b!5091860 (= e!3175479 e!3175480)))

(declare-fun res!2167071 () Bool)

(assert (=> b!5091860 (= res!2167071 (not ((_ is Leaf!25968) t!3643)))))

(assert (=> b!5091860 (=> res!2167071 e!3175480)))

(declare-fun b!5091861 () Bool)

(declare-fun inv!77976 (Conc!15642) Bool)

(assert (=> b!5091861 (= e!3175480 (inv!77976 t!3643))))

(assert (= (and d!1648214 c!875109) b!5091859))

(assert (= (and d!1648214 (not c!875109)) b!5091860))

(assert (= (and b!5091860 (not res!2167071)) b!5091861))

(declare-fun m!6150030 () Bool)

(assert (=> b!5091859 m!6150030))

(declare-fun m!6150032 () Bool)

(assert (=> b!5091861 m!6150032))

(assert (=> start!536578 d!1648214))

(declare-fun b!5091884 () Bool)

(declare-fun e!3175493 () Int)

(assert (=> b!5091884 (= e!3175493 0)))

(declare-fun b!5091885 () Bool)

(declare-fun e!3175494 () Int)

(assert (=> b!5091885 (= e!3175494 e!3175493)))

(declare-fun c!875120 () Bool)

(assert (=> b!5091885 (= c!875120 ((_ is Leaf!25968) (right!43265 t!3643)))))

(declare-fun d!1648216 () Bool)

(declare-fun lt!2092570 () Int)

(assert (=> d!1648216 (>= lt!2092570 0)))

(assert (=> d!1648216 (= lt!2092570 e!3175494)))

(declare-fun c!875121 () Bool)

(assert (=> d!1648216 (= c!875121 ((_ is Node!15642) (right!43265 t!3643)))))

(assert (=> d!1648216 (= (ConcPrimitiveSize!44 (right!43265 t!3643)) lt!2092570)))

(declare-fun bm!354691 () Bool)

(declare-fun call!354696 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!354691 (= call!354696 (BigIntAbs!0 (ite c!875121 (csize!31514 (right!43265 t!3643)) (csize!31515 (right!43265 t!3643)))))))

(declare-fun b!5091886 () Bool)

(assert (=> b!5091886 (= e!3175494 (+ 1 (ConcPrimitiveSize!44 (left!42935 (right!43265 t!3643))) (ConcPrimitiveSize!44 (right!43265 (right!43265 t!3643))) call!354696 (BigIntAbs!0 (cheight!15853 (right!43265 t!3643)))))))

(declare-fun b!5091887 () Bool)

(declare-fun IArrayPrimitiveSize!43 (IArray!31345) Int)

(assert (=> b!5091887 (= e!3175493 (+ 1 (IArrayPrimitiveSize!43 (xs!19024 (right!43265 t!3643))) call!354696))))

(assert (= (and d!1648216 c!875121) b!5091886))

(assert (= (and d!1648216 (not c!875121)) b!5091885))

(assert (= (and b!5091885 c!875120) b!5091887))

(assert (= (and b!5091885 (not c!875120)) b!5091884))

(assert (= (or b!5091886 b!5091887) bm!354691))

(declare-fun m!6150044 () Bool)

(assert (=> bm!354691 m!6150044))

(declare-fun m!6150046 () Bool)

(assert (=> b!5091886 m!6150046))

(declare-fun m!6150048 () Bool)

(assert (=> b!5091886 m!6150048))

(declare-fun m!6150050 () Bool)

(assert (=> b!5091886 m!6150050))

(declare-fun m!6150052 () Bool)

(assert (=> b!5091887 m!6150052))

(assert (=> b!5091843 d!1648216))

(declare-fun b!5091888 () Bool)

(declare-fun e!3175495 () Int)

(assert (=> b!5091888 (= e!3175495 0)))

(declare-fun b!5091889 () Bool)

(declare-fun e!3175496 () Int)

(assert (=> b!5091889 (= e!3175496 e!3175495)))

(declare-fun c!875122 () Bool)

(assert (=> b!5091889 (= c!875122 ((_ is Leaf!25968) t!3643))))

(declare-fun d!1648224 () Bool)

(declare-fun lt!2092571 () Int)

(assert (=> d!1648224 (>= lt!2092571 0)))

(assert (=> d!1648224 (= lt!2092571 e!3175496)))

(declare-fun c!875123 () Bool)

(assert (=> d!1648224 (= c!875123 ((_ is Node!15642) t!3643))))

(assert (=> d!1648224 (= (ConcPrimitiveSize!44 t!3643) lt!2092571)))

(declare-fun bm!354692 () Bool)

(declare-fun call!354697 () Int)

(assert (=> bm!354692 (= call!354697 (BigIntAbs!0 (ite c!875123 (csize!31514 t!3643) (csize!31515 t!3643))))))

(declare-fun b!5091890 () Bool)

(assert (=> b!5091890 (= e!3175496 (+ 1 (ConcPrimitiveSize!44 (left!42935 t!3643)) (ConcPrimitiveSize!44 (right!43265 t!3643)) call!354697 (BigIntAbs!0 (cheight!15853 t!3643))))))

(declare-fun b!5091891 () Bool)

(assert (=> b!5091891 (= e!3175495 (+ 1 (IArrayPrimitiveSize!43 (xs!19024 t!3643)) call!354697))))

(assert (= (and d!1648224 c!875123) b!5091890))

(assert (= (and d!1648224 (not c!875123)) b!5091889))

(assert (= (and b!5091889 c!875122) b!5091891))

(assert (= (and b!5091889 (not c!875122)) b!5091888))

(assert (= (or b!5091890 b!5091891) bm!354692))

(declare-fun m!6150054 () Bool)

(assert (=> bm!354692 m!6150054))

(declare-fun m!6150056 () Bool)

(assert (=> b!5091890 m!6150056))

(assert (=> b!5091890 m!6150020))

(declare-fun m!6150058 () Bool)

(assert (=> b!5091890 m!6150058))

(declare-fun m!6150060 () Bool)

(assert (=> b!5091891 m!6150060))

(assert (=> b!5091843 d!1648224))

(declare-fun d!1648226 () Bool)

(declare-fun c!875124 () Bool)

(assert (=> d!1648226 (= c!875124 ((_ is Node!15642) (left!42935 t!3643)))))

(declare-fun e!3175497 () Bool)

(assert (=> d!1648226 (= (inv!77972 (left!42935 t!3643)) e!3175497)))

(declare-fun b!5091892 () Bool)

(assert (=> b!5091892 (= e!3175497 (inv!77975 (left!42935 t!3643)))))

(declare-fun b!5091893 () Bool)

(declare-fun e!3175498 () Bool)

(assert (=> b!5091893 (= e!3175497 e!3175498)))

(declare-fun res!2167074 () Bool)

(assert (=> b!5091893 (= res!2167074 (not ((_ is Leaf!25968) (left!42935 t!3643))))))

(assert (=> b!5091893 (=> res!2167074 e!3175498)))

(declare-fun b!5091894 () Bool)

(assert (=> b!5091894 (= e!3175498 (inv!77976 (left!42935 t!3643)))))

(assert (= (and d!1648226 c!875124) b!5091892))

(assert (= (and d!1648226 (not c!875124)) b!5091893))

(assert (= (and b!5091893 (not res!2167074)) b!5091894))

(declare-fun m!6150062 () Bool)

(assert (=> b!5091892 m!6150062))

(declare-fun m!6150064 () Bool)

(assert (=> b!5091894 m!6150064))

(assert (=> b!5091846 d!1648226))

(declare-fun d!1648228 () Bool)

(declare-fun c!875127 () Bool)

(assert (=> d!1648228 (= c!875127 ((_ is Node!15642) (right!43265 t!3643)))))

(declare-fun e!3175501 () Bool)

(assert (=> d!1648228 (= (inv!77972 (right!43265 t!3643)) e!3175501)))

(declare-fun b!5091899 () Bool)

(assert (=> b!5091899 (= e!3175501 (inv!77975 (right!43265 t!3643)))))

(declare-fun b!5091900 () Bool)

(declare-fun e!3175502 () Bool)

(assert (=> b!5091900 (= e!3175501 e!3175502)))

(declare-fun res!2167075 () Bool)

(assert (=> b!5091900 (= res!2167075 (not ((_ is Leaf!25968) (right!43265 t!3643))))))

(assert (=> b!5091900 (=> res!2167075 e!3175502)))

(declare-fun b!5091901 () Bool)

(assert (=> b!5091901 (= e!3175502 (inv!77976 (right!43265 t!3643)))))

(assert (= (and d!1648228 c!875127) b!5091899))

(assert (= (and d!1648228 (not c!875127)) b!5091900))

(assert (= (and b!5091900 (not res!2167075)) b!5091901))

(declare-fun m!6150066 () Bool)

(assert (=> b!5091899 m!6150066))

(declare-fun m!6150068 () Bool)

(assert (=> b!5091901 m!6150068))

(assert (=> b!5091846 d!1648228))

(declare-fun d!1648230 () Bool)

(declare-fun lt!2092573 () Int)

(assert (=> d!1648230 (= lt!2092573 (size!39229 (list!19112 (left!42935 t!3643))))))

(assert (=> d!1648230 (= lt!2092573 (ite ((_ is Empty!15642) (left!42935 t!3643)) 0 (ite ((_ is Leaf!25968) (left!42935 t!3643)) (csize!31515 (left!42935 t!3643)) (csize!31514 (left!42935 t!3643)))))))

(assert (=> d!1648230 (= (size!39227 (left!42935 t!3643)) lt!2092573)))

(declare-fun bs!1191188 () Bool)

(assert (= bs!1191188 d!1648230))

(assert (=> bs!1191188 m!6150008))

(assert (=> bs!1191188 m!6150008))

(declare-fun m!6150074 () Bool)

(assert (=> bs!1191188 m!6150074))

(assert (=> b!5091845 d!1648230))

(declare-fun b!5091974 () Bool)

(declare-fun e!3175547 () T!105636)

(declare-fun call!354705 () T!105636)

(assert (=> b!5091974 (= e!3175547 call!354705)))

(declare-fun d!1648232 () Bool)

(declare-fun apply!14275 (List!58651 Int) T!105636)

(declare-fun ++!12842 (List!58651 List!58651) List!58651)

(assert (=> d!1648232 (= (apply!14275 (++!12842 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))) i!607) e!3175547)))

(declare-fun c!875149 () Bool)

(assert (=> d!1648232 (= c!875149 (< i!607 (size!39229 (list!19112 (left!42935 t!3643)))))))

(declare-fun lt!2092584 () Bool)

(declare-fun e!3175549 () Bool)

(assert (=> d!1648232 (= lt!2092584 e!3175549)))

(declare-fun res!2167087 () Bool)

(assert (=> d!1648232 (=> res!2167087 e!3175549)))

(assert (=> d!1648232 (= res!2167087 (or ((_ is Nil!58527) (list!19112 (left!42935 t!3643))) (= i!607 0)))))

(declare-fun e!3175546 () Bool)

(assert (=> d!1648232 e!3175546))

(declare-fun res!2167088 () Bool)

(assert (=> d!1648232 (=> (not res!2167088) (not e!3175546))))

(assert (=> d!1648232 (= res!2167088 (<= 0 i!607))))

(assert (=> d!1648232 (= (appendIndex!423 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643)) i!607) true)))

(declare-fun b!5091975 () Bool)

(assert (=> b!5091975 (= e!3175546 (< i!607 (+ (size!39229 (list!19112 (left!42935 t!3643))) (size!39229 (list!19112 (right!43265 t!3643))))))))

(declare-fun b!5091976 () Bool)

(assert (=> b!5091976 (= e!3175549 (appendIndex!423 (t!371576 (list!19112 (left!42935 t!3643))) (list!19112 (right!43265 t!3643)) (- i!607 1)))))

(declare-fun b!5091977 () Bool)

(assert (=> b!5091977 (= e!3175547 call!354705)))

(declare-fun b!5091978 () Bool)

(declare-fun e!3175548 () Int)

(assert (=> b!5091978 (= e!3175548 i!607)))

(declare-fun b!5091979 () Bool)

(assert (=> b!5091979 (= e!3175548 (- i!607 (size!39229 (list!19112 (left!42935 t!3643)))))))

(declare-fun bm!354700 () Bool)

(assert (=> bm!354700 (= call!354705 (apply!14275 (ite c!875149 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))) e!3175548))))

(declare-fun c!875150 () Bool)

(assert (=> bm!354700 (= c!875150 c!875149)))

(assert (= (and d!1648232 res!2167088) b!5091975))

(assert (= (and d!1648232 (not res!2167087)) b!5091976))

(assert (= (and d!1648232 c!875149) b!5091974))

(assert (= (and d!1648232 (not c!875149)) b!5091977))

(assert (= (or b!5091974 b!5091977) bm!354700))

(assert (= (and bm!354700 c!875150) b!5091978))

(assert (= (and bm!354700 (not c!875150)) b!5091979))

(assert (=> d!1648232 m!6150008))

(assert (=> d!1648232 m!6150010))

(declare-fun m!6150138 () Bool)

(assert (=> d!1648232 m!6150138))

(assert (=> d!1648232 m!6150138))

(declare-fun m!6150140 () Bool)

(assert (=> d!1648232 m!6150140))

(assert (=> d!1648232 m!6150008))

(assert (=> d!1648232 m!6150074))

(declare-fun m!6150142 () Bool)

(assert (=> bm!354700 m!6150142))

(assert (=> b!5091979 m!6150008))

(assert (=> b!5091979 m!6150074))

(assert (=> b!5091976 m!6150010))

(declare-fun m!6150144 () Bool)

(assert (=> b!5091976 m!6150144))

(assert (=> b!5091975 m!6150008))

(assert (=> b!5091975 m!6150074))

(assert (=> b!5091975 m!6150010))

(declare-fun m!6150146 () Bool)

(assert (=> b!5091975 m!6150146))

(assert (=> b!5091845 d!1648232))

(declare-fun b!5091989 () Bool)

(declare-fun e!3175554 () List!58651)

(declare-fun e!3175555 () List!58651)

(assert (=> b!5091989 (= e!3175554 e!3175555)))

(declare-fun c!875156 () Bool)

(assert (=> b!5091989 (= c!875156 ((_ is Leaf!25968) (left!42935 t!3643)))))

(declare-fun b!5091988 () Bool)

(assert (=> b!5091988 (= e!3175554 Nil!58527)))

(declare-fun d!1648248 () Bool)

(declare-fun c!875155 () Bool)

(assert (=> d!1648248 (= c!875155 ((_ is Empty!15642) (left!42935 t!3643)))))

(assert (=> d!1648248 (= (list!19112 (left!42935 t!3643)) e!3175554)))

(declare-fun b!5091990 () Bool)

(declare-fun list!19114 (IArray!31345) List!58651)

(assert (=> b!5091990 (= e!3175555 (list!19114 (xs!19024 (left!42935 t!3643))))))

(declare-fun b!5091991 () Bool)

(assert (=> b!5091991 (= e!3175555 (++!12842 (list!19112 (left!42935 (left!42935 t!3643))) (list!19112 (right!43265 (left!42935 t!3643)))))))

(assert (= (and d!1648248 c!875155) b!5091988))

(assert (= (and d!1648248 (not c!875155)) b!5091989))

(assert (= (and b!5091989 c!875156) b!5091990))

(assert (= (and b!5091989 (not c!875156)) b!5091991))

(declare-fun m!6150148 () Bool)

(assert (=> b!5091990 m!6150148))

(declare-fun m!6150150 () Bool)

(assert (=> b!5091991 m!6150150))

(declare-fun m!6150152 () Bool)

(assert (=> b!5091991 m!6150152))

(assert (=> b!5091991 m!6150150))

(assert (=> b!5091991 m!6150152))

(declare-fun m!6150154 () Bool)

(assert (=> b!5091991 m!6150154))

(assert (=> b!5091845 d!1648248))

(declare-fun b!5091993 () Bool)

(declare-fun e!3175556 () List!58651)

(declare-fun e!3175557 () List!58651)

(assert (=> b!5091993 (= e!3175556 e!3175557)))

(declare-fun c!875158 () Bool)

(assert (=> b!5091993 (= c!875158 ((_ is Leaf!25968) (right!43265 t!3643)))))

(declare-fun b!5091992 () Bool)

(assert (=> b!5091992 (= e!3175556 Nil!58527)))

(declare-fun d!1648250 () Bool)

(declare-fun c!875157 () Bool)

(assert (=> d!1648250 (= c!875157 ((_ is Empty!15642) (right!43265 t!3643)))))

(assert (=> d!1648250 (= (list!19112 (right!43265 t!3643)) e!3175556)))

(declare-fun b!5091994 () Bool)

(assert (=> b!5091994 (= e!3175557 (list!19114 (xs!19024 (right!43265 t!3643))))))

(declare-fun b!5091995 () Bool)

(assert (=> b!5091995 (= e!3175557 (++!12842 (list!19112 (left!42935 (right!43265 t!3643))) (list!19112 (right!43265 (right!43265 t!3643)))))))

(assert (= (and d!1648250 c!875157) b!5091992))

(assert (= (and d!1648250 (not c!875157)) b!5091993))

(assert (= (and b!5091993 c!875158) b!5091994))

(assert (= (and b!5091993 (not c!875158)) b!5091995))

(declare-fun m!6150156 () Bool)

(assert (=> b!5091994 m!6150156))

(declare-fun m!6150158 () Bool)

(assert (=> b!5091995 m!6150158))

(declare-fun m!6150160 () Bool)

(assert (=> b!5091995 m!6150160))

(assert (=> b!5091995 m!6150158))

(assert (=> b!5091995 m!6150160))

(declare-fun m!6150162 () Bool)

(assert (=> b!5091995 m!6150162))

(assert (=> b!5091845 d!1648250))

(declare-fun d!1648252 () Bool)

(assert (=> d!1648252 (= (inv!77971 (xs!19024 t!3643)) (<= (size!39229 (innerList!15730 (xs!19024 t!3643))) 2147483647))))

(declare-fun bs!1191191 () Bool)

(assert (= bs!1191191 d!1648252))

(declare-fun m!6150164 () Bool)

(assert (=> bs!1191191 m!6150164))

(assert (=> b!5091840 d!1648252))

(declare-fun b!5092004 () Bool)

(declare-fun e!3175563 () Bool)

(declare-fun tp!1419451 () Bool)

(declare-fun tp!1419450 () Bool)

(assert (=> b!5092004 (= e!3175563 (and (inv!77972 (left!42935 (left!42935 t!3643))) tp!1419450 (inv!77972 (right!43265 (left!42935 t!3643))) tp!1419451))))

(declare-fun b!5092006 () Bool)

(declare-fun e!3175562 () Bool)

(declare-fun tp!1419449 () Bool)

(assert (=> b!5092006 (= e!3175562 tp!1419449)))

(declare-fun b!5092005 () Bool)

(assert (=> b!5092005 (= e!3175563 (and (inv!77971 (xs!19024 (left!42935 t!3643))) e!3175562))))

(assert (=> b!5091846 (= tp!1419425 (and (inv!77972 (left!42935 t!3643)) e!3175563))))

(assert (= (and b!5091846 ((_ is Node!15642) (left!42935 t!3643))) b!5092004))

(assert (= b!5092005 b!5092006))

(assert (= (and b!5091846 ((_ is Leaf!25968) (left!42935 t!3643))) b!5092005))

(declare-fun m!6150166 () Bool)

(assert (=> b!5092004 m!6150166))

(declare-fun m!6150168 () Bool)

(assert (=> b!5092004 m!6150168))

(declare-fun m!6150170 () Bool)

(assert (=> b!5092005 m!6150170))

(assert (=> b!5091846 m!6150014))

(declare-fun b!5092007 () Bool)

(declare-fun tp!1419453 () Bool)

(declare-fun e!3175565 () Bool)

(declare-fun tp!1419454 () Bool)

(assert (=> b!5092007 (= e!3175565 (and (inv!77972 (left!42935 (right!43265 t!3643))) tp!1419453 (inv!77972 (right!43265 (right!43265 t!3643))) tp!1419454))))

(declare-fun b!5092009 () Bool)

(declare-fun e!3175564 () Bool)

(declare-fun tp!1419452 () Bool)

(assert (=> b!5092009 (= e!3175564 tp!1419452)))

(declare-fun b!5092008 () Bool)

(assert (=> b!5092008 (= e!3175565 (and (inv!77971 (xs!19024 (right!43265 t!3643))) e!3175564))))

(assert (=> b!5091846 (= tp!1419427 (and (inv!77972 (right!43265 t!3643)) e!3175565))))

(assert (= (and b!5091846 ((_ is Node!15642) (right!43265 t!3643))) b!5092007))

(assert (= b!5092008 b!5092009))

(assert (= (and b!5091846 ((_ is Leaf!25968) (right!43265 t!3643))) b!5092008))

(declare-fun m!6150172 () Bool)

(assert (=> b!5092007 m!6150172))

(declare-fun m!6150174 () Bool)

(assert (=> b!5092007 m!6150174))

(declare-fun m!6150176 () Bool)

(assert (=> b!5092008 m!6150176))

(assert (=> b!5091846 m!6150016))

(declare-fun b!5092014 () Bool)

(declare-fun e!3175568 () Bool)

(declare-fun tp_is_empty!37163 () Bool)

(declare-fun tp!1419457 () Bool)

(assert (=> b!5092014 (= e!3175568 (and tp_is_empty!37163 tp!1419457))))

(assert (=> b!5091841 (= tp!1419426 e!3175568)))

(assert (= (and b!5091841 ((_ is Cons!58527) (innerList!15730 (xs!19024 t!3643)))) b!5092014))

(check-sat (not bm!354700) (not b!5091994) (not b!5091892) (not b!5091901) (not b!5092009) (not b!5091995) (not bm!354691) (not b!5091887) (not d!1648232) (not bm!354692) (not b!5091990) (not b!5091846) (not b!5092006) (not b!5092008) (not b!5091976) (not b!5091859) (not d!1648210) (not b!5091991) (not b!5091890) (not b!5091899) (not b!5091886) (not b!5092007) (not d!1648230) tp_is_empty!37163 (not b!5092004) (not b!5091975) (not b!5092014) (not d!1648252) (not b!5091891) (not b!5092005) (not b!5091979) (not b!5091861) (not b!5091894))
(check-sat)
(get-model)

(declare-fun d!1648254 () Bool)

(assert (=> d!1648254 (= (list!19114 (xs!19024 (right!43265 t!3643))) (innerList!15730 (xs!19024 (right!43265 t!3643))))))

(assert (=> b!5091994 d!1648254))

(declare-fun b!5092023 () Bool)

(declare-fun e!3175574 () List!58651)

(assert (=> b!5092023 (= e!3175574 (list!19112 (right!43265 (right!43265 t!3643))))))

(declare-fun b!5092025 () Bool)

(declare-fun res!2167093 () Bool)

(declare-fun e!3175573 () Bool)

(assert (=> b!5092025 (=> (not res!2167093) (not e!3175573))))

(declare-fun lt!2092587 () List!58651)

(assert (=> b!5092025 (= res!2167093 (= (size!39229 lt!2092587) (+ (size!39229 (list!19112 (left!42935 (right!43265 t!3643)))) (size!39229 (list!19112 (right!43265 (right!43265 t!3643)))))))))

(declare-fun d!1648256 () Bool)

(assert (=> d!1648256 e!3175573))

(declare-fun res!2167094 () Bool)

(assert (=> d!1648256 (=> (not res!2167094) (not e!3175573))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10439 (List!58651) (InoxSet T!105636))

(assert (=> d!1648256 (= res!2167094 (= (content!10439 lt!2092587) ((_ map or) (content!10439 (list!19112 (left!42935 (right!43265 t!3643)))) (content!10439 (list!19112 (right!43265 (right!43265 t!3643)))))))))

(assert (=> d!1648256 (= lt!2092587 e!3175574)))

(declare-fun c!875161 () Bool)

(assert (=> d!1648256 (= c!875161 ((_ is Nil!58527) (list!19112 (left!42935 (right!43265 t!3643)))))))

(assert (=> d!1648256 (= (++!12842 (list!19112 (left!42935 (right!43265 t!3643))) (list!19112 (right!43265 (right!43265 t!3643)))) lt!2092587)))

(declare-fun b!5092026 () Bool)

(assert (=> b!5092026 (= e!3175573 (or (not (= (list!19112 (right!43265 (right!43265 t!3643))) Nil!58527)) (= lt!2092587 (list!19112 (left!42935 (right!43265 t!3643))))))))

(declare-fun b!5092024 () Bool)

(assert (=> b!5092024 (= e!3175574 (Cons!58527 (h!64975 (list!19112 (left!42935 (right!43265 t!3643)))) (++!12842 (t!371576 (list!19112 (left!42935 (right!43265 t!3643)))) (list!19112 (right!43265 (right!43265 t!3643))))))))

(assert (= (and d!1648256 c!875161) b!5092023))

(assert (= (and d!1648256 (not c!875161)) b!5092024))

(assert (= (and d!1648256 res!2167094) b!5092025))

(assert (= (and b!5092025 res!2167093) b!5092026))

(declare-fun m!6150178 () Bool)

(assert (=> b!5092025 m!6150178))

(assert (=> b!5092025 m!6150158))

(declare-fun m!6150180 () Bool)

(assert (=> b!5092025 m!6150180))

(assert (=> b!5092025 m!6150160))

(declare-fun m!6150182 () Bool)

(assert (=> b!5092025 m!6150182))

(declare-fun m!6150184 () Bool)

(assert (=> d!1648256 m!6150184))

(assert (=> d!1648256 m!6150158))

(declare-fun m!6150186 () Bool)

(assert (=> d!1648256 m!6150186))

(assert (=> d!1648256 m!6150160))

(declare-fun m!6150188 () Bool)

(assert (=> d!1648256 m!6150188))

(assert (=> b!5092024 m!6150160))

(declare-fun m!6150190 () Bool)

(assert (=> b!5092024 m!6150190))

(assert (=> b!5091995 d!1648256))

(declare-fun b!5092028 () Bool)

(declare-fun e!3175575 () List!58651)

(declare-fun e!3175576 () List!58651)

(assert (=> b!5092028 (= e!3175575 e!3175576)))

(declare-fun c!875163 () Bool)

(assert (=> b!5092028 (= c!875163 ((_ is Leaf!25968) (left!42935 (right!43265 t!3643))))))

(declare-fun b!5092027 () Bool)

(assert (=> b!5092027 (= e!3175575 Nil!58527)))

(declare-fun d!1648258 () Bool)

(declare-fun c!875162 () Bool)

(assert (=> d!1648258 (= c!875162 ((_ is Empty!15642) (left!42935 (right!43265 t!3643))))))

(assert (=> d!1648258 (= (list!19112 (left!42935 (right!43265 t!3643))) e!3175575)))

(declare-fun b!5092029 () Bool)

(assert (=> b!5092029 (= e!3175576 (list!19114 (xs!19024 (left!42935 (right!43265 t!3643)))))))

(declare-fun b!5092030 () Bool)

(assert (=> b!5092030 (= e!3175576 (++!12842 (list!19112 (left!42935 (left!42935 (right!43265 t!3643)))) (list!19112 (right!43265 (left!42935 (right!43265 t!3643))))))))

(assert (= (and d!1648258 c!875162) b!5092027))

(assert (= (and d!1648258 (not c!875162)) b!5092028))

(assert (= (and b!5092028 c!875163) b!5092029))

(assert (= (and b!5092028 (not c!875163)) b!5092030))

(declare-fun m!6150192 () Bool)

(assert (=> b!5092029 m!6150192))

(declare-fun m!6150194 () Bool)

(assert (=> b!5092030 m!6150194))

(declare-fun m!6150196 () Bool)

(assert (=> b!5092030 m!6150196))

(assert (=> b!5092030 m!6150194))

(assert (=> b!5092030 m!6150196))

(declare-fun m!6150198 () Bool)

(assert (=> b!5092030 m!6150198))

(assert (=> b!5091995 d!1648258))

(declare-fun b!5092032 () Bool)

(declare-fun e!3175577 () List!58651)

(declare-fun e!3175578 () List!58651)

(assert (=> b!5092032 (= e!3175577 e!3175578)))

(declare-fun c!875165 () Bool)

(assert (=> b!5092032 (= c!875165 ((_ is Leaf!25968) (right!43265 (right!43265 t!3643))))))

(declare-fun b!5092031 () Bool)

(assert (=> b!5092031 (= e!3175577 Nil!58527)))

(declare-fun d!1648260 () Bool)

(declare-fun c!875164 () Bool)

(assert (=> d!1648260 (= c!875164 ((_ is Empty!15642) (right!43265 (right!43265 t!3643))))))

(assert (=> d!1648260 (= (list!19112 (right!43265 (right!43265 t!3643))) e!3175577)))

(declare-fun b!5092033 () Bool)

(assert (=> b!5092033 (= e!3175578 (list!19114 (xs!19024 (right!43265 (right!43265 t!3643)))))))

(declare-fun b!5092034 () Bool)

(assert (=> b!5092034 (= e!3175578 (++!12842 (list!19112 (left!42935 (right!43265 (right!43265 t!3643)))) (list!19112 (right!43265 (right!43265 (right!43265 t!3643))))))))

(assert (= (and d!1648260 c!875164) b!5092031))

(assert (= (and d!1648260 (not c!875164)) b!5092032))

(assert (= (and b!5092032 c!875165) b!5092033))

(assert (= (and b!5092032 (not c!875165)) b!5092034))

(declare-fun m!6150200 () Bool)

(assert (=> b!5092033 m!6150200))

(declare-fun m!6150202 () Bool)

(assert (=> b!5092034 m!6150202))

(declare-fun m!6150204 () Bool)

(assert (=> b!5092034 m!6150204))

(assert (=> b!5092034 m!6150202))

(assert (=> b!5092034 m!6150204))

(declare-fun m!6150206 () Bool)

(assert (=> b!5092034 m!6150206))

(assert (=> b!5091995 d!1648260))

(declare-fun d!1648262 () Bool)

(declare-fun res!2167101 () Bool)

(declare-fun e!3175581 () Bool)

(assert (=> d!1648262 (=> (not res!2167101) (not e!3175581))))

(assert (=> d!1648262 (= res!2167101 (= (csize!31514 (right!43265 t!3643)) (+ (size!39227 (left!42935 (right!43265 t!3643))) (size!39227 (right!43265 (right!43265 t!3643))))))))

(assert (=> d!1648262 (= (inv!77975 (right!43265 t!3643)) e!3175581)))

(declare-fun b!5092041 () Bool)

(declare-fun res!2167102 () Bool)

(assert (=> b!5092041 (=> (not res!2167102) (not e!3175581))))

(assert (=> b!5092041 (= res!2167102 (and (not (= (left!42935 (right!43265 t!3643)) Empty!15642)) (not (= (right!43265 (right!43265 t!3643)) Empty!15642))))))

(declare-fun b!5092042 () Bool)

(declare-fun res!2167103 () Bool)

(assert (=> b!5092042 (=> (not res!2167103) (not e!3175581))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2176 (Conc!15642) Int)

(assert (=> b!5092042 (= res!2167103 (= (cheight!15853 (right!43265 t!3643)) (+ (max!0 (height!2176 (left!42935 (right!43265 t!3643))) (height!2176 (right!43265 (right!43265 t!3643)))) 1)))))

(declare-fun b!5092043 () Bool)

(assert (=> b!5092043 (= e!3175581 (<= 0 (cheight!15853 (right!43265 t!3643))))))

(assert (= (and d!1648262 res!2167101) b!5092041))

(assert (= (and b!5092041 res!2167102) b!5092042))

(assert (= (and b!5092042 res!2167103) b!5092043))

(declare-fun m!6150208 () Bool)

(assert (=> d!1648262 m!6150208))

(declare-fun m!6150210 () Bool)

(assert (=> d!1648262 m!6150210))

(declare-fun m!6150212 () Bool)

(assert (=> b!5092042 m!6150212))

(declare-fun m!6150214 () Bool)

(assert (=> b!5092042 m!6150214))

(assert (=> b!5092042 m!6150212))

(assert (=> b!5092042 m!6150214))

(declare-fun m!6150216 () Bool)

(assert (=> b!5092042 m!6150216))

(assert (=> b!5091899 d!1648262))

(declare-fun d!1648264 () Bool)

(assert (=> d!1648264 (= (BigIntAbs!0 (ite c!875121 (csize!31514 (right!43265 t!3643)) (csize!31515 (right!43265 t!3643)))) (ite (>= (ite c!875121 (csize!31514 (right!43265 t!3643)) (csize!31515 (right!43265 t!3643))) 0) (ite c!875121 (csize!31514 (right!43265 t!3643)) (csize!31515 (right!43265 t!3643))) (- (ite c!875121 (csize!31514 (right!43265 t!3643)) (csize!31515 (right!43265 t!3643))))))))

(assert (=> bm!354691 d!1648264))

(declare-fun d!1648266 () Bool)

(declare-fun res!2167108 () Bool)

(declare-fun e!3175584 () Bool)

(assert (=> d!1648266 (=> (not res!2167108) (not e!3175584))))

(assert (=> d!1648266 (= res!2167108 (<= (size!39229 (list!19114 (xs!19024 (left!42935 t!3643)))) 512))))

(assert (=> d!1648266 (= (inv!77976 (left!42935 t!3643)) e!3175584)))

(declare-fun b!5092048 () Bool)

(declare-fun res!2167109 () Bool)

(assert (=> b!5092048 (=> (not res!2167109) (not e!3175584))))

(assert (=> b!5092048 (= res!2167109 (= (csize!31515 (left!42935 t!3643)) (size!39229 (list!19114 (xs!19024 (left!42935 t!3643))))))))

(declare-fun b!5092049 () Bool)

(assert (=> b!5092049 (= e!3175584 (and (> (csize!31515 (left!42935 t!3643)) 0) (<= (csize!31515 (left!42935 t!3643)) 512)))))

(assert (= (and d!1648266 res!2167108) b!5092048))

(assert (= (and b!5092048 res!2167109) b!5092049))

(assert (=> d!1648266 m!6150148))

(assert (=> d!1648266 m!6150148))

(declare-fun m!6150218 () Bool)

(assert (=> d!1648266 m!6150218))

(assert (=> b!5092048 m!6150148))

(assert (=> b!5092048 m!6150148))

(assert (=> b!5092048 m!6150218))

(assert (=> b!5091894 d!1648266))

(declare-fun d!1648268 () Bool)

(assert (=> d!1648268 (= (BigIntAbs!0 (ite c!875123 (csize!31514 t!3643) (csize!31515 t!3643))) (ite (>= (ite c!875123 (csize!31514 t!3643) (csize!31515 t!3643)) 0) (ite c!875123 (csize!31514 t!3643) (csize!31515 t!3643)) (- (ite c!875123 (csize!31514 t!3643) (csize!31515 t!3643)))))))

(assert (=> bm!354692 d!1648268))

(declare-fun d!1648270 () Bool)

(declare-fun c!875166 () Bool)

(assert (=> d!1648270 (= c!875166 ((_ is Node!15642) (left!42935 (left!42935 t!3643))))))

(declare-fun e!3175585 () Bool)

(assert (=> d!1648270 (= (inv!77972 (left!42935 (left!42935 t!3643))) e!3175585)))

(declare-fun b!5092050 () Bool)

(assert (=> b!5092050 (= e!3175585 (inv!77975 (left!42935 (left!42935 t!3643))))))

(declare-fun b!5092051 () Bool)

(declare-fun e!3175586 () Bool)

(assert (=> b!5092051 (= e!3175585 e!3175586)))

(declare-fun res!2167110 () Bool)

(assert (=> b!5092051 (= res!2167110 (not ((_ is Leaf!25968) (left!42935 (left!42935 t!3643)))))))

(assert (=> b!5092051 (=> res!2167110 e!3175586)))

(declare-fun b!5092052 () Bool)

(assert (=> b!5092052 (= e!3175586 (inv!77976 (left!42935 (left!42935 t!3643))))))

(assert (= (and d!1648270 c!875166) b!5092050))

(assert (= (and d!1648270 (not c!875166)) b!5092051))

(assert (= (and b!5092051 (not res!2167110)) b!5092052))

(declare-fun m!6150220 () Bool)

(assert (=> b!5092050 m!6150220))

(declare-fun m!6150222 () Bool)

(assert (=> b!5092052 m!6150222))

(assert (=> b!5092004 d!1648270))

(declare-fun d!1648272 () Bool)

(declare-fun c!875167 () Bool)

(assert (=> d!1648272 (= c!875167 ((_ is Node!15642) (right!43265 (left!42935 t!3643))))))

(declare-fun e!3175587 () Bool)

(assert (=> d!1648272 (= (inv!77972 (right!43265 (left!42935 t!3643))) e!3175587)))

(declare-fun b!5092053 () Bool)

(assert (=> b!5092053 (= e!3175587 (inv!77975 (right!43265 (left!42935 t!3643))))))

(declare-fun b!5092054 () Bool)

(declare-fun e!3175588 () Bool)

(assert (=> b!5092054 (= e!3175587 e!3175588)))

(declare-fun res!2167111 () Bool)

(assert (=> b!5092054 (= res!2167111 (not ((_ is Leaf!25968) (right!43265 (left!42935 t!3643)))))))

(assert (=> b!5092054 (=> res!2167111 e!3175588)))

(declare-fun b!5092055 () Bool)

(assert (=> b!5092055 (= e!3175588 (inv!77976 (right!43265 (left!42935 t!3643))))))

(assert (= (and d!1648272 c!875167) b!5092053))

(assert (= (and d!1648272 (not c!875167)) b!5092054))

(assert (= (and b!5092054 (not res!2167111)) b!5092055))

(declare-fun m!6150224 () Bool)

(assert (=> b!5092053 m!6150224))

(declare-fun m!6150226 () Bool)

(assert (=> b!5092055 m!6150226))

(assert (=> b!5092004 d!1648272))

(declare-fun d!1648274 () Bool)

(declare-fun lt!2092590 () Int)

(assert (=> d!1648274 (>= lt!2092590 0)))

(declare-fun e!3175591 () Int)

(assert (=> d!1648274 (= lt!2092590 e!3175591)))

(declare-fun c!875170 () Bool)

(assert (=> d!1648274 (= c!875170 ((_ is Nil!58527) (list!19112 (left!42935 t!3643))))))

(assert (=> d!1648274 (= (size!39229 (list!19112 (left!42935 t!3643))) lt!2092590)))

(declare-fun b!5092060 () Bool)

(assert (=> b!5092060 (= e!3175591 0)))

(declare-fun b!5092061 () Bool)

(assert (=> b!5092061 (= e!3175591 (+ 1 (size!39229 (t!371576 (list!19112 (left!42935 t!3643))))))))

(assert (= (and d!1648274 c!875170) b!5092060))

(assert (= (and d!1648274 (not c!875170)) b!5092061))

(declare-fun m!6150228 () Bool)

(assert (=> b!5092061 m!6150228))

(assert (=> b!5091975 d!1648274))

(declare-fun d!1648276 () Bool)

(declare-fun lt!2092591 () Int)

(assert (=> d!1648276 (>= lt!2092591 0)))

(declare-fun e!3175592 () Int)

(assert (=> d!1648276 (= lt!2092591 e!3175592)))

(declare-fun c!875171 () Bool)

(assert (=> d!1648276 (= c!875171 ((_ is Nil!58527) (list!19112 (right!43265 t!3643))))))

(assert (=> d!1648276 (= (size!39229 (list!19112 (right!43265 t!3643))) lt!2092591)))

(declare-fun b!5092062 () Bool)

(assert (=> b!5092062 (= e!3175592 0)))

(declare-fun b!5092063 () Bool)

(assert (=> b!5092063 (= e!3175592 (+ 1 (size!39229 (t!371576 (list!19112 (right!43265 t!3643))))))))

(assert (= (and d!1648276 c!875171) b!5092062))

(assert (= (and d!1648276 (not c!875171)) b!5092063))

(declare-fun m!6150230 () Bool)

(assert (=> b!5092063 m!6150230))

(assert (=> b!5091975 d!1648276))

(declare-fun b!5092064 () Bool)

(declare-fun e!3175593 () Int)

(assert (=> b!5092064 (= e!3175593 0)))

(declare-fun b!5092065 () Bool)

(declare-fun e!3175594 () Int)

(assert (=> b!5092065 (= e!3175594 e!3175593)))

(declare-fun c!875172 () Bool)

(assert (=> b!5092065 (= c!875172 ((_ is Leaf!25968) (left!42935 (right!43265 t!3643))))))

(declare-fun d!1648278 () Bool)

(declare-fun lt!2092592 () Int)

(assert (=> d!1648278 (>= lt!2092592 0)))

(assert (=> d!1648278 (= lt!2092592 e!3175594)))

(declare-fun c!875173 () Bool)

(assert (=> d!1648278 (= c!875173 ((_ is Node!15642) (left!42935 (right!43265 t!3643))))))

(assert (=> d!1648278 (= (ConcPrimitiveSize!44 (left!42935 (right!43265 t!3643))) lt!2092592)))

(declare-fun bm!354701 () Bool)

(declare-fun call!354706 () Int)

(assert (=> bm!354701 (= call!354706 (BigIntAbs!0 (ite c!875173 (csize!31514 (left!42935 (right!43265 t!3643))) (csize!31515 (left!42935 (right!43265 t!3643))))))))

(declare-fun b!5092066 () Bool)

(assert (=> b!5092066 (= e!3175594 (+ 1 (ConcPrimitiveSize!44 (left!42935 (left!42935 (right!43265 t!3643)))) (ConcPrimitiveSize!44 (right!43265 (left!42935 (right!43265 t!3643)))) call!354706 (BigIntAbs!0 (cheight!15853 (left!42935 (right!43265 t!3643))))))))

(declare-fun b!5092067 () Bool)

(assert (=> b!5092067 (= e!3175593 (+ 1 (IArrayPrimitiveSize!43 (xs!19024 (left!42935 (right!43265 t!3643)))) call!354706))))

(assert (= (and d!1648278 c!875173) b!5092066))

(assert (= (and d!1648278 (not c!875173)) b!5092065))

(assert (= (and b!5092065 c!875172) b!5092067))

(assert (= (and b!5092065 (not c!875172)) b!5092064))

(assert (= (or b!5092066 b!5092067) bm!354701))

(declare-fun m!6150232 () Bool)

(assert (=> bm!354701 m!6150232))

(declare-fun m!6150234 () Bool)

(assert (=> b!5092066 m!6150234))

(declare-fun m!6150236 () Bool)

(assert (=> b!5092066 m!6150236))

(declare-fun m!6150238 () Bool)

(assert (=> b!5092066 m!6150238))

(declare-fun m!6150240 () Bool)

(assert (=> b!5092067 m!6150240))

(assert (=> b!5091886 d!1648278))

(declare-fun b!5092068 () Bool)

(declare-fun e!3175595 () Int)

(assert (=> b!5092068 (= e!3175595 0)))

(declare-fun b!5092069 () Bool)

(declare-fun e!3175596 () Int)

(assert (=> b!5092069 (= e!3175596 e!3175595)))

(declare-fun c!875174 () Bool)

(assert (=> b!5092069 (= c!875174 ((_ is Leaf!25968) (right!43265 (right!43265 t!3643))))))

(declare-fun d!1648280 () Bool)

(declare-fun lt!2092593 () Int)

(assert (=> d!1648280 (>= lt!2092593 0)))

(assert (=> d!1648280 (= lt!2092593 e!3175596)))

(declare-fun c!875175 () Bool)

(assert (=> d!1648280 (= c!875175 ((_ is Node!15642) (right!43265 (right!43265 t!3643))))))

(assert (=> d!1648280 (= (ConcPrimitiveSize!44 (right!43265 (right!43265 t!3643))) lt!2092593)))

(declare-fun bm!354702 () Bool)

(declare-fun call!354707 () Int)

(assert (=> bm!354702 (= call!354707 (BigIntAbs!0 (ite c!875175 (csize!31514 (right!43265 (right!43265 t!3643))) (csize!31515 (right!43265 (right!43265 t!3643))))))))

(declare-fun b!5092070 () Bool)

(assert (=> b!5092070 (= e!3175596 (+ 1 (ConcPrimitiveSize!44 (left!42935 (right!43265 (right!43265 t!3643)))) (ConcPrimitiveSize!44 (right!43265 (right!43265 (right!43265 t!3643)))) call!354707 (BigIntAbs!0 (cheight!15853 (right!43265 (right!43265 t!3643))))))))

(declare-fun b!5092071 () Bool)

(assert (=> b!5092071 (= e!3175595 (+ 1 (IArrayPrimitiveSize!43 (xs!19024 (right!43265 (right!43265 t!3643)))) call!354707))))

(assert (= (and d!1648280 c!875175) b!5092070))

(assert (= (and d!1648280 (not c!875175)) b!5092069))

(assert (= (and b!5092069 c!875174) b!5092071))

(assert (= (and b!5092069 (not c!875174)) b!5092068))

(assert (= (or b!5092070 b!5092071) bm!354702))

(declare-fun m!6150242 () Bool)

(assert (=> bm!354702 m!6150242))

(declare-fun m!6150244 () Bool)

(assert (=> b!5092070 m!6150244))

(declare-fun m!6150246 () Bool)

(assert (=> b!5092070 m!6150246))

(declare-fun m!6150248 () Bool)

(assert (=> b!5092070 m!6150248))

(declare-fun m!6150250 () Bool)

(assert (=> b!5092071 m!6150250))

(assert (=> b!5091886 d!1648280))

(declare-fun d!1648282 () Bool)

(assert (=> d!1648282 (= (BigIntAbs!0 (cheight!15853 (right!43265 t!3643))) (ite (>= (cheight!15853 (right!43265 t!3643)) 0) (cheight!15853 (right!43265 t!3643)) (- (cheight!15853 (right!43265 t!3643)))))))

(assert (=> b!5091886 d!1648282))

(declare-fun d!1648284 () Bool)

(declare-fun lt!2092596 () T!105636)

(declare-fun contains!19593 (List!58651 T!105636) Bool)

(assert (=> d!1648284 (contains!19593 (++!12842 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))) lt!2092596)))

(declare-fun e!3175602 () T!105636)

(assert (=> d!1648284 (= lt!2092596 e!3175602)))

(declare-fun c!875178 () Bool)

(assert (=> d!1648284 (= c!875178 (= i!607 0))))

(declare-fun e!3175601 () Bool)

(assert (=> d!1648284 e!3175601))

(declare-fun res!2167114 () Bool)

(assert (=> d!1648284 (=> (not res!2167114) (not e!3175601))))

(assert (=> d!1648284 (= res!2167114 (<= 0 i!607))))

(assert (=> d!1648284 (= (apply!14275 (++!12842 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))) i!607) lt!2092596)))

(declare-fun b!5092078 () Bool)

(assert (=> b!5092078 (= e!3175601 (< i!607 (size!39229 (++!12842 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))))))))

(declare-fun b!5092079 () Bool)

(declare-fun head!10804 (List!58651) T!105636)

(assert (=> b!5092079 (= e!3175602 (head!10804 (++!12842 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643)))))))

(declare-fun b!5092080 () Bool)

(declare-fun tail!9959 (List!58651) List!58651)

(assert (=> b!5092080 (= e!3175602 (apply!14275 (tail!9959 (++!12842 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643)))) (- i!607 1)))))

(assert (= (and d!1648284 res!2167114) b!5092078))

(assert (= (and d!1648284 c!875178) b!5092079))

(assert (= (and d!1648284 (not c!875178)) b!5092080))

(assert (=> d!1648284 m!6150138))

(declare-fun m!6150252 () Bool)

(assert (=> d!1648284 m!6150252))

(assert (=> b!5092078 m!6150138))

(declare-fun m!6150254 () Bool)

(assert (=> b!5092078 m!6150254))

(assert (=> b!5092079 m!6150138))

(declare-fun m!6150256 () Bool)

(assert (=> b!5092079 m!6150256))

(assert (=> b!5092080 m!6150138))

(declare-fun m!6150258 () Bool)

(assert (=> b!5092080 m!6150258))

(assert (=> b!5092080 m!6150258))

(declare-fun m!6150260 () Bool)

(assert (=> b!5092080 m!6150260))

(assert (=> d!1648232 d!1648284))

(declare-fun b!5092081 () Bool)

(declare-fun e!3175604 () List!58651)

(assert (=> b!5092081 (= e!3175604 (list!19112 (right!43265 t!3643)))))

(declare-fun b!5092083 () Bool)

(declare-fun res!2167115 () Bool)

(declare-fun e!3175603 () Bool)

(assert (=> b!5092083 (=> (not res!2167115) (not e!3175603))))

(declare-fun lt!2092597 () List!58651)

(assert (=> b!5092083 (= res!2167115 (= (size!39229 lt!2092597) (+ (size!39229 (list!19112 (left!42935 t!3643))) (size!39229 (list!19112 (right!43265 t!3643))))))))

(declare-fun d!1648286 () Bool)

(assert (=> d!1648286 e!3175603))

(declare-fun res!2167116 () Bool)

(assert (=> d!1648286 (=> (not res!2167116) (not e!3175603))))

(assert (=> d!1648286 (= res!2167116 (= (content!10439 lt!2092597) ((_ map or) (content!10439 (list!19112 (left!42935 t!3643))) (content!10439 (list!19112 (right!43265 t!3643))))))))

(assert (=> d!1648286 (= lt!2092597 e!3175604)))

(declare-fun c!875179 () Bool)

(assert (=> d!1648286 (= c!875179 ((_ is Nil!58527) (list!19112 (left!42935 t!3643))))))

(assert (=> d!1648286 (= (++!12842 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))) lt!2092597)))

(declare-fun b!5092084 () Bool)

(assert (=> b!5092084 (= e!3175603 (or (not (= (list!19112 (right!43265 t!3643)) Nil!58527)) (= lt!2092597 (list!19112 (left!42935 t!3643)))))))

(declare-fun b!5092082 () Bool)

(assert (=> b!5092082 (= e!3175604 (Cons!58527 (h!64975 (list!19112 (left!42935 t!3643))) (++!12842 (t!371576 (list!19112 (left!42935 t!3643))) (list!19112 (right!43265 t!3643)))))))

(assert (= (and d!1648286 c!875179) b!5092081))

(assert (= (and d!1648286 (not c!875179)) b!5092082))

(assert (= (and d!1648286 res!2167116) b!5092083))

(assert (= (and b!5092083 res!2167115) b!5092084))

(declare-fun m!6150262 () Bool)

(assert (=> b!5092083 m!6150262))

(assert (=> b!5092083 m!6150008))

(assert (=> b!5092083 m!6150074))

(assert (=> b!5092083 m!6150010))

(assert (=> b!5092083 m!6150146))

(declare-fun m!6150264 () Bool)

(assert (=> d!1648286 m!6150264))

(assert (=> d!1648286 m!6150008))

(declare-fun m!6150266 () Bool)

(assert (=> d!1648286 m!6150266))

(assert (=> d!1648286 m!6150010))

(declare-fun m!6150268 () Bool)

(assert (=> d!1648286 m!6150268))

(assert (=> b!5092082 m!6150010))

(declare-fun m!6150270 () Bool)

(assert (=> b!5092082 m!6150270))

(assert (=> d!1648232 d!1648286))

(assert (=> d!1648232 d!1648274))

(declare-fun b!5092085 () Bool)

(declare-fun e!3175605 () Int)

(assert (=> b!5092085 (= e!3175605 0)))

(declare-fun b!5092086 () Bool)

(declare-fun e!3175606 () Int)

(assert (=> b!5092086 (= e!3175606 e!3175605)))

(declare-fun c!875180 () Bool)

(assert (=> b!5092086 (= c!875180 ((_ is Leaf!25968) (left!42935 t!3643)))))

(declare-fun d!1648288 () Bool)

(declare-fun lt!2092598 () Int)

(assert (=> d!1648288 (>= lt!2092598 0)))

(assert (=> d!1648288 (= lt!2092598 e!3175606)))

(declare-fun c!875181 () Bool)

(assert (=> d!1648288 (= c!875181 ((_ is Node!15642) (left!42935 t!3643)))))

(assert (=> d!1648288 (= (ConcPrimitiveSize!44 (left!42935 t!3643)) lt!2092598)))

(declare-fun bm!354703 () Bool)

(declare-fun call!354708 () Int)

(assert (=> bm!354703 (= call!354708 (BigIntAbs!0 (ite c!875181 (csize!31514 (left!42935 t!3643)) (csize!31515 (left!42935 t!3643)))))))

(declare-fun b!5092087 () Bool)

(assert (=> b!5092087 (= e!3175606 (+ 1 (ConcPrimitiveSize!44 (left!42935 (left!42935 t!3643))) (ConcPrimitiveSize!44 (right!43265 (left!42935 t!3643))) call!354708 (BigIntAbs!0 (cheight!15853 (left!42935 t!3643)))))))

(declare-fun b!5092088 () Bool)

(assert (=> b!5092088 (= e!3175605 (+ 1 (IArrayPrimitiveSize!43 (xs!19024 (left!42935 t!3643))) call!354708))))

(assert (= (and d!1648288 c!875181) b!5092087))

(assert (= (and d!1648288 (not c!875181)) b!5092086))

(assert (= (and b!5092086 c!875180) b!5092088))

(assert (= (and b!5092086 (not c!875180)) b!5092085))

(assert (= (or b!5092087 b!5092088) bm!354703))

(declare-fun m!6150272 () Bool)

(assert (=> bm!354703 m!6150272))

(declare-fun m!6150274 () Bool)

(assert (=> b!5092087 m!6150274))

(declare-fun m!6150276 () Bool)

(assert (=> b!5092087 m!6150276))

(declare-fun m!6150278 () Bool)

(assert (=> b!5092087 m!6150278))

(declare-fun m!6150280 () Bool)

(assert (=> b!5092088 m!6150280))

(assert (=> b!5091890 d!1648288))

(assert (=> b!5091890 d!1648216))

(declare-fun d!1648290 () Bool)

(assert (=> d!1648290 (= (BigIntAbs!0 (cheight!15853 t!3643)) (ite (>= (cheight!15853 t!3643) 0) (cheight!15853 t!3643) (- (cheight!15853 t!3643))))))

(assert (=> b!5091890 d!1648290))

(declare-fun d!1648292 () Bool)

(assert (=> d!1648292 (= (list!19114 (xs!19024 (left!42935 t!3643))) (innerList!15730 (xs!19024 (left!42935 t!3643))))))

(assert (=> b!5091990 d!1648292))

(declare-fun d!1648294 () Bool)

(assert (=> d!1648294 (= (inv!77971 (xs!19024 (left!42935 t!3643))) (<= (size!39229 (innerList!15730 (xs!19024 (left!42935 t!3643)))) 2147483647))))

(declare-fun bs!1191192 () Bool)

(assert (= bs!1191192 d!1648294))

(declare-fun m!6150282 () Bool)

(assert (=> bs!1191192 m!6150282))

(assert (=> b!5092005 d!1648294))

(declare-fun b!5092089 () Bool)

(declare-fun e!3175608 () T!105636)

(declare-fun call!354709 () T!105636)

(assert (=> b!5092089 (= e!3175608 call!354709)))

(declare-fun d!1648296 () Bool)

(assert (=> d!1648296 (= (apply!14275 (++!12842 (t!371576 (list!19112 (left!42935 t!3643))) (list!19112 (right!43265 t!3643))) (- i!607 1)) e!3175608)))

(declare-fun c!875182 () Bool)

(assert (=> d!1648296 (= c!875182 (< (- i!607 1) (size!39229 (t!371576 (list!19112 (left!42935 t!3643))))))))

(declare-fun lt!2092599 () Bool)

(declare-fun e!3175610 () Bool)

(assert (=> d!1648296 (= lt!2092599 e!3175610)))

(declare-fun res!2167117 () Bool)

(assert (=> d!1648296 (=> res!2167117 e!3175610)))

(assert (=> d!1648296 (= res!2167117 (or ((_ is Nil!58527) (t!371576 (list!19112 (left!42935 t!3643)))) (= (- i!607 1) 0)))))

(declare-fun e!3175607 () Bool)

(assert (=> d!1648296 e!3175607))

(declare-fun res!2167118 () Bool)

(assert (=> d!1648296 (=> (not res!2167118) (not e!3175607))))

(assert (=> d!1648296 (= res!2167118 (<= 0 (- i!607 1)))))

(assert (=> d!1648296 (= (appendIndex!423 (t!371576 (list!19112 (left!42935 t!3643))) (list!19112 (right!43265 t!3643)) (- i!607 1)) true)))

(declare-fun b!5092090 () Bool)

(assert (=> b!5092090 (= e!3175607 (< (- i!607 1) (+ (size!39229 (t!371576 (list!19112 (left!42935 t!3643)))) (size!39229 (list!19112 (right!43265 t!3643))))))))

(declare-fun b!5092091 () Bool)

(assert (=> b!5092091 (= e!3175610 (appendIndex!423 (t!371576 (t!371576 (list!19112 (left!42935 t!3643)))) (list!19112 (right!43265 t!3643)) (- (- i!607 1) 1)))))

(declare-fun b!5092092 () Bool)

(assert (=> b!5092092 (= e!3175608 call!354709)))

(declare-fun b!5092093 () Bool)

(declare-fun e!3175609 () Int)

(assert (=> b!5092093 (= e!3175609 (- i!607 1))))

(declare-fun b!5092094 () Bool)

(assert (=> b!5092094 (= e!3175609 (- (- i!607 1) (size!39229 (t!371576 (list!19112 (left!42935 t!3643))))))))

(declare-fun bm!354704 () Bool)

(assert (=> bm!354704 (= call!354709 (apply!14275 (ite c!875182 (t!371576 (list!19112 (left!42935 t!3643))) (list!19112 (right!43265 t!3643))) e!3175609))))

(declare-fun c!875183 () Bool)

(assert (=> bm!354704 (= c!875183 c!875182)))

(assert (= (and d!1648296 res!2167118) b!5092090))

(assert (= (and d!1648296 (not res!2167117)) b!5092091))

(assert (= (and d!1648296 c!875182) b!5092089))

(assert (= (and d!1648296 (not c!875182)) b!5092092))

(assert (= (or b!5092089 b!5092092) bm!354704))

(assert (= (and bm!354704 c!875183) b!5092093))

(assert (= (and bm!354704 (not c!875183)) b!5092094))

(assert (=> d!1648296 m!6150010))

(assert (=> d!1648296 m!6150270))

(assert (=> d!1648296 m!6150270))

(declare-fun m!6150284 () Bool)

(assert (=> d!1648296 m!6150284))

(assert (=> d!1648296 m!6150228))

(declare-fun m!6150286 () Bool)

(assert (=> bm!354704 m!6150286))

(assert (=> b!5092094 m!6150228))

(assert (=> b!5092091 m!6150010))

(declare-fun m!6150288 () Bool)

(assert (=> b!5092091 m!6150288))

(assert (=> b!5092090 m!6150228))

(assert (=> b!5092090 m!6150010))

(assert (=> b!5092090 m!6150146))

(assert (=> b!5091976 d!1648296))

(declare-fun d!1648298 () Bool)

(declare-fun res!2167119 () Bool)

(declare-fun e!3175611 () Bool)

(assert (=> d!1648298 (=> (not res!2167119) (not e!3175611))))

(assert (=> d!1648298 (= res!2167119 (<= (size!39229 (list!19114 (xs!19024 (right!43265 t!3643)))) 512))))

(assert (=> d!1648298 (= (inv!77976 (right!43265 t!3643)) e!3175611)))

(declare-fun b!5092095 () Bool)

(declare-fun res!2167120 () Bool)

(assert (=> b!5092095 (=> (not res!2167120) (not e!3175611))))

(assert (=> b!5092095 (= res!2167120 (= (csize!31515 (right!43265 t!3643)) (size!39229 (list!19114 (xs!19024 (right!43265 t!3643))))))))

(declare-fun b!5092096 () Bool)

(assert (=> b!5092096 (= e!3175611 (and (> (csize!31515 (right!43265 t!3643)) 0) (<= (csize!31515 (right!43265 t!3643)) 512)))))

(assert (= (and d!1648298 res!2167119) b!5092095))

(assert (= (and b!5092095 res!2167120) b!5092096))

(assert (=> d!1648298 m!6150156))

(assert (=> d!1648298 m!6150156))

(declare-fun m!6150290 () Bool)

(assert (=> d!1648298 m!6150290))

(assert (=> b!5092095 m!6150156))

(assert (=> b!5092095 m!6150156))

(assert (=> b!5092095 m!6150290))

(assert (=> b!5091901 d!1648298))

(declare-fun d!1648300 () Bool)

(declare-fun lt!2092602 () Int)

(assert (=> d!1648300 (>= lt!2092602 0)))

(declare-fun ListPrimitiveSize!396 (List!58651) Int)

(assert (=> d!1648300 (= lt!2092602 (+ 1 (ListPrimitiveSize!396 (innerList!15730 (xs!19024 (right!43265 t!3643))))))))

(assert (=> d!1648300 (= (IArrayPrimitiveSize!43 (xs!19024 (right!43265 t!3643))) lt!2092602)))

(declare-fun bs!1191193 () Bool)

(assert (= bs!1191193 d!1648300))

(declare-fun m!6150292 () Bool)

(assert (=> bs!1191193 m!6150292))

(assert (=> b!5091887 d!1648300))

(declare-fun d!1648302 () Bool)

(declare-fun lt!2092603 () Int)

(assert (=> d!1648302 (>= lt!2092603 0)))

(assert (=> d!1648302 (= lt!2092603 (+ 1 (ListPrimitiveSize!396 (innerList!15730 (xs!19024 t!3643)))))))

(assert (=> d!1648302 (= (IArrayPrimitiveSize!43 (xs!19024 t!3643)) lt!2092603)))

(declare-fun bs!1191194 () Bool)

(assert (= bs!1191194 d!1648302))

(declare-fun m!6150294 () Bool)

(assert (=> bs!1191194 m!6150294))

(assert (=> b!5091891 d!1648302))

(declare-fun d!1648304 () Bool)

(declare-fun res!2167121 () Bool)

(declare-fun e!3175612 () Bool)

(assert (=> d!1648304 (=> (not res!2167121) (not e!3175612))))

(assert (=> d!1648304 (= res!2167121 (= (csize!31514 t!3643) (+ (size!39227 (left!42935 t!3643)) (size!39227 (right!43265 t!3643)))))))

(assert (=> d!1648304 (= (inv!77975 t!3643) e!3175612)))

(declare-fun b!5092097 () Bool)

(declare-fun res!2167122 () Bool)

(assert (=> b!5092097 (=> (not res!2167122) (not e!3175612))))

(assert (=> b!5092097 (= res!2167122 (and (not (= (left!42935 t!3643) Empty!15642)) (not (= (right!43265 t!3643) Empty!15642))))))

(declare-fun b!5092098 () Bool)

(declare-fun res!2167123 () Bool)

(assert (=> b!5092098 (=> (not res!2167123) (not e!3175612))))

(assert (=> b!5092098 (= res!2167123 (= (cheight!15853 t!3643) (+ (max!0 (height!2176 (left!42935 t!3643)) (height!2176 (right!43265 t!3643))) 1)))))

(declare-fun b!5092099 () Bool)

(assert (=> b!5092099 (= e!3175612 (<= 0 (cheight!15853 t!3643)))))

(assert (= (and d!1648304 res!2167121) b!5092097))

(assert (= (and b!5092097 res!2167122) b!5092098))

(assert (= (and b!5092098 res!2167123) b!5092099))

(assert (=> d!1648304 m!6150006))

(declare-fun m!6150296 () Bool)

(assert (=> d!1648304 m!6150296))

(declare-fun m!6150298 () Bool)

(assert (=> b!5092098 m!6150298))

(declare-fun m!6150300 () Bool)

(assert (=> b!5092098 m!6150300))

(assert (=> b!5092098 m!6150298))

(assert (=> b!5092098 m!6150300))

(declare-fun m!6150302 () Bool)

(assert (=> b!5092098 m!6150302))

(assert (=> b!5091859 d!1648304))

(declare-fun b!5092100 () Bool)

(declare-fun e!3175614 () List!58651)

(assert (=> b!5092100 (= e!3175614 (list!19112 (right!43265 (left!42935 t!3643))))))

(declare-fun b!5092102 () Bool)

(declare-fun res!2167124 () Bool)

(declare-fun e!3175613 () Bool)

(assert (=> b!5092102 (=> (not res!2167124) (not e!3175613))))

(declare-fun lt!2092604 () List!58651)

(assert (=> b!5092102 (= res!2167124 (= (size!39229 lt!2092604) (+ (size!39229 (list!19112 (left!42935 (left!42935 t!3643)))) (size!39229 (list!19112 (right!43265 (left!42935 t!3643)))))))))

(declare-fun d!1648306 () Bool)

(assert (=> d!1648306 e!3175613))

(declare-fun res!2167125 () Bool)

(assert (=> d!1648306 (=> (not res!2167125) (not e!3175613))))

(assert (=> d!1648306 (= res!2167125 (= (content!10439 lt!2092604) ((_ map or) (content!10439 (list!19112 (left!42935 (left!42935 t!3643)))) (content!10439 (list!19112 (right!43265 (left!42935 t!3643)))))))))

(assert (=> d!1648306 (= lt!2092604 e!3175614)))

(declare-fun c!875184 () Bool)

(assert (=> d!1648306 (= c!875184 ((_ is Nil!58527) (list!19112 (left!42935 (left!42935 t!3643)))))))

(assert (=> d!1648306 (= (++!12842 (list!19112 (left!42935 (left!42935 t!3643))) (list!19112 (right!43265 (left!42935 t!3643)))) lt!2092604)))

(declare-fun b!5092103 () Bool)

(assert (=> b!5092103 (= e!3175613 (or (not (= (list!19112 (right!43265 (left!42935 t!3643))) Nil!58527)) (= lt!2092604 (list!19112 (left!42935 (left!42935 t!3643))))))))

(declare-fun b!5092101 () Bool)

(assert (=> b!5092101 (= e!3175614 (Cons!58527 (h!64975 (list!19112 (left!42935 (left!42935 t!3643)))) (++!12842 (t!371576 (list!19112 (left!42935 (left!42935 t!3643)))) (list!19112 (right!43265 (left!42935 t!3643))))))))

(assert (= (and d!1648306 c!875184) b!5092100))

(assert (= (and d!1648306 (not c!875184)) b!5092101))

(assert (= (and d!1648306 res!2167125) b!5092102))

(assert (= (and b!5092102 res!2167124) b!5092103))

(declare-fun m!6150304 () Bool)

(assert (=> b!5092102 m!6150304))

(assert (=> b!5092102 m!6150150))

(declare-fun m!6150306 () Bool)

(assert (=> b!5092102 m!6150306))

(assert (=> b!5092102 m!6150152))

(declare-fun m!6150308 () Bool)

(assert (=> b!5092102 m!6150308))

(declare-fun m!6150310 () Bool)

(assert (=> d!1648306 m!6150310))

(assert (=> d!1648306 m!6150150))

(declare-fun m!6150312 () Bool)

(assert (=> d!1648306 m!6150312))

(assert (=> d!1648306 m!6150152))

(declare-fun m!6150314 () Bool)

(assert (=> d!1648306 m!6150314))

(assert (=> b!5092101 m!6150152))

(declare-fun m!6150316 () Bool)

(assert (=> b!5092101 m!6150316))

(assert (=> b!5091991 d!1648306))

(declare-fun b!5092105 () Bool)

(declare-fun e!3175615 () List!58651)

(declare-fun e!3175616 () List!58651)

(assert (=> b!5092105 (= e!3175615 e!3175616)))

(declare-fun c!875186 () Bool)

(assert (=> b!5092105 (= c!875186 ((_ is Leaf!25968) (left!42935 (left!42935 t!3643))))))

(declare-fun b!5092104 () Bool)

(assert (=> b!5092104 (= e!3175615 Nil!58527)))

(declare-fun d!1648308 () Bool)

(declare-fun c!875185 () Bool)

(assert (=> d!1648308 (= c!875185 ((_ is Empty!15642) (left!42935 (left!42935 t!3643))))))

(assert (=> d!1648308 (= (list!19112 (left!42935 (left!42935 t!3643))) e!3175615)))

(declare-fun b!5092106 () Bool)

(assert (=> b!5092106 (= e!3175616 (list!19114 (xs!19024 (left!42935 (left!42935 t!3643)))))))

(declare-fun b!5092107 () Bool)

(assert (=> b!5092107 (= e!3175616 (++!12842 (list!19112 (left!42935 (left!42935 (left!42935 t!3643)))) (list!19112 (right!43265 (left!42935 (left!42935 t!3643))))))))

(assert (= (and d!1648308 c!875185) b!5092104))

(assert (= (and d!1648308 (not c!875185)) b!5092105))

(assert (= (and b!5092105 c!875186) b!5092106))

(assert (= (and b!5092105 (not c!875186)) b!5092107))

(declare-fun m!6150318 () Bool)

(assert (=> b!5092106 m!6150318))

(declare-fun m!6150320 () Bool)

(assert (=> b!5092107 m!6150320))

(declare-fun m!6150322 () Bool)

(assert (=> b!5092107 m!6150322))

(assert (=> b!5092107 m!6150320))

(assert (=> b!5092107 m!6150322))

(declare-fun m!6150324 () Bool)

(assert (=> b!5092107 m!6150324))

(assert (=> b!5091991 d!1648308))

(declare-fun b!5092109 () Bool)

(declare-fun e!3175617 () List!58651)

(declare-fun e!3175618 () List!58651)

(assert (=> b!5092109 (= e!3175617 e!3175618)))

(declare-fun c!875188 () Bool)

(assert (=> b!5092109 (= c!875188 ((_ is Leaf!25968) (right!43265 (left!42935 t!3643))))))

(declare-fun b!5092108 () Bool)

(assert (=> b!5092108 (= e!3175617 Nil!58527)))

(declare-fun d!1648310 () Bool)

(declare-fun c!875187 () Bool)

(assert (=> d!1648310 (= c!875187 ((_ is Empty!15642) (right!43265 (left!42935 t!3643))))))

(assert (=> d!1648310 (= (list!19112 (right!43265 (left!42935 t!3643))) e!3175617)))

(declare-fun b!5092110 () Bool)

(assert (=> b!5092110 (= e!3175618 (list!19114 (xs!19024 (right!43265 (left!42935 t!3643)))))))

(declare-fun b!5092111 () Bool)

(assert (=> b!5092111 (= e!3175618 (++!12842 (list!19112 (left!42935 (right!43265 (left!42935 t!3643)))) (list!19112 (right!43265 (right!43265 (left!42935 t!3643))))))))

(assert (= (and d!1648310 c!875187) b!5092108))

(assert (= (and d!1648310 (not c!875187)) b!5092109))

(assert (= (and b!5092109 c!875188) b!5092110))

(assert (= (and b!5092109 (not c!875188)) b!5092111))

(declare-fun m!6150326 () Bool)

(assert (=> b!5092110 m!6150326))

(declare-fun m!6150328 () Bool)

(assert (=> b!5092111 m!6150328))

(declare-fun m!6150330 () Bool)

(assert (=> b!5092111 m!6150330))

(assert (=> b!5092111 m!6150328))

(assert (=> b!5092111 m!6150330))

(declare-fun m!6150332 () Bool)

(assert (=> b!5092111 m!6150332))

(assert (=> b!5091991 d!1648310))

(assert (=> b!5091979 d!1648274))

(assert (=> b!5091846 d!1648226))

(assert (=> b!5091846 d!1648228))

(declare-fun d!1648312 () Bool)

(declare-fun res!2167126 () Bool)

(declare-fun e!3175619 () Bool)

(assert (=> d!1648312 (=> (not res!2167126) (not e!3175619))))

(assert (=> d!1648312 (= res!2167126 (<= (size!39229 (list!19114 (xs!19024 t!3643))) 512))))

(assert (=> d!1648312 (= (inv!77976 t!3643) e!3175619)))

(declare-fun b!5092112 () Bool)

(declare-fun res!2167127 () Bool)

(assert (=> b!5092112 (=> (not res!2167127) (not e!3175619))))

(assert (=> b!5092112 (= res!2167127 (= (csize!31515 t!3643) (size!39229 (list!19114 (xs!19024 t!3643)))))))

(declare-fun b!5092113 () Bool)

(assert (=> b!5092113 (= e!3175619 (and (> (csize!31515 t!3643) 0) (<= (csize!31515 t!3643) 512)))))

(assert (= (and d!1648312 res!2167126) b!5092112))

(assert (= (and b!5092112 res!2167127) b!5092113))

(declare-fun m!6150334 () Bool)

(assert (=> d!1648312 m!6150334))

(assert (=> d!1648312 m!6150334))

(declare-fun m!6150336 () Bool)

(assert (=> d!1648312 m!6150336))

(assert (=> b!5092112 m!6150334))

(assert (=> b!5092112 m!6150334))

(assert (=> b!5092112 m!6150336))

(assert (=> b!5091861 d!1648312))

(declare-fun d!1648314 () Bool)

(declare-fun lt!2092605 () T!105636)

(assert (=> d!1648314 (contains!19593 (ite c!875149 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))) lt!2092605)))

(declare-fun e!3175621 () T!105636)

(assert (=> d!1648314 (= lt!2092605 e!3175621)))

(declare-fun c!875189 () Bool)

(assert (=> d!1648314 (= c!875189 (= e!3175548 0))))

(declare-fun e!3175620 () Bool)

(assert (=> d!1648314 e!3175620))

(declare-fun res!2167128 () Bool)

(assert (=> d!1648314 (=> (not res!2167128) (not e!3175620))))

(assert (=> d!1648314 (= res!2167128 (<= 0 e!3175548))))

(assert (=> d!1648314 (= (apply!14275 (ite c!875149 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))) e!3175548) lt!2092605)))

(declare-fun b!5092114 () Bool)

(assert (=> b!5092114 (= e!3175620 (< e!3175548 (size!39229 (ite c!875149 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))))))))

(declare-fun b!5092115 () Bool)

(assert (=> b!5092115 (= e!3175621 (head!10804 (ite c!875149 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643)))))))

(declare-fun b!5092116 () Bool)

(assert (=> b!5092116 (= e!3175621 (apply!14275 (tail!9959 (ite c!875149 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643)))) (- e!3175548 1)))))

(assert (= (and d!1648314 res!2167128) b!5092114))

(assert (= (and d!1648314 c!875189) b!5092115))

(assert (= (and d!1648314 (not c!875189)) b!5092116))

(declare-fun m!6150338 () Bool)

(assert (=> d!1648314 m!6150338))

(declare-fun m!6150340 () Bool)

(assert (=> b!5092114 m!6150340))

(declare-fun m!6150342 () Bool)

(assert (=> b!5092115 m!6150342))

(declare-fun m!6150344 () Bool)

(assert (=> b!5092116 m!6150344))

(assert (=> b!5092116 m!6150344))

(declare-fun m!6150346 () Bool)

(assert (=> b!5092116 m!6150346))

(assert (=> bm!354700 d!1648314))

(assert (=> d!1648230 d!1648274))

(assert (=> d!1648230 d!1648248))

(declare-fun d!1648316 () Bool)

(declare-fun lt!2092606 () Int)

(assert (=> d!1648316 (>= lt!2092606 0)))

(declare-fun e!3175622 () Int)

(assert (=> d!1648316 (= lt!2092606 e!3175622)))

(declare-fun c!875190 () Bool)

(assert (=> d!1648316 (= c!875190 ((_ is Nil!58527) (innerList!15730 (xs!19024 t!3643))))))

(assert (=> d!1648316 (= (size!39229 (innerList!15730 (xs!19024 t!3643))) lt!2092606)))

(declare-fun b!5092117 () Bool)

(assert (=> b!5092117 (= e!3175622 0)))

(declare-fun b!5092118 () Bool)

(assert (=> b!5092118 (= e!3175622 (+ 1 (size!39229 (t!371576 (innerList!15730 (xs!19024 t!3643))))))))

(assert (= (and d!1648316 c!875190) b!5092117))

(assert (= (and d!1648316 (not c!875190)) b!5092118))

(declare-fun m!6150348 () Bool)

(assert (=> b!5092118 m!6150348))

(assert (=> d!1648252 d!1648316))

(declare-fun d!1648318 () Bool)

(declare-fun lt!2092607 () Int)

(assert (=> d!1648318 (>= lt!2092607 0)))

(declare-fun e!3175623 () Int)

(assert (=> d!1648318 (= lt!2092607 e!3175623)))

(declare-fun c!875191 () Bool)

(assert (=> d!1648318 (= c!875191 ((_ is Nil!58527) (list!19112 t!3643)))))

(assert (=> d!1648318 (= (size!39229 (list!19112 t!3643)) lt!2092607)))

(declare-fun b!5092119 () Bool)

(assert (=> b!5092119 (= e!3175623 0)))

(declare-fun b!5092120 () Bool)

(assert (=> b!5092120 (= e!3175623 (+ 1 (size!39229 (t!371576 (list!19112 t!3643)))))))

(assert (= (and d!1648318 c!875191) b!5092119))

(assert (= (and d!1648318 (not c!875191)) b!5092120))

(declare-fun m!6150350 () Bool)

(assert (=> b!5092120 m!6150350))

(assert (=> d!1648210 d!1648318))

(declare-fun b!5092122 () Bool)

(declare-fun e!3175624 () List!58651)

(declare-fun e!3175625 () List!58651)

(assert (=> b!5092122 (= e!3175624 e!3175625)))

(declare-fun c!875193 () Bool)

(assert (=> b!5092122 (= c!875193 ((_ is Leaf!25968) t!3643))))

(declare-fun b!5092121 () Bool)

(assert (=> b!5092121 (= e!3175624 Nil!58527)))

(declare-fun d!1648320 () Bool)

(declare-fun c!875192 () Bool)

(assert (=> d!1648320 (= c!875192 ((_ is Empty!15642) t!3643))))

(assert (=> d!1648320 (= (list!19112 t!3643) e!3175624)))

(declare-fun b!5092123 () Bool)

(assert (=> b!5092123 (= e!3175625 (list!19114 (xs!19024 t!3643)))))

(declare-fun b!5092124 () Bool)

(assert (=> b!5092124 (= e!3175625 (++!12842 (list!19112 (left!42935 t!3643)) (list!19112 (right!43265 t!3643))))))

(assert (= (and d!1648320 c!875192) b!5092121))

(assert (= (and d!1648320 (not c!875192)) b!5092122))

(assert (= (and b!5092122 c!875193) b!5092123))

(assert (= (and b!5092122 (not c!875193)) b!5092124))

(assert (=> b!5092123 m!6150334))

(assert (=> b!5092124 m!6150008))

(assert (=> b!5092124 m!6150010))

(assert (=> b!5092124 m!6150008))

(assert (=> b!5092124 m!6150010))

(assert (=> b!5092124 m!6150138))

(assert (=> d!1648210 d!1648320))

(declare-fun d!1648322 () Bool)

(assert (=> d!1648322 (= (inv!77971 (xs!19024 (right!43265 t!3643))) (<= (size!39229 (innerList!15730 (xs!19024 (right!43265 t!3643)))) 2147483647))))

(declare-fun bs!1191195 () Bool)

(assert (= bs!1191195 d!1648322))

(declare-fun m!6150352 () Bool)

(assert (=> bs!1191195 m!6150352))

(assert (=> b!5092008 d!1648322))

(declare-fun d!1648324 () Bool)

(declare-fun c!875194 () Bool)

(assert (=> d!1648324 (= c!875194 ((_ is Node!15642) (left!42935 (right!43265 t!3643))))))

(declare-fun e!3175626 () Bool)

(assert (=> d!1648324 (= (inv!77972 (left!42935 (right!43265 t!3643))) e!3175626)))

(declare-fun b!5092125 () Bool)

(assert (=> b!5092125 (= e!3175626 (inv!77975 (left!42935 (right!43265 t!3643))))))

(declare-fun b!5092126 () Bool)

(declare-fun e!3175627 () Bool)

(assert (=> b!5092126 (= e!3175626 e!3175627)))

(declare-fun res!2167129 () Bool)

(assert (=> b!5092126 (= res!2167129 (not ((_ is Leaf!25968) (left!42935 (right!43265 t!3643)))))))

(assert (=> b!5092126 (=> res!2167129 e!3175627)))

(declare-fun b!5092127 () Bool)

(assert (=> b!5092127 (= e!3175627 (inv!77976 (left!42935 (right!43265 t!3643))))))

(assert (= (and d!1648324 c!875194) b!5092125))

(assert (= (and d!1648324 (not c!875194)) b!5092126))

(assert (= (and b!5092126 (not res!2167129)) b!5092127))

(declare-fun m!6150354 () Bool)

(assert (=> b!5092125 m!6150354))

(declare-fun m!6150356 () Bool)

(assert (=> b!5092127 m!6150356))

(assert (=> b!5092007 d!1648324))

(declare-fun d!1648326 () Bool)

(declare-fun c!875195 () Bool)

(assert (=> d!1648326 (= c!875195 ((_ is Node!15642) (right!43265 (right!43265 t!3643))))))

(declare-fun e!3175628 () Bool)

(assert (=> d!1648326 (= (inv!77972 (right!43265 (right!43265 t!3643))) e!3175628)))

(declare-fun b!5092128 () Bool)

(assert (=> b!5092128 (= e!3175628 (inv!77975 (right!43265 (right!43265 t!3643))))))

(declare-fun b!5092129 () Bool)

(declare-fun e!3175629 () Bool)

(assert (=> b!5092129 (= e!3175628 e!3175629)))

(declare-fun res!2167130 () Bool)

(assert (=> b!5092129 (= res!2167130 (not ((_ is Leaf!25968) (right!43265 (right!43265 t!3643)))))))

(assert (=> b!5092129 (=> res!2167130 e!3175629)))

(declare-fun b!5092130 () Bool)

(assert (=> b!5092130 (= e!3175629 (inv!77976 (right!43265 (right!43265 t!3643))))))

(assert (= (and d!1648326 c!875195) b!5092128))

(assert (= (and d!1648326 (not c!875195)) b!5092129))

(assert (= (and b!5092129 (not res!2167130)) b!5092130))

(declare-fun m!6150358 () Bool)

(assert (=> b!5092128 m!6150358))

(declare-fun m!6150360 () Bool)

(assert (=> b!5092130 m!6150360))

(assert (=> b!5092007 d!1648326))

(declare-fun d!1648328 () Bool)

(declare-fun res!2167131 () Bool)

(declare-fun e!3175630 () Bool)

(assert (=> d!1648328 (=> (not res!2167131) (not e!3175630))))

(assert (=> d!1648328 (= res!2167131 (= (csize!31514 (left!42935 t!3643)) (+ (size!39227 (left!42935 (left!42935 t!3643))) (size!39227 (right!43265 (left!42935 t!3643))))))))

(assert (=> d!1648328 (= (inv!77975 (left!42935 t!3643)) e!3175630)))

(declare-fun b!5092131 () Bool)

(declare-fun res!2167132 () Bool)

(assert (=> b!5092131 (=> (not res!2167132) (not e!3175630))))

(assert (=> b!5092131 (= res!2167132 (and (not (= (left!42935 (left!42935 t!3643)) Empty!15642)) (not (= (right!43265 (left!42935 t!3643)) Empty!15642))))))

(declare-fun b!5092132 () Bool)

(declare-fun res!2167133 () Bool)

(assert (=> b!5092132 (=> (not res!2167133) (not e!3175630))))

(assert (=> b!5092132 (= res!2167133 (= (cheight!15853 (left!42935 t!3643)) (+ (max!0 (height!2176 (left!42935 (left!42935 t!3643))) (height!2176 (right!43265 (left!42935 t!3643)))) 1)))))

(declare-fun b!5092133 () Bool)

(assert (=> b!5092133 (= e!3175630 (<= 0 (cheight!15853 (left!42935 t!3643))))))

(assert (= (and d!1648328 res!2167131) b!5092131))

(assert (= (and b!5092131 res!2167132) b!5092132))

(assert (= (and b!5092132 res!2167133) b!5092133))

(declare-fun m!6150362 () Bool)

(assert (=> d!1648328 m!6150362))

(declare-fun m!6150364 () Bool)

(assert (=> d!1648328 m!6150364))

(declare-fun m!6150366 () Bool)

(assert (=> b!5092132 m!6150366))

(declare-fun m!6150368 () Bool)

(assert (=> b!5092132 m!6150368))

(assert (=> b!5092132 m!6150366))

(assert (=> b!5092132 m!6150368))

(declare-fun m!6150370 () Bool)

(assert (=> b!5092132 m!6150370))

(assert (=> b!5091892 d!1648328))

(declare-fun b!5092134 () Bool)

(declare-fun e!3175631 () Bool)

(declare-fun tp!1419458 () Bool)

(assert (=> b!5092134 (= e!3175631 (and tp_is_empty!37163 tp!1419458))))

(assert (=> b!5092006 (= tp!1419449 e!3175631)))

(assert (= (and b!5092006 ((_ is Cons!58527) (innerList!15730 (xs!19024 (left!42935 t!3643))))) b!5092134))

(declare-fun e!3175633 () Bool)

(declare-fun tp!1419461 () Bool)

(declare-fun tp!1419460 () Bool)

(declare-fun b!5092135 () Bool)

(assert (=> b!5092135 (= e!3175633 (and (inv!77972 (left!42935 (left!42935 (right!43265 t!3643)))) tp!1419460 (inv!77972 (right!43265 (left!42935 (right!43265 t!3643)))) tp!1419461))))

(declare-fun b!5092137 () Bool)

(declare-fun e!3175632 () Bool)

(declare-fun tp!1419459 () Bool)

(assert (=> b!5092137 (= e!3175632 tp!1419459)))

(declare-fun b!5092136 () Bool)

(assert (=> b!5092136 (= e!3175633 (and (inv!77971 (xs!19024 (left!42935 (right!43265 t!3643)))) e!3175632))))

(assert (=> b!5092007 (= tp!1419453 (and (inv!77972 (left!42935 (right!43265 t!3643))) e!3175633))))

(assert (= (and b!5092007 ((_ is Node!15642) (left!42935 (right!43265 t!3643)))) b!5092135))

(assert (= b!5092136 b!5092137))

(assert (= (and b!5092007 ((_ is Leaf!25968) (left!42935 (right!43265 t!3643)))) b!5092136))

(declare-fun m!6150372 () Bool)

(assert (=> b!5092135 m!6150372))

(declare-fun m!6150374 () Bool)

(assert (=> b!5092135 m!6150374))

(declare-fun m!6150376 () Bool)

(assert (=> b!5092136 m!6150376))

(assert (=> b!5092007 m!6150172))

(declare-fun b!5092138 () Bool)

(declare-fun tp!1419463 () Bool)

(declare-fun tp!1419464 () Bool)

(declare-fun e!3175635 () Bool)

(assert (=> b!5092138 (= e!3175635 (and (inv!77972 (left!42935 (right!43265 (right!43265 t!3643)))) tp!1419463 (inv!77972 (right!43265 (right!43265 (right!43265 t!3643)))) tp!1419464))))

(declare-fun b!5092140 () Bool)

(declare-fun e!3175634 () Bool)

(declare-fun tp!1419462 () Bool)

(assert (=> b!5092140 (= e!3175634 tp!1419462)))

(declare-fun b!5092139 () Bool)

(assert (=> b!5092139 (= e!3175635 (and (inv!77971 (xs!19024 (right!43265 (right!43265 t!3643)))) e!3175634))))

(assert (=> b!5092007 (= tp!1419454 (and (inv!77972 (right!43265 (right!43265 t!3643))) e!3175635))))

(assert (= (and b!5092007 ((_ is Node!15642) (right!43265 (right!43265 t!3643)))) b!5092138))

(assert (= b!5092139 b!5092140))

(assert (= (and b!5092007 ((_ is Leaf!25968) (right!43265 (right!43265 t!3643)))) b!5092139))

(declare-fun m!6150378 () Bool)

(assert (=> b!5092138 m!6150378))

(declare-fun m!6150380 () Bool)

(assert (=> b!5092138 m!6150380))

(declare-fun m!6150382 () Bool)

(assert (=> b!5092139 m!6150382))

(assert (=> b!5092007 m!6150174))

(declare-fun b!5092141 () Bool)

(declare-fun tp!1419467 () Bool)

(declare-fun e!3175637 () Bool)

(declare-fun tp!1419466 () Bool)

(assert (=> b!5092141 (= e!3175637 (and (inv!77972 (left!42935 (left!42935 (left!42935 t!3643)))) tp!1419466 (inv!77972 (right!43265 (left!42935 (left!42935 t!3643)))) tp!1419467))))

(declare-fun b!5092143 () Bool)

(declare-fun e!3175636 () Bool)

(declare-fun tp!1419465 () Bool)

(assert (=> b!5092143 (= e!3175636 tp!1419465)))

(declare-fun b!5092142 () Bool)

(assert (=> b!5092142 (= e!3175637 (and (inv!77971 (xs!19024 (left!42935 (left!42935 t!3643)))) e!3175636))))

(assert (=> b!5092004 (= tp!1419450 (and (inv!77972 (left!42935 (left!42935 t!3643))) e!3175637))))

(assert (= (and b!5092004 ((_ is Node!15642) (left!42935 (left!42935 t!3643)))) b!5092141))

(assert (= b!5092142 b!5092143))

(assert (= (and b!5092004 ((_ is Leaf!25968) (left!42935 (left!42935 t!3643)))) b!5092142))

(declare-fun m!6150384 () Bool)

(assert (=> b!5092141 m!6150384))

(declare-fun m!6150386 () Bool)

(assert (=> b!5092141 m!6150386))

(declare-fun m!6150388 () Bool)

(assert (=> b!5092142 m!6150388))

(assert (=> b!5092004 m!6150166))

(declare-fun b!5092144 () Bool)

(declare-fun e!3175639 () Bool)

(declare-fun tp!1419469 () Bool)

(declare-fun tp!1419470 () Bool)

(assert (=> b!5092144 (= e!3175639 (and (inv!77972 (left!42935 (right!43265 (left!42935 t!3643)))) tp!1419469 (inv!77972 (right!43265 (right!43265 (left!42935 t!3643)))) tp!1419470))))

(declare-fun b!5092146 () Bool)

(declare-fun e!3175638 () Bool)

(declare-fun tp!1419468 () Bool)

(assert (=> b!5092146 (= e!3175638 tp!1419468)))

(declare-fun b!5092145 () Bool)

(assert (=> b!5092145 (= e!3175639 (and (inv!77971 (xs!19024 (right!43265 (left!42935 t!3643)))) e!3175638))))

(assert (=> b!5092004 (= tp!1419451 (and (inv!77972 (right!43265 (left!42935 t!3643))) e!3175639))))

(assert (= (and b!5092004 ((_ is Node!15642) (right!43265 (left!42935 t!3643)))) b!5092144))

(assert (= b!5092145 b!5092146))

(assert (= (and b!5092004 ((_ is Leaf!25968) (right!43265 (left!42935 t!3643)))) b!5092145))

(declare-fun m!6150390 () Bool)

(assert (=> b!5092144 m!6150390))

(declare-fun m!6150392 () Bool)

(assert (=> b!5092144 m!6150392))

(declare-fun m!6150394 () Bool)

(assert (=> b!5092145 m!6150394))

(assert (=> b!5092004 m!6150168))

(declare-fun b!5092147 () Bool)

(declare-fun e!3175640 () Bool)

(declare-fun tp!1419471 () Bool)

(assert (=> b!5092147 (= e!3175640 (and tp_is_empty!37163 tp!1419471))))

(assert (=> b!5092009 (= tp!1419452 e!3175640)))

(assert (= (and b!5092009 ((_ is Cons!58527) (innerList!15730 (xs!19024 (right!43265 t!3643))))) b!5092147))

(declare-fun b!5092148 () Bool)

(declare-fun e!3175641 () Bool)

(declare-fun tp!1419472 () Bool)

(assert (=> b!5092148 (= e!3175641 (and tp_is_empty!37163 tp!1419472))))

(assert (=> b!5092014 (= tp!1419457 e!3175641)))

(assert (= (and b!5092014 ((_ is Cons!58527) (t!371576 (innerList!15730 (xs!19024 t!3643))))) b!5092148))

(check-sat (not b!5092102) (not d!1648262) (not b!5092138) (not b!5092007) (not bm!354703) (not b!5092146) (not b!5092070) (not b!5092024) (not b!5092052) (not b!5092118) (not b!5092112) (not d!1648266) (not b!5092050) (not b!5092116) (not b!5092034) (not b!5092148) (not b!5092087) (not bm!354701) (not b!5092139) (not d!1648296) (not b!5092078) (not b!5092083) (not b!5092143) (not d!1648294) tp_is_empty!37163 (not b!5092004) (not b!5092144) (not b!5092114) (not b!5092079) (not d!1648306) (not b!5092145) (not b!5092067) (not b!5092115) (not b!5092055) (not b!5092042) (not b!5092147) (not d!1648298) (not bm!354702) (not b!5092141) (not b!5092071) (not b!5092101) (not b!5092094) (not b!5092137) (not b!5092106) (not b!5092125) (not d!1648314) (not b!5092128) (not d!1648300) (not b!5092053) (not b!5092132) (not b!5092025) (not b!5092107) (not b!5092135) (not b!5092140) (not d!1648302) (not b!5092088) (not d!1648312) (not d!1648256) (not b!5092091) (not b!5092123) (not b!5092142) (not d!1648328) (not b!5092127) (not d!1648284) (not b!5092120) (not b!5092134) (not b!5092030) (not b!5092029) (not b!5092098) (not b!5092048) (not b!5092066) (not b!5092124) (not b!5092033) (not b!5092061) (not b!5092095) (not b!5092130) (not b!5092080) (not d!1648322) (not b!5092111) (not b!5092110) (not b!5092136) (not b!5092082) (not d!1648304) (not b!5092090) (not d!1648286) (not b!5092063) (not bm!354704))
(check-sat)
