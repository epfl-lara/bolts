; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67772 () Bool)

(assert start!67772)

(declare-fun b!786623 () Bool)

(declare-fun e!437297 () Bool)

(assert (=> b!786623 (= e!437297 true)))

(declare-fun e!437295 () Bool)

(assert (=> b!786623 e!437295))

(declare-fun res!532785 () Bool)

(assert (=> b!786623 (=> (not res!532785) (not e!437295))))

(declare-fun lt!350863 () (_ BitVec 64))

(assert (=> b!786623 (= res!532785 (= lt!350863 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27210 0))(
  ( (Unit!27211) )
))
(declare-fun lt!350862 () Unit!27210)

(declare-fun e!437299 () Unit!27210)

(assert (=> b!786623 (= lt!350862 e!437299)))

(declare-fun c!87330 () Bool)

(assert (=> b!786623 (= c!87330 (= lt!350863 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786624 () Bool)

(declare-fun e!437301 () Bool)

(declare-fun e!437294 () Bool)

(assert (=> b!786624 (= e!437301 e!437294)))

(declare-fun res!532795 () Bool)

(assert (=> b!786624 (=> (not res!532795) (not e!437294))))

(declare-datatypes ((SeekEntryResult!8075 0))(
  ( (MissingZero!8075 (index!34667 (_ BitVec 32))) (Found!8075 (index!34668 (_ BitVec 32))) (Intermediate!8075 (undefined!8887 Bool) (index!34669 (_ BitVec 32)) (x!65632 (_ BitVec 32))) (Undefined!8075) (MissingVacant!8075 (index!34670 (_ BitVec 32))) )
))
(declare-fun lt!350868 () SeekEntryResult!8075)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786624 (= res!532795 (or (= lt!350868 (MissingZero!8075 i!1173)) (= lt!350868 (MissingVacant!8075 i!1173))))))

(declare-datatypes ((array!42767 0))(
  ( (array!42768 (arr!20468 (Array (_ BitVec 32) (_ BitVec 64))) (size!20889 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42767)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42767 (_ BitVec 32)) SeekEntryResult!8075)

(assert (=> b!786624 (= lt!350868 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786625 () Bool)

(declare-fun res!532781 () Bool)

(assert (=> b!786625 (=> (not res!532781) (not e!437301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786625 (= res!532781 (validKeyInArray!0 k!2102))))

(declare-fun b!786626 () Bool)

(declare-fun res!532793 () Bool)

(declare-fun e!437291 () Bool)

(assert (=> b!786626 (=> (not res!532793) (not e!437291))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!786626 (= res!532793 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20468 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786627 () Bool)

(declare-fun Unit!27212 () Unit!27210)

(assert (=> b!786627 (= e!437299 Unit!27212)))

(assert (=> b!786627 false))

(declare-fun res!532796 () Bool)

(assert (=> start!67772 (=> (not res!532796) (not e!437301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67772 (= res!532796 (validMask!0 mask!3328))))

(assert (=> start!67772 e!437301))

(assert (=> start!67772 true))

(declare-fun array_inv!16242 (array!42767) Bool)

(assert (=> start!67772 (array_inv!16242 a!3186)))

(declare-fun b!786628 () Bool)

(declare-fun e!437293 () Bool)

(declare-fun e!437296 () Bool)

(assert (=> b!786628 (= e!437293 e!437296)))

(declare-fun res!532797 () Bool)

(assert (=> b!786628 (=> res!532797 e!437296)))

(declare-fun lt!350858 () SeekEntryResult!8075)

(declare-fun lt!350867 () SeekEntryResult!8075)

(assert (=> b!786628 (= res!532797 (not (= lt!350858 lt!350867)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42767 (_ BitVec 32)) SeekEntryResult!8075)

(assert (=> b!786628 (= lt!350858 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20468 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786629 () Bool)

(declare-fun Unit!27213 () Unit!27210)

(assert (=> b!786629 (= e!437299 Unit!27213)))

(declare-fun b!786630 () Bool)

(declare-fun e!437302 () Bool)

(assert (=> b!786630 (= e!437291 e!437302)))

(declare-fun res!532791 () Bool)

(assert (=> b!786630 (=> (not res!532791) (not e!437302))))

(declare-fun lt!350860 () SeekEntryResult!8075)

(declare-fun lt!350859 () SeekEntryResult!8075)

(assert (=> b!786630 (= res!532791 (= lt!350860 lt!350859))))

(declare-fun lt!350869 () (_ BitVec 64))

(declare-fun lt!350866 () array!42767)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42767 (_ BitVec 32)) SeekEntryResult!8075)

(assert (=> b!786630 (= lt!350859 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350869 lt!350866 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786630 (= lt!350860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350869 mask!3328) lt!350869 lt!350866 mask!3328))))

(assert (=> b!786630 (= lt!350869 (select (store (arr!20468 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786630 (= lt!350866 (array!42768 (store (arr!20468 a!3186) i!1173 k!2102) (size!20889 a!3186)))))

(declare-fun b!786631 () Bool)

(declare-fun res!532792 () Bool)

(assert (=> b!786631 (=> (not res!532792) (not e!437301))))

(assert (=> b!786631 (= res!532792 (validKeyInArray!0 (select (arr!20468 a!3186) j!159)))))

(declare-fun b!786632 () Bool)

(declare-fun res!532784 () Bool)

(assert (=> b!786632 (=> (not res!532784) (not e!437294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42767 (_ BitVec 32)) Bool)

(assert (=> b!786632 (= res!532784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786633 () Bool)

(declare-fun res!532794 () Bool)

(assert (=> b!786633 (=> (not res!532794) (not e!437294))))

(declare-datatypes ((List!14523 0))(
  ( (Nil!14520) (Cons!14519 (h!15642 (_ BitVec 64)) (t!20846 List!14523)) )
))
(declare-fun arrayNoDuplicates!0 (array!42767 (_ BitVec 32) List!14523) Bool)

(assert (=> b!786633 (= res!532794 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14520))))

(declare-fun b!786634 () Bool)

(declare-fun res!532782 () Bool)

(assert (=> b!786634 (=> (not res!532782) (not e!437301))))

(assert (=> b!786634 (= res!532782 (and (= (size!20889 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20889 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20889 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786635 () Bool)

(assert (=> b!786635 (= e!437302 (not e!437293))))

(declare-fun res!532798 () Bool)

(assert (=> b!786635 (=> res!532798 e!437293)))

(assert (=> b!786635 (= res!532798 (or (not (is-Intermediate!8075 lt!350859)) (bvslt x!1131 (x!65632 lt!350859)) (not (= x!1131 (x!65632 lt!350859))) (not (= index!1321 (index!34669 lt!350859)))))))

(declare-fun e!437298 () Bool)

(assert (=> b!786635 e!437298))

(declare-fun res!532786 () Bool)

(assert (=> b!786635 (=> (not res!532786) (not e!437298))))

(declare-fun lt!350864 () SeekEntryResult!8075)

(assert (=> b!786635 (= res!532786 (= lt!350864 lt!350867))))

(assert (=> b!786635 (= lt!350867 (Found!8075 j!159))))

(assert (=> b!786635 (= lt!350864 (seekEntryOrOpen!0 (select (arr!20468 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786635 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350865 () Unit!27210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27210)

(assert (=> b!786635 (= lt!350865 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!437292 () Bool)

(declare-fun b!786636 () Bool)

(declare-fun lt!350861 () SeekEntryResult!8075)

(assert (=> b!786636 (= e!437292 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20468 a!3186) j!159) a!3186 mask!3328) lt!350861))))

(declare-fun b!786637 () Bool)

(declare-fun res!532788 () Bool)

(assert (=> b!786637 (=> (not res!532788) (not e!437294))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786637 (= res!532788 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20889 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20889 a!3186))))))

(declare-fun b!786638 () Bool)

(declare-fun res!532790 () Bool)

(assert (=> b!786638 (=> (not res!532790) (not e!437291))))

(assert (=> b!786638 (= res!532790 e!437292)))

(declare-fun c!87329 () Bool)

(assert (=> b!786638 (= c!87329 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786639 () Bool)

(assert (=> b!786639 (= e!437292 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20468 a!3186) j!159) a!3186 mask!3328) (Found!8075 j!159)))))

(declare-fun b!786640 () Bool)

(assert (=> b!786640 (= e!437294 e!437291)))

(declare-fun res!532789 () Bool)

(assert (=> b!786640 (=> (not res!532789) (not e!437291))))

(assert (=> b!786640 (= res!532789 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20468 a!3186) j!159) mask!3328) (select (arr!20468 a!3186) j!159) a!3186 mask!3328) lt!350861))))

(assert (=> b!786640 (= lt!350861 (Intermediate!8075 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786641 () Bool)

(assert (=> b!786641 (= e!437298 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20468 a!3186) j!159) a!3186 mask!3328) lt!350867))))

(declare-fun b!786642 () Bool)

(declare-fun res!532787 () Bool)

(assert (=> b!786642 (=> (not res!532787) (not e!437295))))

(assert (=> b!786642 (= res!532787 (= (seekEntryOrOpen!0 lt!350869 lt!350866 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350869 lt!350866 mask!3328)))))

(declare-fun b!786643 () Bool)

(assert (=> b!786643 (= e!437296 e!437297)))

(declare-fun res!532783 () Bool)

(assert (=> b!786643 (=> res!532783 e!437297)))

(assert (=> b!786643 (= res!532783 (= lt!350863 lt!350869))))

(assert (=> b!786643 (= lt!350863 (select (store (arr!20468 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786644 () Bool)

(assert (=> b!786644 (= e!437295 (= lt!350864 lt!350858))))

(declare-fun b!786645 () Bool)

(declare-fun res!532780 () Bool)

(assert (=> b!786645 (=> (not res!532780) (not e!437301))))

(declare-fun arrayContainsKey!0 (array!42767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786645 (= res!532780 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67772 res!532796) b!786634))

(assert (= (and b!786634 res!532782) b!786631))

(assert (= (and b!786631 res!532792) b!786625))

(assert (= (and b!786625 res!532781) b!786645))

(assert (= (and b!786645 res!532780) b!786624))

(assert (= (and b!786624 res!532795) b!786632))

(assert (= (and b!786632 res!532784) b!786633))

(assert (= (and b!786633 res!532794) b!786637))

(assert (= (and b!786637 res!532788) b!786640))

(assert (= (and b!786640 res!532789) b!786626))

(assert (= (and b!786626 res!532793) b!786638))

(assert (= (and b!786638 c!87329) b!786636))

(assert (= (and b!786638 (not c!87329)) b!786639))

(assert (= (and b!786638 res!532790) b!786630))

(assert (= (and b!786630 res!532791) b!786635))

(assert (= (and b!786635 res!532786) b!786641))

(assert (= (and b!786635 (not res!532798)) b!786628))

(assert (= (and b!786628 (not res!532797)) b!786643))

(assert (= (and b!786643 (not res!532783)) b!786623))

(assert (= (and b!786623 c!87330) b!786627))

(assert (= (and b!786623 (not c!87330)) b!786629))

(assert (= (and b!786623 res!532785) b!786642))

(assert (= (and b!786642 res!532787) b!786644))

(declare-fun m!728445 () Bool)

(assert (=> b!786643 m!728445))

(declare-fun m!728447 () Bool)

(assert (=> b!786643 m!728447))

(declare-fun m!728449 () Bool)

(assert (=> b!786628 m!728449))

(assert (=> b!786628 m!728449))

(declare-fun m!728451 () Bool)

(assert (=> b!786628 m!728451))

(declare-fun m!728453 () Bool)

(assert (=> start!67772 m!728453))

(declare-fun m!728455 () Bool)

(assert (=> start!67772 m!728455))

(declare-fun m!728457 () Bool)

(assert (=> b!786626 m!728457))

(declare-fun m!728459 () Bool)

(assert (=> b!786645 m!728459))

(assert (=> b!786635 m!728449))

(assert (=> b!786635 m!728449))

(declare-fun m!728461 () Bool)

(assert (=> b!786635 m!728461))

(declare-fun m!728463 () Bool)

(assert (=> b!786635 m!728463))

(declare-fun m!728465 () Bool)

(assert (=> b!786635 m!728465))

(assert (=> b!786640 m!728449))

(assert (=> b!786640 m!728449))

(declare-fun m!728467 () Bool)

(assert (=> b!786640 m!728467))

(assert (=> b!786640 m!728467))

(assert (=> b!786640 m!728449))

(declare-fun m!728469 () Bool)

(assert (=> b!786640 m!728469))

(assert (=> b!786631 m!728449))

(assert (=> b!786631 m!728449))

(declare-fun m!728471 () Bool)

(assert (=> b!786631 m!728471))

(declare-fun m!728473 () Bool)

(assert (=> b!786625 m!728473))

(declare-fun m!728475 () Bool)

(assert (=> b!786624 m!728475))

(assert (=> b!786641 m!728449))

(assert (=> b!786641 m!728449))

(declare-fun m!728477 () Bool)

(assert (=> b!786641 m!728477))

(declare-fun m!728479 () Bool)

(assert (=> b!786630 m!728479))

(assert (=> b!786630 m!728479))

(declare-fun m!728481 () Bool)

(assert (=> b!786630 m!728481))

(assert (=> b!786630 m!728445))

(declare-fun m!728483 () Bool)

(assert (=> b!786630 m!728483))

(declare-fun m!728485 () Bool)

(assert (=> b!786630 m!728485))

(assert (=> b!786636 m!728449))

(assert (=> b!786636 m!728449))

(declare-fun m!728487 () Bool)

(assert (=> b!786636 m!728487))

(declare-fun m!728489 () Bool)

(assert (=> b!786632 m!728489))

(declare-fun m!728491 () Bool)

(assert (=> b!786642 m!728491))

(declare-fun m!728493 () Bool)

(assert (=> b!786642 m!728493))

(assert (=> b!786639 m!728449))

(assert (=> b!786639 m!728449))

(assert (=> b!786639 m!728451))

(declare-fun m!728495 () Bool)

(assert (=> b!786633 m!728495))

(push 1)

