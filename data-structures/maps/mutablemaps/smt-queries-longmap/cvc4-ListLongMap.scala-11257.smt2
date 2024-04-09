; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131330 () Bool)

(assert start!131330)

(declare-fun b!1539530 () Bool)

(declare-fun res!1056473 () Bool)

(declare-fun e!856339 () Bool)

(assert (=> b!1539530 (=> (not res!1056473) (not e!856339))))

(declare-datatypes ((array!102244 0))(
  ( (array!102245 (arr!49329 (Array (_ BitVec 32) (_ BitVec 64))) (size!49880 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102244)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539530 (= res!1056473 (validKeyInArray!0 (select (arr!49329 a!2792) i!951)))))

(declare-fun b!1539531 () Bool)

(declare-fun res!1056469 () Bool)

(assert (=> b!1539531 (=> (not res!1056469) (not e!856339))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102244 (_ BitVec 32)) Bool)

(assert (=> b!1539531 (= res!1056469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539532 () Bool)

(declare-fun res!1056474 () Bool)

(assert (=> b!1539532 (=> (not res!1056474) (not e!856339))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539532 (= res!1056474 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49880 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49880 a!2792)) (= (select (arr!49329 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1056472 () Bool)

(assert (=> start!131330 (=> (not res!1056472) (not e!856339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131330 (= res!1056472 (validMask!0 mask!2480))))

(assert (=> start!131330 e!856339))

(assert (=> start!131330 true))

(declare-fun array_inv!38274 (array!102244) Bool)

(assert (=> start!131330 (array_inv!38274 a!2792)))

(declare-fun b!1539533 () Bool)

(declare-fun res!1056471 () Bool)

(assert (=> b!1539533 (=> (not res!1056471) (not e!856339))))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13478 0))(
  ( (MissingZero!13478 (index!56306 (_ BitVec 32))) (Found!13478 (index!56307 (_ BitVec 32))) (Intermediate!13478 (undefined!14290 Bool) (index!56308 (_ BitVec 32)) (x!138042 (_ BitVec 32))) (Undefined!13478) (MissingVacant!13478 (index!56309 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102244 (_ BitVec 32)) SeekEntryResult!13478)

(assert (=> b!1539533 (= res!1056471 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49329 a!2792) j!64) a!2792 mask!2480) (Found!13478 j!64)))))

(declare-fun b!1539534 () Bool)

(declare-fun res!1056468 () Bool)

(assert (=> b!1539534 (=> (not res!1056468) (not e!856339))))

(declare-datatypes ((List!35983 0))(
  ( (Nil!35980) (Cons!35979 (h!37425 (_ BitVec 64)) (t!50684 List!35983)) )
))
(declare-fun arrayNoDuplicates!0 (array!102244 (_ BitVec 32) List!35983) Bool)

(assert (=> b!1539534 (= res!1056468 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35980))))

(declare-fun b!1539535 () Bool)

(declare-fun res!1056470 () Bool)

(assert (=> b!1539535 (=> (not res!1056470) (not e!856339))))

(assert (=> b!1539535 (= res!1056470 (validKeyInArray!0 (select (arr!49329 a!2792) j!64)))))

(declare-fun b!1539536 () Bool)

(assert (=> b!1539536 (= e!856339 false)))

(declare-fun lt!665035 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539536 (= lt!665035 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539537 () Bool)

(declare-fun res!1056466 () Bool)

(assert (=> b!1539537 (=> (not res!1056466) (not e!856339))))

(assert (=> b!1539537 (= res!1056466 (and (= (size!49880 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49880 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49880 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539538 () Bool)

(declare-fun res!1056467 () Bool)

(assert (=> b!1539538 (=> (not res!1056467) (not e!856339))))

(assert (=> b!1539538 (= res!1056467 (not (= (select (arr!49329 a!2792) index!463) (select (arr!49329 a!2792) j!64))))))

(assert (= (and start!131330 res!1056472) b!1539537))

(assert (= (and b!1539537 res!1056466) b!1539530))

(assert (= (and b!1539530 res!1056473) b!1539535))

(assert (= (and b!1539535 res!1056470) b!1539531))

(assert (= (and b!1539531 res!1056469) b!1539534))

(assert (= (and b!1539534 res!1056468) b!1539532))

(assert (= (and b!1539532 res!1056474) b!1539533))

(assert (= (and b!1539533 res!1056471) b!1539538))

(assert (= (and b!1539538 res!1056467) b!1539536))

(declare-fun m!1421781 () Bool)

(assert (=> b!1539535 m!1421781))

(assert (=> b!1539535 m!1421781))

(declare-fun m!1421783 () Bool)

(assert (=> b!1539535 m!1421783))

(declare-fun m!1421785 () Bool)

(assert (=> b!1539534 m!1421785))

(declare-fun m!1421787 () Bool)

(assert (=> b!1539538 m!1421787))

(assert (=> b!1539538 m!1421781))

(declare-fun m!1421789 () Bool)

(assert (=> start!131330 m!1421789))

(declare-fun m!1421791 () Bool)

(assert (=> start!131330 m!1421791))

(declare-fun m!1421793 () Bool)

(assert (=> b!1539536 m!1421793))

(declare-fun m!1421795 () Bool)

(assert (=> b!1539531 m!1421795))

(assert (=> b!1539533 m!1421781))

(assert (=> b!1539533 m!1421781))

(declare-fun m!1421797 () Bool)

(assert (=> b!1539533 m!1421797))

(declare-fun m!1421799 () Bool)

(assert (=> b!1539532 m!1421799))

(declare-fun m!1421801 () Bool)

(assert (=> b!1539530 m!1421801))

(assert (=> b!1539530 m!1421801))

(declare-fun m!1421803 () Bool)

(assert (=> b!1539530 m!1421803))

(push 1)

(assert (not start!131330))

(assert (not b!1539535))

(assert (not b!1539531))

(assert (not b!1539533))

(assert (not b!1539530))

(assert (not b!1539534))

(assert (not b!1539536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

