; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127990 () Bool)

(assert start!127990)

(declare-fun b!1502981 () Bool)

(declare-fun res!1023935 () Bool)

(declare-fun e!840529 () Bool)

(assert (=> b!1502981 (=> (not res!1023935) (not e!840529))))

(declare-datatypes ((array!100218 0))(
  ( (array!100219 (arr!48361 (Array (_ BitVec 32) (_ BitVec 64))) (size!48912 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100218)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100218 (_ BitVec 32)) Bool)

(assert (=> b!1502981 (= res!1023935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502982 () Bool)

(declare-fun res!1023936 () Bool)

(assert (=> b!1502982 (=> (not res!1023936) (not e!840529))))

(declare-datatypes ((List!35033 0))(
  ( (Nil!35030) (Cons!35029 (h!36427 (_ BitVec 64)) (t!49734 List!35033)) )
))
(declare-fun arrayNoDuplicates!0 (array!100218 (_ BitVec 32) List!35033) Bool)

(assert (=> b!1502982 (= res!1023936 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35030))))

(declare-fun b!1502983 () Bool)

(declare-fun res!1023938 () Bool)

(assert (=> b!1502983 (=> (not res!1023938) (not e!840529))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502983 (= res!1023938 (validKeyInArray!0 (select (arr!48361 a!2850) j!87)))))

(declare-fun b!1502984 () Bool)

(declare-fun res!1023932 () Bool)

(assert (=> b!1502984 (=> (not res!1023932) (not e!840529))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1502984 (= res!1023932 (validKeyInArray!0 (select (arr!48361 a!2850) i!996)))))

(declare-fun b!1502985 () Bool)

(declare-fun res!1023934 () Bool)

(assert (=> b!1502985 (=> (not res!1023934) (not e!840529))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12578 0))(
  ( (MissingZero!12578 (index!52703 (_ BitVec 32))) (Found!12578 (index!52704 (_ BitVec 32))) (Intermediate!12578 (undefined!13390 Bool) (index!52705 (_ BitVec 32)) (x!134407 (_ BitVec 32))) (Undefined!12578) (MissingVacant!12578 (index!52706 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100218 (_ BitVec 32)) SeekEntryResult!12578)

(assert (=> b!1502985 (= res!1023934 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48361 a!2850) j!87) a!2850 mask!2661) (Found!12578 j!87)))))

(declare-fun res!1023931 () Bool)

(assert (=> start!127990 (=> (not res!1023931) (not e!840529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127990 (= res!1023931 (validMask!0 mask!2661))))

(assert (=> start!127990 e!840529))

(assert (=> start!127990 true))

(declare-fun array_inv!37306 (array!100218) Bool)

(assert (=> start!127990 (array_inv!37306 a!2850)))

(declare-fun b!1502986 () Bool)

(declare-fun res!1023937 () Bool)

(assert (=> b!1502986 (=> (not res!1023937) (not e!840529))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502986 (= res!1023937 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48912 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48912 a!2850)) (= (select (arr!48361 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48361 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48912 a!2850))))))

(declare-fun b!1502987 () Bool)

(assert (=> b!1502987 (= e!840529 false)))

(declare-fun lt!653443 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502987 (= lt!653443 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502988 () Bool)

(declare-fun res!1023939 () Bool)

(assert (=> b!1502988 (=> (not res!1023939) (not e!840529))))

(assert (=> b!1502988 (= res!1023939 (and (= (size!48912 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48912 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48912 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502989 () Bool)

(declare-fun res!1023933 () Bool)

(assert (=> b!1502989 (=> (not res!1023933) (not e!840529))))

(assert (=> b!1502989 (= res!1023933 (not (= (select (arr!48361 a!2850) index!625) (select (arr!48361 a!2850) j!87))))))

(assert (= (and start!127990 res!1023931) b!1502988))

(assert (= (and b!1502988 res!1023939) b!1502984))

(assert (= (and b!1502984 res!1023932) b!1502983))

(assert (= (and b!1502983 res!1023938) b!1502981))

(assert (= (and b!1502981 res!1023935) b!1502982))

(assert (= (and b!1502982 res!1023936) b!1502986))

(assert (= (and b!1502986 res!1023937) b!1502985))

(assert (= (and b!1502985 res!1023934) b!1502989))

(assert (= (and b!1502989 res!1023933) b!1502987))

(declare-fun m!1386273 () Bool)

(assert (=> b!1502986 m!1386273))

(declare-fun m!1386275 () Bool)

(assert (=> b!1502986 m!1386275))

(declare-fun m!1386277 () Bool)

(assert (=> b!1502986 m!1386277))

(declare-fun m!1386279 () Bool)

(assert (=> b!1502981 m!1386279))

(declare-fun m!1386281 () Bool)

(assert (=> b!1502983 m!1386281))

(assert (=> b!1502983 m!1386281))

(declare-fun m!1386283 () Bool)

(assert (=> b!1502983 m!1386283))

(declare-fun m!1386285 () Bool)

(assert (=> b!1502989 m!1386285))

(assert (=> b!1502989 m!1386281))

(assert (=> b!1502985 m!1386281))

(assert (=> b!1502985 m!1386281))

(declare-fun m!1386287 () Bool)

(assert (=> b!1502985 m!1386287))

(declare-fun m!1386289 () Bool)

(assert (=> b!1502982 m!1386289))

(declare-fun m!1386291 () Bool)

(assert (=> start!127990 m!1386291))

(declare-fun m!1386293 () Bool)

(assert (=> start!127990 m!1386293))

(declare-fun m!1386295 () Bool)

(assert (=> b!1502987 m!1386295))

(declare-fun m!1386297 () Bool)

(assert (=> b!1502984 m!1386297))

(assert (=> b!1502984 m!1386297))

(declare-fun m!1386299 () Bool)

(assert (=> b!1502984 m!1386299))

(push 1)

(assert (not b!1502987))

(assert (not start!127990))

(assert (not b!1502984))

(assert (not b!1502985))

(assert (not b!1502983))

(assert (not b!1502982))

(assert (not b!1502981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

