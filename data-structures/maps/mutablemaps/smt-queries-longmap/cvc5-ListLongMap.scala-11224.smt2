; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131008 () Bool)

(assert start!131008)

(declare-fun b!1536402 () Bool)

(declare-fun res!1053629 () Bool)

(declare-fun e!855175 () Bool)

(assert (=> b!1536402 (=> (not res!1053629) (not e!855175))))

(declare-datatypes ((array!102033 0))(
  ( (array!102034 (arr!49228 (Array (_ BitVec 32) (_ BitVec 64))) (size!49779 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102033)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1536402 (= res!1053629 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49779 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49779 a!2792)) (= (select (arr!49228 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536403 () Bool)

(declare-fun e!855176 () Bool)

(declare-fun e!855173 () Bool)

(assert (=> b!1536403 (= e!855176 e!855173)))

(declare-fun res!1053636 () Bool)

(assert (=> b!1536403 (=> (not res!1053636) (not e!855173))))

(declare-datatypes ((SeekEntryResult!13383 0))(
  ( (MissingZero!13383 (index!55926 (_ BitVec 32))) (Found!13383 (index!55927 (_ BitVec 32))) (Intermediate!13383 (undefined!14195 Bool) (index!55928 (_ BitVec 32)) (x!137668 (_ BitVec 32))) (Undefined!13383) (MissingVacant!13383 (index!55929 (_ BitVec 32))) )
))
(declare-fun lt!664302 () SeekEntryResult!13383)

(declare-fun lt!664301 () SeekEntryResult!13383)

(assert (=> b!1536403 (= res!1053636 (= lt!664302 lt!664301))))

(declare-fun lt!664303 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102033 (_ BitVec 32)) SeekEntryResult!13383)

(assert (=> b!1536403 (= lt!664302 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664303 vacantIndex!5 (select (arr!49228 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536404 () Bool)

(declare-fun res!1053626 () Bool)

(assert (=> b!1536404 (=> (not res!1053626) (not e!855175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102033 (_ BitVec 32)) Bool)

(assert (=> b!1536404 (= res!1053626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536405 () Bool)

(declare-fun res!1053635 () Bool)

(assert (=> b!1536405 (=> (not res!1053635) (not e!855175))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536405 (= res!1053635 (validKeyInArray!0 (select (arr!49228 a!2792) i!951)))))

(declare-fun b!1536406 () Bool)

(declare-fun res!1053627 () Bool)

(assert (=> b!1536406 (=> (not res!1053627) (not e!855175))))

(assert (=> b!1536406 (= res!1053627 (and (= (size!49779 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49779 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49779 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536407 () Bool)

(declare-fun res!1053630 () Bool)

(assert (=> b!1536407 (=> (not res!1053630) (not e!855175))))

(declare-datatypes ((List!35882 0))(
  ( (Nil!35879) (Cons!35878 (h!37324 (_ BitVec 64)) (t!50583 List!35882)) )
))
(declare-fun arrayNoDuplicates!0 (array!102033 (_ BitVec 32) List!35882) Bool)

(assert (=> b!1536407 (= res!1053630 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35879))))

(declare-fun res!1053633 () Bool)

(assert (=> start!131008 (=> (not res!1053633) (not e!855175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131008 (= res!1053633 (validMask!0 mask!2480))))

(assert (=> start!131008 e!855175))

(assert (=> start!131008 true))

(declare-fun array_inv!38173 (array!102033) Bool)

(assert (=> start!131008 (array_inv!38173 a!2792)))

(declare-fun b!1536408 () Bool)

(declare-fun res!1053628 () Bool)

(declare-fun e!855172 () Bool)

(assert (=> b!1536408 (=> (not res!1053628) (not e!855172))))

(assert (=> b!1536408 (= res!1053628 (not (= (select (arr!49228 a!2792) index!463) (select (arr!49228 a!2792) j!64))))))

(declare-fun b!1536409 () Bool)

(assert (=> b!1536409 (= e!855172 e!855176)))

(declare-fun res!1053631 () Bool)

(assert (=> b!1536409 (=> (not res!1053631) (not e!855176))))

(assert (=> b!1536409 (= res!1053631 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664303 #b00000000000000000000000000000000) (bvslt lt!664303 (size!49779 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536409 (= lt!664303 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536410 () Bool)

(declare-fun res!1053632 () Bool)

(assert (=> b!1536410 (=> (not res!1053632) (not e!855175))))

(assert (=> b!1536410 (= res!1053632 (validKeyInArray!0 (select (arr!49228 a!2792) j!64)))))

(declare-fun b!1536411 () Bool)

(assert (=> b!1536411 (= e!855175 e!855172)))

(declare-fun res!1053634 () Bool)

(assert (=> b!1536411 (=> (not res!1053634) (not e!855172))))

(assert (=> b!1536411 (= res!1053634 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49228 a!2792) j!64) a!2792 mask!2480) lt!664301))))

(assert (=> b!1536411 (= lt!664301 (Found!13383 j!64))))

(declare-fun b!1536412 () Bool)

(assert (=> b!1536412 (= e!855173 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (= (select (store (arr!49228 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1536412 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664303 vacantIndex!5 (select (store (arr!49228 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102034 (store (arr!49228 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49779 a!2792)) mask!2480) lt!664302)))

(declare-datatypes ((Unit!51290 0))(
  ( (Unit!51291) )
))
(declare-fun lt!664300 () Unit!51290)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51290)

(assert (=> b!1536412 (= lt!664300 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664303 vacantIndex!5 mask!2480))))

(assert (= (and start!131008 res!1053633) b!1536406))

(assert (= (and b!1536406 res!1053627) b!1536405))

(assert (= (and b!1536405 res!1053635) b!1536410))

(assert (= (and b!1536410 res!1053632) b!1536404))

(assert (= (and b!1536404 res!1053626) b!1536407))

(assert (= (and b!1536407 res!1053630) b!1536402))

(assert (= (and b!1536402 res!1053629) b!1536411))

(assert (= (and b!1536411 res!1053634) b!1536408))

(assert (= (and b!1536408 res!1053628) b!1536409))

(assert (= (and b!1536409 res!1053631) b!1536403))

(assert (= (and b!1536403 res!1053636) b!1536412))

(declare-fun m!1418919 () Bool)

(assert (=> b!1536412 m!1418919))

(declare-fun m!1418921 () Bool)

(assert (=> b!1536412 m!1418921))

(declare-fun m!1418923 () Bool)

(assert (=> b!1536412 m!1418923))

(assert (=> b!1536412 m!1418919))

(declare-fun m!1418925 () Bool)

(assert (=> b!1536412 m!1418925))

(declare-fun m!1418927 () Bool)

(assert (=> b!1536412 m!1418927))

(declare-fun m!1418929 () Bool)

(assert (=> b!1536404 m!1418929))

(declare-fun m!1418931 () Bool)

(assert (=> b!1536405 m!1418931))

(assert (=> b!1536405 m!1418931))

(declare-fun m!1418933 () Bool)

(assert (=> b!1536405 m!1418933))

(declare-fun m!1418935 () Bool)

(assert (=> b!1536410 m!1418935))

(assert (=> b!1536410 m!1418935))

(declare-fun m!1418937 () Bool)

(assert (=> b!1536410 m!1418937))

(declare-fun m!1418939 () Bool)

(assert (=> b!1536402 m!1418939))

(assert (=> b!1536411 m!1418935))

(assert (=> b!1536411 m!1418935))

(declare-fun m!1418941 () Bool)

(assert (=> b!1536411 m!1418941))

(declare-fun m!1418943 () Bool)

(assert (=> b!1536408 m!1418943))

(assert (=> b!1536408 m!1418935))

(declare-fun m!1418945 () Bool)

(assert (=> b!1536407 m!1418945))

(declare-fun m!1418947 () Bool)

(assert (=> start!131008 m!1418947))

(declare-fun m!1418949 () Bool)

(assert (=> start!131008 m!1418949))

(declare-fun m!1418951 () Bool)

(assert (=> b!1536409 m!1418951))

(assert (=> b!1536403 m!1418935))

(assert (=> b!1536403 m!1418935))

(declare-fun m!1418953 () Bool)

(assert (=> b!1536403 m!1418953))

(push 1)

