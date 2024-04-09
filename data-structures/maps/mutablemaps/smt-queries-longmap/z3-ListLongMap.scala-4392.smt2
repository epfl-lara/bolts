; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60434 () Bool)

(assert start!60434)

(declare-fun b!678610 () Bool)

(declare-fun res!445177 () Bool)

(declare-fun e!386707 () Bool)

(assert (=> b!678610 (=> (not res!445177) (not e!386707))))

(declare-datatypes ((array!39404 0))(
  ( (array!39405 (arr!18889 (Array (_ BitVec 32) (_ BitVec 64))) (size!19253 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39404)

(declare-datatypes ((List!12983 0))(
  ( (Nil!12980) (Cons!12979 (h!14024 (_ BitVec 64)) (t!19219 List!12983)) )
))
(declare-fun arrayNoDuplicates!0 (array!39404 (_ BitVec 32) List!12983) Bool)

(assert (=> b!678610 (= res!445177 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12980))))

(declare-fun b!678611 () Bool)

(declare-fun res!445178 () Bool)

(assert (=> b!678611 (=> (not res!445178) (not e!386707))))

(declare-fun acc!681 () List!12983)

(declare-fun contains!3526 (List!12983 (_ BitVec 64)) Bool)

(assert (=> b!678611 (= res!445178 (not (contains!3526 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678612 () Bool)

(declare-fun res!445175 () Bool)

(assert (=> b!678612 (=> (not res!445175) (not e!386707))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678612 (= res!445175 (validKeyInArray!0 k0!2843))))

(declare-fun b!678613 () Bool)

(assert (=> b!678613 (= e!386707 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678613 (arrayContainsKey!0 (array!39405 (store (arr!18889 a!3626) i!1382 k0!2843) (size!19253 a!3626)) k0!2843 from!3004)))

(declare-fun b!678614 () Bool)

(declare-fun e!386708 () Bool)

(declare-fun e!386709 () Bool)

(assert (=> b!678614 (= e!386708 e!386709)))

(declare-fun res!445179 () Bool)

(assert (=> b!678614 (=> (not res!445179) (not e!386709))))

(assert (=> b!678614 (= res!445179 (bvsle from!3004 i!1382))))

(declare-fun res!445169 () Bool)

(assert (=> start!60434 (=> (not res!445169) (not e!386707))))

(assert (=> start!60434 (= res!445169 (and (bvslt (size!19253 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19253 a!3626))))))

(assert (=> start!60434 e!386707))

(assert (=> start!60434 true))

(declare-fun array_inv!14663 (array!39404) Bool)

(assert (=> start!60434 (array_inv!14663 a!3626)))

(declare-fun b!678615 () Bool)

(declare-fun res!445172 () Bool)

(assert (=> b!678615 (=> (not res!445172) (not e!386707))))

(assert (=> b!678615 (= res!445172 (not (contains!3526 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678616 () Bool)

(declare-fun res!445176 () Bool)

(assert (=> b!678616 (=> (not res!445176) (not e!386707))))

(declare-fun noDuplicate!773 (List!12983) Bool)

(assert (=> b!678616 (= res!445176 (noDuplicate!773 acc!681))))

(declare-fun b!678617 () Bool)

(declare-fun res!445180 () Bool)

(assert (=> b!678617 (=> (not res!445180) (not e!386707))))

(assert (=> b!678617 (= res!445180 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678618 () Bool)

(declare-fun res!445168 () Bool)

(assert (=> b!678618 (=> (not res!445168) (not e!386707))))

(assert (=> b!678618 (= res!445168 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678619 () Bool)

(declare-fun res!445181 () Bool)

(assert (=> b!678619 (=> (not res!445181) (not e!386707))))

(assert (=> b!678619 (= res!445181 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19253 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678620 () Bool)

(declare-fun e!386706 () Bool)

(assert (=> b!678620 (= e!386706 (contains!3526 acc!681 k0!2843))))

(declare-fun b!678621 () Bool)

(assert (=> b!678621 (= e!386709 (not (contains!3526 acc!681 k0!2843)))))

(declare-fun b!678622 () Bool)

(declare-fun res!445170 () Bool)

(assert (=> b!678622 (=> (not res!445170) (not e!386707))))

(assert (=> b!678622 (= res!445170 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19253 a!3626))))))

(declare-fun b!678623 () Bool)

(declare-fun res!445171 () Bool)

(assert (=> b!678623 (=> (not res!445171) (not e!386707))))

(assert (=> b!678623 (= res!445171 e!386708)))

(declare-fun res!445173 () Bool)

(assert (=> b!678623 (=> res!445173 e!386708)))

(assert (=> b!678623 (= res!445173 e!386706)))

(declare-fun res!445174 () Bool)

(assert (=> b!678623 (=> (not res!445174) (not e!386706))))

(assert (=> b!678623 (= res!445174 (bvsgt from!3004 i!1382))))

(assert (= (and start!60434 res!445169) b!678616))

(assert (= (and b!678616 res!445176) b!678611))

(assert (= (and b!678611 res!445178) b!678615))

(assert (= (and b!678615 res!445172) b!678623))

(assert (= (and b!678623 res!445174) b!678620))

(assert (= (and b!678623 (not res!445173)) b!678614))

(assert (= (and b!678614 res!445179) b!678621))

(assert (= (and b!678623 res!445171) b!678610))

(assert (= (and b!678610 res!445177) b!678617))

(assert (= (and b!678617 res!445180) b!678622))

(assert (= (and b!678622 res!445170) b!678612))

(assert (= (and b!678612 res!445175) b!678618))

(assert (= (and b!678618 res!445168) b!678619))

(assert (= (and b!678619 res!445181) b!678613))

(declare-fun m!644323 () Bool)

(assert (=> start!60434 m!644323))

(declare-fun m!644325 () Bool)

(assert (=> b!678616 m!644325))

(declare-fun m!644327 () Bool)

(assert (=> b!678620 m!644327))

(declare-fun m!644329 () Bool)

(assert (=> b!678610 m!644329))

(declare-fun m!644331 () Bool)

(assert (=> b!678618 m!644331))

(declare-fun m!644333 () Bool)

(assert (=> b!678615 m!644333))

(assert (=> b!678621 m!644327))

(declare-fun m!644335 () Bool)

(assert (=> b!678617 m!644335))

(declare-fun m!644337 () Bool)

(assert (=> b!678613 m!644337))

(declare-fun m!644339 () Bool)

(assert (=> b!678613 m!644339))

(declare-fun m!644341 () Bool)

(assert (=> b!678612 m!644341))

(declare-fun m!644343 () Bool)

(assert (=> b!678611 m!644343))

(check-sat (not b!678621) (not b!678610) (not b!678617) (not start!60434) (not b!678616) (not b!678618) (not b!678615) (not b!678613) (not b!678612) (not b!678620) (not b!678611))
