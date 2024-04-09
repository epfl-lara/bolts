; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121988 () Bool)

(assert start!121988)

(declare-fun res!951256 () Bool)

(declare-fun e!800929 () Bool)

(assert (=> start!121988 (=> (not res!951256) (not e!800929))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121988 (= res!951256 (validMask!0 mask!2840))))

(assert (=> start!121988 e!800929))

(assert (=> start!121988 true))

(declare-datatypes ((array!96592 0))(
  ( (array!96593 (arr!46623 (Array (_ BitVec 32) (_ BitVec 64))) (size!47174 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96592)

(declare-fun array_inv!35568 (array!96592) Bool)

(assert (=> start!121988 (array_inv!35568 a!2901)))

(declare-fun b!1415098 () Bool)

(declare-fun e!800925 () Bool)

(declare-fun e!800928 () Bool)

(assert (=> b!1415098 (= e!800925 e!800928)))

(declare-fun res!951250 () Bool)

(assert (=> b!1415098 (=> res!951250 e!800928)))

(declare-datatypes ((SeekEntryResult!10956 0))(
  ( (MissingZero!10956 (index!46215 (_ BitVec 32))) (Found!10956 (index!46216 (_ BitVec 32))) (Intermediate!10956 (undefined!11768 Bool) (index!46217 (_ BitVec 32)) (x!127830 (_ BitVec 32))) (Undefined!10956) (MissingVacant!10956 (index!46218 (_ BitVec 32))) )
))
(declare-fun lt!623903 () SeekEntryResult!10956)

(declare-fun lt!623902 () SeekEntryResult!10956)

(assert (=> b!1415098 (= res!951250 (or (= lt!623903 lt!623902) (not (is-Intermediate!10956 lt!623902))))))

(declare-fun lt!623907 () array!96592)

(declare-fun lt!623904 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96592 (_ BitVec 32)) SeekEntryResult!10956)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415098 (= lt!623902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623904 mask!2840) lt!623904 lt!623907 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415098 (= lt!623904 (select (store (arr!46623 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415098 (= lt!623907 (array!96593 (store (arr!46623 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47174 a!2901)))))

(declare-fun e!800926 () Bool)

(declare-fun b!1415099 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96592 (_ BitVec 32)) SeekEntryResult!10956)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96592 (_ BitVec 32)) SeekEntryResult!10956)

(assert (=> b!1415099 (= e!800926 (= (seekEntryOrOpen!0 lt!623904 lt!623907 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127830 lt!623902) (index!46217 lt!623902) (index!46217 lt!623902) (select (arr!46623 a!2901) j!112) lt!623907 mask!2840)))))

(declare-fun b!1415100 () Bool)

(declare-fun res!951255 () Bool)

(assert (=> b!1415100 (=> (not res!951255) (not e!800929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96592 (_ BitVec 32)) Bool)

(assert (=> b!1415100 (= res!951255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415101 () Bool)

(declare-fun res!951258 () Bool)

(assert (=> b!1415101 (=> (not res!951258) (not e!800929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415101 (= res!951258 (validKeyInArray!0 (select (arr!46623 a!2901) i!1037)))))

(declare-fun b!1415102 () Bool)

(declare-fun res!951249 () Bool)

(assert (=> b!1415102 (=> (not res!951249) (not e!800929))))

(assert (=> b!1415102 (= res!951249 (and (= (size!47174 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47174 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47174 a!2901)) (not (= i!1037 j!112))))))

(declare-fun lt!623906 () (_ BitVec 32))

(declare-fun b!1415103 () Bool)

(assert (=> b!1415103 (= e!800928 (or (bvslt (x!127830 lt!623903) #b00000000000000000000000000000000) (bvsgt (x!127830 lt!623903) #b01111111111111111111111111111110) (bvslt (x!127830 lt!623902) #b00000000000000000000000000000000) (bvsgt (x!127830 lt!623902) #b01111111111111111111111111111110) (bvslt lt!623906 #b00000000000000000000000000000000) (bvsge lt!623906 (size!47174 a!2901)) (bvslt (index!46217 lt!623903) #b00000000000000000000000000000000) (bvsge (index!46217 lt!623903) (size!47174 a!2901)) (and (bvsge (index!46217 lt!623902) #b00000000000000000000000000000000) (bvslt (index!46217 lt!623902) (size!47174 a!2901)))))))

(assert (=> b!1415103 e!800926))

(declare-fun res!951257 () Bool)

(assert (=> b!1415103 (=> (not res!951257) (not e!800926))))

(assert (=> b!1415103 (= res!951257 (and (not (undefined!11768 lt!623902)) (= (index!46217 lt!623902) i!1037) (bvslt (x!127830 lt!623902) (x!127830 lt!623903)) (= (select (store (arr!46623 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46217 lt!623902)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47836 0))(
  ( (Unit!47837) )
))
(declare-fun lt!623905 () Unit!47836)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47836)

(assert (=> b!1415103 (= lt!623905 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623906 (x!127830 lt!623903) (index!46217 lt!623903) (x!127830 lt!623902) (index!46217 lt!623902) (undefined!11768 lt!623902) mask!2840))))

(declare-fun b!1415104 () Bool)

(declare-fun res!951251 () Bool)

(assert (=> b!1415104 (=> (not res!951251) (not e!800929))))

(declare-datatypes ((List!33322 0))(
  ( (Nil!33319) (Cons!33318 (h!34605 (_ BitVec 64)) (t!48023 List!33322)) )
))
(declare-fun arrayNoDuplicates!0 (array!96592 (_ BitVec 32) List!33322) Bool)

(assert (=> b!1415104 (= res!951251 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33319))))

(declare-fun b!1415105 () Bool)

(declare-fun e!800930 () Bool)

(assert (=> b!1415105 (= e!800930 (= (seekEntryOrOpen!0 (select (arr!46623 a!2901) j!112) a!2901 mask!2840) (Found!10956 j!112)))))

(declare-fun b!1415106 () Bool)

(assert (=> b!1415106 (= e!800929 (not e!800925))))

(declare-fun res!951253 () Bool)

(assert (=> b!1415106 (=> res!951253 e!800925)))

(assert (=> b!1415106 (= res!951253 (or (not (is-Intermediate!10956 lt!623903)) (undefined!11768 lt!623903)))))

(assert (=> b!1415106 e!800930))

(declare-fun res!951254 () Bool)

(assert (=> b!1415106 (=> (not res!951254) (not e!800930))))

(assert (=> b!1415106 (= res!951254 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623908 () Unit!47836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47836)

(assert (=> b!1415106 (= lt!623908 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415106 (= lt!623903 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623906 (select (arr!46623 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415106 (= lt!623906 (toIndex!0 (select (arr!46623 a!2901) j!112) mask!2840))))

(declare-fun b!1415107 () Bool)

(declare-fun res!951252 () Bool)

(assert (=> b!1415107 (=> (not res!951252) (not e!800929))))

(assert (=> b!1415107 (= res!951252 (validKeyInArray!0 (select (arr!46623 a!2901) j!112)))))

(assert (= (and start!121988 res!951256) b!1415102))

(assert (= (and b!1415102 res!951249) b!1415101))

(assert (= (and b!1415101 res!951258) b!1415107))

(assert (= (and b!1415107 res!951252) b!1415100))

(assert (= (and b!1415100 res!951255) b!1415104))

(assert (= (and b!1415104 res!951251) b!1415106))

(assert (= (and b!1415106 res!951254) b!1415105))

(assert (= (and b!1415106 (not res!951253)) b!1415098))

(assert (= (and b!1415098 (not res!951250)) b!1415103))

(assert (= (and b!1415103 res!951257) b!1415099))

(declare-fun m!1305335 () Bool)

(assert (=> b!1415100 m!1305335))

(declare-fun m!1305337 () Bool)

(assert (=> b!1415107 m!1305337))

(assert (=> b!1415107 m!1305337))

(declare-fun m!1305339 () Bool)

(assert (=> b!1415107 m!1305339))

(declare-fun m!1305341 () Bool)

(assert (=> start!121988 m!1305341))

(declare-fun m!1305343 () Bool)

(assert (=> start!121988 m!1305343))

(declare-fun m!1305345 () Bool)

(assert (=> b!1415104 m!1305345))

(declare-fun m!1305347 () Bool)

(assert (=> b!1415099 m!1305347))

(assert (=> b!1415099 m!1305337))

(assert (=> b!1415099 m!1305337))

(declare-fun m!1305349 () Bool)

(assert (=> b!1415099 m!1305349))

(declare-fun m!1305351 () Bool)

(assert (=> b!1415098 m!1305351))

(assert (=> b!1415098 m!1305351))

(declare-fun m!1305353 () Bool)

(assert (=> b!1415098 m!1305353))

(declare-fun m!1305355 () Bool)

(assert (=> b!1415098 m!1305355))

(declare-fun m!1305357 () Bool)

(assert (=> b!1415098 m!1305357))

(assert (=> b!1415106 m!1305337))

(declare-fun m!1305359 () Bool)

(assert (=> b!1415106 m!1305359))

(assert (=> b!1415106 m!1305337))

(declare-fun m!1305361 () Bool)

(assert (=> b!1415106 m!1305361))

(assert (=> b!1415106 m!1305337))

(declare-fun m!1305363 () Bool)

(assert (=> b!1415106 m!1305363))

(declare-fun m!1305365 () Bool)

(assert (=> b!1415106 m!1305365))

(assert (=> b!1415103 m!1305355))

(declare-fun m!1305367 () Bool)

(assert (=> b!1415103 m!1305367))

(declare-fun m!1305369 () Bool)

(assert (=> b!1415103 m!1305369))

(declare-fun m!1305371 () Bool)

(assert (=> b!1415101 m!1305371))

(assert (=> b!1415101 m!1305371))

(declare-fun m!1305373 () Bool)

(assert (=> b!1415101 m!1305373))

(assert (=> b!1415105 m!1305337))

(assert (=> b!1415105 m!1305337))

(declare-fun m!1305375 () Bool)

(assert (=> b!1415105 m!1305375))

(push 1)

(assert (not b!1415107))

(assert (not b!1415106))

(assert (not b!1415104))

(assert (not b!1415099))

(assert (not b!1415103))

(assert (not start!121988))

(assert (not b!1415098))

(assert (not b!1415101))

(assert (not b!1415100))

(assert (not b!1415105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

