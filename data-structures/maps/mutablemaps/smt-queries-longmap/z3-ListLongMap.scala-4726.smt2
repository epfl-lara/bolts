; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65436 () Bool)

(assert start!65436)

(declare-fun b!744597 () Bool)

(declare-fun res!501690 () Bool)

(declare-fun e!415955 () Bool)

(assert (=> b!744597 (=> (not res!501690) (not e!415955))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744597 (= res!501690 (validKeyInArray!0 k0!2102))))

(declare-fun b!744598 () Bool)

(declare-fun res!501696 () Bool)

(assert (=> b!744598 (=> (not res!501696) (not e!415955))))

(declare-datatypes ((array!41562 0))(
  ( (array!41563 (arr!19891 (Array (_ BitVec 32) (_ BitVec 64))) (size!20312 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41562)

(declare-fun arrayContainsKey!0 (array!41562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744598 (= res!501696 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744599 () Bool)

(declare-fun res!501703 () Bool)

(assert (=> b!744599 (=> (not res!501703) (not e!415955))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!744599 (= res!501703 (validKeyInArray!0 (select (arr!19891 a!3186) j!159)))))

(declare-fun b!744600 () Bool)

(declare-fun e!415953 () Bool)

(assert (=> b!744600 (= e!415953 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7498 0))(
  ( (MissingZero!7498 (index!32359 (_ BitVec 32))) (Found!7498 (index!32360 (_ BitVec 32))) (Intermediate!7498 (undefined!8310 Bool) (index!32361 (_ BitVec 32)) (x!63345 (_ BitVec 32))) (Undefined!7498) (MissingVacant!7498 (index!32362 (_ BitVec 32))) )
))
(declare-fun lt!330808 () SeekEntryResult!7498)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41562 (_ BitVec 32)) SeekEntryResult!7498)

(assert (=> b!744600 (= lt!330808 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19891 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744601 () Bool)

(declare-fun e!415948 () Bool)

(assert (=> b!744601 (= e!415955 e!415948)))

(declare-fun res!501704 () Bool)

(assert (=> b!744601 (=> (not res!501704) (not e!415948))))

(declare-fun lt!330812 () SeekEntryResult!7498)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744601 (= res!501704 (or (= lt!330812 (MissingZero!7498 i!1173)) (= lt!330812 (MissingVacant!7498 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41562 (_ BitVec 32)) SeekEntryResult!7498)

(assert (=> b!744601 (= lt!330812 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!744602 () Bool)

(declare-fun res!501705 () Bool)

(assert (=> b!744602 (=> (not res!501705) (not e!415948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41562 (_ BitVec 32)) Bool)

(assert (=> b!744602 (= res!501705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744604 () Bool)

(declare-fun e!415949 () Bool)

(assert (=> b!744604 (= e!415949 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19891 a!3186) j!159) a!3186 mask!3328) (Found!7498 j!159)))))

(declare-fun b!744605 () Bool)

(declare-fun res!501702 () Bool)

(declare-fun e!415952 () Bool)

(assert (=> b!744605 (=> (not res!501702) (not e!415952))))

(assert (=> b!744605 (= res!501702 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19891 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744606 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!415950 () Bool)

(declare-fun lt!330806 () SeekEntryResult!7498)

(assert (=> b!744606 (= e!415950 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19891 a!3186) j!159) a!3186 mask!3328) lt!330806))))

(declare-fun b!744607 () Bool)

(declare-fun res!501698 () Bool)

(assert (=> b!744607 (=> (not res!501698) (not e!415955))))

(assert (=> b!744607 (= res!501698 (and (= (size!20312 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20312 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20312 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744608 () Bool)

(declare-fun e!415956 () Bool)

(assert (=> b!744608 (= e!415952 e!415956)))

(declare-fun res!501694 () Bool)

(assert (=> b!744608 (=> (not res!501694) (not e!415956))))

(declare-fun lt!330804 () SeekEntryResult!7498)

(declare-fun lt!330807 () SeekEntryResult!7498)

(assert (=> b!744608 (= res!501694 (= lt!330804 lt!330807))))

(declare-fun lt!330810 () (_ BitVec 64))

(declare-fun lt!330809 () array!41562)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41562 (_ BitVec 32)) SeekEntryResult!7498)

(assert (=> b!744608 (= lt!330807 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330810 lt!330809 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744608 (= lt!330804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330810 mask!3328) lt!330810 lt!330809 mask!3328))))

(assert (=> b!744608 (= lt!330810 (select (store (arr!19891 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!744608 (= lt!330809 (array!41563 (store (arr!19891 a!3186) i!1173 k0!2102) (size!20312 a!3186)))))

(declare-fun b!744609 () Bool)

(declare-fun res!501697 () Bool)

(assert (=> b!744609 (=> (not res!501697) (not e!415948))))

(declare-datatypes ((List!13946 0))(
  ( (Nil!13943) (Cons!13942 (h!15014 (_ BitVec 64)) (t!20269 List!13946)) )
))
(declare-fun arrayNoDuplicates!0 (array!41562 (_ BitVec 32) List!13946) Bool)

(assert (=> b!744609 (= res!501697 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13943))))

(declare-fun b!744610 () Bool)

(declare-fun e!415954 () Bool)

(assert (=> b!744610 (= e!415954 e!415950)))

(declare-fun res!501695 () Bool)

(assert (=> b!744610 (=> (not res!501695) (not e!415950))))

(assert (=> b!744610 (= res!501695 (= (seekEntryOrOpen!0 (select (arr!19891 a!3186) j!159) a!3186 mask!3328) lt!330806))))

(assert (=> b!744610 (= lt!330806 (Found!7498 j!159))))

(declare-fun res!501699 () Bool)

(assert (=> start!65436 (=> (not res!501699) (not e!415955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65436 (= res!501699 (validMask!0 mask!3328))))

(assert (=> start!65436 e!415955))

(assert (=> start!65436 true))

(declare-fun array_inv!15665 (array!41562) Bool)

(assert (=> start!65436 (array_inv!15665 a!3186)))

(declare-fun b!744603 () Bool)

(declare-fun res!501692 () Bool)

(assert (=> b!744603 (=> (not res!501692) (not e!415952))))

(assert (=> b!744603 (= res!501692 e!415949)))

(declare-fun c!81834 () Bool)

(assert (=> b!744603 (= c!81834 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744611 () Bool)

(assert (=> b!744611 (= e!415948 e!415952)))

(declare-fun res!501693 () Bool)

(assert (=> b!744611 (=> (not res!501693) (not e!415952))))

(declare-fun lt!330805 () SeekEntryResult!7498)

(assert (=> b!744611 (= res!501693 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19891 a!3186) j!159) mask!3328) (select (arr!19891 a!3186) j!159) a!3186 mask!3328) lt!330805))))

(assert (=> b!744611 (= lt!330805 (Intermediate!7498 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744612 () Bool)

(declare-fun res!501700 () Bool)

(assert (=> b!744612 (=> (not res!501700) (not e!415948))))

(assert (=> b!744612 (= res!501700 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20312 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20312 a!3186))))))

(declare-fun b!744613 () Bool)

(assert (=> b!744613 (= e!415956 (not e!415953))))

(declare-fun res!501701 () Bool)

(assert (=> b!744613 (=> res!501701 e!415953)))

(get-info :version)

(assert (=> b!744613 (= res!501701 (or (not ((_ is Intermediate!7498) lt!330807)) (bvslt x!1131 (x!63345 lt!330807)) (not (= x!1131 (x!63345 lt!330807))) (not (= index!1321 (index!32361 lt!330807)))))))

(assert (=> b!744613 e!415954))

(declare-fun res!501691 () Bool)

(assert (=> b!744613 (=> (not res!501691) (not e!415954))))

(assert (=> b!744613 (= res!501691 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25476 0))(
  ( (Unit!25477) )
))
(declare-fun lt!330811 () Unit!25476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41562 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25476)

(assert (=> b!744613 (= lt!330811 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744614 () Bool)

(assert (=> b!744614 (= e!415949 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19891 a!3186) j!159) a!3186 mask!3328) lt!330805))))

(assert (= (and start!65436 res!501699) b!744607))

(assert (= (and b!744607 res!501698) b!744599))

(assert (= (and b!744599 res!501703) b!744597))

(assert (= (and b!744597 res!501690) b!744598))

(assert (= (and b!744598 res!501696) b!744601))

(assert (= (and b!744601 res!501704) b!744602))

(assert (= (and b!744602 res!501705) b!744609))

(assert (= (and b!744609 res!501697) b!744612))

(assert (= (and b!744612 res!501700) b!744611))

(assert (= (and b!744611 res!501693) b!744605))

(assert (= (and b!744605 res!501702) b!744603))

(assert (= (and b!744603 c!81834) b!744614))

(assert (= (and b!744603 (not c!81834)) b!744604))

(assert (= (and b!744603 res!501692) b!744608))

(assert (= (and b!744608 res!501694) b!744613))

(assert (= (and b!744613 res!501691) b!744610))

(assert (= (and b!744610 res!501695) b!744606))

(assert (= (and b!744613 (not res!501701)) b!744600))

(declare-fun m!695183 () Bool)

(assert (=> b!744602 m!695183))

(declare-fun m!695185 () Bool)

(assert (=> b!744600 m!695185))

(assert (=> b!744600 m!695185))

(declare-fun m!695187 () Bool)

(assert (=> b!744600 m!695187))

(declare-fun m!695189 () Bool)

(assert (=> b!744601 m!695189))

(declare-fun m!695191 () Bool)

(assert (=> b!744609 m!695191))

(assert (=> b!744599 m!695185))

(assert (=> b!744599 m!695185))

(declare-fun m!695193 () Bool)

(assert (=> b!744599 m!695193))

(declare-fun m!695195 () Bool)

(assert (=> b!744605 m!695195))

(declare-fun m!695197 () Bool)

(assert (=> b!744608 m!695197))

(declare-fun m!695199 () Bool)

(assert (=> b!744608 m!695199))

(declare-fun m!695201 () Bool)

(assert (=> b!744608 m!695201))

(declare-fun m!695203 () Bool)

(assert (=> b!744608 m!695203))

(assert (=> b!744608 m!695199))

(declare-fun m!695205 () Bool)

(assert (=> b!744608 m!695205))

(declare-fun m!695207 () Bool)

(assert (=> b!744613 m!695207))

(declare-fun m!695209 () Bool)

(assert (=> b!744613 m!695209))

(assert (=> b!744614 m!695185))

(assert (=> b!744614 m!695185))

(declare-fun m!695211 () Bool)

(assert (=> b!744614 m!695211))

(assert (=> b!744606 m!695185))

(assert (=> b!744606 m!695185))

(declare-fun m!695213 () Bool)

(assert (=> b!744606 m!695213))

(assert (=> b!744604 m!695185))

(assert (=> b!744604 m!695185))

(assert (=> b!744604 m!695187))

(assert (=> b!744611 m!695185))

(assert (=> b!744611 m!695185))

(declare-fun m!695215 () Bool)

(assert (=> b!744611 m!695215))

(assert (=> b!744611 m!695215))

(assert (=> b!744611 m!695185))

(declare-fun m!695217 () Bool)

(assert (=> b!744611 m!695217))

(assert (=> b!744610 m!695185))

(assert (=> b!744610 m!695185))

(declare-fun m!695219 () Bool)

(assert (=> b!744610 m!695219))

(declare-fun m!695221 () Bool)

(assert (=> b!744598 m!695221))

(declare-fun m!695223 () Bool)

(assert (=> start!65436 m!695223))

(declare-fun m!695225 () Bool)

(assert (=> start!65436 m!695225))

(declare-fun m!695227 () Bool)

(assert (=> b!744597 m!695227))

(check-sat (not b!744600) (not b!744606) (not start!65436) (not b!744610) (not b!744601) (not b!744604) (not b!744599) (not b!744608) (not b!744611) (not b!744598) (not b!744597) (not b!744614) (not b!744609) (not b!744602) (not b!744613))
(check-sat)
