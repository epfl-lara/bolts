; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45098 () Bool)

(assert start!45098)

(declare-fun b!494779 () Bool)

(declare-fun res!297499 () Bool)

(declare-fun e!290297 () Bool)

(assert (=> b!494779 (=> (not res!297499) (not e!290297))))

(declare-datatypes ((array!32003 0))(
  ( (array!32004 (arr!15383 (Array (_ BitVec 32) (_ BitVec 64))) (size!15747 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32003)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494779 (= res!297499 (validKeyInArray!0 (select (arr!15383 a!3235) j!176)))))

(declare-fun b!494780 () Bool)

(declare-fun e!290296 () Bool)

(assert (=> b!494780 (= e!290297 e!290296)))

(declare-fun res!297505 () Bool)

(assert (=> b!494780 (=> (not res!297505) (not e!290296))))

(declare-datatypes ((SeekEntryResult!3857 0))(
  ( (MissingZero!3857 (index!17607 (_ BitVec 32))) (Found!3857 (index!17608 (_ BitVec 32))) (Intermediate!3857 (undefined!4669 Bool) (index!17609 (_ BitVec 32)) (x!46698 (_ BitVec 32))) (Undefined!3857) (MissingVacant!3857 (index!17610 (_ BitVec 32))) )
))
(declare-fun lt!224042 () SeekEntryResult!3857)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494780 (= res!297505 (or (= lt!224042 (MissingZero!3857 i!1204)) (= lt!224042 (MissingVacant!3857 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32003 (_ BitVec 32)) SeekEntryResult!3857)

(assert (=> b!494780 (= lt!224042 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494781 () Bool)

(declare-fun e!290299 () Bool)

(assert (=> b!494781 (= e!290299 (= (seekEntryOrOpen!0 (select (arr!15383 a!3235) j!176) a!3235 mask!3524) (Found!3857 j!176)))))

(declare-fun b!494782 () Bool)

(declare-fun res!297500 () Bool)

(assert (=> b!494782 (=> (not res!297500) (not e!290297))))

(assert (=> b!494782 (= res!297500 (validKeyInArray!0 k!2280))))

(declare-fun res!297507 () Bool)

(assert (=> start!45098 (=> (not res!297507) (not e!290297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45098 (= res!297507 (validMask!0 mask!3524))))

(assert (=> start!45098 e!290297))

(assert (=> start!45098 true))

(declare-fun array_inv!11157 (array!32003) Bool)

(assert (=> start!45098 (array_inv!11157 a!3235)))

(declare-fun b!494783 () Bool)

(declare-fun res!297502 () Bool)

(assert (=> b!494783 (=> (not res!297502) (not e!290296))))

(declare-datatypes ((List!9594 0))(
  ( (Nil!9591) (Cons!9590 (h!10458 (_ BitVec 64)) (t!15830 List!9594)) )
))
(declare-fun arrayNoDuplicates!0 (array!32003 (_ BitVec 32) List!9594) Bool)

(assert (=> b!494783 (= res!297502 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9591))))

(declare-fun b!494784 () Bool)

(declare-fun e!290295 () Bool)

(assert (=> b!494784 (= e!290296 (not e!290295))))

(declare-fun res!297509 () Bool)

(assert (=> b!494784 (=> res!297509 e!290295)))

(declare-fun lt!224041 () (_ BitVec 32))

(declare-fun lt!224043 () SeekEntryResult!3857)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32003 (_ BitVec 32)) SeekEntryResult!3857)

(assert (=> b!494784 (= res!297509 (= lt!224043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224041 (select (store (arr!15383 a!3235) i!1204 k!2280) j!176) (array!32004 (store (arr!15383 a!3235) i!1204 k!2280) (size!15747 a!3235)) mask!3524)))))

(declare-fun lt!224045 () (_ BitVec 32))

(assert (=> b!494784 (= lt!224043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224045 (select (arr!15383 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494784 (= lt!224041 (toIndex!0 (select (store (arr!15383 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494784 (= lt!224045 (toIndex!0 (select (arr!15383 a!3235) j!176) mask!3524))))

(assert (=> b!494784 e!290299))

(declare-fun res!297508 () Bool)

(assert (=> b!494784 (=> (not res!297508) (not e!290299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32003 (_ BitVec 32)) Bool)

(assert (=> b!494784 (= res!297508 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14652 0))(
  ( (Unit!14653) )
))
(declare-fun lt!224044 () Unit!14652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32003 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14652)

(assert (=> b!494784 (= lt!224044 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494785 () Bool)

(declare-fun res!297504 () Bool)

(assert (=> b!494785 (=> (not res!297504) (not e!290297))))

(assert (=> b!494785 (= res!297504 (and (= (size!15747 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15747 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15747 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494786 () Bool)

(assert (=> b!494786 (= e!290295 (or (not (= (select (arr!15383 a!3235) (index!17609 lt!224043)) (select (arr!15383 a!3235) j!176))) (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (=> b!494786 (and (bvslt (x!46698 lt!224043) #b01111111111111111111111111111110) (or (= (select (arr!15383 a!3235) (index!17609 lt!224043)) (select (arr!15383 a!3235) j!176)) (= (select (arr!15383 a!3235) (index!17609 lt!224043)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15383 a!3235) (index!17609 lt!224043)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!494787 () Bool)

(declare-fun res!297501 () Bool)

(assert (=> b!494787 (=> (not res!297501) (not e!290296))))

(assert (=> b!494787 (= res!297501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494788 () Bool)

(declare-fun res!297503 () Bool)

(assert (=> b!494788 (=> (not res!297503) (not e!290297))))

(declare-fun arrayContainsKey!0 (array!32003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494788 (= res!297503 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494789 () Bool)

(declare-fun res!297506 () Bool)

(assert (=> b!494789 (=> res!297506 e!290295)))

(assert (=> b!494789 (= res!297506 (or (undefined!4669 lt!224043) (not (is-Intermediate!3857 lt!224043))))))

(assert (= (and start!45098 res!297507) b!494785))

(assert (= (and b!494785 res!297504) b!494779))

(assert (= (and b!494779 res!297499) b!494782))

(assert (= (and b!494782 res!297500) b!494788))

(assert (= (and b!494788 res!297503) b!494780))

(assert (= (and b!494780 res!297505) b!494787))

(assert (= (and b!494787 res!297501) b!494783))

(assert (= (and b!494783 res!297502) b!494784))

(assert (= (and b!494784 res!297508) b!494781))

(assert (= (and b!494784 (not res!297509)) b!494789))

(assert (= (and b!494789 (not res!297506)) b!494786))

(declare-fun m!475961 () Bool)

(assert (=> b!494786 m!475961))

(declare-fun m!475963 () Bool)

(assert (=> b!494786 m!475963))

(assert (=> b!494781 m!475963))

(assert (=> b!494781 m!475963))

(declare-fun m!475965 () Bool)

(assert (=> b!494781 m!475965))

(declare-fun m!475967 () Bool)

(assert (=> b!494782 m!475967))

(declare-fun m!475969 () Bool)

(assert (=> b!494788 m!475969))

(declare-fun m!475971 () Bool)

(assert (=> start!45098 m!475971))

(declare-fun m!475973 () Bool)

(assert (=> start!45098 m!475973))

(declare-fun m!475975 () Bool)

(assert (=> b!494787 m!475975))

(declare-fun m!475977 () Bool)

(assert (=> b!494784 m!475977))

(declare-fun m!475979 () Bool)

(assert (=> b!494784 m!475979))

(assert (=> b!494784 m!475963))

(declare-fun m!475981 () Bool)

(assert (=> b!494784 m!475981))

(assert (=> b!494784 m!475963))

(declare-fun m!475983 () Bool)

(assert (=> b!494784 m!475983))

(assert (=> b!494784 m!475979))

(declare-fun m!475985 () Bool)

(assert (=> b!494784 m!475985))

(assert (=> b!494784 m!475963))

(declare-fun m!475987 () Bool)

(assert (=> b!494784 m!475987))

(assert (=> b!494784 m!475979))

(declare-fun m!475989 () Bool)

(assert (=> b!494784 m!475989))

(declare-fun m!475991 () Bool)

(assert (=> b!494784 m!475991))

(assert (=> b!494779 m!475963))

(assert (=> b!494779 m!475963))

(declare-fun m!475993 () Bool)

(assert (=> b!494779 m!475993))

(declare-fun m!475995 () Bool)

(assert (=> b!494780 m!475995))

(declare-fun m!475997 () Bool)

(assert (=> b!494783 m!475997))

(push 1)

