; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65414 () Bool)

(assert start!65414)

(declare-fun b!743994 () Bool)

(declare-fun res!501160 () Bool)

(declare-fun e!415655 () Bool)

(assert (=> b!743994 (=> (not res!501160) (not e!415655))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743994 (= res!501160 (validKeyInArray!0 k!2102))))

(declare-fun b!743995 () Bool)

(declare-fun e!415654 () Bool)

(assert (=> b!743995 (= e!415655 e!415654)))

(declare-fun res!501165 () Bool)

(assert (=> b!743995 (=> (not res!501165) (not e!415654))))

(declare-datatypes ((SeekEntryResult!7487 0))(
  ( (MissingZero!7487 (index!32315 (_ BitVec 32))) (Found!7487 (index!32316 (_ BitVec 32))) (Intermediate!7487 (undefined!8299 Bool) (index!32317 (_ BitVec 32)) (x!63302 (_ BitVec 32))) (Undefined!7487) (MissingVacant!7487 (index!32318 (_ BitVec 32))) )
))
(declare-fun lt!330518 () SeekEntryResult!7487)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743995 (= res!501165 (or (= lt!330518 (MissingZero!7487 i!1173)) (= lt!330518 (MissingVacant!7487 i!1173))))))

(declare-datatypes ((array!41540 0))(
  ( (array!41541 (arr!19880 (Array (_ BitVec 32) (_ BitVec 64))) (size!20301 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41540)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41540 (_ BitVec 32)) SeekEntryResult!7487)

(assert (=> b!743995 (= lt!330518 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!743996 () Bool)

(declare-fun res!501159 () Bool)

(assert (=> b!743996 (=> (not res!501159) (not e!415655))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!743996 (= res!501159 (and (= (size!20301 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20301 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20301 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743997 () Bool)

(declare-fun e!415652 () Bool)

(declare-fun e!415658 () Bool)

(assert (=> b!743997 (= e!415652 e!415658)))

(declare-fun res!501161 () Bool)

(assert (=> b!743997 (=> (not res!501161) (not e!415658))))

(declare-fun lt!330524 () SeekEntryResult!7487)

(assert (=> b!743997 (= res!501161 (= (seekEntryOrOpen!0 (select (arr!19880 a!3186) j!159) a!3186 mask!3328) lt!330524))))

(assert (=> b!743997 (= lt!330524 (Found!7487 j!159))))

(declare-fun b!743998 () Bool)

(declare-fun res!501156 () Bool)

(assert (=> b!743998 (=> (not res!501156) (not e!415654))))

(declare-datatypes ((List!13935 0))(
  ( (Nil!13932) (Cons!13931 (h!15003 (_ BitVec 64)) (t!20258 List!13935)) )
))
(declare-fun arrayNoDuplicates!0 (array!41540 (_ BitVec 32) List!13935) Bool)

(assert (=> b!743998 (= res!501156 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13932))))

(declare-fun b!743999 () Bool)

(declare-fun res!501158 () Bool)

(assert (=> b!743999 (=> (not res!501158) (not e!415654))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743999 (= res!501158 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20301 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20301 a!3186))))))

(declare-fun b!744000 () Bool)

(declare-fun e!415657 () Bool)

(assert (=> b!744000 (= e!415657 true)))

(declare-fun lt!330521 () SeekEntryResult!7487)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41540 (_ BitVec 32)) SeekEntryResult!7487)

(assert (=> b!744000 (= lt!330521 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19880 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744001 () Bool)

(assert (=> b!744001 (= e!415658 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19880 a!3186) j!159) a!3186 mask!3328) lt!330524))))

(declare-fun b!744002 () Bool)

(declare-fun res!501168 () Bool)

(assert (=> b!744002 (=> (not res!501168) (not e!415655))))

(assert (=> b!744002 (= res!501168 (validKeyInArray!0 (select (arr!19880 a!3186) j!159)))))

(declare-fun b!744003 () Bool)

(declare-fun lt!330523 () SeekEntryResult!7487)

(declare-fun e!415659 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41540 (_ BitVec 32)) SeekEntryResult!7487)

(assert (=> b!744003 (= e!415659 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19880 a!3186) j!159) a!3186 mask!3328) lt!330523))))

(declare-fun b!744004 () Bool)

(declare-fun e!415656 () Bool)

(assert (=> b!744004 (= e!415654 e!415656)))

(declare-fun res!501167 () Bool)

(assert (=> b!744004 (=> (not res!501167) (not e!415656))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744004 (= res!501167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19880 a!3186) j!159) mask!3328) (select (arr!19880 a!3186) j!159) a!3186 mask!3328) lt!330523))))

(assert (=> b!744004 (= lt!330523 (Intermediate!7487 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744005 () Bool)

(declare-fun res!501166 () Bool)

(assert (=> b!744005 (=> (not res!501166) (not e!415655))))

(declare-fun arrayContainsKey!0 (array!41540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744005 (= res!501166 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744006 () Bool)

(declare-fun e!415653 () Bool)

(assert (=> b!744006 (= e!415653 (not e!415657))))

(declare-fun res!501154 () Bool)

(assert (=> b!744006 (=> res!501154 e!415657)))

(declare-fun lt!330516 () SeekEntryResult!7487)

(assert (=> b!744006 (= res!501154 (or (not (is-Intermediate!7487 lt!330516)) (bvslt x!1131 (x!63302 lt!330516)) (not (= x!1131 (x!63302 lt!330516))) (not (= index!1321 (index!32317 lt!330516)))))))

(assert (=> b!744006 e!415652))

(declare-fun res!501162 () Bool)

(assert (=> b!744006 (=> (not res!501162) (not e!415652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41540 (_ BitVec 32)) Bool)

(assert (=> b!744006 (= res!501162 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25454 0))(
  ( (Unit!25455) )
))
(declare-fun lt!330517 () Unit!25454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25454)

(assert (=> b!744006 (= lt!330517 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744007 () Bool)

(declare-fun res!501163 () Bool)

(assert (=> b!744007 (=> (not res!501163) (not e!415656))))

(assert (=> b!744007 (= res!501163 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19880 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!501157 () Bool)

(assert (=> start!65414 (=> (not res!501157) (not e!415655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65414 (= res!501157 (validMask!0 mask!3328))))

(assert (=> start!65414 e!415655))

(assert (=> start!65414 true))

(declare-fun array_inv!15654 (array!41540) Bool)

(assert (=> start!65414 (array_inv!15654 a!3186)))

(declare-fun b!744008 () Bool)

(assert (=> b!744008 (= e!415656 e!415653)))

(declare-fun res!501153 () Bool)

(assert (=> b!744008 (=> (not res!501153) (not e!415653))))

(declare-fun lt!330519 () SeekEntryResult!7487)

(assert (=> b!744008 (= res!501153 (= lt!330519 lt!330516))))

(declare-fun lt!330522 () (_ BitVec 64))

(declare-fun lt!330520 () array!41540)

(assert (=> b!744008 (= lt!330516 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330522 lt!330520 mask!3328))))

(assert (=> b!744008 (= lt!330519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330522 mask!3328) lt!330522 lt!330520 mask!3328))))

(assert (=> b!744008 (= lt!330522 (select (store (arr!19880 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744008 (= lt!330520 (array!41541 (store (arr!19880 a!3186) i!1173 k!2102) (size!20301 a!3186)))))

(declare-fun b!744009 () Bool)

(assert (=> b!744009 (= e!415659 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19880 a!3186) j!159) a!3186 mask!3328) (Found!7487 j!159)))))

(declare-fun b!744010 () Bool)

(declare-fun res!501164 () Bool)

(assert (=> b!744010 (=> (not res!501164) (not e!415656))))

(assert (=> b!744010 (= res!501164 e!415659)))

(declare-fun c!81801 () Bool)

(assert (=> b!744010 (= c!81801 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744011 () Bool)

(declare-fun res!501155 () Bool)

(assert (=> b!744011 (=> (not res!501155) (not e!415654))))

(assert (=> b!744011 (= res!501155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65414 res!501157) b!743996))

(assert (= (and b!743996 res!501159) b!744002))

(assert (= (and b!744002 res!501168) b!743994))

(assert (= (and b!743994 res!501160) b!744005))

(assert (= (and b!744005 res!501166) b!743995))

(assert (= (and b!743995 res!501165) b!744011))

(assert (= (and b!744011 res!501155) b!743998))

(assert (= (and b!743998 res!501156) b!743999))

(assert (= (and b!743999 res!501158) b!744004))

(assert (= (and b!744004 res!501167) b!744007))

(assert (= (and b!744007 res!501163) b!744010))

(assert (= (and b!744010 c!81801) b!744003))

(assert (= (and b!744010 (not c!81801)) b!744009))

(assert (= (and b!744010 res!501164) b!744008))

(assert (= (and b!744008 res!501153) b!744006))

(assert (= (and b!744006 res!501162) b!743997))

(assert (= (and b!743997 res!501161) b!744001))

(assert (= (and b!744006 (not res!501154)) b!744000))

(declare-fun m!694671 () Bool)

(assert (=> b!744003 m!694671))

(assert (=> b!744003 m!694671))

(declare-fun m!694673 () Bool)

(assert (=> b!744003 m!694673))

(assert (=> b!744004 m!694671))

(assert (=> b!744004 m!694671))

(declare-fun m!694675 () Bool)

(assert (=> b!744004 m!694675))

(assert (=> b!744004 m!694675))

(assert (=> b!744004 m!694671))

(declare-fun m!694677 () Bool)

(assert (=> b!744004 m!694677))

(declare-fun m!694679 () Bool)

(assert (=> b!744008 m!694679))

(declare-fun m!694681 () Bool)

(assert (=> b!744008 m!694681))

(declare-fun m!694683 () Bool)

(assert (=> b!744008 m!694683))

(declare-fun m!694685 () Bool)

(assert (=> b!744008 m!694685))

(assert (=> b!744008 m!694685))

(declare-fun m!694687 () Bool)

(assert (=> b!744008 m!694687))

(declare-fun m!694689 () Bool)

(assert (=> b!744011 m!694689))

(declare-fun m!694691 () Bool)

(assert (=> b!744007 m!694691))

(declare-fun m!694693 () Bool)

(assert (=> b!744006 m!694693))

(declare-fun m!694695 () Bool)

(assert (=> b!744006 m!694695))

(declare-fun m!694697 () Bool)

(assert (=> start!65414 m!694697))

(declare-fun m!694699 () Bool)

(assert (=> start!65414 m!694699))

(declare-fun m!694701 () Bool)

(assert (=> b!744005 m!694701))

(assert (=> b!743997 m!694671))

(assert (=> b!743997 m!694671))

(declare-fun m!694703 () Bool)

(assert (=> b!743997 m!694703))

(assert (=> b!744000 m!694671))

(assert (=> b!744000 m!694671))

(declare-fun m!694705 () Bool)

(assert (=> b!744000 m!694705))

(declare-fun m!694707 () Bool)

(assert (=> b!743994 m!694707))

(declare-fun m!694709 () Bool)

(assert (=> b!743995 m!694709))

(assert (=> b!744002 m!694671))

(assert (=> b!744002 m!694671))

(declare-fun m!694711 () Bool)

(assert (=> b!744002 m!694711))

(assert (=> b!744001 m!694671))

(assert (=> b!744001 m!694671))

(declare-fun m!694713 () Bool)

(assert (=> b!744001 m!694713))

(assert (=> b!744009 m!694671))

(assert (=> b!744009 m!694671))

(assert (=> b!744009 m!694705))

(declare-fun m!694715 () Bool)

(assert (=> b!743998 m!694715))

(push 1)

