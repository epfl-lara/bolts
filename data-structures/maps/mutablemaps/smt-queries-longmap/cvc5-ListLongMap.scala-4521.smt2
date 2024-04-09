; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62610 () Bool)

(assert start!62610)

(declare-fun b!706019 () Bool)

(declare-fun res!470004 () Bool)

(declare-fun e!397809 () Bool)

(assert (=> b!706019 (=> (not res!470004) (not e!397809))))

(declare-datatypes ((array!40245 0))(
  ( (array!40246 (arr!19275 (Array (_ BitVec 32) (_ BitVec 64))) (size!19658 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40245)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706019 (= res!470004 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706020 () Bool)

(declare-fun res!470006 () Bool)

(assert (=> b!706020 (=> (not res!470006) (not e!397809))))

(declare-datatypes ((List!13369 0))(
  ( (Nil!13366) (Cons!13365 (h!14410 (_ BitVec 64)) (t!19659 List!13369)) )
))
(declare-fun acc!652 () List!13369)

(declare-fun contains!3912 (List!13369 (_ BitVec 64)) Bool)

(assert (=> b!706020 (= res!470006 (not (contains!3912 acc!652 k!2824)))))

(declare-fun b!706021 () Bool)

(assert (=> b!706021 (= e!397809 false)))

(declare-fun lt!317877 () Bool)

(declare-fun newAcc!49 () List!13369)

(assert (=> b!706021 (= lt!317877 (contains!3912 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706022 () Bool)

(declare-fun res!470014 () Bool)

(assert (=> b!706022 (=> (not res!470014) (not e!397809))))

(declare-fun -!321 (List!13369 (_ BitVec 64)) List!13369)

(assert (=> b!706022 (= res!470014 (= (-!321 newAcc!49 k!2824) acc!652))))

(declare-fun res!470003 () Bool)

(assert (=> start!62610 (=> (not res!470003) (not e!397809))))

(assert (=> start!62610 (= res!470003 (and (bvslt (size!19658 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19658 a!3591))))))

(assert (=> start!62610 e!397809))

(assert (=> start!62610 true))

(declare-fun array_inv!15049 (array!40245) Bool)

(assert (=> start!62610 (array_inv!15049 a!3591)))

(declare-fun b!706023 () Bool)

(declare-fun res!470009 () Bool)

(assert (=> b!706023 (=> (not res!470009) (not e!397809))))

(assert (=> b!706023 (= res!470009 (not (contains!3912 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706024 () Bool)

(declare-fun res!470011 () Bool)

(assert (=> b!706024 (=> (not res!470011) (not e!397809))))

(assert (=> b!706024 (= res!470011 (not (contains!3912 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706025 () Bool)

(declare-fun res!470008 () Bool)

(assert (=> b!706025 (=> (not res!470008) (not e!397809))))

(declare-fun arrayNoDuplicates!0 (array!40245 (_ BitVec 32) List!13369) Bool)

(assert (=> b!706025 (= res!470008 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706026 () Bool)

(declare-fun res!470012 () Bool)

(assert (=> b!706026 (=> (not res!470012) (not e!397809))))

(declare-fun noDuplicate!1159 (List!13369) Bool)

(assert (=> b!706026 (= res!470012 (noDuplicate!1159 acc!652))))

(declare-fun b!706027 () Bool)

(declare-fun res!470010 () Bool)

(assert (=> b!706027 (=> (not res!470010) (not e!397809))))

(assert (=> b!706027 (= res!470010 (not (contains!3912 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706028 () Bool)

(declare-fun res!470015 () Bool)

(assert (=> b!706028 (=> (not res!470015) (not e!397809))))

(assert (=> b!706028 (= res!470015 (contains!3912 newAcc!49 k!2824))))

(declare-fun b!706029 () Bool)

(declare-fun res!470007 () Bool)

(assert (=> b!706029 (=> (not res!470007) (not e!397809))))

(declare-fun subseq!356 (List!13369 List!13369) Bool)

(assert (=> b!706029 (= res!470007 (subseq!356 acc!652 newAcc!49))))

(declare-fun b!706030 () Bool)

(declare-fun res!470013 () Bool)

(assert (=> b!706030 (=> (not res!470013) (not e!397809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706030 (= res!470013 (validKeyInArray!0 k!2824))))

(declare-fun b!706031 () Bool)

(declare-fun res!470005 () Bool)

(assert (=> b!706031 (=> (not res!470005) (not e!397809))))

(assert (=> b!706031 (= res!470005 (noDuplicate!1159 newAcc!49))))

(assert (= (and start!62610 res!470003) b!706026))

(assert (= (and b!706026 res!470012) b!706031))

(assert (= (and b!706031 res!470005) b!706023))

(assert (= (and b!706023 res!470009) b!706024))

(assert (= (and b!706024 res!470011) b!706019))

(assert (= (and b!706019 res!470004) b!706020))

(assert (= (and b!706020 res!470006) b!706030))

(assert (= (and b!706030 res!470013) b!706025))

(assert (= (and b!706025 res!470008) b!706029))

(assert (= (and b!706029 res!470007) b!706028))

(assert (= (and b!706028 res!470015) b!706022))

(assert (= (and b!706022 res!470014) b!706027))

(assert (= (and b!706027 res!470010) b!706021))

(declare-fun m!664035 () Bool)

(assert (=> b!706019 m!664035))

(declare-fun m!664037 () Bool)

(assert (=> b!706028 m!664037))

(declare-fun m!664039 () Bool)

(assert (=> b!706027 m!664039))

(declare-fun m!664041 () Bool)

(assert (=> start!62610 m!664041))

(declare-fun m!664043 () Bool)

(assert (=> b!706025 m!664043))

(declare-fun m!664045 () Bool)

(assert (=> b!706029 m!664045))

(declare-fun m!664047 () Bool)

(assert (=> b!706020 m!664047))

(declare-fun m!664049 () Bool)

(assert (=> b!706022 m!664049))

(declare-fun m!664051 () Bool)

(assert (=> b!706031 m!664051))

(declare-fun m!664053 () Bool)

(assert (=> b!706030 m!664053))

(declare-fun m!664055 () Bool)

(assert (=> b!706023 m!664055))

(declare-fun m!664057 () Bool)

(assert (=> b!706021 m!664057))

(declare-fun m!664059 () Bool)

(assert (=> b!706024 m!664059))

(declare-fun m!664061 () Bool)

(assert (=> b!706026 m!664061))

(push 1)

(assert (not b!706024))

(assert (not b!706026))

(assert (not b!706028))

(assert (not b!706020))

(assert (not b!706031))

(assert (not b!706019))

(assert (not b!706022))

(assert (not b!706029))

(assert (not b!706025))

(assert (not b!706027))

(assert (not start!62610))

(assert (not b!706023))

(assert (not b!706021))

(assert (not b!706030))

(check-sat)

