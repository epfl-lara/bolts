; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103874 () Bool)

(assert start!103874)

(declare-fun res!828943 () Bool)

(declare-fun e!704755 () Bool)

(assert (=> start!103874 (=> (not res!828943) (not e!704755))))

(declare-datatypes ((array!79936 0))(
  ( (array!79937 (arr!38560 (Array (_ BitVec 32) (_ BitVec 64))) (size!39097 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79936)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103874 (= res!828943 (and (bvslt (size!39097 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39097 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39097 a!3892))))))

(assert (=> start!103874 e!704755))

(declare-fun array_inv!29336 (array!79936) Bool)

(assert (=> start!103874 (array_inv!29336 a!3892)))

(assert (=> start!103874 true))

(declare-fun b!1243041 () Bool)

(declare-datatypes ((List!27541 0))(
  ( (Nil!27538) (Cons!27537 (h!28746 (_ BitVec 64)) (t!41017 List!27541)) )
))
(declare-fun noDuplicate!2003 (List!27541) Bool)

(assert (=> b!1243041 (= e!704755 (not (noDuplicate!2003 Nil!27538)))))

(assert (= (and start!103874 res!828943) b!1243041))

(declare-fun m!1145715 () Bool)

(assert (=> start!103874 m!1145715))

(declare-fun m!1145717 () Bool)

(assert (=> b!1243041 m!1145717))

(check-sat (not b!1243041) (not start!103874))
(check-sat)
(get-model)

(declare-fun d!136961 () Bool)

(declare-fun res!828951 () Bool)

(declare-fun e!704767 () Bool)

(assert (=> d!136961 (=> res!828951 e!704767)))

(get-info :version)

(assert (=> d!136961 (= res!828951 ((_ is Nil!27538) Nil!27538))))

(assert (=> d!136961 (= (noDuplicate!2003 Nil!27538) e!704767)))

(declare-fun b!1243049 () Bool)

(declare-fun e!704768 () Bool)

(assert (=> b!1243049 (= e!704767 e!704768)))

(declare-fun res!828952 () Bool)

(assert (=> b!1243049 (=> (not res!828952) (not e!704768))))

(declare-fun contains!7414 (List!27541 (_ BitVec 64)) Bool)

(assert (=> b!1243049 (= res!828952 (not (contains!7414 (t!41017 Nil!27538) (h!28746 Nil!27538))))))

(declare-fun b!1243050 () Bool)

(assert (=> b!1243050 (= e!704768 (noDuplicate!2003 (t!41017 Nil!27538)))))

(assert (= (and d!136961 (not res!828951)) b!1243049))

(assert (= (and b!1243049 res!828952) b!1243050))

(declare-fun m!1145723 () Bool)

(assert (=> b!1243049 m!1145723))

(declare-fun m!1145725 () Bool)

(assert (=> b!1243050 m!1145725))

(assert (=> b!1243041 d!136961))

(declare-fun d!136963 () Bool)

(assert (=> d!136963 (= (array_inv!29336 a!3892) (bvsge (size!39097 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!103874 d!136963))

(check-sat (not b!1243050) (not b!1243049))
(check-sat)
