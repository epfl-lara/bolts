; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93268 () Bool)

(assert start!93268)

(declare-fun b!1056996 () Bool)

(declare-fun res!705812 () Bool)

(declare-fun e!601085 () Bool)

(assert (=> b!1056996 (=> (not res!705812) (not e!601085))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056996 (= res!705812 (validKeyInArray!0 k!2747))))

(declare-fun b!1056997 () Bool)

(declare-fun res!705808 () Bool)

(assert (=> b!1056997 (=> (not res!705808) (not e!601085))))

(declare-datatypes ((array!66654 0))(
  ( (array!66655 (arr!32046 (Array (_ BitVec 32) (_ BitVec 64))) (size!32583 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66654)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056997 (= res!705808 (= (select (arr!32046 a!3488) i!1381) k!2747))))

(declare-fun b!1056998 () Bool)

(declare-fun e!601081 () Bool)

(declare-fun e!601080 () Bool)

(assert (=> b!1056998 (= e!601081 e!601080)))

(declare-fun res!705811 () Bool)

(assert (=> b!1056998 (=> (not res!705811) (not e!601080))))

(declare-fun lt!466257 () (_ BitVec 32))

(assert (=> b!1056998 (= res!705811 (not (= lt!466257 i!1381)))))

(declare-fun lt!466256 () array!66654)

(declare-fun arrayScanForKey!0 (array!66654 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056998 (= lt!466257 (arrayScanForKey!0 lt!466256 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056999 () Bool)

(declare-fun res!705805 () Bool)

(assert (=> b!1056999 (=> (not res!705805) (not e!601085))))

(declare-datatypes ((List!22489 0))(
  ( (Nil!22486) (Cons!22485 (h!23694 (_ BitVec 64)) (t!31803 List!22489)) )
))
(declare-fun arrayNoDuplicates!0 (array!66654 (_ BitVec 32) List!22489) Bool)

(assert (=> b!1056999 (= res!705805 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22486))))

(declare-fun res!705810 () Bool)

(assert (=> start!93268 (=> (not res!705810) (not e!601085))))

(assert (=> start!93268 (= res!705810 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32583 a!3488)) (bvslt (size!32583 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93268 e!601085))

(assert (=> start!93268 true))

(declare-fun array_inv!24668 (array!66654) Bool)

(assert (=> start!93268 (array_inv!24668 a!3488)))

(declare-fun b!1057000 () Bool)

(declare-fun e!601083 () Bool)

(assert (=> b!1057000 (= e!601080 (not e!601083))))

(declare-fun res!705813 () Bool)

(assert (=> b!1057000 (=> res!705813 e!601083)))

(assert (=> b!1057000 (= res!705813 (or (bvsgt lt!466257 i!1381) (bvsle i!1381 lt!466257)))))

(declare-fun e!601079 () Bool)

(assert (=> b!1057000 e!601079))

(declare-fun res!705806 () Bool)

(assert (=> b!1057000 (=> (not res!705806) (not e!601079))))

(assert (=> b!1057000 (= res!705806 (= (select (store (arr!32046 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466257) k!2747))))

(declare-fun b!1057001 () Bool)

(assert (=> b!1057001 (= e!601083 true)))

(assert (=> b!1057001 (arrayNoDuplicates!0 a!3488 lt!466257 Nil!22486)))

(declare-datatypes ((Unit!34623 0))(
  ( (Unit!34624) )
))
(declare-fun lt!466258 () Unit!34623)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66654 (_ BitVec 32) (_ BitVec 32)) Unit!34623)

(assert (=> b!1057001 (= lt!466258 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466257))))

(declare-fun e!601082 () Bool)

(declare-fun b!1057002 () Bool)

(declare-fun arrayContainsKey!0 (array!66654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057002 (= e!601082 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057003 () Bool)

(assert (=> b!1057003 (= e!601079 e!601082)))

(declare-fun res!705807 () Bool)

(assert (=> b!1057003 (=> res!705807 e!601082)))

(assert (=> b!1057003 (= res!705807 (or (bvsgt lt!466257 i!1381) (bvsle i!1381 lt!466257)))))

(declare-fun b!1057004 () Bool)

(assert (=> b!1057004 (= e!601085 e!601081)))

(declare-fun res!705809 () Bool)

(assert (=> b!1057004 (=> (not res!705809) (not e!601081))))

(assert (=> b!1057004 (= res!705809 (arrayContainsKey!0 lt!466256 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057004 (= lt!466256 (array!66655 (store (arr!32046 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32583 a!3488)))))

(assert (= (and start!93268 res!705810) b!1056999))

(assert (= (and b!1056999 res!705805) b!1056996))

(assert (= (and b!1056996 res!705812) b!1056997))

(assert (= (and b!1056997 res!705808) b!1057004))

(assert (= (and b!1057004 res!705809) b!1056998))

(assert (= (and b!1056998 res!705811) b!1057000))

(assert (= (and b!1057000 res!705806) b!1057003))

(assert (= (and b!1057003 (not res!705807)) b!1057002))

(assert (= (and b!1057000 (not res!705813)) b!1057001))

(declare-fun m!976865 () Bool)

(assert (=> start!93268 m!976865))

(declare-fun m!976867 () Bool)

(assert (=> b!1057004 m!976867))

(declare-fun m!976869 () Bool)

(assert (=> b!1057004 m!976869))

(declare-fun m!976871 () Bool)

(assert (=> b!1056996 m!976871))

(declare-fun m!976873 () Bool)

(assert (=> b!1057001 m!976873))

(declare-fun m!976875 () Bool)

(assert (=> b!1057001 m!976875))

(declare-fun m!976877 () Bool)

(assert (=> b!1056999 m!976877))

(declare-fun m!976879 () Bool)

(assert (=> b!1057002 m!976879))

(assert (=> b!1057000 m!976869))

(declare-fun m!976881 () Bool)

(assert (=> b!1057000 m!976881))

(declare-fun m!976883 () Bool)

(assert (=> b!1056998 m!976883))

(declare-fun m!976885 () Bool)

(assert (=> b!1056997 m!976885))

(push 1)

