; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131326 () Bool)

(assert start!131326)

(declare-fun b!1539476 () Bool)

(declare-fun e!856327 () Bool)

(assert (=> b!1539476 (= e!856327 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun lt!665029 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539476 (= lt!665029 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539477 () Bool)

(declare-fun res!1056417 () Bool)

(assert (=> b!1539477 (=> (not res!1056417) (not e!856327))))

(declare-datatypes ((array!102240 0))(
  ( (array!102241 (arr!49327 (Array (_ BitVec 32) (_ BitVec 64))) (size!49878 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102240)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539477 (= res!1056417 (validKeyInArray!0 (select (arr!49327 a!2792) i!951)))))

(declare-fun res!1056420 () Bool)

(assert (=> start!131326 (=> (not res!1056420) (not e!856327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131326 (= res!1056420 (validMask!0 mask!2480))))

(assert (=> start!131326 e!856327))

(assert (=> start!131326 true))

(declare-fun array_inv!38272 (array!102240) Bool)

(assert (=> start!131326 (array_inv!38272 a!2792)))

(declare-fun b!1539478 () Bool)

(declare-fun res!1056414 () Bool)

(assert (=> b!1539478 (=> (not res!1056414) (not e!856327))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1539478 (= res!1056414 (not (= (select (arr!49327 a!2792) index!463) (select (arr!49327 a!2792) j!64))))))

(declare-fun b!1539479 () Bool)

(declare-fun res!1056415 () Bool)

(assert (=> b!1539479 (=> (not res!1056415) (not e!856327))))

(assert (=> b!1539479 (= res!1056415 (validKeyInArray!0 (select (arr!49327 a!2792) j!64)))))

(declare-fun b!1539480 () Bool)

(declare-fun res!1056413 () Bool)

(assert (=> b!1539480 (=> (not res!1056413) (not e!856327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102240 (_ BitVec 32)) Bool)

(assert (=> b!1539480 (= res!1056413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539481 () Bool)

(declare-fun res!1056419 () Bool)

(assert (=> b!1539481 (=> (not res!1056419) (not e!856327))))

(assert (=> b!1539481 (= res!1056419 (and (= (size!49878 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49878 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49878 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539482 () Bool)

(declare-fun res!1056418 () Bool)

(assert (=> b!1539482 (=> (not res!1056418) (not e!856327))))

(declare-datatypes ((List!35981 0))(
  ( (Nil!35978) (Cons!35977 (h!37423 (_ BitVec 64)) (t!50682 List!35981)) )
))
(declare-fun arrayNoDuplicates!0 (array!102240 (_ BitVec 32) List!35981) Bool)

(assert (=> b!1539482 (= res!1056418 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35978))))

(declare-fun b!1539483 () Bool)

(declare-fun res!1056412 () Bool)

(assert (=> b!1539483 (=> (not res!1056412) (not e!856327))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13476 0))(
  ( (MissingZero!13476 (index!56298 (_ BitVec 32))) (Found!13476 (index!56299 (_ BitVec 32))) (Intermediate!13476 (undefined!14288 Bool) (index!56300 (_ BitVec 32)) (x!138040 (_ BitVec 32))) (Undefined!13476) (MissingVacant!13476 (index!56301 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102240 (_ BitVec 32)) SeekEntryResult!13476)

(assert (=> b!1539483 (= res!1056412 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49327 a!2792) j!64) a!2792 mask!2480) (Found!13476 j!64)))))

(declare-fun b!1539484 () Bool)

(declare-fun res!1056416 () Bool)

(assert (=> b!1539484 (=> (not res!1056416) (not e!856327))))

(assert (=> b!1539484 (= res!1056416 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49878 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49878 a!2792)) (= (select (arr!49327 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!131326 res!1056420) b!1539481))

(assert (= (and b!1539481 res!1056419) b!1539477))

(assert (= (and b!1539477 res!1056417) b!1539479))

(assert (= (and b!1539479 res!1056415) b!1539480))

(assert (= (and b!1539480 res!1056413) b!1539482))

(assert (= (and b!1539482 res!1056418) b!1539484))

(assert (= (and b!1539484 res!1056416) b!1539483))

(assert (= (and b!1539483 res!1056412) b!1539478))

(assert (= (and b!1539478 res!1056414) b!1539476))

(declare-fun m!1421733 () Bool)

(assert (=> b!1539483 m!1421733))

(assert (=> b!1539483 m!1421733))

(declare-fun m!1421735 () Bool)

(assert (=> b!1539483 m!1421735))

(declare-fun m!1421737 () Bool)

(assert (=> b!1539480 m!1421737))

(declare-fun m!1421739 () Bool)

(assert (=> b!1539477 m!1421739))

(assert (=> b!1539477 m!1421739))

(declare-fun m!1421741 () Bool)

(assert (=> b!1539477 m!1421741))

(assert (=> b!1539479 m!1421733))

(assert (=> b!1539479 m!1421733))

(declare-fun m!1421743 () Bool)

(assert (=> b!1539479 m!1421743))

(declare-fun m!1421745 () Bool)

(assert (=> b!1539484 m!1421745))

(declare-fun m!1421747 () Bool)

(assert (=> start!131326 m!1421747))

(declare-fun m!1421749 () Bool)

(assert (=> start!131326 m!1421749))

(declare-fun m!1421751 () Bool)

(assert (=> b!1539476 m!1421751))

(declare-fun m!1421753 () Bool)

(assert (=> b!1539482 m!1421753))

(declare-fun m!1421755 () Bool)

(assert (=> b!1539478 m!1421755))

(assert (=> b!1539478 m!1421733))

(push 1)

(assert (not start!131326))

(assert (not b!1539483))

(assert (not b!1539482))

(assert (not b!1539480))

(assert (not b!1539479))

(assert (not b!1539477))

(assert (not b!1539476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

