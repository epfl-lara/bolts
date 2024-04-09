; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118370 () Bool)

(assert start!118370)

(declare-fun b!1383893 () Bool)

(declare-fun res!925543 () Bool)

(declare-fun e!784276 () Bool)

(assert (=> b!1383893 (=> (not res!925543) (not e!784276))))

(declare-datatypes ((array!94591 0))(
  ( (array!94592 (arr!45669 (Array (_ BitVec 32) (_ BitVec 64))) (size!46220 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94591)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94591 (_ BitVec 32)) Bool)

(assert (=> b!1383893 (= res!925543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383894 () Bool)

(declare-datatypes ((Unit!46065 0))(
  ( (Unit!46066) )
))
(declare-fun e!784277 () Unit!46065)

(declare-fun lt!608676 () Unit!46065)

(assert (=> b!1383894 (= e!784277 lt!608676)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!608677 () Unit!46065)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46065)

(assert (=> b!1383894 (= lt!608677 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10083 0))(
  ( (MissingZero!10083 (index!42702 (_ BitVec 32))) (Found!10083 (index!42703 (_ BitVec 32))) (Intermediate!10083 (undefined!10895 Bool) (index!42704 (_ BitVec 32)) (x!124215 (_ BitVec 32))) (Undefined!10083) (MissingVacant!10083 (index!42705 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94591 (_ BitVec 32)) SeekEntryResult!10083)

(assert (=> b!1383894 (= (seekEntryOrOpen!0 (select (arr!45669 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45669 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94592 (store (arr!45669 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46220 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46065)

(assert (=> b!1383894 (= lt!608676 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1383894 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383896 () Bool)

(declare-fun res!925545 () Bool)

(assert (=> b!1383896 (=> (not res!925545) (not e!784276))))

(assert (=> b!1383896 (= res!925545 (and (not (= (select (arr!45669 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45669 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383897 () Bool)

(declare-fun res!925544 () Bool)

(assert (=> b!1383897 (=> (not res!925544) (not e!784276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383897 (= res!925544 (validKeyInArray!0 (select (arr!45669 a!2938) i!1065)))))

(declare-fun b!1383898 () Bool)

(declare-fun Unit!46067 () Unit!46065)

(assert (=> b!1383898 (= e!784277 Unit!46067)))

(declare-fun b!1383899 () Bool)

(assert (=> b!1383899 (= e!784276 false)))

(declare-fun lt!608675 () Unit!46065)

(assert (=> b!1383899 (= lt!608675 e!784277)))

(declare-fun c!128618 () Bool)

(declare-fun e!784274 () Bool)

(assert (=> b!1383899 (= c!128618 e!784274)))

(declare-fun res!925546 () Bool)

(assert (=> b!1383899 (=> (not res!925546) (not e!784274))))

(assert (=> b!1383899 (= res!925546 (not (= startIndex!16 i!1065)))))

(declare-fun b!1383900 () Bool)

(declare-fun res!925542 () Bool)

(assert (=> b!1383900 (=> (not res!925542) (not e!784276))))

(assert (=> b!1383900 (= res!925542 (and (= (size!46220 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46220 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46220 a!2938))))))

(declare-fun b!1383901 () Bool)

(assert (=> b!1383901 (= e!784274 (validKeyInArray!0 (select (arr!45669 a!2938) startIndex!16)))))

(declare-fun res!925548 () Bool)

(assert (=> start!118370 (=> (not res!925548) (not e!784276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118370 (= res!925548 (validMask!0 mask!2987))))

(assert (=> start!118370 e!784276))

(assert (=> start!118370 true))

(declare-fun array_inv!34614 (array!94591) Bool)

(assert (=> start!118370 (array_inv!34614 a!2938)))

(declare-fun b!1383895 () Bool)

(declare-fun res!925547 () Bool)

(assert (=> b!1383895 (=> (not res!925547) (not e!784276))))

(declare-datatypes ((List!32377 0))(
  ( (Nil!32374) (Cons!32373 (h!33582 (_ BitVec 64)) (t!47078 List!32377)) )
))
(declare-fun arrayNoDuplicates!0 (array!94591 (_ BitVec 32) List!32377) Bool)

(assert (=> b!1383895 (= res!925547 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32374))))

(assert (= (and start!118370 res!925548) b!1383900))

(assert (= (and b!1383900 res!925542) b!1383897))

(assert (= (and b!1383897 res!925544) b!1383895))

(assert (= (and b!1383895 res!925547) b!1383893))

(assert (= (and b!1383893 res!925543) b!1383896))

(assert (= (and b!1383896 res!925545) b!1383899))

(assert (= (and b!1383899 res!925546) b!1383901))

(assert (= (and b!1383899 c!128618) b!1383894))

(assert (= (and b!1383899 (not c!128618)) b!1383898))

(declare-fun m!1269143 () Bool)

(assert (=> b!1383896 m!1269143))

(declare-fun m!1269145 () Bool)

(assert (=> b!1383894 m!1269145))

(declare-fun m!1269147 () Bool)

(assert (=> b!1383894 m!1269147))

(assert (=> b!1383894 m!1269147))

(declare-fun m!1269149 () Bool)

(assert (=> b!1383894 m!1269149))

(declare-fun m!1269151 () Bool)

(assert (=> b!1383894 m!1269151))

(declare-fun m!1269153 () Bool)

(assert (=> b!1383894 m!1269153))

(declare-fun m!1269155 () Bool)

(assert (=> b!1383894 m!1269155))

(declare-fun m!1269157 () Bool)

(assert (=> b!1383894 m!1269157))

(assert (=> b!1383894 m!1269155))

(declare-fun m!1269159 () Bool)

(assert (=> b!1383894 m!1269159))

(declare-fun m!1269161 () Bool)

(assert (=> b!1383893 m!1269161))

(assert (=> b!1383897 m!1269143))

(assert (=> b!1383897 m!1269143))

(declare-fun m!1269163 () Bool)

(assert (=> b!1383897 m!1269163))

(declare-fun m!1269165 () Bool)

(assert (=> start!118370 m!1269165))

(declare-fun m!1269167 () Bool)

(assert (=> start!118370 m!1269167))

(declare-fun m!1269169 () Bool)

(assert (=> b!1383895 m!1269169))

(assert (=> b!1383901 m!1269155))

(assert (=> b!1383901 m!1269155))

(declare-fun m!1269171 () Bool)

(assert (=> b!1383901 m!1269171))

(push 1)

(assert (not b!1383895))

(assert (not b!1383897))

(assert (not b!1383894))

(assert (not b!1383893))

(assert (not start!118370))

(assert (not b!1383901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

