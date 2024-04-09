; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134502 () Bool)

(assert start!134502)

(declare-fun b!1569682 () Bool)

(declare-fun e!875091 () Bool)

(declare-fun tp_is_empty!39093 () Bool)

(declare-fun tp!114196 () Bool)

(assert (=> b!1569682 (= e!875091 (and tp_is_empty!39093 tp!114196))))

(declare-fun b!1569683 () Bool)

(declare-fun e!875090 () Bool)

(declare-datatypes ((B!2542 0))(
  ( (B!2543 (val!19633 Int)) )
))
(declare-datatypes ((tuple2!25532 0))(
  ( (tuple2!25533 (_1!12776 (_ BitVec 64)) (_2!12776 B!2542)) )
))
(declare-datatypes ((List!36914 0))(
  ( (Nil!36911) (Cons!36910 (h!38358 tuple2!25532) (t!51829 List!36914)) )
))
(declare-fun l!750 () List!36914)

(declare-fun ListPrimitiveSize!191 (List!36914) Int)

(assert (=> b!1569683 (= e!875090 (>= (ListPrimitiveSize!191 (t!51829 l!750)) (ListPrimitiveSize!191 l!750)))))

(declare-fun b!1569684 () Bool)

(declare-fun res!1072796 () Bool)

(assert (=> b!1569684 (=> (not res!1072796) (not e!875090))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1569684 (= res!1072796 (and ((_ is Cons!36910) l!750) (bvslt (_1!12776 (h!38358 l!750)) key1!37) (bvslt (_1!12776 (h!38358 l!750)) key2!21)))))

(declare-fun b!1569685 () Bool)

(declare-fun res!1072797 () Bool)

(assert (=> b!1569685 (=> (not res!1072797) (not e!875090))))

(declare-fun isStrictlySorted!1015 (List!36914) Bool)

(assert (=> b!1569685 (= res!1072797 (isStrictlySorted!1015 (t!51829 l!750)))))

(declare-fun res!1072799 () Bool)

(assert (=> start!134502 (=> (not res!1072799) (not e!875090))))

(assert (=> start!134502 (= res!1072799 (not (= key1!37 key2!21)))))

(assert (=> start!134502 e!875090))

(assert (=> start!134502 true))

(assert (=> start!134502 e!875091))

(declare-fun b!1569686 () Bool)

(declare-fun res!1072798 () Bool)

(assert (=> b!1569686 (=> (not res!1072798) (not e!875090))))

(assert (=> b!1569686 (= res!1072798 (isStrictlySorted!1015 l!750))))

(assert (= (and start!134502 res!1072799) b!1569686))

(assert (= (and b!1569686 res!1072798) b!1569684))

(assert (= (and b!1569684 res!1072796) b!1569685))

(assert (= (and b!1569685 res!1072797) b!1569683))

(assert (= (and start!134502 ((_ is Cons!36910) l!750)) b!1569682))

(declare-fun m!1443831 () Bool)

(assert (=> b!1569683 m!1443831))

(declare-fun m!1443833 () Bool)

(assert (=> b!1569683 m!1443833))

(declare-fun m!1443835 () Bool)

(assert (=> b!1569685 m!1443835))

(declare-fun m!1443837 () Bool)

(assert (=> b!1569686 m!1443837))

(check-sat (not b!1569682) (not b!1569686) (not b!1569683) tp_is_empty!39093 (not b!1569685))
(check-sat)
(get-model)

(declare-fun d!163867 () Bool)

(declare-fun lt!673249 () Int)

(assert (=> d!163867 (>= lt!673249 0)))

(declare-fun e!875100 () Int)

(assert (=> d!163867 (= lt!673249 e!875100)))

(declare-fun c!144720 () Bool)

(assert (=> d!163867 (= c!144720 ((_ is Nil!36911) (t!51829 l!750)))))

(assert (=> d!163867 (= (ListPrimitiveSize!191 (t!51829 l!750)) lt!673249)))

(declare-fun b!1569706 () Bool)

(assert (=> b!1569706 (= e!875100 0)))

(declare-fun b!1569707 () Bool)

(assert (=> b!1569707 (= e!875100 (+ 1 (ListPrimitiveSize!191 (t!51829 (t!51829 l!750)))))))

(assert (= (and d!163867 c!144720) b!1569706))

(assert (= (and d!163867 (not c!144720)) b!1569707))

(declare-fun m!1443847 () Bool)

(assert (=> b!1569707 m!1443847))

(assert (=> b!1569683 d!163867))

(declare-fun d!163869 () Bool)

(declare-fun lt!673250 () Int)

(assert (=> d!163869 (>= lt!673250 0)))

(declare-fun e!875101 () Int)

(assert (=> d!163869 (= lt!673250 e!875101)))

(declare-fun c!144721 () Bool)

(assert (=> d!163869 (= c!144721 ((_ is Nil!36911) l!750))))

(assert (=> d!163869 (= (ListPrimitiveSize!191 l!750) lt!673250)))

(declare-fun b!1569708 () Bool)

(assert (=> b!1569708 (= e!875101 0)))

(declare-fun b!1569709 () Bool)

(assert (=> b!1569709 (= e!875101 (+ 1 (ListPrimitiveSize!191 (t!51829 l!750))))))

(assert (= (and d!163869 c!144721) b!1569708))

(assert (= (and d!163869 (not c!144721)) b!1569709))

(assert (=> b!1569709 m!1443831))

(assert (=> b!1569683 d!163869))

(declare-fun d!163871 () Bool)

(declare-fun res!1072816 () Bool)

(declare-fun e!875108 () Bool)

(assert (=> d!163871 (=> res!1072816 e!875108)))

(assert (=> d!163871 (= res!1072816 (or ((_ is Nil!36911) l!750) ((_ is Nil!36911) (t!51829 l!750))))))

(assert (=> d!163871 (= (isStrictlySorted!1015 l!750) e!875108)))

(declare-fun b!1569718 () Bool)

(declare-fun e!875109 () Bool)

(assert (=> b!1569718 (= e!875108 e!875109)))

(declare-fun res!1072817 () Bool)

(assert (=> b!1569718 (=> (not res!1072817) (not e!875109))))

(assert (=> b!1569718 (= res!1072817 (bvslt (_1!12776 (h!38358 l!750)) (_1!12776 (h!38358 (t!51829 l!750)))))))

(declare-fun b!1569719 () Bool)

(assert (=> b!1569719 (= e!875109 (isStrictlySorted!1015 (t!51829 l!750)))))

(assert (= (and d!163871 (not res!1072816)) b!1569718))

(assert (= (and b!1569718 res!1072817) b!1569719))

(assert (=> b!1569719 m!1443835))

(assert (=> b!1569686 d!163871))

(declare-fun d!163875 () Bool)

(declare-fun res!1072818 () Bool)

(declare-fun e!875110 () Bool)

(assert (=> d!163875 (=> res!1072818 e!875110)))

(assert (=> d!163875 (= res!1072818 (or ((_ is Nil!36911) (t!51829 l!750)) ((_ is Nil!36911) (t!51829 (t!51829 l!750)))))))

(assert (=> d!163875 (= (isStrictlySorted!1015 (t!51829 l!750)) e!875110)))

(declare-fun b!1569720 () Bool)

(declare-fun e!875111 () Bool)

(assert (=> b!1569720 (= e!875110 e!875111)))

(declare-fun res!1072819 () Bool)

(assert (=> b!1569720 (=> (not res!1072819) (not e!875111))))

(assert (=> b!1569720 (= res!1072819 (bvslt (_1!12776 (h!38358 (t!51829 l!750))) (_1!12776 (h!38358 (t!51829 (t!51829 l!750))))))))

(declare-fun b!1569721 () Bool)

(assert (=> b!1569721 (= e!875111 (isStrictlySorted!1015 (t!51829 (t!51829 l!750))))))

(assert (= (and d!163875 (not res!1072818)) b!1569720))

(assert (= (and b!1569720 res!1072819) b!1569721))

(declare-fun m!1443849 () Bool)

(assert (=> b!1569721 m!1443849))

(assert (=> b!1569685 d!163875))

(declare-fun b!1569728 () Bool)

(declare-fun e!875115 () Bool)

(declare-fun tp!114202 () Bool)

(assert (=> b!1569728 (= e!875115 (and tp_is_empty!39093 tp!114202))))

(assert (=> b!1569682 (= tp!114196 e!875115)))

(assert (= (and b!1569682 ((_ is Cons!36910) (t!51829 l!750))) b!1569728))

(check-sat (not b!1569719) (not b!1569728) (not b!1569721) (not b!1569707) tp_is_empty!39093 (not b!1569709))
(check-sat)
