; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127628 () Bool)

(assert start!127628)

(declare-fun b!1498788 () Bool)

(declare-fun res!1019939 () Bool)

(declare-fun e!839137 () Bool)

(assert (=> b!1498788 (=> (not res!1019939) (not e!839137))))

(declare-datatypes ((array!99922 0))(
  ( (array!99923 (arr!48216 (Array (_ BitVec 32) (_ BitVec 64))) (size!48767 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99922)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99922 (_ BitVec 32)) Bool)

(assert (=> b!1498788 (= res!1019939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498789 () Bool)

(declare-fun res!1019937 () Bool)

(assert (=> b!1498789 (=> (not res!1019937) (not e!839137))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498789 (= res!1019937 (validKeyInArray!0 (select (arr!48216 a!2850) i!996)))))

(declare-fun b!1498790 () Bool)

(declare-fun res!1019943 () Bool)

(assert (=> b!1498790 (=> (not res!1019943) (not e!839137))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498790 (= res!1019943 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48767 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48767 a!2850)) (= (select (arr!48216 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48216 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48767 a!2850))))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun b!1498791 () Bool)

(assert (=> b!1498791 (= e!839137 (and (= (select (arr!48216 a!2850) index!625) (select (arr!48216 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498792 () Bool)

(declare-fun res!1019940 () Bool)

(assert (=> b!1498792 (=> (not res!1019940) (not e!839137))))

(assert (=> b!1498792 (= res!1019940 (validKeyInArray!0 (select (arr!48216 a!2850) j!87)))))

(declare-fun b!1498793 () Bool)

(declare-fun res!1019938 () Bool)

(assert (=> b!1498793 (=> (not res!1019938) (not e!839137))))

(declare-datatypes ((SeekEntryResult!12445 0))(
  ( (MissingZero!12445 (index!52171 (_ BitVec 32))) (Found!12445 (index!52172 (_ BitVec 32))) (Intermediate!12445 (undefined!13257 Bool) (index!52173 (_ BitVec 32)) (x!133876 (_ BitVec 32))) (Undefined!12445) (MissingVacant!12445 (index!52174 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99922 (_ BitVec 32)) SeekEntryResult!12445)

(assert (=> b!1498793 (= res!1019938 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48216 a!2850) j!87) a!2850 mask!2661) (Found!12445 j!87)))))

(declare-fun res!1019941 () Bool)

(assert (=> start!127628 (=> (not res!1019941) (not e!839137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127628 (= res!1019941 (validMask!0 mask!2661))))

(assert (=> start!127628 e!839137))

(assert (=> start!127628 true))

(declare-fun array_inv!37161 (array!99922) Bool)

(assert (=> start!127628 (array_inv!37161 a!2850)))

(declare-fun b!1498794 () Bool)

(declare-fun res!1019936 () Bool)

(assert (=> b!1498794 (=> (not res!1019936) (not e!839137))))

(assert (=> b!1498794 (= res!1019936 (and (= (size!48767 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48767 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48767 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498795 () Bool)

(declare-fun res!1019942 () Bool)

(assert (=> b!1498795 (=> (not res!1019942) (not e!839137))))

(declare-datatypes ((List!34888 0))(
  ( (Nil!34885) (Cons!34884 (h!36282 (_ BitVec 64)) (t!49589 List!34888)) )
))
(declare-fun arrayNoDuplicates!0 (array!99922 (_ BitVec 32) List!34888) Bool)

(assert (=> b!1498795 (= res!1019942 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34885))))

(assert (= (and start!127628 res!1019941) b!1498794))

(assert (= (and b!1498794 res!1019936) b!1498789))

(assert (= (and b!1498789 res!1019937) b!1498792))

(assert (= (and b!1498792 res!1019940) b!1498788))

(assert (= (and b!1498788 res!1019939) b!1498795))

(assert (= (and b!1498795 res!1019942) b!1498790))

(assert (= (and b!1498790 res!1019943) b!1498793))

(assert (= (and b!1498793 res!1019938) b!1498791))

(declare-fun m!1381993 () Bool)

(assert (=> b!1498792 m!1381993))

(assert (=> b!1498792 m!1381993))

(declare-fun m!1381995 () Bool)

(assert (=> b!1498792 m!1381995))

(declare-fun m!1381997 () Bool)

(assert (=> b!1498795 m!1381997))

(assert (=> b!1498793 m!1381993))

(assert (=> b!1498793 m!1381993))

(declare-fun m!1381999 () Bool)

(assert (=> b!1498793 m!1381999))

(declare-fun m!1382001 () Bool)

(assert (=> start!127628 m!1382001))

(declare-fun m!1382003 () Bool)

(assert (=> start!127628 m!1382003))

(declare-fun m!1382005 () Bool)

(assert (=> b!1498790 m!1382005))

(declare-fun m!1382007 () Bool)

(assert (=> b!1498790 m!1382007))

(declare-fun m!1382009 () Bool)

(assert (=> b!1498790 m!1382009))

(declare-fun m!1382011 () Bool)

(assert (=> b!1498788 m!1382011))

(declare-fun m!1382013 () Bool)

(assert (=> b!1498791 m!1382013))

(assert (=> b!1498791 m!1381993))

(declare-fun m!1382015 () Bool)

(assert (=> b!1498789 m!1382015))

(assert (=> b!1498789 m!1382015))

(declare-fun m!1382017 () Bool)

(assert (=> b!1498789 m!1382017))

(push 1)

(assert (not b!1498788))

(assert (not b!1498792))

(assert (not b!1498789))

(assert (not b!1498793))

(assert (not b!1498795))

(assert (not start!127628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

