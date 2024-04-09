; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107878 () Bool)

(assert start!107878)

(declare-fun res!847455 () Bool)

(declare-fun e!727565 () Bool)

(assert (=> start!107878 (=> (not res!847455) (not e!727565))))

(declare-datatypes ((B!2164 0))(
  ( (B!2165 (val!16678 Int)) )
))
(declare-datatypes ((tuple2!21584 0))(
  ( (tuple2!21585 (_1!10802 (_ BitVec 64)) (_2!10802 B!2164)) )
))
(declare-datatypes ((List!28762 0))(
  ( (Nil!28759) (Cons!28758 (h!29967 tuple2!21584) (t!42302 List!28762)) )
))
(declare-fun l!595 () List!28762)

(declare-fun isStrictlySorted!853 (List!28762) Bool)

(assert (=> start!107878 (= res!847455 (isStrictlySorted!853 l!595))))

(assert (=> start!107878 e!727565))

(declare-fun e!727566 () Bool)

(assert (=> start!107878 e!727566))

(assert (=> start!107878 true))

(declare-fun b!1274729 () Bool)

(declare-fun res!847456 () Bool)

(assert (=> b!1274729 (=> (not res!847456) (not e!727565))))

(declare-fun key!173 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1274729 (= res!847456 (and (not (= (_1!10802 (h!29967 l!595)) key!173)) ((_ is Cons!28758) l!595)))))

(declare-fun b!1274730 () Bool)

(declare-fun ListPrimitiveSize!167 (List!28762) Int)

(assert (=> b!1274730 (= e!727565 (>= (ListPrimitiveSize!167 (t!42302 l!595)) (ListPrimitiveSize!167 l!595)))))

(declare-fun b!1274731 () Bool)

(declare-fun tp_is_empty!33207 () Bool)

(declare-fun tp!98043 () Bool)

(assert (=> b!1274731 (= e!727566 (and tp_is_empty!33207 tp!98043))))

(assert (= (and start!107878 res!847455) b!1274729))

(assert (= (and b!1274729 res!847456) b!1274730))

(assert (= (and start!107878 ((_ is Cons!28758) l!595)) b!1274731))

(declare-fun m!1171315 () Bool)

(assert (=> start!107878 m!1171315))

(declare-fun m!1171317 () Bool)

(assert (=> b!1274730 m!1171317))

(declare-fun m!1171319 () Bool)

(assert (=> b!1274730 m!1171319))

(check-sat (not b!1274730) (not start!107878) (not b!1274731) tp_is_empty!33207)
(check-sat)
(get-model)

(declare-fun d!140143 () Bool)

(declare-fun lt!575228 () Int)

(assert (=> d!140143 (>= lt!575228 0)))

(declare-fun e!727575 () Int)

(assert (=> d!140143 (= lt!575228 e!727575)))

(declare-fun c!123825 () Bool)

(assert (=> d!140143 (= c!123825 ((_ is Nil!28759) (t!42302 l!595)))))

(assert (=> d!140143 (= (ListPrimitiveSize!167 (t!42302 l!595)) lt!575228)))

(declare-fun b!1274745 () Bool)

(assert (=> b!1274745 (= e!727575 0)))

(declare-fun b!1274746 () Bool)

(assert (=> b!1274746 (= e!727575 (+ 1 (ListPrimitiveSize!167 (t!42302 (t!42302 l!595)))))))

(assert (= (and d!140143 c!123825) b!1274745))

(assert (= (and d!140143 (not c!123825)) b!1274746))

(declare-fun m!1171327 () Bool)

(assert (=> b!1274746 m!1171327))

(assert (=> b!1274730 d!140143))

(declare-fun d!140149 () Bool)

(declare-fun lt!575229 () Int)

(assert (=> d!140149 (>= lt!575229 0)))

(declare-fun e!727576 () Int)

(assert (=> d!140149 (= lt!575229 e!727576)))

(declare-fun c!123826 () Bool)

(assert (=> d!140149 (= c!123826 ((_ is Nil!28759) l!595))))

(assert (=> d!140149 (= (ListPrimitiveSize!167 l!595) lt!575229)))

(declare-fun b!1274747 () Bool)

(assert (=> b!1274747 (= e!727576 0)))

(declare-fun b!1274748 () Bool)

(assert (=> b!1274748 (= e!727576 (+ 1 (ListPrimitiveSize!167 (t!42302 l!595))))))

(assert (= (and d!140149 c!123826) b!1274747))

(assert (= (and d!140149 (not c!123826)) b!1274748))

(assert (=> b!1274748 m!1171317))

(assert (=> b!1274730 d!140149))

(declare-fun d!140151 () Bool)

(declare-fun res!847467 () Bool)

(declare-fun e!727588 () Bool)

(assert (=> d!140151 (=> res!847467 e!727588)))

(assert (=> d!140151 (= res!847467 (or ((_ is Nil!28759) l!595) ((_ is Nil!28759) (t!42302 l!595))))))

(assert (=> d!140151 (= (isStrictlySorted!853 l!595) e!727588)))

(declare-fun b!1274767 () Bool)

(declare-fun e!727589 () Bool)

(assert (=> b!1274767 (= e!727588 e!727589)))

(declare-fun res!847468 () Bool)

(assert (=> b!1274767 (=> (not res!847468) (not e!727589))))

(assert (=> b!1274767 (= res!847468 (bvslt (_1!10802 (h!29967 l!595)) (_1!10802 (h!29967 (t!42302 l!595)))))))

(declare-fun b!1274768 () Bool)

(assert (=> b!1274768 (= e!727589 (isStrictlySorted!853 (t!42302 l!595)))))

(assert (= (and d!140151 (not res!847467)) b!1274767))

(assert (= (and b!1274767 res!847468) b!1274768))

(declare-fun m!1171333 () Bool)

(assert (=> b!1274768 m!1171333))

(assert (=> start!107878 d!140151))

(declare-fun b!1274775 () Bool)

(declare-fun e!727593 () Bool)

(declare-fun tp!98049 () Bool)

(assert (=> b!1274775 (= e!727593 (and tp_is_empty!33207 tp!98049))))

(assert (=> b!1274731 (= tp!98043 e!727593)))

(assert (= (and b!1274731 ((_ is Cons!28758) (t!42302 l!595))) b!1274775))

(check-sat (not b!1274775) (not b!1274768) (not b!1274746) tp_is_empty!33207 (not b!1274748))
(check-sat)
