; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120076 () Bool)

(assert start!120076)

(declare-fun b!1397360 () Bool)

(declare-fun res!936390 () Bool)

(declare-fun e!791118 () Bool)

(assert (=> b!1397360 (=> (not res!936390) (not e!791118))))

(declare-datatypes ((array!95523 0))(
  ( (array!95524 (arr!46111 (Array (_ BitVec 32) (_ BitVec 64))) (size!46662 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95523)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95523 (_ BitVec 32)) Bool)

(assert (=> b!1397360 (= res!936390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397361 () Bool)

(declare-fun res!936386 () Bool)

(assert (=> b!1397361 (=> (not res!936386) (not e!791118))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397361 (= res!936386 (and (= (size!46662 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46662 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46662 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397363 () Bool)

(declare-fun res!936387 () Bool)

(assert (=> b!1397363 (=> (not res!936387) (not e!791118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397363 (= res!936387 (validKeyInArray!0 (select (arr!46111 a!2901) i!1037)))))

(declare-fun b!1397364 () Bool)

(declare-fun res!936389 () Bool)

(assert (=> b!1397364 (=> (not res!936389) (not e!791118))))

(assert (=> b!1397364 (= res!936389 (validKeyInArray!0 (select (arr!46111 a!2901) j!112)))))

(declare-fun b!1397365 () Bool)

(declare-fun e!791119 () Bool)

(declare-datatypes ((SeekEntryResult!10450 0))(
  ( (MissingZero!10450 (index!44170 (_ BitVec 32))) (Found!10450 (index!44171 (_ BitVec 32))) (Intermediate!10450 (undefined!11262 Bool) (index!44172 (_ BitVec 32)) (x!125835 (_ BitVec 32))) (Undefined!10450) (MissingVacant!10450 (index!44173 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95523 (_ BitVec 32)) SeekEntryResult!10450)

(assert (=> b!1397365 (= e!791119 (= (seekEntryOrOpen!0 (select (arr!46111 a!2901) j!112) a!2901 mask!2840) (Found!10450 j!112)))))

(declare-fun b!1397366 () Bool)

(declare-fun e!791117 () Bool)

(assert (=> b!1397366 (= e!791118 (not e!791117))))

(declare-fun res!936388 () Bool)

(assert (=> b!1397366 (=> res!936388 e!791117)))

(declare-fun lt!614147 () SeekEntryResult!10450)

(assert (=> b!1397366 (= res!936388 (or (not (is-Intermediate!10450 lt!614147)) (undefined!11262 lt!614147)))))

(assert (=> b!1397366 e!791119))

(declare-fun res!936384 () Bool)

(assert (=> b!1397366 (=> (not res!936384) (not e!791119))))

(assert (=> b!1397366 (= res!936384 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46854 0))(
  ( (Unit!46855) )
))
(declare-fun lt!614151 () Unit!46854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46854)

(assert (=> b!1397366 (= lt!614151 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614150 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95523 (_ BitVec 32)) SeekEntryResult!10450)

(assert (=> b!1397366 (= lt!614147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614150 (select (arr!46111 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397366 (= lt!614150 (toIndex!0 (select (arr!46111 a!2901) j!112) mask!2840))))

(declare-fun res!936382 () Bool)

(assert (=> start!120076 (=> (not res!936382) (not e!791118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120076 (= res!936382 (validMask!0 mask!2840))))

(assert (=> start!120076 e!791118))

(assert (=> start!120076 true))

(declare-fun array_inv!35056 (array!95523) Bool)

(assert (=> start!120076 (array_inv!35056 a!2901)))

(declare-fun b!1397362 () Bool)

(declare-fun e!791120 () Bool)

(assert (=> b!1397362 (= e!791117 e!791120)))

(declare-fun res!936385 () Bool)

(assert (=> b!1397362 (=> res!936385 e!791120)))

(declare-fun lt!614152 () SeekEntryResult!10450)

(assert (=> b!1397362 (= res!936385 (or (= lt!614147 lt!614152) (not (is-Intermediate!10450 lt!614152)) (bvslt (x!125835 lt!614147) #b00000000000000000000000000000000) (bvsgt (x!125835 lt!614147) #b01111111111111111111111111111110) (bvslt lt!614150 #b00000000000000000000000000000000) (bvsge lt!614150 (size!46662 a!2901)) (bvslt (index!44172 lt!614147) #b00000000000000000000000000000000) (bvsge (index!44172 lt!614147) (size!46662 a!2901)) (not (= lt!614147 (Intermediate!10450 false (index!44172 lt!614147) (x!125835 lt!614147)))) (not (= lt!614152 (Intermediate!10450 (undefined!11262 lt!614152) (index!44172 lt!614152) (x!125835 lt!614152))))))))

(declare-fun lt!614146 () array!95523)

(declare-fun lt!614149 () (_ BitVec 64))

(assert (=> b!1397362 (= lt!614152 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614149 mask!2840) lt!614149 lt!614146 mask!2840))))

(assert (=> b!1397362 (= lt!614149 (select (store (arr!46111 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397362 (= lt!614146 (array!95524 (store (arr!46111 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46662 a!2901)))))

(declare-fun b!1397367 () Bool)

(assert (=> b!1397367 (= e!791120 true)))

(declare-fun lt!614148 () SeekEntryResult!10450)

(assert (=> b!1397367 (= lt!614148 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614150 lt!614149 lt!614146 mask!2840))))

(declare-fun b!1397368 () Bool)

(declare-fun res!936383 () Bool)

(assert (=> b!1397368 (=> (not res!936383) (not e!791118))))

(declare-datatypes ((List!32810 0))(
  ( (Nil!32807) (Cons!32806 (h!34048 (_ BitVec 64)) (t!47511 List!32810)) )
))
(declare-fun arrayNoDuplicates!0 (array!95523 (_ BitVec 32) List!32810) Bool)

(assert (=> b!1397368 (= res!936383 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32807))))

(assert (= (and start!120076 res!936382) b!1397361))

(assert (= (and b!1397361 res!936386) b!1397363))

(assert (= (and b!1397363 res!936387) b!1397364))

(assert (= (and b!1397364 res!936389) b!1397360))

(assert (= (and b!1397360 res!936390) b!1397368))

(assert (= (and b!1397368 res!936383) b!1397366))

(assert (= (and b!1397366 res!936384) b!1397365))

(assert (= (and b!1397366 (not res!936388)) b!1397362))

(assert (= (and b!1397362 (not res!936385)) b!1397367))

(declare-fun m!1284191 () Bool)

(assert (=> b!1397365 m!1284191))

(assert (=> b!1397365 m!1284191))

(declare-fun m!1284193 () Bool)

(assert (=> b!1397365 m!1284193))

(declare-fun m!1284195 () Bool)

(assert (=> b!1397367 m!1284195))

(assert (=> b!1397366 m!1284191))

(declare-fun m!1284197 () Bool)

(assert (=> b!1397366 m!1284197))

(assert (=> b!1397366 m!1284191))

(declare-fun m!1284199 () Bool)

(assert (=> b!1397366 m!1284199))

(declare-fun m!1284201 () Bool)

(assert (=> b!1397366 m!1284201))

(assert (=> b!1397366 m!1284191))

(declare-fun m!1284203 () Bool)

(assert (=> b!1397366 m!1284203))

(declare-fun m!1284205 () Bool)

(assert (=> b!1397362 m!1284205))

(assert (=> b!1397362 m!1284205))

(declare-fun m!1284207 () Bool)

(assert (=> b!1397362 m!1284207))

(declare-fun m!1284209 () Bool)

(assert (=> b!1397362 m!1284209))

(declare-fun m!1284211 () Bool)

(assert (=> b!1397362 m!1284211))

(declare-fun m!1284213 () Bool)

(assert (=> b!1397368 m!1284213))

(assert (=> b!1397364 m!1284191))

(assert (=> b!1397364 m!1284191))

(declare-fun m!1284215 () Bool)

(assert (=> b!1397364 m!1284215))

(declare-fun m!1284217 () Bool)

(assert (=> b!1397360 m!1284217))

(declare-fun m!1284219 () Bool)

(assert (=> b!1397363 m!1284219))

(assert (=> b!1397363 m!1284219))

(declare-fun m!1284221 () Bool)

(assert (=> b!1397363 m!1284221))

(declare-fun m!1284223 () Bool)

(assert (=> start!120076 m!1284223))

(declare-fun m!1284225 () Bool)

(assert (=> start!120076 m!1284225))

(push 1)

