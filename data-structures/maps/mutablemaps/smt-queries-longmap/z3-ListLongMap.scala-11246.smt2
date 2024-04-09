; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131178 () Bool)

(assert start!131178)

(declare-fun b!1538342 () Bool)

(declare-fun res!1055460 () Bool)

(declare-fun e!855955 () Bool)

(assert (=> b!1538342 (=> (not res!1055460) (not e!855955))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102170 0))(
  ( (array!102171 (arr!49295 (Array (_ BitVec 32) (_ BitVec 64))) (size!49846 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102170)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13444 0))(
  ( (MissingZero!13444 (index!56170 (_ BitVec 32))) (Found!13444 (index!56171 (_ BitVec 32))) (Intermediate!13444 (undefined!14256 Bool) (index!56172 (_ BitVec 32)) (x!137908 (_ BitVec 32))) (Undefined!13444) (MissingVacant!13444 (index!56173 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102170 (_ BitVec 32)) SeekEntryResult!13444)

(assert (=> b!1538342 (= res!1055460 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49295 a!2792) j!64) a!2792 mask!2480) (Found!13444 j!64)))))

(declare-fun b!1538343 () Bool)

(declare-fun res!1055466 () Bool)

(assert (=> b!1538343 (=> (not res!1055466) (not e!855955))))

(assert (=> b!1538343 (= res!1055466 (not (= (select (arr!49295 a!2792) index!463) (select (arr!49295 a!2792) j!64))))))

(declare-fun b!1538344 () Bool)

(declare-fun res!1055461 () Bool)

(assert (=> b!1538344 (=> (not res!1055461) (not e!855955))))

(declare-datatypes ((List!35949 0))(
  ( (Nil!35946) (Cons!35945 (h!37391 (_ BitVec 64)) (t!50650 List!35949)) )
))
(declare-fun arrayNoDuplicates!0 (array!102170 (_ BitVec 32) List!35949) Bool)

(assert (=> b!1538344 (= res!1055461 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35946))))

(declare-fun b!1538345 () Bool)

(declare-fun res!1055463 () Bool)

(assert (=> b!1538345 (=> (not res!1055463) (not e!855955))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538345 (= res!1055463 (validKeyInArray!0 (select (arr!49295 a!2792) j!64)))))

(declare-fun b!1538346 () Bool)

(declare-fun res!1055458 () Bool)

(assert (=> b!1538346 (=> (not res!1055458) (not e!855955))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538346 (= res!1055458 (validKeyInArray!0 (select (arr!49295 a!2792) i!951)))))

(declare-fun b!1538347 () Bool)

(assert (=> b!1538347 (= e!855955 false)))

(declare-fun lt!664825 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538347 (= lt!664825 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538348 () Bool)

(declare-fun res!1055464 () Bool)

(assert (=> b!1538348 (=> (not res!1055464) (not e!855955))))

(assert (=> b!1538348 (= res!1055464 (and (= (size!49846 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49846 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49846 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538349 () Bool)

(declare-fun res!1055462 () Bool)

(assert (=> b!1538349 (=> (not res!1055462) (not e!855955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102170 (_ BitVec 32)) Bool)

(assert (=> b!1538349 (= res!1055462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1055459 () Bool)

(assert (=> start!131178 (=> (not res!1055459) (not e!855955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131178 (= res!1055459 (validMask!0 mask!2480))))

(assert (=> start!131178 e!855955))

(assert (=> start!131178 true))

(declare-fun array_inv!38240 (array!102170) Bool)

(assert (=> start!131178 (array_inv!38240 a!2792)))

(declare-fun b!1538350 () Bool)

(declare-fun res!1055465 () Bool)

(assert (=> b!1538350 (=> (not res!1055465) (not e!855955))))

(assert (=> b!1538350 (= res!1055465 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49846 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49846 a!2792)) (= (select (arr!49295 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!131178 res!1055459) b!1538348))

(assert (= (and b!1538348 res!1055464) b!1538346))

(assert (= (and b!1538346 res!1055458) b!1538345))

(assert (= (and b!1538345 res!1055463) b!1538349))

(assert (= (and b!1538349 res!1055462) b!1538344))

(assert (= (and b!1538344 res!1055461) b!1538350))

(assert (= (and b!1538350 res!1055465) b!1538342))

(assert (= (and b!1538342 res!1055460) b!1538343))

(assert (= (and b!1538343 res!1055466) b!1538347))

(declare-fun m!1420821 () Bool)

(assert (=> b!1538346 m!1420821))

(assert (=> b!1538346 m!1420821))

(declare-fun m!1420823 () Bool)

(assert (=> b!1538346 m!1420823))

(declare-fun m!1420825 () Bool)

(assert (=> b!1538344 m!1420825))

(declare-fun m!1420827 () Bool)

(assert (=> b!1538350 m!1420827))

(declare-fun m!1420829 () Bool)

(assert (=> start!131178 m!1420829))

(declare-fun m!1420831 () Bool)

(assert (=> start!131178 m!1420831))

(declare-fun m!1420833 () Bool)

(assert (=> b!1538343 m!1420833))

(declare-fun m!1420835 () Bool)

(assert (=> b!1538343 m!1420835))

(declare-fun m!1420837 () Bool)

(assert (=> b!1538347 m!1420837))

(assert (=> b!1538342 m!1420835))

(assert (=> b!1538342 m!1420835))

(declare-fun m!1420839 () Bool)

(assert (=> b!1538342 m!1420839))

(declare-fun m!1420841 () Bool)

(assert (=> b!1538349 m!1420841))

(assert (=> b!1538345 m!1420835))

(assert (=> b!1538345 m!1420835))

(declare-fun m!1420843 () Bool)

(assert (=> b!1538345 m!1420843))

(check-sat (not b!1538346) (not b!1538347) (not b!1538349) (not b!1538344) (not b!1538342) (not b!1538345) (not start!131178))
