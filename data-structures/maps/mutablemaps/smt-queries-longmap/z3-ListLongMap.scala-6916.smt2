; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86946 () Bool)

(assert start!86946)

(declare-fun b!1007847 () Bool)

(declare-fun e!567184 () Bool)

(assert (=> b!1007847 (= e!567184 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445413 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007847 (= lt!445413 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007848 () Bool)

(declare-fun res!676897 () Bool)

(declare-fun e!567188 () Bool)

(assert (=> b!1007848 (=> (not res!676897) (not e!567188))))

(declare-datatypes ((array!63546 0))(
  ( (array!63547 (arr!30590 (Array (_ BitVec 32) (_ BitVec 64))) (size!31093 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63546)

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007848 (= res!676897 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31093 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31093 a!3219))))))

(declare-fun b!1007849 () Bool)

(declare-fun res!676904 () Bool)

(declare-fun e!567187 () Bool)

(assert (=> b!1007849 (=> (not res!676904) (not e!567187))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007849 (= res!676904 (validKeyInArray!0 (select (arr!30590 a!3219) j!170)))))

(declare-fun res!676899 () Bool)

(assert (=> start!86946 (=> (not res!676899) (not e!567187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86946 (= res!676899 (validMask!0 mask!3464))))

(assert (=> start!86946 e!567187))

(declare-fun array_inv!23580 (array!63546) Bool)

(assert (=> start!86946 (array_inv!23580 a!3219)))

(assert (=> start!86946 true))

(declare-fun b!1007850 () Bool)

(declare-fun e!567185 () Bool)

(declare-fun e!567183 () Bool)

(assert (=> b!1007850 (= e!567185 e!567183)))

(declare-fun res!676908 () Bool)

(assert (=> b!1007850 (=> (not res!676908) (not e!567183))))

(declare-datatypes ((SeekEntryResult!9522 0))(
  ( (MissingZero!9522 (index!40458 (_ BitVec 32))) (Found!9522 (index!40459 (_ BitVec 32))) (Intermediate!9522 (undefined!10334 Bool) (index!40460 (_ BitVec 32)) (x!87881 (_ BitVec 32))) (Undefined!9522) (MissingVacant!9522 (index!40461 (_ BitVec 32))) )
))
(declare-fun lt!445415 () SeekEntryResult!9522)

(declare-fun lt!445419 () SeekEntryResult!9522)

(assert (=> b!1007850 (= res!676908 (= lt!445415 lt!445419))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63546 (_ BitVec 32)) SeekEntryResult!9522)

(assert (=> b!1007850 (= lt!445415 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30590 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007851 () Bool)

(declare-fun res!676901 () Bool)

(assert (=> b!1007851 (=> (not res!676901) (not e!567188))))

(declare-datatypes ((List!21392 0))(
  ( (Nil!21389) (Cons!21388 (h!22574 (_ BitVec 64)) (t!30401 List!21392)) )
))
(declare-fun arrayNoDuplicates!0 (array!63546 (_ BitVec 32) List!21392) Bool)

(assert (=> b!1007851 (= res!676901 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21389))))

(declare-fun b!1007852 () Bool)

(declare-fun res!676898 () Bool)

(assert (=> b!1007852 (=> (not res!676898) (not e!567187))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007852 (= res!676898 (and (= (size!31093 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31093 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31093 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007853 () Bool)

(declare-fun res!676900 () Bool)

(assert (=> b!1007853 (=> (not res!676900) (not e!567187))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007853 (= res!676900 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007854 () Bool)

(declare-fun res!676896 () Bool)

(assert (=> b!1007854 (=> (not res!676896) (not e!567187))))

(assert (=> b!1007854 (= res!676896 (validKeyInArray!0 k0!2224))))

(declare-fun b!1007855 () Bool)

(assert (=> b!1007855 (= e!567188 e!567185)))

(declare-fun res!676907 () Bool)

(assert (=> b!1007855 (=> (not res!676907) (not e!567185))))

(declare-fun lt!445414 () SeekEntryResult!9522)

(assert (=> b!1007855 (= res!676907 (= lt!445414 lt!445419))))

(assert (=> b!1007855 (= lt!445419 (Intermediate!9522 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007855 (= lt!445414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30590 a!3219) j!170) mask!3464) (select (arr!30590 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007856 () Bool)

(declare-fun res!676909 () Bool)

(assert (=> b!1007856 (=> (not res!676909) (not e!567184))))

(assert (=> b!1007856 (= res!676909 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007857 () Bool)

(assert (=> b!1007857 (= e!567183 e!567184)))

(declare-fun res!676906 () Bool)

(assert (=> b!1007857 (=> (not res!676906) (not e!567184))))

(declare-fun lt!445418 () array!63546)

(declare-fun lt!445416 () (_ BitVec 64))

(assert (=> b!1007857 (= res!676906 (not (= lt!445414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445416 mask!3464) lt!445416 lt!445418 mask!3464))))))

(assert (=> b!1007857 (= lt!445416 (select (store (arr!30590 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1007857 (= lt!445418 (array!63547 (store (arr!30590 a!3219) i!1194 k0!2224) (size!31093 a!3219)))))

(declare-fun b!1007858 () Bool)

(assert (=> b!1007858 (= e!567187 e!567188)))

(declare-fun res!676903 () Bool)

(assert (=> b!1007858 (=> (not res!676903) (not e!567188))))

(declare-fun lt!445417 () SeekEntryResult!9522)

(assert (=> b!1007858 (= res!676903 (or (= lt!445417 (MissingVacant!9522 i!1194)) (= lt!445417 (MissingZero!9522 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63546 (_ BitVec 32)) SeekEntryResult!9522)

(assert (=> b!1007858 (= lt!445417 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1007859 () Bool)

(declare-fun res!676902 () Bool)

(assert (=> b!1007859 (=> (not res!676902) (not e!567188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63546 (_ BitVec 32)) Bool)

(assert (=> b!1007859 (= res!676902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007860 () Bool)

(declare-fun res!676905 () Bool)

(assert (=> b!1007860 (=> (not res!676905) (not e!567184))))

(assert (=> b!1007860 (= res!676905 (not (= lt!445415 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445416 lt!445418 mask!3464))))))

(assert (= (and start!86946 res!676899) b!1007852))

(assert (= (and b!1007852 res!676898) b!1007849))

(assert (= (and b!1007849 res!676904) b!1007854))

(assert (= (and b!1007854 res!676896) b!1007853))

(assert (= (and b!1007853 res!676900) b!1007858))

(assert (= (and b!1007858 res!676903) b!1007859))

(assert (= (and b!1007859 res!676902) b!1007851))

(assert (= (and b!1007851 res!676901) b!1007848))

(assert (= (and b!1007848 res!676897) b!1007855))

(assert (= (and b!1007855 res!676907) b!1007850))

(assert (= (and b!1007850 res!676908) b!1007857))

(assert (= (and b!1007857 res!676906) b!1007860))

(assert (= (and b!1007860 res!676905) b!1007856))

(assert (= (and b!1007856 res!676909) b!1007847))

(declare-fun m!932775 () Bool)

(assert (=> b!1007860 m!932775))

(declare-fun m!932777 () Bool)

(assert (=> b!1007847 m!932777))

(declare-fun m!932779 () Bool)

(assert (=> b!1007853 m!932779))

(declare-fun m!932781 () Bool)

(assert (=> b!1007850 m!932781))

(assert (=> b!1007850 m!932781))

(declare-fun m!932783 () Bool)

(assert (=> b!1007850 m!932783))

(declare-fun m!932785 () Bool)

(assert (=> b!1007857 m!932785))

(assert (=> b!1007857 m!932785))

(declare-fun m!932787 () Bool)

(assert (=> b!1007857 m!932787))

(declare-fun m!932789 () Bool)

(assert (=> b!1007857 m!932789))

(declare-fun m!932791 () Bool)

(assert (=> b!1007857 m!932791))

(declare-fun m!932793 () Bool)

(assert (=> b!1007859 m!932793))

(assert (=> b!1007855 m!932781))

(assert (=> b!1007855 m!932781))

(declare-fun m!932795 () Bool)

(assert (=> b!1007855 m!932795))

(assert (=> b!1007855 m!932795))

(assert (=> b!1007855 m!932781))

(declare-fun m!932797 () Bool)

(assert (=> b!1007855 m!932797))

(assert (=> b!1007849 m!932781))

(assert (=> b!1007849 m!932781))

(declare-fun m!932799 () Bool)

(assert (=> b!1007849 m!932799))

(declare-fun m!932801 () Bool)

(assert (=> b!1007854 m!932801))

(declare-fun m!932803 () Bool)

(assert (=> b!1007851 m!932803))

(declare-fun m!932805 () Bool)

(assert (=> start!86946 m!932805))

(declare-fun m!932807 () Bool)

(assert (=> start!86946 m!932807))

(declare-fun m!932809 () Bool)

(assert (=> b!1007858 m!932809))

(check-sat (not b!1007859) (not b!1007860) (not b!1007849) (not b!1007858) (not b!1007853) (not b!1007847) (not start!86946) (not b!1007854) (not b!1007851) (not b!1007857) (not b!1007850) (not b!1007855))
(check-sat)
