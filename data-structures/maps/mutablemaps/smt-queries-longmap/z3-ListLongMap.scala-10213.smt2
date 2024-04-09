; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120372 () Bool)

(assert start!120372)

(declare-fun b!1400400 () Bool)

(declare-fun e!792914 () Bool)

(declare-fun e!792908 () Bool)

(assert (=> b!1400400 (= e!792914 e!792908)))

(declare-fun res!939028 () Bool)

(assert (=> b!1400400 (=> res!939028 e!792908)))

(declare-datatypes ((SeekEntryResult!10535 0))(
  ( (MissingZero!10535 (index!44516 (_ BitVec 32))) (Found!10535 (index!44517 (_ BitVec 32))) (Intermediate!10535 (undefined!11347 Bool) (index!44518 (_ BitVec 32)) (x!126165 (_ BitVec 32))) (Undefined!10535) (MissingVacant!10535 (index!44519 (_ BitVec 32))) )
))
(declare-fun lt!616180 () SeekEntryResult!10535)

(declare-fun lt!616176 () SeekEntryResult!10535)

(get-info :version)

(assert (=> b!1400400 (= res!939028 (or (= lt!616180 lt!616176) (not ((_ is Intermediate!10535) lt!616176))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!616177 () (_ BitVec 64))

(declare-datatypes ((array!95699 0))(
  ( (array!95700 (arr!46196 (Array (_ BitVec 32) (_ BitVec 64))) (size!46747 (_ BitVec 32))) )
))
(declare-fun lt!616178 () array!95699)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95699 (_ BitVec 32)) SeekEntryResult!10535)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400400 (= lt!616176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616177 mask!2840) lt!616177 lt!616178 mask!2840))))

(declare-fun a!2901 () array!95699)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400400 (= lt!616177 (select (store (arr!46196 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400400 (= lt!616178 (array!95700 (store (arr!46196 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46747 a!2901)))))

(declare-fun e!792910 () Bool)

(declare-fun b!1400401 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95699 (_ BitVec 32)) SeekEntryResult!10535)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95699 (_ BitVec 32)) SeekEntryResult!10535)

(assert (=> b!1400401 (= e!792910 (= (seekEntryOrOpen!0 lt!616177 lt!616178 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126165 lt!616176) (index!44518 lt!616176) (index!44518 lt!616176) (select (arr!46196 a!2901) j!112) lt!616178 mask!2840)))))

(declare-fun b!1400402 () Bool)

(declare-fun res!939027 () Bool)

(declare-fun e!792909 () Bool)

(assert (=> b!1400402 (=> (not res!939027) (not e!792909))))

(declare-datatypes ((List!32895 0))(
  ( (Nil!32892) (Cons!32891 (h!34139 (_ BitVec 64)) (t!47596 List!32895)) )
))
(declare-fun arrayNoDuplicates!0 (array!95699 (_ BitVec 32) List!32895) Bool)

(assert (=> b!1400402 (= res!939027 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32892))))

(declare-fun b!1400403 () Bool)

(declare-fun res!939022 () Bool)

(assert (=> b!1400403 (=> (not res!939022) (not e!792909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400403 (= res!939022 (validKeyInArray!0 (select (arr!46196 a!2901) j!112)))))

(declare-fun b!1400404 () Bool)

(declare-fun res!939021 () Bool)

(assert (=> b!1400404 (=> (not res!939021) (not e!792909))))

(assert (=> b!1400404 (= res!939021 (validKeyInArray!0 (select (arr!46196 a!2901) i!1037)))))

(declare-fun res!939020 () Bool)

(assert (=> start!120372 (=> (not res!939020) (not e!792909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120372 (= res!939020 (validMask!0 mask!2840))))

(assert (=> start!120372 e!792909))

(assert (=> start!120372 true))

(declare-fun array_inv!35141 (array!95699) Bool)

(assert (=> start!120372 (array_inv!35141 a!2901)))

(declare-fun b!1400405 () Bool)

(declare-fun e!792911 () Bool)

(assert (=> b!1400405 (= e!792911 (= (seekEntryOrOpen!0 (select (arr!46196 a!2901) j!112) a!2901 mask!2840) (Found!10535 j!112)))))

(declare-fun b!1400406 () Bool)

(declare-fun e!792913 () Bool)

(assert (=> b!1400406 (= e!792908 e!792913)))

(declare-fun res!939029 () Bool)

(assert (=> b!1400406 (=> res!939029 e!792913)))

(declare-fun lt!616181 () (_ BitVec 32))

(assert (=> b!1400406 (= res!939029 (or (bvslt (x!126165 lt!616180) #b00000000000000000000000000000000) (bvsgt (x!126165 lt!616180) #b01111111111111111111111111111110) (bvslt (x!126165 lt!616176) #b00000000000000000000000000000000) (bvsgt (x!126165 lt!616176) #b01111111111111111111111111111110) (bvslt lt!616181 #b00000000000000000000000000000000) (bvsge lt!616181 (size!46747 a!2901)) (bvslt (index!44518 lt!616180) #b00000000000000000000000000000000) (bvsge (index!44518 lt!616180) (size!46747 a!2901)) (bvslt (index!44518 lt!616176) #b00000000000000000000000000000000) (bvsge (index!44518 lt!616176) (size!46747 a!2901)) (not (= lt!616180 (Intermediate!10535 false (index!44518 lt!616180) (x!126165 lt!616180)))) (not (= lt!616176 (Intermediate!10535 false (index!44518 lt!616176) (x!126165 lt!616176))))))))

(assert (=> b!1400406 e!792910))

(declare-fun res!939023 () Bool)

(assert (=> b!1400406 (=> (not res!939023) (not e!792910))))

(assert (=> b!1400406 (= res!939023 (and (not (undefined!11347 lt!616176)) (= (index!44518 lt!616176) i!1037) (bvslt (x!126165 lt!616176) (x!126165 lt!616180)) (= (select (store (arr!46196 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44518 lt!616176)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47024 0))(
  ( (Unit!47025) )
))
(declare-fun lt!616179 () Unit!47024)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47024)

(assert (=> b!1400406 (= lt!616179 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616181 (x!126165 lt!616180) (index!44518 lt!616180) (x!126165 lt!616176) (index!44518 lt!616176) (undefined!11347 lt!616176) mask!2840))))

(declare-fun b!1400407 () Bool)

(assert (=> b!1400407 (= e!792913 true)))

(declare-fun lt!616182 () SeekEntryResult!10535)

(assert (=> b!1400407 (= lt!616182 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616181 lt!616177 lt!616178 mask!2840))))

(declare-fun b!1400408 () Bool)

(assert (=> b!1400408 (= e!792909 (not e!792914))))

(declare-fun res!939030 () Bool)

(assert (=> b!1400408 (=> res!939030 e!792914)))

(assert (=> b!1400408 (= res!939030 (or (not ((_ is Intermediate!10535) lt!616180)) (undefined!11347 lt!616180)))))

(assert (=> b!1400408 e!792911))

(declare-fun res!939025 () Bool)

(assert (=> b!1400408 (=> (not res!939025) (not e!792911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95699 (_ BitVec 32)) Bool)

(assert (=> b!1400408 (= res!939025 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616183 () Unit!47024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47024)

(assert (=> b!1400408 (= lt!616183 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400408 (= lt!616180 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616181 (select (arr!46196 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400408 (= lt!616181 (toIndex!0 (select (arr!46196 a!2901) j!112) mask!2840))))

(declare-fun b!1400409 () Bool)

(declare-fun res!939024 () Bool)

(assert (=> b!1400409 (=> (not res!939024) (not e!792909))))

(assert (=> b!1400409 (= res!939024 (and (= (size!46747 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46747 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46747 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400410 () Bool)

(declare-fun res!939026 () Bool)

(assert (=> b!1400410 (=> (not res!939026) (not e!792909))))

(assert (=> b!1400410 (= res!939026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120372 res!939020) b!1400409))

(assert (= (and b!1400409 res!939024) b!1400404))

(assert (= (and b!1400404 res!939021) b!1400403))

(assert (= (and b!1400403 res!939022) b!1400410))

(assert (= (and b!1400410 res!939026) b!1400402))

(assert (= (and b!1400402 res!939027) b!1400408))

(assert (= (and b!1400408 res!939025) b!1400405))

(assert (= (and b!1400408 (not res!939030)) b!1400400))

(assert (= (and b!1400400 (not res!939028)) b!1400406))

(assert (= (and b!1400406 res!939023) b!1400401))

(assert (= (and b!1400406 (not res!939029)) b!1400407))

(declare-fun m!1287925 () Bool)

(assert (=> b!1400406 m!1287925))

(declare-fun m!1287927 () Bool)

(assert (=> b!1400406 m!1287927))

(declare-fun m!1287929 () Bool)

(assert (=> b!1400406 m!1287929))

(declare-fun m!1287931 () Bool)

(assert (=> b!1400404 m!1287931))

(assert (=> b!1400404 m!1287931))

(declare-fun m!1287933 () Bool)

(assert (=> b!1400404 m!1287933))

(declare-fun m!1287935 () Bool)

(assert (=> b!1400408 m!1287935))

(declare-fun m!1287937 () Bool)

(assert (=> b!1400408 m!1287937))

(assert (=> b!1400408 m!1287935))

(declare-fun m!1287939 () Bool)

(assert (=> b!1400408 m!1287939))

(assert (=> b!1400408 m!1287935))

(declare-fun m!1287941 () Bool)

(assert (=> b!1400408 m!1287941))

(declare-fun m!1287943 () Bool)

(assert (=> b!1400408 m!1287943))

(declare-fun m!1287945 () Bool)

(assert (=> b!1400407 m!1287945))

(assert (=> b!1400403 m!1287935))

(assert (=> b!1400403 m!1287935))

(declare-fun m!1287947 () Bool)

(assert (=> b!1400403 m!1287947))

(declare-fun m!1287949 () Bool)

(assert (=> b!1400402 m!1287949))

(declare-fun m!1287951 () Bool)

(assert (=> b!1400400 m!1287951))

(assert (=> b!1400400 m!1287951))

(declare-fun m!1287953 () Bool)

(assert (=> b!1400400 m!1287953))

(assert (=> b!1400400 m!1287925))

(declare-fun m!1287955 () Bool)

(assert (=> b!1400400 m!1287955))

(assert (=> b!1400405 m!1287935))

(assert (=> b!1400405 m!1287935))

(declare-fun m!1287957 () Bool)

(assert (=> b!1400405 m!1287957))

(declare-fun m!1287959 () Bool)

(assert (=> b!1400410 m!1287959))

(declare-fun m!1287961 () Bool)

(assert (=> start!120372 m!1287961))

(declare-fun m!1287963 () Bool)

(assert (=> start!120372 m!1287963))

(declare-fun m!1287965 () Bool)

(assert (=> b!1400401 m!1287965))

(assert (=> b!1400401 m!1287935))

(assert (=> b!1400401 m!1287935))

(declare-fun m!1287967 () Bool)

(assert (=> b!1400401 m!1287967))

(check-sat (not b!1400407) (not b!1400402) (not b!1400410) (not b!1400404) (not b!1400403) (not b!1400408) (not b!1400401) (not b!1400400) (not start!120372) (not b!1400406) (not b!1400405))
(check-sat)
