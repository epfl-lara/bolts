; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127988 () Bool)

(assert start!127988)

(declare-fun b!1502954 () Bool)

(declare-fun res!1023904 () Bool)

(declare-fun e!840523 () Bool)

(assert (=> b!1502954 (=> (not res!1023904) (not e!840523))))

(declare-datatypes ((array!100216 0))(
  ( (array!100217 (arr!48360 (Array (_ BitVec 32) (_ BitVec 64))) (size!48911 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100216)

(declare-datatypes ((List!35032 0))(
  ( (Nil!35029) (Cons!35028 (h!36426 (_ BitVec 64)) (t!49733 List!35032)) )
))
(declare-fun arrayNoDuplicates!0 (array!100216 (_ BitVec 32) List!35032) Bool)

(assert (=> b!1502954 (= res!1023904 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35029))))

(declare-fun b!1502955 () Bool)

(declare-fun res!1023910 () Bool)

(assert (=> b!1502955 (=> (not res!1023910) (not e!840523))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502955 (= res!1023910 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48911 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48911 a!2850)) (= (select (arr!48360 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48360 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48911 a!2850))))))

(declare-fun b!1502956 () Bool)

(declare-fun res!1023906 () Bool)

(assert (=> b!1502956 (=> (not res!1023906) (not e!840523))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100216 (_ BitVec 32)) Bool)

(assert (=> b!1502956 (= res!1023906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502958 () Bool)

(declare-fun res!1023912 () Bool)

(assert (=> b!1502958 (=> (not res!1023912) (not e!840523))))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12577 0))(
  ( (MissingZero!12577 (index!52699 (_ BitVec 32))) (Found!12577 (index!52700 (_ BitVec 32))) (Intermediate!12577 (undefined!13389 Bool) (index!52701 (_ BitVec 32)) (x!134398 (_ BitVec 32))) (Undefined!12577) (MissingVacant!12577 (index!52702 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100216 (_ BitVec 32)) SeekEntryResult!12577)

(assert (=> b!1502958 (= res!1023912 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48360 a!2850) j!87) a!2850 mask!2661) (Found!12577 j!87)))))

(declare-fun b!1502959 () Bool)

(declare-fun res!1023909 () Bool)

(assert (=> b!1502959 (=> (not res!1023909) (not e!840523))))

(assert (=> b!1502959 (= res!1023909 (not (= (select (arr!48360 a!2850) index!625) (select (arr!48360 a!2850) j!87))))))

(declare-fun b!1502960 () Bool)

(assert (=> b!1502960 (= e!840523 false)))

(declare-fun lt!653440 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502960 (= lt!653440 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502961 () Bool)

(declare-fun res!1023911 () Bool)

(assert (=> b!1502961 (=> (not res!1023911) (not e!840523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502961 (= res!1023911 (validKeyInArray!0 (select (arr!48360 a!2850) i!996)))))

(declare-fun b!1502962 () Bool)

(declare-fun res!1023907 () Bool)

(assert (=> b!1502962 (=> (not res!1023907) (not e!840523))))

(assert (=> b!1502962 (= res!1023907 (validKeyInArray!0 (select (arr!48360 a!2850) j!87)))))

(declare-fun b!1502957 () Bool)

(declare-fun res!1023905 () Bool)

(assert (=> b!1502957 (=> (not res!1023905) (not e!840523))))

(assert (=> b!1502957 (= res!1023905 (and (= (size!48911 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48911 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48911 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1023908 () Bool)

(assert (=> start!127988 (=> (not res!1023908) (not e!840523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127988 (= res!1023908 (validMask!0 mask!2661))))

(assert (=> start!127988 e!840523))

(assert (=> start!127988 true))

(declare-fun array_inv!37305 (array!100216) Bool)

(assert (=> start!127988 (array_inv!37305 a!2850)))

(assert (= (and start!127988 res!1023908) b!1502957))

(assert (= (and b!1502957 res!1023905) b!1502961))

(assert (= (and b!1502961 res!1023911) b!1502962))

(assert (= (and b!1502962 res!1023907) b!1502956))

(assert (= (and b!1502956 res!1023906) b!1502954))

(assert (= (and b!1502954 res!1023904) b!1502955))

(assert (= (and b!1502955 res!1023910) b!1502958))

(assert (= (and b!1502958 res!1023912) b!1502959))

(assert (= (and b!1502959 res!1023909) b!1502960))

(declare-fun m!1386245 () Bool)

(assert (=> b!1502960 m!1386245))

(declare-fun m!1386247 () Bool)

(assert (=> b!1502958 m!1386247))

(assert (=> b!1502958 m!1386247))

(declare-fun m!1386249 () Bool)

(assert (=> b!1502958 m!1386249))

(declare-fun m!1386251 () Bool)

(assert (=> b!1502955 m!1386251))

(declare-fun m!1386253 () Bool)

(assert (=> b!1502955 m!1386253))

(declare-fun m!1386255 () Bool)

(assert (=> b!1502955 m!1386255))

(declare-fun m!1386257 () Bool)

(assert (=> start!127988 m!1386257))

(declare-fun m!1386259 () Bool)

(assert (=> start!127988 m!1386259))

(declare-fun m!1386261 () Bool)

(assert (=> b!1502954 m!1386261))

(declare-fun m!1386263 () Bool)

(assert (=> b!1502961 m!1386263))

(assert (=> b!1502961 m!1386263))

(declare-fun m!1386265 () Bool)

(assert (=> b!1502961 m!1386265))

(declare-fun m!1386267 () Bool)

(assert (=> b!1502959 m!1386267))

(assert (=> b!1502959 m!1386247))

(declare-fun m!1386269 () Bool)

(assert (=> b!1502956 m!1386269))

(assert (=> b!1502962 m!1386247))

(assert (=> b!1502962 m!1386247))

(declare-fun m!1386271 () Bool)

(assert (=> b!1502962 m!1386271))

(push 1)

(assert (not b!1502961))

(assert (not start!127988))

(assert (not b!1502954))

(assert (not b!1502960))

(assert (not b!1502958))

(assert (not b!1502962))

(assert (not b!1502956))

(check-sat)

