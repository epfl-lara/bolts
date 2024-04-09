; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118198 () Bool)

(assert start!118198)

(declare-fun b!1382747 () Bool)

(declare-fun e!783747 () Bool)

(declare-fun e!783748 () Bool)

(assert (=> b!1382747 (= e!783747 e!783748)))

(declare-fun res!924451 () Bool)

(assert (=> b!1382747 (=> res!924451 e!783748)))

(declare-datatypes ((List!32306 0))(
  ( (Nil!32303) (Cons!32302 (h!33511 (_ BitVec 64)) (t!47007 List!32306)) )
))
(declare-fun contains!9750 (List!32306 (_ BitVec 64)) Bool)

(assert (=> b!1382747 (= res!924451 (contains!9750 Nil!32303 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1382748 () Bool)

(declare-fun res!924452 () Bool)

(assert (=> b!1382748 (=> (not res!924452) (not e!783747))))

(declare-datatypes ((array!94446 0))(
  ( (array!94447 (arr!45598 (Array (_ BitVec 32) (_ BitVec 64))) (size!46149 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94446)

(assert (=> b!1382748 (= res!924452 (and (bvsle #b00000000000000000000000000000000 (size!46149 a!2938)) (bvslt (size!46149 a!2938) #b01111111111111111111111111111111)))))

(declare-fun b!1382749 () Bool)

(declare-fun res!924448 () Bool)

(assert (=> b!1382749 (=> (not res!924448) (not e!783747))))

(declare-fun noDuplicate!2630 (List!32306) Bool)

(assert (=> b!1382749 (= res!924448 (noDuplicate!2630 Nil!32303))))

(declare-fun b!1382750 () Bool)

(assert (=> b!1382750 (= e!783748 (contains!9750 Nil!32303 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!924453 () Bool)

(assert (=> start!118198 (=> (not res!924453) (not e!783747))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118198 (= res!924453 (validMask!0 mask!2987))))

(assert (=> start!118198 e!783747))

(assert (=> start!118198 true))

(declare-fun array_inv!34543 (array!94446) Bool)

(assert (=> start!118198 (array_inv!34543 a!2938)))

(declare-fun b!1382751 () Bool)

(declare-fun res!924450 () Bool)

(assert (=> b!1382751 (=> (not res!924450) (not e!783747))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382751 (= res!924450 (validKeyInArray!0 (select (arr!45598 a!2938) i!1065)))))

(declare-fun b!1382752 () Bool)

(declare-fun res!924449 () Bool)

(assert (=> b!1382752 (=> (not res!924449) (not e!783747))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382752 (= res!924449 (and (= (size!46149 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46149 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46149 a!2938))))))

(assert (= (and start!118198 res!924453) b!1382752))

(assert (= (and b!1382752 res!924449) b!1382751))

(assert (= (and b!1382751 res!924450) b!1382748))

(assert (= (and b!1382748 res!924452) b!1382749))

(assert (= (and b!1382749 res!924448) b!1382747))

(assert (= (and b!1382747 (not res!924451)) b!1382750))

(declare-fun m!1267913 () Bool)

(assert (=> b!1382750 m!1267913))

(declare-fun m!1267915 () Bool)

(assert (=> b!1382749 m!1267915))

(declare-fun m!1267917 () Bool)

(assert (=> b!1382751 m!1267917))

(assert (=> b!1382751 m!1267917))

(declare-fun m!1267919 () Bool)

(assert (=> b!1382751 m!1267919))

(declare-fun m!1267921 () Bool)

(assert (=> b!1382747 m!1267921))

(declare-fun m!1267923 () Bool)

(assert (=> start!118198 m!1267923))

(declare-fun m!1267925 () Bool)

(assert (=> start!118198 m!1267925))

(push 1)

(assert (not b!1382747))

(assert (not b!1382749))

(assert (not b!1382751))

(assert (not start!118198))

(assert (not b!1382750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149179 () Bool)

(assert (=> d!149179 (= (validKeyInArray!0 (select (arr!45598 a!2938) i!1065)) (and (not (= (select (arr!45598 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45598 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1382751 d!149179))

(declare-fun d!149181 () Bool)

(declare-fun lt!608419 () Bool)

(declare-fun content!765 (List!32306) (Set (_ BitVec 64)))

(assert (=> d!149181 (= lt!608419 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!765 Nil!32303)))))

(declare-fun e!783778 () Bool)

(assert (=> d!149181 (= lt!608419 e!783778)))

(declare-fun res!924501 () Bool)

(assert (=> d!149181 (=> (not res!924501) (not e!783778))))

(assert (=> d!149181 (= res!924501 (is-Cons!32302 Nil!32303))))

(assert (=> d!149181 (= (contains!9750 Nil!32303 #b0000000000000000000000000000000000000000000000000000000000000000) lt!608419)))

(declare-fun b!1382799 () Bool)

(declare-fun e!783779 () Bool)

(assert (=> b!1382799 (= e!783778 e!783779)))

(declare-fun res!924500 () Bool)

(assert (=> b!1382799 (=> res!924500 e!783779)))

(assert (=> b!1382799 (= res!924500 (= (h!33511 Nil!32303) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1382800 () Bool)

(assert (=> b!1382800 (= e!783779 (contains!9750 (t!47007 Nil!32303) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149181 res!924501) b!1382799))

(assert (= (and b!1382799 (not res!924500)) b!1382800))

(declare-fun m!1267961 () Bool)

(assert (=> d!149181 m!1267961))

(declare-fun m!1267963 () Bool)

(assert (=> d!149181 m!1267963))

(declare-fun m!1267965 () Bool)

(assert (=> b!1382800 m!1267965))

(assert (=> b!1382747 d!149181))

(declare-fun d!149185 () Bool)

(declare-fun res!924508 () Bool)

(declare-fun e!783786 () Bool)

(assert (=> d!149185 (=> res!924508 e!783786)))

(assert (=> d!149185 (= res!924508 (is-Nil!32303 Nil!32303))))

(assert (=> d!149185 (= (noDuplicate!2630 Nil!32303) e!783786)))

(declare-fun b!1382807 () Bool)

(declare-fun e!783787 () Bool)

(assert (=> b!1382807 (= e!783786 e!783787)))

(declare-fun res!924509 () Bool)

(assert (=> b!1382807 (=> (not res!924509) (not e!783787))))

(assert (=> b!1382807 (= res!924509 (not (contains!9750 (t!47007 Nil!32303) (h!33511 Nil!32303))))))

(declare-fun b!1382808 () Bool)

(assert (=> b!1382808 (= e!783787 (noDuplicate!2630 (t!47007 Nil!32303)))))

(assert (= (and d!149185 (not res!924508)) b!1382807))

