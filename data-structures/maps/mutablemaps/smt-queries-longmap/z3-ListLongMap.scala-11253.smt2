; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131220 () Bool)

(assert start!131220)

(declare-fun b!1538909 () Bool)

(declare-fun res!1056028 () Bool)

(declare-fun e!856082 () Bool)

(assert (=> b!1538909 (=> (not res!1056028) (not e!856082))))

(declare-datatypes ((array!102212 0))(
  ( (array!102213 (arr!49316 (Array (_ BitVec 32) (_ BitVec 64))) (size!49867 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102212)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538909 (= res!1056028 (validKeyInArray!0 (select (arr!49316 a!2792) i!951)))))

(declare-fun b!1538910 () Bool)

(declare-fun res!1056027 () Bool)

(assert (=> b!1538910 (=> (not res!1056027) (not e!856082))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102212 (_ BitVec 32)) Bool)

(assert (=> b!1538910 (= res!1056027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538911 () Bool)

(declare-fun res!1056025 () Bool)

(assert (=> b!1538911 (=> (not res!1056025) (not e!856082))))

(declare-datatypes ((List!35970 0))(
  ( (Nil!35967) (Cons!35966 (h!37412 (_ BitVec 64)) (t!50671 List!35970)) )
))
(declare-fun arrayNoDuplicates!0 (array!102212 (_ BitVec 32) List!35970) Bool)

(assert (=> b!1538911 (= res!1056025 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35967))))

(declare-fun b!1538912 () Bool)

(declare-fun res!1056031 () Bool)

(assert (=> b!1538912 (=> (not res!1056031) (not e!856082))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538912 (= res!1056031 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49867 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49867 a!2792)) (= (select (arr!49316 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538913 () Bool)

(declare-fun res!1056032 () Bool)

(assert (=> b!1538913 (=> (not res!1056032) (not e!856082))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1538913 (= res!1056032 (and (= (size!49867 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49867 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49867 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538914 () Bool)

(declare-fun res!1056033 () Bool)

(assert (=> b!1538914 (=> (not res!1056033) (not e!856082))))

(declare-datatypes ((SeekEntryResult!13465 0))(
  ( (MissingZero!13465 (index!56254 (_ BitVec 32))) (Found!13465 (index!56255 (_ BitVec 32))) (Intermediate!13465 (undefined!14277 Bool) (index!56256 (_ BitVec 32)) (x!137985 (_ BitVec 32))) (Undefined!13465) (MissingVacant!13465 (index!56257 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102212 (_ BitVec 32)) SeekEntryResult!13465)

(assert (=> b!1538914 (= res!1056033 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49316 a!2792) j!64) a!2792 mask!2480) (Found!13465 j!64)))))

(declare-fun res!1056029 () Bool)

(assert (=> start!131220 (=> (not res!1056029) (not e!856082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131220 (= res!1056029 (validMask!0 mask!2480))))

(assert (=> start!131220 e!856082))

(assert (=> start!131220 true))

(declare-fun array_inv!38261 (array!102212) Bool)

(assert (=> start!131220 (array_inv!38261 a!2792)))

(declare-fun b!1538915 () Bool)

(declare-fun res!1056026 () Bool)

(assert (=> b!1538915 (=> (not res!1056026) (not e!856082))))

(assert (=> b!1538915 (= res!1056026 (not (= (select (arr!49316 a!2792) index!463) (select (arr!49316 a!2792) j!64))))))

(declare-fun b!1538916 () Bool)

(declare-fun res!1056030 () Bool)

(assert (=> b!1538916 (=> (not res!1056030) (not e!856082))))

(assert (=> b!1538916 (= res!1056030 (validKeyInArray!0 (select (arr!49316 a!2792) j!64)))))

(declare-fun b!1538917 () Bool)

(assert (=> b!1538917 (= e!856082 false)))

(declare-fun lt!664888 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538917 (= lt!664888 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131220 res!1056029) b!1538913))

(assert (= (and b!1538913 res!1056032) b!1538909))

(assert (= (and b!1538909 res!1056028) b!1538916))

(assert (= (and b!1538916 res!1056030) b!1538910))

(assert (= (and b!1538910 res!1056027) b!1538911))

(assert (= (and b!1538911 res!1056025) b!1538912))

(assert (= (and b!1538912 res!1056031) b!1538914))

(assert (= (and b!1538914 res!1056033) b!1538915))

(assert (= (and b!1538915 res!1056026) b!1538917))

(declare-fun m!1421325 () Bool)

(assert (=> b!1538912 m!1421325))

(declare-fun m!1421327 () Bool)

(assert (=> b!1538910 m!1421327))

(declare-fun m!1421329 () Bool)

(assert (=> b!1538909 m!1421329))

(assert (=> b!1538909 m!1421329))

(declare-fun m!1421331 () Bool)

(assert (=> b!1538909 m!1421331))

(declare-fun m!1421333 () Bool)

(assert (=> start!131220 m!1421333))

(declare-fun m!1421335 () Bool)

(assert (=> start!131220 m!1421335))

(declare-fun m!1421337 () Bool)

(assert (=> b!1538915 m!1421337))

(declare-fun m!1421339 () Bool)

(assert (=> b!1538915 m!1421339))

(assert (=> b!1538914 m!1421339))

(assert (=> b!1538914 m!1421339))

(declare-fun m!1421341 () Bool)

(assert (=> b!1538914 m!1421341))

(declare-fun m!1421343 () Bool)

(assert (=> b!1538917 m!1421343))

(assert (=> b!1538916 m!1421339))

(assert (=> b!1538916 m!1421339))

(declare-fun m!1421345 () Bool)

(assert (=> b!1538916 m!1421345))

(declare-fun m!1421347 () Bool)

(assert (=> b!1538911 m!1421347))

(check-sat (not b!1538914) (not b!1538911) (not start!131220) (not b!1538917) (not b!1538916) (not b!1538910) (not b!1538909))
