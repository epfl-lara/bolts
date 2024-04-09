; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120570 () Bool)

(assert start!120570)

(declare-fun res!942023 () Bool)

(declare-fun e!794648 () Bool)

(assert (=> start!120570 (=> (not res!942023) (not e!794648))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120570 (= res!942023 (validMask!0 mask!2840))))

(assert (=> start!120570 e!794648))

(assert (=> start!120570 true))

(declare-datatypes ((array!95897 0))(
  ( (array!95898 (arr!46295 (Array (_ BitVec 32) (_ BitVec 64))) (size!46846 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95897)

(declare-fun array_inv!35240 (array!95897) Bool)

(assert (=> start!120570 (array_inv!35240 a!2901)))

(declare-fun b!1403400 () Bool)

(declare-fun res!942025 () Bool)

(assert (=> b!1403400 (=> (not res!942025) (not e!794648))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403400 (= res!942025 (and (= (size!46846 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46846 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46846 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403401 () Bool)

(declare-fun res!942024 () Bool)

(assert (=> b!1403401 (=> (not res!942024) (not e!794648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403401 (= res!942024 (validKeyInArray!0 (select (arr!46295 a!2901) j!112)))))

(declare-fun b!1403402 () Bool)

(declare-fun e!794650 () Bool)

(assert (=> b!1403402 (= e!794648 (not e!794650))))

(declare-fun res!942027 () Bool)

(assert (=> b!1403402 (=> res!942027 e!794650)))

(declare-datatypes ((SeekEntryResult!10634 0))(
  ( (MissingZero!10634 (index!44912 (_ BitVec 32))) (Found!10634 (index!44913 (_ BitVec 32))) (Intermediate!10634 (undefined!11446 Bool) (index!44914 (_ BitVec 32)) (x!126528 (_ BitVec 32))) (Undefined!10634) (MissingVacant!10634 (index!44915 (_ BitVec 32))) )
))
(declare-fun lt!618358 () SeekEntryResult!10634)

(get-info :version)

(assert (=> b!1403402 (= res!942027 (or (not ((_ is Intermediate!10634) lt!618358)) (undefined!11446 lt!618358)))))

(declare-fun e!794651 () Bool)

(assert (=> b!1403402 e!794651))

(declare-fun res!942022 () Bool)

(assert (=> b!1403402 (=> (not res!942022) (not e!794651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95897 (_ BitVec 32)) Bool)

(assert (=> b!1403402 (= res!942022 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47222 0))(
  ( (Unit!47223) )
))
(declare-fun lt!618357 () Unit!47222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47222)

(assert (=> b!1403402 (= lt!618357 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95897 (_ BitVec 32)) SeekEntryResult!10634)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403402 (= lt!618358 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46295 a!2901) j!112) mask!2840) (select (arr!46295 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403403 () Bool)

(declare-fun res!942026 () Bool)

(assert (=> b!1403403 (=> (not res!942026) (not e!794648))))

(assert (=> b!1403403 (= res!942026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403404 () Bool)

(declare-fun res!942020 () Bool)

(assert (=> b!1403404 (=> (not res!942020) (not e!794648))))

(declare-datatypes ((List!32994 0))(
  ( (Nil!32991) (Cons!32990 (h!34238 (_ BitVec 64)) (t!47695 List!32994)) )
))
(declare-fun arrayNoDuplicates!0 (array!95897 (_ BitVec 32) List!32994) Bool)

(assert (=> b!1403404 (= res!942020 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32991))))

(declare-fun b!1403405 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95897 (_ BitVec 32)) SeekEntryResult!10634)

(assert (=> b!1403405 (= e!794651 (= (seekEntryOrOpen!0 (select (arr!46295 a!2901) j!112) a!2901 mask!2840) (Found!10634 j!112)))))

(declare-fun b!1403406 () Bool)

(declare-fun res!942021 () Bool)

(assert (=> b!1403406 (=> (not res!942021) (not e!794648))))

(assert (=> b!1403406 (= res!942021 (validKeyInArray!0 (select (arr!46295 a!2901) i!1037)))))

(declare-fun b!1403407 () Bool)

(assert (=> b!1403407 (= e!794650 true)))

(declare-fun lt!618356 () SeekEntryResult!10634)

(assert (=> b!1403407 (= lt!618356 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46295 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46295 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95898 (store (arr!46295 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46846 a!2901)) mask!2840))))

(assert (= (and start!120570 res!942023) b!1403400))

(assert (= (and b!1403400 res!942025) b!1403406))

(assert (= (and b!1403406 res!942021) b!1403401))

(assert (= (and b!1403401 res!942024) b!1403403))

(assert (= (and b!1403403 res!942026) b!1403404))

(assert (= (and b!1403404 res!942020) b!1403402))

(assert (= (and b!1403402 res!942022) b!1403405))

(assert (= (and b!1403402 (not res!942027)) b!1403407))

(declare-fun m!1292115 () Bool)

(assert (=> start!120570 m!1292115))

(declare-fun m!1292117 () Bool)

(assert (=> start!120570 m!1292117))

(declare-fun m!1292119 () Bool)

(assert (=> b!1403401 m!1292119))

(assert (=> b!1403401 m!1292119))

(declare-fun m!1292121 () Bool)

(assert (=> b!1403401 m!1292121))

(assert (=> b!1403405 m!1292119))

(assert (=> b!1403405 m!1292119))

(declare-fun m!1292123 () Bool)

(assert (=> b!1403405 m!1292123))

(declare-fun m!1292125 () Bool)

(assert (=> b!1403407 m!1292125))

(declare-fun m!1292127 () Bool)

(assert (=> b!1403407 m!1292127))

(assert (=> b!1403407 m!1292127))

(declare-fun m!1292129 () Bool)

(assert (=> b!1403407 m!1292129))

(assert (=> b!1403407 m!1292129))

(assert (=> b!1403407 m!1292127))

(declare-fun m!1292131 () Bool)

(assert (=> b!1403407 m!1292131))

(declare-fun m!1292133 () Bool)

(assert (=> b!1403403 m!1292133))

(declare-fun m!1292135 () Bool)

(assert (=> b!1403404 m!1292135))

(assert (=> b!1403402 m!1292119))

(declare-fun m!1292137 () Bool)

(assert (=> b!1403402 m!1292137))

(assert (=> b!1403402 m!1292119))

(declare-fun m!1292139 () Bool)

(assert (=> b!1403402 m!1292139))

(assert (=> b!1403402 m!1292137))

(assert (=> b!1403402 m!1292119))

(declare-fun m!1292141 () Bool)

(assert (=> b!1403402 m!1292141))

(declare-fun m!1292143 () Bool)

(assert (=> b!1403402 m!1292143))

(declare-fun m!1292145 () Bool)

(assert (=> b!1403406 m!1292145))

(assert (=> b!1403406 m!1292145))

(declare-fun m!1292147 () Bool)

(assert (=> b!1403406 m!1292147))

(check-sat (not b!1403407) (not b!1403405) (not b!1403401) (not b!1403406) (not b!1403403) (not start!120570) (not b!1403402) (not b!1403404))
