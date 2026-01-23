; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533806 () Bool)

(assert start!533806)

(declare-datatypes ((T!104306 0))(
  ( (T!104307 (val!23532 Int)) )
))
(declare-datatypes ((List!58442 0))(
  ( (Nil!58318) (Cons!58318 (h!64766 T!104306) (t!371063 List!58442)) )
))
(declare-datatypes ((tuple2!63270 0))(
  ( (tuple2!63271 (_1!34938 List!58442) (_2!34938 List!58442)) )
))
(declare-fun lt!2085565 () tuple2!63270)

(declare-fun call!351701 () List!58442)

(declare-fun c!865305 () Bool)

(declare-fun lt!2085559 () List!58442)

(declare-fun lt!2085561 () List!58442)

(declare-fun lt!2085564 () tuple2!63270)

(declare-fun bm!351695 () Bool)

(declare-fun ++!12745 (List!58442 List!58442) List!58442)

(assert (=> bm!351695 (= call!351701 (++!12745 (ite c!865305 (_2!34938 lt!2085564) lt!2085559) (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))

(declare-fun b!5046884 () Bool)

(declare-fun e!3151214 () Bool)

(declare-fun tp!1411795 () Bool)

(assert (=> b!5046884 (= e!3151214 tp!1411795)))

(declare-fun tp!1411794 () Bool)

(declare-datatypes ((IArray!31121 0))(
  ( (IArray!31122 (innerList!15618 List!58442)) )
))
(declare-datatypes ((Conc!15530 0))(
  ( (Node!15530 (left!42724 Conc!15530) (right!43054 Conc!15530) (csize!31290 Int) (cheight!15741 Int)) (Leaf!25759 (xs!18858 IArray!31121) (csize!31291 Int)) (Empty!15530) )
))
(declare-fun t!4198 () Conc!15530)

(declare-fun e!3151211 () Bool)

(declare-fun b!5046885 () Bool)

(declare-fun tp!1411793 () Bool)

(declare-fun inv!77249 (Conc!15530) Bool)

(assert (=> b!5046885 (= e!3151211 (and (inv!77249 (left!42724 t!4198)) tp!1411793 (inv!77249 (right!43054 t!4198)) tp!1411794))))

(declare-fun b!5046886 () Bool)

(declare-fun call!351700 () tuple2!63270)

(assert (=> b!5046886 (= lt!2085565 call!351700)))

(declare-fun e!3151213 () tuple2!63270)

(assert (=> b!5046886 (= e!3151213 (tuple2!63271 call!351701 (_2!34938 lt!2085565)))))

(declare-fun b!5046887 () Bool)

(declare-fun res!2149650 () Bool)

(declare-fun e!3151216 () Bool)

(assert (=> b!5046887 (=> (not res!2149650) (not e!3151216))))

(declare-fun i!618 () Int)

(declare-fun size!38940 (Conc!15530) Int)

(assert (=> b!5046887 (= res!2149650 (<= i!618 (size!38940 t!4198)))))

(declare-fun e!3151212 () Bool)

(declare-fun b!5046888 () Bool)

(declare-fun lt!2085563 () tuple2!63270)

(assert (=> b!5046888 (= e!3151212 (= lt!2085563 (tuple2!63271 lt!2085559 lt!2085561)))))

(declare-fun b!5046889 () Bool)

(declare-fun res!2149651 () Bool)

(assert (=> b!5046889 (=> (not res!2149651) (not e!3151216))))

(get-info :version)

(assert (=> b!5046889 (= res!2149651 (and (not ((_ is Empty!15530) t!4198)) (not ((_ is Leaf!25759) t!4198))))))

(declare-fun res!2149652 () Bool)

(assert (=> start!533806 (=> (not res!2149652) (not e!3151216))))

(declare-fun isBalanced!4392 (Conc!15530) Bool)

(assert (=> start!533806 (= res!2149652 (isBalanced!4392 t!4198))))

(assert (=> start!533806 e!3151216))

(assert (=> start!533806 (and (inv!77249 t!4198) e!3151211)))

(assert (=> start!533806 true))

(declare-fun b!5046890 () Bool)

(declare-fun e!3151215 () Bool)

(assert (=> b!5046890 (= e!3151216 (not e!3151215))))

(declare-fun res!2149649 () Bool)

(assert (=> b!5046890 (=> res!2149649 e!3151215)))

(declare-fun lt!2085558 () Int)

(assert (=> b!5046890 (= res!2149649 (or (= lt!2085558 i!618) (< i!618 lt!2085558)))))

(assert (=> b!5046890 (= lt!2085558 (size!38940 (left!42724 t!4198)))))

(assert (=> b!5046890 e!3151212))

(declare-fun c!865304 () Bool)

(declare-fun lt!2085560 () Int)

(assert (=> b!5046890 (= c!865304 (= lt!2085560 i!618))))

(declare-fun splitAtIndex!223 (List!58442 Int) tuple2!63270)

(assert (=> b!5046890 (= lt!2085563 (splitAtIndex!223 (++!12745 lt!2085559 lt!2085561) i!618))))

(declare-fun size!38941 (List!58442) Int)

(assert (=> b!5046890 (= lt!2085560 (size!38941 lt!2085559))))

(declare-datatypes ((Unit!149515 0))(
  ( (Unit!149516) )
))
(declare-fun lt!2085562 () Unit!149515)

(declare-fun splitAtLemma!78 (List!58442 List!58442 Int) Unit!149515)

(assert (=> b!5046890 (= lt!2085562 (splitAtLemma!78 lt!2085559 lt!2085561 i!618))))

(declare-fun list!18945 (Conc!15530) List!58442)

(assert (=> b!5046890 (= lt!2085561 (list!18945 (right!43054 t!4198)))))

(assert (=> b!5046890 (= lt!2085559 (list!18945 (left!42724 t!4198)))))

(declare-fun b!5046891 () Bool)

(declare-fun ConcPrimitiveSize!38 (Conc!15530) Int)

(assert (=> b!5046891 (= e!3151215 (< (ConcPrimitiveSize!38 (right!43054 t!4198)) (ConcPrimitiveSize!38 t!4198)))))

(declare-fun b!5046892 () Bool)

(declare-fun inv!77250 (IArray!31121) Bool)

(assert (=> b!5046892 (= e!3151211 (and (inv!77250 (xs!18858 t!4198)) e!3151214))))

(declare-fun b!5046893 () Bool)

(assert (=> b!5046893 (= lt!2085564 call!351700)))

(assert (=> b!5046893 (= e!3151213 (tuple2!63271 (_1!34938 lt!2085564) call!351701))))

(declare-fun b!5046894 () Bool)

(assert (=> b!5046894 (= e!3151212 (= lt!2085563 e!3151213))))

(assert (=> b!5046894 (= c!865305 (< i!618 lt!2085560))))

(declare-fun bm!351696 () Bool)

(assert (=> bm!351696 (= call!351700 (splitAtIndex!223 (ite c!865305 lt!2085559 lt!2085561) (ite c!865305 i!618 (- i!618 lt!2085560))))))

(declare-fun b!5046895 () Bool)

(declare-fun res!2149653 () Bool)

(assert (=> b!5046895 (=> (not res!2149653) (not e!3151216))))

(assert (=> b!5046895 (= res!2149653 (<= 0 i!618))))

(assert (= (and start!533806 res!2149652) b!5046895))

(assert (= (and b!5046895 res!2149653) b!5046887))

(assert (= (and b!5046887 res!2149650) b!5046889))

(assert (= (and b!5046889 res!2149651) b!5046890))

(assert (= (and b!5046890 c!865304) b!5046888))

(assert (= (and b!5046890 (not c!865304)) b!5046894))

(assert (= (and b!5046894 c!865305) b!5046893))

(assert (= (and b!5046894 (not c!865305)) b!5046886))

(assert (= (or b!5046893 b!5046886) bm!351695))

(assert (= (or b!5046893 b!5046886) bm!351696))

(assert (= (and b!5046890 (not res!2149649)) b!5046891))

(assert (= (and start!533806 ((_ is Node!15530) t!4198)) b!5046885))

(assert (= b!5046892 b!5046884))

(assert (= (and start!533806 ((_ is Leaf!25759) t!4198)) b!5046892))

(declare-fun m!6082136 () Bool)

(assert (=> b!5046892 m!6082136))

(declare-fun m!6082138 () Bool)

(assert (=> b!5046885 m!6082138))

(declare-fun m!6082140 () Bool)

(assert (=> b!5046885 m!6082140))

(declare-fun m!6082142 () Bool)

(assert (=> bm!351695 m!6082142))

(declare-fun m!6082144 () Bool)

(assert (=> b!5046890 m!6082144))

(declare-fun m!6082146 () Bool)

(assert (=> b!5046890 m!6082146))

(declare-fun m!6082148 () Bool)

(assert (=> b!5046890 m!6082148))

(declare-fun m!6082150 () Bool)

(assert (=> b!5046890 m!6082150))

(declare-fun m!6082152 () Bool)

(assert (=> b!5046890 m!6082152))

(assert (=> b!5046890 m!6082146))

(declare-fun m!6082154 () Bool)

(assert (=> b!5046890 m!6082154))

(declare-fun m!6082156 () Bool)

(assert (=> b!5046890 m!6082156))

(declare-fun m!6082158 () Bool)

(assert (=> b!5046887 m!6082158))

(declare-fun m!6082160 () Bool)

(assert (=> start!533806 m!6082160))

(declare-fun m!6082162 () Bool)

(assert (=> start!533806 m!6082162))

(declare-fun m!6082164 () Bool)

(assert (=> b!5046891 m!6082164))

(declare-fun m!6082166 () Bool)

(assert (=> b!5046891 m!6082166))

(declare-fun m!6082168 () Bool)

(assert (=> bm!351696 m!6082168))

(check-sat (not b!5046891) (not bm!351696) (not b!5046884) (not b!5046885) (not bm!351695) (not b!5046892) (not b!5046887) (not start!533806) (not b!5046890))
(check-sat)
(get-model)

(declare-fun b!5046904 () Bool)

(declare-fun e!3151222 () Int)

(declare-fun call!351704 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!5046904 (= e!3151222 (+ 1 (ConcPrimitiveSize!38 (left!42724 (right!43054 t!4198))) (ConcPrimitiveSize!38 (right!43054 (right!43054 t!4198))) (BigIntAbs!0 (csize!31290 (right!43054 t!4198))) call!351704))))

(declare-fun b!5046905 () Bool)

(declare-fun e!3151221 () Int)

(declare-fun IArrayPrimitiveSize!36 (IArray!31121) Int)

(assert (=> b!5046905 (= e!3151221 (+ 1 (IArrayPrimitiveSize!36 (xs!18858 (right!43054 t!4198))) call!351704))))

(declare-fun d!1624285 () Bool)

(declare-fun lt!2085568 () Int)

(assert (=> d!1624285 (>= lt!2085568 0)))

(assert (=> d!1624285 (= lt!2085568 e!3151222)))

(declare-fun c!865310 () Bool)

(assert (=> d!1624285 (= c!865310 ((_ is Node!15530) (right!43054 t!4198)))))

(assert (=> d!1624285 (= (ConcPrimitiveSize!38 (right!43054 t!4198)) lt!2085568)))

(declare-fun b!5046906 () Bool)

(assert (=> b!5046906 (= e!3151222 e!3151221)))

(declare-fun c!865311 () Bool)

(assert (=> b!5046906 (= c!865311 ((_ is Leaf!25759) (right!43054 t!4198)))))

(declare-fun b!5046907 () Bool)

(assert (=> b!5046907 (= e!3151221 0)))

(declare-fun bm!351699 () Bool)

(assert (=> bm!351699 (= call!351704 (BigIntAbs!0 (ite c!865310 (cheight!15741 (right!43054 t!4198)) (csize!31291 (right!43054 t!4198)))))))

(assert (= (and d!1624285 c!865310) b!5046904))

(assert (= (and d!1624285 (not c!865310)) b!5046906))

(assert (= (and b!5046906 c!865311) b!5046905))

(assert (= (and b!5046906 (not c!865311)) b!5046907))

(assert (= (or b!5046904 b!5046905) bm!351699))

(declare-fun m!6082170 () Bool)

(assert (=> b!5046904 m!6082170))

(declare-fun m!6082172 () Bool)

(assert (=> b!5046904 m!6082172))

(declare-fun m!6082174 () Bool)

(assert (=> b!5046904 m!6082174))

(declare-fun m!6082176 () Bool)

(assert (=> b!5046905 m!6082176))

(declare-fun m!6082178 () Bool)

(assert (=> bm!351699 m!6082178))

(assert (=> b!5046891 d!1624285))

(declare-fun b!5046908 () Bool)

(declare-fun e!3151224 () Int)

(declare-fun call!351705 () Int)

(assert (=> b!5046908 (= e!3151224 (+ 1 (ConcPrimitiveSize!38 (left!42724 t!4198)) (ConcPrimitiveSize!38 (right!43054 t!4198)) (BigIntAbs!0 (csize!31290 t!4198)) call!351705))))

(declare-fun b!5046909 () Bool)

(declare-fun e!3151223 () Int)

(assert (=> b!5046909 (= e!3151223 (+ 1 (IArrayPrimitiveSize!36 (xs!18858 t!4198)) call!351705))))

(declare-fun d!1624289 () Bool)

(declare-fun lt!2085569 () Int)

(assert (=> d!1624289 (>= lt!2085569 0)))

(assert (=> d!1624289 (= lt!2085569 e!3151224)))

(declare-fun c!865312 () Bool)

(assert (=> d!1624289 (= c!865312 ((_ is Node!15530) t!4198))))

(assert (=> d!1624289 (= (ConcPrimitiveSize!38 t!4198) lt!2085569)))

(declare-fun b!5046910 () Bool)

(assert (=> b!5046910 (= e!3151224 e!3151223)))

(declare-fun c!865313 () Bool)

(assert (=> b!5046910 (= c!865313 ((_ is Leaf!25759) t!4198))))

(declare-fun b!5046911 () Bool)

(assert (=> b!5046911 (= e!3151223 0)))

(declare-fun bm!351700 () Bool)

(assert (=> bm!351700 (= call!351705 (BigIntAbs!0 (ite c!865312 (cheight!15741 t!4198) (csize!31291 t!4198))))))

(assert (= (and d!1624289 c!865312) b!5046908))

(assert (= (and d!1624289 (not c!865312)) b!5046910))

(assert (= (and b!5046910 c!865313) b!5046909))

(assert (= (and b!5046910 (not c!865313)) b!5046911))

(assert (= (or b!5046908 b!5046909) bm!351700))

(declare-fun m!6082180 () Bool)

(assert (=> b!5046908 m!6082180))

(assert (=> b!5046908 m!6082164))

(declare-fun m!6082182 () Bool)

(assert (=> b!5046908 m!6082182))

(declare-fun m!6082184 () Bool)

(assert (=> b!5046909 m!6082184))

(declare-fun m!6082186 () Bool)

(assert (=> bm!351700 m!6082186))

(assert (=> b!5046891 d!1624289))

(declare-fun d!1624291 () Bool)

(assert (=> d!1624291 (= (inv!77250 (xs!18858 t!4198)) (<= (size!38941 (innerList!15618 (xs!18858 t!4198))) 2147483647))))

(declare-fun bs!1189152 () Bool)

(assert (= bs!1189152 d!1624291))

(declare-fun m!6082188 () Bool)

(assert (=> bs!1189152 m!6082188))

(assert (=> b!5046892 d!1624291))

(declare-fun d!1624293 () Bool)

(declare-fun lt!2085575 () Int)

(assert (=> d!1624293 (= lt!2085575 (size!38941 (list!18945 t!4198)))))

(assert (=> d!1624293 (= lt!2085575 (ite ((_ is Empty!15530) t!4198) 0 (ite ((_ is Leaf!25759) t!4198) (csize!31291 t!4198) (csize!31290 t!4198))))))

(assert (=> d!1624293 (= (size!38940 t!4198) lt!2085575)))

(declare-fun bs!1189153 () Bool)

(assert (= bs!1189153 d!1624293))

(declare-fun m!6082190 () Bool)

(assert (=> bs!1189153 m!6082190))

(assert (=> bs!1189153 m!6082190))

(declare-fun m!6082192 () Bool)

(assert (=> bs!1189153 m!6082192))

(assert (=> b!5046887 d!1624293))

(declare-fun b!5046954 () Bool)

(declare-fun e!3151245 () Bool)

(declare-fun e!3151244 () Bool)

(assert (=> b!5046954 (= e!3151245 e!3151244)))

(declare-fun res!2149677 () Bool)

(assert (=> b!5046954 (=> (not res!2149677) (not e!3151244))))

(declare-fun height!2109 (Conc!15530) Int)

(assert (=> b!5046954 (= res!2149677 (<= (- 1) (- (height!2109 (left!42724 t!4198)) (height!2109 (right!43054 t!4198)))))))

(declare-fun b!5046955 () Bool)

(declare-fun res!2149673 () Bool)

(assert (=> b!5046955 (=> (not res!2149673) (not e!3151244))))

(assert (=> b!5046955 (= res!2149673 (isBalanced!4392 (left!42724 t!4198)))))

(declare-fun b!5046956 () Bool)

(declare-fun isEmpty!31561 (Conc!15530) Bool)

(assert (=> b!5046956 (= e!3151244 (not (isEmpty!31561 (right!43054 t!4198))))))

(declare-fun d!1624295 () Bool)

(declare-fun res!2149675 () Bool)

(assert (=> d!1624295 (=> res!2149675 e!3151245)))

(assert (=> d!1624295 (= res!2149675 (not ((_ is Node!15530) t!4198)))))

(assert (=> d!1624295 (= (isBalanced!4392 t!4198) e!3151245)))

(declare-fun b!5046957 () Bool)

(declare-fun res!2149676 () Bool)

(assert (=> b!5046957 (=> (not res!2149676) (not e!3151244))))

(assert (=> b!5046957 (= res!2149676 (not (isEmpty!31561 (left!42724 t!4198))))))

(declare-fun b!5046958 () Bool)

(declare-fun res!2149672 () Bool)

(assert (=> b!5046958 (=> (not res!2149672) (not e!3151244))))

(assert (=> b!5046958 (= res!2149672 (<= (- (height!2109 (left!42724 t!4198)) (height!2109 (right!43054 t!4198))) 1))))

(declare-fun b!5046959 () Bool)

(declare-fun res!2149674 () Bool)

(assert (=> b!5046959 (=> (not res!2149674) (not e!3151244))))

(assert (=> b!5046959 (= res!2149674 (isBalanced!4392 (right!43054 t!4198)))))

(assert (= (and d!1624295 (not res!2149675)) b!5046954))

(assert (= (and b!5046954 res!2149677) b!5046958))

(assert (= (and b!5046958 res!2149672) b!5046955))

(assert (= (and b!5046955 res!2149673) b!5046959))

(assert (= (and b!5046959 res!2149674) b!5046957))

(assert (= (and b!5046957 res!2149676) b!5046956))

(declare-fun m!6082218 () Bool)

(assert (=> b!5046954 m!6082218))

(declare-fun m!6082220 () Bool)

(assert (=> b!5046954 m!6082220))

(declare-fun m!6082222 () Bool)

(assert (=> b!5046959 m!6082222))

(declare-fun m!6082224 () Bool)

(assert (=> b!5046955 m!6082224))

(assert (=> b!5046958 m!6082218))

(assert (=> b!5046958 m!6082220))

(declare-fun m!6082226 () Bool)

(assert (=> b!5046956 m!6082226))

(declare-fun m!6082228 () Bool)

(assert (=> b!5046957 m!6082228))

(assert (=> start!533806 d!1624295))

(declare-fun d!1624303 () Bool)

(declare-fun c!865329 () Bool)

(assert (=> d!1624303 (= c!865329 ((_ is Node!15530) t!4198))))

(declare-fun e!3151252 () Bool)

(assert (=> d!1624303 (= (inv!77249 t!4198) e!3151252)))

(declare-fun b!5046970 () Bool)

(declare-fun inv!77253 (Conc!15530) Bool)

(assert (=> b!5046970 (= e!3151252 (inv!77253 t!4198))))

(declare-fun b!5046971 () Bool)

(declare-fun e!3151253 () Bool)

(assert (=> b!5046971 (= e!3151252 e!3151253)))

(declare-fun res!2149682 () Bool)

(assert (=> b!5046971 (= res!2149682 (not ((_ is Leaf!25759) t!4198)))))

(assert (=> b!5046971 (=> res!2149682 e!3151253)))

(declare-fun b!5046972 () Bool)

(declare-fun inv!77254 (Conc!15530) Bool)

(assert (=> b!5046972 (= e!3151253 (inv!77254 t!4198))))

(assert (= (and d!1624303 c!865329) b!5046970))

(assert (= (and d!1624303 (not c!865329)) b!5046971))

(assert (= (and b!5046971 (not res!2149682)) b!5046972))

(declare-fun m!6082244 () Bool)

(assert (=> b!5046970 m!6082244))

(declare-fun m!6082246 () Bool)

(assert (=> b!5046972 m!6082246))

(assert (=> start!533806 d!1624303))

(declare-fun e!3151267 () List!58442)

(declare-fun b!5046996 () Bool)

(assert (=> b!5046996 (= e!3151267 (Cons!58318 (h!64766 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)) (++!12745 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)) (ite c!865305 lt!2085561 (_1!34938 lt!2085565)))))))

(declare-fun e!3151266 () Bool)

(declare-fun lt!2085591 () List!58442)

(declare-fun b!5046998 () Bool)

(assert (=> b!5046998 (= e!3151266 (or (not (= (ite c!865305 lt!2085561 (_1!34938 lt!2085565)) Nil!58318)) (= lt!2085591 (ite c!865305 (_2!34938 lt!2085564) lt!2085559))))))

(declare-fun b!5046997 () Bool)

(declare-fun res!2149690 () Bool)

(assert (=> b!5046997 (=> (not res!2149690) (not e!3151266))))

(assert (=> b!5046997 (= res!2149690 (= (size!38941 lt!2085591) (+ (size!38941 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)) (size!38941 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))))

(declare-fun b!5046995 () Bool)

(assert (=> b!5046995 (= e!3151267 (ite c!865305 lt!2085561 (_1!34938 lt!2085565)))))

(declare-fun d!1624309 () Bool)

(assert (=> d!1624309 e!3151266))

(declare-fun res!2149689 () Bool)

(assert (=> d!1624309 (=> (not res!2149689) (not e!3151266))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10371 (List!58442) (InoxSet T!104306))

(assert (=> d!1624309 (= res!2149689 (= (content!10371 lt!2085591) ((_ map or) (content!10371 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)) (content!10371 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))))

(assert (=> d!1624309 (= lt!2085591 e!3151267)))

(declare-fun c!865338 () Bool)

(assert (=> d!1624309 (= c!865338 ((_ is Nil!58318) (ite c!865305 (_2!34938 lt!2085564) lt!2085559)))))

(assert (=> d!1624309 (= (++!12745 (ite c!865305 (_2!34938 lt!2085564) lt!2085559) (ite c!865305 lt!2085561 (_1!34938 lt!2085565))) lt!2085591)))

(assert (= (and d!1624309 c!865338) b!5046995))

(assert (= (and d!1624309 (not c!865338)) b!5046996))

(assert (= (and d!1624309 res!2149689) b!5046997))

(assert (= (and b!5046997 res!2149690) b!5046998))

(declare-fun m!6082248 () Bool)

(assert (=> b!5046996 m!6082248))

(declare-fun m!6082250 () Bool)

(assert (=> b!5046997 m!6082250))

(declare-fun m!6082252 () Bool)

(assert (=> b!5046997 m!6082252))

(declare-fun m!6082254 () Bool)

(assert (=> b!5046997 m!6082254))

(declare-fun m!6082256 () Bool)

(assert (=> d!1624309 m!6082256))

(declare-fun m!6082258 () Bool)

(assert (=> d!1624309 m!6082258))

(declare-fun m!6082260 () Bool)

(assert (=> d!1624309 m!6082260))

(assert (=> bm!351695 d!1624309))

(declare-fun b!5047000 () Bool)

(declare-fun e!3151269 () List!58442)

(assert (=> b!5047000 (= e!3151269 (Cons!58318 (h!64766 lt!2085559) (++!12745 (t!371063 lt!2085559) lt!2085561)))))

(declare-fun b!5047002 () Bool)

(declare-fun lt!2085592 () List!58442)

(declare-fun e!3151268 () Bool)

(assert (=> b!5047002 (= e!3151268 (or (not (= lt!2085561 Nil!58318)) (= lt!2085592 lt!2085559)))))

(declare-fun b!5047001 () Bool)

(declare-fun res!2149692 () Bool)

(assert (=> b!5047001 (=> (not res!2149692) (not e!3151268))))

(assert (=> b!5047001 (= res!2149692 (= (size!38941 lt!2085592) (+ (size!38941 lt!2085559) (size!38941 lt!2085561))))))

(declare-fun b!5046999 () Bool)

(assert (=> b!5046999 (= e!3151269 lt!2085561)))

(declare-fun d!1624311 () Bool)

(assert (=> d!1624311 e!3151268))

(declare-fun res!2149691 () Bool)

(assert (=> d!1624311 (=> (not res!2149691) (not e!3151268))))

(assert (=> d!1624311 (= res!2149691 (= (content!10371 lt!2085592) ((_ map or) (content!10371 lt!2085559) (content!10371 lt!2085561))))))

(assert (=> d!1624311 (= lt!2085592 e!3151269)))

(declare-fun c!865339 () Bool)

(assert (=> d!1624311 (= c!865339 ((_ is Nil!58318) lt!2085559))))

(assert (=> d!1624311 (= (++!12745 lt!2085559 lt!2085561) lt!2085592)))

(assert (= (and d!1624311 c!865339) b!5046999))

(assert (= (and d!1624311 (not c!865339)) b!5047000))

(assert (= (and d!1624311 res!2149691) b!5047001))

(assert (= (and b!5047001 res!2149692) b!5047002))

(declare-fun m!6082262 () Bool)

(assert (=> b!5047000 m!6082262))

(declare-fun m!6082264 () Bool)

(assert (=> b!5047001 m!6082264))

(assert (=> b!5047001 m!6082148))

(declare-fun m!6082266 () Bool)

(assert (=> b!5047001 m!6082266))

(declare-fun m!6082268 () Bool)

(assert (=> d!1624311 m!6082268))

(declare-fun m!6082270 () Bool)

(assert (=> d!1624311 m!6082270))

(declare-fun m!6082272 () Bool)

(assert (=> d!1624311 m!6082272))

(assert (=> b!5046890 d!1624311))

(declare-fun b!5047038 () Bool)

(declare-fun e!3151288 () tuple2!63270)

(assert (=> b!5047038 (= e!3151288 (tuple2!63271 Nil!58318 Nil!58318))))

(declare-fun b!5047039 () Bool)

(declare-fun e!3151289 () tuple2!63270)

(assert (=> b!5047039 (= e!3151288 e!3151289)))

(declare-fun c!865354 () Bool)

(assert (=> b!5047039 (= c!865354 (<= i!618 0))))

(declare-fun lt!2085604 () tuple2!63270)

(declare-fun b!5047040 () Bool)

(assert (=> b!5047040 (= lt!2085604 (splitAtIndex!223 (t!371063 (++!12745 lt!2085559 lt!2085561)) (- i!618 1)))))

(assert (=> b!5047040 (= e!3151289 (tuple2!63271 (Cons!58318 (h!64766 (++!12745 lt!2085559 lt!2085561)) (_1!34938 lt!2085604)) (_2!34938 lt!2085604)))))

(declare-fun b!5047041 () Bool)

(declare-fun res!2149702 () Bool)

(declare-fun e!3151290 () Bool)

(assert (=> b!5047041 (=> (not res!2149702) (not e!3151290))))

(declare-fun lt!2085605 () tuple2!63270)

(declare-fun take!839 (List!58442 Int) List!58442)

(assert (=> b!5047041 (= res!2149702 (= (_1!34938 lt!2085605) (take!839 (++!12745 lt!2085559 lt!2085561) i!618)))))

(declare-fun b!5047042 () Bool)

(declare-fun drop!2646 (List!58442 Int) List!58442)

(assert (=> b!5047042 (= e!3151290 (= (_2!34938 lt!2085605) (drop!2646 (++!12745 lt!2085559 lt!2085561) i!618)))))

(declare-fun d!1624313 () Bool)

(assert (=> d!1624313 e!3151290))

(declare-fun res!2149703 () Bool)

(assert (=> d!1624313 (=> (not res!2149703) (not e!3151290))))

(assert (=> d!1624313 (= res!2149703 (= (++!12745 (_1!34938 lt!2085605) (_2!34938 lt!2085605)) (++!12745 lt!2085559 lt!2085561)))))

(assert (=> d!1624313 (= lt!2085605 e!3151288)))

(declare-fun c!865353 () Bool)

(assert (=> d!1624313 (= c!865353 ((_ is Nil!58318) (++!12745 lt!2085559 lt!2085561)))))

(assert (=> d!1624313 (= (splitAtIndex!223 (++!12745 lt!2085559 lt!2085561) i!618) lt!2085605)))

(declare-fun b!5047043 () Bool)

(assert (=> b!5047043 (= e!3151289 (tuple2!63271 Nil!58318 (++!12745 lt!2085559 lt!2085561)))))

(assert (= (and d!1624313 c!865353) b!5047038))

(assert (= (and d!1624313 (not c!865353)) b!5047039))

(assert (= (and b!5047039 c!865354) b!5047043))

(assert (= (and b!5047039 (not c!865354)) b!5047040))

(assert (= (and d!1624313 res!2149703) b!5047041))

(assert (= (and b!5047041 res!2149702) b!5047042))

(declare-fun m!6082288 () Bool)

(assert (=> b!5047040 m!6082288))

(assert (=> b!5047041 m!6082146))

(declare-fun m!6082290 () Bool)

(assert (=> b!5047041 m!6082290))

(assert (=> b!5047042 m!6082146))

(declare-fun m!6082292 () Bool)

(assert (=> b!5047042 m!6082292))

(declare-fun m!6082294 () Bool)

(assert (=> d!1624313 m!6082294))

(assert (=> b!5046890 d!1624313))

(declare-fun b!5047073 () Bool)

(declare-fun e!3151303 () List!58442)

(assert (=> b!5047073 (= e!3151303 (++!12745 (list!18945 (left!42724 (left!42724 t!4198))) (list!18945 (right!43054 (left!42724 t!4198)))))))

(declare-fun d!1624319 () Bool)

(declare-fun c!865361 () Bool)

(assert (=> d!1624319 (= c!865361 ((_ is Empty!15530) (left!42724 t!4198)))))

(declare-fun e!3151302 () List!58442)

(assert (=> d!1624319 (= (list!18945 (left!42724 t!4198)) e!3151302)))

(declare-fun b!5047071 () Bool)

(assert (=> b!5047071 (= e!3151302 e!3151303)))

(declare-fun c!865362 () Bool)

(assert (=> b!5047071 (= c!865362 ((_ is Leaf!25759) (left!42724 t!4198)))))

(declare-fun b!5047072 () Bool)

(declare-fun list!18947 (IArray!31121) List!58442)

(assert (=> b!5047072 (= e!3151303 (list!18947 (xs!18858 (left!42724 t!4198))))))

(declare-fun b!5047070 () Bool)

(assert (=> b!5047070 (= e!3151302 Nil!58318)))

(assert (= (and d!1624319 c!865361) b!5047070))

(assert (= (and d!1624319 (not c!865361)) b!5047071))

(assert (= (and b!5047071 c!865362) b!5047072))

(assert (= (and b!5047071 (not c!865362)) b!5047073))

(declare-fun m!6082304 () Bool)

(assert (=> b!5047073 m!6082304))

(declare-fun m!6082306 () Bool)

(assert (=> b!5047073 m!6082306))

(assert (=> b!5047073 m!6082304))

(assert (=> b!5047073 m!6082306))

(declare-fun m!6082308 () Bool)

(assert (=> b!5047073 m!6082308))

(declare-fun m!6082310 () Bool)

(assert (=> b!5047072 m!6082310))

(assert (=> b!5046890 d!1624319))

(declare-fun b!5047083 () Bool)

(declare-fun e!3151307 () List!58442)

(assert (=> b!5047083 (= e!3151307 (++!12745 (list!18945 (left!42724 (right!43054 t!4198))) (list!18945 (right!43054 (right!43054 t!4198)))))))

(declare-fun d!1624323 () Bool)

(declare-fun c!865363 () Bool)

(assert (=> d!1624323 (= c!865363 ((_ is Empty!15530) (right!43054 t!4198)))))

(declare-fun e!3151306 () List!58442)

(assert (=> d!1624323 (= (list!18945 (right!43054 t!4198)) e!3151306)))

(declare-fun b!5047081 () Bool)

(assert (=> b!5047081 (= e!3151306 e!3151307)))

(declare-fun c!865364 () Bool)

(assert (=> b!5047081 (= c!865364 ((_ is Leaf!25759) (right!43054 t!4198)))))

(declare-fun b!5047082 () Bool)

(assert (=> b!5047082 (= e!3151307 (list!18947 (xs!18858 (right!43054 t!4198))))))

(declare-fun b!5047080 () Bool)

(assert (=> b!5047080 (= e!3151306 Nil!58318)))

(assert (= (and d!1624323 c!865363) b!5047080))

(assert (= (and d!1624323 (not c!865363)) b!5047081))

(assert (= (and b!5047081 c!865364) b!5047082))

(assert (= (and b!5047081 (not c!865364)) b!5047083))

(declare-fun m!6082324 () Bool)

(assert (=> b!5047083 m!6082324))

(declare-fun m!6082326 () Bool)

(assert (=> b!5047083 m!6082326))

(assert (=> b!5047083 m!6082324))

(assert (=> b!5047083 m!6082326))

(declare-fun m!6082328 () Bool)

(assert (=> b!5047083 m!6082328))

(declare-fun m!6082330 () Bool)

(assert (=> b!5047082 m!6082330))

(assert (=> b!5046890 d!1624323))

(declare-fun d!1624327 () Bool)

(declare-fun lt!2085608 () Int)

(assert (=> d!1624327 (= lt!2085608 (size!38941 (list!18945 (left!42724 t!4198))))))

(assert (=> d!1624327 (= lt!2085608 (ite ((_ is Empty!15530) (left!42724 t!4198)) 0 (ite ((_ is Leaf!25759) (left!42724 t!4198)) (csize!31291 (left!42724 t!4198)) (csize!31290 (left!42724 t!4198)))))))

(assert (=> d!1624327 (= (size!38940 (left!42724 t!4198)) lt!2085608)))

(declare-fun bs!1189155 () Bool)

(assert (= bs!1189155 d!1624327))

(assert (=> bs!1189155 m!6082144))

(assert (=> bs!1189155 m!6082144))

(declare-fun m!6082332 () Bool)

(assert (=> bs!1189155 m!6082332))

(assert (=> b!5046890 d!1624327))

(declare-fun d!1624329 () Bool)

(declare-fun lt!2085613 () Int)

(assert (=> d!1624329 (>= lt!2085613 0)))

(declare-fun e!3151323 () Int)

(assert (=> d!1624329 (= lt!2085613 e!3151323)))

(declare-fun c!865374 () Bool)

(assert (=> d!1624329 (= c!865374 ((_ is Nil!58318) lt!2085559))))

(assert (=> d!1624329 (= (size!38941 lt!2085559) lt!2085613)))

(declare-fun b!5047109 () Bool)

(assert (=> b!5047109 (= e!3151323 0)))

(declare-fun b!5047110 () Bool)

(assert (=> b!5047110 (= e!3151323 (+ 1 (size!38941 (t!371063 lt!2085559))))))

(assert (= (and d!1624329 c!865374) b!5047109))

(assert (= (and d!1624329 (not c!865374)) b!5047110))

(declare-fun m!6082354 () Bool)

(assert (=> b!5047110 m!6082354))

(assert (=> b!5046890 d!1624329))

(declare-fun d!1624339 () Bool)

(declare-fun e!3151354 () tuple2!63270)

(assert (=> d!1624339 (= (splitAtIndex!223 (++!12745 lt!2085559 lt!2085561) i!618) e!3151354)))

(declare-fun c!865391 () Bool)

(assert (=> d!1624339 (= c!865391 (= (size!38941 lt!2085559) i!618))))

(declare-fun lt!2085625 () Unit!149515)

(declare-fun choose!37278 (List!58442 List!58442 Int) Unit!149515)

(assert (=> d!1624339 (= lt!2085625 (choose!37278 lt!2085559 lt!2085561 i!618))))

(declare-fun e!3151353 () Bool)

(assert (=> d!1624339 e!3151353))

(declare-fun res!2149733 () Bool)

(assert (=> d!1624339 (=> (not res!2149733) (not e!3151353))))

(assert (=> d!1624339 (= res!2149733 (<= 0 i!618))))

(assert (=> d!1624339 (= (splitAtLemma!78 lt!2085559 lt!2085561 i!618) lt!2085625)))

(declare-fun b!5047160 () Bool)

(declare-fun lt!2085627 () tuple2!63270)

(declare-fun call!351720 () tuple2!63270)

(assert (=> b!5047160 (= lt!2085627 call!351720)))

(declare-fun e!3151351 () tuple2!63270)

(declare-fun call!351721 () List!58442)

(assert (=> b!5047160 (= e!3151351 (tuple2!63271 call!351721 (_2!34938 lt!2085627)))))

(declare-fun b!5047161 () Bool)

(assert (=> b!5047161 (= e!3151353 (<= i!618 (+ (size!38941 lt!2085559) (size!38941 lt!2085561))))))

(declare-fun b!5047162 () Bool)

(assert (=> b!5047162 (= e!3151354 (tuple2!63271 lt!2085559 lt!2085561))))

(declare-fun b!5047163 () Bool)

(declare-fun e!3151352 () Int)

(assert (=> b!5047163 (= e!3151352 (- i!618 (size!38941 lt!2085559)))))

(declare-fun b!5047164 () Bool)

(assert (=> b!5047164 (= e!3151352 i!618)))

(declare-fun bm!351715 () Bool)

(declare-fun c!865390 () Bool)

(declare-fun c!865389 () Bool)

(assert (=> bm!351715 (= c!865390 c!865389)))

(assert (=> bm!351715 (= call!351720 (splitAtIndex!223 (ite c!865389 lt!2085559 lt!2085561) e!3151352))))

(declare-fun b!5047165 () Bool)

(assert (=> b!5047165 (= e!3151354 e!3151351)))

(assert (=> b!5047165 (= c!865389 (< i!618 (size!38941 lt!2085559)))))

(declare-fun lt!2085626 () tuple2!63270)

(declare-fun bm!351716 () Bool)

(assert (=> bm!351716 (= call!351721 (++!12745 (ite c!865389 (_2!34938 lt!2085626) lt!2085559) (ite c!865389 lt!2085561 (_1!34938 lt!2085627))))))

(declare-fun b!5047166 () Bool)

(assert (=> b!5047166 (= lt!2085626 call!351720)))

(assert (=> b!5047166 (= e!3151351 (tuple2!63271 (_1!34938 lt!2085626) call!351721))))

(assert (= (and d!1624339 res!2149733) b!5047161))

(assert (= (and d!1624339 c!865391) b!5047162))

(assert (= (and d!1624339 (not c!865391)) b!5047165))

(assert (= (and b!5047165 c!865389) b!5047166))

(assert (= (and b!5047165 (not c!865389)) b!5047160))

(assert (= (or b!5047166 b!5047160) bm!351716))

(assert (= (or b!5047166 b!5047160) bm!351715))

(assert (= (and bm!351715 c!865390) b!5047164))

(assert (= (and bm!351715 (not c!865390)) b!5047163))

(declare-fun m!6082392 () Bool)

(assert (=> bm!351715 m!6082392))

(assert (=> b!5047165 m!6082148))

(declare-fun m!6082394 () Bool)

(assert (=> bm!351716 m!6082394))

(assert (=> d!1624339 m!6082146))

(assert (=> d!1624339 m!6082146))

(assert (=> d!1624339 m!6082154))

(assert (=> d!1624339 m!6082148))

(declare-fun m!6082396 () Bool)

(assert (=> d!1624339 m!6082396))

(assert (=> b!5047161 m!6082148))

(assert (=> b!5047161 m!6082266))

(assert (=> b!5047163 m!6082148))

(assert (=> b!5046890 d!1624339))

(declare-fun b!5047167 () Bool)

(declare-fun e!3151355 () tuple2!63270)

(assert (=> b!5047167 (= e!3151355 (tuple2!63271 Nil!58318 Nil!58318))))

(declare-fun b!5047168 () Bool)

(declare-fun e!3151356 () tuple2!63270)

(assert (=> b!5047168 (= e!3151355 e!3151356)))

(declare-fun c!865393 () Bool)

(assert (=> b!5047168 (= c!865393 (<= (ite c!865305 i!618 (- i!618 lt!2085560)) 0))))

(declare-fun b!5047169 () Bool)

(declare-fun lt!2085628 () tuple2!63270)

(assert (=> b!5047169 (= lt!2085628 (splitAtIndex!223 (t!371063 (ite c!865305 lt!2085559 lt!2085561)) (- (ite c!865305 i!618 (- i!618 lt!2085560)) 1)))))

(assert (=> b!5047169 (= e!3151356 (tuple2!63271 (Cons!58318 (h!64766 (ite c!865305 lt!2085559 lt!2085561)) (_1!34938 lt!2085628)) (_2!34938 lt!2085628)))))

(declare-fun b!5047170 () Bool)

(declare-fun res!2149734 () Bool)

(declare-fun e!3151357 () Bool)

(assert (=> b!5047170 (=> (not res!2149734) (not e!3151357))))

(declare-fun lt!2085629 () tuple2!63270)

(assert (=> b!5047170 (= res!2149734 (= (_1!34938 lt!2085629) (take!839 (ite c!865305 lt!2085559 lt!2085561) (ite c!865305 i!618 (- i!618 lt!2085560)))))))

(declare-fun b!5047171 () Bool)

(assert (=> b!5047171 (= e!3151357 (= (_2!34938 lt!2085629) (drop!2646 (ite c!865305 lt!2085559 lt!2085561) (ite c!865305 i!618 (- i!618 lt!2085560)))))))

(declare-fun d!1624347 () Bool)

(assert (=> d!1624347 e!3151357))

(declare-fun res!2149735 () Bool)

(assert (=> d!1624347 (=> (not res!2149735) (not e!3151357))))

(assert (=> d!1624347 (= res!2149735 (= (++!12745 (_1!34938 lt!2085629) (_2!34938 lt!2085629)) (ite c!865305 lt!2085559 lt!2085561)))))

(assert (=> d!1624347 (= lt!2085629 e!3151355)))

(declare-fun c!865392 () Bool)

(assert (=> d!1624347 (= c!865392 ((_ is Nil!58318) (ite c!865305 lt!2085559 lt!2085561)))))

(assert (=> d!1624347 (= (splitAtIndex!223 (ite c!865305 lt!2085559 lt!2085561) (ite c!865305 i!618 (- i!618 lt!2085560))) lt!2085629)))

(declare-fun b!5047172 () Bool)

(assert (=> b!5047172 (= e!3151356 (tuple2!63271 Nil!58318 (ite c!865305 lt!2085559 lt!2085561)))))

(assert (= (and d!1624347 c!865392) b!5047167))

(assert (= (and d!1624347 (not c!865392)) b!5047168))

(assert (= (and b!5047168 c!865393) b!5047172))

(assert (= (and b!5047168 (not c!865393)) b!5047169))

(assert (= (and d!1624347 res!2149735) b!5047170))

(assert (= (and b!5047170 res!2149734) b!5047171))

(declare-fun m!6082398 () Bool)

(assert (=> b!5047169 m!6082398))

(declare-fun m!6082400 () Bool)

(assert (=> b!5047170 m!6082400))

(declare-fun m!6082402 () Bool)

(assert (=> b!5047171 m!6082402))

(declare-fun m!6082404 () Bool)

(assert (=> d!1624347 m!6082404))

(assert (=> bm!351696 d!1624347))

(declare-fun d!1624349 () Bool)

(declare-fun c!865394 () Bool)

(assert (=> d!1624349 (= c!865394 ((_ is Node!15530) (left!42724 t!4198)))))

(declare-fun e!3151358 () Bool)

(assert (=> d!1624349 (= (inv!77249 (left!42724 t!4198)) e!3151358)))

(declare-fun b!5047173 () Bool)

(assert (=> b!5047173 (= e!3151358 (inv!77253 (left!42724 t!4198)))))

(declare-fun b!5047174 () Bool)

(declare-fun e!3151359 () Bool)

(assert (=> b!5047174 (= e!3151358 e!3151359)))

(declare-fun res!2149736 () Bool)

(assert (=> b!5047174 (= res!2149736 (not ((_ is Leaf!25759) (left!42724 t!4198))))))

(assert (=> b!5047174 (=> res!2149736 e!3151359)))

(declare-fun b!5047175 () Bool)

(assert (=> b!5047175 (= e!3151359 (inv!77254 (left!42724 t!4198)))))

(assert (= (and d!1624349 c!865394) b!5047173))

(assert (= (and d!1624349 (not c!865394)) b!5047174))

(assert (= (and b!5047174 (not res!2149736)) b!5047175))

(declare-fun m!6082406 () Bool)

(assert (=> b!5047173 m!6082406))

(declare-fun m!6082408 () Bool)

(assert (=> b!5047175 m!6082408))

(assert (=> b!5046885 d!1624349))

(declare-fun d!1624351 () Bool)

(declare-fun c!865395 () Bool)

(assert (=> d!1624351 (= c!865395 ((_ is Node!15530) (right!43054 t!4198)))))

(declare-fun e!3151360 () Bool)

(assert (=> d!1624351 (= (inv!77249 (right!43054 t!4198)) e!3151360)))

(declare-fun b!5047176 () Bool)

(assert (=> b!5047176 (= e!3151360 (inv!77253 (right!43054 t!4198)))))

(declare-fun b!5047177 () Bool)

(declare-fun e!3151361 () Bool)

(assert (=> b!5047177 (= e!3151360 e!3151361)))

(declare-fun res!2149737 () Bool)

(assert (=> b!5047177 (= res!2149737 (not ((_ is Leaf!25759) (right!43054 t!4198))))))

(assert (=> b!5047177 (=> res!2149737 e!3151361)))

(declare-fun b!5047178 () Bool)

(assert (=> b!5047178 (= e!3151361 (inv!77254 (right!43054 t!4198)))))

(assert (= (and d!1624351 c!865395) b!5047176))

(assert (= (and d!1624351 (not c!865395)) b!5047177))

(assert (= (and b!5047177 (not res!2149737)) b!5047178))

(declare-fun m!6082410 () Bool)

(assert (=> b!5047176 m!6082410))

(declare-fun m!6082412 () Bool)

(assert (=> b!5047178 m!6082412))

(assert (=> b!5046885 d!1624351))

(declare-fun b!5047183 () Bool)

(declare-fun e!3151364 () Bool)

(declare-fun tp_is_empty!36823 () Bool)

(declare-fun tp!1411813 () Bool)

(assert (=> b!5047183 (= e!3151364 (and tp_is_empty!36823 tp!1411813))))

(assert (=> b!5046884 (= tp!1411795 e!3151364)))

(assert (= (and b!5046884 ((_ is Cons!58318) (innerList!15618 (xs!18858 t!4198)))) b!5047183))

(declare-fun b!5047192 () Bool)

(declare-fun e!3151370 () Bool)

(declare-fun tp!1411820 () Bool)

(declare-fun tp!1411821 () Bool)

(assert (=> b!5047192 (= e!3151370 (and (inv!77249 (left!42724 (left!42724 t!4198))) tp!1411821 (inv!77249 (right!43054 (left!42724 t!4198))) tp!1411820))))

(declare-fun b!5047194 () Bool)

(declare-fun e!3151369 () Bool)

(declare-fun tp!1411822 () Bool)

(assert (=> b!5047194 (= e!3151369 tp!1411822)))

(declare-fun b!5047193 () Bool)

(assert (=> b!5047193 (= e!3151370 (and (inv!77250 (xs!18858 (left!42724 t!4198))) e!3151369))))

(assert (=> b!5046885 (= tp!1411793 (and (inv!77249 (left!42724 t!4198)) e!3151370))))

(assert (= (and b!5046885 ((_ is Node!15530) (left!42724 t!4198))) b!5047192))

(assert (= b!5047193 b!5047194))

(assert (= (and b!5046885 ((_ is Leaf!25759) (left!42724 t!4198))) b!5047193))

(declare-fun m!6082414 () Bool)

(assert (=> b!5047192 m!6082414))

(declare-fun m!6082416 () Bool)

(assert (=> b!5047192 m!6082416))

(declare-fun m!6082418 () Bool)

(assert (=> b!5047193 m!6082418))

(assert (=> b!5046885 m!6082138))

(declare-fun tp!1411824 () Bool)

(declare-fun e!3151372 () Bool)

(declare-fun b!5047195 () Bool)

(declare-fun tp!1411823 () Bool)

(assert (=> b!5047195 (= e!3151372 (and (inv!77249 (left!42724 (right!43054 t!4198))) tp!1411824 (inv!77249 (right!43054 (right!43054 t!4198))) tp!1411823))))

(declare-fun b!5047197 () Bool)

(declare-fun e!3151371 () Bool)

(declare-fun tp!1411825 () Bool)

(assert (=> b!5047197 (= e!3151371 tp!1411825)))

(declare-fun b!5047196 () Bool)

(assert (=> b!5047196 (= e!3151372 (and (inv!77250 (xs!18858 (right!43054 t!4198))) e!3151371))))

(assert (=> b!5046885 (= tp!1411794 (and (inv!77249 (right!43054 t!4198)) e!3151372))))

(assert (= (and b!5046885 ((_ is Node!15530) (right!43054 t!4198))) b!5047195))

(assert (= b!5047196 b!5047197))

(assert (= (and b!5046885 ((_ is Leaf!25759) (right!43054 t!4198))) b!5047196))

(declare-fun m!6082420 () Bool)

(assert (=> b!5047195 m!6082420))

(declare-fun m!6082422 () Bool)

(assert (=> b!5047195 m!6082422))

(declare-fun m!6082424 () Bool)

(assert (=> b!5047196 m!6082424))

(assert (=> b!5046885 m!6082140))

(check-sat (not b!5047195) (not b!5047171) (not b!5047110) (not b!5046959) (not d!1624313) (not b!5046954) (not b!5047073) (not b!5047083) (not b!5046905) (not d!1624311) (not d!1624347) (not b!5047176) tp_is_empty!36823 (not b!5046957) (not d!1624339) (not b!5047192) (not b!5046996) (not b!5046997) (not b!5047193) (not b!5047170) (not b!5047194) (not d!1624309) (not b!5047163) (not b!5047197) (not bm!351716) (not b!5046909) (not d!1624293) (not bm!351699) (not b!5047175) (not b!5047173) (not b!5047161) (not d!1624291) (not b!5047072) (not bm!351715) (not b!5046958) (not b!5047000) (not b!5047042) (not d!1624327) (not b!5046908) (not b!5046970) (not b!5046955) (not b!5046885) (not b!5047082) (not b!5047196) (not b!5047001) (not b!5047183) (not b!5047040) (not b!5047041) (not b!5046956) (not b!5046904) (not b!5047165) (not bm!351700) (not b!5046972) (not b!5047169) (not b!5047178))
(check-sat)
(get-model)

(declare-fun d!1624377 () Bool)

(declare-fun lt!2085637 () Int)

(assert (=> d!1624377 (>= lt!2085637 0)))

(declare-fun e!3151389 () Int)

(assert (=> d!1624377 (= lt!2085637 e!3151389)))

(declare-fun c!865407 () Bool)

(assert (=> d!1624377 (= c!865407 ((_ is Nil!58318) (innerList!15618 (xs!18858 t!4198))))))

(assert (=> d!1624377 (= (size!38941 (innerList!15618 (xs!18858 t!4198))) lt!2085637)))

(declare-fun b!5047230 () Bool)

(assert (=> b!5047230 (= e!3151389 0)))

(declare-fun b!5047231 () Bool)

(assert (=> b!5047231 (= e!3151389 (+ 1 (size!38941 (t!371063 (innerList!15618 (xs!18858 t!4198))))))))

(assert (= (and d!1624377 c!865407) b!5047230))

(assert (= (and d!1624377 (not c!865407)) b!5047231))

(declare-fun m!6082474 () Bool)

(assert (=> b!5047231 m!6082474))

(assert (=> d!1624291 d!1624377))

(declare-fun d!1624379 () Bool)

(declare-fun lt!2085640 () Int)

(assert (=> d!1624379 (>= lt!2085640 0)))

(declare-fun ListPrimitiveSize!384 (List!58442) Int)

(assert (=> d!1624379 (= lt!2085640 (+ 1 (ListPrimitiveSize!384 (innerList!15618 (xs!18858 (right!43054 t!4198))))))))

(assert (=> d!1624379 (= (IArrayPrimitiveSize!36 (xs!18858 (right!43054 t!4198))) lt!2085640)))

(declare-fun bs!1189158 () Bool)

(assert (= bs!1189158 d!1624379))

(declare-fun m!6082476 () Bool)

(assert (=> bs!1189158 m!6082476))

(assert (=> b!5046905 d!1624379))

(declare-fun b!5047238 () Bool)

(declare-fun e!3151392 () tuple2!63270)

(assert (=> b!5047238 (= e!3151392 (tuple2!63271 Nil!58318 Nil!58318))))

(declare-fun b!5047239 () Bool)

(declare-fun e!3151393 () tuple2!63270)

(assert (=> b!5047239 (= e!3151392 e!3151393)))

(declare-fun c!865409 () Bool)

(assert (=> b!5047239 (= c!865409 (<= (- (ite c!865305 i!618 (- i!618 lt!2085560)) 1) 0))))

(declare-fun lt!2085641 () tuple2!63270)

(declare-fun b!5047240 () Bool)

(assert (=> b!5047240 (= lt!2085641 (splitAtIndex!223 (t!371063 (t!371063 (ite c!865305 lt!2085559 lt!2085561))) (- (- (ite c!865305 i!618 (- i!618 lt!2085560)) 1) 1)))))

(assert (=> b!5047240 (= e!3151393 (tuple2!63271 (Cons!58318 (h!64766 (t!371063 (ite c!865305 lt!2085559 lt!2085561))) (_1!34938 lt!2085641)) (_2!34938 lt!2085641)))))

(declare-fun b!5047241 () Bool)

(declare-fun res!2149754 () Bool)

(declare-fun e!3151394 () Bool)

(assert (=> b!5047241 (=> (not res!2149754) (not e!3151394))))

(declare-fun lt!2085642 () tuple2!63270)

(assert (=> b!5047241 (= res!2149754 (= (_1!34938 lt!2085642) (take!839 (t!371063 (ite c!865305 lt!2085559 lt!2085561)) (- (ite c!865305 i!618 (- i!618 lt!2085560)) 1))))))

(declare-fun b!5047242 () Bool)

(assert (=> b!5047242 (= e!3151394 (= (_2!34938 lt!2085642) (drop!2646 (t!371063 (ite c!865305 lt!2085559 lt!2085561)) (- (ite c!865305 i!618 (- i!618 lt!2085560)) 1))))))

(declare-fun d!1624381 () Bool)

(assert (=> d!1624381 e!3151394))

(declare-fun res!2149755 () Bool)

(assert (=> d!1624381 (=> (not res!2149755) (not e!3151394))))

(assert (=> d!1624381 (= res!2149755 (= (++!12745 (_1!34938 lt!2085642) (_2!34938 lt!2085642)) (t!371063 (ite c!865305 lt!2085559 lt!2085561))))))

(assert (=> d!1624381 (= lt!2085642 e!3151392)))

(declare-fun c!865408 () Bool)

(assert (=> d!1624381 (= c!865408 ((_ is Nil!58318) (t!371063 (ite c!865305 lt!2085559 lt!2085561))))))

(assert (=> d!1624381 (= (splitAtIndex!223 (t!371063 (ite c!865305 lt!2085559 lt!2085561)) (- (ite c!865305 i!618 (- i!618 lt!2085560)) 1)) lt!2085642)))

(declare-fun b!5047243 () Bool)

(assert (=> b!5047243 (= e!3151393 (tuple2!63271 Nil!58318 (t!371063 (ite c!865305 lt!2085559 lt!2085561))))))

(assert (= (and d!1624381 c!865408) b!5047238))

(assert (= (and d!1624381 (not c!865408)) b!5047239))

(assert (= (and b!5047239 c!865409) b!5047243))

(assert (= (and b!5047239 (not c!865409)) b!5047240))

(assert (= (and d!1624381 res!2149755) b!5047241))

(assert (= (and b!5047241 res!2149754) b!5047242))

(declare-fun m!6082478 () Bool)

(assert (=> b!5047240 m!6082478))

(declare-fun m!6082480 () Bool)

(assert (=> b!5047241 m!6082480))

(declare-fun m!6082482 () Bool)

(assert (=> b!5047242 m!6082482))

(declare-fun m!6082484 () Bool)

(assert (=> d!1624381 m!6082484))

(assert (=> b!5047169 d!1624381))

(declare-fun e!3151396 () List!58442)

(declare-fun b!5047245 () Bool)

(assert (=> b!5047245 (= e!3151396 (Cons!58318 (h!64766 (ite c!865389 (_2!34938 lt!2085626) lt!2085559)) (++!12745 (t!371063 (ite c!865389 (_2!34938 lt!2085626) lt!2085559)) (ite c!865389 lt!2085561 (_1!34938 lt!2085627)))))))

(declare-fun e!3151395 () Bool)

(declare-fun b!5047247 () Bool)

(declare-fun lt!2085643 () List!58442)

(assert (=> b!5047247 (= e!3151395 (or (not (= (ite c!865389 lt!2085561 (_1!34938 lt!2085627)) Nil!58318)) (= lt!2085643 (ite c!865389 (_2!34938 lt!2085626) lt!2085559))))))

(declare-fun b!5047246 () Bool)

(declare-fun res!2149757 () Bool)

(assert (=> b!5047246 (=> (not res!2149757) (not e!3151395))))

(assert (=> b!5047246 (= res!2149757 (= (size!38941 lt!2085643) (+ (size!38941 (ite c!865389 (_2!34938 lt!2085626) lt!2085559)) (size!38941 (ite c!865389 lt!2085561 (_1!34938 lt!2085627))))))))

(declare-fun b!5047244 () Bool)

(assert (=> b!5047244 (= e!3151396 (ite c!865389 lt!2085561 (_1!34938 lt!2085627)))))

(declare-fun d!1624383 () Bool)

(assert (=> d!1624383 e!3151395))

(declare-fun res!2149756 () Bool)

(assert (=> d!1624383 (=> (not res!2149756) (not e!3151395))))

(assert (=> d!1624383 (= res!2149756 (= (content!10371 lt!2085643) ((_ map or) (content!10371 (ite c!865389 (_2!34938 lt!2085626) lt!2085559)) (content!10371 (ite c!865389 lt!2085561 (_1!34938 lt!2085627))))))))

(assert (=> d!1624383 (= lt!2085643 e!3151396)))

(declare-fun c!865410 () Bool)

(assert (=> d!1624383 (= c!865410 ((_ is Nil!58318) (ite c!865389 (_2!34938 lt!2085626) lt!2085559)))))

(assert (=> d!1624383 (= (++!12745 (ite c!865389 (_2!34938 lt!2085626) lt!2085559) (ite c!865389 lt!2085561 (_1!34938 lt!2085627))) lt!2085643)))

(assert (= (and d!1624383 c!865410) b!5047244))

(assert (= (and d!1624383 (not c!865410)) b!5047245))

(assert (= (and d!1624383 res!2149756) b!5047246))

(assert (= (and b!5047246 res!2149757) b!5047247))

(declare-fun m!6082486 () Bool)

(assert (=> b!5047245 m!6082486))

(declare-fun m!6082488 () Bool)

(assert (=> b!5047246 m!6082488))

(declare-fun m!6082490 () Bool)

(assert (=> b!5047246 m!6082490))

(declare-fun m!6082492 () Bool)

(assert (=> b!5047246 m!6082492))

(declare-fun m!6082494 () Bool)

(assert (=> d!1624383 m!6082494))

(declare-fun m!6082496 () Bool)

(assert (=> d!1624383 m!6082496))

(declare-fun m!6082498 () Bool)

(assert (=> d!1624383 m!6082498))

(assert (=> bm!351716 d!1624383))

(declare-fun d!1624385 () Bool)

(assert (=> d!1624385 (= (height!2109 (left!42724 t!4198)) (ite ((_ is Empty!15530) (left!42724 t!4198)) 0 (ite ((_ is Leaf!25759) (left!42724 t!4198)) 1 (cheight!15741 (left!42724 t!4198)))))))

(assert (=> b!5046958 d!1624385))

(declare-fun d!1624389 () Bool)

(assert (=> d!1624389 (= (height!2109 (right!43054 t!4198)) (ite ((_ is Empty!15530) (right!43054 t!4198)) 0 (ite ((_ is Leaf!25759) (right!43054 t!4198)) 1 (cheight!15741 (right!43054 t!4198)))))))

(assert (=> b!5046958 d!1624389))

(declare-fun b!5047257 () Bool)

(declare-fun e!3151401 () tuple2!63270)

(assert (=> b!5047257 (= e!3151401 (tuple2!63271 Nil!58318 Nil!58318))))

(declare-fun b!5047258 () Bool)

(declare-fun e!3151402 () tuple2!63270)

(assert (=> b!5047258 (= e!3151401 e!3151402)))

(declare-fun c!865414 () Bool)

(assert (=> b!5047258 (= c!865414 (<= e!3151352 0))))

(declare-fun lt!2085646 () tuple2!63270)

(declare-fun b!5047259 () Bool)

(assert (=> b!5047259 (= lt!2085646 (splitAtIndex!223 (t!371063 (ite c!865389 lt!2085559 lt!2085561)) (- e!3151352 1)))))

(assert (=> b!5047259 (= e!3151402 (tuple2!63271 (Cons!58318 (h!64766 (ite c!865389 lt!2085559 lt!2085561)) (_1!34938 lt!2085646)) (_2!34938 lt!2085646)))))

(declare-fun b!5047260 () Bool)

(declare-fun res!2149763 () Bool)

(declare-fun e!3151403 () Bool)

(assert (=> b!5047260 (=> (not res!2149763) (not e!3151403))))

(declare-fun lt!2085647 () tuple2!63270)

(assert (=> b!5047260 (= res!2149763 (= (_1!34938 lt!2085647) (take!839 (ite c!865389 lt!2085559 lt!2085561) e!3151352)))))

(declare-fun b!5047261 () Bool)

(assert (=> b!5047261 (= e!3151403 (= (_2!34938 lt!2085647) (drop!2646 (ite c!865389 lt!2085559 lt!2085561) e!3151352)))))

(declare-fun d!1624391 () Bool)

(assert (=> d!1624391 e!3151403))

(declare-fun res!2149764 () Bool)

(assert (=> d!1624391 (=> (not res!2149764) (not e!3151403))))

(assert (=> d!1624391 (= res!2149764 (= (++!12745 (_1!34938 lt!2085647) (_2!34938 lt!2085647)) (ite c!865389 lt!2085559 lt!2085561)))))

(assert (=> d!1624391 (= lt!2085647 e!3151401)))

(declare-fun c!865413 () Bool)

(assert (=> d!1624391 (= c!865413 ((_ is Nil!58318) (ite c!865389 lt!2085559 lt!2085561)))))

(assert (=> d!1624391 (= (splitAtIndex!223 (ite c!865389 lt!2085559 lt!2085561) e!3151352) lt!2085647)))

(declare-fun b!5047262 () Bool)

(assert (=> b!5047262 (= e!3151402 (tuple2!63271 Nil!58318 (ite c!865389 lt!2085559 lt!2085561)))))

(assert (= (and d!1624391 c!865413) b!5047257))

(assert (= (and d!1624391 (not c!865413)) b!5047258))

(assert (= (and b!5047258 c!865414) b!5047262))

(assert (= (and b!5047258 (not c!865414)) b!5047259))

(assert (= (and d!1624391 res!2149764) b!5047260))

(assert (= (and b!5047260 res!2149763) b!5047261))

(declare-fun m!6082518 () Bool)

(assert (=> b!5047259 m!6082518))

(declare-fun m!6082524 () Bool)

(assert (=> b!5047260 m!6082524))

(declare-fun m!6082526 () Bool)

(assert (=> b!5047261 m!6082526))

(declare-fun m!6082528 () Bool)

(assert (=> d!1624391 m!6082528))

(assert (=> bm!351715 d!1624391))

(declare-fun d!1624397 () Bool)

(assert (=> d!1624397 (= (inv!77250 (xs!18858 (left!42724 t!4198))) (<= (size!38941 (innerList!15618 (xs!18858 (left!42724 t!4198)))) 2147483647))))

(declare-fun bs!1189159 () Bool)

(assert (= bs!1189159 d!1624397))

(declare-fun m!6082530 () Bool)

(assert (=> bs!1189159 m!6082530))

(assert (=> b!5047193 d!1624397))

(assert (=> b!5047161 d!1624329))

(declare-fun d!1624399 () Bool)

(declare-fun lt!2085648 () Int)

(assert (=> d!1624399 (>= lt!2085648 0)))

(declare-fun e!3151408 () Int)

(assert (=> d!1624399 (= lt!2085648 e!3151408)))

(declare-fun c!865417 () Bool)

(assert (=> d!1624399 (= c!865417 ((_ is Nil!58318) lt!2085561))))

(assert (=> d!1624399 (= (size!38941 lt!2085561) lt!2085648)))

(declare-fun b!5047269 () Bool)

(assert (=> b!5047269 (= e!3151408 0)))

(declare-fun b!5047270 () Bool)

(assert (=> b!5047270 (= e!3151408 (+ 1 (size!38941 (t!371063 lt!2085561))))))

(assert (= (and d!1624399 c!865417) b!5047269))

(assert (= (and d!1624399 (not c!865417)) b!5047270))

(declare-fun m!6082536 () Bool)

(assert (=> b!5047270 m!6082536))

(assert (=> b!5047161 d!1624399))

(declare-fun d!1624403 () Bool)

(declare-fun lt!2085651 () Bool)

(declare-fun isEmpty!31562 (List!58442) Bool)

(assert (=> d!1624403 (= lt!2085651 (isEmpty!31562 (list!18945 (right!43054 t!4198))))))

(assert (=> d!1624403 (= lt!2085651 (= (size!38940 (right!43054 t!4198)) 0))))

(assert (=> d!1624403 (= (isEmpty!31561 (right!43054 t!4198)) lt!2085651)))

(declare-fun bs!1189160 () Bool)

(assert (= bs!1189160 d!1624403))

(assert (=> bs!1189160 m!6082156))

(assert (=> bs!1189160 m!6082156))

(declare-fun m!6082550 () Bool)

(assert (=> bs!1189160 m!6082550))

(declare-fun m!6082552 () Bool)

(assert (=> bs!1189160 m!6082552))

(assert (=> b!5046956 d!1624403))

(declare-fun d!1624411 () Bool)

(assert (=> d!1624411 (= (list!18947 (xs!18858 (left!42724 t!4198))) (innerList!15618 (xs!18858 (left!42724 t!4198))))))

(assert (=> b!5047072 d!1624411))

(assert (=> b!5047163 d!1624329))

(declare-fun d!1624413 () Bool)

(declare-fun c!865425 () Bool)

(assert (=> d!1624413 (= c!865425 ((_ is Nil!58318) lt!2085591))))

(declare-fun e!3151416 () (InoxSet T!104306))

(assert (=> d!1624413 (= (content!10371 lt!2085591) e!3151416)))

(declare-fun b!5047285 () Bool)

(assert (=> b!5047285 (= e!3151416 ((as const (Array T!104306 Bool)) false))))

(declare-fun b!5047286 () Bool)

(assert (=> b!5047286 (= e!3151416 ((_ map or) (store ((as const (Array T!104306 Bool)) false) (h!64766 lt!2085591) true) (content!10371 (t!371063 lt!2085591))))))

(assert (= (and d!1624413 c!865425) b!5047285))

(assert (= (and d!1624413 (not c!865425)) b!5047286))

(declare-fun m!6082554 () Bool)

(assert (=> b!5047286 m!6082554))

(declare-fun m!6082556 () Bool)

(assert (=> b!5047286 m!6082556))

(assert (=> d!1624309 d!1624413))

(declare-fun d!1624415 () Bool)

(declare-fun c!865426 () Bool)

(assert (=> d!1624415 (= c!865426 ((_ is Nil!58318) (ite c!865305 (_2!34938 lt!2085564) lt!2085559)))))

(declare-fun e!3151417 () (InoxSet T!104306))

(assert (=> d!1624415 (= (content!10371 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)) e!3151417)))

(declare-fun b!5047287 () Bool)

(assert (=> b!5047287 (= e!3151417 ((as const (Array T!104306 Bool)) false))))

(declare-fun b!5047288 () Bool)

(assert (=> b!5047288 (= e!3151417 ((_ map or) (store ((as const (Array T!104306 Bool)) false) (h!64766 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)) true) (content!10371 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)))))))

(assert (= (and d!1624415 c!865426) b!5047287))

(assert (= (and d!1624415 (not c!865426)) b!5047288))

(declare-fun m!6082560 () Bool)

(assert (=> b!5047288 m!6082560))

(declare-fun m!6082562 () Bool)

(assert (=> b!5047288 m!6082562))

(assert (=> d!1624309 d!1624415))

(declare-fun d!1624419 () Bool)

(declare-fun c!865427 () Bool)

(assert (=> d!1624419 (= c!865427 ((_ is Nil!58318) (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))

(declare-fun e!3151420 () (InoxSet T!104306))

(assert (=> d!1624419 (= (content!10371 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))) e!3151420)))

(declare-fun b!5047295 () Bool)

(assert (=> b!5047295 (= e!3151420 ((as const (Array T!104306 Bool)) false))))

(declare-fun b!5047296 () Bool)

(assert (=> b!5047296 (= e!3151420 ((_ map or) (store ((as const (Array T!104306 Bool)) false) (h!64766 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))) true) (content!10371 (t!371063 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))))

(assert (= (and d!1624419 c!865427) b!5047295))

(assert (= (and d!1624419 (not c!865427)) b!5047296))

(declare-fun m!6082564 () Bool)

(assert (=> b!5047296 m!6082564))

(declare-fun m!6082566 () Bool)

(assert (=> b!5047296 m!6082566))

(assert (=> d!1624309 d!1624419))

(assert (=> d!1624339 d!1624313))

(assert (=> d!1624339 d!1624311))

(assert (=> d!1624339 d!1624329))

(declare-fun b!5047330 () Bool)

(declare-fun lt!2085663 () tuple2!63270)

(declare-fun call!351726 () tuple2!63270)

(assert (=> b!5047330 (= lt!2085663 call!351726)))

(declare-fun e!3151436 () tuple2!63270)

(declare-fun call!351727 () List!58442)

(assert (=> b!5047330 (= e!3151436 (tuple2!63271 call!351727 (_2!34938 lt!2085663)))))

(declare-fun bm!351721 () Bool)

(declare-fun c!865440 () Bool)

(declare-fun c!865439 () Bool)

(assert (=> bm!351721 (= c!865440 c!865439)))

(declare-fun e!3151437 () Int)

(assert (=> bm!351721 (= call!351726 (splitAtIndex!223 (ite c!865439 lt!2085559 lt!2085561) e!3151437))))

(declare-fun b!5047331 () Bool)

(declare-fun e!3151438 () tuple2!63270)

(assert (=> b!5047331 (= e!3151438 e!3151436)))

(assert (=> b!5047331 (= c!865439 (< i!618 (size!38941 lt!2085559)))))

(declare-fun b!5047332 () Bool)

(declare-fun lt!2085664 () tuple2!63270)

(assert (=> b!5047332 (= lt!2085664 call!351726)))

(assert (=> b!5047332 (= e!3151436 (tuple2!63271 (_1!34938 lt!2085664) call!351727))))

(declare-fun b!5047333 () Bool)

(assert (=> b!5047333 (= e!3151438 (tuple2!63271 lt!2085559 lt!2085561))))

(declare-fun bm!351722 () Bool)

(assert (=> bm!351722 (= call!351727 (++!12745 (ite c!865439 (_2!34938 lt!2085664) lt!2085559) (ite c!865439 lt!2085561 (_1!34938 lt!2085663))))))

(declare-fun b!5047334 () Bool)

(assert (=> b!5047334 (= e!3151437 (- i!618 (size!38941 lt!2085559)))))

(declare-fun b!5047335 () Bool)

(assert (=> b!5047335 (= e!3151437 i!618)))

(declare-fun d!1624421 () Bool)

(assert (=> d!1624421 (= (splitAtIndex!223 (++!12745 lt!2085559 lt!2085561) i!618) e!3151438)))

(declare-fun c!865438 () Bool)

(assert (=> d!1624421 (= c!865438 (= (size!38941 lt!2085559) i!618))))

(assert (=> d!1624421 true))

(declare-fun _$9!251 () Unit!149515)

(assert (=> d!1624421 (= (choose!37278 lt!2085559 lt!2085561 i!618) _$9!251)))

(assert (= (and d!1624421 c!865438) b!5047333))

(assert (= (and d!1624421 (not c!865438)) b!5047331))

(assert (= (and b!5047331 c!865439) b!5047332))

(assert (= (and b!5047331 (not c!865439)) b!5047330))

(assert (= (or b!5047332 b!5047330) bm!351722))

(assert (= (or b!5047332 b!5047330) bm!351721))

(assert (= (and bm!351721 c!865440) b!5047335))

(assert (= (and bm!351721 (not c!865440)) b!5047334))

(assert (=> b!5047331 m!6082148))

(declare-fun m!6082608 () Bool)

(assert (=> bm!351721 m!6082608))

(assert (=> d!1624421 m!6082146))

(assert (=> d!1624421 m!6082146))

(assert (=> d!1624421 m!6082154))

(assert (=> d!1624421 m!6082148))

(assert (=> b!5047334 m!6082148))

(declare-fun m!6082610 () Bool)

(assert (=> bm!351722 m!6082610))

(assert (=> d!1624339 d!1624421))

(declare-fun b!5047337 () Bool)

(declare-fun e!3151440 () List!58442)

(assert (=> b!5047337 (= e!3151440 (Cons!58318 (h!64766 (t!371063 lt!2085559)) (++!12745 (t!371063 (t!371063 lt!2085559)) lt!2085561)))))

(declare-fun lt!2085665 () List!58442)

(declare-fun b!5047339 () Bool)

(declare-fun e!3151439 () Bool)

(assert (=> b!5047339 (= e!3151439 (or (not (= lt!2085561 Nil!58318)) (= lt!2085665 (t!371063 lt!2085559))))))

(declare-fun b!5047338 () Bool)

(declare-fun res!2149787 () Bool)

(assert (=> b!5047338 (=> (not res!2149787) (not e!3151439))))

(assert (=> b!5047338 (= res!2149787 (= (size!38941 lt!2085665) (+ (size!38941 (t!371063 lt!2085559)) (size!38941 lt!2085561))))))

(declare-fun b!5047336 () Bool)

(assert (=> b!5047336 (= e!3151440 lt!2085561)))

(declare-fun d!1624437 () Bool)

(assert (=> d!1624437 e!3151439))

(declare-fun res!2149786 () Bool)

(assert (=> d!1624437 (=> (not res!2149786) (not e!3151439))))

(assert (=> d!1624437 (= res!2149786 (= (content!10371 lt!2085665) ((_ map or) (content!10371 (t!371063 lt!2085559)) (content!10371 lt!2085561))))))

(assert (=> d!1624437 (= lt!2085665 e!3151440)))

(declare-fun c!865441 () Bool)

(assert (=> d!1624437 (= c!865441 ((_ is Nil!58318) (t!371063 lt!2085559)))))

(assert (=> d!1624437 (= (++!12745 (t!371063 lt!2085559) lt!2085561) lt!2085665)))

(assert (= (and d!1624437 c!865441) b!5047336))

(assert (= (and d!1624437 (not c!865441)) b!5047337))

(assert (= (and d!1624437 res!2149786) b!5047338))

(assert (= (and b!5047338 res!2149787) b!5047339))

(declare-fun m!6082612 () Bool)

(assert (=> b!5047337 m!6082612))

(declare-fun m!6082614 () Bool)

(assert (=> b!5047338 m!6082614))

(assert (=> b!5047338 m!6082354))

(assert (=> b!5047338 m!6082266))

(declare-fun m!6082616 () Bool)

(assert (=> d!1624437 m!6082616))

(declare-fun m!6082618 () Bool)

(assert (=> d!1624437 m!6082618))

(assert (=> d!1624437 m!6082272))

(assert (=> b!5047000 d!1624437))

(assert (=> b!5046954 d!1624385))

(assert (=> b!5046954 d!1624389))

(declare-fun b!5047385 () Bool)

(declare-fun e!3151468 () Int)

(declare-fun call!351730 () Int)

(assert (=> b!5047385 (= e!3151468 (- call!351730 i!618))))

(declare-fun b!5047386 () Bool)

(declare-fun e!3151470 () Bool)

(declare-fun lt!2085674 () List!58442)

(declare-fun e!3151469 () Int)

(assert (=> b!5047386 (= e!3151470 (= (size!38941 lt!2085674) e!3151469))))

(declare-fun c!865465 () Bool)

(assert (=> b!5047386 (= c!865465 (<= i!618 0))))

(declare-fun d!1624439 () Bool)

(assert (=> d!1624439 e!3151470))

(declare-fun res!2149793 () Bool)

(assert (=> d!1624439 (=> (not res!2149793) (not e!3151470))))

(assert (=> d!1624439 (= res!2149793 (= ((_ map implies) (content!10371 lt!2085674) (content!10371 (++!12745 lt!2085559 lt!2085561))) ((as const (InoxSet T!104306)) true)))))

(declare-fun e!3151466 () List!58442)

(assert (=> d!1624439 (= lt!2085674 e!3151466)))

(declare-fun c!865463 () Bool)

(assert (=> d!1624439 (= c!865463 ((_ is Nil!58318) (++!12745 lt!2085559 lt!2085561)))))

(assert (=> d!1624439 (= (drop!2646 (++!12745 lt!2085559 lt!2085561) i!618) lt!2085674)))

(declare-fun b!5047387 () Bool)

(assert (=> b!5047387 (= e!3151469 e!3151468)))

(declare-fun c!865462 () Bool)

(assert (=> b!5047387 (= c!865462 (>= i!618 call!351730))))

(declare-fun b!5047388 () Bool)

(declare-fun e!3151467 () List!58442)

(assert (=> b!5047388 (= e!3151466 e!3151467)))

(declare-fun c!865464 () Bool)

(assert (=> b!5047388 (= c!865464 (<= i!618 0))))

(declare-fun b!5047389 () Bool)

(assert (=> b!5047389 (= e!3151466 Nil!58318)))

(declare-fun b!5047390 () Bool)

(assert (=> b!5047390 (= e!3151469 call!351730)))

(declare-fun b!5047391 () Bool)

(assert (=> b!5047391 (= e!3151467 (drop!2646 (t!371063 (++!12745 lt!2085559 lt!2085561)) (- i!618 1)))))

(declare-fun b!5047392 () Bool)

(assert (=> b!5047392 (= e!3151467 (++!12745 lt!2085559 lt!2085561))))

(declare-fun bm!351725 () Bool)

(assert (=> bm!351725 (= call!351730 (size!38941 (++!12745 lt!2085559 lt!2085561)))))

(declare-fun b!5047393 () Bool)

(assert (=> b!5047393 (= e!3151468 0)))

(assert (= (and d!1624439 c!865463) b!5047389))

(assert (= (and d!1624439 (not c!865463)) b!5047388))

(assert (= (and b!5047388 c!865464) b!5047392))

(assert (= (and b!5047388 (not c!865464)) b!5047391))

(assert (= (and d!1624439 res!2149793) b!5047386))

(assert (= (and b!5047386 c!865465) b!5047390))

(assert (= (and b!5047386 (not c!865465)) b!5047387))

(assert (= (and b!5047387 c!865462) b!5047393))

(assert (= (and b!5047387 (not c!865462)) b!5047385))

(assert (= (or b!5047390 b!5047387 b!5047385) bm!351725))

(declare-fun m!6082634 () Bool)

(assert (=> b!5047386 m!6082634))

(declare-fun m!6082636 () Bool)

(assert (=> d!1624439 m!6082636))

(assert (=> d!1624439 m!6082146))

(declare-fun m!6082638 () Bool)

(assert (=> d!1624439 m!6082638))

(declare-fun m!6082640 () Bool)

(assert (=> b!5047391 m!6082640))

(assert (=> bm!351725 m!6082146))

(declare-fun m!6082642 () Bool)

(assert (=> bm!351725 m!6082642))

(assert (=> b!5047042 d!1624439))

(declare-fun d!1624449 () Bool)

(declare-fun res!2149802 () Bool)

(declare-fun e!3151479 () Bool)

(assert (=> d!1624449 (=> (not res!2149802) (not e!3151479))))

(assert (=> d!1624449 (= res!2149802 (<= (size!38941 (list!18947 (xs!18858 (right!43054 t!4198)))) 512))))

(assert (=> d!1624449 (= (inv!77254 (right!43054 t!4198)) e!3151479)))

(declare-fun b!5047408 () Bool)

(declare-fun res!2149803 () Bool)

(assert (=> b!5047408 (=> (not res!2149803) (not e!3151479))))

(assert (=> b!5047408 (= res!2149803 (= (csize!31291 (right!43054 t!4198)) (size!38941 (list!18947 (xs!18858 (right!43054 t!4198))))))))

(declare-fun b!5047409 () Bool)

(assert (=> b!5047409 (= e!3151479 (and (> (csize!31291 (right!43054 t!4198)) 0) (<= (csize!31291 (right!43054 t!4198)) 512)))))

(assert (= (and d!1624449 res!2149802) b!5047408))

(assert (= (and b!5047408 res!2149803) b!5047409))

(assert (=> d!1624449 m!6082330))

(assert (=> d!1624449 m!6082330))

(declare-fun m!6082656 () Bool)

(assert (=> d!1624449 m!6082656))

(assert (=> b!5047408 m!6082330))

(assert (=> b!5047408 m!6082330))

(assert (=> b!5047408 m!6082656))

(assert (=> b!5047178 d!1624449))

(declare-fun b!5047411 () Bool)

(declare-fun e!3151481 () List!58442)

(assert (=> b!5047411 (= e!3151481 (Cons!58318 (h!64766 (list!18945 (left!42724 (right!43054 t!4198)))) (++!12745 (t!371063 (list!18945 (left!42724 (right!43054 t!4198)))) (list!18945 (right!43054 (right!43054 t!4198))))))))

(declare-fun b!5047413 () Bool)

(declare-fun e!3151480 () Bool)

(declare-fun lt!2085677 () List!58442)

(assert (=> b!5047413 (= e!3151480 (or (not (= (list!18945 (right!43054 (right!43054 t!4198))) Nil!58318)) (= lt!2085677 (list!18945 (left!42724 (right!43054 t!4198))))))))

(declare-fun b!5047412 () Bool)

(declare-fun res!2149805 () Bool)

(assert (=> b!5047412 (=> (not res!2149805) (not e!3151480))))

(assert (=> b!5047412 (= res!2149805 (= (size!38941 lt!2085677) (+ (size!38941 (list!18945 (left!42724 (right!43054 t!4198)))) (size!38941 (list!18945 (right!43054 (right!43054 t!4198)))))))))

(declare-fun b!5047410 () Bool)

(assert (=> b!5047410 (= e!3151481 (list!18945 (right!43054 (right!43054 t!4198))))))

(declare-fun d!1624459 () Bool)

(assert (=> d!1624459 e!3151480))

(declare-fun res!2149804 () Bool)

(assert (=> d!1624459 (=> (not res!2149804) (not e!3151480))))

(assert (=> d!1624459 (= res!2149804 (= (content!10371 lt!2085677) ((_ map or) (content!10371 (list!18945 (left!42724 (right!43054 t!4198)))) (content!10371 (list!18945 (right!43054 (right!43054 t!4198)))))))))

(assert (=> d!1624459 (= lt!2085677 e!3151481)))

(declare-fun c!865469 () Bool)

(assert (=> d!1624459 (= c!865469 ((_ is Nil!58318) (list!18945 (left!42724 (right!43054 t!4198)))))))

(assert (=> d!1624459 (= (++!12745 (list!18945 (left!42724 (right!43054 t!4198))) (list!18945 (right!43054 (right!43054 t!4198)))) lt!2085677)))

(assert (= (and d!1624459 c!865469) b!5047410))

(assert (= (and d!1624459 (not c!865469)) b!5047411))

(assert (= (and d!1624459 res!2149804) b!5047412))

(assert (= (and b!5047412 res!2149805) b!5047413))

(assert (=> b!5047411 m!6082326))

(declare-fun m!6082658 () Bool)

(assert (=> b!5047411 m!6082658))

(declare-fun m!6082660 () Bool)

(assert (=> b!5047412 m!6082660))

(assert (=> b!5047412 m!6082324))

(declare-fun m!6082662 () Bool)

(assert (=> b!5047412 m!6082662))

(assert (=> b!5047412 m!6082326))

(declare-fun m!6082664 () Bool)

(assert (=> b!5047412 m!6082664))

(declare-fun m!6082666 () Bool)

(assert (=> d!1624459 m!6082666))

(assert (=> d!1624459 m!6082324))

(declare-fun m!6082668 () Bool)

(assert (=> d!1624459 m!6082668))

(assert (=> d!1624459 m!6082326))

(declare-fun m!6082670 () Bool)

(assert (=> d!1624459 m!6082670))

(assert (=> b!5047083 d!1624459))

(declare-fun b!5047417 () Bool)

(declare-fun e!3151483 () List!58442)

(assert (=> b!5047417 (= e!3151483 (++!12745 (list!18945 (left!42724 (left!42724 (right!43054 t!4198)))) (list!18945 (right!43054 (left!42724 (right!43054 t!4198))))))))

(declare-fun d!1624461 () Bool)

(declare-fun c!865470 () Bool)

(assert (=> d!1624461 (= c!865470 ((_ is Empty!15530) (left!42724 (right!43054 t!4198))))))

(declare-fun e!3151482 () List!58442)

(assert (=> d!1624461 (= (list!18945 (left!42724 (right!43054 t!4198))) e!3151482)))

(declare-fun b!5047415 () Bool)

(assert (=> b!5047415 (= e!3151482 e!3151483)))

(declare-fun c!865471 () Bool)

(assert (=> b!5047415 (= c!865471 ((_ is Leaf!25759) (left!42724 (right!43054 t!4198))))))

(declare-fun b!5047416 () Bool)

(assert (=> b!5047416 (= e!3151483 (list!18947 (xs!18858 (left!42724 (right!43054 t!4198)))))))

(declare-fun b!5047414 () Bool)

(assert (=> b!5047414 (= e!3151482 Nil!58318)))

(assert (= (and d!1624461 c!865470) b!5047414))

(assert (= (and d!1624461 (not c!865470)) b!5047415))

(assert (= (and b!5047415 c!865471) b!5047416))

(assert (= (and b!5047415 (not c!865471)) b!5047417))

(declare-fun m!6082672 () Bool)

(assert (=> b!5047417 m!6082672))

(declare-fun m!6082674 () Bool)

(assert (=> b!5047417 m!6082674))

(assert (=> b!5047417 m!6082672))

(assert (=> b!5047417 m!6082674))

(declare-fun m!6082676 () Bool)

(assert (=> b!5047417 m!6082676))

(declare-fun m!6082678 () Bool)

(assert (=> b!5047416 m!6082678))

(assert (=> b!5047083 d!1624461))

(declare-fun b!5047421 () Bool)

(declare-fun e!3151485 () List!58442)

(assert (=> b!5047421 (= e!3151485 (++!12745 (list!18945 (left!42724 (right!43054 (right!43054 t!4198)))) (list!18945 (right!43054 (right!43054 (right!43054 t!4198))))))))

(declare-fun d!1624463 () Bool)

(declare-fun c!865472 () Bool)

(assert (=> d!1624463 (= c!865472 ((_ is Empty!15530) (right!43054 (right!43054 t!4198))))))

(declare-fun e!3151484 () List!58442)

(assert (=> d!1624463 (= (list!18945 (right!43054 (right!43054 t!4198))) e!3151484)))

(declare-fun b!5047419 () Bool)

(assert (=> b!5047419 (= e!3151484 e!3151485)))

(declare-fun c!865473 () Bool)

(assert (=> b!5047419 (= c!865473 ((_ is Leaf!25759) (right!43054 (right!43054 t!4198))))))

(declare-fun b!5047420 () Bool)

(assert (=> b!5047420 (= e!3151485 (list!18947 (xs!18858 (right!43054 (right!43054 t!4198)))))))

(declare-fun b!5047418 () Bool)

(assert (=> b!5047418 (= e!3151484 Nil!58318)))

(assert (= (and d!1624463 c!865472) b!5047418))

(assert (= (and d!1624463 (not c!865472)) b!5047419))

(assert (= (and b!5047419 c!865473) b!5047420))

(assert (= (and b!5047419 (not c!865473)) b!5047421))

(declare-fun m!6082680 () Bool)

(assert (=> b!5047421 m!6082680))

(declare-fun m!6082682 () Bool)

(assert (=> b!5047421 m!6082682))

(assert (=> b!5047421 m!6082680))

(assert (=> b!5047421 m!6082682))

(declare-fun m!6082684 () Bool)

(assert (=> b!5047421 m!6082684))

(declare-fun m!6082686 () Bool)

(assert (=> b!5047420 m!6082686))

(assert (=> b!5047083 d!1624463))

(declare-fun b!5047430 () Bool)

(declare-fun e!3151490 () tuple2!63270)

(assert (=> b!5047430 (= e!3151490 (tuple2!63271 Nil!58318 Nil!58318))))

(declare-fun b!5047431 () Bool)

(declare-fun e!3151491 () tuple2!63270)

(assert (=> b!5047431 (= e!3151490 e!3151491)))

(declare-fun c!865479 () Bool)

(assert (=> b!5047431 (= c!865479 (<= (- i!618 1) 0))))

(declare-fun lt!2085680 () tuple2!63270)

(declare-fun b!5047432 () Bool)

(assert (=> b!5047432 (= lt!2085680 (splitAtIndex!223 (t!371063 (t!371063 (++!12745 lt!2085559 lt!2085561))) (- (- i!618 1) 1)))))

(assert (=> b!5047432 (= e!3151491 (tuple2!63271 (Cons!58318 (h!64766 (t!371063 (++!12745 lt!2085559 lt!2085561))) (_1!34938 lt!2085680)) (_2!34938 lt!2085680)))))

(declare-fun b!5047433 () Bool)

(declare-fun res!2149806 () Bool)

(declare-fun e!3151492 () Bool)

(assert (=> b!5047433 (=> (not res!2149806) (not e!3151492))))

(declare-fun lt!2085681 () tuple2!63270)

(assert (=> b!5047433 (= res!2149806 (= (_1!34938 lt!2085681) (take!839 (t!371063 (++!12745 lt!2085559 lt!2085561)) (- i!618 1))))))

(declare-fun b!5047434 () Bool)

(assert (=> b!5047434 (= e!3151492 (= (_2!34938 lt!2085681) (drop!2646 (t!371063 (++!12745 lt!2085559 lt!2085561)) (- i!618 1))))))

(declare-fun d!1624465 () Bool)

(assert (=> d!1624465 e!3151492))

(declare-fun res!2149807 () Bool)

(assert (=> d!1624465 (=> (not res!2149807) (not e!3151492))))

(assert (=> d!1624465 (= res!2149807 (= (++!12745 (_1!34938 lt!2085681) (_2!34938 lt!2085681)) (t!371063 (++!12745 lt!2085559 lt!2085561))))))

(assert (=> d!1624465 (= lt!2085681 e!3151490)))

(declare-fun c!865478 () Bool)

(assert (=> d!1624465 (= c!865478 ((_ is Nil!58318) (t!371063 (++!12745 lt!2085559 lt!2085561))))))

(assert (=> d!1624465 (= (splitAtIndex!223 (t!371063 (++!12745 lt!2085559 lt!2085561)) (- i!618 1)) lt!2085681)))

(declare-fun b!5047435 () Bool)

(assert (=> b!5047435 (= e!3151491 (tuple2!63271 Nil!58318 (t!371063 (++!12745 lt!2085559 lt!2085561))))))

(assert (= (and d!1624465 c!865478) b!5047430))

(assert (= (and d!1624465 (not c!865478)) b!5047431))

(assert (= (and b!5047431 c!865479) b!5047435))

(assert (= (and b!5047431 (not c!865479)) b!5047432))

(assert (= (and d!1624465 res!2149807) b!5047433))

(assert (= (and b!5047433 res!2149806) b!5047434))

(declare-fun m!6082688 () Bool)

(assert (=> b!5047432 m!6082688))

(declare-fun m!6082690 () Bool)

(assert (=> b!5047433 m!6082690))

(assert (=> b!5047434 m!6082640))

(declare-fun m!6082692 () Bool)

(assert (=> d!1624465 m!6082692))

(assert (=> b!5047040 d!1624465))

(declare-fun b!5047447 () Bool)

(declare-fun e!3151500 () List!58442)

(assert (=> b!5047447 (= e!3151500 (Cons!58318 (h!64766 (_1!34938 lt!2085605)) (++!12745 (t!371063 (_1!34938 lt!2085605)) (_2!34938 lt!2085605))))))

(declare-fun b!5047449 () Bool)

(declare-fun e!3151497 () Bool)

(declare-fun lt!2085682 () List!58442)

(assert (=> b!5047449 (= e!3151497 (or (not (= (_2!34938 lt!2085605) Nil!58318)) (= lt!2085682 (_1!34938 lt!2085605))))))

(declare-fun b!5047448 () Bool)

(declare-fun res!2149811 () Bool)

(assert (=> b!5047448 (=> (not res!2149811) (not e!3151497))))

(assert (=> b!5047448 (= res!2149811 (= (size!38941 lt!2085682) (+ (size!38941 (_1!34938 lt!2085605)) (size!38941 (_2!34938 lt!2085605)))))))

(declare-fun b!5047446 () Bool)

(assert (=> b!5047446 (= e!3151500 (_2!34938 lt!2085605))))

(declare-fun d!1624467 () Bool)

(assert (=> d!1624467 e!3151497))

(declare-fun res!2149810 () Bool)

(assert (=> d!1624467 (=> (not res!2149810) (not e!3151497))))

(assert (=> d!1624467 (= res!2149810 (= (content!10371 lt!2085682) ((_ map or) (content!10371 (_1!34938 lt!2085605)) (content!10371 (_2!34938 lt!2085605)))))))

(assert (=> d!1624467 (= lt!2085682 e!3151500)))

(declare-fun c!865484 () Bool)

(assert (=> d!1624467 (= c!865484 ((_ is Nil!58318) (_1!34938 lt!2085605)))))

(assert (=> d!1624467 (= (++!12745 (_1!34938 lt!2085605) (_2!34938 lt!2085605)) lt!2085682)))

(assert (= (and d!1624467 c!865484) b!5047446))

(assert (= (and d!1624467 (not c!865484)) b!5047447))

(assert (= (and d!1624467 res!2149810) b!5047448))

(assert (= (and b!5047448 res!2149811) b!5047449))

(declare-fun m!6082694 () Bool)

(assert (=> b!5047447 m!6082694))

(declare-fun m!6082696 () Bool)

(assert (=> b!5047448 m!6082696))

(declare-fun m!6082698 () Bool)

(assert (=> b!5047448 m!6082698))

(declare-fun m!6082700 () Bool)

(assert (=> b!5047448 m!6082700))

(declare-fun m!6082702 () Bool)

(assert (=> d!1624467 m!6082702))

(declare-fun m!6082704 () Bool)

(assert (=> d!1624467 m!6082704))

(declare-fun m!6082706 () Bool)

(assert (=> d!1624467 m!6082706))

(assert (=> d!1624313 d!1624467))

(declare-fun e!3151502 () List!58442)

(declare-fun b!5047451 () Bool)

(assert (=> b!5047451 (= e!3151502 (Cons!58318 (h!64766 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559))) (++!12745 (t!371063 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559))) (ite c!865305 lt!2085561 (_1!34938 lt!2085565)))))))

(declare-fun e!3151501 () Bool)

(declare-fun b!5047453 () Bool)

(declare-fun lt!2085683 () List!58442)

(assert (=> b!5047453 (= e!3151501 (or (not (= (ite c!865305 lt!2085561 (_1!34938 lt!2085565)) Nil!58318)) (= lt!2085683 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)))))))

(declare-fun b!5047452 () Bool)

(declare-fun res!2149813 () Bool)

(assert (=> b!5047452 (=> (not res!2149813) (not e!3151501))))

(assert (=> b!5047452 (= res!2149813 (= (size!38941 lt!2085683) (+ (size!38941 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559))) (size!38941 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))))

(declare-fun b!5047450 () Bool)

(assert (=> b!5047450 (= e!3151502 (ite c!865305 lt!2085561 (_1!34938 lt!2085565)))))

(declare-fun d!1624469 () Bool)

(assert (=> d!1624469 e!3151501))

(declare-fun res!2149812 () Bool)

(assert (=> d!1624469 (=> (not res!2149812) (not e!3151501))))

(assert (=> d!1624469 (= res!2149812 (= (content!10371 lt!2085683) ((_ map or) (content!10371 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559))) (content!10371 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))))

(assert (=> d!1624469 (= lt!2085683 e!3151502)))

(declare-fun c!865485 () Bool)

(assert (=> d!1624469 (= c!865485 ((_ is Nil!58318) (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559))))))

(assert (=> d!1624469 (= (++!12745 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)) (ite c!865305 lt!2085561 (_1!34938 lt!2085565))) lt!2085683)))

(assert (= (and d!1624469 c!865485) b!5047450))

(assert (= (and d!1624469 (not c!865485)) b!5047451))

(assert (= (and d!1624469 res!2149812) b!5047452))

(assert (= (and b!5047452 res!2149813) b!5047453))

(declare-fun m!6082708 () Bool)

(assert (=> b!5047451 m!6082708))

(declare-fun m!6082710 () Bool)

(assert (=> b!5047452 m!6082710))

(declare-fun m!6082712 () Bool)

(assert (=> b!5047452 m!6082712))

(assert (=> b!5047452 m!6082254))

(declare-fun m!6082714 () Bool)

(assert (=> d!1624469 m!6082714))

(assert (=> d!1624469 m!6082562))

(assert (=> d!1624469 m!6082260))

(assert (=> b!5046996 d!1624469))

(declare-fun d!1624471 () Bool)

(declare-fun res!2149823 () Bool)

(declare-fun e!3151516 () Bool)

(assert (=> d!1624471 (=> (not res!2149823) (not e!3151516))))

(assert (=> d!1624471 (= res!2149823 (= (csize!31290 (right!43054 t!4198)) (+ (size!38940 (left!42724 (right!43054 t!4198))) (size!38940 (right!43054 (right!43054 t!4198))))))))

(assert (=> d!1624471 (= (inv!77253 (right!43054 t!4198)) e!3151516)))

(declare-fun b!5047481 () Bool)

(declare-fun res!2149824 () Bool)

(assert (=> b!5047481 (=> (not res!2149824) (not e!3151516))))

(assert (=> b!5047481 (= res!2149824 (and (not (= (left!42724 (right!43054 t!4198)) Empty!15530)) (not (= (right!43054 (right!43054 t!4198)) Empty!15530))))))

(declare-fun b!5047482 () Bool)

(declare-fun res!2149825 () Bool)

(assert (=> b!5047482 (=> (not res!2149825) (not e!3151516))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5047482 (= res!2149825 (= (cheight!15741 (right!43054 t!4198)) (+ (max!0 (height!2109 (left!42724 (right!43054 t!4198))) (height!2109 (right!43054 (right!43054 t!4198)))) 1)))))

(declare-fun b!5047483 () Bool)

(assert (=> b!5047483 (= e!3151516 (<= 0 (cheight!15741 (right!43054 t!4198))))))

(assert (= (and d!1624471 res!2149823) b!5047481))

(assert (= (and b!5047481 res!2149824) b!5047482))

(assert (= (and b!5047482 res!2149825) b!5047483))

(declare-fun m!6082754 () Bool)

(assert (=> d!1624471 m!6082754))

(declare-fun m!6082758 () Bool)

(assert (=> d!1624471 m!6082758))

(declare-fun m!6082760 () Bool)

(assert (=> b!5047482 m!6082760))

(declare-fun m!6082762 () Bool)

(assert (=> b!5047482 m!6082762))

(assert (=> b!5047482 m!6082760))

(assert (=> b!5047482 m!6082762))

(declare-fun m!6082764 () Bool)

(assert (=> b!5047482 m!6082764))

(assert (=> b!5047176 d!1624471))

(declare-fun b!5047484 () Bool)

(declare-fun call!351734 () Int)

(declare-fun e!3151519 () Int)

(assert (=> b!5047484 (= e!3151519 (- call!351734 (ite c!865305 i!618 (- i!618 lt!2085560))))))

(declare-fun b!5047485 () Bool)

(declare-fun e!3151521 () Bool)

(declare-fun lt!2085687 () List!58442)

(declare-fun e!3151520 () Int)

(assert (=> b!5047485 (= e!3151521 (= (size!38941 lt!2085687) e!3151520))))

(declare-fun c!865498 () Bool)

(assert (=> b!5047485 (= c!865498 (<= (ite c!865305 i!618 (- i!618 lt!2085560)) 0))))

(declare-fun d!1624483 () Bool)

(assert (=> d!1624483 e!3151521))

(declare-fun res!2149826 () Bool)

(assert (=> d!1624483 (=> (not res!2149826) (not e!3151521))))

(assert (=> d!1624483 (= res!2149826 (= ((_ map implies) (content!10371 lt!2085687) (content!10371 (ite c!865305 lt!2085559 lt!2085561))) ((as const (InoxSet T!104306)) true)))))

(declare-fun e!3151517 () List!58442)

(assert (=> d!1624483 (= lt!2085687 e!3151517)))

(declare-fun c!865496 () Bool)

(assert (=> d!1624483 (= c!865496 ((_ is Nil!58318) (ite c!865305 lt!2085559 lt!2085561)))))

(assert (=> d!1624483 (= (drop!2646 (ite c!865305 lt!2085559 lt!2085561) (ite c!865305 i!618 (- i!618 lt!2085560))) lt!2085687)))

(declare-fun b!5047486 () Bool)

(assert (=> b!5047486 (= e!3151520 e!3151519)))

(declare-fun c!865495 () Bool)

(assert (=> b!5047486 (= c!865495 (>= (ite c!865305 i!618 (- i!618 lt!2085560)) call!351734))))

(declare-fun b!5047487 () Bool)

(declare-fun e!3151518 () List!58442)

(assert (=> b!5047487 (= e!3151517 e!3151518)))

(declare-fun c!865497 () Bool)

(assert (=> b!5047487 (= c!865497 (<= (ite c!865305 i!618 (- i!618 lt!2085560)) 0))))

(declare-fun b!5047488 () Bool)

(assert (=> b!5047488 (= e!3151517 Nil!58318)))

(declare-fun b!5047489 () Bool)

(assert (=> b!5047489 (= e!3151520 call!351734)))

(declare-fun b!5047490 () Bool)

(assert (=> b!5047490 (= e!3151518 (drop!2646 (t!371063 (ite c!865305 lt!2085559 lt!2085561)) (- (ite c!865305 i!618 (- i!618 lt!2085560)) 1)))))

(declare-fun b!5047491 () Bool)

(assert (=> b!5047491 (= e!3151518 (ite c!865305 lt!2085559 lt!2085561))))

(declare-fun bm!351729 () Bool)

(assert (=> bm!351729 (= call!351734 (size!38941 (ite c!865305 lt!2085559 lt!2085561)))))

(declare-fun b!5047492 () Bool)

(assert (=> b!5047492 (= e!3151519 0)))

(assert (= (and d!1624483 c!865496) b!5047488))

(assert (= (and d!1624483 (not c!865496)) b!5047487))

(assert (= (and b!5047487 c!865497) b!5047491))

(assert (= (and b!5047487 (not c!865497)) b!5047490))

(assert (= (and d!1624483 res!2149826) b!5047485))

(assert (= (and b!5047485 c!865498) b!5047489))

(assert (= (and b!5047485 (not c!865498)) b!5047486))

(assert (= (and b!5047486 c!865495) b!5047492))

(assert (= (and b!5047486 (not c!865495)) b!5047484))

(assert (= (or b!5047489 b!5047486 b!5047484) bm!351729))

(declare-fun m!6082766 () Bool)

(assert (=> b!5047485 m!6082766))

(declare-fun m!6082768 () Bool)

(assert (=> d!1624483 m!6082768))

(declare-fun m!6082770 () Bool)

(assert (=> d!1624483 m!6082770))

(assert (=> b!5047490 m!6082482))

(declare-fun m!6082772 () Bool)

(assert (=> bm!351729 m!6082772))

(assert (=> b!5047171 d!1624483))

(declare-fun d!1624485 () Bool)

(declare-fun lt!2085688 () Int)

(assert (=> d!1624485 (>= lt!2085688 0)))

(assert (=> d!1624485 (= lt!2085688 (+ 1 (ListPrimitiveSize!384 (innerList!15618 (xs!18858 t!4198)))))))

(assert (=> d!1624485 (= (IArrayPrimitiveSize!36 (xs!18858 t!4198)) lt!2085688)))

(declare-fun bs!1189164 () Bool)

(assert (= bs!1189164 d!1624485))

(declare-fun m!6082774 () Bool)

(assert (=> bs!1189164 m!6082774))

(assert (=> b!5046909 d!1624485))

(assert (=> b!5047165 d!1624329))

(declare-fun b!5047493 () Bool)

(declare-fun e!3151523 () Int)

(declare-fun call!351735 () Int)

(assert (=> b!5047493 (= e!3151523 (+ 1 (ConcPrimitiveSize!38 (left!42724 (left!42724 (right!43054 t!4198)))) (ConcPrimitiveSize!38 (right!43054 (left!42724 (right!43054 t!4198)))) (BigIntAbs!0 (csize!31290 (left!42724 (right!43054 t!4198)))) call!351735))))

(declare-fun b!5047494 () Bool)

(declare-fun e!3151522 () Int)

(assert (=> b!5047494 (= e!3151522 (+ 1 (IArrayPrimitiveSize!36 (xs!18858 (left!42724 (right!43054 t!4198)))) call!351735))))

(declare-fun d!1624487 () Bool)

(declare-fun lt!2085689 () Int)

(assert (=> d!1624487 (>= lt!2085689 0)))

(assert (=> d!1624487 (= lt!2085689 e!3151523)))

(declare-fun c!865499 () Bool)

(assert (=> d!1624487 (= c!865499 ((_ is Node!15530) (left!42724 (right!43054 t!4198))))))

(assert (=> d!1624487 (= (ConcPrimitiveSize!38 (left!42724 (right!43054 t!4198))) lt!2085689)))

(declare-fun b!5047495 () Bool)

(assert (=> b!5047495 (= e!3151523 e!3151522)))

(declare-fun c!865500 () Bool)

(assert (=> b!5047495 (= c!865500 ((_ is Leaf!25759) (left!42724 (right!43054 t!4198))))))

(declare-fun b!5047496 () Bool)

(assert (=> b!5047496 (= e!3151522 0)))

(declare-fun bm!351730 () Bool)

(assert (=> bm!351730 (= call!351735 (BigIntAbs!0 (ite c!865499 (cheight!15741 (left!42724 (right!43054 t!4198))) (csize!31291 (left!42724 (right!43054 t!4198))))))))

(assert (= (and d!1624487 c!865499) b!5047493))

(assert (= (and d!1624487 (not c!865499)) b!5047495))

(assert (= (and b!5047495 c!865500) b!5047494))

(assert (= (and b!5047495 (not c!865500)) b!5047496))

(assert (= (or b!5047493 b!5047494) bm!351730))

(declare-fun m!6082776 () Bool)

(assert (=> b!5047493 m!6082776))

(declare-fun m!6082778 () Bool)

(assert (=> b!5047493 m!6082778))

(declare-fun m!6082780 () Bool)

(assert (=> b!5047493 m!6082780))

(declare-fun m!6082782 () Bool)

(assert (=> b!5047494 m!6082782))

(declare-fun m!6082784 () Bool)

(assert (=> bm!351730 m!6082784))

(assert (=> b!5046904 d!1624487))

(declare-fun b!5047497 () Bool)

(declare-fun e!3151525 () Int)

(declare-fun call!351736 () Int)

(assert (=> b!5047497 (= e!3151525 (+ 1 (ConcPrimitiveSize!38 (left!42724 (right!43054 (right!43054 t!4198)))) (ConcPrimitiveSize!38 (right!43054 (right!43054 (right!43054 t!4198)))) (BigIntAbs!0 (csize!31290 (right!43054 (right!43054 t!4198)))) call!351736))))

(declare-fun b!5047498 () Bool)

(declare-fun e!3151524 () Int)

(assert (=> b!5047498 (= e!3151524 (+ 1 (IArrayPrimitiveSize!36 (xs!18858 (right!43054 (right!43054 t!4198)))) call!351736))))

(declare-fun d!1624489 () Bool)

(declare-fun lt!2085690 () Int)

(assert (=> d!1624489 (>= lt!2085690 0)))

(assert (=> d!1624489 (= lt!2085690 e!3151525)))

(declare-fun c!865501 () Bool)

(assert (=> d!1624489 (= c!865501 ((_ is Node!15530) (right!43054 (right!43054 t!4198))))))

(assert (=> d!1624489 (= (ConcPrimitiveSize!38 (right!43054 (right!43054 t!4198))) lt!2085690)))

(declare-fun b!5047499 () Bool)

(assert (=> b!5047499 (= e!3151525 e!3151524)))

(declare-fun c!865502 () Bool)

(assert (=> b!5047499 (= c!865502 ((_ is Leaf!25759) (right!43054 (right!43054 t!4198))))))

(declare-fun b!5047500 () Bool)

(assert (=> b!5047500 (= e!3151524 0)))

(declare-fun bm!351731 () Bool)

(assert (=> bm!351731 (= call!351736 (BigIntAbs!0 (ite c!865501 (cheight!15741 (right!43054 (right!43054 t!4198))) (csize!31291 (right!43054 (right!43054 t!4198))))))))

(assert (= (and d!1624489 c!865501) b!5047497))

(assert (= (and d!1624489 (not c!865501)) b!5047499))

(assert (= (and b!5047499 c!865502) b!5047498))

(assert (= (and b!5047499 (not c!865502)) b!5047500))

(assert (= (or b!5047497 b!5047498) bm!351731))

(declare-fun m!6082786 () Bool)

(assert (=> b!5047497 m!6082786))

(declare-fun m!6082788 () Bool)

(assert (=> b!5047497 m!6082788))

(declare-fun m!6082790 () Bool)

(assert (=> b!5047497 m!6082790))

(declare-fun m!6082792 () Bool)

(assert (=> b!5047498 m!6082792))

(declare-fun m!6082794 () Bool)

(assert (=> bm!351731 m!6082794))

(assert (=> b!5046904 d!1624489))

(declare-fun d!1624491 () Bool)

(assert (=> d!1624491 (= (BigIntAbs!0 (csize!31290 (right!43054 t!4198))) (ite (>= (csize!31290 (right!43054 t!4198)) 0) (csize!31290 (right!43054 t!4198)) (- (csize!31290 (right!43054 t!4198)))))))

(assert (=> b!5046904 d!1624491))

(declare-fun b!5047501 () Bool)

(declare-fun e!3151527 () Int)

(declare-fun call!351737 () Int)

(assert (=> b!5047501 (= e!3151527 (+ 1 (ConcPrimitiveSize!38 (left!42724 (left!42724 t!4198))) (ConcPrimitiveSize!38 (right!43054 (left!42724 t!4198))) (BigIntAbs!0 (csize!31290 (left!42724 t!4198))) call!351737))))

(declare-fun b!5047502 () Bool)

(declare-fun e!3151526 () Int)

(assert (=> b!5047502 (= e!3151526 (+ 1 (IArrayPrimitiveSize!36 (xs!18858 (left!42724 t!4198))) call!351737))))

(declare-fun d!1624493 () Bool)

(declare-fun lt!2085691 () Int)

(assert (=> d!1624493 (>= lt!2085691 0)))

(assert (=> d!1624493 (= lt!2085691 e!3151527)))

(declare-fun c!865503 () Bool)

(assert (=> d!1624493 (= c!865503 ((_ is Node!15530) (left!42724 t!4198)))))

(assert (=> d!1624493 (= (ConcPrimitiveSize!38 (left!42724 t!4198)) lt!2085691)))

(declare-fun b!5047503 () Bool)

(assert (=> b!5047503 (= e!3151527 e!3151526)))

(declare-fun c!865504 () Bool)

(assert (=> b!5047503 (= c!865504 ((_ is Leaf!25759) (left!42724 t!4198)))))

(declare-fun b!5047504 () Bool)

(assert (=> b!5047504 (= e!3151526 0)))

(declare-fun bm!351732 () Bool)

(assert (=> bm!351732 (= call!351737 (BigIntAbs!0 (ite c!865503 (cheight!15741 (left!42724 t!4198)) (csize!31291 (left!42724 t!4198)))))))

(assert (= (and d!1624493 c!865503) b!5047501))

(assert (= (and d!1624493 (not c!865503)) b!5047503))

(assert (= (and b!5047503 c!865504) b!5047502))

(assert (= (and b!5047503 (not c!865504)) b!5047504))

(assert (= (or b!5047501 b!5047502) bm!351732))

(declare-fun m!6082796 () Bool)

(assert (=> b!5047501 m!6082796))

(declare-fun m!6082798 () Bool)

(assert (=> b!5047501 m!6082798))

(declare-fun m!6082800 () Bool)

(assert (=> b!5047501 m!6082800))

(declare-fun m!6082802 () Bool)

(assert (=> b!5047502 m!6082802))

(declare-fun m!6082804 () Bool)

(assert (=> bm!351732 m!6082804))

(assert (=> b!5046908 d!1624493))

(assert (=> b!5046908 d!1624285))

(declare-fun d!1624495 () Bool)

(assert (=> d!1624495 (= (BigIntAbs!0 (csize!31290 t!4198)) (ite (>= (csize!31290 t!4198) 0) (csize!31290 t!4198) (- (csize!31290 t!4198))))))

(assert (=> b!5046908 d!1624495))

(declare-fun b!5047540 () Bool)

(declare-fun e!3151549 () Int)

(assert (=> b!5047540 (= e!3151549 (size!38941 (ite c!865305 lt!2085559 lt!2085561)))))

(declare-fun b!5047541 () Bool)

(declare-fun e!3151547 () Int)

(assert (=> b!5047541 (= e!3151547 e!3151549)))

(declare-fun c!865520 () Bool)

(assert (=> b!5047541 (= c!865520 (>= (ite c!865305 i!618 (- i!618 lt!2085560)) (size!38941 (ite c!865305 lt!2085559 lt!2085561))))))

(declare-fun b!5047542 () Bool)

(declare-fun e!3151546 () List!58442)

(assert (=> b!5047542 (= e!3151546 Nil!58318)))

(declare-fun b!5047543 () Bool)

(assert (=> b!5047543 (= e!3151549 (ite c!865305 i!618 (- i!618 lt!2085560)))))

(declare-fun d!1624497 () Bool)

(declare-fun e!3151548 () Bool)

(assert (=> d!1624497 e!3151548))

(declare-fun res!2149832 () Bool)

(assert (=> d!1624497 (=> (not res!2149832) (not e!3151548))))

(declare-fun lt!2085700 () List!58442)

(assert (=> d!1624497 (= res!2149832 (= ((_ map implies) (content!10371 lt!2085700) (content!10371 (ite c!865305 lt!2085559 lt!2085561))) ((as const (InoxSet T!104306)) true)))))

(assert (=> d!1624497 (= lt!2085700 e!3151546)))

(declare-fun c!865522 () Bool)

(assert (=> d!1624497 (= c!865522 (or ((_ is Nil!58318) (ite c!865305 lt!2085559 lt!2085561)) (<= (ite c!865305 i!618 (- i!618 lt!2085560)) 0)))))

(assert (=> d!1624497 (= (take!839 (ite c!865305 lt!2085559 lt!2085561) (ite c!865305 i!618 (- i!618 lt!2085560))) lt!2085700)))

(declare-fun b!5047544 () Bool)

(assert (=> b!5047544 (= e!3151547 0)))

(declare-fun b!5047545 () Bool)

(assert (=> b!5047545 (= e!3151548 (= (size!38941 lt!2085700) e!3151547))))

(declare-fun c!865521 () Bool)

(assert (=> b!5047545 (= c!865521 (<= (ite c!865305 i!618 (- i!618 lt!2085560)) 0))))

(declare-fun b!5047546 () Bool)

(assert (=> b!5047546 (= e!3151546 (Cons!58318 (h!64766 (ite c!865305 lt!2085559 lt!2085561)) (take!839 (t!371063 (ite c!865305 lt!2085559 lt!2085561)) (- (ite c!865305 i!618 (- i!618 lt!2085560)) 1))))))

(assert (= (and d!1624497 c!865522) b!5047542))

(assert (= (and d!1624497 (not c!865522)) b!5047546))

(assert (= (and d!1624497 res!2149832) b!5047545))

(assert (= (and b!5047545 c!865521) b!5047544))

(assert (= (and b!5047545 (not c!865521)) b!5047541))

(assert (= (and b!5047541 c!865520) b!5047540))

(assert (= (and b!5047541 (not c!865520)) b!5047543))

(declare-fun m!6082820 () Bool)

(assert (=> b!5047545 m!6082820))

(declare-fun m!6082824 () Bool)

(assert (=> d!1624497 m!6082824))

(assert (=> d!1624497 m!6082770))

(assert (=> b!5047540 m!6082772))

(assert (=> b!5047546 m!6082480))

(assert (=> b!5047541 m!6082772))

(assert (=> b!5047170 d!1624497))

(declare-fun d!1624507 () Bool)

(declare-fun res!2149833 () Bool)

(declare-fun e!3151553 () Bool)

(assert (=> d!1624507 (=> (not res!2149833) (not e!3151553))))

(assert (=> d!1624507 (= res!2149833 (= (csize!31290 (left!42724 t!4198)) (+ (size!38940 (left!42724 (left!42724 t!4198))) (size!38940 (right!43054 (left!42724 t!4198))))))))

(assert (=> d!1624507 (= (inv!77253 (left!42724 t!4198)) e!3151553)))

(declare-fun b!5047553 () Bool)

(declare-fun res!2149834 () Bool)

(assert (=> b!5047553 (=> (not res!2149834) (not e!3151553))))

(assert (=> b!5047553 (= res!2149834 (and (not (= (left!42724 (left!42724 t!4198)) Empty!15530)) (not (= (right!43054 (left!42724 t!4198)) Empty!15530))))))

(declare-fun b!5047554 () Bool)

(declare-fun res!2149835 () Bool)

(assert (=> b!5047554 (=> (not res!2149835) (not e!3151553))))

(assert (=> b!5047554 (= res!2149835 (= (cheight!15741 (left!42724 t!4198)) (+ (max!0 (height!2109 (left!42724 (left!42724 t!4198))) (height!2109 (right!43054 (left!42724 t!4198)))) 1)))))

(declare-fun b!5047555 () Bool)

(assert (=> b!5047555 (= e!3151553 (<= 0 (cheight!15741 (left!42724 t!4198))))))

(assert (= (and d!1624507 res!2149833) b!5047553))

(assert (= (and b!5047553 res!2149834) b!5047554))

(assert (= (and b!5047554 res!2149835) b!5047555))

(declare-fun m!6082834 () Bool)

(assert (=> d!1624507 m!6082834))

(declare-fun m!6082836 () Bool)

(assert (=> d!1624507 m!6082836))

(declare-fun m!6082838 () Bool)

(assert (=> b!5047554 m!6082838))

(declare-fun m!6082840 () Bool)

(assert (=> b!5047554 m!6082840))

(assert (=> b!5047554 m!6082838))

(assert (=> b!5047554 m!6082840))

(declare-fun m!6082842 () Bool)

(assert (=> b!5047554 m!6082842))

(assert (=> b!5047173 d!1624507))

(declare-fun b!5047559 () Bool)

(declare-fun e!3151556 () List!58442)

(assert (=> b!5047559 (= e!3151556 (Cons!58318 (h!64766 (list!18945 (left!42724 (left!42724 t!4198)))) (++!12745 (t!371063 (list!18945 (left!42724 (left!42724 t!4198)))) (list!18945 (right!43054 (left!42724 t!4198))))))))

(declare-fun b!5047561 () Bool)

(declare-fun e!3151555 () Bool)

(declare-fun lt!2085702 () List!58442)

(assert (=> b!5047561 (= e!3151555 (or (not (= (list!18945 (right!43054 (left!42724 t!4198))) Nil!58318)) (= lt!2085702 (list!18945 (left!42724 (left!42724 t!4198))))))))

(declare-fun b!5047560 () Bool)

(declare-fun res!2149837 () Bool)

(assert (=> b!5047560 (=> (not res!2149837) (not e!3151555))))

(assert (=> b!5047560 (= res!2149837 (= (size!38941 lt!2085702) (+ (size!38941 (list!18945 (left!42724 (left!42724 t!4198)))) (size!38941 (list!18945 (right!43054 (left!42724 t!4198)))))))))

(declare-fun b!5047558 () Bool)

(assert (=> b!5047558 (= e!3151556 (list!18945 (right!43054 (left!42724 t!4198))))))

(declare-fun d!1624513 () Bool)

(assert (=> d!1624513 e!3151555))

(declare-fun res!2149836 () Bool)

(assert (=> d!1624513 (=> (not res!2149836) (not e!3151555))))

(assert (=> d!1624513 (= res!2149836 (= (content!10371 lt!2085702) ((_ map or) (content!10371 (list!18945 (left!42724 (left!42724 t!4198)))) (content!10371 (list!18945 (right!43054 (left!42724 t!4198)))))))))

(assert (=> d!1624513 (= lt!2085702 e!3151556)))

(declare-fun c!865527 () Bool)

(assert (=> d!1624513 (= c!865527 ((_ is Nil!58318) (list!18945 (left!42724 (left!42724 t!4198)))))))

(assert (=> d!1624513 (= (++!12745 (list!18945 (left!42724 (left!42724 t!4198))) (list!18945 (right!43054 (left!42724 t!4198)))) lt!2085702)))

(assert (= (and d!1624513 c!865527) b!5047558))

(assert (= (and d!1624513 (not c!865527)) b!5047559))

(assert (= (and d!1624513 res!2149836) b!5047560))

(assert (= (and b!5047560 res!2149837) b!5047561))

(assert (=> b!5047559 m!6082306))

(declare-fun m!6082844 () Bool)

(assert (=> b!5047559 m!6082844))

(declare-fun m!6082846 () Bool)

(assert (=> b!5047560 m!6082846))

(assert (=> b!5047560 m!6082304))

(declare-fun m!6082848 () Bool)

(assert (=> b!5047560 m!6082848))

(assert (=> b!5047560 m!6082306))

(declare-fun m!6082850 () Bool)

(assert (=> b!5047560 m!6082850))

(declare-fun m!6082852 () Bool)

(assert (=> d!1624513 m!6082852))

(assert (=> d!1624513 m!6082304))

(declare-fun m!6082854 () Bool)

(assert (=> d!1624513 m!6082854))

(assert (=> d!1624513 m!6082306))

(declare-fun m!6082856 () Bool)

(assert (=> d!1624513 m!6082856))

(assert (=> b!5047073 d!1624513))

(declare-fun b!5047569 () Bool)

(declare-fun e!3151560 () List!58442)

(assert (=> b!5047569 (= e!3151560 (++!12745 (list!18945 (left!42724 (left!42724 (left!42724 t!4198)))) (list!18945 (right!43054 (left!42724 (left!42724 t!4198))))))))

(declare-fun d!1624517 () Bool)

(declare-fun c!865529 () Bool)

(assert (=> d!1624517 (= c!865529 ((_ is Empty!15530) (left!42724 (left!42724 t!4198))))))

(declare-fun e!3151559 () List!58442)

(assert (=> d!1624517 (= (list!18945 (left!42724 (left!42724 t!4198))) e!3151559)))

(declare-fun b!5047567 () Bool)

(assert (=> b!5047567 (= e!3151559 e!3151560)))

(declare-fun c!865530 () Bool)

(assert (=> b!5047567 (= c!865530 ((_ is Leaf!25759) (left!42724 (left!42724 t!4198))))))

(declare-fun b!5047568 () Bool)

(assert (=> b!5047568 (= e!3151560 (list!18947 (xs!18858 (left!42724 (left!42724 t!4198)))))))

(declare-fun b!5047566 () Bool)

(assert (=> b!5047566 (= e!3151559 Nil!58318)))

(assert (= (and d!1624517 c!865529) b!5047566))

(assert (= (and d!1624517 (not c!865529)) b!5047567))

(assert (= (and b!5047567 c!865530) b!5047568))

(assert (= (and b!5047567 (not c!865530)) b!5047569))

(declare-fun m!6082872 () Bool)

(assert (=> b!5047569 m!6082872))

(declare-fun m!6082874 () Bool)

(assert (=> b!5047569 m!6082874))

(assert (=> b!5047569 m!6082872))

(assert (=> b!5047569 m!6082874))

(declare-fun m!6082876 () Bool)

(assert (=> b!5047569 m!6082876))

(declare-fun m!6082878 () Bool)

(assert (=> b!5047568 m!6082878))

(assert (=> b!5047073 d!1624517))

(declare-fun b!5047577 () Bool)

(declare-fun e!3151564 () List!58442)

(assert (=> b!5047577 (= e!3151564 (++!12745 (list!18945 (left!42724 (right!43054 (left!42724 t!4198)))) (list!18945 (right!43054 (right!43054 (left!42724 t!4198))))))))

(declare-fun d!1624521 () Bool)

(declare-fun c!865532 () Bool)

(assert (=> d!1624521 (= c!865532 ((_ is Empty!15530) (right!43054 (left!42724 t!4198))))))

(declare-fun e!3151563 () List!58442)

(assert (=> d!1624521 (= (list!18945 (right!43054 (left!42724 t!4198))) e!3151563)))

(declare-fun b!5047575 () Bool)

(assert (=> b!5047575 (= e!3151563 e!3151564)))

(declare-fun c!865533 () Bool)

(assert (=> b!5047575 (= c!865533 ((_ is Leaf!25759) (right!43054 (left!42724 t!4198))))))

(declare-fun b!5047576 () Bool)

(assert (=> b!5047576 (= e!3151564 (list!18947 (xs!18858 (right!43054 (left!42724 t!4198)))))))

(declare-fun b!5047574 () Bool)

(assert (=> b!5047574 (= e!3151563 Nil!58318)))

(assert (= (and d!1624521 c!865532) b!5047574))

(assert (= (and d!1624521 (not c!865532)) b!5047575))

(assert (= (and b!5047575 c!865533) b!5047576))

(assert (= (and b!5047575 (not c!865533)) b!5047577))

(declare-fun m!6082884 () Bool)

(assert (=> b!5047577 m!6082884))

(declare-fun m!6082888 () Bool)

(assert (=> b!5047577 m!6082888))

(assert (=> b!5047577 m!6082884))

(assert (=> b!5047577 m!6082888))

(declare-fun m!6082890 () Bool)

(assert (=> b!5047577 m!6082890))

(declare-fun m!6082892 () Bool)

(assert (=> b!5047576 m!6082892))

(assert (=> b!5047073 d!1624521))

(declare-fun d!1624525 () Bool)

(declare-fun c!865535 () Bool)

(assert (=> d!1624525 (= c!865535 ((_ is Node!15530) (left!42724 (left!42724 t!4198))))))

(declare-fun e!3151567 () Bool)

(assert (=> d!1624525 (= (inv!77249 (left!42724 (left!42724 t!4198))) e!3151567)))

(declare-fun b!5047582 () Bool)

(assert (=> b!5047582 (= e!3151567 (inv!77253 (left!42724 (left!42724 t!4198))))))

(declare-fun b!5047583 () Bool)

(declare-fun e!3151568 () Bool)

(assert (=> b!5047583 (= e!3151567 e!3151568)))

(declare-fun res!2149844 () Bool)

(assert (=> b!5047583 (= res!2149844 (not ((_ is Leaf!25759) (left!42724 (left!42724 t!4198)))))))

(assert (=> b!5047583 (=> res!2149844 e!3151568)))

(declare-fun b!5047584 () Bool)

(assert (=> b!5047584 (= e!3151568 (inv!77254 (left!42724 (left!42724 t!4198))))))

(assert (= (and d!1624525 c!865535) b!5047582))

(assert (= (and d!1624525 (not c!865535)) b!5047583))

(assert (= (and b!5047583 (not res!2149844)) b!5047584))

(declare-fun m!6082894 () Bool)

(assert (=> b!5047582 m!6082894))

(declare-fun m!6082896 () Bool)

(assert (=> b!5047584 m!6082896))

(assert (=> b!5047192 d!1624525))

(declare-fun d!1624527 () Bool)

(declare-fun c!865536 () Bool)

(assert (=> d!1624527 (= c!865536 ((_ is Node!15530) (right!43054 (left!42724 t!4198))))))

(declare-fun e!3151569 () Bool)

(assert (=> d!1624527 (= (inv!77249 (right!43054 (left!42724 t!4198))) e!3151569)))

(declare-fun b!5047585 () Bool)

(assert (=> b!5047585 (= e!3151569 (inv!77253 (right!43054 (left!42724 t!4198))))))

(declare-fun b!5047586 () Bool)

(declare-fun e!3151570 () Bool)

(assert (=> b!5047586 (= e!3151569 e!3151570)))

(declare-fun res!2149845 () Bool)

(assert (=> b!5047586 (= res!2149845 (not ((_ is Leaf!25759) (right!43054 (left!42724 t!4198)))))))

(assert (=> b!5047586 (=> res!2149845 e!3151570)))

(declare-fun b!5047587 () Bool)

(assert (=> b!5047587 (= e!3151570 (inv!77254 (right!43054 (left!42724 t!4198))))))

(assert (= (and d!1624527 c!865536) b!5047585))

(assert (= (and d!1624527 (not c!865536)) b!5047586))

(assert (= (and b!5047586 (not res!2149845)) b!5047587))

(declare-fun m!6082912 () Bool)

(assert (=> b!5047585 m!6082912))

(declare-fun m!6082914 () Bool)

(assert (=> b!5047587 m!6082914))

(assert (=> b!5047192 d!1624527))

(declare-fun b!5047588 () Bool)

(declare-fun e!3151572 () Bool)

(declare-fun e!3151571 () Bool)

(assert (=> b!5047588 (= e!3151572 e!3151571)))

(declare-fun res!2149851 () Bool)

(assert (=> b!5047588 (=> (not res!2149851) (not e!3151571))))

(assert (=> b!5047588 (= res!2149851 (<= (- 1) (- (height!2109 (left!42724 (right!43054 t!4198))) (height!2109 (right!43054 (right!43054 t!4198))))))))

(declare-fun b!5047589 () Bool)

(declare-fun res!2149847 () Bool)

(assert (=> b!5047589 (=> (not res!2149847) (not e!3151571))))

(assert (=> b!5047589 (= res!2149847 (isBalanced!4392 (left!42724 (right!43054 t!4198))))))

(declare-fun b!5047590 () Bool)

(assert (=> b!5047590 (= e!3151571 (not (isEmpty!31561 (right!43054 (right!43054 t!4198)))))))

(declare-fun d!1624531 () Bool)

(declare-fun res!2149849 () Bool)

(assert (=> d!1624531 (=> res!2149849 e!3151572)))

(assert (=> d!1624531 (= res!2149849 (not ((_ is Node!15530) (right!43054 t!4198))))))

(assert (=> d!1624531 (= (isBalanced!4392 (right!43054 t!4198)) e!3151572)))

(declare-fun b!5047591 () Bool)

(declare-fun res!2149850 () Bool)

(assert (=> b!5047591 (=> (not res!2149850) (not e!3151571))))

(assert (=> b!5047591 (= res!2149850 (not (isEmpty!31561 (left!42724 (right!43054 t!4198)))))))

(declare-fun b!5047592 () Bool)

(declare-fun res!2149846 () Bool)

(assert (=> b!5047592 (=> (not res!2149846) (not e!3151571))))

(assert (=> b!5047592 (= res!2149846 (<= (- (height!2109 (left!42724 (right!43054 t!4198))) (height!2109 (right!43054 (right!43054 t!4198)))) 1))))

(declare-fun b!5047593 () Bool)

(declare-fun res!2149848 () Bool)

(assert (=> b!5047593 (=> (not res!2149848) (not e!3151571))))

(assert (=> b!5047593 (= res!2149848 (isBalanced!4392 (right!43054 (right!43054 t!4198))))))

(assert (= (and d!1624531 (not res!2149849)) b!5047588))

(assert (= (and b!5047588 res!2149851) b!5047592))

(assert (= (and b!5047592 res!2149846) b!5047589))

(assert (= (and b!5047589 res!2149847) b!5047593))

(assert (= (and b!5047593 res!2149848) b!5047591))

(assert (= (and b!5047591 res!2149850) b!5047590))

(assert (=> b!5047588 m!6082760))

(assert (=> b!5047588 m!6082762))

(declare-fun m!6082920 () Bool)

(assert (=> b!5047593 m!6082920))

(declare-fun m!6082922 () Bool)

(assert (=> b!5047589 m!6082922))

(assert (=> b!5047592 m!6082760))

(assert (=> b!5047592 m!6082762))

(declare-fun m!6082924 () Bool)

(assert (=> b!5047590 m!6082924))

(declare-fun m!6082926 () Bool)

(assert (=> b!5047591 m!6082926))

(assert (=> b!5046959 d!1624531))

(declare-fun d!1624537 () Bool)

(declare-fun res!2149853 () Bool)

(declare-fun e!3151578 () Bool)

(assert (=> d!1624537 (=> (not res!2149853) (not e!3151578))))

(assert (=> d!1624537 (= res!2149853 (<= (size!38941 (list!18947 (xs!18858 (left!42724 t!4198)))) 512))))

(assert (=> d!1624537 (= (inv!77254 (left!42724 t!4198)) e!3151578)))

(declare-fun b!5047603 () Bool)

(declare-fun res!2149854 () Bool)

(assert (=> b!5047603 (=> (not res!2149854) (not e!3151578))))

(assert (=> b!5047603 (= res!2149854 (= (csize!31291 (left!42724 t!4198)) (size!38941 (list!18947 (xs!18858 (left!42724 t!4198))))))))

(declare-fun b!5047604 () Bool)

(assert (=> b!5047604 (= e!3151578 (and (> (csize!31291 (left!42724 t!4198)) 0) (<= (csize!31291 (left!42724 t!4198)) 512)))))

(assert (= (and d!1624537 res!2149853) b!5047603))

(assert (= (and b!5047603 res!2149854) b!5047604))

(assert (=> d!1624537 m!6082310))

(assert (=> d!1624537 m!6082310))

(declare-fun m!6082932 () Bool)

(assert (=> d!1624537 m!6082932))

(assert (=> b!5047603 m!6082310))

(assert (=> b!5047603 m!6082310))

(assert (=> b!5047603 m!6082932))

(assert (=> b!5047175 d!1624537))

(declare-fun b!5047605 () Bool)

(declare-fun e!3151580 () Bool)

(declare-fun e!3151579 () Bool)

(assert (=> b!5047605 (= e!3151580 e!3151579)))

(declare-fun res!2149860 () Bool)

(assert (=> b!5047605 (=> (not res!2149860) (not e!3151579))))

(assert (=> b!5047605 (= res!2149860 (<= (- 1) (- (height!2109 (left!42724 (left!42724 t!4198))) (height!2109 (right!43054 (left!42724 t!4198))))))))

(declare-fun b!5047606 () Bool)

(declare-fun res!2149856 () Bool)

(assert (=> b!5047606 (=> (not res!2149856) (not e!3151579))))

(assert (=> b!5047606 (= res!2149856 (isBalanced!4392 (left!42724 (left!42724 t!4198))))))

(declare-fun b!5047607 () Bool)

(assert (=> b!5047607 (= e!3151579 (not (isEmpty!31561 (right!43054 (left!42724 t!4198)))))))

(declare-fun d!1624541 () Bool)

(declare-fun res!2149858 () Bool)

(assert (=> d!1624541 (=> res!2149858 e!3151580)))

(assert (=> d!1624541 (= res!2149858 (not ((_ is Node!15530) (left!42724 t!4198))))))

(assert (=> d!1624541 (= (isBalanced!4392 (left!42724 t!4198)) e!3151580)))

(declare-fun b!5047608 () Bool)

(declare-fun res!2149859 () Bool)

(assert (=> b!5047608 (=> (not res!2149859) (not e!3151579))))

(assert (=> b!5047608 (= res!2149859 (not (isEmpty!31561 (left!42724 (left!42724 t!4198)))))))

(declare-fun b!5047609 () Bool)

(declare-fun res!2149855 () Bool)

(assert (=> b!5047609 (=> (not res!2149855) (not e!3151579))))

(assert (=> b!5047609 (= res!2149855 (<= (- (height!2109 (left!42724 (left!42724 t!4198))) (height!2109 (right!43054 (left!42724 t!4198)))) 1))))

(declare-fun b!5047610 () Bool)

(declare-fun res!2149857 () Bool)

(assert (=> b!5047610 (=> (not res!2149857) (not e!3151579))))

(assert (=> b!5047610 (= res!2149857 (isBalanced!4392 (right!43054 (left!42724 t!4198))))))

(assert (= (and d!1624541 (not res!2149858)) b!5047605))

(assert (= (and b!5047605 res!2149860) b!5047609))

(assert (= (and b!5047609 res!2149855) b!5047606))

(assert (= (and b!5047606 res!2149856) b!5047610))

(assert (= (and b!5047610 res!2149857) b!5047608))

(assert (= (and b!5047608 res!2149859) b!5047607))

(assert (=> b!5047605 m!6082838))

(assert (=> b!5047605 m!6082840))

(declare-fun m!6082934 () Bool)

(assert (=> b!5047610 m!6082934))

(declare-fun m!6082936 () Bool)

(assert (=> b!5047606 m!6082936))

(assert (=> b!5047609 m!6082838))

(assert (=> b!5047609 m!6082840))

(declare-fun m!6082938 () Bool)

(assert (=> b!5047607 m!6082938))

(declare-fun m!6082940 () Bool)

(assert (=> b!5047608 m!6082940))

(assert (=> b!5046955 d!1624541))

(declare-fun d!1624545 () Bool)

(declare-fun lt!2085708 () Bool)

(assert (=> d!1624545 (= lt!2085708 (isEmpty!31562 (list!18945 (left!42724 t!4198))))))

(assert (=> d!1624545 (= lt!2085708 (= (size!38940 (left!42724 t!4198)) 0))))

(assert (=> d!1624545 (= (isEmpty!31561 (left!42724 t!4198)) lt!2085708)))

(declare-fun bs!1189167 () Bool)

(assert (= bs!1189167 d!1624545))

(assert (=> bs!1189167 m!6082144))

(assert (=> bs!1189167 m!6082144))

(declare-fun m!6082942 () Bool)

(assert (=> bs!1189167 m!6082942))

(assert (=> bs!1189167 m!6082150))

(assert (=> b!5046957 d!1624545))

(declare-fun d!1624547 () Bool)

(assert (=> d!1624547 (= (inv!77250 (xs!18858 (right!43054 t!4198))) (<= (size!38941 (innerList!15618 (xs!18858 (right!43054 t!4198)))) 2147483647))))

(declare-fun bs!1189168 () Bool)

(assert (= bs!1189168 d!1624547))

(declare-fun m!6082944 () Bool)

(assert (=> bs!1189168 m!6082944))

(assert (=> b!5047196 d!1624547))

(declare-fun d!1624549 () Bool)

(declare-fun lt!2085710 () Int)

(assert (=> d!1624549 (>= lt!2085710 0)))

(declare-fun e!3151583 () Int)

(assert (=> d!1624549 (= lt!2085710 e!3151583)))

(declare-fun c!865542 () Bool)

(assert (=> d!1624549 (= c!865542 ((_ is Nil!58318) lt!2085592))))

(assert (=> d!1624549 (= (size!38941 lt!2085592) lt!2085710)))

(declare-fun b!5047615 () Bool)

(assert (=> b!5047615 (= e!3151583 0)))

(declare-fun b!5047616 () Bool)

(assert (=> b!5047616 (= e!3151583 (+ 1 (size!38941 (t!371063 lt!2085592))))))

(assert (= (and d!1624549 c!865542) b!5047615))

(assert (= (and d!1624549 (not c!865542)) b!5047616))

(declare-fun m!6082952 () Bool)

(assert (=> b!5047616 m!6082952))

(assert (=> b!5047001 d!1624549))

(assert (=> b!5047001 d!1624329))

(assert (=> b!5047001 d!1624399))

(declare-fun d!1624553 () Bool)

(declare-fun lt!2085712 () Int)

(assert (=> d!1624553 (>= lt!2085712 0)))

(declare-fun e!3151588 () Int)

(assert (=> d!1624553 (= lt!2085712 e!3151588)))

(declare-fun c!865546 () Bool)

(assert (=> d!1624553 (= c!865546 ((_ is Nil!58318) (list!18945 (left!42724 t!4198))))))

(assert (=> d!1624553 (= (size!38941 (list!18945 (left!42724 t!4198))) lt!2085712)))

(declare-fun b!5047619 () Bool)

(assert (=> b!5047619 (= e!3151588 0)))

(declare-fun b!5047621 () Bool)

(assert (=> b!5047621 (= e!3151588 (+ 1 (size!38941 (t!371063 (list!18945 (left!42724 t!4198))))))))

(assert (= (and d!1624553 c!865546) b!5047619))

(assert (= (and d!1624553 (not c!865546)) b!5047621))

(declare-fun m!6082954 () Bool)

(assert (=> b!5047621 m!6082954))

(assert (=> d!1624327 d!1624553))

(assert (=> d!1624327 d!1624319))

(declare-fun d!1624555 () Bool)

(declare-fun c!865547 () Bool)

(assert (=> d!1624555 (= c!865547 ((_ is Node!15530) (left!42724 (right!43054 t!4198))))))

(declare-fun e!3151589 () Bool)

(assert (=> d!1624555 (= (inv!77249 (left!42724 (right!43054 t!4198))) e!3151589)))

(declare-fun b!5047626 () Bool)

(assert (=> b!5047626 (= e!3151589 (inv!77253 (left!42724 (right!43054 t!4198))))))

(declare-fun b!5047627 () Bool)

(declare-fun e!3151590 () Bool)

(assert (=> b!5047627 (= e!3151589 e!3151590)))

(declare-fun res!2149864 () Bool)

(assert (=> b!5047627 (= res!2149864 (not ((_ is Leaf!25759) (left!42724 (right!43054 t!4198)))))))

(assert (=> b!5047627 (=> res!2149864 e!3151590)))

(declare-fun b!5047628 () Bool)

(assert (=> b!5047628 (= e!3151590 (inv!77254 (left!42724 (right!43054 t!4198))))))

(assert (= (and d!1624555 c!865547) b!5047626))

(assert (= (and d!1624555 (not c!865547)) b!5047627))

(assert (= (and b!5047627 (not res!2149864)) b!5047628))

(declare-fun m!6082956 () Bool)

(assert (=> b!5047626 m!6082956))

(declare-fun m!6082958 () Bool)

(assert (=> b!5047628 m!6082958))

(assert (=> b!5047195 d!1624555))

(declare-fun d!1624557 () Bool)

(declare-fun c!865548 () Bool)

(assert (=> d!1624557 (= c!865548 ((_ is Node!15530) (right!43054 (right!43054 t!4198))))))

(declare-fun e!3151591 () Bool)

(assert (=> d!1624557 (= (inv!77249 (right!43054 (right!43054 t!4198))) e!3151591)))

(declare-fun b!5047629 () Bool)

(assert (=> b!5047629 (= e!3151591 (inv!77253 (right!43054 (right!43054 t!4198))))))

(declare-fun b!5047630 () Bool)

(declare-fun e!3151592 () Bool)

(assert (=> b!5047630 (= e!3151591 e!3151592)))

(declare-fun res!2149865 () Bool)

(assert (=> b!5047630 (= res!2149865 (not ((_ is Leaf!25759) (right!43054 (right!43054 t!4198)))))))

(assert (=> b!5047630 (=> res!2149865 e!3151592)))

(declare-fun b!5047631 () Bool)

(assert (=> b!5047631 (= e!3151592 (inv!77254 (right!43054 (right!43054 t!4198))))))

(assert (= (and d!1624557 c!865548) b!5047629))

(assert (= (and d!1624557 (not c!865548)) b!5047630))

(assert (= (and b!5047630 (not res!2149865)) b!5047631))

(declare-fun m!6082964 () Bool)

(assert (=> b!5047629 m!6082964))

(declare-fun m!6082966 () Bool)

(assert (=> b!5047631 m!6082966))

(assert (=> b!5047195 d!1624557))

(declare-fun b!5047632 () Bool)

(declare-fun e!3151596 () Int)

(assert (=> b!5047632 (= e!3151596 (size!38941 (++!12745 lt!2085559 lt!2085561)))))

(declare-fun b!5047633 () Bool)

(declare-fun e!3151594 () Int)

(assert (=> b!5047633 (= e!3151594 e!3151596)))

(declare-fun c!865549 () Bool)

(assert (=> b!5047633 (= c!865549 (>= i!618 (size!38941 (++!12745 lt!2085559 lt!2085561))))))

(declare-fun b!5047634 () Bool)

(declare-fun e!3151593 () List!58442)

(assert (=> b!5047634 (= e!3151593 Nil!58318)))

(declare-fun b!5047635 () Bool)

(assert (=> b!5047635 (= e!3151596 i!618)))

(declare-fun d!1624561 () Bool)

(declare-fun e!3151595 () Bool)

(assert (=> d!1624561 e!3151595))

(declare-fun res!2149866 () Bool)

(assert (=> d!1624561 (=> (not res!2149866) (not e!3151595))))

(declare-fun lt!2085713 () List!58442)

(assert (=> d!1624561 (= res!2149866 (= ((_ map implies) (content!10371 lt!2085713) (content!10371 (++!12745 lt!2085559 lt!2085561))) ((as const (InoxSet T!104306)) true)))))

(assert (=> d!1624561 (= lt!2085713 e!3151593)))

(declare-fun c!865551 () Bool)

(assert (=> d!1624561 (= c!865551 (or ((_ is Nil!58318) (++!12745 lt!2085559 lt!2085561)) (<= i!618 0)))))

(assert (=> d!1624561 (= (take!839 (++!12745 lt!2085559 lt!2085561) i!618) lt!2085713)))

(declare-fun b!5047636 () Bool)

(assert (=> b!5047636 (= e!3151594 0)))

(declare-fun b!5047637 () Bool)

(assert (=> b!5047637 (= e!3151595 (= (size!38941 lt!2085713) e!3151594))))

(declare-fun c!865550 () Bool)

(assert (=> b!5047637 (= c!865550 (<= i!618 0))))

(declare-fun b!5047638 () Bool)

(assert (=> b!5047638 (= e!3151593 (Cons!58318 (h!64766 (++!12745 lt!2085559 lt!2085561)) (take!839 (t!371063 (++!12745 lt!2085559 lt!2085561)) (- i!618 1))))))

(assert (= (and d!1624561 c!865551) b!5047634))

(assert (= (and d!1624561 (not c!865551)) b!5047638))

(assert (= (and d!1624561 res!2149866) b!5047637))

(assert (= (and b!5047637 c!865550) b!5047636))

(assert (= (and b!5047637 (not c!865550)) b!5047633))

(assert (= (and b!5047633 c!865549) b!5047632))

(assert (= (and b!5047633 (not c!865549)) b!5047635))

(declare-fun m!6082970 () Bool)

(assert (=> b!5047637 m!6082970))

(declare-fun m!6082972 () Bool)

(assert (=> d!1624561 m!6082972))

(assert (=> d!1624561 m!6082146))

(assert (=> d!1624561 m!6082638))

(assert (=> b!5047632 m!6082146))

(assert (=> b!5047632 m!6082642))

(assert (=> b!5047638 m!6082690))

(assert (=> b!5047633 m!6082146))

(assert (=> b!5047633 m!6082642))

(assert (=> b!5047041 d!1624561))

(declare-fun d!1624569 () Bool)

(declare-fun lt!2085715 () Int)

(assert (=> d!1624569 (>= lt!2085715 0)))

(declare-fun e!3151599 () Int)

(assert (=> d!1624569 (= lt!2085715 e!3151599)))

(declare-fun c!865554 () Bool)

(assert (=> d!1624569 (= c!865554 ((_ is Nil!58318) (t!371063 lt!2085559)))))

(assert (=> d!1624569 (= (size!38941 (t!371063 lt!2085559)) lt!2085715)))

(declare-fun b!5047643 () Bool)

(assert (=> b!5047643 (= e!3151599 0)))

(declare-fun b!5047644 () Bool)

(assert (=> b!5047644 (= e!3151599 (+ 1 (size!38941 (t!371063 (t!371063 lt!2085559)))))))

(assert (= (and d!1624569 c!865554) b!5047643))

(assert (= (and d!1624569 (not c!865554)) b!5047644))

(declare-fun m!6082984 () Bool)

(assert (=> b!5047644 m!6082984))

(assert (=> b!5047110 d!1624569))

(declare-fun b!5047650 () Bool)

(declare-fun e!3151603 () List!58442)

(assert (=> b!5047650 (= e!3151603 (Cons!58318 (h!64766 (_1!34938 lt!2085629)) (++!12745 (t!371063 (_1!34938 lt!2085629)) (_2!34938 lt!2085629))))))

(declare-fun b!5047652 () Bool)

(declare-fun e!3151602 () Bool)

(declare-fun lt!2085717 () List!58442)

(assert (=> b!5047652 (= e!3151602 (or (not (= (_2!34938 lt!2085629) Nil!58318)) (= lt!2085717 (_1!34938 lt!2085629))))))

(declare-fun b!5047651 () Bool)

(declare-fun res!2149868 () Bool)

(assert (=> b!5047651 (=> (not res!2149868) (not e!3151602))))

(assert (=> b!5047651 (= res!2149868 (= (size!38941 lt!2085717) (+ (size!38941 (_1!34938 lt!2085629)) (size!38941 (_2!34938 lt!2085629)))))))

(declare-fun b!5047649 () Bool)

(assert (=> b!5047649 (= e!3151603 (_2!34938 lt!2085629))))

(declare-fun d!1624573 () Bool)

(assert (=> d!1624573 e!3151602))

(declare-fun res!2149867 () Bool)

(assert (=> d!1624573 (=> (not res!2149867) (not e!3151602))))

(assert (=> d!1624573 (= res!2149867 (= (content!10371 lt!2085717) ((_ map or) (content!10371 (_1!34938 lt!2085629)) (content!10371 (_2!34938 lt!2085629)))))))

(assert (=> d!1624573 (= lt!2085717 e!3151603)))

(declare-fun c!865557 () Bool)

(assert (=> d!1624573 (= c!865557 ((_ is Nil!58318) (_1!34938 lt!2085629)))))

(assert (=> d!1624573 (= (++!12745 (_1!34938 lt!2085629) (_2!34938 lt!2085629)) lt!2085717)))

(assert (= (and d!1624573 c!865557) b!5047649))

(assert (= (and d!1624573 (not c!865557)) b!5047650))

(assert (= (and d!1624573 res!2149867) b!5047651))

(assert (= (and b!5047651 res!2149868) b!5047652))

(declare-fun m!6082996 () Bool)

(assert (=> b!5047650 m!6082996))

(declare-fun m!6082998 () Bool)

(assert (=> b!5047651 m!6082998))

(declare-fun m!6083000 () Bool)

(assert (=> b!5047651 m!6083000))

(declare-fun m!6083002 () Bool)

(assert (=> b!5047651 m!6083002))

(declare-fun m!6083004 () Bool)

(assert (=> d!1624573 m!6083004))

(declare-fun m!6083006 () Bool)

(assert (=> d!1624573 m!6083006))

(declare-fun m!6083008 () Bool)

(assert (=> d!1624573 m!6083008))

(assert (=> d!1624347 d!1624573))

(assert (=> b!5046885 d!1624349))

(assert (=> b!5046885 d!1624351))

(declare-fun d!1624579 () Bool)

(declare-fun lt!2085719 () Int)

(assert (=> d!1624579 (>= lt!2085719 0)))

(declare-fun e!3151606 () Int)

(assert (=> d!1624579 (= lt!2085719 e!3151606)))

(declare-fun c!865559 () Bool)

(assert (=> d!1624579 (= c!865559 ((_ is Nil!58318) lt!2085591))))

(assert (=> d!1624579 (= (size!38941 lt!2085591) lt!2085719)))

(declare-fun b!5047657 () Bool)

(assert (=> b!5047657 (= e!3151606 0)))

(declare-fun b!5047658 () Bool)

(assert (=> b!5047658 (= e!3151606 (+ 1 (size!38941 (t!371063 lt!2085591))))))

(assert (= (and d!1624579 c!865559) b!5047657))

(assert (= (and d!1624579 (not c!865559)) b!5047658))

(declare-fun m!6083010 () Bool)

(assert (=> b!5047658 m!6083010))

(assert (=> b!5046997 d!1624579))

(declare-fun d!1624581 () Bool)

(declare-fun lt!2085720 () Int)

(assert (=> d!1624581 (>= lt!2085720 0)))

(declare-fun e!3151607 () Int)

(assert (=> d!1624581 (= lt!2085720 e!3151607)))

(declare-fun c!865560 () Bool)

(assert (=> d!1624581 (= c!865560 ((_ is Nil!58318) (ite c!865305 (_2!34938 lt!2085564) lt!2085559)))))

(assert (=> d!1624581 (= (size!38941 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)) lt!2085720)))

(declare-fun b!5047659 () Bool)

(assert (=> b!5047659 (= e!3151607 0)))

(declare-fun b!5047660 () Bool)

(assert (=> b!5047660 (= e!3151607 (+ 1 (size!38941 (t!371063 (ite c!865305 (_2!34938 lt!2085564) lt!2085559)))))))

(assert (= (and d!1624581 c!865560) b!5047659))

(assert (= (and d!1624581 (not c!865560)) b!5047660))

(assert (=> b!5047660 m!6082712))

(assert (=> b!5046997 d!1624581))

(declare-fun d!1624583 () Bool)

(declare-fun lt!2085721 () Int)

(assert (=> d!1624583 (>= lt!2085721 0)))

(declare-fun e!3151608 () Int)

(assert (=> d!1624583 (= lt!2085721 e!3151608)))

(declare-fun c!865561 () Bool)

(assert (=> d!1624583 (= c!865561 ((_ is Nil!58318) (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))

(assert (=> d!1624583 (= (size!38941 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))) lt!2085721)))

(declare-fun b!5047661 () Bool)

(assert (=> b!5047661 (= e!3151608 0)))

(declare-fun b!5047662 () Bool)

(assert (=> b!5047662 (= e!3151608 (+ 1 (size!38941 (t!371063 (ite c!865305 lt!2085561 (_1!34938 lt!2085565))))))))

(assert (= (and d!1624583 c!865561) b!5047661))

(assert (= (and d!1624583 (not c!865561)) b!5047662))

(declare-fun m!6083026 () Bool)

(assert (=> b!5047662 m!6083026))

(assert (=> b!5046997 d!1624583))

(declare-fun d!1624587 () Bool)

(assert (=> d!1624587 (= (BigIntAbs!0 (ite c!865312 (cheight!15741 t!4198) (csize!31291 t!4198))) (ite (>= (ite c!865312 (cheight!15741 t!4198) (csize!31291 t!4198)) 0) (ite c!865312 (cheight!15741 t!4198) (csize!31291 t!4198)) (- (ite c!865312 (cheight!15741 t!4198) (csize!31291 t!4198)))))))

(assert (=> bm!351700 d!1624587))

(declare-fun d!1624589 () Bool)

(declare-fun res!2149871 () Bool)

(declare-fun e!3151611 () Bool)

(assert (=> d!1624589 (=> (not res!2149871) (not e!3151611))))

(assert (=> d!1624589 (= res!2149871 (= (csize!31290 t!4198) (+ (size!38940 (left!42724 t!4198)) (size!38940 (right!43054 t!4198)))))))

(assert (=> d!1624589 (= (inv!77253 t!4198) e!3151611)))

(declare-fun b!5047667 () Bool)

(declare-fun res!2149872 () Bool)

(assert (=> b!5047667 (=> (not res!2149872) (not e!3151611))))

(assert (=> b!5047667 (= res!2149872 (and (not (= (left!42724 t!4198) Empty!15530)) (not (= (right!43054 t!4198) Empty!15530))))))

(declare-fun b!5047668 () Bool)

(declare-fun res!2149873 () Bool)

(assert (=> b!5047668 (=> (not res!2149873) (not e!3151611))))

(assert (=> b!5047668 (= res!2149873 (= (cheight!15741 t!4198) (+ (max!0 (height!2109 (left!42724 t!4198)) (height!2109 (right!43054 t!4198))) 1)))))

(declare-fun b!5047669 () Bool)

(assert (=> b!5047669 (= e!3151611 (<= 0 (cheight!15741 t!4198)))))

(assert (= (and d!1624589 res!2149871) b!5047667))

(assert (= (and b!5047667 res!2149872) b!5047668))

(assert (= (and b!5047668 res!2149873) b!5047669))

(assert (=> d!1624589 m!6082150))

(assert (=> d!1624589 m!6082552))

(assert (=> b!5047668 m!6082218))

(assert (=> b!5047668 m!6082220))

(assert (=> b!5047668 m!6082218))

(assert (=> b!5047668 m!6082220))

(declare-fun m!6083038 () Bool)

(assert (=> b!5047668 m!6083038))

(assert (=> b!5046970 d!1624589))

(declare-fun d!1624593 () Bool)

(declare-fun c!865564 () Bool)

(assert (=> d!1624593 (= c!865564 ((_ is Nil!58318) lt!2085592))))

(declare-fun e!3151614 () (InoxSet T!104306))

(assert (=> d!1624593 (= (content!10371 lt!2085592) e!3151614)))

(declare-fun b!5047672 () Bool)

(assert (=> b!5047672 (= e!3151614 ((as const (Array T!104306 Bool)) false))))

(declare-fun b!5047674 () Bool)

(assert (=> b!5047674 (= e!3151614 ((_ map or) (store ((as const (Array T!104306 Bool)) false) (h!64766 lt!2085592) true) (content!10371 (t!371063 lt!2085592))))))

(assert (= (and d!1624593 c!865564) b!5047672))

(assert (= (and d!1624593 (not c!865564)) b!5047674))

(declare-fun m!6083040 () Bool)

(assert (=> b!5047674 m!6083040))

(declare-fun m!6083042 () Bool)

(assert (=> b!5047674 m!6083042))

(assert (=> d!1624311 d!1624593))

(declare-fun d!1624595 () Bool)

(declare-fun c!865565 () Bool)

(assert (=> d!1624595 (= c!865565 ((_ is Nil!58318) lt!2085559))))

(declare-fun e!3151615 () (InoxSet T!104306))

(assert (=> d!1624595 (= (content!10371 lt!2085559) e!3151615)))

(declare-fun b!5047675 () Bool)

(assert (=> b!5047675 (= e!3151615 ((as const (Array T!104306 Bool)) false))))

(declare-fun b!5047676 () Bool)

(assert (=> b!5047676 (= e!3151615 ((_ map or) (store ((as const (Array T!104306 Bool)) false) (h!64766 lt!2085559) true) (content!10371 (t!371063 lt!2085559))))))

(assert (= (and d!1624595 c!865565) b!5047675))

(assert (= (and d!1624595 (not c!865565)) b!5047676))

(declare-fun m!6083050 () Bool)

(assert (=> b!5047676 m!6083050))

(assert (=> b!5047676 m!6082618))

(assert (=> d!1624311 d!1624595))

(declare-fun d!1624597 () Bool)

(declare-fun c!865566 () Bool)

(assert (=> d!1624597 (= c!865566 ((_ is Nil!58318) lt!2085561))))

(declare-fun e!3151618 () (InoxSet T!104306))

(assert (=> d!1624597 (= (content!10371 lt!2085561) e!3151618)))

(declare-fun b!5047678 () Bool)

(assert (=> b!5047678 (= e!3151618 ((as const (Array T!104306 Bool)) false))))

(declare-fun b!5047680 () Bool)

(assert (=> b!5047680 (= e!3151618 ((_ map or) (store ((as const (Array T!104306 Bool)) false) (h!64766 lt!2085561) true) (content!10371 (t!371063 lt!2085561))))))

(assert (= (and d!1624597 c!865566) b!5047678))

(assert (= (and d!1624597 (not c!865566)) b!5047680))

(declare-fun m!6083052 () Bool)

(assert (=> b!5047680 m!6083052))

(declare-fun m!6083054 () Bool)

(assert (=> b!5047680 m!6083054))

(assert (=> d!1624311 d!1624597))

(declare-fun d!1624599 () Bool)

(assert (=> d!1624599 (= (list!18947 (xs!18858 (right!43054 t!4198))) (innerList!15618 (xs!18858 (right!43054 t!4198))))))

(assert (=> b!5047082 d!1624599))

(declare-fun d!1624601 () Bool)

(declare-fun res!2149874 () Bool)

(declare-fun e!3151619 () Bool)

(assert (=> d!1624601 (=> (not res!2149874) (not e!3151619))))

(assert (=> d!1624601 (= res!2149874 (<= (size!38941 (list!18947 (xs!18858 t!4198))) 512))))

(assert (=> d!1624601 (= (inv!77254 t!4198) e!3151619)))

(declare-fun b!5047682 () Bool)

(declare-fun res!2149875 () Bool)

(assert (=> b!5047682 (=> (not res!2149875) (not e!3151619))))

(assert (=> b!5047682 (= res!2149875 (= (csize!31291 t!4198) (size!38941 (list!18947 (xs!18858 t!4198)))))))

(declare-fun b!5047683 () Bool)

(assert (=> b!5047683 (= e!3151619 (and (> (csize!31291 t!4198) 0) (<= (csize!31291 t!4198) 512)))))

(assert (= (and d!1624601 res!2149874) b!5047682))

(assert (= (and b!5047682 res!2149875) b!5047683))

(declare-fun m!6083062 () Bool)

(assert (=> d!1624601 m!6083062))

(assert (=> d!1624601 m!6083062))

(declare-fun m!6083064 () Bool)

(assert (=> d!1624601 m!6083064))

(assert (=> b!5047682 m!6083062))

(assert (=> b!5047682 m!6083062))

(assert (=> b!5047682 m!6083064))

(assert (=> b!5046972 d!1624601))

(declare-fun d!1624603 () Bool)

(assert (=> d!1624603 (= (BigIntAbs!0 (ite c!865310 (cheight!15741 (right!43054 t!4198)) (csize!31291 (right!43054 t!4198)))) (ite (>= (ite c!865310 (cheight!15741 (right!43054 t!4198)) (csize!31291 (right!43054 t!4198))) 0) (ite c!865310 (cheight!15741 (right!43054 t!4198)) (csize!31291 (right!43054 t!4198))) (- (ite c!865310 (cheight!15741 (right!43054 t!4198)) (csize!31291 (right!43054 t!4198))))))))

(assert (=> bm!351699 d!1624603))

(declare-fun d!1624605 () Bool)

(declare-fun lt!2085723 () Int)

(assert (=> d!1624605 (>= lt!2085723 0)))

(declare-fun e!3151623 () Int)

(assert (=> d!1624605 (= lt!2085723 e!3151623)))

(declare-fun c!865567 () Bool)

(assert (=> d!1624605 (= c!865567 ((_ is Nil!58318) (list!18945 t!4198)))))

(assert (=> d!1624605 (= (size!38941 (list!18945 t!4198)) lt!2085723)))

(declare-fun b!5047688 () Bool)

(assert (=> b!5047688 (= e!3151623 0)))

(declare-fun b!5047689 () Bool)

(assert (=> b!5047689 (= e!3151623 (+ 1 (size!38941 (t!371063 (list!18945 t!4198)))))))

(assert (= (and d!1624605 c!865567) b!5047688))

(assert (= (and d!1624605 (not c!865567)) b!5047689))

(declare-fun m!6083072 () Bool)

(assert (=> b!5047689 m!6083072))

(assert (=> d!1624293 d!1624605))

(declare-fun b!5047696 () Bool)

(declare-fun e!3151627 () List!58442)

(assert (=> b!5047696 (= e!3151627 (++!12745 (list!18945 (left!42724 t!4198)) (list!18945 (right!43054 t!4198))))))

(declare-fun d!1624607 () Bool)

(declare-fun c!865568 () Bool)

(assert (=> d!1624607 (= c!865568 ((_ is Empty!15530) t!4198))))

(declare-fun e!3151626 () List!58442)

(assert (=> d!1624607 (= (list!18945 t!4198) e!3151626)))

(declare-fun b!5047694 () Bool)

(assert (=> b!5047694 (= e!3151626 e!3151627)))

(declare-fun c!865569 () Bool)

(assert (=> b!5047694 (= c!865569 ((_ is Leaf!25759) t!4198))))

(declare-fun b!5047695 () Bool)

(assert (=> b!5047695 (= e!3151627 (list!18947 (xs!18858 t!4198)))))

(declare-fun b!5047693 () Bool)

(assert (=> b!5047693 (= e!3151626 Nil!58318)))

(assert (= (and d!1624607 c!865568) b!5047693))

(assert (= (and d!1624607 (not c!865568)) b!5047694))

(assert (= (and b!5047694 c!865569) b!5047695))

(assert (= (and b!5047694 (not c!865569)) b!5047696))

(assert (=> b!5047696 m!6082144))

(assert (=> b!5047696 m!6082156))

(assert (=> b!5047696 m!6082144))

(assert (=> b!5047696 m!6082156))

(declare-fun m!6083080 () Bool)

(assert (=> b!5047696 m!6083080))

(assert (=> b!5047695 m!6083062))

(assert (=> d!1624293 d!1624607))

(declare-fun b!5047699 () Bool)

(declare-fun e!3151630 () Bool)

(declare-fun tp!1411841 () Bool)

(assert (=> b!5047699 (= e!3151630 (and tp_is_empty!36823 tp!1411841))))

(assert (=> b!5047194 (= tp!1411822 e!3151630)))

(assert (= (and b!5047194 ((_ is Cons!58318) (innerList!15618 (xs!18858 (left!42724 t!4198))))) b!5047699))

(declare-fun b!5047700 () Bool)

(declare-fun e!3151631 () Bool)

(declare-fun tp!1411842 () Bool)

(assert (=> b!5047700 (= e!3151631 (and tp_is_empty!36823 tp!1411842))))

(assert (=> b!5047183 (= tp!1411813 e!3151631)))

(assert (= (and b!5047183 ((_ is Cons!58318) (t!371063 (innerList!15618 (xs!18858 t!4198))))) b!5047700))

(declare-fun tp!1411844 () Bool)

(declare-fun b!5047701 () Bool)

(declare-fun e!3151633 () Bool)

(declare-fun tp!1411843 () Bool)

(assert (=> b!5047701 (= e!3151633 (and (inv!77249 (left!42724 (left!42724 (right!43054 t!4198)))) tp!1411844 (inv!77249 (right!43054 (left!42724 (right!43054 t!4198)))) tp!1411843))))

(declare-fun b!5047703 () Bool)

(declare-fun e!3151632 () Bool)

(declare-fun tp!1411845 () Bool)

(assert (=> b!5047703 (= e!3151632 tp!1411845)))

(declare-fun b!5047702 () Bool)

(assert (=> b!5047702 (= e!3151633 (and (inv!77250 (xs!18858 (left!42724 (right!43054 t!4198)))) e!3151632))))

(assert (=> b!5047195 (= tp!1411824 (and (inv!77249 (left!42724 (right!43054 t!4198))) e!3151633))))

(assert (= (and b!5047195 ((_ is Node!15530) (left!42724 (right!43054 t!4198)))) b!5047701))

(assert (= b!5047702 b!5047703))

(assert (= (and b!5047195 ((_ is Leaf!25759) (left!42724 (right!43054 t!4198)))) b!5047702))

(declare-fun m!6083082 () Bool)

(assert (=> b!5047701 m!6083082))

(declare-fun m!6083084 () Bool)

(assert (=> b!5047701 m!6083084))

(declare-fun m!6083086 () Bool)

(assert (=> b!5047702 m!6083086))

(assert (=> b!5047195 m!6082420))

(declare-fun b!5047704 () Bool)

(declare-fun tp!1411847 () Bool)

(declare-fun tp!1411846 () Bool)

(declare-fun e!3151635 () Bool)

(assert (=> b!5047704 (= e!3151635 (and (inv!77249 (left!42724 (right!43054 (right!43054 t!4198)))) tp!1411847 (inv!77249 (right!43054 (right!43054 (right!43054 t!4198)))) tp!1411846))))

(declare-fun b!5047706 () Bool)

(declare-fun e!3151634 () Bool)

(declare-fun tp!1411848 () Bool)

(assert (=> b!5047706 (= e!3151634 tp!1411848)))

(declare-fun b!5047705 () Bool)

(assert (=> b!5047705 (= e!3151635 (and (inv!77250 (xs!18858 (right!43054 (right!43054 t!4198)))) e!3151634))))

(assert (=> b!5047195 (= tp!1411823 (and (inv!77249 (right!43054 (right!43054 t!4198))) e!3151635))))

(assert (= (and b!5047195 ((_ is Node!15530) (right!43054 (right!43054 t!4198)))) b!5047704))

(assert (= b!5047705 b!5047706))

(assert (= (and b!5047195 ((_ is Leaf!25759) (right!43054 (right!43054 t!4198)))) b!5047705))

(declare-fun m!6083088 () Bool)

(assert (=> b!5047704 m!6083088))

(declare-fun m!6083090 () Bool)

(assert (=> b!5047704 m!6083090))

(declare-fun m!6083092 () Bool)

(assert (=> b!5047705 m!6083092))

(assert (=> b!5047195 m!6082422))

(declare-fun b!5047707 () Bool)

(declare-fun e!3151636 () Bool)

(declare-fun tp!1411849 () Bool)

(assert (=> b!5047707 (= e!3151636 (and tp_is_empty!36823 tp!1411849))))

(assert (=> b!5047197 (= tp!1411825 e!3151636)))

(assert (= (and b!5047197 ((_ is Cons!58318) (innerList!15618 (xs!18858 (right!43054 t!4198))))) b!5047707))

(declare-fun b!5047708 () Bool)

(declare-fun e!3151638 () Bool)

(declare-fun tp!1411850 () Bool)

(declare-fun tp!1411851 () Bool)

(assert (=> b!5047708 (= e!3151638 (and (inv!77249 (left!42724 (left!42724 (left!42724 t!4198)))) tp!1411851 (inv!77249 (right!43054 (left!42724 (left!42724 t!4198)))) tp!1411850))))

(declare-fun b!5047710 () Bool)

(declare-fun e!3151637 () Bool)

(declare-fun tp!1411852 () Bool)

(assert (=> b!5047710 (= e!3151637 tp!1411852)))

(declare-fun b!5047709 () Bool)

(assert (=> b!5047709 (= e!3151638 (and (inv!77250 (xs!18858 (left!42724 (left!42724 t!4198)))) e!3151637))))

(assert (=> b!5047192 (= tp!1411821 (and (inv!77249 (left!42724 (left!42724 t!4198))) e!3151638))))

(assert (= (and b!5047192 ((_ is Node!15530) (left!42724 (left!42724 t!4198)))) b!5047708))

(assert (= b!5047709 b!5047710))

(assert (= (and b!5047192 ((_ is Leaf!25759) (left!42724 (left!42724 t!4198)))) b!5047709))

(declare-fun m!6083094 () Bool)

(assert (=> b!5047708 m!6083094))

(declare-fun m!6083096 () Bool)

(assert (=> b!5047708 m!6083096))

(declare-fun m!6083098 () Bool)

(assert (=> b!5047709 m!6083098))

(assert (=> b!5047192 m!6082414))

(declare-fun b!5047711 () Bool)

(declare-fun e!3151640 () Bool)

(declare-fun tp!1411853 () Bool)

(declare-fun tp!1411854 () Bool)

(assert (=> b!5047711 (= e!3151640 (and (inv!77249 (left!42724 (right!43054 (left!42724 t!4198)))) tp!1411854 (inv!77249 (right!43054 (right!43054 (left!42724 t!4198)))) tp!1411853))))

(declare-fun b!5047713 () Bool)

(declare-fun e!3151639 () Bool)

(declare-fun tp!1411855 () Bool)

(assert (=> b!5047713 (= e!3151639 tp!1411855)))

(declare-fun b!5047712 () Bool)

(assert (=> b!5047712 (= e!3151640 (and (inv!77250 (xs!18858 (right!43054 (left!42724 t!4198)))) e!3151639))))

(assert (=> b!5047192 (= tp!1411820 (and (inv!77249 (right!43054 (left!42724 t!4198))) e!3151640))))

(assert (= (and b!5047192 ((_ is Node!15530) (right!43054 (left!42724 t!4198)))) b!5047711))

(assert (= b!5047712 b!5047713))

(assert (= (and b!5047192 ((_ is Leaf!25759) (right!43054 (left!42724 t!4198)))) b!5047712))

(declare-fun m!6083100 () Bool)

(assert (=> b!5047711 m!6083100))

(declare-fun m!6083102 () Bool)

(assert (=> b!5047711 m!6083102))

(declare-fun m!6083104 () Bool)

(assert (=> b!5047712 m!6083104))

(assert (=> b!5047192 m!6082416))

(check-sat (not b!5047700) (not b!5047497) (not d!1624497) (not b!5047334) (not b!5047650) (not b!5047588) (not b!5047706) (not b!5047452) (not b!5047711) (not b!5047386) (not b!5047662) (not b!5047590) (not b!5047451) (not b!5047699) (not b!5047582) (not b!5047296) (not b!5047432) (not b!5047195) (not b!5047420) (not d!1624589) (not b!5047545) (not d!1624379) (not b!5047417) (not d!1624573) (not b!5047587) (not b!5047701) (not b!5047408) tp_is_empty!36823 (not b!5047559) (not b!5047411) (not b!5047603) (not b!5047485) (not b!5047644) (not b!5047261) (not b!5047245) (not d!1624545) (not bm!351725) (not b!5047192) (not b!5047577) (not b!5047605) (not b!5047260) (not b!5047576) (not b!5047593) (not b!5047610) (not d!1624513) (not b!5047696) (not b!5047626) (not b!5047568) (not b!5047705) (not bm!351721) (not b!5047606) (not b!5047270) (not b!5047608) (not b!5047629) (not b!5047592) (not d!1624449) (not d!1624465) (not b!5047242) (not b!5047607) (not b!5047713) (not b!5047416) (not b!5047638) (not b!5047609) (not b!5047632) (not b!5047246) (not d!1624439) (not b!5047712) (not b!5047338) (not b!5047412) (not d!1624537) (not b!5047682) (not b!5047494) (not b!5047540) (not b!5047674) (not b!5047616) (not b!5047240) (not b!5047660) (not bm!351729) (not b!5047337) (not b!5047702) (not b!5047448) (not b!5047498) (not b!5047502) (not b!5047493) (not bm!351730) (not b!5047708) (not b!5047585) (not b!5047421) (not b!5047490) (not b!5047501) (not d!1624381) (not b!5047704) (not b!5047231) (not d!1624421) (not b!5047631) (not d!1624383) (not d!1624397) (not d!1624403) (not b!5047676) (not d!1624471) (not d!1624437) (not d!1624561) (not b!5047710) (not b!5047259) (not b!5047591) (not b!5047589) (not b!5047668) (not d!1624485) (not b!5047331) (not b!5047391) (not d!1624467) (not b!5047482) (not d!1624459) (not d!1624601) (not b!5047637) (not b!5047584) (not b!5047554) (not b!5047560) (not b!5047633) (not b!5047546) (not b!5047569) (not bm!351722) (not b!5047658) (not d!1624547) (not d!1624507) (not b!5047695) (not bm!351732) (not b!5047286) (not d!1624483) (not bm!351731) (not b!5047689) (not d!1624469) (not b!5047709) (not b!5047680) (not b!5047288) (not b!5047447) (not b!5047541) (not b!5047433) (not b!5047621) (not b!5047703) (not b!5047707) (not b!5047651) (not d!1624391) (not b!5047434) (not b!5047628) (not b!5047241))
(check-sat)
