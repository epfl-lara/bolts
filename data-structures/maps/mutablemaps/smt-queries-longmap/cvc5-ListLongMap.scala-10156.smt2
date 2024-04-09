; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119740 () Bool)

(assert start!119740)

(declare-fun b!1394273 () Bool)

(declare-fun res!933795 () Bool)

(declare-fun e!789451 () Bool)

(assert (=> b!1394273 (=> (not res!933795) (not e!789451))))

(declare-datatypes ((array!95340 0))(
  ( (array!95341 (arr!46024 (Array (_ BitVec 32) (_ BitVec 64))) (size!46575 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95340)

(declare-datatypes ((List!32723 0))(
  ( (Nil!32720) (Cons!32719 (h!33952 (_ BitVec 64)) (t!47424 List!32723)) )
))
(declare-fun arrayNoDuplicates!0 (array!95340 (_ BitVec 32) List!32723) Bool)

(assert (=> b!1394273 (= res!933795 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32720))))

(declare-fun b!1394274 () Bool)

(declare-fun res!933793 () Bool)

(assert (=> b!1394274 (=> (not res!933793) (not e!789451))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95340 (_ BitVec 32)) Bool)

(assert (=> b!1394274 (= res!933793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394276 () Bool)

(declare-fun e!789452 () Bool)

(assert (=> b!1394276 (= e!789452 true)))

(declare-datatypes ((SeekEntryResult!10363 0))(
  ( (MissingZero!10363 (index!43822 (_ BitVec 32))) (Found!10363 (index!43823 (_ BitVec 32))) (Intermediate!10363 (undefined!11175 Bool) (index!43824 (_ BitVec 32)) (x!125498 (_ BitVec 32))) (Undefined!10363) (MissingVacant!10363 (index!43825 (_ BitVec 32))) )
))
(declare-fun lt!612349 () SeekEntryResult!10363)

(declare-fun lt!612348 () array!95340)

(declare-fun lt!612350 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95340 (_ BitVec 32)) SeekEntryResult!10363)

(assert (=> b!1394276 (= lt!612349 (seekEntryOrOpen!0 lt!612350 lt!612348 mask!2840))))

(declare-fun lt!612347 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!612352 () SeekEntryResult!10363)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((Unit!46680 0))(
  ( (Unit!46681) )
))
(declare-fun lt!612346 () Unit!46680)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46680)

(assert (=> b!1394276 (= lt!612346 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612347 (x!125498 lt!612352) (index!43824 lt!612352) mask!2840))))

(declare-fun b!1394277 () Bool)

(declare-fun res!933790 () Bool)

(assert (=> b!1394277 (=> res!933790 e!789452)))

(assert (=> b!1394277 (= res!933790 (or (bvslt (x!125498 lt!612352) #b00000000000000000000000000000000) (bvsgt (x!125498 lt!612352) #b01111111111111111111111111111110) (bvslt lt!612347 #b00000000000000000000000000000000) (bvsge lt!612347 (size!46575 a!2901)) (bvslt (index!43824 lt!612352) #b00000000000000000000000000000000) (bvsge (index!43824 lt!612352) (size!46575 a!2901)) (not (= lt!612352 (Intermediate!10363 false (index!43824 lt!612352) (x!125498 lt!612352))))))))

(declare-fun b!1394278 () Bool)

(declare-fun res!933797 () Bool)

(assert (=> b!1394278 (=> (not res!933797) (not e!789451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394278 (= res!933797 (validKeyInArray!0 (select (arr!46024 a!2901) i!1037)))))

(declare-fun b!1394279 () Bool)

(declare-fun res!933791 () Bool)

(assert (=> b!1394279 (=> (not res!933791) (not e!789451))))

(assert (=> b!1394279 (= res!933791 (validKeyInArray!0 (select (arr!46024 a!2901) j!112)))))

(declare-fun b!1394280 () Bool)

(declare-fun e!789449 () Bool)

(assert (=> b!1394280 (= e!789451 (not e!789449))))

(declare-fun res!933798 () Bool)

(assert (=> b!1394280 (=> res!933798 e!789449)))

(assert (=> b!1394280 (= res!933798 (or (not (is-Intermediate!10363 lt!612352)) (undefined!11175 lt!612352)))))

(assert (=> b!1394280 (= lt!612349 (Found!10363 j!112))))

(assert (=> b!1394280 (= lt!612349 (seekEntryOrOpen!0 (select (arr!46024 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394280 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612351 () Unit!46680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46680)

(assert (=> b!1394280 (= lt!612351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95340 (_ BitVec 32)) SeekEntryResult!10363)

(assert (=> b!1394280 (= lt!612352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612347 (select (arr!46024 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394280 (= lt!612347 (toIndex!0 (select (arr!46024 a!2901) j!112) mask!2840))))

(declare-fun b!1394281 () Bool)

(declare-fun res!933796 () Bool)

(assert (=> b!1394281 (=> (not res!933796) (not e!789451))))

(assert (=> b!1394281 (= res!933796 (and (= (size!46575 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46575 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46575 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!933794 () Bool)

(assert (=> start!119740 (=> (not res!933794) (not e!789451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119740 (= res!933794 (validMask!0 mask!2840))))

(assert (=> start!119740 e!789451))

(assert (=> start!119740 true))

(declare-fun array_inv!34969 (array!95340) Bool)

(assert (=> start!119740 (array_inv!34969 a!2901)))

(declare-fun b!1394275 () Bool)

(assert (=> b!1394275 (= e!789449 e!789452)))

(declare-fun res!933792 () Bool)

(assert (=> b!1394275 (=> res!933792 e!789452)))

(assert (=> b!1394275 (= res!933792 (not (= lt!612352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612350 mask!2840) lt!612350 lt!612348 mask!2840))))))

(assert (=> b!1394275 (= lt!612350 (select (store (arr!46024 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394275 (= lt!612348 (array!95341 (store (arr!46024 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46575 a!2901)))))

(assert (= (and start!119740 res!933794) b!1394281))

(assert (= (and b!1394281 res!933796) b!1394278))

(assert (= (and b!1394278 res!933797) b!1394279))

(assert (= (and b!1394279 res!933791) b!1394274))

(assert (= (and b!1394274 res!933793) b!1394273))

(assert (= (and b!1394273 res!933795) b!1394280))

(assert (= (and b!1394280 (not res!933798)) b!1394275))

(assert (= (and b!1394275 (not res!933792)) b!1394277))

(assert (= (and b!1394277 (not res!933790)) b!1394276))

(declare-fun m!1280621 () Bool)

(assert (=> b!1394274 m!1280621))

(declare-fun m!1280623 () Bool)

(assert (=> b!1394276 m!1280623))

(declare-fun m!1280625 () Bool)

(assert (=> b!1394276 m!1280625))

(declare-fun m!1280627 () Bool)

(assert (=> b!1394279 m!1280627))

(assert (=> b!1394279 m!1280627))

(declare-fun m!1280629 () Bool)

(assert (=> b!1394279 m!1280629))

(declare-fun m!1280631 () Bool)

(assert (=> b!1394275 m!1280631))

(assert (=> b!1394275 m!1280631))

(declare-fun m!1280633 () Bool)

(assert (=> b!1394275 m!1280633))

(declare-fun m!1280635 () Bool)

(assert (=> b!1394275 m!1280635))

(declare-fun m!1280637 () Bool)

(assert (=> b!1394275 m!1280637))

(declare-fun m!1280639 () Bool)

(assert (=> start!119740 m!1280639))

(declare-fun m!1280641 () Bool)

(assert (=> start!119740 m!1280641))

(declare-fun m!1280643 () Bool)

(assert (=> b!1394273 m!1280643))

(declare-fun m!1280645 () Bool)

(assert (=> b!1394278 m!1280645))

(assert (=> b!1394278 m!1280645))

(declare-fun m!1280647 () Bool)

(assert (=> b!1394278 m!1280647))

(assert (=> b!1394280 m!1280627))

(declare-fun m!1280649 () Bool)

(assert (=> b!1394280 m!1280649))

(assert (=> b!1394280 m!1280627))

(declare-fun m!1280651 () Bool)

(assert (=> b!1394280 m!1280651))

(assert (=> b!1394280 m!1280627))

(declare-fun m!1280653 () Bool)

(assert (=> b!1394280 m!1280653))

(declare-fun m!1280655 () Bool)

(assert (=> b!1394280 m!1280655))

(assert (=> b!1394280 m!1280627))

(declare-fun m!1280657 () Bool)

(assert (=> b!1394280 m!1280657))

(push 1)

