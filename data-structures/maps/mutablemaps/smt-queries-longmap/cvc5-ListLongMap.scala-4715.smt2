; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65368 () Bool)

(assert start!65368)

(declare-fun b!742630 () Bool)

(declare-fun e!415034 () Bool)

(declare-fun lt!329932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742630 (= e!415034 (validKeyInArray!0 lt!329932))))

(declare-fun b!742631 () Bool)

(declare-fun res!499935 () Bool)

(declare-fun e!415030 () Bool)

(assert (=> b!742631 (=> (not res!499935) (not e!415030))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41494 0))(
  ( (array!41495 (arr!19857 (Array (_ BitVec 32) (_ BitVec 64))) (size!20278 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41494)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742631 (= res!499935 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19857 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742632 () Bool)

(declare-fun res!499940 () Bool)

(declare-fun e!415038 () Bool)

(assert (=> b!742632 (=> (not res!499940) (not e!415038))))

(declare-datatypes ((List!13912 0))(
  ( (Nil!13909) (Cons!13908 (h!14980 (_ BitVec 64)) (t!20235 List!13912)) )
))
(declare-fun arrayNoDuplicates!0 (array!41494 (_ BitVec 32) List!13912) Bool)

(assert (=> b!742632 (= res!499940 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13909))))

(declare-fun b!742633 () Bool)

(declare-fun res!499934 () Bool)

(assert (=> b!742633 (=> (not res!499934) (not e!415038))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41494 (_ BitVec 32)) Bool)

(assert (=> b!742633 (= res!499934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!499931 () Bool)

(declare-fun e!415036 () Bool)

(assert (=> start!65368 (=> (not res!499931) (not e!415036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65368 (= res!499931 (validMask!0 mask!3328))))

(assert (=> start!65368 e!415036))

(assert (=> start!65368 true))

(declare-fun array_inv!15631 (array!41494) Bool)

(assert (=> start!65368 (array_inv!15631 a!3186)))

(declare-fun b!742634 () Bool)

(declare-fun res!499943 () Bool)

(assert (=> b!742634 (=> res!499943 e!415034)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7464 0))(
  ( (MissingZero!7464 (index!32223 (_ BitVec 32))) (Found!7464 (index!32224 (_ BitVec 32))) (Intermediate!7464 (undefined!8276 Bool) (index!32225 (_ BitVec 32)) (x!63223 (_ BitVec 32))) (Undefined!7464) (MissingVacant!7464 (index!32226 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41494 (_ BitVec 32)) SeekEntryResult!7464)

(assert (=> b!742634 (= res!499943 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19857 a!3186) j!159) a!3186 mask!3328) (Found!7464 j!159))))))

(declare-fun b!742635 () Bool)

(declare-fun res!499927 () Bool)

(assert (=> b!742635 (=> (not res!499927) (not e!415036))))

(assert (=> b!742635 (= res!499927 (validKeyInArray!0 (select (arr!19857 a!3186) j!159)))))

(declare-fun b!742636 () Bool)

(declare-fun res!499941 () Bool)

(assert (=> b!742636 (=> res!499941 e!415034)))

(declare-fun lt!329936 () SeekEntryResult!7464)

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!742636 (= res!499941 (or (not (= (select (store (arr!19857 a!3186) i!1173 k!2102) index!1321) lt!329932)) (undefined!8276 lt!329936) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!742637 () Bool)

(declare-fun res!499929 () Bool)

(assert (=> b!742637 (=> (not res!499929) (not e!415030))))

(declare-fun e!415035 () Bool)

(assert (=> b!742637 (= res!499929 e!415035)))

(declare-fun c!81732 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742637 (= c!81732 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742638 () Bool)

(assert (=> b!742638 (= e!415036 e!415038)))

(declare-fun res!499937 () Bool)

(assert (=> b!742638 (=> (not res!499937) (not e!415038))))

(declare-fun lt!329933 () SeekEntryResult!7464)

(assert (=> b!742638 (= res!499937 (or (= lt!329933 (MissingZero!7464 i!1173)) (= lt!329933 (MissingVacant!7464 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41494 (_ BitVec 32)) SeekEntryResult!7464)

(assert (=> b!742638 (= lt!329933 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742639 () Bool)

(declare-fun e!415031 () Bool)

(declare-fun e!415033 () Bool)

(assert (=> b!742639 (= e!415031 e!415033)))

(declare-fun res!499938 () Bool)

(assert (=> b!742639 (=> (not res!499938) (not e!415033))))

(declare-fun lt!329929 () SeekEntryResult!7464)

(assert (=> b!742639 (= res!499938 (= (seekEntryOrOpen!0 (select (arr!19857 a!3186) j!159) a!3186 mask!3328) lt!329929))))

(assert (=> b!742639 (= lt!329929 (Found!7464 j!159))))

(declare-fun b!742640 () Bool)

(declare-fun res!499936 () Bool)

(assert (=> b!742640 (=> (not res!499936) (not e!415036))))

(assert (=> b!742640 (= res!499936 (validKeyInArray!0 k!2102))))

(declare-fun b!742641 () Bool)

(declare-fun e!415032 () Bool)

(assert (=> b!742641 (= e!415032 (not e!415034))))

(declare-fun res!499930 () Bool)

(assert (=> b!742641 (=> res!499930 e!415034)))

(assert (=> b!742641 (= res!499930 (or (not (is-Intermediate!7464 lt!329936)) (bvslt x!1131 (x!63223 lt!329936)) (not (= x!1131 (x!63223 lt!329936))) (not (= index!1321 (index!32225 lt!329936)))))))

(assert (=> b!742641 e!415031))

(declare-fun res!499932 () Bool)

(assert (=> b!742641 (=> (not res!499932) (not e!415031))))

(assert (=> b!742641 (= res!499932 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25408 0))(
  ( (Unit!25409) )
))
(declare-fun lt!329931 () Unit!25408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25408)

(assert (=> b!742641 (= lt!329931 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742642 () Bool)

(declare-fun res!499944 () Bool)

(assert (=> b!742642 (=> (not res!499944) (not e!415036))))

(assert (=> b!742642 (= res!499944 (and (= (size!20278 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20278 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20278 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742643 () Bool)

(declare-fun res!499939 () Bool)

(assert (=> b!742643 (=> (not res!499939) (not e!415036))))

(declare-fun arrayContainsKey!0 (array!41494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742643 (= res!499939 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742644 () Bool)

(declare-fun res!499928 () Bool)

(assert (=> b!742644 (=> (not res!499928) (not e!415038))))

(assert (=> b!742644 (= res!499928 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20278 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20278 a!3186))))))

(declare-fun b!742645 () Bool)

(assert (=> b!742645 (= e!415033 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19857 a!3186) j!159) a!3186 mask!3328) lt!329929))))

(declare-fun b!742646 () Bool)

(assert (=> b!742646 (= e!415030 e!415032)))

(declare-fun res!499942 () Bool)

(assert (=> b!742646 (=> (not res!499942) (not e!415032))))

(declare-fun lt!329934 () SeekEntryResult!7464)

(assert (=> b!742646 (= res!499942 (= lt!329934 lt!329936))))

(declare-fun lt!329930 () array!41494)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41494 (_ BitVec 32)) SeekEntryResult!7464)

(assert (=> b!742646 (= lt!329936 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329932 lt!329930 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742646 (= lt!329934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329932 mask!3328) lt!329932 lt!329930 mask!3328))))

(assert (=> b!742646 (= lt!329932 (select (store (arr!19857 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742646 (= lt!329930 (array!41495 (store (arr!19857 a!3186) i!1173 k!2102) (size!20278 a!3186)))))

(declare-fun b!742647 () Bool)

(assert (=> b!742647 (= e!415035 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19857 a!3186) j!159) a!3186 mask!3328) (Found!7464 j!159)))))

(declare-fun b!742648 () Bool)

(assert (=> b!742648 (= e!415038 e!415030)))

(declare-fun res!499933 () Bool)

(assert (=> b!742648 (=> (not res!499933) (not e!415030))))

(declare-fun lt!329935 () SeekEntryResult!7464)

(assert (=> b!742648 (= res!499933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19857 a!3186) j!159) mask!3328) (select (arr!19857 a!3186) j!159) a!3186 mask!3328) lt!329935))))

(assert (=> b!742648 (= lt!329935 (Intermediate!7464 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742649 () Bool)

(assert (=> b!742649 (= e!415035 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19857 a!3186) j!159) a!3186 mask!3328) lt!329935))))

(assert (= (and start!65368 res!499931) b!742642))

(assert (= (and b!742642 res!499944) b!742635))

(assert (= (and b!742635 res!499927) b!742640))

(assert (= (and b!742640 res!499936) b!742643))

(assert (= (and b!742643 res!499939) b!742638))

(assert (= (and b!742638 res!499937) b!742633))

(assert (= (and b!742633 res!499934) b!742632))

(assert (= (and b!742632 res!499940) b!742644))

(assert (= (and b!742644 res!499928) b!742648))

(assert (= (and b!742648 res!499933) b!742631))

(assert (= (and b!742631 res!499935) b!742637))

(assert (= (and b!742637 c!81732) b!742649))

(assert (= (and b!742637 (not c!81732)) b!742647))

(assert (= (and b!742637 res!499929) b!742646))

(assert (= (and b!742646 res!499942) b!742641))

(assert (= (and b!742641 res!499932) b!742639))

(assert (= (and b!742639 res!499938) b!742645))

(assert (= (and b!742641 (not res!499930)) b!742634))

(assert (= (and b!742634 (not res!499943)) b!742636))

(assert (= (and b!742636 (not res!499941)) b!742630))

(declare-fun m!693541 () Bool)

(assert (=> b!742647 m!693541))

(assert (=> b!742647 m!693541))

(declare-fun m!693543 () Bool)

(assert (=> b!742647 m!693543))

(assert (=> b!742635 m!693541))

(assert (=> b!742635 m!693541))

(declare-fun m!693545 () Bool)

(assert (=> b!742635 m!693545))

(assert (=> b!742634 m!693541))

(assert (=> b!742634 m!693541))

(assert (=> b!742634 m!693543))

(declare-fun m!693547 () Bool)

(assert (=> b!742638 m!693547))

(declare-fun m!693549 () Bool)

(assert (=> b!742632 m!693549))

(declare-fun m!693551 () Bool)

(assert (=> b!742633 m!693551))

(declare-fun m!693553 () Bool)

(assert (=> b!742640 m!693553))

(declare-fun m!693555 () Bool)

(assert (=> b!742630 m!693555))

(declare-fun m!693557 () Bool)

(assert (=> b!742636 m!693557))

(declare-fun m!693559 () Bool)

(assert (=> b!742636 m!693559))

(declare-fun m!693561 () Bool)

(assert (=> b!742643 m!693561))

(assert (=> b!742649 m!693541))

(assert (=> b!742649 m!693541))

(declare-fun m!693563 () Bool)

(assert (=> b!742649 m!693563))

(declare-fun m!693565 () Bool)

(assert (=> b!742646 m!693565))

(declare-fun m!693567 () Bool)

(assert (=> b!742646 m!693567))

(assert (=> b!742646 m!693557))

(declare-fun m!693569 () Bool)

(assert (=> b!742646 m!693569))

(declare-fun m!693571 () Bool)

(assert (=> b!742646 m!693571))

(assert (=> b!742646 m!693565))

(declare-fun m!693573 () Bool)

(assert (=> b!742641 m!693573))

(declare-fun m!693575 () Bool)

(assert (=> b!742641 m!693575))

(assert (=> b!742639 m!693541))

(assert (=> b!742639 m!693541))

(declare-fun m!693577 () Bool)

(assert (=> b!742639 m!693577))

(declare-fun m!693579 () Bool)

(assert (=> start!65368 m!693579))

(declare-fun m!693581 () Bool)

(assert (=> start!65368 m!693581))

(declare-fun m!693583 () Bool)

(assert (=> b!742631 m!693583))

(assert (=> b!742645 m!693541))

(assert (=> b!742645 m!693541))

(declare-fun m!693585 () Bool)

(assert (=> b!742645 m!693585))

(assert (=> b!742648 m!693541))

(assert (=> b!742648 m!693541))

(declare-fun m!693587 () Bool)

(assert (=> b!742648 m!693587))

(assert (=> b!742648 m!693587))

(assert (=> b!742648 m!693541))

(declare-fun m!693589 () Bool)

(assert (=> b!742648 m!693589))

(push 1)

