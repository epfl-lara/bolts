; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65442 () Bool)

(assert start!65442)

(declare-fun b!744764 () Bool)

(declare-fun res!501841 () Bool)

(declare-fun e!416032 () Bool)

(assert (=> b!744764 (=> (not res!501841) (not e!416032))))

(declare-datatypes ((array!41568 0))(
  ( (array!41569 (arr!19894 (Array (_ BitVec 32) (_ BitVec 64))) (size!20315 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41568)

(declare-datatypes ((List!13949 0))(
  ( (Nil!13946) (Cons!13945 (h!15017 (_ BitVec 64)) (t!20272 List!13949)) )
))
(declare-fun arrayNoDuplicates!0 (array!41568 (_ BitVec 32) List!13949) Bool)

(assert (=> b!744764 (= res!501841 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13946))))

(declare-fun b!744765 () Bool)

(declare-fun res!501852 () Bool)

(declare-fun e!416029 () Bool)

(assert (=> b!744765 (=> (not res!501852) (not e!416029))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744765 (= res!501852 (validKeyInArray!0 (select (arr!19894 a!3186) j!159)))))

(declare-fun b!744766 () Bool)

(declare-fun res!501848 () Bool)

(assert (=> b!744766 (=> (not res!501848) (not e!416029))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!744766 (= res!501848 (validKeyInArray!0 k0!2102))))

(declare-fun b!744767 () Bool)

(assert (=> b!744767 (= e!416029 e!416032)))

(declare-fun res!501844 () Bool)

(assert (=> b!744767 (=> (not res!501844) (not e!416032))))

(declare-datatypes ((SeekEntryResult!7501 0))(
  ( (MissingZero!7501 (index!32371 (_ BitVec 32))) (Found!7501 (index!32372 (_ BitVec 32))) (Intermediate!7501 (undefined!8313 Bool) (index!32373 (_ BitVec 32)) (x!63356 (_ BitVec 32))) (Undefined!7501) (MissingVacant!7501 (index!32374 (_ BitVec 32))) )
))
(declare-fun lt!330885 () SeekEntryResult!7501)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744767 (= res!501844 (or (= lt!330885 (MissingZero!7501 i!1173)) (= lt!330885 (MissingVacant!7501 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41568 (_ BitVec 32)) SeekEntryResult!7501)

(assert (=> b!744767 (= lt!330885 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!744768 () Bool)

(declare-fun res!501854 () Bool)

(assert (=> b!744768 (=> (not res!501854) (not e!416029))))

(declare-fun arrayContainsKey!0 (array!41568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744768 (= res!501854 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744770 () Bool)

(declare-fun e!416034 () Bool)

(assert (=> b!744770 (= e!416032 e!416034)))

(declare-fun res!501840 () Bool)

(assert (=> b!744770 (=> (not res!501840) (not e!416034))))

(declare-fun lt!330881 () SeekEntryResult!7501)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41568 (_ BitVec 32)) SeekEntryResult!7501)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744770 (= res!501840 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19894 a!3186) j!159) mask!3328) (select (arr!19894 a!3186) j!159) a!3186 mask!3328) lt!330881))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744770 (= lt!330881 (Intermediate!7501 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744771 () Bool)

(declare-fun e!416031 () Bool)

(assert (=> b!744771 (= e!416034 e!416031)))

(declare-fun res!501839 () Bool)

(assert (=> b!744771 (=> (not res!501839) (not e!416031))))

(declare-fun lt!330887 () SeekEntryResult!7501)

(declare-fun lt!330880 () SeekEntryResult!7501)

(assert (=> b!744771 (= res!501839 (= lt!330887 lt!330880))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!330886 () array!41568)

(declare-fun lt!330883 () (_ BitVec 64))

(assert (=> b!744771 (= lt!330880 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330883 lt!330886 mask!3328))))

(assert (=> b!744771 (= lt!330887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330883 mask!3328) lt!330883 lt!330886 mask!3328))))

(assert (=> b!744771 (= lt!330883 (select (store (arr!19894 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!744771 (= lt!330886 (array!41569 (store (arr!19894 a!3186) i!1173 k0!2102) (size!20315 a!3186)))))

(declare-fun b!744772 () Bool)

(declare-fun res!501846 () Bool)

(assert (=> b!744772 (=> (not res!501846) (not e!416034))))

(declare-fun e!416037 () Bool)

(assert (=> b!744772 (= res!501846 e!416037)))

(declare-fun c!81843 () Bool)

(assert (=> b!744772 (= c!81843 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744773 () Bool)

(declare-fun res!501847 () Bool)

(assert (=> b!744773 (=> (not res!501847) (not e!416032))))

(assert (=> b!744773 (= res!501847 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20315 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20315 a!3186))))))

(declare-fun e!416030 () Bool)

(declare-fun b!744774 () Bool)

(declare-fun lt!330884 () SeekEntryResult!7501)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41568 (_ BitVec 32)) SeekEntryResult!7501)

(assert (=> b!744774 (= e!416030 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19894 a!3186) j!159) a!3186 mask!3328) lt!330884))))

(declare-fun b!744775 () Bool)

(declare-fun res!501842 () Bool)

(declare-fun e!416036 () Bool)

(assert (=> b!744775 (=> res!501842 e!416036)))

(assert (=> b!744775 (= res!501842 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19894 a!3186) j!159) a!3186 mask!3328) (Found!7501 j!159))))))

(declare-fun b!744776 () Bool)

(assert (=> b!744776 (= e!416031 (not e!416036))))

(declare-fun res!501851 () Bool)

(assert (=> b!744776 (=> res!501851 e!416036)))

(get-info :version)

(assert (=> b!744776 (= res!501851 (or (not ((_ is Intermediate!7501) lt!330880)) (bvslt x!1131 (x!63356 lt!330880)) (not (= x!1131 (x!63356 lt!330880))) (not (= index!1321 (index!32373 lt!330880)))))))

(declare-fun e!416035 () Bool)

(assert (=> b!744776 e!416035))

(declare-fun res!501845 () Bool)

(assert (=> b!744776 (=> (not res!501845) (not e!416035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41568 (_ BitVec 32)) Bool)

(assert (=> b!744776 (= res!501845 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25482 0))(
  ( (Unit!25483) )
))
(declare-fun lt!330882 () Unit!25482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25482)

(assert (=> b!744776 (= lt!330882 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744777 () Bool)

(declare-fun res!501843 () Bool)

(assert (=> b!744777 (=> (not res!501843) (not e!416032))))

(assert (=> b!744777 (= res!501843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744778 () Bool)

(assert (=> b!744778 (= e!416036 (or (= (select (store (arr!19894 a!3186) i!1173 k0!2102) index!1321) lt!330883) (not (= (select (store (arr!19894 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!744779 () Bool)

(declare-fun res!501849 () Bool)

(assert (=> b!744779 (=> (not res!501849) (not e!416034))))

(assert (=> b!744779 (= res!501849 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19894 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744780 () Bool)

(assert (=> b!744780 (= e!416037 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19894 a!3186) j!159) a!3186 mask!3328) (Found!7501 j!159)))))

(declare-fun b!744769 () Bool)

(assert (=> b!744769 (= e!416037 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19894 a!3186) j!159) a!3186 mask!3328) lt!330881))))

(declare-fun res!501850 () Bool)

(assert (=> start!65442 (=> (not res!501850) (not e!416029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65442 (= res!501850 (validMask!0 mask!3328))))

(assert (=> start!65442 e!416029))

(assert (=> start!65442 true))

(declare-fun array_inv!15668 (array!41568) Bool)

(assert (=> start!65442 (array_inv!15668 a!3186)))

(declare-fun b!744781 () Bool)

(declare-fun res!501853 () Bool)

(assert (=> b!744781 (=> (not res!501853) (not e!416029))))

(assert (=> b!744781 (= res!501853 (and (= (size!20315 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20315 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20315 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744782 () Bool)

(assert (=> b!744782 (= e!416035 e!416030)))

(declare-fun res!501855 () Bool)

(assert (=> b!744782 (=> (not res!501855) (not e!416030))))

(assert (=> b!744782 (= res!501855 (= (seekEntryOrOpen!0 (select (arr!19894 a!3186) j!159) a!3186 mask!3328) lt!330884))))

(assert (=> b!744782 (= lt!330884 (Found!7501 j!159))))

(assert (= (and start!65442 res!501850) b!744781))

(assert (= (and b!744781 res!501853) b!744765))

(assert (= (and b!744765 res!501852) b!744766))

(assert (= (and b!744766 res!501848) b!744768))

(assert (= (and b!744768 res!501854) b!744767))

(assert (= (and b!744767 res!501844) b!744777))

(assert (= (and b!744777 res!501843) b!744764))

(assert (= (and b!744764 res!501841) b!744773))

(assert (= (and b!744773 res!501847) b!744770))

(assert (= (and b!744770 res!501840) b!744779))

(assert (= (and b!744779 res!501849) b!744772))

(assert (= (and b!744772 c!81843) b!744769))

(assert (= (and b!744772 (not c!81843)) b!744780))

(assert (= (and b!744772 res!501846) b!744771))

(assert (= (and b!744771 res!501839) b!744776))

(assert (= (and b!744776 res!501845) b!744782))

(assert (= (and b!744782 res!501855) b!744774))

(assert (= (and b!744776 (not res!501851)) b!744775))

(assert (= (and b!744775 (not res!501842)) b!744778))

(declare-fun m!695323 () Bool)

(assert (=> b!744780 m!695323))

(assert (=> b!744780 m!695323))

(declare-fun m!695325 () Bool)

(assert (=> b!744780 m!695325))

(declare-fun m!695327 () Bool)

(assert (=> b!744766 m!695327))

(declare-fun m!695329 () Bool)

(assert (=> b!744777 m!695329))

(assert (=> b!744775 m!695323))

(assert (=> b!744775 m!695323))

(assert (=> b!744775 m!695325))

(declare-fun m!695331 () Bool)

(assert (=> b!744767 m!695331))

(declare-fun m!695333 () Bool)

(assert (=> b!744764 m!695333))

(declare-fun m!695335 () Bool)

(assert (=> start!65442 m!695335))

(declare-fun m!695337 () Bool)

(assert (=> start!65442 m!695337))

(declare-fun m!695339 () Bool)

(assert (=> b!744768 m!695339))

(declare-fun m!695341 () Bool)

(assert (=> b!744779 m!695341))

(assert (=> b!744765 m!695323))

(assert (=> b!744765 m!695323))

(declare-fun m!695343 () Bool)

(assert (=> b!744765 m!695343))

(assert (=> b!744769 m!695323))

(assert (=> b!744769 m!695323))

(declare-fun m!695345 () Bool)

(assert (=> b!744769 m!695345))

(declare-fun m!695347 () Bool)

(assert (=> b!744776 m!695347))

(declare-fun m!695349 () Bool)

(assert (=> b!744776 m!695349))

(assert (=> b!744770 m!695323))

(assert (=> b!744770 m!695323))

(declare-fun m!695351 () Bool)

(assert (=> b!744770 m!695351))

(assert (=> b!744770 m!695351))

(assert (=> b!744770 m!695323))

(declare-fun m!695353 () Bool)

(assert (=> b!744770 m!695353))

(assert (=> b!744774 m!695323))

(assert (=> b!744774 m!695323))

(declare-fun m!695355 () Bool)

(assert (=> b!744774 m!695355))

(assert (=> b!744782 m!695323))

(assert (=> b!744782 m!695323))

(declare-fun m!695357 () Bool)

(assert (=> b!744782 m!695357))

(declare-fun m!695359 () Bool)

(assert (=> b!744778 m!695359))

(declare-fun m!695361 () Bool)

(assert (=> b!744778 m!695361))

(declare-fun m!695363 () Bool)

(assert (=> b!744771 m!695363))

(assert (=> b!744771 m!695359))

(declare-fun m!695365 () Bool)

(assert (=> b!744771 m!695365))

(assert (=> b!744771 m!695365))

(declare-fun m!695367 () Bool)

(assert (=> b!744771 m!695367))

(declare-fun m!695369 () Bool)

(assert (=> b!744771 m!695369))

(check-sat (not b!744771) (not b!744780) (not b!744768) (not start!65442) (not b!744767) (not b!744774) (not b!744775) (not b!744776) (not b!744769) (not b!744765) (not b!744766) (not b!744770) (not b!744782) (not b!744764) (not b!744777))
(check-sat)
