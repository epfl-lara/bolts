; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!353198 () Bool)

(assert start!353198)

(declare-fun res!1523071 () Bool)

(declare-fun e!2326320 () Bool)

(assert (=> start!353198 (=> res!1523071 e!2326320)))

(declare-datatypes ((B!2575 0))(
  ( (B!2576 (val!13219 Int)) )
))
(declare-datatypes ((List!40234 0))(
  ( (Nil!40110) (Cons!40110 (h!45530 B!2575) (t!303883 List!40234)) )
))
(declare-fun l!3461 () List!40234)

(assert (=> start!353198 (= res!1523071 (is-Cons!40110 l!3461))))

(declare-fun isPrefix!3302 (List!40234 List!40234) Bool)

(assert (=> start!353198 (isPrefix!3302 l!3461 l!3461)))

(declare-datatypes ((Unit!57836 0))(
  ( (Unit!57837) )
))
(declare-fun lt!1301876 () Unit!57836)

(declare-fun lemmaIsPrefixRefl!2087 (List!40234 List!40234) Unit!57836)

(assert (=> start!353198 (= lt!1301876 (lemmaIsPrefixRefl!2087 l!3461 l!3461))))

(assert (=> start!353198 (not e!2326320)))

(declare-fun e!2326319 () Bool)

(assert (=> start!353198 e!2326319))

(declare-fun b!3761299 () Bool)

(declare-fun isEmpty!23581 (List!40234) Bool)

(declare-fun getSuffix!1777 (List!40234 List!40234) List!40234)

(assert (=> b!3761299 (= e!2326320 (isEmpty!23581 (getSuffix!1777 l!3461 l!3461)))))

(declare-fun b!3761300 () Bool)

(declare-fun tp_is_empty!19119 () Bool)

(declare-fun tp!1149399 () Bool)

(assert (=> b!3761300 (= e!2326319 (and tp_is_empty!19119 tp!1149399))))

(assert (= (and start!353198 (not res!1523071)) b!3761299))

(assert (= (and start!353198 (is-Cons!40110 l!3461)) b!3761300))

(declare-fun m!4255353 () Bool)

(assert (=> start!353198 m!4255353))

(declare-fun m!4255355 () Bool)

(assert (=> start!353198 m!4255355))

(declare-fun m!4255357 () Bool)

(assert (=> b!3761299 m!4255357))

(assert (=> b!3761299 m!4255357))

(declare-fun m!4255359 () Bool)

(assert (=> b!3761299 m!4255359))

(push 1)

(assert (not b!3761299))

(assert (not start!353198))

(assert (not b!3761300))

(assert tp_is_empty!19119)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1098685 () Bool)

(assert (=> d!1098685 (= (isEmpty!23581 (getSuffix!1777 l!3461 l!3461)) (is-Nil!40110 (getSuffix!1777 l!3461 l!3461)))))

(assert (=> b!3761299 d!1098685))

(declare-fun d!1098687 () Bool)

(declare-fun lt!1301882 () List!40234)

(declare-fun ++!9946 (List!40234 List!40234) List!40234)

(assert (=> d!1098687 (= (++!9946 l!3461 lt!1301882) l!3461)))

(declare-fun e!2326329 () List!40234)

(assert (=> d!1098687 (= lt!1301882 e!2326329)))

(declare-fun c!651282 () Bool)

(assert (=> d!1098687 (= c!651282 (is-Cons!40110 l!3461))))

(declare-fun size!30187 (List!40234) Int)

(assert (=> d!1098687 (>= (size!30187 l!3461) (size!30187 l!3461))))

(assert (=> d!1098687 (= (getSuffix!1777 l!3461 l!3461) lt!1301882)))

(declare-fun b!3761311 () Bool)

(declare-fun tail!5767 (List!40234) List!40234)

(assert (=> b!3761311 (= e!2326329 (getSuffix!1777 (tail!5767 l!3461) (t!303883 l!3461)))))

(declare-fun b!3761312 () Bool)

(assert (=> b!3761312 (= e!2326329 l!3461)))

(assert (= (and d!1098687 c!651282) b!3761311))

(assert (= (and d!1098687 (not c!651282)) b!3761312))

(declare-fun m!4255369 () Bool)

(assert (=> d!1098687 m!4255369))

(declare-fun m!4255371 () Bool)

(assert (=> d!1098687 m!4255371))

(assert (=> d!1098687 m!4255371))

(declare-fun m!4255373 () Bool)

(assert (=> b!3761311 m!4255373))

(assert (=> b!3761311 m!4255373))

(declare-fun m!4255375 () Bool)

(assert (=> b!3761311 m!4255375))

(assert (=> b!3761299 d!1098687))

(declare-fun d!1098691 () Bool)

(declare-fun e!2326338 () Bool)

(assert (=> d!1098691 e!2326338))

(declare-fun res!1523085 () Bool)

(assert (=> d!1098691 (=> res!1523085 e!2326338)))

(declare-fun lt!1301885 () Bool)

(assert (=> d!1098691 (= res!1523085 (not lt!1301885))))

(declare-fun e!2326337 () Bool)

(assert (=> d!1098691 (= lt!1301885 e!2326337)))

(declare-fun res!1523086 () Bool)

(assert (=> d!1098691 (=> res!1523086 e!2326337)))

(assert (=> d!1098691 (= res!1523086 (is-Nil!40110 l!3461))))

(assert (=> d!1098691 (= (isPrefix!3302 l!3461 l!3461) lt!1301885)))

(declare-fun b!3761323 () Bool)

(declare-fun e!2326336 () Bool)

(assert (=> b!3761323 (= e!2326336 (isPrefix!3302 (tail!5767 l!3461) (tail!5767 l!3461)))))

(declare-fun b!3761324 () Bool)

(assert (=> b!3761324 (= e!2326338 (>= (size!30187 l!3461) (size!30187 l!3461)))))

(declare-fun b!3761321 () Bool)

(assert (=> b!3761321 (= e!2326337 e!2326336)))

(declare-fun res!1523084 () Bool)

(assert (=> b!3761321 (=> (not res!1523084) (not e!2326336))))

(assert (=> b!3761321 (= res!1523084 (not (is-Nil!40110 l!3461)))))

(declare-fun b!3761322 () Bool)

(declare-fun res!1523083 () Bool)

(assert (=> b!3761322 (=> (not res!1523083) (not e!2326336))))

(declare-fun head!8040 (List!40234) B!2575)

(assert (=> b!3761322 (= res!1523083 (= (head!8040 l!3461) (head!8040 l!3461)))))

(assert (= (and d!1098691 (not res!1523086)) b!3761321))

(assert (= (and b!3761321 res!1523084) b!3761322))

(assert (= (and b!3761322 res!1523083) b!3761323))

(assert (= (and d!1098691 (not res!1523085)) b!3761324))

(assert (=> b!3761323 m!4255373))

(assert (=> b!3761323 m!4255373))

(assert (=> b!3761323 m!4255373))

(assert (=> b!3761323 m!4255373))

(declare-fun m!4255377 () Bool)

(assert (=> b!3761323 m!4255377))

(assert (=> b!3761324 m!4255371))

(assert (=> b!3761324 m!4255371))

(declare-fun m!4255379 () Bool)

(assert (=> b!3761322 m!4255379))

(assert (=> b!3761322 m!4255379))

(assert (=> start!353198 d!1098691))

(declare-fun d!1098693 () Bool)

(assert (=> d!1098693 (isPrefix!3302 l!3461 l!3461)))

(declare-fun lt!1301888 () Unit!57836)

(declare-fun choose!22285 (List!40234 List!40234) Unit!57836)

(assert (=> d!1098693 (= lt!1301888 (choose!22285 l!3461 l!3461))))

(assert (=> d!1098693 (= (lemmaIsPrefixRefl!2087 l!3461 l!3461) lt!1301888)))

(declare-fun bs!575789 () Bool)

(assert (= bs!575789 d!1098693))

(assert (=> bs!575789 m!4255353))

(declare-fun m!4255381 () Bool)

(assert (=> bs!575789 m!4255381))

(assert (=> start!353198 d!1098693))

(declare-fun b!3761331 () Bool)

(declare-fun e!2326343 () Bool)

(declare-fun tp!1149405 () Bool)

(assert (=> b!3761331 (= e!2326343 (and tp_is_empty!19119 tp!1149405))))

(assert (=> b!3761300 (= tp!1149399 e!2326343)))

(assert (= (and b!3761300 (is-Cons!40110 (t!303883 l!3461))) b!3761331))

(push 1)

(assert (not d!1098687))

(assert (not b!3761324))

(assert (not b!3761311))

(assert (not d!1098693))

(assert (not b!3761331))

(assert tp_is_empty!19119)

(assert (not b!3761322))

(assert (not b!3761323))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

