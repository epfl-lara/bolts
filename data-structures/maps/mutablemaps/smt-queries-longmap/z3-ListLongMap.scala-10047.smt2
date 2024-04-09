; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118428 () Bool)

(assert start!118428)

(declare-fun b!1384708 () Bool)

(declare-fun res!926185 () Bool)

(declare-fun e!784657 () Bool)

(assert (=> b!1384708 (=> (not res!926185) (not e!784657))))

(declare-datatypes ((array!94649 0))(
  ( (array!94650 (arr!45698 (Array (_ BitVec 32) (_ BitVec 64))) (size!46249 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94649)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384708 (= res!926185 (validKeyInArray!0 (select (arr!45698 a!2938) i!1065)))))

(declare-fun b!1384709 () Bool)

(declare-fun res!926184 () Bool)

(assert (=> b!1384709 (=> (not res!926184) (not e!784657))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1384709 (= res!926184 (and (= (size!46249 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46249 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46249 a!2938))))))

(declare-fun b!1384710 () Bool)

(declare-datatypes ((Unit!46152 0))(
  ( (Unit!46153) )
))
(declare-fun e!784655 () Unit!46152)

(declare-fun Unit!46154 () Unit!46152)

(assert (=> b!1384710 (= e!784655 Unit!46154)))

(declare-fun b!1384711 () Bool)

(declare-fun res!926190 () Bool)

(assert (=> b!1384711 (=> (not res!926190) (not e!784657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94649 (_ BitVec 32)) Bool)

(assert (=> b!1384711 (= res!926190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384712 () Bool)

(declare-fun res!926188 () Bool)

(assert (=> b!1384712 (=> (not res!926188) (not e!784657))))

(assert (=> b!1384712 (= res!926188 (and (not (= (select (arr!45698 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45698 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384713 () Bool)

(declare-fun res!926187 () Bool)

(assert (=> b!1384713 (=> (not res!926187) (not e!784657))))

(declare-datatypes ((List!32406 0))(
  ( (Nil!32403) (Cons!32402 (h!33611 (_ BitVec 64)) (t!47107 List!32406)) )
))
(declare-fun arrayNoDuplicates!0 (array!94649 (_ BitVec 32) List!32406) Bool)

(assert (=> b!1384713 (= res!926187 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32403))))

(declare-fun b!1384714 () Bool)

(declare-fun e!784654 () Bool)

(assert (=> b!1384714 (= e!784654 (not (bvsle startIndex!16 (size!46249 a!2938))))))

(declare-fun lt!609004 () array!94649)

(assert (=> b!1384714 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609004 mask!2987)))

(declare-fun lt!609001 () Unit!46152)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46152)

(assert (=> b!1384714 (= lt!609001 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384715 () Bool)

(declare-fun e!784658 () Bool)

(assert (=> b!1384715 (= e!784658 (validKeyInArray!0 (select (arr!45698 a!2938) startIndex!16)))))

(declare-fun b!1384716 () Bool)

(assert (=> b!1384716 (= e!784657 e!784654)))

(declare-fun res!926183 () Bool)

(assert (=> b!1384716 (=> (not res!926183) (not e!784654))))

(assert (=> b!1384716 (= res!926183 (and (bvslt startIndex!16 (bvsub (size!46249 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609000 () Unit!46152)

(assert (=> b!1384716 (= lt!609000 e!784655)))

(declare-fun c!128705 () Bool)

(assert (=> b!1384716 (= c!128705 e!784658)))

(declare-fun res!926189 () Bool)

(assert (=> b!1384716 (=> (not res!926189) (not e!784658))))

(assert (=> b!1384716 (= res!926189 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384716 (= lt!609004 (array!94650 (store (arr!45698 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46249 a!2938)))))

(declare-fun res!926186 () Bool)

(assert (=> start!118428 (=> (not res!926186) (not e!784657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118428 (= res!926186 (validMask!0 mask!2987))))

(assert (=> start!118428 e!784657))

(assert (=> start!118428 true))

(declare-fun array_inv!34643 (array!94649) Bool)

(assert (=> start!118428 (array_inv!34643 a!2938)))

(declare-fun b!1384717 () Bool)

(declare-fun lt!609003 () Unit!46152)

(assert (=> b!1384717 (= e!784655 lt!609003)))

(declare-fun lt!609002 () Unit!46152)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46152)

(assert (=> b!1384717 (= lt!609002 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10112 0))(
  ( (MissingZero!10112 (index!42818 (_ BitVec 32))) (Found!10112 (index!42819 (_ BitVec 32))) (Intermediate!10112 (undefined!10924 Bool) (index!42820 (_ BitVec 32)) (x!124324 (_ BitVec 32))) (Undefined!10112) (MissingVacant!10112 (index!42821 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94649 (_ BitVec 32)) SeekEntryResult!10112)

(assert (=> b!1384717 (= (seekEntryOrOpen!0 (select (arr!45698 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45698 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609004 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46152)

(assert (=> b!1384717 (= lt!609003 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384717 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118428 res!926186) b!1384709))

(assert (= (and b!1384709 res!926184) b!1384708))

(assert (= (and b!1384708 res!926185) b!1384713))

(assert (= (and b!1384713 res!926187) b!1384711))

(assert (= (and b!1384711 res!926190) b!1384712))

(assert (= (and b!1384712 res!926188) b!1384716))

(assert (= (and b!1384716 res!926189) b!1384715))

(assert (= (and b!1384716 c!128705) b!1384717))

(assert (= (and b!1384716 (not c!128705)) b!1384710))

(assert (= (and b!1384716 res!926183) b!1384714))

(declare-fun m!1270053 () Bool)

(assert (=> b!1384715 m!1270053))

(assert (=> b!1384715 m!1270053))

(declare-fun m!1270055 () Bool)

(assert (=> b!1384715 m!1270055))

(declare-fun m!1270057 () Bool)

(assert (=> b!1384711 m!1270057))

(declare-fun m!1270059 () Bool)

(assert (=> b!1384717 m!1270059))

(declare-fun m!1270061 () Bool)

(assert (=> b!1384717 m!1270061))

(declare-fun m!1270063 () Bool)

(assert (=> b!1384717 m!1270063))

(declare-fun m!1270065 () Bool)

(assert (=> b!1384717 m!1270065))

(assert (=> b!1384717 m!1270061))

(declare-fun m!1270067 () Bool)

(assert (=> b!1384717 m!1270067))

(assert (=> b!1384717 m!1270053))

(declare-fun m!1270069 () Bool)

(assert (=> b!1384717 m!1270069))

(assert (=> b!1384717 m!1270053))

(declare-fun m!1270071 () Bool)

(assert (=> b!1384717 m!1270071))

(declare-fun m!1270073 () Bool)

(assert (=> b!1384713 m!1270073))

(declare-fun m!1270075 () Bool)

(assert (=> start!118428 m!1270075))

(declare-fun m!1270077 () Bool)

(assert (=> start!118428 m!1270077))

(declare-fun m!1270079 () Bool)

(assert (=> b!1384708 m!1270079))

(assert (=> b!1384708 m!1270079))

(declare-fun m!1270081 () Bool)

(assert (=> b!1384708 m!1270081))

(assert (=> b!1384712 m!1270079))

(assert (=> b!1384716 m!1270063))

(declare-fun m!1270083 () Bool)

(assert (=> b!1384714 m!1270083))

(declare-fun m!1270085 () Bool)

(assert (=> b!1384714 m!1270085))

(check-sat (not b!1384717) (not start!118428) (not b!1384708) (not b!1384715) (not b!1384711) (not b!1384714) (not b!1384713))
(check-sat)
