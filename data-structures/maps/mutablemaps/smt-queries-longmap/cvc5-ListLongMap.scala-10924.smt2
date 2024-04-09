; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127852 () Bool)

(assert start!127852)

(declare-fun b!1501915 () Bool)

(declare-fun res!1023069 () Bool)

(declare-fun e!840133 () Bool)

(assert (=> b!1501915 (=> (not res!1023069) (not e!840133))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100146 0))(
  ( (array!100147 (arr!48328 (Array (_ BitVec 32) (_ BitVec 64))) (size!48879 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100146)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501915 (= res!1023069 (and (= (size!48879 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48879 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48879 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501916 () Bool)

(declare-fun res!1023067 () Bool)

(assert (=> b!1501916 (=> (not res!1023067) (not e!840133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501916 (= res!1023067 (validKeyInArray!0 (select (arr!48328 a!2850) i!996)))))

(declare-fun b!1501917 () Bool)

(declare-fun res!1023064 () Bool)

(assert (=> b!1501917 (=> (not res!1023064) (not e!840133))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(assert (=> b!1501917 (= res!1023064 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48879 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48879 a!2850)) (= (select (arr!48328 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48328 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48879 a!2850))))))

(declare-fun b!1501918 () Bool)

(declare-fun res!1023063 () Bool)

(assert (=> b!1501918 (=> (not res!1023063) (not e!840133))))

(assert (=> b!1501918 (= res!1023063 (validKeyInArray!0 (select (arr!48328 a!2850) j!87)))))

(declare-fun res!1023066 () Bool)

(assert (=> start!127852 (=> (not res!1023066) (not e!840133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127852 (= res!1023066 (validMask!0 mask!2661))))

(assert (=> start!127852 e!840133))

(assert (=> start!127852 true))

(declare-fun array_inv!37273 (array!100146) Bool)

(assert (=> start!127852 (array_inv!37273 a!2850)))

(declare-fun b!1501919 () Bool)

(assert (=> b!1501919 (= e!840133 false)))

(declare-datatypes ((SeekEntryResult!12545 0))(
  ( (MissingZero!12545 (index!52571 (_ BitVec 32))) (Found!12545 (index!52572 (_ BitVec 32))) (Intermediate!12545 (undefined!13357 Bool) (index!52573 (_ BitVec 32)) (x!134280 (_ BitVec 32))) (Undefined!12545) (MissingVacant!12545 (index!52574 (_ BitVec 32))) )
))
(declare-fun lt!653257 () SeekEntryResult!12545)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100146 (_ BitVec 32)) SeekEntryResult!12545)

(assert (=> b!1501919 (= lt!653257 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48328 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1501920 () Bool)

(declare-fun res!1023068 () Bool)

(assert (=> b!1501920 (=> (not res!1023068) (not e!840133))))

(declare-datatypes ((List!35000 0))(
  ( (Nil!34997) (Cons!34996 (h!36394 (_ BitVec 64)) (t!49701 List!35000)) )
))
(declare-fun arrayNoDuplicates!0 (array!100146 (_ BitVec 32) List!35000) Bool)

(assert (=> b!1501920 (= res!1023068 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34997))))

(declare-fun b!1501921 () Bool)

(declare-fun res!1023065 () Bool)

(assert (=> b!1501921 (=> (not res!1023065) (not e!840133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100146 (_ BitVec 32)) Bool)

(assert (=> b!1501921 (= res!1023065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127852 res!1023066) b!1501915))

(assert (= (and b!1501915 res!1023069) b!1501916))

(assert (= (and b!1501916 res!1023067) b!1501918))

(assert (= (and b!1501918 res!1023063) b!1501921))

(assert (= (and b!1501921 res!1023065) b!1501920))

(assert (= (and b!1501920 res!1023068) b!1501917))

(assert (= (and b!1501917 res!1023064) b!1501919))

(declare-fun m!1385253 () Bool)

(assert (=> b!1501918 m!1385253))

(assert (=> b!1501918 m!1385253))

(declare-fun m!1385255 () Bool)

(assert (=> b!1501918 m!1385255))

(declare-fun m!1385257 () Bool)

(assert (=> start!127852 m!1385257))

(declare-fun m!1385259 () Bool)

(assert (=> start!127852 m!1385259))

(declare-fun m!1385261 () Bool)

(assert (=> b!1501916 m!1385261))

(assert (=> b!1501916 m!1385261))

(declare-fun m!1385263 () Bool)

(assert (=> b!1501916 m!1385263))

(assert (=> b!1501919 m!1385253))

(assert (=> b!1501919 m!1385253))

(declare-fun m!1385265 () Bool)

(assert (=> b!1501919 m!1385265))

(declare-fun m!1385267 () Bool)

(assert (=> b!1501920 m!1385267))

(declare-fun m!1385269 () Bool)

(assert (=> b!1501917 m!1385269))

(declare-fun m!1385271 () Bool)

(assert (=> b!1501917 m!1385271))

(declare-fun m!1385273 () Bool)

(assert (=> b!1501917 m!1385273))

(declare-fun m!1385275 () Bool)

(assert (=> b!1501921 m!1385275))

(push 1)

(assert (not b!1501918))

(assert (not b!1501921))

(assert (not b!1501916))

(assert (not b!1501920))

(assert (not b!1501919))

(assert (not start!127852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

