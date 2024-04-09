; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62572 () Bool)

(assert start!62572)

(declare-fun b!705003 () Bool)

(declare-fun res!468989 () Bool)

(declare-fun e!397696 () Bool)

(assert (=> b!705003 (=> (not res!468989) (not e!397696))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!705003 (= res!468989 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705004 () Bool)

(declare-fun res!468998 () Bool)

(assert (=> b!705004 (=> (not res!468998) (not e!397696))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705004 (= res!468998 (validKeyInArray!0 k!2824))))

(declare-fun b!705005 () Bool)

(declare-fun res!469000 () Bool)

(assert (=> b!705005 (=> (not res!469000) (not e!397696))))

(declare-datatypes ((array!40207 0))(
  ( (array!40208 (arr!19256 (Array (_ BitVec 32) (_ BitVec 64))) (size!19639 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40207)

(assert (=> b!705005 (= res!469000 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19639 a!3591)))))

(declare-fun b!705006 () Bool)

(declare-fun res!468996 () Bool)

(assert (=> b!705006 (=> (not res!468996) (not e!397696))))

(assert (=> b!705006 (= res!468996 (not (validKeyInArray!0 (select (arr!19256 a!3591) from!2969))))))

(declare-fun b!705007 () Bool)

(declare-fun res!469003 () Bool)

(assert (=> b!705007 (=> (not res!469003) (not e!397696))))

(declare-datatypes ((List!13350 0))(
  ( (Nil!13347) (Cons!13346 (h!14391 (_ BitVec 64)) (t!19640 List!13350)) )
))
(declare-fun acc!652 () List!13350)

(declare-fun noDuplicate!1140 (List!13350) Bool)

(assert (=> b!705007 (= res!469003 (noDuplicate!1140 acc!652))))

(declare-fun b!705008 () Bool)

(declare-fun res!468993 () Bool)

(assert (=> b!705008 (=> (not res!468993) (not e!397696))))

(declare-fun contains!3893 (List!13350 (_ BitVec 64)) Bool)

(assert (=> b!705008 (= res!468993 (not (contains!3893 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705009 () Bool)

(declare-fun res!468991 () Bool)

(assert (=> b!705009 (=> (not res!468991) (not e!397696))))

(declare-fun newAcc!49 () List!13350)

(assert (=> b!705009 (= res!468991 (not (contains!3893 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705010 () Bool)

(declare-fun res!468995 () Bool)

(assert (=> b!705010 (=> (not res!468995) (not e!397696))))

(declare-fun arrayContainsKey!0 (array!40207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705010 (= res!468995 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705011 () Bool)

(declare-fun res!468987 () Bool)

(assert (=> b!705011 (=> (not res!468987) (not e!397696))))

(assert (=> b!705011 (= res!468987 (not (contains!3893 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705012 () Bool)

(declare-fun res!469001 () Bool)

(assert (=> b!705012 (=> (not res!469001) (not e!397696))))

(assert (=> b!705012 (= res!469001 (noDuplicate!1140 newAcc!49))))

(declare-fun b!705013 () Bool)

(declare-fun res!469002 () Bool)

(assert (=> b!705013 (=> (not res!469002) (not e!397696))))

(assert (=> b!705013 (= res!469002 (not (contains!3893 acc!652 k!2824)))))

(declare-fun b!705014 () Bool)

(declare-fun res!468988 () Bool)

(assert (=> b!705014 (=> (not res!468988) (not e!397696))))

(declare-fun arrayNoDuplicates!0 (array!40207 (_ BitVec 32) List!13350) Bool)

(assert (=> b!705014 (= res!468988 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705015 () Bool)

(declare-fun res!468992 () Bool)

(assert (=> b!705015 (=> (not res!468992) (not e!397696))))

(assert (=> b!705015 (= res!468992 (not (contains!3893 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705016 () Bool)

(declare-fun res!468997 () Bool)

(assert (=> b!705016 (=> (not res!468997) (not e!397696))))

(assert (=> b!705016 (= res!468997 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun res!468999 () Bool)

(assert (=> start!62572 (=> (not res!468999) (not e!397696))))

(assert (=> start!62572 (= res!468999 (and (bvslt (size!19639 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19639 a!3591))))))

(assert (=> start!62572 e!397696))

(assert (=> start!62572 true))

(declare-fun array_inv!15030 (array!40207) Bool)

(assert (=> start!62572 (array_inv!15030 a!3591)))

(declare-fun b!705017 () Bool)

(assert (=> b!705017 (= e!397696 false)))

(declare-fun lt!317829 () Bool)

(assert (=> b!705017 (= lt!317829 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705018 () Bool)

(declare-fun res!468994 () Bool)

(assert (=> b!705018 (=> (not res!468994) (not e!397696))))

(assert (=> b!705018 (= res!468994 (contains!3893 newAcc!49 k!2824))))

(declare-fun b!705019 () Bool)

(declare-fun res!469004 () Bool)

(assert (=> b!705019 (=> (not res!469004) (not e!397696))))

(declare-fun -!302 (List!13350 (_ BitVec 64)) List!13350)

(assert (=> b!705019 (= res!469004 (= (-!302 newAcc!49 k!2824) acc!652))))

(declare-fun b!705020 () Bool)

(declare-fun res!468990 () Bool)

(assert (=> b!705020 (=> (not res!468990) (not e!397696))))

(declare-fun subseq!337 (List!13350 List!13350) Bool)

(assert (=> b!705020 (= res!468990 (subseq!337 acc!652 newAcc!49))))

(assert (= (and start!62572 res!468999) b!705007))

(assert (= (and b!705007 res!469003) b!705012))

(assert (= (and b!705012 res!469001) b!705011))

(assert (= (and b!705011 res!468987) b!705008))

(assert (= (and b!705008 res!468993) b!705010))

(assert (= (and b!705010 res!468995) b!705013))

(assert (= (and b!705013 res!469002) b!705004))

(assert (= (and b!705004 res!468998) b!705014))

(assert (= (and b!705014 res!468988) b!705020))

(assert (= (and b!705020 res!468990) b!705018))

(assert (= (and b!705018 res!468994) b!705019))

(assert (= (and b!705019 res!469004) b!705009))

(assert (= (and b!705009 res!468991) b!705015))

(assert (= (and b!705015 res!468992) b!705005))

(assert (= (and b!705005 res!469000) b!705006))

(assert (= (and b!705006 res!468996) b!705003))

(assert (= (and b!705003 res!468989) b!705016))

(assert (= (and b!705016 res!468997) b!705017))

(declare-fun m!663327 () Bool)

(assert (=> b!705007 m!663327))

(declare-fun m!663329 () Bool)

(assert (=> b!705010 m!663329))

(declare-fun m!663331 () Bool)

(assert (=> b!705020 m!663331))

(declare-fun m!663333 () Bool)

(assert (=> b!705008 m!663333))

(declare-fun m!663335 () Bool)

(assert (=> b!705015 m!663335))

(declare-fun m!663337 () Bool)

(assert (=> b!705019 m!663337))

(declare-fun m!663339 () Bool)

(assert (=> b!705004 m!663339))

(declare-fun m!663341 () Bool)

(assert (=> b!705014 m!663341))

(declare-fun m!663343 () Bool)

(assert (=> b!705017 m!663343))

(declare-fun m!663345 () Bool)

(assert (=> b!705018 m!663345))

(declare-fun m!663347 () Bool)

(assert (=> b!705006 m!663347))

(assert (=> b!705006 m!663347))

(declare-fun m!663349 () Bool)

(assert (=> b!705006 m!663349))

(declare-fun m!663351 () Bool)

(assert (=> b!705009 m!663351))

(declare-fun m!663353 () Bool)

(assert (=> b!705013 m!663353))

(declare-fun m!663355 () Bool)

(assert (=> b!705011 m!663355))

(declare-fun m!663357 () Bool)

(assert (=> start!62572 m!663357))

(declare-fun m!663359 () Bool)

(assert (=> b!705016 m!663359))

(declare-fun m!663361 () Bool)

(assert (=> b!705012 m!663361))

(push 1)

(assert (not b!705016))

(assert (not b!705006))

(assert (not b!705011))

(assert (not b!705019))

(assert (not b!705018))

(assert (not b!705004))

(assert (not b!705015))

(assert (not b!705007))

(assert (not b!705008))

(assert (not b!705017))

(assert (not b!705010))

(assert (not b!705020))

(assert (not b!705014))

(assert (not b!705009))

(assert (not b!705013))

(assert (not b!705012))

(assert (not start!62572))

(check-sat)

