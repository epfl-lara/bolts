; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64746 () Bool)

(assert start!64746)

(declare-fun b!730284 () Bool)

(declare-fun e!408703 () Bool)

(declare-fun e!408708 () Bool)

(assert (=> b!730284 (= e!408703 e!408708)))

(declare-fun res!490730 () Bool)

(assert (=> b!730284 (=> (not res!490730) (not e!408708))))

(declare-datatypes ((array!41148 0))(
  ( (array!41149 (arr!19690 (Array (_ BitVec 32) (_ BitVec 64))) (size!20111 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41148)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7297 0))(
  ( (MissingZero!7297 (index!31555 (_ BitVec 32))) (Found!7297 (index!31556 (_ BitVec 32))) (Intermediate!7297 (undefined!8109 Bool) (index!31557 (_ BitVec 32)) (x!62560 (_ BitVec 32))) (Undefined!7297) (MissingVacant!7297 (index!31558 (_ BitVec 32))) )
))
(declare-fun lt!323618 () SeekEntryResult!7297)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41148 (_ BitVec 32)) SeekEntryResult!7297)

(assert (=> b!730284 (= res!490730 (= (seekEntryOrOpen!0 (select (arr!19690 a!3186) j!159) a!3186 mask!3328) lt!323618))))

(assert (=> b!730284 (= lt!323618 (Found!7297 j!159))))

(declare-fun b!730285 () Bool)

(declare-fun res!490720 () Bool)

(declare-fun e!408705 () Bool)

(assert (=> b!730285 (=> (not res!490720) (not e!408705))))

(declare-datatypes ((List!13745 0))(
  ( (Nil!13742) (Cons!13741 (h!14801 (_ BitVec 64)) (t!20068 List!13745)) )
))
(declare-fun arrayNoDuplicates!0 (array!41148 (_ BitVec 32) List!13745) Bool)

(assert (=> b!730285 (= res!490720 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13742))))

(declare-fun b!730286 () Bool)

(declare-fun e!408704 () Bool)

(declare-fun e!408711 () Bool)

(assert (=> b!730286 (= e!408704 e!408711)))

(declare-fun res!490722 () Bool)

(assert (=> b!730286 (=> (not res!490722) (not e!408711))))

(declare-fun lt!323616 () SeekEntryResult!7297)

(declare-fun lt!323617 () SeekEntryResult!7297)

(assert (=> b!730286 (= res!490722 (= lt!323616 lt!323617))))

(declare-fun lt!323615 () (_ BitVec 64))

(declare-fun lt!323613 () array!41148)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41148 (_ BitVec 32)) SeekEntryResult!7297)

(assert (=> b!730286 (= lt!323617 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323615 lt!323613 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730286 (= lt!323616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323615 mask!3328) lt!323615 lt!323613 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!730286 (= lt!323615 (select (store (arr!19690 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!730286 (= lt!323613 (array!41149 (store (arr!19690 a!3186) i!1173 k0!2102) (size!20111 a!3186)))))

(declare-fun b!730287 () Bool)

(declare-fun e!408707 () Bool)

(assert (=> b!730287 (= e!408707 e!408705)))

(declare-fun res!490721 () Bool)

(assert (=> b!730287 (=> (not res!490721) (not e!408705))))

(declare-fun lt!323610 () SeekEntryResult!7297)

(assert (=> b!730287 (= res!490721 (or (= lt!323610 (MissingZero!7297 i!1173)) (= lt!323610 (MissingVacant!7297 i!1173))))))

(assert (=> b!730287 (= lt!323610 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!730288 () Bool)

(declare-fun e!408709 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41148 (_ BitVec 32)) SeekEntryResult!7297)

(assert (=> b!730288 (= e!408709 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19690 a!3186) j!159) a!3186 mask!3328) (Found!7297 j!159)))))

(declare-fun b!730289 () Bool)

(declare-fun res!490725 () Bool)

(assert (=> b!730289 (=> (not res!490725) (not e!408705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41148 (_ BitVec 32)) Bool)

(assert (=> b!730289 (= res!490725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!490729 () Bool)

(assert (=> start!64746 (=> (not res!490729) (not e!408707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64746 (= res!490729 (validMask!0 mask!3328))))

(assert (=> start!64746 e!408707))

(assert (=> start!64746 true))

(declare-fun array_inv!15464 (array!41148) Bool)

(assert (=> start!64746 (array_inv!15464 a!3186)))

(declare-fun b!730290 () Bool)

(declare-fun res!490723 () Bool)

(assert (=> b!730290 (=> (not res!490723) (not e!408707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730290 (= res!490723 (validKeyInArray!0 k0!2102))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!730291 () Bool)

(assert (=> b!730291 (= e!408708 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19690 a!3186) j!159) a!3186 mask!3328) lt!323618))))

(declare-fun b!730292 () Bool)

(declare-fun res!490731 () Bool)

(assert (=> b!730292 (=> (not res!490731) (not e!408705))))

(assert (=> b!730292 (= res!490731 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20111 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20111 a!3186))))))

(declare-fun b!730293 () Bool)

(declare-fun res!490727 () Bool)

(assert (=> b!730293 (=> (not res!490727) (not e!408707))))

(declare-fun arrayContainsKey!0 (array!41148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730293 (= res!490727 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730294 () Bool)

(assert (=> b!730294 (= e!408705 e!408704)))

(declare-fun res!490732 () Bool)

(assert (=> b!730294 (=> (not res!490732) (not e!408704))))

(declare-fun lt!323611 () SeekEntryResult!7297)

(assert (=> b!730294 (= res!490732 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19690 a!3186) j!159) mask!3328) (select (arr!19690 a!3186) j!159) a!3186 mask!3328) lt!323611))))

(assert (=> b!730294 (= lt!323611 (Intermediate!7297 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730295 () Bool)

(declare-fun res!490728 () Bool)

(assert (=> b!730295 (=> (not res!490728) (not e!408704))))

(assert (=> b!730295 (= res!490728 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19690 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730296 () Bool)

(assert (=> b!730296 (= e!408709 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19690 a!3186) j!159) a!3186 mask!3328) lt!323611))))

(declare-fun b!730297 () Bool)

(declare-fun res!490726 () Bool)

(assert (=> b!730297 (=> (not res!490726) (not e!408707))))

(assert (=> b!730297 (= res!490726 (and (= (size!20111 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20111 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20111 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730298 () Bool)

(declare-fun res!490724 () Bool)

(assert (=> b!730298 (=> (not res!490724) (not e!408707))))

(assert (=> b!730298 (= res!490724 (validKeyInArray!0 (select (arr!19690 a!3186) j!159)))))

(declare-fun b!730299 () Bool)

(declare-fun res!490734 () Bool)

(assert (=> b!730299 (=> (not res!490734) (not e!408704))))

(assert (=> b!730299 (= res!490734 e!408709)))

(declare-fun c!80157 () Bool)

(assert (=> b!730299 (= c!80157 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730300 () Bool)

(declare-fun e!408706 () Bool)

(assert (=> b!730300 (= e!408706 true)))

(declare-fun lt!323612 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730300 (= lt!323612 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730301 () Bool)

(assert (=> b!730301 (= e!408711 (not e!408706))))

(declare-fun res!490719 () Bool)

(assert (=> b!730301 (=> res!490719 e!408706)))

(get-info :version)

(assert (=> b!730301 (= res!490719 (or (not ((_ is Intermediate!7297) lt!323617)) (bvsge x!1131 (x!62560 lt!323617))))))

(assert (=> b!730301 e!408703))

(declare-fun res!490733 () Bool)

(assert (=> b!730301 (=> (not res!490733) (not e!408703))))

(assert (=> b!730301 (= res!490733 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24912 0))(
  ( (Unit!24913) )
))
(declare-fun lt!323614 () Unit!24912)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24912)

(assert (=> b!730301 (= lt!323614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!64746 res!490729) b!730297))

(assert (= (and b!730297 res!490726) b!730298))

(assert (= (and b!730298 res!490724) b!730290))

(assert (= (and b!730290 res!490723) b!730293))

(assert (= (and b!730293 res!490727) b!730287))

(assert (= (and b!730287 res!490721) b!730289))

(assert (= (and b!730289 res!490725) b!730285))

(assert (= (and b!730285 res!490720) b!730292))

(assert (= (and b!730292 res!490731) b!730294))

(assert (= (and b!730294 res!490732) b!730295))

(assert (= (and b!730295 res!490728) b!730299))

(assert (= (and b!730299 c!80157) b!730296))

(assert (= (and b!730299 (not c!80157)) b!730288))

(assert (= (and b!730299 res!490734) b!730286))

(assert (= (and b!730286 res!490722) b!730301))

(assert (= (and b!730301 res!490733) b!730284))

(assert (= (and b!730284 res!490730) b!730291))

(assert (= (and b!730301 (not res!490719)) b!730300))

(declare-fun m!683917 () Bool)

(assert (=> start!64746 m!683917))

(declare-fun m!683919 () Bool)

(assert (=> start!64746 m!683919))

(declare-fun m!683921 () Bool)

(assert (=> b!730295 m!683921))

(declare-fun m!683923 () Bool)

(assert (=> b!730288 m!683923))

(assert (=> b!730288 m!683923))

(declare-fun m!683925 () Bool)

(assert (=> b!730288 m!683925))

(declare-fun m!683927 () Bool)

(assert (=> b!730290 m!683927))

(declare-fun m!683929 () Bool)

(assert (=> b!730289 m!683929))

(assert (=> b!730298 m!683923))

(assert (=> b!730298 m!683923))

(declare-fun m!683931 () Bool)

(assert (=> b!730298 m!683931))

(declare-fun m!683933 () Bool)

(assert (=> b!730287 m!683933))

(declare-fun m!683935 () Bool)

(assert (=> b!730285 m!683935))

(assert (=> b!730294 m!683923))

(assert (=> b!730294 m!683923))

(declare-fun m!683937 () Bool)

(assert (=> b!730294 m!683937))

(assert (=> b!730294 m!683937))

(assert (=> b!730294 m!683923))

(declare-fun m!683939 () Bool)

(assert (=> b!730294 m!683939))

(assert (=> b!730296 m!683923))

(assert (=> b!730296 m!683923))

(declare-fun m!683941 () Bool)

(assert (=> b!730296 m!683941))

(declare-fun m!683943 () Bool)

(assert (=> b!730293 m!683943))

(declare-fun m!683945 () Bool)

(assert (=> b!730286 m!683945))

(declare-fun m!683947 () Bool)

(assert (=> b!730286 m!683947))

(declare-fun m!683949 () Bool)

(assert (=> b!730286 m!683949))

(assert (=> b!730286 m!683947))

(declare-fun m!683951 () Bool)

(assert (=> b!730286 m!683951))

(declare-fun m!683953 () Bool)

(assert (=> b!730286 m!683953))

(declare-fun m!683955 () Bool)

(assert (=> b!730300 m!683955))

(declare-fun m!683957 () Bool)

(assert (=> b!730301 m!683957))

(declare-fun m!683959 () Bool)

(assert (=> b!730301 m!683959))

(assert (=> b!730291 m!683923))

(assert (=> b!730291 m!683923))

(declare-fun m!683961 () Bool)

(assert (=> b!730291 m!683961))

(assert (=> b!730284 m!683923))

(assert (=> b!730284 m!683923))

(declare-fun m!683963 () Bool)

(assert (=> b!730284 m!683963))

(check-sat (not b!730289) (not b!730287) (not b!730294) (not start!64746) (not b!730284) (not b!730285) (not b!730301) (not b!730296) (not b!730290) (not b!730286) (not b!730298) (not b!730291) (not b!730293) (not b!730300) (not b!730288))
(check-sat)
