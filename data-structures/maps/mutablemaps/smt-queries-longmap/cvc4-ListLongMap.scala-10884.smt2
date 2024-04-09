; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127616 () Bool)

(assert start!127616)

(declare-fun b!1498653 () Bool)

(declare-fun res!1019806 () Bool)

(declare-fun e!839102 () Bool)

(assert (=> b!1498653 (=> (not res!1019806) (not e!839102))))

(declare-datatypes ((array!99910 0))(
  ( (array!99911 (arr!48210 (Array (_ BitVec 32) (_ BitVec 64))) (size!48761 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99910)

(declare-datatypes ((List!34882 0))(
  ( (Nil!34879) (Cons!34878 (h!36276 (_ BitVec 64)) (t!49583 List!34882)) )
))
(declare-fun arrayNoDuplicates!0 (array!99910 (_ BitVec 32) List!34882) Bool)

(assert (=> b!1498653 (= res!1019806 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34879))))

(declare-fun b!1498654 () Bool)

(declare-fun res!1019808 () Bool)

(assert (=> b!1498654 (=> (not res!1019808) (not e!839102))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498654 (= res!1019808 (validKeyInArray!0 (select (arr!48210 a!2850) i!996)))))

(declare-fun b!1498655 () Bool)

(declare-fun res!1019801 () Bool)

(assert (=> b!1498655 (=> (not res!1019801) (not e!839102))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498655 (= res!1019801 (and (= (size!48761 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48761 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48761 a!2850)) (not (= i!996 j!87))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun b!1498656 () Bool)

(assert (=> b!1498656 (= e!839102 (and (= (select (arr!48210 a!2850) index!625) (select (arr!48210 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498657 () Bool)

(declare-fun res!1019802 () Bool)

(assert (=> b!1498657 (=> (not res!1019802) (not e!839102))))

(assert (=> b!1498657 (= res!1019802 (validKeyInArray!0 (select (arr!48210 a!2850) j!87)))))

(declare-fun res!1019805 () Bool)

(assert (=> start!127616 (=> (not res!1019805) (not e!839102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127616 (= res!1019805 (validMask!0 mask!2661))))

(assert (=> start!127616 e!839102))

(assert (=> start!127616 true))

(declare-fun array_inv!37155 (array!99910) Bool)

(assert (=> start!127616 (array_inv!37155 a!2850)))

(declare-fun b!1498658 () Bool)

(declare-fun res!1019804 () Bool)

(assert (=> b!1498658 (=> (not res!1019804) (not e!839102))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498658 (= res!1019804 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48761 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48761 a!2850)) (= (select (arr!48210 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48210 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48761 a!2850))))))

(declare-fun b!1498659 () Bool)

(declare-fun res!1019803 () Bool)

(assert (=> b!1498659 (=> (not res!1019803) (not e!839102))))

(declare-datatypes ((SeekEntryResult!12439 0))(
  ( (MissingZero!12439 (index!52147 (_ BitVec 32))) (Found!12439 (index!52148 (_ BitVec 32))) (Intermediate!12439 (undefined!13251 Bool) (index!52149 (_ BitVec 32)) (x!133854 (_ BitVec 32))) (Undefined!12439) (MissingVacant!12439 (index!52150 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99910 (_ BitVec 32)) SeekEntryResult!12439)

(assert (=> b!1498659 (= res!1019803 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48210 a!2850) j!87) a!2850 mask!2661) (Found!12439 j!87)))))

(declare-fun b!1498660 () Bool)

(declare-fun res!1019807 () Bool)

(assert (=> b!1498660 (=> (not res!1019807) (not e!839102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99910 (_ BitVec 32)) Bool)

(assert (=> b!1498660 (= res!1019807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127616 res!1019805) b!1498655))

(assert (= (and b!1498655 res!1019801) b!1498654))

(assert (= (and b!1498654 res!1019808) b!1498657))

(assert (= (and b!1498657 res!1019802) b!1498660))

(assert (= (and b!1498660 res!1019807) b!1498653))

(assert (= (and b!1498653 res!1019806) b!1498658))

(assert (= (and b!1498658 res!1019804) b!1498659))

(assert (= (and b!1498659 res!1019803) b!1498656))

(declare-fun m!1381843 () Bool)

(assert (=> b!1498653 m!1381843))

(declare-fun m!1381845 () Bool)

(assert (=> b!1498657 m!1381845))

(assert (=> b!1498657 m!1381845))

(declare-fun m!1381847 () Bool)

(assert (=> b!1498657 m!1381847))

(declare-fun m!1381849 () Bool)

(assert (=> b!1498660 m!1381849))

(declare-fun m!1381851 () Bool)

(assert (=> b!1498658 m!1381851))

(declare-fun m!1381853 () Bool)

(assert (=> b!1498658 m!1381853))

(declare-fun m!1381855 () Bool)

(assert (=> b!1498658 m!1381855))

(declare-fun m!1381857 () Bool)

(assert (=> b!1498656 m!1381857))

(assert (=> b!1498656 m!1381845))

(declare-fun m!1381859 () Bool)

(assert (=> start!127616 m!1381859))

(declare-fun m!1381861 () Bool)

(assert (=> start!127616 m!1381861))

(assert (=> b!1498659 m!1381845))

(assert (=> b!1498659 m!1381845))

(declare-fun m!1381863 () Bool)

(assert (=> b!1498659 m!1381863))

(declare-fun m!1381865 () Bool)

(assert (=> b!1498654 m!1381865))

(assert (=> b!1498654 m!1381865))

(declare-fun m!1381867 () Bool)

(assert (=> b!1498654 m!1381867))

(push 1)

(assert (not b!1498657))

(assert (not b!1498653))

(assert (not start!127616))

(assert (not b!1498660))

(assert (not b!1498659))

(assert (not b!1498654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

