; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120082 () Bool)

(assert start!120082)

(declare-fun b!1397441 () Bool)

(declare-fun e!791164 () Bool)

(declare-fun e!791165 () Bool)

(assert (=> b!1397441 (= e!791164 (not e!791165))))

(declare-fun res!936464 () Bool)

(assert (=> b!1397441 (=> res!936464 e!791165)))

(declare-datatypes ((SeekEntryResult!10453 0))(
  ( (MissingZero!10453 (index!44182 (_ BitVec 32))) (Found!10453 (index!44183 (_ BitVec 32))) (Intermediate!10453 (undefined!11265 Bool) (index!44184 (_ BitVec 32)) (x!125846 (_ BitVec 32))) (Undefined!10453) (MissingVacant!10453 (index!44185 (_ BitVec 32))) )
))
(declare-fun lt!614209 () SeekEntryResult!10453)

(assert (=> b!1397441 (= res!936464 (or (not (is-Intermediate!10453 lt!614209)) (undefined!11265 lt!614209)))))

(declare-fun e!791162 () Bool)

(assert (=> b!1397441 e!791162))

(declare-fun res!936471 () Bool)

(assert (=> b!1397441 (=> (not res!936471) (not e!791162))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95529 0))(
  ( (array!95530 (arr!46114 (Array (_ BitVec 32) (_ BitVec 64))) (size!46665 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95529)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95529 (_ BitVec 32)) Bool)

(assert (=> b!1397441 (= res!936471 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46860 0))(
  ( (Unit!46861) )
))
(declare-fun lt!614211 () Unit!46860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46860)

(assert (=> b!1397441 (= lt!614211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614215 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95529 (_ BitVec 32)) SeekEntryResult!10453)

(assert (=> b!1397441 (= lt!614209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614215 (select (arr!46114 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397441 (= lt!614215 (toIndex!0 (select (arr!46114 a!2901) j!112) mask!2840))))

(declare-fun b!1397442 () Bool)

(declare-fun res!936465 () Bool)

(assert (=> b!1397442 (=> (not res!936465) (not e!791164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397442 (= res!936465 (validKeyInArray!0 (select (arr!46114 a!2901) j!112)))))

(declare-fun res!936468 () Bool)

(assert (=> start!120082 (=> (not res!936468) (not e!791164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120082 (= res!936468 (validMask!0 mask!2840))))

(assert (=> start!120082 e!791164))

(assert (=> start!120082 true))

(declare-fun array_inv!35059 (array!95529) Bool)

(assert (=> start!120082 (array_inv!35059 a!2901)))

(declare-fun b!1397443 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95529 (_ BitVec 32)) SeekEntryResult!10453)

(assert (=> b!1397443 (= e!791162 (= (seekEntryOrOpen!0 (select (arr!46114 a!2901) j!112) a!2901 mask!2840) (Found!10453 j!112)))))

(declare-fun b!1397444 () Bool)

(declare-fun res!936469 () Bool)

(assert (=> b!1397444 (=> (not res!936469) (not e!791164))))

(assert (=> b!1397444 (= res!936469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397445 () Bool)

(declare-fun e!791161 () Bool)

(assert (=> b!1397445 (= e!791165 e!791161)))

(declare-fun res!936470 () Bool)

(assert (=> b!1397445 (=> res!936470 e!791161)))

(declare-fun lt!614214 () SeekEntryResult!10453)

(assert (=> b!1397445 (= res!936470 (or (= lt!614209 lt!614214) (not (is-Intermediate!10453 lt!614214)) (bvslt (x!125846 lt!614209) #b00000000000000000000000000000000) (bvsgt (x!125846 lt!614209) #b01111111111111111111111111111110) (bvslt lt!614215 #b00000000000000000000000000000000) (bvsge lt!614215 (size!46665 a!2901)) (bvslt (index!44184 lt!614209) #b00000000000000000000000000000000) (bvsge (index!44184 lt!614209) (size!46665 a!2901)) (not (= lt!614209 (Intermediate!10453 false (index!44184 lt!614209) (x!125846 lt!614209)))) (not (= lt!614214 (Intermediate!10453 (undefined!11265 lt!614214) (index!44184 lt!614214) (x!125846 lt!614214))))))))

(declare-fun lt!614213 () (_ BitVec 64))

(declare-fun lt!614210 () array!95529)

(assert (=> b!1397445 (= lt!614214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614213 mask!2840) lt!614213 lt!614210 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397445 (= lt!614213 (select (store (arr!46114 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397445 (= lt!614210 (array!95530 (store (arr!46114 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46665 a!2901)))))

(declare-fun b!1397446 () Bool)

(assert (=> b!1397446 (= e!791161 true)))

(declare-fun lt!614212 () SeekEntryResult!10453)

(assert (=> b!1397446 (= lt!614212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614215 lt!614213 lt!614210 mask!2840))))

(declare-fun b!1397447 () Bool)

(declare-fun res!936463 () Bool)

(assert (=> b!1397447 (=> (not res!936463) (not e!791164))))

(assert (=> b!1397447 (= res!936463 (and (= (size!46665 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46665 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46665 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397448 () Bool)

(declare-fun res!936466 () Bool)

(assert (=> b!1397448 (=> (not res!936466) (not e!791164))))

(assert (=> b!1397448 (= res!936466 (validKeyInArray!0 (select (arr!46114 a!2901) i!1037)))))

(declare-fun b!1397449 () Bool)

(declare-fun res!936467 () Bool)

(assert (=> b!1397449 (=> (not res!936467) (not e!791164))))

(declare-datatypes ((List!32813 0))(
  ( (Nil!32810) (Cons!32809 (h!34051 (_ BitVec 64)) (t!47514 List!32813)) )
))
(declare-fun arrayNoDuplicates!0 (array!95529 (_ BitVec 32) List!32813) Bool)

(assert (=> b!1397449 (= res!936467 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32810))))

(assert (= (and start!120082 res!936468) b!1397447))

(assert (= (and b!1397447 res!936463) b!1397448))

(assert (= (and b!1397448 res!936466) b!1397442))

(assert (= (and b!1397442 res!936465) b!1397444))

(assert (= (and b!1397444 res!936469) b!1397449))

(assert (= (and b!1397449 res!936467) b!1397441))

(assert (= (and b!1397441 res!936471) b!1397443))

(assert (= (and b!1397441 (not res!936464)) b!1397445))

(assert (= (and b!1397445 (not res!936470)) b!1397446))

(declare-fun m!1284299 () Bool)

(assert (=> b!1397448 m!1284299))

(assert (=> b!1397448 m!1284299))

(declare-fun m!1284301 () Bool)

(assert (=> b!1397448 m!1284301))

(declare-fun m!1284303 () Bool)

(assert (=> b!1397441 m!1284303))

(declare-fun m!1284305 () Bool)

(assert (=> b!1397441 m!1284305))

(assert (=> b!1397441 m!1284303))

(declare-fun m!1284307 () Bool)

(assert (=> b!1397441 m!1284307))

(declare-fun m!1284309 () Bool)

(assert (=> b!1397441 m!1284309))

(assert (=> b!1397441 m!1284303))

(declare-fun m!1284311 () Bool)

(assert (=> b!1397441 m!1284311))

(declare-fun m!1284313 () Bool)

(assert (=> b!1397446 m!1284313))

(declare-fun m!1284315 () Bool)

(assert (=> b!1397445 m!1284315))

(assert (=> b!1397445 m!1284315))

(declare-fun m!1284317 () Bool)

(assert (=> b!1397445 m!1284317))

(declare-fun m!1284319 () Bool)

(assert (=> b!1397445 m!1284319))

(declare-fun m!1284321 () Bool)

(assert (=> b!1397445 m!1284321))

(assert (=> b!1397443 m!1284303))

(assert (=> b!1397443 m!1284303))

(declare-fun m!1284323 () Bool)

(assert (=> b!1397443 m!1284323))

(declare-fun m!1284325 () Bool)

(assert (=> start!120082 m!1284325))

(declare-fun m!1284327 () Bool)

(assert (=> start!120082 m!1284327))

(assert (=> b!1397442 m!1284303))

(assert (=> b!1397442 m!1284303))

(declare-fun m!1284329 () Bool)

(assert (=> b!1397442 m!1284329))

(declare-fun m!1284331 () Bool)

(assert (=> b!1397449 m!1284331))

(declare-fun m!1284333 () Bool)

(assert (=> b!1397444 m!1284333))

(push 1)

