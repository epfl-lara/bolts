; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120910 () Bool)

(assert start!120910)

(declare-fun res!944628 () Bool)

(declare-fun e!795997 () Bool)

(assert (=> start!120910 (=> (not res!944628) (not e!795997))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120910 (= res!944628 (validMask!0 mask!2840))))

(assert (=> start!120910 e!795997))

(assert (=> start!120910 true))

(declare-datatypes ((array!96135 0))(
  ( (array!96136 (arr!46411 (Array (_ BitVec 32) (_ BitVec 64))) (size!46962 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96135)

(declare-fun array_inv!35356 (array!96135) Bool)

(assert (=> start!120910 (array_inv!35356 a!2901)))

(declare-fun b!1406298 () Bool)

(declare-fun res!944629 () Bool)

(assert (=> b!1406298 (=> (not res!944629) (not e!795997))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406298 (= res!944629 (validKeyInArray!0 (select (arr!46411 a!2901) j!112)))))

(declare-fun b!1406299 () Bool)

(declare-fun res!944626 () Bool)

(assert (=> b!1406299 (=> (not res!944626) (not e!795997))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1406299 (= res!944626 (validKeyInArray!0 (select (arr!46411 a!2901) i!1037)))))

(declare-fun b!1406300 () Bool)

(declare-fun e!795995 () Bool)

(assert (=> b!1406300 (= e!795997 (not e!795995))))

(declare-fun res!944625 () Bool)

(assert (=> b!1406300 (=> res!944625 e!795995)))

(declare-datatypes ((SeekEntryResult!10744 0))(
  ( (MissingZero!10744 (index!45352 (_ BitVec 32))) (Found!10744 (index!45353 (_ BitVec 32))) (Intermediate!10744 (undefined!11556 Bool) (index!45354 (_ BitVec 32)) (x!126962 (_ BitVec 32))) (Undefined!10744) (MissingVacant!10744 (index!45355 (_ BitVec 32))) )
))
(declare-fun lt!619302 () SeekEntryResult!10744)

(assert (=> b!1406300 (= res!944625 (or (not (is-Intermediate!10744 lt!619302)) (undefined!11556 lt!619302)))))

(declare-fun e!795998 () Bool)

(assert (=> b!1406300 e!795998))

(declare-fun res!944627 () Bool)

(assert (=> b!1406300 (=> (not res!944627) (not e!795998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96135 (_ BitVec 32)) Bool)

(assert (=> b!1406300 (= res!944627 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47412 0))(
  ( (Unit!47413) )
))
(declare-fun lt!619303 () Unit!47412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47412)

(assert (=> b!1406300 (= lt!619303 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96135 (_ BitVec 32)) SeekEntryResult!10744)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406300 (= lt!619302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46411 a!2901) j!112) mask!2840) (select (arr!46411 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406301 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96135 (_ BitVec 32)) SeekEntryResult!10744)

(assert (=> b!1406301 (= e!795998 (= (seekEntryOrOpen!0 (select (arr!46411 a!2901) j!112) a!2901 mask!2840) (Found!10744 j!112)))))

(declare-fun b!1406302 () Bool)

(declare-fun res!944630 () Bool)

(assert (=> b!1406302 (=> (not res!944630) (not e!795997))))

(declare-datatypes ((List!33110 0))(
  ( (Nil!33107) (Cons!33106 (h!34360 (_ BitVec 64)) (t!47811 List!33110)) )
))
(declare-fun arrayNoDuplicates!0 (array!96135 (_ BitVec 32) List!33110) Bool)

(assert (=> b!1406302 (= res!944630 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33107))))

(declare-fun b!1406303 () Bool)

(declare-fun res!944624 () Bool)

(assert (=> b!1406303 (=> (not res!944624) (not e!795997))))

(assert (=> b!1406303 (= res!944624 (and (= (size!46962 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46962 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46962 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406304 () Bool)

(declare-fun res!944631 () Bool)

(assert (=> b!1406304 (=> (not res!944631) (not e!795997))))

(assert (=> b!1406304 (= res!944631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406305 () Bool)

(assert (=> b!1406305 (= e!795995 true)))

(declare-fun lt!619301 () SeekEntryResult!10744)

(assert (=> b!1406305 (= lt!619301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46411 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46411 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96136 (store (arr!46411 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46962 a!2901)) mask!2840))))

(assert (= (and start!120910 res!944628) b!1406303))

(assert (= (and b!1406303 res!944624) b!1406299))

(assert (= (and b!1406299 res!944626) b!1406298))

(assert (= (and b!1406298 res!944629) b!1406304))

(assert (= (and b!1406304 res!944631) b!1406302))

(assert (= (and b!1406302 res!944630) b!1406300))

(assert (= (and b!1406300 res!944627) b!1406301))

(assert (= (and b!1406300 (not res!944625)) b!1406305))

(declare-fun m!1295477 () Bool)

(assert (=> b!1406305 m!1295477))

(declare-fun m!1295479 () Bool)

(assert (=> b!1406305 m!1295479))

(assert (=> b!1406305 m!1295479))

(declare-fun m!1295481 () Bool)

(assert (=> b!1406305 m!1295481))

(assert (=> b!1406305 m!1295481))

(assert (=> b!1406305 m!1295479))

(declare-fun m!1295483 () Bool)

(assert (=> b!1406305 m!1295483))

(declare-fun m!1295485 () Bool)

(assert (=> start!120910 m!1295485))

(declare-fun m!1295487 () Bool)

(assert (=> start!120910 m!1295487))

(declare-fun m!1295489 () Bool)

(assert (=> b!1406304 m!1295489))

(declare-fun m!1295491 () Bool)

(assert (=> b!1406300 m!1295491))

(declare-fun m!1295493 () Bool)

(assert (=> b!1406300 m!1295493))

(assert (=> b!1406300 m!1295491))

(declare-fun m!1295495 () Bool)

(assert (=> b!1406300 m!1295495))

(assert (=> b!1406300 m!1295493))

(assert (=> b!1406300 m!1295491))

(declare-fun m!1295497 () Bool)

(assert (=> b!1406300 m!1295497))

(declare-fun m!1295499 () Bool)

(assert (=> b!1406300 m!1295499))

(declare-fun m!1295501 () Bool)

(assert (=> b!1406302 m!1295501))

(assert (=> b!1406301 m!1295491))

(assert (=> b!1406301 m!1295491))

(declare-fun m!1295503 () Bool)

(assert (=> b!1406301 m!1295503))

(declare-fun m!1295505 () Bool)

(assert (=> b!1406299 m!1295505))

(assert (=> b!1406299 m!1295505))

(declare-fun m!1295507 () Bool)

(assert (=> b!1406299 m!1295507))

(assert (=> b!1406298 m!1295491))

(assert (=> b!1406298 m!1295491))

(declare-fun m!1295509 () Bool)

(assert (=> b!1406298 m!1295509))

(push 1)

(assert (not b!1406300))

(assert (not b!1406299))

(assert (not start!120910))

(assert (not b!1406305))

(assert (not b!1406301))

(assert (not b!1406302))

(assert (not b!1406298))

(assert (not b!1406304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

