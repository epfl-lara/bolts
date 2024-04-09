; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67912 () Bool)

(assert start!67912)

(declare-fun b!789618 () Bool)

(declare-datatypes ((Unit!27358 0))(
  ( (Unit!27359) )
))
(declare-fun e!438898 () Unit!27358)

(declare-fun Unit!27360 () Unit!27358)

(assert (=> b!789618 (= e!438898 Unit!27360)))

(declare-fun b!789619 () Bool)

(declare-fun res!535016 () Bool)

(declare-fun e!438897 () Bool)

(assert (=> b!789619 (=> (not res!535016) (not e!438897))))

(declare-datatypes ((array!42844 0))(
  ( (array!42845 (arr!20505 (Array (_ BitVec 32) (_ BitVec 64))) (size!20926 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42844)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789619 (= res!535016 (validKeyInArray!0 (select (arr!20505 a!3186) j!159)))))

(declare-fun b!789620 () Bool)

(declare-fun res!535005 () Bool)

(declare-fun e!438900 () Bool)

(assert (=> b!789620 (=> (not res!535005) (not e!438900))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42844 (_ BitVec 32)) Bool)

(assert (=> b!789620 (= res!535005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!535020 () Bool)

(assert (=> start!67912 (=> (not res!535020) (not e!438897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67912 (= res!535020 (validMask!0 mask!3328))))

(assert (=> start!67912 e!438897))

(assert (=> start!67912 true))

(declare-fun array_inv!16279 (array!42844) Bool)

(assert (=> start!67912 (array_inv!16279 a!3186)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8112 0))(
  ( (MissingZero!8112 (index!34815 (_ BitVec 32))) (Found!8112 (index!34816 (_ BitVec 32))) (Intermediate!8112 (undefined!8924 Bool) (index!34817 (_ BitVec 32)) (x!65782 (_ BitVec 32))) (Undefined!8112) (MissingVacant!8112 (index!34818 (_ BitVec 32))) )
))
(declare-fun lt!352412 () SeekEntryResult!8112)

(declare-fun e!438904 () Bool)

(declare-fun b!789621 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42844 (_ BitVec 32)) SeekEntryResult!8112)

(assert (=> b!789621 (= e!438904 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20505 a!3186) j!159) a!3186 mask!3328) lt!352412))))

(declare-fun b!789622 () Bool)

(declare-fun e!438893 () Bool)

(declare-fun e!438901 () Bool)

(assert (=> b!789622 (= e!438893 (not e!438901))))

(declare-fun res!535012 () Bool)

(assert (=> b!789622 (=> res!535012 e!438901)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!352408 () SeekEntryResult!8112)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!789622 (= res!535012 (or (not (is-Intermediate!8112 lt!352408)) (bvslt x!1131 (x!65782 lt!352408)) (not (= x!1131 (x!65782 lt!352408))) (not (= index!1321 (index!34817 lt!352408)))))))

(assert (=> b!789622 e!438904))

(declare-fun res!535014 () Bool)

(assert (=> b!789622 (=> (not res!535014) (not e!438904))))

(declare-fun lt!352403 () SeekEntryResult!8112)

(assert (=> b!789622 (= res!535014 (= lt!352403 lt!352412))))

(assert (=> b!789622 (= lt!352412 (Found!8112 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42844 (_ BitVec 32)) SeekEntryResult!8112)

(assert (=> b!789622 (= lt!352403 (seekEntryOrOpen!0 (select (arr!20505 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!789622 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352413 () Unit!27358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27358)

(assert (=> b!789622 (= lt!352413 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789623 () Bool)

(declare-fun e!438895 () Bool)

(declare-fun e!438899 () Bool)

(assert (=> b!789623 (= e!438895 e!438899)))

(declare-fun res!535010 () Bool)

(assert (=> b!789623 (=> res!535010 e!438899)))

(declare-fun lt!352417 () (_ BitVec 64))

(declare-fun lt!352416 () (_ BitVec 64))

(assert (=> b!789623 (= res!535010 (= lt!352417 lt!352416))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!789623 (= lt!352417 (select (store (arr!20505 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!789624 () Bool)

(declare-fun res!535019 () Bool)

(assert (=> b!789624 (=> (not res!535019) (not e!438897))))

(assert (=> b!789624 (= res!535019 (and (= (size!20926 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20926 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20926 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789625 () Bool)

(declare-fun e!438902 () Bool)

(assert (=> b!789625 (= e!438899 e!438902)))

(declare-fun res!535009 () Bool)

(assert (=> b!789625 (=> res!535009 e!438902)))

(assert (=> b!789625 (= res!535009 (or (not (= (select (arr!20505 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352407 () SeekEntryResult!8112)

(declare-fun lt!352409 () SeekEntryResult!8112)

(declare-fun lt!352404 () SeekEntryResult!8112)

(assert (=> b!789625 (and (= lt!352404 lt!352409) (= lt!352403 lt!352407))))

(declare-fun lt!352410 () array!42844)

(assert (=> b!789625 (= lt!352409 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352416 lt!352410 mask!3328))))

(assert (=> b!789625 (= lt!352404 (seekEntryOrOpen!0 lt!352416 lt!352410 mask!3328))))

(assert (=> b!789625 (= lt!352417 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352405 () Unit!27358)

(assert (=> b!789625 (= lt!352405 e!438898)))

(declare-fun c!87717 () Bool)

(assert (=> b!789625 (= c!87717 (= lt!352417 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789626 () Bool)

(declare-fun res!535006 () Bool)

(declare-fun e!438894 () Bool)

(assert (=> b!789626 (=> (not res!535006) (not e!438894))))

(declare-fun e!438896 () Bool)

(assert (=> b!789626 (= res!535006 e!438896)))

(declare-fun c!87716 () Bool)

(assert (=> b!789626 (= c!87716 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789627 () Bool)

(assert (=> b!789627 (= e!438896 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20505 a!3186) j!159) a!3186 mask!3328) (Found!8112 j!159)))))

(declare-fun b!789628 () Bool)

(assert (=> b!789628 (= e!438900 e!438894)))

(declare-fun res!535004 () Bool)

(assert (=> b!789628 (=> (not res!535004) (not e!438894))))

(declare-fun lt!352415 () SeekEntryResult!8112)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42844 (_ BitVec 32)) SeekEntryResult!8112)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789628 (= res!535004 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20505 a!3186) j!159) mask!3328) (select (arr!20505 a!3186) j!159) a!3186 mask!3328) lt!352415))))

(assert (=> b!789628 (= lt!352415 (Intermediate!8112 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789629 () Bool)

(declare-fun res!535007 () Bool)

(assert (=> b!789629 (=> (not res!535007) (not e!438894))))

(assert (=> b!789629 (= res!535007 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20505 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789630 () Bool)

(assert (=> b!789630 (= e!438894 e!438893)))

(declare-fun res!535011 () Bool)

(assert (=> b!789630 (=> (not res!535011) (not e!438893))))

(declare-fun lt!352406 () SeekEntryResult!8112)

(assert (=> b!789630 (= res!535011 (= lt!352406 lt!352408))))

(assert (=> b!789630 (= lt!352408 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352416 lt!352410 mask!3328))))

(assert (=> b!789630 (= lt!352406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352416 mask!3328) lt!352416 lt!352410 mask!3328))))

(assert (=> b!789630 (= lt!352416 (select (store (arr!20505 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789630 (= lt!352410 (array!42845 (store (arr!20505 a!3186) i!1173 k!2102) (size!20926 a!3186)))))

(declare-fun b!789631 () Bool)

(declare-fun res!535008 () Bool)

(assert (=> b!789631 (=> (not res!535008) (not e!438897))))

(declare-fun arrayContainsKey!0 (array!42844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789631 (= res!535008 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789632 () Bool)

(declare-fun res!535018 () Bool)

(assert (=> b!789632 (=> (not res!535018) (not e!438900))))

(declare-datatypes ((List!14560 0))(
  ( (Nil!14557) (Cons!14556 (h!15682 (_ BitVec 64)) (t!20883 List!14560)) )
))
(declare-fun arrayNoDuplicates!0 (array!42844 (_ BitVec 32) List!14560) Bool)

(assert (=> b!789632 (= res!535018 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14557))))

(declare-fun b!789633 () Bool)

(assert (=> b!789633 (= e!438902 true)))

(assert (=> b!789633 (= lt!352409 lt!352407)))

(declare-fun lt!352411 () Unit!27358)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42844 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27358)

(assert (=> b!789633 (= lt!352411 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789634 () Bool)

(assert (=> b!789634 (= e!438897 e!438900)))

(declare-fun res!535017 () Bool)

(assert (=> b!789634 (=> (not res!535017) (not e!438900))))

(declare-fun lt!352414 () SeekEntryResult!8112)

(assert (=> b!789634 (= res!535017 (or (= lt!352414 (MissingZero!8112 i!1173)) (= lt!352414 (MissingVacant!8112 i!1173))))))

(assert (=> b!789634 (= lt!352414 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789635 () Bool)

(declare-fun res!535015 () Bool)

(assert (=> b!789635 (=> (not res!535015) (not e!438900))))

(assert (=> b!789635 (= res!535015 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20926 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20926 a!3186))))))

(declare-fun b!789636 () Bool)

(declare-fun res!535021 () Bool)

(assert (=> b!789636 (=> (not res!535021) (not e!438897))))

(assert (=> b!789636 (= res!535021 (validKeyInArray!0 k!2102))))

(declare-fun b!789637 () Bool)

(assert (=> b!789637 (= e!438901 e!438895)))

(declare-fun res!535013 () Bool)

(assert (=> b!789637 (=> res!535013 e!438895)))

(assert (=> b!789637 (= res!535013 (not (= lt!352407 lt!352412)))))

(assert (=> b!789637 (= lt!352407 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20505 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789638 () Bool)

(assert (=> b!789638 (= e!438896 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20505 a!3186) j!159) a!3186 mask!3328) lt!352415))))

(declare-fun b!789639 () Bool)

(declare-fun Unit!27361 () Unit!27358)

(assert (=> b!789639 (= e!438898 Unit!27361)))

(assert (=> b!789639 false))

(assert (= (and start!67912 res!535020) b!789624))

(assert (= (and b!789624 res!535019) b!789619))

(assert (= (and b!789619 res!535016) b!789636))

(assert (= (and b!789636 res!535021) b!789631))

(assert (= (and b!789631 res!535008) b!789634))

(assert (= (and b!789634 res!535017) b!789620))

(assert (= (and b!789620 res!535005) b!789632))

(assert (= (and b!789632 res!535018) b!789635))

(assert (= (and b!789635 res!535015) b!789628))

(assert (= (and b!789628 res!535004) b!789629))

(assert (= (and b!789629 res!535007) b!789626))

(assert (= (and b!789626 c!87716) b!789638))

(assert (= (and b!789626 (not c!87716)) b!789627))

(assert (= (and b!789626 res!535006) b!789630))

(assert (= (and b!789630 res!535011) b!789622))

(assert (= (and b!789622 res!535014) b!789621))

(assert (= (and b!789622 (not res!535012)) b!789637))

(assert (= (and b!789637 (not res!535013)) b!789623))

(assert (= (and b!789623 (not res!535010)) b!789625))

(assert (= (and b!789625 c!87717) b!789639))

(assert (= (and b!789625 (not c!87717)) b!789618))

(assert (= (and b!789625 (not res!535009)) b!789633))

(declare-fun m!730717 () Bool)

(assert (=> b!789633 m!730717))

(declare-fun m!730719 () Bool)

(assert (=> b!789634 m!730719))

(declare-fun m!730721 () Bool)

(assert (=> start!67912 m!730721))

(declare-fun m!730723 () Bool)

(assert (=> start!67912 m!730723))

(declare-fun m!730725 () Bool)

(assert (=> b!789622 m!730725))

(assert (=> b!789622 m!730725))

(declare-fun m!730727 () Bool)

(assert (=> b!789622 m!730727))

(declare-fun m!730729 () Bool)

(assert (=> b!789622 m!730729))

(declare-fun m!730731 () Bool)

(assert (=> b!789622 m!730731))

(assert (=> b!789619 m!730725))

(assert (=> b!789619 m!730725))

(declare-fun m!730733 () Bool)

(assert (=> b!789619 m!730733))

(assert (=> b!789621 m!730725))

(assert (=> b!789621 m!730725))

(declare-fun m!730735 () Bool)

(assert (=> b!789621 m!730735))

(declare-fun m!730737 () Bool)

(assert (=> b!789636 m!730737))

(assert (=> b!789638 m!730725))

(assert (=> b!789638 m!730725))

(declare-fun m!730739 () Bool)

(assert (=> b!789638 m!730739))

(declare-fun m!730741 () Bool)

(assert (=> b!789631 m!730741))

(assert (=> b!789628 m!730725))

(assert (=> b!789628 m!730725))

(declare-fun m!730743 () Bool)

(assert (=> b!789628 m!730743))

(assert (=> b!789628 m!730743))

(assert (=> b!789628 m!730725))

(declare-fun m!730745 () Bool)

(assert (=> b!789628 m!730745))

(declare-fun m!730747 () Bool)

(assert (=> b!789620 m!730747))

(declare-fun m!730749 () Bool)

(assert (=> b!789632 m!730749))

(declare-fun m!730751 () Bool)

(assert (=> b!789623 m!730751))

(declare-fun m!730753 () Bool)

(assert (=> b!789623 m!730753))

(assert (=> b!789637 m!730725))

(assert (=> b!789637 m!730725))

(declare-fun m!730755 () Bool)

(assert (=> b!789637 m!730755))

(assert (=> b!789627 m!730725))

(assert (=> b!789627 m!730725))

(assert (=> b!789627 m!730755))

(declare-fun m!730757 () Bool)

(assert (=> b!789630 m!730757))

(declare-fun m!730759 () Bool)

(assert (=> b!789630 m!730759))

(declare-fun m!730761 () Bool)

(assert (=> b!789630 m!730761))

(assert (=> b!789630 m!730759))

(assert (=> b!789630 m!730751))

(declare-fun m!730763 () Bool)

(assert (=> b!789630 m!730763))

(declare-fun m!730765 () Bool)

(assert (=> b!789629 m!730765))

(declare-fun m!730767 () Bool)

(assert (=> b!789625 m!730767))

(declare-fun m!730769 () Bool)

(assert (=> b!789625 m!730769))

(declare-fun m!730771 () Bool)

(assert (=> b!789625 m!730771))

(push 1)

