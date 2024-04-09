; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118366 () Bool)

(assert start!118366)

(declare-fun b!1383839 () Bool)

(declare-fun e!784250 () Bool)

(assert (=> b!1383839 (= e!784250 false)))

(declare-datatypes ((Unit!46059 0))(
  ( (Unit!46060) )
))
(declare-fun lt!608657 () Unit!46059)

(declare-fun e!784251 () Unit!46059)

(assert (=> b!1383839 (= lt!608657 e!784251)))

(declare-fun c!128612 () Bool)

(declare-fun e!784252 () Bool)

(assert (=> b!1383839 (= c!128612 e!784252)))

(declare-fun res!925505 () Bool)

(assert (=> b!1383839 (=> (not res!925505) (not e!784252))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383839 (= res!925505 (not (= startIndex!16 i!1065)))))

(declare-fun b!1383840 () Bool)

(declare-fun res!925501 () Bool)

(assert (=> b!1383840 (=> (not res!925501) (not e!784250))))

(declare-datatypes ((array!94587 0))(
  ( (array!94588 (arr!45667 (Array (_ BitVec 32) (_ BitVec 64))) (size!46218 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94587)

(assert (=> b!1383840 (= res!925501 (and (not (= (select (arr!45667 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45667 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383841 () Bool)

(declare-fun lt!608659 () Unit!46059)

(assert (=> b!1383841 (= e!784251 lt!608659)))

(declare-fun lt!608658 () Unit!46059)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46059)

(assert (=> b!1383841 (= lt!608658 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10081 0))(
  ( (MissingZero!10081 (index!42694 (_ BitVec 32))) (Found!10081 (index!42695 (_ BitVec 32))) (Intermediate!10081 (undefined!10893 Bool) (index!42696 (_ BitVec 32)) (x!124213 (_ BitVec 32))) (Undefined!10081) (MissingVacant!10081 (index!42697 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94587 (_ BitVec 32)) SeekEntryResult!10081)

(assert (=> b!1383841 (= (seekEntryOrOpen!0 (select (arr!45667 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45667 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94588 (store (arr!45667 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46218 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46059)

(assert (=> b!1383841 (= lt!608659 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94587 (_ BitVec 32)) Bool)

(assert (=> b!1383841 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383842 () Bool)

(declare-fun Unit!46061 () Unit!46059)

(assert (=> b!1383842 (= e!784251 Unit!46061)))

(declare-fun b!1383843 () Bool)

(declare-fun res!925502 () Bool)

(assert (=> b!1383843 (=> (not res!925502) (not e!784250))))

(assert (=> b!1383843 (= res!925502 (and (= (size!46218 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46218 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46218 a!2938))))))

(declare-fun res!925504 () Bool)

(assert (=> start!118366 (=> (not res!925504) (not e!784250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118366 (= res!925504 (validMask!0 mask!2987))))

(assert (=> start!118366 e!784250))

(assert (=> start!118366 true))

(declare-fun array_inv!34612 (array!94587) Bool)

(assert (=> start!118366 (array_inv!34612 a!2938)))

(declare-fun b!1383844 () Bool)

(declare-fun res!925503 () Bool)

(assert (=> b!1383844 (=> (not res!925503) (not e!784250))))

(declare-datatypes ((List!32375 0))(
  ( (Nil!32372) (Cons!32371 (h!33580 (_ BitVec 64)) (t!47076 List!32375)) )
))
(declare-fun arrayNoDuplicates!0 (array!94587 (_ BitVec 32) List!32375) Bool)

(assert (=> b!1383844 (= res!925503 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32372))))

(declare-fun b!1383845 () Bool)

(declare-fun res!925500 () Bool)

(assert (=> b!1383845 (=> (not res!925500) (not e!784250))))

(assert (=> b!1383845 (= res!925500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383846 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383846 (= e!784252 (validKeyInArray!0 (select (arr!45667 a!2938) startIndex!16)))))

(declare-fun b!1383847 () Bool)

(declare-fun res!925506 () Bool)

(assert (=> b!1383847 (=> (not res!925506) (not e!784250))))

(assert (=> b!1383847 (= res!925506 (validKeyInArray!0 (select (arr!45667 a!2938) i!1065)))))

(assert (= (and start!118366 res!925504) b!1383843))

(assert (= (and b!1383843 res!925502) b!1383847))

(assert (= (and b!1383847 res!925506) b!1383844))

(assert (= (and b!1383844 res!925503) b!1383845))

(assert (= (and b!1383845 res!925500) b!1383840))

(assert (= (and b!1383840 res!925501) b!1383839))

(assert (= (and b!1383839 res!925505) b!1383846))

(assert (= (and b!1383839 c!128612) b!1383841))

(assert (= (and b!1383839 (not c!128612)) b!1383842))

(declare-fun m!1269083 () Bool)

(assert (=> b!1383845 m!1269083))

(declare-fun m!1269085 () Bool)

(assert (=> start!118366 m!1269085))

(declare-fun m!1269087 () Bool)

(assert (=> start!118366 m!1269087))

(declare-fun m!1269089 () Bool)

(assert (=> b!1383847 m!1269089))

(assert (=> b!1383847 m!1269089))

(declare-fun m!1269091 () Bool)

(assert (=> b!1383847 m!1269091))

(declare-fun m!1269093 () Bool)

(assert (=> b!1383846 m!1269093))

(assert (=> b!1383846 m!1269093))

(declare-fun m!1269095 () Bool)

(assert (=> b!1383846 m!1269095))

(assert (=> b!1383840 m!1269089))

(declare-fun m!1269097 () Bool)

(assert (=> b!1383841 m!1269097))

(declare-fun m!1269099 () Bool)

(assert (=> b!1383841 m!1269099))

(assert (=> b!1383841 m!1269099))

(declare-fun m!1269101 () Bool)

(assert (=> b!1383841 m!1269101))

(declare-fun m!1269103 () Bool)

(assert (=> b!1383841 m!1269103))

(declare-fun m!1269105 () Bool)

(assert (=> b!1383841 m!1269105))

(assert (=> b!1383841 m!1269093))

(declare-fun m!1269107 () Bool)

(assert (=> b!1383841 m!1269107))

(assert (=> b!1383841 m!1269093))

(declare-fun m!1269109 () Bool)

(assert (=> b!1383841 m!1269109))

(declare-fun m!1269111 () Bool)

(assert (=> b!1383844 m!1269111))

(push 1)

(assert (not b!1383841))

(assert (not b!1383845))

(assert (not start!118366))

(assert (not b!1383844))

(assert (not b!1383847))

(assert (not b!1383846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

