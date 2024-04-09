; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127784 () Bool)

(assert start!127784)

(declare-fun b!1501008 () Bool)

(declare-fun res!1022160 () Bool)

(declare-fun e!839792 () Bool)

(assert (=> b!1501008 (=> (not res!1022160) (not e!839792))))

(declare-datatypes ((array!100078 0))(
  ( (array!100079 (arr!48294 (Array (_ BitVec 32) (_ BitVec 64))) (size!48845 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100078)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501008 (= res!1022160 (validKeyInArray!0 (select (arr!48294 a!2850) i!996)))))

(declare-fun b!1501009 () Bool)

(declare-fun e!839793 () Bool)

(declare-fun e!839795 () Bool)

(assert (=> b!1501009 (= e!839793 e!839795)))

(declare-fun res!1022157 () Bool)

(assert (=> b!1501009 (=> (not res!1022157) (not e!839795))))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653029 () (_ BitVec 32))

(assert (=> b!1501009 (= res!1022157 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653029 #b00000000000000000000000000000000) (bvslt lt!653029 (size!48845 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501009 (= lt!653029 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501010 () Bool)

(declare-fun res!1022163 () Bool)

(assert (=> b!1501010 (=> (not res!1022163) (not e!839792))))

(declare-datatypes ((List!34966 0))(
  ( (Nil!34963) (Cons!34962 (h!36360 (_ BitVec 64)) (t!49667 List!34966)) )
))
(declare-fun arrayNoDuplicates!0 (array!100078 (_ BitVec 32) List!34966) Bool)

(assert (=> b!1501010 (= res!1022163 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34963))))

(declare-fun res!1022156 () Bool)

(assert (=> start!127784 (=> (not res!1022156) (not e!839792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127784 (= res!1022156 (validMask!0 mask!2661))))

(assert (=> start!127784 e!839792))

(assert (=> start!127784 true))

(declare-fun array_inv!37239 (array!100078) Bool)

(assert (=> start!127784 (array_inv!37239 a!2850)))

(declare-fun b!1501011 () Bool)

(declare-fun res!1022161 () Bool)

(assert (=> b!1501011 (=> (not res!1022161) (not e!839792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100078 (_ BitVec 32)) Bool)

(assert (=> b!1501011 (= res!1022161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501012 () Bool)

(declare-fun res!1022162 () Bool)

(assert (=> b!1501012 (=> (not res!1022162) (not e!839795))))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12523 0))(
  ( (MissingZero!12523 (index!52483 (_ BitVec 32))) (Found!12523 (index!52484 (_ BitVec 32))) (Intermediate!12523 (undefined!13335 Bool) (index!52485 (_ BitVec 32)) (x!134162 (_ BitVec 32))) (Undefined!12523) (MissingVacant!12523 (index!52486 (_ BitVec 32))) )
))
(declare-fun lt!653027 () SeekEntryResult!12523)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100078 (_ BitVec 32)) SeekEntryResult!12523)

(assert (=> b!1501012 (= res!1022162 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653029 vacantBefore!10 (select (arr!48294 a!2850) j!87) a!2850 mask!2661) lt!653027))))

(declare-fun b!1501013 () Bool)

(assert (=> b!1501013 (= e!839792 e!839793)))

(declare-fun res!1022164 () Bool)

(assert (=> b!1501013 (=> (not res!1022164) (not e!839793))))

(assert (=> b!1501013 (= res!1022164 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48294 a!2850) j!87) a!2850 mask!2661) lt!653027))))

(assert (=> b!1501013 (= lt!653027 (Found!12523 j!87))))

(declare-fun b!1501014 () Bool)

(declare-fun res!1022165 () Bool)

(assert (=> b!1501014 (=> (not res!1022165) (not e!839792))))

(assert (=> b!1501014 (= res!1022165 (validKeyInArray!0 (select (arr!48294 a!2850) j!87)))))

(declare-fun b!1501015 () Bool)

(declare-fun res!1022166 () Bool)

(assert (=> b!1501015 (=> (not res!1022166) (not e!839792))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501015 (= res!1022166 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48845 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48845 a!2850)) (= (select (arr!48294 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48294 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48845 a!2850))))))

(declare-fun b!1501016 () Bool)

(assert (=> b!1501016 (= e!839795 (not true))))

(assert (=> b!1501016 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653029 vacantAfter!10 (select (store (arr!48294 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100079 (store (arr!48294 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48845 a!2850)) mask!2661) lt!653027)))

(declare-datatypes ((Unit!50154 0))(
  ( (Unit!50155) )
))
(declare-fun lt!653028 () Unit!50154)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100078 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50154)

(assert (=> b!1501016 (= lt!653028 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653029 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501017 () Bool)

(declare-fun res!1022158 () Bool)

(assert (=> b!1501017 (=> (not res!1022158) (not e!839793))))

(assert (=> b!1501017 (= res!1022158 (not (= (select (arr!48294 a!2850) index!625) (select (arr!48294 a!2850) j!87))))))

(declare-fun b!1501018 () Bool)

(declare-fun res!1022159 () Bool)

(assert (=> b!1501018 (=> (not res!1022159) (not e!839792))))

(assert (=> b!1501018 (= res!1022159 (and (= (size!48845 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48845 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48845 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127784 res!1022156) b!1501018))

(assert (= (and b!1501018 res!1022159) b!1501008))

(assert (= (and b!1501008 res!1022160) b!1501014))

(assert (= (and b!1501014 res!1022165) b!1501011))

(assert (= (and b!1501011 res!1022161) b!1501010))

(assert (= (and b!1501010 res!1022163) b!1501015))

(assert (= (and b!1501015 res!1022166) b!1501013))

(assert (= (and b!1501013 res!1022164) b!1501017))

(assert (= (and b!1501017 res!1022158) b!1501009))

(assert (= (and b!1501009 res!1022157) b!1501012))

(assert (= (and b!1501012 res!1022162) b!1501016))

(declare-fun m!1384263 () Bool)

(assert (=> b!1501014 m!1384263))

(assert (=> b!1501014 m!1384263))

(declare-fun m!1384265 () Bool)

(assert (=> b!1501014 m!1384265))

(declare-fun m!1384267 () Bool)

(assert (=> b!1501008 m!1384267))

(assert (=> b!1501008 m!1384267))

(declare-fun m!1384269 () Bool)

(assert (=> b!1501008 m!1384269))

(declare-fun m!1384271 () Bool)

(assert (=> start!127784 m!1384271))

(declare-fun m!1384273 () Bool)

(assert (=> start!127784 m!1384273))

(declare-fun m!1384275 () Bool)

(assert (=> b!1501016 m!1384275))

(declare-fun m!1384277 () Bool)

(assert (=> b!1501016 m!1384277))

(assert (=> b!1501016 m!1384277))

(declare-fun m!1384279 () Bool)

(assert (=> b!1501016 m!1384279))

(declare-fun m!1384281 () Bool)

(assert (=> b!1501016 m!1384281))

(declare-fun m!1384283 () Bool)

(assert (=> b!1501015 m!1384283))

(assert (=> b!1501015 m!1384275))

(declare-fun m!1384285 () Bool)

(assert (=> b!1501015 m!1384285))

(declare-fun m!1384287 () Bool)

(assert (=> b!1501010 m!1384287))

(declare-fun m!1384289 () Bool)

(assert (=> b!1501009 m!1384289))

(assert (=> b!1501012 m!1384263))

(assert (=> b!1501012 m!1384263))

(declare-fun m!1384291 () Bool)

(assert (=> b!1501012 m!1384291))

(assert (=> b!1501013 m!1384263))

(assert (=> b!1501013 m!1384263))

(declare-fun m!1384293 () Bool)

(assert (=> b!1501013 m!1384293))

(declare-fun m!1384295 () Bool)

(assert (=> b!1501011 m!1384295))

(declare-fun m!1384297 () Bool)

(assert (=> b!1501017 m!1384297))

(assert (=> b!1501017 m!1384263))

(push 1)

(assert (not b!1501012))

(assert (not b!1501014))

(assert (not b!1501010))

(assert (not b!1501008))

