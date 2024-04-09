; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118440 () Bool)

(assert start!118440)

(declare-fun b!1384874 () Bool)

(declare-fun e!784731 () Bool)

(assert (=> b!1384874 (= e!784731 false)))

(declare-datatypes ((Unit!46170 0))(
  ( (Unit!46171) )
))
(declare-fun lt!609063 () Unit!46170)

(declare-fun e!784730 () Unit!46170)

(assert (=> b!1384874 (= lt!609063 e!784730)))

(declare-fun c!128723 () Bool)

(declare-fun e!784732 () Bool)

(assert (=> b!1384874 (= c!128723 e!784732)))

(declare-fun res!926314 () Bool)

(assert (=> b!1384874 (=> (not res!926314) (not e!784732))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384874 (= res!926314 (not (= startIndex!16 i!1065)))))

(declare-fun res!926315 () Bool)

(assert (=> start!118440 (=> (not res!926315) (not e!784731))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118440 (= res!926315 (validMask!0 mask!2987))))

(assert (=> start!118440 e!784731))

(assert (=> start!118440 true))

(declare-datatypes ((array!94661 0))(
  ( (array!94662 (arr!45704 (Array (_ BitVec 32) (_ BitVec 64))) (size!46255 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94661)

(declare-fun array_inv!34649 (array!94661) Bool)

(assert (=> start!118440 (array_inv!34649 a!2938)))

(declare-fun b!1384875 () Bool)

(declare-fun res!926318 () Bool)

(assert (=> b!1384875 (=> (not res!926318) (not e!784731))))

(declare-datatypes ((List!32412 0))(
  ( (Nil!32409) (Cons!32408 (h!33617 (_ BitVec 64)) (t!47113 List!32412)) )
))
(declare-fun arrayNoDuplicates!0 (array!94661 (_ BitVec 32) List!32412) Bool)

(assert (=> b!1384875 (= res!926318 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32409))))

(declare-fun b!1384876 () Bool)

(declare-fun Unit!46172 () Unit!46170)

(assert (=> b!1384876 (= e!784730 Unit!46172)))

(declare-fun b!1384877 () Bool)

(declare-fun res!926317 () Bool)

(assert (=> b!1384877 (=> (not res!926317) (not e!784731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94661 (_ BitVec 32)) Bool)

(assert (=> b!1384877 (= res!926317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384878 () Bool)

(declare-fun lt!609064 () Unit!46170)

(assert (=> b!1384878 (= e!784730 lt!609064)))

(declare-fun lt!609062 () Unit!46170)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46170)

(assert (=> b!1384878 (= lt!609062 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10118 0))(
  ( (MissingZero!10118 (index!42842 (_ BitVec 32))) (Found!10118 (index!42843 (_ BitVec 32))) (Intermediate!10118 (undefined!10930 Bool) (index!42844 (_ BitVec 32)) (x!124346 (_ BitVec 32))) (Undefined!10118) (MissingVacant!10118 (index!42845 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94661 (_ BitVec 32)) SeekEntryResult!10118)

(assert (=> b!1384878 (= (seekEntryOrOpen!0 (select (arr!45704 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45704 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94662 (store (arr!45704 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46255 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46170)

(assert (=> b!1384878 (= lt!609064 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384878 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384879 () Bool)

(declare-fun res!926319 () Bool)

(assert (=> b!1384879 (=> (not res!926319) (not e!784731))))

(assert (=> b!1384879 (= res!926319 (and (= (size!46255 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46255 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46255 a!2938))))))

(declare-fun b!1384880 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384880 (= e!784732 (validKeyInArray!0 (select (arr!45704 a!2938) startIndex!16)))))

(declare-fun b!1384881 () Bool)

(declare-fun res!926316 () Bool)

(assert (=> b!1384881 (=> (not res!926316) (not e!784731))))

(assert (=> b!1384881 (= res!926316 (and (not (= (select (arr!45704 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45704 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384882 () Bool)

(declare-fun res!926313 () Bool)

(assert (=> b!1384882 (=> (not res!926313) (not e!784731))))

(assert (=> b!1384882 (= res!926313 (validKeyInArray!0 (select (arr!45704 a!2938) i!1065)))))

(assert (= (and start!118440 res!926315) b!1384879))

(assert (= (and b!1384879 res!926319) b!1384882))

(assert (= (and b!1384882 res!926313) b!1384875))

(assert (= (and b!1384875 res!926318) b!1384877))

(assert (= (and b!1384877 res!926317) b!1384881))

(assert (= (and b!1384881 res!926316) b!1384874))

(assert (= (and b!1384874 res!926314) b!1384880))

(assert (= (and b!1384874 c!128723) b!1384878))

(assert (= (and b!1384874 (not c!128723)) b!1384876))

(declare-fun m!1270241 () Bool)

(assert (=> b!1384882 m!1270241))

(assert (=> b!1384882 m!1270241))

(declare-fun m!1270243 () Bool)

(assert (=> b!1384882 m!1270243))

(declare-fun m!1270245 () Bool)

(assert (=> b!1384875 m!1270245))

(declare-fun m!1270247 () Bool)

(assert (=> b!1384880 m!1270247))

(assert (=> b!1384880 m!1270247))

(declare-fun m!1270249 () Bool)

(assert (=> b!1384880 m!1270249))

(declare-fun m!1270251 () Bool)

(assert (=> b!1384877 m!1270251))

(declare-fun m!1270253 () Bool)

(assert (=> start!118440 m!1270253))

(declare-fun m!1270255 () Bool)

(assert (=> start!118440 m!1270255))

(declare-fun m!1270257 () Bool)

(assert (=> b!1384878 m!1270257))

(declare-fun m!1270259 () Bool)

(assert (=> b!1384878 m!1270259))

(assert (=> b!1384878 m!1270259))

(declare-fun m!1270261 () Bool)

(assert (=> b!1384878 m!1270261))

(declare-fun m!1270263 () Bool)

(assert (=> b!1384878 m!1270263))

(declare-fun m!1270265 () Bool)

(assert (=> b!1384878 m!1270265))

(assert (=> b!1384878 m!1270247))

(declare-fun m!1270267 () Bool)

(assert (=> b!1384878 m!1270267))

(assert (=> b!1384878 m!1270247))

(declare-fun m!1270269 () Bool)

(assert (=> b!1384878 m!1270269))

(assert (=> b!1384881 m!1270241))

(check-sat (not b!1384880) (not b!1384882) (not b!1384875) (not b!1384878) (not start!118440) (not b!1384877))
