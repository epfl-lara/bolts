; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241466 () Bool)

(assert start!241466)

(declare-fun res!1048241 () Bool)

(declare-fun e!1570690 () Bool)

(assert (=> start!241466 (=> (not res!1048241) (not e!1570690))))

(declare-datatypes ((List!29013 0))(
  ( (Nil!28913) (Cons!28913 (h!34314 (_ BitVec 16)) (t!210648 List!29013)) )
))
(declare-fun l!1964 () List!29013)

(get-info :version)

(assert (=> start!241466 (= res!1048241 (not ((_ is Nil!28913) l!1964)))))

(assert (=> start!241466 e!1570690))

(assert (=> start!241466 true))

(declare-fun b!2475774 () Bool)

(declare-fun size!22502 (List!29013) Int)

(assert (=> b!2475774 (= e!1570690 (>= (size!22502 (t!210648 l!1964)) (size!22502 l!1964)))))

(assert (= (and start!241466 res!1048241) b!2475774))

(declare-fun m!2844003 () Bool)

(assert (=> b!2475774 m!2844003))

(declare-fun m!2844005 () Bool)

(assert (=> b!2475774 m!2844005))

(check-sat (not b!2475774))
(check-sat)
(get-model)

(declare-fun d!712216 () Bool)

(declare-fun lt!884143 () Int)

(assert (=> d!712216 (>= lt!884143 0)))

(declare-fun e!1570697 () Int)

(assert (=> d!712216 (= lt!884143 e!1570697)))

(declare-fun c!394048 () Bool)

(assert (=> d!712216 (= c!394048 ((_ is Nil!28913) (t!210648 l!1964)))))

(assert (=> d!712216 (= (size!22502 (t!210648 l!1964)) lt!884143)))

(declare-fun b!2475787 () Bool)

(assert (=> b!2475787 (= e!1570697 0)))

(declare-fun b!2475788 () Bool)

(assert (=> b!2475788 (= e!1570697 (+ 1 (size!22502 (t!210648 (t!210648 l!1964)))))))

(assert (= (and d!712216 c!394048) b!2475787))

(assert (= (and d!712216 (not c!394048)) b!2475788))

(declare-fun m!2844009 () Bool)

(assert (=> b!2475788 m!2844009))

(assert (=> b!2475774 d!712216))

(declare-fun d!712220 () Bool)

(declare-fun lt!884144 () Int)

(assert (=> d!712220 (>= lt!884144 0)))

(declare-fun e!1570698 () Int)

(assert (=> d!712220 (= lt!884144 e!1570698)))

(declare-fun c!394049 () Bool)

(assert (=> d!712220 (= c!394049 ((_ is Nil!28913) l!1964))))

(assert (=> d!712220 (= (size!22502 l!1964) lt!884144)))

(declare-fun b!2475789 () Bool)

(assert (=> b!2475789 (= e!1570698 0)))

(declare-fun b!2475790 () Bool)

(assert (=> b!2475790 (= e!1570698 (+ 1 (size!22502 (t!210648 l!1964))))))

(assert (= (and d!712220 c!394049) b!2475789))

(assert (= (and d!712220 (not c!394049)) b!2475790))

(assert (=> b!2475790 m!2844003))

(assert (=> b!2475774 d!712220))

(check-sat (not b!2475788) (not b!2475790))
(check-sat)
