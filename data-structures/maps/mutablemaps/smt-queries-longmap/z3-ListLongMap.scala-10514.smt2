; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123966 () Bool)

(assert start!123966)

(declare-fun b!1435829 () Bool)

(declare-fun res!968927 () Bool)

(declare-fun e!810319 () Bool)

(assert (=> b!1435829 (=> (not res!968927) (not e!810319))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97607 0))(
  ( (array!97608 (arr!47099 (Array (_ BitVec 32) (_ BitVec 64))) (size!47650 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97607)

(assert (=> b!1435829 (= res!968927 (and (= (size!47650 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47650 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47650 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!968926 () Bool)

(assert (=> start!123966 (=> (not res!968926) (not e!810319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123966 (= res!968926 (validMask!0 mask!2687))))

(assert (=> start!123966 e!810319))

(assert (=> start!123966 true))

(declare-fun array_inv!36044 (array!97607) Bool)

(assert (=> start!123966 (array_inv!36044 a!2862)))

(declare-fun b!1435830 () Bool)

(declare-fun res!968931 () Bool)

(assert (=> b!1435830 (=> (not res!968931) (not e!810319))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435830 (= res!968931 (validKeyInArray!0 (select (arr!47099 a!2862) j!93)))))

(declare-fun b!1435831 () Bool)

(declare-fun res!968930 () Bool)

(assert (=> b!1435831 (=> (not res!968930) (not e!810319))))

(assert (=> b!1435831 (= res!968930 (and (bvsle #b00000000000000000000000000000000 (size!47650 a!2862)) (bvslt (size!47650 a!2862) #b01111111111111111111111111111111)))))

(declare-fun b!1435832 () Bool)

(declare-datatypes ((List!33780 0))(
  ( (Nil!33777) (Cons!33776 (h!35111 (_ BitVec 64)) (t!48481 List!33780)) )
))
(declare-fun noDuplicate!2646 (List!33780) Bool)

(assert (=> b!1435832 (= e!810319 (not (noDuplicate!2646 Nil!33777)))))

(declare-fun b!1435833 () Bool)

(declare-fun res!968929 () Bool)

(assert (=> b!1435833 (=> (not res!968929) (not e!810319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97607 (_ BitVec 32)) Bool)

(assert (=> b!1435833 (= res!968929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435834 () Bool)

(declare-fun res!968928 () Bool)

(assert (=> b!1435834 (=> (not res!968928) (not e!810319))))

(assert (=> b!1435834 (= res!968928 (validKeyInArray!0 (select (arr!47099 a!2862) i!1006)))))

(assert (= (and start!123966 res!968926) b!1435829))

(assert (= (and b!1435829 res!968927) b!1435834))

(assert (= (and b!1435834 res!968928) b!1435830))

(assert (= (and b!1435830 res!968931) b!1435833))

(assert (= (and b!1435833 res!968929) b!1435831))

(assert (= (and b!1435831 res!968930) b!1435832))

(declare-fun m!1325247 () Bool)

(assert (=> b!1435830 m!1325247))

(assert (=> b!1435830 m!1325247))

(declare-fun m!1325249 () Bool)

(assert (=> b!1435830 m!1325249))

(declare-fun m!1325251 () Bool)

(assert (=> start!123966 m!1325251))

(declare-fun m!1325253 () Bool)

(assert (=> start!123966 m!1325253))

(declare-fun m!1325255 () Bool)

(assert (=> b!1435833 m!1325255))

(declare-fun m!1325257 () Bool)

(assert (=> b!1435832 m!1325257))

(declare-fun m!1325259 () Bool)

(assert (=> b!1435834 m!1325259))

(assert (=> b!1435834 m!1325259))

(declare-fun m!1325261 () Bool)

(assert (=> b!1435834 m!1325261))

(check-sat (not start!123966) (not b!1435832) (not b!1435834) (not b!1435833) (not b!1435830))
(check-sat)
(get-model)

(declare-fun d!154375 () Bool)

(assert (=> d!154375 (= (validKeyInArray!0 (select (arr!47099 a!2862) i!1006)) (and (not (= (select (arr!47099 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47099 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435834 d!154375))

(declare-fun b!1435861 () Bool)

(declare-fun e!810335 () Bool)

(declare-fun e!810333 () Bool)

(assert (=> b!1435861 (= e!810335 e!810333)))

(declare-fun c!132959 () Bool)

(assert (=> b!1435861 (= c!132959 (validKeyInArray!0 (select (arr!47099 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154377 () Bool)

(declare-fun res!968955 () Bool)

(assert (=> d!154377 (=> res!968955 e!810335)))

(assert (=> d!154377 (= res!968955 (bvsge #b00000000000000000000000000000000 (size!47650 a!2862)))))

(assert (=> d!154377 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810335)))

(declare-fun b!1435862 () Bool)

(declare-fun e!810334 () Bool)

(declare-fun call!67572 () Bool)

(assert (=> b!1435862 (= e!810334 call!67572)))

(declare-fun b!1435863 () Bool)

(assert (=> b!1435863 (= e!810333 e!810334)))

(declare-fun lt!631964 () (_ BitVec 64))

(assert (=> b!1435863 (= lt!631964 (select (arr!47099 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48480 0))(
  ( (Unit!48481) )
))
(declare-fun lt!631965 () Unit!48480)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97607 (_ BitVec 64) (_ BitVec 32)) Unit!48480)

(assert (=> b!1435863 (= lt!631965 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!631964 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1435863 (arrayContainsKey!0 a!2862 lt!631964 #b00000000000000000000000000000000)))

(declare-fun lt!631966 () Unit!48480)

(assert (=> b!1435863 (= lt!631966 lt!631965)))

(declare-fun res!968954 () Bool)

(declare-datatypes ((SeekEntryResult!11393 0))(
  ( (MissingZero!11393 (index!47963 (_ BitVec 32))) (Found!11393 (index!47964 (_ BitVec 32))) (Intermediate!11393 (undefined!12205 Bool) (index!47965 (_ BitVec 32)) (x!129650 (_ BitVec 32))) (Undefined!11393) (MissingVacant!11393 (index!47966 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97607 (_ BitVec 32)) SeekEntryResult!11393)

(assert (=> b!1435863 (= res!968954 (= (seekEntryOrOpen!0 (select (arr!47099 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11393 #b00000000000000000000000000000000)))))

(assert (=> b!1435863 (=> (not res!968954) (not e!810334))))

(declare-fun bm!67569 () Bool)

(assert (=> bm!67569 (= call!67572 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1435864 () Bool)

(assert (=> b!1435864 (= e!810333 call!67572)))

(assert (= (and d!154377 (not res!968955)) b!1435861))

(assert (= (and b!1435861 c!132959) b!1435863))

(assert (= (and b!1435861 (not c!132959)) b!1435864))

(assert (= (and b!1435863 res!968954) b!1435862))

(assert (= (or b!1435862 b!1435864) bm!67569))

(declare-fun m!1325279 () Bool)

(assert (=> b!1435861 m!1325279))

(assert (=> b!1435861 m!1325279))

(declare-fun m!1325281 () Bool)

(assert (=> b!1435861 m!1325281))

(assert (=> b!1435863 m!1325279))

(declare-fun m!1325283 () Bool)

(assert (=> b!1435863 m!1325283))

(declare-fun m!1325285 () Bool)

(assert (=> b!1435863 m!1325285))

(assert (=> b!1435863 m!1325279))

(declare-fun m!1325287 () Bool)

(assert (=> b!1435863 m!1325287))

(declare-fun m!1325289 () Bool)

(assert (=> bm!67569 m!1325289))

(assert (=> b!1435833 d!154377))

(declare-fun d!154387 () Bool)

(declare-fun res!968960 () Bool)

(declare-fun e!810340 () Bool)

(assert (=> d!154387 (=> res!968960 e!810340)))

(get-info :version)

(assert (=> d!154387 (= res!968960 ((_ is Nil!33777) Nil!33777))))

(assert (=> d!154387 (= (noDuplicate!2646 Nil!33777) e!810340)))

(declare-fun b!1435869 () Bool)

(declare-fun e!810341 () Bool)

(assert (=> b!1435869 (= e!810340 e!810341)))

(declare-fun res!968961 () Bool)

(assert (=> b!1435869 (=> (not res!968961) (not e!810341))))

(declare-fun contains!9888 (List!33780 (_ BitVec 64)) Bool)

(assert (=> b!1435869 (= res!968961 (not (contains!9888 (t!48481 Nil!33777) (h!35111 Nil!33777))))))

(declare-fun b!1435870 () Bool)

(assert (=> b!1435870 (= e!810341 (noDuplicate!2646 (t!48481 Nil!33777)))))

(assert (= (and d!154387 (not res!968960)) b!1435869))

(assert (= (and b!1435869 res!968961) b!1435870))

(declare-fun m!1325291 () Bool)

(assert (=> b!1435869 m!1325291))

(declare-fun m!1325293 () Bool)

(assert (=> b!1435870 m!1325293))

(assert (=> b!1435832 d!154387))

(declare-fun d!154389 () Bool)

(assert (=> d!154389 (= (validKeyInArray!0 (select (arr!47099 a!2862) j!93)) (and (not (= (select (arr!47099 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47099 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435830 d!154389))

(declare-fun d!154391 () Bool)

(assert (=> d!154391 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!123966 d!154391))

(declare-fun d!154407 () Bool)

(assert (=> d!154407 (= (array_inv!36044 a!2862) (bvsge (size!47650 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!123966 d!154407))

(check-sat (not bm!67569) (not b!1435869) (not b!1435870) (not b!1435863) (not b!1435861))
(check-sat)
