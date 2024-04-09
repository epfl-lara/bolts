; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127646 () Bool)

(assert start!127646)

(declare-fun b!1498996 () Bool)

(declare-fun res!1020145 () Bool)

(declare-fun e!839191 () Bool)

(assert (=> b!1498996 (=> (not res!1020145) (not e!839191))))

(declare-datatypes ((array!99940 0))(
  ( (array!99941 (arr!48225 (Array (_ BitVec 32) (_ BitVec 64))) (size!48776 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99940)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498996 (= res!1020145 (validKeyInArray!0 (select (arr!48225 a!2850) j!87)))))

(declare-fun res!1020146 () Bool)

(assert (=> start!127646 (=> (not res!1020146) (not e!839191))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127646 (= res!1020146 (validMask!0 mask!2661))))

(assert (=> start!127646 e!839191))

(assert (=> start!127646 true))

(declare-fun array_inv!37170 (array!99940) Bool)

(assert (=> start!127646 (array_inv!37170 a!2850)))

(declare-fun b!1498997 () Bool)

(declare-fun res!1020148 () Bool)

(assert (=> b!1498997 (=> (not res!1020148) (not e!839191))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498997 (= res!1020148 (validKeyInArray!0 (select (arr!48225 a!2850) i!996)))))

(declare-fun b!1498998 () Bool)

(declare-fun res!1020144 () Bool)

(assert (=> b!1498998 (=> (not res!1020144) (not e!839191))))

(assert (=> b!1498998 (= res!1020144 (and (= (size!48776 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48776 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48776 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498999 () Bool)

(declare-fun res!1020147 () Bool)

(assert (=> b!1498999 (=> (not res!1020147) (not e!839191))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498999 (= res!1020147 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48776 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48776 a!2850)) (= (select (arr!48225 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48225 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48776 a!2850))))))

(declare-fun b!1499000 () Bool)

(assert (=> b!1499000 (= e!839191 false)))

(declare-datatypes ((SeekEntryResult!12454 0))(
  ( (MissingZero!12454 (index!52207 (_ BitVec 32))) (Found!12454 (index!52208 (_ BitVec 32))) (Intermediate!12454 (undefined!13266 Bool) (index!52209 (_ BitVec 32)) (x!133909 (_ BitVec 32))) (Undefined!12454) (MissingVacant!12454 (index!52210 (_ BitVec 32))) )
))
(declare-fun lt!652651 () SeekEntryResult!12454)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99940 (_ BitVec 32)) SeekEntryResult!12454)

(assert (=> b!1499000 (= lt!652651 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48225 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499001 () Bool)

(declare-fun res!1020150 () Bool)

(assert (=> b!1499001 (=> (not res!1020150) (not e!839191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99940 (_ BitVec 32)) Bool)

(assert (=> b!1499001 (= res!1020150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499002 () Bool)

(declare-fun res!1020149 () Bool)

(assert (=> b!1499002 (=> (not res!1020149) (not e!839191))))

(declare-datatypes ((List!34897 0))(
  ( (Nil!34894) (Cons!34893 (h!36291 (_ BitVec 64)) (t!49598 List!34897)) )
))
(declare-fun arrayNoDuplicates!0 (array!99940 (_ BitVec 32) List!34897) Bool)

(assert (=> b!1499002 (= res!1020149 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34894))))

(assert (= (and start!127646 res!1020146) b!1498998))

(assert (= (and b!1498998 res!1020144) b!1498997))

(assert (= (and b!1498997 res!1020148) b!1498996))

(assert (= (and b!1498996 res!1020145) b!1499001))

(assert (= (and b!1499001 res!1020150) b!1499002))

(assert (= (and b!1499002 res!1020149) b!1498999))

(assert (= (and b!1498999 res!1020147) b!1499000))

(declare-fun m!1382229 () Bool)

(assert (=> b!1499002 m!1382229))

(declare-fun m!1382231 () Bool)

(assert (=> b!1498996 m!1382231))

(assert (=> b!1498996 m!1382231))

(declare-fun m!1382233 () Bool)

(assert (=> b!1498996 m!1382233))

(declare-fun m!1382235 () Bool)

(assert (=> b!1498997 m!1382235))

(assert (=> b!1498997 m!1382235))

(declare-fun m!1382237 () Bool)

(assert (=> b!1498997 m!1382237))

(declare-fun m!1382239 () Bool)

(assert (=> b!1499001 m!1382239))

(declare-fun m!1382241 () Bool)

(assert (=> b!1498999 m!1382241))

(declare-fun m!1382243 () Bool)

(assert (=> b!1498999 m!1382243))

(declare-fun m!1382245 () Bool)

(assert (=> b!1498999 m!1382245))

(assert (=> b!1499000 m!1382231))

(assert (=> b!1499000 m!1382231))

(declare-fun m!1382247 () Bool)

(assert (=> b!1499000 m!1382247))

(declare-fun m!1382249 () Bool)

(assert (=> start!127646 m!1382249))

(declare-fun m!1382251 () Bool)

(assert (=> start!127646 m!1382251))

(push 1)

(assert (not b!1498996))

(assert (not start!127646))

(assert (not b!1498997))

(assert (not b!1499000))

(assert (not b!1499002))

(assert (not b!1499001))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

