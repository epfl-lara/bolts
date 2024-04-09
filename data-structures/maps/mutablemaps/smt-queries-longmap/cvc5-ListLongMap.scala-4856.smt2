; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66922 () Bool)

(assert start!66922)

(declare-fun res!522068 () Bool)

(declare-fun e!429649 () Bool)

(assert (=> start!66922 (=> (not res!522068) (not e!429649))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66922 (= res!522068 (validMask!0 mask!3328))))

(assert (=> start!66922 e!429649))

(assert (=> start!66922 true))

(declare-datatypes ((array!42370 0))(
  ( (array!42371 (arr!20280 (Array (_ BitVec 32) (_ BitVec 64))) (size!20701 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42370)

(declare-fun array_inv!16054 (array!42370) Bool)

(assert (=> start!66922 (array_inv!16054 a!3186)))

(declare-fun b!771707 () Bool)

(declare-fun res!522069 () Bool)

(assert (=> b!771707 (=> (not res!522069) (not e!429649))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771707 (= res!522069 (validKeyInArray!0 k!2102))))

(declare-fun b!771708 () Bool)

(declare-fun e!429652 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!771708 (= e!429652 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!26584 0))(
  ( (Unit!26585) )
))
(declare-fun lt!343563 () Unit!26584)

(declare-fun e!429655 () Unit!26584)

(assert (=> b!771708 (= lt!343563 e!429655)))

(declare-fun c!85218 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!771708 (= c!85218 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!343570 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771708 (= lt!343570 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771709 () Bool)

(declare-fun res!522067 () Bool)

(declare-fun e!429654 () Bool)

(assert (=> b!771709 (=> (not res!522067) (not e!429654))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!771709 (= res!522067 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20701 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20701 a!3186))))))

(declare-fun b!771710 () Bool)

(assert (=> b!771710 (= e!429649 e!429654)))

(declare-fun res!522074 () Bool)

(assert (=> b!771710 (=> (not res!522074) (not e!429654))))

(declare-datatypes ((SeekEntryResult!7887 0))(
  ( (MissingZero!7887 (index!33915 (_ BitVec 32))) (Found!7887 (index!33916 (_ BitVec 32))) (Intermediate!7887 (undefined!8699 Bool) (index!33917 (_ BitVec 32)) (x!64879 (_ BitVec 32))) (Undefined!7887) (MissingVacant!7887 (index!33918 (_ BitVec 32))) )
))
(declare-fun lt!343566 () SeekEntryResult!7887)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771710 (= res!522074 (or (= lt!343566 (MissingZero!7887 i!1173)) (= lt!343566 (MissingVacant!7887 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42370 (_ BitVec 32)) SeekEntryResult!7887)

(assert (=> b!771710 (= lt!343566 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!771711 () Bool)

(declare-fun res!522075 () Bool)

(assert (=> b!771711 (=> (not res!522075) (not e!429654))))

(declare-datatypes ((List!14335 0))(
  ( (Nil!14332) (Cons!14331 (h!15433 (_ BitVec 64)) (t!20658 List!14335)) )
))
(declare-fun arrayNoDuplicates!0 (array!42370 (_ BitVec 32) List!14335) Bool)

(assert (=> b!771711 (= res!522075 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14332))))

(declare-fun b!771712 () Bool)

(declare-fun res!522079 () Bool)

(assert (=> b!771712 (=> (not res!522079) (not e!429649))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!771712 (= res!522079 (validKeyInArray!0 (select (arr!20280 a!3186) j!159)))))

(declare-fun b!771713 () Bool)

(declare-fun e!429650 () Bool)

(declare-fun lt!343573 () SeekEntryResult!7887)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42370 (_ BitVec 32)) SeekEntryResult!7887)

(assert (=> b!771713 (= e!429650 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20280 a!3186) j!159) a!3186 mask!3328) lt!343573))))

(declare-fun b!771714 () Bool)

(declare-fun Unit!26586 () Unit!26584)

(assert (=> b!771714 (= e!429655 Unit!26586)))

(declare-fun lt!343567 () SeekEntryResult!7887)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42370 (_ BitVec 32)) SeekEntryResult!7887)

(assert (=> b!771714 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343570 (select (arr!20280 a!3186) j!159) a!3186 mask!3328) lt!343567)))

(declare-fun b!771715 () Bool)

(declare-fun res!522076 () Bool)

(declare-fun e!429648 () Bool)

(assert (=> b!771715 (=> (not res!522076) (not e!429648))))

(assert (=> b!771715 (= res!522076 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20280 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771716 () Bool)

(declare-fun res!522073 () Bool)

(assert (=> b!771716 (=> (not res!522073) (not e!429649))))

(declare-fun arrayContainsKey!0 (array!42370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771716 (= res!522073 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771717 () Bool)

(declare-fun e!429646 () Bool)

(assert (=> b!771717 (= e!429646 (not e!429652))))

(declare-fun res!522071 () Bool)

(assert (=> b!771717 (=> res!522071 e!429652)))

(declare-fun lt!343569 () SeekEntryResult!7887)

(assert (=> b!771717 (= res!522071 (or (not (is-Intermediate!7887 lt!343569)) (bvsge x!1131 (x!64879 lt!343569))))))

(declare-fun e!429647 () Bool)

(assert (=> b!771717 e!429647))

(declare-fun res!522078 () Bool)

(assert (=> b!771717 (=> (not res!522078) (not e!429647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42370 (_ BitVec 32)) Bool)

(assert (=> b!771717 (= res!522078 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343568 () Unit!26584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26584)

(assert (=> b!771717 (= lt!343568 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!429651 () Bool)

(declare-fun b!771718 () Bool)

(assert (=> b!771718 (= e!429651 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20280 a!3186) j!159) a!3186 mask!3328) lt!343567))))

(declare-fun b!771719 () Bool)

(declare-fun Unit!26587 () Unit!26584)

(assert (=> b!771719 (= e!429655 Unit!26587)))

(declare-fun lt!343565 () SeekEntryResult!7887)

(assert (=> b!771719 (= lt!343565 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20280 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!771719 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343570 resIntermediateIndex!5 (select (arr!20280 a!3186) j!159) a!3186 mask!3328) (Found!7887 j!159))))

(declare-fun b!771720 () Bool)

(declare-fun res!522081 () Bool)

(assert (=> b!771720 (=> (not res!522081) (not e!429649))))

(assert (=> b!771720 (= res!522081 (and (= (size!20701 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20701 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20701 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!771721 () Bool)

(assert (=> b!771721 (= e!429654 e!429648)))

(declare-fun res!522070 () Bool)

(assert (=> b!771721 (=> (not res!522070) (not e!429648))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771721 (= res!522070 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20280 a!3186) j!159) mask!3328) (select (arr!20280 a!3186) j!159) a!3186 mask!3328) lt!343567))))

(assert (=> b!771721 (= lt!343567 (Intermediate!7887 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!771722 () Bool)

(assert (=> b!771722 (= e!429648 e!429646)))

(declare-fun res!522082 () Bool)

(assert (=> b!771722 (=> (not res!522082) (not e!429646))))

(declare-fun lt!343564 () SeekEntryResult!7887)

(assert (=> b!771722 (= res!522082 (= lt!343564 lt!343569))))

(declare-fun lt!343571 () (_ BitVec 64))

(declare-fun lt!343572 () array!42370)

(assert (=> b!771722 (= lt!343569 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343571 lt!343572 mask!3328))))

(assert (=> b!771722 (= lt!343564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343571 mask!3328) lt!343571 lt!343572 mask!3328))))

(assert (=> b!771722 (= lt!343571 (select (store (arr!20280 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!771722 (= lt!343572 (array!42371 (store (arr!20280 a!3186) i!1173 k!2102) (size!20701 a!3186)))))

(declare-fun b!771723 () Bool)

(assert (=> b!771723 (= e!429651 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20280 a!3186) j!159) a!3186 mask!3328) (Found!7887 j!159)))))

(declare-fun b!771724 () Bool)

(declare-fun res!522080 () Bool)

(assert (=> b!771724 (=> (not res!522080) (not e!429654))))

(assert (=> b!771724 (= res!522080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!771725 () Bool)

(declare-fun res!522077 () Bool)

(assert (=> b!771725 (=> (not res!522077) (not e!429648))))

(assert (=> b!771725 (= res!522077 e!429651)))

(declare-fun c!85217 () Bool)

(assert (=> b!771725 (= c!85217 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!771726 () Bool)

(assert (=> b!771726 (= e!429647 e!429650)))

(declare-fun res!522072 () Bool)

(assert (=> b!771726 (=> (not res!522072) (not e!429650))))

(assert (=> b!771726 (= res!522072 (= (seekEntryOrOpen!0 (select (arr!20280 a!3186) j!159) a!3186 mask!3328) lt!343573))))

(assert (=> b!771726 (= lt!343573 (Found!7887 j!159))))

(assert (= (and start!66922 res!522068) b!771720))

(assert (= (and b!771720 res!522081) b!771712))

(assert (= (and b!771712 res!522079) b!771707))

(assert (= (and b!771707 res!522069) b!771716))

(assert (= (and b!771716 res!522073) b!771710))

(assert (= (and b!771710 res!522074) b!771724))

(assert (= (and b!771724 res!522080) b!771711))

(assert (= (and b!771711 res!522075) b!771709))

(assert (= (and b!771709 res!522067) b!771721))

(assert (= (and b!771721 res!522070) b!771715))

(assert (= (and b!771715 res!522076) b!771725))

(assert (= (and b!771725 c!85217) b!771718))

(assert (= (and b!771725 (not c!85217)) b!771723))

(assert (= (and b!771725 res!522077) b!771722))

(assert (= (and b!771722 res!522082) b!771717))

(assert (= (and b!771717 res!522078) b!771726))

(assert (= (and b!771726 res!522072) b!771713))

(assert (= (and b!771717 (not res!522071)) b!771708))

(assert (= (and b!771708 c!85218) b!771714))

(assert (= (and b!771708 (not c!85218)) b!771719))

(declare-fun m!716803 () Bool)

(assert (=> b!771714 m!716803))

(assert (=> b!771714 m!716803))

(declare-fun m!716805 () Bool)

(assert (=> b!771714 m!716805))

(declare-fun m!716807 () Bool)

(assert (=> b!771724 m!716807))

(declare-fun m!716809 () Bool)

(assert (=> b!771715 m!716809))

(declare-fun m!716811 () Bool)

(assert (=> b!771710 m!716811))

(assert (=> b!771726 m!716803))

(assert (=> b!771726 m!716803))

(declare-fun m!716813 () Bool)

(assert (=> b!771726 m!716813))

(assert (=> b!771723 m!716803))

(assert (=> b!771723 m!716803))

(declare-fun m!716815 () Bool)

(assert (=> b!771723 m!716815))

(assert (=> b!771713 m!716803))

(assert (=> b!771713 m!716803))

(declare-fun m!716817 () Bool)

(assert (=> b!771713 m!716817))

(assert (=> b!771712 m!716803))

(assert (=> b!771712 m!716803))

(declare-fun m!716819 () Bool)

(assert (=> b!771712 m!716819))

(declare-fun m!716821 () Bool)

(assert (=> b!771716 m!716821))

(assert (=> b!771721 m!716803))

(assert (=> b!771721 m!716803))

(declare-fun m!716823 () Bool)

(assert (=> b!771721 m!716823))

(assert (=> b!771721 m!716823))

(assert (=> b!771721 m!716803))

(declare-fun m!716825 () Bool)

(assert (=> b!771721 m!716825))

(declare-fun m!716827 () Bool)

(assert (=> start!66922 m!716827))

(declare-fun m!716829 () Bool)

(assert (=> start!66922 m!716829))

(declare-fun m!716831 () Bool)

(assert (=> b!771707 m!716831))

(assert (=> b!771718 m!716803))

(assert (=> b!771718 m!716803))

(declare-fun m!716833 () Bool)

(assert (=> b!771718 m!716833))

(declare-fun m!716835 () Bool)

(assert (=> b!771708 m!716835))

(declare-fun m!716837 () Bool)

(assert (=> b!771722 m!716837))

(declare-fun m!716839 () Bool)

(assert (=> b!771722 m!716839))

(declare-fun m!716841 () Bool)

(assert (=> b!771722 m!716841))

(declare-fun m!716843 () Bool)

(assert (=> b!771722 m!716843))

(declare-fun m!716845 () Bool)

(assert (=> b!771722 m!716845))

(assert (=> b!771722 m!716843))

(declare-fun m!716847 () Bool)

(assert (=> b!771717 m!716847))

(declare-fun m!716849 () Bool)

(assert (=> b!771717 m!716849))

(assert (=> b!771719 m!716803))

(assert (=> b!771719 m!716803))

(assert (=> b!771719 m!716815))

(assert (=> b!771719 m!716803))

(declare-fun m!716851 () Bool)

(assert (=> b!771719 m!716851))

(declare-fun m!716853 () Bool)

(assert (=> b!771711 m!716853))

(push 1)

