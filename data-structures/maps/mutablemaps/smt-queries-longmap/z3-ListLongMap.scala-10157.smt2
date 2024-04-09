; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119748 () Bool)

(assert start!119748)

(declare-fun b!1394381 () Bool)

(declare-fun res!933901 () Bool)

(declare-fun e!789500 () Bool)

(assert (=> b!1394381 (=> (not res!933901) (not e!789500))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95348 0))(
  ( (array!95349 (arr!46028 (Array (_ BitVec 32) (_ BitVec 64))) (size!46579 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95348)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394381 (= res!933901 (and (= (size!46579 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46579 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46579 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394382 () Bool)

(declare-fun res!933905 () Bool)

(assert (=> b!1394382 (=> (not res!933905) (not e!789500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394382 (= res!933905 (validKeyInArray!0 (select (arr!46028 a!2901) i!1037)))))

(declare-fun b!1394383 () Bool)

(declare-fun res!933899 () Bool)

(declare-fun e!789498 () Bool)

(assert (=> b!1394383 (=> res!933899 e!789498)))

(declare-fun lt!612434 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10367 0))(
  ( (MissingZero!10367 (index!43838 (_ BitVec 32))) (Found!10367 (index!43839 (_ BitVec 32))) (Intermediate!10367 (undefined!11179 Bool) (index!43840 (_ BitVec 32)) (x!125510 (_ BitVec 32))) (Undefined!10367) (MissingVacant!10367 (index!43841 (_ BitVec 32))) )
))
(declare-fun lt!612430 () SeekEntryResult!10367)

(assert (=> b!1394383 (= res!933899 (or (bvslt (x!125510 lt!612430) #b00000000000000000000000000000000) (bvsgt (x!125510 lt!612430) #b01111111111111111111111111111110) (bvslt lt!612434 #b00000000000000000000000000000000) (bvsge lt!612434 (size!46579 a!2901)) (bvslt (index!43840 lt!612430) #b00000000000000000000000000000000) (bvsge (index!43840 lt!612430) (size!46579 a!2901)) (not (= lt!612430 (Intermediate!10367 false (index!43840 lt!612430) (x!125510 lt!612430))))))))

(declare-fun b!1394384 () Bool)

(assert (=> b!1394384 (= e!789498 true)))

(declare-fun lt!612435 () SeekEntryResult!10367)

(declare-fun lt!612436 () array!95348)

(declare-fun lt!612432 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95348 (_ BitVec 32)) SeekEntryResult!10367)

(assert (=> b!1394384 (= lt!612435 (seekEntryOrOpen!0 lt!612432 lt!612436 mask!2840))))

(declare-datatypes ((Unit!46688 0))(
  ( (Unit!46689) )
))
(declare-fun lt!612431 () Unit!46688)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46688)

(assert (=> b!1394384 (= lt!612431 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612434 (x!125510 lt!612430) (index!43840 lt!612430) mask!2840))))

(declare-fun b!1394385 () Bool)

(declare-fun e!789499 () Bool)

(assert (=> b!1394385 (= e!789499 e!789498)))

(declare-fun res!933898 () Bool)

(assert (=> b!1394385 (=> res!933898 e!789498)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95348 (_ BitVec 32)) SeekEntryResult!10367)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394385 (= res!933898 (not (= lt!612430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612432 mask!2840) lt!612432 lt!612436 mask!2840))))))

(assert (=> b!1394385 (= lt!612432 (select (store (arr!46028 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394385 (= lt!612436 (array!95349 (store (arr!46028 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46579 a!2901)))))

(declare-fun b!1394386 () Bool)

(assert (=> b!1394386 (= e!789500 (not e!789499))))

(declare-fun res!933904 () Bool)

(assert (=> b!1394386 (=> res!933904 e!789499)))

(get-info :version)

(assert (=> b!1394386 (= res!933904 (or (not ((_ is Intermediate!10367) lt!612430)) (undefined!11179 lt!612430)))))

(assert (=> b!1394386 (= lt!612435 (Found!10367 j!112))))

(assert (=> b!1394386 (= lt!612435 (seekEntryOrOpen!0 (select (arr!46028 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95348 (_ BitVec 32)) Bool)

(assert (=> b!1394386 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612433 () Unit!46688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46688)

(assert (=> b!1394386 (= lt!612433 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394386 (= lt!612430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612434 (select (arr!46028 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394386 (= lt!612434 (toIndex!0 (select (arr!46028 a!2901) j!112) mask!2840))))

(declare-fun b!1394387 () Bool)

(declare-fun res!933900 () Bool)

(assert (=> b!1394387 (=> (not res!933900) (not e!789500))))

(declare-datatypes ((List!32727 0))(
  ( (Nil!32724) (Cons!32723 (h!33956 (_ BitVec 64)) (t!47428 List!32727)) )
))
(declare-fun arrayNoDuplicates!0 (array!95348 (_ BitVec 32) List!32727) Bool)

(assert (=> b!1394387 (= res!933900 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32724))))

(declare-fun b!1394388 () Bool)

(declare-fun res!933902 () Bool)

(assert (=> b!1394388 (=> (not res!933902) (not e!789500))))

(assert (=> b!1394388 (= res!933902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394389 () Bool)

(declare-fun res!933906 () Bool)

(assert (=> b!1394389 (=> (not res!933906) (not e!789500))))

(assert (=> b!1394389 (= res!933906 (validKeyInArray!0 (select (arr!46028 a!2901) j!112)))))

(declare-fun res!933903 () Bool)

(assert (=> start!119748 (=> (not res!933903) (not e!789500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119748 (= res!933903 (validMask!0 mask!2840))))

(assert (=> start!119748 e!789500))

(assert (=> start!119748 true))

(declare-fun array_inv!34973 (array!95348) Bool)

(assert (=> start!119748 (array_inv!34973 a!2901)))

(assert (= (and start!119748 res!933903) b!1394381))

(assert (= (and b!1394381 res!933901) b!1394382))

(assert (= (and b!1394382 res!933905) b!1394389))

(assert (= (and b!1394389 res!933906) b!1394388))

(assert (= (and b!1394388 res!933902) b!1394387))

(assert (= (and b!1394387 res!933900) b!1394386))

(assert (= (and b!1394386 (not res!933904)) b!1394385))

(assert (= (and b!1394385 (not res!933898)) b!1394383))

(assert (= (and b!1394383 (not res!933899)) b!1394384))

(declare-fun m!1280773 () Bool)

(assert (=> b!1394388 m!1280773))

(declare-fun m!1280775 () Bool)

(assert (=> b!1394386 m!1280775))

(declare-fun m!1280777 () Bool)

(assert (=> b!1394386 m!1280777))

(assert (=> b!1394386 m!1280775))

(declare-fun m!1280779 () Bool)

(assert (=> b!1394386 m!1280779))

(assert (=> b!1394386 m!1280775))

(declare-fun m!1280781 () Bool)

(assert (=> b!1394386 m!1280781))

(assert (=> b!1394386 m!1280775))

(declare-fun m!1280783 () Bool)

(assert (=> b!1394386 m!1280783))

(declare-fun m!1280785 () Bool)

(assert (=> b!1394386 m!1280785))

(declare-fun m!1280787 () Bool)

(assert (=> start!119748 m!1280787))

(declare-fun m!1280789 () Bool)

(assert (=> start!119748 m!1280789))

(declare-fun m!1280791 () Bool)

(assert (=> b!1394385 m!1280791))

(assert (=> b!1394385 m!1280791))

(declare-fun m!1280793 () Bool)

(assert (=> b!1394385 m!1280793))

(declare-fun m!1280795 () Bool)

(assert (=> b!1394385 m!1280795))

(declare-fun m!1280797 () Bool)

(assert (=> b!1394385 m!1280797))

(declare-fun m!1280799 () Bool)

(assert (=> b!1394387 m!1280799))

(declare-fun m!1280801 () Bool)

(assert (=> b!1394382 m!1280801))

(assert (=> b!1394382 m!1280801))

(declare-fun m!1280803 () Bool)

(assert (=> b!1394382 m!1280803))

(assert (=> b!1394389 m!1280775))

(assert (=> b!1394389 m!1280775))

(declare-fun m!1280805 () Bool)

(assert (=> b!1394389 m!1280805))

(declare-fun m!1280807 () Bool)

(assert (=> b!1394384 m!1280807))

(declare-fun m!1280809 () Bool)

(assert (=> b!1394384 m!1280809))

(check-sat (not b!1394389) (not b!1394388) (not b!1394386) (not start!119748) (not b!1394382) (not b!1394385) (not b!1394384) (not b!1394387))
(check-sat)
