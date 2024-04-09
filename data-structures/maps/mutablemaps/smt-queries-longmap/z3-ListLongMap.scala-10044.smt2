; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118410 () Bool)

(assert start!118410)

(declare-fun b!1384438 () Bool)

(declare-fun res!925968 () Bool)

(declare-fun e!784520 () Bool)

(assert (=> b!1384438 (=> (not res!925968) (not e!784520))))

(declare-datatypes ((array!94631 0))(
  ( (array!94632 (arr!45689 (Array (_ BitVec 32) (_ BitVec 64))) (size!46240 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94631)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94631 (_ BitVec 32)) Bool)

(assert (=> b!1384438 (= res!925968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384439 () Bool)

(declare-fun res!925967 () Bool)

(assert (=> b!1384439 (=> (not res!925967) (not e!784520))))

(declare-datatypes ((List!32397 0))(
  ( (Nil!32394) (Cons!32393 (h!33602 (_ BitVec 64)) (t!47098 List!32397)) )
))
(declare-fun arrayNoDuplicates!0 (array!94631 (_ BitVec 32) List!32397) Bool)

(assert (=> b!1384439 (= res!925967 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32394))))

(declare-fun res!925971 () Bool)

(assert (=> start!118410 (=> (not res!925971) (not e!784520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118410 (= res!925971 (validMask!0 mask!2987))))

(assert (=> start!118410 e!784520))

(assert (=> start!118410 true))

(declare-fun array_inv!34634 (array!94631) Bool)

(assert (=> start!118410 (array_inv!34634 a!2938)))

(declare-fun b!1384440 () Bool)

(declare-fun res!925969 () Bool)

(assert (=> b!1384440 (=> (not res!925969) (not e!784520))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1384440 (= res!925969 (and (= (size!46240 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46240 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46240 a!2938))))))

(declare-fun b!1384441 () Bool)

(declare-datatypes ((Unit!46125 0))(
  ( (Unit!46126) )
))
(declare-fun e!784519 () Unit!46125)

(declare-fun lt!608868 () Unit!46125)

(assert (=> b!1384441 (= e!784519 lt!608868)))

(declare-fun lt!608866 () Unit!46125)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46125)

(assert (=> b!1384441 (= lt!608866 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun lt!608867 () array!94631)

(declare-datatypes ((SeekEntryResult!10103 0))(
  ( (MissingZero!10103 (index!42782 (_ BitVec 32))) (Found!10103 (index!42783 (_ BitVec 32))) (Intermediate!10103 (undefined!10915 Bool) (index!42784 (_ BitVec 32)) (x!124291 (_ BitVec 32))) (Undefined!10103) (MissingVacant!10103 (index!42785 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94631 (_ BitVec 32)) SeekEntryResult!10103)

(assert (=> b!1384441 (= (seekEntryOrOpen!0 (select (arr!45689 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45689 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608867 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46125)

(assert (=> b!1384441 (= lt!608868 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384441 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384442 () Bool)

(declare-fun res!925974 () Bool)

(assert (=> b!1384442 (=> (not res!925974) (not e!784520))))

(assert (=> b!1384442 (= res!925974 (and (not (= (select (arr!45689 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45689 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384443 () Bool)

(declare-fun e!784521 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384443 (= e!784521 (validKeyInArray!0 (select (arr!45689 a!2938) startIndex!16)))))

(declare-fun b!1384444 () Bool)

(declare-fun Unit!46127 () Unit!46125)

(assert (=> b!1384444 (= e!784519 Unit!46127)))

(declare-fun b!1384445 () Bool)

(declare-fun e!784523 () Bool)

(assert (=> b!1384445 (= e!784523 (not true))))

(assert (=> b!1384445 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608867 mask!2987)))

(declare-fun lt!608865 () Unit!46125)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46125)

(assert (=> b!1384445 (= lt!608865 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384446 () Bool)

(assert (=> b!1384446 (= e!784520 e!784523)))

(declare-fun res!925970 () Bool)

(assert (=> b!1384446 (=> (not res!925970) (not e!784523))))

(assert (=> b!1384446 (= res!925970 (and (bvslt startIndex!16 (bvsub (size!46240 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608869 () Unit!46125)

(assert (=> b!1384446 (= lt!608869 e!784519)))

(declare-fun c!128678 () Bool)

(assert (=> b!1384446 (= c!128678 e!784521)))

(declare-fun res!925973 () Bool)

(assert (=> b!1384446 (=> (not res!925973) (not e!784521))))

(assert (=> b!1384446 (= res!925973 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384446 (= lt!608867 (array!94632 (store (arr!45689 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46240 a!2938)))))

(declare-fun b!1384447 () Bool)

(declare-fun res!925972 () Bool)

(assert (=> b!1384447 (=> (not res!925972) (not e!784520))))

(assert (=> b!1384447 (= res!925972 (validKeyInArray!0 (select (arr!45689 a!2938) i!1065)))))

(assert (= (and start!118410 res!925971) b!1384440))

(assert (= (and b!1384440 res!925969) b!1384447))

(assert (= (and b!1384447 res!925972) b!1384439))

(assert (= (and b!1384439 res!925967) b!1384438))

(assert (= (and b!1384438 res!925968) b!1384442))

(assert (= (and b!1384442 res!925974) b!1384446))

(assert (= (and b!1384446 res!925973) b!1384443))

(assert (= (and b!1384446 c!128678) b!1384441))

(assert (= (and b!1384446 (not c!128678)) b!1384444))

(assert (= (and b!1384446 res!925970) b!1384445))

(declare-fun m!1269747 () Bool)

(assert (=> b!1384438 m!1269747))

(declare-fun m!1269749 () Bool)

(assert (=> b!1384445 m!1269749))

(declare-fun m!1269751 () Bool)

(assert (=> b!1384445 m!1269751))

(declare-fun m!1269753 () Bool)

(assert (=> b!1384442 m!1269753))

(declare-fun m!1269755 () Bool)

(assert (=> b!1384443 m!1269755))

(assert (=> b!1384443 m!1269755))

(declare-fun m!1269757 () Bool)

(assert (=> b!1384443 m!1269757))

(declare-fun m!1269759 () Bool)

(assert (=> start!118410 m!1269759))

(declare-fun m!1269761 () Bool)

(assert (=> start!118410 m!1269761))

(declare-fun m!1269763 () Bool)

(assert (=> b!1384439 m!1269763))

(declare-fun m!1269765 () Bool)

(assert (=> b!1384441 m!1269765))

(declare-fun m!1269767 () Bool)

(assert (=> b!1384441 m!1269767))

(declare-fun m!1269769 () Bool)

(assert (=> b!1384441 m!1269769))

(declare-fun m!1269771 () Bool)

(assert (=> b!1384441 m!1269771))

(assert (=> b!1384441 m!1269755))

(declare-fun m!1269773 () Bool)

(assert (=> b!1384441 m!1269773))

(assert (=> b!1384441 m!1269755))

(declare-fun m!1269775 () Bool)

(assert (=> b!1384441 m!1269775))

(assert (=> b!1384441 m!1269767))

(declare-fun m!1269777 () Bool)

(assert (=> b!1384441 m!1269777))

(assert (=> b!1384446 m!1269769))

(assert (=> b!1384447 m!1269753))

(assert (=> b!1384447 m!1269753))

(declare-fun m!1269779 () Bool)

(assert (=> b!1384447 m!1269779))

(check-sat (not b!1384441) (not b!1384439) (not b!1384443) (not start!118410) (not b!1384438) (not b!1384447) (not b!1384445))
(check-sat)
