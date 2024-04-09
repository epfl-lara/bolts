; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128754 () Bool)

(assert start!128754)

(declare-fun b!1508324 () Bool)

(declare-fun res!1028404 () Bool)

(declare-fun e!842689 () Bool)

(assert (=> b!1508324 (=> (not res!1028404) (not e!842689))))

(declare-datatypes ((array!100562 0))(
  ( (array!100563 (arr!48515 (Array (_ BitVec 32) (_ BitVec 64))) (size!49066 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100562)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508324 (= res!1028404 (validKeyInArray!0 (select (arr!48515 a!2804) i!961)))))

(declare-fun b!1508325 () Bool)

(declare-fun res!1028409 () Bool)

(assert (=> b!1508325 (=> (not res!1028409) (not e!842689))))

(declare-datatypes ((List!35178 0))(
  ( (Nil!35175) (Cons!35174 (h!36584 (_ BitVec 64)) (t!49879 List!35178)) )
))
(declare-fun arrayNoDuplicates!0 (array!100562 (_ BitVec 32) List!35178) Bool)

(assert (=> b!1508325 (= res!1028409 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35175))))

(declare-fun b!1508326 () Bool)

(declare-fun res!1028406 () Bool)

(assert (=> b!1508326 (=> (not res!1028406) (not e!842689))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100562 (_ BitVec 32)) Bool)

(assert (=> b!1508326 (= res!1028406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508327 () Bool)

(declare-fun res!1028408 () Bool)

(declare-fun e!842690 () Bool)

(assert (=> b!1508327 (=> (not res!1028408) (not e!842690))))

(declare-datatypes ((SeekEntryResult!12707 0))(
  ( (MissingZero!12707 (index!53222 (_ BitVec 32))) (Found!12707 (index!53223 (_ BitVec 32))) (Intermediate!12707 (undefined!13519 Bool) (index!53224 (_ BitVec 32)) (x!134992 (_ BitVec 32))) (Undefined!12707) (MissingVacant!12707 (index!53225 (_ BitVec 32))) )
))
(declare-fun lt!654577 () SeekEntryResult!12707)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100562 (_ BitVec 32)) SeekEntryResult!12707)

(assert (=> b!1508327 (= res!1028408 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48515 a!2804) j!70) a!2804 mask!2512) lt!654577))))

(declare-fun b!1508328 () Bool)

(assert (=> b!1508328 (= e!842689 e!842690)))

(declare-fun res!1028411 () Bool)

(assert (=> b!1508328 (=> (not res!1028411) (not e!842690))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508328 (= res!1028411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48515 a!2804) j!70) mask!2512) (select (arr!48515 a!2804) j!70) a!2804 mask!2512) lt!654577))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508328 (= lt!654577 (Intermediate!12707 false resIndex!21 resX!21))))

(declare-fun res!1028407 () Bool)

(assert (=> start!128754 (=> (not res!1028407) (not e!842689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128754 (= res!1028407 (validMask!0 mask!2512))))

(assert (=> start!128754 e!842689))

(assert (=> start!128754 true))

(declare-fun array_inv!37460 (array!100562) Bool)

(assert (=> start!128754 (array_inv!37460 a!2804)))

(declare-fun b!1508329 () Bool)

(declare-fun res!1028405 () Bool)

(assert (=> b!1508329 (=> (not res!1028405) (not e!842689))))

(assert (=> b!1508329 (= res!1028405 (and (= (size!49066 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49066 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49066 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508330 () Bool)

(declare-fun res!1028412 () Bool)

(assert (=> b!1508330 (=> (not res!1028412) (not e!842689))))

(assert (=> b!1508330 (= res!1028412 (validKeyInArray!0 (select (arr!48515 a!2804) j!70)))))

(declare-fun b!1508331 () Bool)

(declare-fun res!1028410 () Bool)

(assert (=> b!1508331 (=> (not res!1028410) (not e!842689))))

(assert (=> b!1508331 (= res!1028410 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49066 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49066 a!2804))))))

(declare-fun b!1508332 () Bool)

(assert (=> b!1508332 (= e!842690 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!654576 () (_ BitVec 32))

(assert (=> b!1508332 (= lt!654576 (toIndex!0 (select (store (arr!48515 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(assert (= (and start!128754 res!1028407) b!1508329))

(assert (= (and b!1508329 res!1028405) b!1508324))

(assert (= (and b!1508324 res!1028404) b!1508330))

(assert (= (and b!1508330 res!1028412) b!1508326))

(assert (= (and b!1508326 res!1028406) b!1508325))

(assert (= (and b!1508325 res!1028409) b!1508331))

(assert (= (and b!1508331 res!1028410) b!1508328))

(assert (= (and b!1508328 res!1028411) b!1508327))

(assert (= (and b!1508327 res!1028408) b!1508332))

(declare-fun m!1390885 () Bool)

(assert (=> start!128754 m!1390885))

(declare-fun m!1390887 () Bool)

(assert (=> start!128754 m!1390887))

(declare-fun m!1390889 () Bool)

(assert (=> b!1508330 m!1390889))

(assert (=> b!1508330 m!1390889))

(declare-fun m!1390891 () Bool)

(assert (=> b!1508330 m!1390891))

(declare-fun m!1390893 () Bool)

(assert (=> b!1508326 m!1390893))

(declare-fun m!1390895 () Bool)

(assert (=> b!1508324 m!1390895))

(assert (=> b!1508324 m!1390895))

(declare-fun m!1390897 () Bool)

(assert (=> b!1508324 m!1390897))

(declare-fun m!1390899 () Bool)

(assert (=> b!1508325 m!1390899))

(assert (=> b!1508328 m!1390889))

(assert (=> b!1508328 m!1390889))

(declare-fun m!1390901 () Bool)

(assert (=> b!1508328 m!1390901))

(assert (=> b!1508328 m!1390901))

(assert (=> b!1508328 m!1390889))

(declare-fun m!1390903 () Bool)

(assert (=> b!1508328 m!1390903))

(declare-fun m!1390905 () Bool)

(assert (=> b!1508332 m!1390905))

(declare-fun m!1390907 () Bool)

(assert (=> b!1508332 m!1390907))

(assert (=> b!1508332 m!1390907))

(declare-fun m!1390909 () Bool)

(assert (=> b!1508332 m!1390909))

(assert (=> b!1508327 m!1390889))

(assert (=> b!1508327 m!1390889))

(declare-fun m!1390911 () Bool)

(assert (=> b!1508327 m!1390911))

(check-sat (not b!1508330) (not b!1508324) (not start!128754) (not b!1508328) (not b!1508332) (not b!1508326) (not b!1508327) (not b!1508325))
(check-sat)
