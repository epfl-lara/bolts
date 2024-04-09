; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32516 () Bool)

(assert start!32516)

(declare-fun b!324870 () Bool)

(declare-fun res!178367 () Bool)

(declare-fun e!200357 () Bool)

(assert (=> b!324870 (=> (not res!178367) (not e!200357))))

(declare-datatypes ((array!16651 0))(
  ( (array!16652 (arr!7880 (Array (_ BitVec 32) (_ BitVec 64))) (size!8232 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16651)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324870 (= res!178367 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324871 () Bool)

(declare-fun res!178364 () Bool)

(declare-fun e!200358 () Bool)

(assert (=> b!324871 (=> (not res!178364) (not e!200358))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3022 0))(
  ( (MissingZero!3022 (index!14264 (_ BitVec 32))) (Found!3022 (index!14265 (_ BitVec 32))) (Intermediate!3022 (undefined!3834 Bool) (index!14266 (_ BitVec 32)) (x!32469 (_ BitVec 32))) (Undefined!3022) (MissingVacant!3022 (index!14267 (_ BitVec 32))) )
))
(declare-fun lt!156889 () SeekEntryResult!3022)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16651 (_ BitVec 32)) SeekEntryResult!3022)

(assert (=> b!324871 (= res!178364 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156889))))

(declare-fun b!324872 () Bool)

(declare-fun res!178365 () Bool)

(assert (=> b!324872 (=> (not res!178365) (not e!200357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16651 (_ BitVec 32)) Bool)

(assert (=> b!324872 (= res!178365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324873 () Bool)

(declare-fun res!178366 () Bool)

(assert (=> b!324873 (=> (not res!178366) (not e!200357))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324873 (= res!178366 (and (= (size!8232 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8232 a!3305))))))

(declare-fun b!324874 () Bool)

(declare-fun res!178361 () Bool)

(assert (=> b!324874 (=> (not res!178361) (not e!200358))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324874 (= res!178361 (and (= (select (arr!7880 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8232 a!3305))))))

(declare-fun b!324875 () Bool)

(declare-fun res!178359 () Bool)

(assert (=> b!324875 (=> (not res!178359) (not e!200357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324875 (= res!178359 (validKeyInArray!0 k0!2497))))

(declare-fun b!324876 () Bool)

(declare-fun res!178360 () Bool)

(assert (=> b!324876 (=> (not res!178360) (not e!200357))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16651 (_ BitVec 32)) SeekEntryResult!3022)

(assert (=> b!324876 (= res!178360 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3022 i!1250)))))

(declare-fun b!324877 () Bool)

(declare-fun res!178362 () Bool)

(assert (=> b!324877 (=> (not res!178362) (not e!200358))))

(assert (=> b!324877 (= res!178362 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7880 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun res!178363 () Bool)

(assert (=> start!32516 (=> (not res!178363) (not e!200357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32516 (= res!178363 (validMask!0 mask!3777))))

(assert (=> start!32516 e!200357))

(declare-fun array_inv!5834 (array!16651) Bool)

(assert (=> start!32516 (array_inv!5834 a!3305)))

(assert (=> start!32516 true))

(declare-fun b!324878 () Bool)

(assert (=> b!324878 (= e!200358 false)))

(declare-fun lt!156890 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324878 (= lt!156890 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324879 () Bool)

(assert (=> b!324879 (= e!200357 e!200358)))

(declare-fun res!178368 () Bool)

(assert (=> b!324879 (=> (not res!178368) (not e!200358))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324879 (= res!178368 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156889))))

(assert (=> b!324879 (= lt!156889 (Intermediate!3022 false resIndex!58 resX!58))))

(assert (= (and start!32516 res!178363) b!324873))

(assert (= (and b!324873 res!178366) b!324875))

(assert (= (and b!324875 res!178359) b!324870))

(assert (= (and b!324870 res!178367) b!324876))

(assert (= (and b!324876 res!178360) b!324872))

(assert (= (and b!324872 res!178365) b!324879))

(assert (= (and b!324879 res!178368) b!324874))

(assert (= (and b!324874 res!178361) b!324871))

(assert (= (and b!324871 res!178364) b!324877))

(assert (= (and b!324877 res!178362) b!324878))

(declare-fun m!331831 () Bool)

(assert (=> start!32516 m!331831))

(declare-fun m!331833 () Bool)

(assert (=> start!32516 m!331833))

(declare-fun m!331835 () Bool)

(assert (=> b!324877 m!331835))

(declare-fun m!331837 () Bool)

(assert (=> b!324879 m!331837))

(assert (=> b!324879 m!331837))

(declare-fun m!331839 () Bool)

(assert (=> b!324879 m!331839))

(declare-fun m!331841 () Bool)

(assert (=> b!324872 m!331841))

(declare-fun m!331843 () Bool)

(assert (=> b!324875 m!331843))

(declare-fun m!331845 () Bool)

(assert (=> b!324871 m!331845))

(declare-fun m!331847 () Bool)

(assert (=> b!324878 m!331847))

(declare-fun m!331849 () Bool)

(assert (=> b!324874 m!331849))

(declare-fun m!331851 () Bool)

(assert (=> b!324876 m!331851))

(declare-fun m!331853 () Bool)

(assert (=> b!324870 m!331853))

(check-sat (not b!324870) (not b!324871) (not b!324876) (not b!324879) (not b!324875) (not start!32516) (not b!324872) (not b!324878))
