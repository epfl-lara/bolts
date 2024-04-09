; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65700 () Bool)

(assert start!65700)

(declare-fun b!752812 () Bool)

(declare-fun res!508563 () Bool)

(declare-fun e!419933 () Bool)

(assert (=> b!752812 (=> (not res!508563) (not e!419933))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41826 0))(
  ( (array!41827 (arr!20023 (Array (_ BitVec 32) (_ BitVec 64))) (size!20444 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41826)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752812 (= res!508563 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20023 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752814 () Bool)

(declare-fun res!508576 () Bool)

(declare-fun e!419931 () Bool)

(assert (=> b!752814 (=> (not res!508576) (not e!419931))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752814 (= res!508576 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20444 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20444 a!3186))))))

(declare-fun b!752815 () Bool)

(declare-fun e!419934 () Bool)

(assert (=> b!752815 (= e!419933 e!419934)))

(declare-fun res!508577 () Bool)

(assert (=> b!752815 (=> (not res!508577) (not e!419934))))

(declare-datatypes ((SeekEntryResult!7630 0))(
  ( (MissingZero!7630 (index!32887 (_ BitVec 32))) (Found!7630 (index!32888 (_ BitVec 32))) (Intermediate!7630 (undefined!8442 Bool) (index!32889 (_ BitVec 32)) (x!63829 (_ BitVec 32))) (Undefined!7630) (MissingVacant!7630 (index!32890 (_ BitVec 32))) )
))
(declare-fun lt!334928 () SeekEntryResult!7630)

(declare-fun lt!334927 () SeekEntryResult!7630)

(assert (=> b!752815 (= res!508577 (= lt!334928 lt!334927))))

(declare-fun lt!334923 () array!41826)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!334924 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41826 (_ BitVec 32)) SeekEntryResult!7630)

(assert (=> b!752815 (= lt!334927 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334924 lt!334923 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752815 (= lt!334928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334924 mask!3328) lt!334924 lt!334923 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!752815 (= lt!334924 (select (store (arr!20023 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!752815 (= lt!334923 (array!41827 (store (arr!20023 a!3186) i!1173 k0!2102) (size!20444 a!3186)))))

(declare-fun b!752816 () Bool)

(declare-fun res!508574 () Bool)

(declare-fun e!419927 () Bool)

(assert (=> b!752816 (=> (not res!508574) (not e!419927))))

(assert (=> b!752816 (= res!508574 (and (= (size!20444 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20444 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20444 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!419930 () Bool)

(declare-fun b!752817 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41826 (_ BitVec 32)) SeekEntryResult!7630)

(assert (=> b!752817 (= e!419930 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20023 a!3186) j!159) a!3186 mask!3328) (Found!7630 j!159)))))

(declare-fun b!752818 () Bool)

(assert (=> b!752818 (= e!419931 e!419933)))

(declare-fun res!508565 () Bool)

(assert (=> b!752818 (=> (not res!508565) (not e!419933))))

(declare-fun lt!334929 () SeekEntryResult!7630)

(assert (=> b!752818 (= res!508565 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20023 a!3186) j!159) mask!3328) (select (arr!20023 a!3186) j!159) a!3186 mask!3328) lt!334929))))

(assert (=> b!752818 (= lt!334929 (Intermediate!7630 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752819 () Bool)

(declare-fun e!419926 () Bool)

(assert (=> b!752819 (= e!419934 (not e!419926))))

(declare-fun res!508579 () Bool)

(assert (=> b!752819 (=> res!508579 e!419926)))

(get-info :version)

(assert (=> b!752819 (= res!508579 (or (not ((_ is Intermediate!7630) lt!334927)) (bvslt x!1131 (x!63829 lt!334927)) (not (= x!1131 (x!63829 lt!334927))) (not (= index!1321 (index!32889 lt!334927)))))))

(declare-fun e!419925 () Bool)

(assert (=> b!752819 e!419925))

(declare-fun res!508568 () Bool)

(assert (=> b!752819 (=> (not res!508568) (not e!419925))))

(declare-fun lt!334932 () SeekEntryResult!7630)

(declare-fun lt!334925 () SeekEntryResult!7630)

(assert (=> b!752819 (= res!508568 (= lt!334932 lt!334925))))

(assert (=> b!752819 (= lt!334925 (Found!7630 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41826 (_ BitVec 32)) SeekEntryResult!7630)

(assert (=> b!752819 (= lt!334932 (seekEntryOrOpen!0 (select (arr!20023 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41826 (_ BitVec 32)) Bool)

(assert (=> b!752819 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25922 0))(
  ( (Unit!25923) )
))
(declare-fun lt!334930 () Unit!25922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41826 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25922)

(assert (=> b!752819 (= lt!334930 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752820 () Bool)

(declare-fun res!508578 () Bool)

(assert (=> b!752820 (=> (not res!508578) (not e!419927))))

(declare-fun arrayContainsKey!0 (array!41826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752820 (= res!508578 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752821 () Bool)

(declare-fun e!419924 () Bool)

(declare-fun e!419932 () Bool)

(assert (=> b!752821 (= e!419924 e!419932)))

(declare-fun res!508580 () Bool)

(assert (=> b!752821 (=> res!508580 e!419932)))

(declare-fun lt!334926 () (_ BitVec 64))

(assert (=> b!752821 (= res!508580 (= lt!334926 lt!334924))))

(assert (=> b!752821 (= lt!334926 (select (store (arr!20023 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!752822 () Bool)

(assert (=> b!752822 (= e!419930 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20023 a!3186) j!159) a!3186 mask!3328) lt!334929))))

(declare-fun b!752823 () Bool)

(declare-fun res!508575 () Bool)

(assert (=> b!752823 (=> (not res!508575) (not e!419931))))

(assert (=> b!752823 (= res!508575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752813 () Bool)

(declare-fun res!508573 () Bool)

(assert (=> b!752813 (=> (not res!508573) (not e!419933))))

(assert (=> b!752813 (= res!508573 e!419930)))

(declare-fun c!82505 () Bool)

(assert (=> b!752813 (= c!82505 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!508571 () Bool)

(assert (=> start!65700 (=> (not res!508571) (not e!419927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65700 (= res!508571 (validMask!0 mask!3328))))

(assert (=> start!65700 e!419927))

(assert (=> start!65700 true))

(declare-fun array_inv!15797 (array!41826) Bool)

(assert (=> start!65700 (array_inv!15797 a!3186)))

(declare-fun b!752824 () Bool)

(assert (=> b!752824 (= e!419927 e!419931)))

(declare-fun res!508569 () Bool)

(assert (=> b!752824 (=> (not res!508569) (not e!419931))))

(declare-fun lt!334933 () SeekEntryResult!7630)

(assert (=> b!752824 (= res!508569 (or (= lt!334933 (MissingZero!7630 i!1173)) (= lt!334933 (MissingVacant!7630 i!1173))))))

(assert (=> b!752824 (= lt!334933 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!752825 () Bool)

(assert (=> b!752825 (= e!419932 true)))

(declare-fun e!419923 () Bool)

(assert (=> b!752825 e!419923))

(declare-fun res!508564 () Bool)

(assert (=> b!752825 (=> (not res!508564) (not e!419923))))

(assert (=> b!752825 (= res!508564 (= lt!334926 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334931 () Unit!25922)

(declare-fun e!419928 () Unit!25922)

(assert (=> b!752825 (= lt!334931 e!419928)))

(declare-fun c!82506 () Bool)

(assert (=> b!752825 (= c!82506 (= lt!334926 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752826 () Bool)

(declare-fun res!508570 () Bool)

(assert (=> b!752826 (=> (not res!508570) (not e!419931))))

(declare-datatypes ((List!14078 0))(
  ( (Nil!14075) (Cons!14074 (h!15146 (_ BitVec 64)) (t!20401 List!14078)) )
))
(declare-fun arrayNoDuplicates!0 (array!41826 (_ BitVec 32) List!14078) Bool)

(assert (=> b!752826 (= res!508570 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14075))))

(declare-fun b!752827 () Bool)

(assert (=> b!752827 (= e!419925 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20023 a!3186) j!159) a!3186 mask!3328) lt!334925))))

(declare-fun b!752828 () Bool)

(declare-fun Unit!25924 () Unit!25922)

(assert (=> b!752828 (= e!419928 Unit!25924)))

(assert (=> b!752828 false))

(declare-fun b!752829 () Bool)

(declare-fun res!508567 () Bool)

(assert (=> b!752829 (=> (not res!508567) (not e!419927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752829 (= res!508567 (validKeyInArray!0 k0!2102))))

(declare-fun b!752830 () Bool)

(declare-fun Unit!25925 () Unit!25922)

(assert (=> b!752830 (= e!419928 Unit!25925)))

(declare-fun b!752831 () Bool)

(declare-fun res!508566 () Bool)

(assert (=> b!752831 (=> (not res!508566) (not e!419923))))

(assert (=> b!752831 (= res!508566 (= (seekEntryOrOpen!0 lt!334924 lt!334923 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334924 lt!334923 mask!3328)))))

(declare-fun b!752832 () Bool)

(assert (=> b!752832 (= e!419926 e!419924)))

(declare-fun res!508572 () Bool)

(assert (=> b!752832 (=> res!508572 e!419924)))

(declare-fun lt!334934 () SeekEntryResult!7630)

(assert (=> b!752832 (= res!508572 (not (= lt!334934 lt!334925)))))

(assert (=> b!752832 (= lt!334934 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20023 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752833 () Bool)

(assert (=> b!752833 (= e!419923 (= lt!334932 lt!334934))))

(declare-fun b!752834 () Bool)

(declare-fun res!508581 () Bool)

(assert (=> b!752834 (=> (not res!508581) (not e!419927))))

(assert (=> b!752834 (= res!508581 (validKeyInArray!0 (select (arr!20023 a!3186) j!159)))))

(assert (= (and start!65700 res!508571) b!752816))

(assert (= (and b!752816 res!508574) b!752834))

(assert (= (and b!752834 res!508581) b!752829))

(assert (= (and b!752829 res!508567) b!752820))

(assert (= (and b!752820 res!508578) b!752824))

(assert (= (and b!752824 res!508569) b!752823))

(assert (= (and b!752823 res!508575) b!752826))

(assert (= (and b!752826 res!508570) b!752814))

(assert (= (and b!752814 res!508576) b!752818))

(assert (= (and b!752818 res!508565) b!752812))

(assert (= (and b!752812 res!508563) b!752813))

(assert (= (and b!752813 c!82505) b!752822))

(assert (= (and b!752813 (not c!82505)) b!752817))

(assert (= (and b!752813 res!508573) b!752815))

(assert (= (and b!752815 res!508577) b!752819))

(assert (= (and b!752819 res!508568) b!752827))

(assert (= (and b!752819 (not res!508579)) b!752832))

(assert (= (and b!752832 (not res!508572)) b!752821))

(assert (= (and b!752821 (not res!508580)) b!752825))

(assert (= (and b!752825 c!82506) b!752828))

(assert (= (and b!752825 (not c!82506)) b!752830))

(assert (= (and b!752825 res!508564) b!752831))

(assert (= (and b!752831 res!508566) b!752833))

(declare-fun m!701729 () Bool)

(assert (=> b!752817 m!701729))

(assert (=> b!752817 m!701729))

(declare-fun m!701731 () Bool)

(assert (=> b!752817 m!701731))

(declare-fun m!701733 () Bool)

(assert (=> b!752826 m!701733))

(declare-fun m!701735 () Bool)

(assert (=> b!752812 m!701735))

(declare-fun m!701737 () Bool)

(assert (=> b!752824 m!701737))

(declare-fun m!701739 () Bool)

(assert (=> start!65700 m!701739))

(declare-fun m!701741 () Bool)

(assert (=> start!65700 m!701741))

(declare-fun m!701743 () Bool)

(assert (=> b!752829 m!701743))

(assert (=> b!752819 m!701729))

(assert (=> b!752819 m!701729))

(declare-fun m!701745 () Bool)

(assert (=> b!752819 m!701745))

(declare-fun m!701747 () Bool)

(assert (=> b!752819 m!701747))

(declare-fun m!701749 () Bool)

(assert (=> b!752819 m!701749))

(assert (=> b!752834 m!701729))

(assert (=> b!752834 m!701729))

(declare-fun m!701751 () Bool)

(assert (=> b!752834 m!701751))

(assert (=> b!752822 m!701729))

(assert (=> b!752822 m!701729))

(declare-fun m!701753 () Bool)

(assert (=> b!752822 m!701753))

(assert (=> b!752818 m!701729))

(assert (=> b!752818 m!701729))

(declare-fun m!701755 () Bool)

(assert (=> b!752818 m!701755))

(assert (=> b!752818 m!701755))

(assert (=> b!752818 m!701729))

(declare-fun m!701757 () Bool)

(assert (=> b!752818 m!701757))

(declare-fun m!701759 () Bool)

(assert (=> b!752821 m!701759))

(declare-fun m!701761 () Bool)

(assert (=> b!752821 m!701761))

(declare-fun m!701763 () Bool)

(assert (=> b!752823 m!701763))

(declare-fun m!701765 () Bool)

(assert (=> b!752815 m!701765))

(declare-fun m!701767 () Bool)

(assert (=> b!752815 m!701767))

(declare-fun m!701769 () Bool)

(assert (=> b!752815 m!701769))

(declare-fun m!701771 () Bool)

(assert (=> b!752815 m!701771))

(assert (=> b!752815 m!701767))

(assert (=> b!752815 m!701759))

(declare-fun m!701773 () Bool)

(assert (=> b!752831 m!701773))

(declare-fun m!701775 () Bool)

(assert (=> b!752831 m!701775))

(assert (=> b!752832 m!701729))

(assert (=> b!752832 m!701729))

(assert (=> b!752832 m!701731))

(declare-fun m!701777 () Bool)

(assert (=> b!752820 m!701777))

(assert (=> b!752827 m!701729))

(assert (=> b!752827 m!701729))

(declare-fun m!701779 () Bool)

(assert (=> b!752827 m!701779))

(check-sat (not b!752834) (not b!752823) (not b!752820) (not b!752831) (not b!752815) (not b!752829) (not b!752832) (not b!752822) (not b!752827) (not b!752824) (not b!752819) (not b!752826) (not b!752817) (not start!65700) (not b!752818))
(check-sat)
