; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120526 () Bool)

(assert start!120526)

(declare-fun b!1402872 () Bool)

(declare-fun res!941497 () Bool)

(declare-fun e!794386 () Bool)

(assert (=> b!1402872 (=> (not res!941497) (not e!794386))))

(declare-datatypes ((array!95853 0))(
  ( (array!95854 (arr!46273 (Array (_ BitVec 32) (_ BitVec 64))) (size!46824 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95853)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402872 (= res!941497 (validKeyInArray!0 (select (arr!46273 a!2901) i!1037)))))

(declare-fun b!1402873 () Bool)

(declare-fun e!794385 () Bool)

(assert (=> b!1402873 (= e!794386 (not e!794385))))

(declare-fun res!941496 () Bool)

(assert (=> b!1402873 (=> res!941496 e!794385)))

(declare-datatypes ((SeekEntryResult!10612 0))(
  ( (MissingZero!10612 (index!44824 (_ BitVec 32))) (Found!10612 (index!44825 (_ BitVec 32))) (Intermediate!10612 (undefined!11424 Bool) (index!44826 (_ BitVec 32)) (x!126450 (_ BitVec 32))) (Undefined!10612) (MissingVacant!10612 (index!44827 (_ BitVec 32))) )
))
(declare-fun lt!618158 () SeekEntryResult!10612)

(assert (=> b!1402873 (= res!941496 (or (not (is-Intermediate!10612 lt!618158)) (undefined!11424 lt!618158)))))

(declare-fun e!794387 () Bool)

(assert (=> b!1402873 e!794387))

(declare-fun res!941492 () Bool)

(assert (=> b!1402873 (=> (not res!941492) (not e!794387))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95853 (_ BitVec 32)) Bool)

(assert (=> b!1402873 (= res!941492 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47178 0))(
  ( (Unit!47179) )
))
(declare-fun lt!618160 () Unit!47178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95853 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47178)

(assert (=> b!1402873 (= lt!618160 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95853 (_ BitVec 32)) SeekEntryResult!10612)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402873 (= lt!618158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46273 a!2901) j!112) mask!2840) (select (arr!46273 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!941495 () Bool)

(assert (=> start!120526 (=> (not res!941495) (not e!794386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120526 (= res!941495 (validMask!0 mask!2840))))

(assert (=> start!120526 e!794386))

(assert (=> start!120526 true))

(declare-fun array_inv!35218 (array!95853) Bool)

(assert (=> start!120526 (array_inv!35218 a!2901)))

(declare-fun b!1402874 () Bool)

(declare-fun res!941494 () Bool)

(assert (=> b!1402874 (=> (not res!941494) (not e!794386))))

(declare-datatypes ((List!32972 0))(
  ( (Nil!32969) (Cons!32968 (h!34216 (_ BitVec 64)) (t!47673 List!32972)) )
))
(declare-fun arrayNoDuplicates!0 (array!95853 (_ BitVec 32) List!32972) Bool)

(assert (=> b!1402874 (= res!941494 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32969))))

(declare-fun b!1402875 () Bool)

(declare-fun res!941493 () Bool)

(assert (=> b!1402875 (=> (not res!941493) (not e!794386))))

(assert (=> b!1402875 (= res!941493 (and (= (size!46824 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46824 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46824 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402876 () Bool)

(assert (=> b!1402876 (= e!794385 true)))

(declare-fun lt!618159 () SeekEntryResult!10612)

(assert (=> b!1402876 (= lt!618159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46273 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46273 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95854 (store (arr!46273 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46824 a!2901)) mask!2840))))

(declare-fun b!1402877 () Bool)

(declare-fun res!941498 () Bool)

(assert (=> b!1402877 (=> (not res!941498) (not e!794386))))

(assert (=> b!1402877 (= res!941498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402878 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95853 (_ BitVec 32)) SeekEntryResult!10612)

(assert (=> b!1402878 (= e!794387 (= (seekEntryOrOpen!0 (select (arr!46273 a!2901) j!112) a!2901 mask!2840) (Found!10612 j!112)))))

(declare-fun b!1402879 () Bool)

(declare-fun res!941499 () Bool)

(assert (=> b!1402879 (=> (not res!941499) (not e!794386))))

(assert (=> b!1402879 (= res!941499 (validKeyInArray!0 (select (arr!46273 a!2901) j!112)))))

(assert (= (and start!120526 res!941495) b!1402875))

(assert (= (and b!1402875 res!941493) b!1402872))

(assert (= (and b!1402872 res!941497) b!1402879))

(assert (= (and b!1402879 res!941499) b!1402877))

(assert (= (and b!1402877 res!941498) b!1402874))

(assert (= (and b!1402874 res!941494) b!1402873))

(assert (= (and b!1402873 res!941492) b!1402878))

(assert (= (and b!1402873 (not res!941496)) b!1402876))

(declare-fun m!1291367 () Bool)

(assert (=> b!1402879 m!1291367))

(assert (=> b!1402879 m!1291367))

(declare-fun m!1291369 () Bool)

(assert (=> b!1402879 m!1291369))

(assert (=> b!1402873 m!1291367))

(declare-fun m!1291371 () Bool)

(assert (=> b!1402873 m!1291371))

(assert (=> b!1402873 m!1291367))

(declare-fun m!1291373 () Bool)

(assert (=> b!1402873 m!1291373))

(assert (=> b!1402873 m!1291371))

(assert (=> b!1402873 m!1291367))

(declare-fun m!1291375 () Bool)

(assert (=> b!1402873 m!1291375))

(declare-fun m!1291377 () Bool)

(assert (=> b!1402873 m!1291377))

(assert (=> b!1402878 m!1291367))

(assert (=> b!1402878 m!1291367))

(declare-fun m!1291379 () Bool)

(assert (=> b!1402878 m!1291379))

(declare-fun m!1291381 () Bool)

(assert (=> b!1402872 m!1291381))

(assert (=> b!1402872 m!1291381))

(declare-fun m!1291383 () Bool)

(assert (=> b!1402872 m!1291383))

(declare-fun m!1291385 () Bool)

(assert (=> start!120526 m!1291385))

(declare-fun m!1291387 () Bool)

(assert (=> start!120526 m!1291387))

(declare-fun m!1291389 () Bool)

(assert (=> b!1402877 m!1291389))

(declare-fun m!1291391 () Bool)

(assert (=> b!1402876 m!1291391))

(declare-fun m!1291393 () Bool)

(assert (=> b!1402876 m!1291393))

(assert (=> b!1402876 m!1291393))

(declare-fun m!1291395 () Bool)

(assert (=> b!1402876 m!1291395))

(assert (=> b!1402876 m!1291395))

(assert (=> b!1402876 m!1291393))

(declare-fun m!1291397 () Bool)

(assert (=> b!1402876 m!1291397))

(declare-fun m!1291399 () Bool)

(assert (=> b!1402874 m!1291399))

(push 1)

(assert (not start!120526))

(assert (not b!1402877))

(assert (not b!1402872))

(assert (not b!1402876))

(assert (not b!1402873))

(assert (not b!1402874))

(assert (not b!1402878))

(assert (not b!1402879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

