; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103918 () Bool)

(assert start!103918)

(declare-fun b!1243220 () Bool)

(declare-fun res!829131 () Bool)

(declare-fun e!704876 () Bool)

(assert (=> b!1243220 (=> (not res!829131) (not e!704876))))

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((array!79956 0))(
  ( (array!79957 (arr!38567 (Array (_ BitVec 32) (_ BitVec 64))) (size!39104 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79956)

(assert (=> b!1243220 (= res!829131 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39104 a!3892)) (not (= newFrom!287 (size!39104 a!3892)))))))

(declare-fun b!1243221 () Bool)

(declare-fun res!829126 () Bool)

(assert (=> b!1243221 (=> (not res!829126) (not e!704876))))

(declare-datatypes ((List!27548 0))(
  ( (Nil!27545) (Cons!27544 (h!28753 (_ BitVec 64)) (t!41024 List!27548)) )
))
(declare-fun arrayNoDuplicates!0 (array!79956 (_ BitVec 32) List!27548) Bool)

(assert (=> b!1243221 (= res!829126 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27545))))

(declare-fun b!1243222 () Bool)

(declare-fun e!704874 () Bool)

(assert (=> b!1243222 (= e!704874 false)))

(declare-fun lt!562293 () Bool)

(declare-fun lt!562294 () List!27548)

(assert (=> b!1243222 (= lt!562293 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562294))))

(declare-datatypes ((Unit!41213 0))(
  ( (Unit!41214) )
))
(declare-fun lt!562292 () Unit!41213)

(declare-fun noDuplicateSubseq!85 (List!27548 List!27548) Unit!41213)

(assert (=> b!1243222 (= lt!562292 (noDuplicateSubseq!85 Nil!27545 lt!562294))))

(declare-fun b!1243223 () Bool)

(declare-fun res!829132 () Bool)

(assert (=> b!1243223 (=> (not res!829132) (not e!704874))))

(declare-fun contains!7420 (List!27548 (_ BitVec 64)) Bool)

(assert (=> b!1243223 (= res!829132 (not (contains!7420 Nil!27545 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243224 () Bool)

(declare-fun res!829124 () Bool)

(assert (=> b!1243224 (=> (not res!829124) (not e!704874))))

(assert (=> b!1243224 (= res!829124 (not (contains!7420 lt!562294 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829123 () Bool)

(assert (=> start!103918 (=> (not res!829123) (not e!704876))))

(assert (=> start!103918 (= res!829123 (and (bvslt (size!39104 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39104 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39104 a!3892))))))

(assert (=> start!103918 e!704876))

(declare-fun array_inv!29343 (array!79956) Bool)

(assert (=> start!103918 (array_inv!29343 a!3892)))

(assert (=> start!103918 true))

(declare-fun b!1243225 () Bool)

(declare-fun res!829128 () Bool)

(assert (=> b!1243225 (=> (not res!829128) (not e!704876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243225 (= res!829128 (validKeyInArray!0 (select (arr!38567 a!3892) from!3270)))))

(declare-fun b!1243226 () Bool)

(assert (=> b!1243226 (= e!704876 e!704874)))

(declare-fun res!829127 () Bool)

(assert (=> b!1243226 (=> (not res!829127) (not e!704874))))

(assert (=> b!1243226 (= res!829127 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243226 (= lt!562294 (Cons!27544 (select (arr!38567 a!3892) from!3270) Nil!27545))))

(declare-fun b!1243227 () Bool)

(declare-fun res!829130 () Bool)

(assert (=> b!1243227 (=> (not res!829130) (not e!704874))))

(declare-fun subseq!631 (List!27548 List!27548) Bool)

(assert (=> b!1243227 (= res!829130 (subseq!631 Nil!27545 lt!562294))))

(declare-fun b!1243228 () Bool)

(declare-fun res!829125 () Bool)

(assert (=> b!1243228 (=> (not res!829125) (not e!704874))))

(assert (=> b!1243228 (= res!829125 (not (contains!7420 lt!562294 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243229 () Bool)

(declare-fun res!829129 () Bool)

(assert (=> b!1243229 (=> (not res!829129) (not e!704874))))

(declare-fun noDuplicate!2010 (List!27548) Bool)

(assert (=> b!1243229 (= res!829129 (noDuplicate!2010 lt!562294))))

(declare-fun b!1243230 () Bool)

(declare-fun res!829122 () Bool)

(assert (=> b!1243230 (=> (not res!829122) (not e!704874))))

(assert (=> b!1243230 (= res!829122 (not (contains!7420 Nil!27545 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103918 res!829123) b!1243221))

(assert (= (and b!1243221 res!829126) b!1243220))

(assert (= (and b!1243220 res!829131) b!1243225))

(assert (= (and b!1243225 res!829128) b!1243226))

(assert (= (and b!1243226 res!829127) b!1243229))

(assert (= (and b!1243229 res!829129) b!1243224))

(assert (= (and b!1243224 res!829124) b!1243228))

(assert (= (and b!1243228 res!829125) b!1243230))

(assert (= (and b!1243230 res!829122) b!1243223))

(assert (= (and b!1243223 res!829132) b!1243227))

(assert (= (and b!1243227 res!829130) b!1243222))

(declare-fun m!1145841 () Bool)

(assert (=> start!103918 m!1145841))

(declare-fun m!1145843 () Bool)

(assert (=> b!1243225 m!1145843))

(assert (=> b!1243225 m!1145843))

(declare-fun m!1145845 () Bool)

(assert (=> b!1243225 m!1145845))

(declare-fun m!1145847 () Bool)

(assert (=> b!1243230 m!1145847))

(declare-fun m!1145849 () Bool)

(assert (=> b!1243227 m!1145849))

(declare-fun m!1145851 () Bool)

(assert (=> b!1243224 m!1145851))

(declare-fun m!1145853 () Bool)

(assert (=> b!1243221 m!1145853))

(assert (=> b!1243226 m!1145843))

(declare-fun m!1145855 () Bool)

(assert (=> b!1243229 m!1145855))

(declare-fun m!1145857 () Bool)

(assert (=> b!1243223 m!1145857))

(declare-fun m!1145859 () Bool)

(assert (=> b!1243228 m!1145859))

(declare-fun m!1145861 () Bool)

(assert (=> b!1243222 m!1145861))

(declare-fun m!1145863 () Bool)

(assert (=> b!1243222 m!1145863))

(push 1)

