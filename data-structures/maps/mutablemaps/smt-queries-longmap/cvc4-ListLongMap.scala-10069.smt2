; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118592 () Bool)

(assert start!118592)

(declare-fun b!1385866 () Bool)

(declare-fun res!927226 () Bool)

(declare-fun e!785203 () Bool)

(assert (=> b!1385866 (=> (not res!927226) (not e!785203))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94786 0))(
  ( (array!94787 (arr!45765 (Array (_ BitVec 32) (_ BitVec 64))) (size!46316 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94786)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385866 (= res!927226 (and (not (= (select (arr!45765 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45765 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385867 () Bool)

(declare-fun res!927230 () Bool)

(assert (=> b!1385867 (=> (not res!927230) (not e!785203))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385867 (= res!927230 (and (= (size!46316 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46316 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46316 a!2938))))))

(declare-fun res!927229 () Bool)

(assert (=> start!118592 (=> (not res!927229) (not e!785203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118592 (= res!927229 (validMask!0 mask!2987))))

(assert (=> start!118592 e!785203))

(assert (=> start!118592 true))

(declare-fun array_inv!34710 (array!94786) Bool)

(assert (=> start!118592 (array_inv!34710 a!2938)))

(declare-fun b!1385868 () Bool)

(declare-fun res!927227 () Bool)

(assert (=> b!1385868 (=> (not res!927227) (not e!785203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94786 (_ BitVec 32)) Bool)

(assert (=> b!1385868 (= res!927227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385869 () Bool)

(declare-fun res!927231 () Bool)

(assert (=> b!1385869 (=> (not res!927231) (not e!785203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385869 (= res!927231 (validKeyInArray!0 (select (arr!45765 a!2938) startIndex!16)))))

(declare-fun b!1385870 () Bool)

(declare-fun res!927225 () Bool)

(assert (=> b!1385870 (=> (not res!927225) (not e!785203))))

(declare-datatypes ((List!32473 0))(
  ( (Nil!32470) (Cons!32469 (h!33678 (_ BitVec 64)) (t!47174 List!32473)) )
))
(declare-fun arrayNoDuplicates!0 (array!94786 (_ BitVec 32) List!32473) Bool)

(assert (=> b!1385870 (= res!927225 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32470))))

(declare-fun b!1385871 () Bool)

(assert (=> b!1385871 (= e!785203 (not true))))

(declare-datatypes ((SeekEntryResult!10130 0))(
  ( (MissingZero!10130 (index!42890 (_ BitVec 32))) (Found!10130 (index!42891 (_ BitVec 32))) (Intermediate!10130 (undefined!10942 Bool) (index!42892 (_ BitVec 32)) (x!124518 (_ BitVec 32))) (Undefined!10130) (MissingVacant!10130 (index!42893 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94786 (_ BitVec 32)) SeekEntryResult!10130)

(assert (=> b!1385871 (= (seekEntryOrOpen!0 (select (arr!45765 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45765 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94787 (store (arr!45765 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46316 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46202 0))(
  ( (Unit!46203) )
))
(declare-fun lt!609289 () Unit!46202)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94786 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46202)

(assert (=> b!1385871 (= lt!609289 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1385872 () Bool)

(declare-fun res!927228 () Bool)

(assert (=> b!1385872 (=> (not res!927228) (not e!785203))))

(assert (=> b!1385872 (= res!927228 (validKeyInArray!0 (select (arr!45765 a!2938) i!1065)))))

(assert (= (and start!118592 res!927229) b!1385867))

(assert (= (and b!1385867 res!927230) b!1385872))

(assert (= (and b!1385872 res!927228) b!1385870))

(assert (= (and b!1385870 res!927225) b!1385868))

(assert (= (and b!1385868 res!927227) b!1385866))

(assert (= (and b!1385866 res!927226) b!1385869))

(assert (= (and b!1385869 res!927231) b!1385871))

(declare-fun m!1271205 () Bool)

(assert (=> b!1385870 m!1271205))

(declare-fun m!1271207 () Bool)

(assert (=> b!1385869 m!1271207))

(assert (=> b!1385869 m!1271207))

(declare-fun m!1271209 () Bool)

(assert (=> b!1385869 m!1271209))

(declare-fun m!1271211 () Bool)

(assert (=> b!1385871 m!1271211))

(assert (=> b!1385871 m!1271211))

(declare-fun m!1271213 () Bool)

(assert (=> b!1385871 m!1271213))

(declare-fun m!1271215 () Bool)

(assert (=> b!1385871 m!1271215))

(declare-fun m!1271217 () Bool)

(assert (=> b!1385871 m!1271217))

(assert (=> b!1385871 m!1271207))

(assert (=> b!1385871 m!1271207))

(declare-fun m!1271219 () Bool)

(assert (=> b!1385871 m!1271219))

(declare-fun m!1271221 () Bool)

(assert (=> b!1385868 m!1271221))

(declare-fun m!1271223 () Bool)

(assert (=> b!1385866 m!1271223))

(declare-fun m!1271225 () Bool)

(assert (=> start!118592 m!1271225))

(declare-fun m!1271227 () Bool)

(assert (=> start!118592 m!1271227))

(assert (=> b!1385872 m!1271223))

(assert (=> b!1385872 m!1271223))

(declare-fun m!1271229 () Bool)

(assert (=> b!1385872 m!1271229))

(push 1)

(assert (not b!1385870))

(assert (not b!1385871))

(assert (not b!1385868))

(assert (not start!118592))

(assert (not b!1385869))

(assert (not b!1385872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

