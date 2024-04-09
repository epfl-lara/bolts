; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47542 () Bool)

(assert start!47542)

(declare-fun b!522886 () Bool)

(declare-datatypes ((Unit!16298 0))(
  ( (Unit!16299) )
))
(declare-fun e!304977 () Unit!16298)

(declare-fun Unit!16300 () Unit!16298)

(assert (=> b!522886 (= e!304977 Unit!16300)))

(declare-fun b!522887 () Bool)

(declare-fun res!320451 () Bool)

(declare-fun e!304980 () Bool)

(assert (=> b!522887 (=> (not res!320451) (not e!304980))))

(declare-datatypes ((array!33265 0))(
  ( (array!33266 (arr!15984 (Array (_ BitVec 32) (_ BitVec 64))) (size!16348 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33265)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522887 (= res!320451 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!304975 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!522888 () Bool)

(declare-datatypes ((SeekEntryResult!4458 0))(
  ( (MissingZero!4458 (index!20038 (_ BitVec 32))) (Found!4458 (index!20039 (_ BitVec 32))) (Intermediate!4458 (undefined!5270 Bool) (index!20040 (_ BitVec 32)) (x!49048 (_ BitVec 32))) (Undefined!4458) (MissingVacant!4458 (index!20041 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33265 (_ BitVec 32)) SeekEntryResult!4458)

(assert (=> b!522888 (= e!304975 (= (seekEntryOrOpen!0 (select (arr!15984 a!3235) j!176) a!3235 mask!3524) (Found!4458 j!176)))))

(declare-fun b!522889 () Bool)

(declare-fun e!304978 () Bool)

(assert (=> b!522889 (= e!304980 e!304978)))

(declare-fun res!320447 () Bool)

(assert (=> b!522889 (=> (not res!320447) (not e!304978))))

(declare-fun lt!239913 () SeekEntryResult!4458)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!522889 (= res!320447 (or (= lt!239913 (MissingZero!4458 i!1204)) (= lt!239913 (MissingVacant!4458 i!1204))))))

(assert (=> b!522889 (= lt!239913 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522890 () Bool)

(declare-fun res!320453 () Bool)

(assert (=> b!522890 (=> (not res!320453) (not e!304980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522890 (= res!320453 (validKeyInArray!0 (select (arr!15984 a!3235) j!176)))))

(declare-fun b!522891 () Bool)

(declare-fun res!320455 () Bool)

(assert (=> b!522891 (=> (not res!320455) (not e!304980))))

(assert (=> b!522891 (= res!320455 (and (= (size!16348 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16348 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16348 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522892 () Bool)

(declare-fun res!320450 () Bool)

(declare-fun e!304979 () Bool)

(assert (=> b!522892 (=> res!320450 e!304979)))

(declare-fun lt!239918 () SeekEntryResult!4458)

(assert (=> b!522892 (= res!320450 (or (undefined!5270 lt!239918) (not (is-Intermediate!4458 lt!239918))))))

(declare-fun res!320445 () Bool)

(assert (=> start!47542 (=> (not res!320445) (not e!304980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47542 (= res!320445 (validMask!0 mask!3524))))

(assert (=> start!47542 e!304980))

(assert (=> start!47542 true))

(declare-fun array_inv!11758 (array!33265) Bool)

(assert (=> start!47542 (array_inv!11758 a!3235)))

(declare-fun b!522893 () Bool)

(declare-fun res!320449 () Bool)

(assert (=> b!522893 (=> (not res!320449) (not e!304978))))

(declare-datatypes ((List!10195 0))(
  ( (Nil!10192) (Cons!10191 (h!11116 (_ BitVec 64)) (t!16431 List!10195)) )
))
(declare-fun arrayNoDuplicates!0 (array!33265 (_ BitVec 32) List!10195) Bool)

(assert (=> b!522893 (= res!320449 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10192))))

(declare-fun b!522894 () Bool)

(declare-fun Unit!16301 () Unit!16298)

(assert (=> b!522894 (= e!304977 Unit!16301)))

(declare-fun lt!239910 () (_ BitVec 32))

(declare-fun lt!239912 () Unit!16298)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33265 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16298)

(assert (=> b!522894 (= lt!239912 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239910 #b00000000000000000000000000000000 (index!20040 lt!239918) (x!49048 lt!239918) mask!3524))))

(declare-fun lt!239916 () array!33265)

(declare-fun res!320456 () Bool)

(declare-fun lt!239914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33265 (_ BitVec 32)) SeekEntryResult!4458)

(assert (=> b!522894 (= res!320456 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239910 lt!239914 lt!239916 mask!3524) (Intermediate!4458 false (index!20040 lt!239918) (x!49048 lt!239918))))))

(declare-fun e!304981 () Bool)

(assert (=> b!522894 (=> (not res!320456) (not e!304981))))

(assert (=> b!522894 e!304981))

(declare-fun b!522895 () Bool)

(declare-fun res!320448 () Bool)

(assert (=> b!522895 (=> (not res!320448) (not e!304978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33265 (_ BitVec 32)) Bool)

(assert (=> b!522895 (= res!320448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522896 () Bool)

(declare-fun res!320454 () Bool)

(assert (=> b!522896 (=> (not res!320454) (not e!304980))))

(assert (=> b!522896 (= res!320454 (validKeyInArray!0 k!2280))))

(declare-fun b!522897 () Bool)

(assert (=> b!522897 (= e!304979 true)))

(assert (=> b!522897 (and (or (= (select (arr!15984 a!3235) (index!20040 lt!239918)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15984 a!3235) (index!20040 lt!239918)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15984 a!3235) (index!20040 lt!239918)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15984 a!3235) (index!20040 lt!239918)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239917 () Unit!16298)

(assert (=> b!522897 (= lt!239917 e!304977)))

(declare-fun c!61523 () Bool)

(assert (=> b!522897 (= c!61523 (= (select (arr!15984 a!3235) (index!20040 lt!239918)) (select (arr!15984 a!3235) j!176)))))

(assert (=> b!522897 (and (bvslt (x!49048 lt!239918) #b01111111111111111111111111111110) (or (= (select (arr!15984 a!3235) (index!20040 lt!239918)) (select (arr!15984 a!3235) j!176)) (= (select (arr!15984 a!3235) (index!20040 lt!239918)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15984 a!3235) (index!20040 lt!239918)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522898 () Bool)

(assert (=> b!522898 (= e!304981 false)))

(declare-fun b!522899 () Bool)

(assert (=> b!522899 (= e!304978 (not e!304979))))

(declare-fun res!320446 () Bool)

(assert (=> b!522899 (=> res!320446 e!304979)))

(declare-fun lt!239911 () (_ BitVec 32))

(assert (=> b!522899 (= res!320446 (= lt!239918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239911 lt!239914 lt!239916 mask!3524)))))

(assert (=> b!522899 (= lt!239918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239910 (select (arr!15984 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522899 (= lt!239911 (toIndex!0 lt!239914 mask!3524))))

(assert (=> b!522899 (= lt!239914 (select (store (arr!15984 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522899 (= lt!239910 (toIndex!0 (select (arr!15984 a!3235) j!176) mask!3524))))

(assert (=> b!522899 (= lt!239916 (array!33266 (store (arr!15984 a!3235) i!1204 k!2280) (size!16348 a!3235)))))

(assert (=> b!522899 e!304975))

(declare-fun res!320452 () Bool)

(assert (=> b!522899 (=> (not res!320452) (not e!304975))))

(assert (=> b!522899 (= res!320452 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239915 () Unit!16298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33265 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16298)

(assert (=> b!522899 (= lt!239915 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47542 res!320445) b!522891))

(assert (= (and b!522891 res!320455) b!522890))

(assert (= (and b!522890 res!320453) b!522896))

(assert (= (and b!522896 res!320454) b!522887))

(assert (= (and b!522887 res!320451) b!522889))

(assert (= (and b!522889 res!320447) b!522895))

(assert (= (and b!522895 res!320448) b!522893))

(assert (= (and b!522893 res!320449) b!522899))

(assert (= (and b!522899 res!320452) b!522888))

(assert (= (and b!522899 (not res!320446)) b!522892))

(assert (= (and b!522892 (not res!320450)) b!522897))

(assert (= (and b!522897 c!61523) b!522894))

(assert (= (and b!522897 (not c!61523)) b!522886))

(assert (= (and b!522894 res!320456) b!522898))

(declare-fun m!503743 () Bool)

(assert (=> b!522895 m!503743))

(declare-fun m!503745 () Bool)

(assert (=> b!522894 m!503745))

(declare-fun m!503747 () Bool)

(assert (=> b!522894 m!503747))

(declare-fun m!503749 () Bool)

(assert (=> b!522889 m!503749))

(declare-fun m!503751 () Bool)

(assert (=> b!522887 m!503751))

(declare-fun m!503753 () Bool)

(assert (=> b!522897 m!503753))

(declare-fun m!503755 () Bool)

(assert (=> b!522897 m!503755))

(assert (=> b!522888 m!503755))

(assert (=> b!522888 m!503755))

(declare-fun m!503757 () Bool)

(assert (=> b!522888 m!503757))

(declare-fun m!503759 () Bool)

(assert (=> start!47542 m!503759))

(declare-fun m!503761 () Bool)

(assert (=> start!47542 m!503761))

(assert (=> b!522890 m!503755))

(assert (=> b!522890 m!503755))

(declare-fun m!503763 () Bool)

(assert (=> b!522890 m!503763))

(declare-fun m!503765 () Bool)

(assert (=> b!522899 m!503765))

(declare-fun m!503767 () Bool)

(assert (=> b!522899 m!503767))

(declare-fun m!503769 () Bool)

(assert (=> b!522899 m!503769))

(assert (=> b!522899 m!503755))

(declare-fun m!503771 () Bool)

(assert (=> b!522899 m!503771))

(assert (=> b!522899 m!503755))

(declare-fun m!503773 () Bool)

(assert (=> b!522899 m!503773))

(assert (=> b!522899 m!503755))

(declare-fun m!503775 () Bool)

(assert (=> b!522899 m!503775))

(declare-fun m!503777 () Bool)

(assert (=> b!522899 m!503777))

(declare-fun m!503779 () Bool)

(assert (=> b!522899 m!503779))

(declare-fun m!503781 () Bool)

(assert (=> b!522896 m!503781))

(declare-fun m!503783 () Bool)

(assert (=> b!522893 m!503783))

(push 1)

