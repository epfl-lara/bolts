; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65440 () Bool)

(assert start!65440)

(declare-fun b!744707 () Bool)

(declare-fun res!501799 () Bool)

(declare-fun e!416002 () Bool)

(assert (=> b!744707 (=> (not res!501799) (not e!416002))))

(declare-datatypes ((array!41566 0))(
  ( (array!41567 (arr!19893 (Array (_ BitVec 32) (_ BitVec 64))) (size!20314 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41566)

(declare-datatypes ((List!13948 0))(
  ( (Nil!13945) (Cons!13944 (h!15016 (_ BitVec 64)) (t!20271 List!13948)) )
))
(declare-fun arrayNoDuplicates!0 (array!41566 (_ BitVec 32) List!13948) Bool)

(assert (=> b!744707 (= res!501799 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13945))))

(declare-fun b!744708 () Bool)

(declare-fun e!416010 () Bool)

(declare-fun e!416007 () Bool)

(assert (=> b!744708 (= e!416010 (not e!416007))))

(declare-fun res!501803 () Bool)

(assert (=> b!744708 (=> res!501803 e!416007)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7500 0))(
  ( (MissingZero!7500 (index!32367 (_ BitVec 32))) (Found!7500 (index!32368 (_ BitVec 32))) (Intermediate!7500 (undefined!8312 Bool) (index!32369 (_ BitVec 32)) (x!63355 (_ BitVec 32))) (Undefined!7500) (MissingVacant!7500 (index!32370 (_ BitVec 32))) )
))
(declare-fun lt!330859 () SeekEntryResult!7500)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!744708 (= res!501803 (or (not (is-Intermediate!7500 lt!330859)) (bvslt x!1131 (x!63355 lt!330859)) (not (= x!1131 (x!63355 lt!330859))) (not (= index!1321 (index!32369 lt!330859)))))))

(declare-fun e!416005 () Bool)

(assert (=> b!744708 e!416005))

(declare-fun res!501797 () Bool)

(assert (=> b!744708 (=> (not res!501797) (not e!416005))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41566 (_ BitVec 32)) Bool)

(assert (=> b!744708 (= res!501797 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25480 0))(
  ( (Unit!25481) )
))
(declare-fun lt!330863 () Unit!25480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25480)

(assert (=> b!744708 (= lt!330863 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744709 () Bool)

(declare-fun e!416008 () Bool)

(assert (=> b!744709 (= e!416005 e!416008)))

(declare-fun res!501791 () Bool)

(assert (=> b!744709 (=> (not res!501791) (not e!416008))))

(declare-fun lt!330858 () SeekEntryResult!7500)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41566 (_ BitVec 32)) SeekEntryResult!7500)

(assert (=> b!744709 (= res!501791 (= (seekEntryOrOpen!0 (select (arr!19893 a!3186) j!159) a!3186 mask!3328) lt!330858))))

(assert (=> b!744709 (= lt!330858 (Found!7500 j!159))))

(declare-fun b!744710 () Bool)

(declare-fun res!501789 () Bool)

(declare-fun e!416004 () Bool)

(assert (=> b!744710 (=> (not res!501789) (not e!416004))))

(declare-fun e!416009 () Bool)

(assert (=> b!744710 (= res!501789 e!416009)))

(declare-fun c!81840 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744710 (= c!81840 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744711 () Bool)

(declare-fun res!501800 () Bool)

(assert (=> b!744711 (=> (not res!501800) (not e!416002))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!744711 (= res!501800 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20314 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20314 a!3186))))))

(declare-fun lt!330862 () SeekEntryResult!7500)

(declare-fun b!744712 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41566 (_ BitVec 32)) SeekEntryResult!7500)

(assert (=> b!744712 (= e!416009 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19893 a!3186) j!159) a!3186 mask!3328) lt!330862))))

(declare-fun b!744713 () Bool)

(assert (=> b!744713 (= e!416002 e!416004)))

(declare-fun res!501793 () Bool)

(assert (=> b!744713 (=> (not res!501793) (not e!416004))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744713 (= res!501793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19893 a!3186) j!159) mask!3328) (select (arr!19893 a!3186) j!159) a!3186 mask!3328) lt!330862))))

(assert (=> b!744713 (= lt!330862 (Intermediate!7500 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744714 () Bool)

(declare-fun res!501798 () Bool)

(assert (=> b!744714 (=> (not res!501798) (not e!416002))))

(assert (=> b!744714 (= res!501798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744715 () Bool)

(declare-fun res!501801 () Bool)

(declare-fun e!416003 () Bool)

(assert (=> b!744715 (=> (not res!501801) (not e!416003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744715 (= res!501801 (validKeyInArray!0 (select (arr!19893 a!3186) j!159)))))

(declare-fun b!744716 () Bool)

(declare-fun res!501796 () Bool)

(assert (=> b!744716 (=> (not res!501796) (not e!416003))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744716 (= res!501796 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744718 () Bool)

(declare-fun res!501795 () Bool)

(assert (=> b!744718 (=> (not res!501795) (not e!416003))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744718 (= res!501795 (and (= (size!20314 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20314 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20314 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744719 () Bool)

(declare-fun res!501788 () Bool)

(assert (=> b!744719 (=> (not res!501788) (not e!416004))))

(assert (=> b!744719 (= res!501788 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19893 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744720 () Bool)

(declare-fun res!501794 () Bool)

(assert (=> b!744720 (=> (not res!501794) (not e!416003))))

(assert (=> b!744720 (= res!501794 (validKeyInArray!0 k!2102))))

(declare-fun b!744721 () Bool)

(assert (=> b!744721 (= e!416003 e!416002)))

(declare-fun res!501802 () Bool)

(assert (=> b!744721 (=> (not res!501802) (not e!416002))))

(declare-fun lt!330856 () SeekEntryResult!7500)

(assert (=> b!744721 (= res!501802 (or (= lt!330856 (MissingZero!7500 i!1173)) (= lt!330856 (MissingVacant!7500 i!1173))))))

(assert (=> b!744721 (= lt!330856 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!330861 () (_ BitVec 64))

(declare-fun b!744722 () Bool)

(assert (=> b!744722 (= e!416007 (or (= (select (store (arr!19893 a!3186) i!1173 k!2102) index!1321) lt!330861) (not (= (select (store (arr!19893 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!744723 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41566 (_ BitVec 32)) SeekEntryResult!7500)

(assert (=> b!744723 (= e!416009 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19893 a!3186) j!159) a!3186 mask!3328) (Found!7500 j!159)))))

(declare-fun b!744724 () Bool)

(declare-fun res!501804 () Bool)

(assert (=> b!744724 (=> res!501804 e!416007)))

(assert (=> b!744724 (= res!501804 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19893 a!3186) j!159) a!3186 mask!3328) (Found!7500 j!159))))))

(declare-fun b!744725 () Bool)

(assert (=> b!744725 (= e!416008 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19893 a!3186) j!159) a!3186 mask!3328) lt!330858))))

(declare-fun res!501792 () Bool)

(assert (=> start!65440 (=> (not res!501792) (not e!416003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65440 (= res!501792 (validMask!0 mask!3328))))

(assert (=> start!65440 e!416003))

(assert (=> start!65440 true))

(declare-fun array_inv!15667 (array!41566) Bool)

(assert (=> start!65440 (array_inv!15667 a!3186)))

(declare-fun b!744717 () Bool)

(assert (=> b!744717 (= e!416004 e!416010)))

(declare-fun res!501790 () Bool)

(assert (=> b!744717 (=> (not res!501790) (not e!416010))))

(declare-fun lt!330857 () SeekEntryResult!7500)

(assert (=> b!744717 (= res!501790 (= lt!330857 lt!330859))))

(declare-fun lt!330860 () array!41566)

(assert (=> b!744717 (= lt!330859 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330861 lt!330860 mask!3328))))

(assert (=> b!744717 (= lt!330857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330861 mask!3328) lt!330861 lt!330860 mask!3328))))

(assert (=> b!744717 (= lt!330861 (select (store (arr!19893 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744717 (= lt!330860 (array!41567 (store (arr!19893 a!3186) i!1173 k!2102) (size!20314 a!3186)))))

(assert (= (and start!65440 res!501792) b!744718))

(assert (= (and b!744718 res!501795) b!744715))

(assert (= (and b!744715 res!501801) b!744720))

(assert (= (and b!744720 res!501794) b!744716))

(assert (= (and b!744716 res!501796) b!744721))

(assert (= (and b!744721 res!501802) b!744714))

(assert (= (and b!744714 res!501798) b!744707))

(assert (= (and b!744707 res!501799) b!744711))

(assert (= (and b!744711 res!501800) b!744713))

(assert (= (and b!744713 res!501793) b!744719))

(assert (= (and b!744719 res!501788) b!744710))

(assert (= (and b!744710 c!81840) b!744712))

(assert (= (and b!744710 (not c!81840)) b!744723))

(assert (= (and b!744710 res!501789) b!744717))

(assert (= (and b!744717 res!501790) b!744708))

(assert (= (and b!744708 res!501797) b!744709))

(assert (= (and b!744709 res!501791) b!744725))

(assert (= (and b!744708 (not res!501803)) b!744724))

(assert (= (and b!744724 (not res!501804)) b!744722))

(declare-fun m!695275 () Bool)

(assert (=> b!744721 m!695275))

(declare-fun m!695277 () Bool)

(assert (=> b!744724 m!695277))

(assert (=> b!744724 m!695277))

(declare-fun m!695279 () Bool)

(assert (=> b!744724 m!695279))

(declare-fun m!695281 () Bool)

(assert (=> start!65440 m!695281))

(declare-fun m!695283 () Bool)

(assert (=> start!65440 m!695283))

(assert (=> b!744723 m!695277))

(assert (=> b!744723 m!695277))

(assert (=> b!744723 m!695279))

(declare-fun m!695285 () Bool)

(assert (=> b!744714 m!695285))

(declare-fun m!695287 () Bool)

(assert (=> b!744708 m!695287))

(declare-fun m!695289 () Bool)

(assert (=> b!744708 m!695289))

(declare-fun m!695291 () Bool)

(assert (=> b!744707 m!695291))

(declare-fun m!695293 () Bool)

(assert (=> b!744719 m!695293))

(declare-fun m!695295 () Bool)

(assert (=> b!744720 m!695295))

(declare-fun m!695297 () Bool)

(assert (=> b!744717 m!695297))

(declare-fun m!695299 () Bool)

(assert (=> b!744717 m!695299))

(assert (=> b!744717 m!695297))

(declare-fun m!695301 () Bool)

(assert (=> b!744717 m!695301))

(declare-fun m!695303 () Bool)

(assert (=> b!744717 m!695303))

(declare-fun m!695305 () Bool)

(assert (=> b!744717 m!695305))

(assert (=> b!744725 m!695277))

(assert (=> b!744725 m!695277))

(declare-fun m!695307 () Bool)

(assert (=> b!744725 m!695307))

(declare-fun m!695309 () Bool)

(assert (=> b!744716 m!695309))

(assert (=> b!744709 m!695277))

(assert (=> b!744709 m!695277))

(declare-fun m!695311 () Bool)

(assert (=> b!744709 m!695311))

(assert (=> b!744722 m!695305))

(declare-fun m!695313 () Bool)

(assert (=> b!744722 m!695313))

(assert (=> b!744715 m!695277))

(assert (=> b!744715 m!695277))

(declare-fun m!695315 () Bool)

(assert (=> b!744715 m!695315))

(assert (=> b!744712 m!695277))

(assert (=> b!744712 m!695277))

(declare-fun m!695317 () Bool)

(assert (=> b!744712 m!695317))

(assert (=> b!744713 m!695277))

(assert (=> b!744713 m!695277))

(declare-fun m!695319 () Bool)

(assert (=> b!744713 m!695319))

(assert (=> b!744713 m!695319))

(assert (=> b!744713 m!695277))

(declare-fun m!695321 () Bool)

(assert (=> b!744713 m!695321))

(push 1)

(assert (not b!744713))

(assert (not b!744717))

(assert (not b!744707))

(assert (not b!744725))

(assert (not b!744709))

(assert (not b!744721))

(assert (not b!744715))

(assert (not b!744724))

(assert (not b!744714))

(assert (not start!65440))

(assert (not b!744712))

(assert (not b!744716))

(assert (not b!744708))

(assert (not b!744723))

(assert (not b!744720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

