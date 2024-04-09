; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127630 () Bool)

(assert start!127630)

(declare-fun b!1498810 () Bool)

(declare-fun res!1019962 () Bool)

(declare-fun e!839144 () Bool)

(assert (=> b!1498810 (=> (not res!1019962) (not e!839144))))

(declare-datatypes ((array!99924 0))(
  ( (array!99925 (arr!48217 (Array (_ BitVec 32) (_ BitVec 64))) (size!48768 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99924)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99924 (_ BitVec 32)) Bool)

(assert (=> b!1498810 (= res!1019962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498811 () Bool)

(declare-fun res!1019961 () Bool)

(assert (=> b!1498811 (=> (not res!1019961) (not e!839144))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498811 (= res!1019961 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48768 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48768 a!2850)) (= (select (arr!48217 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48217 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48768 a!2850))))))

(declare-fun b!1498812 () Bool)

(assert (=> b!1498812 (= e!839144 false)))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12446 0))(
  ( (MissingZero!12446 (index!52175 (_ BitVec 32))) (Found!12446 (index!52176 (_ BitVec 32))) (Intermediate!12446 (undefined!13258 Bool) (index!52177 (_ BitVec 32)) (x!133885 (_ BitVec 32))) (Undefined!12446) (MissingVacant!12446 (index!52178 (_ BitVec 32))) )
))
(declare-fun lt!652636 () SeekEntryResult!12446)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99924 (_ BitVec 32)) SeekEntryResult!12446)

(assert (=> b!1498812 (= lt!652636 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48217 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1019964 () Bool)

(assert (=> start!127630 (=> (not res!1019964) (not e!839144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127630 (= res!1019964 (validMask!0 mask!2661))))

(assert (=> start!127630 e!839144))

(assert (=> start!127630 true))

(declare-fun array_inv!37162 (array!99924) Bool)

(assert (=> start!127630 (array_inv!37162 a!2850)))

(declare-fun b!1498813 () Bool)

(declare-fun res!1019963 () Bool)

(assert (=> b!1498813 (=> (not res!1019963) (not e!839144))))

(assert (=> b!1498813 (= res!1019963 (and (= (size!48768 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48768 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48768 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498814 () Bool)

(declare-fun res!1019960 () Bool)

(assert (=> b!1498814 (=> (not res!1019960) (not e!839144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498814 (= res!1019960 (validKeyInArray!0 (select (arr!48217 a!2850) i!996)))))

(declare-fun b!1498815 () Bool)

(declare-fun res!1019958 () Bool)

(assert (=> b!1498815 (=> (not res!1019958) (not e!839144))))

(declare-datatypes ((List!34889 0))(
  ( (Nil!34886) (Cons!34885 (h!36283 (_ BitVec 64)) (t!49590 List!34889)) )
))
(declare-fun arrayNoDuplicates!0 (array!99924 (_ BitVec 32) List!34889) Bool)

(assert (=> b!1498815 (= res!1019958 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34886))))

(declare-fun b!1498816 () Bool)

(declare-fun res!1019959 () Bool)

(assert (=> b!1498816 (=> (not res!1019959) (not e!839144))))

(assert (=> b!1498816 (= res!1019959 (validKeyInArray!0 (select (arr!48217 a!2850) j!87)))))

(assert (= (and start!127630 res!1019964) b!1498813))

(assert (= (and b!1498813 res!1019963) b!1498814))

(assert (= (and b!1498814 res!1019960) b!1498816))

(assert (= (and b!1498816 res!1019959) b!1498810))

(assert (= (and b!1498810 res!1019962) b!1498815))

(assert (= (and b!1498815 res!1019958) b!1498811))

(assert (= (and b!1498811 res!1019961) b!1498812))

(declare-fun m!1382019 () Bool)

(assert (=> b!1498810 m!1382019))

(declare-fun m!1382021 () Bool)

(assert (=> start!127630 m!1382021))

(declare-fun m!1382023 () Bool)

(assert (=> start!127630 m!1382023))

(declare-fun m!1382025 () Bool)

(assert (=> b!1498815 m!1382025))

(declare-fun m!1382027 () Bool)

(assert (=> b!1498812 m!1382027))

(assert (=> b!1498812 m!1382027))

(declare-fun m!1382029 () Bool)

(assert (=> b!1498812 m!1382029))

(declare-fun m!1382031 () Bool)

(assert (=> b!1498814 m!1382031))

(assert (=> b!1498814 m!1382031))

(declare-fun m!1382033 () Bool)

(assert (=> b!1498814 m!1382033))

(assert (=> b!1498816 m!1382027))

(assert (=> b!1498816 m!1382027))

(declare-fun m!1382035 () Bool)

(assert (=> b!1498816 m!1382035))

(declare-fun m!1382037 () Bool)

(assert (=> b!1498811 m!1382037))

(declare-fun m!1382039 () Bool)

(assert (=> b!1498811 m!1382039))

(declare-fun m!1382041 () Bool)

(assert (=> b!1498811 m!1382041))

(push 1)

(assert (not b!1498812))

(assert (not b!1498814))

(assert (not start!127630))

(assert (not b!1498816))

(assert (not b!1498810))

(assert (not b!1498815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

