; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200632 () Bool)

(assert start!200632)

(declare-fun b_free!56811 () Bool)

(declare-fun b_next!57515 () Bool)

(assert (=> start!200632 (= b_free!56811 (not b_next!57515))))

(declare-fun tp!604769 () Bool)

(declare-fun b_and!162603 () Bool)

(assert (=> start!200632 (= tp!604769 b_and!162603)))

(declare-fun b!2036459 () Bool)

(declare-fun res!892902 () Bool)

(declare-fun e!1286047 () Bool)

(assert (=> b!2036459 (=> (not res!892902) (not e!1286047))))

(declare-datatypes ((T!35948 0))(
  ( (T!35949 (val!6468 Int)) )
))
(declare-datatypes ((List!22351 0))(
  ( (Nil!22269) (Cons!22269 (h!27670 T!35948) (t!191260 List!22351)) )
))
(declare-datatypes ((IArray!14927 0))(
  ( (IArray!14928 (innerList!7521 List!22351)) )
))
(declare-datatypes ((Conc!7461 0))(
  ( (Node!7461 (left!17728 Conc!7461) (right!18058 Conc!7461) (csize!15152 Int) (cheight!7672 Int)) (Leaf!10933 (xs!10363 IArray!14927) (csize!15153 Int)) (Empty!7461) )
))
(declare-fun t!4319 () Conc!7461)

(declare-fun p!1489 () Int)

(declare-fun size!17407 (IArray!14927) Int)

(declare-fun filter!458 (IArray!14927 Int) IArray!14927)

(assert (=> b!2036459 (= res!892902 (= (size!17407 (filter!458 (xs!10363 t!4319) p!1489)) 0))))

(declare-fun b!2036460 () Bool)

(declare-fun inv!29538 (Conc!7461) Bool)

(assert (=> b!2036460 (= e!1286047 (not (inv!29538 Empty!7461)))))

(declare-fun b!2036461 () Bool)

(declare-fun e!1286049 () Bool)

(declare-fun e!1286048 () Bool)

(declare-fun inv!29539 (IArray!14927) Bool)

(assert (=> b!2036461 (= e!1286049 (and (inv!29539 (xs!10363 t!4319)) e!1286048))))

(declare-fun res!892903 () Bool)

(assert (=> start!200632 (=> (not res!892903) (not e!1286047))))

(declare-fun isBalanced!2339 (Conc!7461) Bool)

(assert (=> start!200632 (= res!892903 (isBalanced!2339 t!4319))))

(assert (=> start!200632 e!1286047))

(assert (=> start!200632 (and (inv!29538 t!4319) e!1286049)))

(assert (=> start!200632 tp!604769))

(declare-fun b!2036462 () Bool)

(declare-fun tp!604768 () Bool)

(assert (=> b!2036462 (= e!1286048 tp!604768)))

(declare-fun tp!604767 () Bool)

(declare-fun b!2036463 () Bool)

(declare-fun tp!604770 () Bool)

(assert (=> b!2036463 (= e!1286049 (and (inv!29538 (left!17728 t!4319)) tp!604770 (inv!29538 (right!18058 t!4319)) tp!604767))))

(declare-fun b!2036464 () Bool)

(declare-fun res!892901 () Bool)

(assert (=> b!2036464 (=> (not res!892901) (not e!1286047))))

(get-info :version)

(assert (=> b!2036464 (= res!892901 (and (not ((_ is Empty!7461) t!4319)) ((_ is Leaf!10933) t!4319)))))

(assert (= (and start!200632 res!892903) b!2036464))

(assert (= (and b!2036464 res!892901) b!2036459))

(assert (= (and b!2036459 res!892902) b!2036460))

(assert (= (and start!200632 ((_ is Node!7461) t!4319)) b!2036463))

(assert (= b!2036461 b!2036462))

(assert (= (and start!200632 ((_ is Leaf!10933) t!4319)) b!2036461))

(declare-fun m!2479153 () Bool)

(assert (=> start!200632 m!2479153))

(declare-fun m!2479155 () Bool)

(assert (=> start!200632 m!2479155))

(declare-fun m!2479157 () Bool)

(assert (=> b!2036460 m!2479157))

(declare-fun m!2479159 () Bool)

(assert (=> b!2036459 m!2479159))

(assert (=> b!2036459 m!2479159))

(declare-fun m!2479161 () Bool)

(assert (=> b!2036459 m!2479161))

(declare-fun m!2479163 () Bool)

(assert (=> b!2036463 m!2479163))

(declare-fun m!2479165 () Bool)

(assert (=> b!2036463 m!2479165))

(declare-fun m!2479167 () Bool)

(assert (=> b!2036461 m!2479167))

(check-sat b_and!162603 (not start!200632) (not b!2036460) (not b!2036461) (not b!2036462) (not b_next!57515) (not b!2036463) (not b!2036459))
(check-sat b_and!162603 (not b_next!57515))
(get-model)

(declare-fun d!623246 () Bool)

(declare-fun size!17408 (List!22351) Int)

(assert (=> d!623246 (= (inv!29539 (xs!10363 t!4319)) (<= (size!17408 (innerList!7521 (xs!10363 t!4319))) 2147483647))))

(declare-fun bs!421345 () Bool)

(assert (= bs!421345 d!623246))

(declare-fun m!2479169 () Bool)

(assert (=> bs!421345 m!2479169))

(assert (=> b!2036461 d!623246))

(declare-fun d!623248 () Bool)

(declare-fun lt!764803 () Int)

(declare-fun list!9120 (IArray!14927) List!22351)

(assert (=> d!623248 (= lt!764803 (size!17408 (list!9120 (filter!458 (xs!10363 t!4319) p!1489))))))

(declare-fun choose!12425 (IArray!14927) Int)

(assert (=> d!623248 (= lt!764803 (choose!12425 (filter!458 (xs!10363 t!4319) p!1489)))))

(assert (=> d!623248 (= (size!17407 (filter!458 (xs!10363 t!4319) p!1489)) lt!764803)))

(declare-fun bs!421346 () Bool)

(assert (= bs!421346 d!623248))

(assert (=> bs!421346 m!2479159))

(declare-fun m!2479171 () Bool)

(assert (=> bs!421346 m!2479171))

(assert (=> bs!421346 m!2479171))

(declare-fun m!2479173 () Bool)

(assert (=> bs!421346 m!2479173))

(assert (=> bs!421346 m!2479159))

(declare-fun m!2479175 () Bool)

(assert (=> bs!421346 m!2479175))

(assert (=> b!2036459 d!623248))

(declare-fun d!623250 () Bool)

(declare-fun lt!764806 () IArray!14927)

(declare-fun filter!459 (List!22351 Int) List!22351)

(assert (=> d!623250 (= lt!764806 (IArray!14928 (filter!459 (list!9120 (xs!10363 t!4319)) p!1489)))))

(declare-fun choose!12426 (IArray!14927 Int) IArray!14927)

(assert (=> d!623250 (= lt!764806 (choose!12426 (xs!10363 t!4319) p!1489))))

(assert (=> d!623250 (= (filter!458 (xs!10363 t!4319) p!1489) lt!764806)))

(declare-fun bs!421347 () Bool)

(assert (= bs!421347 d!623250))

(declare-fun m!2479189 () Bool)

(assert (=> bs!421347 m!2479189))

(assert (=> bs!421347 m!2479189))

(declare-fun m!2479191 () Bool)

(assert (=> bs!421347 m!2479191))

(declare-fun m!2479193 () Bool)

(assert (=> bs!421347 m!2479193))

(assert (=> b!2036459 d!623250))

(declare-fun d!623254 () Bool)

(declare-fun c!329803 () Bool)

(assert (=> d!623254 (= c!329803 ((_ is Node!7461) Empty!7461))))

(declare-fun e!1286066 () Bool)

(assert (=> d!623254 (= (inv!29538 Empty!7461) e!1286066)))

(declare-fun b!2036498 () Bool)

(declare-fun inv!29540 (Conc!7461) Bool)

(assert (=> b!2036498 (= e!1286066 (inv!29540 Empty!7461))))

(declare-fun b!2036499 () Bool)

(declare-fun e!1286067 () Bool)

(assert (=> b!2036499 (= e!1286066 e!1286067)))

(declare-fun res!892927 () Bool)

(assert (=> b!2036499 (= res!892927 (not ((_ is Leaf!10933) Empty!7461)))))

(assert (=> b!2036499 (=> res!892927 e!1286067)))

(declare-fun b!2036500 () Bool)

(declare-fun inv!29542 (Conc!7461) Bool)

(assert (=> b!2036500 (= e!1286067 (inv!29542 Empty!7461))))

(assert (= (and d!623254 c!329803) b!2036498))

(assert (= (and d!623254 (not c!329803)) b!2036499))

(assert (= (and b!2036499 (not res!892927)) b!2036500))

(declare-fun m!2479205 () Bool)

(assert (=> b!2036498 m!2479205))

(declare-fun m!2479207 () Bool)

(assert (=> b!2036500 m!2479207))

(assert (=> b!2036460 d!623254))

(declare-fun d!623260 () Bool)

(declare-fun c!329804 () Bool)

(assert (=> d!623260 (= c!329804 ((_ is Node!7461) (left!17728 t!4319)))))

(declare-fun e!1286068 () Bool)

(assert (=> d!623260 (= (inv!29538 (left!17728 t!4319)) e!1286068)))

(declare-fun b!2036501 () Bool)

(assert (=> b!2036501 (= e!1286068 (inv!29540 (left!17728 t!4319)))))

(declare-fun b!2036502 () Bool)

(declare-fun e!1286069 () Bool)

(assert (=> b!2036502 (= e!1286068 e!1286069)))

(declare-fun res!892928 () Bool)

(assert (=> b!2036502 (= res!892928 (not ((_ is Leaf!10933) (left!17728 t!4319))))))

(assert (=> b!2036502 (=> res!892928 e!1286069)))

(declare-fun b!2036503 () Bool)

(assert (=> b!2036503 (= e!1286069 (inv!29542 (left!17728 t!4319)))))

(assert (= (and d!623260 c!329804) b!2036501))

(assert (= (and d!623260 (not c!329804)) b!2036502))

(assert (= (and b!2036502 (not res!892928)) b!2036503))

(declare-fun m!2479209 () Bool)

(assert (=> b!2036501 m!2479209))

(declare-fun m!2479211 () Bool)

(assert (=> b!2036503 m!2479211))

(assert (=> b!2036463 d!623260))

(declare-fun d!623262 () Bool)

(declare-fun c!329805 () Bool)

(assert (=> d!623262 (= c!329805 ((_ is Node!7461) (right!18058 t!4319)))))

(declare-fun e!1286070 () Bool)

(assert (=> d!623262 (= (inv!29538 (right!18058 t!4319)) e!1286070)))

(declare-fun b!2036504 () Bool)

(assert (=> b!2036504 (= e!1286070 (inv!29540 (right!18058 t!4319)))))

(declare-fun b!2036505 () Bool)

(declare-fun e!1286071 () Bool)

(assert (=> b!2036505 (= e!1286070 e!1286071)))

(declare-fun res!892929 () Bool)

(assert (=> b!2036505 (= res!892929 (not ((_ is Leaf!10933) (right!18058 t!4319))))))

(assert (=> b!2036505 (=> res!892929 e!1286071)))

(declare-fun b!2036506 () Bool)

(assert (=> b!2036506 (= e!1286071 (inv!29542 (right!18058 t!4319)))))

(assert (= (and d!623262 c!329805) b!2036504))

(assert (= (and d!623262 (not c!329805)) b!2036505))

(assert (= (and b!2036505 (not res!892929)) b!2036506))

(declare-fun m!2479213 () Bool)

(assert (=> b!2036504 m!2479213))

(declare-fun m!2479215 () Bool)

(assert (=> b!2036506 m!2479215))

(assert (=> b!2036463 d!623262))

(declare-fun b!2036541 () Bool)

(declare-fun res!892950 () Bool)

(declare-fun e!1286090 () Bool)

(assert (=> b!2036541 (=> (not res!892950) (not e!1286090))))

(assert (=> b!2036541 (= res!892950 (isBalanced!2339 (left!17728 t!4319)))))

(declare-fun b!2036542 () Bool)

(declare-fun res!892948 () Bool)

(assert (=> b!2036542 (=> (not res!892948) (not e!1286090))))

(assert (=> b!2036542 (= res!892948 (isBalanced!2339 (right!18058 t!4319)))))

(declare-fun b!2036543 () Bool)

(declare-fun isEmpty!13919 (Conc!7461) Bool)

(assert (=> b!2036543 (= e!1286090 (not (isEmpty!13919 (right!18058 t!4319))))))

(declare-fun b!2036544 () Bool)

(declare-fun res!892946 () Bool)

(assert (=> b!2036544 (=> (not res!892946) (not e!1286090))))

(assert (=> b!2036544 (= res!892946 (not (isEmpty!13919 (left!17728 t!4319))))))

(declare-fun d!623264 () Bool)

(declare-fun res!892947 () Bool)

(declare-fun e!1286089 () Bool)

(assert (=> d!623264 (=> res!892947 e!1286089)))

(assert (=> d!623264 (= res!892947 (not ((_ is Node!7461) t!4319)))))

(assert (=> d!623264 (= (isBalanced!2339 t!4319) e!1286089)))

(declare-fun b!2036545 () Bool)

(assert (=> b!2036545 (= e!1286089 e!1286090)))

(declare-fun res!892945 () Bool)

(assert (=> b!2036545 (=> (not res!892945) (not e!1286090))))

(declare-fun height!1161 (Conc!7461) Int)

(assert (=> b!2036545 (= res!892945 (<= (- 1) (- (height!1161 (left!17728 t!4319)) (height!1161 (right!18058 t!4319)))))))

(declare-fun b!2036546 () Bool)

(declare-fun res!892949 () Bool)

(assert (=> b!2036546 (=> (not res!892949) (not e!1286090))))

(assert (=> b!2036546 (= res!892949 (<= (- (height!1161 (left!17728 t!4319)) (height!1161 (right!18058 t!4319))) 1))))

(assert (= (and d!623264 (not res!892947)) b!2036545))

(assert (= (and b!2036545 res!892945) b!2036546))

(assert (= (and b!2036546 res!892949) b!2036541))

(assert (= (and b!2036541 res!892950) b!2036542))

(assert (= (and b!2036542 res!892948) b!2036544))

(assert (= (and b!2036544 res!892946) b!2036543))

(declare-fun m!2479237 () Bool)

(assert (=> b!2036546 m!2479237))

(declare-fun m!2479239 () Bool)

(assert (=> b!2036546 m!2479239))

(declare-fun m!2479241 () Bool)

(assert (=> b!2036544 m!2479241))

(declare-fun m!2479243 () Bool)

(assert (=> b!2036543 m!2479243))

(declare-fun m!2479245 () Bool)

(assert (=> b!2036541 m!2479245))

(declare-fun m!2479247 () Bool)

(assert (=> b!2036542 m!2479247))

(assert (=> b!2036545 m!2479237))

(assert (=> b!2036545 m!2479239))

(assert (=> start!200632 d!623264))

(declare-fun d!623274 () Bool)

(declare-fun c!329809 () Bool)

(assert (=> d!623274 (= c!329809 ((_ is Node!7461) t!4319))))

(declare-fun e!1286091 () Bool)

(assert (=> d!623274 (= (inv!29538 t!4319) e!1286091)))

(declare-fun b!2036547 () Bool)

(assert (=> b!2036547 (= e!1286091 (inv!29540 t!4319))))

(declare-fun b!2036548 () Bool)

(declare-fun e!1286092 () Bool)

(assert (=> b!2036548 (= e!1286091 e!1286092)))

(declare-fun res!892951 () Bool)

(assert (=> b!2036548 (= res!892951 (not ((_ is Leaf!10933) t!4319)))))

(assert (=> b!2036548 (=> res!892951 e!1286092)))

(declare-fun b!2036549 () Bool)

(assert (=> b!2036549 (= e!1286092 (inv!29542 t!4319))))

(assert (= (and d!623274 c!329809) b!2036547))

(assert (= (and d!623274 (not c!329809)) b!2036548))

(assert (= (and b!2036548 (not res!892951)) b!2036549))

(declare-fun m!2479249 () Bool)

(assert (=> b!2036547 m!2479249))

(declare-fun m!2479251 () Bool)

(assert (=> b!2036549 m!2479251))

(assert (=> start!200632 d!623274))

(declare-fun b!2036560 () Bool)

(declare-fun e!1286099 () Bool)

(declare-fun tp_is_empty!9261 () Bool)

(declare-fun tp!604788 () Bool)

(assert (=> b!2036560 (= e!1286099 (and tp_is_empty!9261 tp!604788))))

(assert (=> b!2036462 (= tp!604768 e!1286099)))

(assert (= (and b!2036462 ((_ is Cons!22269) (innerList!7521 (xs!10363 t!4319)))) b!2036560))

(declare-fun tp!604797 () Bool)

(declare-fun tp!604796 () Bool)

(declare-fun b!2036569 () Bool)

(declare-fun e!1286104 () Bool)

(assert (=> b!2036569 (= e!1286104 (and (inv!29538 (left!17728 (left!17728 t!4319))) tp!604796 (inv!29538 (right!18058 (left!17728 t!4319))) tp!604797))))

(declare-fun b!2036571 () Bool)

(declare-fun e!1286105 () Bool)

(declare-fun tp!604795 () Bool)

(assert (=> b!2036571 (= e!1286105 tp!604795)))

(declare-fun b!2036570 () Bool)

(assert (=> b!2036570 (= e!1286104 (and (inv!29539 (xs!10363 (left!17728 t!4319))) e!1286105))))

(assert (=> b!2036463 (= tp!604770 (and (inv!29538 (left!17728 t!4319)) e!1286104))))

(assert (= (and b!2036463 ((_ is Node!7461) (left!17728 t!4319))) b!2036569))

(assert (= b!2036570 b!2036571))

(assert (= (and b!2036463 ((_ is Leaf!10933) (left!17728 t!4319))) b!2036570))

(declare-fun m!2479265 () Bool)

(assert (=> b!2036569 m!2479265))

(declare-fun m!2479267 () Bool)

(assert (=> b!2036569 m!2479267))

(declare-fun m!2479269 () Bool)

(assert (=> b!2036570 m!2479269))

(assert (=> b!2036463 m!2479163))

(declare-fun tp!604800 () Bool)

(declare-fun e!1286106 () Bool)

(declare-fun b!2036572 () Bool)

(declare-fun tp!604799 () Bool)

(assert (=> b!2036572 (= e!1286106 (and (inv!29538 (left!17728 (right!18058 t!4319))) tp!604799 (inv!29538 (right!18058 (right!18058 t!4319))) tp!604800))))

(declare-fun b!2036574 () Bool)

(declare-fun e!1286107 () Bool)

(declare-fun tp!604798 () Bool)

(assert (=> b!2036574 (= e!1286107 tp!604798)))

(declare-fun b!2036573 () Bool)

(assert (=> b!2036573 (= e!1286106 (and (inv!29539 (xs!10363 (right!18058 t!4319))) e!1286107))))

(assert (=> b!2036463 (= tp!604767 (and (inv!29538 (right!18058 t!4319)) e!1286106))))

(assert (= (and b!2036463 ((_ is Node!7461) (right!18058 t!4319))) b!2036572))

(assert (= b!2036573 b!2036574))

(assert (= (and b!2036463 ((_ is Leaf!10933) (right!18058 t!4319))) b!2036573))

(declare-fun m!2479271 () Bool)

(assert (=> b!2036572 m!2479271))

(declare-fun m!2479273 () Bool)

(assert (=> b!2036572 m!2479273))

(declare-fun m!2479275 () Bool)

(assert (=> b!2036573 m!2479275))

(assert (=> b!2036463 m!2479165))

(check-sat (not b!2036570) (not b!2036506) tp_is_empty!9261 (not b!2036501) (not b!2036573) (not b!2036549) (not b!2036546) (not b!2036574) (not b!2036503) (not b!2036498) (not b!2036547) (not b_next!57515) (not b!2036541) (not b!2036569) (not d!623250) (not b!2036543) (not b!2036572) (not b!2036463) (not b!2036571) (not d!623248) b_and!162603 (not b!2036542) (not b!2036560) (not d!623246) (not b!2036545) (not b!2036504) (not b!2036500) (not b!2036544))
(check-sat b_and!162603 (not b_next!57515))
