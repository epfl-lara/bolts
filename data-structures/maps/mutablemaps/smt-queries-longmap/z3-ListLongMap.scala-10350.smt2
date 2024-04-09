; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121692 () Bool)

(assert start!121692)

(declare-fun b!1413310 () Bool)

(declare-fun e!799858 () Bool)

(assert (=> b!1413310 (= e!799858 true)))

(declare-fun e!799861 () Bool)

(assert (=> b!1413310 e!799861))

(declare-fun res!950414 () Bool)

(assert (=> b!1413310 (=> (not res!950414) (not e!799861))))

(declare-datatypes ((array!96548 0))(
  ( (array!96549 (arr!46607 (Array (_ BitVec 32) (_ BitVec 64))) (size!47158 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96548)

(declare-datatypes ((SeekEntryResult!10940 0))(
  ( (MissingZero!10940 (index!46139 (_ BitVec 32))) (Found!10940 (index!46140 (_ BitVec 32))) (Intermediate!10940 (undefined!11752 Bool) (index!46141 (_ BitVec 32)) (x!127726 (_ BitVec 32))) (Undefined!10940) (MissingVacant!10940 (index!46142 (_ BitVec 32))) )
))
(declare-fun lt!622946 () SeekEntryResult!10940)

(declare-fun lt!622943 () SeekEntryResult!10940)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1413310 (= res!950414 (and (not (undefined!11752 lt!622943)) (= (index!46141 lt!622943) i!1037) (bvslt (x!127726 lt!622943) (x!127726 lt!622946)) (= (select (store (arr!46607 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46141 lt!622943)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((Unit!47804 0))(
  ( (Unit!47805) )
))
(declare-fun lt!622944 () Unit!47804)

(declare-fun lt!622942 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47804)

(assert (=> b!1413310 (= lt!622944 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622942 (x!127726 lt!622946) (index!46141 lt!622946) (x!127726 lt!622943) (index!46141 lt!622943) (undefined!11752 lt!622943) mask!2840))))

(declare-fun b!1413311 () Bool)

(declare-fun e!799860 () Bool)

(declare-fun e!799862 () Bool)

(assert (=> b!1413311 (= e!799860 (not e!799862))))

(declare-fun res!950410 () Bool)

(assert (=> b!1413311 (=> res!950410 e!799862)))

(get-info :version)

(assert (=> b!1413311 (= res!950410 (or (not ((_ is Intermediate!10940) lt!622946)) (undefined!11752 lt!622946)))))

(declare-fun e!799859 () Bool)

(assert (=> b!1413311 e!799859))

(declare-fun res!950418 () Bool)

(assert (=> b!1413311 (=> (not res!950418) (not e!799859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96548 (_ BitVec 32)) Bool)

(assert (=> b!1413311 (= res!950418 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622948 () Unit!47804)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47804)

(assert (=> b!1413311 (= lt!622948 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96548 (_ BitVec 32)) SeekEntryResult!10940)

(assert (=> b!1413311 (= lt!622946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622942 (select (arr!46607 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413311 (= lt!622942 (toIndex!0 (select (arr!46607 a!2901) j!112) mask!2840))))

(declare-fun res!950417 () Bool)

(assert (=> start!121692 (=> (not res!950417) (not e!799860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121692 (= res!950417 (validMask!0 mask!2840))))

(assert (=> start!121692 e!799860))

(assert (=> start!121692 true))

(declare-fun array_inv!35552 (array!96548) Bool)

(assert (=> start!121692 (array_inv!35552 a!2901)))

(declare-fun b!1413312 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96548 (_ BitVec 32)) SeekEntryResult!10940)

(assert (=> b!1413312 (= e!799859 (= (seekEntryOrOpen!0 (select (arr!46607 a!2901) j!112) a!2901 mask!2840) (Found!10940 j!112)))))

(declare-fun b!1413313 () Bool)

(declare-fun lt!622945 () (_ BitVec 64))

(declare-fun lt!622947 () array!96548)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96548 (_ BitVec 32)) SeekEntryResult!10940)

(assert (=> b!1413313 (= e!799861 (= (seekEntryOrOpen!0 lt!622945 lt!622947 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127726 lt!622943) (index!46141 lt!622943) (index!46141 lt!622943) (select (arr!46607 a!2901) j!112) lt!622947 mask!2840)))))

(declare-fun b!1413314 () Bool)

(declare-fun res!950412 () Bool)

(assert (=> b!1413314 (=> (not res!950412) (not e!799860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413314 (= res!950412 (validKeyInArray!0 (select (arr!46607 a!2901) i!1037)))))

(declare-fun b!1413315 () Bool)

(assert (=> b!1413315 (= e!799862 e!799858)))

(declare-fun res!950416 () Bool)

(assert (=> b!1413315 (=> res!950416 e!799858)))

(assert (=> b!1413315 (= res!950416 (or (= lt!622946 lt!622943) (not ((_ is Intermediate!10940) lt!622943))))))

(assert (=> b!1413315 (= lt!622943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622945 mask!2840) lt!622945 lt!622947 mask!2840))))

(assert (=> b!1413315 (= lt!622945 (select (store (arr!46607 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413315 (= lt!622947 (array!96549 (store (arr!46607 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47158 a!2901)))))

(declare-fun b!1413316 () Bool)

(declare-fun res!950409 () Bool)

(assert (=> b!1413316 (=> (not res!950409) (not e!799860))))

(assert (=> b!1413316 (= res!950409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413317 () Bool)

(declare-fun res!950415 () Bool)

(assert (=> b!1413317 (=> (not res!950415) (not e!799860))))

(declare-datatypes ((List!33306 0))(
  ( (Nil!33303) (Cons!33302 (h!34577 (_ BitVec 64)) (t!48007 List!33306)) )
))
(declare-fun arrayNoDuplicates!0 (array!96548 (_ BitVec 32) List!33306) Bool)

(assert (=> b!1413317 (= res!950415 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33303))))

(declare-fun b!1413318 () Bool)

(declare-fun res!950411 () Bool)

(assert (=> b!1413318 (=> (not res!950411) (not e!799860))))

(assert (=> b!1413318 (= res!950411 (and (= (size!47158 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47158 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47158 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413319 () Bool)

(declare-fun res!950413 () Bool)

(assert (=> b!1413319 (=> (not res!950413) (not e!799860))))

(assert (=> b!1413319 (= res!950413 (validKeyInArray!0 (select (arr!46607 a!2901) j!112)))))

(assert (= (and start!121692 res!950417) b!1413318))

(assert (= (and b!1413318 res!950411) b!1413314))

(assert (= (and b!1413314 res!950412) b!1413319))

(assert (= (and b!1413319 res!950413) b!1413316))

(assert (= (and b!1413316 res!950409) b!1413317))

(assert (= (and b!1413317 res!950415) b!1413311))

(assert (= (and b!1413311 res!950418) b!1413312))

(assert (= (and b!1413311 (not res!950410)) b!1413315))

(assert (= (and b!1413315 (not res!950416)) b!1413310))

(assert (= (and b!1413310 res!950414) b!1413313))

(declare-fun m!1303775 () Bool)

(assert (=> b!1413312 m!1303775))

(assert (=> b!1413312 m!1303775))

(declare-fun m!1303777 () Bool)

(assert (=> b!1413312 m!1303777))

(declare-fun m!1303779 () Bool)

(assert (=> b!1413315 m!1303779))

(assert (=> b!1413315 m!1303779))

(declare-fun m!1303781 () Bool)

(assert (=> b!1413315 m!1303781))

(declare-fun m!1303783 () Bool)

(assert (=> b!1413315 m!1303783))

(declare-fun m!1303785 () Bool)

(assert (=> b!1413315 m!1303785))

(assert (=> b!1413310 m!1303783))

(declare-fun m!1303787 () Bool)

(assert (=> b!1413310 m!1303787))

(declare-fun m!1303789 () Bool)

(assert (=> b!1413310 m!1303789))

(declare-fun m!1303791 () Bool)

(assert (=> b!1413316 m!1303791))

(assert (=> b!1413311 m!1303775))

(declare-fun m!1303793 () Bool)

(assert (=> b!1413311 m!1303793))

(assert (=> b!1413311 m!1303775))

(declare-fun m!1303795 () Bool)

(assert (=> b!1413311 m!1303795))

(assert (=> b!1413311 m!1303775))

(declare-fun m!1303797 () Bool)

(assert (=> b!1413311 m!1303797))

(declare-fun m!1303799 () Bool)

(assert (=> b!1413311 m!1303799))

(assert (=> b!1413319 m!1303775))

(assert (=> b!1413319 m!1303775))

(declare-fun m!1303801 () Bool)

(assert (=> b!1413319 m!1303801))

(declare-fun m!1303803 () Bool)

(assert (=> b!1413314 m!1303803))

(assert (=> b!1413314 m!1303803))

(declare-fun m!1303805 () Bool)

(assert (=> b!1413314 m!1303805))

(declare-fun m!1303807 () Bool)

(assert (=> b!1413313 m!1303807))

(assert (=> b!1413313 m!1303775))

(assert (=> b!1413313 m!1303775))

(declare-fun m!1303809 () Bool)

(assert (=> b!1413313 m!1303809))

(declare-fun m!1303811 () Bool)

(assert (=> start!121692 m!1303811))

(declare-fun m!1303813 () Bool)

(assert (=> start!121692 m!1303813))

(declare-fun m!1303815 () Bool)

(assert (=> b!1413317 m!1303815))

(check-sat (not b!1413311) (not start!121692) (not b!1413316) (not b!1413319) (not b!1413310) (not b!1413314) (not b!1413312) (not b!1413315) (not b!1413317) (not b!1413313))
(check-sat)
