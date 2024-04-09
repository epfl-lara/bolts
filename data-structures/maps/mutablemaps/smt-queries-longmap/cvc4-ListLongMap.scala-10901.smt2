; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127718 () Bool)

(assert start!127718)

(declare-fun res!1021166 () Bool)

(declare-fun e!839488 () Bool)

(assert (=> start!127718 (=> (not res!1021166) (not e!839488))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127718 (= res!1021166 (validMask!0 mask!2661))))

(assert (=> start!127718 e!839488))

(assert (=> start!127718 true))

(declare-datatypes ((array!100012 0))(
  ( (array!100013 (arr!48261 (Array (_ BitVec 32) (_ BitVec 64))) (size!48812 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100012)

(declare-fun array_inv!37206 (array!100012) Bool)

(assert (=> start!127718 (array_inv!37206 a!2850)))

(declare-fun b!1500010 () Bool)

(declare-fun e!839487 () Bool)

(assert (=> b!1500010 (= e!839488 e!839487)))

(declare-fun res!1021159 () Bool)

(assert (=> b!1500010 (=> (not res!1021159) (not e!839487))))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652822 () (_ BitVec 32))

(assert (=> b!1500010 (= res!1021159 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652822 #b00000000000000000000000000000000) (bvslt lt!652822 (size!48812 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500010 (= lt!652822 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500011 () Bool)

(declare-fun res!1021162 () Bool)

(assert (=> b!1500011 (=> (not res!1021162) (not e!839488))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500011 (= res!1021162 (and (= (size!48812 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48812 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48812 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500012 () Bool)

(declare-fun res!1021158 () Bool)

(assert (=> b!1500012 (=> (not res!1021158) (not e!839488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500012 (= res!1021158 (validKeyInArray!0 (select (arr!48261 a!2850) i!996)))))

(declare-fun b!1500013 () Bool)

(declare-fun res!1021161 () Bool)

(assert (=> b!1500013 (=> (not res!1021161) (not e!839488))))

(assert (=> b!1500013 (= res!1021161 (not (= (select (arr!48261 a!2850) index!625) (select (arr!48261 a!2850) j!87))))))

(declare-fun b!1500014 () Bool)

(declare-fun res!1021165 () Bool)

(assert (=> b!1500014 (=> (not res!1021165) (not e!839488))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12490 0))(
  ( (MissingZero!12490 (index!52351 (_ BitVec 32))) (Found!12490 (index!52352 (_ BitVec 32))) (Intermediate!12490 (undefined!13302 Bool) (index!52353 (_ BitVec 32)) (x!134041 (_ BitVec 32))) (Undefined!12490) (MissingVacant!12490 (index!52354 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100012 (_ BitVec 32)) SeekEntryResult!12490)

(assert (=> b!1500014 (= res!1021165 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48261 a!2850) j!87) a!2850 mask!2661) (Found!12490 j!87)))))

(declare-fun b!1500015 () Bool)

(declare-fun res!1021163 () Bool)

(assert (=> b!1500015 (=> (not res!1021163) (not e!839488))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500015 (= res!1021163 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48812 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48812 a!2850)) (= (select (arr!48261 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48261 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48812 a!2850))))))

(declare-fun b!1500016 () Bool)

(declare-fun res!1021160 () Bool)

(assert (=> b!1500016 (=> (not res!1021160) (not e!839488))))

(assert (=> b!1500016 (= res!1021160 (validKeyInArray!0 (select (arr!48261 a!2850) j!87)))))

(declare-fun b!1500017 () Bool)

(declare-fun res!1021164 () Bool)

(assert (=> b!1500017 (=> (not res!1021164) (not e!839488))))

(declare-datatypes ((List!34933 0))(
  ( (Nil!34930) (Cons!34929 (h!36327 (_ BitVec 64)) (t!49634 List!34933)) )
))
(declare-fun arrayNoDuplicates!0 (array!100012 (_ BitVec 32) List!34933) Bool)

(assert (=> b!1500017 (= res!1021164 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34930))))

(declare-fun b!1500018 () Bool)

(declare-fun res!1021167 () Bool)

(assert (=> b!1500018 (=> (not res!1021167) (not e!839488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100012 (_ BitVec 32)) Bool)

(assert (=> b!1500018 (= res!1021167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500019 () Bool)

(assert (=> b!1500019 (= e!839487 false)))

(declare-fun lt!652821 () SeekEntryResult!12490)

(assert (=> b!1500019 (= lt!652821 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652822 vacantBefore!10 (select (arr!48261 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127718 res!1021166) b!1500011))

(assert (= (and b!1500011 res!1021162) b!1500012))

(assert (= (and b!1500012 res!1021158) b!1500016))

(assert (= (and b!1500016 res!1021160) b!1500018))

(assert (= (and b!1500018 res!1021167) b!1500017))

(assert (= (and b!1500017 res!1021164) b!1500015))

(assert (= (and b!1500015 res!1021163) b!1500014))

(assert (= (and b!1500014 res!1021165) b!1500013))

(assert (= (and b!1500013 res!1021161) b!1500010))

(assert (= (and b!1500010 res!1021159) b!1500019))

(declare-fun m!1383261 () Bool)

(assert (=> b!1500014 m!1383261))

(assert (=> b!1500014 m!1383261))

(declare-fun m!1383263 () Bool)

(assert (=> b!1500014 m!1383263))

(assert (=> b!1500019 m!1383261))

(assert (=> b!1500019 m!1383261))

(declare-fun m!1383265 () Bool)

(assert (=> b!1500019 m!1383265))

(declare-fun m!1383267 () Bool)

(assert (=> b!1500018 m!1383267))

(declare-fun m!1383269 () Bool)

(assert (=> b!1500012 m!1383269))

(assert (=> b!1500012 m!1383269))

(declare-fun m!1383271 () Bool)

(assert (=> b!1500012 m!1383271))

(declare-fun m!1383273 () Bool)

(assert (=> b!1500015 m!1383273))

(declare-fun m!1383275 () Bool)

(assert (=> b!1500015 m!1383275))

(declare-fun m!1383277 () Bool)

(assert (=> b!1500015 m!1383277))

(assert (=> b!1500016 m!1383261))

(assert (=> b!1500016 m!1383261))

(declare-fun m!1383279 () Bool)

(assert (=> b!1500016 m!1383279))

(declare-fun m!1383281 () Bool)

(assert (=> b!1500010 m!1383281))

(declare-fun m!1383283 () Bool)

(assert (=> b!1500017 m!1383283))

(declare-fun m!1383285 () Bool)

(assert (=> b!1500013 m!1383285))

(assert (=> b!1500013 m!1383261))

(declare-fun m!1383287 () Bool)

(assert (=> start!127718 m!1383287))

(declare-fun m!1383289 () Bool)

(assert (=> start!127718 m!1383289))

(push 1)

(assert (not b!1500017))

(assert (not b!1500014))

(assert (not b!1500010))

(assert (not b!1500012))

(assert (not b!1500019))

(assert (not b!1500016))

(assert (not start!127718))

(assert (not b!1500018))

(check-sat)

