; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119140 () Bool)

(assert start!119140)

(declare-fun b!1389419 () Bool)

(declare-fun res!929694 () Bool)

(declare-fun e!787046 () Bool)

(assert (=> b!1389419 (=> (not res!929694) (not e!787046))))

(declare-datatypes ((array!94995 0))(
  ( (array!94996 (arr!45859 (Array (_ BitVec 32) (_ BitVec 64))) (size!46410 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94995)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94995 (_ BitVec 32)) Bool)

(assert (=> b!1389419 (= res!929694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389420 () Bool)

(declare-fun res!929692 () Bool)

(assert (=> b!1389420 (=> (not res!929692) (not e!787046))))

(declare-datatypes ((List!32558 0))(
  ( (Nil!32555) (Cons!32554 (h!33772 (_ BitVec 64)) (t!47259 List!32558)) )
))
(declare-fun arrayNoDuplicates!0 (array!94995 (_ BitVec 32) List!32558) Bool)

(assert (=> b!1389420 (= res!929692 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32555))))

(declare-fun b!1389421 () Bool)

(declare-fun res!929689 () Bool)

(assert (=> b!1389421 (=> (not res!929689) (not e!787046))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389421 (= res!929689 (and (= (size!46410 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46410 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46410 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929691 () Bool)

(assert (=> start!119140 (=> (not res!929691) (not e!787046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119140 (= res!929691 (validMask!0 mask!2840))))

(assert (=> start!119140 e!787046))

(assert (=> start!119140 true))

(declare-fun array_inv!34804 (array!94995) Bool)

(assert (=> start!119140 (array_inv!34804 a!2901)))

(declare-fun b!1389422 () Bool)

(assert (=> b!1389422 (= e!787046 false)))

(declare-datatypes ((SeekEntryResult!10198 0))(
  ( (MissingZero!10198 (index!43162 (_ BitVec 32))) (Found!10198 (index!43163 (_ BitVec 32))) (Intermediate!10198 (undefined!11010 Bool) (index!43164 (_ BitVec 32)) (x!124863 (_ BitVec 32))) (Undefined!10198) (MissingVacant!10198 (index!43165 (_ BitVec 32))) )
))
(declare-fun lt!610516 () SeekEntryResult!10198)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94995 (_ BitVec 32)) SeekEntryResult!10198)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389422 (= lt!610516 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45859 a!2901) j!112) mask!2840) (select (arr!45859 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389423 () Bool)

(declare-fun res!929693 () Bool)

(assert (=> b!1389423 (=> (not res!929693) (not e!787046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389423 (= res!929693 (validKeyInArray!0 (select (arr!45859 a!2901) j!112)))))

(declare-fun b!1389424 () Bool)

(declare-fun res!929690 () Bool)

(assert (=> b!1389424 (=> (not res!929690) (not e!787046))))

(assert (=> b!1389424 (= res!929690 (validKeyInArray!0 (select (arr!45859 a!2901) i!1037)))))

(assert (= (and start!119140 res!929691) b!1389421))

(assert (= (and b!1389421 res!929689) b!1389424))

(assert (= (and b!1389424 res!929690) b!1389423))

(assert (= (and b!1389423 res!929693) b!1389419))

(assert (= (and b!1389419 res!929694) b!1389420))

(assert (= (and b!1389420 res!929692) b!1389422))

(declare-fun m!1275119 () Bool)

(assert (=> b!1389420 m!1275119))

(declare-fun m!1275121 () Bool)

(assert (=> b!1389423 m!1275121))

(assert (=> b!1389423 m!1275121))

(declare-fun m!1275123 () Bool)

(assert (=> b!1389423 m!1275123))

(declare-fun m!1275125 () Bool)

(assert (=> b!1389419 m!1275125))

(declare-fun m!1275127 () Bool)

(assert (=> start!119140 m!1275127))

(declare-fun m!1275129 () Bool)

(assert (=> start!119140 m!1275129))

(declare-fun m!1275131 () Bool)

(assert (=> b!1389424 m!1275131))

(assert (=> b!1389424 m!1275131))

(declare-fun m!1275133 () Bool)

(assert (=> b!1389424 m!1275133))

(assert (=> b!1389422 m!1275121))

(assert (=> b!1389422 m!1275121))

(declare-fun m!1275135 () Bool)

(assert (=> b!1389422 m!1275135))

(assert (=> b!1389422 m!1275135))

(assert (=> b!1389422 m!1275121))

(declare-fun m!1275137 () Bool)

(assert (=> b!1389422 m!1275137))

(push 1)

(assert (not b!1389422))

(assert (not b!1389419))

(assert (not b!1389424))

(assert (not start!119140))

(assert (not b!1389423))

(assert (not b!1389420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

