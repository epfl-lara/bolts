; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118666 () Bool)

(assert start!118666)

(declare-fun b!1386791 () Bool)

(declare-datatypes ((Unit!46300 0))(
  ( (Unit!46301) )
))
(declare-fun e!785576 () Unit!46300)

(declare-fun lt!609549 () Unit!46300)

(assert (=> b!1386791 (= e!785576 lt!609549)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94860 0))(
  ( (array!94861 (arr!45802 (Array (_ BitVec 32) (_ BitVec 64))) (size!46353 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94860)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!609550 () Unit!46300)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94860 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46300)

(assert (=> b!1386791 (= lt!609550 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10167 0))(
  ( (MissingZero!10167 (index!43038 (_ BitVec 32))) (Found!10167 (index!43039 (_ BitVec 32))) (Intermediate!10167 (undefined!10979 Bool) (index!43040 (_ BitVec 32)) (x!124659 (_ BitVec 32))) (Undefined!10167) (MissingVacant!10167 (index!43041 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94860 (_ BitVec 32)) SeekEntryResult!10167)

(assert (=> b!1386791 (= (seekEntryOrOpen!0 (select (arr!45802 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45802 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94861 (store (arr!45802 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46353 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94860 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46300)

(assert (=> b!1386791 (= lt!609549 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94860 (_ BitVec 32)) Bool)

(assert (=> b!1386791 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386793 () Bool)

(declare-fun res!928005 () Bool)

(declare-fun e!785575 () Bool)

(assert (=> b!1386793 (=> (not res!928005) (not e!785575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386793 (= res!928005 (validKeyInArray!0 (select (arr!45802 a!2938) i!1065)))))

(declare-fun b!1386794 () Bool)

(declare-fun res!928004 () Bool)

(assert (=> b!1386794 (=> (not res!928004) (not e!785575))))

(assert (=> b!1386794 (= res!928004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386795 () Bool)

(declare-fun Unit!46302 () Unit!46300)

(assert (=> b!1386795 (= e!785576 Unit!46302)))

(declare-fun b!1386796 () Bool)

(assert (=> b!1386796 (= e!785575 false)))

(declare-fun lt!609548 () Unit!46300)

(assert (=> b!1386796 (= lt!609548 e!785576)))

(declare-fun c!128837 () Bool)

(declare-fun e!785574 () Bool)

(assert (=> b!1386796 (= c!128837 e!785574)))

(declare-fun res!928008 () Bool)

(assert (=> b!1386796 (=> (not res!928008) (not e!785574))))

(assert (=> b!1386796 (= res!928008 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386797 () Bool)

(declare-fun res!928002 () Bool)

(assert (=> b!1386797 (=> (not res!928002) (not e!785575))))

(declare-datatypes ((List!32510 0))(
  ( (Nil!32507) (Cons!32506 (h!33715 (_ BitVec 64)) (t!47211 List!32510)) )
))
(declare-fun arrayNoDuplicates!0 (array!94860 (_ BitVec 32) List!32510) Bool)

(assert (=> b!1386797 (= res!928002 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32507))))

(declare-fun b!1386798 () Bool)

(assert (=> b!1386798 (= e!785574 (validKeyInArray!0 (select (arr!45802 a!2938) startIndex!16)))))

(declare-fun b!1386799 () Bool)

(declare-fun res!928007 () Bool)

(assert (=> b!1386799 (=> (not res!928007) (not e!785575))))

(assert (=> b!1386799 (= res!928007 (and (= (size!46353 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46353 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46353 a!2938))))))

(declare-fun res!928006 () Bool)

(assert (=> start!118666 (=> (not res!928006) (not e!785575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118666 (= res!928006 (validMask!0 mask!2987))))

(assert (=> start!118666 e!785575))

(assert (=> start!118666 true))

(declare-fun array_inv!34747 (array!94860) Bool)

(assert (=> start!118666 (array_inv!34747 a!2938)))

(declare-fun b!1386792 () Bool)

(declare-fun res!928003 () Bool)

(assert (=> b!1386792 (=> (not res!928003) (not e!785575))))

(assert (=> b!1386792 (= res!928003 (and (not (= (select (arr!45802 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45802 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!118666 res!928006) b!1386799))

(assert (= (and b!1386799 res!928007) b!1386793))

(assert (= (and b!1386793 res!928005) b!1386797))

(assert (= (and b!1386797 res!928002) b!1386794))

(assert (= (and b!1386794 res!928004) b!1386792))

(assert (= (and b!1386792 res!928003) b!1386796))

(assert (= (and b!1386796 res!928008) b!1386798))

(assert (= (and b!1386796 c!128837) b!1386791))

(assert (= (and b!1386796 (not c!128837)) b!1386795))

(declare-fun m!1272263 () Bool)

(assert (=> b!1386792 m!1272263))

(declare-fun m!1272265 () Bool)

(assert (=> b!1386791 m!1272265))

(declare-fun m!1272267 () Bool)

(assert (=> b!1386791 m!1272267))

(assert (=> b!1386791 m!1272267))

(declare-fun m!1272269 () Bool)

(assert (=> b!1386791 m!1272269))

(declare-fun m!1272271 () Bool)

(assert (=> b!1386791 m!1272271))

(declare-fun m!1272273 () Bool)

(assert (=> b!1386791 m!1272273))

(declare-fun m!1272275 () Bool)

(assert (=> b!1386791 m!1272275))

(declare-fun m!1272277 () Bool)

(assert (=> b!1386791 m!1272277))

(assert (=> b!1386791 m!1272275))

(declare-fun m!1272279 () Bool)

(assert (=> b!1386791 m!1272279))

(declare-fun m!1272281 () Bool)

(assert (=> b!1386794 m!1272281))

(declare-fun m!1272283 () Bool)

(assert (=> b!1386797 m!1272283))

(assert (=> b!1386793 m!1272263))

(assert (=> b!1386793 m!1272263))

(declare-fun m!1272285 () Bool)

(assert (=> b!1386793 m!1272285))

(assert (=> b!1386798 m!1272275))

(assert (=> b!1386798 m!1272275))

(declare-fun m!1272287 () Bool)

(assert (=> b!1386798 m!1272287))

(declare-fun m!1272289 () Bool)

(assert (=> start!118666 m!1272289))

(declare-fun m!1272291 () Bool)

(assert (=> start!118666 m!1272291))

(push 1)

(assert (not b!1386794))

(assert (not b!1386793))

(assert (not start!118666))

(assert (not b!1386797))

(assert (not b!1386791))

(assert (not b!1386798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

