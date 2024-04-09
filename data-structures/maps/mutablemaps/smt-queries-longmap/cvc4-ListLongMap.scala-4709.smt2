; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65336 () Bool)

(assert start!65336)

(declare-fun b!741772 () Bool)

(declare-fun res!499168 () Bool)

(declare-fun e!414617 () Bool)

(assert (=> b!741772 (=> (not res!499168) (not e!414617))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41462 0))(
  ( (array!41463 (arr!19841 (Array (_ BitVec 32) (_ BitVec 64))) (size!20262 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41462)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741772 (= res!499168 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19841 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741773 () Bool)

(declare-fun res!499171 () Bool)

(declare-fun e!414622 () Bool)

(assert (=> b!741773 (=> (not res!499171) (not e!414622))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741773 (= res!499171 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!7448 0))(
  ( (MissingZero!7448 (index!32159 (_ BitVec 32))) (Found!7448 (index!32160 (_ BitVec 32))) (Intermediate!7448 (undefined!8260 Bool) (index!32161 (_ BitVec 32)) (x!63159 (_ BitVec 32))) (Undefined!7448) (MissingVacant!7448 (index!32162 (_ BitVec 32))) )
))
(declare-fun lt!329569 () SeekEntryResult!7448)

(declare-fun b!741774 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!414618 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41462 (_ BitVec 32)) SeekEntryResult!7448)

(assert (=> b!741774 (= e!414618 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19841 a!3186) j!159) a!3186 mask!3328) lt!329569))))

(declare-fun b!741775 () Bool)

(declare-fun e!414623 () Bool)

(declare-fun e!414624 () Bool)

(assert (=> b!741775 (= e!414623 e!414624)))

(declare-fun res!499172 () Bool)

(assert (=> b!741775 (=> (not res!499172) (not e!414624))))

(declare-fun lt!329565 () SeekEntryResult!7448)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41462 (_ BitVec 32)) SeekEntryResult!7448)

(assert (=> b!741775 (= res!499172 (= (seekEntryOrOpen!0 (select (arr!19841 a!3186) j!159) a!3186 mask!3328) lt!329565))))

(assert (=> b!741775 (= lt!329565 (Found!7448 j!159))))

(declare-fun b!741776 () Bool)

(declare-fun res!499170 () Bool)

(assert (=> b!741776 (=> (not res!499170) (not e!414617))))

(assert (=> b!741776 (= res!499170 e!414618)))

(declare-fun c!81684 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741776 (= c!81684 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741777 () Bool)

(declare-fun res!499169 () Bool)

(declare-fun e!414621 () Bool)

(assert (=> b!741777 (=> (not res!499169) (not e!414621))))

(assert (=> b!741777 (= res!499169 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20262 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20262 a!3186))))))

(declare-fun b!741778 () Bool)

(declare-fun res!499179 () Bool)

(assert (=> b!741778 (=> (not res!499179) (not e!414621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41462 (_ BitVec 32)) Bool)

(assert (=> b!741778 (= res!499179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741779 () Bool)

(assert (=> b!741779 (= e!414621 e!414617)))

(declare-fun res!499173 () Bool)

(assert (=> b!741779 (=> (not res!499173) (not e!414617))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741779 (= res!499173 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19841 a!3186) j!159) mask!3328) (select (arr!19841 a!3186) j!159) a!3186 mask!3328) lt!329569))))

(assert (=> b!741779 (= lt!329569 (Intermediate!7448 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741780 () Bool)

(assert (=> b!741780 (= e!414622 e!414621)))

(declare-fun res!499175 () Bool)

(assert (=> b!741780 (=> (not res!499175) (not e!414621))))

(declare-fun lt!329563 () SeekEntryResult!7448)

(assert (=> b!741780 (= res!499175 (or (= lt!329563 (MissingZero!7448 i!1173)) (= lt!329563 (MissingVacant!7448 i!1173))))))

(assert (=> b!741780 (= lt!329563 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741782 () Bool)

(declare-fun e!414619 () Bool)

(declare-fun lt!329570 () SeekEntryResult!7448)

(assert (=> b!741782 (= e!414619 (not (or (not (is-Intermediate!7448 lt!329570)) (not (= x!1131 (x!63159 lt!329570))) (not (= index!1321 (index!32161 lt!329570))) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!741782 e!414623))

(declare-fun res!499167 () Bool)

(assert (=> b!741782 (=> (not res!499167) (not e!414623))))

(assert (=> b!741782 (= res!499167 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25376 0))(
  ( (Unit!25377) )
))
(declare-fun lt!329568 () Unit!25376)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41462 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25376)

(assert (=> b!741782 (= lt!329568 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741783 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41462 (_ BitVec 32)) SeekEntryResult!7448)

(assert (=> b!741783 (= e!414618 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19841 a!3186) j!159) a!3186 mask!3328) (Found!7448 j!159)))))

(declare-fun b!741784 () Bool)

(assert (=> b!741784 (= e!414617 e!414619)))

(declare-fun res!499165 () Bool)

(assert (=> b!741784 (=> (not res!499165) (not e!414619))))

(declare-fun lt!329566 () SeekEntryResult!7448)

(assert (=> b!741784 (= res!499165 (= lt!329566 lt!329570))))

(declare-fun lt!329567 () (_ BitVec 64))

(declare-fun lt!329564 () array!41462)

(assert (=> b!741784 (= lt!329570 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329567 lt!329564 mask!3328))))

(assert (=> b!741784 (= lt!329566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329567 mask!3328) lt!329567 lt!329564 mask!3328))))

(assert (=> b!741784 (= lt!329567 (select (store (arr!19841 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741784 (= lt!329564 (array!41463 (store (arr!19841 a!3186) i!1173 k!2102) (size!20262 a!3186)))))

(declare-fun b!741785 () Bool)

(declare-fun res!499174 () Bool)

(assert (=> b!741785 (=> (not res!499174) (not e!414621))))

(declare-datatypes ((List!13896 0))(
  ( (Nil!13893) (Cons!13892 (h!14964 (_ BitVec 64)) (t!20219 List!13896)) )
))
(declare-fun arrayNoDuplicates!0 (array!41462 (_ BitVec 32) List!13896) Bool)

(assert (=> b!741785 (= res!499174 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13893))))

(declare-fun b!741786 () Bool)

(declare-fun res!499166 () Bool)

(assert (=> b!741786 (=> (not res!499166) (not e!414622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741786 (= res!499166 (validKeyInArray!0 k!2102))))

(declare-fun b!741787 () Bool)

(assert (=> b!741787 (= e!414624 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19841 a!3186) j!159) a!3186 mask!3328) lt!329565))))

(declare-fun b!741788 () Bool)

(declare-fun res!499177 () Bool)

(assert (=> b!741788 (=> (not res!499177) (not e!414622))))

(assert (=> b!741788 (= res!499177 (and (= (size!20262 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20262 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20262 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741781 () Bool)

(declare-fun res!499176 () Bool)

(assert (=> b!741781 (=> (not res!499176) (not e!414622))))

(assert (=> b!741781 (= res!499176 (validKeyInArray!0 (select (arr!19841 a!3186) j!159)))))

(declare-fun res!499178 () Bool)

(assert (=> start!65336 (=> (not res!499178) (not e!414622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65336 (= res!499178 (validMask!0 mask!3328))))

(assert (=> start!65336 e!414622))

(assert (=> start!65336 true))

(declare-fun array_inv!15615 (array!41462) Bool)

(assert (=> start!65336 (array_inv!15615 a!3186)))

(assert (= (and start!65336 res!499178) b!741788))

(assert (= (and b!741788 res!499177) b!741781))

(assert (= (and b!741781 res!499176) b!741786))

(assert (= (and b!741786 res!499166) b!741773))

(assert (= (and b!741773 res!499171) b!741780))

(assert (= (and b!741780 res!499175) b!741778))

(assert (= (and b!741778 res!499179) b!741785))

(assert (= (and b!741785 res!499174) b!741777))

(assert (= (and b!741777 res!499169) b!741779))

(assert (= (and b!741779 res!499173) b!741772))

(assert (= (and b!741772 res!499168) b!741776))

(assert (= (and b!741776 c!81684) b!741774))

(assert (= (and b!741776 (not c!81684)) b!741783))

(assert (= (and b!741776 res!499170) b!741784))

(assert (= (and b!741784 res!499165) b!741782))

(assert (= (and b!741782 res!499167) b!741775))

(assert (= (and b!741775 res!499172) b!741787))

(declare-fun m!692799 () Bool)

(assert (=> b!741782 m!692799))

(declare-fun m!692801 () Bool)

(assert (=> b!741782 m!692801))

(declare-fun m!692803 () Bool)

(assert (=> b!741778 m!692803))

(declare-fun m!692805 () Bool)

(assert (=> b!741787 m!692805))

(assert (=> b!741787 m!692805))

(declare-fun m!692807 () Bool)

(assert (=> b!741787 m!692807))

(declare-fun m!692809 () Bool)

(assert (=> b!741786 m!692809))

(declare-fun m!692811 () Bool)

(assert (=> b!741785 m!692811))

(declare-fun m!692813 () Bool)

(assert (=> b!741773 m!692813))

(declare-fun m!692815 () Bool)

(assert (=> b!741780 m!692815))

(declare-fun m!692817 () Bool)

(assert (=> b!741772 m!692817))

(declare-fun m!692819 () Bool)

(assert (=> start!65336 m!692819))

(declare-fun m!692821 () Bool)

(assert (=> start!65336 m!692821))

(assert (=> b!741779 m!692805))

(assert (=> b!741779 m!692805))

(declare-fun m!692823 () Bool)

(assert (=> b!741779 m!692823))

(assert (=> b!741779 m!692823))

(assert (=> b!741779 m!692805))

(declare-fun m!692825 () Bool)

(assert (=> b!741779 m!692825))

(assert (=> b!741774 m!692805))

(assert (=> b!741774 m!692805))

(declare-fun m!692827 () Bool)

(assert (=> b!741774 m!692827))

(assert (=> b!741781 m!692805))

(assert (=> b!741781 m!692805))

(declare-fun m!692829 () Bool)

(assert (=> b!741781 m!692829))

(assert (=> b!741783 m!692805))

(assert (=> b!741783 m!692805))

(declare-fun m!692831 () Bool)

(assert (=> b!741783 m!692831))

(assert (=> b!741775 m!692805))

(assert (=> b!741775 m!692805))

(declare-fun m!692833 () Bool)

(assert (=> b!741775 m!692833))

(declare-fun m!692835 () Bool)

(assert (=> b!741784 m!692835))

(declare-fun m!692837 () Bool)

(assert (=> b!741784 m!692837))

(declare-fun m!692839 () Bool)

(assert (=> b!741784 m!692839))

(declare-fun m!692841 () Bool)

(assert (=> b!741784 m!692841))

(declare-fun m!692843 () Bool)

(assert (=> b!741784 m!692843))

(assert (=> b!741784 m!692841))

(push 1)

(assert (not b!741779))

(assert (not b!741786))

(assert (not b!741782))

(assert (not b!741784))

(assert (not b!741780))

(assert (not b!741778))

(assert (not b!741775))

(assert (not b!741783))

(assert (not b!741785))

(assert (not b!741774))

(assert (not start!65336))

(assert (not b!741773))

(assert (not b!741781))

(assert (not b!741787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

