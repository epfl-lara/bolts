; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104134 () Bool)

(assert start!104134)

(declare-fun res!830513 () Bool)

(declare-fun e!705730 () Bool)

(assert (=> start!104134 (=> (not res!830513) (not e!705730))))

(declare-datatypes ((array!80085 0))(
  ( (array!80086 (arr!38627 (Array (_ BitVec 32) (_ BitVec 64))) (size!39164 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80085)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104134 (= res!830513 (and (bvslt (size!39164 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39164 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39164 a!3892))))))

(assert (=> start!104134 e!705730))

(declare-fun array_inv!29403 (array!80085) Bool)

(assert (=> start!104134 (array_inv!29403 a!3892)))

(assert (=> start!104134 true))

(declare-fun b!1244849 () Bool)

(declare-fun res!830512 () Bool)

(assert (=> b!1244849 (=> (not res!830512) (not e!705730))))

(declare-datatypes ((List!27608 0))(
  ( (Nil!27605) (Cons!27604 (h!28813 (_ BitVec 64)) (t!41084 List!27608)) )
))
(declare-fun noDuplicate!2043 (List!27608) Bool)

(assert (=> b!1244849 (= res!830512 (noDuplicate!2043 Nil!27605))))

(declare-fun b!1244850 () Bool)

(declare-fun res!830514 () Bool)

(assert (=> b!1244850 (=> (not res!830514) (not e!705730))))

(declare-fun arrayNoDuplicates!0 (array!80085 (_ BitVec 32) List!27608) Bool)

(assert (=> b!1244850 (= res!830514 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27605))))

(declare-fun b!1244851 () Bool)

(declare-fun e!705729 () Bool)

(assert (=> b!1244851 (= e!705730 e!705729)))

(declare-fun res!830511 () Bool)

(assert (=> b!1244851 (=> res!830511 e!705729)))

(declare-fun contains!7453 (List!27608 (_ BitVec 64)) Bool)

(assert (=> b!1244851 (= res!830511 (contains!7453 Nil!27605 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244852 () Bool)

(declare-fun res!830515 () Bool)

(assert (=> b!1244852 (=> (not res!830515) (not e!705730))))

(assert (=> b!1244852 (= res!830515 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39164 a!3892)) (= newFrom!287 (size!39164 a!3892)) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244853 () Bool)

(assert (=> b!1244853 (= e!705729 (contains!7453 Nil!27605 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!104134 res!830513) b!1244850))

(assert (= (and b!1244850 res!830514) b!1244852))

(assert (= (and b!1244852 res!830515) b!1244849))

(assert (= (and b!1244849 res!830512) b!1244851))

(assert (= (and b!1244851 (not res!830511)) b!1244853))

(declare-fun m!1147061 () Bool)

(assert (=> start!104134 m!1147061))

(declare-fun m!1147063 () Bool)

(assert (=> b!1244853 m!1147063))

(declare-fun m!1147065 () Bool)

(assert (=> b!1244851 m!1147065))

(declare-fun m!1147067 () Bool)

(assert (=> b!1244850 m!1147067))

(declare-fun m!1147069 () Bool)

(assert (=> b!1244849 m!1147069))

(push 1)

(assert (not b!1244851))

(assert (not start!104134))

(assert (not b!1244850))

(assert (not b!1244849))

(assert (not b!1244853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137175 () Bool)

(declare-fun lt!562790 () Bool)

(declare-fun content!621 (List!27608) (Set (_ BitVec 64)))

(assert (=> d!137175 (= lt!562790 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!621 Nil!27605)))))

(declare-fun e!705756 () Bool)

(assert (=> d!137175 (= lt!562790 e!705756)))

(declare-fun res!830540 () Bool)

(assert (=> d!137175 (=> (not res!830540) (not e!705756))))

(assert (=> d!137175 (= res!830540 (is-Cons!27604 Nil!27605))))

(assert (=> d!137175 (= (contains!7453 Nil!27605 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562790)))

(declare-fun b!1244878 () Bool)

(declare-fun e!705757 () Bool)

(assert (=> b!1244878 (= e!705756 e!705757)))

(declare-fun res!830541 () Bool)

(assert (=> b!1244878 (=> res!830541 e!705757)))

(assert (=> b!1244878 (= res!830541 (= (h!28813 Nil!27605) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244879 () Bool)

(assert (=> b!1244879 (= e!705757 (contains!7453 (t!41084 Nil!27605) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137175 res!830540) b!1244878))

(assert (= (and b!1244878 (not res!830541)) b!1244879))

(declare-fun m!1147089 () Bool)

(assert (=> d!137175 m!1147089))

(declare-fun m!1147091 () Bool)

(assert (=> d!137175 m!1147091))

(declare-fun m!1147093 () Bool)

(assert (=> b!1244879 m!1147093))

(assert (=> b!1244851 d!137175))

(declare-fun d!137183 () Bool)

(assert (=> d!137183 (= (array_inv!29403 a!3892) (bvsge (size!39164 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104134 d!137183))

(declare-fun d!137185 () Bool)

(declare-fun lt!562791 () Bool)

(assert (=> d!137185 (= lt!562791 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!621 Nil!27605)))))

(declare-fun e!705774 () Bool)

(assert (=> d!137185 (= lt!562791 e!705774)))

(declare-fun res!830554 () Bool)

(assert (=> d!137185 (=> (not res!830554) (not e!705774))))

(assert (=> d!137185 (= res!830554 (is-Cons!27604 Nil!27605))))

(assert (=> d!137185 (= (contains!7453 Nil!27605 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562791)))

(declare-fun b!1244900 () Bool)

(declare-fun e!705775 () Bool)

(assert (=> b!1244900 (= e!705774 e!705775)))

