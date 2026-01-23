; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536486 () Bool)

(assert start!536486)

(declare-fun b!5091116 () Bool)

(declare-fun e!3175053 () Bool)

(declare-datatypes ((T!105608 0))(
  ( (T!105609 (val!23722 Int)) )
))
(declare-datatypes ((List!58647 0))(
  ( (Nil!58523) (Cons!58523 (h!64971 T!105608) (t!371562 List!58647)) )
))
(declare-datatypes ((IArray!31337 0))(
  ( (IArray!31338 (innerList!15726 List!58647)) )
))
(declare-datatypes ((Conc!15638 0))(
  ( (Node!15638 (left!42929 Conc!15638) (right!43259 Conc!15638) (csize!31506 Int) (cheight!15849 Int)) (Leaf!25962 (xs!19020 IArray!31337) (csize!31507 Int)) (Empty!15638) )
))
(declare-fun t!3643 () Conc!15638)

(declare-fun ConcPrimitiveSize!42 (Conc!15638) Int)

(assert (=> b!5091116 (= e!3175053 (>= (ConcPrimitiveSize!42 (left!42929 t!3643)) (ConcPrimitiveSize!42 t!3643)))))

(declare-fun b!5091117 () Bool)

(declare-fun tp!1419300 () Bool)

(declare-fun e!3175055 () Bool)

(declare-fun tp!1419299 () Bool)

(declare-fun inv!77949 (Conc!15638) Bool)

(assert (=> b!5091117 (= e!3175055 (and (inv!77949 (left!42929 t!3643)) tp!1419299 (inv!77949 (right!43259 t!3643)) tp!1419300))))

(declare-fun b!5091118 () Bool)

(declare-fun e!3175056 () Bool)

(declare-fun inv!77950 (IArray!31337) Bool)

(assert (=> b!5091118 (= e!3175055 (and (inv!77950 (xs!19020 t!3643)) e!3175056))))

(declare-fun b!5091119 () Bool)

(declare-fun e!3175054 () Bool)

(assert (=> b!5091119 (= e!3175054 e!3175053)))

(declare-fun res!2166869 () Bool)

(assert (=> b!5091119 (=> (not res!2166869) (not e!3175053))))

(declare-fun i!607 () Int)

(declare-fun size!39219 (Conc!15638) Int)

(assert (=> b!5091119 (= res!2166869 (< i!607 (size!39219 (left!42929 t!3643))))))

(declare-fun lt!2092450 () Bool)

(declare-fun appendIndex!419 (List!58647 List!58647 Int) Bool)

(declare-fun list!19104 (Conc!15638) List!58647)

(assert (=> b!5091119 (= lt!2092450 (appendIndex!419 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643)) i!607))))

(declare-fun b!5091120 () Bool)

(declare-fun tp!1419301 () Bool)

(assert (=> b!5091120 (= e!3175056 tp!1419301)))

(declare-fun res!2166871 () Bool)

(assert (=> start!536486 (=> (not res!2166871) (not e!3175054))))

(assert (=> start!536486 (= res!2166871 (<= 0 i!607))))

(assert (=> start!536486 e!3175054))

(assert (=> start!536486 true))

(assert (=> start!536486 (and (inv!77949 t!3643) e!3175055)))

(declare-fun b!5091121 () Bool)

(declare-fun res!2166870 () Bool)

(assert (=> b!5091121 (=> (not res!2166870) (not e!3175054))))

(assert (=> b!5091121 (= res!2166870 (< i!607 (size!39219 t!3643)))))

(declare-fun b!5091122 () Bool)

(declare-fun res!2166872 () Bool)

(assert (=> b!5091122 (=> (not res!2166872) (not e!3175054))))

(get-info :version)

(assert (=> b!5091122 (= res!2166872 (and (not ((_ is Leaf!25962) t!3643)) ((_ is Node!15638) t!3643)))))

(assert (= (and start!536486 res!2166871) b!5091121))

(assert (= (and b!5091121 res!2166870) b!5091122))

(assert (= (and b!5091122 res!2166872) b!5091119))

(assert (= (and b!5091119 res!2166869) b!5091116))

(assert (= (and start!536486 ((_ is Node!15638) t!3643)) b!5091117))

(assert (= b!5091118 b!5091120))

(assert (= (and start!536486 ((_ is Leaf!25962) t!3643)) b!5091118))

(declare-fun m!6149172 () Bool)

(assert (=> b!5091121 m!6149172))

(declare-fun m!6149174 () Bool)

(assert (=> start!536486 m!6149174))

(declare-fun m!6149176 () Bool)

(assert (=> b!5091116 m!6149176))

(declare-fun m!6149178 () Bool)

(assert (=> b!5091116 m!6149178))

(declare-fun m!6149180 () Bool)

(assert (=> b!5091119 m!6149180))

(declare-fun m!6149182 () Bool)

(assert (=> b!5091119 m!6149182))

(declare-fun m!6149184 () Bool)

(assert (=> b!5091119 m!6149184))

(assert (=> b!5091119 m!6149182))

(assert (=> b!5091119 m!6149184))

(declare-fun m!6149186 () Bool)

(assert (=> b!5091119 m!6149186))

(declare-fun m!6149188 () Bool)

(assert (=> b!5091117 m!6149188))

(declare-fun m!6149190 () Bool)

(assert (=> b!5091117 m!6149190))

(declare-fun m!6149192 () Bool)

(assert (=> b!5091118 m!6149192))

(check-sat (not b!5091121) (not b!5091119) (not b!5091117) (not b!5091120) (not b!5091116) (not start!536486) (not b!5091118))
(check-sat)
(get-model)

(declare-fun d!1647964 () Bool)

(declare-fun lt!2092453 () Int)

(declare-fun size!39220 (List!58647) Int)

(assert (=> d!1647964 (= lt!2092453 (size!39220 (list!19104 (left!42929 t!3643))))))

(assert (=> d!1647964 (= lt!2092453 (ite ((_ is Empty!15638) (left!42929 t!3643)) 0 (ite ((_ is Leaf!25962) (left!42929 t!3643)) (csize!31507 (left!42929 t!3643)) (csize!31506 (left!42929 t!3643)))))))

(assert (=> d!1647964 (= (size!39219 (left!42929 t!3643)) lt!2092453)))

(declare-fun bs!1191162 () Bool)

(assert (= bs!1191162 d!1647964))

(assert (=> bs!1191162 m!6149182))

(assert (=> bs!1191162 m!6149182))

(declare-fun m!6149194 () Bool)

(assert (=> bs!1191162 m!6149194))

(assert (=> b!5091119 d!1647964))

(declare-fun b!5091147 () Bool)

(declare-fun e!3175074 () Int)

(assert (=> b!5091147 (= e!3175074 i!607)))

(declare-fun c!874919 () Bool)

(declare-fun call!354662 () T!105608)

(declare-fun bm!354657 () Bool)

(declare-fun apply!14266 (List!58647 Int) T!105608)

(assert (=> bm!354657 (= call!354662 (apply!14266 (ite c!874919 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))) e!3175074))))

(declare-fun c!874920 () Bool)

(assert (=> bm!354657 (= c!874920 c!874919)))

(declare-fun b!5091148 () Bool)

(assert (=> b!5091148 (= e!3175074 (- i!607 (size!39220 (list!19104 (left!42929 t!3643)))))))

(declare-fun b!5091149 () Bool)

(declare-fun e!3175076 () Bool)

(assert (=> b!5091149 (= e!3175076 (< i!607 (+ (size!39220 (list!19104 (left!42929 t!3643))) (size!39220 (list!19104 (right!43259 t!3643))))))))

(declare-fun d!1647968 () Bool)

(declare-fun e!3175075 () T!105608)

(declare-fun ++!12837 (List!58647 List!58647) List!58647)

(assert (=> d!1647968 (= (apply!14266 (++!12837 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))) i!607) e!3175075)))

(assert (=> d!1647968 (= c!874919 (< i!607 (size!39220 (list!19104 (left!42929 t!3643)))))))

(declare-fun lt!2092461 () Bool)

(declare-fun e!3175073 () Bool)

(assert (=> d!1647968 (= lt!2092461 e!3175073)))

(declare-fun res!2166881 () Bool)

(assert (=> d!1647968 (=> res!2166881 e!3175073)))

(assert (=> d!1647968 (= res!2166881 (or ((_ is Nil!58523) (list!19104 (left!42929 t!3643))) (= i!607 0)))))

(assert (=> d!1647968 e!3175076))

(declare-fun res!2166882 () Bool)

(assert (=> d!1647968 (=> (not res!2166882) (not e!3175076))))

(assert (=> d!1647968 (= res!2166882 (<= 0 i!607))))

(assert (=> d!1647968 (= (appendIndex!419 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643)) i!607) true)))

(declare-fun b!5091150 () Bool)

(assert (=> b!5091150 (= e!3175075 call!354662)))

(declare-fun b!5091151 () Bool)

(assert (=> b!5091151 (= e!3175075 call!354662)))

(declare-fun b!5091152 () Bool)

(assert (=> b!5091152 (= e!3175073 (appendIndex!419 (t!371562 (list!19104 (left!42929 t!3643))) (list!19104 (right!43259 t!3643)) (- i!607 1)))))

(assert (= (and d!1647968 res!2166882) b!5091149))

(assert (= (and d!1647968 (not res!2166881)) b!5091152))

(assert (= (and d!1647968 c!874919) b!5091150))

(assert (= (and d!1647968 (not c!874919)) b!5091151))

(assert (= (or b!5091150 b!5091151) bm!354657))

(assert (= (and bm!354657 c!874920) b!5091147))

(assert (= (and bm!354657 (not c!874920)) b!5091148))

(assert (=> b!5091148 m!6149182))

(assert (=> b!5091148 m!6149194))

(declare-fun m!6149198 () Bool)

(assert (=> bm!354657 m!6149198))

(assert (=> b!5091152 m!6149184))

(declare-fun m!6149200 () Bool)

(assert (=> b!5091152 m!6149200))

(assert (=> d!1647968 m!6149182))

(assert (=> d!1647968 m!6149184))

(declare-fun m!6149202 () Bool)

(assert (=> d!1647968 m!6149202))

(assert (=> d!1647968 m!6149202))

(declare-fun m!6149204 () Bool)

(assert (=> d!1647968 m!6149204))

(assert (=> d!1647968 m!6149182))

(assert (=> d!1647968 m!6149194))

(assert (=> b!5091149 m!6149182))

(assert (=> b!5091149 m!6149194))

(assert (=> b!5091149 m!6149184))

(declare-fun m!6149206 () Bool)

(assert (=> b!5091149 m!6149206))

(assert (=> b!5091119 d!1647968))

(declare-fun d!1647972 () Bool)

(declare-fun c!874927 () Bool)

(assert (=> d!1647972 (= c!874927 ((_ is Empty!15638) (left!42929 t!3643)))))

(declare-fun e!3175085 () List!58647)

(assert (=> d!1647972 (= (list!19104 (left!42929 t!3643)) e!3175085)))

(declare-fun b!5091170 () Bool)

(declare-fun e!3175086 () List!58647)

(assert (=> b!5091170 (= e!3175086 (++!12837 (list!19104 (left!42929 (left!42929 t!3643))) (list!19104 (right!43259 (left!42929 t!3643)))))))

(declare-fun b!5091169 () Bool)

(declare-fun list!19105 (IArray!31337) List!58647)

(assert (=> b!5091169 (= e!3175086 (list!19105 (xs!19020 (left!42929 t!3643))))))

(declare-fun b!5091167 () Bool)

(assert (=> b!5091167 (= e!3175085 Nil!58523)))

(declare-fun b!5091168 () Bool)

(assert (=> b!5091168 (= e!3175085 e!3175086)))

(declare-fun c!874928 () Bool)

(assert (=> b!5091168 (= c!874928 ((_ is Leaf!25962) (left!42929 t!3643)))))

(assert (= (and d!1647972 c!874927) b!5091167))

(assert (= (and d!1647972 (not c!874927)) b!5091168))

(assert (= (and b!5091168 c!874928) b!5091169))

(assert (= (and b!5091168 (not c!874928)) b!5091170))

(declare-fun m!6149218 () Bool)

(assert (=> b!5091170 m!6149218))

(declare-fun m!6149220 () Bool)

(assert (=> b!5091170 m!6149220))

(assert (=> b!5091170 m!6149218))

(assert (=> b!5091170 m!6149220))

(declare-fun m!6149222 () Bool)

(assert (=> b!5091170 m!6149222))

(declare-fun m!6149224 () Bool)

(assert (=> b!5091169 m!6149224))

(assert (=> b!5091119 d!1647972))

(declare-fun d!1647976 () Bool)

(declare-fun c!874933 () Bool)

(assert (=> d!1647976 (= c!874933 ((_ is Empty!15638) (right!43259 t!3643)))))

(declare-fun e!3175091 () List!58647)

(assert (=> d!1647976 (= (list!19104 (right!43259 t!3643)) e!3175091)))

(declare-fun b!5091182 () Bool)

(declare-fun e!3175092 () List!58647)

(assert (=> b!5091182 (= e!3175092 (++!12837 (list!19104 (left!42929 (right!43259 t!3643))) (list!19104 (right!43259 (right!43259 t!3643)))))))

(declare-fun b!5091181 () Bool)

(assert (=> b!5091181 (= e!3175092 (list!19105 (xs!19020 (right!43259 t!3643))))))

(declare-fun b!5091179 () Bool)

(assert (=> b!5091179 (= e!3175091 Nil!58523)))

(declare-fun b!5091180 () Bool)

(assert (=> b!5091180 (= e!3175091 e!3175092)))

(declare-fun c!874934 () Bool)

(assert (=> b!5091180 (= c!874934 ((_ is Leaf!25962) (right!43259 t!3643)))))

(assert (= (and d!1647976 c!874933) b!5091179))

(assert (= (and d!1647976 (not c!874933)) b!5091180))

(assert (= (and b!5091180 c!874934) b!5091181))

(assert (= (and b!5091180 (not c!874934)) b!5091182))

(declare-fun m!6149226 () Bool)

(assert (=> b!5091182 m!6149226))

(declare-fun m!6149228 () Bool)

(assert (=> b!5091182 m!6149228))

(assert (=> b!5091182 m!6149226))

(assert (=> b!5091182 m!6149228))

(declare-fun m!6149230 () Bool)

(assert (=> b!5091182 m!6149230))

(declare-fun m!6149232 () Bool)

(assert (=> b!5091181 m!6149232))

(assert (=> b!5091119 d!1647976))

(declare-fun d!1647978 () Bool)

(declare-fun c!874941 () Bool)

(assert (=> d!1647978 (= c!874941 ((_ is Node!15638) t!3643))))

(declare-fun e!3175101 () Bool)

(assert (=> d!1647978 (= (inv!77949 t!3643) e!3175101)))

(declare-fun b!5091197 () Bool)

(declare-fun inv!77951 (Conc!15638) Bool)

(assert (=> b!5091197 (= e!3175101 (inv!77951 t!3643))))

(declare-fun b!5091198 () Bool)

(declare-fun e!3175102 () Bool)

(assert (=> b!5091198 (= e!3175101 e!3175102)))

(declare-fun res!2166887 () Bool)

(assert (=> b!5091198 (= res!2166887 (not ((_ is Leaf!25962) t!3643)))))

(assert (=> b!5091198 (=> res!2166887 e!3175102)))

(declare-fun b!5091199 () Bool)

(declare-fun inv!77952 (Conc!15638) Bool)

(assert (=> b!5091199 (= e!3175102 (inv!77952 t!3643))))

(assert (= (and d!1647978 c!874941) b!5091197))

(assert (= (and d!1647978 (not c!874941)) b!5091198))

(assert (= (and b!5091198 (not res!2166887)) b!5091199))

(declare-fun m!6149254 () Bool)

(assert (=> b!5091197 m!6149254))

(declare-fun m!6149256 () Bool)

(assert (=> b!5091199 m!6149256))

(assert (=> start!536486 d!1647978))

(declare-fun d!1647986 () Bool)

(assert (=> d!1647986 (= (inv!77950 (xs!19020 t!3643)) (<= (size!39220 (innerList!15726 (xs!19020 t!3643))) 2147483647))))

(declare-fun bs!1191165 () Bool)

(assert (= bs!1191165 d!1647986))

(declare-fun m!6149258 () Bool)

(assert (=> bs!1191165 m!6149258))

(assert (=> b!5091118 d!1647986))

(declare-fun d!1647988 () Bool)

(declare-fun c!874946 () Bool)

(assert (=> d!1647988 (= c!874946 ((_ is Node!15638) (left!42929 t!3643)))))

(declare-fun e!3175107 () Bool)

(assert (=> d!1647988 (= (inv!77949 (left!42929 t!3643)) e!3175107)))

(declare-fun b!5091208 () Bool)

(assert (=> b!5091208 (= e!3175107 (inv!77951 (left!42929 t!3643)))))

(declare-fun b!5091209 () Bool)

(declare-fun e!3175108 () Bool)

(assert (=> b!5091209 (= e!3175107 e!3175108)))

(declare-fun res!2166888 () Bool)

(assert (=> b!5091209 (= res!2166888 (not ((_ is Leaf!25962) (left!42929 t!3643))))))

(assert (=> b!5091209 (=> res!2166888 e!3175108)))

(declare-fun b!5091210 () Bool)

(assert (=> b!5091210 (= e!3175108 (inv!77952 (left!42929 t!3643)))))

(assert (= (and d!1647988 c!874946) b!5091208))

(assert (= (and d!1647988 (not c!874946)) b!5091209))

(assert (= (and b!5091209 (not res!2166888)) b!5091210))

(declare-fun m!6149260 () Bool)

(assert (=> b!5091208 m!6149260))

(declare-fun m!6149262 () Bool)

(assert (=> b!5091210 m!6149262))

(assert (=> b!5091117 d!1647988))

(declare-fun d!1647990 () Bool)

(declare-fun c!874947 () Bool)

(assert (=> d!1647990 (= c!874947 ((_ is Node!15638) (right!43259 t!3643)))))

(declare-fun e!3175109 () Bool)

(assert (=> d!1647990 (= (inv!77949 (right!43259 t!3643)) e!3175109)))

(declare-fun b!5091211 () Bool)

(assert (=> b!5091211 (= e!3175109 (inv!77951 (right!43259 t!3643)))))

(declare-fun b!5091212 () Bool)

(declare-fun e!3175110 () Bool)

(assert (=> b!5091212 (= e!3175109 e!3175110)))

(declare-fun res!2166889 () Bool)

(assert (=> b!5091212 (= res!2166889 (not ((_ is Leaf!25962) (right!43259 t!3643))))))

(assert (=> b!5091212 (=> res!2166889 e!3175110)))

(declare-fun b!5091213 () Bool)

(assert (=> b!5091213 (= e!3175110 (inv!77952 (right!43259 t!3643)))))

(assert (= (and d!1647990 c!874947) b!5091211))

(assert (= (and d!1647990 (not c!874947)) b!5091212))

(assert (= (and b!5091212 (not res!2166889)) b!5091213))

(declare-fun m!6149264 () Bool)

(assert (=> b!5091211 m!6149264))

(declare-fun m!6149266 () Bool)

(assert (=> b!5091213 m!6149266))

(assert (=> b!5091117 d!1647990))

(declare-fun b!5091230 () Bool)

(declare-fun e!3175119 () Int)

(declare-fun call!354670 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!5091230 (= e!3175119 (+ 1 (ConcPrimitiveSize!42 (left!42929 (left!42929 t!3643))) (ConcPrimitiveSize!42 (right!43259 (left!42929 t!3643))) call!354670 (BigIntAbs!0 (cheight!15849 (left!42929 t!3643)))))))

(declare-fun b!5091231 () Bool)

(declare-fun e!3175120 () Int)

(declare-fun IArrayPrimitiveSize!41 (IArray!31337) Int)

(assert (=> b!5091231 (= e!3175120 (+ 1 (IArrayPrimitiveSize!41 (xs!19020 (left!42929 t!3643))) call!354670))))

(declare-fun b!5091232 () Bool)

(assert (=> b!5091232 (= e!3175119 e!3175120)))

(declare-fun c!874957 () Bool)

(assert (=> b!5091232 (= c!874957 ((_ is Leaf!25962) (left!42929 t!3643)))))

(declare-fun d!1647992 () Bool)

(declare-fun lt!2092470 () Int)

(assert (=> d!1647992 (>= lt!2092470 0)))

(assert (=> d!1647992 (= lt!2092470 e!3175119)))

(declare-fun c!874956 () Bool)

(assert (=> d!1647992 (= c!874956 ((_ is Node!15638) (left!42929 t!3643)))))

(assert (=> d!1647992 (= (ConcPrimitiveSize!42 (left!42929 t!3643)) lt!2092470)))

(declare-fun b!5091233 () Bool)

(assert (=> b!5091233 (= e!3175120 0)))

(declare-fun bm!354665 () Bool)

(assert (=> bm!354665 (= call!354670 (BigIntAbs!0 (ite c!874956 (csize!31506 (left!42929 t!3643)) (csize!31507 (left!42929 t!3643)))))))

(assert (= (and d!1647992 c!874956) b!5091230))

(assert (= (and d!1647992 (not c!874956)) b!5091232))

(assert (= (and b!5091232 c!874957) b!5091231))

(assert (= (and b!5091232 (not c!874957)) b!5091233))

(assert (= (or b!5091230 b!5091231) bm!354665))

(declare-fun m!6149286 () Bool)

(assert (=> b!5091230 m!6149286))

(declare-fun m!6149288 () Bool)

(assert (=> b!5091230 m!6149288))

(declare-fun m!6149290 () Bool)

(assert (=> b!5091230 m!6149290))

(declare-fun m!6149292 () Bool)

(assert (=> b!5091231 m!6149292))

(declare-fun m!6149294 () Bool)

(assert (=> bm!354665 m!6149294))

(assert (=> b!5091116 d!1647992))

(declare-fun b!5091238 () Bool)

(declare-fun e!3175123 () Int)

(declare-fun call!354671 () Int)

(assert (=> b!5091238 (= e!3175123 (+ 1 (ConcPrimitiveSize!42 (left!42929 t!3643)) (ConcPrimitiveSize!42 (right!43259 t!3643)) call!354671 (BigIntAbs!0 (cheight!15849 t!3643))))))

(declare-fun b!5091239 () Bool)

(declare-fun e!3175124 () Int)

(assert (=> b!5091239 (= e!3175124 (+ 1 (IArrayPrimitiveSize!41 (xs!19020 t!3643)) call!354671))))

(declare-fun b!5091240 () Bool)

(assert (=> b!5091240 (= e!3175123 e!3175124)))

(declare-fun c!874961 () Bool)

(assert (=> b!5091240 (= c!874961 ((_ is Leaf!25962) t!3643))))

(declare-fun d!1647998 () Bool)

(declare-fun lt!2092471 () Int)

(assert (=> d!1647998 (>= lt!2092471 0)))

(assert (=> d!1647998 (= lt!2092471 e!3175123)))

(declare-fun c!874960 () Bool)

(assert (=> d!1647998 (= c!874960 ((_ is Node!15638) t!3643))))

(assert (=> d!1647998 (= (ConcPrimitiveSize!42 t!3643) lt!2092471)))

(declare-fun b!5091241 () Bool)

(assert (=> b!5091241 (= e!3175124 0)))

(declare-fun bm!354666 () Bool)

(assert (=> bm!354666 (= call!354671 (BigIntAbs!0 (ite c!874960 (csize!31506 t!3643) (csize!31507 t!3643))))))

(assert (= (and d!1647998 c!874960) b!5091238))

(assert (= (and d!1647998 (not c!874960)) b!5091240))

(assert (= (and b!5091240 c!874961) b!5091239))

(assert (= (and b!5091240 (not c!874961)) b!5091241))

(assert (= (or b!5091238 b!5091239) bm!354666))

(assert (=> b!5091238 m!6149176))

(declare-fun m!6149296 () Bool)

(assert (=> b!5091238 m!6149296))

(declare-fun m!6149298 () Bool)

(assert (=> b!5091238 m!6149298))

(declare-fun m!6149300 () Bool)

(assert (=> b!5091239 m!6149300))

(declare-fun m!6149302 () Bool)

(assert (=> bm!354666 m!6149302))

(assert (=> b!5091116 d!1647998))

(declare-fun d!1648000 () Bool)

(declare-fun lt!2092472 () Int)

(assert (=> d!1648000 (= lt!2092472 (size!39220 (list!19104 t!3643)))))

(assert (=> d!1648000 (= lt!2092472 (ite ((_ is Empty!15638) t!3643) 0 (ite ((_ is Leaf!25962) t!3643) (csize!31507 t!3643) (csize!31506 t!3643))))))

(assert (=> d!1648000 (= (size!39219 t!3643) lt!2092472)))

(declare-fun bs!1191166 () Bool)

(assert (= bs!1191166 d!1648000))

(declare-fun m!6149304 () Bool)

(assert (=> bs!1191166 m!6149304))

(assert (=> bs!1191166 m!6149304))

(declare-fun m!6149306 () Bool)

(assert (=> bs!1191166 m!6149306))

(assert (=> b!5091121 d!1648000))

(declare-fun b!5091255 () Bool)

(declare-fun e!3175133 () Bool)

(declare-fun tp!1419310 () Bool)

(declare-fun tp!1419308 () Bool)

(assert (=> b!5091255 (= e!3175133 (and (inv!77949 (left!42929 (left!42929 t!3643))) tp!1419308 (inv!77949 (right!43259 (left!42929 t!3643))) tp!1419310))))

(declare-fun b!5091257 () Bool)

(declare-fun e!3175134 () Bool)

(declare-fun tp!1419309 () Bool)

(assert (=> b!5091257 (= e!3175134 tp!1419309)))

(declare-fun b!5091256 () Bool)

(assert (=> b!5091256 (= e!3175133 (and (inv!77950 (xs!19020 (left!42929 t!3643))) e!3175134))))

(assert (=> b!5091117 (= tp!1419299 (and (inv!77949 (left!42929 t!3643)) e!3175133))))

(assert (= (and b!5091117 ((_ is Node!15638) (left!42929 t!3643))) b!5091255))

(assert (= b!5091256 b!5091257))

(assert (= (and b!5091117 ((_ is Leaf!25962) (left!42929 t!3643))) b!5091256))

(declare-fun m!6149314 () Bool)

(assert (=> b!5091255 m!6149314))

(declare-fun m!6149316 () Bool)

(assert (=> b!5091255 m!6149316))

(declare-fun m!6149320 () Bool)

(assert (=> b!5091256 m!6149320))

(assert (=> b!5091117 m!6149188))

(declare-fun tp!1419313 () Bool)

(declare-fun tp!1419311 () Bool)

(declare-fun e!3175137 () Bool)

(declare-fun b!5091261 () Bool)

(assert (=> b!5091261 (= e!3175137 (and (inv!77949 (left!42929 (right!43259 t!3643))) tp!1419311 (inv!77949 (right!43259 (right!43259 t!3643))) tp!1419313))))

(declare-fun b!5091263 () Bool)

(declare-fun e!3175138 () Bool)

(declare-fun tp!1419312 () Bool)

(assert (=> b!5091263 (= e!3175138 tp!1419312)))

(declare-fun b!5091262 () Bool)

(assert (=> b!5091262 (= e!3175137 (and (inv!77950 (xs!19020 (right!43259 t!3643))) e!3175138))))

(assert (=> b!5091117 (= tp!1419300 (and (inv!77949 (right!43259 t!3643)) e!3175137))))

(assert (= (and b!5091117 ((_ is Node!15638) (right!43259 t!3643))) b!5091261))

(assert (= b!5091262 b!5091263))

(assert (= (and b!5091117 ((_ is Leaf!25962) (right!43259 t!3643))) b!5091262))

(declare-fun m!6149328 () Bool)

(assert (=> b!5091261 m!6149328))

(declare-fun m!6149330 () Bool)

(assert (=> b!5091261 m!6149330))

(declare-fun m!6149332 () Bool)

(assert (=> b!5091262 m!6149332))

(assert (=> b!5091117 m!6149190))

(declare-fun b!5091276 () Bool)

(declare-fun e!3175146 () Bool)

(declare-fun tp_is_empty!37155 () Bool)

(declare-fun tp!1419319 () Bool)

(assert (=> b!5091276 (= e!3175146 (and tp_is_empty!37155 tp!1419319))))

(assert (=> b!5091120 (= tp!1419301 e!3175146)))

(assert (= (and b!5091120 ((_ is Cons!58523) (innerList!15726 (xs!19020 t!3643)))) b!5091276))

(check-sat (not b!5091263) (not b!5091152) (not bm!354665) (not b!5091262) (not bm!354666) (not b!5091230) (not b!5091181) (not b!5091208) (not b!5091231) (not b!5091149) (not b!5091148) tp_is_empty!37155 (not b!5091211) (not d!1648000) (not d!1647986) (not b!5091210) (not b!5091170) (not b!5091199) (not bm!354657) (not b!5091239) (not b!5091261) (not b!5091255) (not b!5091197) (not b!5091213) (not b!5091276) (not d!1647964) (not b!5091169) (not b!5091182) (not d!1647968) (not b!5091238) (not b!5091117) (not b!5091257) (not b!5091256))
(check-sat)
(get-model)

(declare-fun b!5091299 () Bool)

(declare-fun e!3175159 () List!58647)

(assert (=> b!5091299 (= e!3175159 (list!19104 (right!43259 (right!43259 t!3643))))))

(declare-fun b!5091302 () Bool)

(declare-fun e!3175160 () Bool)

(declare-fun lt!2092475 () List!58647)

(assert (=> b!5091302 (= e!3175160 (or (not (= (list!19104 (right!43259 (right!43259 t!3643))) Nil!58523)) (= lt!2092475 (list!19104 (left!42929 (right!43259 t!3643))))))))

(declare-fun d!1648008 () Bool)

(assert (=> d!1648008 e!3175160))

(declare-fun res!2166899 () Bool)

(assert (=> d!1648008 (=> (not res!2166899) (not e!3175160))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10437 (List!58647) (InoxSet T!105608))

(assert (=> d!1648008 (= res!2166899 (= (content!10437 lt!2092475) ((_ map or) (content!10437 (list!19104 (left!42929 (right!43259 t!3643)))) (content!10437 (list!19104 (right!43259 (right!43259 t!3643)))))))))

(assert (=> d!1648008 (= lt!2092475 e!3175159)))

(declare-fun c!874967 () Bool)

(assert (=> d!1648008 (= c!874967 ((_ is Nil!58523) (list!19104 (left!42929 (right!43259 t!3643)))))))

(assert (=> d!1648008 (= (++!12837 (list!19104 (left!42929 (right!43259 t!3643))) (list!19104 (right!43259 (right!43259 t!3643)))) lt!2092475)))

(declare-fun b!5091300 () Bool)

(assert (=> b!5091300 (= e!3175159 (Cons!58523 (h!64971 (list!19104 (left!42929 (right!43259 t!3643)))) (++!12837 (t!371562 (list!19104 (left!42929 (right!43259 t!3643)))) (list!19104 (right!43259 (right!43259 t!3643))))))))

(declare-fun b!5091301 () Bool)

(declare-fun res!2166900 () Bool)

(assert (=> b!5091301 (=> (not res!2166900) (not e!3175160))))

(assert (=> b!5091301 (= res!2166900 (= (size!39220 lt!2092475) (+ (size!39220 (list!19104 (left!42929 (right!43259 t!3643)))) (size!39220 (list!19104 (right!43259 (right!43259 t!3643)))))))))

(assert (= (and d!1648008 c!874967) b!5091299))

(assert (= (and d!1648008 (not c!874967)) b!5091300))

(assert (= (and d!1648008 res!2166899) b!5091301))

(assert (= (and b!5091301 res!2166900) b!5091302))

(declare-fun m!6149346 () Bool)

(assert (=> d!1648008 m!6149346))

(assert (=> d!1648008 m!6149226))

(declare-fun m!6149348 () Bool)

(assert (=> d!1648008 m!6149348))

(assert (=> d!1648008 m!6149228))

(declare-fun m!6149350 () Bool)

(assert (=> d!1648008 m!6149350))

(assert (=> b!5091300 m!6149228))

(declare-fun m!6149352 () Bool)

(assert (=> b!5091300 m!6149352))

(declare-fun m!6149354 () Bool)

(assert (=> b!5091301 m!6149354))

(assert (=> b!5091301 m!6149226))

(declare-fun m!6149356 () Bool)

(assert (=> b!5091301 m!6149356))

(assert (=> b!5091301 m!6149228))

(declare-fun m!6149358 () Bool)

(assert (=> b!5091301 m!6149358))

(assert (=> b!5091182 d!1648008))

(declare-fun d!1648010 () Bool)

(declare-fun c!874968 () Bool)

(assert (=> d!1648010 (= c!874968 ((_ is Empty!15638) (left!42929 (right!43259 t!3643))))))

(declare-fun e!3175161 () List!58647)

(assert (=> d!1648010 (= (list!19104 (left!42929 (right!43259 t!3643))) e!3175161)))

(declare-fun b!5091306 () Bool)

(declare-fun e!3175162 () List!58647)

(assert (=> b!5091306 (= e!3175162 (++!12837 (list!19104 (left!42929 (left!42929 (right!43259 t!3643)))) (list!19104 (right!43259 (left!42929 (right!43259 t!3643))))))))

(declare-fun b!5091305 () Bool)

(assert (=> b!5091305 (= e!3175162 (list!19105 (xs!19020 (left!42929 (right!43259 t!3643)))))))

(declare-fun b!5091303 () Bool)

(assert (=> b!5091303 (= e!3175161 Nil!58523)))

(declare-fun b!5091304 () Bool)

(assert (=> b!5091304 (= e!3175161 e!3175162)))

(declare-fun c!874969 () Bool)

(assert (=> b!5091304 (= c!874969 ((_ is Leaf!25962) (left!42929 (right!43259 t!3643))))))

(assert (= (and d!1648010 c!874968) b!5091303))

(assert (= (and d!1648010 (not c!874968)) b!5091304))

(assert (= (and b!5091304 c!874969) b!5091305))

(assert (= (and b!5091304 (not c!874969)) b!5091306))

(declare-fun m!6149360 () Bool)

(assert (=> b!5091306 m!6149360))

(declare-fun m!6149362 () Bool)

(assert (=> b!5091306 m!6149362))

(assert (=> b!5091306 m!6149360))

(assert (=> b!5091306 m!6149362))

(declare-fun m!6149364 () Bool)

(assert (=> b!5091306 m!6149364))

(declare-fun m!6149366 () Bool)

(assert (=> b!5091305 m!6149366))

(assert (=> b!5091182 d!1648010))

(declare-fun d!1648012 () Bool)

(declare-fun c!874970 () Bool)

(assert (=> d!1648012 (= c!874970 ((_ is Empty!15638) (right!43259 (right!43259 t!3643))))))

(declare-fun e!3175163 () List!58647)

(assert (=> d!1648012 (= (list!19104 (right!43259 (right!43259 t!3643))) e!3175163)))

(declare-fun b!5091310 () Bool)

(declare-fun e!3175164 () List!58647)

(assert (=> b!5091310 (= e!3175164 (++!12837 (list!19104 (left!42929 (right!43259 (right!43259 t!3643)))) (list!19104 (right!43259 (right!43259 (right!43259 t!3643))))))))

(declare-fun b!5091309 () Bool)

(assert (=> b!5091309 (= e!3175164 (list!19105 (xs!19020 (right!43259 (right!43259 t!3643)))))))

(declare-fun b!5091307 () Bool)

(assert (=> b!5091307 (= e!3175163 Nil!58523)))

(declare-fun b!5091308 () Bool)

(assert (=> b!5091308 (= e!3175163 e!3175164)))

(declare-fun c!874971 () Bool)

(assert (=> b!5091308 (= c!874971 ((_ is Leaf!25962) (right!43259 (right!43259 t!3643))))))

(assert (= (and d!1648012 c!874970) b!5091307))

(assert (= (and d!1648012 (not c!874970)) b!5091308))

(assert (= (and b!5091308 c!874971) b!5091309))

(assert (= (and b!5091308 (not c!874971)) b!5091310))

(declare-fun m!6149368 () Bool)

(assert (=> b!5091310 m!6149368))

(declare-fun m!6149370 () Bool)

(assert (=> b!5091310 m!6149370))

(assert (=> b!5091310 m!6149368))

(assert (=> b!5091310 m!6149370))

(declare-fun m!6149372 () Bool)

(assert (=> b!5091310 m!6149372))

(declare-fun m!6149374 () Bool)

(assert (=> b!5091309 m!6149374))

(assert (=> b!5091182 d!1648012))

(declare-fun d!1648014 () Bool)

(assert (=> d!1648014 (= (list!19105 (xs!19020 (right!43259 t!3643))) (innerList!15726 (xs!19020 (right!43259 t!3643))))))

(assert (=> b!5091181 d!1648014))

(declare-fun d!1648016 () Bool)

(declare-fun lt!2092478 () Int)

(assert (=> d!1648016 (>= lt!2092478 0)))

(declare-fun e!3175167 () Int)

(assert (=> d!1648016 (= lt!2092478 e!3175167)))

(declare-fun c!874974 () Bool)

(assert (=> d!1648016 (= c!874974 ((_ is Nil!58523) (list!19104 (left!42929 t!3643))))))

(assert (=> d!1648016 (= (size!39220 (list!19104 (left!42929 t!3643))) lt!2092478)))

(declare-fun b!5091315 () Bool)

(assert (=> b!5091315 (= e!3175167 0)))

(declare-fun b!5091316 () Bool)

(assert (=> b!5091316 (= e!3175167 (+ 1 (size!39220 (t!371562 (list!19104 (left!42929 t!3643))))))))

(assert (= (and d!1648016 c!874974) b!5091315))

(assert (= (and d!1648016 (not c!874974)) b!5091316))

(declare-fun m!6149376 () Bool)

(assert (=> b!5091316 m!6149376))

(assert (=> b!5091149 d!1648016))

(declare-fun d!1648018 () Bool)

(declare-fun lt!2092479 () Int)

(assert (=> d!1648018 (>= lt!2092479 0)))

(declare-fun e!3175168 () Int)

(assert (=> d!1648018 (= lt!2092479 e!3175168)))

(declare-fun c!874975 () Bool)

(assert (=> d!1648018 (= c!874975 ((_ is Nil!58523) (list!19104 (right!43259 t!3643))))))

(assert (=> d!1648018 (= (size!39220 (list!19104 (right!43259 t!3643))) lt!2092479)))

(declare-fun b!5091317 () Bool)

(assert (=> b!5091317 (= e!3175168 0)))

(declare-fun b!5091318 () Bool)

(assert (=> b!5091318 (= e!3175168 (+ 1 (size!39220 (t!371562 (list!19104 (right!43259 t!3643))))))))

(assert (= (and d!1648018 c!874975) b!5091317))

(assert (= (and d!1648018 (not c!874975)) b!5091318))

(declare-fun m!6149378 () Bool)

(assert (=> b!5091318 m!6149378))

(assert (=> b!5091149 d!1648018))

(declare-fun d!1648020 () Bool)

(declare-fun lt!2092480 () Int)

(assert (=> d!1648020 (>= lt!2092480 0)))

(declare-fun e!3175169 () Int)

(assert (=> d!1648020 (= lt!2092480 e!3175169)))

(declare-fun c!874976 () Bool)

(assert (=> d!1648020 (= c!874976 ((_ is Nil!58523) (innerList!15726 (xs!19020 t!3643))))))

(assert (=> d!1648020 (= (size!39220 (innerList!15726 (xs!19020 t!3643))) lt!2092480)))

(declare-fun b!5091319 () Bool)

(assert (=> b!5091319 (= e!3175169 0)))

(declare-fun b!5091320 () Bool)

(assert (=> b!5091320 (= e!3175169 (+ 1 (size!39220 (t!371562 (innerList!15726 (xs!19020 t!3643))))))))

(assert (= (and d!1648020 c!874976) b!5091319))

(assert (= (and d!1648020 (not c!874976)) b!5091320))

(declare-fun m!6149380 () Bool)

(assert (=> b!5091320 m!6149380))

(assert (=> d!1647986 d!1648020))

(assert (=> b!5091148 d!1648016))

(declare-fun d!1648022 () Bool)

(declare-fun lt!2092483 () Int)

(assert (=> d!1648022 (>= lt!2092483 0)))

(declare-fun ListPrimitiveSize!394 (List!58647) Int)

(assert (=> d!1648022 (= lt!2092483 (+ 1 (ListPrimitiveSize!394 (innerList!15726 (xs!19020 t!3643)))))))

(assert (=> d!1648022 (= (IArrayPrimitiveSize!41 (xs!19020 t!3643)) lt!2092483)))

(declare-fun bs!1191168 () Bool)

(assert (= bs!1191168 d!1648022))

(declare-fun m!6149382 () Bool)

(assert (=> bs!1191168 m!6149382))

(assert (=> b!5091239 d!1648022))

(declare-fun d!1648024 () Bool)

(declare-fun lt!2092486 () T!105608)

(declare-fun contains!19589 (List!58647 T!105608) Bool)

(assert (=> d!1648024 (contains!19589 (++!12837 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))) lt!2092486)))

(declare-fun e!3175175 () T!105608)

(assert (=> d!1648024 (= lt!2092486 e!3175175)))

(declare-fun c!874979 () Bool)

(assert (=> d!1648024 (= c!874979 (= i!607 0))))

(declare-fun e!3175174 () Bool)

(assert (=> d!1648024 e!3175174))

(declare-fun res!2166903 () Bool)

(assert (=> d!1648024 (=> (not res!2166903) (not e!3175174))))

(assert (=> d!1648024 (= res!2166903 (<= 0 i!607))))

(assert (=> d!1648024 (= (apply!14266 (++!12837 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))) i!607) lt!2092486)))

(declare-fun b!5091327 () Bool)

(assert (=> b!5091327 (= e!3175174 (< i!607 (size!39220 (++!12837 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))))))))

(declare-fun b!5091328 () Bool)

(declare-fun head!10800 (List!58647) T!105608)

(assert (=> b!5091328 (= e!3175175 (head!10800 (++!12837 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643)))))))

(declare-fun b!5091329 () Bool)

(declare-fun tail!9955 (List!58647) List!58647)

(assert (=> b!5091329 (= e!3175175 (apply!14266 (tail!9955 (++!12837 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643)))) (- i!607 1)))))

(assert (= (and d!1648024 res!2166903) b!5091327))

(assert (= (and d!1648024 c!874979) b!5091328))

(assert (= (and d!1648024 (not c!874979)) b!5091329))

(assert (=> d!1648024 m!6149202))

(declare-fun m!6149384 () Bool)

(assert (=> d!1648024 m!6149384))

(assert (=> b!5091327 m!6149202))

(declare-fun m!6149386 () Bool)

(assert (=> b!5091327 m!6149386))

(assert (=> b!5091328 m!6149202))

(declare-fun m!6149388 () Bool)

(assert (=> b!5091328 m!6149388))

(assert (=> b!5091329 m!6149202))

(declare-fun m!6149390 () Bool)

(assert (=> b!5091329 m!6149390))

(assert (=> b!5091329 m!6149390))

(declare-fun m!6149392 () Bool)

(assert (=> b!5091329 m!6149392))

(assert (=> d!1647968 d!1648024))

(declare-fun b!5091330 () Bool)

(declare-fun e!3175176 () List!58647)

(assert (=> b!5091330 (= e!3175176 (list!19104 (right!43259 t!3643)))))

(declare-fun b!5091333 () Bool)

(declare-fun e!3175177 () Bool)

(declare-fun lt!2092487 () List!58647)

(assert (=> b!5091333 (= e!3175177 (or (not (= (list!19104 (right!43259 t!3643)) Nil!58523)) (= lt!2092487 (list!19104 (left!42929 t!3643)))))))

(declare-fun d!1648026 () Bool)

(assert (=> d!1648026 e!3175177))

(declare-fun res!2166904 () Bool)

(assert (=> d!1648026 (=> (not res!2166904) (not e!3175177))))

(assert (=> d!1648026 (= res!2166904 (= (content!10437 lt!2092487) ((_ map or) (content!10437 (list!19104 (left!42929 t!3643))) (content!10437 (list!19104 (right!43259 t!3643))))))))

(assert (=> d!1648026 (= lt!2092487 e!3175176)))

(declare-fun c!874980 () Bool)

(assert (=> d!1648026 (= c!874980 ((_ is Nil!58523) (list!19104 (left!42929 t!3643))))))

(assert (=> d!1648026 (= (++!12837 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))) lt!2092487)))

(declare-fun b!5091331 () Bool)

(assert (=> b!5091331 (= e!3175176 (Cons!58523 (h!64971 (list!19104 (left!42929 t!3643))) (++!12837 (t!371562 (list!19104 (left!42929 t!3643))) (list!19104 (right!43259 t!3643)))))))

(declare-fun b!5091332 () Bool)

(declare-fun res!2166905 () Bool)

(assert (=> b!5091332 (=> (not res!2166905) (not e!3175177))))

(assert (=> b!5091332 (= res!2166905 (= (size!39220 lt!2092487) (+ (size!39220 (list!19104 (left!42929 t!3643))) (size!39220 (list!19104 (right!43259 t!3643))))))))

(assert (= (and d!1648026 c!874980) b!5091330))

(assert (= (and d!1648026 (not c!874980)) b!5091331))

(assert (= (and d!1648026 res!2166904) b!5091332))

(assert (= (and b!5091332 res!2166905) b!5091333))

(declare-fun m!6149394 () Bool)

(assert (=> d!1648026 m!6149394))

(assert (=> d!1648026 m!6149182))

(declare-fun m!6149396 () Bool)

(assert (=> d!1648026 m!6149396))

(assert (=> d!1648026 m!6149184))

(declare-fun m!6149398 () Bool)

(assert (=> d!1648026 m!6149398))

(assert (=> b!5091331 m!6149184))

(declare-fun m!6149400 () Bool)

(assert (=> b!5091331 m!6149400))

(declare-fun m!6149402 () Bool)

(assert (=> b!5091332 m!6149402))

(assert (=> b!5091332 m!6149182))

(assert (=> b!5091332 m!6149194))

(assert (=> b!5091332 m!6149184))

(assert (=> b!5091332 m!6149206))

(assert (=> d!1647968 d!1648026))

(assert (=> d!1647968 d!1648016))

(declare-fun b!5091334 () Bool)

(declare-fun e!3175179 () Int)

(assert (=> b!5091334 (= e!3175179 (- i!607 1))))

(declare-fun call!354672 () T!105608)

(declare-fun c!874981 () Bool)

(declare-fun bm!354667 () Bool)

(assert (=> bm!354667 (= call!354672 (apply!14266 (ite c!874981 (t!371562 (list!19104 (left!42929 t!3643))) (list!19104 (right!43259 t!3643))) e!3175179))))

(declare-fun c!874982 () Bool)

(assert (=> bm!354667 (= c!874982 c!874981)))

(declare-fun b!5091335 () Bool)

(assert (=> b!5091335 (= e!3175179 (- (- i!607 1) (size!39220 (t!371562 (list!19104 (left!42929 t!3643))))))))

(declare-fun b!5091336 () Bool)

(declare-fun e!3175181 () Bool)

(assert (=> b!5091336 (= e!3175181 (< (- i!607 1) (+ (size!39220 (t!371562 (list!19104 (left!42929 t!3643)))) (size!39220 (list!19104 (right!43259 t!3643))))))))

(declare-fun d!1648028 () Bool)

(declare-fun e!3175180 () T!105608)

(assert (=> d!1648028 (= (apply!14266 (++!12837 (t!371562 (list!19104 (left!42929 t!3643))) (list!19104 (right!43259 t!3643))) (- i!607 1)) e!3175180)))

(assert (=> d!1648028 (= c!874981 (< (- i!607 1) (size!39220 (t!371562 (list!19104 (left!42929 t!3643))))))))

(declare-fun lt!2092488 () Bool)

(declare-fun e!3175178 () Bool)

(assert (=> d!1648028 (= lt!2092488 e!3175178)))

(declare-fun res!2166906 () Bool)

(assert (=> d!1648028 (=> res!2166906 e!3175178)))

(assert (=> d!1648028 (= res!2166906 (or ((_ is Nil!58523) (t!371562 (list!19104 (left!42929 t!3643)))) (= (- i!607 1) 0)))))

(assert (=> d!1648028 e!3175181))

(declare-fun res!2166907 () Bool)

(assert (=> d!1648028 (=> (not res!2166907) (not e!3175181))))

(assert (=> d!1648028 (= res!2166907 (<= 0 (- i!607 1)))))

(assert (=> d!1648028 (= (appendIndex!419 (t!371562 (list!19104 (left!42929 t!3643))) (list!19104 (right!43259 t!3643)) (- i!607 1)) true)))

(declare-fun b!5091337 () Bool)

(assert (=> b!5091337 (= e!3175180 call!354672)))

(declare-fun b!5091338 () Bool)

(assert (=> b!5091338 (= e!3175180 call!354672)))

(declare-fun b!5091339 () Bool)

(assert (=> b!5091339 (= e!3175178 (appendIndex!419 (t!371562 (t!371562 (list!19104 (left!42929 t!3643)))) (list!19104 (right!43259 t!3643)) (- (- i!607 1) 1)))))

(assert (= (and d!1648028 res!2166907) b!5091336))

(assert (= (and d!1648028 (not res!2166906)) b!5091339))

(assert (= (and d!1648028 c!874981) b!5091337))

(assert (= (and d!1648028 (not c!874981)) b!5091338))

(assert (= (or b!5091337 b!5091338) bm!354667))

(assert (= (and bm!354667 c!874982) b!5091334))

(assert (= (and bm!354667 (not c!874982)) b!5091335))

(assert (=> b!5091335 m!6149376))

(declare-fun m!6149404 () Bool)

(assert (=> bm!354667 m!6149404))

(assert (=> b!5091339 m!6149184))

(declare-fun m!6149406 () Bool)

(assert (=> b!5091339 m!6149406))

(assert (=> d!1648028 m!6149184))

(assert (=> d!1648028 m!6149400))

(assert (=> d!1648028 m!6149400))

(declare-fun m!6149408 () Bool)

(assert (=> d!1648028 m!6149408))

(assert (=> d!1648028 m!6149376))

(assert (=> b!5091336 m!6149376))

(assert (=> b!5091336 m!6149184))

(assert (=> b!5091336 m!6149206))

(assert (=> b!5091152 d!1648028))

(declare-fun d!1648030 () Bool)

(assert (=> d!1648030 (= (BigIntAbs!0 (ite c!874960 (csize!31506 t!3643) (csize!31507 t!3643))) (ite (>= (ite c!874960 (csize!31506 t!3643) (csize!31507 t!3643)) 0) (ite c!874960 (csize!31506 t!3643) (csize!31507 t!3643)) (- (ite c!874960 (csize!31506 t!3643) (csize!31507 t!3643)))))))

(assert (=> bm!354666 d!1648030))

(declare-fun d!1648032 () Bool)

(declare-fun res!2166912 () Bool)

(declare-fun e!3175184 () Bool)

(assert (=> d!1648032 (=> (not res!2166912) (not e!3175184))))

(assert (=> d!1648032 (= res!2166912 (<= (size!39220 (list!19105 (xs!19020 (right!43259 t!3643)))) 512))))

(assert (=> d!1648032 (= (inv!77952 (right!43259 t!3643)) e!3175184)))

(declare-fun b!5091344 () Bool)

(declare-fun res!2166913 () Bool)

(assert (=> b!5091344 (=> (not res!2166913) (not e!3175184))))

(assert (=> b!5091344 (= res!2166913 (= (csize!31507 (right!43259 t!3643)) (size!39220 (list!19105 (xs!19020 (right!43259 t!3643))))))))

(declare-fun b!5091345 () Bool)

(assert (=> b!5091345 (= e!3175184 (and (> (csize!31507 (right!43259 t!3643)) 0) (<= (csize!31507 (right!43259 t!3643)) 512)))))

(assert (= (and d!1648032 res!2166912) b!5091344))

(assert (= (and b!5091344 res!2166913) b!5091345))

(assert (=> d!1648032 m!6149232))

(assert (=> d!1648032 m!6149232))

(declare-fun m!6149410 () Bool)

(assert (=> d!1648032 m!6149410))

(assert (=> b!5091344 m!6149232))

(assert (=> b!5091344 m!6149232))

(assert (=> b!5091344 m!6149410))

(assert (=> b!5091213 d!1648032))

(declare-fun d!1648034 () Bool)

(assert (=> d!1648034 (= (list!19105 (xs!19020 (left!42929 t!3643))) (innerList!15726 (xs!19020 (left!42929 t!3643))))))

(assert (=> b!5091169 d!1648034))

(declare-fun d!1648036 () Bool)

(assert (=> d!1648036 (= (inv!77950 (xs!19020 (left!42929 t!3643))) (<= (size!39220 (innerList!15726 (xs!19020 (left!42929 t!3643)))) 2147483647))))

(declare-fun bs!1191169 () Bool)

(assert (= bs!1191169 d!1648036))

(declare-fun m!6149412 () Bool)

(assert (=> bs!1191169 m!6149412))

(assert (=> b!5091256 d!1648036))

(declare-fun d!1648038 () Bool)

(declare-fun c!874983 () Bool)

(assert (=> d!1648038 (= c!874983 ((_ is Node!15638) (left!42929 (left!42929 t!3643))))))

(declare-fun e!3175185 () Bool)

(assert (=> d!1648038 (= (inv!77949 (left!42929 (left!42929 t!3643))) e!3175185)))

(declare-fun b!5091346 () Bool)

(assert (=> b!5091346 (= e!3175185 (inv!77951 (left!42929 (left!42929 t!3643))))))

(declare-fun b!5091347 () Bool)

(declare-fun e!3175186 () Bool)

(assert (=> b!5091347 (= e!3175185 e!3175186)))

(declare-fun res!2166914 () Bool)

(assert (=> b!5091347 (= res!2166914 (not ((_ is Leaf!25962) (left!42929 (left!42929 t!3643)))))))

(assert (=> b!5091347 (=> res!2166914 e!3175186)))

(declare-fun b!5091348 () Bool)

(assert (=> b!5091348 (= e!3175186 (inv!77952 (left!42929 (left!42929 t!3643))))))

(assert (= (and d!1648038 c!874983) b!5091346))

(assert (= (and d!1648038 (not c!874983)) b!5091347))

(assert (= (and b!5091347 (not res!2166914)) b!5091348))

(declare-fun m!6149414 () Bool)

(assert (=> b!5091346 m!6149414))

(declare-fun m!6149416 () Bool)

(assert (=> b!5091348 m!6149416))

(assert (=> b!5091255 d!1648038))

(declare-fun d!1648040 () Bool)

(declare-fun c!874984 () Bool)

(assert (=> d!1648040 (= c!874984 ((_ is Node!15638) (right!43259 (left!42929 t!3643))))))

(declare-fun e!3175187 () Bool)

(assert (=> d!1648040 (= (inv!77949 (right!43259 (left!42929 t!3643))) e!3175187)))

(declare-fun b!5091349 () Bool)

(assert (=> b!5091349 (= e!3175187 (inv!77951 (right!43259 (left!42929 t!3643))))))

(declare-fun b!5091350 () Bool)

(declare-fun e!3175188 () Bool)

(assert (=> b!5091350 (= e!3175187 e!3175188)))

(declare-fun res!2166915 () Bool)

(assert (=> b!5091350 (= res!2166915 (not ((_ is Leaf!25962) (right!43259 (left!42929 t!3643)))))))

(assert (=> b!5091350 (=> res!2166915 e!3175188)))

(declare-fun b!5091351 () Bool)

(assert (=> b!5091351 (= e!3175188 (inv!77952 (right!43259 (left!42929 t!3643))))))

(assert (= (and d!1648040 c!874984) b!5091349))

(assert (= (and d!1648040 (not c!874984)) b!5091350))

(assert (= (and b!5091350 (not res!2166915)) b!5091351))

(declare-fun m!6149418 () Bool)

(assert (=> b!5091349 m!6149418))

(declare-fun m!6149420 () Bool)

(assert (=> b!5091351 m!6149420))

(assert (=> b!5091255 d!1648040))

(declare-fun d!1648042 () Bool)

(declare-fun res!2166922 () Bool)

(declare-fun e!3175191 () Bool)

(assert (=> d!1648042 (=> (not res!2166922) (not e!3175191))))

(assert (=> d!1648042 (= res!2166922 (= (csize!31506 (right!43259 t!3643)) (+ (size!39219 (left!42929 (right!43259 t!3643))) (size!39219 (right!43259 (right!43259 t!3643))))))))

(assert (=> d!1648042 (= (inv!77951 (right!43259 t!3643)) e!3175191)))

(declare-fun b!5091358 () Bool)

(declare-fun res!2166923 () Bool)

(assert (=> b!5091358 (=> (not res!2166923) (not e!3175191))))

(assert (=> b!5091358 (= res!2166923 (and (not (= (left!42929 (right!43259 t!3643)) Empty!15638)) (not (= (right!43259 (right!43259 t!3643)) Empty!15638))))))

(declare-fun b!5091359 () Bool)

(declare-fun res!2166924 () Bool)

(assert (=> b!5091359 (=> (not res!2166924) (not e!3175191))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2175 (Conc!15638) Int)

(assert (=> b!5091359 (= res!2166924 (= (cheight!15849 (right!43259 t!3643)) (+ (max!0 (height!2175 (left!42929 (right!43259 t!3643))) (height!2175 (right!43259 (right!43259 t!3643)))) 1)))))

(declare-fun b!5091360 () Bool)

(assert (=> b!5091360 (= e!3175191 (<= 0 (cheight!15849 (right!43259 t!3643))))))

(assert (= (and d!1648042 res!2166922) b!5091358))

(assert (= (and b!5091358 res!2166923) b!5091359))

(assert (= (and b!5091359 res!2166924) b!5091360))

(declare-fun m!6149422 () Bool)

(assert (=> d!1648042 m!6149422))

(declare-fun m!6149424 () Bool)

(assert (=> d!1648042 m!6149424))

(declare-fun m!6149426 () Bool)

(assert (=> b!5091359 m!6149426))

(declare-fun m!6149428 () Bool)

(assert (=> b!5091359 m!6149428))

(assert (=> b!5091359 m!6149426))

(assert (=> b!5091359 m!6149428))

(declare-fun m!6149430 () Bool)

(assert (=> b!5091359 m!6149430))

(assert (=> b!5091211 d!1648042))

(declare-fun d!1648046 () Bool)

(declare-fun lt!2092489 () Int)

(assert (=> d!1648046 (>= lt!2092489 0)))

(assert (=> d!1648046 (= lt!2092489 (+ 1 (ListPrimitiveSize!394 (innerList!15726 (xs!19020 (left!42929 t!3643))))))))

(assert (=> d!1648046 (= (IArrayPrimitiveSize!41 (xs!19020 (left!42929 t!3643))) lt!2092489)))

(declare-fun bs!1191170 () Bool)

(assert (= bs!1191170 d!1648046))

(declare-fun m!6149432 () Bool)

(assert (=> bs!1191170 m!6149432))

(assert (=> b!5091231 d!1648046))

(declare-fun b!5091361 () Bool)

(declare-fun e!3175192 () Int)

(declare-fun call!354673 () Int)

(assert (=> b!5091361 (= e!3175192 (+ 1 (ConcPrimitiveSize!42 (left!42929 (left!42929 (left!42929 t!3643)))) (ConcPrimitiveSize!42 (right!43259 (left!42929 (left!42929 t!3643)))) call!354673 (BigIntAbs!0 (cheight!15849 (left!42929 (left!42929 t!3643))))))))

(declare-fun b!5091362 () Bool)

(declare-fun e!3175193 () Int)

(assert (=> b!5091362 (= e!3175193 (+ 1 (IArrayPrimitiveSize!41 (xs!19020 (left!42929 (left!42929 t!3643)))) call!354673))))

(declare-fun b!5091363 () Bool)

(assert (=> b!5091363 (= e!3175192 e!3175193)))

(declare-fun c!874986 () Bool)

(assert (=> b!5091363 (= c!874986 ((_ is Leaf!25962) (left!42929 (left!42929 t!3643))))))

(declare-fun d!1648048 () Bool)

(declare-fun lt!2092490 () Int)

(assert (=> d!1648048 (>= lt!2092490 0)))

(assert (=> d!1648048 (= lt!2092490 e!3175192)))

(declare-fun c!874985 () Bool)

(assert (=> d!1648048 (= c!874985 ((_ is Node!15638) (left!42929 (left!42929 t!3643))))))

(assert (=> d!1648048 (= (ConcPrimitiveSize!42 (left!42929 (left!42929 t!3643))) lt!2092490)))

(declare-fun b!5091364 () Bool)

(assert (=> b!5091364 (= e!3175193 0)))

(declare-fun bm!354668 () Bool)

(assert (=> bm!354668 (= call!354673 (BigIntAbs!0 (ite c!874985 (csize!31506 (left!42929 (left!42929 t!3643))) (csize!31507 (left!42929 (left!42929 t!3643))))))))

(assert (= (and d!1648048 c!874985) b!5091361))

(assert (= (and d!1648048 (not c!874985)) b!5091363))

(assert (= (and b!5091363 c!874986) b!5091362))

(assert (= (and b!5091363 (not c!874986)) b!5091364))

(assert (= (or b!5091361 b!5091362) bm!354668))

(declare-fun m!6149434 () Bool)

(assert (=> b!5091361 m!6149434))

(declare-fun m!6149436 () Bool)

(assert (=> b!5091361 m!6149436))

(declare-fun m!6149438 () Bool)

(assert (=> b!5091361 m!6149438))

(declare-fun m!6149440 () Bool)

(assert (=> b!5091362 m!6149440))

(declare-fun m!6149442 () Bool)

(assert (=> bm!354668 m!6149442))

(assert (=> b!5091230 d!1648048))

(declare-fun b!5091365 () Bool)

(declare-fun e!3175194 () Int)

(declare-fun call!354674 () Int)

(assert (=> b!5091365 (= e!3175194 (+ 1 (ConcPrimitiveSize!42 (left!42929 (right!43259 (left!42929 t!3643)))) (ConcPrimitiveSize!42 (right!43259 (right!43259 (left!42929 t!3643)))) call!354674 (BigIntAbs!0 (cheight!15849 (right!43259 (left!42929 t!3643))))))))

(declare-fun b!5091366 () Bool)

(declare-fun e!3175195 () Int)

(assert (=> b!5091366 (= e!3175195 (+ 1 (IArrayPrimitiveSize!41 (xs!19020 (right!43259 (left!42929 t!3643)))) call!354674))))

(declare-fun b!5091367 () Bool)

(assert (=> b!5091367 (= e!3175194 e!3175195)))

(declare-fun c!874988 () Bool)

(assert (=> b!5091367 (= c!874988 ((_ is Leaf!25962) (right!43259 (left!42929 t!3643))))))

(declare-fun d!1648050 () Bool)

(declare-fun lt!2092491 () Int)

(assert (=> d!1648050 (>= lt!2092491 0)))

(assert (=> d!1648050 (= lt!2092491 e!3175194)))

(declare-fun c!874987 () Bool)

(assert (=> d!1648050 (= c!874987 ((_ is Node!15638) (right!43259 (left!42929 t!3643))))))

(assert (=> d!1648050 (= (ConcPrimitiveSize!42 (right!43259 (left!42929 t!3643))) lt!2092491)))

(declare-fun b!5091368 () Bool)

(assert (=> b!5091368 (= e!3175195 0)))

(declare-fun bm!354669 () Bool)

(assert (=> bm!354669 (= call!354674 (BigIntAbs!0 (ite c!874987 (csize!31506 (right!43259 (left!42929 t!3643))) (csize!31507 (right!43259 (left!42929 t!3643))))))))

(assert (= (and d!1648050 c!874987) b!5091365))

(assert (= (and d!1648050 (not c!874987)) b!5091367))

(assert (= (and b!5091367 c!874988) b!5091366))

(assert (= (and b!5091367 (not c!874988)) b!5091368))

(assert (= (or b!5091365 b!5091366) bm!354669))

(declare-fun m!6149444 () Bool)

(assert (=> b!5091365 m!6149444))

(declare-fun m!6149446 () Bool)

(assert (=> b!5091365 m!6149446))

(declare-fun m!6149448 () Bool)

(assert (=> b!5091365 m!6149448))

(declare-fun m!6149450 () Bool)

(assert (=> b!5091366 m!6149450))

(declare-fun m!6149452 () Bool)

(assert (=> bm!354669 m!6149452))

(assert (=> b!5091230 d!1648050))

(declare-fun d!1648052 () Bool)

(assert (=> d!1648052 (= (BigIntAbs!0 (cheight!15849 (left!42929 t!3643))) (ite (>= (cheight!15849 (left!42929 t!3643)) 0) (cheight!15849 (left!42929 t!3643)) (- (cheight!15849 (left!42929 t!3643)))))))

(assert (=> b!5091230 d!1648052))

(declare-fun b!5091369 () Bool)

(declare-fun e!3175196 () List!58647)

(assert (=> b!5091369 (= e!3175196 (list!19104 (right!43259 (left!42929 t!3643))))))

(declare-fun b!5091372 () Bool)

(declare-fun e!3175197 () Bool)

(declare-fun lt!2092492 () List!58647)

(assert (=> b!5091372 (= e!3175197 (or (not (= (list!19104 (right!43259 (left!42929 t!3643))) Nil!58523)) (= lt!2092492 (list!19104 (left!42929 (left!42929 t!3643))))))))

(declare-fun d!1648054 () Bool)

(assert (=> d!1648054 e!3175197))

(declare-fun res!2166925 () Bool)

(assert (=> d!1648054 (=> (not res!2166925) (not e!3175197))))

(assert (=> d!1648054 (= res!2166925 (= (content!10437 lt!2092492) ((_ map or) (content!10437 (list!19104 (left!42929 (left!42929 t!3643)))) (content!10437 (list!19104 (right!43259 (left!42929 t!3643)))))))))

(assert (=> d!1648054 (= lt!2092492 e!3175196)))

(declare-fun c!874989 () Bool)

(assert (=> d!1648054 (= c!874989 ((_ is Nil!58523) (list!19104 (left!42929 (left!42929 t!3643)))))))

(assert (=> d!1648054 (= (++!12837 (list!19104 (left!42929 (left!42929 t!3643))) (list!19104 (right!43259 (left!42929 t!3643)))) lt!2092492)))

(declare-fun b!5091370 () Bool)

(assert (=> b!5091370 (= e!3175196 (Cons!58523 (h!64971 (list!19104 (left!42929 (left!42929 t!3643)))) (++!12837 (t!371562 (list!19104 (left!42929 (left!42929 t!3643)))) (list!19104 (right!43259 (left!42929 t!3643))))))))

(declare-fun b!5091371 () Bool)

(declare-fun res!2166926 () Bool)

(assert (=> b!5091371 (=> (not res!2166926) (not e!3175197))))

(assert (=> b!5091371 (= res!2166926 (= (size!39220 lt!2092492) (+ (size!39220 (list!19104 (left!42929 (left!42929 t!3643)))) (size!39220 (list!19104 (right!43259 (left!42929 t!3643)))))))))

(assert (= (and d!1648054 c!874989) b!5091369))

(assert (= (and d!1648054 (not c!874989)) b!5091370))

(assert (= (and d!1648054 res!2166925) b!5091371))

(assert (= (and b!5091371 res!2166926) b!5091372))

(declare-fun m!6149454 () Bool)

(assert (=> d!1648054 m!6149454))

(assert (=> d!1648054 m!6149218))

(declare-fun m!6149456 () Bool)

(assert (=> d!1648054 m!6149456))

(assert (=> d!1648054 m!6149220))

(declare-fun m!6149458 () Bool)

(assert (=> d!1648054 m!6149458))

(assert (=> b!5091370 m!6149220))

(declare-fun m!6149460 () Bool)

(assert (=> b!5091370 m!6149460))

(declare-fun m!6149462 () Bool)

(assert (=> b!5091371 m!6149462))

(assert (=> b!5091371 m!6149218))

(declare-fun m!6149464 () Bool)

(assert (=> b!5091371 m!6149464))

(assert (=> b!5091371 m!6149220))

(declare-fun m!6149466 () Bool)

(assert (=> b!5091371 m!6149466))

(assert (=> b!5091170 d!1648054))

(declare-fun d!1648056 () Bool)

(declare-fun c!874990 () Bool)

(assert (=> d!1648056 (= c!874990 ((_ is Empty!15638) (left!42929 (left!42929 t!3643))))))

(declare-fun e!3175200 () List!58647)

(assert (=> d!1648056 (= (list!19104 (left!42929 (left!42929 t!3643))) e!3175200)))

(declare-fun b!5091376 () Bool)

(declare-fun e!3175201 () List!58647)

(assert (=> b!5091376 (= e!3175201 (++!12837 (list!19104 (left!42929 (left!42929 (left!42929 t!3643)))) (list!19104 (right!43259 (left!42929 (left!42929 t!3643))))))))

(declare-fun b!5091375 () Bool)

(assert (=> b!5091375 (= e!3175201 (list!19105 (xs!19020 (left!42929 (left!42929 t!3643)))))))

(declare-fun b!5091373 () Bool)

(assert (=> b!5091373 (= e!3175200 Nil!58523)))

(declare-fun b!5091374 () Bool)

(assert (=> b!5091374 (= e!3175200 e!3175201)))

(declare-fun c!874991 () Bool)

(assert (=> b!5091374 (= c!874991 ((_ is Leaf!25962) (left!42929 (left!42929 t!3643))))))

(assert (= (and d!1648056 c!874990) b!5091373))

(assert (= (and d!1648056 (not c!874990)) b!5091374))

(assert (= (and b!5091374 c!874991) b!5091375))

(assert (= (and b!5091374 (not c!874991)) b!5091376))

(declare-fun m!6149468 () Bool)

(assert (=> b!5091376 m!6149468))

(declare-fun m!6149470 () Bool)

(assert (=> b!5091376 m!6149470))

(assert (=> b!5091376 m!6149468))

(assert (=> b!5091376 m!6149470))

(declare-fun m!6149472 () Bool)

(assert (=> b!5091376 m!6149472))

(declare-fun m!6149474 () Bool)

(assert (=> b!5091375 m!6149474))

(assert (=> b!5091170 d!1648056))

(declare-fun d!1648058 () Bool)

(declare-fun c!874992 () Bool)

(assert (=> d!1648058 (= c!874992 ((_ is Empty!15638) (right!43259 (left!42929 t!3643))))))

(declare-fun e!3175202 () List!58647)

(assert (=> d!1648058 (= (list!19104 (right!43259 (left!42929 t!3643))) e!3175202)))

(declare-fun b!5091386 () Bool)

(declare-fun e!3175203 () List!58647)

(assert (=> b!5091386 (= e!3175203 (++!12837 (list!19104 (left!42929 (right!43259 (left!42929 t!3643)))) (list!19104 (right!43259 (right!43259 (left!42929 t!3643))))))))

(declare-fun b!5091385 () Bool)

(assert (=> b!5091385 (= e!3175203 (list!19105 (xs!19020 (right!43259 (left!42929 t!3643)))))))

(declare-fun b!5091383 () Bool)

(assert (=> b!5091383 (= e!3175202 Nil!58523)))

(declare-fun b!5091384 () Bool)

(assert (=> b!5091384 (= e!3175202 e!3175203)))

(declare-fun c!874993 () Bool)

(assert (=> b!5091384 (= c!874993 ((_ is Leaf!25962) (right!43259 (left!42929 t!3643))))))

(assert (= (and d!1648058 c!874992) b!5091383))

(assert (= (and d!1648058 (not c!874992)) b!5091384))

(assert (= (and b!5091384 c!874993) b!5091385))

(assert (= (and b!5091384 (not c!874993)) b!5091386))

(declare-fun m!6149476 () Bool)

(assert (=> b!5091386 m!6149476))

(declare-fun m!6149478 () Bool)

(assert (=> b!5091386 m!6149478))

(assert (=> b!5091386 m!6149476))

(assert (=> b!5091386 m!6149478))

(declare-fun m!6149480 () Bool)

(assert (=> b!5091386 m!6149480))

(declare-fun m!6149482 () Bool)

(assert (=> b!5091385 m!6149482))

(assert (=> b!5091170 d!1648058))

(assert (=> d!1647964 d!1648016))

(assert (=> d!1647964 d!1647972))

(declare-fun d!1648060 () Bool)

(assert (=> d!1648060 (= (BigIntAbs!0 (ite c!874956 (csize!31506 (left!42929 t!3643)) (csize!31507 (left!42929 t!3643)))) (ite (>= (ite c!874956 (csize!31506 (left!42929 t!3643)) (csize!31507 (left!42929 t!3643))) 0) (ite c!874956 (csize!31506 (left!42929 t!3643)) (csize!31507 (left!42929 t!3643))) (- (ite c!874956 (csize!31506 (left!42929 t!3643)) (csize!31507 (left!42929 t!3643))))))))

(assert (=> bm!354665 d!1648060))

(declare-fun d!1648062 () Bool)

(declare-fun res!2166933 () Bool)

(declare-fun e!3175204 () Bool)

(assert (=> d!1648062 (=> (not res!2166933) (not e!3175204))))

(assert (=> d!1648062 (= res!2166933 (<= (size!39220 (list!19105 (xs!19020 (left!42929 t!3643)))) 512))))

(assert (=> d!1648062 (= (inv!77952 (left!42929 t!3643)) e!3175204)))

(declare-fun b!5091387 () Bool)

(declare-fun res!2166934 () Bool)

(assert (=> b!5091387 (=> (not res!2166934) (not e!3175204))))

(assert (=> b!5091387 (= res!2166934 (= (csize!31507 (left!42929 t!3643)) (size!39220 (list!19105 (xs!19020 (left!42929 t!3643))))))))

(declare-fun b!5091388 () Bool)

(assert (=> b!5091388 (= e!3175204 (and (> (csize!31507 (left!42929 t!3643)) 0) (<= (csize!31507 (left!42929 t!3643)) 512)))))

(assert (= (and d!1648062 res!2166933) b!5091387))

(assert (= (and b!5091387 res!2166934) b!5091388))

(assert (=> d!1648062 m!6149224))

(assert (=> d!1648062 m!6149224))

(declare-fun m!6149484 () Bool)

(assert (=> d!1648062 m!6149484))

(assert (=> b!5091387 m!6149224))

(assert (=> b!5091387 m!6149224))

(assert (=> b!5091387 m!6149484))

(assert (=> b!5091210 d!1648062))

(declare-fun d!1648064 () Bool)

(declare-fun res!2166935 () Bool)

(declare-fun e!3175205 () Bool)

(assert (=> d!1648064 (=> (not res!2166935) (not e!3175205))))

(assert (=> d!1648064 (= res!2166935 (= (csize!31506 t!3643) (+ (size!39219 (left!42929 t!3643)) (size!39219 (right!43259 t!3643)))))))

(assert (=> d!1648064 (= (inv!77951 t!3643) e!3175205)))

(declare-fun b!5091389 () Bool)

(declare-fun res!2166936 () Bool)

(assert (=> b!5091389 (=> (not res!2166936) (not e!3175205))))

(assert (=> b!5091389 (= res!2166936 (and (not (= (left!42929 t!3643) Empty!15638)) (not (= (right!43259 t!3643) Empty!15638))))))

(declare-fun b!5091390 () Bool)

(declare-fun res!2166937 () Bool)

(assert (=> b!5091390 (=> (not res!2166937) (not e!3175205))))

(assert (=> b!5091390 (= res!2166937 (= (cheight!15849 t!3643) (+ (max!0 (height!2175 (left!42929 t!3643)) (height!2175 (right!43259 t!3643))) 1)))))

(declare-fun b!5091391 () Bool)

(assert (=> b!5091391 (= e!3175205 (<= 0 (cheight!15849 t!3643)))))

(assert (= (and d!1648064 res!2166935) b!5091389))

(assert (= (and b!5091389 res!2166936) b!5091390))

(assert (= (and b!5091390 res!2166937) b!5091391))

(assert (=> d!1648064 m!6149180))

(declare-fun m!6149486 () Bool)

(assert (=> d!1648064 m!6149486))

(declare-fun m!6149488 () Bool)

(assert (=> b!5091390 m!6149488))

(declare-fun m!6149490 () Bool)

(assert (=> b!5091390 m!6149490))

(assert (=> b!5091390 m!6149488))

(assert (=> b!5091390 m!6149490))

(declare-fun m!6149492 () Bool)

(assert (=> b!5091390 m!6149492))

(assert (=> b!5091197 d!1648064))

(declare-fun d!1648066 () Bool)

(declare-fun res!2166938 () Bool)

(declare-fun e!3175206 () Bool)

(assert (=> d!1648066 (=> (not res!2166938) (not e!3175206))))

(assert (=> d!1648066 (= res!2166938 (= (csize!31506 (left!42929 t!3643)) (+ (size!39219 (left!42929 (left!42929 t!3643))) (size!39219 (right!43259 (left!42929 t!3643))))))))

(assert (=> d!1648066 (= (inv!77951 (left!42929 t!3643)) e!3175206)))

(declare-fun b!5091392 () Bool)

(declare-fun res!2166939 () Bool)

(assert (=> b!5091392 (=> (not res!2166939) (not e!3175206))))

(assert (=> b!5091392 (= res!2166939 (and (not (= (left!42929 (left!42929 t!3643)) Empty!15638)) (not (= (right!43259 (left!42929 t!3643)) Empty!15638))))))

(declare-fun b!5091393 () Bool)

(declare-fun res!2166940 () Bool)

(assert (=> b!5091393 (=> (not res!2166940) (not e!3175206))))

(assert (=> b!5091393 (= res!2166940 (= (cheight!15849 (left!42929 t!3643)) (+ (max!0 (height!2175 (left!42929 (left!42929 t!3643))) (height!2175 (right!43259 (left!42929 t!3643)))) 1)))))

(declare-fun b!5091394 () Bool)

(assert (=> b!5091394 (= e!3175206 (<= 0 (cheight!15849 (left!42929 t!3643))))))

(assert (= (and d!1648066 res!2166938) b!5091392))

(assert (= (and b!5091392 res!2166939) b!5091393))

(assert (= (and b!5091393 res!2166940) b!5091394))

(declare-fun m!6149494 () Bool)

(assert (=> d!1648066 m!6149494))

(declare-fun m!6149496 () Bool)

(assert (=> d!1648066 m!6149496))

(declare-fun m!6149498 () Bool)

(assert (=> b!5091393 m!6149498))

(declare-fun m!6149500 () Bool)

(assert (=> b!5091393 m!6149500))

(assert (=> b!5091393 m!6149498))

(assert (=> b!5091393 m!6149500))

(declare-fun m!6149502 () Bool)

(assert (=> b!5091393 m!6149502))

(assert (=> b!5091208 d!1648066))

(declare-fun d!1648068 () Bool)

(assert (=> d!1648068 (= (inv!77950 (xs!19020 (right!43259 t!3643))) (<= (size!39220 (innerList!15726 (xs!19020 (right!43259 t!3643)))) 2147483647))))

(declare-fun bs!1191171 () Bool)

(assert (= bs!1191171 d!1648068))

(declare-fun m!6149504 () Bool)

(assert (=> bs!1191171 m!6149504))

(assert (=> b!5091262 d!1648068))

(declare-fun d!1648070 () Bool)

(declare-fun c!874994 () Bool)

(assert (=> d!1648070 (= c!874994 ((_ is Node!15638) (left!42929 (right!43259 t!3643))))))

(declare-fun e!3175208 () Bool)

(assert (=> d!1648070 (= (inv!77949 (left!42929 (right!43259 t!3643))) e!3175208)))

(declare-fun b!5091398 () Bool)

(assert (=> b!5091398 (= e!3175208 (inv!77951 (left!42929 (right!43259 t!3643))))))

(declare-fun b!5091399 () Bool)

(declare-fun e!3175209 () Bool)

(assert (=> b!5091399 (= e!3175208 e!3175209)))

(declare-fun res!2166944 () Bool)

(assert (=> b!5091399 (= res!2166944 (not ((_ is Leaf!25962) (left!42929 (right!43259 t!3643)))))))

(assert (=> b!5091399 (=> res!2166944 e!3175209)))

(declare-fun b!5091400 () Bool)

(assert (=> b!5091400 (= e!3175209 (inv!77952 (left!42929 (right!43259 t!3643))))))

(assert (= (and d!1648070 c!874994) b!5091398))

(assert (= (and d!1648070 (not c!874994)) b!5091399))

(assert (= (and b!5091399 (not res!2166944)) b!5091400))

(declare-fun m!6149506 () Bool)

(assert (=> b!5091398 m!6149506))

(declare-fun m!6149508 () Bool)

(assert (=> b!5091400 m!6149508))

(assert (=> b!5091261 d!1648070))

(declare-fun d!1648072 () Bool)

(declare-fun c!874995 () Bool)

(assert (=> d!1648072 (= c!874995 ((_ is Node!15638) (right!43259 (right!43259 t!3643))))))

(declare-fun e!3175210 () Bool)

(assert (=> d!1648072 (= (inv!77949 (right!43259 (right!43259 t!3643))) e!3175210)))

(declare-fun b!5091401 () Bool)

(assert (=> b!5091401 (= e!3175210 (inv!77951 (right!43259 (right!43259 t!3643))))))

(declare-fun b!5091402 () Bool)

(declare-fun e!3175211 () Bool)

(assert (=> b!5091402 (= e!3175210 e!3175211)))

(declare-fun res!2166945 () Bool)

(assert (=> b!5091402 (= res!2166945 (not ((_ is Leaf!25962) (right!43259 (right!43259 t!3643)))))))

(assert (=> b!5091402 (=> res!2166945 e!3175211)))

(declare-fun b!5091403 () Bool)

(assert (=> b!5091403 (= e!3175211 (inv!77952 (right!43259 (right!43259 t!3643))))))

(assert (= (and d!1648072 c!874995) b!5091401))

(assert (= (and d!1648072 (not c!874995)) b!5091402))

(assert (= (and b!5091402 (not res!2166945)) b!5091403))

(declare-fun m!6149510 () Bool)

(assert (=> b!5091401 m!6149510))

(declare-fun m!6149512 () Bool)

(assert (=> b!5091403 m!6149512))

(assert (=> b!5091261 d!1648072))

(declare-fun d!1648074 () Bool)

(declare-fun res!2166946 () Bool)

(declare-fun e!3175212 () Bool)

(assert (=> d!1648074 (=> (not res!2166946) (not e!3175212))))

(assert (=> d!1648074 (= res!2166946 (<= (size!39220 (list!19105 (xs!19020 t!3643))) 512))))

(assert (=> d!1648074 (= (inv!77952 t!3643) e!3175212)))

(declare-fun b!5091404 () Bool)

(declare-fun res!2166947 () Bool)

(assert (=> b!5091404 (=> (not res!2166947) (not e!3175212))))

(assert (=> b!5091404 (= res!2166947 (= (csize!31507 t!3643) (size!39220 (list!19105 (xs!19020 t!3643)))))))

(declare-fun b!5091405 () Bool)

(assert (=> b!5091405 (= e!3175212 (and (> (csize!31507 t!3643) 0) (<= (csize!31507 t!3643) 512)))))

(assert (= (and d!1648074 res!2166946) b!5091404))

(assert (= (and b!5091404 res!2166947) b!5091405))

(declare-fun m!6149522 () Bool)

(assert (=> d!1648074 m!6149522))

(assert (=> d!1648074 m!6149522))

(declare-fun m!6149526 () Bool)

(assert (=> d!1648074 m!6149526))

(assert (=> b!5091404 m!6149522))

(assert (=> b!5091404 m!6149522))

(assert (=> b!5091404 m!6149526))

(assert (=> b!5091199 d!1648074))

(assert (=> b!5091117 d!1647988))

(assert (=> b!5091117 d!1647990))

(assert (=> b!5091238 d!1647992))

(declare-fun b!5091406 () Bool)

(declare-fun e!3175213 () Int)

(declare-fun call!354675 () Int)

(assert (=> b!5091406 (= e!3175213 (+ 1 (ConcPrimitiveSize!42 (left!42929 (right!43259 t!3643))) (ConcPrimitiveSize!42 (right!43259 (right!43259 t!3643))) call!354675 (BigIntAbs!0 (cheight!15849 (right!43259 t!3643)))))))

(declare-fun b!5091407 () Bool)

(declare-fun e!3175214 () Int)

(assert (=> b!5091407 (= e!3175214 (+ 1 (IArrayPrimitiveSize!41 (xs!19020 (right!43259 t!3643))) call!354675))))

(declare-fun b!5091408 () Bool)

(assert (=> b!5091408 (= e!3175213 e!3175214)))

(declare-fun c!874997 () Bool)

(assert (=> b!5091408 (= c!874997 ((_ is Leaf!25962) (right!43259 t!3643)))))

(declare-fun d!1648078 () Bool)

(declare-fun lt!2092493 () Int)

(assert (=> d!1648078 (>= lt!2092493 0)))

(assert (=> d!1648078 (= lt!2092493 e!3175213)))

(declare-fun c!874996 () Bool)

(assert (=> d!1648078 (= c!874996 ((_ is Node!15638) (right!43259 t!3643)))))

(assert (=> d!1648078 (= (ConcPrimitiveSize!42 (right!43259 t!3643)) lt!2092493)))

(declare-fun b!5091409 () Bool)

(assert (=> b!5091409 (= e!3175214 0)))

(declare-fun bm!354670 () Bool)

(assert (=> bm!354670 (= call!354675 (BigIntAbs!0 (ite c!874996 (csize!31506 (right!43259 t!3643)) (csize!31507 (right!43259 t!3643)))))))

(assert (= (and d!1648078 c!874996) b!5091406))

(assert (= (and d!1648078 (not c!874996)) b!5091408))

(assert (= (and b!5091408 c!874997) b!5091407))

(assert (= (and b!5091408 (not c!874997)) b!5091409))

(assert (= (or b!5091406 b!5091407) bm!354670))

(declare-fun m!6149528 () Bool)

(assert (=> b!5091406 m!6149528))

(declare-fun m!6149530 () Bool)

(assert (=> b!5091406 m!6149530))

(declare-fun m!6149532 () Bool)

(assert (=> b!5091406 m!6149532))

(declare-fun m!6149534 () Bool)

(assert (=> b!5091407 m!6149534))

(declare-fun m!6149536 () Bool)

(assert (=> bm!354670 m!6149536))

(assert (=> b!5091238 d!1648078))

(declare-fun d!1648080 () Bool)

(assert (=> d!1648080 (= (BigIntAbs!0 (cheight!15849 t!3643)) (ite (>= (cheight!15849 t!3643) 0) (cheight!15849 t!3643) (- (cheight!15849 t!3643))))))

(assert (=> b!5091238 d!1648080))

(declare-fun d!1648082 () Bool)

(declare-fun lt!2092494 () T!105608)

(assert (=> d!1648082 (contains!19589 (ite c!874919 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))) lt!2092494)))

(declare-fun e!3175216 () T!105608)

(assert (=> d!1648082 (= lt!2092494 e!3175216)))

(declare-fun c!874998 () Bool)

(assert (=> d!1648082 (= c!874998 (= e!3175074 0))))

(declare-fun e!3175215 () Bool)

(assert (=> d!1648082 e!3175215))

(declare-fun res!2166948 () Bool)

(assert (=> d!1648082 (=> (not res!2166948) (not e!3175215))))

(assert (=> d!1648082 (= res!2166948 (<= 0 e!3175074))))

(assert (=> d!1648082 (= (apply!14266 (ite c!874919 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))) e!3175074) lt!2092494)))

(declare-fun b!5091410 () Bool)

(assert (=> b!5091410 (= e!3175215 (< e!3175074 (size!39220 (ite c!874919 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))))))))

(declare-fun b!5091411 () Bool)

(assert (=> b!5091411 (= e!3175216 (head!10800 (ite c!874919 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643)))))))

(declare-fun b!5091412 () Bool)

(assert (=> b!5091412 (= e!3175216 (apply!14266 (tail!9955 (ite c!874919 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643)))) (- e!3175074 1)))))

(assert (= (and d!1648082 res!2166948) b!5091410))

(assert (= (and d!1648082 c!874998) b!5091411))

(assert (= (and d!1648082 (not c!874998)) b!5091412))

(declare-fun m!6149538 () Bool)

(assert (=> d!1648082 m!6149538))

(declare-fun m!6149540 () Bool)

(assert (=> b!5091410 m!6149540))

(declare-fun m!6149542 () Bool)

(assert (=> b!5091411 m!6149542))

(declare-fun m!6149544 () Bool)

(assert (=> b!5091412 m!6149544))

(assert (=> b!5091412 m!6149544))

(declare-fun m!6149546 () Bool)

(assert (=> b!5091412 m!6149546))

(assert (=> bm!354657 d!1648082))

(declare-fun d!1648084 () Bool)

(declare-fun lt!2092495 () Int)

(assert (=> d!1648084 (>= lt!2092495 0)))

(declare-fun e!3175217 () Int)

(assert (=> d!1648084 (= lt!2092495 e!3175217)))

(declare-fun c!874999 () Bool)

(assert (=> d!1648084 (= c!874999 ((_ is Nil!58523) (list!19104 t!3643)))))

(assert (=> d!1648084 (= (size!39220 (list!19104 t!3643)) lt!2092495)))

(declare-fun b!5091413 () Bool)

(assert (=> b!5091413 (= e!3175217 0)))

(declare-fun b!5091414 () Bool)

(assert (=> b!5091414 (= e!3175217 (+ 1 (size!39220 (t!371562 (list!19104 t!3643)))))))

(assert (= (and d!1648084 c!874999) b!5091413))

(assert (= (and d!1648084 (not c!874999)) b!5091414))

(declare-fun m!6149548 () Bool)

(assert (=> b!5091414 m!6149548))

(assert (=> d!1648000 d!1648084))

(declare-fun d!1648086 () Bool)

(declare-fun c!875000 () Bool)

(assert (=> d!1648086 (= c!875000 ((_ is Empty!15638) t!3643))))

(declare-fun e!3175218 () List!58647)

(assert (=> d!1648086 (= (list!19104 t!3643) e!3175218)))

(declare-fun b!5091418 () Bool)

(declare-fun e!3175219 () List!58647)

(assert (=> b!5091418 (= e!3175219 (++!12837 (list!19104 (left!42929 t!3643)) (list!19104 (right!43259 t!3643))))))

(declare-fun b!5091417 () Bool)

(assert (=> b!5091417 (= e!3175219 (list!19105 (xs!19020 t!3643)))))

(declare-fun b!5091415 () Bool)

(assert (=> b!5091415 (= e!3175218 Nil!58523)))

(declare-fun b!5091416 () Bool)

(assert (=> b!5091416 (= e!3175218 e!3175219)))

(declare-fun c!875001 () Bool)

(assert (=> b!5091416 (= c!875001 ((_ is Leaf!25962) t!3643))))

(assert (= (and d!1648086 c!875000) b!5091415))

(assert (= (and d!1648086 (not c!875000)) b!5091416))

(assert (= (and b!5091416 c!875001) b!5091417))

(assert (= (and b!5091416 (not c!875001)) b!5091418))

(assert (=> b!5091418 m!6149182))

(assert (=> b!5091418 m!6149184))

(assert (=> b!5091418 m!6149182))

(assert (=> b!5091418 m!6149184))

(assert (=> b!5091418 m!6149202))

(assert (=> b!5091417 m!6149522))

(assert (=> d!1648000 d!1648086))

(declare-fun b!5091419 () Bool)

(declare-fun e!3175220 () Bool)

(declare-fun tp!1419332 () Bool)

(assert (=> b!5091419 (= e!3175220 (and tp_is_empty!37155 tp!1419332))))

(assert (=> b!5091257 (= tp!1419309 e!3175220)))

(assert (= (and b!5091257 ((_ is Cons!58523) (innerList!15726 (xs!19020 (left!42929 t!3643))))) b!5091419))

(declare-fun b!5091420 () Bool)

(declare-fun e!3175221 () Bool)

(declare-fun tp!1419333 () Bool)

(assert (=> b!5091420 (= e!3175221 (and tp_is_empty!37155 tp!1419333))))

(assert (=> b!5091263 (= tp!1419312 e!3175221)))

(assert (= (and b!5091263 ((_ is Cons!58523) (innerList!15726 (xs!19020 (right!43259 t!3643))))) b!5091420))

(declare-fun e!3175222 () Bool)

(declare-fun b!5091421 () Bool)

(declare-fun tp!1419336 () Bool)

(declare-fun tp!1419334 () Bool)

(assert (=> b!5091421 (= e!3175222 (and (inv!77949 (left!42929 (left!42929 (left!42929 t!3643)))) tp!1419334 (inv!77949 (right!43259 (left!42929 (left!42929 t!3643)))) tp!1419336))))

(declare-fun b!5091423 () Bool)

(declare-fun e!3175223 () Bool)

(declare-fun tp!1419335 () Bool)

(assert (=> b!5091423 (= e!3175223 tp!1419335)))

(declare-fun b!5091422 () Bool)

(assert (=> b!5091422 (= e!3175222 (and (inv!77950 (xs!19020 (left!42929 (left!42929 t!3643)))) e!3175223))))

(assert (=> b!5091255 (= tp!1419308 (and (inv!77949 (left!42929 (left!42929 t!3643))) e!3175222))))

(assert (= (and b!5091255 ((_ is Node!15638) (left!42929 (left!42929 t!3643)))) b!5091421))

(assert (= b!5091422 b!5091423))

(assert (= (and b!5091255 ((_ is Leaf!25962) (left!42929 (left!42929 t!3643)))) b!5091422))

(declare-fun m!6149552 () Bool)

(assert (=> b!5091421 m!6149552))

(declare-fun m!6149554 () Bool)

(assert (=> b!5091421 m!6149554))

(declare-fun m!6149556 () Bool)

(assert (=> b!5091422 m!6149556))

(assert (=> b!5091255 m!6149314))

(declare-fun b!5091424 () Bool)

(declare-fun tp!1419339 () Bool)

(declare-fun e!3175224 () Bool)

(declare-fun tp!1419337 () Bool)

(assert (=> b!5091424 (= e!3175224 (and (inv!77949 (left!42929 (right!43259 (left!42929 t!3643)))) tp!1419337 (inv!77949 (right!43259 (right!43259 (left!42929 t!3643)))) tp!1419339))))

(declare-fun b!5091426 () Bool)

(declare-fun e!3175225 () Bool)

(declare-fun tp!1419338 () Bool)

(assert (=> b!5091426 (= e!3175225 tp!1419338)))

(declare-fun b!5091425 () Bool)

(assert (=> b!5091425 (= e!3175224 (and (inv!77950 (xs!19020 (right!43259 (left!42929 t!3643)))) e!3175225))))

(assert (=> b!5091255 (= tp!1419310 (and (inv!77949 (right!43259 (left!42929 t!3643))) e!3175224))))

(assert (= (and b!5091255 ((_ is Node!15638) (right!43259 (left!42929 t!3643)))) b!5091424))

(assert (= b!5091425 b!5091426))

(assert (= (and b!5091255 ((_ is Leaf!25962) (right!43259 (left!42929 t!3643)))) b!5091425))

(declare-fun m!6149558 () Bool)

(assert (=> b!5091424 m!6149558))

(declare-fun m!6149560 () Bool)

(assert (=> b!5091424 m!6149560))

(declare-fun m!6149562 () Bool)

(assert (=> b!5091425 m!6149562))

(assert (=> b!5091255 m!6149316))

(declare-fun b!5091427 () Bool)

(declare-fun e!3175226 () Bool)

(declare-fun tp!1419340 () Bool)

(declare-fun tp!1419342 () Bool)

(assert (=> b!5091427 (= e!3175226 (and (inv!77949 (left!42929 (left!42929 (right!43259 t!3643)))) tp!1419340 (inv!77949 (right!43259 (left!42929 (right!43259 t!3643)))) tp!1419342))))

(declare-fun b!5091429 () Bool)

(declare-fun e!3175227 () Bool)

(declare-fun tp!1419341 () Bool)

(assert (=> b!5091429 (= e!3175227 tp!1419341)))

(declare-fun b!5091428 () Bool)

(assert (=> b!5091428 (= e!3175226 (and (inv!77950 (xs!19020 (left!42929 (right!43259 t!3643)))) e!3175227))))

(assert (=> b!5091261 (= tp!1419311 (and (inv!77949 (left!42929 (right!43259 t!3643))) e!3175226))))

(assert (= (and b!5091261 ((_ is Node!15638) (left!42929 (right!43259 t!3643)))) b!5091427))

(assert (= b!5091428 b!5091429))

(assert (= (and b!5091261 ((_ is Leaf!25962) (left!42929 (right!43259 t!3643)))) b!5091428))

(declare-fun m!6149564 () Bool)

(assert (=> b!5091427 m!6149564))

(declare-fun m!6149566 () Bool)

(assert (=> b!5091427 m!6149566))

(declare-fun m!6149568 () Bool)

(assert (=> b!5091428 m!6149568))

(assert (=> b!5091261 m!6149328))

(declare-fun tp!1419343 () Bool)

(declare-fun e!3175228 () Bool)

(declare-fun tp!1419345 () Bool)

(declare-fun b!5091430 () Bool)

(assert (=> b!5091430 (= e!3175228 (and (inv!77949 (left!42929 (right!43259 (right!43259 t!3643)))) tp!1419343 (inv!77949 (right!43259 (right!43259 (right!43259 t!3643)))) tp!1419345))))

(declare-fun b!5091432 () Bool)

(declare-fun e!3175229 () Bool)

(declare-fun tp!1419344 () Bool)

(assert (=> b!5091432 (= e!3175229 tp!1419344)))

(declare-fun b!5091431 () Bool)

(assert (=> b!5091431 (= e!3175228 (and (inv!77950 (xs!19020 (right!43259 (right!43259 t!3643)))) e!3175229))))

(assert (=> b!5091261 (= tp!1419313 (and (inv!77949 (right!43259 (right!43259 t!3643))) e!3175228))))

(assert (= (and b!5091261 ((_ is Node!15638) (right!43259 (right!43259 t!3643)))) b!5091430))

(assert (= b!5091431 b!5091432))

(assert (= (and b!5091261 ((_ is Leaf!25962) (right!43259 (right!43259 t!3643)))) b!5091431))

(declare-fun m!6149570 () Bool)

(assert (=> b!5091430 m!6149570))

(declare-fun m!6149572 () Bool)

(assert (=> b!5091430 m!6149572))

(declare-fun m!6149574 () Bool)

(assert (=> b!5091431 m!6149574))

(assert (=> b!5091261 m!6149330))

(declare-fun b!5091433 () Bool)

(declare-fun e!3175230 () Bool)

(declare-fun tp!1419346 () Bool)

(assert (=> b!5091433 (= e!3175230 (and tp_is_empty!37155 tp!1419346))))

(assert (=> b!5091276 (= tp!1419319 e!3175230)))

(assert (= (and b!5091276 ((_ is Cons!58523) (t!371562 (innerList!15726 (xs!19020 t!3643))))) b!5091433))

(check-sat (not b!5091423) (not b!5091428) (not d!1648042) (not b!5091331) (not d!1648082) (not b!5091362) (not b!5091359) (not b!5091411) (not b!5091310) (not b!5091410) (not b!5091425) (not b!5091401) (not b!5091346) (not b!5091422) (not d!1648008) (not b!5091327) (not b!5091420) (not b!5091375) (not b!5091306) (not bm!354670) (not b!5091427) (not b!5091316) (not b!5091320) (not d!1648024) (not b!5091344) (not b!5091371) (not b!5091429) (not d!1648028) (not d!1648026) (not b!5091421) (not b!5091387) (not b!5091300) (not b!5091348) (not b!5091318) (not d!1648066) (not d!1648074) (not d!1648062) (not b!5091424) (not b!5091419) (not b!5091261) (not b!5091255) (not b!5091376) (not b!5091386) (not b!5091403) (not b!5091406) (not b!5091365) (not b!5091349) (not b!5091366) (not b!5091431) (not b!5091370) (not b!5091430) (not b!5091385) (not bm!354668) (not b!5091332) (not b!5091351) (not b!5091393) (not b!5091309) (not d!1648054) (not b!5091335) (not b!5091305) (not b!5091336) (not b!5091414) (not b!5091418) (not d!1648022) (not d!1648064) (not b!5091407) (not b!5091339) (not b!5091329) (not b!5091417) (not d!1648032) (not d!1648068) (not b!5091301) (not d!1648036) (not b!5091404) (not b!5091412) (not bm!354667) (not b!5091328) (not b!5091432) (not d!1648046) (not b!5091400) (not b!5091398) (not b!5091426) (not b!5091433) (not bm!354669) (not b!5091361) (not b!5091390) tp_is_empty!37155)
(check-sat)
