; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103916 () Bool)

(assert start!103916)

(declare-fun b!1243187 () Bool)

(declare-fun res!829097 () Bool)

(declare-fun e!704866 () Bool)

(assert (=> b!1243187 (=> (not res!829097) (not e!704866))))

(declare-datatypes ((List!27547 0))(
  ( (Nil!27544) (Cons!27543 (h!28752 (_ BitVec 64)) (t!41023 List!27547)) )
))
(declare-fun lt!562284 () List!27547)

(declare-fun noDuplicate!2009 (List!27547) Bool)

(assert (=> b!1243187 (= res!829097 (noDuplicate!2009 lt!562284))))

(declare-fun b!1243188 () Bool)

(declare-fun res!829094 () Bool)

(assert (=> b!1243188 (=> (not res!829094) (not e!704866))))

(declare-fun contains!7419 (List!27547 (_ BitVec 64)) Bool)

(assert (=> b!1243188 (= res!829094 (not (contains!7419 lt!562284 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243189 () Bool)

(declare-fun res!829095 () Bool)

(declare-fun e!704865 () Bool)

(assert (=> b!1243189 (=> (not res!829095) (not e!704865))))

(declare-datatypes ((array!79954 0))(
  ( (array!79955 (arr!38566 (Array (_ BitVec 32) (_ BitVec 64))) (size!39103 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79954)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79954 (_ BitVec 32) List!27547) Bool)

(assert (=> b!1243189 (= res!829095 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27544))))

(declare-fun b!1243190 () Bool)

(declare-fun res!829098 () Bool)

(assert (=> b!1243190 (=> (not res!829098) (not e!704866))))

(assert (=> b!1243190 (= res!829098 (not (contains!7419 Nil!27544 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243191 () Bool)

(declare-fun res!829099 () Bool)

(assert (=> b!1243191 (=> (not res!829099) (not e!704865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243191 (= res!829099 (validKeyInArray!0 (select (arr!38566 a!3892) from!3270)))))

(declare-fun b!1243192 () Bool)

(assert (=> b!1243192 (= e!704865 e!704866)))

(declare-fun res!829089 () Bool)

(assert (=> b!1243192 (=> (not res!829089) (not e!704866))))

(assert (=> b!1243192 (= res!829089 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243192 (= lt!562284 (Cons!27543 (select (arr!38566 a!3892) from!3270) Nil!27544))))

(declare-fun res!829090 () Bool)

(assert (=> start!103916 (=> (not res!829090) (not e!704865))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103916 (= res!829090 (and (bvslt (size!39103 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39103 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39103 a!3892))))))

(assert (=> start!103916 e!704865))

(declare-fun array_inv!29342 (array!79954) Bool)

(assert (=> start!103916 (array_inv!29342 a!3892)))

(assert (=> start!103916 true))

(declare-fun b!1243193 () Bool)

(declare-fun res!829096 () Bool)

(assert (=> b!1243193 (=> (not res!829096) (not e!704866))))

(declare-fun subseq!630 (List!27547 List!27547) Bool)

(assert (=> b!1243193 (= res!829096 (subseq!630 Nil!27544 lt!562284))))

(declare-fun b!1243194 () Bool)

(assert (=> b!1243194 (= e!704866 false)))

(declare-fun lt!562285 () Bool)

(assert (=> b!1243194 (= lt!562285 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562284))))

(declare-datatypes ((Unit!41211 0))(
  ( (Unit!41212) )
))
(declare-fun lt!562283 () Unit!41211)

(declare-fun noDuplicateSubseq!84 (List!27547 List!27547) Unit!41211)

(assert (=> b!1243194 (= lt!562283 (noDuplicateSubseq!84 Nil!27544 lt!562284))))

(declare-fun b!1243195 () Bool)

(declare-fun res!829093 () Bool)

(assert (=> b!1243195 (=> (not res!829093) (not e!704865))))

(assert (=> b!1243195 (= res!829093 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39103 a!3892)) (not (= newFrom!287 (size!39103 a!3892)))))))

(declare-fun b!1243196 () Bool)

(declare-fun res!829092 () Bool)

(assert (=> b!1243196 (=> (not res!829092) (not e!704866))))

(assert (=> b!1243196 (= res!829092 (not (contains!7419 Nil!27544 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243197 () Bool)

(declare-fun res!829091 () Bool)

(assert (=> b!1243197 (=> (not res!829091) (not e!704866))))

(assert (=> b!1243197 (= res!829091 (not (contains!7419 lt!562284 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103916 res!829090) b!1243189))

(assert (= (and b!1243189 res!829095) b!1243195))

(assert (= (and b!1243195 res!829093) b!1243191))

(assert (= (and b!1243191 res!829099) b!1243192))

(assert (= (and b!1243192 res!829089) b!1243187))

(assert (= (and b!1243187 res!829097) b!1243197))

(assert (= (and b!1243197 res!829091) b!1243188))

(assert (= (and b!1243188 res!829094) b!1243190))

(assert (= (and b!1243190 res!829098) b!1243196))

(assert (= (and b!1243196 res!829092) b!1243193))

(assert (= (and b!1243193 res!829096) b!1243194))

(declare-fun m!1145817 () Bool)

(assert (=> b!1243190 m!1145817))

(declare-fun m!1145819 () Bool)

(assert (=> b!1243189 m!1145819))

(declare-fun m!1145821 () Bool)

(assert (=> b!1243197 m!1145821))

(declare-fun m!1145823 () Bool)

(assert (=> b!1243188 m!1145823))

(declare-fun m!1145825 () Bool)

(assert (=> b!1243192 m!1145825))

(declare-fun m!1145827 () Bool)

(assert (=> start!103916 m!1145827))

(assert (=> b!1243191 m!1145825))

(assert (=> b!1243191 m!1145825))

(declare-fun m!1145829 () Bool)

(assert (=> b!1243191 m!1145829))

(declare-fun m!1145831 () Bool)

(assert (=> b!1243194 m!1145831))

(declare-fun m!1145833 () Bool)

(assert (=> b!1243194 m!1145833))

(declare-fun m!1145835 () Bool)

(assert (=> b!1243187 m!1145835))

(declare-fun m!1145837 () Bool)

(assert (=> b!1243193 m!1145837))

(declare-fun m!1145839 () Bool)

(assert (=> b!1243196 m!1145839))

(check-sat (not b!1243194) (not start!103916) (not b!1243189) (not b!1243191) (not b!1243193) (not b!1243188) (not b!1243190) (not b!1243187) (not b!1243196) (not b!1243197))
(check-sat)
