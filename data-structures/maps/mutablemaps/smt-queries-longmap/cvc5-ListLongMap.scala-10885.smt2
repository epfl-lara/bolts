; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127618 () Bool)

(assert start!127618)

(declare-fun res!1019827 () Bool)

(declare-fun e!839108 () Bool)

(assert (=> start!127618 (=> (not res!1019827) (not e!839108))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127618 (= res!1019827 (validMask!0 mask!2661))))

(assert (=> start!127618 e!839108))

(assert (=> start!127618 true))

(declare-datatypes ((array!99912 0))(
  ( (array!99913 (arr!48211 (Array (_ BitVec 32) (_ BitVec 64))) (size!48762 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99912)

(declare-fun array_inv!37156 (array!99912) Bool)

(assert (=> start!127618 (array_inv!37156 a!2850)))

(declare-fun b!1498675 () Bool)

(declare-fun res!1019828 () Bool)

(assert (=> b!1498675 (=> (not res!1019828) (not e!839108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99912 (_ BitVec 32)) Bool)

(assert (=> b!1498675 (= res!1019828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498676 () Bool)

(assert (=> b!1498676 (= e!839108 false)))

(declare-datatypes ((SeekEntryResult!12440 0))(
  ( (MissingZero!12440 (index!52151 (_ BitVec 32))) (Found!12440 (index!52152 (_ BitVec 32))) (Intermediate!12440 (undefined!13252 Bool) (index!52153 (_ BitVec 32)) (x!133863 (_ BitVec 32))) (Undefined!12440) (MissingVacant!12440 (index!52154 (_ BitVec 32))) )
))
(declare-fun lt!652627 () SeekEntryResult!12440)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99912 (_ BitVec 32)) SeekEntryResult!12440)

(assert (=> b!1498676 (= lt!652627 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48211 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498677 () Bool)

(declare-fun res!1019823 () Bool)

(assert (=> b!1498677 (=> (not res!1019823) (not e!839108))))

(declare-datatypes ((List!34883 0))(
  ( (Nil!34880) (Cons!34879 (h!36277 (_ BitVec 64)) (t!49584 List!34883)) )
))
(declare-fun arrayNoDuplicates!0 (array!99912 (_ BitVec 32) List!34883) Bool)

(assert (=> b!1498677 (= res!1019823 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34880))))

(declare-fun b!1498678 () Bool)

(declare-fun res!1019824 () Bool)

(assert (=> b!1498678 (=> (not res!1019824) (not e!839108))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498678 (= res!1019824 (and (= (size!48762 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48762 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48762 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498679 () Bool)

(declare-fun res!1019829 () Bool)

(assert (=> b!1498679 (=> (not res!1019829) (not e!839108))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498679 (= res!1019829 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48762 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48762 a!2850)) (= (select (arr!48211 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48211 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48762 a!2850))))))

(declare-fun b!1498680 () Bool)

(declare-fun res!1019825 () Bool)

(assert (=> b!1498680 (=> (not res!1019825) (not e!839108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498680 (= res!1019825 (validKeyInArray!0 (select (arr!48211 a!2850) j!87)))))

(declare-fun b!1498681 () Bool)

(declare-fun res!1019826 () Bool)

(assert (=> b!1498681 (=> (not res!1019826) (not e!839108))))

(assert (=> b!1498681 (= res!1019826 (validKeyInArray!0 (select (arr!48211 a!2850) i!996)))))

(assert (= (and start!127618 res!1019827) b!1498678))

(assert (= (and b!1498678 res!1019824) b!1498681))

(assert (= (and b!1498681 res!1019826) b!1498680))

(assert (= (and b!1498680 res!1019825) b!1498675))

(assert (= (and b!1498675 res!1019828) b!1498677))

(assert (= (and b!1498677 res!1019823) b!1498679))

(assert (= (and b!1498679 res!1019829) b!1498676))

(declare-fun m!1381869 () Bool)

(assert (=> b!1498675 m!1381869))

(declare-fun m!1381871 () Bool)

(assert (=> b!1498679 m!1381871))

(declare-fun m!1381873 () Bool)

(assert (=> b!1498679 m!1381873))

(declare-fun m!1381875 () Bool)

(assert (=> b!1498679 m!1381875))

(declare-fun m!1381877 () Bool)

(assert (=> b!1498681 m!1381877))

(assert (=> b!1498681 m!1381877))

(declare-fun m!1381879 () Bool)

(assert (=> b!1498681 m!1381879))

(declare-fun m!1381881 () Bool)

(assert (=> b!1498677 m!1381881))

(declare-fun m!1381883 () Bool)

(assert (=> b!1498676 m!1381883))

(assert (=> b!1498676 m!1381883))

(declare-fun m!1381885 () Bool)

(assert (=> b!1498676 m!1381885))

(assert (=> b!1498680 m!1381883))

(assert (=> b!1498680 m!1381883))

(declare-fun m!1381887 () Bool)

(assert (=> b!1498680 m!1381887))

(declare-fun m!1381889 () Bool)

(assert (=> start!127618 m!1381889))

(declare-fun m!1381891 () Bool)

(assert (=> start!127618 m!1381891))

(push 1)

(assert (not b!1498681))

(assert (not start!127618))

(assert (not b!1498677))

(assert (not b!1498676))

(assert (not b!1498675))

(assert (not b!1498680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

