; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128412 () Bool)

(assert start!128412)

(declare-fun b!1505844 () Bool)

(declare-fun res!1026309 () Bool)

(declare-fun e!841676 () Bool)

(assert (=> b!1505844 (=> (not res!1026309) (not e!841676))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100397 0))(
  ( (array!100398 (arr!48440 (Array (_ BitVec 32) (_ BitVec 64))) (size!48991 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100397)

(assert (=> b!1505844 (= res!1026309 (and (= (size!48991 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48991 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48991 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505845 () Bool)

(declare-fun res!1026307 () Bool)

(assert (=> b!1505845 (=> (not res!1026307) (not e!841676))))

(declare-datatypes ((List!35103 0))(
  ( (Nil!35100) (Cons!35099 (h!36497 (_ BitVec 64)) (t!49804 List!35103)) )
))
(declare-fun arrayNoDuplicates!0 (array!100397 (_ BitVec 32) List!35103) Bool)

(assert (=> b!1505845 (= res!1026307 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35100))))

(declare-fun b!1505846 () Bool)

(declare-fun res!1026308 () Bool)

(assert (=> b!1505846 (=> (not res!1026308) (not e!841676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100397 (_ BitVec 32)) Bool)

(assert (=> b!1505846 (= res!1026308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1026311 () Bool)

(assert (=> start!128412 (=> (not res!1026311) (not e!841676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128412 (= res!1026311 (validMask!0 mask!2512))))

(assert (=> start!128412 e!841676))

(assert (=> start!128412 true))

(declare-fun array_inv!37385 (array!100397) Bool)

(assert (=> start!128412 (array_inv!37385 a!2804)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1505843 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1505843 (= e!841676 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48991 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48991 a!2804)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(declare-fun b!1505847 () Bool)

(declare-fun res!1026312 () Bool)

(assert (=> b!1505847 (=> (not res!1026312) (not e!841676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505847 (= res!1026312 (validKeyInArray!0 (select (arr!48440 a!2804) j!70)))))

(declare-fun b!1505848 () Bool)

(declare-fun res!1026310 () Bool)

(assert (=> b!1505848 (=> (not res!1026310) (not e!841676))))

(assert (=> b!1505848 (= res!1026310 (validKeyInArray!0 (select (arr!48440 a!2804) i!961)))))

(assert (= (and start!128412 res!1026311) b!1505844))

(assert (= (and b!1505844 res!1026309) b!1505848))

(assert (= (and b!1505848 res!1026310) b!1505847))

(assert (= (and b!1505847 res!1026312) b!1505846))

(assert (= (and b!1505846 res!1026308) b!1505845))

(assert (= (and b!1505845 res!1026307) b!1505843))

(declare-fun m!1388965 () Bool)

(assert (=> b!1505845 m!1388965))

(declare-fun m!1388967 () Bool)

(assert (=> b!1505847 m!1388967))

(assert (=> b!1505847 m!1388967))

(declare-fun m!1388969 () Bool)

(assert (=> b!1505847 m!1388969))

(declare-fun m!1388971 () Bool)

(assert (=> b!1505848 m!1388971))

(assert (=> b!1505848 m!1388971))

(declare-fun m!1388973 () Bool)

(assert (=> b!1505848 m!1388973))

(declare-fun m!1388975 () Bool)

(assert (=> start!128412 m!1388975))

(declare-fun m!1388977 () Bool)

(assert (=> start!128412 m!1388977))

(declare-fun m!1388979 () Bool)

(assert (=> b!1505846 m!1388979))

(check-sat (not start!128412) (not b!1505846) (not b!1505847) (not b!1505845) (not b!1505848))
(check-sat)
