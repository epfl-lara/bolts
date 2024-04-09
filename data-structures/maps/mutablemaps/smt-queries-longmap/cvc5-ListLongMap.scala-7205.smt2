; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92328 () Bool)

(assert start!92328)

(declare-fun b!1048857 () Bool)

(declare-fun res!698097 () Bool)

(declare-fun e!595033 () Bool)

(assert (=> b!1048857 (=> (not res!698097) (not e!595033))))

(declare-datatypes ((array!66077 0))(
  ( (array!66078 (arr!31774 (Array (_ BitVec 32) (_ BitVec 64))) (size!32311 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66077)

(declare-datatypes ((List!22217 0))(
  ( (Nil!22214) (Cons!22213 (h!23422 (_ BitVec 64)) (t!31531 List!22217)) )
))
(declare-fun arrayNoDuplicates!0 (array!66077 (_ BitVec 32) List!22217) Bool)

(assert (=> b!1048857 (= res!698097 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22214))))

(declare-fun b!1048858 () Bool)

(declare-fun e!595030 () Bool)

(declare-fun e!595032 () Bool)

(assert (=> b!1048858 (= e!595030 (not e!595032))))

(declare-fun res!698099 () Bool)

(assert (=> b!1048858 (=> res!698099 e!595032)))

(declare-fun lt!463301 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048858 (= res!698099 (bvsle lt!463301 i!1381))))

(declare-fun e!595034 () Bool)

(assert (=> b!1048858 e!595034))

(declare-fun res!698092 () Bool)

(assert (=> b!1048858 (=> (not res!698092) (not e!595034))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1048858 (= res!698092 (= (select (store (arr!31774 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463301) k!2747))))

(declare-fun res!698096 () Bool)

(assert (=> start!92328 (=> (not res!698096) (not e!595033))))

(assert (=> start!92328 (= res!698096 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32311 a!3488)) (bvslt (size!32311 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92328 e!595033))

(assert (=> start!92328 true))

(declare-fun array_inv!24396 (array!66077) Bool)

(assert (=> start!92328 (array_inv!24396 a!3488)))

(declare-fun b!1048859 () Bool)

(declare-fun res!698094 () Bool)

(assert (=> b!1048859 (=> (not res!698094) (not e!595033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048859 (= res!698094 (validKeyInArray!0 k!2747))))

(declare-fun b!1048860 () Bool)

(declare-fun res!698100 () Bool)

(assert (=> b!1048860 (=> (not res!698100) (not e!595033))))

(assert (=> b!1048860 (= res!698100 (= (select (arr!31774 a!3488) i!1381) k!2747))))

(declare-fun b!1048861 () Bool)

(declare-fun e!595029 () Bool)

(assert (=> b!1048861 (= e!595029 e!595030)))

(declare-fun res!698098 () Bool)

(assert (=> b!1048861 (=> (not res!698098) (not e!595030))))

(assert (=> b!1048861 (= res!698098 (not (= lt!463301 i!1381)))))

(declare-fun lt!463302 () array!66077)

(declare-fun arrayScanForKey!0 (array!66077 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048861 (= lt!463301 (arrayScanForKey!0 lt!463302 k!2747 #b00000000000000000000000000000000))))

(declare-fun e!595031 () Bool)

(declare-fun b!1048862 () Bool)

(declare-fun arrayContainsKey!0 (array!66077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048862 (= e!595031 (arrayContainsKey!0 a!3488 k!2747 lt!463301))))

(declare-fun b!1048863 () Bool)

(assert (=> b!1048863 (= e!595032 true)))

(assert (=> b!1048863 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22214)))

(declare-datatypes ((Unit!34277 0))(
  ( (Unit!34278) )
))
(declare-fun lt!463303 () Unit!34277)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66077 (_ BitVec 32) (_ BitVec 32)) Unit!34277)

(assert (=> b!1048863 (= lt!463303 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1048864 () Bool)

(assert (=> b!1048864 (= e!595033 e!595029)))

(declare-fun res!698095 () Bool)

(assert (=> b!1048864 (=> (not res!698095) (not e!595029))))

(assert (=> b!1048864 (= res!698095 (arrayContainsKey!0 lt!463302 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048864 (= lt!463302 (array!66078 (store (arr!31774 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32311 a!3488)))))

(declare-fun b!1048865 () Bool)

(assert (=> b!1048865 (= e!595034 e!595031)))

(declare-fun res!698093 () Bool)

(assert (=> b!1048865 (=> res!698093 e!595031)))

(assert (=> b!1048865 (= res!698093 (bvsle lt!463301 i!1381))))

(assert (= (and start!92328 res!698096) b!1048857))

(assert (= (and b!1048857 res!698097) b!1048859))

(assert (= (and b!1048859 res!698094) b!1048860))

(assert (= (and b!1048860 res!698100) b!1048864))

(assert (= (and b!1048864 res!698095) b!1048861))

(assert (= (and b!1048861 res!698098) b!1048858))

(assert (= (and b!1048858 res!698092) b!1048865))

(assert (= (and b!1048865 (not res!698093)) b!1048862))

(assert (= (and b!1048858 (not res!698099)) b!1048863))

(declare-fun m!969855 () Bool)

(assert (=> b!1048860 m!969855))

(declare-fun m!969857 () Bool)

(assert (=> b!1048863 m!969857))

(declare-fun m!969859 () Bool)

(assert (=> b!1048863 m!969859))

(declare-fun m!969861 () Bool)

(assert (=> b!1048857 m!969861))

(declare-fun m!969863 () Bool)

(assert (=> start!92328 m!969863))

(declare-fun m!969865 () Bool)

(assert (=> b!1048859 m!969865))

(declare-fun m!969867 () Bool)

(assert (=> b!1048861 m!969867))

(declare-fun m!969869 () Bool)

(assert (=> b!1048858 m!969869))

(declare-fun m!969871 () Bool)

(assert (=> b!1048858 m!969871))

(declare-fun m!969873 () Bool)

(assert (=> b!1048864 m!969873))

(assert (=> b!1048864 m!969869))

(declare-fun m!969875 () Bool)

(assert (=> b!1048862 m!969875))

(push 1)

