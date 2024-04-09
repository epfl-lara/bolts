; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119926 () Bool)

(assert start!119926)

(declare-fun b!1395820 () Bool)

(declare-fun e!790258 () Bool)

(declare-fun e!790257 () Bool)

(assert (=> b!1395820 (= e!790258 e!790257)))

(declare-fun res!935012 () Bool)

(assert (=> b!1395820 (=> res!935012 e!790257)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95424 0))(
  ( (array!95425 (arr!46063 (Array (_ BitVec 32) (_ BitVec 64))) (size!46614 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95424)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!613119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10402 0))(
  ( (MissingZero!10402 (index!43978 (_ BitVec 32))) (Found!10402 (index!43979 (_ BitVec 32))) (Intermediate!10402 (undefined!11214 Bool) (index!43980 (_ BitVec 32)) (x!125653 (_ BitVec 32))) (Undefined!10402) (MissingVacant!10402 (index!43981 (_ BitVec 32))) )
))
(declare-fun lt!613118 () SeekEntryResult!10402)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95424 (_ BitVec 32)) SeekEntryResult!10402)

(assert (=> b!1395820 (= res!935012 (= lt!613118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613119 (select (store (arr!46063 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95425 (store (arr!46063 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46614 a!2901)) mask!2840)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395820 (= lt!613119 (toIndex!0 (select (store (arr!46063 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1395821 () Bool)

(declare-fun res!935015 () Bool)

(declare-fun e!790255 () Bool)

(assert (=> b!1395821 (=> (not res!935015) (not e!790255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395821 (= res!935015 (validKeyInArray!0 (select (arr!46063 a!2901) i!1037)))))

(declare-fun e!790256 () Bool)

(declare-fun b!1395822 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95424 (_ BitVec 32)) SeekEntryResult!10402)

(assert (=> b!1395822 (= e!790256 (= (seekEntryOrOpen!0 (select (arr!46063 a!2901) j!112) a!2901 mask!2840) (Found!10402 j!112)))))

(declare-fun b!1395823 () Bool)

(declare-fun res!935010 () Bool)

(assert (=> b!1395823 (=> res!935010 e!790257)))

(assert (=> b!1395823 (= res!935010 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt lt!613119 #b00000000000000000000000000000000) (bvsge lt!613119 (bvadd #b00000000000000000000000000000001 mask!2840))))))

(declare-fun b!1395824 () Bool)

(declare-fun res!935009 () Bool)

(assert (=> b!1395824 (=> (not res!935009) (not e!790255))))

(assert (=> b!1395824 (= res!935009 (validKeyInArray!0 (select (arr!46063 a!2901) j!112)))))

(declare-fun b!1395825 () Bool)

(declare-fun res!935011 () Bool)

(assert (=> b!1395825 (=> (not res!935011) (not e!790255))))

(declare-datatypes ((List!32762 0))(
  ( (Nil!32759) (Cons!32758 (h!33997 (_ BitVec 64)) (t!47463 List!32762)) )
))
(declare-fun arrayNoDuplicates!0 (array!95424 (_ BitVec 32) List!32762) Bool)

(assert (=> b!1395825 (= res!935011 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32759))))

(declare-fun b!1395826 () Bool)

(declare-fun res!935008 () Bool)

(assert (=> b!1395826 (=> (not res!935008) (not e!790255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95424 (_ BitVec 32)) Bool)

(assert (=> b!1395826 (= res!935008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!935014 () Bool)

(assert (=> start!119926 (=> (not res!935014) (not e!790255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119926 (= res!935014 (validMask!0 mask!2840))))

(assert (=> start!119926 e!790255))

(assert (=> start!119926 true))

(declare-fun array_inv!35008 (array!95424) Bool)

(assert (=> start!119926 (array_inv!35008 a!2901)))

(declare-fun b!1395827 () Bool)

(assert (=> b!1395827 (= e!790255 (not e!790258))))

(declare-fun res!935013 () Bool)

(assert (=> b!1395827 (=> res!935013 e!790258)))

(assert (=> b!1395827 (= res!935013 (or (not (is-Intermediate!10402 lt!613118)) (undefined!11214 lt!613118)))))

(assert (=> b!1395827 e!790256))

(declare-fun res!935007 () Bool)

(assert (=> b!1395827 (=> (not res!935007) (not e!790256))))

(assert (=> b!1395827 (= res!935007 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46758 0))(
  ( (Unit!46759) )
))
(declare-fun lt!613120 () Unit!46758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95424 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46758)

(assert (=> b!1395827 (= lt!613120 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395827 (= lt!613118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46063 a!2901) j!112) mask!2840) (select (arr!46063 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395828 () Bool)

(assert (=> b!1395828 (= e!790257 (validKeyInArray!0 (select (store (arr!46063 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun b!1395829 () Bool)

(declare-fun res!935016 () Bool)

(assert (=> b!1395829 (=> (not res!935016) (not e!790255))))

(assert (=> b!1395829 (= res!935016 (and (= (size!46614 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46614 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46614 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119926 res!935014) b!1395829))

(assert (= (and b!1395829 res!935016) b!1395821))

(assert (= (and b!1395821 res!935015) b!1395824))

(assert (= (and b!1395824 res!935009) b!1395826))

(assert (= (and b!1395826 res!935008) b!1395825))

(assert (= (and b!1395825 res!935011) b!1395827))

(assert (= (and b!1395827 res!935007) b!1395822))

(assert (= (and b!1395827 (not res!935013)) b!1395820))

(assert (= (and b!1395820 (not res!935012)) b!1395823))

(assert (= (and b!1395823 (not res!935010)) b!1395828))

(declare-fun m!1282325 () Bool)

(assert (=> b!1395826 m!1282325))

(declare-fun m!1282327 () Bool)

(assert (=> b!1395820 m!1282327))

(declare-fun m!1282329 () Bool)

(assert (=> b!1395820 m!1282329))

(assert (=> b!1395820 m!1282329))

(declare-fun m!1282331 () Bool)

(assert (=> b!1395820 m!1282331))

(assert (=> b!1395820 m!1282329))

(declare-fun m!1282333 () Bool)

(assert (=> b!1395820 m!1282333))

(declare-fun m!1282335 () Bool)

(assert (=> b!1395827 m!1282335))

(declare-fun m!1282337 () Bool)

(assert (=> b!1395827 m!1282337))

(assert (=> b!1395827 m!1282335))

(declare-fun m!1282339 () Bool)

(assert (=> b!1395827 m!1282339))

(assert (=> b!1395827 m!1282337))

(assert (=> b!1395827 m!1282335))

(declare-fun m!1282341 () Bool)

(assert (=> b!1395827 m!1282341))

(declare-fun m!1282343 () Bool)

(assert (=> b!1395827 m!1282343))

(declare-fun m!1282345 () Bool)

(assert (=> b!1395821 m!1282345))

(assert (=> b!1395821 m!1282345))

(declare-fun m!1282347 () Bool)

(assert (=> b!1395821 m!1282347))

(assert (=> b!1395828 m!1282327))

(assert (=> b!1395828 m!1282329))

(assert (=> b!1395828 m!1282329))

(declare-fun m!1282349 () Bool)

(assert (=> b!1395828 m!1282349))

(declare-fun m!1282351 () Bool)

(assert (=> b!1395825 m!1282351))

(assert (=> b!1395824 m!1282335))

(assert (=> b!1395824 m!1282335))

(declare-fun m!1282353 () Bool)

(assert (=> b!1395824 m!1282353))

(assert (=> b!1395822 m!1282335))

(assert (=> b!1395822 m!1282335))

(declare-fun m!1282355 () Bool)

(assert (=> b!1395822 m!1282355))

(declare-fun m!1282357 () Bool)

(assert (=> start!119926 m!1282357))

(declare-fun m!1282359 () Bool)

(assert (=> start!119926 m!1282359))

(push 1)

