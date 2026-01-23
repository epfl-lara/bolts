; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46052 () Bool)

(assert start!46052)

(declare-fun b!510286 () Bool)

(declare-fun e!304817 () Bool)

(declare-fun tp_is_empty!2375 () Bool)

(declare-fun tp!158763 () Bool)

(assert (=> b!510286 (= e!304817 (and tp_is_empty!2375 tp!158763))))

(declare-fun b!510287 () Bool)

(declare-fun res!216469 () Bool)

(declare-fun e!304816 () Bool)

(assert (=> b!510287 (=> (not res!216469) (not e!304816))))

(declare-datatypes ((B!989 0))(
  ( (B!990 (val!1636 Int)) )
))
(declare-datatypes ((List!4609 0))(
  ( (Nil!4599) (Cons!4599 (h!9996 B!989) (t!73127 List!4609)) )
))
(declare-fun p!1985 () List!4609)

(declare-fun l!3306 () List!4609)

(declare-fun isPrefix!531 (List!4609 List!4609) Bool)

(assert (=> b!510287 (= res!216469 (isPrefix!531 p!1985 l!3306))))

(declare-fun b!510289 () Bool)

(get-info :version)

(assert (=> b!510289 (= e!304816 (and ((_ is Cons!4599) p!1985) (= l!3306 Nil!4599)))))

(declare-fun b!510290 () Bool)

(declare-fun e!304815 () Bool)

(declare-fun tp!158762 () Bool)

(assert (=> b!510290 (= e!304815 (and tp_is_empty!2375 tp!158762))))

(declare-fun b!510288 () Bool)

(declare-fun res!216470 () Bool)

(assert (=> b!510288 (=> (not res!216470) (not e!304816))))

(declare-fun size!3705 (List!4609) Int)

(assert (=> b!510288 (= res!216470 (< (size!3705 p!1985) (size!3705 l!3306)))))

(declare-fun res!216471 () Bool)

(assert (=> start!46052 (=> (not res!216471) (not e!304816))))

(declare-fun isEmpty!3553 (List!4609) Bool)

(assert (=> start!46052 (= res!216471 (not (isEmpty!3553 l!3306)))))

(assert (=> start!46052 e!304816))

(assert (=> start!46052 e!304817))

(assert (=> start!46052 e!304815))

(assert (= (and start!46052 res!216471) b!510287))

(assert (= (and b!510287 res!216469) b!510288))

(assert (= (and b!510288 res!216470) b!510289))

(assert (= (and start!46052 ((_ is Cons!4599) l!3306)) b!510286))

(assert (= (and start!46052 ((_ is Cons!4599) p!1985)) b!510290))

(declare-fun m!757211 () Bool)

(assert (=> b!510287 m!757211))

(declare-fun m!757213 () Bool)

(assert (=> b!510288 m!757213))

(declare-fun m!757215 () Bool)

(assert (=> b!510288 m!757215))

(declare-fun m!757217 () Bool)

(assert (=> start!46052 m!757217))

(check-sat tp_is_empty!2375 (not start!46052) (not b!510290) (not b!510287) (not b!510286) (not b!510288))
(check-sat)
(get-model)

(declare-fun d!183467 () Bool)

(assert (=> d!183467 (= (isEmpty!3553 l!3306) ((_ is Nil!4599) l!3306))))

(assert (=> start!46052 d!183467))

(declare-fun b!510310 () Bool)

(declare-fun e!304830 () Bool)

(assert (=> b!510310 (= e!304830 (>= (size!3705 l!3306) (size!3705 p!1985)))))

(declare-fun d!183471 () Bool)

(assert (=> d!183471 e!304830))

(declare-fun res!216480 () Bool)

(assert (=> d!183471 (=> res!216480 e!304830)))

(declare-fun lt!211711 () Bool)

(assert (=> d!183471 (= res!216480 (not lt!211711))))

(declare-fun e!304829 () Bool)

(assert (=> d!183471 (= lt!211711 e!304829)))

(declare-fun res!216481 () Bool)

(assert (=> d!183471 (=> res!216481 e!304829)))

(assert (=> d!183471 (= res!216481 ((_ is Nil!4599) p!1985))))

(assert (=> d!183471 (= (isPrefix!531 p!1985 l!3306) lt!211711)))

(declare-fun b!510309 () Bool)

(declare-fun e!304828 () Bool)

(declare-fun tail!667 (List!4609) List!4609)

(assert (=> b!510309 (= e!304828 (isPrefix!531 (tail!667 p!1985) (tail!667 l!3306)))))

(declare-fun b!510308 () Bool)

(declare-fun res!216483 () Bool)

(assert (=> b!510308 (=> (not res!216483) (not e!304828))))

(declare-fun head!1147 (List!4609) B!989)

(assert (=> b!510308 (= res!216483 (= (head!1147 p!1985) (head!1147 l!3306)))))

(declare-fun b!510307 () Bool)

(assert (=> b!510307 (= e!304829 e!304828)))

(declare-fun res!216482 () Bool)

(assert (=> b!510307 (=> (not res!216482) (not e!304828))))

(assert (=> b!510307 (= res!216482 (not ((_ is Nil!4599) l!3306)))))

(assert (= (and d!183471 (not res!216481)) b!510307))

(assert (= (and b!510307 res!216482) b!510308))

(assert (= (and b!510308 res!216483) b!510309))

(assert (= (and d!183471 (not res!216480)) b!510310))

(assert (=> b!510310 m!757215))

(assert (=> b!510310 m!757213))

(declare-fun m!757223 () Bool)

(assert (=> b!510309 m!757223))

(declare-fun m!757225 () Bool)

(assert (=> b!510309 m!757225))

(assert (=> b!510309 m!757223))

(assert (=> b!510309 m!757225))

(declare-fun m!757227 () Bool)

(assert (=> b!510309 m!757227))

(declare-fun m!757229 () Bool)

(assert (=> b!510308 m!757229))

(declare-fun m!757231 () Bool)

(assert (=> b!510308 m!757231))

(assert (=> b!510287 d!183471))

(declare-fun d!183477 () Bool)

(declare-fun lt!211717 () Int)

(assert (=> d!183477 (>= lt!211717 0)))

(declare-fun e!304842 () Int)

(assert (=> d!183477 (= lt!211717 e!304842)))

(declare-fun c!99309 () Bool)

(assert (=> d!183477 (= c!99309 ((_ is Nil!4599) p!1985))))

(assert (=> d!183477 (= (size!3705 p!1985) lt!211717)))

(declare-fun b!510327 () Bool)

(assert (=> b!510327 (= e!304842 0)))

(declare-fun b!510328 () Bool)

(assert (=> b!510328 (= e!304842 (+ 1 (size!3705 (t!73127 p!1985))))))

(assert (= (and d!183477 c!99309) b!510327))

(assert (= (and d!183477 (not c!99309)) b!510328))

(declare-fun m!757243 () Bool)

(assert (=> b!510328 m!757243))

(assert (=> b!510288 d!183477))

(declare-fun d!183481 () Bool)

(declare-fun lt!211718 () Int)

(assert (=> d!183481 (>= lt!211718 0)))

(declare-fun e!304843 () Int)

(assert (=> d!183481 (= lt!211718 e!304843)))

(declare-fun c!99310 () Bool)

(assert (=> d!183481 (= c!99310 ((_ is Nil!4599) l!3306))))

(assert (=> d!183481 (= (size!3705 l!3306) lt!211718)))

(declare-fun b!510329 () Bool)

(assert (=> b!510329 (= e!304843 0)))

(declare-fun b!510330 () Bool)

(assert (=> b!510330 (= e!304843 (+ 1 (size!3705 (t!73127 l!3306))))))

(assert (= (and d!183481 c!99310) b!510329))

(assert (= (and d!183481 (not c!99310)) b!510330))

(declare-fun m!757245 () Bool)

(assert (=> b!510330 m!757245))

(assert (=> b!510288 d!183481))

(declare-fun b!510339 () Bool)

(declare-fun e!304848 () Bool)

(declare-fun tp!158768 () Bool)

(assert (=> b!510339 (= e!304848 (and tp_is_empty!2375 tp!158768))))

(assert (=> b!510286 (= tp!158763 e!304848)))

(assert (= (and b!510286 ((_ is Cons!4599) (t!73127 l!3306))) b!510339))

(declare-fun b!510341 () Bool)

(declare-fun e!304850 () Bool)

(declare-fun tp!158770 () Bool)

(assert (=> b!510341 (= e!304850 (and tp_is_empty!2375 tp!158770))))

(assert (=> b!510290 (= tp!158762 e!304850)))

(assert (= (and b!510290 ((_ is Cons!4599) (t!73127 p!1985))) b!510341))

(check-sat (not b!510339) (not b!510310) (not b!510341) (not b!510308) tp_is_empty!2375 (not b!510309) (not b!510328) (not b!510330))
(check-sat)
