; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67046 () Bool)

(assert start!67046)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42425 0))(
  ( (array!42426 (arr!20306 (Array (_ BitVec 32) (_ BitVec 64))) (size!20727 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42425)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!430740 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!773788 () Bool)

(declare-datatypes ((SeekEntryResult!7913 0))(
  ( (MissingZero!7913 (index!34019 (_ BitVec 32))) (Found!7913 (index!34020 (_ BitVec 32))) (Intermediate!7913 (undefined!8725 Bool) (index!34021 (_ BitVec 32)) (x!64981 (_ BitVec 32))) (Undefined!7913) (MissingVacant!7913 (index!34022 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42425 (_ BitVec 32)) SeekEntryResult!7913)

(assert (=> b!773788 (= e!430740 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) (Found!7913 j!159)))))

(declare-fun lt!344649 () SeekEntryResult!7913)

(declare-fun b!773789 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42425 (_ BitVec 32)) SeekEntryResult!7913)

(assert (=> b!773789 (= e!430740 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344649))))

(declare-fun b!773790 () Bool)

(declare-fun e!430744 () Bool)

(declare-fun e!430745 () Bool)

(assert (=> b!773790 (= e!430744 e!430745)))

(declare-fun res!523478 () Bool)

(assert (=> b!773790 (=> (not res!523478) (not e!430745))))

(declare-fun lt!344644 () SeekEntryResult!7913)

(declare-fun lt!344643 () SeekEntryResult!7913)

(assert (=> b!773790 (= res!523478 (= lt!344644 lt!344643))))

(declare-fun lt!344642 () array!42425)

(declare-fun lt!344647 () (_ BitVec 64))

(assert (=> b!773790 (= lt!344643 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344647 lt!344642 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773790 (= lt!344644 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344647 mask!3328) lt!344647 lt!344642 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!773790 (= lt!344647 (select (store (arr!20306 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773790 (= lt!344642 (array!42426 (store (arr!20306 a!3186) i!1173 k!2102) (size!20727 a!3186)))))

(declare-fun b!773791 () Bool)

(declare-fun e!430743 () Bool)

(assert (=> b!773791 (= e!430743 e!430744)))

(declare-fun res!523488 () Bool)

(assert (=> b!773791 (=> (not res!523488) (not e!430744))))

(assert (=> b!773791 (= res!523488 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20306 a!3186) j!159) mask!3328) (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344649))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773791 (= lt!344649 (Intermediate!7913 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773792 () Bool)

(declare-fun lt!344646 () (_ BitVec 32))

(declare-fun e!430747 () Bool)

(assert (=> b!773792 (= e!430747 (= lt!344644 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344646 lt!344647 lt!344642 mask!3328)))))

(declare-fun b!773793 () Bool)

(declare-fun res!523477 () Bool)

(assert (=> b!773793 (=> res!523477 e!430747)))

(declare-fun e!430746 () Bool)

(assert (=> b!773793 (= res!523477 e!430746)))

(declare-fun c!85556 () Bool)

(declare-fun lt!344645 () Bool)

(assert (=> b!773793 (= c!85556 lt!344645)))

(declare-fun b!773794 () Bool)

(declare-fun e!430737 () Bool)

(assert (=> b!773794 (= e!430745 (not e!430737))))

(declare-fun res!523492 () Bool)

(assert (=> b!773794 (=> res!523492 e!430737)))

(assert (=> b!773794 (= res!523492 (or (not (is-Intermediate!7913 lt!344643)) (bvsge x!1131 (x!64981 lt!344643))))))

(declare-fun lt!344641 () SeekEntryResult!7913)

(assert (=> b!773794 (= lt!344641 (Found!7913 j!159))))

(declare-fun e!430741 () Bool)

(assert (=> b!773794 e!430741))

(declare-fun res!523487 () Bool)

(assert (=> b!773794 (=> (not res!523487) (not e!430741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42425 (_ BitVec 32)) Bool)

(assert (=> b!773794 (= res!523487 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26688 0))(
  ( (Unit!26689) )
))
(declare-fun lt!344653 () Unit!26688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26688)

(assert (=> b!773794 (= lt!344653 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773796 () Bool)

(declare-fun res!523491 () Bool)

(assert (=> b!773796 (=> (not res!523491) (not e!430744))))

(assert (=> b!773796 (= res!523491 e!430740)))

(declare-fun c!85555 () Bool)

(assert (=> b!773796 (= c!85555 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!773797 () Bool)

(assert (=> b!773797 (= e!430737 e!430747)))

(declare-fun res!523486 () Bool)

(assert (=> b!773797 (=> res!523486 e!430747)))

(assert (=> b!773797 (= res!523486 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344646 #b00000000000000000000000000000000) (bvsge lt!344646 (size!20727 a!3186))))))

(declare-fun lt!344652 () Unit!26688)

(declare-fun e!430736 () Unit!26688)

(assert (=> b!773797 (= lt!344652 e!430736)))

(declare-fun c!85557 () Bool)

(assert (=> b!773797 (= c!85557 lt!344645)))

(assert (=> b!773797 (= lt!344645 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773797 (= lt!344646 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773798 () Bool)

(declare-fun res!523485 () Bool)

(declare-fun e!430742 () Bool)

(assert (=> b!773798 (=> (not res!523485) (not e!430742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773798 (= res!523485 (validKeyInArray!0 k!2102))))

(declare-fun b!773799 () Bool)

(declare-fun res!523482 () Bool)

(assert (=> b!773799 (=> (not res!523482) (not e!430743))))

(assert (=> b!773799 (= res!523482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773800 () Bool)

(assert (=> b!773800 (= e!430742 e!430743)))

(declare-fun res!523489 () Bool)

(assert (=> b!773800 (=> (not res!523489) (not e!430743))))

(declare-fun lt!344650 () SeekEntryResult!7913)

(assert (=> b!773800 (= res!523489 (or (= lt!344650 (MissingZero!7913 i!1173)) (= lt!344650 (MissingVacant!7913 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42425 (_ BitVec 32)) SeekEntryResult!7913)

(assert (=> b!773800 (= lt!344650 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!773801 () Bool)

(assert (=> b!773801 (= e!430746 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344646 resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344641)))))

(declare-fun b!773802 () Bool)

(declare-fun res!523476 () Bool)

(assert (=> b!773802 (=> (not res!523476) (not e!430742))))

(assert (=> b!773802 (= res!523476 (and (= (size!20727 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20727 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20727 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773803 () Bool)

(declare-fun Unit!26690 () Unit!26688)

(assert (=> b!773803 (= e!430736 Unit!26690)))

(declare-fun lt!344648 () SeekEntryResult!7913)

(assert (=> b!773803 (= lt!344648 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773803 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344646 resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344641)))

(declare-fun b!773804 () Bool)

(declare-fun res!523490 () Bool)

(assert (=> b!773804 (=> (not res!523490) (not e!430743))))

(assert (=> b!773804 (= res!523490 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20727 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20727 a!3186))))))

(declare-fun b!773805 () Bool)

(assert (=> b!773805 (= e!430746 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344646 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344649)))))

(declare-fun e!430739 () Bool)

(declare-fun lt!344651 () SeekEntryResult!7913)

(declare-fun b!773806 () Bool)

(assert (=> b!773806 (= e!430739 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344651))))

(declare-fun b!773807 () Bool)

(declare-fun res!523483 () Bool)

(assert (=> b!773807 (=> (not res!523483) (not e!430742))))

(assert (=> b!773807 (= res!523483 (validKeyInArray!0 (select (arr!20306 a!3186) j!159)))))

(declare-fun res!523484 () Bool)

(assert (=> start!67046 (=> (not res!523484) (not e!430742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67046 (= res!523484 (validMask!0 mask!3328))))

(assert (=> start!67046 e!430742))

(assert (=> start!67046 true))

(declare-fun array_inv!16080 (array!42425) Bool)

(assert (=> start!67046 (array_inv!16080 a!3186)))

(declare-fun b!773795 () Bool)

(declare-fun Unit!26691 () Unit!26688)

(assert (=> b!773795 (= e!430736 Unit!26691)))

(assert (=> b!773795 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344646 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344649)))

(declare-fun b!773808 () Bool)

(declare-fun res!523481 () Bool)

(assert (=> b!773808 (=> (not res!523481) (not e!430744))))

(assert (=> b!773808 (= res!523481 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20306 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773809 () Bool)

(assert (=> b!773809 (= e!430741 e!430739)))

(declare-fun res!523480 () Bool)

(assert (=> b!773809 (=> (not res!523480) (not e!430739))))

(assert (=> b!773809 (= res!523480 (= (seekEntryOrOpen!0 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344651))))

(assert (=> b!773809 (= lt!344651 (Found!7913 j!159))))

(declare-fun b!773810 () Bool)

(declare-fun res!523479 () Bool)

(assert (=> b!773810 (=> (not res!523479) (not e!430743))))

(declare-datatypes ((List!14361 0))(
  ( (Nil!14358) (Cons!14357 (h!15462 (_ BitVec 64)) (t!20684 List!14361)) )
))
(declare-fun arrayNoDuplicates!0 (array!42425 (_ BitVec 32) List!14361) Bool)

(assert (=> b!773810 (= res!523479 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14358))))

(declare-fun b!773811 () Bool)

(declare-fun res!523475 () Bool)

(assert (=> b!773811 (=> (not res!523475) (not e!430742))))

(declare-fun arrayContainsKey!0 (array!42425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773811 (= res!523475 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67046 res!523484) b!773802))

(assert (= (and b!773802 res!523476) b!773807))

(assert (= (and b!773807 res!523483) b!773798))

(assert (= (and b!773798 res!523485) b!773811))

(assert (= (and b!773811 res!523475) b!773800))

(assert (= (and b!773800 res!523489) b!773799))

(assert (= (and b!773799 res!523482) b!773810))

(assert (= (and b!773810 res!523479) b!773804))

(assert (= (and b!773804 res!523490) b!773791))

(assert (= (and b!773791 res!523488) b!773808))

(assert (= (and b!773808 res!523481) b!773796))

(assert (= (and b!773796 c!85555) b!773789))

(assert (= (and b!773796 (not c!85555)) b!773788))

(assert (= (and b!773796 res!523491) b!773790))

(assert (= (and b!773790 res!523478) b!773794))

(assert (= (and b!773794 res!523487) b!773809))

(assert (= (and b!773809 res!523480) b!773806))

(assert (= (and b!773794 (not res!523492)) b!773797))

(assert (= (and b!773797 c!85557) b!773795))

(assert (= (and b!773797 (not c!85557)) b!773803))

(assert (= (and b!773797 (not res!523486)) b!773793))

(assert (= (and b!773793 c!85556) b!773805))

(assert (= (and b!773793 (not c!85556)) b!773801))

(assert (= (and b!773793 (not res!523477)) b!773792))

(declare-fun m!718483 () Bool)

(assert (=> b!773807 m!718483))

(assert (=> b!773807 m!718483))

(declare-fun m!718485 () Bool)

(assert (=> b!773807 m!718485))

(declare-fun m!718487 () Bool)

(assert (=> b!773810 m!718487))

(assert (=> b!773809 m!718483))

(assert (=> b!773809 m!718483))

(declare-fun m!718489 () Bool)

(assert (=> b!773809 m!718489))

(declare-fun m!718491 () Bool)

(assert (=> b!773797 m!718491))

(assert (=> b!773795 m!718483))

(assert (=> b!773795 m!718483))

(declare-fun m!718493 () Bool)

(assert (=> b!773795 m!718493))

(assert (=> b!773806 m!718483))

(assert (=> b!773806 m!718483))

(declare-fun m!718495 () Bool)

(assert (=> b!773806 m!718495))

(assert (=> b!773788 m!718483))

(assert (=> b!773788 m!718483))

(declare-fun m!718497 () Bool)

(assert (=> b!773788 m!718497))

(declare-fun m!718499 () Bool)

(assert (=> start!67046 m!718499))

(declare-fun m!718501 () Bool)

(assert (=> start!67046 m!718501))

(declare-fun m!718503 () Bool)

(assert (=> b!773790 m!718503))

(declare-fun m!718505 () Bool)

(assert (=> b!773790 m!718505))

(declare-fun m!718507 () Bool)

(assert (=> b!773790 m!718507))

(assert (=> b!773790 m!718505))

(declare-fun m!718509 () Bool)

(assert (=> b!773790 m!718509))

(declare-fun m!718511 () Bool)

(assert (=> b!773790 m!718511))

(declare-fun m!718513 () Bool)

(assert (=> b!773798 m!718513))

(declare-fun m!718515 () Bool)

(assert (=> b!773811 m!718515))

(declare-fun m!718517 () Bool)

(assert (=> b!773799 m!718517))

(assert (=> b!773791 m!718483))

(assert (=> b!773791 m!718483))

(declare-fun m!718519 () Bool)

(assert (=> b!773791 m!718519))

(assert (=> b!773791 m!718519))

(assert (=> b!773791 m!718483))

(declare-fun m!718521 () Bool)

(assert (=> b!773791 m!718521))

(declare-fun m!718523 () Bool)

(assert (=> b!773794 m!718523))

(declare-fun m!718525 () Bool)

(assert (=> b!773794 m!718525))

(declare-fun m!718527 () Bool)

(assert (=> b!773800 m!718527))

(assert (=> b!773789 m!718483))

(assert (=> b!773789 m!718483))

(declare-fun m!718529 () Bool)

(assert (=> b!773789 m!718529))

(assert (=> b!773803 m!718483))

(assert (=> b!773803 m!718483))

(assert (=> b!773803 m!718497))

(assert (=> b!773803 m!718483))

(declare-fun m!718531 () Bool)

(assert (=> b!773803 m!718531))

(assert (=> b!773801 m!718483))

(assert (=> b!773801 m!718483))

(assert (=> b!773801 m!718531))

(declare-fun m!718533 () Bool)

(assert (=> b!773808 m!718533))

(assert (=> b!773805 m!718483))

(assert (=> b!773805 m!718483))

(assert (=> b!773805 m!718493))

(declare-fun m!718535 () Bool)

(assert (=> b!773792 m!718535))

(push 1)

(assert (not b!773791))

(assert (not b!773794))

(assert (not b!773792))

(assert (not b!773800))

(assert (not b!773811))

(assert (not b!773789))

(assert (not b!773805))

(assert (not b!773806))

(assert (not b!773810))

(assert (not b!773809))

(assert (not start!67046))

(assert (not b!773798))

(assert (not b!773801))

(assert (not b!773788))

(assert (not b!773799))

(assert (not b!773790))

(assert (not b!773803))

(assert (not b!773795))

(assert (not b!773797))

(assert (not b!773807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!773986 () Bool)

(declare-fun lt!344713 () SeekEntryResult!7913)

(assert (=> b!773986 (and (bvsge (index!34021 lt!344713) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344713) (size!20727 a!3186)))))

(declare-fun e!430852 () Bool)

(assert (=> b!773986 (= e!430852 (= (select (arr!20306 a!3186) (index!34021 lt!344713)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!773987 () Bool)

(declare-fun e!430851 () SeekEntryResult!7913)

(assert (=> b!773987 (= e!430851 (Intermediate!7913 true (toIndex!0 (select (arr!20306 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!773988 () Bool)

(declare-fun e!430854 () SeekEntryResult!7913)

(assert (=> b!773988 (= e!430854 (Intermediate!7913 false (toIndex!0 (select (arr!20306 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!773990 () Bool)

(declare-fun e!430853 () Bool)

(assert (=> b!773990 (= e!430853 (bvsge (x!64981 lt!344713) #b01111111111111111111111111111110))))

(declare-fun b!773991 () Bool)

(assert (=> b!773991 (and (bvsge (index!34021 lt!344713) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344713) (size!20727 a!3186)))))

(declare-fun res!523548 () Bool)

(assert (=> b!773991 (= res!523548 (= (select (arr!20306 a!3186) (index!34021 lt!344713)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!773991 (=> res!523548 e!430852)))

(declare-fun b!773992 () Bool)

(declare-fun e!430855 () Bool)

(assert (=> b!773992 (= e!430853 e!430855)))

(declare-fun res!523550 () Bool)

(assert (=> b!773992 (= res!523550 (and (is-Intermediate!7913 lt!344713) (not (undefined!8725 lt!344713)) (bvslt (x!64981 lt!344713) #b01111111111111111111111111111110) (bvsge (x!64981 lt!344713) #b00000000000000000000000000000000) (bvsge (x!64981 lt!344713) #b00000000000000000000000000000000)))))

(assert (=> b!773992 (=> (not res!523550) (not e!430855))))

(declare-fun b!773993 () Bool)

(assert (=> b!773993 (= e!430851 e!430854)))

(declare-fun c!85620 () Bool)

(declare-fun lt!344714 () (_ BitVec 64))

(assert (=> b!773993 (= c!85620 (or (= lt!344714 (select (arr!20306 a!3186) j!159)) (= (bvadd lt!344714 lt!344714) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773994 () Bool)

(assert (=> b!773994 (= e!430854 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20306 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20306 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101913 () Bool)

(assert (=> d!101913 e!430853))

(declare-fun c!85619 () Bool)

(assert (=> d!101913 (= c!85619 (and (is-Intermediate!7913 lt!344713) (undefined!8725 lt!344713)))))

(assert (=> d!101913 (= lt!344713 e!430851)))

(declare-fun c!85618 () Bool)

(assert (=> d!101913 (= c!85618 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101913 (= lt!344714 (select (arr!20306 a!3186) (toIndex!0 (select (arr!20306 a!3186) j!159) mask!3328)))))

(assert (=> d!101913 (validMask!0 mask!3328)))

(assert (=> d!101913 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20306 a!3186) j!159) mask!3328) (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344713)))

(declare-fun b!773989 () Bool)

(assert (=> b!773989 (and (bvsge (index!34021 lt!344713) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344713) (size!20727 a!3186)))))

(declare-fun res!523549 () Bool)

(assert (=> b!773989 (= res!523549 (= (select (arr!20306 a!3186) (index!34021 lt!344713)) (select (arr!20306 a!3186) j!159)))))

(assert (=> b!773989 (=> res!523549 e!430852)))

(assert (=> b!773989 (= e!430855 e!430852)))

(assert (= (and d!101913 c!85618) b!773987))

(assert (= (and d!101913 (not c!85618)) b!773993))

(assert (= (and b!773993 c!85620) b!773988))

(assert (= (and b!773993 (not c!85620)) b!773994))

(assert (= (and d!101913 c!85619) b!773990))

(assert (= (and d!101913 (not c!85619)) b!773992))

(assert (= (and b!773992 res!523550) b!773989))

(assert (= (and b!773989 (not res!523549)) b!773991))

(assert (= (and b!773991 (not res!523548)) b!773986))

(assert (=> d!101913 m!718519))

(declare-fun m!718615 () Bool)

(assert (=> d!101913 m!718615))

(assert (=> d!101913 m!718499))

(declare-fun m!718617 () Bool)

(assert (=> b!773986 m!718617))

(assert (=> b!773991 m!718617))

(assert (=> b!773994 m!718519))

(declare-fun m!718619 () Bool)

(assert (=> b!773994 m!718619))

(assert (=> b!773994 m!718619))

(assert (=> b!773994 m!718483))

(declare-fun m!718621 () Bool)

(assert (=> b!773994 m!718621))

(assert (=> b!773989 m!718617))

(assert (=> b!773791 d!101913))

(declare-fun d!101925 () Bool)

(declare-fun lt!344744 () (_ BitVec 32))

(declare-fun lt!344743 () (_ BitVec 32))

(assert (=> d!101925 (= lt!344744 (bvmul (bvxor lt!344743 (bvlshr lt!344743 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101925 (= lt!344743 ((_ extract 31 0) (bvand (bvxor (select (arr!20306 a!3186) j!159) (bvlshr (select (arr!20306 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101925 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!523551 (let ((h!15464 ((_ extract 31 0) (bvand (bvxor (select (arr!20306 a!3186) j!159) (bvlshr (select (arr!20306 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64988 (bvmul (bvxor h!15464 (bvlshr h!15464 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64988 (bvlshr x!64988 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!523551 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!523551 #b00000000000000000000000000000000))))))

(assert (=> d!101925 (= (toIndex!0 (select (arr!20306 a!3186) j!159) mask!3328) (bvand (bvxor lt!344744 (bvlshr lt!344744 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!773791 d!101925))

(declare-fun b!774075 () Bool)

(declare-fun e!430901 () SeekEntryResult!7913)

(assert (=> b!774075 (= e!430901 (MissingVacant!7913 resIntermediateIndex!5))))

(declare-fun b!774076 () Bool)

(declare-fun e!430903 () SeekEntryResult!7913)

(declare-fun e!430902 () SeekEntryResult!7913)

(assert (=> b!774076 (= e!430903 e!430902)))

(declare-fun c!85653 () Bool)

(declare-fun lt!344751 () (_ BitVec 64))

(assert (=> b!774076 (= c!85653 (= lt!344751 (select (arr!20306 a!3186) j!159)))))

(declare-fun b!774077 () Bool)

(assert (=> b!774077 (= e!430902 (Found!7913 index!1321))))

(declare-fun d!101941 () Bool)

(declare-fun lt!344752 () SeekEntryResult!7913)

(assert (=> d!101941 (and (or (is-Undefined!7913 lt!344752) (not (is-Found!7913 lt!344752)) (and (bvsge (index!34020 lt!344752) #b00000000000000000000000000000000) (bvslt (index!34020 lt!344752) (size!20727 a!3186)))) (or (is-Undefined!7913 lt!344752) (is-Found!7913 lt!344752) (not (is-MissingVacant!7913 lt!344752)) (not (= (index!34022 lt!344752) resIntermediateIndex!5)) (and (bvsge (index!34022 lt!344752) #b00000000000000000000000000000000) (bvslt (index!34022 lt!344752) (size!20727 a!3186)))) (or (is-Undefined!7913 lt!344752) (ite (is-Found!7913 lt!344752) (= (select (arr!20306 a!3186) (index!34020 lt!344752)) (select (arr!20306 a!3186) j!159)) (and (is-MissingVacant!7913 lt!344752) (= (index!34022 lt!344752) resIntermediateIndex!5) (= (select (arr!20306 a!3186) (index!34022 lt!344752)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101941 (= lt!344752 e!430903)))

(declare-fun c!85654 () Bool)

(assert (=> d!101941 (= c!85654 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101941 (= lt!344751 (select (arr!20306 a!3186) index!1321))))

(assert (=> d!101941 (validMask!0 mask!3328)))

(assert (=> d!101941 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344752)))

(declare-fun b!774074 () Bool)

(assert (=> b!774074 (= e!430901 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774078 () Bool)

(assert (=> b!774078 (= e!430903 Undefined!7913)))

(declare-fun b!774079 () Bool)

(declare-fun c!85652 () Bool)

(assert (=> b!774079 (= c!85652 (= lt!344751 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774079 (= e!430902 e!430901)))

(assert (= (and d!101941 c!85654) b!774078))

(assert (= (and d!101941 (not c!85654)) b!774076))

(assert (= (and b!774076 c!85653) b!774077))

(assert (= (and b!774076 (not c!85653)) b!774079))

(assert (= (and b!774079 c!85652) b!774075))

(assert (= (and b!774079 (not c!85652)) b!774074))

(declare-fun m!718687 () Bool)

(assert (=> d!101941 m!718687))

(declare-fun m!718689 () Bool)

(assert (=> d!101941 m!718689))

(declare-fun m!718691 () Bool)

(assert (=> d!101941 m!718691))

(assert (=> d!101941 m!718499))

(assert (=> b!774074 m!718491))

(assert (=> b!774074 m!718491))

(assert (=> b!774074 m!718483))

(declare-fun m!718693 () Bool)

(assert (=> b!774074 m!718693))

(assert (=> b!773803 d!101941))

(declare-fun b!774081 () Bool)

(declare-fun e!430904 () SeekEntryResult!7913)

(assert (=> b!774081 (= e!430904 (MissingVacant!7913 resIntermediateIndex!5))))

(declare-fun b!774082 () Bool)

(declare-fun e!430906 () SeekEntryResult!7913)

(declare-fun e!430905 () SeekEntryResult!7913)

(assert (=> b!774082 (= e!430906 e!430905)))

(declare-fun lt!344753 () (_ BitVec 64))

(declare-fun c!85656 () Bool)

(assert (=> b!774082 (= c!85656 (= lt!344753 (select (arr!20306 a!3186) j!159)))))

(declare-fun b!774083 () Bool)

(assert (=> b!774083 (= e!430905 (Found!7913 lt!344646))))

(declare-fun d!101951 () Bool)

(declare-fun lt!344754 () SeekEntryResult!7913)

(assert (=> d!101951 (and (or (is-Undefined!7913 lt!344754) (not (is-Found!7913 lt!344754)) (and (bvsge (index!34020 lt!344754) #b00000000000000000000000000000000) (bvslt (index!34020 lt!344754) (size!20727 a!3186)))) (or (is-Undefined!7913 lt!344754) (is-Found!7913 lt!344754) (not (is-MissingVacant!7913 lt!344754)) (not (= (index!34022 lt!344754) resIntermediateIndex!5)) (and (bvsge (index!34022 lt!344754) #b00000000000000000000000000000000) (bvslt (index!34022 lt!344754) (size!20727 a!3186)))) (or (is-Undefined!7913 lt!344754) (ite (is-Found!7913 lt!344754) (= (select (arr!20306 a!3186) (index!34020 lt!344754)) (select (arr!20306 a!3186) j!159)) (and (is-MissingVacant!7913 lt!344754) (= (index!34022 lt!344754) resIntermediateIndex!5) (= (select (arr!20306 a!3186) (index!34022 lt!344754)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101951 (= lt!344754 e!430906)))

(declare-fun c!85657 () Bool)

(assert (=> d!101951 (= c!85657 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101951 (= lt!344753 (select (arr!20306 a!3186) lt!344646))))

(assert (=> d!101951 (validMask!0 mask!3328)))

(assert (=> d!101951 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344646 resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344754)))

(declare-fun b!774080 () Bool)

(assert (=> b!774080 (= e!430904 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!344646 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20306 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774084 () Bool)

(assert (=> b!774084 (= e!430906 Undefined!7913)))

(declare-fun b!774085 () Bool)

(declare-fun c!85655 () Bool)

(assert (=> b!774085 (= c!85655 (= lt!344753 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774085 (= e!430905 e!430904)))

(assert (= (and d!101951 c!85657) b!774084))

(assert (= (and d!101951 (not c!85657)) b!774082))

(assert (= (and b!774082 c!85656) b!774083))

(assert (= (and b!774082 (not c!85656)) b!774085))

(assert (= (and b!774085 c!85655) b!774081))

(assert (= (and b!774085 (not c!85655)) b!774080))

(declare-fun m!718695 () Bool)

(assert (=> d!101951 m!718695))

(declare-fun m!718697 () Bool)

(assert (=> d!101951 m!718697))

(declare-fun m!718699 () Bool)

(assert (=> d!101951 m!718699))

(assert (=> d!101951 m!718499))

(declare-fun m!718701 () Bool)

(assert (=> b!774080 m!718701))

(assert (=> b!774080 m!718701))

(assert (=> b!774080 m!718483))

(declare-fun m!718703 () Bool)

(assert (=> b!774080 m!718703))

(assert (=> b!773803 d!101951))

(declare-fun b!774086 () Bool)

(declare-fun lt!344758 () SeekEntryResult!7913)

(assert (=> b!774086 (and (bvsge (index!34021 lt!344758) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344758) (size!20727 lt!344642)))))

(declare-fun e!430908 () Bool)

(assert (=> b!774086 (= e!430908 (= (select (arr!20306 lt!344642) (index!34021 lt!344758)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774087 () Bool)

(declare-fun e!430907 () SeekEntryResult!7913)

(assert (=> b!774087 (= e!430907 (Intermediate!7913 true lt!344646 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!774088 () Bool)

(declare-fun e!430910 () SeekEntryResult!7913)

(assert (=> b!774088 (= e!430910 (Intermediate!7913 false lt!344646 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!774090 () Bool)

(declare-fun e!430909 () Bool)

(assert (=> b!774090 (= e!430909 (bvsge (x!64981 lt!344758) #b01111111111111111111111111111110))))

(declare-fun b!774091 () Bool)

(assert (=> b!774091 (and (bvsge (index!34021 lt!344758) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344758) (size!20727 lt!344642)))))

(declare-fun res!523569 () Bool)

(assert (=> b!774091 (= res!523569 (= (select (arr!20306 lt!344642) (index!34021 lt!344758)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774091 (=> res!523569 e!430908)))

(declare-fun b!774092 () Bool)

(declare-fun e!430911 () Bool)

(assert (=> b!774092 (= e!430909 e!430911)))

(declare-fun res!523571 () Bool)

(assert (=> b!774092 (= res!523571 (and (is-Intermediate!7913 lt!344758) (not (undefined!8725 lt!344758)) (bvslt (x!64981 lt!344758) #b01111111111111111111111111111110) (bvsge (x!64981 lt!344758) #b00000000000000000000000000000000) (bvsge (x!64981 lt!344758) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!774092 (=> (not res!523571) (not e!430911))))

(declare-fun b!774093 () Bool)

(assert (=> b!774093 (= e!430907 e!430910)))

(declare-fun c!85660 () Bool)

(declare-fun lt!344759 () (_ BitVec 64))

(assert (=> b!774093 (= c!85660 (or (= lt!344759 lt!344647) (= (bvadd lt!344759 lt!344759) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774094 () Bool)

(assert (=> b!774094 (= e!430910 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!344646 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) lt!344647 lt!344642 mask!3328))))

(declare-fun d!101953 () Bool)

(assert (=> d!101953 e!430909))

(declare-fun c!85659 () Bool)

(assert (=> d!101953 (= c!85659 (and (is-Intermediate!7913 lt!344758) (undefined!8725 lt!344758)))))

(assert (=> d!101953 (= lt!344758 e!430907)))

(declare-fun c!85658 () Bool)

(assert (=> d!101953 (= c!85658 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101953 (= lt!344759 (select (arr!20306 lt!344642) lt!344646))))

(assert (=> d!101953 (validMask!0 mask!3328)))

(assert (=> d!101953 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344646 lt!344647 lt!344642 mask!3328) lt!344758)))

(declare-fun b!774089 () Bool)

(assert (=> b!774089 (and (bvsge (index!34021 lt!344758) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344758) (size!20727 lt!344642)))))

(declare-fun res!523570 () Bool)

(assert (=> b!774089 (= res!523570 (= (select (arr!20306 lt!344642) (index!34021 lt!344758)) lt!344647))))

(assert (=> b!774089 (=> res!523570 e!430908)))

(assert (=> b!774089 (= e!430911 e!430908)))

(assert (= (and d!101953 c!85658) b!774087))

(assert (= (and d!101953 (not c!85658)) b!774093))

(assert (= (and b!774093 c!85660) b!774088))

(assert (= (and b!774093 (not c!85660)) b!774094))

(assert (= (and d!101953 c!85659) b!774090))

(assert (= (and d!101953 (not c!85659)) b!774092))

(assert (= (and b!774092 res!523571) b!774089))

(assert (= (and b!774089 (not res!523570)) b!774091))

(assert (= (and b!774091 (not res!523569)) b!774086))

(declare-fun m!718707 () Bool)

(assert (=> d!101953 m!718707))

(assert (=> d!101953 m!718499))

(declare-fun m!718711 () Bool)

(assert (=> b!774086 m!718711))

(assert (=> b!774091 m!718711))

(assert (=> b!774094 m!718701))

(assert (=> b!774094 m!718701))

(declare-fun m!718721 () Bool)

(assert (=> b!774094 m!718721))

(assert (=> b!774089 m!718711))

(assert (=> b!773792 d!101953))

(declare-fun d!101957 () Bool)

(assert (=> d!101957 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67046 d!101957))

(declare-fun d!101965 () Bool)

(assert (=> d!101965 (= (array_inv!16080 a!3186) (bvsge (size!20727 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67046 d!101965))

(declare-fun bm!35164 () Bool)

(declare-fun call!35167 () Bool)

(assert (=> bm!35164 (= call!35167 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!774145 () Bool)

(declare-fun e!430948 () Bool)

(declare-fun e!430947 () Bool)

(assert (=> b!774145 (= e!430948 e!430947)))

(declare-fun lt!344782 () (_ BitVec 64))

(assert (=> b!774145 (= lt!344782 (select (arr!20306 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!344780 () Unit!26688)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42425 (_ BitVec 64) (_ BitVec 32)) Unit!26688)

(assert (=> b!774145 (= lt!344780 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!344782 #b00000000000000000000000000000000))))

(assert (=> b!774145 (arrayContainsKey!0 a!3186 lt!344782 #b00000000000000000000000000000000)))

(declare-fun lt!344781 () Unit!26688)

(assert (=> b!774145 (= lt!344781 lt!344780)))

(declare-fun res!523595 () Bool)

(assert (=> b!774145 (= res!523595 (= (seekEntryOrOpen!0 (select (arr!20306 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7913 #b00000000000000000000000000000000)))))

(assert (=> b!774145 (=> (not res!523595) (not e!430947))))

(declare-fun d!101967 () Bool)

(declare-fun res!523594 () Bool)

(declare-fun e!430949 () Bool)

(assert (=> d!101967 (=> res!523594 e!430949)))

(assert (=> d!101967 (= res!523594 (bvsge #b00000000000000000000000000000000 (size!20727 a!3186)))))

(assert (=> d!101967 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!430949)))

(declare-fun b!774146 () Bool)

(assert (=> b!774146 (= e!430949 e!430948)))

(declare-fun c!85675 () Bool)

(assert (=> b!774146 (= c!85675 (validKeyInArray!0 (select (arr!20306 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!774147 () Bool)

(assert (=> b!774147 (= e!430948 call!35167)))

(declare-fun b!774148 () Bool)

(assert (=> b!774148 (= e!430947 call!35167)))

(assert (= (and d!101967 (not res!523594)) b!774146))

(assert (= (and b!774146 c!85675) b!774145))

(assert (= (and b!774146 (not c!85675)) b!774147))

(assert (= (and b!774145 res!523595) b!774148))

(assert (= (or b!774148 b!774147) bm!35164))

(declare-fun m!718745 () Bool)

(assert (=> bm!35164 m!718745))

(declare-fun m!718747 () Bool)

(assert (=> b!774145 m!718747))

(declare-fun m!718749 () Bool)

(assert (=> b!774145 m!718749))

(declare-fun m!718751 () Bool)

(assert (=> b!774145 m!718751))

(assert (=> b!774145 m!718747))

(declare-fun m!718753 () Bool)

(assert (=> b!774145 m!718753))

(assert (=> b!774146 m!718747))

(assert (=> b!774146 m!718747))

(declare-fun m!718755 () Bool)

(assert (=> b!774146 m!718755))

(assert (=> b!773799 d!101967))

(assert (=> b!773788 d!101941))

(declare-fun b!774149 () Bool)

(declare-fun lt!344783 () SeekEntryResult!7913)

(assert (=> b!774149 (and (bvsge (index!34021 lt!344783) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344783) (size!20727 a!3186)))))

(declare-fun e!430951 () Bool)

(assert (=> b!774149 (= e!430951 (= (select (arr!20306 a!3186) (index!34021 lt!344783)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774150 () Bool)

(declare-fun e!430950 () SeekEntryResult!7913)

(assert (=> b!774150 (= e!430950 (Intermediate!7913 true index!1321 x!1131))))

(declare-fun b!774151 () Bool)

(declare-fun e!430953 () SeekEntryResult!7913)

(assert (=> b!774151 (= e!430953 (Intermediate!7913 false index!1321 x!1131))))

(declare-fun b!774153 () Bool)

(declare-fun e!430952 () Bool)

(assert (=> b!774153 (= e!430952 (bvsge (x!64981 lt!344783) #b01111111111111111111111111111110))))

(declare-fun b!774154 () Bool)

(assert (=> b!774154 (and (bvsge (index!34021 lt!344783) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344783) (size!20727 a!3186)))))

(declare-fun res!523596 () Bool)

(assert (=> b!774154 (= res!523596 (= (select (arr!20306 a!3186) (index!34021 lt!344783)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774154 (=> res!523596 e!430951)))

(declare-fun b!774155 () Bool)

(declare-fun e!430954 () Bool)

(assert (=> b!774155 (= e!430952 e!430954)))

(declare-fun res!523598 () Bool)

(assert (=> b!774155 (= res!523598 (and (is-Intermediate!7913 lt!344783) (not (undefined!8725 lt!344783)) (bvslt (x!64981 lt!344783) #b01111111111111111111111111111110) (bvsge (x!64981 lt!344783) #b00000000000000000000000000000000) (bvsge (x!64981 lt!344783) x!1131)))))

(assert (=> b!774155 (=> (not res!523598) (not e!430954))))

(declare-fun b!774156 () Bool)

(assert (=> b!774156 (= e!430950 e!430953)))

(declare-fun c!85678 () Bool)

(declare-fun lt!344784 () (_ BitVec 64))

(assert (=> b!774156 (= c!85678 (or (= lt!344784 (select (arr!20306 a!3186) j!159)) (= (bvadd lt!344784 lt!344784) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774157 () Bool)

(assert (=> b!774157 (= e!430953 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20306 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101971 () Bool)

(assert (=> d!101971 e!430952))

(declare-fun c!85677 () Bool)

(assert (=> d!101971 (= c!85677 (and (is-Intermediate!7913 lt!344783) (undefined!8725 lt!344783)))))

(assert (=> d!101971 (= lt!344783 e!430950)))

(declare-fun c!85676 () Bool)

(assert (=> d!101971 (= c!85676 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101971 (= lt!344784 (select (arr!20306 a!3186) index!1321))))

(assert (=> d!101971 (validMask!0 mask!3328)))

(assert (=> d!101971 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20306 a!3186) j!159) a!3186 mask!3328) lt!344783)))

(declare-fun b!774152 () Bool)

(assert (=> b!774152 (and (bvsge (index!34021 lt!344783) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344783) (size!20727 a!3186)))))

(declare-fun res!523597 () Bool)

(assert (=> b!774152 (= res!523597 (= (select (arr!20306 a!3186) (index!34021 lt!344783)) (select (arr!20306 a!3186) j!159)))))

(assert (=> b!774152 (=> res!523597 e!430951)))

(assert (=> b!774152 (= e!430954 e!430951)))

(assert (= (and d!101971 c!85676) b!774150))

(assert (= (and d!101971 (not c!85676)) b!774156))

(assert (= (and b!774156 c!85678) b!774151))

(assert (= (and b!774156 (not c!85678)) b!774157))

(assert (= (and d!101971 c!85677) b!774153))

(assert (= (and d!101971 (not c!85677)) b!774155))

(assert (= (and b!774155 res!523598) b!774152))

(assert (= (and b!774152 (not res!523597)) b!774154))

(assert (= (and b!774154 (not res!523596)) b!774149))

(assert (=> d!101971 m!718691))

(assert (=> d!101971 m!718499))

(declare-fun m!718757 () Bool)

(assert (=> b!774149 m!718757))

(assert (=> b!774154 m!718757))

(assert (=> b!774157 m!718491))

(assert (=> b!774157 m!718491))

(assert (=> b!774157 m!718483))

(declare-fun m!718759 () Bool)

(assert (=> b!774157 m!718759))

(assert (=> b!774152 m!718757))

(assert (=> b!773789 d!101971))

(declare-fun b!774168 () Bool)

(declare-fun e!430964 () Bool)

(declare-fun e!430966 () Bool)

(assert (=> b!774168 (= e!430964 e!430966)))

(declare-fun res!523607 () Bool)

(assert (=> b!774168 (=> (not res!523607) (not e!430966))))

(declare-fun e!430963 () Bool)

(assert (=> b!774168 (= res!523607 (not e!430963))))

(declare-fun res!523606 () Bool)

(assert (=> b!774168 (=> (not res!523606) (not e!430963))))

(assert (=> b!774168 (= res!523606 (validKeyInArray!0 (select (arr!20306 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35167 () Bool)

(declare-fun call!35170 () Bool)

(declare-fun c!85681 () Bool)

(assert (=> bm!35167 (= call!35170 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85681 (Cons!14357 (select (arr!20306 a!3186) #b00000000000000000000000000000000) Nil!14358) Nil!14358)))))

(declare-fun b!774169 () Bool)

(declare-fun e!430965 () Bool)

(assert (=> b!774169 (= e!430966 e!430965)))

(assert (=> b!774169 (= c!85681 (validKeyInArray!0 (select (arr!20306 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!774170 () Bool)

(assert (=> b!774170 (= e!430965 call!35170)))

(declare-fun b!774171 () Bool)

(declare-fun contains!4097 (List!14361 (_ BitVec 64)) Bool)

(assert (=> b!774171 (= e!430963 (contains!4097 Nil!14358 (select (arr!20306 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!774172 () Bool)

(assert (=> b!774172 (= e!430965 call!35170)))

(declare-fun d!101973 () Bool)

(declare-fun res!523605 () Bool)

(assert (=> d!101973 (=> res!523605 e!430964)))

(assert (=> d!101973 (= res!523605 (bvsge #b00000000000000000000000000000000 (size!20727 a!3186)))))

(assert (=> d!101973 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14358) e!430964)))

(assert (= (and d!101973 (not res!523605)) b!774168))

(assert (= (and b!774168 res!523606) b!774171))

(assert (= (and b!774168 res!523607) b!774169))

(assert (= (and b!774169 c!85681) b!774172))

(assert (= (and b!774169 (not c!85681)) b!774170))

(assert (= (or b!774172 b!774170) bm!35167))

(assert (=> b!774168 m!718747))

(assert (=> b!774168 m!718747))

(assert (=> b!774168 m!718755))

(assert (=> bm!35167 m!718747))

(declare-fun m!718763 () Bool)

(assert (=> bm!35167 m!718763))

(assert (=> b!774169 m!718747))

(assert (=> b!774169 m!718747))

(assert (=> b!774169 m!718755))

(assert (=> b!774171 m!718747))

(assert (=> b!774171 m!718747))

(declare-fun m!718765 () Bool)

(assert (=> b!774171 m!718765))

(assert (=> b!773810 d!101973))

(declare-fun d!101977 () Bool)

(declare-fun res!523612 () Bool)

(declare-fun e!430971 () Bool)

(assert (=> d!101977 (=> res!523612 e!430971)))

(assert (=> d!101977 (= res!523612 (= (select (arr!20306 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101977 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!430971)))

(declare-fun b!774177 () Bool)

(declare-fun e!430972 () Bool)

(assert (=> b!774177 (= e!430971 e!430972)))

(declare-fun res!523613 () Bool)

(assert (=> b!774177 (=> (not res!523613) (not e!430972))))

(assert (=> b!774177 (= res!523613 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20727 a!3186)))))

(declare-fun b!774178 () Bool)

(assert (=> b!774178 (= e!430972 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101977 (not res!523612)) b!774177))

(assert (= (and b!774177 res!523613) b!774178))

(assert (=> d!101977 m!718747))

(declare-fun m!718767 () Bool)

(assert (=> b!774178 m!718767))

(assert (=> b!773811 d!101977))

(declare-fun b!774252 () Bool)

(declare-fun e!431013 () SeekEntryResult!7913)

(declare-fun e!431014 () SeekEntryResult!7913)

(assert (=> b!774252 (= e!431013 e!431014)))

(declare-fun lt!344821 () (_ BitVec 64))

(declare-fun lt!344823 () SeekEntryResult!7913)

(assert (=> b!774252 (= lt!344821 (select (arr!20306 a!3186) (index!34021 lt!344823)))))

(declare-fun c!85713 () Bool)

(assert (=> b!774252 (= c!85713 (= lt!344821 k!2102))))

(declare-fun b!774253 () Bool)

(declare-fun e!431012 () SeekEntryResult!7913)

(assert (=> b!774253 (= e!431012 (MissingZero!7913 (index!34021 lt!344823)))))

(declare-fun b!774254 () Bool)

(declare-fun c!85715 () Bool)

(assert (=> b!774254 (= c!85715 (= lt!344821 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774254 (= e!431014 e!431012)))

(declare-fun b!774255 () Bool)

(assert (=> b!774255 (= e!431014 (Found!7913 (index!34021 lt!344823)))))

(declare-fun b!774256 () Bool)

(assert (=> b!774256 (= e!431012 (seekKeyOrZeroReturnVacant!0 (x!64981 lt!344823) (index!34021 lt!344823) (index!34021 lt!344823) k!2102 a!3186 mask!3328))))

(declare-fun d!101979 () Bool)

(declare-fun lt!344822 () SeekEntryResult!7913)

(assert (=> d!101979 (and (or (is-Undefined!7913 lt!344822) (not (is-Found!7913 lt!344822)) (and (bvsge (index!34020 lt!344822) #b00000000000000000000000000000000) (bvslt (index!34020 lt!344822) (size!20727 a!3186)))) (or (is-Undefined!7913 lt!344822) (is-Found!7913 lt!344822) (not (is-MissingZero!7913 lt!344822)) (and (bvsge (index!34019 lt!344822) #b00000000000000000000000000000000) (bvslt (index!34019 lt!344822) (size!20727 a!3186)))) (or (is-Undefined!7913 lt!344822) (is-Found!7913 lt!344822) (is-MissingZero!7913 lt!344822) (not (is-MissingVacant!7913 lt!344822)) (and (bvsge (index!34022 lt!344822) #b00000000000000000000000000000000) (bvslt (index!34022 lt!344822) (size!20727 a!3186)))) (or (is-Undefined!7913 lt!344822) (ite (is-Found!7913 lt!344822) (= (select (arr!20306 a!3186) (index!34020 lt!344822)) k!2102) (ite (is-MissingZero!7913 lt!344822) (= (select (arr!20306 a!3186) (index!34019 lt!344822)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7913 lt!344822) (= (select (arr!20306 a!3186) (index!34022 lt!344822)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101979 (= lt!344822 e!431013)))

(declare-fun c!85714 () Bool)

(assert (=> d!101979 (= c!85714 (and (is-Intermediate!7913 lt!344823) (undefined!8725 lt!344823)))))

(assert (=> d!101979 (= lt!344823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101979 (validMask!0 mask!3328)))

(assert (=> d!101979 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!344822)))

(declare-fun b!774257 () Bool)

(assert (=> b!774257 (= e!431013 Undefined!7913)))

(assert (= (and d!101979 c!85714) b!774257))

(assert (= (and d!101979 (not c!85714)) b!774252))

(assert (= (and b!774252 c!85713) b!774255))

(assert (= (and b!774252 (not c!85713)) b!774254))

(assert (= (and b!774254 c!85715) b!774253))

(assert (= (and b!774254 (not c!85715)) b!774256))

(declare-fun m!718819 () Bool)

(assert (=> b!774252 m!718819))

(declare-fun m!718821 () Bool)

(assert (=> b!774256 m!718821))

(declare-fun m!718823 () Bool)

(assert (=> d!101979 m!718823))

(declare-fun m!718825 () Bool)

(assert (=> d!101979 m!718825))

(declare-fun m!718827 () Bool)

(assert (=> d!101979 m!718827))

(assert (=> d!101979 m!718499))

(declare-fun m!718829 () Bool)

(assert (=> d!101979 m!718829))

(assert (=> d!101979 m!718825))

(declare-fun m!718831 () Bool)

(assert (=> d!101979 m!718831))

(assert (=> b!773800 d!101979))

(assert (=> b!773801 d!101951))

(declare-fun b!774258 () Bool)

(declare-fun lt!344824 () SeekEntryResult!7913)

(assert (=> b!774258 (and (bvsge (index!34021 lt!344824) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344824) (size!20727 lt!344642)))))

(declare-fun e!431016 () Bool)

(assert (=> b!774258 (= e!431016 (= (select (arr!20306 lt!344642) (index!34021 lt!344824)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774259 () Bool)

(declare-fun e!431015 () SeekEntryResult!7913)

(assert (=> b!774259 (= e!431015 (Intermediate!7913 true index!1321 x!1131))))

(declare-fun b!774260 () Bool)

(declare-fun e!431018 () SeekEntryResult!7913)

(assert (=> b!774260 (= e!431018 (Intermediate!7913 false index!1321 x!1131))))

(declare-fun b!774262 () Bool)

(declare-fun e!431017 () Bool)

(assert (=> b!774262 (= e!431017 (bvsge (x!64981 lt!344824) #b01111111111111111111111111111110))))

(declare-fun b!774263 () Bool)

(assert (=> b!774263 (and (bvsge (index!34021 lt!344824) #b00000000000000000000000000000000) (bvslt (index!34021 lt!344824) (size!20727 lt!344642)))))

(declare-fun res!523626 () Bool)

(assert (=> b!774263 (= res!523626 (= (select (arr!20306 lt!344642) (index!34021 lt!344824)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774263 (=> res!523626 e!431016)))

(declare-fun b!774264 () Bool)

(declare-fun e!431019 () Bool)

