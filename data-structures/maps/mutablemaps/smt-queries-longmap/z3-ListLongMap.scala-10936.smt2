; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127998 () Bool)

(assert start!127998)

(declare-fun b!1503089 () Bool)

(declare-fun res!1024042 () Bool)

(declare-fun e!840554 () Bool)

(assert (=> b!1503089 (=> (not res!1024042) (not e!840554))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100226 0))(
  ( (array!100227 (arr!48365 (Array (_ BitVec 32) (_ BitVec 64))) (size!48916 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100226)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503089 (= res!1024042 (and (= (size!48916 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48916 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48916 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503090 () Bool)

(assert (=> b!1503090 (= e!840554 false)))

(declare-fun lt!653455 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503090 (= lt!653455 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503091 () Bool)

(declare-fun res!1024040 () Bool)

(assert (=> b!1503091 (=> (not res!1024040) (not e!840554))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503091 (= res!1024040 (validKeyInArray!0 (select (arr!48365 a!2850) j!87)))))

(declare-fun res!1024043 () Bool)

(assert (=> start!127998 (=> (not res!1024043) (not e!840554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127998 (= res!1024043 (validMask!0 mask!2661))))

(assert (=> start!127998 e!840554))

(assert (=> start!127998 true))

(declare-fun array_inv!37310 (array!100226) Bool)

(assert (=> start!127998 (array_inv!37310 a!2850)))

(declare-fun b!1503092 () Bool)

(declare-fun res!1024039 () Bool)

(assert (=> b!1503092 (=> (not res!1024039) (not e!840554))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12582 0))(
  ( (MissingZero!12582 (index!52719 (_ BitVec 32))) (Found!12582 (index!52720 (_ BitVec 32))) (Intermediate!12582 (undefined!13394 Bool) (index!52721 (_ BitVec 32)) (x!134419 (_ BitVec 32))) (Undefined!12582) (MissingVacant!12582 (index!52722 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100226 (_ BitVec 32)) SeekEntryResult!12582)

(assert (=> b!1503092 (= res!1024039 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48365 a!2850) j!87) a!2850 mask!2661) (Found!12582 j!87)))))

(declare-fun b!1503093 () Bool)

(declare-fun res!1024044 () Bool)

(assert (=> b!1503093 (=> (not res!1024044) (not e!840554))))

(declare-datatypes ((List!35037 0))(
  ( (Nil!35034) (Cons!35033 (h!36431 (_ BitVec 64)) (t!49738 List!35037)) )
))
(declare-fun arrayNoDuplicates!0 (array!100226 (_ BitVec 32) List!35037) Bool)

(assert (=> b!1503093 (= res!1024044 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35034))))

(declare-fun b!1503094 () Bool)

(declare-fun res!1024046 () Bool)

(assert (=> b!1503094 (=> (not res!1024046) (not e!840554))))

(assert (=> b!1503094 (= res!1024046 (not (= (select (arr!48365 a!2850) index!625) (select (arr!48365 a!2850) j!87))))))

(declare-fun b!1503095 () Bool)

(declare-fun res!1024041 () Bool)

(assert (=> b!1503095 (=> (not res!1024041) (not e!840554))))

(assert (=> b!1503095 (= res!1024041 (validKeyInArray!0 (select (arr!48365 a!2850) i!996)))))

(declare-fun b!1503096 () Bool)

(declare-fun res!1024047 () Bool)

(assert (=> b!1503096 (=> (not res!1024047) (not e!840554))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503096 (= res!1024047 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48916 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48916 a!2850)) (= (select (arr!48365 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48365 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48916 a!2850))))))

(declare-fun b!1503097 () Bool)

(declare-fun res!1024045 () Bool)

(assert (=> b!1503097 (=> (not res!1024045) (not e!840554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100226 (_ BitVec 32)) Bool)

(assert (=> b!1503097 (= res!1024045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127998 res!1024043) b!1503089))

(assert (= (and b!1503089 res!1024042) b!1503095))

(assert (= (and b!1503095 res!1024041) b!1503091))

(assert (= (and b!1503091 res!1024040) b!1503097))

(assert (= (and b!1503097 res!1024045) b!1503093))

(assert (= (and b!1503093 res!1024044) b!1503096))

(assert (= (and b!1503096 res!1024047) b!1503092))

(assert (= (and b!1503092 res!1024039) b!1503094))

(assert (= (and b!1503094 res!1024046) b!1503090))

(declare-fun m!1386385 () Bool)

(assert (=> b!1503095 m!1386385))

(assert (=> b!1503095 m!1386385))

(declare-fun m!1386387 () Bool)

(assert (=> b!1503095 m!1386387))

(declare-fun m!1386389 () Bool)

(assert (=> b!1503093 m!1386389))

(declare-fun m!1386391 () Bool)

(assert (=> b!1503091 m!1386391))

(assert (=> b!1503091 m!1386391))

(declare-fun m!1386393 () Bool)

(assert (=> b!1503091 m!1386393))

(declare-fun m!1386395 () Bool)

(assert (=> b!1503096 m!1386395))

(declare-fun m!1386397 () Bool)

(assert (=> b!1503096 m!1386397))

(declare-fun m!1386399 () Bool)

(assert (=> b!1503096 m!1386399))

(declare-fun m!1386401 () Bool)

(assert (=> b!1503090 m!1386401))

(declare-fun m!1386403 () Bool)

(assert (=> b!1503094 m!1386403))

(assert (=> b!1503094 m!1386391))

(assert (=> b!1503092 m!1386391))

(assert (=> b!1503092 m!1386391))

(declare-fun m!1386405 () Bool)

(assert (=> b!1503092 m!1386405))

(declare-fun m!1386407 () Bool)

(assert (=> b!1503097 m!1386407))

(declare-fun m!1386409 () Bool)

(assert (=> start!127998 m!1386409))

(declare-fun m!1386411 () Bool)

(assert (=> start!127998 m!1386411))

(check-sat (not b!1503093) (not b!1503097) (not b!1503091) (not b!1503095) (not b!1503092) (not b!1503090) (not start!127998))
