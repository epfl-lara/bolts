; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120052 () Bool)

(assert start!120052)

(declare-fun b!1397036 () Bool)

(declare-fun res!936058 () Bool)

(declare-fun e!790938 () Bool)

(assert (=> b!1397036 (=> (not res!936058) (not e!790938))))

(declare-datatypes ((array!95499 0))(
  ( (array!95500 (arr!46099 (Array (_ BitVec 32) (_ BitVec 64))) (size!46650 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95499)

(declare-datatypes ((List!32798 0))(
  ( (Nil!32795) (Cons!32794 (h!34036 (_ BitVec 64)) (t!47499 List!32798)) )
))
(declare-fun arrayNoDuplicates!0 (array!95499 (_ BitVec 32) List!32798) Bool)

(assert (=> b!1397036 (= res!936058 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32795))))

(declare-fun b!1397037 () Bool)

(declare-fun e!790939 () Bool)

(assert (=> b!1397037 (= e!790938 (not e!790939))))

(declare-fun res!936060 () Bool)

(assert (=> b!1397037 (=> res!936060 e!790939)))

(declare-datatypes ((SeekEntryResult!10438 0))(
  ( (MissingZero!10438 (index!44122 (_ BitVec 32))) (Found!10438 (index!44123 (_ BitVec 32))) (Intermediate!10438 (undefined!11250 Bool) (index!44124 (_ BitVec 32)) (x!125791 (_ BitVec 32))) (Undefined!10438) (MissingVacant!10438 (index!44125 (_ BitVec 32))) )
))
(declare-fun lt!613894 () SeekEntryResult!10438)

(assert (=> b!1397037 (= res!936060 (or (not (is-Intermediate!10438 lt!613894)) (undefined!11250 lt!613894)))))

(declare-fun e!790936 () Bool)

(assert (=> b!1397037 e!790936))

(declare-fun res!936059 () Bool)

(assert (=> b!1397037 (=> (not res!936059) (not e!790936))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95499 (_ BitVec 32)) Bool)

(assert (=> b!1397037 (= res!936059 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46830 0))(
  ( (Unit!46831) )
))
(declare-fun lt!613897 () Unit!46830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95499 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46830)

(assert (=> b!1397037 (= lt!613897 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613895 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95499 (_ BitVec 32)) SeekEntryResult!10438)

(assert (=> b!1397037 (= lt!613894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613895 (select (arr!46099 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397037 (= lt!613895 (toIndex!0 (select (arr!46099 a!2901) j!112) mask!2840))))

(declare-fun b!1397038 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95499 (_ BitVec 32)) SeekEntryResult!10438)

(assert (=> b!1397038 (= e!790936 (= (seekEntryOrOpen!0 (select (arr!46099 a!2901) j!112) a!2901 mask!2840) (Found!10438 j!112)))))

(declare-fun b!1397039 () Bool)

(declare-fun e!790937 () Bool)

(assert (=> b!1397039 (= e!790937 true)))

(declare-fun lt!613896 () array!95499)

(declare-fun lt!613900 () SeekEntryResult!10438)

(declare-fun lt!613899 () (_ BitVec 64))

(assert (=> b!1397039 (= lt!613900 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613895 lt!613899 lt!613896 mask!2840))))

(declare-fun b!1397041 () Bool)

(assert (=> b!1397041 (= e!790939 e!790937)))

(declare-fun res!936062 () Bool)

(assert (=> b!1397041 (=> res!936062 e!790937)))

(declare-fun lt!613898 () SeekEntryResult!10438)

(assert (=> b!1397041 (= res!936062 (or (= lt!613894 lt!613898) (not (is-Intermediate!10438 lt!613898)) (bvslt (x!125791 lt!613894) #b00000000000000000000000000000000) (bvsgt (x!125791 lt!613894) #b01111111111111111111111111111110) (bvslt lt!613895 #b00000000000000000000000000000000) (bvsge lt!613895 (size!46650 a!2901)) (bvslt (index!44124 lt!613894) #b00000000000000000000000000000000) (bvsge (index!44124 lt!613894) (size!46650 a!2901)) (not (= lt!613894 (Intermediate!10438 false (index!44124 lt!613894) (x!125791 lt!613894)))) (not (= lt!613898 (Intermediate!10438 (undefined!11250 lt!613898) (index!44124 lt!613898) (x!125791 lt!613898))))))))

(assert (=> b!1397041 (= lt!613898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613899 mask!2840) lt!613899 lt!613896 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397041 (= lt!613899 (select (store (arr!46099 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397041 (= lt!613896 (array!95500 (store (arr!46099 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46650 a!2901)))))

(declare-fun b!1397042 () Bool)

(declare-fun res!936065 () Bool)

(assert (=> b!1397042 (=> (not res!936065) (not e!790938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397042 (= res!936065 (validKeyInArray!0 (select (arr!46099 a!2901) i!1037)))))

(declare-fun b!1397043 () Bool)

(declare-fun res!936066 () Bool)

(assert (=> b!1397043 (=> (not res!936066) (not e!790938))))

(assert (=> b!1397043 (= res!936066 (and (= (size!46650 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46650 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46650 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397044 () Bool)

(declare-fun res!936063 () Bool)

(assert (=> b!1397044 (=> (not res!936063) (not e!790938))))

(assert (=> b!1397044 (= res!936063 (validKeyInArray!0 (select (arr!46099 a!2901) j!112)))))

(declare-fun res!936064 () Bool)

(assert (=> start!120052 (=> (not res!936064) (not e!790938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120052 (= res!936064 (validMask!0 mask!2840))))

(assert (=> start!120052 e!790938))

(assert (=> start!120052 true))

(declare-fun array_inv!35044 (array!95499) Bool)

(assert (=> start!120052 (array_inv!35044 a!2901)))

(declare-fun b!1397040 () Bool)

(declare-fun res!936061 () Bool)

(assert (=> b!1397040 (=> (not res!936061) (not e!790938))))

(assert (=> b!1397040 (= res!936061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120052 res!936064) b!1397043))

(assert (= (and b!1397043 res!936066) b!1397042))

(assert (= (and b!1397042 res!936065) b!1397044))

(assert (= (and b!1397044 res!936063) b!1397040))

(assert (= (and b!1397040 res!936061) b!1397036))

(assert (= (and b!1397036 res!936058) b!1397037))

(assert (= (and b!1397037 res!936059) b!1397038))

(assert (= (and b!1397037 (not res!936060)) b!1397041))

(assert (= (and b!1397041 (not res!936062)) b!1397039))

(declare-fun m!1283759 () Bool)

(assert (=> start!120052 m!1283759))

(declare-fun m!1283761 () Bool)

(assert (=> start!120052 m!1283761))

(declare-fun m!1283763 () Bool)

(assert (=> b!1397042 m!1283763))

(assert (=> b!1397042 m!1283763))

(declare-fun m!1283765 () Bool)

(assert (=> b!1397042 m!1283765))

(declare-fun m!1283767 () Bool)

(assert (=> b!1397037 m!1283767))

(declare-fun m!1283769 () Bool)

(assert (=> b!1397037 m!1283769))

(assert (=> b!1397037 m!1283767))

(declare-fun m!1283771 () Bool)

(assert (=> b!1397037 m!1283771))

(assert (=> b!1397037 m!1283767))

(declare-fun m!1283773 () Bool)

(assert (=> b!1397037 m!1283773))

(declare-fun m!1283775 () Bool)

(assert (=> b!1397037 m!1283775))

(assert (=> b!1397044 m!1283767))

(assert (=> b!1397044 m!1283767))

(declare-fun m!1283777 () Bool)

(assert (=> b!1397044 m!1283777))

(declare-fun m!1283779 () Bool)

(assert (=> b!1397040 m!1283779))

(declare-fun m!1283781 () Bool)

(assert (=> b!1397041 m!1283781))

(assert (=> b!1397041 m!1283781))

(declare-fun m!1283783 () Bool)

(assert (=> b!1397041 m!1283783))

(declare-fun m!1283785 () Bool)

(assert (=> b!1397041 m!1283785))

(declare-fun m!1283787 () Bool)

(assert (=> b!1397041 m!1283787))

(declare-fun m!1283789 () Bool)

(assert (=> b!1397039 m!1283789))

(declare-fun m!1283791 () Bool)

(assert (=> b!1397036 m!1283791))

(assert (=> b!1397038 m!1283767))

(assert (=> b!1397038 m!1283767))

(declare-fun m!1283793 () Bool)

(assert (=> b!1397038 m!1283793))

(push 1)

