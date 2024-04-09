; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127634 () Bool)

(assert start!127634)

(declare-fun b!1498852 () Bool)

(declare-fun res!1020003 () Bool)

(declare-fun e!839155 () Bool)

(assert (=> b!1498852 (=> (not res!1020003) (not e!839155))))

(declare-datatypes ((array!99928 0))(
  ( (array!99929 (arr!48219 (Array (_ BitVec 32) (_ BitVec 64))) (size!48770 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99928)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498852 (= res!1020003 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48770 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48770 a!2850)) (= (select (arr!48219 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48219 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48770 a!2850))))))

(declare-fun b!1498853 () Bool)

(declare-fun res!1020004 () Bool)

(assert (=> b!1498853 (=> (not res!1020004) (not e!839155))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498853 (= res!1020004 (validKeyInArray!0 (select (arr!48219 a!2850) j!87)))))

(declare-fun b!1498854 () Bool)

(declare-fun res!1020005 () Bool)

(assert (=> b!1498854 (=> (not res!1020005) (not e!839155))))

(declare-datatypes ((List!34891 0))(
  ( (Nil!34888) (Cons!34887 (h!36285 (_ BitVec 64)) (t!49592 List!34891)) )
))
(declare-fun arrayNoDuplicates!0 (array!99928 (_ BitVec 32) List!34891) Bool)

(assert (=> b!1498854 (= res!1020005 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34888))))

(declare-fun b!1498855 () Bool)

(declare-fun res!1020001 () Bool)

(assert (=> b!1498855 (=> (not res!1020001) (not e!839155))))

(assert (=> b!1498855 (= res!1020001 (validKeyInArray!0 (select (arr!48219 a!2850) i!996)))))

(declare-fun b!1498856 () Bool)

(declare-fun res!1020006 () Bool)

(assert (=> b!1498856 (=> (not res!1020006) (not e!839155))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99928 (_ BitVec 32)) Bool)

(assert (=> b!1498856 (= res!1020006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498857 () Bool)

(declare-fun res!1020000 () Bool)

(assert (=> b!1498857 (=> (not res!1020000) (not e!839155))))

(assert (=> b!1498857 (= res!1020000 (and (= (size!48770 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48770 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48770 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1020002 () Bool)

(assert (=> start!127634 (=> (not res!1020002) (not e!839155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127634 (= res!1020002 (validMask!0 mask!2661))))

(assert (=> start!127634 e!839155))

(assert (=> start!127634 true))

(declare-fun array_inv!37164 (array!99928) Bool)

(assert (=> start!127634 (array_inv!37164 a!2850)))

(declare-fun b!1498858 () Bool)

(assert (=> b!1498858 (= e!839155 false)))

(declare-datatypes ((SeekEntryResult!12448 0))(
  ( (MissingZero!12448 (index!52183 (_ BitVec 32))) (Found!12448 (index!52184 (_ BitVec 32))) (Intermediate!12448 (undefined!13260 Bool) (index!52185 (_ BitVec 32)) (x!133887 (_ BitVec 32))) (Undefined!12448) (MissingVacant!12448 (index!52186 (_ BitVec 32))) )
))
(declare-fun lt!652642 () SeekEntryResult!12448)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99928 (_ BitVec 32)) SeekEntryResult!12448)

(assert (=> b!1498858 (= lt!652642 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48219 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127634 res!1020002) b!1498857))

(assert (= (and b!1498857 res!1020000) b!1498855))

(assert (= (and b!1498855 res!1020001) b!1498853))

(assert (= (and b!1498853 res!1020004) b!1498856))

(assert (= (and b!1498856 res!1020006) b!1498854))

(assert (= (and b!1498854 res!1020005) b!1498852))

(assert (= (and b!1498852 res!1020003) b!1498858))

(declare-fun m!1382067 () Bool)

(assert (=> b!1498854 m!1382067))

(declare-fun m!1382069 () Bool)

(assert (=> start!127634 m!1382069))

(declare-fun m!1382071 () Bool)

(assert (=> start!127634 m!1382071))

(declare-fun m!1382073 () Bool)

(assert (=> b!1498856 m!1382073))

(declare-fun m!1382075 () Bool)

(assert (=> b!1498853 m!1382075))

(assert (=> b!1498853 m!1382075))

(declare-fun m!1382077 () Bool)

(assert (=> b!1498853 m!1382077))

(assert (=> b!1498858 m!1382075))

(assert (=> b!1498858 m!1382075))

(declare-fun m!1382079 () Bool)

(assert (=> b!1498858 m!1382079))

(declare-fun m!1382081 () Bool)

(assert (=> b!1498855 m!1382081))

(assert (=> b!1498855 m!1382081))

(declare-fun m!1382083 () Bool)

(assert (=> b!1498855 m!1382083))

(declare-fun m!1382085 () Bool)

(assert (=> b!1498852 m!1382085))

(declare-fun m!1382087 () Bool)

(assert (=> b!1498852 m!1382087))

(declare-fun m!1382089 () Bool)

(assert (=> b!1498852 m!1382089))

(push 1)

(assert (not b!1498858))

(assert (not b!1498853))

(assert (not start!127634))

(assert (not b!1498854))

(assert (not b!1498856))

(assert (not b!1498855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

