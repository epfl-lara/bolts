; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50834 () Bool)

(assert start!50834)

(declare-fun e!320285 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!555824 () Bool)

(declare-datatypes ((SeekEntryResult!5268 0))(
  ( (MissingZero!5268 (index!23299 (_ BitVec 32))) (Found!5268 (index!23300 (_ BitVec 32))) (Intermediate!5268 (undefined!6080 Bool) (index!23301 (_ BitVec 32)) (x!52225 (_ BitVec 32))) (Undefined!5268) (MissingVacant!5268 (index!23302 (_ BitVec 32))) )
))
(declare-fun lt!252721 () SeekEntryResult!5268)

(declare-datatypes ((array!35013 0))(
  ( (array!35014 (arr!16812 (Array (_ BitVec 32) (_ BitVec 64))) (size!17176 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35013)

(assert (=> b!555824 (= e!320285 (not (or (not (is-Intermediate!5268 lt!252721)) (undefined!6080 lt!252721) (= (select (arr!16812 a!3118) (index!23301 lt!252721)) (select (arr!16812 a!3118) j!142)) (= (select (arr!16812 a!3118) (index!23301 lt!252721)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!320286 () Bool)

(assert (=> b!555824 e!320286))

(declare-fun res!348386 () Bool)

(assert (=> b!555824 (=> (not res!348386) (not e!320286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35013 (_ BitVec 32)) Bool)

(assert (=> b!555824 (= res!348386 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17310 0))(
  ( (Unit!17311) )
))
(declare-fun lt!252722 () Unit!17310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17310)

(assert (=> b!555824 (= lt!252722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555825 () Bool)

(declare-fun res!348395 () Bool)

(declare-fun e!320284 () Bool)

(assert (=> b!555825 (=> (not res!348395) (not e!320284))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555825 (= res!348395 (and (= (size!17176 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17176 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17176 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!348387 () Bool)

(assert (=> start!50834 (=> (not res!348387) (not e!320284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50834 (= res!348387 (validMask!0 mask!3119))))

(assert (=> start!50834 e!320284))

(assert (=> start!50834 true))

(declare-fun array_inv!12586 (array!35013) Bool)

(assert (=> start!50834 (array_inv!12586 a!3118)))

(declare-fun b!555826 () Bool)

(declare-fun res!348394 () Bool)

(assert (=> b!555826 (=> (not res!348394) (not e!320284))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555826 (= res!348394 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555827 () Bool)

(declare-fun e!320287 () Bool)

(assert (=> b!555827 (= e!320284 e!320287)))

(declare-fun res!348388 () Bool)

(assert (=> b!555827 (=> (not res!348388) (not e!320287))))

(declare-fun lt!252718 () SeekEntryResult!5268)

(assert (=> b!555827 (= res!348388 (or (= lt!252718 (MissingZero!5268 i!1132)) (= lt!252718 (MissingVacant!5268 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35013 (_ BitVec 32)) SeekEntryResult!5268)

(assert (=> b!555827 (= lt!252718 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555828 () Bool)

(declare-fun res!348393 () Bool)

(assert (=> b!555828 (=> (not res!348393) (not e!320284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555828 (= res!348393 (validKeyInArray!0 k!1914))))

(declare-fun b!555829 () Bool)

(declare-fun res!348389 () Bool)

(assert (=> b!555829 (=> (not res!348389) (not e!320284))))

(assert (=> b!555829 (= res!348389 (validKeyInArray!0 (select (arr!16812 a!3118) j!142)))))

(declare-fun b!555830 () Bool)

(declare-fun res!348390 () Bool)

(assert (=> b!555830 (=> (not res!348390) (not e!320287))))

(assert (=> b!555830 (= res!348390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555831 () Bool)

(assert (=> b!555831 (= e!320286 (= (seekEntryOrOpen!0 (select (arr!16812 a!3118) j!142) a!3118 mask!3119) (Found!5268 j!142)))))

(declare-fun b!555832 () Bool)

(assert (=> b!555832 (= e!320287 e!320285)))

(declare-fun res!348391 () Bool)

(assert (=> b!555832 (=> (not res!348391) (not e!320285))))

(declare-fun lt!252720 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35013 (_ BitVec 32)) SeekEntryResult!5268)

(assert (=> b!555832 (= res!348391 (= lt!252721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252720 (select (store (arr!16812 a!3118) i!1132 k!1914) j!142) (array!35014 (store (arr!16812 a!3118) i!1132 k!1914) (size!17176 a!3118)) mask!3119)))))

(declare-fun lt!252719 () (_ BitVec 32))

(assert (=> b!555832 (= lt!252721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252719 (select (arr!16812 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555832 (= lt!252720 (toIndex!0 (select (store (arr!16812 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555832 (= lt!252719 (toIndex!0 (select (arr!16812 a!3118) j!142) mask!3119))))

(declare-fun b!555833 () Bool)

(declare-fun res!348392 () Bool)

(assert (=> b!555833 (=> (not res!348392) (not e!320287))))

(declare-datatypes ((List!10945 0))(
  ( (Nil!10942) (Cons!10941 (h!11926 (_ BitVec 64)) (t!17181 List!10945)) )
))
(declare-fun arrayNoDuplicates!0 (array!35013 (_ BitVec 32) List!10945) Bool)

(assert (=> b!555833 (= res!348392 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10942))))

(assert (= (and start!50834 res!348387) b!555825))

(assert (= (and b!555825 res!348395) b!555829))

(assert (= (and b!555829 res!348389) b!555828))

(assert (= (and b!555828 res!348393) b!555826))

(assert (= (and b!555826 res!348394) b!555827))

(assert (= (and b!555827 res!348388) b!555830))

(assert (= (and b!555830 res!348390) b!555833))

(assert (= (and b!555833 res!348392) b!555832))

(assert (= (and b!555832 res!348391) b!555824))

(assert (= (and b!555824 res!348386) b!555831))

(declare-fun m!533761 () Bool)

(assert (=> b!555830 m!533761))

(declare-fun m!533763 () Bool)

(assert (=> b!555826 m!533763))

(declare-fun m!533765 () Bool)

(assert (=> b!555829 m!533765))

(assert (=> b!555829 m!533765))

(declare-fun m!533767 () Bool)

(assert (=> b!555829 m!533767))

(assert (=> b!555832 m!533765))

(declare-fun m!533769 () Bool)

(assert (=> b!555832 m!533769))

(assert (=> b!555832 m!533765))

(declare-fun m!533771 () Bool)

(assert (=> b!555832 m!533771))

(declare-fun m!533773 () Bool)

(assert (=> b!555832 m!533773))

(assert (=> b!555832 m!533771))

(declare-fun m!533775 () Bool)

(assert (=> b!555832 m!533775))

(assert (=> b!555832 m!533771))

(declare-fun m!533777 () Bool)

(assert (=> b!555832 m!533777))

(assert (=> b!555832 m!533765))

(declare-fun m!533779 () Bool)

(assert (=> b!555832 m!533779))

(assert (=> b!555831 m!533765))

(assert (=> b!555831 m!533765))

(declare-fun m!533781 () Bool)

(assert (=> b!555831 m!533781))

(declare-fun m!533783 () Bool)

(assert (=> b!555828 m!533783))

(declare-fun m!533785 () Bool)

(assert (=> b!555824 m!533785))

(assert (=> b!555824 m!533765))

(declare-fun m!533787 () Bool)

(assert (=> b!555824 m!533787))

(declare-fun m!533789 () Bool)

(assert (=> b!555824 m!533789))

(declare-fun m!533791 () Bool)

(assert (=> start!50834 m!533791))

(declare-fun m!533793 () Bool)

(assert (=> start!50834 m!533793))

(declare-fun m!533795 () Bool)

(assert (=> b!555833 m!533795))

(declare-fun m!533797 () Bool)

(assert (=> b!555827 m!533797))

(push 1)

