; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127140 () Bool)

(assert start!127140)

(declare-datatypes ((array!99704 0))(
  ( (array!99705 (arr!48116 (Array (_ BitVec 32) (_ BitVec 64))) (size!48667 (_ BitVec 32))) )
))
(declare-fun lt!651038 () array!99704)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!651040 () (_ BitVec 64))

(declare-fun b!1493570 () Bool)

(declare-datatypes ((SeekEntryResult!12379 0))(
  ( (MissingZero!12379 (index!51907 (_ BitVec 32))) (Found!12379 (index!51908 (_ BitVec 32))) (Intermediate!12379 (undefined!13191 Bool) (index!51909 (_ BitVec 32)) (x!133510 (_ BitVec 32))) (Undefined!12379) (MissingVacant!12379 (index!51910 (_ BitVec 32))) )
))
(declare-fun lt!651037 () SeekEntryResult!12379)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!836709 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99704 (_ BitVec 32)) SeekEntryResult!12379)

(assert (=> b!1493570 (= e!836709 (= lt!651037 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651040 lt!651038 mask!2687)))))

(declare-fun b!1493571 () Bool)

(declare-fun res!1016139 () Bool)

(declare-fun e!836710 () Bool)

(assert (=> b!1493571 (=> (not res!1016139) (not e!836710))))

(declare-fun a!2862 () array!99704)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493571 (= res!1016139 (validKeyInArray!0 (select (arr!48116 a!2862) i!1006)))))

(declare-fun b!1493572 () Bool)

(declare-fun e!836707 () Bool)

(assert (=> b!1493572 (= e!836707 true)))

(declare-fun lt!651035 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493572 (= lt!651035 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493573 () Bool)

(declare-fun e!836705 () Bool)

(declare-fun e!836706 () Bool)

(assert (=> b!1493573 (= e!836705 e!836706)))

(declare-fun res!1016140 () Bool)

(assert (=> b!1493573 (=> (not res!1016140) (not e!836706))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1493573 (= res!1016140 (= lt!651037 (Intermediate!12379 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493573 (= lt!651037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651040 mask!2687) lt!651040 lt!651038 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1493573 (= lt!651040 (select (store (arr!48116 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493574 () Bool)

(declare-fun e!836708 () Bool)

(assert (=> b!1493574 (= e!836710 e!836708)))

(declare-fun res!1016143 () Bool)

(assert (=> b!1493574 (=> (not res!1016143) (not e!836708))))

(assert (=> b!1493574 (= res!1016143 (= (select (store (arr!48116 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493574 (= lt!651038 (array!99705 (store (arr!48116 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48667 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!836704 () Bool)

(declare-fun b!1493575 () Bool)

(assert (=> b!1493575 (= e!836704 (or (= (select (arr!48116 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48116 a!2862) intermediateBeforeIndex!19) (select (arr!48116 a!2862) j!93))))))

(declare-fun b!1493576 () Bool)

(declare-fun res!1016152 () Bool)

(assert (=> b!1493576 (=> (not res!1016152) (not e!836710))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1493576 (= res!1016152 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48667 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48667 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48667 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493577 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99704 (_ BitVec 32)) SeekEntryResult!12379)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99704 (_ BitVec 32)) SeekEntryResult!12379)

(assert (=> b!1493577 (= e!836709 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651040 lt!651038 mask!2687) (seekEntryOrOpen!0 lt!651040 lt!651038 mask!2687)))))

(declare-fun b!1493578 () Bool)

(assert (=> b!1493578 (= e!836706 (not e!836707))))

(declare-fun res!1016144 () Bool)

(assert (=> b!1493578 (=> res!1016144 e!836707)))

(assert (=> b!1493578 (= res!1016144 (or (and (= (select (arr!48116 a!2862) index!646) (select (store (arr!48116 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48116 a!2862) index!646) (select (arr!48116 a!2862) j!93))) (= (select (arr!48116 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1493578 e!836704))

(declare-fun res!1016142 () Bool)

(assert (=> b!1493578 (=> (not res!1016142) (not e!836704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99704 (_ BitVec 32)) Bool)

(assert (=> b!1493578 (= res!1016142 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50046 0))(
  ( (Unit!50047) )
))
(declare-fun lt!651039 () Unit!50046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99704 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50046)

(assert (=> b!1493578 (= lt!651039 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493579 () Bool)

(declare-fun res!1016150 () Bool)

(assert (=> b!1493579 (=> (not res!1016150) (not e!836704))))

(assert (=> b!1493579 (= res!1016150 (= (seekEntryOrOpen!0 (select (arr!48116 a!2862) j!93) a!2862 mask!2687) (Found!12379 j!93)))))

(declare-fun b!1493580 () Bool)

(declare-fun res!1016145 () Bool)

(assert (=> b!1493580 (=> (not res!1016145) (not e!836710))))

(assert (=> b!1493580 (= res!1016145 (and (= (size!48667 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48667 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48667 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493581 () Bool)

(declare-fun res!1016146 () Bool)

(assert (=> b!1493581 (=> (not res!1016146) (not e!836706))))

(assert (=> b!1493581 (= res!1016146 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493582 () Bool)

(assert (=> b!1493582 (= e!836708 e!836705)))

(declare-fun res!1016154 () Bool)

(assert (=> b!1493582 (=> (not res!1016154) (not e!836705))))

(declare-fun lt!651036 () SeekEntryResult!12379)

(assert (=> b!1493582 (= res!1016154 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48116 a!2862) j!93) mask!2687) (select (arr!48116 a!2862) j!93) a!2862 mask!2687) lt!651036))))

(assert (=> b!1493582 (= lt!651036 (Intermediate!12379 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1016147 () Bool)

(assert (=> start!127140 (=> (not res!1016147) (not e!836710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127140 (= res!1016147 (validMask!0 mask!2687))))

(assert (=> start!127140 e!836710))

(assert (=> start!127140 true))

(declare-fun array_inv!37061 (array!99704) Bool)

(assert (=> start!127140 (array_inv!37061 a!2862)))

(declare-fun b!1493583 () Bool)

(declare-fun res!1016148 () Bool)

(assert (=> b!1493583 (=> (not res!1016148) (not e!836710))))

(assert (=> b!1493583 (= res!1016148 (validKeyInArray!0 (select (arr!48116 a!2862) j!93)))))

(declare-fun b!1493584 () Bool)

(declare-fun res!1016151 () Bool)

(assert (=> b!1493584 (=> (not res!1016151) (not e!836710))))

(assert (=> b!1493584 (= res!1016151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493585 () Bool)

(declare-fun res!1016149 () Bool)

(assert (=> b!1493585 (=> (not res!1016149) (not e!836705))))

(assert (=> b!1493585 (= res!1016149 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48116 a!2862) j!93) a!2862 mask!2687) lt!651036))))

(declare-fun b!1493586 () Bool)

(declare-fun res!1016141 () Bool)

(assert (=> b!1493586 (=> (not res!1016141) (not e!836706))))

(assert (=> b!1493586 (= res!1016141 e!836709)))

(declare-fun c!138248 () Bool)

(assert (=> b!1493586 (= c!138248 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493587 () Bool)

(declare-fun res!1016153 () Bool)

(assert (=> b!1493587 (=> (not res!1016153) (not e!836710))))

(declare-datatypes ((List!34797 0))(
  ( (Nil!34794) (Cons!34793 (h!36182 (_ BitVec 64)) (t!49498 List!34797)) )
))
(declare-fun arrayNoDuplicates!0 (array!99704 (_ BitVec 32) List!34797) Bool)

(assert (=> b!1493587 (= res!1016153 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34794))))

(assert (= (and start!127140 res!1016147) b!1493580))

(assert (= (and b!1493580 res!1016145) b!1493571))

(assert (= (and b!1493571 res!1016139) b!1493583))

(assert (= (and b!1493583 res!1016148) b!1493584))

(assert (= (and b!1493584 res!1016151) b!1493587))

(assert (= (and b!1493587 res!1016153) b!1493576))

(assert (= (and b!1493576 res!1016152) b!1493574))

(assert (= (and b!1493574 res!1016143) b!1493582))

(assert (= (and b!1493582 res!1016154) b!1493585))

(assert (= (and b!1493585 res!1016149) b!1493573))

(assert (= (and b!1493573 res!1016140) b!1493586))

(assert (= (and b!1493586 c!138248) b!1493570))

(assert (= (and b!1493586 (not c!138248)) b!1493577))

(assert (= (and b!1493586 res!1016141) b!1493581))

(assert (= (and b!1493581 res!1016146) b!1493578))

(assert (= (and b!1493578 res!1016142) b!1493579))

(assert (= (and b!1493579 res!1016150) b!1493575))

(assert (= (and b!1493578 (not res!1016144)) b!1493572))

(declare-fun m!1377403 () Bool)

(assert (=> b!1493582 m!1377403))

(assert (=> b!1493582 m!1377403))

(declare-fun m!1377405 () Bool)

(assert (=> b!1493582 m!1377405))

(assert (=> b!1493582 m!1377405))

(assert (=> b!1493582 m!1377403))

(declare-fun m!1377407 () Bool)

(assert (=> b!1493582 m!1377407))

(declare-fun m!1377409 () Bool)

(assert (=> b!1493577 m!1377409))

(declare-fun m!1377411 () Bool)

(assert (=> b!1493577 m!1377411))

(declare-fun m!1377413 () Bool)

(assert (=> b!1493572 m!1377413))

(declare-fun m!1377415 () Bool)

(assert (=> b!1493573 m!1377415))

(assert (=> b!1493573 m!1377415))

(declare-fun m!1377417 () Bool)

(assert (=> b!1493573 m!1377417))

(declare-fun m!1377419 () Bool)

(assert (=> b!1493573 m!1377419))

(declare-fun m!1377421 () Bool)

(assert (=> b!1493573 m!1377421))

(declare-fun m!1377423 () Bool)

(assert (=> b!1493584 m!1377423))

(assert (=> b!1493585 m!1377403))

(assert (=> b!1493585 m!1377403))

(declare-fun m!1377425 () Bool)

(assert (=> b!1493585 m!1377425))

(declare-fun m!1377427 () Bool)

(assert (=> b!1493578 m!1377427))

(assert (=> b!1493578 m!1377419))

(declare-fun m!1377429 () Bool)

(assert (=> b!1493578 m!1377429))

(declare-fun m!1377431 () Bool)

(assert (=> b!1493578 m!1377431))

(declare-fun m!1377433 () Bool)

(assert (=> b!1493578 m!1377433))

(assert (=> b!1493578 m!1377403))

(declare-fun m!1377435 () Bool)

(assert (=> b!1493575 m!1377435))

(assert (=> b!1493575 m!1377403))

(declare-fun m!1377437 () Bool)

(assert (=> start!127140 m!1377437))

(declare-fun m!1377439 () Bool)

(assert (=> start!127140 m!1377439))

(assert (=> b!1493579 m!1377403))

(assert (=> b!1493579 m!1377403))

(declare-fun m!1377441 () Bool)

(assert (=> b!1493579 m!1377441))

(declare-fun m!1377443 () Bool)

(assert (=> b!1493571 m!1377443))

(assert (=> b!1493571 m!1377443))

(declare-fun m!1377445 () Bool)

(assert (=> b!1493571 m!1377445))

(declare-fun m!1377447 () Bool)

(assert (=> b!1493570 m!1377447))

(assert (=> b!1493574 m!1377419))

(declare-fun m!1377449 () Bool)

(assert (=> b!1493574 m!1377449))

(declare-fun m!1377451 () Bool)

(assert (=> b!1493587 m!1377451))

(assert (=> b!1493583 m!1377403))

(assert (=> b!1493583 m!1377403))

(declare-fun m!1377453 () Bool)

(assert (=> b!1493583 m!1377453))

(check-sat (not b!1493570) (not b!1493582) (not b!1493578) (not b!1493572) (not b!1493585) (not b!1493587) (not b!1493579) (not b!1493577) (not start!127140) (not b!1493584) (not b!1493573) (not b!1493583) (not b!1493571))
(check-sat)
