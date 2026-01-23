; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46072 () Bool)

(assert start!46072)

(declare-fun b!510436 () Bool)

(declare-fun e!304898 () Bool)

(declare-fun e!304896 () Bool)

(assert (=> b!510436 (= e!304898 e!304896)))

(declare-fun res!216572 () Bool)

(assert (=> b!510436 (=> (not res!216572) (not e!304896))))

(declare-datatypes ((B!997 0))(
  ( (B!998 (val!1640 Int)) )
))
(declare-datatypes ((List!4613 0))(
  ( (Nil!4603) (Cons!4603 (h!10000 B!997) (t!73131 List!4613)) )
))
(declare-fun lt!211747 () List!4613)

(declare-fun isEmpty!3557 (List!4613) Bool)

(assert (=> b!510436 (= res!216572 (not (isEmpty!3557 lt!211747)))))

(declare-fun l!3306 () List!4613)

(declare-fun tail!672 (List!4613) List!4613)

(assert (=> b!510436 (= lt!211747 (tail!672 l!3306))))

(declare-fun b!510437 () Bool)

(declare-fun res!216571 () Bool)

(assert (=> b!510437 (=> (not res!216571) (not e!304898))))

(declare-fun p!1985 () List!4613)

(declare-fun size!3709 (List!4613) Int)

(assert (=> b!510437 (= res!216571 (< (size!3709 p!1985) (size!3709 l!3306)))))

(declare-fun b!510438 () Bool)

(assert (=> b!510438 (= e!304896 (not true))))

(declare-fun isPrefix!535 (List!4613 List!4613) Bool)

(declare-fun removeLast!12 (List!4613) List!4613)

(assert (=> b!510438 (isPrefix!535 (t!73131 p!1985) (removeLast!12 lt!211747))))

(declare-datatypes ((Unit!8392 0))(
  ( (Unit!8393) )
))
(declare-fun lt!211748 () Unit!8392)

(declare-fun lemmaRemoveLastPrefixStillPrefix!2 (List!4613 List!4613) Unit!8392)

(assert (=> b!510438 (= lt!211748 (lemmaRemoveLastPrefixStillPrefix!2 (t!73131 p!1985) lt!211747))))

(declare-fun b!510439 () Bool)

(declare-fun res!216568 () Bool)

(assert (=> b!510439 (=> (not res!216568) (not e!304898))))

(get-info :version)

(assert (=> b!510439 (= res!216568 ((_ is Cons!4603) p!1985))))

(declare-fun res!216569 () Bool)

(assert (=> start!46072 (=> (not res!216569) (not e!304898))))

(assert (=> start!46072 (= res!216569 (not (isEmpty!3557 l!3306)))))

(assert (=> start!46072 e!304898))

(declare-fun e!304899 () Bool)

(assert (=> start!46072 e!304899))

(declare-fun e!304897 () Bool)

(assert (=> start!46072 e!304897))

(declare-fun b!510440 () Bool)

(declare-fun res!216570 () Bool)

(assert (=> b!510440 (=> (not res!216570) (not e!304898))))

(assert (=> b!510440 (= res!216570 (isPrefix!535 p!1985 l!3306))))

(declare-fun b!510441 () Bool)

(declare-fun tp_is_empty!2383 () Bool)

(declare-fun tp!158794 () Bool)

(assert (=> b!510441 (= e!304899 (and tp_is_empty!2383 tp!158794))))

(declare-fun b!510442 () Bool)

(declare-fun res!216567 () Bool)

(assert (=> b!510442 (=> (not res!216567) (not e!304896))))

(assert (=> b!510442 (= res!216567 (< (size!3709 (t!73131 p!1985)) (size!3709 lt!211747)))))

(declare-fun b!510443 () Bool)

(declare-fun res!216573 () Bool)

(assert (=> b!510443 (=> (not res!216573) (not e!304896))))

(assert (=> b!510443 (= res!216573 (isPrefix!535 (t!73131 p!1985) lt!211747))))

(declare-fun b!510444 () Bool)

(declare-fun tp!158795 () Bool)

(assert (=> b!510444 (= e!304897 (and tp_is_empty!2383 tp!158795))))

(assert (= (and start!46072 res!216569) b!510440))

(assert (= (and b!510440 res!216570) b!510437))

(assert (= (and b!510437 res!216571) b!510439))

(assert (= (and b!510439 res!216568) b!510436))

(assert (= (and b!510436 res!216572) b!510443))

(assert (= (and b!510443 res!216573) b!510442))

(assert (= (and b!510442 res!216567) b!510438))

(assert (= (and start!46072 ((_ is Cons!4603) l!3306)) b!510441))

(assert (= (and start!46072 ((_ is Cons!4603) p!1985)) b!510444))

(declare-fun m!757307 () Bool)

(assert (=> start!46072 m!757307))

(declare-fun m!757309 () Bool)

(assert (=> b!510436 m!757309))

(declare-fun m!757311 () Bool)

(assert (=> b!510436 m!757311))

(declare-fun m!757313 () Bool)

(assert (=> b!510440 m!757313))

(declare-fun m!757315 () Bool)

(assert (=> b!510438 m!757315))

(assert (=> b!510438 m!757315))

(declare-fun m!757317 () Bool)

(assert (=> b!510438 m!757317))

(declare-fun m!757319 () Bool)

(assert (=> b!510438 m!757319))

(declare-fun m!757321 () Bool)

(assert (=> b!510437 m!757321))

(declare-fun m!757323 () Bool)

(assert (=> b!510437 m!757323))

(declare-fun m!757325 () Bool)

(assert (=> b!510443 m!757325))

(declare-fun m!757327 () Bool)

(assert (=> b!510442 m!757327))

(declare-fun m!757329 () Bool)

(assert (=> b!510442 m!757329))

(check-sat (not b!510443) (not b!510438) (not b!510437) tp_is_empty!2383 (not b!510441) (not b!510436) (not b!510444) (not b!510442) (not b!510440) (not start!46072))
(check-sat)
