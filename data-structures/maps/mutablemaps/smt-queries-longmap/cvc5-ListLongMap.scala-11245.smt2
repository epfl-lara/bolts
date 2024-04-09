; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131170 () Bool)

(assert start!131170)

(declare-fun b!1538234 () Bool)

(declare-fun res!1055352 () Bool)

(declare-fun e!855932 () Bool)

(assert (=> b!1538234 (=> (not res!1055352) (not e!855932))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-datatypes ((array!102162 0))(
  ( (array!102163 (arr!49291 (Array (_ BitVec 32) (_ BitVec 64))) (size!49842 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102162)

(assert (=> b!1538234 (= res!1055352 (and (= (size!49842 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49842 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49842 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1055353 () Bool)

(assert (=> start!131170 (=> (not res!1055353) (not e!855932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131170 (= res!1055353 (validMask!0 mask!2480))))

(assert (=> start!131170 e!855932))

(assert (=> start!131170 true))

(declare-fun array_inv!38236 (array!102162) Bool)

(assert (=> start!131170 (array_inv!38236 a!2792)))

(declare-fun b!1538235 () Bool)

(declare-fun res!1055354 () Bool)

(assert (=> b!1538235 (=> (not res!1055354) (not e!855932))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538235 (= res!1055354 (not (= (select (arr!49291 a!2792) index!463) (select (arr!49291 a!2792) j!64))))))

(declare-fun b!1538236 () Bool)

(declare-fun res!1055351 () Bool)

(assert (=> b!1538236 (=> (not res!1055351) (not e!855932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102162 (_ BitVec 32)) Bool)

(assert (=> b!1538236 (= res!1055351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538237 () Bool)

(declare-fun res!1055357 () Bool)

(assert (=> b!1538237 (=> (not res!1055357) (not e!855932))))

(declare-datatypes ((List!35945 0))(
  ( (Nil!35942) (Cons!35941 (h!37387 (_ BitVec 64)) (t!50646 List!35945)) )
))
(declare-fun arrayNoDuplicates!0 (array!102162 (_ BitVec 32) List!35945) Bool)

(assert (=> b!1538237 (= res!1055357 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35942))))

(declare-fun b!1538238 () Bool)

(declare-fun res!1055355 () Bool)

(assert (=> b!1538238 (=> (not res!1055355) (not e!855932))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13440 0))(
  ( (MissingZero!13440 (index!56154 (_ BitVec 32))) (Found!13440 (index!56155 (_ BitVec 32))) (Intermediate!13440 (undefined!14252 Bool) (index!56156 (_ BitVec 32)) (x!137896 (_ BitVec 32))) (Undefined!13440) (MissingVacant!13440 (index!56157 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102162 (_ BitVec 32)) SeekEntryResult!13440)

(assert (=> b!1538238 (= res!1055355 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49291 a!2792) j!64) a!2792 mask!2480) (Found!13440 j!64)))))

(declare-fun b!1538239 () Bool)

(declare-fun res!1055356 () Bool)

(assert (=> b!1538239 (=> (not res!1055356) (not e!855932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538239 (= res!1055356 (validKeyInArray!0 (select (arr!49291 a!2792) i!951)))))

(declare-fun b!1538240 () Bool)

(declare-fun res!1055350 () Bool)

(assert (=> b!1538240 (=> (not res!1055350) (not e!855932))))

(assert (=> b!1538240 (= res!1055350 (validKeyInArray!0 (select (arr!49291 a!2792) j!64)))))

(declare-fun b!1538241 () Bool)

(declare-fun res!1055358 () Bool)

(assert (=> b!1538241 (=> (not res!1055358) (not e!855932))))

(assert (=> b!1538241 (= res!1055358 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49842 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49842 a!2792)) (= (select (arr!49291 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538242 () Bool)

(assert (=> b!1538242 (= e!855932 false)))

(declare-fun lt!664813 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538242 (= lt!664813 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131170 res!1055353) b!1538234))

(assert (= (and b!1538234 res!1055352) b!1538239))

(assert (= (and b!1538239 res!1055356) b!1538240))

(assert (= (and b!1538240 res!1055350) b!1538236))

(assert (= (and b!1538236 res!1055351) b!1538237))

(assert (= (and b!1538237 res!1055357) b!1538241))

(assert (= (and b!1538241 res!1055358) b!1538238))

(assert (= (and b!1538238 res!1055355) b!1538235))

(assert (= (and b!1538235 res!1055354) b!1538242))

(declare-fun m!1420725 () Bool)

(assert (=> b!1538238 m!1420725))

(assert (=> b!1538238 m!1420725))

(declare-fun m!1420727 () Bool)

(assert (=> b!1538238 m!1420727))

(declare-fun m!1420729 () Bool)

(assert (=> start!131170 m!1420729))

(declare-fun m!1420731 () Bool)

(assert (=> start!131170 m!1420731))

(declare-fun m!1420733 () Bool)

(assert (=> b!1538235 m!1420733))

(assert (=> b!1538235 m!1420725))

(declare-fun m!1420735 () Bool)

(assert (=> b!1538242 m!1420735))

(assert (=> b!1538240 m!1420725))

(assert (=> b!1538240 m!1420725))

(declare-fun m!1420737 () Bool)

(assert (=> b!1538240 m!1420737))

(declare-fun m!1420739 () Bool)

(assert (=> b!1538237 m!1420739))

(declare-fun m!1420741 () Bool)

(assert (=> b!1538239 m!1420741))

(assert (=> b!1538239 m!1420741))

(declare-fun m!1420743 () Bool)

(assert (=> b!1538239 m!1420743))

(declare-fun m!1420745 () Bool)

(assert (=> b!1538236 m!1420745))

(declare-fun m!1420747 () Bool)

(assert (=> b!1538241 m!1420747))

(push 1)

(assert (not b!1538242))

(assert (not b!1538237))

(assert (not b!1538236))

(assert (not start!131170))

(assert (not b!1538238))

(assert (not b!1538240))

(assert (not b!1538239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

