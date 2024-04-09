; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127974 () Bool)

(assert start!127974)

(declare-fun b!1502765 () Bool)

(declare-fun res!1023720 () Bool)

(declare-fun e!840481 () Bool)

(assert (=> b!1502765 (=> (not res!1023720) (not e!840481))))

(declare-datatypes ((array!100202 0))(
  ( (array!100203 (arr!48353 (Array (_ BitVec 32) (_ BitVec 64))) (size!48904 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100202)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100202 (_ BitVec 32)) Bool)

(assert (=> b!1502765 (= res!1023720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1023721 () Bool)

(assert (=> start!127974 (=> (not res!1023721) (not e!840481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127974 (= res!1023721 (validMask!0 mask!2661))))

(assert (=> start!127974 e!840481))

(assert (=> start!127974 true))

(declare-fun array_inv!37298 (array!100202) Bool)

(assert (=> start!127974 (array_inv!37298 a!2850)))

(declare-fun b!1502766 () Bool)

(declare-fun res!1023718 () Bool)

(assert (=> b!1502766 (=> (not res!1023718) (not e!840481))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12570 0))(
  ( (MissingZero!12570 (index!52671 (_ BitVec 32))) (Found!12570 (index!52672 (_ BitVec 32))) (Intermediate!12570 (undefined!13382 Bool) (index!52673 (_ BitVec 32)) (x!134375 (_ BitVec 32))) (Undefined!12570) (MissingVacant!12570 (index!52674 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100202 (_ BitVec 32)) SeekEntryResult!12570)

(assert (=> b!1502766 (= res!1023718 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48353 a!2850) j!87) a!2850 mask!2661) (Found!12570 j!87)))))

(declare-fun b!1502767 () Bool)

(declare-fun res!1023723 () Bool)

(assert (=> b!1502767 (=> (not res!1023723) (not e!840481))))

(assert (=> b!1502767 (= res!1023723 (not (= (select (arr!48353 a!2850) index!625) (select (arr!48353 a!2850) j!87))))))

(declare-fun b!1502768 () Bool)

(declare-fun res!1023719 () Bool)

(assert (=> b!1502768 (=> (not res!1023719) (not e!840481))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502768 (= res!1023719 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48904 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48904 a!2850)) (= (select (arr!48353 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48353 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48904 a!2850))))))

(declare-fun b!1502769 () Bool)

(declare-fun res!1023715 () Bool)

(assert (=> b!1502769 (=> (not res!1023715) (not e!840481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502769 (= res!1023715 (validKeyInArray!0 (select (arr!48353 a!2850) i!996)))))

(declare-fun b!1502770 () Bool)

(assert (=> b!1502770 (= e!840481 false)))

(declare-fun lt!653419 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502770 (= lt!653419 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502771 () Bool)

(declare-fun res!1023717 () Bool)

(assert (=> b!1502771 (=> (not res!1023717) (not e!840481))))

(declare-datatypes ((List!35025 0))(
  ( (Nil!35022) (Cons!35021 (h!36419 (_ BitVec 64)) (t!49726 List!35025)) )
))
(declare-fun arrayNoDuplicates!0 (array!100202 (_ BitVec 32) List!35025) Bool)

(assert (=> b!1502771 (= res!1023717 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35022))))

(declare-fun b!1502772 () Bool)

(declare-fun res!1023716 () Bool)

(assert (=> b!1502772 (=> (not res!1023716) (not e!840481))))

(assert (=> b!1502772 (= res!1023716 (and (= (size!48904 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48904 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48904 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502773 () Bool)

(declare-fun res!1023722 () Bool)

(assert (=> b!1502773 (=> (not res!1023722) (not e!840481))))

(assert (=> b!1502773 (= res!1023722 (validKeyInArray!0 (select (arr!48353 a!2850) j!87)))))

(assert (= (and start!127974 res!1023721) b!1502772))

(assert (= (and b!1502772 res!1023716) b!1502769))

(assert (= (and b!1502769 res!1023715) b!1502773))

(assert (= (and b!1502773 res!1023722) b!1502765))

(assert (= (and b!1502765 res!1023720) b!1502771))

(assert (= (and b!1502771 res!1023717) b!1502768))

(assert (= (and b!1502768 res!1023719) b!1502766))

(assert (= (and b!1502766 res!1023718) b!1502767))

(assert (= (and b!1502767 res!1023723) b!1502770))

(declare-fun m!1386049 () Bool)

(assert (=> b!1502773 m!1386049))

(assert (=> b!1502773 m!1386049))

(declare-fun m!1386051 () Bool)

(assert (=> b!1502773 m!1386051))

(assert (=> b!1502766 m!1386049))

(assert (=> b!1502766 m!1386049))

(declare-fun m!1386053 () Bool)

(assert (=> b!1502766 m!1386053))

(declare-fun m!1386055 () Bool)

(assert (=> b!1502769 m!1386055))

(assert (=> b!1502769 m!1386055))

(declare-fun m!1386057 () Bool)

(assert (=> b!1502769 m!1386057))

(declare-fun m!1386059 () Bool)

(assert (=> b!1502770 m!1386059))

(declare-fun m!1386061 () Bool)

(assert (=> b!1502768 m!1386061))

(declare-fun m!1386063 () Bool)

(assert (=> b!1502768 m!1386063))

(declare-fun m!1386065 () Bool)

(assert (=> b!1502768 m!1386065))

(declare-fun m!1386067 () Bool)

(assert (=> b!1502765 m!1386067))

(declare-fun m!1386069 () Bool)

(assert (=> start!127974 m!1386069))

(declare-fun m!1386071 () Bool)

(assert (=> start!127974 m!1386071))

(declare-fun m!1386073 () Bool)

(assert (=> b!1502771 m!1386073))

(declare-fun m!1386075 () Bool)

(assert (=> b!1502767 m!1386075))

(assert (=> b!1502767 m!1386049))

(check-sat (not b!1502766) (not b!1502771) (not start!127974) (not b!1502765) (not b!1502769) (not b!1502773) (not b!1502770))
