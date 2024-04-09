; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45814 () Bool)

(assert start!45814)

(declare-fun b!506854 () Bool)

(declare-fun res!307966 () Bool)

(declare-fun e!296645 () Bool)

(assert (=> b!506854 (=> (not res!307966) (not e!296645))))

(declare-datatypes ((array!32530 0))(
  ( (array!32531 (arr!15642 (Array (_ BitVec 32) (_ BitVec 64))) (size!16006 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32530)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506854 (= res!307966 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506855 () Bool)

(declare-fun e!296642 () Bool)

(declare-fun e!296646 () Bool)

(assert (=> b!506855 (= e!296642 (not e!296646))))

(declare-fun res!307973 () Bool)

(assert (=> b!506855 (=> res!307973 e!296646)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4116 0))(
  ( (MissingZero!4116 (index!18652 (_ BitVec 32))) (Found!4116 (index!18653 (_ BitVec 32))) (Intermediate!4116 (undefined!4928 Bool) (index!18654 (_ BitVec 32)) (x!47680 (_ BitVec 32))) (Undefined!4116) (MissingVacant!4116 (index!18655 (_ BitVec 32))) )
))
(declare-fun lt!231388 () SeekEntryResult!4116)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!231387 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32530 (_ BitVec 32)) SeekEntryResult!4116)

(assert (=> b!506855 (= res!307973 (= lt!231388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231387 (select (store (arr!15642 a!3235) i!1204 k!2280) j!176) (array!32531 (store (arr!15642 a!3235) i!1204 k!2280) (size!16006 a!3235)) mask!3524)))))

(declare-fun lt!231390 () (_ BitVec 32))

(assert (=> b!506855 (= lt!231388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231390 (select (arr!15642 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506855 (= lt!231387 (toIndex!0 (select (store (arr!15642 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506855 (= lt!231390 (toIndex!0 (select (arr!15642 a!3235) j!176) mask!3524))))

(declare-fun e!296644 () Bool)

(assert (=> b!506855 e!296644))

(declare-fun res!307963 () Bool)

(assert (=> b!506855 (=> (not res!307963) (not e!296644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32530 (_ BitVec 32)) Bool)

(assert (=> b!506855 (= res!307963 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15512 0))(
  ( (Unit!15513) )
))
(declare-fun lt!231392 () Unit!15512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15512)

(assert (=> b!506855 (= lt!231392 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506856 () Bool)

(declare-fun res!307970 () Bool)

(assert (=> b!506856 (=> (not res!307970) (not e!296645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506856 (= res!307970 (validKeyInArray!0 k!2280))))

(declare-fun b!506857 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32530 (_ BitVec 32)) SeekEntryResult!4116)

(assert (=> b!506857 (= e!296644 (= (seekEntryOrOpen!0 (select (arr!15642 a!3235) j!176) a!3235 mask!3524) (Found!4116 j!176)))))

(declare-fun b!506858 () Bool)

(declare-fun e!296643 () Bool)

(assert (=> b!506858 (= e!296646 e!296643)))

(declare-fun res!307972 () Bool)

(assert (=> b!506858 (=> res!307972 e!296643)))

(declare-fun lt!231391 () Bool)

(assert (=> b!506858 (= res!307972 (or (and (not lt!231391) (undefined!4928 lt!231388)) (and (not lt!231391) (not (undefined!4928 lt!231388)))))))

(assert (=> b!506858 (= lt!231391 (not (is-Intermediate!4116 lt!231388)))))

(declare-fun b!506859 () Bool)

(assert (=> b!506859 (= e!296645 e!296642)))

(declare-fun res!307967 () Bool)

(assert (=> b!506859 (=> (not res!307967) (not e!296642))))

(declare-fun lt!231389 () SeekEntryResult!4116)

(assert (=> b!506859 (= res!307967 (or (= lt!231389 (MissingZero!4116 i!1204)) (= lt!231389 (MissingVacant!4116 i!1204))))))

(assert (=> b!506859 (= lt!231389 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506860 () Bool)

(declare-fun res!307965 () Bool)

(assert (=> b!506860 (=> (not res!307965) (not e!296642))))

(assert (=> b!506860 (= res!307965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!307971 () Bool)

(assert (=> start!45814 (=> (not res!307971) (not e!296645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45814 (= res!307971 (validMask!0 mask!3524))))

(assert (=> start!45814 e!296645))

(assert (=> start!45814 true))

(declare-fun array_inv!11416 (array!32530) Bool)

(assert (=> start!45814 (array_inv!11416 a!3235)))

(declare-fun b!506861 () Bool)

(declare-fun res!307968 () Bool)

(assert (=> b!506861 (=> (not res!307968) (not e!296645))))

(assert (=> b!506861 (= res!307968 (and (= (size!16006 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16006 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16006 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506862 () Bool)

(assert (=> b!506862 (= e!296643 true)))

(assert (=> b!506862 false))

(declare-fun b!506863 () Bool)

(declare-fun res!307964 () Bool)

(assert (=> b!506863 (=> (not res!307964) (not e!296645))))

(assert (=> b!506863 (= res!307964 (validKeyInArray!0 (select (arr!15642 a!3235) j!176)))))

(declare-fun b!506864 () Bool)

(declare-fun res!307969 () Bool)

(assert (=> b!506864 (=> (not res!307969) (not e!296642))))

(declare-datatypes ((List!9853 0))(
  ( (Nil!9850) (Cons!9849 (h!10726 (_ BitVec 64)) (t!16089 List!9853)) )
))
(declare-fun arrayNoDuplicates!0 (array!32530 (_ BitVec 32) List!9853) Bool)

(assert (=> b!506864 (= res!307969 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9850))))

(assert (= (and start!45814 res!307971) b!506861))

(assert (= (and b!506861 res!307968) b!506863))

(assert (= (and b!506863 res!307964) b!506856))

(assert (= (and b!506856 res!307970) b!506854))

(assert (= (and b!506854 res!307966) b!506859))

(assert (= (and b!506859 res!307967) b!506860))

(assert (= (and b!506860 res!307965) b!506864))

(assert (= (and b!506864 res!307969) b!506855))

(assert (= (and b!506855 res!307963) b!506857))

(assert (= (and b!506855 (not res!307973)) b!506858))

(assert (= (and b!506858 (not res!307972)) b!506862))

(declare-fun m!487609 () Bool)

(assert (=> b!506855 m!487609))

(declare-fun m!487611 () Bool)

(assert (=> b!506855 m!487611))

(declare-fun m!487613 () Bool)

(assert (=> b!506855 m!487613))

(declare-fun m!487615 () Bool)

(assert (=> b!506855 m!487615))

(assert (=> b!506855 m!487613))

(declare-fun m!487617 () Bool)

(assert (=> b!506855 m!487617))

(assert (=> b!506855 m!487613))

(declare-fun m!487619 () Bool)

(assert (=> b!506855 m!487619))

(assert (=> b!506855 m!487611))

(declare-fun m!487621 () Bool)

(assert (=> b!506855 m!487621))

(declare-fun m!487623 () Bool)

(assert (=> b!506855 m!487623))

(assert (=> b!506855 m!487611))

(declare-fun m!487625 () Bool)

(assert (=> b!506855 m!487625))

(assert (=> b!506857 m!487613))

(assert (=> b!506857 m!487613))

(declare-fun m!487627 () Bool)

(assert (=> b!506857 m!487627))

(declare-fun m!487629 () Bool)

(assert (=> start!45814 m!487629))

(declare-fun m!487631 () Bool)

(assert (=> start!45814 m!487631))

(declare-fun m!487633 () Bool)

(assert (=> b!506859 m!487633))

(declare-fun m!487635 () Bool)

(assert (=> b!506856 m!487635))

(assert (=> b!506863 m!487613))

(assert (=> b!506863 m!487613))

(declare-fun m!487637 () Bool)

(assert (=> b!506863 m!487637))

(declare-fun m!487639 () Bool)

(assert (=> b!506860 m!487639))

(declare-fun m!487641 () Bool)

(assert (=> b!506864 m!487641))

(declare-fun m!487643 () Bool)

(assert (=> b!506854 m!487643))

(push 1)

