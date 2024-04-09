; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103922 () Bool)

(assert start!103922)

(declare-fun b!1243286 () Bool)

(declare-fun res!829188 () Bool)

(declare-fun e!704892 () Bool)

(assert (=> b!1243286 (=> (not res!829188) (not e!704892))))

(declare-datatypes ((List!27550 0))(
  ( (Nil!27547) (Cons!27546 (h!28755 (_ BitVec 64)) (t!41026 List!27550)) )
))
(declare-fun contains!7422 (List!27550 (_ BitVec 64)) Bool)

(assert (=> b!1243286 (= res!829188 (not (contains!7422 Nil!27547 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829197 () Bool)

(declare-fun e!704893 () Bool)

(assert (=> start!103922 (=> (not res!829197) (not e!704893))))

(declare-datatypes ((array!79960 0))(
  ( (array!79961 (arr!38569 (Array (_ BitVec 32) (_ BitVec 64))) (size!39106 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79960)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103922 (= res!829197 (and (bvslt (size!39106 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39106 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39106 a!3892))))))

(assert (=> start!103922 e!704893))

(declare-fun array_inv!29345 (array!79960) Bool)

(assert (=> start!103922 (array_inv!29345 a!3892)))

(assert (=> start!103922 true))

(declare-fun b!1243287 () Bool)

(declare-fun res!829193 () Bool)

(assert (=> b!1243287 (=> (not res!829193) (not e!704892))))

(declare-fun lt!562311 () List!27550)

(declare-fun noDuplicate!2012 (List!27550) Bool)

(assert (=> b!1243287 (= res!829193 (noDuplicate!2012 lt!562311))))

(declare-fun b!1243288 () Bool)

(declare-fun res!829192 () Bool)

(assert (=> b!1243288 (=> (not res!829192) (not e!704893))))

(declare-fun arrayNoDuplicates!0 (array!79960 (_ BitVec 32) List!27550) Bool)

(assert (=> b!1243288 (= res!829192 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27547))))

(declare-fun b!1243289 () Bool)

(assert (=> b!1243289 (= e!704893 e!704892)))

(declare-fun res!829196 () Bool)

(assert (=> b!1243289 (=> (not res!829196) (not e!704892))))

(assert (=> b!1243289 (= res!829196 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243289 (= lt!562311 (Cons!27546 (select (arr!38569 a!3892) from!3270) Nil!27547))))

(declare-fun b!1243290 () Bool)

(assert (=> b!1243290 (= e!704892 false)))

(declare-fun lt!562312 () Bool)

(assert (=> b!1243290 (= lt!562312 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562311))))

(declare-datatypes ((Unit!41217 0))(
  ( (Unit!41218) )
))
(declare-fun lt!562310 () Unit!41217)

(declare-fun noDuplicateSubseq!87 (List!27550 List!27550) Unit!41217)

(assert (=> b!1243290 (= lt!562310 (noDuplicateSubseq!87 Nil!27547 lt!562311))))

(declare-fun b!1243291 () Bool)

(declare-fun res!829195 () Bool)

(assert (=> b!1243291 (=> (not res!829195) (not e!704892))))

(assert (=> b!1243291 (= res!829195 (not (contains!7422 lt!562311 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243292 () Bool)

(declare-fun res!829191 () Bool)

(assert (=> b!1243292 (=> (not res!829191) (not e!704893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243292 (= res!829191 (validKeyInArray!0 (select (arr!38569 a!3892) from!3270)))))

(declare-fun b!1243293 () Bool)

(declare-fun res!829194 () Bool)

(assert (=> b!1243293 (=> (not res!829194) (not e!704893))))

(assert (=> b!1243293 (= res!829194 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39106 a!3892)) (not (= newFrom!287 (size!39106 a!3892)))))))

(declare-fun b!1243294 () Bool)

(declare-fun res!829189 () Bool)

(assert (=> b!1243294 (=> (not res!829189) (not e!704892))))

(assert (=> b!1243294 (= res!829189 (not (contains!7422 Nil!27547 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243295 () Bool)

(declare-fun res!829190 () Bool)

(assert (=> b!1243295 (=> (not res!829190) (not e!704892))))

(declare-fun subseq!633 (List!27550 List!27550) Bool)

(assert (=> b!1243295 (= res!829190 (subseq!633 Nil!27547 lt!562311))))

(declare-fun b!1243296 () Bool)

(declare-fun res!829198 () Bool)

(assert (=> b!1243296 (=> (not res!829198) (not e!704892))))

(assert (=> b!1243296 (= res!829198 (not (contains!7422 lt!562311 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103922 res!829197) b!1243288))

(assert (= (and b!1243288 res!829192) b!1243293))

(assert (= (and b!1243293 res!829194) b!1243292))

(assert (= (and b!1243292 res!829191) b!1243289))

(assert (= (and b!1243289 res!829196) b!1243287))

(assert (= (and b!1243287 res!829193) b!1243296))

(assert (= (and b!1243296 res!829198) b!1243291))

(assert (= (and b!1243291 res!829195) b!1243294))

(assert (= (and b!1243294 res!829189) b!1243286))

(assert (= (and b!1243286 res!829188) b!1243295))

(assert (= (and b!1243295 res!829190) b!1243290))

(declare-fun m!1145889 () Bool)

(assert (=> b!1243287 m!1145889))

(declare-fun m!1145891 () Bool)

(assert (=> b!1243288 m!1145891))

(declare-fun m!1145893 () Bool)

(assert (=> b!1243290 m!1145893))

(declare-fun m!1145895 () Bool)

(assert (=> b!1243290 m!1145895))

(declare-fun m!1145897 () Bool)

(assert (=> b!1243294 m!1145897))

(declare-fun m!1145899 () Bool)

(assert (=> b!1243296 m!1145899))

(declare-fun m!1145901 () Bool)

(assert (=> start!103922 m!1145901))

(declare-fun m!1145903 () Bool)

(assert (=> b!1243289 m!1145903))

(assert (=> b!1243292 m!1145903))

(assert (=> b!1243292 m!1145903))

(declare-fun m!1145905 () Bool)

(assert (=> b!1243292 m!1145905))

(declare-fun m!1145907 () Bool)

(assert (=> b!1243291 m!1145907))

(declare-fun m!1145909 () Bool)

(assert (=> b!1243286 m!1145909))

(declare-fun m!1145911 () Bool)

(assert (=> b!1243295 m!1145911))

(check-sat (not b!1243296) (not b!1243295) (not b!1243292) (not start!103922) (not b!1243291) (not b!1243294) (not b!1243288) (not b!1243286) (not b!1243290) (not b!1243287))
(check-sat)
