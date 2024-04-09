; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67162 () Bool)

(assert start!67162)

(declare-fun e!431757 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7935 0))(
  ( (MissingZero!7935 (index!34107 (_ BitVec 32))) (Found!7935 (index!34108 (_ BitVec 32))) (Intermediate!7935 (undefined!8747 Bool) (index!34109 (_ BitVec 32)) (x!65079 (_ BitVec 32))) (Undefined!7935) (MissingVacant!7935 (index!34110 (_ BitVec 32))) )
))
(declare-fun lt!345626 () SeekEntryResult!7935)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42472 0))(
  ( (array!42473 (arr!20328 (Array (_ BitVec 32) (_ BitVec 64))) (size!20749 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42472)

(declare-fun b!775777 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42472 (_ BitVec 32)) SeekEntryResult!7935)

(assert (=> b!775777 (= e!431757 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20328 a!3186) j!159) a!3186 mask!3328) lt!345626))))

(declare-fun b!775778 () Bool)

(declare-fun res!524818 () Bool)

(declare-fun e!431754 () Bool)

(assert (=> b!775778 (=> (not res!524818) (not e!431754))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775778 (= res!524818 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20328 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775779 () Bool)

(declare-fun e!431756 () Bool)

(declare-fun e!431758 () Bool)

(assert (=> b!775779 (= e!431756 e!431758)))

(declare-fun res!524806 () Bool)

(assert (=> b!775779 (=> (not res!524806) (not e!431758))))

(declare-fun lt!345624 () SeekEntryResult!7935)

(assert (=> b!775779 (= res!524806 (or (= lt!345624 (MissingZero!7935 i!1173)) (= lt!345624 (MissingVacant!7935 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42472 (_ BitVec 32)) SeekEntryResult!7935)

(assert (=> b!775779 (= lt!345624 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775780 () Bool)

(declare-fun e!431753 () Bool)

(assert (=> b!775780 (= e!431754 e!431753)))

(declare-fun res!524814 () Bool)

(assert (=> b!775780 (=> (not res!524814) (not e!431753))))

(declare-fun lt!345623 () SeekEntryResult!7935)

(declare-fun lt!345625 () SeekEntryResult!7935)

(assert (=> b!775780 (= res!524814 (= lt!345623 lt!345625))))

(declare-fun lt!345621 () array!42472)

(declare-fun lt!345622 () (_ BitVec 64))

(assert (=> b!775780 (= lt!345625 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345622 lt!345621 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775780 (= lt!345623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345622 mask!3328) lt!345622 lt!345621 mask!3328))))

(assert (=> b!775780 (= lt!345622 (select (store (arr!20328 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775780 (= lt!345621 (array!42473 (store (arr!20328 a!3186) i!1173 k!2102) (size!20749 a!3186)))))

(declare-fun b!775781 () Bool)

(declare-fun res!524817 () Bool)

(assert (=> b!775781 (=> (not res!524817) (not e!431756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775781 (= res!524817 (validKeyInArray!0 k!2102))))

(declare-fun b!775782 () Bool)

(declare-fun res!524808 () Bool)

(assert (=> b!775782 (=> (not res!524808) (not e!431758))))

(declare-datatypes ((List!14383 0))(
  ( (Nil!14380) (Cons!14379 (h!15487 (_ BitVec 64)) (t!20706 List!14383)) )
))
(declare-fun arrayNoDuplicates!0 (array!42472 (_ BitVec 32) List!14383) Bool)

(assert (=> b!775782 (= res!524808 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14380))))

(declare-fun b!775783 () Bool)

(declare-fun res!524813 () Bool)

(assert (=> b!775783 (=> (not res!524813) (not e!431758))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775783 (= res!524813 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20749 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20749 a!3186))))))

(declare-fun b!775784 () Bool)

(assert (=> b!775784 (= e!431758 e!431754)))

(declare-fun res!524803 () Bool)

(assert (=> b!775784 (=> (not res!524803) (not e!431754))))

(assert (=> b!775784 (= res!524803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20328 a!3186) j!159) mask!3328) (select (arr!20328 a!3186) j!159) a!3186 mask!3328) lt!345626))))

(assert (=> b!775784 (= lt!345626 (Intermediate!7935 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!431751 () Bool)

(declare-fun b!775785 () Bool)

(declare-fun lt!345627 () SeekEntryResult!7935)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42472 (_ BitVec 32)) SeekEntryResult!7935)

(assert (=> b!775785 (= e!431751 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20328 a!3186) j!159) a!3186 mask!3328) lt!345627))))

(declare-fun b!775786 () Bool)

(declare-fun res!524807 () Bool)

(assert (=> b!775786 (=> (not res!524807) (not e!431754))))

(assert (=> b!775786 (= res!524807 e!431757)))

(declare-fun c!85887 () Bool)

(assert (=> b!775786 (= c!85887 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775788 () Bool)

(declare-fun res!524804 () Bool)

(assert (=> b!775788 (=> (not res!524804) (not e!431756))))

(assert (=> b!775788 (= res!524804 (validKeyInArray!0 (select (arr!20328 a!3186) j!159)))))

(declare-fun b!775789 () Bool)

(declare-fun e!431752 () Bool)

(assert (=> b!775789 (= e!431753 (not e!431752))))

(declare-fun res!524812 () Bool)

(assert (=> b!775789 (=> res!524812 e!431752)))

(assert (=> b!775789 (= res!524812 (or (not (is-Intermediate!7935 lt!345625)) (bvslt x!1131 (x!65079 lt!345625)) (not (= x!1131 (x!65079 lt!345625))) (not (= index!1321 (index!34109 lt!345625)))))))

(declare-fun e!431750 () Bool)

(assert (=> b!775789 e!431750))

(declare-fun res!524809 () Bool)

(assert (=> b!775789 (=> (not res!524809) (not e!431750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42472 (_ BitVec 32)) Bool)

(assert (=> b!775789 (= res!524809 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26764 0))(
  ( (Unit!26765) )
))
(declare-fun lt!345620 () Unit!26764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26764)

(assert (=> b!775789 (= lt!345620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775790 () Bool)

(assert (=> b!775790 (= e!431750 e!431751)))

(declare-fun res!524810 () Bool)

(assert (=> b!775790 (=> (not res!524810) (not e!431751))))

(assert (=> b!775790 (= res!524810 (= (seekEntryOrOpen!0 (select (arr!20328 a!3186) j!159) a!3186 mask!3328) lt!345627))))

(assert (=> b!775790 (= lt!345627 (Found!7935 j!159))))

(declare-fun b!775791 () Bool)

(assert (=> b!775791 (= e!431752 true)))

(declare-fun lt!345628 () SeekEntryResult!7935)

(assert (=> b!775791 (= lt!345628 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20328 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!775792 () Bool)

(declare-fun res!524805 () Bool)

(assert (=> b!775792 (=> (not res!524805) (not e!431756))))

(assert (=> b!775792 (= res!524805 (and (= (size!20749 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20749 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20749 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775793 () Bool)

(assert (=> b!775793 (= e!431757 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20328 a!3186) j!159) a!3186 mask!3328) (Found!7935 j!159)))))

(declare-fun b!775794 () Bool)

(declare-fun res!524815 () Bool)

(assert (=> b!775794 (=> (not res!524815) (not e!431758))))

(assert (=> b!775794 (= res!524815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775787 () Bool)

(declare-fun res!524816 () Bool)

(assert (=> b!775787 (=> (not res!524816) (not e!431756))))

(declare-fun arrayContainsKey!0 (array!42472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775787 (= res!524816 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!524811 () Bool)

(assert (=> start!67162 (=> (not res!524811) (not e!431756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67162 (= res!524811 (validMask!0 mask!3328))))

(assert (=> start!67162 e!431756))

(assert (=> start!67162 true))

(declare-fun array_inv!16102 (array!42472) Bool)

(assert (=> start!67162 (array_inv!16102 a!3186)))

(assert (= (and start!67162 res!524811) b!775792))

(assert (= (and b!775792 res!524805) b!775788))

(assert (= (and b!775788 res!524804) b!775781))

(assert (= (and b!775781 res!524817) b!775787))

(assert (= (and b!775787 res!524816) b!775779))

(assert (= (and b!775779 res!524806) b!775794))

(assert (= (and b!775794 res!524815) b!775782))

(assert (= (and b!775782 res!524808) b!775783))

(assert (= (and b!775783 res!524813) b!775784))

(assert (= (and b!775784 res!524803) b!775778))

(assert (= (and b!775778 res!524818) b!775786))

(assert (= (and b!775786 c!85887) b!775777))

(assert (= (and b!775786 (not c!85887)) b!775793))

(assert (= (and b!775786 res!524807) b!775780))

(assert (= (and b!775780 res!524814) b!775789))

(assert (= (and b!775789 res!524809) b!775790))

(assert (= (and b!775790 res!524810) b!775785))

(assert (= (and b!775789 (not res!524812)) b!775791))

(declare-fun m!720013 () Bool)

(assert (=> b!775791 m!720013))

(assert (=> b!775791 m!720013))

(declare-fun m!720015 () Bool)

(assert (=> b!775791 m!720015))

(declare-fun m!720017 () Bool)

(assert (=> b!775782 m!720017))

(assert (=> b!775790 m!720013))

(assert (=> b!775790 m!720013))

(declare-fun m!720019 () Bool)

(assert (=> b!775790 m!720019))

(declare-fun m!720021 () Bool)

(assert (=> b!775787 m!720021))

(declare-fun m!720023 () Bool)

(assert (=> b!775794 m!720023))

(assert (=> b!775777 m!720013))

(assert (=> b!775777 m!720013))

(declare-fun m!720025 () Bool)

(assert (=> b!775777 m!720025))

(declare-fun m!720027 () Bool)

(assert (=> b!775780 m!720027))

(declare-fun m!720029 () Bool)

(assert (=> b!775780 m!720029))

(declare-fun m!720031 () Bool)

(assert (=> b!775780 m!720031))

(declare-fun m!720033 () Bool)

(assert (=> b!775780 m!720033))

(assert (=> b!775780 m!720029))

(declare-fun m!720035 () Bool)

(assert (=> b!775780 m!720035))

(declare-fun m!720037 () Bool)

(assert (=> b!775778 m!720037))

(assert (=> b!775784 m!720013))

(assert (=> b!775784 m!720013))

(declare-fun m!720039 () Bool)

(assert (=> b!775784 m!720039))

(assert (=> b!775784 m!720039))

(assert (=> b!775784 m!720013))

(declare-fun m!720041 () Bool)

(assert (=> b!775784 m!720041))

(declare-fun m!720043 () Bool)

(assert (=> b!775781 m!720043))

(assert (=> b!775793 m!720013))

(assert (=> b!775793 m!720013))

(assert (=> b!775793 m!720015))

(declare-fun m!720045 () Bool)

(assert (=> b!775789 m!720045))

(declare-fun m!720047 () Bool)

(assert (=> b!775789 m!720047))

(declare-fun m!720049 () Bool)

(assert (=> b!775779 m!720049))

(assert (=> b!775788 m!720013))

(assert (=> b!775788 m!720013))

(declare-fun m!720051 () Bool)

(assert (=> b!775788 m!720051))

(declare-fun m!720053 () Bool)

(assert (=> start!67162 m!720053))

(declare-fun m!720055 () Bool)

(assert (=> start!67162 m!720055))

(assert (=> b!775785 m!720013))

(assert (=> b!775785 m!720013))

(declare-fun m!720057 () Bool)

(assert (=> b!775785 m!720057))

(push 1)

