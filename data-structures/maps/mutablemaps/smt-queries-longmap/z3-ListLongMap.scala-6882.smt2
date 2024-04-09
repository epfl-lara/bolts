; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86580 () Bool)

(assert start!86580)

(declare-fun b!1002979 () Bool)

(declare-fun res!672623 () Bool)

(declare-fun e!564995 () Bool)

(assert (=> b!1002979 (=> (not res!672623) (not e!564995))))

(declare-datatypes ((array!63333 0))(
  ( (array!63334 (arr!30488 (Array (_ BitVec 32) (_ BitVec 64))) (size!30991 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63333)

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002979 (= res!672623 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002980 () Bool)

(declare-fun res!672624 () Bool)

(assert (=> b!1002980 (=> (not res!672624) (not e!564995))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002980 (= res!672624 (validKeyInArray!0 (select (arr!30488 a!3219) j!170)))))

(declare-fun b!1002981 () Bool)

(declare-fun e!564997 () Bool)

(declare-fun e!564996 () Bool)

(assert (=> b!1002981 (= e!564997 e!564996)))

(declare-fun res!672614 () Bool)

(assert (=> b!1002981 (=> (not res!672614) (not e!564996))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!443458 () (_ BitVec 64))

(declare-fun lt!443462 () array!63333)

(declare-datatypes ((SeekEntryResult!9420 0))(
  ( (MissingZero!9420 (index!40050 (_ BitVec 32))) (Found!9420 (index!40051 (_ BitVec 32))) (Intermediate!9420 (undefined!10232 Bool) (index!40052 (_ BitVec 32)) (x!87489 (_ BitVec 32))) (Undefined!9420) (MissingVacant!9420 (index!40053 (_ BitVec 32))) )
))
(declare-fun lt!443459 () SeekEntryResult!9420)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63333 (_ BitVec 32)) SeekEntryResult!9420)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002981 (= res!672614 (not (= lt!443459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443458 mask!3464) lt!443458 lt!443462 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002981 (= lt!443458 (select (store (arr!30488 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1002981 (= lt!443462 (array!63334 (store (arr!30488 a!3219) i!1194 k0!2224) (size!30991 a!3219)))))

(declare-fun b!1002982 () Bool)

(declare-fun res!672621 () Bool)

(declare-fun e!564994 () Bool)

(assert (=> b!1002982 (=> (not res!672621) (not e!564994))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002982 (= res!672621 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30991 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30991 a!3219))))))

(declare-fun b!1002983 () Bool)

(declare-fun e!564998 () Bool)

(assert (=> b!1002983 (= e!564996 e!564998)))

(declare-fun res!672619 () Bool)

(assert (=> b!1002983 (=> (not res!672619) (not e!564998))))

(declare-fun lt!443461 () (_ BitVec 32))

(assert (=> b!1002983 (= res!672619 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443461 #b00000000000000000000000000000000) (bvslt lt!443461 (size!30991 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002983 (= lt!443461 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002984 () Bool)

(declare-fun res!672616 () Bool)

(assert (=> b!1002984 (=> (not res!672616) (not e!564994))))

(declare-datatypes ((List!21290 0))(
  ( (Nil!21287) (Cons!21286 (h!22463 (_ BitVec 64)) (t!30299 List!21290)) )
))
(declare-fun arrayNoDuplicates!0 (array!63333 (_ BitVec 32) List!21290) Bool)

(assert (=> b!1002984 (= res!672616 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21287))))

(declare-fun b!1002985 () Bool)

(declare-fun res!672620 () Bool)

(assert (=> b!1002985 (=> (not res!672620) (not e!564996))))

(declare-fun lt!443457 () SeekEntryResult!9420)

(assert (=> b!1002985 (= res!672620 (not (= lt!443457 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443458 lt!443462 mask!3464))))))

(declare-fun b!1002986 () Bool)

(assert (=> b!1002986 (= e!564995 e!564994)))

(declare-fun res!672617 () Bool)

(assert (=> b!1002986 (=> (not res!672617) (not e!564994))))

(declare-fun lt!443456 () SeekEntryResult!9420)

(assert (=> b!1002986 (= res!672617 (or (= lt!443456 (MissingVacant!9420 i!1194)) (= lt!443456 (MissingZero!9420 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63333 (_ BitVec 32)) SeekEntryResult!9420)

(assert (=> b!1002986 (= lt!443456 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun res!672615 () Bool)

(assert (=> start!86580 (=> (not res!672615) (not e!564995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86580 (= res!672615 (validMask!0 mask!3464))))

(assert (=> start!86580 e!564995))

(declare-fun array_inv!23478 (array!63333) Bool)

(assert (=> start!86580 (array_inv!23478 a!3219)))

(assert (=> start!86580 true))

(declare-fun b!1002987 () Bool)

(declare-fun res!672625 () Bool)

(assert (=> b!1002987 (=> (not res!672625) (not e!564996))))

(assert (=> b!1002987 (= res!672625 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002988 () Bool)

(declare-fun res!672618 () Bool)

(assert (=> b!1002988 (=> (not res!672618) (not e!564995))))

(assert (=> b!1002988 (= res!672618 (and (= (size!30991 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30991 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30991 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002989 () Bool)

(declare-fun res!672628 () Bool)

(assert (=> b!1002989 (=> (not res!672628) (not e!564998))))

(declare-fun lt!443460 () SeekEntryResult!9420)

(assert (=> b!1002989 (= res!672628 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443461 (select (arr!30488 a!3219) j!170) a!3219 mask!3464) lt!443460))))

(declare-fun b!1002990 () Bool)

(declare-fun res!672622 () Bool)

(assert (=> b!1002990 (=> (not res!672622) (not e!564994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63333 (_ BitVec 32)) Bool)

(assert (=> b!1002990 (= res!672622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002991 () Bool)

(declare-fun e!564992 () Bool)

(assert (=> b!1002991 (= e!564992 e!564997)))

(declare-fun res!672627 () Bool)

(assert (=> b!1002991 (=> (not res!672627) (not e!564997))))

(assert (=> b!1002991 (= res!672627 (= lt!443457 lt!443460))))

(assert (=> b!1002991 (= lt!443457 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30488 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002992 () Bool)

(assert (=> b!1002992 (= e!564998 false)))

(declare-fun lt!443463 () SeekEntryResult!9420)

(assert (=> b!1002992 (= lt!443463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443461 lt!443458 lt!443462 mask!3464))))

(declare-fun b!1002993 () Bool)

(assert (=> b!1002993 (= e!564994 e!564992)))

(declare-fun res!672626 () Bool)

(assert (=> b!1002993 (=> (not res!672626) (not e!564992))))

(assert (=> b!1002993 (= res!672626 (= lt!443459 lt!443460))))

(assert (=> b!1002993 (= lt!443460 (Intermediate!9420 false resIndex!38 resX!38))))

(assert (=> b!1002993 (= lt!443459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30488 a!3219) j!170) mask!3464) (select (arr!30488 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002994 () Bool)

(declare-fun res!672613 () Bool)

(assert (=> b!1002994 (=> (not res!672613) (not e!564995))))

(assert (=> b!1002994 (= res!672613 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86580 res!672615) b!1002988))

(assert (= (and b!1002988 res!672618) b!1002980))

(assert (= (and b!1002980 res!672624) b!1002994))

(assert (= (and b!1002994 res!672613) b!1002979))

(assert (= (and b!1002979 res!672623) b!1002986))

(assert (= (and b!1002986 res!672617) b!1002990))

(assert (= (and b!1002990 res!672622) b!1002984))

(assert (= (and b!1002984 res!672616) b!1002982))

(assert (= (and b!1002982 res!672621) b!1002993))

(assert (= (and b!1002993 res!672626) b!1002991))

(assert (= (and b!1002991 res!672627) b!1002981))

(assert (= (and b!1002981 res!672614) b!1002985))

(assert (= (and b!1002985 res!672620) b!1002987))

(assert (= (and b!1002987 res!672625) b!1002983))

(assert (= (and b!1002983 res!672619) b!1002989))

(assert (= (and b!1002989 res!672628) b!1002992))

(declare-fun m!928861 () Bool)

(assert (=> b!1002983 m!928861))

(declare-fun m!928863 () Bool)

(assert (=> b!1002989 m!928863))

(assert (=> b!1002989 m!928863))

(declare-fun m!928865 () Bool)

(assert (=> b!1002989 m!928865))

(assert (=> b!1002991 m!928863))

(assert (=> b!1002991 m!928863))

(declare-fun m!928867 () Bool)

(assert (=> b!1002991 m!928867))

(declare-fun m!928869 () Bool)

(assert (=> start!86580 m!928869))

(declare-fun m!928871 () Bool)

(assert (=> start!86580 m!928871))

(declare-fun m!928873 () Bool)

(assert (=> b!1002985 m!928873))

(declare-fun m!928875 () Bool)

(assert (=> b!1002994 m!928875))

(declare-fun m!928877 () Bool)

(assert (=> b!1002992 m!928877))

(declare-fun m!928879 () Bool)

(assert (=> b!1002984 m!928879))

(assert (=> b!1002993 m!928863))

(assert (=> b!1002993 m!928863))

(declare-fun m!928881 () Bool)

(assert (=> b!1002993 m!928881))

(assert (=> b!1002993 m!928881))

(assert (=> b!1002993 m!928863))

(declare-fun m!928883 () Bool)

(assert (=> b!1002993 m!928883))

(declare-fun m!928885 () Bool)

(assert (=> b!1002981 m!928885))

(assert (=> b!1002981 m!928885))

(declare-fun m!928887 () Bool)

(assert (=> b!1002981 m!928887))

(declare-fun m!928889 () Bool)

(assert (=> b!1002981 m!928889))

(declare-fun m!928891 () Bool)

(assert (=> b!1002981 m!928891))

(declare-fun m!928893 () Bool)

(assert (=> b!1002986 m!928893))

(declare-fun m!928895 () Bool)

(assert (=> b!1002979 m!928895))

(declare-fun m!928897 () Bool)

(assert (=> b!1002990 m!928897))

(assert (=> b!1002980 m!928863))

(assert (=> b!1002980 m!928863))

(declare-fun m!928899 () Bool)

(assert (=> b!1002980 m!928899))

(check-sat (not b!1002990) (not b!1002979) (not b!1002992) (not b!1002981) (not b!1002985) (not b!1002986) (not b!1002984) (not b!1002983) (not b!1002994) (not b!1002980) (not b!1002989) (not b!1002991) (not b!1002993) (not start!86580))
(check-sat)
