; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127992 () Bool)

(assert start!127992)

(declare-fun res!1023965 () Bool)

(declare-fun e!840535 () Bool)

(assert (=> start!127992 (=> (not res!1023965) (not e!840535))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127992 (= res!1023965 (validMask!0 mask!2661))))

(assert (=> start!127992 e!840535))

(assert (=> start!127992 true))

(declare-datatypes ((array!100220 0))(
  ( (array!100221 (arr!48362 (Array (_ BitVec 32) (_ BitVec 64))) (size!48913 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100220)

(declare-fun array_inv!37307 (array!100220) Bool)

(assert (=> start!127992 (array_inv!37307 a!2850)))

(declare-fun b!1503008 () Bool)

(declare-fun res!1023964 () Bool)

(assert (=> b!1503008 (=> (not res!1023964) (not e!840535))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503008 (= res!1023964 (validKeyInArray!0 (select (arr!48362 a!2850) i!996)))))

(declare-fun b!1503009 () Bool)

(declare-fun res!1023960 () Bool)

(assert (=> b!1503009 (=> (not res!1023960) (not e!840535))))

(declare-datatypes ((List!35034 0))(
  ( (Nil!35031) (Cons!35030 (h!36428 (_ BitVec 64)) (t!49735 List!35034)) )
))
(declare-fun arrayNoDuplicates!0 (array!100220 (_ BitVec 32) List!35034) Bool)

(assert (=> b!1503009 (= res!1023960 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35031))))

(declare-fun b!1503010 () Bool)

(declare-fun res!1023961 () Bool)

(assert (=> b!1503010 (=> (not res!1023961) (not e!840535))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503010 (= res!1023961 (validKeyInArray!0 (select (arr!48362 a!2850) j!87)))))

(declare-fun b!1503011 () Bool)

(assert (=> b!1503011 (= e!840535 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653446 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503011 (= lt!653446 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503012 () Bool)

(declare-fun res!1023966 () Bool)

(assert (=> b!1503012 (=> (not res!1023966) (not e!840535))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503012 (= res!1023966 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48913 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48913 a!2850)) (= (select (arr!48362 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48362 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48913 a!2850))))))

(declare-fun b!1503013 () Bool)

(declare-fun res!1023958 () Bool)

(assert (=> b!1503013 (=> (not res!1023958) (not e!840535))))

(declare-datatypes ((SeekEntryResult!12579 0))(
  ( (MissingZero!12579 (index!52707 (_ BitVec 32))) (Found!12579 (index!52708 (_ BitVec 32))) (Intermediate!12579 (undefined!13391 Bool) (index!52709 (_ BitVec 32)) (x!134408 (_ BitVec 32))) (Undefined!12579) (MissingVacant!12579 (index!52710 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100220 (_ BitVec 32)) SeekEntryResult!12579)

(assert (=> b!1503013 (= res!1023958 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48362 a!2850) j!87) a!2850 mask!2661) (Found!12579 j!87)))))

(declare-fun b!1503014 () Bool)

(declare-fun res!1023963 () Bool)

(assert (=> b!1503014 (=> (not res!1023963) (not e!840535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100220 (_ BitVec 32)) Bool)

(assert (=> b!1503014 (= res!1023963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503015 () Bool)

(declare-fun res!1023959 () Bool)

(assert (=> b!1503015 (=> (not res!1023959) (not e!840535))))

(assert (=> b!1503015 (= res!1023959 (and (= (size!48913 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48913 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48913 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503016 () Bool)

(declare-fun res!1023962 () Bool)

(assert (=> b!1503016 (=> (not res!1023962) (not e!840535))))

(assert (=> b!1503016 (= res!1023962 (not (= (select (arr!48362 a!2850) index!625) (select (arr!48362 a!2850) j!87))))))

(assert (= (and start!127992 res!1023965) b!1503015))

(assert (= (and b!1503015 res!1023959) b!1503008))

(assert (= (and b!1503008 res!1023964) b!1503010))

(assert (= (and b!1503010 res!1023961) b!1503014))

(assert (= (and b!1503014 res!1023963) b!1503009))

(assert (= (and b!1503009 res!1023960) b!1503012))

(assert (= (and b!1503012 res!1023966) b!1503013))

(assert (= (and b!1503013 res!1023958) b!1503016))

(assert (= (and b!1503016 res!1023962) b!1503011))

(declare-fun m!1386301 () Bool)

(assert (=> b!1503009 m!1386301))

(declare-fun m!1386303 () Bool)

(assert (=> b!1503016 m!1386303))

(declare-fun m!1386305 () Bool)

(assert (=> b!1503016 m!1386305))

(declare-fun m!1386307 () Bool)

(assert (=> start!127992 m!1386307))

(declare-fun m!1386309 () Bool)

(assert (=> start!127992 m!1386309))

(declare-fun m!1386311 () Bool)

(assert (=> b!1503008 m!1386311))

(assert (=> b!1503008 m!1386311))

(declare-fun m!1386313 () Bool)

(assert (=> b!1503008 m!1386313))

(declare-fun m!1386315 () Bool)

(assert (=> b!1503014 m!1386315))

(declare-fun m!1386317 () Bool)

(assert (=> b!1503012 m!1386317))

(declare-fun m!1386319 () Bool)

(assert (=> b!1503012 m!1386319))

(declare-fun m!1386321 () Bool)

(assert (=> b!1503012 m!1386321))

(assert (=> b!1503013 m!1386305))

(assert (=> b!1503013 m!1386305))

(declare-fun m!1386323 () Bool)

(assert (=> b!1503013 m!1386323))

(assert (=> b!1503010 m!1386305))

(assert (=> b!1503010 m!1386305))

(declare-fun m!1386325 () Bool)

(assert (=> b!1503010 m!1386325))

(declare-fun m!1386327 () Bool)

(assert (=> b!1503011 m!1386327))

(check-sat (not b!1503014) (not b!1503013) (not b!1503010) (not b!1503008) (not start!127992) (not b!1503011) (not b!1503009))
