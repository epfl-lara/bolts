; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127632 () Bool)

(assert start!127632)

(declare-fun b!1498831 () Bool)

(declare-fun res!1019980 () Bool)

(declare-fun e!839149 () Bool)

(assert (=> b!1498831 (=> (not res!1019980) (not e!839149))))

(declare-datatypes ((array!99926 0))(
  ( (array!99927 (arr!48218 (Array (_ BitVec 32) (_ BitVec 64))) (size!48769 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99926)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498831 (= res!1019980 (validKeyInArray!0 (select (arr!48218 a!2850) j!87)))))

(declare-fun b!1498832 () Bool)

(declare-fun res!1019984 () Bool)

(assert (=> b!1498832 (=> (not res!1019984) (not e!839149))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498832 (= res!1019984 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48769 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48769 a!2850)) (= (select (arr!48218 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48218 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48769 a!2850))))))

(declare-fun b!1498833 () Bool)

(declare-fun res!1019979 () Bool)

(assert (=> b!1498833 (=> (not res!1019979) (not e!839149))))

(declare-datatypes ((List!34890 0))(
  ( (Nil!34887) (Cons!34886 (h!36284 (_ BitVec 64)) (t!49591 List!34890)) )
))
(declare-fun arrayNoDuplicates!0 (array!99926 (_ BitVec 32) List!34890) Bool)

(assert (=> b!1498833 (= res!1019979 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34887))))

(declare-fun b!1498834 () Bool)

(assert (=> b!1498834 (= e!839149 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12447 0))(
  ( (MissingZero!12447 (index!52179 (_ BitVec 32))) (Found!12447 (index!52180 (_ BitVec 32))) (Intermediate!12447 (undefined!13259 Bool) (index!52181 (_ BitVec 32)) (x!133886 (_ BitVec 32))) (Undefined!12447) (MissingVacant!12447 (index!52182 (_ BitVec 32))) )
))
(declare-fun lt!652639 () SeekEntryResult!12447)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99926 (_ BitVec 32)) SeekEntryResult!12447)

(assert (=> b!1498834 (= lt!652639 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48218 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498835 () Bool)

(declare-fun res!1019985 () Bool)

(assert (=> b!1498835 (=> (not res!1019985) (not e!839149))))

(assert (=> b!1498835 (= res!1019985 (and (= (size!48769 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48769 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48769 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498836 () Bool)

(declare-fun res!1019982 () Bool)

(assert (=> b!1498836 (=> (not res!1019982) (not e!839149))))

(assert (=> b!1498836 (= res!1019982 (validKeyInArray!0 (select (arr!48218 a!2850) i!996)))))

(declare-fun res!1019981 () Bool)

(assert (=> start!127632 (=> (not res!1019981) (not e!839149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127632 (= res!1019981 (validMask!0 mask!2661))))

(assert (=> start!127632 e!839149))

(assert (=> start!127632 true))

(declare-fun array_inv!37163 (array!99926) Bool)

(assert (=> start!127632 (array_inv!37163 a!2850)))

(declare-fun b!1498837 () Bool)

(declare-fun res!1019983 () Bool)

(assert (=> b!1498837 (=> (not res!1019983) (not e!839149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99926 (_ BitVec 32)) Bool)

(assert (=> b!1498837 (= res!1019983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127632 res!1019981) b!1498835))

(assert (= (and b!1498835 res!1019985) b!1498836))

(assert (= (and b!1498836 res!1019982) b!1498831))

(assert (= (and b!1498831 res!1019980) b!1498837))

(assert (= (and b!1498837 res!1019983) b!1498833))

(assert (= (and b!1498833 res!1019979) b!1498832))

(assert (= (and b!1498832 res!1019984) b!1498834))

(declare-fun m!1382043 () Bool)

(assert (=> b!1498831 m!1382043))

(assert (=> b!1498831 m!1382043))

(declare-fun m!1382045 () Bool)

(assert (=> b!1498831 m!1382045))

(assert (=> b!1498834 m!1382043))

(assert (=> b!1498834 m!1382043))

(declare-fun m!1382047 () Bool)

(assert (=> b!1498834 m!1382047))

(declare-fun m!1382049 () Bool)

(assert (=> b!1498833 m!1382049))

(declare-fun m!1382051 () Bool)

(assert (=> b!1498837 m!1382051))

(declare-fun m!1382053 () Bool)

(assert (=> b!1498832 m!1382053))

(declare-fun m!1382055 () Bool)

(assert (=> b!1498832 m!1382055))

(declare-fun m!1382057 () Bool)

(assert (=> b!1498832 m!1382057))

(declare-fun m!1382059 () Bool)

(assert (=> b!1498836 m!1382059))

(assert (=> b!1498836 m!1382059))

(declare-fun m!1382061 () Bool)

(assert (=> b!1498836 m!1382061))

(declare-fun m!1382063 () Bool)

(assert (=> start!127632 m!1382063))

(declare-fun m!1382065 () Bool)

(assert (=> start!127632 m!1382065))

(check-sat (not b!1498831) (not start!127632) (not b!1498837) (not b!1498833) (not b!1498834) (not b!1498836))
