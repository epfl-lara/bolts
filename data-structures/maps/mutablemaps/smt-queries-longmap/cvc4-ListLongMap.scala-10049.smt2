; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118442 () Bool)

(assert start!118442)

(declare-fun b!1384902 () Bool)

(declare-fun res!926338 () Bool)

(declare-fun e!784745 () Bool)

(assert (=> b!1384902 (=> (not res!926338) (not e!784745))))

(declare-datatypes ((array!94663 0))(
  ( (array!94664 (arr!45705 (Array (_ BitVec 32) (_ BitVec 64))) (size!46256 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94663)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384902 (= res!926338 (and (not (= (select (arr!45705 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45705 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384903 () Bool)

(declare-fun res!926335 () Bool)

(assert (=> b!1384903 (=> (not res!926335) (not e!784745))))

(declare-datatypes ((List!32413 0))(
  ( (Nil!32410) (Cons!32409 (h!33618 (_ BitVec 64)) (t!47114 List!32413)) )
))
(declare-fun arrayNoDuplicates!0 (array!94663 (_ BitVec 32) List!32413) Bool)

(assert (=> b!1384903 (= res!926335 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32410))))

(declare-fun b!1384904 () Bool)

(declare-datatypes ((Unit!46173 0))(
  ( (Unit!46174) )
))
(declare-fun e!784743 () Unit!46173)

(declare-fun Unit!46175 () Unit!46173)

(assert (=> b!1384904 (= e!784743 Unit!46175)))

(declare-fun b!1384905 () Bool)

(assert (=> b!1384905 (= e!784745 false)))

(declare-fun lt!609071 () Unit!46173)

(assert (=> b!1384905 (= lt!609071 e!784743)))

(declare-fun c!128726 () Bool)

(declare-fun e!784744 () Bool)

(assert (=> b!1384905 (= c!128726 e!784744)))

(declare-fun res!926334 () Bool)

(assert (=> b!1384905 (=> (not res!926334) (not e!784744))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1384905 (= res!926334 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384906 () Bool)

(declare-fun res!926340 () Bool)

(assert (=> b!1384906 (=> (not res!926340) (not e!784745))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94663 (_ BitVec 32)) Bool)

(assert (=> b!1384906 (= res!926340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384907 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384907 (= e!784744 (validKeyInArray!0 (select (arr!45705 a!2938) startIndex!16)))))

(declare-fun b!1384908 () Bool)

(declare-fun res!926339 () Bool)

(assert (=> b!1384908 (=> (not res!926339) (not e!784745))))

(assert (=> b!1384908 (= res!926339 (validKeyInArray!0 (select (arr!45705 a!2938) i!1065)))))

(declare-fun b!1384909 () Bool)

(declare-fun res!926337 () Bool)

(assert (=> b!1384909 (=> (not res!926337) (not e!784745))))

(assert (=> b!1384909 (= res!926337 (and (= (size!46256 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46256 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46256 a!2938))))))

(declare-fun b!1384901 () Bool)

(declare-fun lt!609072 () Unit!46173)

(assert (=> b!1384901 (= e!784743 lt!609072)))

(declare-fun lt!609073 () Unit!46173)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46173)

(assert (=> b!1384901 (= lt!609073 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10119 0))(
  ( (MissingZero!10119 (index!42846 (_ BitVec 32))) (Found!10119 (index!42847 (_ BitVec 32))) (Intermediate!10119 (undefined!10931 Bool) (index!42848 (_ BitVec 32)) (x!124347 (_ BitVec 32))) (Undefined!10119) (MissingVacant!10119 (index!42849 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94663 (_ BitVec 32)) SeekEntryResult!10119)

(assert (=> b!1384901 (= (seekEntryOrOpen!0 (select (arr!45705 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45705 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94664 (store (arr!45705 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46256 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46173)

(assert (=> b!1384901 (= lt!609072 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384901 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun res!926336 () Bool)

(assert (=> start!118442 (=> (not res!926336) (not e!784745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118442 (= res!926336 (validMask!0 mask!2987))))

(assert (=> start!118442 e!784745))

(assert (=> start!118442 true))

(declare-fun array_inv!34650 (array!94663) Bool)

(assert (=> start!118442 (array_inv!34650 a!2938)))

(assert (= (and start!118442 res!926336) b!1384909))

(assert (= (and b!1384909 res!926337) b!1384908))

(assert (= (and b!1384908 res!926339) b!1384903))

(assert (= (and b!1384903 res!926335) b!1384906))

(assert (= (and b!1384906 res!926340) b!1384902))

(assert (= (and b!1384902 res!926338) b!1384905))

(assert (= (and b!1384905 res!926334) b!1384907))

(assert (= (and b!1384905 c!128726) b!1384901))

(assert (= (and b!1384905 (not c!128726)) b!1384904))

(declare-fun m!1270271 () Bool)

(assert (=> b!1384908 m!1270271))

(assert (=> b!1384908 m!1270271))

(declare-fun m!1270273 () Bool)

(assert (=> b!1384908 m!1270273))

(declare-fun m!1270275 () Bool)

(assert (=> b!1384903 m!1270275))

(declare-fun m!1270277 () Bool)

(assert (=> b!1384906 m!1270277))

(declare-fun m!1270279 () Bool)

(assert (=> b!1384907 m!1270279))

(assert (=> b!1384907 m!1270279))

(declare-fun m!1270281 () Bool)

(assert (=> b!1384907 m!1270281))

(declare-fun m!1270283 () Bool)

(assert (=> start!118442 m!1270283))

(declare-fun m!1270285 () Bool)

(assert (=> start!118442 m!1270285))

(assert (=> b!1384902 m!1270271))

(declare-fun m!1270287 () Bool)

(assert (=> b!1384901 m!1270287))

(declare-fun m!1270289 () Bool)

(assert (=> b!1384901 m!1270289))

(assert (=> b!1384901 m!1270289))

(declare-fun m!1270291 () Bool)

(assert (=> b!1384901 m!1270291))

(declare-fun m!1270293 () Bool)

(assert (=> b!1384901 m!1270293))

(declare-fun m!1270295 () Bool)

(assert (=> b!1384901 m!1270295))

(assert (=> b!1384901 m!1270279))

(declare-fun m!1270297 () Bool)

(assert (=> b!1384901 m!1270297))

(assert (=> b!1384901 m!1270279))

(declare-fun m!1270299 () Bool)

(assert (=> b!1384901 m!1270299))

(push 1)

(assert (not b!1384906))

(assert (not start!118442))

(assert (not b!1384901))

(assert (not b!1384907))

(assert (not b!1384908))

(assert (not b!1384903))

(check-sat)

