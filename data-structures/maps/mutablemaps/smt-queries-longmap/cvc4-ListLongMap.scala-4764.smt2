; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65666 () Bool)

(assert start!65666)

(declare-fun b!751639 () Bool)

(declare-fun res!507607 () Bool)

(declare-fun e!419322 () Bool)

(assert (=> b!751639 (=> (not res!507607) (not e!419322))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41792 0))(
  ( (array!41793 (arr!20006 (Array (_ BitVec 32) (_ BitVec 64))) (size!20427 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41792)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751639 (= res!507607 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20427 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20427 a!3186))))))

(declare-fun b!751640 () Bool)

(declare-fun res!507611 () Bool)

(declare-fun e!419319 () Bool)

(assert (=> b!751640 (=> (not res!507611) (not e!419319))))

(declare-fun lt!334319 () (_ BitVec 64))

(declare-fun lt!334322 () array!41792)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7613 0))(
  ( (MissingZero!7613 (index!32819 (_ BitVec 32))) (Found!7613 (index!32820 (_ BitVec 32))) (Intermediate!7613 (undefined!8425 Bool) (index!32821 (_ BitVec 32)) (x!63764 (_ BitVec 32))) (Undefined!7613) (MissingVacant!7613 (index!32822 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41792 (_ BitVec 32)) SeekEntryResult!7613)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41792 (_ BitVec 32)) SeekEntryResult!7613)

(assert (=> b!751640 (= res!507611 (= (seekEntryOrOpen!0 lt!334319 lt!334322 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334319 lt!334322 mask!3328)))))

(declare-fun e!419311 () Bool)

(declare-fun b!751641 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!751641 (= e!419311 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20006 a!3186) j!159) a!3186 mask!3328) (Found!7613 j!159)))))

(declare-fun b!751642 () Bool)

(declare-fun res!507609 () Bool)

(declare-fun e!419320 () Bool)

(assert (=> b!751642 (=> (not res!507609) (not e!419320))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751642 (= res!507609 (and (= (size!20427 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20427 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20427 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751643 () Bool)

(declare-fun e!419321 () Bool)

(declare-fun e!419318 () Bool)

(assert (=> b!751643 (= e!419321 e!419318)))

(declare-fun res!507605 () Bool)

(assert (=> b!751643 (=> res!507605 e!419318)))

(declare-fun lt!334316 () SeekEntryResult!7613)

(declare-fun lt!334311 () SeekEntryResult!7613)

(assert (=> b!751643 (= res!507605 (not (= lt!334316 lt!334311)))))

(assert (=> b!751643 (= lt!334316 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20006 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!751644 () Bool)

(declare-fun res!507602 () Bool)

(assert (=> b!751644 (=> (not res!507602) (not e!419322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41792 (_ BitVec 32)) Bool)

(assert (=> b!751644 (= res!507602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751645 () Bool)

(declare-fun e!419312 () Bool)

(assert (=> b!751645 (= e!419312 true)))

(assert (=> b!751645 e!419319))

(declare-fun res!507598 () Bool)

(assert (=> b!751645 (=> (not res!507598) (not e!419319))))

(declare-fun lt!334314 () (_ BitVec 64))

(assert (=> b!751645 (= res!507598 (= lt!334314 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25854 0))(
  ( (Unit!25855) )
))
(declare-fun lt!334317 () Unit!25854)

(declare-fun e!419313 () Unit!25854)

(assert (=> b!751645 (= lt!334317 e!419313)))

(declare-fun c!82404 () Bool)

(assert (=> b!751645 (= c!82404 (= lt!334314 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751646 () Bool)

(declare-fun e!419314 () Bool)

(assert (=> b!751646 (= e!419314 (not e!419321))))

(declare-fun res!507594 () Bool)

(assert (=> b!751646 (=> res!507594 e!419321)))

(declare-fun lt!334315 () SeekEntryResult!7613)

(assert (=> b!751646 (= res!507594 (or (not (is-Intermediate!7613 lt!334315)) (bvslt x!1131 (x!63764 lt!334315)) (not (= x!1131 (x!63764 lt!334315))) (not (= index!1321 (index!32821 lt!334315)))))))

(declare-fun e!419315 () Bool)

(assert (=> b!751646 e!419315))

(declare-fun res!507608 () Bool)

(assert (=> b!751646 (=> (not res!507608) (not e!419315))))

(declare-fun lt!334318 () SeekEntryResult!7613)

(assert (=> b!751646 (= res!507608 (= lt!334318 lt!334311))))

(assert (=> b!751646 (= lt!334311 (Found!7613 j!159))))

(assert (=> b!751646 (= lt!334318 (seekEntryOrOpen!0 (select (arr!20006 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!751646 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334321 () Unit!25854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41792 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25854)

(assert (=> b!751646 (= lt!334321 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751647 () Bool)

(assert (=> b!751647 (= e!419319 (= lt!334318 lt!334316))))

(declare-fun b!751648 () Bool)

(declare-fun res!507597 () Bool)

(declare-fun e!419317 () Bool)

(assert (=> b!751648 (=> (not res!507597) (not e!419317))))

(assert (=> b!751648 (= res!507597 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20006 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751649 () Bool)

(declare-fun Unit!25856 () Unit!25854)

(assert (=> b!751649 (= e!419313 Unit!25856)))

(assert (=> b!751649 false))

(declare-fun b!751650 () Bool)

(declare-fun res!507603 () Bool)

(assert (=> b!751650 (=> (not res!507603) (not e!419320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751650 (= res!507603 (validKeyInArray!0 (select (arr!20006 a!3186) j!159)))))

(declare-fun b!751651 () Bool)

(assert (=> b!751651 (= e!419318 e!419312)))

(declare-fun res!507610 () Bool)

(assert (=> b!751651 (=> res!507610 e!419312)))

(assert (=> b!751651 (= res!507610 (= lt!334314 lt!334319))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!751651 (= lt!334314 (select (store (arr!20006 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!751652 () Bool)

(assert (=> b!751652 (= e!419317 e!419314)))

(declare-fun res!507606 () Bool)

(assert (=> b!751652 (=> (not res!507606) (not e!419314))))

(declare-fun lt!334320 () SeekEntryResult!7613)

(assert (=> b!751652 (= res!507606 (= lt!334320 lt!334315))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41792 (_ BitVec 32)) SeekEntryResult!7613)

(assert (=> b!751652 (= lt!334315 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334319 lt!334322 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751652 (= lt!334320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334319 mask!3328) lt!334319 lt!334322 mask!3328))))

(assert (=> b!751652 (= lt!334319 (select (store (arr!20006 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751652 (= lt!334322 (array!41793 (store (arr!20006 a!3186) i!1173 k!2102) (size!20427 a!3186)))))

(declare-fun b!751653 () Bool)

(declare-fun res!507595 () Bool)

(assert (=> b!751653 (=> (not res!507595) (not e!419320))))

(declare-fun arrayContainsKey!0 (array!41792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751653 (= res!507595 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751654 () Bool)

(assert (=> b!751654 (= e!419315 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20006 a!3186) j!159) a!3186 mask!3328) lt!334311))))

(declare-fun b!751656 () Bool)

(declare-fun res!507596 () Bool)

(assert (=> b!751656 (=> (not res!507596) (not e!419322))))

(declare-datatypes ((List!14061 0))(
  ( (Nil!14058) (Cons!14057 (h!15129 (_ BitVec 64)) (t!20384 List!14061)) )
))
(declare-fun arrayNoDuplicates!0 (array!41792 (_ BitVec 32) List!14061) Bool)

(assert (=> b!751656 (= res!507596 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14058))))

(declare-fun res!507601 () Bool)

(assert (=> start!65666 (=> (not res!507601) (not e!419320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65666 (= res!507601 (validMask!0 mask!3328))))

(assert (=> start!65666 e!419320))

(assert (=> start!65666 true))

(declare-fun array_inv!15780 (array!41792) Bool)

(assert (=> start!65666 (array_inv!15780 a!3186)))

(declare-fun b!751655 () Bool)

(declare-fun Unit!25857 () Unit!25854)

(assert (=> b!751655 (= e!419313 Unit!25857)))

(declare-fun b!751657 () Bool)

(assert (=> b!751657 (= e!419322 e!419317)))

(declare-fun res!507599 () Bool)

(assert (=> b!751657 (=> (not res!507599) (not e!419317))))

(declare-fun lt!334312 () SeekEntryResult!7613)

(assert (=> b!751657 (= res!507599 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20006 a!3186) j!159) mask!3328) (select (arr!20006 a!3186) j!159) a!3186 mask!3328) lt!334312))))

(assert (=> b!751657 (= lt!334312 (Intermediate!7613 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751658 () Bool)

(assert (=> b!751658 (= e!419320 e!419322)))

(declare-fun res!507600 () Bool)

(assert (=> b!751658 (=> (not res!507600) (not e!419322))))

(declare-fun lt!334313 () SeekEntryResult!7613)

(assert (=> b!751658 (= res!507600 (or (= lt!334313 (MissingZero!7613 i!1173)) (= lt!334313 (MissingVacant!7613 i!1173))))))

(assert (=> b!751658 (= lt!334313 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751659 () Bool)

(assert (=> b!751659 (= e!419311 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20006 a!3186) j!159) a!3186 mask!3328) lt!334312))))

(declare-fun b!751660 () Bool)

(declare-fun res!507604 () Bool)

(assert (=> b!751660 (=> (not res!507604) (not e!419320))))

(assert (=> b!751660 (= res!507604 (validKeyInArray!0 k!2102))))

(declare-fun b!751661 () Bool)

(declare-fun res!507612 () Bool)

(assert (=> b!751661 (=> (not res!507612) (not e!419317))))

(assert (=> b!751661 (= res!507612 e!419311)))

(declare-fun c!82403 () Bool)

(assert (=> b!751661 (= c!82403 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65666 res!507601) b!751642))

(assert (= (and b!751642 res!507609) b!751650))

(assert (= (and b!751650 res!507603) b!751660))

(assert (= (and b!751660 res!507604) b!751653))

(assert (= (and b!751653 res!507595) b!751658))

(assert (= (and b!751658 res!507600) b!751644))

(assert (= (and b!751644 res!507602) b!751656))

(assert (= (and b!751656 res!507596) b!751639))

(assert (= (and b!751639 res!507607) b!751657))

(assert (= (and b!751657 res!507599) b!751648))

(assert (= (and b!751648 res!507597) b!751661))

(assert (= (and b!751661 c!82403) b!751659))

(assert (= (and b!751661 (not c!82403)) b!751641))

(assert (= (and b!751661 res!507612) b!751652))

(assert (= (and b!751652 res!507606) b!751646))

(assert (= (and b!751646 res!507608) b!751654))

(assert (= (and b!751646 (not res!507594)) b!751643))

(assert (= (and b!751643 (not res!507605)) b!751651))

(assert (= (and b!751651 (not res!507610)) b!751645))

(assert (= (and b!751645 c!82404) b!751649))

(assert (= (and b!751645 (not c!82404)) b!751655))

(assert (= (and b!751645 res!507598) b!751640))

(assert (= (and b!751640 res!507611) b!751647))

(declare-fun m!700845 () Bool)

(assert (=> start!65666 m!700845))

(declare-fun m!700847 () Bool)

(assert (=> start!65666 m!700847))

(declare-fun m!700849 () Bool)

(assert (=> b!751659 m!700849))

(assert (=> b!751659 m!700849))

(declare-fun m!700851 () Bool)

(assert (=> b!751659 m!700851))

(declare-fun m!700853 () Bool)

(assert (=> b!751656 m!700853))

(assert (=> b!751650 m!700849))

(assert (=> b!751650 m!700849))

(declare-fun m!700855 () Bool)

(assert (=> b!751650 m!700855))

(declare-fun m!700857 () Bool)

(assert (=> b!751644 m!700857))

(assert (=> b!751654 m!700849))

(assert (=> b!751654 m!700849))

(declare-fun m!700859 () Bool)

(assert (=> b!751654 m!700859))

(assert (=> b!751657 m!700849))

(assert (=> b!751657 m!700849))

(declare-fun m!700861 () Bool)

(assert (=> b!751657 m!700861))

(assert (=> b!751657 m!700861))

(assert (=> b!751657 m!700849))

(declare-fun m!700863 () Bool)

(assert (=> b!751657 m!700863))

(assert (=> b!751641 m!700849))

(assert (=> b!751641 m!700849))

(declare-fun m!700865 () Bool)

(assert (=> b!751641 m!700865))

(declare-fun m!700867 () Bool)

(assert (=> b!751652 m!700867))

(declare-fun m!700869 () Bool)

(assert (=> b!751652 m!700869))

(assert (=> b!751652 m!700867))

(declare-fun m!700871 () Bool)

(assert (=> b!751652 m!700871))

(declare-fun m!700873 () Bool)

(assert (=> b!751652 m!700873))

(declare-fun m!700875 () Bool)

(assert (=> b!751652 m!700875))

(assert (=> b!751651 m!700871))

(declare-fun m!700877 () Bool)

(assert (=> b!751651 m!700877))

(declare-fun m!700879 () Bool)

(assert (=> b!751660 m!700879))

(declare-fun m!700881 () Bool)

(assert (=> b!751648 m!700881))

(declare-fun m!700883 () Bool)

(assert (=> b!751658 m!700883))

(declare-fun m!700885 () Bool)

(assert (=> b!751653 m!700885))

(assert (=> b!751646 m!700849))

(assert (=> b!751646 m!700849))

(declare-fun m!700887 () Bool)

(assert (=> b!751646 m!700887))

(declare-fun m!700889 () Bool)

(assert (=> b!751646 m!700889))

(declare-fun m!700891 () Bool)

(assert (=> b!751646 m!700891))

(declare-fun m!700893 () Bool)

(assert (=> b!751640 m!700893))

(declare-fun m!700895 () Bool)

(assert (=> b!751640 m!700895))

(assert (=> b!751643 m!700849))

(assert (=> b!751643 m!700849))

(assert (=> b!751643 m!700865))

(push 1)

