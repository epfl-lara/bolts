; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67770 () Bool)

(assert start!67770)

(declare-fun b!786554 () Bool)

(declare-fun res!532724 () Bool)

(declare-fun e!437257 () Bool)

(assert (=> b!786554 (=> (not res!532724) (not e!437257))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42765 0))(
  ( (array!42766 (arr!20467 (Array (_ BitVec 32) (_ BitVec 64))) (size!20888 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42765)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786554 (= res!532724 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20888 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20888 a!3186))))))

(declare-fun e!437258 () Bool)

(declare-fun b!786555 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8074 0))(
  ( (MissingZero!8074 (index!34663 (_ BitVec 32))) (Found!8074 (index!34664 (_ BitVec 32))) (Intermediate!8074 (undefined!8886 Bool) (index!34665 (_ BitVec 32)) (x!65631 (_ BitVec 32))) (Undefined!8074) (MissingVacant!8074 (index!34666 (_ BitVec 32))) )
))
(declare-fun lt!350832 () SeekEntryResult!8074)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42765 (_ BitVec 32)) SeekEntryResult!8074)

(assert (=> b!786555 (= e!437258 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20467 a!3186) j!159) a!3186 mask!3328) lt!350832))))

(declare-fun b!786556 () Bool)

(declare-fun res!532731 () Bool)

(declare-fun e!437259 () Bool)

(assert (=> b!786556 (=> (not res!532731) (not e!437259))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786556 (= res!532731 (and (= (size!20888 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20888 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20888 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786557 () Bool)

(declare-fun e!437265 () Bool)

(assert (=> b!786557 (= e!437265 true)))

(declare-fun e!437255 () Bool)

(assert (=> b!786557 e!437255))

(declare-fun res!532735 () Bool)

(assert (=> b!786557 (=> (not res!532735) (not e!437255))))

(declare-fun lt!350822 () (_ BitVec 64))

(assert (=> b!786557 (= res!532735 (= lt!350822 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27206 0))(
  ( (Unit!27207) )
))
(declare-fun lt!350824 () Unit!27206)

(declare-fun e!437260 () Unit!27206)

(assert (=> b!786557 (= lt!350824 e!437260)))

(declare-fun c!87323 () Bool)

(assert (=> b!786557 (= c!87323 (= lt!350822 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786558 () Bool)

(declare-fun Unit!27208 () Unit!27206)

(assert (=> b!786558 (= e!437260 Unit!27208)))

(assert (=> b!786558 false))

(declare-fun b!786559 () Bool)

(declare-fun res!532727 () Bool)

(assert (=> b!786559 (=> (not res!532727) (not e!437257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42765 (_ BitVec 32)) Bool)

(assert (=> b!786559 (= res!532727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!350829 () SeekEntryResult!8074)

(declare-fun e!437256 () Bool)

(declare-fun b!786560 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42765 (_ BitVec 32)) SeekEntryResult!8074)

(assert (=> b!786560 (= e!437256 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20467 a!3186) j!159) a!3186 mask!3328) lt!350829))))

(declare-fun b!786561 () Bool)

(declare-fun res!532726 () Bool)

(assert (=> b!786561 (=> (not res!532726) (not e!437259))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786561 (= res!532726 (validKeyInArray!0 k0!2102))))

(declare-fun res!532740 () Bool)

(assert (=> start!67770 (=> (not res!532740) (not e!437259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67770 (= res!532740 (validMask!0 mask!3328))))

(assert (=> start!67770 e!437259))

(assert (=> start!67770 true))

(declare-fun array_inv!16241 (array!42765) Bool)

(assert (=> start!67770 (array_inv!16241 a!3186)))

(declare-fun b!786562 () Bool)

(declare-fun e!437261 () Bool)

(assert (=> b!786562 (= e!437257 e!437261)))

(declare-fun res!532728 () Bool)

(assert (=> b!786562 (=> (not res!532728) (not e!437261))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786562 (= res!532728 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20467 a!3186) j!159) mask!3328) (select (arr!20467 a!3186) j!159) a!3186 mask!3328) lt!350832))))

(assert (=> b!786562 (= lt!350832 (Intermediate!8074 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786563 () Bool)

(declare-fun res!532723 () Bool)

(assert (=> b!786563 (=> (not res!532723) (not e!437261))))

(assert (=> b!786563 (= res!532723 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20467 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786564 () Bool)

(declare-fun e!437266 () Bool)

(declare-fun e!437263 () Bool)

(assert (=> b!786564 (= e!437266 e!437263)))

(declare-fun res!532738 () Bool)

(assert (=> b!786564 (=> res!532738 e!437263)))

(declare-fun lt!350833 () SeekEntryResult!8074)

(assert (=> b!786564 (= res!532738 (not (= lt!350833 lt!350829)))))

(assert (=> b!786564 (= lt!350833 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20467 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786565 () Bool)

(assert (=> b!786565 (= e!437259 e!437257)))

(declare-fun res!532725 () Bool)

(assert (=> b!786565 (=> (not res!532725) (not e!437257))))

(declare-fun lt!350828 () SeekEntryResult!8074)

(assert (=> b!786565 (= res!532725 (or (= lt!350828 (MissingZero!8074 i!1173)) (= lt!350828 (MissingVacant!8074 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42765 (_ BitVec 32)) SeekEntryResult!8074)

(assert (=> b!786565 (= lt!350828 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!786566 () Bool)

(declare-fun e!437264 () Bool)

(assert (=> b!786566 (= e!437261 e!437264)))

(declare-fun res!532729 () Bool)

(assert (=> b!786566 (=> (not res!532729) (not e!437264))))

(declare-fun lt!350830 () SeekEntryResult!8074)

(declare-fun lt!350831 () SeekEntryResult!8074)

(assert (=> b!786566 (= res!532729 (= lt!350830 lt!350831))))

(declare-fun lt!350823 () array!42765)

(declare-fun lt!350826 () (_ BitVec 64))

(assert (=> b!786566 (= lt!350831 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350826 lt!350823 mask!3328))))

(assert (=> b!786566 (= lt!350830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350826 mask!3328) lt!350826 lt!350823 mask!3328))))

(assert (=> b!786566 (= lt!350826 (select (store (arr!20467 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!786566 (= lt!350823 (array!42766 (store (arr!20467 a!3186) i!1173 k0!2102) (size!20888 a!3186)))))

(declare-fun b!786567 () Bool)

(declare-fun res!532733 () Bool)

(assert (=> b!786567 (=> (not res!532733) (not e!437259))))

(assert (=> b!786567 (= res!532733 (validKeyInArray!0 (select (arr!20467 a!3186) j!159)))))

(declare-fun b!786568 () Bool)

(declare-fun lt!350825 () SeekEntryResult!8074)

(assert (=> b!786568 (= e!437255 (= lt!350825 lt!350833))))

(declare-fun b!786569 () Bool)

(declare-fun res!532734 () Bool)

(assert (=> b!786569 (=> (not res!532734) (not e!437259))))

(declare-fun arrayContainsKey!0 (array!42765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786569 (= res!532734 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786570 () Bool)

(declare-fun res!532730 () Bool)

(assert (=> b!786570 (=> (not res!532730) (not e!437257))))

(declare-datatypes ((List!14522 0))(
  ( (Nil!14519) (Cons!14518 (h!15641 (_ BitVec 64)) (t!20845 List!14522)) )
))
(declare-fun arrayNoDuplicates!0 (array!42765 (_ BitVec 32) List!14522) Bool)

(assert (=> b!786570 (= res!532730 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14519))))

(declare-fun b!786571 () Bool)

(declare-fun Unit!27209 () Unit!27206)

(assert (=> b!786571 (= e!437260 Unit!27209)))

(declare-fun b!786572 () Bool)

(assert (=> b!786572 (= e!437263 e!437265)))

(declare-fun res!532741 () Bool)

(assert (=> b!786572 (=> res!532741 e!437265)))

(assert (=> b!786572 (= res!532741 (= lt!350822 lt!350826))))

(assert (=> b!786572 (= lt!350822 (select (store (arr!20467 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!786573 () Bool)

(declare-fun res!532732 () Bool)

(assert (=> b!786573 (=> (not res!532732) (not e!437255))))

(assert (=> b!786573 (= res!532732 (= (seekEntryOrOpen!0 lt!350826 lt!350823 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350826 lt!350823 mask!3328)))))

(declare-fun b!786574 () Bool)

(assert (=> b!786574 (= e!437258 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20467 a!3186) j!159) a!3186 mask!3328) (Found!8074 j!159)))))

(declare-fun b!786575 () Bool)

(assert (=> b!786575 (= e!437264 (not e!437266))))

(declare-fun res!532739 () Bool)

(assert (=> b!786575 (=> res!532739 e!437266)))

(get-info :version)

(assert (=> b!786575 (= res!532739 (or (not ((_ is Intermediate!8074) lt!350831)) (bvslt x!1131 (x!65631 lt!350831)) (not (= x!1131 (x!65631 lt!350831))) (not (= index!1321 (index!34665 lt!350831)))))))

(assert (=> b!786575 e!437256))

(declare-fun res!532737 () Bool)

(assert (=> b!786575 (=> (not res!532737) (not e!437256))))

(assert (=> b!786575 (= res!532737 (= lt!350825 lt!350829))))

(assert (=> b!786575 (= lt!350829 (Found!8074 j!159))))

(assert (=> b!786575 (= lt!350825 (seekEntryOrOpen!0 (select (arr!20467 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786575 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350827 () Unit!27206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27206)

(assert (=> b!786575 (= lt!350827 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786576 () Bool)

(declare-fun res!532736 () Bool)

(assert (=> b!786576 (=> (not res!532736) (not e!437261))))

(assert (=> b!786576 (= res!532736 e!437258)))

(declare-fun c!87324 () Bool)

(assert (=> b!786576 (= c!87324 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67770 res!532740) b!786556))

(assert (= (and b!786556 res!532731) b!786567))

(assert (= (and b!786567 res!532733) b!786561))

(assert (= (and b!786561 res!532726) b!786569))

(assert (= (and b!786569 res!532734) b!786565))

(assert (= (and b!786565 res!532725) b!786559))

(assert (= (and b!786559 res!532727) b!786570))

(assert (= (and b!786570 res!532730) b!786554))

(assert (= (and b!786554 res!532724) b!786562))

(assert (= (and b!786562 res!532728) b!786563))

(assert (= (and b!786563 res!532723) b!786576))

(assert (= (and b!786576 c!87324) b!786555))

(assert (= (and b!786576 (not c!87324)) b!786574))

(assert (= (and b!786576 res!532736) b!786566))

(assert (= (and b!786566 res!532729) b!786575))

(assert (= (and b!786575 res!532737) b!786560))

(assert (= (and b!786575 (not res!532739)) b!786564))

(assert (= (and b!786564 (not res!532738)) b!786572))

(assert (= (and b!786572 (not res!532741)) b!786557))

(assert (= (and b!786557 c!87323) b!786558))

(assert (= (and b!786557 (not c!87323)) b!786571))

(assert (= (and b!786557 res!532735) b!786573))

(assert (= (and b!786573 res!532732) b!786568))

(declare-fun m!728393 () Bool)

(assert (=> b!786561 m!728393))

(declare-fun m!728395 () Bool)

(assert (=> b!786566 m!728395))

(declare-fun m!728397 () Bool)

(assert (=> b!786566 m!728397))

(declare-fun m!728399 () Bool)

(assert (=> b!786566 m!728399))

(declare-fun m!728401 () Bool)

(assert (=> b!786566 m!728401))

(assert (=> b!786566 m!728395))

(declare-fun m!728403 () Bool)

(assert (=> b!786566 m!728403))

(declare-fun m!728405 () Bool)

(assert (=> start!67770 m!728405))

(declare-fun m!728407 () Bool)

(assert (=> start!67770 m!728407))

(declare-fun m!728409 () Bool)

(assert (=> b!786564 m!728409))

(assert (=> b!786564 m!728409))

(declare-fun m!728411 () Bool)

(assert (=> b!786564 m!728411))

(assert (=> b!786575 m!728409))

(assert (=> b!786575 m!728409))

(declare-fun m!728413 () Bool)

(assert (=> b!786575 m!728413))

(declare-fun m!728415 () Bool)

(assert (=> b!786575 m!728415))

(declare-fun m!728417 () Bool)

(assert (=> b!786575 m!728417))

(assert (=> b!786567 m!728409))

(assert (=> b!786567 m!728409))

(declare-fun m!728419 () Bool)

(assert (=> b!786567 m!728419))

(declare-fun m!728421 () Bool)

(assert (=> b!786563 m!728421))

(assert (=> b!786560 m!728409))

(assert (=> b!786560 m!728409))

(declare-fun m!728423 () Bool)

(assert (=> b!786560 m!728423))

(declare-fun m!728425 () Bool)

(assert (=> b!786573 m!728425))

(declare-fun m!728427 () Bool)

(assert (=> b!786573 m!728427))

(declare-fun m!728429 () Bool)

(assert (=> b!786570 m!728429))

(assert (=> b!786574 m!728409))

(assert (=> b!786574 m!728409))

(assert (=> b!786574 m!728411))

(declare-fun m!728431 () Bool)

(assert (=> b!786569 m!728431))

(declare-fun m!728433 () Bool)

(assert (=> b!786559 m!728433))

(declare-fun m!728435 () Bool)

(assert (=> b!786565 m!728435))

(assert (=> b!786562 m!728409))

(assert (=> b!786562 m!728409))

(declare-fun m!728437 () Bool)

(assert (=> b!786562 m!728437))

(assert (=> b!786562 m!728437))

(assert (=> b!786562 m!728409))

(declare-fun m!728439 () Bool)

(assert (=> b!786562 m!728439))

(assert (=> b!786555 m!728409))

(assert (=> b!786555 m!728409))

(declare-fun m!728441 () Bool)

(assert (=> b!786555 m!728441))

(assert (=> b!786572 m!728399))

(declare-fun m!728443 () Bool)

(assert (=> b!786572 m!728443))

(check-sat (not b!786555) (not b!786569) (not b!786570) (not b!786566) (not b!786564) (not b!786573) (not b!786565) (not b!786574) (not b!786562) (not b!786567) (not b!786575) (not start!67770) (not b!786560) (not b!786561) (not b!786559))
(check-sat)
