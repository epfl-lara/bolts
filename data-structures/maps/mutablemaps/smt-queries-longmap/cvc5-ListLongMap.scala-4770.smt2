; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65698 () Bool)

(assert start!65698)

(declare-fun res!508524 () Bool)

(declare-fun e!419897 () Bool)

(assert (=> start!65698 (=> (not res!508524) (not e!419897))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65698 (= res!508524 (validMask!0 mask!3328))))

(assert (=> start!65698 e!419897))

(assert (=> start!65698 true))

(declare-datatypes ((array!41824 0))(
  ( (array!41825 (arr!20022 (Array (_ BitVec 32) (_ BitVec 64))) (size!20443 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41824)

(declare-fun array_inv!15796 (array!41824) Bool)

(assert (=> start!65698 (array_inv!15796 a!3186)))

(declare-fun b!752743 () Bool)

(declare-datatypes ((Unit!25918 0))(
  ( (Unit!25919) )
))
(declare-fun e!419892 () Unit!25918)

(declare-fun Unit!25920 () Unit!25918)

(assert (=> b!752743 (= e!419892 Unit!25920)))

(assert (=> b!752743 false))

(declare-fun b!752744 () Bool)

(declare-fun e!419894 () Bool)

(assert (=> b!752744 (= e!419894 true)))

(declare-fun e!419888 () Bool)

(assert (=> b!752744 e!419888))

(declare-fun res!508523 () Bool)

(assert (=> b!752744 (=> (not res!508523) (not e!419888))))

(declare-fun lt!334894 () (_ BitVec 64))

(assert (=> b!752744 (= res!508523 (= lt!334894 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334897 () Unit!25918)

(assert (=> b!752744 (= lt!334897 e!419892)))

(declare-fun c!82499 () Bool)

(assert (=> b!752744 (= c!82499 (= lt!334894 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752745 () Bool)

(declare-fun res!508520 () Bool)

(declare-fun e!419893 () Bool)

(assert (=> b!752745 (=> (not res!508520) (not e!419893))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752745 (= res!508520 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20022 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752746 () Bool)

(declare-fun res!508517 () Bool)

(assert (=> b!752746 (=> (not res!508517) (not e!419897))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752746 (= res!508517 (validKeyInArray!0 k!2102))))

(declare-fun b!752747 () Bool)

(declare-fun e!419891 () Bool)

(declare-fun e!419898 () Bool)

(assert (=> b!752747 (= e!419891 (not e!419898))))

(declare-fun res!508512 () Bool)

(assert (=> b!752747 (=> res!508512 e!419898)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7629 0))(
  ( (MissingZero!7629 (index!32883 (_ BitVec 32))) (Found!7629 (index!32884 (_ BitVec 32))) (Intermediate!7629 (undefined!8441 Bool) (index!32885 (_ BitVec 32)) (x!63828 (_ BitVec 32))) (Undefined!7629) (MissingVacant!7629 (index!32886 (_ BitVec 32))) )
))
(declare-fun lt!334892 () SeekEntryResult!7629)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!752747 (= res!508512 (or (not (is-Intermediate!7629 lt!334892)) (bvslt x!1131 (x!63828 lt!334892)) (not (= x!1131 (x!63828 lt!334892))) (not (= index!1321 (index!32885 lt!334892)))))))

(declare-fun e!419896 () Bool)

(assert (=> b!752747 e!419896))

(declare-fun res!508507 () Bool)

(assert (=> b!752747 (=> (not res!508507) (not e!419896))))

(declare-fun lt!334895 () SeekEntryResult!7629)

(declare-fun lt!334889 () SeekEntryResult!7629)

(assert (=> b!752747 (= res!508507 (= lt!334895 lt!334889))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!752747 (= lt!334889 (Found!7629 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41824 (_ BitVec 32)) SeekEntryResult!7629)

(assert (=> b!752747 (= lt!334895 (seekEntryOrOpen!0 (select (arr!20022 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41824 (_ BitVec 32)) Bool)

(assert (=> b!752747 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334887 () Unit!25918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41824 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25918)

(assert (=> b!752747 (= lt!334887 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752748 () Bool)

(declare-fun res!508522 () Bool)

(assert (=> b!752748 (=> (not res!508522) (not e!419897))))

(declare-fun arrayContainsKey!0 (array!41824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752748 (= res!508522 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752749 () Bool)

(declare-fun Unit!25921 () Unit!25918)

(assert (=> b!752749 (= e!419892 Unit!25921)))

(declare-fun b!752750 () Bool)

(declare-fun res!508513 () Bool)

(declare-fun e!419895 () Bool)

(assert (=> b!752750 (=> (not res!508513) (not e!419895))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752750 (= res!508513 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20443 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20443 a!3186))))))

(declare-fun b!752751 () Bool)

(assert (=> b!752751 (= e!419897 e!419895)))

(declare-fun res!508508 () Bool)

(assert (=> b!752751 (=> (not res!508508) (not e!419895))))

(declare-fun lt!334896 () SeekEntryResult!7629)

(assert (=> b!752751 (= res!508508 (or (= lt!334896 (MissingZero!7629 i!1173)) (= lt!334896 (MissingVacant!7629 i!1173))))))

(assert (=> b!752751 (= lt!334896 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!752752 () Bool)

(declare-fun res!508510 () Bool)

(assert (=> b!752752 (=> (not res!508510) (not e!419895))))

(declare-datatypes ((List!14077 0))(
  ( (Nil!14074) (Cons!14073 (h!15145 (_ BitVec 64)) (t!20400 List!14077)) )
))
(declare-fun arrayNoDuplicates!0 (array!41824 (_ BitVec 32) List!14077) Bool)

(assert (=> b!752752 (= res!508510 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14074))))

(declare-fun b!752753 () Bool)

(declare-fun e!419890 () Bool)

(assert (=> b!752753 (= e!419898 e!419890)))

(declare-fun res!508521 () Bool)

(assert (=> b!752753 (=> res!508521 e!419890)))

(declare-fun lt!334898 () SeekEntryResult!7629)

(assert (=> b!752753 (= res!508521 (not (= lt!334898 lt!334889)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41824 (_ BitVec 32)) SeekEntryResult!7629)

(assert (=> b!752753 (= lt!334898 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20022 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752754 () Bool)

(assert (=> b!752754 (= e!419890 e!419894)))

(declare-fun res!508518 () Bool)

(assert (=> b!752754 (=> res!508518 e!419894)))

(declare-fun lt!334888 () (_ BitVec 64))

(assert (=> b!752754 (= res!508518 (= lt!334894 lt!334888))))

(assert (=> b!752754 (= lt!334894 (select (store (arr!20022 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752755 () Bool)

(declare-fun res!508514 () Bool)

(assert (=> b!752755 (=> (not res!508514) (not e!419897))))

(assert (=> b!752755 (= res!508514 (validKeyInArray!0 (select (arr!20022 a!3186) j!159)))))

(declare-fun e!419887 () Bool)

(declare-fun b!752756 () Bool)

(assert (=> b!752756 (= e!419887 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20022 a!3186) j!159) a!3186 mask!3328) (Found!7629 j!159)))))

(declare-fun b!752757 () Bool)

(declare-fun res!508509 () Bool)

(assert (=> b!752757 (=> (not res!508509) (not e!419893))))

(assert (=> b!752757 (= res!508509 e!419887)))

(declare-fun c!82500 () Bool)

(assert (=> b!752757 (= c!82500 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752758 () Bool)

(declare-fun res!508519 () Bool)

(assert (=> b!752758 (=> (not res!508519) (not e!419888))))

(declare-fun lt!334891 () array!41824)

(assert (=> b!752758 (= res!508519 (= (seekEntryOrOpen!0 lt!334888 lt!334891 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334888 lt!334891 mask!3328)))))

(declare-fun b!752759 () Bool)

(assert (=> b!752759 (= e!419896 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20022 a!3186) j!159) a!3186 mask!3328) lt!334889))))

(declare-fun b!752760 () Bool)

(assert (=> b!752760 (= e!419893 e!419891)))

(declare-fun res!508511 () Bool)

(assert (=> b!752760 (=> (not res!508511) (not e!419891))))

(declare-fun lt!334890 () SeekEntryResult!7629)

(assert (=> b!752760 (= res!508511 (= lt!334890 lt!334892))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41824 (_ BitVec 32)) SeekEntryResult!7629)

(assert (=> b!752760 (= lt!334892 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334888 lt!334891 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752760 (= lt!334890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334888 mask!3328) lt!334888 lt!334891 mask!3328))))

(assert (=> b!752760 (= lt!334888 (select (store (arr!20022 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752760 (= lt!334891 (array!41825 (store (arr!20022 a!3186) i!1173 k!2102) (size!20443 a!3186)))))

(declare-fun b!752761 () Bool)

(declare-fun lt!334893 () SeekEntryResult!7629)

(assert (=> b!752761 (= e!419887 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20022 a!3186) j!159) a!3186 mask!3328) lt!334893))))

(declare-fun b!752762 () Bool)

(declare-fun res!508516 () Bool)

(assert (=> b!752762 (=> (not res!508516) (not e!419897))))

(assert (=> b!752762 (= res!508516 (and (= (size!20443 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20443 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20443 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752763 () Bool)

(declare-fun res!508515 () Bool)

(assert (=> b!752763 (=> (not res!508515) (not e!419895))))

(assert (=> b!752763 (= res!508515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752764 () Bool)

(assert (=> b!752764 (= e!419895 e!419893)))

(declare-fun res!508506 () Bool)

(assert (=> b!752764 (=> (not res!508506) (not e!419893))))

(assert (=> b!752764 (= res!508506 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20022 a!3186) j!159) mask!3328) (select (arr!20022 a!3186) j!159) a!3186 mask!3328) lt!334893))))

(assert (=> b!752764 (= lt!334893 (Intermediate!7629 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752765 () Bool)

(assert (=> b!752765 (= e!419888 (= lt!334895 lt!334898))))

(assert (= (and start!65698 res!508524) b!752762))

(assert (= (and b!752762 res!508516) b!752755))

(assert (= (and b!752755 res!508514) b!752746))

(assert (= (and b!752746 res!508517) b!752748))

(assert (= (and b!752748 res!508522) b!752751))

(assert (= (and b!752751 res!508508) b!752763))

(assert (= (and b!752763 res!508515) b!752752))

(assert (= (and b!752752 res!508510) b!752750))

(assert (= (and b!752750 res!508513) b!752764))

(assert (= (and b!752764 res!508506) b!752745))

(assert (= (and b!752745 res!508520) b!752757))

(assert (= (and b!752757 c!82500) b!752761))

(assert (= (and b!752757 (not c!82500)) b!752756))

(assert (= (and b!752757 res!508509) b!752760))

(assert (= (and b!752760 res!508511) b!752747))

(assert (= (and b!752747 res!508507) b!752759))

(assert (= (and b!752747 (not res!508512)) b!752753))

(assert (= (and b!752753 (not res!508521)) b!752754))

(assert (= (and b!752754 (not res!508518)) b!752744))

(assert (= (and b!752744 c!82499) b!752743))

(assert (= (and b!752744 (not c!82499)) b!752749))

(assert (= (and b!752744 res!508523) b!752758))

(assert (= (and b!752758 res!508519) b!752765))

(declare-fun m!701677 () Bool)

(assert (=> b!752745 m!701677))

(declare-fun m!701679 () Bool)

(assert (=> b!752751 m!701679))

(declare-fun m!701681 () Bool)

(assert (=> b!752760 m!701681))

(declare-fun m!701683 () Bool)

(assert (=> b!752760 m!701683))

(declare-fun m!701685 () Bool)

(assert (=> b!752760 m!701685))

(declare-fun m!701687 () Bool)

(assert (=> b!752760 m!701687))

(assert (=> b!752760 m!701685))

(declare-fun m!701689 () Bool)

(assert (=> b!752760 m!701689))

(assert (=> b!752754 m!701689))

(declare-fun m!701691 () Bool)

(assert (=> b!752754 m!701691))

(declare-fun m!701693 () Bool)

(assert (=> b!752761 m!701693))

(assert (=> b!752761 m!701693))

(declare-fun m!701695 () Bool)

(assert (=> b!752761 m!701695))

(declare-fun m!701697 () Bool)

(assert (=> b!752748 m!701697))

(assert (=> b!752756 m!701693))

(assert (=> b!752756 m!701693))

(declare-fun m!701699 () Bool)

(assert (=> b!752756 m!701699))

(declare-fun m!701701 () Bool)

(assert (=> b!752758 m!701701))

(declare-fun m!701703 () Bool)

(assert (=> b!752758 m!701703))

(declare-fun m!701705 () Bool)

(assert (=> b!752752 m!701705))

(assert (=> b!752747 m!701693))

(assert (=> b!752747 m!701693))

(declare-fun m!701707 () Bool)

(assert (=> b!752747 m!701707))

(declare-fun m!701709 () Bool)

(assert (=> b!752747 m!701709))

(declare-fun m!701711 () Bool)

(assert (=> b!752747 m!701711))

(assert (=> b!752755 m!701693))

(assert (=> b!752755 m!701693))

(declare-fun m!701713 () Bool)

(assert (=> b!752755 m!701713))

(assert (=> b!752764 m!701693))

(assert (=> b!752764 m!701693))

(declare-fun m!701715 () Bool)

(assert (=> b!752764 m!701715))

(assert (=> b!752764 m!701715))

(assert (=> b!752764 m!701693))

(declare-fun m!701717 () Bool)

(assert (=> b!752764 m!701717))

(declare-fun m!701719 () Bool)

(assert (=> b!752746 m!701719))

(assert (=> b!752759 m!701693))

(assert (=> b!752759 m!701693))

(declare-fun m!701721 () Bool)

(assert (=> b!752759 m!701721))

(declare-fun m!701723 () Bool)

(assert (=> start!65698 m!701723))

(declare-fun m!701725 () Bool)

(assert (=> start!65698 m!701725))

(declare-fun m!701727 () Bool)

(assert (=> b!752763 m!701727))

(assert (=> b!752753 m!701693))

(assert (=> b!752753 m!701693))

(assert (=> b!752753 m!701699))

(push 1)

