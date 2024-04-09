; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45188 () Bool)

(assert start!45188)

(declare-fun b!495565 () Bool)

(declare-fun e!290707 () Bool)

(declare-fun e!290709 () Bool)

(assert (=> b!495565 (= e!290707 e!290709)))

(declare-fun res!298106 () Bool)

(assert (=> b!495565 (=> (not res!298106) (not e!290709))))

(declare-datatypes ((SeekEntryResult!3872 0))(
  ( (MissingZero!3872 (index!17667 (_ BitVec 32))) (Found!3872 (index!17668 (_ BitVec 32))) (Intermediate!3872 (undefined!4684 Bool) (index!17669 (_ BitVec 32)) (x!46759 (_ BitVec 32))) (Undefined!3872) (MissingVacant!3872 (index!17670 (_ BitVec 32))) )
))
(declare-fun lt!224398 () SeekEntryResult!3872)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495565 (= res!298106 (or (= lt!224398 (MissingZero!3872 i!1204)) (= lt!224398 (MissingVacant!3872 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32036 0))(
  ( (array!32037 (arr!15398 (Array (_ BitVec 32) (_ BitVec 64))) (size!15762 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32036)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32036 (_ BitVec 32)) SeekEntryResult!3872)

(assert (=> b!495565 (= lt!224398 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495566 () Bool)

(declare-fun e!290708 () Bool)

(assert (=> b!495566 (= e!290708 true)))

(declare-fun lt!224395 () SeekEntryResult!3872)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495566 (and (bvslt (x!46759 lt!224395) #b01111111111111111111111111111110) (or (= (select (arr!15398 a!3235) (index!17669 lt!224395)) (select (arr!15398 a!3235) j!176)) (= (select (arr!15398 a!3235) (index!17669 lt!224395)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15398 a!3235) (index!17669 lt!224395)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495567 () Bool)

(declare-fun res!298107 () Bool)

(assert (=> b!495567 (=> (not res!298107) (not e!290709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32036 (_ BitVec 32)) Bool)

(assert (=> b!495567 (= res!298107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495568 () Bool)

(declare-fun res!298111 () Bool)

(assert (=> b!495568 (=> (not res!298111) (not e!290707))))

(assert (=> b!495568 (= res!298111 (and (= (size!15762 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15762 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15762 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495569 () Bool)

(assert (=> b!495569 (= e!290709 (not e!290708))))

(declare-fun res!298108 () Bool)

(assert (=> b!495569 (=> res!298108 e!290708)))

(declare-fun lt!224399 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32036 (_ BitVec 32)) SeekEntryResult!3872)

(assert (=> b!495569 (= res!298108 (= lt!224395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224399 (select (store (arr!15398 a!3235) i!1204 k!2280) j!176) (array!32037 (store (arr!15398 a!3235) i!1204 k!2280) (size!15762 a!3235)) mask!3524)))))

(declare-fun lt!224397 () (_ BitVec 32))

(assert (=> b!495569 (= lt!224395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224397 (select (arr!15398 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495569 (= lt!224399 (toIndex!0 (select (store (arr!15398 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495569 (= lt!224397 (toIndex!0 (select (arr!15398 a!3235) j!176) mask!3524))))

(declare-fun e!290710 () Bool)

(assert (=> b!495569 e!290710))

(declare-fun res!298104 () Bool)

(assert (=> b!495569 (=> (not res!298104) (not e!290710))))

(assert (=> b!495569 (= res!298104 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14682 0))(
  ( (Unit!14683) )
))
(declare-fun lt!224396 () Unit!14682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32036 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14682)

(assert (=> b!495569 (= lt!224396 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495570 () Bool)

(declare-fun res!298112 () Bool)

(assert (=> b!495570 (=> (not res!298112) (not e!290709))))

(declare-datatypes ((List!9609 0))(
  ( (Nil!9606) (Cons!9605 (h!10476 (_ BitVec 64)) (t!15845 List!9609)) )
))
(declare-fun arrayNoDuplicates!0 (array!32036 (_ BitVec 32) List!9609) Bool)

(assert (=> b!495570 (= res!298112 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9606))))

(declare-fun b!495571 () Bool)

(declare-fun res!298110 () Bool)

(assert (=> b!495571 (=> res!298110 e!290708)))

(assert (=> b!495571 (= res!298110 (or (undefined!4684 lt!224395) (not (is-Intermediate!3872 lt!224395))))))

(declare-fun b!495572 () Bool)

(declare-fun res!298105 () Bool)

(assert (=> b!495572 (=> (not res!298105) (not e!290707))))

(declare-fun arrayContainsKey!0 (array!32036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495572 (= res!298105 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495574 () Bool)

(declare-fun res!298102 () Bool)

(assert (=> b!495574 (=> (not res!298102) (not e!290707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495574 (= res!298102 (validKeyInArray!0 (select (arr!15398 a!3235) j!176)))))

(declare-fun b!495575 () Bool)

(assert (=> b!495575 (= e!290710 (= (seekEntryOrOpen!0 (select (arr!15398 a!3235) j!176) a!3235 mask!3524) (Found!3872 j!176)))))

(declare-fun res!298109 () Bool)

(assert (=> start!45188 (=> (not res!298109) (not e!290707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45188 (= res!298109 (validMask!0 mask!3524))))

(assert (=> start!45188 e!290707))

(assert (=> start!45188 true))

(declare-fun array_inv!11172 (array!32036) Bool)

(assert (=> start!45188 (array_inv!11172 a!3235)))

(declare-fun b!495573 () Bool)

(declare-fun res!298103 () Bool)

(assert (=> b!495573 (=> (not res!298103) (not e!290707))))

(assert (=> b!495573 (= res!298103 (validKeyInArray!0 k!2280))))

(assert (= (and start!45188 res!298109) b!495568))

(assert (= (and b!495568 res!298111) b!495574))

(assert (= (and b!495574 res!298102) b!495573))

(assert (= (and b!495573 res!298103) b!495572))

(assert (= (and b!495572 res!298105) b!495565))

(assert (= (and b!495565 res!298106) b!495567))

(assert (= (and b!495567 res!298107) b!495570))

(assert (= (and b!495570 res!298112) b!495569))

(assert (= (and b!495569 res!298104) b!495575))

(assert (= (and b!495569 (not res!298108)) b!495571))

(assert (= (and b!495571 (not res!298110)) b!495566))

(declare-fun m!476735 () Bool)

(assert (=> b!495574 m!476735))

(assert (=> b!495574 m!476735))

(declare-fun m!476737 () Bool)

(assert (=> b!495574 m!476737))

(declare-fun m!476739 () Bool)

(assert (=> b!495572 m!476739))

(declare-fun m!476741 () Bool)

(assert (=> b!495569 m!476741))

(declare-fun m!476743 () Bool)

(assert (=> b!495569 m!476743))

(declare-fun m!476745 () Bool)

(assert (=> b!495569 m!476745))

(assert (=> b!495569 m!476735))

(declare-fun m!476747 () Bool)

(assert (=> b!495569 m!476747))

(assert (=> b!495569 m!476735))

(declare-fun m!476749 () Bool)

(assert (=> b!495569 m!476749))

(assert (=> b!495569 m!476745))

(declare-fun m!476751 () Bool)

(assert (=> b!495569 m!476751))

(assert (=> b!495569 m!476735))

(declare-fun m!476753 () Bool)

(assert (=> b!495569 m!476753))

(assert (=> b!495569 m!476745))

(declare-fun m!476755 () Bool)

(assert (=> b!495569 m!476755))

(declare-fun m!476757 () Bool)

(assert (=> b!495565 m!476757))

(assert (=> b!495575 m!476735))

(assert (=> b!495575 m!476735))

(declare-fun m!476759 () Bool)

(assert (=> b!495575 m!476759))

(declare-fun m!476761 () Bool)

(assert (=> start!45188 m!476761))

(declare-fun m!476763 () Bool)

(assert (=> start!45188 m!476763))

(declare-fun m!476765 () Bool)

(assert (=> b!495573 m!476765))

(declare-fun m!476767 () Bool)

(assert (=> b!495570 m!476767))

(declare-fun m!476769 () Bool)

(assert (=> b!495567 m!476769))

(declare-fun m!476771 () Bool)

(assert (=> b!495566 m!476771))

(assert (=> b!495566 m!476735))

(push 1)

