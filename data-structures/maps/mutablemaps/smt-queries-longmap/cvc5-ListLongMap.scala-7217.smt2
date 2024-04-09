; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92400 () Bool)

(assert start!92400)

(declare-fun b!1050024 () Bool)

(declare-fun res!699269 () Bool)

(declare-fun e!595850 () Bool)

(assert (=> b!1050024 (=> (not res!699269) (not e!595850))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050024 (= res!699269 (validKeyInArray!0 k!2747))))

(declare-fun b!1050025 () Bool)

(declare-fun e!595854 () Bool)

(assert (=> b!1050025 (= e!595850 e!595854)))

(declare-fun res!699264 () Bool)

(assert (=> b!1050025 (=> (not res!699264) (not e!595854))))

(declare-datatypes ((array!66149 0))(
  ( (array!66150 (arr!31810 (Array (_ BitVec 32) (_ BitVec 64))) (size!32347 (_ BitVec 32))) )
))
(declare-fun lt!463757 () array!66149)

(declare-fun arrayContainsKey!0 (array!66149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050025 (= res!699264 (arrayContainsKey!0 lt!463757 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66149)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050025 (= lt!463757 (array!66150 (store (arr!31810 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32347 a!3488)))))

(declare-fun b!1050026 () Bool)

(declare-fun res!699261 () Bool)

(assert (=> b!1050026 (=> (not res!699261) (not e!595850))))

(declare-datatypes ((List!22253 0))(
  ( (Nil!22250) (Cons!22249 (h!23458 (_ BitVec 64)) (t!31567 List!22253)) )
))
(declare-fun arrayNoDuplicates!0 (array!66149 (_ BitVec 32) List!22253) Bool)

(assert (=> b!1050026 (= res!699261 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22250))))

(declare-fun b!1050027 () Bool)

(declare-fun e!595849 () Bool)

(declare-fun e!595851 () Bool)

(assert (=> b!1050027 (= e!595849 e!595851)))

(declare-fun res!699265 () Bool)

(assert (=> b!1050027 (=> res!699265 e!595851)))

(declare-fun lt!463759 () (_ BitVec 32))

(assert (=> b!1050027 (= res!699265 (bvsle lt!463759 i!1381))))

(declare-fun b!1050028 () Bool)

(declare-fun e!595855 () Bool)

(declare-fun e!595853 () Bool)

(assert (=> b!1050028 (= e!595855 e!595853)))

(declare-fun res!699270 () Bool)

(assert (=> b!1050028 (=> res!699270 e!595853)))

(assert (=> b!1050028 (= res!699270 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32347 a!3488)))))

(assert (=> b!1050028 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34349 0))(
  ( (Unit!34350) )
))
(declare-fun lt!463755 () Unit!34349)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66149 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34349)

(assert (=> b!1050028 (= lt!463755 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463759 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1050028 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22250)))

(declare-fun lt!463758 () Unit!34349)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66149 (_ BitVec 32) (_ BitVec 32)) Unit!34349)

(assert (=> b!1050028 (= lt!463758 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050029 () Bool)

(assert (=> b!1050029 (= e!595851 (arrayContainsKey!0 a!3488 k!2747 lt!463759))))

(declare-fun b!1050030 () Bool)

(declare-fun res!699267 () Bool)

(assert (=> b!1050030 (=> res!699267 e!595853)))

(declare-fun noDuplicate!1530 (List!22253) Bool)

(assert (=> b!1050030 (= res!699267 (not (noDuplicate!1530 Nil!22250)))))

(declare-fun b!1050031 () Bool)

(declare-fun res!699266 () Bool)

(assert (=> b!1050031 (=> (not res!699266) (not e!595850))))

(assert (=> b!1050031 (= res!699266 (= (select (arr!31810 a!3488) i!1381) k!2747))))

(declare-fun b!1050032 () Bool)

(declare-fun e!595856 () Bool)

(assert (=> b!1050032 (= e!595854 e!595856)))

(declare-fun res!699260 () Bool)

(assert (=> b!1050032 (=> (not res!699260) (not e!595856))))

(assert (=> b!1050032 (= res!699260 (not (= lt!463759 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66149 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050032 (= lt!463759 (arrayScanForKey!0 lt!463757 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050033 () Bool)

(assert (=> b!1050033 (= e!595853 true)))

(declare-fun lt!463756 () Bool)

(declare-fun contains!6145 (List!22253 (_ BitVec 64)) Bool)

(assert (=> b!1050033 (= lt!463756 (contains!6145 Nil!22250 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!699263 () Bool)

(assert (=> start!92400 (=> (not res!699263) (not e!595850))))

(assert (=> start!92400 (= res!699263 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32347 a!3488)) (bvslt (size!32347 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92400 e!595850))

(assert (=> start!92400 true))

(declare-fun array_inv!24432 (array!66149) Bool)

(assert (=> start!92400 (array_inv!24432 a!3488)))

(declare-fun b!1050034 () Bool)

(assert (=> b!1050034 (= e!595856 (not e!595855))))

(declare-fun res!699262 () Bool)

(assert (=> b!1050034 (=> res!699262 e!595855)))

(assert (=> b!1050034 (= res!699262 (bvsle lt!463759 i!1381))))

(assert (=> b!1050034 e!595849))

(declare-fun res!699268 () Bool)

(assert (=> b!1050034 (=> (not res!699268) (not e!595849))))

(assert (=> b!1050034 (= res!699268 (= (select (store (arr!31810 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463759) k!2747))))

(declare-fun b!1050035 () Bool)

(declare-fun res!699259 () Bool)

(assert (=> b!1050035 (=> res!699259 e!595853)))

(assert (=> b!1050035 (= res!699259 (contains!6145 Nil!22250 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92400 res!699263) b!1050026))

(assert (= (and b!1050026 res!699261) b!1050024))

(assert (= (and b!1050024 res!699269) b!1050031))

(assert (= (and b!1050031 res!699266) b!1050025))

(assert (= (and b!1050025 res!699264) b!1050032))

(assert (= (and b!1050032 res!699260) b!1050034))

(assert (= (and b!1050034 res!699268) b!1050027))

(assert (= (and b!1050027 (not res!699265)) b!1050029))

(assert (= (and b!1050034 (not res!699262)) b!1050028))

(assert (= (and b!1050028 (not res!699270)) b!1050030))

(assert (= (and b!1050030 (not res!699267)) b!1050035))

(assert (= (and b!1050035 (not res!699259)) b!1050033))

(declare-fun m!970857 () Bool)

(assert (=> b!1050025 m!970857))

(declare-fun m!970859 () Bool)

(assert (=> b!1050025 m!970859))

(declare-fun m!970861 () Bool)

(assert (=> b!1050024 m!970861))

(declare-fun m!970863 () Bool)

(assert (=> start!92400 m!970863))

(declare-fun m!970865 () Bool)

(assert (=> b!1050031 m!970865))

(declare-fun m!970867 () Bool)

(assert (=> b!1050030 m!970867))

(declare-fun m!970869 () Bool)

(assert (=> b!1050032 m!970869))

(declare-fun m!970871 () Bool)

(assert (=> b!1050026 m!970871))

(declare-fun m!970873 () Bool)

(assert (=> b!1050028 m!970873))

(declare-fun m!970875 () Bool)

(assert (=> b!1050028 m!970875))

(declare-fun m!970877 () Bool)

(assert (=> b!1050028 m!970877))

(declare-fun m!970879 () Bool)

(assert (=> b!1050028 m!970879))

(assert (=> b!1050034 m!970859))

(declare-fun m!970881 () Bool)

(assert (=> b!1050034 m!970881))

(declare-fun m!970883 () Bool)

(assert (=> b!1050033 m!970883))

(declare-fun m!970885 () Bool)

(assert (=> b!1050029 m!970885))

(declare-fun m!970887 () Bool)

(assert (=> b!1050035 m!970887))

(push 1)

