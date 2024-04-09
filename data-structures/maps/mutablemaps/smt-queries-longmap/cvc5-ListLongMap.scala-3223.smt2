; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45094 () Bool)

(assert start!45094)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31999 0))(
  ( (array!32000 (arr!15381 (Array (_ BitVec 32) (_ BitVec 64))) (size!15745 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31999)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3855 0))(
  ( (MissingZero!3855 (index!17599 (_ BitVec 32))) (Found!3855 (index!17600 (_ BitVec 32))) (Intermediate!3855 (undefined!4667 Bool) (index!17601 (_ BitVec 32)) (x!46696 (_ BitVec 32))) (Undefined!3855) (MissingVacant!3855 (index!17602 (_ BitVec 32))) )
))
(declare-fun lt!224013 () SeekEntryResult!3855)

(declare-fun e!290266 () Bool)

(declare-fun b!494713 () Bool)

(assert (=> b!494713 (= e!290266 (or (not (= (select (arr!15381 a!3235) (index!17601 lt!224013)) (select (arr!15381 a!3235) j!176))) (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (=> b!494713 (and (bvslt (x!46696 lt!224013) #b01111111111111111111111111111110) (or (= (select (arr!15381 a!3235) (index!17601 lt!224013)) (select (arr!15381 a!3235) j!176)) (= (select (arr!15381 a!3235) (index!17601 lt!224013)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15381 a!3235) (index!17601 lt!224013)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!494714 () Bool)

(declare-fun res!297433 () Bool)

(declare-fun e!290269 () Bool)

(assert (=> b!494714 (=> (not res!297433) (not e!290269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494714 (= res!297433 (validKeyInArray!0 (select (arr!15381 a!3235) j!176)))))

(declare-fun res!297443 () Bool)

(assert (=> start!45094 (=> (not res!297443) (not e!290269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45094 (= res!297443 (validMask!0 mask!3524))))

(assert (=> start!45094 e!290269))

(assert (=> start!45094 true))

(declare-fun array_inv!11155 (array!31999) Bool)

(assert (=> start!45094 (array_inv!11155 a!3235)))

(declare-fun b!494715 () Bool)

(declare-fun res!297437 () Bool)

(assert (=> b!494715 (=> (not res!297437) (not e!290269))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494715 (= res!297437 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494716 () Bool)

(declare-fun e!290265 () Bool)

(assert (=> b!494716 (= e!290269 e!290265)))

(declare-fun res!297436 () Bool)

(assert (=> b!494716 (=> (not res!297436) (not e!290265))))

(declare-fun lt!224015 () SeekEntryResult!3855)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494716 (= res!297436 (or (= lt!224015 (MissingZero!3855 i!1204)) (= lt!224015 (MissingVacant!3855 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31999 (_ BitVec 32)) SeekEntryResult!3855)

(assert (=> b!494716 (= lt!224015 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494717 () Bool)

(declare-fun res!297441 () Bool)

(assert (=> b!494717 (=> (not res!297441) (not e!290269))))

(assert (=> b!494717 (= res!297441 (validKeyInArray!0 k!2280))))

(declare-fun b!494718 () Bool)

(declare-fun res!297435 () Bool)

(assert (=> b!494718 (=> (not res!297435) (not e!290265))))

(declare-datatypes ((List!9592 0))(
  ( (Nil!9589) (Cons!9588 (h!10456 (_ BitVec 64)) (t!15828 List!9592)) )
))
(declare-fun arrayNoDuplicates!0 (array!31999 (_ BitVec 32) List!9592) Bool)

(assert (=> b!494718 (= res!297435 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9589))))

(declare-fun e!290267 () Bool)

(declare-fun b!494719 () Bool)

(assert (=> b!494719 (= e!290267 (= (seekEntryOrOpen!0 (select (arr!15381 a!3235) j!176) a!3235 mask!3524) (Found!3855 j!176)))))

(declare-fun b!494720 () Bool)

(declare-fun res!297440 () Bool)

(assert (=> b!494720 (=> (not res!297440) (not e!290265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31999 (_ BitVec 32)) Bool)

(assert (=> b!494720 (= res!297440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494721 () Bool)

(declare-fun res!297442 () Bool)

(assert (=> b!494721 (=> res!297442 e!290266)))

(assert (=> b!494721 (= res!297442 (or (undefined!4667 lt!224013) (not (is-Intermediate!3855 lt!224013))))))

(declare-fun b!494722 () Bool)

(assert (=> b!494722 (= e!290265 (not e!290266))))

(declare-fun res!297438 () Bool)

(assert (=> b!494722 (=> res!297438 e!290266)))

(declare-fun lt!224012 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31999 (_ BitVec 32)) SeekEntryResult!3855)

(assert (=> b!494722 (= res!297438 (= lt!224013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224012 (select (store (arr!15381 a!3235) i!1204 k!2280) j!176) (array!32000 (store (arr!15381 a!3235) i!1204 k!2280) (size!15745 a!3235)) mask!3524)))))

(declare-fun lt!224011 () (_ BitVec 32))

(assert (=> b!494722 (= lt!224013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224011 (select (arr!15381 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494722 (= lt!224012 (toIndex!0 (select (store (arr!15381 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494722 (= lt!224011 (toIndex!0 (select (arr!15381 a!3235) j!176) mask!3524))))

(assert (=> b!494722 e!290267))

(declare-fun res!297439 () Bool)

(assert (=> b!494722 (=> (not res!297439) (not e!290267))))

(assert (=> b!494722 (= res!297439 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14648 0))(
  ( (Unit!14649) )
))
(declare-fun lt!224014 () Unit!14648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14648)

(assert (=> b!494722 (= lt!224014 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494723 () Bool)

(declare-fun res!297434 () Bool)

(assert (=> b!494723 (=> (not res!297434) (not e!290269))))

(assert (=> b!494723 (= res!297434 (and (= (size!15745 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15745 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15745 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45094 res!297443) b!494723))

(assert (= (and b!494723 res!297434) b!494714))

(assert (= (and b!494714 res!297433) b!494717))

(assert (= (and b!494717 res!297441) b!494715))

(assert (= (and b!494715 res!297437) b!494716))

(assert (= (and b!494716 res!297436) b!494720))

(assert (= (and b!494720 res!297440) b!494718))

(assert (= (and b!494718 res!297435) b!494722))

(assert (= (and b!494722 res!297439) b!494719))

(assert (= (and b!494722 (not res!297438)) b!494721))

(assert (= (and b!494721 (not res!297442)) b!494713))

(declare-fun m!475885 () Bool)

(assert (=> b!494714 m!475885))

(assert (=> b!494714 m!475885))

(declare-fun m!475887 () Bool)

(assert (=> b!494714 m!475887))

(declare-fun m!475889 () Bool)

(assert (=> b!494715 m!475889))

(declare-fun m!475891 () Bool)

(assert (=> b!494716 m!475891))

(assert (=> b!494719 m!475885))

(assert (=> b!494719 m!475885))

(declare-fun m!475893 () Bool)

(assert (=> b!494719 m!475893))

(declare-fun m!475895 () Bool)

(assert (=> start!45094 m!475895))

(declare-fun m!475897 () Bool)

(assert (=> start!45094 m!475897))

(declare-fun m!475899 () Bool)

(assert (=> b!494717 m!475899))

(assert (=> b!494722 m!475885))

(declare-fun m!475901 () Bool)

(assert (=> b!494722 m!475901))

(declare-fun m!475903 () Bool)

(assert (=> b!494722 m!475903))

(declare-fun m!475905 () Bool)

(assert (=> b!494722 m!475905))

(declare-fun m!475907 () Bool)

(assert (=> b!494722 m!475907))

(assert (=> b!494722 m!475885))

(declare-fun m!475909 () Bool)

(assert (=> b!494722 m!475909))

(assert (=> b!494722 m!475885))

(assert (=> b!494722 m!475907))

(declare-fun m!475911 () Bool)

(assert (=> b!494722 m!475911))

(assert (=> b!494722 m!475907))

(declare-fun m!475913 () Bool)

(assert (=> b!494722 m!475913))

(declare-fun m!475915 () Bool)

(assert (=> b!494722 m!475915))

(declare-fun m!475917 () Bool)

(assert (=> b!494718 m!475917))

(declare-fun m!475919 () Bool)

(assert (=> b!494713 m!475919))

(assert (=> b!494713 m!475885))

(declare-fun m!475921 () Bool)

(assert (=> b!494720 m!475921))

(push 1)

