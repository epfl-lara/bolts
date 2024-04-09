; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118426 () Bool)

(assert start!118426)

(declare-fun b!1384678 () Bool)

(declare-fun e!784640 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-datatypes ((array!94647 0))(
  ( (array!94648 (arr!45697 (Array (_ BitVec 32) (_ BitVec 64))) (size!46248 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94647)

(assert (=> b!1384678 (= e!784640 (not (bvsle startIndex!16 (size!46248 a!2938))))))

(declare-fun lt!608987 () array!94647)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94647 (_ BitVec 32)) Bool)

(assert (=> b!1384678 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608987 mask!2987)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((Unit!46149 0))(
  ( (Unit!46150) )
))
(declare-fun lt!608989 () Unit!46149)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46149)

(assert (=> b!1384678 (= lt!608989 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384679 () Bool)

(declare-fun res!926166 () Bool)

(declare-fun e!784642 () Bool)

(assert (=> b!1384679 (=> (not res!926166) (not e!784642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384679 (= res!926166 (validKeyInArray!0 (select (arr!45697 a!2938) i!1065)))))

(declare-fun b!1384680 () Bool)

(declare-fun e!784639 () Unit!46149)

(declare-fun Unit!46151 () Unit!46149)

(assert (=> b!1384680 (= e!784639 Unit!46151)))

(declare-fun b!1384681 () Bool)

(assert (=> b!1384681 (= e!784642 e!784640)))

(declare-fun res!926160 () Bool)

(assert (=> b!1384681 (=> (not res!926160) (not e!784640))))

(assert (=> b!1384681 (= res!926160 (and (bvslt startIndex!16 (bvsub (size!46248 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608985 () Unit!46149)

(assert (=> b!1384681 (= lt!608985 e!784639)))

(declare-fun c!128702 () Bool)

(declare-fun e!784641 () Bool)

(assert (=> b!1384681 (= c!128702 e!784641)))

(declare-fun res!926162 () Bool)

(assert (=> b!1384681 (=> (not res!926162) (not e!784641))))

(assert (=> b!1384681 (= res!926162 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384681 (= lt!608987 (array!94648 (store (arr!45697 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46248 a!2938)))))

(declare-fun b!1384682 () Bool)

(declare-fun res!926164 () Bool)

(assert (=> b!1384682 (=> (not res!926164) (not e!784642))))

(assert (=> b!1384682 (= res!926164 (and (not (= (select (arr!45697 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45697 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384683 () Bool)

(declare-fun res!926163 () Bool)

(assert (=> b!1384683 (=> (not res!926163) (not e!784642))))

(assert (=> b!1384683 (= res!926163 (and (= (size!46248 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46248 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46248 a!2938))))))

(declare-fun b!1384684 () Bool)

(declare-fun lt!608988 () Unit!46149)

(assert (=> b!1384684 (= e!784639 lt!608988)))

(declare-fun lt!608986 () Unit!46149)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46149)

(assert (=> b!1384684 (= lt!608986 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10111 0))(
  ( (MissingZero!10111 (index!42814 (_ BitVec 32))) (Found!10111 (index!42815 (_ BitVec 32))) (Intermediate!10111 (undefined!10923 Bool) (index!42816 (_ BitVec 32)) (x!124323 (_ BitVec 32))) (Undefined!10111) (MissingVacant!10111 (index!42817 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94647 (_ BitVec 32)) SeekEntryResult!10111)

(assert (=> b!1384684 (= (seekEntryOrOpen!0 (select (arr!45697 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45697 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608987 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46149)

(assert (=> b!1384684 (= lt!608988 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384684 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384685 () Bool)

(declare-fun res!926159 () Bool)

(assert (=> b!1384685 (=> (not res!926159) (not e!784642))))

(declare-datatypes ((List!32405 0))(
  ( (Nil!32402) (Cons!32401 (h!33610 (_ BitVec 64)) (t!47106 List!32405)) )
))
(declare-fun arrayNoDuplicates!0 (array!94647 (_ BitVec 32) List!32405) Bool)

(assert (=> b!1384685 (= res!926159 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32402))))

(declare-fun res!926165 () Bool)

(assert (=> start!118426 (=> (not res!926165) (not e!784642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118426 (= res!926165 (validMask!0 mask!2987))))

(assert (=> start!118426 e!784642))

(assert (=> start!118426 true))

(declare-fun array_inv!34642 (array!94647) Bool)

(assert (=> start!118426 (array_inv!34642 a!2938)))

(declare-fun b!1384686 () Bool)

(assert (=> b!1384686 (= e!784641 (validKeyInArray!0 (select (arr!45697 a!2938) startIndex!16)))))

(declare-fun b!1384687 () Bool)

(declare-fun res!926161 () Bool)

(assert (=> b!1384687 (=> (not res!926161) (not e!784642))))

(assert (=> b!1384687 (= res!926161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118426 res!926165) b!1384683))

(assert (= (and b!1384683 res!926163) b!1384679))

(assert (= (and b!1384679 res!926166) b!1384685))

(assert (= (and b!1384685 res!926159) b!1384687))

(assert (= (and b!1384687 res!926161) b!1384682))

(assert (= (and b!1384682 res!926164) b!1384681))

(assert (= (and b!1384681 res!926162) b!1384686))

(assert (= (and b!1384681 c!128702) b!1384684))

(assert (= (and b!1384681 (not c!128702)) b!1384680))

(assert (= (and b!1384681 res!926160) b!1384678))

(declare-fun m!1270019 () Bool)

(assert (=> b!1384687 m!1270019))

(declare-fun m!1270021 () Bool)

(assert (=> start!118426 m!1270021))

(declare-fun m!1270023 () Bool)

(assert (=> start!118426 m!1270023))

(declare-fun m!1270025 () Bool)

(assert (=> b!1384681 m!1270025))

(declare-fun m!1270027 () Bool)

(assert (=> b!1384686 m!1270027))

(assert (=> b!1384686 m!1270027))

(declare-fun m!1270029 () Bool)

(assert (=> b!1384686 m!1270029))

(declare-fun m!1270031 () Bool)

(assert (=> b!1384682 m!1270031))

(assert (=> b!1384679 m!1270031))

(assert (=> b!1384679 m!1270031))

(declare-fun m!1270033 () Bool)

(assert (=> b!1384679 m!1270033))

(declare-fun m!1270035 () Bool)

(assert (=> b!1384684 m!1270035))

(assert (=> b!1384684 m!1270025))

(declare-fun m!1270037 () Bool)

(assert (=> b!1384684 m!1270037))

(assert (=> b!1384684 m!1270027))

(declare-fun m!1270039 () Bool)

(assert (=> b!1384684 m!1270039))

(declare-fun m!1270041 () Bool)

(assert (=> b!1384684 m!1270041))

(assert (=> b!1384684 m!1270041))

(declare-fun m!1270043 () Bool)

(assert (=> b!1384684 m!1270043))

(assert (=> b!1384684 m!1270027))

(declare-fun m!1270045 () Bool)

(assert (=> b!1384684 m!1270045))

(declare-fun m!1270047 () Bool)

(assert (=> b!1384678 m!1270047))

(declare-fun m!1270049 () Bool)

(assert (=> b!1384678 m!1270049))

(declare-fun m!1270051 () Bool)

(assert (=> b!1384685 m!1270051))

(push 1)

(assert (not b!1384687))

(assert (not b!1384678))

(assert (not b!1384679))

(assert (not b!1384685))

(assert (not b!1384686))

(assert (not start!118426))

(assert (not b!1384684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

