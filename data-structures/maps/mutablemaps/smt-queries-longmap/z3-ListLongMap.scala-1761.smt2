; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32222 () Bool)

(assert start!32222)

(declare-fun b!320567 () Bool)

(declare-fun res!174846 () Bool)

(declare-fun e!198861 () Bool)

(assert (=> b!320567 (=> (not res!174846) (not e!198861))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320567 (= res!174846 (validKeyInArray!0 k0!2497))))

(declare-fun b!320568 () Bool)

(assert (=> b!320568 (= e!198861 false)))

(declare-datatypes ((array!16408 0))(
  ( (array!16409 (arr!7760 (Array (_ BitVec 32) (_ BitVec 64))) (size!8112 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16408)

(declare-datatypes ((SeekEntryResult!2902 0))(
  ( (MissingZero!2902 (index!13784 (_ BitVec 32))) (Found!2902 (index!13785 (_ BitVec 32))) (Intermediate!2902 (undefined!3714 Bool) (index!13786 (_ BitVec 32)) (x!32020 (_ BitVec 32))) (Undefined!2902) (MissingVacant!2902 (index!13787 (_ BitVec 32))) )
))
(declare-fun lt!156077 () SeekEntryResult!2902)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16408 (_ BitVec 32)) SeekEntryResult!2902)

(assert (=> b!320568 (= lt!156077 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!320569 () Bool)

(declare-fun res!174845 () Bool)

(assert (=> b!320569 (=> (not res!174845) (not e!198861))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320569 (= res!174845 (and (= (size!8112 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8112 a!3305))))))

(declare-fun res!174847 () Bool)

(assert (=> start!32222 (=> (not res!174847) (not e!198861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32222 (= res!174847 (validMask!0 mask!3777))))

(assert (=> start!32222 e!198861))

(declare-fun array_inv!5714 (array!16408) Bool)

(assert (=> start!32222 (array_inv!5714 a!3305)))

(assert (=> start!32222 true))

(declare-fun b!320570 () Bool)

(declare-fun res!174850 () Bool)

(assert (=> b!320570 (=> (not res!174850) (not e!198861))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!320570 (= res!174850 (and (= (select (arr!7760 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8112 a!3305))))))

(declare-fun b!320571 () Bool)

(declare-fun res!174852 () Bool)

(assert (=> b!320571 (=> (not res!174852) (not e!198861))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320571 (= res!174852 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!2902 false resIndex!58 resX!58)))))

(declare-fun b!320572 () Bool)

(declare-fun res!174851 () Bool)

(assert (=> b!320572 (=> (not res!174851) (not e!198861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16408 (_ BitVec 32)) Bool)

(assert (=> b!320572 (= res!174851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320573 () Bool)

(declare-fun res!174849 () Bool)

(assert (=> b!320573 (=> (not res!174849) (not e!198861))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16408 (_ BitVec 32)) SeekEntryResult!2902)

(assert (=> b!320573 (= res!174849 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2902 i!1250)))))

(declare-fun b!320574 () Bool)

(declare-fun res!174848 () Bool)

(assert (=> b!320574 (=> (not res!174848) (not e!198861))))

(declare-fun arrayContainsKey!0 (array!16408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320574 (= res!174848 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32222 res!174847) b!320569))

(assert (= (and b!320569 res!174845) b!320567))

(assert (= (and b!320567 res!174846) b!320574))

(assert (= (and b!320574 res!174848) b!320573))

(assert (= (and b!320573 res!174849) b!320572))

(assert (= (and b!320572 res!174851) b!320571))

(assert (= (and b!320571 res!174852) b!320570))

(assert (= (and b!320570 res!174850) b!320568))

(declare-fun m!328875 () Bool)

(assert (=> b!320570 m!328875))

(declare-fun m!328877 () Bool)

(assert (=> b!320571 m!328877))

(assert (=> b!320571 m!328877))

(declare-fun m!328879 () Bool)

(assert (=> b!320571 m!328879))

(declare-fun m!328881 () Bool)

(assert (=> start!32222 m!328881))

(declare-fun m!328883 () Bool)

(assert (=> start!32222 m!328883))

(declare-fun m!328885 () Bool)

(assert (=> b!320573 m!328885))

(declare-fun m!328887 () Bool)

(assert (=> b!320568 m!328887))

(declare-fun m!328889 () Bool)

(assert (=> b!320567 m!328889))

(declare-fun m!328891 () Bool)

(assert (=> b!320574 m!328891))

(declare-fun m!328893 () Bool)

(assert (=> b!320572 m!328893))

(check-sat (not start!32222) (not b!320567) (not b!320568) (not b!320573) (not b!320571) (not b!320572) (not b!320574))
