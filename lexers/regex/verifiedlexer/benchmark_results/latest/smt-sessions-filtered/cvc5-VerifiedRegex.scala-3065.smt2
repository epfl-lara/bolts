; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182988 () Bool)

(assert start!182988)

(declare-fun res!826500 () Bool)

(declare-fun e!1175251 () Bool)

(assert (=> start!182988 (=> (not res!826500) (not e!1175251))))

(declare-datatypes ((B!1511 0))(
  ( (B!1512 (val!5703 Int)) )
))
(declare-datatypes ((List!20303 0))(
  ( (Nil!20233) (Cons!20233 (h!25634 B!1511) (t!171732 List!20303)) )
))
(declare-fun l!3679 () List!20303)

(declare-fun elmt!176 () B!1511)

(assert (=> start!182988 (= res!826500 (and (not (is-Nil!20233 l!3679)) (= (h!25634 l!3679) elmt!176)))))

(assert (=> start!182988 e!1175251))

(declare-fun e!1175250 () Bool)

(assert (=> start!182988 e!1175250))

(declare-fun tp_is_empty!8259 () Bool)

(assert (=> start!182988 tp_is_empty!8259))

(declare-fun b!1839181 () Bool)

(declare-fun e!1175249 () Bool)

(assert (=> b!1839181 (= e!1175251 (not e!1175249))))

(declare-fun res!826499 () Bool)

(assert (=> b!1839181 (=> res!826499 e!1175249)))

(declare-fun subseq!384 (List!20303 List!20303) Bool)

(assert (=> b!1839181 (= res!826499 (not (subseq!384 (t!171732 l!3679) l!3679)))))

(declare-datatypes ((Unit!34947 0))(
  ( (Unit!34948) )
))
(declare-fun lt!713699 () Unit!34947)

(declare-fun subseqTail!15 (List!20303 List!20303) Unit!34947)

(assert (=> b!1839181 (= lt!713699 (subseqTail!15 l!3679 l!3679))))

(assert (=> b!1839181 (subseq!384 l!3679 l!3679)))

(declare-fun lt!713700 () Unit!34947)

(declare-fun lemmaSubseqRefl!46 (List!20303) Unit!34947)

(assert (=> b!1839181 (= lt!713700 (lemmaSubseqRefl!46 l!3679))))

(declare-fun b!1839182 () Bool)

(assert (=> b!1839182 (= e!1175249 (subseq!384 l!3679 (Cons!20233 elmt!176 l!3679)))))

(declare-fun b!1839183 () Bool)

(declare-fun tp!520149 () Bool)

(assert (=> b!1839183 (= e!1175250 (and tp_is_empty!8259 tp!520149))))

(assert (= (and start!182988 res!826500) b!1839181))

(assert (= (and b!1839181 (not res!826499)) b!1839182))

(assert (= (and start!182988 (is-Cons!20233 l!3679)) b!1839183))

(declare-fun m!2266913 () Bool)

(assert (=> b!1839181 m!2266913))

(declare-fun m!2266915 () Bool)

(assert (=> b!1839181 m!2266915))

(declare-fun m!2266917 () Bool)

(assert (=> b!1839181 m!2266917))

(declare-fun m!2266919 () Bool)

(assert (=> b!1839181 m!2266919))

(declare-fun m!2266921 () Bool)

(assert (=> b!1839182 m!2266921))

(push 1)

(assert (not b!1839181))

(assert (not b!1839182))

(assert (not b!1839183))

(assert tp_is_empty!8259)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1839203 () Bool)

(declare-fun e!1175270 () Bool)

(assert (=> b!1839203 (= e!1175270 (subseq!384 (t!171732 (t!171732 l!3679)) (t!171732 l!3679)))))

(declare-fun b!1839201 () Bool)

(declare-fun e!1175272 () Bool)

(declare-fun e!1175271 () Bool)

(assert (=> b!1839201 (= e!1175272 e!1175271)))

(declare-fun res!826518 () Bool)

(assert (=> b!1839201 (=> (not res!826518) (not e!1175271))))

(assert (=> b!1839201 (= res!826518 (is-Cons!20233 l!3679))))

(declare-fun b!1839204 () Bool)

(declare-fun e!1175269 () Bool)

(assert (=> b!1839204 (= e!1175269 (subseq!384 (t!171732 l!3679) (t!171732 l!3679)))))

(declare-fun b!1839202 () Bool)

(assert (=> b!1839202 (= e!1175271 e!1175269)))

(declare-fun res!826516 () Bool)

(assert (=> b!1839202 (=> res!826516 e!1175269)))

(assert (=> b!1839202 (= res!826516 e!1175270)))

(declare-fun res!826515 () Bool)

(assert (=> b!1839202 (=> (not res!826515) (not e!1175270))))

(assert (=> b!1839202 (= res!826515 (= (h!25634 (t!171732 l!3679)) (h!25634 l!3679)))))

(declare-fun d!562412 () Bool)

(declare-fun res!826517 () Bool)

(assert (=> d!562412 (=> res!826517 e!1175272)))

(assert (=> d!562412 (= res!826517 (is-Nil!20233 (t!171732 l!3679)))))

(assert (=> d!562412 (= (subseq!384 (t!171732 l!3679) l!3679) e!1175272)))

(assert (= (and d!562412 (not res!826517)) b!1839201))

(assert (= (and b!1839201 res!826518) b!1839202))

(assert (= (and b!1839202 res!826515) b!1839203))

(assert (= (and b!1839202 (not res!826516)) b!1839204))

(declare-fun m!2266933 () Bool)

(assert (=> b!1839203 m!2266933))

(declare-fun m!2266935 () Bool)

(assert (=> b!1839204 m!2266935))

(assert (=> b!1839181 d!562412))

(declare-fun b!1839227 () Bool)

(declare-fun e!1175291 () Unit!34947)

(declare-fun call!115091 () Unit!34947)

(assert (=> b!1839227 (= e!1175291 call!115091)))

(declare-fun d!562414 () Bool)

(declare-fun tail!2758 (List!20303) List!20303)

(assert (=> d!562414 (subseq!384 (tail!2758 l!3679) l!3679)))

(declare-fun lt!713709 () Unit!34947)

(declare-fun e!1175292 () Unit!34947)

(assert (=> d!562414 (= lt!713709 e!1175292)))

(declare-fun c!300214 () Bool)

(assert (=> d!562414 (= c!300214 (and (is-Cons!20233 l!3679) (is-Cons!20233 l!3679)))))

(declare-fun e!1175290 () Bool)

(assert (=> d!562414 e!1175290))

(declare-fun res!826529 () Bool)

(assert (=> d!562414 (=> (not res!826529) (not e!1175290))))

(declare-fun isEmpty!12760 (List!20303) Bool)

(assert (=> d!562414 (= res!826529 (not (isEmpty!12760 l!3679)))))

(assert (=> d!562414 (= (subseqTail!15 l!3679 l!3679) lt!713709)))

(declare-fun b!1839228 () Bool)

(declare-fun Unit!34951 () Unit!34947)

(assert (=> b!1839228 (= e!1175291 Unit!34951)))

(declare-fun b!1839229 () Bool)

(declare-fun e!1175289 () Unit!34947)

(assert (=> b!1839229 (= e!1175292 e!1175289)))

(declare-fun c!300216 () Bool)

(assert (=> b!1839229 (= c!300216 (subseq!384 l!3679 (t!171732 l!3679)))))

(declare-fun b!1839230 () Bool)

(declare-fun Unit!34952 () Unit!34947)

(assert (=> b!1839230 (= e!1175292 Unit!34952)))

(declare-fun b!1839231 () Bool)

(declare-fun c!300215 () Bool)

(assert (=> b!1839231 (= c!300215 (not (isEmpty!12760 (t!171732 l!3679))))))

(assert (=> b!1839231 (= e!1175289 e!1175291)))

(declare-fun bm!115086 () Bool)

(assert (=> bm!115086 (= call!115091 (subseqTail!15 (ite c!300216 l!3679 (t!171732 l!3679)) (t!171732 l!3679)))))

(declare-fun b!1839232 () Bool)

(assert (=> b!1839232 (= e!1175289 call!115091)))

(declare-fun b!1839233 () Bool)

(assert (=> b!1839233 (= e!1175290 (subseq!384 l!3679 l!3679))))

(assert (= (and d!562414 res!826529) b!1839233))

(assert (= (and d!562414 c!300214) b!1839229))

(assert (= (and d!562414 (not c!300214)) b!1839230))

(assert (= (and b!1839229 c!300216) b!1839232))

(assert (= (and b!1839229 (not c!300216)) b!1839231))

(assert (= (and b!1839231 c!300215) b!1839227))

(assert (= (and b!1839231 (not c!300215)) b!1839228))

(assert (= (or b!1839232 b!1839227) bm!115086))

(declare-fun m!2266937 () Bool)

(assert (=> d!562414 m!2266937))

(assert (=> d!562414 m!2266937))

(declare-fun m!2266939 () Bool)

(assert (=> d!562414 m!2266939))

(declare-fun m!2266941 () Bool)

(assert (=> d!562414 m!2266941))

(assert (=> b!1839233 m!2266917))

(declare-fun m!2266943 () Bool)

(assert (=> b!1839231 m!2266943))

(declare-fun m!2266945 () Bool)

(assert (=> b!1839229 m!2266945))

(declare-fun m!2266947 () Bool)

(assert (=> bm!115086 m!2266947))

(assert (=> b!1839181 d!562414))

(declare-fun b!1839236 () Bool)

(declare-fun e!1175294 () Bool)

(assert (=> b!1839236 (= e!1175294 (subseq!384 (t!171732 l!3679) (t!171732 l!3679)))))

(declare-fun b!1839234 () Bool)

(declare-fun e!1175296 () Bool)

(declare-fun e!1175295 () Bool)

(assert (=> b!1839234 (= e!1175296 e!1175295)))

(declare-fun res!826533 () Bool)

(assert (=> b!1839234 (=> (not res!826533) (not e!1175295))))

(assert (=> b!1839234 (= res!826533 (is-Cons!20233 l!3679))))

(declare-fun b!1839237 () Bool)

(declare-fun e!1175293 () Bool)

(assert (=> b!1839237 (= e!1175293 (subseq!384 l!3679 (t!171732 l!3679)))))

(declare-fun b!1839235 () Bool)

(assert (=> b!1839235 (= e!1175295 e!1175293)))

(declare-fun res!826531 () Bool)

(assert (=> b!1839235 (=> res!826531 e!1175293)))

(assert (=> b!1839235 (= res!826531 e!1175294)))

(declare-fun res!826530 () Bool)

(assert (=> b!1839235 (=> (not res!826530) (not e!1175294))))

(assert (=> b!1839235 (= res!826530 (= (h!25634 l!3679) (h!25634 l!3679)))))

(declare-fun d!562418 () Bool)

(declare-fun res!826532 () Bool)

(assert (=> d!562418 (=> res!826532 e!1175296)))

(assert (=> d!562418 (= res!826532 (is-Nil!20233 l!3679))))

(assert (=> d!562418 (= (subseq!384 l!3679 l!3679) e!1175296)))

(assert (= (and d!562418 (not res!826532)) b!1839234))

(assert (= (and b!1839234 res!826533) b!1839235))

(assert (= (and b!1839235 res!826530) b!1839236))

(assert (= (and b!1839235 (not res!826531)) b!1839237))

(assert (=> b!1839236 m!2266935))

(assert (=> b!1839237 m!2266945))

(assert (=> b!1839181 d!562418))

(declare-fun d!562420 () Bool)

(assert (=> d!562420 (subseq!384 l!3679 l!3679)))

(declare-fun lt!713712 () Unit!34947)

(declare-fun choose!11569 (List!20303) Unit!34947)

(assert (=> d!562420 (= lt!713712 (choose!11569 l!3679))))

(assert (=> d!562420 (= (lemmaSubseqRefl!46 l!3679) lt!713712)))

(declare-fun bs!408536 () Bool)

(assert (= bs!408536 d!562420))

(assert (=> bs!408536 m!2266917))

(declare-fun m!2266949 () Bool)

(assert (=> bs!408536 m!2266949))

(assert (=> b!1839181 d!562420))

(declare-fun b!1839244 () Bool)

(declare-fun e!1175302 () Bool)

(assert (=> b!1839244 (= e!1175302 (subseq!384 (t!171732 l!3679) (t!171732 (Cons!20233 elmt!176 l!3679))))))

(declare-fun b!1839242 () Bool)

(declare-fun e!1175304 () Bool)

(declare-fun e!1175303 () Bool)

(assert (=> b!1839242 (= e!1175304 e!1175303)))

(declare-fun res!826541 () Bool)

(assert (=> b!1839242 (=> (not res!826541) (not e!1175303))))

(assert (=> b!1839242 (= res!826541 (is-Cons!20233 (Cons!20233 elmt!176 l!3679)))))

(declare-fun b!1839245 () Bool)

(declare-fun e!1175301 () Bool)

(assert (=> b!1839245 (= e!1175301 (subseq!384 l!3679 (t!171732 (Cons!20233 elmt!176 l!3679))))))

(declare-fun b!1839243 () Bool)

(assert (=> b!1839243 (= e!1175303 e!1175301)))

(declare-fun res!826539 () Bool)

(assert (=> b!1839243 (=> res!826539 e!1175301)))

(assert (=> b!1839243 (= res!826539 e!1175302)))

(declare-fun res!826538 () Bool)

(assert (=> b!1839243 (=> (not res!826538) (not e!1175302))))

(assert (=> b!1839243 (= res!826538 (= (h!25634 l!3679) (h!25634 (Cons!20233 elmt!176 l!3679))))))

(declare-fun d!562422 () Bool)

(declare-fun res!826540 () Bool)

(assert (=> d!562422 (=> res!826540 e!1175304)))

(assert (=> d!562422 (= res!826540 (is-Nil!20233 l!3679))))

(assert (=> d!562422 (= (subseq!384 l!3679 (Cons!20233 elmt!176 l!3679)) e!1175304)))

(assert (= (and d!562422 (not res!826540)) b!1839242))

(assert (= (and b!1839242 res!826541) b!1839243))

(assert (= (and b!1839243 res!826538) b!1839244))

(assert (= (and b!1839243 (not res!826539)) b!1839245))

(declare-fun m!2266951 () Bool)

(assert (=> b!1839244 m!2266951))

(declare-fun m!2266953 () Bool)

(assert (=> b!1839245 m!2266953))

(assert (=> b!1839182 d!562422))

(declare-fun b!1839250 () Bool)

(declare-fun e!1175307 () Bool)

(declare-fun tp!520155 () Bool)

(assert (=> b!1839250 (= e!1175307 (and tp_is_empty!8259 tp!520155))))

(assert (=> b!1839183 (= tp!520149 e!1175307)))

(assert (= (and b!1839183 (is-Cons!20233 (t!171732 l!3679))) b!1839250))

(push 1)

(assert (not d!562414))

(assert tp_is_empty!8259)

(assert (not b!1839229))

(assert (not bm!115086))

(assert (not b!1839231))

(assert (not b!1839250))

(assert (not b!1839204))

(assert (not b!1839236))

(assert (not b!1839233))

(assert (not b!1839203))

(assert (not b!1839237))

(assert (not b!1839245))

(assert (not b!1839244))

(assert (not d!562420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

