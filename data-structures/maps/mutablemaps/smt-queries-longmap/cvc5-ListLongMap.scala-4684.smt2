; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65182 () Bool)

(assert start!65182)

(declare-fun b!736554 () Bool)

(declare-fun e!412051 () Bool)

(declare-fun e!412056 () Bool)

(assert (=> b!736554 (= e!412051 e!412056)))

(declare-fun res!495122 () Bool)

(assert (=> b!736554 (=> (not res!495122) (not e!412056))))

(declare-datatypes ((array!41308 0))(
  ( (array!41309 (arr!19764 (Array (_ BitVec 32) (_ BitVec 64))) (size!20185 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41308)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7371 0))(
  ( (MissingZero!7371 (index!31851 (_ BitVec 32))) (Found!7371 (index!31852 (_ BitVec 32))) (Intermediate!7371 (undefined!8183 Bool) (index!31853 (_ BitVec 32)) (x!62882 (_ BitVec 32))) (Undefined!7371) (MissingVacant!7371 (index!31854 (_ BitVec 32))) )
))
(declare-fun lt!326714 () SeekEntryResult!7371)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41308 (_ BitVec 32)) SeekEntryResult!7371)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736554 (= res!495122 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19764 a!3186) j!159) mask!3328) (select (arr!19764 a!3186) j!159) a!3186 mask!3328) lt!326714))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736554 (= lt!326714 (Intermediate!7371 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736555 () Bool)

(declare-fun res!495132 () Bool)

(assert (=> b!736555 (=> (not res!495132) (not e!412051))))

(declare-datatypes ((List!13819 0))(
  ( (Nil!13816) (Cons!13815 (h!14887 (_ BitVec 64)) (t!20142 List!13819)) )
))
(declare-fun arrayNoDuplicates!0 (array!41308 (_ BitVec 32) List!13819) Bool)

(assert (=> b!736555 (= res!495132 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13816))))

(declare-fun lt!326711 () (_ BitVec 32))

(declare-fun b!736556 () Bool)

(declare-fun e!412052 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!736556 (= e!412052 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326711 (select (arr!19764 a!3186) j!159) a!3186 mask!3328) lt!326714)))))

(declare-fun b!736558 () Bool)

(declare-fun res!495127 () Bool)

(assert (=> b!736558 (=> (not res!495127) (not e!412051))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!736558 (= res!495127 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20185 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20185 a!3186))))))

(declare-fun b!736559 () Bool)

(declare-fun res!495128 () Bool)

(assert (=> b!736559 (=> (not res!495128) (not e!412051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41308 (_ BitVec 32)) Bool)

(assert (=> b!736559 (= res!495128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736560 () Bool)

(declare-fun e!412048 () Bool)

(assert (=> b!736560 (= e!412048 e!412051)))

(declare-fun res!495138 () Bool)

(assert (=> b!736560 (=> (not res!495138) (not e!412051))))

(declare-fun lt!326708 () SeekEntryResult!7371)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736560 (= res!495138 (or (= lt!326708 (MissingZero!7371 i!1173)) (= lt!326708 (MissingVacant!7371 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41308 (_ BitVec 32)) SeekEntryResult!7371)

(assert (=> b!736560 (= lt!326708 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736561 () Bool)

(declare-fun res!495126 () Bool)

(declare-fun e!412058 () Bool)

(assert (=> b!736561 (=> res!495126 e!412058)))

(assert (=> b!736561 (= res!495126 e!412052)))

(declare-fun c!81098 () Bool)

(declare-fun lt!326709 () Bool)

(assert (=> b!736561 (= c!81098 lt!326709)))

(declare-fun b!736562 () Bool)

(assert (=> b!736562 (= e!412058 true)))

(declare-fun lt!326712 () SeekEntryResult!7371)

(declare-fun lt!326710 () array!41308)

(declare-fun lt!326707 () (_ BitVec 64))

(assert (=> b!736562 (= lt!326712 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326711 lt!326707 lt!326710 mask!3328))))

(declare-fun b!736563 () Bool)

(declare-datatypes ((Unit!25102 0))(
  ( (Unit!25103) )
))
(declare-fun e!412049 () Unit!25102)

(declare-fun Unit!25104 () Unit!25102)

(assert (=> b!736563 (= e!412049 Unit!25104)))

(assert (=> b!736563 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326711 (select (arr!19764 a!3186) j!159) a!3186 mask!3328) lt!326714)))

(declare-fun b!736564 () Bool)

(declare-fun e!412054 () Bool)

(assert (=> b!736564 (= e!412056 e!412054)))

(declare-fun res!495134 () Bool)

(assert (=> b!736564 (=> (not res!495134) (not e!412054))))

(declare-fun lt!326704 () SeekEntryResult!7371)

(declare-fun lt!326713 () SeekEntryResult!7371)

(assert (=> b!736564 (= res!495134 (= lt!326704 lt!326713))))

(assert (=> b!736564 (= lt!326713 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326707 lt!326710 mask!3328))))

(assert (=> b!736564 (= lt!326704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326707 mask!3328) lt!326707 lt!326710 mask!3328))))

(assert (=> b!736564 (= lt!326707 (select (store (arr!19764 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736564 (= lt!326710 (array!41309 (store (arr!19764 a!3186) i!1173 k!2102) (size!20185 a!3186)))))

(declare-fun b!736565 () Bool)

(declare-fun e!412055 () Bool)

(assert (=> b!736565 (= e!412054 (not e!412055))))

(declare-fun res!495125 () Bool)

(assert (=> b!736565 (=> res!495125 e!412055)))

(assert (=> b!736565 (= res!495125 (or (not (is-Intermediate!7371 lt!326713)) (bvsge x!1131 (x!62882 lt!326713))))))

(declare-fun lt!326705 () SeekEntryResult!7371)

(assert (=> b!736565 (= lt!326705 (Found!7371 j!159))))

(declare-fun e!412059 () Bool)

(assert (=> b!736565 e!412059))

(declare-fun res!495136 () Bool)

(assert (=> b!736565 (=> (not res!495136) (not e!412059))))

(assert (=> b!736565 (= res!495136 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326706 () Unit!25102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41308 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25102)

(assert (=> b!736565 (= lt!326706 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736566 () Bool)

(declare-fun res!495123 () Bool)

(assert (=> b!736566 (=> (not res!495123) (not e!412056))))

(declare-fun e!412057 () Bool)

(assert (=> b!736566 (= res!495123 e!412057)))

(declare-fun c!81099 () Bool)

(assert (=> b!736566 (= c!81099 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736567 () Bool)

(declare-fun res!495135 () Bool)

(assert (=> b!736567 (=> (not res!495135) (not e!412056))))

(assert (=> b!736567 (= res!495135 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19764 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736568 () Bool)

(declare-fun Unit!25105 () Unit!25102)

(assert (=> b!736568 (= e!412049 Unit!25105)))

(declare-fun lt!326701 () SeekEntryResult!7371)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41308 (_ BitVec 32)) SeekEntryResult!7371)

(assert (=> b!736568 (= lt!326701 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19764 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!736568 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326711 resIntermediateIndex!5 (select (arr!19764 a!3186) j!159) a!3186 mask!3328) lt!326705)))

(declare-fun b!736557 () Bool)

(assert (=> b!736557 (= e!412055 e!412058)))

(declare-fun res!495133 () Bool)

(assert (=> b!736557 (=> res!495133 e!412058)))

(assert (=> b!736557 (= res!495133 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326711 #b00000000000000000000000000000000) (bvsge lt!326711 (size!20185 a!3186))))))

(declare-fun lt!326702 () Unit!25102)

(assert (=> b!736557 (= lt!326702 e!412049)))

(declare-fun c!81097 () Bool)

(assert (=> b!736557 (= c!81097 lt!326709)))

(assert (=> b!736557 (= lt!326709 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736557 (= lt!326711 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!495129 () Bool)

(assert (=> start!65182 (=> (not res!495129) (not e!412048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65182 (= res!495129 (validMask!0 mask!3328))))

(assert (=> start!65182 e!412048))

(assert (=> start!65182 true))

(declare-fun array_inv!15538 (array!41308) Bool)

(assert (=> start!65182 (array_inv!15538 a!3186)))

(declare-fun b!736569 () Bool)

(assert (=> b!736569 (= e!412057 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19764 a!3186) j!159) a!3186 mask!3328) lt!326714))))

(declare-fun b!736570 () Bool)

(declare-fun res!495124 () Bool)

(assert (=> b!736570 (=> (not res!495124) (not e!412048))))

(declare-fun arrayContainsKey!0 (array!41308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736570 (= res!495124 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!326703 () SeekEntryResult!7371)

(declare-fun e!412053 () Bool)

(declare-fun b!736571 () Bool)

(assert (=> b!736571 (= e!412053 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19764 a!3186) j!159) a!3186 mask!3328) lt!326703))))

(declare-fun b!736572 () Bool)

(assert (=> b!736572 (= e!412059 e!412053)))

(declare-fun res!495131 () Bool)

(assert (=> b!736572 (=> (not res!495131) (not e!412053))))

(assert (=> b!736572 (= res!495131 (= (seekEntryOrOpen!0 (select (arr!19764 a!3186) j!159) a!3186 mask!3328) lt!326703))))

(assert (=> b!736572 (= lt!326703 (Found!7371 j!159))))

(declare-fun b!736573 () Bool)

(assert (=> b!736573 (= e!412057 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19764 a!3186) j!159) a!3186 mask!3328) (Found!7371 j!159)))))

(declare-fun b!736574 () Bool)

(declare-fun res!495137 () Bool)

(assert (=> b!736574 (=> (not res!495137) (not e!412048))))

(assert (=> b!736574 (= res!495137 (and (= (size!20185 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20185 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20185 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736575 () Bool)

(declare-fun res!495130 () Bool)

(assert (=> b!736575 (=> (not res!495130) (not e!412048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736575 (= res!495130 (validKeyInArray!0 k!2102))))

(declare-fun b!736576 () Bool)

(assert (=> b!736576 (= e!412052 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326711 resIntermediateIndex!5 (select (arr!19764 a!3186) j!159) a!3186 mask!3328) lt!326705)))))

(declare-fun b!736577 () Bool)

(declare-fun res!495121 () Bool)

(assert (=> b!736577 (=> (not res!495121) (not e!412048))))

(assert (=> b!736577 (= res!495121 (validKeyInArray!0 (select (arr!19764 a!3186) j!159)))))

(assert (= (and start!65182 res!495129) b!736574))

(assert (= (and b!736574 res!495137) b!736577))

(assert (= (and b!736577 res!495121) b!736575))

(assert (= (and b!736575 res!495130) b!736570))

(assert (= (and b!736570 res!495124) b!736560))

(assert (= (and b!736560 res!495138) b!736559))

(assert (= (and b!736559 res!495128) b!736555))

(assert (= (and b!736555 res!495132) b!736558))

(assert (= (and b!736558 res!495127) b!736554))

(assert (= (and b!736554 res!495122) b!736567))

(assert (= (and b!736567 res!495135) b!736566))

(assert (= (and b!736566 c!81099) b!736569))

(assert (= (and b!736566 (not c!81099)) b!736573))

(assert (= (and b!736566 res!495123) b!736564))

(assert (= (and b!736564 res!495134) b!736565))

(assert (= (and b!736565 res!495136) b!736572))

(assert (= (and b!736572 res!495131) b!736571))

(assert (= (and b!736565 (not res!495125)) b!736557))

(assert (= (and b!736557 c!81097) b!736563))

(assert (= (and b!736557 (not c!81097)) b!736568))

(assert (= (and b!736557 (not res!495133)) b!736561))

(assert (= (and b!736561 c!81098) b!736556))

(assert (= (and b!736561 (not c!81098)) b!736576))

(assert (= (and b!736561 (not res!495126)) b!736562))

(declare-fun m!688723 () Bool)

(assert (=> b!736573 m!688723))

(assert (=> b!736573 m!688723))

(declare-fun m!688725 () Bool)

(assert (=> b!736573 m!688725))

(assert (=> b!736577 m!688723))

(assert (=> b!736577 m!688723))

(declare-fun m!688727 () Bool)

(assert (=> b!736577 m!688727))

(declare-fun m!688729 () Bool)

(assert (=> b!736557 m!688729))

(declare-fun m!688731 () Bool)

(assert (=> start!65182 m!688731))

(declare-fun m!688733 () Bool)

(assert (=> start!65182 m!688733))

(declare-fun m!688735 () Bool)

(assert (=> b!736560 m!688735))

(assert (=> b!736556 m!688723))

(assert (=> b!736556 m!688723))

(declare-fun m!688737 () Bool)

(assert (=> b!736556 m!688737))

(assert (=> b!736572 m!688723))

(assert (=> b!736572 m!688723))

(declare-fun m!688739 () Bool)

(assert (=> b!736572 m!688739))

(declare-fun m!688741 () Bool)

(assert (=> b!736559 m!688741))

(declare-fun m!688743 () Bool)

(assert (=> b!736567 m!688743))

(assert (=> b!736563 m!688723))

(assert (=> b!736563 m!688723))

(assert (=> b!736563 m!688737))

(declare-fun m!688745 () Bool)

(assert (=> b!736562 m!688745))

(assert (=> b!736571 m!688723))

(assert (=> b!736571 m!688723))

(declare-fun m!688747 () Bool)

(assert (=> b!736571 m!688747))

(declare-fun m!688749 () Bool)

(assert (=> b!736570 m!688749))

(assert (=> b!736576 m!688723))

(assert (=> b!736576 m!688723))

(declare-fun m!688751 () Bool)

(assert (=> b!736576 m!688751))

(declare-fun m!688753 () Bool)

(assert (=> b!736575 m!688753))

(declare-fun m!688755 () Bool)

(assert (=> b!736555 m!688755))

(assert (=> b!736569 m!688723))

(assert (=> b!736569 m!688723))

(declare-fun m!688757 () Bool)

(assert (=> b!736569 m!688757))

(declare-fun m!688759 () Bool)

(assert (=> b!736564 m!688759))

(declare-fun m!688761 () Bool)

(assert (=> b!736564 m!688761))

(declare-fun m!688763 () Bool)

(assert (=> b!736564 m!688763))

(assert (=> b!736564 m!688759))

(declare-fun m!688765 () Bool)

(assert (=> b!736564 m!688765))

(declare-fun m!688767 () Bool)

(assert (=> b!736564 m!688767))

(declare-fun m!688769 () Bool)

(assert (=> b!736565 m!688769))

(declare-fun m!688771 () Bool)

(assert (=> b!736565 m!688771))

(assert (=> b!736568 m!688723))

(assert (=> b!736568 m!688723))

(assert (=> b!736568 m!688725))

(assert (=> b!736568 m!688723))

(assert (=> b!736568 m!688751))

(assert (=> b!736554 m!688723))

(assert (=> b!736554 m!688723))

(declare-fun m!688773 () Bool)

(assert (=> b!736554 m!688773))

(assert (=> b!736554 m!688773))

(assert (=> b!736554 m!688723))

(declare-fun m!688775 () Bool)

(assert (=> b!736554 m!688775))

(push 1)

