; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120428 () Bool)

(assert start!120428)

(declare-fun b!1401325 () Bool)

(declare-fun res!939949 () Bool)

(declare-fun e!793499 () Bool)

(assert (=> b!1401325 (=> (not res!939949) (not e!793499))))

(declare-datatypes ((array!95755 0))(
  ( (array!95756 (arr!46224 (Array (_ BitVec 32) (_ BitVec 64))) (size!46775 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95755)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401325 (= res!939949 (validKeyInArray!0 (select (arr!46224 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!793498 () Bool)

(declare-fun b!1401326 () Bool)

(declare-datatypes ((SeekEntryResult!10563 0))(
  ( (MissingZero!10563 (index!44628 (_ BitVec 32))) (Found!10563 (index!44629 (_ BitVec 32))) (Intermediate!10563 (undefined!11375 Bool) (index!44630 (_ BitVec 32)) (x!126265 (_ BitVec 32))) (Undefined!10563) (MissingVacant!10563 (index!44631 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95755 (_ BitVec 32)) SeekEntryResult!10563)

(assert (=> b!1401326 (= e!793498 (= (seekEntryOrOpen!0 (select (arr!46224 a!2901) j!112) a!2901 mask!2840) (Found!10563 j!112)))))

(declare-fun b!1401327 () Bool)

(declare-fun e!793501 () Bool)

(declare-fun e!793502 () Bool)

(assert (=> b!1401327 (= e!793501 e!793502)))

(declare-fun res!939950 () Bool)

(assert (=> b!1401327 (=> res!939950 e!793502)))

(declare-fun lt!616854 () SeekEntryResult!10563)

(declare-fun lt!616848 () SeekEntryResult!10563)

(assert (=> b!1401327 (= res!939950 (or (= lt!616854 lt!616848) (not (is-Intermediate!10563 lt!616848))))))

(declare-fun lt!616852 () array!95755)

(declare-fun lt!616855 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95755 (_ BitVec 32)) SeekEntryResult!10563)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401327 (= lt!616848 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616855 mask!2840) lt!616855 lt!616852 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401327 (= lt!616855 (select (store (arr!46224 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401327 (= lt!616852 (array!95756 (store (arr!46224 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46775 a!2901)))))

(declare-fun b!1401328 () Bool)

(declare-fun res!939946 () Bool)

(assert (=> b!1401328 (=> (not res!939946) (not e!793499))))

(assert (=> b!1401328 (= res!939946 (validKeyInArray!0 (select (arr!46224 a!2901) i!1037)))))

(declare-fun b!1401329 () Bool)

(declare-fun res!939945 () Bool)

(assert (=> b!1401329 (=> (not res!939945) (not e!793499))))

(declare-datatypes ((List!32923 0))(
  ( (Nil!32920) (Cons!32919 (h!34167 (_ BitVec 64)) (t!47624 List!32923)) )
))
(declare-fun arrayNoDuplicates!0 (array!95755 (_ BitVec 32) List!32923) Bool)

(assert (=> b!1401329 (= res!939945 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32920))))

(declare-fun b!1401330 () Bool)

(assert (=> b!1401330 (= e!793499 (not e!793501))))

(declare-fun res!939948 () Bool)

(assert (=> b!1401330 (=> res!939948 e!793501)))

(assert (=> b!1401330 (= res!939948 (or (not (is-Intermediate!10563 lt!616854)) (undefined!11375 lt!616854)))))

(assert (=> b!1401330 e!793498))

(declare-fun res!939951 () Bool)

(assert (=> b!1401330 (=> (not res!939951) (not e!793498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95755 (_ BitVec 32)) Bool)

(assert (=> b!1401330 (= res!939951 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47080 0))(
  ( (Unit!47081) )
))
(declare-fun lt!616851 () Unit!47080)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47080)

(assert (=> b!1401330 (= lt!616851 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616853 () (_ BitVec 32))

(assert (=> b!1401330 (= lt!616854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616853 (select (arr!46224 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401330 (= lt!616853 (toIndex!0 (select (arr!46224 a!2901) j!112) mask!2840))))

(declare-fun b!1401331 () Bool)

(declare-fun e!793497 () Bool)

(assert (=> b!1401331 (= e!793497 true)))

(declare-fun lt!616850 () SeekEntryResult!10563)

(assert (=> b!1401331 (= lt!616850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616853 lt!616855 lt!616852 mask!2840))))

(declare-fun b!1401332 () Bool)

(declare-fun res!939947 () Bool)

(assert (=> b!1401332 (=> (not res!939947) (not e!793499))))

(assert (=> b!1401332 (= res!939947 (and (= (size!46775 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46775 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46775 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!793496 () Bool)

(declare-fun b!1401333 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95755 (_ BitVec 32)) SeekEntryResult!10563)

(assert (=> b!1401333 (= e!793496 (= (seekEntryOrOpen!0 lt!616855 lt!616852 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126265 lt!616848) (index!44630 lt!616848) (index!44630 lt!616848) (select (arr!46224 a!2901) j!112) lt!616852 mask!2840)))))

(declare-fun b!1401334 () Bool)

(declare-fun res!939952 () Bool)

(assert (=> b!1401334 (=> (not res!939952) (not e!793499))))

(assert (=> b!1401334 (= res!939952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401324 () Bool)

(assert (=> b!1401324 (= e!793502 e!793497)))

(declare-fun res!939954 () Bool)

(assert (=> b!1401324 (=> res!939954 e!793497)))

(assert (=> b!1401324 (= res!939954 (or (bvslt (x!126265 lt!616854) #b00000000000000000000000000000000) (bvsgt (x!126265 lt!616854) #b01111111111111111111111111111110) (bvslt (x!126265 lt!616848) #b00000000000000000000000000000000) (bvsgt (x!126265 lt!616848) #b01111111111111111111111111111110) (bvslt lt!616853 #b00000000000000000000000000000000) (bvsge lt!616853 (size!46775 a!2901)) (bvslt (index!44630 lt!616854) #b00000000000000000000000000000000) (bvsge (index!44630 lt!616854) (size!46775 a!2901)) (bvslt (index!44630 lt!616848) #b00000000000000000000000000000000) (bvsge (index!44630 lt!616848) (size!46775 a!2901)) (not (= lt!616854 (Intermediate!10563 false (index!44630 lt!616854) (x!126265 lt!616854)))) (not (= lt!616848 (Intermediate!10563 false (index!44630 lt!616848) (x!126265 lt!616848))))))))

(assert (=> b!1401324 e!793496))

(declare-fun res!939944 () Bool)

(assert (=> b!1401324 (=> (not res!939944) (not e!793496))))

(assert (=> b!1401324 (= res!939944 (and (not (undefined!11375 lt!616848)) (= (index!44630 lt!616848) i!1037) (bvslt (x!126265 lt!616848) (x!126265 lt!616854)) (= (select (store (arr!46224 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44630 lt!616848)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616849 () Unit!47080)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47080)

(assert (=> b!1401324 (= lt!616849 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616853 (x!126265 lt!616854) (index!44630 lt!616854) (x!126265 lt!616848) (index!44630 lt!616848) (undefined!11375 lt!616848) mask!2840))))

(declare-fun res!939953 () Bool)

(assert (=> start!120428 (=> (not res!939953) (not e!793499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120428 (= res!939953 (validMask!0 mask!2840))))

(assert (=> start!120428 e!793499))

(assert (=> start!120428 true))

(declare-fun array_inv!35169 (array!95755) Bool)

(assert (=> start!120428 (array_inv!35169 a!2901)))

(assert (= (and start!120428 res!939953) b!1401332))

(assert (= (and b!1401332 res!939947) b!1401328))

(assert (= (and b!1401328 res!939946) b!1401325))

(assert (= (and b!1401325 res!939949) b!1401334))

(assert (= (and b!1401334 res!939952) b!1401329))

(assert (= (and b!1401329 res!939945) b!1401330))

(assert (= (and b!1401330 res!939951) b!1401326))

(assert (= (and b!1401330 (not res!939948)) b!1401327))

(assert (= (and b!1401327 (not res!939950)) b!1401324))

(assert (= (and b!1401324 res!939944) b!1401333))

(assert (= (and b!1401324 (not res!939954)) b!1401331))

(declare-fun m!1289157 () Bool)

(assert (=> b!1401326 m!1289157))

(assert (=> b!1401326 m!1289157))

(declare-fun m!1289159 () Bool)

(assert (=> b!1401326 m!1289159))

(assert (=> b!1401325 m!1289157))

(assert (=> b!1401325 m!1289157))

(declare-fun m!1289161 () Bool)

(assert (=> b!1401325 m!1289161))

(declare-fun m!1289163 () Bool)

(assert (=> b!1401327 m!1289163))

(assert (=> b!1401327 m!1289163))

(declare-fun m!1289165 () Bool)

(assert (=> b!1401327 m!1289165))

(declare-fun m!1289167 () Bool)

(assert (=> b!1401327 m!1289167))

(declare-fun m!1289169 () Bool)

(assert (=> b!1401327 m!1289169))

(declare-fun m!1289171 () Bool)

(assert (=> b!1401328 m!1289171))

(assert (=> b!1401328 m!1289171))

(declare-fun m!1289173 () Bool)

(assert (=> b!1401328 m!1289173))

(declare-fun m!1289175 () Bool)

(assert (=> start!120428 m!1289175))

(declare-fun m!1289177 () Bool)

(assert (=> start!120428 m!1289177))

(declare-fun m!1289179 () Bool)

(assert (=> b!1401333 m!1289179))

(assert (=> b!1401333 m!1289157))

(assert (=> b!1401333 m!1289157))

(declare-fun m!1289181 () Bool)

(assert (=> b!1401333 m!1289181))

(declare-fun m!1289183 () Bool)

(assert (=> b!1401329 m!1289183))

(assert (=> b!1401324 m!1289167))

(declare-fun m!1289185 () Bool)

(assert (=> b!1401324 m!1289185))

(declare-fun m!1289187 () Bool)

(assert (=> b!1401324 m!1289187))

(assert (=> b!1401330 m!1289157))

(declare-fun m!1289189 () Bool)

(assert (=> b!1401330 m!1289189))

(assert (=> b!1401330 m!1289157))

(assert (=> b!1401330 m!1289157))

(declare-fun m!1289191 () Bool)

(assert (=> b!1401330 m!1289191))

(declare-fun m!1289193 () Bool)

(assert (=> b!1401330 m!1289193))

(declare-fun m!1289195 () Bool)

(assert (=> b!1401330 m!1289195))

(declare-fun m!1289197 () Bool)

(assert (=> b!1401334 m!1289197))

(declare-fun m!1289199 () Bool)

(assert (=> b!1401331 m!1289199))

(push 1)

