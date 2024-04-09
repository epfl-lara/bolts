; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118202 () Bool)

(assert start!118202)

(declare-fun b!1382783 () Bool)

(declare-fun e!783765 () Bool)

(declare-datatypes ((List!32308 0))(
  ( (Nil!32305) (Cons!32304 (h!33513 (_ BitVec 64)) (t!47009 List!32308)) )
))
(declare-fun contains!9752 (List!32308 (_ BitVec 64)) Bool)

(assert (=> b!1382783 (= e!783765 (contains!9752 Nil!32305 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1382784 () Bool)

(declare-fun res!924487 () Bool)

(declare-fun e!783766 () Bool)

(assert (=> b!1382784 (=> (not res!924487) (not e!783766))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94450 0))(
  ( (array!94451 (arr!45600 (Array (_ BitVec 32) (_ BitVec 64))) (size!46151 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94450)

(assert (=> b!1382784 (= res!924487 (and (= (size!46151 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46151 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46151 a!2938))))))

(declare-fun b!1382785 () Bool)

(declare-fun res!924486 () Bool)

(assert (=> b!1382785 (=> (not res!924486) (not e!783766))))

(declare-fun noDuplicate!2632 (List!32308) Bool)

(assert (=> b!1382785 (= res!924486 (noDuplicate!2632 Nil!32305))))

(declare-fun b!1382786 () Bool)

(declare-fun res!924489 () Bool)

(assert (=> b!1382786 (=> (not res!924489) (not e!783766))))

(assert (=> b!1382786 (= res!924489 (and (bvsle #b00000000000000000000000000000000 (size!46151 a!2938)) (bvslt (size!46151 a!2938) #b01111111111111111111111111111111)))))

(declare-fun b!1382787 () Bool)

(declare-fun res!924485 () Bool)

(assert (=> b!1382787 (=> (not res!924485) (not e!783766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382787 (= res!924485 (validKeyInArray!0 (select (arr!45600 a!2938) i!1065)))))

(declare-fun b!1382788 () Bool)

(assert (=> b!1382788 (= e!783766 e!783765)))

(declare-fun res!924488 () Bool)

(assert (=> b!1382788 (=> res!924488 e!783765)))

(assert (=> b!1382788 (= res!924488 (contains!9752 Nil!32305 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!924484 () Bool)

(assert (=> start!118202 (=> (not res!924484) (not e!783766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118202 (= res!924484 (validMask!0 mask!2987))))

(assert (=> start!118202 e!783766))

(assert (=> start!118202 true))

(declare-fun array_inv!34545 (array!94450) Bool)

(assert (=> start!118202 (array_inv!34545 a!2938)))

(assert (= (and start!118202 res!924484) b!1382784))

(assert (= (and b!1382784 res!924487) b!1382787))

(assert (= (and b!1382787 res!924485) b!1382786))

(assert (= (and b!1382786 res!924489) b!1382785))

(assert (= (and b!1382785 res!924486) b!1382788))

(assert (= (and b!1382788 (not res!924488)) b!1382783))

(declare-fun m!1267941 () Bool)

(assert (=> b!1382787 m!1267941))

(assert (=> b!1382787 m!1267941))

(declare-fun m!1267943 () Bool)

(assert (=> b!1382787 m!1267943))

(declare-fun m!1267945 () Bool)

(assert (=> start!118202 m!1267945))

(declare-fun m!1267947 () Bool)

(assert (=> start!118202 m!1267947))

(declare-fun m!1267949 () Bool)

(assert (=> b!1382783 m!1267949))

(declare-fun m!1267951 () Bool)

(assert (=> b!1382788 m!1267951))

(declare-fun m!1267953 () Bool)

(assert (=> b!1382785 m!1267953))

(push 1)

(assert (not b!1382785))

(assert (not b!1382783))

(assert (not start!118202))

(assert (not b!1382787))

(assert (not b!1382788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149183 () Bool)

(assert (=> d!149183 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118202 d!149183))

(declare-fun d!149199 () Bool)

(assert (=> d!149199 (= (array_inv!34545 a!2938) (bvsge (size!46151 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118202 d!149199))

(declare-fun d!149201 () Bool)

(declare-fun res!924522 () Bool)

(declare-fun e!783800 () Bool)

(assert (=> d!149201 (=> res!924522 e!783800)))

(assert (=> d!149201 (= res!924522 (is-Nil!32305 Nil!32305))))

(assert (=> d!149201 (= (noDuplicate!2632 Nil!32305) e!783800)))

(declare-fun b!1382821 () Bool)

(declare-fun e!783801 () Bool)

(assert (=> b!1382821 (= e!783800 e!783801)))

