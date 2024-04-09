; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128098 () Bool)

(assert start!128098)

(declare-fun b!1504007 () Bool)

(declare-fun e!840817 () Bool)

(assert (=> b!1504007 (= e!840817 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653596 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504007 (= lt!653596 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504008 () Bool)

(declare-fun res!1024872 () Bool)

(assert (=> b!1504008 (=> (not res!1024872) (not e!840817))))

(declare-datatypes ((array!100287 0))(
  ( (array!100288 (arr!48394 (Array (_ BitVec 32) (_ BitVec 64))) (size!48945 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100287)

(declare-datatypes ((List!35066 0))(
  ( (Nil!35063) (Cons!35062 (h!36460 (_ BitVec 64)) (t!49767 List!35066)) )
))
(declare-fun arrayNoDuplicates!0 (array!100287 (_ BitVec 32) List!35066) Bool)

(assert (=> b!1504008 (= res!1024872 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35063))))

(declare-fun b!1504009 () Bool)

(declare-fun res!1024873 () Bool)

(assert (=> b!1504009 (=> (not res!1024873) (not e!840817))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1504009 (= res!1024873 (not (= (select (arr!48394 a!2850) index!625) (select (arr!48394 a!2850) j!87))))))

(declare-fun b!1504010 () Bool)

(declare-fun res!1024871 () Bool)

(assert (=> b!1504010 (=> (not res!1024871) (not e!840817))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504010 (= res!1024871 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48945 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48945 a!2850)) (= (select (arr!48394 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48394 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48945 a!2850))))))

(declare-fun b!1504011 () Bool)

(declare-fun res!1024870 () Bool)

(assert (=> b!1504011 (=> (not res!1024870) (not e!840817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504011 (= res!1024870 (validKeyInArray!0 (select (arr!48394 a!2850) j!87)))))

(declare-fun b!1504012 () Bool)

(declare-fun res!1024869 () Bool)

(assert (=> b!1504012 (=> (not res!1024869) (not e!840817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100287 (_ BitVec 32)) Bool)

(assert (=> b!1504012 (= res!1024869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504014 () Bool)

(declare-fun res!1024868 () Bool)

(assert (=> b!1504014 (=> (not res!1024868) (not e!840817))))

(assert (=> b!1504014 (= res!1024868 (validKeyInArray!0 (select (arr!48394 a!2850) i!996)))))

(declare-fun b!1504015 () Bool)

(declare-fun res!1024867 () Bool)

(assert (=> b!1504015 (=> (not res!1024867) (not e!840817))))

(declare-datatypes ((SeekEntryResult!12611 0))(
  ( (MissingZero!12611 (index!52835 (_ BitVec 32))) (Found!12611 (index!52836 (_ BitVec 32))) (Intermediate!12611 (undefined!13423 Bool) (index!52837 (_ BitVec 32)) (x!134534 (_ BitVec 32))) (Undefined!12611) (MissingVacant!12611 (index!52838 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100287 (_ BitVec 32)) SeekEntryResult!12611)

(assert (=> b!1504015 (= res!1024867 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48394 a!2850) j!87) a!2850 mask!2661) (Found!12611 j!87)))))

(declare-fun b!1504013 () Bool)

(declare-fun res!1024874 () Bool)

(assert (=> b!1504013 (=> (not res!1024874) (not e!840817))))

(assert (=> b!1504013 (= res!1024874 (and (= (size!48945 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48945 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48945 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1024875 () Bool)

(assert (=> start!128098 (=> (not res!1024875) (not e!840817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128098 (= res!1024875 (validMask!0 mask!2661))))

(assert (=> start!128098 e!840817))

(assert (=> start!128098 true))

(declare-fun array_inv!37339 (array!100287) Bool)

(assert (=> start!128098 (array_inv!37339 a!2850)))

(assert (= (and start!128098 res!1024875) b!1504013))

(assert (= (and b!1504013 res!1024874) b!1504014))

(assert (= (and b!1504014 res!1024868) b!1504011))

(assert (= (and b!1504011 res!1024870) b!1504012))

(assert (= (and b!1504012 res!1024869) b!1504008))

(assert (= (and b!1504008 res!1024872) b!1504010))

(assert (= (and b!1504010 res!1024871) b!1504015))

(assert (= (and b!1504015 res!1024867) b!1504009))

(assert (= (and b!1504009 res!1024873) b!1504007))

(declare-fun m!1387269 () Bool)

(assert (=> b!1504014 m!1387269))

(assert (=> b!1504014 m!1387269))

(declare-fun m!1387271 () Bool)

(assert (=> b!1504014 m!1387271))

(declare-fun m!1387273 () Bool)

(assert (=> b!1504008 m!1387273))

(declare-fun m!1387275 () Bool)

(assert (=> start!128098 m!1387275))

(declare-fun m!1387277 () Bool)

(assert (=> start!128098 m!1387277))

(declare-fun m!1387279 () Bool)

(assert (=> b!1504007 m!1387279))

(declare-fun m!1387281 () Bool)

(assert (=> b!1504015 m!1387281))

(assert (=> b!1504015 m!1387281))

(declare-fun m!1387283 () Bool)

(assert (=> b!1504015 m!1387283))

(assert (=> b!1504011 m!1387281))

(assert (=> b!1504011 m!1387281))

(declare-fun m!1387285 () Bool)

(assert (=> b!1504011 m!1387285))

(declare-fun m!1387287 () Bool)

(assert (=> b!1504012 m!1387287))

(declare-fun m!1387289 () Bool)

(assert (=> b!1504009 m!1387289))

(assert (=> b!1504009 m!1387281))

(declare-fun m!1387291 () Bool)

(assert (=> b!1504010 m!1387291))

(declare-fun m!1387293 () Bool)

(assert (=> b!1504010 m!1387293))

(declare-fun m!1387295 () Bool)

(assert (=> b!1504010 m!1387295))

(push 1)

(assert (not b!1504011))

(assert (not b!1504008))

(assert (not b!1504007))

(assert (not b!1504014))

(assert (not start!128098))

(assert (not b!1504012))

(assert (not b!1504015))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

