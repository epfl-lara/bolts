; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102012 () Bool)

(assert start!102012)

(declare-fun b!1227639 () Bool)

(declare-fun e!697043 () Bool)

(assert (=> b!1227639 (= e!697043 true)))

(declare-datatypes ((Unit!40606 0))(
  ( (Unit!40607) )
))
(declare-fun lt!558875 () Unit!40606)

(declare-datatypes ((List!27184 0))(
  ( (Nil!27181) (Cons!27180 (h!28389 (_ BitVec 64)) (t!40654 List!27184)) )
))
(declare-fun acc!823 () List!27184)

(declare-fun noDuplicateSubseq!39 (List!27184 List!27184) Unit!40606)

(assert (=> b!1227639 (= lt!558875 (noDuplicateSubseq!39 Nil!27181 acc!823))))

(declare-fun b!1227640 () Bool)

(declare-fun res!816378 () Bool)

(assert (=> b!1227640 (=> res!816378 e!697043)))

(declare-fun contains!7099 (List!27184 (_ BitVec 64)) Bool)

(assert (=> b!1227640 (= res!816378 (contains!7099 Nil!27181 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!816377 () Bool)

(declare-fun e!697044 () Bool)

(assert (=> start!102012 (=> (not res!816377) (not e!697044))))

(declare-datatypes ((array!79228 0))(
  ( (array!79229 (arr!38233 (Array (_ BitVec 32) (_ BitVec 64))) (size!38770 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79228)

(assert (=> start!102012 (= res!816377 (bvslt (size!38770 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102012 e!697044))

(declare-fun array_inv!29009 (array!79228) Bool)

(assert (=> start!102012 (array_inv!29009 a!3806)))

(assert (=> start!102012 true))

(declare-fun b!1227641 () Bool)

(declare-fun res!816370 () Bool)

(assert (=> b!1227641 (=> (not res!816370) (not e!697044))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1227641 (= res!816370 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38770 a!3806)) (bvslt from!3184 (size!38770 a!3806))))))

(declare-fun b!1227642 () Bool)

(declare-fun res!816372 () Bool)

(assert (=> b!1227642 (=> (not res!816372) (not e!697044))))

(declare-fun noDuplicate!1706 (List!27184) Bool)

(assert (=> b!1227642 (= res!816372 (noDuplicate!1706 acc!823))))

(declare-fun b!1227643 () Bool)

(declare-fun res!816369 () Bool)

(assert (=> b!1227643 (=> (not res!816369) (not e!697044))))

(assert (=> b!1227643 (= res!816369 (not (contains!7099 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227644 () Bool)

(declare-fun res!816373 () Bool)

(assert (=> b!1227644 (=> (not res!816373) (not e!697044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227644 (= res!816373 (validKeyInArray!0 (select (arr!38233 a!3806) from!3184)))))

(declare-fun b!1227645 () Bool)

(declare-fun res!816376 () Bool)

(assert (=> b!1227645 (=> (not res!816376) (not e!697044))))

(assert (=> b!1227645 (= res!816376 (not (contains!7099 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227646 () Bool)

(assert (=> b!1227646 (= e!697044 (not e!697043))))

(declare-fun res!816374 () Bool)

(assert (=> b!1227646 (=> res!816374 e!697043)))

(assert (=> b!1227646 (= res!816374 (bvsgt from!3184 (size!38770 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79228 (_ BitVec 32) List!27184) Bool)

(assert (=> b!1227646 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27180 (select (arr!38233 a!3806) from!3184) acc!823))))

(declare-fun b!1227647 () Bool)

(declare-fun res!816380 () Bool)

(assert (=> b!1227647 (=> (not res!816380) (not e!697044))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1227647 (= res!816380 (validKeyInArray!0 k0!2913))))

(declare-fun b!1227648 () Bool)

(declare-fun res!816379 () Bool)

(assert (=> b!1227648 (=> (not res!816379) (not e!697044))))

(assert (=> b!1227648 (= res!816379 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227649 () Bool)

(declare-fun res!816371 () Bool)

(assert (=> b!1227649 (=> res!816371 e!697043)))

(declare-fun subseq!486 (List!27184 List!27184) Bool)

(assert (=> b!1227649 (= res!816371 (not (subseq!486 Nil!27181 acc!823)))))

(declare-fun b!1227650 () Bool)

(declare-fun res!816368 () Bool)

(assert (=> b!1227650 (=> res!816368 e!697043)))

(assert (=> b!1227650 (= res!816368 (contains!7099 Nil!27181 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227651 () Bool)

(declare-fun res!816375 () Bool)

(assert (=> b!1227651 (=> (not res!816375) (not e!697044))))

(declare-fun arrayContainsKey!0 (array!79228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227651 (= res!816375 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102012 res!816377) b!1227647))

(assert (= (and b!1227647 res!816380) b!1227641))

(assert (= (and b!1227641 res!816370) b!1227642))

(assert (= (and b!1227642 res!816372) b!1227645))

(assert (= (and b!1227645 res!816376) b!1227643))

(assert (= (and b!1227643 res!816369) b!1227651))

(assert (= (and b!1227651 res!816375) b!1227648))

(assert (= (and b!1227648 res!816379) b!1227644))

(assert (= (and b!1227644 res!816373) b!1227646))

(assert (= (and b!1227646 (not res!816374)) b!1227640))

(assert (= (and b!1227640 (not res!816378)) b!1227650))

(assert (= (and b!1227650 (not res!816368)) b!1227649))

(assert (= (and b!1227649 (not res!816371)) b!1227639))

(declare-fun m!1132389 () Bool)

(assert (=> b!1227650 m!1132389))

(declare-fun m!1132391 () Bool)

(assert (=> b!1227647 m!1132391))

(declare-fun m!1132393 () Bool)

(assert (=> b!1227649 m!1132393))

(declare-fun m!1132395 () Bool)

(assert (=> b!1227644 m!1132395))

(assert (=> b!1227644 m!1132395))

(declare-fun m!1132397 () Bool)

(assert (=> b!1227644 m!1132397))

(declare-fun m!1132399 () Bool)

(assert (=> start!102012 m!1132399))

(declare-fun m!1132401 () Bool)

(assert (=> b!1227640 m!1132401))

(declare-fun m!1132403 () Bool)

(assert (=> b!1227639 m!1132403))

(declare-fun m!1132405 () Bool)

(assert (=> b!1227645 m!1132405))

(declare-fun m!1132407 () Bool)

(assert (=> b!1227642 m!1132407))

(declare-fun m!1132409 () Bool)

(assert (=> b!1227651 m!1132409))

(assert (=> b!1227646 m!1132395))

(declare-fun m!1132411 () Bool)

(assert (=> b!1227646 m!1132411))

(declare-fun m!1132413 () Bool)

(assert (=> b!1227648 m!1132413))

(declare-fun m!1132415 () Bool)

(assert (=> b!1227643 m!1132415))

(check-sat (not b!1227650) (not b!1227645) (not b!1227643) (not b!1227649) (not b!1227646) (not b!1227651) (not b!1227642) (not b!1227648) (not b!1227640) (not b!1227644) (not b!1227647) (not b!1227639) (not start!102012))
