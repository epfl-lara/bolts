; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120370 () Bool)

(assert start!120370)

(declare-fun b!1400367 () Bool)

(declare-fun res!938993 () Bool)

(declare-fun e!792890 () Bool)

(assert (=> b!1400367 (=> (not res!938993) (not e!792890))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95697 0))(
  ( (array!95698 (arr!46195 (Array (_ BitVec 32) (_ BitVec 64))) (size!46746 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95697)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400367 (= res!938993 (and (= (size!46746 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46746 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46746 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400368 () Bool)

(declare-fun e!792891 () Bool)

(declare-fun e!792893 () Bool)

(assert (=> b!1400368 (= e!792891 e!792893)))

(declare-fun res!938988 () Bool)

(assert (=> b!1400368 (=> res!938988 e!792893)))

(declare-datatypes ((SeekEntryResult!10534 0))(
  ( (MissingZero!10534 (index!44512 (_ BitVec 32))) (Found!10534 (index!44513 (_ BitVec 32))) (Intermediate!10534 (undefined!11346 Bool) (index!44514 (_ BitVec 32)) (x!126164 (_ BitVec 32))) (Undefined!10534) (MissingVacant!10534 (index!44515 (_ BitVec 32))) )
))
(declare-fun lt!616153 () SeekEntryResult!10534)

(declare-fun lt!616156 () SeekEntryResult!10534)

(assert (=> b!1400368 (= res!938988 (or (= lt!616153 lt!616156) (not (is-Intermediate!10534 lt!616156))))))

(declare-fun lt!616159 () (_ BitVec 64))

(declare-fun lt!616154 () array!95697)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95697 (_ BitVec 32)) SeekEntryResult!10534)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400368 (= lt!616156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616159 mask!2840) lt!616159 lt!616154 mask!2840))))

(assert (=> b!1400368 (= lt!616159 (select (store (arr!46195 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400368 (= lt!616154 (array!95698 (store (arr!46195 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46746 a!2901)))))

(declare-fun b!1400369 () Bool)

(declare-fun res!938991 () Bool)

(assert (=> b!1400369 (=> (not res!938991) (not e!792890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400369 (= res!938991 (validKeyInArray!0 (select (arr!46195 a!2901) i!1037)))))

(declare-fun b!1400370 () Bool)

(assert (=> b!1400370 (= e!792890 (not e!792891))))

(declare-fun res!938987 () Bool)

(assert (=> b!1400370 (=> res!938987 e!792891)))

(assert (=> b!1400370 (= res!938987 (or (not (is-Intermediate!10534 lt!616153)) (undefined!11346 lt!616153)))))

(declare-fun e!792888 () Bool)

(assert (=> b!1400370 e!792888))

(declare-fun res!938995 () Bool)

(assert (=> b!1400370 (=> (not res!938995) (not e!792888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95697 (_ BitVec 32)) Bool)

(assert (=> b!1400370 (= res!938995 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47022 0))(
  ( (Unit!47023) )
))
(declare-fun lt!616158 () Unit!47022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47022)

(assert (=> b!1400370 (= lt!616158 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616152 () (_ BitVec 32))

(assert (=> b!1400370 (= lt!616153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616152 (select (arr!46195 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400370 (= lt!616152 (toIndex!0 (select (arr!46195 a!2901) j!112) mask!2840))))

(declare-fun e!792892 () Bool)

(declare-fun b!1400371 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95697 (_ BitVec 32)) SeekEntryResult!10534)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95697 (_ BitVec 32)) SeekEntryResult!10534)

(assert (=> b!1400371 (= e!792892 (= (seekEntryOrOpen!0 lt!616159 lt!616154 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126164 lt!616156) (index!44514 lt!616156) (index!44514 lt!616156) (select (arr!46195 a!2901) j!112) lt!616154 mask!2840)))))

(declare-fun res!938989 () Bool)

(assert (=> start!120370 (=> (not res!938989) (not e!792890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120370 (= res!938989 (validMask!0 mask!2840))))

(assert (=> start!120370 e!792890))

(assert (=> start!120370 true))

(declare-fun array_inv!35140 (array!95697) Bool)

(assert (=> start!120370 (array_inv!35140 a!2901)))

(declare-fun b!1400372 () Bool)

(declare-fun e!792887 () Bool)

(assert (=> b!1400372 (= e!792887 true)))

(declare-fun lt!616155 () SeekEntryResult!10534)

(assert (=> b!1400372 (= lt!616155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616152 lt!616159 lt!616154 mask!2840))))

(declare-fun b!1400373 () Bool)

(assert (=> b!1400373 (= e!792893 e!792887)))

(declare-fun res!938992 () Bool)

(assert (=> b!1400373 (=> res!938992 e!792887)))

(assert (=> b!1400373 (= res!938992 (or (bvslt (x!126164 lt!616153) #b00000000000000000000000000000000) (bvsgt (x!126164 lt!616153) #b01111111111111111111111111111110) (bvslt (x!126164 lt!616156) #b00000000000000000000000000000000) (bvsgt (x!126164 lt!616156) #b01111111111111111111111111111110) (bvslt lt!616152 #b00000000000000000000000000000000) (bvsge lt!616152 (size!46746 a!2901)) (bvslt (index!44514 lt!616153) #b00000000000000000000000000000000) (bvsge (index!44514 lt!616153) (size!46746 a!2901)) (bvslt (index!44514 lt!616156) #b00000000000000000000000000000000) (bvsge (index!44514 lt!616156) (size!46746 a!2901)) (not (= lt!616153 (Intermediate!10534 false (index!44514 lt!616153) (x!126164 lt!616153)))) (not (= lt!616156 (Intermediate!10534 false (index!44514 lt!616156) (x!126164 lt!616156))))))))

(assert (=> b!1400373 e!792892))

(declare-fun res!938997 () Bool)

(assert (=> b!1400373 (=> (not res!938997) (not e!792892))))

(assert (=> b!1400373 (= res!938997 (and (not (undefined!11346 lt!616156)) (= (index!44514 lt!616156) i!1037) (bvslt (x!126164 lt!616156) (x!126164 lt!616153)) (= (select (store (arr!46195 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44514 lt!616156)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616157 () Unit!47022)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47022)

(assert (=> b!1400373 (= lt!616157 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616152 (x!126164 lt!616153) (index!44514 lt!616153) (x!126164 lt!616156) (index!44514 lt!616156) (undefined!11346 lt!616156) mask!2840))))

(declare-fun b!1400374 () Bool)

(declare-fun res!938990 () Bool)

(assert (=> b!1400374 (=> (not res!938990) (not e!792890))))

(assert (=> b!1400374 (= res!938990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400375 () Bool)

(declare-fun res!938994 () Bool)

(assert (=> b!1400375 (=> (not res!938994) (not e!792890))))

(assert (=> b!1400375 (= res!938994 (validKeyInArray!0 (select (arr!46195 a!2901) j!112)))))

(declare-fun b!1400376 () Bool)

(declare-fun res!938996 () Bool)

(assert (=> b!1400376 (=> (not res!938996) (not e!792890))))

(declare-datatypes ((List!32894 0))(
  ( (Nil!32891) (Cons!32890 (h!34138 (_ BitVec 64)) (t!47595 List!32894)) )
))
(declare-fun arrayNoDuplicates!0 (array!95697 (_ BitVec 32) List!32894) Bool)

(assert (=> b!1400376 (= res!938996 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32891))))

(declare-fun b!1400377 () Bool)

(assert (=> b!1400377 (= e!792888 (= (seekEntryOrOpen!0 (select (arr!46195 a!2901) j!112) a!2901 mask!2840) (Found!10534 j!112)))))

(assert (= (and start!120370 res!938989) b!1400367))

(assert (= (and b!1400367 res!938993) b!1400369))

(assert (= (and b!1400369 res!938991) b!1400375))

(assert (= (and b!1400375 res!938994) b!1400374))

(assert (= (and b!1400374 res!938990) b!1400376))

(assert (= (and b!1400376 res!938996) b!1400370))

(assert (= (and b!1400370 res!938995) b!1400377))

(assert (= (and b!1400370 (not res!938987)) b!1400368))

(assert (= (and b!1400368 (not res!938988)) b!1400373))

(assert (= (and b!1400373 res!938997) b!1400371))

(assert (= (and b!1400373 (not res!938992)) b!1400372))

(declare-fun m!1287881 () Bool)

(assert (=> b!1400375 m!1287881))

(assert (=> b!1400375 m!1287881))

(declare-fun m!1287883 () Bool)

(assert (=> b!1400375 m!1287883))

(assert (=> b!1400370 m!1287881))

(declare-fun m!1287885 () Bool)

(assert (=> b!1400370 m!1287885))

(assert (=> b!1400370 m!1287881))

(declare-fun m!1287887 () Bool)

(assert (=> b!1400370 m!1287887))

(declare-fun m!1287889 () Bool)

(assert (=> b!1400370 m!1287889))

(assert (=> b!1400370 m!1287881))

(declare-fun m!1287891 () Bool)

(assert (=> b!1400370 m!1287891))

(declare-fun m!1287893 () Bool)

(assert (=> b!1400374 m!1287893))

(declare-fun m!1287895 () Bool)

(assert (=> b!1400368 m!1287895))

(assert (=> b!1400368 m!1287895))

(declare-fun m!1287897 () Bool)

(assert (=> b!1400368 m!1287897))

(declare-fun m!1287899 () Bool)

(assert (=> b!1400368 m!1287899))

(declare-fun m!1287901 () Bool)

(assert (=> b!1400368 m!1287901))

(declare-fun m!1287903 () Bool)

(assert (=> b!1400369 m!1287903))

(assert (=> b!1400369 m!1287903))

(declare-fun m!1287905 () Bool)

(assert (=> b!1400369 m!1287905))

(declare-fun m!1287907 () Bool)

(assert (=> b!1400376 m!1287907))

(declare-fun m!1287909 () Bool)

(assert (=> b!1400371 m!1287909))

(assert (=> b!1400371 m!1287881))

(assert (=> b!1400371 m!1287881))

(declare-fun m!1287911 () Bool)

(assert (=> b!1400371 m!1287911))

(declare-fun m!1287913 () Bool)

(assert (=> b!1400372 m!1287913))

(declare-fun m!1287915 () Bool)

(assert (=> start!120370 m!1287915))

(declare-fun m!1287917 () Bool)

(assert (=> start!120370 m!1287917))

(assert (=> b!1400373 m!1287899))

(declare-fun m!1287919 () Bool)

(assert (=> b!1400373 m!1287919))

(declare-fun m!1287921 () Bool)

(assert (=> b!1400373 m!1287921))

(assert (=> b!1400377 m!1287881))

(assert (=> b!1400377 m!1287881))

(declare-fun m!1287923 () Bool)

(assert (=> b!1400377 m!1287923))

(push 1)

