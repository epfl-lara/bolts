; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118434 () Bool)

(assert start!118434)

(declare-fun b!1384793 () Bool)

(declare-fun res!926254 () Bool)

(declare-fun e!784695 () Bool)

(assert (=> b!1384793 (=> (not res!926254) (not e!784695))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((array!94655 0))(
  ( (array!94656 (arr!45701 (Array (_ BitVec 32) (_ BitVec 64))) (size!46252 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94655)

(assert (=> b!1384793 (= res!926254 (and (= (size!46252 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46252 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46252 a!2938))))))

(declare-fun b!1384794 () Bool)

(declare-datatypes ((Unit!46161 0))(
  ( (Unit!46162) )
))
(declare-fun e!784697 () Unit!46161)

(declare-fun lt!609037 () Unit!46161)

(assert (=> b!1384794 (= e!784697 lt!609037)))

(declare-fun lt!609036 () Unit!46161)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46161)

(assert (=> b!1384794 (= lt!609036 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10115 0))(
  ( (MissingZero!10115 (index!42830 (_ BitVec 32))) (Found!10115 (index!42831 (_ BitVec 32))) (Intermediate!10115 (undefined!10927 Bool) (index!42832 (_ BitVec 32)) (x!124335 (_ BitVec 32))) (Undefined!10115) (MissingVacant!10115 (index!42833 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94655 (_ BitVec 32)) SeekEntryResult!10115)

(assert (=> b!1384794 (= (seekEntryOrOpen!0 (select (arr!45701 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45701 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94656 (store (arr!45701 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46252 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46161)

(assert (=> b!1384794 (= lt!609037 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94655 (_ BitVec 32)) Bool)

(assert (=> b!1384794 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384795 () Bool)

(declare-fun res!926252 () Bool)

(assert (=> b!1384795 (=> (not res!926252) (not e!784695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384795 (= res!926252 (validKeyInArray!0 (select (arr!45701 a!2938) i!1065)))))

(declare-fun b!1384796 () Bool)

(assert (=> b!1384796 (= e!784695 false)))

(declare-fun lt!609035 () Unit!46161)

(assert (=> b!1384796 (= lt!609035 e!784697)))

(declare-fun c!128714 () Bool)

(declare-fun e!784694 () Bool)

(assert (=> b!1384796 (= c!128714 e!784694)))

(declare-fun res!926255 () Bool)

(assert (=> b!1384796 (=> (not res!926255) (not e!784694))))

(assert (=> b!1384796 (= res!926255 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384797 () Bool)

(declare-fun Unit!46163 () Unit!46161)

(assert (=> b!1384797 (= e!784697 Unit!46163)))

(declare-fun b!1384798 () Bool)

(assert (=> b!1384798 (= e!784694 (validKeyInArray!0 (select (arr!45701 a!2938) startIndex!16)))))

(declare-fun b!1384799 () Bool)

(declare-fun res!926250 () Bool)

(assert (=> b!1384799 (=> (not res!926250) (not e!784695))))

(assert (=> b!1384799 (= res!926250 (and (not (= (select (arr!45701 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45701 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384800 () Bool)

(declare-fun res!926253 () Bool)

(assert (=> b!1384800 (=> (not res!926253) (not e!784695))))

(assert (=> b!1384800 (= res!926253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384801 () Bool)

(declare-fun res!926256 () Bool)

(assert (=> b!1384801 (=> (not res!926256) (not e!784695))))

(declare-datatypes ((List!32409 0))(
  ( (Nil!32406) (Cons!32405 (h!33614 (_ BitVec 64)) (t!47110 List!32409)) )
))
(declare-fun arrayNoDuplicates!0 (array!94655 (_ BitVec 32) List!32409) Bool)

(assert (=> b!1384801 (= res!926256 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32406))))

(declare-fun res!926251 () Bool)

(assert (=> start!118434 (=> (not res!926251) (not e!784695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118434 (= res!926251 (validMask!0 mask!2987))))

(assert (=> start!118434 e!784695))

(assert (=> start!118434 true))

(declare-fun array_inv!34646 (array!94655) Bool)

(assert (=> start!118434 (array_inv!34646 a!2938)))

(assert (= (and start!118434 res!926251) b!1384793))

(assert (= (and b!1384793 res!926254) b!1384795))

(assert (= (and b!1384795 res!926252) b!1384801))

(assert (= (and b!1384801 res!926256) b!1384800))

(assert (= (and b!1384800 res!926253) b!1384799))

(assert (= (and b!1384799 res!926250) b!1384796))

(assert (= (and b!1384796 res!926255) b!1384798))

(assert (= (and b!1384796 c!128714) b!1384794))

(assert (= (and b!1384796 (not c!128714)) b!1384797))

(declare-fun m!1270151 () Bool)

(assert (=> b!1384794 m!1270151))

(declare-fun m!1270153 () Bool)

(assert (=> b!1384794 m!1270153))

(assert (=> b!1384794 m!1270153))

(declare-fun m!1270155 () Bool)

(assert (=> b!1384794 m!1270155))

(declare-fun m!1270157 () Bool)

(assert (=> b!1384794 m!1270157))

(declare-fun m!1270159 () Bool)

(assert (=> b!1384794 m!1270159))

(declare-fun m!1270161 () Bool)

(assert (=> b!1384794 m!1270161))

(declare-fun m!1270163 () Bool)

(assert (=> b!1384794 m!1270163))

(assert (=> b!1384794 m!1270161))

(declare-fun m!1270165 () Bool)

(assert (=> b!1384794 m!1270165))

(declare-fun m!1270167 () Bool)

(assert (=> b!1384801 m!1270167))

(declare-fun m!1270169 () Bool)

(assert (=> b!1384800 m!1270169))

(assert (=> b!1384798 m!1270161))

(assert (=> b!1384798 m!1270161))

(declare-fun m!1270171 () Bool)

(assert (=> b!1384798 m!1270171))

(declare-fun m!1270173 () Bool)

(assert (=> b!1384799 m!1270173))

(declare-fun m!1270175 () Bool)

(assert (=> start!118434 m!1270175))

(declare-fun m!1270177 () Bool)

(assert (=> start!118434 m!1270177))

(assert (=> b!1384795 m!1270173))

(assert (=> b!1384795 m!1270173))

(declare-fun m!1270179 () Bool)

(assert (=> b!1384795 m!1270179))

(check-sat (not b!1384800) (not b!1384798) (not b!1384801) (not start!118434) (not b!1384795) (not b!1384794))
