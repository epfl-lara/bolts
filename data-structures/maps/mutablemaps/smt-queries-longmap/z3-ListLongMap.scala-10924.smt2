; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127854 () Bool)

(assert start!127854)

(declare-fun b!1501936 () Bool)

(declare-fun res!1023089 () Bool)

(declare-fun e!840139 () Bool)

(assert (=> b!1501936 (=> (not res!1023089) (not e!840139))))

(declare-datatypes ((array!100148 0))(
  ( (array!100149 (arr!48329 (Array (_ BitVec 32) (_ BitVec 64))) (size!48880 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100148)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501936 (= res!1023089 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48880 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48880 a!2850)) (= (select (arr!48329 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48329 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48880 a!2850))))))

(declare-fun b!1501937 () Bool)

(assert (=> b!1501937 (= e!840139 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12546 0))(
  ( (MissingZero!12546 (index!52575 (_ BitVec 32))) (Found!12546 (index!52576 (_ BitVec 32))) (Intermediate!12546 (undefined!13358 Bool) (index!52577 (_ BitVec 32)) (x!134281 (_ BitVec 32))) (Undefined!12546) (MissingVacant!12546 (index!52578 (_ BitVec 32))) )
))
(declare-fun lt!653260 () SeekEntryResult!12546)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100148 (_ BitVec 32)) SeekEntryResult!12546)

(assert (=> b!1501937 (= lt!653260 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48329 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1501938 () Bool)

(declare-fun res!1023087 () Bool)

(assert (=> b!1501938 (=> (not res!1023087) (not e!840139))))

(declare-datatypes ((List!35001 0))(
  ( (Nil!34998) (Cons!34997 (h!36395 (_ BitVec 64)) (t!49702 List!35001)) )
))
(declare-fun arrayNoDuplicates!0 (array!100148 (_ BitVec 32) List!35001) Bool)

(assert (=> b!1501938 (= res!1023087 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34998))))

(declare-fun res!1023084 () Bool)

(assert (=> start!127854 (=> (not res!1023084) (not e!840139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127854 (= res!1023084 (validMask!0 mask!2661))))

(assert (=> start!127854 e!840139))

(assert (=> start!127854 true))

(declare-fun array_inv!37274 (array!100148) Bool)

(assert (=> start!127854 (array_inv!37274 a!2850)))

(declare-fun b!1501939 () Bool)

(declare-fun res!1023090 () Bool)

(assert (=> b!1501939 (=> (not res!1023090) (not e!840139))))

(assert (=> b!1501939 (= res!1023090 (and (= (size!48880 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48880 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48880 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501940 () Bool)

(declare-fun res!1023088 () Bool)

(assert (=> b!1501940 (=> (not res!1023088) (not e!840139))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501940 (= res!1023088 (validKeyInArray!0 (select (arr!48329 a!2850) j!87)))))

(declare-fun b!1501941 () Bool)

(declare-fun res!1023086 () Bool)

(assert (=> b!1501941 (=> (not res!1023086) (not e!840139))))

(assert (=> b!1501941 (= res!1023086 (validKeyInArray!0 (select (arr!48329 a!2850) i!996)))))

(declare-fun b!1501942 () Bool)

(declare-fun res!1023085 () Bool)

(assert (=> b!1501942 (=> (not res!1023085) (not e!840139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100148 (_ BitVec 32)) Bool)

(assert (=> b!1501942 (= res!1023085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127854 res!1023084) b!1501939))

(assert (= (and b!1501939 res!1023090) b!1501941))

(assert (= (and b!1501941 res!1023086) b!1501940))

(assert (= (and b!1501940 res!1023088) b!1501942))

(assert (= (and b!1501942 res!1023085) b!1501938))

(assert (= (and b!1501938 res!1023087) b!1501936))

(assert (= (and b!1501936 res!1023089) b!1501937))

(declare-fun m!1385277 () Bool)

(assert (=> b!1501942 m!1385277))

(declare-fun m!1385279 () Bool)

(assert (=> b!1501941 m!1385279))

(assert (=> b!1501941 m!1385279))

(declare-fun m!1385281 () Bool)

(assert (=> b!1501941 m!1385281))

(declare-fun m!1385283 () Bool)

(assert (=> b!1501938 m!1385283))

(declare-fun m!1385285 () Bool)

(assert (=> b!1501940 m!1385285))

(assert (=> b!1501940 m!1385285))

(declare-fun m!1385287 () Bool)

(assert (=> b!1501940 m!1385287))

(declare-fun m!1385289 () Bool)

(assert (=> start!127854 m!1385289))

(declare-fun m!1385291 () Bool)

(assert (=> start!127854 m!1385291))

(declare-fun m!1385293 () Bool)

(assert (=> b!1501936 m!1385293))

(declare-fun m!1385295 () Bool)

(assert (=> b!1501936 m!1385295))

(declare-fun m!1385297 () Bool)

(assert (=> b!1501936 m!1385297))

(assert (=> b!1501937 m!1385285))

(assert (=> b!1501937 m!1385285))

(declare-fun m!1385299 () Bool)

(assert (=> b!1501937 m!1385299))

(check-sat (not b!1501938) (not b!1501937) (not start!127854) (not b!1501940) (not b!1501941) (not b!1501942))
