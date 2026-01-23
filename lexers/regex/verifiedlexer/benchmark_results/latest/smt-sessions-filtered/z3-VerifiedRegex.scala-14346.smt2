; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749226 () Bool)

(assert start!749226)

(declare-fun tp!2360223 () Bool)

(declare-fun e!4684166 () Bool)

(declare-fun b!7938460 () Bool)

(declare-fun tp!2360222 () Bool)

(declare-datatypes ((T!146010 0))(
  ( (T!146011 (val!32090 Int)) )
))
(declare-datatypes ((List!74602 0))(
  ( (Nil!74478) (Cons!74478 (h!80926 T!146010) (t!390331 List!74602)) )
))
(declare-datatypes ((IArray!31921 0))(
  ( (IArray!31922 (innerList!16018 List!74602)) )
))
(declare-datatypes ((Conc!15930 0))(
  ( (Node!15930 (left!56916 Conc!15930) (right!57246 Conc!15930) (csize!32090 Int) (cheight!16141 Int)) (Leaf!30277 (xs!19328 IArray!31921) (csize!32091 Int)) (Empty!15930) )
))
(declare-fun t!3690 () Conc!15930)

(declare-fun inv!95872 (Conc!15930) Bool)

(assert (=> b!7938460 (= e!4684166 (and (inv!95872 (left!56916 t!3690)) tp!2360222 (inv!95872 (right!57246 t!3690)) tp!2360223))))

(declare-fun b!7938461 () Bool)

(declare-fun e!4684165 () Bool)

(declare-fun tp!2360224 () Bool)

(assert (=> b!7938461 (= e!4684165 tp!2360224)))

(declare-fun b!7938462 () Bool)

(declare-fun inv!95873 (IArray!31921) Bool)

(assert (=> b!7938462 (= e!4684166 (and (inv!95873 (xs!19328 t!3690)) e!4684165))))

(declare-fun b!7938463 () Bool)

(declare-fun e!4684168 () Bool)

(declare-fun e!4684167 () Bool)

(assert (=> b!7938463 (= e!4684168 e!4684167)))

(declare-fun res!3149401 () Bool)

(assert (=> b!7938463 (=> (not res!3149401) (not e!4684167))))

(declare-fun lt!2695640 () Int)

(assert (=> b!7938463 (= res!3149401 (and (<= (- 1) lt!2695640) (<= lt!2695640 1)))))

(declare-fun height!2237 (Conc!15930) Int)

(assert (=> b!7938463 (= lt!2695640 (- (height!2237 (left!56916 t!3690)) (height!2237 (right!57246 t!3690))))))

(declare-fun res!3149402 () Bool)

(assert (=> start!749226 (=> (not res!3149402) (not e!4684168))))

(get-info :version)

(assert (=> start!749226 (= res!3149402 ((_ is Node!15930) t!3690))))

(assert (=> start!749226 e!4684168))

(assert (=> start!749226 (and (inv!95872 t!3690) e!4684166)))

(declare-fun b!7938464 () Bool)

(declare-fun ConcPrimitiveSize!48 (Conc!15930) Int)

(assert (=> b!7938464 (= e!4684167 (>= (ConcPrimitiveSize!48 (left!56916 t!3690)) (ConcPrimitiveSize!48 t!3690)))))

(assert (= (and start!749226 res!3149402) b!7938463))

(assert (= (and b!7938463 res!3149401) b!7938464))

(assert (= (and start!749226 ((_ is Node!15930) t!3690)) b!7938460))

(assert (= b!7938462 b!7938461))

(assert (= (and start!749226 ((_ is Leaf!30277) t!3690)) b!7938462))

(declare-fun m!8327576 () Bool)

(assert (=> b!7938460 m!8327576))

(declare-fun m!8327578 () Bool)

(assert (=> b!7938460 m!8327578))

(declare-fun m!8327580 () Bool)

(assert (=> start!749226 m!8327580))

(declare-fun m!8327582 () Bool)

(assert (=> b!7938462 m!8327582))

(declare-fun m!8327584 () Bool)

(assert (=> b!7938463 m!8327584))

(declare-fun m!8327586 () Bool)

(assert (=> b!7938463 m!8327586))

(declare-fun m!8327588 () Bool)

(assert (=> b!7938464 m!8327588))

(declare-fun m!8327590 () Bool)

(assert (=> b!7938464 m!8327590))

(check-sat (not b!7938463) (not start!749226) (not b!7938464) (not b!7938460) (not b!7938462) (not b!7938461))
(check-sat)
(get-model)

(declare-fun d!2374313 () Bool)

(declare-fun size!43305 (List!74602) Int)

(assert (=> d!2374313 (= (inv!95873 (xs!19328 t!3690)) (<= (size!43305 (innerList!16018 (xs!19328 t!3690))) 2147483647))))

(declare-fun bs!1969311 () Bool)

(assert (= bs!1969311 d!2374313))

(declare-fun m!8327592 () Bool)

(assert (=> bs!1969311 m!8327592))

(assert (=> b!7938462 d!2374313))

(declare-fun d!2374317 () Bool)

(declare-fun c!1458471 () Bool)

(assert (=> d!2374317 (= c!1458471 ((_ is Node!15930) t!3690))))

(declare-fun e!4684177 () Bool)

(assert (=> d!2374317 (= (inv!95872 t!3690) e!4684177)))

(declare-fun b!7938479 () Bool)

(declare-fun inv!95874 (Conc!15930) Bool)

(assert (=> b!7938479 (= e!4684177 (inv!95874 t!3690))))

(declare-fun b!7938480 () Bool)

(declare-fun e!4684178 () Bool)

(assert (=> b!7938480 (= e!4684177 e!4684178)))

(declare-fun res!3149405 () Bool)

(assert (=> b!7938480 (= res!3149405 (not ((_ is Leaf!30277) t!3690)))))

(assert (=> b!7938480 (=> res!3149405 e!4684178)))

(declare-fun b!7938481 () Bool)

(declare-fun inv!95875 (Conc!15930) Bool)

(assert (=> b!7938481 (= e!4684178 (inv!95875 t!3690))))

(assert (= (and d!2374317 c!1458471) b!7938479))

(assert (= (and d!2374317 (not c!1458471)) b!7938480))

(assert (= (and b!7938480 (not res!3149405)) b!7938481))

(declare-fun m!8327594 () Bool)

(assert (=> b!7938479 m!8327594))

(declare-fun m!8327596 () Bool)

(assert (=> b!7938481 m!8327596))

(assert (=> start!749226 d!2374317))

(declare-fun d!2374319 () Bool)

(declare-fun c!1458472 () Bool)

(assert (=> d!2374319 (= c!1458472 ((_ is Node!15930) (left!56916 t!3690)))))

(declare-fun e!4684179 () Bool)

(assert (=> d!2374319 (= (inv!95872 (left!56916 t!3690)) e!4684179)))

(declare-fun b!7938482 () Bool)

(assert (=> b!7938482 (= e!4684179 (inv!95874 (left!56916 t!3690)))))

(declare-fun b!7938483 () Bool)

(declare-fun e!4684180 () Bool)

(assert (=> b!7938483 (= e!4684179 e!4684180)))

(declare-fun res!3149406 () Bool)

(assert (=> b!7938483 (= res!3149406 (not ((_ is Leaf!30277) (left!56916 t!3690))))))

(assert (=> b!7938483 (=> res!3149406 e!4684180)))

(declare-fun b!7938484 () Bool)

(assert (=> b!7938484 (= e!4684180 (inv!95875 (left!56916 t!3690)))))

(assert (= (and d!2374319 c!1458472) b!7938482))

(assert (= (and d!2374319 (not c!1458472)) b!7938483))

(assert (= (and b!7938483 (not res!3149406)) b!7938484))

(declare-fun m!8327598 () Bool)

(assert (=> b!7938482 m!8327598))

(declare-fun m!8327600 () Bool)

(assert (=> b!7938484 m!8327600))

(assert (=> b!7938460 d!2374319))

(declare-fun d!2374321 () Bool)

(declare-fun c!1458475 () Bool)

(assert (=> d!2374321 (= c!1458475 ((_ is Node!15930) (right!57246 t!3690)))))

(declare-fun e!4684183 () Bool)

(assert (=> d!2374321 (= (inv!95872 (right!57246 t!3690)) e!4684183)))

(declare-fun b!7938489 () Bool)

(assert (=> b!7938489 (= e!4684183 (inv!95874 (right!57246 t!3690)))))

(declare-fun b!7938490 () Bool)

(declare-fun e!4684184 () Bool)

(assert (=> b!7938490 (= e!4684183 e!4684184)))

(declare-fun res!3149407 () Bool)

(assert (=> b!7938490 (= res!3149407 (not ((_ is Leaf!30277) (right!57246 t!3690))))))

(assert (=> b!7938490 (=> res!3149407 e!4684184)))

(declare-fun b!7938491 () Bool)

(assert (=> b!7938491 (= e!4684184 (inv!95875 (right!57246 t!3690)))))

(assert (= (and d!2374321 c!1458475) b!7938489))

(assert (= (and d!2374321 (not c!1458475)) b!7938490))

(assert (= (and b!7938490 (not res!3149407)) b!7938491))

(declare-fun m!8327604 () Bool)

(assert (=> b!7938489 m!8327604))

(declare-fun m!8327606 () Bool)

(assert (=> b!7938491 m!8327606))

(assert (=> b!7938460 d!2374321))

(declare-fun b!7938504 () Bool)

(declare-fun e!4684192 () Int)

(declare-fun call!735685 () Int)

(declare-fun IArrayPrimitiveSize!47 (IArray!31921) Int)

(assert (=> b!7938504 (= e!4684192 (+ 1 (IArrayPrimitiveSize!47 (xs!19328 (left!56916 t!3690))) call!735685))))

(declare-fun bm!735680 () Bool)

(declare-fun c!1458483 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!735680 (= call!735685 (BigIntAbs!0 (ite c!1458483 (csize!32090 (left!56916 t!3690)) (csize!32091 (left!56916 t!3690)))))))

(declare-fun d!2374323 () Bool)

(declare-fun lt!2695647 () Int)

(assert (=> d!2374323 (>= lt!2695647 0)))

(declare-fun e!4684191 () Int)

(assert (=> d!2374323 (= lt!2695647 e!4684191)))

(assert (=> d!2374323 (= c!1458483 ((_ is Node!15930) (left!56916 t!3690)))))

(assert (=> d!2374323 (= (ConcPrimitiveSize!48 (left!56916 t!3690)) lt!2695647)))

(declare-fun b!7938505 () Bool)

(assert (=> b!7938505 (= e!4684191 e!4684192)))

(declare-fun c!1458482 () Bool)

(assert (=> b!7938505 (= c!1458482 ((_ is Leaf!30277) (left!56916 t!3690)))))

(declare-fun b!7938506 () Bool)

(assert (=> b!7938506 (= e!4684192 0)))

(declare-fun b!7938507 () Bool)

(assert (=> b!7938507 (= e!4684191 (+ 1 (ConcPrimitiveSize!48 (left!56916 (left!56916 t!3690))) (ConcPrimitiveSize!48 (right!57246 (left!56916 t!3690))) call!735685 (BigIntAbs!0 (cheight!16141 (left!56916 t!3690)))))))

(assert (= (and d!2374323 c!1458483) b!7938507))

(assert (= (and d!2374323 (not c!1458483)) b!7938505))

(assert (= (and b!7938505 c!1458482) b!7938504))

(assert (= (and b!7938505 (not c!1458482)) b!7938506))

(assert (= (or b!7938507 b!7938504) bm!735680))

(declare-fun m!8327626 () Bool)

(assert (=> b!7938504 m!8327626))

(declare-fun m!8327628 () Bool)

(assert (=> bm!735680 m!8327628))

(declare-fun m!8327630 () Bool)

(assert (=> b!7938507 m!8327630))

(declare-fun m!8327632 () Bool)

(assert (=> b!7938507 m!8327632))

(declare-fun m!8327634 () Bool)

(assert (=> b!7938507 m!8327634))

(assert (=> b!7938464 d!2374323))

(declare-fun b!7938514 () Bool)

(declare-fun e!4684198 () Int)

(declare-fun call!735686 () Int)

(assert (=> b!7938514 (= e!4684198 (+ 1 (IArrayPrimitiveSize!47 (xs!19328 t!3690)) call!735686))))

(declare-fun bm!735681 () Bool)

(declare-fun c!1458487 () Bool)

(assert (=> bm!735681 (= call!735686 (BigIntAbs!0 (ite c!1458487 (csize!32090 t!3690) (csize!32091 t!3690))))))

(declare-fun d!2374335 () Bool)

(declare-fun lt!2695648 () Int)

(assert (=> d!2374335 (>= lt!2695648 0)))

(declare-fun e!4684197 () Int)

(assert (=> d!2374335 (= lt!2695648 e!4684197)))

(assert (=> d!2374335 (= c!1458487 ((_ is Node!15930) t!3690))))

(assert (=> d!2374335 (= (ConcPrimitiveSize!48 t!3690) lt!2695648)))

(declare-fun b!7938515 () Bool)

(assert (=> b!7938515 (= e!4684197 e!4684198)))

(declare-fun c!1458486 () Bool)

(assert (=> b!7938515 (= c!1458486 ((_ is Leaf!30277) t!3690))))

(declare-fun b!7938516 () Bool)

(assert (=> b!7938516 (= e!4684198 0)))

(declare-fun b!7938517 () Bool)

(assert (=> b!7938517 (= e!4684197 (+ 1 (ConcPrimitiveSize!48 (left!56916 t!3690)) (ConcPrimitiveSize!48 (right!57246 t!3690)) call!735686 (BigIntAbs!0 (cheight!16141 t!3690))))))

(assert (= (and d!2374335 c!1458487) b!7938517))

(assert (= (and d!2374335 (not c!1458487)) b!7938515))

(assert (= (and b!7938515 c!1458486) b!7938514))

(assert (= (and b!7938515 (not c!1458486)) b!7938516))

(assert (= (or b!7938517 b!7938514) bm!735681))

(declare-fun m!8327636 () Bool)

(assert (=> b!7938514 m!8327636))

(declare-fun m!8327638 () Bool)

(assert (=> bm!735681 m!8327638))

(assert (=> b!7938517 m!8327588))

(declare-fun m!8327640 () Bool)

(assert (=> b!7938517 m!8327640))

(declare-fun m!8327642 () Bool)

(assert (=> b!7938517 m!8327642))

(assert (=> b!7938464 d!2374335))

(declare-fun d!2374337 () Bool)

(assert (=> d!2374337 (= (height!2237 (left!56916 t!3690)) (ite ((_ is Empty!15930) (left!56916 t!3690)) 0 (ite ((_ is Leaf!30277) (left!56916 t!3690)) 1 (cheight!16141 (left!56916 t!3690)))))))

(assert (=> b!7938463 d!2374337))

(declare-fun d!2374341 () Bool)

(assert (=> d!2374341 (= (height!2237 (right!57246 t!3690)) (ite ((_ is Empty!15930) (right!57246 t!3690)) 0 (ite ((_ is Leaf!30277) (right!57246 t!3690)) 1 (cheight!16141 (right!57246 t!3690)))))))

(assert (=> b!7938463 d!2374341))

(declare-fun b!7938535 () Bool)

(declare-fun e!4684209 () Bool)

(declare-fun tp_is_empty!53287 () Bool)

(declare-fun tp!2360229 () Bool)

(assert (=> b!7938535 (= e!4684209 (and tp_is_empty!53287 tp!2360229))))

(assert (=> b!7938461 (= tp!2360224 e!4684209)))

(assert (= (and b!7938461 ((_ is Cons!74478) (innerList!16018 (xs!19328 t!3690)))) b!7938535))

(declare-fun e!4684219 () Bool)

(declare-fun tp!2360245 () Bool)

(declare-fun tp!2360243 () Bool)

(declare-fun b!7938553 () Bool)

(assert (=> b!7938553 (= e!4684219 (and (inv!95872 (left!56916 (left!56916 t!3690))) tp!2360245 (inv!95872 (right!57246 (left!56916 t!3690))) tp!2360243))))

(declare-fun b!7938555 () Bool)

(declare-fun e!4684220 () Bool)

(declare-fun tp!2360244 () Bool)

(assert (=> b!7938555 (= e!4684220 tp!2360244)))

(declare-fun b!7938554 () Bool)

(assert (=> b!7938554 (= e!4684219 (and (inv!95873 (xs!19328 (left!56916 t!3690))) e!4684220))))

(assert (=> b!7938460 (= tp!2360222 (and (inv!95872 (left!56916 t!3690)) e!4684219))))

(assert (= (and b!7938460 ((_ is Node!15930) (left!56916 t!3690))) b!7938553))

(assert (= b!7938554 b!7938555))

(assert (= (and b!7938460 ((_ is Leaf!30277) (left!56916 t!3690))) b!7938554))

(declare-fun m!8327656 () Bool)

(assert (=> b!7938553 m!8327656))

(declare-fun m!8327658 () Bool)

(assert (=> b!7938553 m!8327658))

(declare-fun m!8327660 () Bool)

(assert (=> b!7938554 m!8327660))

(assert (=> b!7938460 m!8327576))

(declare-fun b!7938559 () Bool)

(declare-fun tp!2360249 () Bool)

(declare-fun e!4684223 () Bool)

(declare-fun tp!2360251 () Bool)

(assert (=> b!7938559 (= e!4684223 (and (inv!95872 (left!56916 (right!57246 t!3690))) tp!2360251 (inv!95872 (right!57246 (right!57246 t!3690))) tp!2360249))))

(declare-fun b!7938561 () Bool)

(declare-fun e!4684224 () Bool)

(declare-fun tp!2360250 () Bool)

(assert (=> b!7938561 (= e!4684224 tp!2360250)))

(declare-fun b!7938560 () Bool)

(assert (=> b!7938560 (= e!4684223 (and (inv!95873 (xs!19328 (right!57246 t!3690))) e!4684224))))

(assert (=> b!7938460 (= tp!2360223 (and (inv!95872 (right!57246 t!3690)) e!4684223))))

(assert (= (and b!7938460 ((_ is Node!15930) (right!57246 t!3690))) b!7938559))

(assert (= b!7938560 b!7938561))

(assert (= (and b!7938460 ((_ is Leaf!30277) (right!57246 t!3690))) b!7938560))

(declare-fun m!8327668 () Bool)

(assert (=> b!7938559 m!8327668))

(declare-fun m!8327670 () Bool)

(assert (=> b!7938559 m!8327670))

(declare-fun m!8327672 () Bool)

(assert (=> b!7938560 m!8327672))

(assert (=> b!7938460 m!8327578))

(check-sat (not b!7938489) (not b!7938559) (not b!7938535) tp_is_empty!53287 (not b!7938517) (not b!7938553) (not b!7938482) (not d!2374313) (not b!7938514) (not b!7938481) (not b!7938555) (not b!7938507) (not b!7938560) (not bm!735680) (not b!7938491) (not b!7938460) (not b!7938504) (not b!7938484) (not b!7938479) (not b!7938554) (not b!7938561) (not bm!735681))
(check-sat)
(get-model)

(assert (=> b!7938517 d!2374323))

(declare-fun b!7938565 () Bool)

(declare-fun e!4684228 () Int)

(declare-fun call!735687 () Int)

(assert (=> b!7938565 (= e!4684228 (+ 1 (IArrayPrimitiveSize!47 (xs!19328 (right!57246 t!3690))) call!735687))))

(declare-fun bm!735682 () Bool)

(declare-fun c!1458492 () Bool)

(assert (=> bm!735682 (= call!735687 (BigIntAbs!0 (ite c!1458492 (csize!32090 (right!57246 t!3690)) (csize!32091 (right!57246 t!3690)))))))

(declare-fun d!2374345 () Bool)

(declare-fun lt!2695649 () Int)

(assert (=> d!2374345 (>= lt!2695649 0)))

(declare-fun e!4684227 () Int)

(assert (=> d!2374345 (= lt!2695649 e!4684227)))

(assert (=> d!2374345 (= c!1458492 ((_ is Node!15930) (right!57246 t!3690)))))

(assert (=> d!2374345 (= (ConcPrimitiveSize!48 (right!57246 t!3690)) lt!2695649)))

(declare-fun b!7938566 () Bool)

(assert (=> b!7938566 (= e!4684227 e!4684228)))

(declare-fun c!1458491 () Bool)

(assert (=> b!7938566 (= c!1458491 ((_ is Leaf!30277) (right!57246 t!3690)))))

(declare-fun b!7938567 () Bool)

(assert (=> b!7938567 (= e!4684228 0)))

(declare-fun b!7938568 () Bool)

(assert (=> b!7938568 (= e!4684227 (+ 1 (ConcPrimitiveSize!48 (left!56916 (right!57246 t!3690))) (ConcPrimitiveSize!48 (right!57246 (right!57246 t!3690))) call!735687 (BigIntAbs!0 (cheight!16141 (right!57246 t!3690)))))))

(assert (= (and d!2374345 c!1458492) b!7938568))

(assert (= (and d!2374345 (not c!1458492)) b!7938566))

(assert (= (and b!7938566 c!1458491) b!7938565))

(assert (= (and b!7938566 (not c!1458491)) b!7938567))

(assert (= (or b!7938568 b!7938565) bm!735682))

(declare-fun m!8327680 () Bool)

(assert (=> b!7938565 m!8327680))

(declare-fun m!8327682 () Bool)

(assert (=> bm!735682 m!8327682))

(declare-fun m!8327684 () Bool)

(assert (=> b!7938568 m!8327684))

(declare-fun m!8327686 () Bool)

(assert (=> b!7938568 m!8327686))

(declare-fun m!8327688 () Bool)

(assert (=> b!7938568 m!8327688))

(assert (=> b!7938517 d!2374345))

(declare-fun d!2374347 () Bool)

(assert (=> d!2374347 (= (BigIntAbs!0 (cheight!16141 t!3690)) (ite (>= (cheight!16141 t!3690) 0) (cheight!16141 t!3690) (- (cheight!16141 t!3690))))))

(assert (=> b!7938517 d!2374347))

(declare-fun d!2374349 () Bool)

(assert (=> d!2374349 (= (BigIntAbs!0 (ite c!1458483 (csize!32090 (left!56916 t!3690)) (csize!32091 (left!56916 t!3690)))) (ite (>= (ite c!1458483 (csize!32090 (left!56916 t!3690)) (csize!32091 (left!56916 t!3690))) 0) (ite c!1458483 (csize!32090 (left!56916 t!3690)) (csize!32091 (left!56916 t!3690))) (- (ite c!1458483 (csize!32090 (left!56916 t!3690)) (csize!32091 (left!56916 t!3690))))))))

(assert (=> bm!735680 d!2374349))

(declare-fun d!2374351 () Bool)

(declare-fun lt!2695652 () Int)

(assert (=> d!2374351 (>= lt!2695652 0)))

(declare-fun ListPrimitiveSize!479 (List!74602) Int)

(assert (=> d!2374351 (= lt!2695652 (+ 1 (ListPrimitiveSize!479 (innerList!16018 (xs!19328 (left!56916 t!3690))))))))

(assert (=> d!2374351 (= (IArrayPrimitiveSize!47 (xs!19328 (left!56916 t!3690))) lt!2695652)))

(declare-fun bs!1969313 () Bool)

(assert (= bs!1969313 d!2374351))

(declare-fun m!8327690 () Bool)

(assert (=> bs!1969313 m!8327690))

(assert (=> b!7938504 d!2374351))

(declare-fun d!2374353 () Bool)

(assert (=> d!2374353 (= (inv!95873 (xs!19328 (right!57246 t!3690))) (<= (size!43305 (innerList!16018 (xs!19328 (right!57246 t!3690)))) 2147483647))))

(declare-fun bs!1969314 () Bool)

(assert (= bs!1969314 d!2374353))

(declare-fun m!8327692 () Bool)

(assert (=> bs!1969314 m!8327692))

(assert (=> b!7938560 d!2374353))

(declare-fun d!2374355 () Bool)

(declare-fun res!3149417 () Bool)

(declare-fun e!4684231 () Bool)

(assert (=> d!2374355 (=> (not res!3149417) (not e!4684231))))

(declare-fun list!19460 (IArray!31921) List!74602)

(assert (=> d!2374355 (= res!3149417 (<= (size!43305 (list!19460 (xs!19328 t!3690))) 512))))

(assert (=> d!2374355 (= (inv!95875 t!3690) e!4684231)))

(declare-fun b!7938573 () Bool)

(declare-fun res!3149418 () Bool)

(assert (=> b!7938573 (=> (not res!3149418) (not e!4684231))))

(assert (=> b!7938573 (= res!3149418 (= (csize!32091 t!3690) (size!43305 (list!19460 (xs!19328 t!3690)))))))

(declare-fun b!7938574 () Bool)

(assert (=> b!7938574 (= e!4684231 (and (> (csize!32091 t!3690) 0) (<= (csize!32091 t!3690) 512)))))

(assert (= (and d!2374355 res!3149417) b!7938573))

(assert (= (and b!7938573 res!3149418) b!7938574))

(declare-fun m!8327694 () Bool)

(assert (=> d!2374355 m!8327694))

(assert (=> d!2374355 m!8327694))

(declare-fun m!8327696 () Bool)

(assert (=> d!2374355 m!8327696))

(assert (=> b!7938573 m!8327694))

(assert (=> b!7938573 m!8327694))

(assert (=> b!7938573 m!8327696))

(assert (=> b!7938481 d!2374355))

(declare-fun b!7938575 () Bool)

(declare-fun e!4684233 () Int)

(declare-fun call!735688 () Int)

(assert (=> b!7938575 (= e!4684233 (+ 1 (IArrayPrimitiveSize!47 (xs!19328 (left!56916 (left!56916 t!3690)))) call!735688))))

(declare-fun bm!735683 () Bool)

(declare-fun c!1458494 () Bool)

(assert (=> bm!735683 (= call!735688 (BigIntAbs!0 (ite c!1458494 (csize!32090 (left!56916 (left!56916 t!3690))) (csize!32091 (left!56916 (left!56916 t!3690))))))))

(declare-fun d!2374357 () Bool)

(declare-fun lt!2695653 () Int)

(assert (=> d!2374357 (>= lt!2695653 0)))

(declare-fun e!4684232 () Int)

(assert (=> d!2374357 (= lt!2695653 e!4684232)))

(assert (=> d!2374357 (= c!1458494 ((_ is Node!15930) (left!56916 (left!56916 t!3690))))))

(assert (=> d!2374357 (= (ConcPrimitiveSize!48 (left!56916 (left!56916 t!3690))) lt!2695653)))

(declare-fun b!7938576 () Bool)

(assert (=> b!7938576 (= e!4684232 e!4684233)))

(declare-fun c!1458493 () Bool)

(assert (=> b!7938576 (= c!1458493 ((_ is Leaf!30277) (left!56916 (left!56916 t!3690))))))

(declare-fun b!7938577 () Bool)

(assert (=> b!7938577 (= e!4684233 0)))

(declare-fun b!7938578 () Bool)

(assert (=> b!7938578 (= e!4684232 (+ 1 (ConcPrimitiveSize!48 (left!56916 (left!56916 (left!56916 t!3690)))) (ConcPrimitiveSize!48 (right!57246 (left!56916 (left!56916 t!3690)))) call!735688 (BigIntAbs!0 (cheight!16141 (left!56916 (left!56916 t!3690))))))))

(assert (= (and d!2374357 c!1458494) b!7938578))

(assert (= (and d!2374357 (not c!1458494)) b!7938576))

(assert (= (and b!7938576 c!1458493) b!7938575))

(assert (= (and b!7938576 (not c!1458493)) b!7938577))

(assert (= (or b!7938578 b!7938575) bm!735683))

(declare-fun m!8327698 () Bool)

(assert (=> b!7938575 m!8327698))

(declare-fun m!8327700 () Bool)

(assert (=> bm!735683 m!8327700))

(declare-fun m!8327702 () Bool)

(assert (=> b!7938578 m!8327702))

(declare-fun m!8327704 () Bool)

(assert (=> b!7938578 m!8327704))

(declare-fun m!8327706 () Bool)

(assert (=> b!7938578 m!8327706))

(assert (=> b!7938507 d!2374357))

(declare-fun b!7938579 () Bool)

(declare-fun e!4684235 () Int)

(declare-fun call!735689 () Int)

(assert (=> b!7938579 (= e!4684235 (+ 1 (IArrayPrimitiveSize!47 (xs!19328 (right!57246 (left!56916 t!3690)))) call!735689))))

(declare-fun bm!735684 () Bool)

(declare-fun c!1458496 () Bool)

(assert (=> bm!735684 (= call!735689 (BigIntAbs!0 (ite c!1458496 (csize!32090 (right!57246 (left!56916 t!3690))) (csize!32091 (right!57246 (left!56916 t!3690))))))))

(declare-fun d!2374359 () Bool)

(declare-fun lt!2695654 () Int)

(assert (=> d!2374359 (>= lt!2695654 0)))

(declare-fun e!4684234 () Int)

(assert (=> d!2374359 (= lt!2695654 e!4684234)))

(assert (=> d!2374359 (= c!1458496 ((_ is Node!15930) (right!57246 (left!56916 t!3690))))))

(assert (=> d!2374359 (= (ConcPrimitiveSize!48 (right!57246 (left!56916 t!3690))) lt!2695654)))

(declare-fun b!7938580 () Bool)

(assert (=> b!7938580 (= e!4684234 e!4684235)))

(declare-fun c!1458495 () Bool)

(assert (=> b!7938580 (= c!1458495 ((_ is Leaf!30277) (right!57246 (left!56916 t!3690))))))

(declare-fun b!7938581 () Bool)

(assert (=> b!7938581 (= e!4684235 0)))

(declare-fun b!7938582 () Bool)

(assert (=> b!7938582 (= e!4684234 (+ 1 (ConcPrimitiveSize!48 (left!56916 (right!57246 (left!56916 t!3690)))) (ConcPrimitiveSize!48 (right!57246 (right!57246 (left!56916 t!3690)))) call!735689 (BigIntAbs!0 (cheight!16141 (right!57246 (left!56916 t!3690))))))))

(assert (= (and d!2374359 c!1458496) b!7938582))

(assert (= (and d!2374359 (not c!1458496)) b!7938580))

(assert (= (and b!7938580 c!1458495) b!7938579))

(assert (= (and b!7938580 (not c!1458495)) b!7938581))

(assert (= (or b!7938582 b!7938579) bm!735684))

(declare-fun m!8327708 () Bool)

(assert (=> b!7938579 m!8327708))

(declare-fun m!8327710 () Bool)

(assert (=> bm!735684 m!8327710))

(declare-fun m!8327712 () Bool)

(assert (=> b!7938582 m!8327712))

(declare-fun m!8327714 () Bool)

(assert (=> b!7938582 m!8327714))

(declare-fun m!8327716 () Bool)

(assert (=> b!7938582 m!8327716))

(assert (=> b!7938507 d!2374359))

(declare-fun d!2374361 () Bool)

(assert (=> d!2374361 (= (BigIntAbs!0 (cheight!16141 (left!56916 t!3690))) (ite (>= (cheight!16141 (left!56916 t!3690)) 0) (cheight!16141 (left!56916 t!3690)) (- (cheight!16141 (left!56916 t!3690)))))))

(assert (=> b!7938507 d!2374361))

(declare-fun d!2374363 () Bool)

(declare-fun res!3149433 () Bool)

(declare-fun e!4684242 () Bool)

(assert (=> d!2374363 (=> (not res!3149433) (not e!4684242))))

(declare-fun size!43308 (Conc!15930) Int)

(assert (=> d!2374363 (= res!3149433 (= (csize!32090 t!3690) (+ (size!43308 (left!56916 t!3690)) (size!43308 (right!57246 t!3690)))))))

(assert (=> d!2374363 (= (inv!95874 t!3690) e!4684242)))

(declare-fun b!7938597 () Bool)

(declare-fun res!3149434 () Bool)

(assert (=> b!7938597 (=> (not res!3149434) (not e!4684242))))

(assert (=> b!7938597 (= res!3149434 (and (not (= (left!56916 t!3690) Empty!15930)) (not (= (right!57246 t!3690) Empty!15930))))))

(declare-fun b!7938598 () Bool)

(declare-fun res!3149435 () Bool)

(assert (=> b!7938598 (=> (not res!3149435) (not e!4684242))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7938598 (= res!3149435 (= (cheight!16141 t!3690) (+ (max!0 (height!2237 (left!56916 t!3690)) (height!2237 (right!57246 t!3690))) 1)))))

(declare-fun b!7938599 () Bool)

(assert (=> b!7938599 (= e!4684242 (<= 0 (cheight!16141 t!3690)))))

(assert (= (and d!2374363 res!3149433) b!7938597))

(assert (= (and b!7938597 res!3149434) b!7938598))

(assert (= (and b!7938598 res!3149435) b!7938599))

(declare-fun m!8327726 () Bool)

(assert (=> d!2374363 m!8327726))

(declare-fun m!8327728 () Bool)

(assert (=> d!2374363 m!8327728))

(assert (=> b!7938598 m!8327584))

(assert (=> b!7938598 m!8327586))

(assert (=> b!7938598 m!8327584))

(assert (=> b!7938598 m!8327586))

(declare-fun m!8327730 () Bool)

(assert (=> b!7938598 m!8327730))

(assert (=> b!7938479 d!2374363))

(declare-fun d!2374371 () Bool)

(declare-fun res!3149436 () Bool)

(declare-fun e!4684243 () Bool)

(assert (=> d!2374371 (=> (not res!3149436) (not e!4684243))))

(assert (=> d!2374371 (= res!3149436 (<= (size!43305 (list!19460 (xs!19328 (left!56916 t!3690)))) 512))))

(assert (=> d!2374371 (= (inv!95875 (left!56916 t!3690)) e!4684243)))

(declare-fun b!7938600 () Bool)

(declare-fun res!3149437 () Bool)

(assert (=> b!7938600 (=> (not res!3149437) (not e!4684243))))

(assert (=> b!7938600 (= res!3149437 (= (csize!32091 (left!56916 t!3690)) (size!43305 (list!19460 (xs!19328 (left!56916 t!3690))))))))

(declare-fun b!7938601 () Bool)

(assert (=> b!7938601 (= e!4684243 (and (> (csize!32091 (left!56916 t!3690)) 0) (<= (csize!32091 (left!56916 t!3690)) 512)))))

(assert (= (and d!2374371 res!3149436) b!7938600))

(assert (= (and b!7938600 res!3149437) b!7938601))

(declare-fun m!8327732 () Bool)

(assert (=> d!2374371 m!8327732))

(assert (=> d!2374371 m!8327732))

(declare-fun m!8327734 () Bool)

(assert (=> d!2374371 m!8327734))

(assert (=> b!7938600 m!8327732))

(assert (=> b!7938600 m!8327732))

(assert (=> b!7938600 m!8327734))

(assert (=> b!7938484 d!2374371))

(assert (=> b!7938460 d!2374319))

(assert (=> b!7938460 d!2374321))

(declare-fun d!2374373 () Bool)

(declare-fun res!3149438 () Bool)

(declare-fun e!4684244 () Bool)

(assert (=> d!2374373 (=> (not res!3149438) (not e!4684244))))

(assert (=> d!2374373 (= res!3149438 (= (csize!32090 (left!56916 t!3690)) (+ (size!43308 (left!56916 (left!56916 t!3690))) (size!43308 (right!57246 (left!56916 t!3690))))))))

(assert (=> d!2374373 (= (inv!95874 (left!56916 t!3690)) e!4684244)))

(declare-fun b!7938602 () Bool)

(declare-fun res!3149439 () Bool)

(assert (=> b!7938602 (=> (not res!3149439) (not e!4684244))))

(assert (=> b!7938602 (= res!3149439 (and (not (= (left!56916 (left!56916 t!3690)) Empty!15930)) (not (= (right!57246 (left!56916 t!3690)) Empty!15930))))))

(declare-fun b!7938603 () Bool)

(declare-fun res!3149440 () Bool)

(assert (=> b!7938603 (=> (not res!3149440) (not e!4684244))))

(assert (=> b!7938603 (= res!3149440 (= (cheight!16141 (left!56916 t!3690)) (+ (max!0 (height!2237 (left!56916 (left!56916 t!3690))) (height!2237 (right!57246 (left!56916 t!3690)))) 1)))))

(declare-fun b!7938604 () Bool)

(assert (=> b!7938604 (= e!4684244 (<= 0 (cheight!16141 (left!56916 t!3690))))))

(assert (= (and d!2374373 res!3149438) b!7938602))

(assert (= (and b!7938602 res!3149439) b!7938603))

(assert (= (and b!7938603 res!3149440) b!7938604))

(declare-fun m!8327736 () Bool)

(assert (=> d!2374373 m!8327736))

(declare-fun m!8327738 () Bool)

(assert (=> d!2374373 m!8327738))

(declare-fun m!8327740 () Bool)

(assert (=> b!7938603 m!8327740))

(declare-fun m!8327742 () Bool)

(assert (=> b!7938603 m!8327742))

(assert (=> b!7938603 m!8327740))

(assert (=> b!7938603 m!8327742))

(declare-fun m!8327744 () Bool)

(assert (=> b!7938603 m!8327744))

(assert (=> b!7938482 d!2374373))

(declare-fun d!2374375 () Bool)

(declare-fun c!1458497 () Bool)

(assert (=> d!2374375 (= c!1458497 ((_ is Node!15930) (left!56916 (right!57246 t!3690))))))

(declare-fun e!4684245 () Bool)

(assert (=> d!2374375 (= (inv!95872 (left!56916 (right!57246 t!3690))) e!4684245)))

(declare-fun b!7938605 () Bool)

(assert (=> b!7938605 (= e!4684245 (inv!95874 (left!56916 (right!57246 t!3690))))))

(declare-fun b!7938606 () Bool)

(declare-fun e!4684246 () Bool)

(assert (=> b!7938606 (= e!4684245 e!4684246)))

(declare-fun res!3149441 () Bool)

(assert (=> b!7938606 (= res!3149441 (not ((_ is Leaf!30277) (left!56916 (right!57246 t!3690)))))))

(assert (=> b!7938606 (=> res!3149441 e!4684246)))

(declare-fun b!7938607 () Bool)

(assert (=> b!7938607 (= e!4684246 (inv!95875 (left!56916 (right!57246 t!3690))))))

(assert (= (and d!2374375 c!1458497) b!7938605))

(assert (= (and d!2374375 (not c!1458497)) b!7938606))

(assert (= (and b!7938606 (not res!3149441)) b!7938607))

(declare-fun m!8327746 () Bool)

(assert (=> b!7938605 m!8327746))

(declare-fun m!8327748 () Bool)

(assert (=> b!7938607 m!8327748))

(assert (=> b!7938559 d!2374375))

(declare-fun d!2374377 () Bool)

(declare-fun c!1458498 () Bool)

(assert (=> d!2374377 (= c!1458498 ((_ is Node!15930) (right!57246 (right!57246 t!3690))))))

(declare-fun e!4684247 () Bool)

(assert (=> d!2374377 (= (inv!95872 (right!57246 (right!57246 t!3690))) e!4684247)))

(declare-fun b!7938608 () Bool)

(assert (=> b!7938608 (= e!4684247 (inv!95874 (right!57246 (right!57246 t!3690))))))

(declare-fun b!7938609 () Bool)

(declare-fun e!4684248 () Bool)

(assert (=> b!7938609 (= e!4684247 e!4684248)))

(declare-fun res!3149442 () Bool)

(assert (=> b!7938609 (= res!3149442 (not ((_ is Leaf!30277) (right!57246 (right!57246 t!3690)))))))

(assert (=> b!7938609 (=> res!3149442 e!4684248)))

(declare-fun b!7938610 () Bool)

(assert (=> b!7938610 (= e!4684248 (inv!95875 (right!57246 (right!57246 t!3690))))))

(assert (= (and d!2374377 c!1458498) b!7938608))

(assert (= (and d!2374377 (not c!1458498)) b!7938609))

(assert (= (and b!7938609 (not res!3149442)) b!7938610))

(declare-fun m!8327750 () Bool)

(assert (=> b!7938608 m!8327750))

(declare-fun m!8327752 () Bool)

(assert (=> b!7938610 m!8327752))

(assert (=> b!7938559 d!2374377))

(declare-fun d!2374379 () Bool)

(declare-fun res!3149443 () Bool)

(declare-fun e!4684249 () Bool)

(assert (=> d!2374379 (=> (not res!3149443) (not e!4684249))))

(assert (=> d!2374379 (= res!3149443 (<= (size!43305 (list!19460 (xs!19328 (right!57246 t!3690)))) 512))))

(assert (=> d!2374379 (= (inv!95875 (right!57246 t!3690)) e!4684249)))

(declare-fun b!7938611 () Bool)

(declare-fun res!3149444 () Bool)

(assert (=> b!7938611 (=> (not res!3149444) (not e!4684249))))

(assert (=> b!7938611 (= res!3149444 (= (csize!32091 (right!57246 t!3690)) (size!43305 (list!19460 (xs!19328 (right!57246 t!3690))))))))

(declare-fun b!7938612 () Bool)

(assert (=> b!7938612 (= e!4684249 (and (> (csize!32091 (right!57246 t!3690)) 0) (<= (csize!32091 (right!57246 t!3690)) 512)))))

(assert (= (and d!2374379 res!3149443) b!7938611))

(assert (= (and b!7938611 res!3149444) b!7938612))

(declare-fun m!8327754 () Bool)

(assert (=> d!2374379 m!8327754))

(assert (=> d!2374379 m!8327754))

(declare-fun m!8327756 () Bool)

(assert (=> d!2374379 m!8327756))

(assert (=> b!7938611 m!8327754))

(assert (=> b!7938611 m!8327754))

(assert (=> b!7938611 m!8327756))

(assert (=> b!7938491 d!2374379))

(declare-fun d!2374381 () Bool)

(declare-fun lt!2695657 () Int)

(assert (=> d!2374381 (>= lt!2695657 0)))

(declare-fun e!4684255 () Int)

(assert (=> d!2374381 (= lt!2695657 e!4684255)))

(declare-fun c!1458501 () Bool)

(assert (=> d!2374381 (= c!1458501 ((_ is Nil!74478) (innerList!16018 (xs!19328 t!3690))))))

(assert (=> d!2374381 (= (size!43305 (innerList!16018 (xs!19328 t!3690))) lt!2695657)))

(declare-fun b!7938626 () Bool)

(assert (=> b!7938626 (= e!4684255 0)))

(declare-fun b!7938627 () Bool)

(assert (=> b!7938627 (= e!4684255 (+ 1 (size!43305 (t!390331 (innerList!16018 (xs!19328 t!3690))))))))

(assert (= (and d!2374381 c!1458501) b!7938626))

(assert (= (and d!2374381 (not c!1458501)) b!7938627))

(declare-fun m!8327758 () Bool)

(assert (=> b!7938627 m!8327758))

(assert (=> d!2374313 d!2374381))

(declare-fun d!2374383 () Bool)

(assert (=> d!2374383 (= (inv!95873 (xs!19328 (left!56916 t!3690))) (<= (size!43305 (innerList!16018 (xs!19328 (left!56916 t!3690)))) 2147483647))))

(declare-fun bs!1969315 () Bool)

(assert (= bs!1969315 d!2374383))

(declare-fun m!8327760 () Bool)

(assert (=> bs!1969315 m!8327760))

(assert (=> b!7938554 d!2374383))

(declare-fun d!2374385 () Bool)

(declare-fun c!1458502 () Bool)

(assert (=> d!2374385 (= c!1458502 ((_ is Node!15930) (left!56916 (left!56916 t!3690))))))

(declare-fun e!4684256 () Bool)

(assert (=> d!2374385 (= (inv!95872 (left!56916 (left!56916 t!3690))) e!4684256)))

(declare-fun b!7938628 () Bool)

(assert (=> b!7938628 (= e!4684256 (inv!95874 (left!56916 (left!56916 t!3690))))))

(declare-fun b!7938629 () Bool)

(declare-fun e!4684257 () Bool)

(assert (=> b!7938629 (= e!4684256 e!4684257)))

(declare-fun res!3149454 () Bool)

(assert (=> b!7938629 (= res!3149454 (not ((_ is Leaf!30277) (left!56916 (left!56916 t!3690)))))))

(assert (=> b!7938629 (=> res!3149454 e!4684257)))

(declare-fun b!7938630 () Bool)

(assert (=> b!7938630 (= e!4684257 (inv!95875 (left!56916 (left!56916 t!3690))))))

(assert (= (and d!2374385 c!1458502) b!7938628))

(assert (= (and d!2374385 (not c!1458502)) b!7938629))

(assert (= (and b!7938629 (not res!3149454)) b!7938630))

(declare-fun m!8327772 () Bool)

(assert (=> b!7938628 m!8327772))

(declare-fun m!8327774 () Bool)

(assert (=> b!7938630 m!8327774))

(assert (=> b!7938553 d!2374385))

(declare-fun d!2374389 () Bool)

(declare-fun c!1458503 () Bool)

(assert (=> d!2374389 (= c!1458503 ((_ is Node!15930) (right!57246 (left!56916 t!3690))))))

(declare-fun e!4684259 () Bool)

(assert (=> d!2374389 (= (inv!95872 (right!57246 (left!56916 t!3690))) e!4684259)))

(declare-fun b!7938634 () Bool)

(assert (=> b!7938634 (= e!4684259 (inv!95874 (right!57246 (left!56916 t!3690))))))

(declare-fun b!7938635 () Bool)

(declare-fun e!4684260 () Bool)

(assert (=> b!7938635 (= e!4684259 e!4684260)))

(declare-fun res!3149458 () Bool)

(assert (=> b!7938635 (= res!3149458 (not ((_ is Leaf!30277) (right!57246 (left!56916 t!3690)))))))

(assert (=> b!7938635 (=> res!3149458 e!4684260)))

(declare-fun b!7938636 () Bool)

(assert (=> b!7938636 (= e!4684260 (inv!95875 (right!57246 (left!56916 t!3690))))))

(assert (= (and d!2374389 c!1458503) b!7938634))

(assert (= (and d!2374389 (not c!1458503)) b!7938635))

(assert (= (and b!7938635 (not res!3149458)) b!7938636))

(declare-fun m!8327776 () Bool)

(assert (=> b!7938634 m!8327776))

(declare-fun m!8327778 () Bool)

(assert (=> b!7938636 m!8327778))

(assert (=> b!7938553 d!2374389))

(declare-fun d!2374391 () Bool)

(assert (=> d!2374391 (= (BigIntAbs!0 (ite c!1458487 (csize!32090 t!3690) (csize!32091 t!3690))) (ite (>= (ite c!1458487 (csize!32090 t!3690) (csize!32091 t!3690)) 0) (ite c!1458487 (csize!32090 t!3690) (csize!32091 t!3690)) (- (ite c!1458487 (csize!32090 t!3690) (csize!32091 t!3690)))))))

(assert (=> bm!735681 d!2374391))

(declare-fun d!2374393 () Bool)

(declare-fun lt!2695658 () Int)

(assert (=> d!2374393 (>= lt!2695658 0)))

(assert (=> d!2374393 (= lt!2695658 (+ 1 (ListPrimitiveSize!479 (innerList!16018 (xs!19328 t!3690)))))))

(assert (=> d!2374393 (= (IArrayPrimitiveSize!47 (xs!19328 t!3690)) lt!2695658)))

(declare-fun bs!1969316 () Bool)

(assert (= bs!1969316 d!2374393))

(declare-fun m!8327790 () Bool)

(assert (=> bs!1969316 m!8327790))

(assert (=> b!7938514 d!2374393))

(declare-fun d!2374397 () Bool)

(declare-fun res!3149460 () Bool)

(declare-fun e!4684263 () Bool)

(assert (=> d!2374397 (=> (not res!3149460) (not e!4684263))))

(assert (=> d!2374397 (= res!3149460 (= (csize!32090 (right!57246 t!3690)) (+ (size!43308 (left!56916 (right!57246 t!3690))) (size!43308 (right!57246 (right!57246 t!3690))))))))

(assert (=> d!2374397 (= (inv!95874 (right!57246 t!3690)) e!4684263)))

(declare-fun b!7938640 () Bool)

(declare-fun res!3149461 () Bool)

(assert (=> b!7938640 (=> (not res!3149461) (not e!4684263))))

(assert (=> b!7938640 (= res!3149461 (and (not (= (left!56916 (right!57246 t!3690)) Empty!15930)) (not (= (right!57246 (right!57246 t!3690)) Empty!15930))))))

(declare-fun b!7938641 () Bool)

(declare-fun res!3149462 () Bool)

(assert (=> b!7938641 (=> (not res!3149462) (not e!4684263))))

(assert (=> b!7938641 (= res!3149462 (= (cheight!16141 (right!57246 t!3690)) (+ (max!0 (height!2237 (left!56916 (right!57246 t!3690))) (height!2237 (right!57246 (right!57246 t!3690)))) 1)))))

(declare-fun b!7938642 () Bool)

(assert (=> b!7938642 (= e!4684263 (<= 0 (cheight!16141 (right!57246 t!3690))))))

(assert (= (and d!2374397 res!3149460) b!7938640))

(assert (= (and b!7938640 res!3149461) b!7938641))

(assert (= (and b!7938641 res!3149462) b!7938642))

(declare-fun m!8327796 () Bool)

(assert (=> d!2374397 m!8327796))

(declare-fun m!8327798 () Bool)

(assert (=> d!2374397 m!8327798))

(declare-fun m!8327802 () Bool)

(assert (=> b!7938641 m!8327802))

(declare-fun m!8327806 () Bool)

(assert (=> b!7938641 m!8327806))

(assert (=> b!7938641 m!8327802))

(assert (=> b!7938641 m!8327806))

(declare-fun m!8327808 () Bool)

(assert (=> b!7938641 m!8327808))

(assert (=> b!7938489 d!2374397))

(declare-fun b!7938646 () Bool)

(declare-fun e!4684266 () Bool)

(declare-fun tp!2360255 () Bool)

(assert (=> b!7938646 (= e!4684266 (and tp_is_empty!53287 tp!2360255))))

(assert (=> b!7938561 (= tp!2360250 e!4684266)))

(assert (= (and b!7938561 ((_ is Cons!74478) (innerList!16018 (xs!19328 (right!57246 t!3690))))) b!7938646))

(declare-fun b!7938647 () Bool)

(declare-fun e!4684267 () Bool)

(declare-fun tp!2360256 () Bool)

(assert (=> b!7938647 (= e!4684267 (and tp_is_empty!53287 tp!2360256))))

(assert (=> b!7938555 (= tp!2360244 e!4684267)))

(assert (= (and b!7938555 ((_ is Cons!74478) (innerList!16018 (xs!19328 (left!56916 t!3690))))) b!7938647))

(declare-fun e!4684268 () Bool)

(declare-fun tp!2360257 () Bool)

(declare-fun tp!2360259 () Bool)

(declare-fun b!7938648 () Bool)

(assert (=> b!7938648 (= e!4684268 (and (inv!95872 (left!56916 (left!56916 (right!57246 t!3690)))) tp!2360259 (inv!95872 (right!57246 (left!56916 (right!57246 t!3690)))) tp!2360257))))

(declare-fun b!7938650 () Bool)

(declare-fun e!4684269 () Bool)

(declare-fun tp!2360258 () Bool)

(assert (=> b!7938650 (= e!4684269 tp!2360258)))

(declare-fun b!7938649 () Bool)

(assert (=> b!7938649 (= e!4684268 (and (inv!95873 (xs!19328 (left!56916 (right!57246 t!3690)))) e!4684269))))

(assert (=> b!7938559 (= tp!2360251 (and (inv!95872 (left!56916 (right!57246 t!3690))) e!4684268))))

(assert (= (and b!7938559 ((_ is Node!15930) (left!56916 (right!57246 t!3690)))) b!7938648))

(assert (= b!7938649 b!7938650))

(assert (= (and b!7938559 ((_ is Leaf!30277) (left!56916 (right!57246 t!3690)))) b!7938649))

(declare-fun m!8327810 () Bool)

(assert (=> b!7938648 m!8327810))

(declare-fun m!8327812 () Bool)

(assert (=> b!7938648 m!8327812))

(declare-fun m!8327814 () Bool)

(assert (=> b!7938649 m!8327814))

(assert (=> b!7938559 m!8327668))

(declare-fun b!7938651 () Bool)

(declare-fun tp!2360260 () Bool)

(declare-fun tp!2360262 () Bool)

(declare-fun e!4684270 () Bool)

(assert (=> b!7938651 (= e!4684270 (and (inv!95872 (left!56916 (right!57246 (right!57246 t!3690)))) tp!2360262 (inv!95872 (right!57246 (right!57246 (right!57246 t!3690)))) tp!2360260))))

(declare-fun b!7938653 () Bool)

(declare-fun e!4684271 () Bool)

(declare-fun tp!2360261 () Bool)

(assert (=> b!7938653 (= e!4684271 tp!2360261)))

(declare-fun b!7938652 () Bool)

(assert (=> b!7938652 (= e!4684270 (and (inv!95873 (xs!19328 (right!57246 (right!57246 t!3690)))) e!4684271))))

(assert (=> b!7938559 (= tp!2360249 (and (inv!95872 (right!57246 (right!57246 t!3690))) e!4684270))))

(assert (= (and b!7938559 ((_ is Node!15930) (right!57246 (right!57246 t!3690)))) b!7938651))

(assert (= b!7938652 b!7938653))

(assert (= (and b!7938559 ((_ is Leaf!30277) (right!57246 (right!57246 t!3690)))) b!7938652))

(declare-fun m!8327816 () Bool)

(assert (=> b!7938651 m!8327816))

(declare-fun m!8327818 () Bool)

(assert (=> b!7938651 m!8327818))

(declare-fun m!8327820 () Bool)

(assert (=> b!7938652 m!8327820))

(assert (=> b!7938559 m!8327670))

(declare-fun tp!2360263 () Bool)

(declare-fun tp!2360265 () Bool)

(declare-fun e!4684272 () Bool)

(declare-fun b!7938654 () Bool)

(assert (=> b!7938654 (= e!4684272 (and (inv!95872 (left!56916 (left!56916 (left!56916 t!3690)))) tp!2360265 (inv!95872 (right!57246 (left!56916 (left!56916 t!3690)))) tp!2360263))))

(declare-fun b!7938656 () Bool)

(declare-fun e!4684273 () Bool)

(declare-fun tp!2360264 () Bool)

(assert (=> b!7938656 (= e!4684273 tp!2360264)))

(declare-fun b!7938655 () Bool)

(assert (=> b!7938655 (= e!4684272 (and (inv!95873 (xs!19328 (left!56916 (left!56916 t!3690)))) e!4684273))))

(assert (=> b!7938553 (= tp!2360245 (and (inv!95872 (left!56916 (left!56916 t!3690))) e!4684272))))

(assert (= (and b!7938553 ((_ is Node!15930) (left!56916 (left!56916 t!3690)))) b!7938654))

(assert (= b!7938655 b!7938656))

(assert (= (and b!7938553 ((_ is Leaf!30277) (left!56916 (left!56916 t!3690)))) b!7938655))

(declare-fun m!8327822 () Bool)

(assert (=> b!7938654 m!8327822))

(declare-fun m!8327824 () Bool)

(assert (=> b!7938654 m!8327824))

(declare-fun m!8327826 () Bool)

(assert (=> b!7938655 m!8327826))

(assert (=> b!7938553 m!8327656))

(declare-fun b!7938657 () Bool)

(declare-fun tp!2360268 () Bool)

(declare-fun e!4684274 () Bool)

(declare-fun tp!2360266 () Bool)

(assert (=> b!7938657 (= e!4684274 (and (inv!95872 (left!56916 (right!57246 (left!56916 t!3690)))) tp!2360268 (inv!95872 (right!57246 (right!57246 (left!56916 t!3690)))) tp!2360266))))

(declare-fun b!7938659 () Bool)

(declare-fun e!4684275 () Bool)

(declare-fun tp!2360267 () Bool)

(assert (=> b!7938659 (= e!4684275 tp!2360267)))

(declare-fun b!7938658 () Bool)

(assert (=> b!7938658 (= e!4684274 (and (inv!95873 (xs!19328 (right!57246 (left!56916 t!3690)))) e!4684275))))

(assert (=> b!7938553 (= tp!2360243 (and (inv!95872 (right!57246 (left!56916 t!3690))) e!4684274))))

(assert (= (and b!7938553 ((_ is Node!15930) (right!57246 (left!56916 t!3690)))) b!7938657))

(assert (= b!7938658 b!7938659))

(assert (= (and b!7938553 ((_ is Leaf!30277) (right!57246 (left!56916 t!3690)))) b!7938658))

(declare-fun m!8327828 () Bool)

(assert (=> b!7938657 m!8327828))

(declare-fun m!8327830 () Bool)

(assert (=> b!7938657 m!8327830))

(declare-fun m!8327832 () Bool)

(assert (=> b!7938658 m!8327832))

(assert (=> b!7938553 m!8327658))

(declare-fun b!7938660 () Bool)

(declare-fun e!4684276 () Bool)

(declare-fun tp!2360269 () Bool)

(assert (=> b!7938660 (= e!4684276 (and tp_is_empty!53287 tp!2360269))))

(assert (=> b!7938535 (= tp!2360229 e!4684276)))

(assert (= (and b!7938535 ((_ is Cons!74478) (t!390331 (innerList!16018 (xs!19328 t!3690))))) b!7938660))

(check-sat (not b!7938582) (not b!7938651) (not b!7938657) (not d!2374353) (not b!7938646) (not b!7938660) (not b!7938634) (not b!7938649) (not b!7938575) (not d!2374363) (not b!7938653) (not d!2374373) (not b!7938603) (not b!7938658) (not b!7938559) (not b!7938611) (not d!2374393) (not b!7938659) (not b!7938636) (not b!7938598) tp_is_empty!53287 (not d!2374371) (not b!7938630) (not b!7938568) (not bm!735684) (not b!7938648) (not b!7938573) (not d!2374397) (not b!7938655) (not b!7938607) (not b!7938553) (not b!7938579) (not bm!735682) (not d!2374379) (not b!7938652) (not d!2374355) (not b!7938578) (not b!7938656) (not b!7938628) (not b!7938605) (not bm!735683) (not b!7938610) (not d!2374351) (not b!7938647) (not d!2374383) (not b!7938608) (not b!7938600) (not b!7938654) (not b!7938565) (not b!7938641) (not b!7938650) (not b!7938627))
(check-sat)
