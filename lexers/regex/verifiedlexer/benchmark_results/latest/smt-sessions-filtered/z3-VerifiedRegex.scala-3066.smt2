; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183006 () Bool)

(assert start!183006)

(declare-fun res!826558 () Bool)

(declare-fun e!1175341 () Bool)

(assert (=> start!183006 (=> (not res!826558) (not e!1175341))))

(declare-datatypes ((B!1517 0))(
  ( (B!1518 (val!5706 Int)) )
))
(declare-datatypes ((List!20306 0))(
  ( (Nil!20236) (Cons!20236 (h!25637 B!1517) (t!171735 List!20306)) )
))
(declare-fun l!3679 () List!20306)

(declare-fun elmt!176 () B!1517)

(get-info :version)

(assert (=> start!183006 (= res!826558 (and (not ((_ is Nil!20236) l!3679)) (not (= (h!25637 l!3679) elmt!176))))))

(assert (=> start!183006 e!1175341))

(declare-fun e!1175342 () Bool)

(assert (=> start!183006 e!1175342))

(declare-fun tp_is_empty!8265 () Bool)

(assert (=> start!183006 tp_is_empty!8265))

(declare-fun b!1839295 () Bool)

(declare-fun subseq!387 (List!20306 List!20306) Bool)

(assert (=> b!1839295 (= e!1175341 (not (subseq!387 l!3679 (Cons!20236 elmt!176 l!3679))))))

(assert (=> b!1839295 (subseq!387 l!3679 l!3679)))

(declare-datatypes ((Unit!34955 0))(
  ( (Unit!34956) )
))
(declare-fun lt!713724 () Unit!34955)

(declare-fun lemmaSubseqRefl!49 (List!20306) Unit!34955)

(assert (=> b!1839295 (= lt!713724 (lemmaSubseqRefl!49 l!3679))))

(declare-fun b!1839296 () Bool)

(declare-fun tp!520164 () Bool)

(assert (=> b!1839296 (= e!1175342 (and tp_is_empty!8265 tp!520164))))

(assert (= (and start!183006 res!826558) b!1839295))

(assert (= (and start!183006 ((_ is Cons!20236) l!3679)) b!1839296))

(declare-fun m!2266983 () Bool)

(assert (=> b!1839295 m!2266983))

(declare-fun m!2266985 () Bool)

(assert (=> b!1839295 m!2266985))

(declare-fun m!2266987 () Bool)

(assert (=> b!1839295 m!2266987))

(check-sat (not b!1839295) (not b!1839296) tp_is_empty!8265)
(check-sat)
(get-model)

(declare-fun b!1839324 () Bool)

(declare-fun e!1175367 () Bool)

(assert (=> b!1839324 (= e!1175367 (subseq!387 l!3679 (t!171735 (Cons!20236 elmt!176 l!3679))))))

(declare-fun b!1839323 () Bool)

(declare-fun e!1175370 () Bool)

(assert (=> b!1839323 (= e!1175370 (subseq!387 (t!171735 l!3679) (t!171735 (Cons!20236 elmt!176 l!3679))))))

(declare-fun b!1839321 () Bool)

(declare-fun e!1175368 () Bool)

(declare-fun e!1175369 () Bool)

(assert (=> b!1839321 (= e!1175368 e!1175369)))

(declare-fun res!826584 () Bool)

(assert (=> b!1839321 (=> (not res!826584) (not e!1175369))))

(assert (=> b!1839321 (= res!826584 ((_ is Cons!20236) (Cons!20236 elmt!176 l!3679)))))

(declare-fun d!562435 () Bool)

(declare-fun res!826583 () Bool)

(assert (=> d!562435 (=> res!826583 e!1175368)))

(assert (=> d!562435 (= res!826583 ((_ is Nil!20236) l!3679))))

(assert (=> d!562435 (= (subseq!387 l!3679 (Cons!20236 elmt!176 l!3679)) e!1175368)))

(declare-fun b!1839322 () Bool)

(assert (=> b!1839322 (= e!1175369 e!1175367)))

(declare-fun res!826585 () Bool)

(assert (=> b!1839322 (=> res!826585 e!1175367)))

(assert (=> b!1839322 (= res!826585 e!1175370)))

(declare-fun res!826586 () Bool)

(assert (=> b!1839322 (=> (not res!826586) (not e!1175370))))

(assert (=> b!1839322 (= res!826586 (= (h!25637 l!3679) (h!25637 (Cons!20236 elmt!176 l!3679))))))

(assert (= (and d!562435 (not res!826583)) b!1839321))

(assert (= (and b!1839321 res!826584) b!1839322))

(assert (= (and b!1839322 res!826586) b!1839323))

(assert (= (and b!1839322 (not res!826585)) b!1839324))

(declare-fun m!2266997 () Bool)

(assert (=> b!1839324 m!2266997))

(declare-fun m!2266999 () Bool)

(assert (=> b!1839323 m!2266999))

(assert (=> b!1839295 d!562435))

(declare-fun b!1839328 () Bool)

(declare-fun e!1175371 () Bool)

(assert (=> b!1839328 (= e!1175371 (subseq!387 l!3679 (t!171735 l!3679)))))

(declare-fun b!1839327 () Bool)

(declare-fun e!1175374 () Bool)

(assert (=> b!1839327 (= e!1175374 (subseq!387 (t!171735 l!3679) (t!171735 l!3679)))))

(declare-fun b!1839325 () Bool)

(declare-fun e!1175372 () Bool)

(declare-fun e!1175373 () Bool)

(assert (=> b!1839325 (= e!1175372 e!1175373)))

(declare-fun res!826588 () Bool)

(assert (=> b!1839325 (=> (not res!826588) (not e!1175373))))

(assert (=> b!1839325 (= res!826588 ((_ is Cons!20236) l!3679))))

(declare-fun d!562441 () Bool)

(declare-fun res!826587 () Bool)

(assert (=> d!562441 (=> res!826587 e!1175372)))

(assert (=> d!562441 (= res!826587 ((_ is Nil!20236) l!3679))))

(assert (=> d!562441 (= (subseq!387 l!3679 l!3679) e!1175372)))

(declare-fun b!1839326 () Bool)

(assert (=> b!1839326 (= e!1175373 e!1175371)))

(declare-fun res!826589 () Bool)

(assert (=> b!1839326 (=> res!826589 e!1175371)))

(assert (=> b!1839326 (= res!826589 e!1175374)))

(declare-fun res!826590 () Bool)

(assert (=> b!1839326 (=> (not res!826590) (not e!1175374))))

(assert (=> b!1839326 (= res!826590 (= (h!25637 l!3679) (h!25637 l!3679)))))

(assert (= (and d!562441 (not res!826587)) b!1839325))

(assert (= (and b!1839325 res!826588) b!1839326))

(assert (= (and b!1839326 res!826590) b!1839327))

(assert (= (and b!1839326 (not res!826589)) b!1839328))

(declare-fun m!2267003 () Bool)

(assert (=> b!1839328 m!2267003))

(declare-fun m!2267005 () Bool)

(assert (=> b!1839327 m!2267005))

(assert (=> b!1839295 d!562441))

(declare-fun d!562443 () Bool)

(assert (=> d!562443 (subseq!387 l!3679 l!3679)))

(declare-fun lt!713730 () Unit!34955)

(declare-fun choose!11571 (List!20306) Unit!34955)

(assert (=> d!562443 (= lt!713730 (choose!11571 l!3679))))

(assert (=> d!562443 (= (lemmaSubseqRefl!49 l!3679) lt!713730)))

(declare-fun bs!408541 () Bool)

(assert (= bs!408541 d!562443))

(assert (=> bs!408541 m!2266985))

(declare-fun m!2267007 () Bool)

(assert (=> bs!408541 m!2267007))

(assert (=> b!1839295 d!562443))

(declare-fun b!1839338 () Bool)

(declare-fun e!1175380 () Bool)

(declare-fun tp!520170 () Bool)

(assert (=> b!1839338 (= e!1175380 (and tp_is_empty!8265 tp!520170))))

(assert (=> b!1839296 (= tp!520164 e!1175380)))

(assert (= (and b!1839296 ((_ is Cons!20236) (t!171735 l!3679))) b!1839338))

(check-sat (not b!1839323) (not b!1839327) tp_is_empty!8265 (not d!562443) (not b!1839328) (not b!1839338) (not b!1839324))
(check-sat)
