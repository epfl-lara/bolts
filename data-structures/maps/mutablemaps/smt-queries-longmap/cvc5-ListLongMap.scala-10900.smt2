; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127708 () Bool)

(assert start!127708)

(declare-fun b!1499860 () Bool)

(declare-fun e!839442 () Bool)

(declare-fun e!839443 () Bool)

(assert (=> b!1499860 (= e!839442 e!839443)))

(declare-fun res!1021017 () Bool)

(assert (=> b!1499860 (=> (not res!1021017) (not e!839443))))

(declare-datatypes ((array!100002 0))(
  ( (array!100003 (arr!48256 (Array (_ BitVec 32) (_ BitVec 64))) (size!48807 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100002)

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652792 () (_ BitVec 32))

(assert (=> b!1499860 (= res!1021017 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652792 #b00000000000000000000000000000000) (bvslt lt!652792 (size!48807 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499860 (= lt!652792 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1021010 () Bool)

(assert (=> start!127708 (=> (not res!1021010) (not e!839442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127708 (= res!1021010 (validMask!0 mask!2661))))

(assert (=> start!127708 e!839442))

(assert (=> start!127708 true))

(declare-fun array_inv!37201 (array!100002) Bool)

(assert (=> start!127708 (array_inv!37201 a!2850)))

(declare-fun b!1499861 () Bool)

(declare-fun res!1021009 () Bool)

(assert (=> b!1499861 (=> (not res!1021009) (not e!839442))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499861 (= res!1021009 (validKeyInArray!0 (select (arr!48256 a!2850) j!87)))))

(declare-fun b!1499862 () Bool)

(declare-fun res!1021008 () Bool)

(assert (=> b!1499862 (=> (not res!1021008) (not e!839442))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499862 (= res!1021008 (and (= (size!48807 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48807 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48807 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499863 () Bool)

(declare-fun res!1021015 () Bool)

(assert (=> b!1499863 (=> (not res!1021015) (not e!839442))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12485 0))(
  ( (MissingZero!12485 (index!52331 (_ BitVec 32))) (Found!12485 (index!52332 (_ BitVec 32))) (Intermediate!12485 (undefined!13297 Bool) (index!52333 (_ BitVec 32)) (x!134028 (_ BitVec 32))) (Undefined!12485) (MissingVacant!12485 (index!52334 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100002 (_ BitVec 32)) SeekEntryResult!12485)

(assert (=> b!1499863 (= res!1021015 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48256 a!2850) j!87) a!2850 mask!2661) (Found!12485 j!87)))))

(declare-fun b!1499864 () Bool)

(declare-fun res!1021013 () Bool)

(assert (=> b!1499864 (=> (not res!1021013) (not e!839442))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499864 (= res!1021013 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48807 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48807 a!2850)) (= (select (arr!48256 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48256 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48807 a!2850))))))

(declare-fun b!1499865 () Bool)

(declare-fun res!1021016 () Bool)

(assert (=> b!1499865 (=> (not res!1021016) (not e!839442))))

(assert (=> b!1499865 (= res!1021016 (not (= (select (arr!48256 a!2850) index!625) (select (arr!48256 a!2850) j!87))))))

(declare-fun b!1499866 () Bool)

(declare-fun res!1021011 () Bool)

(assert (=> b!1499866 (=> (not res!1021011) (not e!839442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100002 (_ BitVec 32)) Bool)

(assert (=> b!1499866 (= res!1021011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499867 () Bool)

(assert (=> b!1499867 (= e!839443 false)))

(declare-fun lt!652791 () SeekEntryResult!12485)

(assert (=> b!1499867 (= lt!652791 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652792 vacantBefore!10 (select (arr!48256 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499868 () Bool)

(declare-fun res!1021012 () Bool)

(assert (=> b!1499868 (=> (not res!1021012) (not e!839442))))

(declare-datatypes ((List!34928 0))(
  ( (Nil!34925) (Cons!34924 (h!36322 (_ BitVec 64)) (t!49629 List!34928)) )
))
(declare-fun arrayNoDuplicates!0 (array!100002 (_ BitVec 32) List!34928) Bool)

(assert (=> b!1499868 (= res!1021012 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34925))))

(declare-fun b!1499869 () Bool)

(declare-fun res!1021014 () Bool)

(assert (=> b!1499869 (=> (not res!1021014) (not e!839442))))

(assert (=> b!1499869 (= res!1021014 (validKeyInArray!0 (select (arr!48256 a!2850) i!996)))))

(assert (= (and start!127708 res!1021010) b!1499862))

(assert (= (and b!1499862 res!1021008) b!1499869))

(assert (= (and b!1499869 res!1021014) b!1499861))

(assert (= (and b!1499861 res!1021009) b!1499866))

(assert (= (and b!1499866 res!1021011) b!1499868))

(assert (= (and b!1499868 res!1021012) b!1499864))

(assert (= (and b!1499864 res!1021013) b!1499863))

(assert (= (and b!1499863 res!1021015) b!1499865))

(assert (= (and b!1499865 res!1021016) b!1499860))

(assert (= (and b!1499860 res!1021017) b!1499867))

(declare-fun m!1383111 () Bool)

(assert (=> b!1499860 m!1383111))

(declare-fun m!1383113 () Bool)

(assert (=> start!127708 m!1383113))

(declare-fun m!1383115 () Bool)

(assert (=> start!127708 m!1383115))

(declare-fun m!1383117 () Bool)

(assert (=> b!1499864 m!1383117))

(declare-fun m!1383119 () Bool)

(assert (=> b!1499864 m!1383119))

(declare-fun m!1383121 () Bool)

(assert (=> b!1499864 m!1383121))

(declare-fun m!1383123 () Bool)

(assert (=> b!1499865 m!1383123))

(declare-fun m!1383125 () Bool)

(assert (=> b!1499865 m!1383125))

(assert (=> b!1499863 m!1383125))

(assert (=> b!1499863 m!1383125))

(declare-fun m!1383127 () Bool)

(assert (=> b!1499863 m!1383127))

(declare-fun m!1383129 () Bool)

(assert (=> b!1499869 m!1383129))

(assert (=> b!1499869 m!1383129))

(declare-fun m!1383131 () Bool)

(assert (=> b!1499869 m!1383131))

(declare-fun m!1383133 () Bool)

(assert (=> b!1499868 m!1383133))

(assert (=> b!1499861 m!1383125))

(assert (=> b!1499861 m!1383125))

(declare-fun m!1383135 () Bool)

(assert (=> b!1499861 m!1383135))

(assert (=> b!1499867 m!1383125))

(assert (=> b!1499867 m!1383125))

(declare-fun m!1383137 () Bool)

(assert (=> b!1499867 m!1383137))

(declare-fun m!1383139 () Bool)

(assert (=> b!1499866 m!1383139))

(push 1)

