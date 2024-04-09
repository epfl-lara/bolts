; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60380 () Bool)

(assert start!60380)

(declare-fun b!678149 () Bool)

(declare-fun e!386453 () Bool)

(declare-fun e!386452 () Bool)

(assert (=> b!678149 (= e!386453 e!386452)))

(declare-fun res!444736 () Bool)

(assert (=> b!678149 (=> (not res!444736) (not e!386452))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678149 (= res!444736 (bvsle from!3004 i!1382))))

(declare-fun b!678150 () Bool)

(declare-fun res!444743 () Bool)

(declare-fun e!386454 () Bool)

(assert (=> b!678150 (=> (not res!444743) (not e!386454))))

(declare-datatypes ((array!39383 0))(
  ( (array!39384 (arr!18880 (Array (_ BitVec 32) (_ BitVec 64))) (size!19244 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39383)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678150 (= res!444743 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun res!444742 () Bool)

(assert (=> start!60380 (=> (not res!444742) (not e!386454))))

(assert (=> start!60380 (= res!444742 (and (bvslt (size!19244 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19244 a!3626))))))

(assert (=> start!60380 e!386454))

(assert (=> start!60380 true))

(declare-fun array_inv!14654 (array!39383) Bool)

(assert (=> start!60380 (array_inv!14654 a!3626)))

(declare-fun b!678151 () Bool)

(declare-fun res!444731 () Bool)

(assert (=> b!678151 (=> (not res!444731) (not e!386454))))

(assert (=> b!678151 (= res!444731 e!386453)))

(declare-fun res!444738 () Bool)

(assert (=> b!678151 (=> res!444738 e!386453)))

(declare-fun e!386455 () Bool)

(assert (=> b!678151 (= res!444738 e!386455)))

(declare-fun res!444734 () Bool)

(assert (=> b!678151 (=> (not res!444734) (not e!386455))))

(assert (=> b!678151 (= res!444734 (bvsgt from!3004 i!1382))))

(declare-fun b!678152 () Bool)

(declare-fun res!444739 () Bool)

(assert (=> b!678152 (=> (not res!444739) (not e!386454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678152 (= res!444739 (validKeyInArray!0 k0!2843))))

(declare-fun b!678153 () Bool)

(declare-fun res!444740 () Bool)

(assert (=> b!678153 (=> (not res!444740) (not e!386454))))

(assert (=> b!678153 (= res!444740 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19244 a!3626))))))

(declare-fun b!678154 () Bool)

(declare-fun res!444737 () Bool)

(assert (=> b!678154 (=> (not res!444737) (not e!386454))))

(declare-datatypes ((List!12974 0))(
  ( (Nil!12971) (Cons!12970 (h!14015 (_ BitVec 64)) (t!19210 List!12974)) )
))
(declare-fun acc!681 () List!12974)

(declare-fun contains!3517 (List!12974 (_ BitVec 64)) Bool)

(assert (=> b!678154 (= res!444737 (not (contains!3517 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678155 () Bool)

(declare-fun res!444741 () Bool)

(assert (=> b!678155 (=> (not res!444741) (not e!386454))))

(declare-fun arrayNoDuplicates!0 (array!39383 (_ BitVec 32) List!12974) Bool)

(assert (=> b!678155 (= res!444741 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12971))))

(declare-fun b!678156 () Bool)

(assert (=> b!678156 (= e!386455 (contains!3517 acc!681 k0!2843))))

(declare-fun b!678157 () Bool)

(declare-fun res!444732 () Bool)

(assert (=> b!678157 (=> (not res!444732) (not e!386454))))

(declare-fun noDuplicate!764 (List!12974) Bool)

(assert (=> b!678157 (= res!444732 (noDuplicate!764 acc!681))))

(declare-fun b!678158 () Bool)

(assert (=> b!678158 (= e!386452 (not (contains!3517 acc!681 k0!2843)))))

(declare-fun b!678159 () Bool)

(declare-fun res!444735 () Bool)

(assert (=> b!678159 (=> (not res!444735) (not e!386454))))

(assert (=> b!678159 (= res!444735 (not (contains!3517 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678160 () Bool)

(declare-fun res!444733 () Bool)

(assert (=> b!678160 (=> (not res!444733) (not e!386454))))

(assert (=> b!678160 (= res!444733 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678161 () Bool)

(assert (=> b!678161 (= e!386454 (bvslt (bvsub (size!19244 a!3626) from!3004) #b00000000000000000000000000000000))))

(assert (= (and start!60380 res!444742) b!678157))

(assert (= (and b!678157 res!444732) b!678159))

(assert (= (and b!678159 res!444735) b!678154))

(assert (= (and b!678154 res!444737) b!678151))

(assert (= (and b!678151 res!444734) b!678156))

(assert (= (and b!678151 (not res!444738)) b!678149))

(assert (= (and b!678149 res!444736) b!678158))

(assert (= (and b!678151 res!444731) b!678155))

(assert (= (and b!678155 res!444741) b!678160))

(assert (= (and b!678160 res!444733) b!678153))

(assert (= (and b!678153 res!444740) b!678152))

(assert (= (and b!678152 res!444739) b!678150))

(assert (= (and b!678150 res!444743) b!678161))

(declare-fun m!644037 () Bool)

(assert (=> b!678158 m!644037))

(declare-fun m!644039 () Bool)

(assert (=> b!678157 m!644039))

(declare-fun m!644041 () Bool)

(assert (=> b!678160 m!644041))

(declare-fun m!644043 () Bool)

(assert (=> b!678159 m!644043))

(declare-fun m!644045 () Bool)

(assert (=> b!678155 m!644045))

(declare-fun m!644047 () Bool)

(assert (=> b!678150 m!644047))

(assert (=> b!678156 m!644037))

(declare-fun m!644049 () Bool)

(assert (=> b!678154 m!644049))

(declare-fun m!644051 () Bool)

(assert (=> b!678152 m!644051))

(declare-fun m!644053 () Bool)

(assert (=> start!60380 m!644053))

(check-sat (not start!60380) (not b!678155) (not b!678160) (not b!678158) (not b!678154) (not b!678150) (not b!678159) (not b!678157) (not b!678152) (not b!678156))
(check-sat)
