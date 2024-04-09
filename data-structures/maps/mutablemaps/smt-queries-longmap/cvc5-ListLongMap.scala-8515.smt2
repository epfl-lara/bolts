; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103920 () Bool)

(assert start!103920)

(declare-fun b!1243253 () Bool)

(declare-fun res!829156 () Bool)

(declare-fun e!704885 () Bool)

(assert (=> b!1243253 (=> (not res!829156) (not e!704885))))

(declare-datatypes ((array!79958 0))(
  ( (array!79959 (arr!38568 (Array (_ BitVec 32) (_ BitVec 64))) (size!39105 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79958)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1243253 (= res!829156 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39105 a!3892)) (not (= newFrom!287 (size!39105 a!3892)))))))

(declare-fun b!1243254 () Bool)

(declare-fun res!829164 () Bool)

(assert (=> b!1243254 (=> (not res!829164) (not e!704885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243254 (= res!829164 (validKeyInArray!0 (select (arr!38568 a!3892) from!3270)))))

(declare-fun b!1243255 () Bool)

(declare-fun e!704884 () Bool)

(assert (=> b!1243255 (= e!704885 e!704884)))

(declare-fun res!829157 () Bool)

(assert (=> b!1243255 (=> (not res!829157) (not e!704884))))

(assert (=> b!1243255 (= res!829157 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27549 0))(
  ( (Nil!27546) (Cons!27545 (h!28754 (_ BitVec 64)) (t!41025 List!27549)) )
))
(declare-fun lt!562301 () List!27549)

(assert (=> b!1243255 (= lt!562301 (Cons!27545 (select (arr!38568 a!3892) from!3270) Nil!27546))))

(declare-fun b!1243256 () Bool)

(declare-fun res!829158 () Bool)

(assert (=> b!1243256 (=> (not res!829158) (not e!704884))))

(declare-fun contains!7421 (List!27549 (_ BitVec 64)) Bool)

(assert (=> b!1243256 (= res!829158 (not (contains!7421 Nil!27546 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243257 () Bool)

(declare-fun res!829162 () Bool)

(assert (=> b!1243257 (=> (not res!829162) (not e!704884))))

(declare-fun subseq!632 (List!27549 List!27549) Bool)

(assert (=> b!1243257 (= res!829162 (subseq!632 Nil!27546 lt!562301))))

(declare-fun b!1243258 () Bool)

(declare-fun res!829155 () Bool)

(assert (=> b!1243258 (=> (not res!829155) (not e!704884))))

(assert (=> b!1243258 (= res!829155 (not (contains!7421 lt!562301 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243259 () Bool)

(assert (=> b!1243259 (= e!704884 false)))

(declare-fun lt!562302 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79958 (_ BitVec 32) List!27549) Bool)

(assert (=> b!1243259 (= lt!562302 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562301))))

(declare-datatypes ((Unit!41215 0))(
  ( (Unit!41216) )
))
(declare-fun lt!562303 () Unit!41215)

(declare-fun noDuplicateSubseq!86 (List!27549 List!27549) Unit!41215)

(assert (=> b!1243259 (= lt!562303 (noDuplicateSubseq!86 Nil!27546 lt!562301))))

(declare-fun b!1243260 () Bool)

(declare-fun res!829159 () Bool)

(assert (=> b!1243260 (=> (not res!829159) (not e!704884))))

(assert (=> b!1243260 (= res!829159 (not (contains!7421 Nil!27546 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243262 () Bool)

(declare-fun res!829163 () Bool)

(assert (=> b!1243262 (=> (not res!829163) (not e!704884))))

(assert (=> b!1243262 (= res!829163 (not (contains!7421 lt!562301 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243263 () Bool)

(declare-fun res!829165 () Bool)

(assert (=> b!1243263 (=> (not res!829165) (not e!704885))))

(assert (=> b!1243263 (= res!829165 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27546))))

(declare-fun res!829160 () Bool)

(assert (=> start!103920 (=> (not res!829160) (not e!704885))))

(assert (=> start!103920 (= res!829160 (and (bvslt (size!39105 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39105 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39105 a!3892))))))

(assert (=> start!103920 e!704885))

(declare-fun array_inv!29344 (array!79958) Bool)

(assert (=> start!103920 (array_inv!29344 a!3892)))

(assert (=> start!103920 true))

(declare-fun b!1243261 () Bool)

(declare-fun res!829161 () Bool)

(assert (=> b!1243261 (=> (not res!829161) (not e!704884))))

(declare-fun noDuplicate!2011 (List!27549) Bool)

(assert (=> b!1243261 (= res!829161 (noDuplicate!2011 lt!562301))))

(assert (= (and start!103920 res!829160) b!1243263))

(assert (= (and b!1243263 res!829165) b!1243253))

(assert (= (and b!1243253 res!829156) b!1243254))

(assert (= (and b!1243254 res!829164) b!1243255))

(assert (= (and b!1243255 res!829157) b!1243261))

(assert (= (and b!1243261 res!829161) b!1243262))

(assert (= (and b!1243262 res!829163) b!1243258))

(assert (= (and b!1243258 res!829155) b!1243260))

(assert (= (and b!1243260 res!829159) b!1243256))

(assert (= (and b!1243256 res!829158) b!1243257))

(assert (= (and b!1243257 res!829162) b!1243259))

(declare-fun m!1145865 () Bool)

(assert (=> b!1243263 m!1145865))

(declare-fun m!1145867 () Bool)

(assert (=> b!1243260 m!1145867))

(declare-fun m!1145869 () Bool)

(assert (=> b!1243262 m!1145869))

(declare-fun m!1145871 () Bool)

(assert (=> b!1243254 m!1145871))

(assert (=> b!1243254 m!1145871))

(declare-fun m!1145873 () Bool)

(assert (=> b!1243254 m!1145873))

(declare-fun m!1145875 () Bool)

(assert (=> b!1243259 m!1145875))

(declare-fun m!1145877 () Bool)

(assert (=> b!1243259 m!1145877))

(declare-fun m!1145879 () Bool)

(assert (=> b!1243257 m!1145879))

(assert (=> b!1243255 m!1145871))

(declare-fun m!1145881 () Bool)

(assert (=> b!1243258 m!1145881))

(declare-fun m!1145883 () Bool)

(assert (=> b!1243256 m!1145883))

(declare-fun m!1145885 () Bool)

(assert (=> start!103920 m!1145885))

(declare-fun m!1145887 () Bool)

(assert (=> b!1243261 m!1145887))

(push 1)

