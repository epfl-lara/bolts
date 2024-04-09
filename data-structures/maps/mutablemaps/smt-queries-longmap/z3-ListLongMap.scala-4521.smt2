; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62612 () Bool)

(assert start!62612)

(declare-fun b!706058 () Bool)

(declare-fun res!470052 () Bool)

(declare-fun e!397816 () Bool)

(assert (=> b!706058 (=> (not res!470052) (not e!397816))))

(declare-datatypes ((List!13370 0))(
  ( (Nil!13367) (Cons!13366 (h!14411 (_ BitVec 64)) (t!19660 List!13370)) )
))
(declare-fun newAcc!49 () List!13370)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3913 (List!13370 (_ BitVec 64)) Bool)

(assert (=> b!706058 (= res!470052 (contains!3913 newAcc!49 k0!2824))))

(declare-fun b!706059 () Bool)

(declare-fun res!470049 () Bool)

(assert (=> b!706059 (=> (not res!470049) (not e!397816))))

(declare-fun acc!652 () List!13370)

(assert (=> b!706059 (= res!470049 (not (contains!3913 acc!652 k0!2824)))))

(declare-fun res!470048 () Bool)

(assert (=> start!62612 (=> (not res!470048) (not e!397816))))

(declare-datatypes ((array!40247 0))(
  ( (array!40248 (arr!19276 (Array (_ BitVec 32) (_ BitVec 64))) (size!19659 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40247)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62612 (= res!470048 (and (bvslt (size!19659 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19659 a!3591))))))

(assert (=> start!62612 e!397816))

(assert (=> start!62612 true))

(declare-fun array_inv!15050 (array!40247) Bool)

(assert (=> start!62612 (array_inv!15050 a!3591)))

(declare-fun b!706060 () Bool)

(assert (=> b!706060 (= e!397816 false)))

(declare-fun lt!317880 () Bool)

(assert (=> b!706060 (= lt!317880 (contains!3913 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706061 () Bool)

(declare-fun res!470045 () Bool)

(assert (=> b!706061 (=> (not res!470045) (not e!397816))))

(declare-fun noDuplicate!1160 (List!13370) Bool)

(assert (=> b!706061 (= res!470045 (noDuplicate!1160 newAcc!49))))

(declare-fun b!706062 () Bool)

(declare-fun res!470051 () Bool)

(assert (=> b!706062 (=> (not res!470051) (not e!397816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706062 (= res!470051 (validKeyInArray!0 k0!2824))))

(declare-fun b!706063 () Bool)

(declare-fun res!470044 () Bool)

(assert (=> b!706063 (=> (not res!470044) (not e!397816))))

(declare-fun arrayNoDuplicates!0 (array!40247 (_ BitVec 32) List!13370) Bool)

(assert (=> b!706063 (= res!470044 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706064 () Bool)

(declare-fun res!470047 () Bool)

(assert (=> b!706064 (=> (not res!470047) (not e!397816))))

(declare-fun subseq!357 (List!13370 List!13370) Bool)

(assert (=> b!706064 (= res!470047 (subseq!357 acc!652 newAcc!49))))

(declare-fun b!706065 () Bool)

(declare-fun res!470053 () Bool)

(assert (=> b!706065 (=> (not res!470053) (not e!397816))))

(assert (=> b!706065 (= res!470053 (not (contains!3913 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706066 () Bool)

(declare-fun res!470054 () Bool)

(assert (=> b!706066 (=> (not res!470054) (not e!397816))))

(declare-fun arrayContainsKey!0 (array!40247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706066 (= res!470054 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!706067 () Bool)

(declare-fun res!470042 () Bool)

(assert (=> b!706067 (=> (not res!470042) (not e!397816))))

(assert (=> b!706067 (= res!470042 (not (contains!3913 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706068 () Bool)

(declare-fun res!470043 () Bool)

(assert (=> b!706068 (=> (not res!470043) (not e!397816))))

(declare-fun -!322 (List!13370 (_ BitVec 64)) List!13370)

(assert (=> b!706068 (= res!470043 (= (-!322 newAcc!49 k0!2824) acc!652))))

(declare-fun b!706069 () Bool)

(declare-fun res!470046 () Bool)

(assert (=> b!706069 (=> (not res!470046) (not e!397816))))

(assert (=> b!706069 (= res!470046 (not (contains!3913 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706070 () Bool)

(declare-fun res!470050 () Bool)

(assert (=> b!706070 (=> (not res!470050) (not e!397816))))

(assert (=> b!706070 (= res!470050 (noDuplicate!1160 acc!652))))

(assert (= (and start!62612 res!470048) b!706070))

(assert (= (and b!706070 res!470050) b!706061))

(assert (= (and b!706061 res!470045) b!706067))

(assert (= (and b!706067 res!470042) b!706065))

(assert (= (and b!706065 res!470053) b!706066))

(assert (= (and b!706066 res!470054) b!706059))

(assert (= (and b!706059 res!470049) b!706062))

(assert (= (and b!706062 res!470051) b!706063))

(assert (= (and b!706063 res!470044) b!706064))

(assert (= (and b!706064 res!470047) b!706058))

(assert (= (and b!706058 res!470052) b!706068))

(assert (= (and b!706068 res!470043) b!706069))

(assert (= (and b!706069 res!470046) b!706060))

(declare-fun m!664063 () Bool)

(assert (=> b!706064 m!664063))

(declare-fun m!664065 () Bool)

(assert (=> b!706067 m!664065))

(declare-fun m!664067 () Bool)

(assert (=> b!706058 m!664067))

(declare-fun m!664069 () Bool)

(assert (=> b!706065 m!664069))

(declare-fun m!664071 () Bool)

(assert (=> b!706060 m!664071))

(declare-fun m!664073 () Bool)

(assert (=> b!706070 m!664073))

(declare-fun m!664075 () Bool)

(assert (=> b!706059 m!664075))

(declare-fun m!664077 () Bool)

(assert (=> b!706068 m!664077))

(declare-fun m!664079 () Bool)

(assert (=> b!706061 m!664079))

(declare-fun m!664081 () Bool)

(assert (=> b!706062 m!664081))

(declare-fun m!664083 () Bool)

(assert (=> b!706066 m!664083))

(declare-fun m!664085 () Bool)

(assert (=> b!706069 m!664085))

(declare-fun m!664087 () Bool)

(assert (=> start!62612 m!664087))

(declare-fun m!664089 () Bool)

(assert (=> b!706063 m!664089))

(check-sat (not b!706058) (not b!706069) (not b!706061) (not b!706059) (not b!706066) (not b!706068) (not b!706070) (not start!62612) (not b!706065) (not b!706067) (not b!706064) (not b!706060) (not b!706062) (not b!706063))
(check-sat)
