; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67776 () Bool)

(assert start!67776)

(declare-fun b!786761 () Bool)

(declare-fun res!532910 () Bool)

(declare-fun e!437372 () Bool)

(assert (=> b!786761 (=> (not res!532910) (not e!437372))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42771 0))(
  ( (array!42772 (arr!20470 (Array (_ BitVec 32) (_ BitVec 64))) (size!20891 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42771)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786761 (= res!532910 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20470 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786762 () Bool)

(declare-fun res!532906 () Bool)

(declare-fun e!437365 () Bool)

(assert (=> b!786762 (=> (not res!532906) (not e!437365))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42771 (_ BitVec 32)) Bool)

(assert (=> b!786762 (= res!532906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786763 () Bool)

(declare-datatypes ((Unit!27218 0))(
  ( (Unit!27219) )
))
(declare-fun e!437371 () Unit!27218)

(declare-fun Unit!27220 () Unit!27218)

(assert (=> b!786763 (= e!437371 Unit!27220)))

(declare-fun b!786764 () Bool)

(declare-fun res!532903 () Bool)

(declare-fun e!437363 () Bool)

(assert (=> b!786764 (=> (not res!532903) (not e!437363))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786764 (= res!532903 (validKeyInArray!0 (select (arr!20470 a!3186) j!159)))))

(declare-fun b!786765 () Bool)

(declare-fun e!437366 () Bool)

(declare-datatypes ((SeekEntryResult!8077 0))(
  ( (MissingZero!8077 (index!34675 (_ BitVec 32))) (Found!8077 (index!34676 (_ BitVec 32))) (Intermediate!8077 (undefined!8889 Bool) (index!34677 (_ BitVec 32)) (x!65642 (_ BitVec 32))) (Undefined!8077) (MissingVacant!8077 (index!34678 (_ BitVec 32))) )
))
(declare-fun lt!350932 () SeekEntryResult!8077)

(declare-fun lt!350939 () SeekEntryResult!8077)

(assert (=> b!786765 (= e!437366 (= lt!350932 lt!350939))))

(declare-fun b!786766 () Bool)

(declare-fun res!532898 () Bool)

(assert (=> b!786766 (=> (not res!532898) (not e!437363))))

(assert (=> b!786766 (= res!532898 (and (= (size!20891 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20891 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20891 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786767 () Bool)

(declare-fun e!437369 () Bool)

(declare-fun e!437373 () Bool)

(assert (=> b!786767 (= e!437369 e!437373)))

(declare-fun res!532900 () Bool)

(assert (=> b!786767 (=> res!532900 e!437373)))

(declare-fun lt!350930 () SeekEntryResult!8077)

(assert (=> b!786767 (= res!532900 (not (= lt!350939 lt!350930)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42771 (_ BitVec 32)) SeekEntryResult!8077)

(assert (=> b!786767 (= lt!350939 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20470 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786768 () Bool)

(declare-fun e!437374 () Bool)

(assert (=> b!786768 (= e!437374 true)))

(assert (=> b!786768 e!437366))

(declare-fun res!532899 () Bool)

(assert (=> b!786768 (=> (not res!532899) (not e!437366))))

(declare-fun lt!350936 () (_ BitVec 64))

(assert (=> b!786768 (= res!532899 (= lt!350936 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350940 () Unit!27218)

(assert (=> b!786768 (= lt!350940 e!437371)))

(declare-fun c!87341 () Bool)

(assert (=> b!786768 (= c!87341 (= lt!350936 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786769 () Bool)

(declare-fun res!532896 () Bool)

(assert (=> b!786769 (=> (not res!532896) (not e!437365))))

(declare-datatypes ((List!14525 0))(
  ( (Nil!14522) (Cons!14521 (h!15644 (_ BitVec 64)) (t!20848 List!14525)) )
))
(declare-fun arrayNoDuplicates!0 (array!42771 (_ BitVec 32) List!14525) Bool)

(assert (=> b!786769 (= res!532896 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14522))))

(declare-fun b!786770 () Bool)

(declare-fun res!532908 () Bool)

(assert (=> b!786770 (=> (not res!532908) (not e!437372))))

(declare-fun e!437364 () Bool)

(assert (=> b!786770 (= res!532908 e!437364)))

(declare-fun c!87342 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786770 (= c!87342 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786771 () Bool)

(assert (=> b!786771 (= e!437373 e!437374)))

(declare-fun res!532901 () Bool)

(assert (=> b!786771 (=> res!532901 e!437374)))

(declare-fun lt!350935 () (_ BitVec 64))

(assert (=> b!786771 (= res!532901 (= lt!350936 lt!350935))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!786771 (= lt!350936 (select (store (arr!20470 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!786773 () Bool)

(assert (=> b!786773 (= e!437365 e!437372)))

(declare-fun res!532912 () Bool)

(assert (=> b!786773 (=> (not res!532912) (not e!437372))))

(declare-fun lt!350931 () SeekEntryResult!8077)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42771 (_ BitVec 32)) SeekEntryResult!8077)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786773 (= res!532912 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20470 a!3186) j!159) mask!3328) (select (arr!20470 a!3186) j!159) a!3186 mask!3328) lt!350931))))

(assert (=> b!786773 (= lt!350931 (Intermediate!8077 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786774 () Bool)

(declare-fun res!532907 () Bool)

(assert (=> b!786774 (=> (not res!532907) (not e!437363))))

(declare-fun arrayContainsKey!0 (array!42771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786774 (= res!532907 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786775 () Bool)

(declare-fun e!437367 () Bool)

(assert (=> b!786775 (= e!437367 (not e!437369))))

(declare-fun res!532904 () Bool)

(assert (=> b!786775 (=> res!532904 e!437369)))

(declare-fun lt!350937 () SeekEntryResult!8077)

(get-info :version)

(assert (=> b!786775 (= res!532904 (or (not ((_ is Intermediate!8077) lt!350937)) (bvslt x!1131 (x!65642 lt!350937)) (not (= x!1131 (x!65642 lt!350937))) (not (= index!1321 (index!34677 lt!350937)))))))

(declare-fun e!437370 () Bool)

(assert (=> b!786775 e!437370))

(declare-fun res!532905 () Bool)

(assert (=> b!786775 (=> (not res!532905) (not e!437370))))

(assert (=> b!786775 (= res!532905 (= lt!350932 lt!350930))))

(assert (=> b!786775 (= lt!350930 (Found!8077 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42771 (_ BitVec 32)) SeekEntryResult!8077)

(assert (=> b!786775 (= lt!350932 (seekEntryOrOpen!0 (select (arr!20470 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786775 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350938 () Unit!27218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27218)

(assert (=> b!786775 (= lt!350938 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786776 () Bool)

(assert (=> b!786776 (= e!437370 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20470 a!3186) j!159) a!3186 mask!3328) lt!350930))))

(declare-fun b!786777 () Bool)

(assert (=> b!786777 (= e!437364 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20470 a!3186) j!159) a!3186 mask!3328) lt!350931))))

(declare-fun b!786778 () Bool)

(assert (=> b!786778 (= e!437363 e!437365)))

(declare-fun res!532894 () Bool)

(assert (=> b!786778 (=> (not res!532894) (not e!437365))))

(declare-fun lt!350934 () SeekEntryResult!8077)

(assert (=> b!786778 (= res!532894 (or (= lt!350934 (MissingZero!8077 i!1173)) (= lt!350934 (MissingVacant!8077 i!1173))))))

(assert (=> b!786778 (= lt!350934 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!786779 () Bool)

(declare-fun Unit!27221 () Unit!27218)

(assert (=> b!786779 (= e!437371 Unit!27221)))

(assert (=> b!786779 false))

(declare-fun b!786780 () Bool)

(declare-fun res!532897 () Bool)

(assert (=> b!786780 (=> (not res!532897) (not e!437365))))

(assert (=> b!786780 (= res!532897 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20891 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20891 a!3186))))))

(declare-fun b!786781 () Bool)

(assert (=> b!786781 (= e!437372 e!437367)))

(declare-fun res!532909 () Bool)

(assert (=> b!786781 (=> (not res!532909) (not e!437367))))

(declare-fun lt!350941 () SeekEntryResult!8077)

(assert (=> b!786781 (= res!532909 (= lt!350941 lt!350937))))

(declare-fun lt!350933 () array!42771)

(assert (=> b!786781 (= lt!350937 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350935 lt!350933 mask!3328))))

(assert (=> b!786781 (= lt!350941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350935 mask!3328) lt!350935 lt!350933 mask!3328))))

(assert (=> b!786781 (= lt!350935 (select (store (arr!20470 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!786781 (= lt!350933 (array!42772 (store (arr!20470 a!3186) i!1173 k0!2102) (size!20891 a!3186)))))

(declare-fun res!532911 () Bool)

(assert (=> start!67776 (=> (not res!532911) (not e!437363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67776 (= res!532911 (validMask!0 mask!3328))))

(assert (=> start!67776 e!437363))

(assert (=> start!67776 true))

(declare-fun array_inv!16244 (array!42771) Bool)

(assert (=> start!67776 (array_inv!16244 a!3186)))

(declare-fun b!786772 () Bool)

(declare-fun res!532902 () Bool)

(assert (=> b!786772 (=> (not res!532902) (not e!437366))))

(assert (=> b!786772 (= res!532902 (= (seekEntryOrOpen!0 lt!350935 lt!350933 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350935 lt!350933 mask!3328)))))

(declare-fun b!786782 () Bool)

(assert (=> b!786782 (= e!437364 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20470 a!3186) j!159) a!3186 mask!3328) (Found!8077 j!159)))))

(declare-fun b!786783 () Bool)

(declare-fun res!532895 () Bool)

(assert (=> b!786783 (=> (not res!532895) (not e!437363))))

(assert (=> b!786783 (= res!532895 (validKeyInArray!0 k0!2102))))

(assert (= (and start!67776 res!532911) b!786766))

(assert (= (and b!786766 res!532898) b!786764))

(assert (= (and b!786764 res!532903) b!786783))

(assert (= (and b!786783 res!532895) b!786774))

(assert (= (and b!786774 res!532907) b!786778))

(assert (= (and b!786778 res!532894) b!786762))

(assert (= (and b!786762 res!532906) b!786769))

(assert (= (and b!786769 res!532896) b!786780))

(assert (= (and b!786780 res!532897) b!786773))

(assert (= (and b!786773 res!532912) b!786761))

(assert (= (and b!786761 res!532910) b!786770))

(assert (= (and b!786770 c!87342) b!786777))

(assert (= (and b!786770 (not c!87342)) b!786782))

(assert (= (and b!786770 res!532908) b!786781))

(assert (= (and b!786781 res!532909) b!786775))

(assert (= (and b!786775 res!532905) b!786776))

(assert (= (and b!786775 (not res!532904)) b!786767))

(assert (= (and b!786767 (not res!532900)) b!786771))

(assert (= (and b!786771 (not res!532901)) b!786768))

(assert (= (and b!786768 c!87341) b!786779))

(assert (= (and b!786768 (not c!87341)) b!786763))

(assert (= (and b!786768 res!532899) b!786772))

(assert (= (and b!786772 res!532902) b!786765))

(declare-fun m!728549 () Bool)

(assert (=> b!786772 m!728549))

(declare-fun m!728551 () Bool)

(assert (=> b!786772 m!728551))

(declare-fun m!728553 () Bool)

(assert (=> b!786778 m!728553))

(declare-fun m!728555 () Bool)

(assert (=> b!786762 m!728555))

(declare-fun m!728557 () Bool)

(assert (=> b!786783 m!728557))

(declare-fun m!728559 () Bool)

(assert (=> b!786773 m!728559))

(assert (=> b!786773 m!728559))

(declare-fun m!728561 () Bool)

(assert (=> b!786773 m!728561))

(assert (=> b!786773 m!728561))

(assert (=> b!786773 m!728559))

(declare-fun m!728563 () Bool)

(assert (=> b!786773 m!728563))

(assert (=> b!786776 m!728559))

(assert (=> b!786776 m!728559))

(declare-fun m!728565 () Bool)

(assert (=> b!786776 m!728565))

(assert (=> b!786775 m!728559))

(assert (=> b!786775 m!728559))

(declare-fun m!728567 () Bool)

(assert (=> b!786775 m!728567))

(declare-fun m!728569 () Bool)

(assert (=> b!786775 m!728569))

(declare-fun m!728571 () Bool)

(assert (=> b!786775 m!728571))

(declare-fun m!728573 () Bool)

(assert (=> start!67776 m!728573))

(declare-fun m!728575 () Bool)

(assert (=> start!67776 m!728575))

(declare-fun m!728577 () Bool)

(assert (=> b!786781 m!728577))

(declare-fun m!728579 () Bool)

(assert (=> b!786781 m!728579))

(declare-fun m!728581 () Bool)

(assert (=> b!786781 m!728581))

(declare-fun m!728583 () Bool)

(assert (=> b!786781 m!728583))

(assert (=> b!786781 m!728581))

(declare-fun m!728585 () Bool)

(assert (=> b!786781 m!728585))

(declare-fun m!728587 () Bool)

(assert (=> b!786769 m!728587))

(assert (=> b!786771 m!728585))

(declare-fun m!728589 () Bool)

(assert (=> b!786771 m!728589))

(declare-fun m!728591 () Bool)

(assert (=> b!786774 m!728591))

(assert (=> b!786782 m!728559))

(assert (=> b!786782 m!728559))

(declare-fun m!728593 () Bool)

(assert (=> b!786782 m!728593))

(assert (=> b!786777 m!728559))

(assert (=> b!786777 m!728559))

(declare-fun m!728595 () Bool)

(assert (=> b!786777 m!728595))

(assert (=> b!786764 m!728559))

(assert (=> b!786764 m!728559))

(declare-fun m!728597 () Bool)

(assert (=> b!786764 m!728597))

(assert (=> b!786767 m!728559))

(assert (=> b!786767 m!728559))

(assert (=> b!786767 m!728593))

(declare-fun m!728599 () Bool)

(assert (=> b!786761 m!728599))

(check-sat (not start!67776) (not b!786769) (not b!786776) (not b!786783) (not b!786775) (not b!786772) (not b!786762) (not b!786781) (not b!786777) (not b!786764) (not b!786774) (not b!786782) (not b!786767) (not b!786778) (not b!786773))
(check-sat)
