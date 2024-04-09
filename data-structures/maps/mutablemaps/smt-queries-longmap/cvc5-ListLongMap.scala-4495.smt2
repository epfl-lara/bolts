; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62454 () Bool)

(assert start!62454)

(declare-fun b!701171 () Bool)

(declare-fun res!465169 () Bool)

(declare-fun e!397281 () Bool)

(assert (=> b!701171 (=> (not res!465169) (not e!397281))))

(declare-datatypes ((List!13291 0))(
  ( (Nil!13288) (Cons!13287 (h!14332 (_ BitVec 64)) (t!19581 List!13291)) )
))
(declare-fun newAcc!49 () List!13291)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3834 (List!13291 (_ BitVec 64)) Bool)

(assert (=> b!701171 (= res!465169 (contains!3834 newAcc!49 k!2824))))

(declare-fun b!701172 () Bool)

(declare-fun res!465181 () Bool)

(assert (=> b!701172 (=> (not res!465181) (not e!397281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!701172 (= res!465181 (validKeyInArray!0 k!2824))))

(declare-fun b!701173 () Bool)

(declare-fun res!465155 () Bool)

(assert (=> b!701173 (=> (not res!465155) (not e!397281))))

(declare-fun acc!652 () List!13291)

(declare-fun subseq!278 (List!13291 List!13291) Bool)

(assert (=> b!701173 (= res!465155 (subseq!278 acc!652 newAcc!49))))

(declare-fun b!701174 () Bool)

(declare-fun res!465177 () Bool)

(declare-fun e!397280 () Bool)

(assert (=> b!701174 (=> (not res!465177) (not e!397280))))

(declare-fun lt!317532 () List!13291)

(assert (=> b!701174 (= res!465177 (not (contains!3834 lt!317532 k!2824)))))

(declare-fun b!701175 () Bool)

(declare-fun res!465156 () Bool)

(assert (=> b!701175 (=> (not res!465156) (not e!397280))))

(declare-fun lt!317530 () List!13291)

(assert (=> b!701175 (= res!465156 (contains!3834 lt!317530 k!2824))))

(declare-fun b!701176 () Bool)

(declare-fun res!465161 () Bool)

(assert (=> b!701176 (=> (not res!465161) (not e!397280))))

(declare-fun noDuplicate!1081 (List!13291) Bool)

(assert (=> b!701176 (= res!465161 (noDuplicate!1081 lt!317532))))

(declare-fun b!701178 () Bool)

(declare-fun res!465159 () Bool)

(assert (=> b!701178 (=> (not res!465159) (not e!397281))))

(declare-datatypes ((array!40089 0))(
  ( (array!40090 (arr!19197 (Array (_ BitVec 32) (_ BitVec 64))) (size!19580 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40089)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!701178 (= res!465159 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!701179 () Bool)

(declare-fun res!465176 () Bool)

(assert (=> b!701179 (=> (not res!465176) (not e!397281))))

(assert (=> b!701179 (= res!465176 (validKeyInArray!0 (select (arr!19197 a!3591) from!2969)))))

(declare-fun b!701180 () Bool)

(declare-fun res!465166 () Bool)

(assert (=> b!701180 (=> (not res!465166) (not e!397281))))

(assert (=> b!701180 (= res!465166 (noDuplicate!1081 acc!652))))

(declare-fun b!701181 () Bool)

(declare-fun res!465171 () Bool)

(assert (=> b!701181 (=> (not res!465171) (not e!397281))))

(declare-fun -!243 (List!13291 (_ BitVec 64)) List!13291)

(assert (=> b!701181 (= res!465171 (= (-!243 newAcc!49 k!2824) acc!652))))

(declare-fun b!701182 () Bool)

(declare-fun res!465167 () Bool)

(assert (=> b!701182 (=> (not res!465167) (not e!397281))))

(assert (=> b!701182 (= res!465167 (not (contains!3834 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701183 () Bool)

(declare-fun res!465165 () Bool)

(assert (=> b!701183 (=> (not res!465165) (not e!397281))))

(assert (=> b!701183 (= res!465165 (not (contains!3834 acc!652 k!2824)))))

(declare-fun b!701184 () Bool)

(assert (=> b!701184 (= e!397280 false)))

(declare-fun lt!317531 () Bool)

(assert (=> b!701184 (= lt!317531 (contains!3834 lt!317530 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!701185 () Bool)

(declare-fun res!465182 () Bool)

(assert (=> b!701185 (=> (not res!465182) (not e!397280))))

(assert (=> b!701185 (= res!465182 (subseq!278 lt!317532 lt!317530))))

(declare-fun b!701186 () Bool)

(declare-fun res!465162 () Bool)

(assert (=> b!701186 (=> (not res!465162) (not e!397281))))

(assert (=> b!701186 (= res!465162 (not (contains!3834 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701187 () Bool)

(declare-fun res!465158 () Bool)

(assert (=> b!701187 (=> (not res!465158) (not e!397281))))

(assert (=> b!701187 (= res!465158 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19580 a!3591)))))

(declare-fun b!701188 () Bool)

(assert (=> b!701188 (= e!397281 e!397280)))

(declare-fun res!465178 () Bool)

(assert (=> b!701188 (=> (not res!465178) (not e!397280))))

(assert (=> b!701188 (= res!465178 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!475 (List!13291 (_ BitVec 64)) List!13291)

(assert (=> b!701188 (= lt!317530 ($colon$colon!475 newAcc!49 (select (arr!19197 a!3591) from!2969)))))

(assert (=> b!701188 (= lt!317532 ($colon$colon!475 acc!652 (select (arr!19197 a!3591) from!2969)))))

(declare-fun b!701189 () Bool)

(declare-fun res!465170 () Bool)

(assert (=> b!701189 (=> (not res!465170) (not e!397280))))

(declare-fun arrayNoDuplicates!0 (array!40089 (_ BitVec 32) List!13291) Bool)

(assert (=> b!701189 (= res!465170 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317532))))

(declare-fun b!701190 () Bool)

(declare-fun res!465180 () Bool)

(assert (=> b!701190 (=> (not res!465180) (not e!397281))))

(assert (=> b!701190 (= res!465180 (not (contains!3834 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701191 () Bool)

(declare-fun res!465174 () Bool)

(assert (=> b!701191 (=> (not res!465174) (not e!397281))))

(assert (=> b!701191 (= res!465174 (noDuplicate!1081 newAcc!49))))

(declare-fun b!701192 () Bool)

(declare-fun res!465179 () Bool)

(assert (=> b!701192 (=> (not res!465179) (not e!397280))))

(assert (=> b!701192 (= res!465179 (noDuplicate!1081 lt!317530))))

(declare-fun b!701193 () Bool)

(declare-fun res!465168 () Bool)

(assert (=> b!701193 (=> (not res!465168) (not e!397281))))

(assert (=> b!701193 (= res!465168 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!465172 () Bool)

(assert (=> start!62454 (=> (not res!465172) (not e!397281))))

(assert (=> start!62454 (= res!465172 (and (bvslt (size!19580 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19580 a!3591))))))

(assert (=> start!62454 e!397281))

(assert (=> start!62454 true))

(declare-fun array_inv!14971 (array!40089) Bool)

(assert (=> start!62454 (array_inv!14971 a!3591)))

(declare-fun b!701177 () Bool)

(declare-fun res!465175 () Bool)

(assert (=> b!701177 (=> (not res!465175) (not e!397280))))

(assert (=> b!701177 (= res!465175 (not (contains!3834 lt!317532 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701194 () Bool)

(declare-fun res!465173 () Bool)

(assert (=> b!701194 (=> (not res!465173) (not e!397280))))

(assert (=> b!701194 (= res!465173 (= (-!243 lt!317530 k!2824) lt!317532))))

(declare-fun b!701195 () Bool)

(declare-fun res!465157 () Bool)

(assert (=> b!701195 (=> (not res!465157) (not e!397280))))

(assert (=> b!701195 (= res!465157 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!701196 () Bool)

(declare-fun res!465163 () Bool)

(assert (=> b!701196 (=> (not res!465163) (not e!397280))))

(assert (=> b!701196 (= res!465163 (not (contains!3834 lt!317530 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701197 () Bool)

(declare-fun res!465160 () Bool)

(assert (=> b!701197 (=> (not res!465160) (not e!397281))))

(assert (=> b!701197 (= res!465160 (not (contains!3834 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701198 () Bool)

(declare-fun res!465164 () Bool)

(assert (=> b!701198 (=> (not res!465164) (not e!397280))))

(assert (=> b!701198 (= res!465164 (not (contains!3834 lt!317532 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62454 res!465172) b!701180))

(assert (= (and b!701180 res!465166) b!701191))

(assert (= (and b!701191 res!465174) b!701197))

(assert (= (and b!701197 res!465160) b!701182))

(assert (= (and b!701182 res!465167) b!701178))

(assert (= (and b!701178 res!465159) b!701183))

(assert (= (and b!701183 res!465165) b!701172))

(assert (= (and b!701172 res!465181) b!701193))

(assert (= (and b!701193 res!465168) b!701173))

(assert (= (and b!701173 res!465155) b!701171))

(assert (= (and b!701171 res!465169) b!701181))

(assert (= (and b!701181 res!465171) b!701190))

(assert (= (and b!701190 res!465180) b!701186))

(assert (= (and b!701186 res!465162) b!701187))

(assert (= (and b!701187 res!465158) b!701179))

(assert (= (and b!701179 res!465176) b!701188))

(assert (= (and b!701188 res!465178) b!701176))

(assert (= (and b!701176 res!465161) b!701192))

(assert (= (and b!701192 res!465179) b!701177))

(assert (= (and b!701177 res!465175) b!701198))

(assert (= (and b!701198 res!465164) b!701195))

(assert (= (and b!701195 res!465157) b!701174))

(assert (= (and b!701174 res!465177) b!701189))

(assert (= (and b!701189 res!465170) b!701185))

(assert (= (and b!701185 res!465182) b!701175))

(assert (= (and b!701175 res!465156) b!701194))

(assert (= (and b!701194 res!465173) b!701196))

(assert (= (and b!701196 res!465163) b!701184))

(declare-fun m!660651 () Bool)

(assert (=> b!701183 m!660651))

(declare-fun m!660653 () Bool)

(assert (=> start!62454 m!660653))

(declare-fun m!660655 () Bool)

(assert (=> b!701179 m!660655))

(assert (=> b!701179 m!660655))

(declare-fun m!660657 () Bool)

(assert (=> b!701179 m!660657))

(declare-fun m!660659 () Bool)

(assert (=> b!701198 m!660659))

(declare-fun m!660661 () Bool)

(assert (=> b!701191 m!660661))

(declare-fun m!660663 () Bool)

(assert (=> b!701178 m!660663))

(declare-fun m!660665 () Bool)

(assert (=> b!701182 m!660665))

(declare-fun m!660667 () Bool)

(assert (=> b!701192 m!660667))

(declare-fun m!660669 () Bool)

(assert (=> b!701194 m!660669))

(declare-fun m!660671 () Bool)

(assert (=> b!701180 m!660671))

(declare-fun m!660673 () Bool)

(assert (=> b!701181 m!660673))

(declare-fun m!660675 () Bool)

(assert (=> b!701177 m!660675))

(declare-fun m!660677 () Bool)

(assert (=> b!701186 m!660677))

(declare-fun m!660679 () Bool)

(assert (=> b!701190 m!660679))

(declare-fun m!660681 () Bool)

(assert (=> b!701189 m!660681))

(assert (=> b!701188 m!660655))

(assert (=> b!701188 m!660655))

(declare-fun m!660683 () Bool)

(assert (=> b!701188 m!660683))

(assert (=> b!701188 m!660655))

(declare-fun m!660685 () Bool)

(assert (=> b!701188 m!660685))

(declare-fun m!660687 () Bool)

(assert (=> b!701173 m!660687))

(declare-fun m!660689 () Bool)

(assert (=> b!701174 m!660689))

(declare-fun m!660691 () Bool)

(assert (=> b!701172 m!660691))

(declare-fun m!660693 () Bool)

(assert (=> b!701171 m!660693))

(declare-fun m!660695 () Bool)

(assert (=> b!701175 m!660695))

(declare-fun m!660697 () Bool)

(assert (=> b!701197 m!660697))

(declare-fun m!660699 () Bool)

(assert (=> b!701185 m!660699))

(declare-fun m!660701 () Bool)

(assert (=> b!701195 m!660701))

(declare-fun m!660703 () Bool)

(assert (=> b!701176 m!660703))

(declare-fun m!660705 () Bool)

(assert (=> b!701184 m!660705))

(declare-fun m!660707 () Bool)

(assert (=> b!701196 m!660707))

(declare-fun m!660709 () Bool)

(assert (=> b!701193 m!660709))

(push 1)

