; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60296 () Bool)

(assert start!60296)

(declare-fun b!676015 () Bool)

(declare-fun res!442628 () Bool)

(declare-fun e!385585 () Bool)

(assert (=> b!676015 (=> (not res!442628) (not e!385585))))

(declare-fun e!385589 () Bool)

(assert (=> b!676015 (= res!442628 e!385589)))

(declare-fun res!442622 () Bool)

(assert (=> b!676015 (=> res!442622 e!385589)))

(declare-fun e!385590 () Bool)

(assert (=> b!676015 (= res!442622 e!385590)))

(declare-fun res!442623 () Bool)

(assert (=> b!676015 (=> (not res!442623) (not e!385590))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676015 (= res!442623 (bvsgt from!3004 i!1382))))

(declare-fun b!676016 () Bool)

(declare-fun e!385586 () Bool)

(declare-datatypes ((List!12932 0))(
  ( (Nil!12929) (Cons!12928 (h!13973 (_ BitVec 64)) (t!19168 List!12932)) )
))
(declare-fun acc!681 () List!12932)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3475 (List!12932 (_ BitVec 64)) Bool)

(assert (=> b!676016 (= e!385586 (contains!3475 acc!681 k0!2843))))

(declare-fun b!676017 () Bool)

(declare-fun res!442618 () Bool)

(assert (=> b!676017 (=> (not res!442618) (not e!385585))))

(assert (=> b!676017 (= res!442618 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676018 () Bool)

(declare-fun res!442621 () Bool)

(assert (=> b!676018 (=> (not res!442621) (not e!385585))))

(assert (=> b!676018 (= res!442621 (not (contains!3475 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676019 () Bool)

(declare-fun e!385591 () Bool)

(declare-fun e!385587 () Bool)

(assert (=> b!676019 (= e!385591 e!385587)))

(declare-fun res!442633 () Bool)

(assert (=> b!676019 (=> (not res!442633) (not e!385587))))

(assert (=> b!676019 (= res!442633 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676020 () Bool)

(assert (=> b!676020 (= e!385590 (contains!3475 acc!681 k0!2843))))

(declare-fun b!676021 () Bool)

(declare-fun res!442629 () Bool)

(assert (=> b!676021 (=> (not res!442629) (not e!385585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676021 (= res!442629 (validKeyInArray!0 k0!2843))))

(declare-fun res!442624 () Bool)

(assert (=> start!60296 (=> (not res!442624) (not e!385585))))

(declare-datatypes ((array!39299 0))(
  ( (array!39300 (arr!18838 (Array (_ BitVec 32) (_ BitVec 64))) (size!19202 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39299)

(assert (=> start!60296 (= res!442624 (and (bvslt (size!19202 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19202 a!3626))))))

(assert (=> start!60296 e!385585))

(assert (=> start!60296 true))

(declare-fun array_inv!14612 (array!39299) Bool)

(assert (=> start!60296 (array_inv!14612 a!3626)))

(declare-fun b!676022 () Bool)

(assert (=> b!676022 (= e!385587 (not (contains!3475 acc!681 k0!2843)))))

(declare-fun b!676023 () Bool)

(declare-fun res!442620 () Bool)

(assert (=> b!676023 (=> (not res!442620) (not e!385585))))

(declare-fun arrayContainsKey!0 (array!39299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676023 (= res!442620 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676024 () Bool)

(declare-fun res!442632 () Bool)

(assert (=> b!676024 (=> (not res!442632) (not e!385585))))

(assert (=> b!676024 (= res!442632 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19202 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676025 () Bool)

(assert (=> b!676025 (= e!385585 false)))

(declare-fun lt!312705 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39299 (_ BitVec 32) List!12932) Bool)

(assert (=> b!676025 (= lt!312705 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676026 () Bool)

(declare-fun res!442616 () Bool)

(assert (=> b!676026 (=> (not res!442616) (not e!385585))))

(assert (=> b!676026 (= res!442616 (not (validKeyInArray!0 (select (arr!18838 a!3626) from!3004))))))

(declare-fun b!676027 () Bool)

(declare-fun res!442625 () Bool)

(assert (=> b!676027 (=> (not res!442625) (not e!385585))))

(declare-fun noDuplicate!722 (List!12932) Bool)

(assert (=> b!676027 (= res!442625 (noDuplicate!722 acc!681))))

(declare-fun b!676028 () Bool)

(declare-fun res!442619 () Bool)

(assert (=> b!676028 (=> (not res!442619) (not e!385585))))

(assert (=> b!676028 (= res!442619 (not (contains!3475 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676029 () Bool)

(declare-fun res!442617 () Bool)

(assert (=> b!676029 (=> (not res!442617) (not e!385585))))

(assert (=> b!676029 (= res!442617 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12929))))

(declare-fun b!676030 () Bool)

(declare-fun e!385588 () Bool)

(assert (=> b!676030 (= e!385588 (not (contains!3475 acc!681 k0!2843)))))

(declare-fun b!676031 () Bool)

(declare-fun res!442631 () Bool)

(assert (=> b!676031 (=> (not res!442631) (not e!385585))))

(assert (=> b!676031 (= res!442631 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19202 a!3626))))))

(declare-fun b!676032 () Bool)

(declare-fun res!442634 () Bool)

(assert (=> b!676032 (=> (not res!442634) (not e!385585))))

(assert (=> b!676032 (= res!442634 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676033 () Bool)

(assert (=> b!676033 (= e!385589 e!385588)))

(declare-fun res!442615 () Bool)

(assert (=> b!676033 (=> (not res!442615) (not e!385588))))

(assert (=> b!676033 (= res!442615 (bvsle from!3004 i!1382))))

(declare-fun b!676034 () Bool)

(declare-fun res!442630 () Bool)

(assert (=> b!676034 (=> (not res!442630) (not e!385585))))

(assert (=> b!676034 (= res!442630 e!385591)))

(declare-fun res!442627 () Bool)

(assert (=> b!676034 (=> res!442627 e!385591)))

(assert (=> b!676034 (= res!442627 e!385586)))

(declare-fun res!442626 () Bool)

(assert (=> b!676034 (=> (not res!442626) (not e!385586))))

(assert (=> b!676034 (= res!442626 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60296 res!442624) b!676027))

(assert (= (and b!676027 res!442625) b!676018))

(assert (= (and b!676018 res!442621) b!676028))

(assert (= (and b!676028 res!442619) b!676015))

(assert (= (and b!676015 res!442623) b!676020))

(assert (= (and b!676015 (not res!442622)) b!676033))

(assert (= (and b!676033 res!442615) b!676030))

(assert (= (and b!676015 res!442628) b!676029))

(assert (= (and b!676029 res!442617) b!676032))

(assert (= (and b!676032 res!442634) b!676031))

(assert (= (and b!676031 res!442631) b!676021))

(assert (= (and b!676021 res!442629) b!676023))

(assert (= (and b!676023 res!442620) b!676024))

(assert (= (and b!676024 res!442632) b!676026))

(assert (= (and b!676026 res!442616) b!676017))

(assert (= (and b!676017 res!442618) b!676034))

(assert (= (and b!676034 res!442626) b!676016))

(assert (= (and b!676034 (not res!442627)) b!676019))

(assert (= (and b!676019 res!442633) b!676022))

(assert (= (and b!676034 res!442630) b!676025))

(declare-fun m!643065 () Bool)

(assert (=> b!676018 m!643065))

(declare-fun m!643067 () Bool)

(assert (=> b!676029 m!643067))

(declare-fun m!643069 () Bool)

(assert (=> b!676020 m!643069))

(declare-fun m!643071 () Bool)

(assert (=> b!676027 m!643071))

(declare-fun m!643073 () Bool)

(assert (=> b!676032 m!643073))

(declare-fun m!643075 () Bool)

(assert (=> b!676028 m!643075))

(declare-fun m!643077 () Bool)

(assert (=> b!676026 m!643077))

(assert (=> b!676026 m!643077))

(declare-fun m!643079 () Bool)

(assert (=> b!676026 m!643079))

(declare-fun m!643081 () Bool)

(assert (=> b!676023 m!643081))

(declare-fun m!643083 () Bool)

(assert (=> b!676021 m!643083))

(assert (=> b!676030 m!643069))

(assert (=> b!676016 m!643069))

(declare-fun m!643085 () Bool)

(assert (=> start!60296 m!643085))

(assert (=> b!676022 m!643069))

(declare-fun m!643087 () Bool)

(assert (=> b!676025 m!643087))

(check-sat (not b!676025) (not b!676016) (not b!676029) (not b!676023) (not b!676020) (not b!676032) (not b!676018) (not b!676028) (not start!60296) (not b!676022) (not b!676021) (not b!676030) (not b!676027) (not b!676026))
