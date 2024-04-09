; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128230 () Bool)

(assert start!128230)

(declare-fun b!1505010 () Bool)

(declare-fun res!1025679 () Bool)

(declare-fun e!841227 () Bool)

(assert (=> b!1505010 (=> (not res!1025679) (not e!841227))))

(declare-datatypes ((array!100341 0))(
  ( (array!100342 (arr!48418 (Array (_ BitVec 32) (_ BitVec 64))) (size!48969 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100341)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1505010 (= res!1025679 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48969 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48969 a!2850)) (= (select (arr!48418 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48418 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48969 a!2850))))))

(declare-fun b!1505011 () Bool)

(declare-fun e!841229 () Bool)

(assert (=> b!1505011 (= e!841229 (not true))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12635 0))(
  ( (MissingZero!12635 (index!52931 (_ BitVec 32))) (Found!12635 (index!52932 (_ BitVec 32))) (Intermediate!12635 (undefined!13447 Bool) (index!52933 (_ BitVec 32)) (x!134634 (_ BitVec 32))) (Undefined!12635) (MissingVacant!12635 (index!52934 (_ BitVec 32))) )
))
(declare-fun lt!653842 () SeekEntryResult!12635)

(declare-fun lt!653840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100341 (_ BitVec 32)) SeekEntryResult!12635)

(assert (=> b!1505011 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653840 vacantAfter!10 (select (store (arr!48418 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100342 (store (arr!48418 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48969 a!2850)) mask!2661) lt!653842)))

(declare-datatypes ((Unit!50232 0))(
  ( (Unit!50233) )
))
(declare-fun lt!653841 () Unit!50232)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50232)

(assert (=> b!1505011 (= lt!653841 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653840 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1505012 () Bool)

(declare-fun res!1025675 () Bool)

(assert (=> b!1505012 (=> (not res!1025675) (not e!841227))))

(declare-datatypes ((List!35090 0))(
  ( (Nil!35087) (Cons!35086 (h!36484 (_ BitVec 64)) (t!49791 List!35090)) )
))
(declare-fun arrayNoDuplicates!0 (array!100341 (_ BitVec 32) List!35090) Bool)

(assert (=> b!1505012 (= res!1025675 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35087))))

(declare-fun b!1505013 () Bool)

(declare-fun e!841226 () Bool)

(assert (=> b!1505013 (= e!841227 e!841226)))

(declare-fun res!1025678 () Bool)

(assert (=> b!1505013 (=> (not res!1025678) (not e!841226))))

(assert (=> b!1505013 (= res!1025678 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48418 a!2850) j!87) a!2850 mask!2661) lt!653842))))

(assert (=> b!1505013 (= lt!653842 (Found!12635 j!87))))

(declare-fun b!1505014 () Bool)

(declare-fun res!1025672 () Bool)

(assert (=> b!1505014 (=> (not res!1025672) (not e!841226))))

(assert (=> b!1505014 (= res!1025672 (not (= (select (arr!48418 a!2850) index!625) (select (arr!48418 a!2850) j!87))))))

(declare-fun b!1505015 () Bool)

(declare-fun res!1025680 () Bool)

(assert (=> b!1505015 (=> (not res!1025680) (not e!841227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100341 (_ BitVec 32)) Bool)

(assert (=> b!1505015 (= res!1025680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1505016 () Bool)

(declare-fun res!1025677 () Bool)

(assert (=> b!1505016 (=> (not res!1025677) (not e!841227))))

(assert (=> b!1505016 (= res!1025677 (and (= (size!48969 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48969 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48969 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1025674 () Bool)

(assert (=> start!128230 (=> (not res!1025674) (not e!841227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128230 (= res!1025674 (validMask!0 mask!2661))))

(assert (=> start!128230 e!841227))

(assert (=> start!128230 true))

(declare-fun array_inv!37363 (array!100341) Bool)

(assert (=> start!128230 (array_inv!37363 a!2850)))

(declare-fun b!1505017 () Bool)

(declare-fun res!1025681 () Bool)

(assert (=> b!1505017 (=> (not res!1025681) (not e!841227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505017 (= res!1025681 (validKeyInArray!0 (select (arr!48418 a!2850) j!87)))))

(declare-fun b!1505018 () Bool)

(declare-fun res!1025682 () Bool)

(assert (=> b!1505018 (=> (not res!1025682) (not e!841227))))

(assert (=> b!1505018 (= res!1025682 (validKeyInArray!0 (select (arr!48418 a!2850) i!996)))))

(declare-fun b!1505019 () Bool)

(declare-fun res!1025673 () Bool)

(assert (=> b!1505019 (=> (not res!1025673) (not e!841229))))

(assert (=> b!1505019 (= res!1025673 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653840 vacantBefore!10 (select (arr!48418 a!2850) j!87) a!2850 mask!2661) lt!653842))))

(declare-fun b!1505020 () Bool)

(assert (=> b!1505020 (= e!841226 e!841229)))

(declare-fun res!1025676 () Bool)

(assert (=> b!1505020 (=> (not res!1025676) (not e!841229))))

(assert (=> b!1505020 (= res!1025676 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653840 #b00000000000000000000000000000000) (bvslt lt!653840 (size!48969 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1505020 (= lt!653840 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!128230 res!1025674) b!1505016))

(assert (= (and b!1505016 res!1025677) b!1505018))

(assert (= (and b!1505018 res!1025682) b!1505017))

(assert (= (and b!1505017 res!1025681) b!1505015))

(assert (= (and b!1505015 res!1025680) b!1505012))

(assert (= (and b!1505012 res!1025675) b!1505010))

(assert (= (and b!1505010 res!1025679) b!1505013))

(assert (= (and b!1505013 res!1025678) b!1505014))

(assert (= (and b!1505014 res!1025672) b!1505020))

(assert (= (and b!1505020 res!1025676) b!1505019))

(assert (= (and b!1505019 res!1025673) b!1505011))

(declare-fun m!1388175 () Bool)

(assert (=> b!1505012 m!1388175))

(declare-fun m!1388177 () Bool)

(assert (=> b!1505019 m!1388177))

(assert (=> b!1505019 m!1388177))

(declare-fun m!1388179 () Bool)

(assert (=> b!1505019 m!1388179))

(declare-fun m!1388181 () Bool)

(assert (=> b!1505020 m!1388181))

(assert (=> b!1505013 m!1388177))

(assert (=> b!1505013 m!1388177))

(declare-fun m!1388183 () Bool)

(assert (=> b!1505013 m!1388183))

(declare-fun m!1388185 () Bool)

(assert (=> b!1505010 m!1388185))

(declare-fun m!1388187 () Bool)

(assert (=> b!1505010 m!1388187))

(declare-fun m!1388189 () Bool)

(assert (=> b!1505010 m!1388189))

(assert (=> b!1505011 m!1388187))

(declare-fun m!1388191 () Bool)

(assert (=> b!1505011 m!1388191))

(assert (=> b!1505011 m!1388191))

(declare-fun m!1388193 () Bool)

(assert (=> b!1505011 m!1388193))

(declare-fun m!1388195 () Bool)

(assert (=> b!1505011 m!1388195))

(assert (=> b!1505017 m!1388177))

(assert (=> b!1505017 m!1388177))

(declare-fun m!1388197 () Bool)

(assert (=> b!1505017 m!1388197))

(declare-fun m!1388199 () Bool)

(assert (=> b!1505014 m!1388199))

(assert (=> b!1505014 m!1388177))

(declare-fun m!1388201 () Bool)

(assert (=> start!128230 m!1388201))

(declare-fun m!1388203 () Bool)

(assert (=> start!128230 m!1388203))

(declare-fun m!1388205 () Bool)

(assert (=> b!1505018 m!1388205))

(assert (=> b!1505018 m!1388205))

(declare-fun m!1388207 () Bool)

(assert (=> b!1505018 m!1388207))

(declare-fun m!1388209 () Bool)

(assert (=> b!1505015 m!1388209))

(push 1)

