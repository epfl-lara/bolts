; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62618 () Bool)

(assert start!62618)

(declare-fun b!706175 () Bool)

(declare-fun res!470165 () Bool)

(declare-fun e!397833 () Bool)

(assert (=> b!706175 (=> (not res!470165) (not e!397833))))

(declare-datatypes ((List!13373 0))(
  ( (Nil!13370) (Cons!13369 (h!14414 (_ BitVec 64)) (t!19663 List!13373)) )
))
(declare-fun newAcc!49 () List!13373)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3916 (List!13373 (_ BitVec 64)) Bool)

(assert (=> b!706175 (= res!470165 (contains!3916 newAcc!49 k0!2824))))

(declare-fun b!706176 () Bool)

(declare-fun res!470168 () Bool)

(assert (=> b!706176 (=> (not res!470168) (not e!397833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706176 (= res!470168 (validKeyInArray!0 k0!2824))))

(declare-fun b!706177 () Bool)

(declare-fun res!470170 () Bool)

(assert (=> b!706177 (=> (not res!470170) (not e!397833))))

(declare-fun noDuplicate!1163 (List!13373) Bool)

(assert (=> b!706177 (= res!470170 (noDuplicate!1163 newAcc!49))))

(declare-fun b!706178 () Bool)

(declare-fun res!470167 () Bool)

(assert (=> b!706178 (=> (not res!470167) (not e!397833))))

(declare-fun acc!652 () List!13373)

(assert (=> b!706178 (= res!470167 (not (contains!3916 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706179 () Bool)

(declare-fun res!470164 () Bool)

(assert (=> b!706179 (=> (not res!470164) (not e!397833))))

(assert (=> b!706179 (= res!470164 (not (contains!3916 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706180 () Bool)

(declare-fun res!470166 () Bool)

(assert (=> b!706180 (=> (not res!470166) (not e!397833))))

(declare-fun subseq!360 (List!13373 List!13373) Bool)

(assert (=> b!706180 (= res!470166 (subseq!360 acc!652 newAcc!49))))

(declare-fun b!706181 () Bool)

(declare-fun res!470161 () Bool)

(assert (=> b!706181 (=> (not res!470161) (not e!397833))))

(declare-datatypes ((array!40253 0))(
  ( (array!40254 (arr!19279 (Array (_ BitVec 32) (_ BitVec 64))) (size!19662 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40253)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706181 (= res!470161 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!706182 () Bool)

(declare-fun res!470171 () Bool)

(assert (=> b!706182 (=> (not res!470171) (not e!397833))))

(declare-fun arrayNoDuplicates!0 (array!40253 (_ BitVec 32) List!13373) Bool)

(assert (=> b!706182 (= res!470171 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706183 () Bool)

(declare-fun res!470163 () Bool)

(assert (=> b!706183 (=> (not res!470163) (not e!397833))))

(assert (=> b!706183 (= res!470163 (noDuplicate!1163 acc!652))))

(declare-fun res!470160 () Bool)

(assert (=> start!62618 (=> (not res!470160) (not e!397833))))

(assert (=> start!62618 (= res!470160 (and (bvslt (size!19662 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19662 a!3591))))))

(assert (=> start!62618 e!397833))

(assert (=> start!62618 true))

(declare-fun array_inv!15053 (array!40253) Bool)

(assert (=> start!62618 (array_inv!15053 a!3591)))

(declare-fun b!706184 () Bool)

(declare-fun res!470159 () Bool)

(assert (=> b!706184 (=> (not res!470159) (not e!397833))))

(assert (=> b!706184 (= res!470159 (not (contains!3916 acc!652 k0!2824)))))

(declare-fun b!706185 () Bool)

(assert (=> b!706185 (= e!397833 false)))

(declare-fun lt!317889 () Bool)

(assert (=> b!706185 (= lt!317889 (contains!3916 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706186 () Bool)

(declare-fun res!470169 () Bool)

(assert (=> b!706186 (=> (not res!470169) (not e!397833))))

(assert (=> b!706186 (= res!470169 (not (contains!3916 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706187 () Bool)

(declare-fun res!470162 () Bool)

(assert (=> b!706187 (=> (not res!470162) (not e!397833))))

(declare-fun -!325 (List!13373 (_ BitVec 64)) List!13373)

(assert (=> b!706187 (= res!470162 (= (-!325 newAcc!49 k0!2824) acc!652))))

(assert (= (and start!62618 res!470160) b!706183))

(assert (= (and b!706183 res!470163) b!706177))

(assert (= (and b!706177 res!470170) b!706178))

(assert (= (and b!706178 res!470167) b!706179))

(assert (= (and b!706179 res!470164) b!706181))

(assert (= (and b!706181 res!470161) b!706184))

(assert (= (and b!706184 res!470159) b!706176))

(assert (= (and b!706176 res!470168) b!706182))

(assert (= (and b!706182 res!470171) b!706180))

(assert (= (and b!706180 res!470166) b!706175))

(assert (= (and b!706175 res!470165) b!706187))

(assert (= (and b!706187 res!470162) b!706186))

(assert (= (and b!706186 res!470169) b!706185))

(declare-fun m!664147 () Bool)

(assert (=> b!706183 m!664147))

(declare-fun m!664149 () Bool)

(assert (=> b!706179 m!664149))

(declare-fun m!664151 () Bool)

(assert (=> b!706177 m!664151))

(declare-fun m!664153 () Bool)

(assert (=> b!706182 m!664153))

(declare-fun m!664155 () Bool)

(assert (=> start!62618 m!664155))

(declare-fun m!664157 () Bool)

(assert (=> b!706180 m!664157))

(declare-fun m!664159 () Bool)

(assert (=> b!706176 m!664159))

(declare-fun m!664161 () Bool)

(assert (=> b!706178 m!664161))

(declare-fun m!664163 () Bool)

(assert (=> b!706186 m!664163))

(declare-fun m!664165 () Bool)

(assert (=> b!706175 m!664165))

(declare-fun m!664167 () Bool)

(assert (=> b!706184 m!664167))

(declare-fun m!664169 () Bool)

(assert (=> b!706187 m!664169))

(declare-fun m!664171 () Bool)

(assert (=> b!706181 m!664171))

(declare-fun m!664173 () Bool)

(assert (=> b!706185 m!664173))

(check-sat (not b!706183) (not b!706181) (not b!706184) (not b!706175) (not b!706179) (not b!706178) (not b!706185) (not start!62618) (not b!706177) (not b!706180) (not b!706182) (not b!706186) (not b!706187) (not b!706176))
(check-sat)
