; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118594 () Bool)

(assert start!118594)

(declare-fun b!1385887 () Bool)

(declare-fun res!927250 () Bool)

(declare-fun e!785209 () Bool)

(assert (=> b!1385887 (=> (not res!927250) (not e!785209))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94788 0))(
  ( (array!94789 (arr!45766 (Array (_ BitVec 32) (_ BitVec 64))) (size!46317 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94788)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385887 (= res!927250 (and (= (size!46317 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46317 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46317 a!2938))))))

(declare-fun res!927249 () Bool)

(assert (=> start!118594 (=> (not res!927249) (not e!785209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118594 (= res!927249 (validMask!0 mask!2987))))

(assert (=> start!118594 e!785209))

(assert (=> start!118594 true))

(declare-fun array_inv!34711 (array!94788) Bool)

(assert (=> start!118594 (array_inv!34711 a!2938)))

(declare-fun b!1385888 () Bool)

(declare-fun res!927251 () Bool)

(assert (=> b!1385888 (=> (not res!927251) (not e!785209))))

(assert (=> b!1385888 (= res!927251 (and (not (= (select (arr!45766 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45766 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385889 () Bool)

(declare-fun res!927246 () Bool)

(assert (=> b!1385889 (=> (not res!927246) (not e!785209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94788 (_ BitVec 32)) Bool)

(assert (=> b!1385889 (= res!927246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385890 () Bool)

(assert (=> b!1385890 (= e!785209 (not true))))

(declare-datatypes ((SeekEntryResult!10131 0))(
  ( (MissingZero!10131 (index!42894 (_ BitVec 32))) (Found!10131 (index!42895 (_ BitVec 32))) (Intermediate!10131 (undefined!10943 Bool) (index!42896 (_ BitVec 32)) (x!124527 (_ BitVec 32))) (Undefined!10131) (MissingVacant!10131 (index!42897 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94788 (_ BitVec 32)) SeekEntryResult!10131)

(assert (=> b!1385890 (= (seekEntryOrOpen!0 (select (arr!45766 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45766 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94789 (store (arr!45766 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46317 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46204 0))(
  ( (Unit!46205) )
))
(declare-fun lt!609292 () Unit!46204)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94788 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46204)

(assert (=> b!1385890 (= lt!609292 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1385891 () Bool)

(declare-fun res!927252 () Bool)

(assert (=> b!1385891 (=> (not res!927252) (not e!785209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385891 (= res!927252 (validKeyInArray!0 (select (arr!45766 a!2938) i!1065)))))

(declare-fun b!1385892 () Bool)

(declare-fun res!927247 () Bool)

(assert (=> b!1385892 (=> (not res!927247) (not e!785209))))

(assert (=> b!1385892 (= res!927247 (validKeyInArray!0 (select (arr!45766 a!2938) startIndex!16)))))

(declare-fun b!1385893 () Bool)

(declare-fun res!927248 () Bool)

(assert (=> b!1385893 (=> (not res!927248) (not e!785209))))

(declare-datatypes ((List!32474 0))(
  ( (Nil!32471) (Cons!32470 (h!33679 (_ BitVec 64)) (t!47175 List!32474)) )
))
(declare-fun arrayNoDuplicates!0 (array!94788 (_ BitVec 32) List!32474) Bool)

(assert (=> b!1385893 (= res!927248 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32471))))

(assert (= (and start!118594 res!927249) b!1385887))

(assert (= (and b!1385887 res!927250) b!1385891))

(assert (= (and b!1385891 res!927252) b!1385893))

(assert (= (and b!1385893 res!927248) b!1385889))

(assert (= (and b!1385889 res!927246) b!1385888))

(assert (= (and b!1385888 res!927251) b!1385892))

(assert (= (and b!1385892 res!927247) b!1385890))

(declare-fun m!1271231 () Bool)

(assert (=> b!1385888 m!1271231))

(declare-fun m!1271233 () Bool)

(assert (=> b!1385893 m!1271233))

(assert (=> b!1385891 m!1271231))

(assert (=> b!1385891 m!1271231))

(declare-fun m!1271235 () Bool)

(assert (=> b!1385891 m!1271235))

(declare-fun m!1271237 () Bool)

(assert (=> start!118594 m!1271237))

(declare-fun m!1271239 () Bool)

(assert (=> start!118594 m!1271239))

(declare-fun m!1271241 () Bool)

(assert (=> b!1385892 m!1271241))

(assert (=> b!1385892 m!1271241))

(declare-fun m!1271243 () Bool)

(assert (=> b!1385892 m!1271243))

(declare-fun m!1271245 () Bool)

(assert (=> b!1385890 m!1271245))

(assert (=> b!1385890 m!1271245))

(declare-fun m!1271247 () Bool)

(assert (=> b!1385890 m!1271247))

(declare-fun m!1271249 () Bool)

(assert (=> b!1385890 m!1271249))

(declare-fun m!1271251 () Bool)

(assert (=> b!1385890 m!1271251))

(assert (=> b!1385890 m!1271241))

(assert (=> b!1385890 m!1271241))

(declare-fun m!1271253 () Bool)

(assert (=> b!1385890 m!1271253))

(declare-fun m!1271255 () Bool)

(assert (=> b!1385889 m!1271255))

(push 1)

(assert (not b!1385889))

(assert (not b!1385890))

(assert (not b!1385891))

(assert (not b!1385892))

(assert (not start!118594))

(assert (not b!1385893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

