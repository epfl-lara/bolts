; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103914 () Bool)

(assert start!103914)

(declare-fun b!1243154 () Bool)

(declare-fun e!704857 () Bool)

(assert (=> b!1243154 (= e!704857 false)))

(declare-fun lt!562275 () Bool)

(declare-datatypes ((array!79952 0))(
  ( (array!79953 (arr!38565 (Array (_ BitVec 32) (_ BitVec 64))) (size!39102 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79952)

(declare-datatypes ((List!27546 0))(
  ( (Nil!27543) (Cons!27542 (h!28751 (_ BitVec 64)) (t!41022 List!27546)) )
))
(declare-fun lt!562274 () List!27546)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79952 (_ BitVec 32) List!27546) Bool)

(assert (=> b!1243154 (= lt!562275 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562274))))

(declare-datatypes ((Unit!41209 0))(
  ( (Unit!41210) )
))
(declare-fun lt!562276 () Unit!41209)

(declare-fun noDuplicateSubseq!83 (List!27546 List!27546) Unit!41209)

(assert (=> b!1243154 (= lt!562276 (noDuplicateSubseq!83 Nil!27543 lt!562274))))

(declare-fun b!1243155 () Bool)

(declare-fun res!829066 () Bool)

(declare-fun e!704858 () Bool)

(assert (=> b!1243155 (=> (not res!829066) (not e!704858))))

(assert (=> b!1243155 (= res!829066 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27543))))

(declare-fun b!1243157 () Bool)

(declare-fun res!829058 () Bool)

(assert (=> b!1243157 (=> (not res!829058) (not e!704857))))

(declare-fun contains!7418 (List!27546 (_ BitVec 64)) Bool)

(assert (=> b!1243157 (= res!829058 (not (contains!7418 Nil!27543 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243158 () Bool)

(declare-fun res!829056 () Bool)

(assert (=> b!1243158 (=> (not res!829056) (not e!704857))))

(assert (=> b!1243158 (= res!829056 (not (contains!7418 lt!562274 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243159 () Bool)

(assert (=> b!1243159 (= e!704858 e!704857)))

(declare-fun res!829063 () Bool)

(assert (=> b!1243159 (=> (not res!829063) (not e!704857))))

(assert (=> b!1243159 (= res!829063 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243159 (= lt!562274 (Cons!27542 (select (arr!38565 a!3892) from!3270) Nil!27543))))

(declare-fun b!1243160 () Bool)

(declare-fun res!829060 () Bool)

(assert (=> b!1243160 (=> (not res!829060) (not e!704858))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1243160 (= res!829060 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39102 a!3892)) (not (= newFrom!287 (size!39102 a!3892)))))))

(declare-fun b!1243161 () Bool)

(declare-fun res!829062 () Bool)

(assert (=> b!1243161 (=> (not res!829062) (not e!704858))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243161 (= res!829062 (validKeyInArray!0 (select (arr!38565 a!3892) from!3270)))))

(declare-fun b!1243162 () Bool)

(declare-fun res!829057 () Bool)

(assert (=> b!1243162 (=> (not res!829057) (not e!704857))))

(assert (=> b!1243162 (= res!829057 (not (contains!7418 lt!562274 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829064 () Bool)

(assert (=> start!103914 (=> (not res!829064) (not e!704858))))

(assert (=> start!103914 (= res!829064 (and (bvslt (size!39102 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39102 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39102 a!3892))))))

(assert (=> start!103914 e!704858))

(declare-fun array_inv!29341 (array!79952) Bool)

(assert (=> start!103914 (array_inv!29341 a!3892)))

(assert (=> start!103914 true))

(declare-fun b!1243156 () Bool)

(declare-fun res!829065 () Bool)

(assert (=> b!1243156 (=> (not res!829065) (not e!704857))))

(assert (=> b!1243156 (= res!829065 (not (contains!7418 Nil!27543 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243163 () Bool)

(declare-fun res!829061 () Bool)

(assert (=> b!1243163 (=> (not res!829061) (not e!704857))))

(declare-fun subseq!629 (List!27546 List!27546) Bool)

(assert (=> b!1243163 (= res!829061 (subseq!629 Nil!27543 lt!562274))))

(declare-fun b!1243164 () Bool)

(declare-fun res!829059 () Bool)

(assert (=> b!1243164 (=> (not res!829059) (not e!704857))))

(declare-fun noDuplicate!2008 (List!27546) Bool)

(assert (=> b!1243164 (= res!829059 (noDuplicate!2008 lt!562274))))

(assert (= (and start!103914 res!829064) b!1243155))

(assert (= (and b!1243155 res!829066) b!1243160))

(assert (= (and b!1243160 res!829060) b!1243161))

(assert (= (and b!1243161 res!829062) b!1243159))

(assert (= (and b!1243159 res!829063) b!1243164))

(assert (= (and b!1243164 res!829059) b!1243158))

(assert (= (and b!1243158 res!829056) b!1243162))

(assert (= (and b!1243162 res!829057) b!1243156))

(assert (= (and b!1243156 res!829065) b!1243157))

(assert (= (and b!1243157 res!829058) b!1243163))

(assert (= (and b!1243163 res!829061) b!1243154))

(declare-fun m!1145793 () Bool)

(assert (=> b!1243157 m!1145793))

(declare-fun m!1145795 () Bool)

(assert (=> b!1243154 m!1145795))

(declare-fun m!1145797 () Bool)

(assert (=> b!1243154 m!1145797))

(declare-fun m!1145799 () Bool)

(assert (=> b!1243159 m!1145799))

(declare-fun m!1145801 () Bool)

(assert (=> start!103914 m!1145801))

(declare-fun m!1145803 () Bool)

(assert (=> b!1243158 m!1145803))

(declare-fun m!1145805 () Bool)

(assert (=> b!1243156 m!1145805))

(declare-fun m!1145807 () Bool)

(assert (=> b!1243155 m!1145807))

(declare-fun m!1145809 () Bool)

(assert (=> b!1243164 m!1145809))

(declare-fun m!1145811 () Bool)

(assert (=> b!1243162 m!1145811))

(assert (=> b!1243161 m!1145799))

(assert (=> b!1243161 m!1145799))

(declare-fun m!1145813 () Bool)

(assert (=> b!1243161 m!1145813))

(declare-fun m!1145815 () Bool)

(assert (=> b!1243163 m!1145815))

(push 1)

