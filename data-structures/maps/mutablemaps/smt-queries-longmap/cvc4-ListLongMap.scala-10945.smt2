; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128096 () Bool)

(assert start!128096)

(declare-fun b!1503980 () Bool)

(declare-fun res!1024844 () Bool)

(declare-fun e!840811 () Bool)

(assert (=> b!1503980 (=> (not res!1024844) (not e!840811))))

(declare-datatypes ((array!100285 0))(
  ( (array!100286 (arr!48393 (Array (_ BitVec 32) (_ BitVec 64))) (size!48944 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100285)

(declare-datatypes ((List!35065 0))(
  ( (Nil!35062) (Cons!35061 (h!36459 (_ BitVec 64)) (t!49766 List!35065)) )
))
(declare-fun arrayNoDuplicates!0 (array!100285 (_ BitVec 32) List!35065) Bool)

(assert (=> b!1503980 (= res!1024844 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35062))))

(declare-fun b!1503981 () Bool)

(declare-fun res!1024848 () Bool)

(assert (=> b!1503981 (=> (not res!1024848) (not e!840811))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503981 (= res!1024848 (validKeyInArray!0 (select (arr!48393 a!2850) i!996)))))

(declare-fun b!1503982 () Bool)

(declare-fun res!1024842 () Bool)

(assert (=> b!1503982 (=> (not res!1024842) (not e!840811))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503982 (= res!1024842 (not (= (select (arr!48393 a!2850) index!625) (select (arr!48393 a!2850) j!87))))))

(declare-fun b!1503983 () Bool)

(declare-fun res!1024845 () Bool)

(assert (=> b!1503983 (=> (not res!1024845) (not e!840811))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100285 (_ BitVec 32)) Bool)

(assert (=> b!1503983 (= res!1024845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503984 () Bool)

(declare-fun res!1024846 () Bool)

(assert (=> b!1503984 (=> (not res!1024846) (not e!840811))))

(assert (=> b!1503984 (= res!1024846 (validKeyInArray!0 (select (arr!48393 a!2850) j!87)))))

(declare-fun res!1024841 () Bool)

(assert (=> start!128096 (=> (not res!1024841) (not e!840811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128096 (= res!1024841 (validMask!0 mask!2661))))

(assert (=> start!128096 e!840811))

(assert (=> start!128096 true))

(declare-fun array_inv!37338 (array!100285) Bool)

(assert (=> start!128096 (array_inv!37338 a!2850)))

(declare-fun b!1503985 () Bool)

(declare-fun res!1024843 () Bool)

(assert (=> b!1503985 (=> (not res!1024843) (not e!840811))))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12610 0))(
  ( (MissingZero!12610 (index!52831 (_ BitVec 32))) (Found!12610 (index!52832 (_ BitVec 32))) (Intermediate!12610 (undefined!13422 Bool) (index!52833 (_ BitVec 32)) (x!134525 (_ BitVec 32))) (Undefined!12610) (MissingVacant!12610 (index!52834 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100285 (_ BitVec 32)) SeekEntryResult!12610)

(assert (=> b!1503985 (= res!1024843 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48393 a!2850) j!87) a!2850 mask!2661) (Found!12610 j!87)))))

(declare-fun b!1503986 () Bool)

(declare-fun res!1024840 () Bool)

(assert (=> b!1503986 (=> (not res!1024840) (not e!840811))))

(assert (=> b!1503986 (= res!1024840 (and (= (size!48944 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48944 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48944 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503987 () Bool)

(declare-fun res!1024847 () Bool)

(assert (=> b!1503987 (=> (not res!1024847) (not e!840811))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503987 (= res!1024847 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48944 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48944 a!2850)) (= (select (arr!48393 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48393 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48944 a!2850))))))

(declare-fun b!1503988 () Bool)

(assert (=> b!1503988 (= e!840811 false)))

(declare-fun lt!653593 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503988 (= lt!653593 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!128096 res!1024841) b!1503986))

(assert (= (and b!1503986 res!1024840) b!1503981))

(assert (= (and b!1503981 res!1024848) b!1503984))

(assert (= (and b!1503984 res!1024846) b!1503983))

(assert (= (and b!1503983 res!1024845) b!1503980))

(assert (= (and b!1503980 res!1024844) b!1503987))

(assert (= (and b!1503987 res!1024847) b!1503985))

(assert (= (and b!1503985 res!1024843) b!1503982))

(assert (= (and b!1503982 res!1024842) b!1503988))

(declare-fun m!1387241 () Bool)

(assert (=> b!1503985 m!1387241))

(assert (=> b!1503985 m!1387241))

(declare-fun m!1387243 () Bool)

(assert (=> b!1503985 m!1387243))

(declare-fun m!1387245 () Bool)

(assert (=> b!1503982 m!1387245))

(assert (=> b!1503982 m!1387241))

(declare-fun m!1387247 () Bool)

(assert (=> b!1503981 m!1387247))

(assert (=> b!1503981 m!1387247))

(declare-fun m!1387249 () Bool)

(assert (=> b!1503981 m!1387249))

(assert (=> b!1503984 m!1387241))

(assert (=> b!1503984 m!1387241))

(declare-fun m!1387251 () Bool)

(assert (=> b!1503984 m!1387251))

(declare-fun m!1387253 () Bool)

(assert (=> b!1503988 m!1387253))

(declare-fun m!1387255 () Bool)

(assert (=> start!128096 m!1387255))

(declare-fun m!1387257 () Bool)

(assert (=> start!128096 m!1387257))

(declare-fun m!1387259 () Bool)

(assert (=> b!1503983 m!1387259))

(declare-fun m!1387261 () Bool)

(assert (=> b!1503980 m!1387261))

(declare-fun m!1387263 () Bool)

(assert (=> b!1503987 m!1387263))

(declare-fun m!1387265 () Bool)

(assert (=> b!1503987 m!1387265))

(declare-fun m!1387267 () Bool)

(assert (=> b!1503987 m!1387267))

(push 1)

(assert (not b!1503980))

(assert (not b!1503985))

(assert (not b!1503981))

(assert (not b!1503983))

(assert (not b!1503984))

(assert (not b!1503988))

(assert (not start!128096))

(check-sat)

(pop 1)

