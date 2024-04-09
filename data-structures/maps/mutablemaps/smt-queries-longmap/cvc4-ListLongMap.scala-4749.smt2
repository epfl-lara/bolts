; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65576 () Bool)

(assert start!65576)

(declare-fun b!748671 () Bool)

(declare-fun e!417847 () Bool)

(declare-fun e!417849 () Bool)

(assert (=> b!748671 (= e!417847 e!417849)))

(declare-fun res!505176 () Bool)

(assert (=> b!748671 (=> (not res!505176) (not e!417849))))

(declare-datatypes ((array!41702 0))(
  ( (array!41703 (arr!19961 (Array (_ BitVec 32) (_ BitVec 64))) (size!20382 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41702)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7568 0))(
  ( (MissingZero!7568 (index!32639 (_ BitVec 32))) (Found!7568 (index!32640 (_ BitVec 32))) (Intermediate!7568 (undefined!8380 Bool) (index!32641 (_ BitVec 32)) (x!63599 (_ BitVec 32))) (Undefined!7568) (MissingVacant!7568 (index!32642 (_ BitVec 32))) )
))
(declare-fun lt!332842 () SeekEntryResult!7568)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41702 (_ BitVec 32)) SeekEntryResult!7568)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748671 (= res!505176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19961 a!3186) j!159) mask!3328) (select (arr!19961 a!3186) j!159) a!3186 mask!3328) lt!332842))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748671 (= lt!332842 (Intermediate!7568 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!748672 () Bool)

(declare-fun e!417853 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41702 (_ BitVec 32)) SeekEntryResult!7568)

(assert (=> b!748672 (= e!417853 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19961 a!3186) j!159) a!3186 mask!3328) (Found!7568 j!159)))))

(declare-fun b!748673 () Bool)

(declare-fun res!505170 () Bool)

(assert (=> b!748673 (=> (not res!505170) (not e!417847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41702 (_ BitVec 32)) Bool)

(assert (=> b!748673 (= res!505170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748674 () Bool)

(declare-fun res!505166 () Bool)

(assert (=> b!748674 (=> (not res!505166) (not e!417849))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748674 (= res!505166 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19961 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!332841 () SeekEntryResult!7568)

(declare-fun b!748675 () Bool)

(declare-fun e!417852 () Bool)

(assert (=> b!748675 (= e!417852 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19961 a!3186) j!159) a!3186 mask!3328) lt!332841))))

(declare-fun b!748676 () Bool)

(declare-fun e!417850 () Bool)

(assert (=> b!748676 (= e!417849 e!417850)))

(declare-fun res!505175 () Bool)

(assert (=> b!748676 (=> (not res!505175) (not e!417850))))

(declare-fun lt!332845 () SeekEntryResult!7568)

(declare-fun lt!332843 () SeekEntryResult!7568)

(assert (=> b!748676 (= res!505175 (= lt!332845 lt!332843))))

(declare-fun lt!332837 () (_ BitVec 64))

(declare-fun lt!332840 () array!41702)

(assert (=> b!748676 (= lt!332843 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332837 lt!332840 mask!3328))))

(assert (=> b!748676 (= lt!332845 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332837 mask!3328) lt!332837 lt!332840 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!748676 (= lt!332837 (select (store (arr!19961 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748676 (= lt!332840 (array!41703 (store (arr!19961 a!3186) i!1173 k!2102) (size!20382 a!3186)))))

(declare-fun b!748677 () Bool)

(declare-fun e!417851 () Bool)

(assert (=> b!748677 (= e!417850 (not e!417851))))

(declare-fun res!505179 () Bool)

(assert (=> b!748677 (=> res!505179 e!417851)))

(assert (=> b!748677 (= res!505179 (or (not (is-Intermediate!7568 lt!332843)) (bvslt x!1131 (x!63599 lt!332843)) (not (= x!1131 (x!63599 lt!332843))) (not (= index!1321 (index!32641 lt!332843)))))))

(assert (=> b!748677 e!417852))

(declare-fun res!505172 () Bool)

(assert (=> b!748677 (=> (not res!505172) (not e!417852))))

(declare-fun lt!332844 () SeekEntryResult!7568)

(assert (=> b!748677 (= res!505172 (= lt!332844 lt!332841))))

(assert (=> b!748677 (= lt!332841 (Found!7568 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41702 (_ BitVec 32)) SeekEntryResult!7568)

(assert (=> b!748677 (= lt!332844 (seekEntryOrOpen!0 (select (arr!19961 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!748677 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25674 0))(
  ( (Unit!25675) )
))
(declare-fun lt!332838 () Unit!25674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41702 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25674)

(assert (=> b!748677 (= lt!332838 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748678 () Bool)

(declare-fun res!505182 () Bool)

(assert (=> b!748678 (=> (not res!505182) (not e!417847))))

(assert (=> b!748678 (= res!505182 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20382 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20382 a!3186))))))

(declare-fun b!748680 () Bool)

(declare-fun res!505168 () Bool)

(assert (=> b!748680 (=> (not res!505168) (not e!417849))))

(assert (=> b!748680 (= res!505168 e!417853)))

(declare-fun c!82133 () Bool)

(assert (=> b!748680 (= c!82133 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748681 () Bool)

(declare-fun res!505174 () Bool)

(assert (=> b!748681 (=> res!505174 e!417851)))

(assert (=> b!748681 (= res!505174 (= (select (store (arr!19961 a!3186) i!1173 k!2102) index!1321) lt!332837))))

(declare-fun b!748682 () Bool)

(assert (=> b!748682 (= e!417853 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19961 a!3186) j!159) a!3186 mask!3328) lt!332842))))

(declare-fun b!748683 () Bool)

(assert (=> b!748683 (= e!417851 true)))

(assert (=> b!748683 (= (select (store (arr!19961 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332846 () Unit!25674)

(declare-fun e!417855 () Unit!25674)

(assert (=> b!748683 (= lt!332846 e!417855)))

(declare-fun c!82134 () Bool)

(assert (=> b!748683 (= c!82134 (= (select (store (arr!19961 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748684 () Bool)

(declare-fun res!505173 () Bool)

(assert (=> b!748684 (=> (not res!505173) (not e!417847))))

(declare-datatypes ((List!14016 0))(
  ( (Nil!14013) (Cons!14012 (h!15084 (_ BitVec 64)) (t!20339 List!14016)) )
))
(declare-fun arrayNoDuplicates!0 (array!41702 (_ BitVec 32) List!14016) Bool)

(assert (=> b!748684 (= res!505173 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14013))))

(declare-fun b!748679 () Bool)

(declare-fun Unit!25676 () Unit!25674)

(assert (=> b!748679 (= e!417855 Unit!25676)))

(declare-fun res!505171 () Bool)

(declare-fun e!417854 () Bool)

(assert (=> start!65576 (=> (not res!505171) (not e!417854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65576 (= res!505171 (validMask!0 mask!3328))))

(assert (=> start!65576 e!417854))

(assert (=> start!65576 true))

(declare-fun array_inv!15735 (array!41702) Bool)

(assert (=> start!65576 (array_inv!15735 a!3186)))

(declare-fun b!748685 () Bool)

(declare-fun res!505177 () Bool)

(assert (=> b!748685 (=> (not res!505177) (not e!417854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748685 (= res!505177 (validKeyInArray!0 k!2102))))

(declare-fun b!748686 () Bool)

(declare-fun res!505167 () Bool)

(assert (=> b!748686 (=> (not res!505167) (not e!417854))))

(declare-fun arrayContainsKey!0 (array!41702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748686 (= res!505167 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748687 () Bool)

(declare-fun res!505180 () Bool)

(assert (=> b!748687 (=> (not res!505180) (not e!417854))))

(assert (=> b!748687 (= res!505180 (validKeyInArray!0 (select (arr!19961 a!3186) j!159)))))

(declare-fun b!748688 () Bool)

(assert (=> b!748688 (= e!417854 e!417847)))

(declare-fun res!505181 () Bool)

(assert (=> b!748688 (=> (not res!505181) (not e!417847))))

(declare-fun lt!332839 () SeekEntryResult!7568)

(assert (=> b!748688 (= res!505181 (or (= lt!332839 (MissingZero!7568 i!1173)) (= lt!332839 (MissingVacant!7568 i!1173))))))

(assert (=> b!748688 (= lt!332839 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!748689 () Bool)

(declare-fun res!505169 () Bool)

(assert (=> b!748689 (=> res!505169 e!417851)))

(assert (=> b!748689 (= res!505169 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19961 a!3186) j!159) a!3186 mask!3328) lt!332841)))))

(declare-fun b!748690 () Bool)

(declare-fun res!505178 () Bool)

(assert (=> b!748690 (=> (not res!505178) (not e!417854))))

(assert (=> b!748690 (= res!505178 (and (= (size!20382 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20382 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20382 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748691 () Bool)

(declare-fun Unit!25677 () Unit!25674)

(assert (=> b!748691 (= e!417855 Unit!25677)))

(assert (=> b!748691 false))

(assert (= (and start!65576 res!505171) b!748690))

(assert (= (and b!748690 res!505178) b!748687))

(assert (= (and b!748687 res!505180) b!748685))

(assert (= (and b!748685 res!505177) b!748686))

(assert (= (and b!748686 res!505167) b!748688))

(assert (= (and b!748688 res!505181) b!748673))

(assert (= (and b!748673 res!505170) b!748684))

(assert (= (and b!748684 res!505173) b!748678))

(assert (= (and b!748678 res!505182) b!748671))

(assert (= (and b!748671 res!505176) b!748674))

(assert (= (and b!748674 res!505166) b!748680))

(assert (= (and b!748680 c!82133) b!748682))

(assert (= (and b!748680 (not c!82133)) b!748672))

(assert (= (and b!748680 res!505168) b!748676))

(assert (= (and b!748676 res!505175) b!748677))

(assert (= (and b!748677 res!505172) b!748675))

(assert (= (and b!748677 (not res!505179)) b!748689))

(assert (= (and b!748689 (not res!505169)) b!748681))

(assert (= (and b!748681 (not res!505174)) b!748683))

(assert (= (and b!748683 c!82134) b!748691))

(assert (= (and b!748683 (not c!82134)) b!748679))

(declare-fun m!698527 () Bool)

(assert (=> b!748671 m!698527))

(assert (=> b!748671 m!698527))

(declare-fun m!698529 () Bool)

(assert (=> b!748671 m!698529))

(assert (=> b!748671 m!698529))

(assert (=> b!748671 m!698527))

(declare-fun m!698531 () Bool)

(assert (=> b!748671 m!698531))

(assert (=> b!748687 m!698527))

(assert (=> b!748687 m!698527))

(declare-fun m!698533 () Bool)

(assert (=> b!748687 m!698533))

(assert (=> b!748682 m!698527))

(assert (=> b!748682 m!698527))

(declare-fun m!698535 () Bool)

(assert (=> b!748682 m!698535))

(assert (=> b!748689 m!698527))

(assert (=> b!748689 m!698527))

(declare-fun m!698537 () Bool)

(assert (=> b!748689 m!698537))

(declare-fun m!698539 () Bool)

(assert (=> b!748676 m!698539))

(assert (=> b!748676 m!698539))

(declare-fun m!698541 () Bool)

(assert (=> b!748676 m!698541))

(declare-fun m!698543 () Bool)

(assert (=> b!748676 m!698543))

(declare-fun m!698545 () Bool)

(assert (=> b!748676 m!698545))

(declare-fun m!698547 () Bool)

(assert (=> b!748676 m!698547))

(declare-fun m!698549 () Bool)

(assert (=> b!748673 m!698549))

(assert (=> b!748675 m!698527))

(assert (=> b!748675 m!698527))

(declare-fun m!698551 () Bool)

(assert (=> b!748675 m!698551))

(declare-fun m!698553 () Bool)

(assert (=> b!748686 m!698553))

(declare-fun m!698555 () Bool)

(assert (=> b!748684 m!698555))

(declare-fun m!698557 () Bool)

(assert (=> b!748674 m!698557))

(assert (=> b!748677 m!698527))

(assert (=> b!748677 m!698527))

(declare-fun m!698559 () Bool)

(assert (=> b!748677 m!698559))

(declare-fun m!698561 () Bool)

(assert (=> b!748677 m!698561))

(declare-fun m!698563 () Bool)

(assert (=> b!748677 m!698563))

(declare-fun m!698565 () Bool)

(assert (=> start!65576 m!698565))

(declare-fun m!698567 () Bool)

(assert (=> start!65576 m!698567))

(assert (=> b!748681 m!698543))

(declare-fun m!698569 () Bool)

(assert (=> b!748681 m!698569))

(declare-fun m!698571 () Bool)

(assert (=> b!748685 m!698571))

(assert (=> b!748683 m!698543))

(assert (=> b!748683 m!698569))

(assert (=> b!748672 m!698527))

(assert (=> b!748672 m!698527))

(assert (=> b!748672 m!698537))

(declare-fun m!698573 () Bool)

(assert (=> b!748688 m!698573))

(push 1)

