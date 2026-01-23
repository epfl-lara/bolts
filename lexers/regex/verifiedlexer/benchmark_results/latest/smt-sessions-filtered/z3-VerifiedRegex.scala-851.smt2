; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46100 () Bool)

(assert start!46100)

(declare-fun b!510593 () Bool)

(declare-fun e!304991 () Bool)

(declare-fun tp_is_empty!2395 () Bool)

(declare-fun tp!158839 () Bool)

(assert (=> b!510593 (= e!304991 (and tp_is_empty!2395 tp!158839))))

(declare-fun b!510594 () Bool)

(declare-fun res!216649 () Bool)

(declare-fun e!304993 () Bool)

(assert (=> b!510594 (=> (not res!216649) (not e!304993))))

(declare-datatypes ((B!1009 0))(
  ( (B!1010 (val!1646 Int)) )
))
(declare-datatypes ((List!4619 0))(
  ( (Nil!4609) (Cons!4609 (h!10006 B!1009) (t!73137 List!4619)) )
))
(declare-fun p!1985 () List!4619)

(declare-fun l!3306 () List!4619)

(declare-fun isPrefix!541 (List!4619 List!4619) Bool)

(assert (=> b!510594 (= res!216649 (isPrefix!541 p!1985 l!3306))))

(declare-fun b!510595 () Bool)

(declare-fun res!216651 () Bool)

(assert (=> b!510595 (=> (not res!216651) (not e!304993))))

(declare-fun size!3715 (List!4619) Int)

(assert (=> b!510595 (= res!216651 (< (size!3715 p!1985) (size!3715 l!3306)))))

(declare-fun res!216650 () Bool)

(assert (=> start!46100 (=> (not res!216650) (not e!304993))))

(declare-fun isEmpty!3563 (List!4619) Bool)

(assert (=> start!46100 (= res!216650 (not (isEmpty!3563 l!3306)))))

(assert (=> start!46100 e!304993))

(assert (=> start!46100 e!304991))

(declare-fun e!304992 () Bool)

(assert (=> start!46100 e!304992))

(declare-fun b!510596 () Bool)

(declare-fun tail!676 (List!4619) List!4619)

(assert (=> b!510596 (= e!304993 (isEmpty!3563 (tail!676 l!3306)))))

(declare-fun b!510597 () Bool)

(declare-fun res!216648 () Bool)

(assert (=> b!510597 (=> (not res!216648) (not e!304993))))

(get-info :version)

(assert (=> b!510597 (= res!216648 ((_ is Cons!4609) p!1985))))

(declare-fun b!510598 () Bool)

(declare-fun tp!158838 () Bool)

(assert (=> b!510598 (= e!304992 (and tp_is_empty!2395 tp!158838))))

(assert (= (and start!46100 res!216650) b!510594))

(assert (= (and b!510594 res!216649) b!510595))

(assert (= (and b!510595 res!216651) b!510597))

(assert (= (and b!510597 res!216648) b!510596))

(assert (= (and start!46100 ((_ is Cons!4609) l!3306)) b!510593))

(assert (= (and start!46100 ((_ is Cons!4609) p!1985)) b!510598))

(declare-fun m!757411 () Bool)

(assert (=> b!510594 m!757411))

(declare-fun m!757413 () Bool)

(assert (=> b!510595 m!757413))

(declare-fun m!757415 () Bool)

(assert (=> b!510595 m!757415))

(declare-fun m!757417 () Bool)

(assert (=> start!46100 m!757417))

(declare-fun m!757419 () Bool)

(assert (=> b!510596 m!757419))

(assert (=> b!510596 m!757419))

(declare-fun m!757421 () Bool)

(assert (=> b!510596 m!757421))

(check-sat (not b!510598) (not b!510595) (not b!510596) (not b!510593) (not start!46100) (not b!510594) tp_is_empty!2395)
(check-sat)
(get-model)

(declare-fun b!510616 () Bool)

(declare-fun res!216662 () Bool)

(declare-fun e!305004 () Bool)

(assert (=> b!510616 (=> (not res!216662) (not e!305004))))

(declare-fun head!1151 (List!4619) B!1009)

(assert (=> b!510616 (= res!216662 (= (head!1151 p!1985) (head!1151 l!3306)))))

(declare-fun d!183508 () Bool)

(declare-fun e!305005 () Bool)

(assert (=> d!183508 e!305005))

(declare-fun res!216661 () Bool)

(assert (=> d!183508 (=> res!216661 e!305005)))

(declare-fun lt!211787 () Bool)

(assert (=> d!183508 (= res!216661 (not lt!211787))))

(declare-fun e!305006 () Bool)

(assert (=> d!183508 (= lt!211787 e!305006)))

(declare-fun res!216663 () Bool)

(assert (=> d!183508 (=> res!216663 e!305006)))

(assert (=> d!183508 (= res!216663 ((_ is Nil!4609) p!1985))))

(assert (=> d!183508 (= (isPrefix!541 p!1985 l!3306) lt!211787)))

(declare-fun b!510615 () Bool)

(assert (=> b!510615 (= e!305006 e!305004)))

(declare-fun res!216660 () Bool)

(assert (=> b!510615 (=> (not res!216660) (not e!305004))))

(assert (=> b!510615 (= res!216660 (not ((_ is Nil!4609) l!3306)))))

(declare-fun b!510618 () Bool)

(assert (=> b!510618 (= e!305005 (>= (size!3715 l!3306) (size!3715 p!1985)))))

(declare-fun b!510617 () Bool)

(assert (=> b!510617 (= e!305004 (isPrefix!541 (tail!676 p!1985) (tail!676 l!3306)))))

(assert (= (and d!183508 (not res!216663)) b!510615))

(assert (= (and b!510615 res!216660) b!510616))

(assert (= (and b!510616 res!216662) b!510617))

(assert (= (and d!183508 (not res!216661)) b!510618))

(declare-fun m!757427 () Bool)

(assert (=> b!510616 m!757427))

(declare-fun m!757429 () Bool)

(assert (=> b!510616 m!757429))

(assert (=> b!510618 m!757415))

(assert (=> b!510618 m!757413))

(declare-fun m!757431 () Bool)

(assert (=> b!510617 m!757431))

(assert (=> b!510617 m!757419))

(assert (=> b!510617 m!757431))

(assert (=> b!510617 m!757419))

(declare-fun m!757433 () Bool)

(assert (=> b!510617 m!757433))

(assert (=> b!510594 d!183508))

(declare-fun d!183518 () Bool)

(assert (=> d!183518 (= (isEmpty!3563 l!3306) ((_ is Nil!4609) l!3306))))

(assert (=> start!46100 d!183518))

(declare-fun d!183522 () Bool)

(assert (=> d!183522 (= (isEmpty!3563 (tail!676 l!3306)) ((_ is Nil!4609) (tail!676 l!3306)))))

(assert (=> b!510596 d!183522))

(declare-fun d!183524 () Bool)

(assert (=> d!183524 (= (tail!676 l!3306) (t!73137 l!3306))))

(assert (=> b!510596 d!183524))

(declare-fun d!183526 () Bool)

(declare-fun lt!211792 () Int)

(assert (=> d!183526 (>= lt!211792 0)))

(declare-fun e!305015 () Int)

(assert (=> d!183526 (= lt!211792 e!305015)))

(declare-fun c!99331 () Bool)

(assert (=> d!183526 (= c!99331 ((_ is Nil!4609) p!1985))))

(assert (=> d!183526 (= (size!3715 p!1985) lt!211792)))

(declare-fun b!510631 () Bool)

(assert (=> b!510631 (= e!305015 0)))

(declare-fun b!510632 () Bool)

(assert (=> b!510632 (= e!305015 (+ 1 (size!3715 (t!73137 p!1985))))))

(assert (= (and d!183526 c!99331) b!510631))

(assert (= (and d!183526 (not c!99331)) b!510632))

(declare-fun m!757435 () Bool)

(assert (=> b!510632 m!757435))

(assert (=> b!510595 d!183526))

(declare-fun d!183528 () Bool)

(declare-fun lt!211793 () Int)

(assert (=> d!183528 (>= lt!211793 0)))

(declare-fun e!305016 () Int)

(assert (=> d!183528 (= lt!211793 e!305016)))

(declare-fun c!99332 () Bool)

(assert (=> d!183528 (= c!99332 ((_ is Nil!4609) l!3306))))

(assert (=> d!183528 (= (size!3715 l!3306) lt!211793)))

(declare-fun b!510633 () Bool)

(assert (=> b!510633 (= e!305016 0)))

(declare-fun b!510634 () Bool)

(assert (=> b!510634 (= e!305016 (+ 1 (size!3715 (t!73137 l!3306))))))

(assert (= (and d!183528 c!99332) b!510633))

(assert (= (and d!183528 (not c!99332)) b!510634))

(declare-fun m!757437 () Bool)

(assert (=> b!510634 m!757437))

(assert (=> b!510595 d!183528))

(declare-fun b!510639 () Bool)

(declare-fun e!305019 () Bool)

(declare-fun tp!158842 () Bool)

(assert (=> b!510639 (= e!305019 (and tp_is_empty!2395 tp!158842))))

(assert (=> b!510598 (= tp!158838 e!305019)))

(assert (= (and b!510598 ((_ is Cons!4609) (t!73137 p!1985))) b!510639))

(declare-fun b!510640 () Bool)

(declare-fun e!305020 () Bool)

(declare-fun tp!158843 () Bool)

(assert (=> b!510640 (= e!305020 (and tp_is_empty!2395 tp!158843))))

(assert (=> b!510593 (= tp!158839 e!305020)))

(assert (= (and b!510593 ((_ is Cons!4609) (t!73137 l!3306))) b!510640))

(check-sat tp_is_empty!2395 (not b!510634) (not b!510632) (not b!510617) (not b!510616) (not b!510639) (not b!510640) (not b!510618))
(check-sat)
(get-model)

(declare-fun d!183532 () Bool)

(declare-fun lt!211795 () Int)

(assert (=> d!183532 (>= lt!211795 0)))

(declare-fun e!305028 () Int)

(assert (=> d!183532 (= lt!211795 e!305028)))

(declare-fun c!99333 () Bool)

(assert (=> d!183532 (= c!99333 ((_ is Nil!4609) (t!73137 p!1985)))))

(assert (=> d!183532 (= (size!3715 (t!73137 p!1985)) lt!211795)))

(declare-fun b!510651 () Bool)

(assert (=> b!510651 (= e!305028 0)))

(declare-fun b!510652 () Bool)

(assert (=> b!510652 (= e!305028 (+ 1 (size!3715 (t!73137 (t!73137 p!1985)))))))

(assert (= (and d!183532 c!99333) b!510651))

(assert (= (and d!183532 (not c!99333)) b!510652))

(declare-fun m!757447 () Bool)

(assert (=> b!510652 m!757447))

(assert (=> b!510632 d!183532))

(declare-fun d!183534 () Bool)

(assert (=> d!183534 (= (head!1151 p!1985) (h!10006 p!1985))))

(assert (=> b!510616 d!183534))

(declare-fun d!183536 () Bool)

(assert (=> d!183536 (= (head!1151 l!3306) (h!10006 l!3306))))

(assert (=> b!510616 d!183536))

(declare-fun d!183538 () Bool)

(declare-fun lt!211796 () Int)

(assert (=> d!183538 (>= lt!211796 0)))

(declare-fun e!305029 () Int)

(assert (=> d!183538 (= lt!211796 e!305029)))

(declare-fun c!99334 () Bool)

(assert (=> d!183538 (= c!99334 ((_ is Nil!4609) (t!73137 l!3306)))))

(assert (=> d!183538 (= (size!3715 (t!73137 l!3306)) lt!211796)))

(declare-fun b!510653 () Bool)

(assert (=> b!510653 (= e!305029 0)))

(declare-fun b!510654 () Bool)

(assert (=> b!510654 (= e!305029 (+ 1 (size!3715 (t!73137 (t!73137 l!3306)))))))

(assert (= (and d!183538 c!99334) b!510653))

(assert (= (and d!183538 (not c!99334)) b!510654))

(declare-fun m!757449 () Bool)

(assert (=> b!510654 m!757449))

(assert (=> b!510634 d!183538))

(assert (=> b!510618 d!183528))

(assert (=> b!510618 d!183526))

(declare-fun b!510656 () Bool)

(declare-fun res!216678 () Bool)

(declare-fun e!305030 () Bool)

(assert (=> b!510656 (=> (not res!216678) (not e!305030))))

(assert (=> b!510656 (= res!216678 (= (head!1151 (tail!676 p!1985)) (head!1151 (tail!676 l!3306))))))

(declare-fun d!183540 () Bool)

(declare-fun e!305031 () Bool)

(assert (=> d!183540 e!305031))

(declare-fun res!216677 () Bool)

(assert (=> d!183540 (=> res!216677 e!305031)))

(declare-fun lt!211797 () Bool)

(assert (=> d!183540 (= res!216677 (not lt!211797))))

(declare-fun e!305032 () Bool)

(assert (=> d!183540 (= lt!211797 e!305032)))

(declare-fun res!216679 () Bool)

(assert (=> d!183540 (=> res!216679 e!305032)))

(assert (=> d!183540 (= res!216679 ((_ is Nil!4609) (tail!676 p!1985)))))

(assert (=> d!183540 (= (isPrefix!541 (tail!676 p!1985) (tail!676 l!3306)) lt!211797)))

(declare-fun b!510655 () Bool)

(assert (=> b!510655 (= e!305032 e!305030)))

(declare-fun res!216676 () Bool)

(assert (=> b!510655 (=> (not res!216676) (not e!305030))))

(assert (=> b!510655 (= res!216676 (not ((_ is Nil!4609) (tail!676 l!3306))))))

(declare-fun b!510658 () Bool)

(assert (=> b!510658 (= e!305031 (>= (size!3715 (tail!676 l!3306)) (size!3715 (tail!676 p!1985))))))

(declare-fun b!510657 () Bool)

(assert (=> b!510657 (= e!305030 (isPrefix!541 (tail!676 (tail!676 p!1985)) (tail!676 (tail!676 l!3306))))))

(assert (= (and d!183540 (not res!216679)) b!510655))

(assert (= (and b!510655 res!216676) b!510656))

(assert (= (and b!510656 res!216678) b!510657))

(assert (= (and d!183540 (not res!216677)) b!510658))

(assert (=> b!510656 m!757431))

(declare-fun m!757451 () Bool)

(assert (=> b!510656 m!757451))

(assert (=> b!510656 m!757419))

(declare-fun m!757453 () Bool)

(assert (=> b!510656 m!757453))

(assert (=> b!510658 m!757419))

(declare-fun m!757455 () Bool)

(assert (=> b!510658 m!757455))

(assert (=> b!510658 m!757431))

(declare-fun m!757457 () Bool)

(assert (=> b!510658 m!757457))

(assert (=> b!510657 m!757431))

(declare-fun m!757459 () Bool)

(assert (=> b!510657 m!757459))

(assert (=> b!510657 m!757419))

(declare-fun m!757461 () Bool)

(assert (=> b!510657 m!757461))

(assert (=> b!510657 m!757459))

(assert (=> b!510657 m!757461))

(declare-fun m!757463 () Bool)

(assert (=> b!510657 m!757463))

(assert (=> b!510617 d!183540))

(declare-fun d!183542 () Bool)

(assert (=> d!183542 (= (tail!676 p!1985) (t!73137 p!1985))))

(assert (=> b!510617 d!183542))

(assert (=> b!510617 d!183524))

(declare-fun b!510659 () Bool)

(declare-fun e!305033 () Bool)

(declare-fun tp!158848 () Bool)

(assert (=> b!510659 (= e!305033 (and tp_is_empty!2395 tp!158848))))

(assert (=> b!510639 (= tp!158842 e!305033)))

(assert (= (and b!510639 ((_ is Cons!4609) (t!73137 (t!73137 p!1985)))) b!510659))

(declare-fun b!510660 () Bool)

(declare-fun e!305034 () Bool)

(declare-fun tp!158849 () Bool)

(assert (=> b!510660 (= e!305034 (and tp_is_empty!2395 tp!158849))))

(assert (=> b!510640 (= tp!158843 e!305034)))

(assert (= (and b!510640 ((_ is Cons!4609) (t!73137 (t!73137 l!3306)))) b!510660))

(check-sat tp_is_empty!2395 (not b!510659) (not b!510652) (not b!510660) (not b!510654) (not b!510656) (not b!510658) (not b!510657))
(check-sat)
