; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118404 () Bool)

(assert start!118404)

(declare-fun b!1384352 () Bool)

(declare-datatypes ((Unit!46116 0))(
  ( (Unit!46117) )
))
(declare-fun e!784479 () Unit!46116)

(declare-fun lt!608829 () Unit!46116)

(assert (=> b!1384352 (= e!784479 lt!608829)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!608828 () Unit!46116)

(declare-datatypes ((array!94625 0))(
  ( (array!94626 (arr!45686 (Array (_ BitVec 32) (_ BitVec 64))) (size!46237 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94625)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94625 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46116)

(assert (=> b!1384352 (= lt!608828 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10100 0))(
  ( (MissingZero!10100 (index!42770 (_ BitVec 32))) (Found!10100 (index!42771 (_ BitVec 32))) (Intermediate!10100 (undefined!10912 Bool) (index!42772 (_ BitVec 32)) (x!124280 (_ BitVec 32))) (Undefined!10100) (MissingVacant!10100 (index!42773 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94625 (_ BitVec 32)) SeekEntryResult!10100)

(assert (=> b!1384352 (= (seekEntryOrOpen!0 (select (arr!45686 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45686 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94626 (store (arr!45686 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46237 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94625 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46116)

(assert (=> b!1384352 (= lt!608829 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94625 (_ BitVec 32)) Bool)

(assert (=> b!1384352 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384353 () Bool)

(declare-fun res!925899 () Bool)

(declare-fun e!784478 () Bool)

(assert (=> b!1384353 (=> (not res!925899) (not e!784478))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384353 (= res!925899 (validKeyInArray!0 (select (arr!45686 a!2938) i!1065)))))

(declare-fun b!1384354 () Bool)

(declare-fun res!925900 () Bool)

(assert (=> b!1384354 (=> (not res!925900) (not e!784478))))

(declare-datatypes ((List!32394 0))(
  ( (Nil!32391) (Cons!32390 (h!33599 (_ BitVec 64)) (t!47095 List!32394)) )
))
(declare-fun arrayNoDuplicates!0 (array!94625 (_ BitVec 32) List!32394) Bool)

(assert (=> b!1384354 (= res!925900 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32391))))

(declare-fun b!1384356 () Bool)

(declare-fun res!925901 () Bool)

(assert (=> b!1384356 (=> (not res!925901) (not e!784478))))

(assert (=> b!1384356 (= res!925901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384357 () Bool)

(declare-fun res!925905 () Bool)

(assert (=> b!1384357 (=> (not res!925905) (not e!784478))))

(assert (=> b!1384357 (= res!925905 (and (= (size!46237 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46237 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46237 a!2938))))))

(declare-fun b!1384358 () Bool)

(declare-fun res!925902 () Bool)

(assert (=> b!1384358 (=> (not res!925902) (not e!784478))))

(assert (=> b!1384358 (= res!925902 (and (not (= (select (arr!45686 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45686 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384355 () Bool)

(declare-fun e!784480 () Bool)

(assert (=> b!1384355 (= e!784480 (validKeyInArray!0 (select (arr!45686 a!2938) startIndex!16)))))

(declare-fun res!925903 () Bool)

(assert (=> start!118404 (=> (not res!925903) (not e!784478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118404 (= res!925903 (validMask!0 mask!2987))))

(assert (=> start!118404 e!784478))

(assert (=> start!118404 true))

(declare-fun array_inv!34631 (array!94625) Bool)

(assert (=> start!118404 (array_inv!34631 a!2938)))

(declare-fun b!1384359 () Bool)

(assert (=> b!1384359 (= e!784478 false)))

(declare-fun lt!608830 () Unit!46116)

(assert (=> b!1384359 (= lt!608830 e!784479)))

(declare-fun c!128669 () Bool)

(assert (=> b!1384359 (= c!128669 e!784480)))

(declare-fun res!925904 () Bool)

(assert (=> b!1384359 (=> (not res!925904) (not e!784480))))

(assert (=> b!1384359 (= res!925904 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384360 () Bool)

(declare-fun Unit!46118 () Unit!46116)

(assert (=> b!1384360 (= e!784479 Unit!46118)))

(assert (= (and start!118404 res!925903) b!1384357))

(assert (= (and b!1384357 res!925905) b!1384353))

(assert (= (and b!1384353 res!925899) b!1384354))

(assert (= (and b!1384354 res!925900) b!1384356))

(assert (= (and b!1384356 res!925901) b!1384358))

(assert (= (and b!1384358 res!925902) b!1384359))

(assert (= (and b!1384359 res!925904) b!1384355))

(assert (= (and b!1384359 c!128669) b!1384352))

(assert (= (and b!1384359 (not c!128669)) b!1384360))

(declare-fun m!1269653 () Bool)

(assert (=> b!1384358 m!1269653))

(declare-fun m!1269655 () Bool)

(assert (=> b!1384356 m!1269655))

(declare-fun m!1269657 () Bool)

(assert (=> b!1384355 m!1269657))

(assert (=> b!1384355 m!1269657))

(declare-fun m!1269659 () Bool)

(assert (=> b!1384355 m!1269659))

(declare-fun m!1269661 () Bool)

(assert (=> start!118404 m!1269661))

(declare-fun m!1269663 () Bool)

(assert (=> start!118404 m!1269663))

(declare-fun m!1269665 () Bool)

(assert (=> b!1384354 m!1269665))

(assert (=> b!1384353 m!1269653))

(assert (=> b!1384353 m!1269653))

(declare-fun m!1269667 () Bool)

(assert (=> b!1384353 m!1269667))

(declare-fun m!1269669 () Bool)

(assert (=> b!1384352 m!1269669))

(declare-fun m!1269671 () Bool)

(assert (=> b!1384352 m!1269671))

(assert (=> b!1384352 m!1269671))

(declare-fun m!1269673 () Bool)

(assert (=> b!1384352 m!1269673))

(declare-fun m!1269675 () Bool)

(assert (=> b!1384352 m!1269675))

(declare-fun m!1269677 () Bool)

(assert (=> b!1384352 m!1269677))

(assert (=> b!1384352 m!1269657))

(declare-fun m!1269679 () Bool)

(assert (=> b!1384352 m!1269679))

(assert (=> b!1384352 m!1269657))

(declare-fun m!1269681 () Bool)

(assert (=> b!1384352 m!1269681))

(check-sat (not b!1384355) (not b!1384352) (not b!1384356) (not b!1384354) (not b!1384353) (not start!118404))
