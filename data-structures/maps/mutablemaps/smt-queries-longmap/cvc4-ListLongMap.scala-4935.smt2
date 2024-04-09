; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68006 () Bool)

(assert start!68006)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!439588 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!790874 () Bool)

(declare-datatypes ((array!42875 0))(
  ( (array!42876 (arr!20519 (Array (_ BitVec 32) (_ BitVec 64))) (size!20940 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42875)

(declare-datatypes ((SeekEntryResult!8126 0))(
  ( (MissingZero!8126 (index!34871 (_ BitVec 32))) (Found!8126 (index!34872 (_ BitVec 32))) (Intermediate!8126 (undefined!8938 Bool) (index!34873 (_ BitVec 32)) (x!65837 (_ BitVec 32))) (Undefined!8126) (MissingVacant!8126 (index!34874 (_ BitVec 32))) )
))
(declare-fun lt!353065 () SeekEntryResult!8126)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42875 (_ BitVec 32)) SeekEntryResult!8126)

(assert (=> b!790874 (= e!439588 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20519 a!3186) j!159) a!3186 mask!3328) lt!353065))))

(declare-fun b!790875 () Bool)

(declare-fun res!535842 () Bool)

(declare-fun e!439582 () Bool)

(assert (=> b!790875 (=> (not res!535842) (not e!439582))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790875 (= res!535842 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790876 () Bool)

(declare-fun res!535843 () Bool)

(assert (=> b!790876 (=> (not res!535843) (not e!439582))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790876 (= res!535843 (validKeyInArray!0 k!2102))))

(declare-fun b!790877 () Bool)

(declare-fun e!439583 () Bool)

(assert (=> b!790877 (= e!439583 (not true))))

(declare-fun e!439584 () Bool)

(assert (=> b!790877 e!439584))

(declare-fun res!535840 () Bool)

(assert (=> b!790877 (=> (not res!535840) (not e!439584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42875 (_ BitVec 32)) Bool)

(assert (=> b!790877 (= res!535840 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27404 0))(
  ( (Unit!27405) )
))
(declare-fun lt!353064 () Unit!27404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42875 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27404)

(assert (=> b!790877 (= lt!353064 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790878 () Bool)

(declare-fun res!535848 () Bool)

(declare-fun e!439586 () Bool)

(assert (=> b!790878 (=> (not res!535848) (not e!439586))))

(assert (=> b!790878 (= res!535848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790879 () Bool)

(declare-fun res!535837 () Bool)

(declare-fun e!439587 () Bool)

(assert (=> b!790879 (=> (not res!535837) (not e!439587))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!790879 (= res!535837 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20519 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790880 () Bool)

(assert (=> b!790880 (= e!439587 e!439583)))

(declare-fun res!535845 () Bool)

(assert (=> b!790880 (=> (not res!535845) (not e!439583))))

(declare-fun lt!353068 () (_ BitVec 64))

(declare-fun lt!353066 () array!42875)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790880 (= res!535845 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353068 mask!3328) lt!353068 lt!353066 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353068 lt!353066 mask!3328)))))

(assert (=> b!790880 (= lt!353068 (select (store (arr!20519 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!790880 (= lt!353066 (array!42876 (store (arr!20519 a!3186) i!1173 k!2102) (size!20940 a!3186)))))

(declare-fun res!535838 () Bool)

(assert (=> start!68006 (=> (not res!535838) (not e!439582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68006 (= res!535838 (validMask!0 mask!3328))))

(assert (=> start!68006 e!439582))

(assert (=> start!68006 true))

(declare-fun array_inv!16293 (array!42875) Bool)

(assert (=> start!68006 (array_inv!16293 a!3186)))

(declare-fun b!790881 () Bool)

(declare-fun res!535835 () Bool)

(assert (=> b!790881 (=> (not res!535835) (not e!439586))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790881 (= res!535835 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20940 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20940 a!3186))))))

(declare-fun b!790882 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42875 (_ BitVec 32)) SeekEntryResult!8126)

(assert (=> b!790882 (= e!439588 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20519 a!3186) j!159) a!3186 mask!3328) (Found!8126 j!159)))))

(declare-fun b!790883 () Bool)

(declare-fun res!535844 () Bool)

(assert (=> b!790883 (=> (not res!535844) (not e!439582))))

(assert (=> b!790883 (= res!535844 (validKeyInArray!0 (select (arr!20519 a!3186) j!159)))))

(declare-fun b!790884 () Bool)

(assert (=> b!790884 (= e!439582 e!439586)))

(declare-fun res!535841 () Bool)

(assert (=> b!790884 (=> (not res!535841) (not e!439586))))

(declare-fun lt!353063 () SeekEntryResult!8126)

(assert (=> b!790884 (= res!535841 (or (= lt!353063 (MissingZero!8126 i!1173)) (= lt!353063 (MissingVacant!8126 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42875 (_ BitVec 32)) SeekEntryResult!8126)

(assert (=> b!790884 (= lt!353063 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!353067 () SeekEntryResult!8126)

(declare-fun b!790885 () Bool)

(declare-fun e!439581 () Bool)

(assert (=> b!790885 (= e!439581 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20519 a!3186) j!159) a!3186 mask!3328) lt!353067))))

(declare-fun b!790886 () Bool)

(assert (=> b!790886 (= e!439586 e!439587)))

(declare-fun res!535846 () Bool)

(assert (=> b!790886 (=> (not res!535846) (not e!439587))))

(assert (=> b!790886 (= res!535846 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20519 a!3186) j!159) mask!3328) (select (arr!20519 a!3186) j!159) a!3186 mask!3328) lt!353065))))

(assert (=> b!790886 (= lt!353065 (Intermediate!8126 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!790887 () Bool)

(declare-fun res!535847 () Bool)

(assert (=> b!790887 (=> (not res!535847) (not e!439582))))

(assert (=> b!790887 (= res!535847 (and (= (size!20940 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20940 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20940 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!790888 () Bool)

(declare-fun res!535849 () Bool)

(assert (=> b!790888 (=> (not res!535849) (not e!439587))))

(assert (=> b!790888 (= res!535849 e!439588)))

(declare-fun c!87930 () Bool)

(assert (=> b!790888 (= c!87930 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!790889 () Bool)

(declare-fun res!535839 () Bool)

(assert (=> b!790889 (=> (not res!535839) (not e!439586))))

(declare-datatypes ((List!14574 0))(
  ( (Nil!14571) (Cons!14570 (h!15699 (_ BitVec 64)) (t!20897 List!14574)) )
))
(declare-fun arrayNoDuplicates!0 (array!42875 (_ BitVec 32) List!14574) Bool)

(assert (=> b!790889 (= res!535839 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14571))))

(declare-fun b!790890 () Bool)

(assert (=> b!790890 (= e!439584 e!439581)))

(declare-fun res!535836 () Bool)

(assert (=> b!790890 (=> (not res!535836) (not e!439581))))

(assert (=> b!790890 (= res!535836 (= (seekEntryOrOpen!0 (select (arr!20519 a!3186) j!159) a!3186 mask!3328) lt!353067))))

(assert (=> b!790890 (= lt!353067 (Found!8126 j!159))))

(assert (= (and start!68006 res!535838) b!790887))

(assert (= (and b!790887 res!535847) b!790883))

(assert (= (and b!790883 res!535844) b!790876))

(assert (= (and b!790876 res!535843) b!790875))

(assert (= (and b!790875 res!535842) b!790884))

(assert (= (and b!790884 res!535841) b!790878))

(assert (= (and b!790878 res!535848) b!790889))

(assert (= (and b!790889 res!535839) b!790881))

(assert (= (and b!790881 res!535835) b!790886))

(assert (= (and b!790886 res!535846) b!790879))

(assert (= (and b!790879 res!535837) b!790888))

(assert (= (and b!790888 c!87930) b!790874))

(assert (= (and b!790888 (not c!87930)) b!790882))

(assert (= (and b!790888 res!535849) b!790880))

(assert (= (and b!790880 res!535845) b!790877))

(assert (= (and b!790877 res!535840) b!790890))

(assert (= (and b!790890 res!535836) b!790885))

(declare-fun m!731733 () Bool)

(assert (=> b!790877 m!731733))

(declare-fun m!731735 () Bool)

(assert (=> b!790877 m!731735))

(declare-fun m!731737 () Bool)

(assert (=> b!790890 m!731737))

(assert (=> b!790890 m!731737))

(declare-fun m!731739 () Bool)

(assert (=> b!790890 m!731739))

(declare-fun m!731741 () Bool)

(assert (=> b!790876 m!731741))

(assert (=> b!790883 m!731737))

(assert (=> b!790883 m!731737))

(declare-fun m!731743 () Bool)

(assert (=> b!790883 m!731743))

(declare-fun m!731745 () Bool)

(assert (=> b!790880 m!731745))

(declare-fun m!731747 () Bool)

(assert (=> b!790880 m!731747))

(declare-fun m!731749 () Bool)

(assert (=> b!790880 m!731749))

(assert (=> b!790880 m!731747))

(declare-fun m!731751 () Bool)

(assert (=> b!790880 m!731751))

(declare-fun m!731753 () Bool)

(assert (=> b!790880 m!731753))

(declare-fun m!731755 () Bool)

(assert (=> start!68006 m!731755))

(declare-fun m!731757 () Bool)

(assert (=> start!68006 m!731757))

(declare-fun m!731759 () Bool)

(assert (=> b!790884 m!731759))

(assert (=> b!790882 m!731737))

(assert (=> b!790882 m!731737))

(declare-fun m!731761 () Bool)

(assert (=> b!790882 m!731761))

(assert (=> b!790874 m!731737))

(assert (=> b!790874 m!731737))

(declare-fun m!731763 () Bool)

(assert (=> b!790874 m!731763))

(declare-fun m!731765 () Bool)

(assert (=> b!790875 m!731765))

(declare-fun m!731767 () Bool)

(assert (=> b!790889 m!731767))

(assert (=> b!790885 m!731737))

(assert (=> b!790885 m!731737))

(declare-fun m!731769 () Bool)

(assert (=> b!790885 m!731769))

(declare-fun m!731771 () Bool)

(assert (=> b!790879 m!731771))

(assert (=> b!790886 m!731737))

(assert (=> b!790886 m!731737))

(declare-fun m!731773 () Bool)

(assert (=> b!790886 m!731773))

(assert (=> b!790886 m!731773))

(assert (=> b!790886 m!731737))

(declare-fun m!731775 () Bool)

(assert (=> b!790886 m!731775))

(declare-fun m!731777 () Bool)

(assert (=> b!790878 m!731777))

(push 1)

