; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65848 () Bool)

(assert start!65848)

(declare-fun b!757918 () Bool)

(declare-fun res!512799 () Bool)

(declare-fun e!422593 () Bool)

(assert (=> b!757918 (=> (not res!512799) (not e!422593))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!41974 0))(
  ( (array!41975 (arr!20097 (Array (_ BitVec 32) (_ BitVec 64))) (size!20518 (_ BitVec 32))) )
))
(declare-fun lt!337591 () array!41974)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!337597 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7704 0))(
  ( (MissingZero!7704 (index!33183 (_ BitVec 32))) (Found!7704 (index!33184 (_ BitVec 32))) (Intermediate!7704 (undefined!8516 Bool) (index!33185 (_ BitVec 32)) (x!64103 (_ BitVec 32))) (Undefined!7704) (MissingVacant!7704 (index!33186 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41974 (_ BitVec 32)) SeekEntryResult!7704)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41974 (_ BitVec 32)) SeekEntryResult!7704)

(assert (=> b!757918 (= res!512799 (= (seekEntryOrOpen!0 lt!337597 lt!337591 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337597 lt!337591 mask!3328)))))

(declare-fun b!757919 () Bool)

(declare-fun e!422592 () Bool)

(declare-fun e!422596 () Bool)

(assert (=> b!757919 (= e!422592 e!422596)))

(declare-fun res!512786 () Bool)

(assert (=> b!757919 (=> res!512786 e!422596)))

(declare-fun lt!337594 () SeekEntryResult!7704)

(declare-fun lt!337593 () SeekEntryResult!7704)

(assert (=> b!757919 (= res!512786 (not (= lt!337594 lt!337593)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun a!3186 () array!41974)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!757919 (= lt!337594 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20097 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757920 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!422595 () Bool)

(assert (=> b!757920 (= e!422595 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20097 a!3186) j!159) a!3186 mask!3328) lt!337593))))

(declare-fun b!757921 () Bool)

(declare-fun res!512793 () Bool)

(declare-fun e!422588 () Bool)

(assert (=> b!757921 (=> (not res!512793) (not e!422588))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757921 (= res!512793 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20097 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757922 () Bool)

(declare-fun res!512787 () Bool)

(assert (=> b!757922 (=> (not res!512787) (not e!422588))))

(declare-fun e!422591 () Bool)

(assert (=> b!757922 (= res!512787 e!422591)))

(declare-fun c!82950 () Bool)

(assert (=> b!757922 (= c!82950 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757923 () Bool)

(declare-fun e!422587 () Bool)

(declare-fun e!422594 () Bool)

(assert (=> b!757923 (= e!422587 e!422594)))

(declare-fun res!512798 () Bool)

(assert (=> b!757923 (=> (not res!512798) (not e!422594))))

(declare-fun lt!337589 () SeekEntryResult!7704)

(assert (=> b!757923 (= res!512798 (or (= lt!337589 (MissingZero!7704 i!1173)) (= lt!337589 (MissingVacant!7704 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!757923 (= lt!337589 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757924 () Bool)

(declare-fun e!422597 () Bool)

(assert (=> b!757924 (= e!422588 e!422597)))

(declare-fun res!512791 () Bool)

(assert (=> b!757924 (=> (not res!512791) (not e!422597))))

(declare-fun lt!337590 () SeekEntryResult!7704)

(declare-fun lt!337598 () SeekEntryResult!7704)

(assert (=> b!757924 (= res!512791 (= lt!337590 lt!337598))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41974 (_ BitVec 32)) SeekEntryResult!7704)

(assert (=> b!757924 (= lt!337598 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337597 lt!337591 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757924 (= lt!337590 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337597 mask!3328) lt!337597 lt!337591 mask!3328))))

(assert (=> b!757924 (= lt!337597 (select (store (arr!20097 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757924 (= lt!337591 (array!41975 (store (arr!20097 a!3186) i!1173 k!2102) (size!20518 a!3186)))))

(declare-fun b!757925 () Bool)

(declare-fun res!512783 () Bool)

(assert (=> b!757925 (=> (not res!512783) (not e!422587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757925 (= res!512783 (validKeyInArray!0 k!2102))))

(declare-fun b!757926 () Bool)

(declare-fun res!512796 () Bool)

(assert (=> b!757926 (=> (not res!512796) (not e!422587))))

(assert (=> b!757926 (= res!512796 (validKeyInArray!0 (select (arr!20097 a!3186) j!159)))))

(declare-fun b!757927 () Bool)

(declare-datatypes ((Unit!26218 0))(
  ( (Unit!26219) )
))
(declare-fun e!422590 () Unit!26218)

(declare-fun Unit!26220 () Unit!26218)

(assert (=> b!757927 (= e!422590 Unit!26220)))

(declare-fun res!512795 () Bool)

(assert (=> start!65848 (=> (not res!512795) (not e!422587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65848 (= res!512795 (validMask!0 mask!3328))))

(assert (=> start!65848 e!422587))

(assert (=> start!65848 true))

(declare-fun array_inv!15871 (array!41974) Bool)

(assert (=> start!65848 (array_inv!15871 a!3186)))

(declare-fun b!757928 () Bool)

(declare-fun res!512788 () Bool)

(assert (=> b!757928 (=> (not res!512788) (not e!422594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41974 (_ BitVec 32)) Bool)

(assert (=> b!757928 (= res!512788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757929 () Bool)

(declare-fun e!422589 () Bool)

(assert (=> b!757929 (= e!422596 e!422589)))

(declare-fun res!512784 () Bool)

(assert (=> b!757929 (=> res!512784 e!422589)))

(declare-fun lt!337588 () (_ BitVec 64))

(assert (=> b!757929 (= res!512784 (= lt!337588 lt!337597))))

(assert (=> b!757929 (= lt!337588 (select (store (arr!20097 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757930 () Bool)

(assert (=> b!757930 (= e!422594 e!422588)))

(declare-fun res!512790 () Bool)

(assert (=> b!757930 (=> (not res!512790) (not e!422588))))

(declare-fun lt!337592 () SeekEntryResult!7704)

(assert (=> b!757930 (= res!512790 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20097 a!3186) j!159) mask!3328) (select (arr!20097 a!3186) j!159) a!3186 mask!3328) lt!337592))))

(assert (=> b!757930 (= lt!337592 (Intermediate!7704 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757931 () Bool)

(declare-fun res!512792 () Bool)

(assert (=> b!757931 (=> (not res!512792) (not e!422594))))

(assert (=> b!757931 (= res!512792 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20518 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20518 a!3186))))))

(declare-fun b!757932 () Bool)

(assert (=> b!757932 (= e!422591 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20097 a!3186) j!159) a!3186 mask!3328) lt!337592))))

(declare-fun b!757933 () Bool)

(declare-fun res!512782 () Bool)

(assert (=> b!757933 (=> (not res!512782) (not e!422587))))

(assert (=> b!757933 (= res!512782 (and (= (size!20518 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20518 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20518 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757934 () Bool)

(declare-fun res!512797 () Bool)

(assert (=> b!757934 (=> (not res!512797) (not e!422587))))

(declare-fun arrayContainsKey!0 (array!41974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757934 (= res!512797 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757935 () Bool)

(assert (=> b!757935 (= e!422589 true)))

(assert (=> b!757935 e!422593))

(declare-fun res!512789 () Bool)

(assert (=> b!757935 (=> (not res!512789) (not e!422593))))

(assert (=> b!757935 (= res!512789 (= lt!337588 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337587 () Unit!26218)

(assert (=> b!757935 (= lt!337587 e!422590)))

(declare-fun c!82949 () Bool)

(assert (=> b!757935 (= c!82949 (= lt!337588 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757936 () Bool)

(assert (=> b!757936 (= e!422597 (not e!422592))))

(declare-fun res!512794 () Bool)

(assert (=> b!757936 (=> res!512794 e!422592)))

(assert (=> b!757936 (= res!512794 (or (not (is-Intermediate!7704 lt!337598)) (bvslt x!1131 (x!64103 lt!337598)) (not (= x!1131 (x!64103 lt!337598))) (not (= index!1321 (index!33185 lt!337598)))))))

(assert (=> b!757936 e!422595))

(declare-fun res!512781 () Bool)

(assert (=> b!757936 (=> (not res!512781) (not e!422595))))

(declare-fun lt!337595 () SeekEntryResult!7704)

(assert (=> b!757936 (= res!512781 (= lt!337595 lt!337593))))

(assert (=> b!757936 (= lt!337593 (Found!7704 j!159))))

(assert (=> b!757936 (= lt!337595 (seekEntryOrOpen!0 (select (arr!20097 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757936 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337596 () Unit!26218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41974 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26218)

(assert (=> b!757936 (= lt!337596 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757937 () Bool)

(declare-fun Unit!26221 () Unit!26218)

(assert (=> b!757937 (= e!422590 Unit!26221)))

(assert (=> b!757937 false))

(declare-fun b!757938 () Bool)

(declare-fun res!512785 () Bool)

(assert (=> b!757938 (=> (not res!512785) (not e!422594))))

(declare-datatypes ((List!14152 0))(
  ( (Nil!14149) (Cons!14148 (h!15220 (_ BitVec 64)) (t!20475 List!14152)) )
))
(declare-fun arrayNoDuplicates!0 (array!41974 (_ BitVec 32) List!14152) Bool)

(assert (=> b!757938 (= res!512785 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14149))))

(declare-fun b!757939 () Bool)

(assert (=> b!757939 (= e!422591 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20097 a!3186) j!159) a!3186 mask!3328) (Found!7704 j!159)))))

(declare-fun b!757940 () Bool)

(assert (=> b!757940 (= e!422593 (= lt!337595 lt!337594))))

(assert (= (and start!65848 res!512795) b!757933))

(assert (= (and b!757933 res!512782) b!757926))

(assert (= (and b!757926 res!512796) b!757925))

(assert (= (and b!757925 res!512783) b!757934))

(assert (= (and b!757934 res!512797) b!757923))

(assert (= (and b!757923 res!512798) b!757928))

(assert (= (and b!757928 res!512788) b!757938))

(assert (= (and b!757938 res!512785) b!757931))

(assert (= (and b!757931 res!512792) b!757930))

(assert (= (and b!757930 res!512790) b!757921))

(assert (= (and b!757921 res!512793) b!757922))

(assert (= (and b!757922 c!82950) b!757932))

(assert (= (and b!757922 (not c!82950)) b!757939))

(assert (= (and b!757922 res!512787) b!757924))

(assert (= (and b!757924 res!512791) b!757936))

(assert (= (and b!757936 res!512781) b!757920))

(assert (= (and b!757936 (not res!512794)) b!757919))

(assert (= (and b!757919 (not res!512786)) b!757929))

(assert (= (and b!757929 (not res!512784)) b!757935))

(assert (= (and b!757935 c!82949) b!757937))

(assert (= (and b!757935 (not c!82949)) b!757927))

(assert (= (and b!757935 res!512789) b!757918))

(assert (= (and b!757918 res!512799) b!757940))

(declare-fun m!705577 () Bool)

(assert (=> b!757920 m!705577))

(assert (=> b!757920 m!705577))

(declare-fun m!705579 () Bool)

(assert (=> b!757920 m!705579))

(declare-fun m!705581 () Bool)

(assert (=> b!757924 m!705581))

(declare-fun m!705583 () Bool)

(assert (=> b!757924 m!705583))

(declare-fun m!705585 () Bool)

(assert (=> b!757924 m!705585))

(declare-fun m!705587 () Bool)

(assert (=> b!757924 m!705587))

(assert (=> b!757924 m!705581))

(declare-fun m!705589 () Bool)

(assert (=> b!757924 m!705589))

(declare-fun m!705591 () Bool)

(assert (=> b!757934 m!705591))

(declare-fun m!705593 () Bool)

(assert (=> b!757923 m!705593))

(declare-fun m!705595 () Bool)

(assert (=> b!757928 m!705595))

(declare-fun m!705597 () Bool)

(assert (=> b!757925 m!705597))

(declare-fun m!705599 () Bool)

(assert (=> b!757921 m!705599))

(assert (=> b!757919 m!705577))

(assert (=> b!757919 m!705577))

(declare-fun m!705601 () Bool)

(assert (=> b!757919 m!705601))

(assert (=> b!757929 m!705585))

(declare-fun m!705603 () Bool)

(assert (=> b!757929 m!705603))

(assert (=> b!757930 m!705577))

(assert (=> b!757930 m!705577))

(declare-fun m!705605 () Bool)

(assert (=> b!757930 m!705605))

(assert (=> b!757930 m!705605))

(assert (=> b!757930 m!705577))

(declare-fun m!705607 () Bool)

(assert (=> b!757930 m!705607))

(assert (=> b!757939 m!705577))

(assert (=> b!757939 m!705577))

(assert (=> b!757939 m!705601))

(declare-fun m!705609 () Bool)

(assert (=> b!757918 m!705609))

(declare-fun m!705611 () Bool)

(assert (=> b!757918 m!705611))

(assert (=> b!757936 m!705577))

(assert (=> b!757936 m!705577))

(declare-fun m!705613 () Bool)

(assert (=> b!757936 m!705613))

(declare-fun m!705615 () Bool)

(assert (=> b!757936 m!705615))

(declare-fun m!705617 () Bool)

(assert (=> b!757936 m!705617))

(assert (=> b!757932 m!705577))

(assert (=> b!757932 m!705577))

(declare-fun m!705619 () Bool)

(assert (=> b!757932 m!705619))

(declare-fun m!705621 () Bool)

(assert (=> b!757938 m!705621))

(declare-fun m!705623 () Bool)

(assert (=> start!65848 m!705623))

(declare-fun m!705625 () Bool)

(assert (=> start!65848 m!705625))

(assert (=> b!757926 m!705577))

(assert (=> b!757926 m!705577))

(declare-fun m!705627 () Bool)

(assert (=> b!757926 m!705627))

(push 1)

