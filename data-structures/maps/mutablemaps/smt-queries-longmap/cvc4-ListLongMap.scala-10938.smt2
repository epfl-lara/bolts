; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128012 () Bool)

(assert start!128012)

(declare-fun b!1503278 () Bool)

(declare-fun res!1024231 () Bool)

(declare-fun e!840595 () Bool)

(assert (=> b!1503278 (=> (not res!1024231) (not e!840595))))

(declare-datatypes ((array!100240 0))(
  ( (array!100241 (arr!48372 (Array (_ BitVec 32) (_ BitVec 64))) (size!48923 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100240)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503278 (= res!1024231 (not (= (select (arr!48372 a!2850) index!625) (select (arr!48372 a!2850) j!87))))))

(declare-fun b!1503279 () Bool)

(declare-fun res!1024230 () Bool)

(assert (=> b!1503279 (=> (not res!1024230) (not e!840595))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12589 0))(
  ( (MissingZero!12589 (index!52747 (_ BitVec 32))) (Found!12589 (index!52748 (_ BitVec 32))) (Intermediate!12589 (undefined!13401 Bool) (index!52749 (_ BitVec 32)) (x!134442 (_ BitVec 32))) (Undefined!12589) (MissingVacant!12589 (index!52750 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100240 (_ BitVec 32)) SeekEntryResult!12589)

(assert (=> b!1503279 (= res!1024230 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48372 a!2850) j!87) a!2850 mask!2661) (Found!12589 j!87)))))

(declare-fun b!1503280 () Bool)

(declare-fun res!1024235 () Bool)

(assert (=> b!1503280 (=> (not res!1024235) (not e!840595))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503280 (= res!1024235 (validKeyInArray!0 (select (arr!48372 a!2850) j!87)))))

(declare-fun b!1503281 () Bool)

(declare-fun res!1024228 () Bool)

(assert (=> b!1503281 (=> (not res!1024228) (not e!840595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100240 (_ BitVec 32)) Bool)

(assert (=> b!1503281 (= res!1024228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503282 () Bool)

(declare-fun res!1024233 () Bool)

(assert (=> b!1503282 (=> (not res!1024233) (not e!840595))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1503282 (= res!1024233 (validKeyInArray!0 (select (arr!48372 a!2850) i!996)))))

(declare-fun b!1503283 () Bool)

(declare-fun res!1024229 () Bool)

(assert (=> b!1503283 (=> (not res!1024229) (not e!840595))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503283 (= res!1024229 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48923 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48923 a!2850)) (= (select (arr!48372 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48372 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48923 a!2850))))))

(declare-fun res!1024234 () Bool)

(assert (=> start!128012 (=> (not res!1024234) (not e!840595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128012 (= res!1024234 (validMask!0 mask!2661))))

(assert (=> start!128012 e!840595))

(assert (=> start!128012 true))

(declare-fun array_inv!37317 (array!100240) Bool)

(assert (=> start!128012 (array_inv!37317 a!2850)))

(declare-fun b!1503284 () Bool)

(assert (=> b!1503284 (= e!840595 false)))

(declare-fun lt!653476 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503284 (= lt!653476 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503285 () Bool)

(declare-fun res!1024236 () Bool)

(assert (=> b!1503285 (=> (not res!1024236) (not e!840595))))

(declare-datatypes ((List!35044 0))(
  ( (Nil!35041) (Cons!35040 (h!36438 (_ BitVec 64)) (t!49745 List!35044)) )
))
(declare-fun arrayNoDuplicates!0 (array!100240 (_ BitVec 32) List!35044) Bool)

(assert (=> b!1503285 (= res!1024236 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35041))))

(declare-fun b!1503286 () Bool)

(declare-fun res!1024232 () Bool)

(assert (=> b!1503286 (=> (not res!1024232) (not e!840595))))

(assert (=> b!1503286 (= res!1024232 (and (= (size!48923 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48923 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48923 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128012 res!1024234) b!1503286))

(assert (= (and b!1503286 res!1024232) b!1503282))

(assert (= (and b!1503282 res!1024233) b!1503280))

(assert (= (and b!1503280 res!1024235) b!1503281))

(assert (= (and b!1503281 res!1024228) b!1503285))

(assert (= (and b!1503285 res!1024236) b!1503283))

(assert (= (and b!1503283 res!1024229) b!1503279))

(assert (= (and b!1503279 res!1024230) b!1503278))

(assert (= (and b!1503278 res!1024231) b!1503284))

(declare-fun m!1386581 () Bool)

(assert (=> b!1503284 m!1386581))

(declare-fun m!1386583 () Bool)

(assert (=> start!128012 m!1386583))

(declare-fun m!1386585 () Bool)

(assert (=> start!128012 m!1386585))

(declare-fun m!1386587 () Bool)

(assert (=> b!1503281 m!1386587))

(declare-fun m!1386589 () Bool)

(assert (=> b!1503282 m!1386589))

(assert (=> b!1503282 m!1386589))

(declare-fun m!1386591 () Bool)

(assert (=> b!1503282 m!1386591))

(declare-fun m!1386593 () Bool)

(assert (=> b!1503285 m!1386593))

(declare-fun m!1386595 () Bool)

(assert (=> b!1503283 m!1386595))

(declare-fun m!1386597 () Bool)

(assert (=> b!1503283 m!1386597))

(declare-fun m!1386599 () Bool)

(assert (=> b!1503283 m!1386599))

(declare-fun m!1386601 () Bool)

(assert (=> b!1503278 m!1386601))

(declare-fun m!1386603 () Bool)

(assert (=> b!1503278 m!1386603))

(assert (=> b!1503280 m!1386603))

(assert (=> b!1503280 m!1386603))

(declare-fun m!1386605 () Bool)

(assert (=> b!1503280 m!1386605))

(assert (=> b!1503279 m!1386603))

(assert (=> b!1503279 m!1386603))

(declare-fun m!1386607 () Bool)

(assert (=> b!1503279 m!1386607))

(push 1)

(assert (not b!1503279))

(assert (not b!1503285))

(assert (not b!1503282))

(assert (not start!128012))

(assert (not b!1503284))

(assert (not b!1503281))

(assert (not b!1503280))

