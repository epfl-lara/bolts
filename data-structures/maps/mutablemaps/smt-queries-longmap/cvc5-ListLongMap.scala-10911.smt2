; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127774 () Bool)

(assert start!127774)

(declare-fun b!1500850 () Bool)

(declare-fun res!1022000 () Bool)

(declare-fun e!839739 () Bool)

(assert (=> b!1500850 (=> (not res!1022000) (not e!839739))))

(declare-datatypes ((array!100068 0))(
  ( (array!100069 (arr!48289 (Array (_ BitVec 32) (_ BitVec 64))) (size!48840 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100068)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100068 (_ BitVec 32)) Bool)

(assert (=> b!1500850 (= res!1022000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500851 () Bool)

(declare-fun res!1022003 () Bool)

(assert (=> b!1500851 (=> (not res!1022003) (not e!839739))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12518 0))(
  ( (MissingZero!12518 (index!52463 (_ BitVec 32))) (Found!12518 (index!52464 (_ BitVec 32))) (Intermediate!12518 (undefined!13330 Bool) (index!52465 (_ BitVec 32)) (x!134149 (_ BitVec 32))) (Undefined!12518) (MissingVacant!12518 (index!52466 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100068 (_ BitVec 32)) SeekEntryResult!12518)

(assert (=> b!1500851 (= res!1022003 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48289 a!2850) j!87) a!2850 mask!2661) (Found!12518 j!87)))))

(declare-fun b!1500852 () Bool)

(declare-fun res!1021998 () Bool)

(assert (=> b!1500852 (=> (not res!1021998) (not e!839739))))

(declare-datatypes ((List!34961 0))(
  ( (Nil!34958) (Cons!34957 (h!36355 (_ BitVec 64)) (t!49662 List!34961)) )
))
(declare-fun arrayNoDuplicates!0 (array!100068 (_ BitVec 32) List!34961) Bool)

(assert (=> b!1500852 (= res!1021998 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34958))))

(declare-fun b!1500853 () Bool)

(declare-fun res!1022004 () Bool)

(assert (=> b!1500853 (=> (not res!1022004) (not e!839739))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500853 (= res!1022004 (validKeyInArray!0 (select (arr!48289 a!2850) i!996)))))

(declare-fun b!1500854 () Bool)

(declare-fun res!1021999 () Bool)

(assert (=> b!1500854 (=> (not res!1021999) (not e!839739))))

(assert (=> b!1500854 (= res!1021999 (validKeyInArray!0 (select (arr!48289 a!2850) j!87)))))

(declare-fun b!1500855 () Bool)

(declare-fun e!839740 () Bool)

(assert (=> b!1500855 (= e!839740 false)))

(declare-fun lt!652989 () (_ BitVec 32))

(declare-fun lt!652990 () SeekEntryResult!12518)

(assert (=> b!1500855 (= lt!652990 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652989 vacantBefore!10 (select (arr!48289 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500856 () Bool)

(declare-fun res!1022005 () Bool)

(assert (=> b!1500856 (=> (not res!1022005) (not e!839739))))

(assert (=> b!1500856 (= res!1022005 (and (= (size!48840 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48840 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48840 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500857 () Bool)

(declare-fun res!1022006 () Bool)

(assert (=> b!1500857 (=> (not res!1022006) (not e!839739))))

(assert (=> b!1500857 (= res!1022006 (not (= (select (arr!48289 a!2850) index!625) (select (arr!48289 a!2850) j!87))))))

(declare-fun b!1500858 () Bool)

(assert (=> b!1500858 (= e!839739 e!839740)))

(declare-fun res!1022007 () Bool)

(assert (=> b!1500858 (=> (not res!1022007) (not e!839740))))

(assert (=> b!1500858 (= res!1022007 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652989 #b00000000000000000000000000000000) (bvslt lt!652989 (size!48840 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500858 (= lt!652989 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500859 () Bool)

(declare-fun res!1022001 () Bool)

(assert (=> b!1500859 (=> (not res!1022001) (not e!839739))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500859 (= res!1022001 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48840 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48840 a!2850)) (= (select (arr!48289 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48289 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48840 a!2850))))))

(declare-fun res!1022002 () Bool)

(assert (=> start!127774 (=> (not res!1022002) (not e!839739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127774 (= res!1022002 (validMask!0 mask!2661))))

(assert (=> start!127774 e!839739))

(assert (=> start!127774 true))

(declare-fun array_inv!37234 (array!100068) Bool)

(assert (=> start!127774 (array_inv!37234 a!2850)))

(assert (= (and start!127774 res!1022002) b!1500856))

(assert (= (and b!1500856 res!1022005) b!1500853))

(assert (= (and b!1500853 res!1022004) b!1500854))

(assert (= (and b!1500854 res!1021999) b!1500850))

(assert (= (and b!1500850 res!1022000) b!1500852))

(assert (= (and b!1500852 res!1021998) b!1500859))

(assert (= (and b!1500859 res!1022001) b!1500851))

(assert (= (and b!1500851 res!1022003) b!1500857))

(assert (= (and b!1500857 res!1022006) b!1500858))

(assert (= (and b!1500858 res!1022007) b!1500855))

(declare-fun m!1384101 () Bool)

(assert (=> b!1500854 m!1384101))

(assert (=> b!1500854 m!1384101))

(declare-fun m!1384103 () Bool)

(assert (=> b!1500854 m!1384103))

(assert (=> b!1500851 m!1384101))

(assert (=> b!1500851 m!1384101))

(declare-fun m!1384105 () Bool)

(assert (=> b!1500851 m!1384105))

(declare-fun m!1384107 () Bool)

(assert (=> b!1500850 m!1384107))

(declare-fun m!1384109 () Bool)

(assert (=> start!127774 m!1384109))

(declare-fun m!1384111 () Bool)

(assert (=> start!127774 m!1384111))

(declare-fun m!1384113 () Bool)

(assert (=> b!1500859 m!1384113))

(declare-fun m!1384115 () Bool)

(assert (=> b!1500859 m!1384115))

(declare-fun m!1384117 () Bool)

(assert (=> b!1500859 m!1384117))

(declare-fun m!1384119 () Bool)

(assert (=> b!1500858 m!1384119))

(declare-fun m!1384121 () Bool)

(assert (=> b!1500852 m!1384121))

(declare-fun m!1384123 () Bool)

(assert (=> b!1500853 m!1384123))

(assert (=> b!1500853 m!1384123))

(declare-fun m!1384125 () Bool)

(assert (=> b!1500853 m!1384125))

(assert (=> b!1500855 m!1384101))

(assert (=> b!1500855 m!1384101))

(declare-fun m!1384127 () Bool)

(assert (=> b!1500855 m!1384127))

(declare-fun m!1384129 () Bool)

(assert (=> b!1500857 m!1384129))

(assert (=> b!1500857 m!1384101))

(push 1)

