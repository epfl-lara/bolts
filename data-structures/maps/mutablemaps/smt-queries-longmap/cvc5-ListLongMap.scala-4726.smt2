; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65434 () Bool)

(assert start!65434)

(declare-fun b!744543 () Bool)

(declare-fun res!501656 () Bool)

(declare-fun e!415928 () Bool)

(assert (=> b!744543 (=> (not res!501656) (not e!415928))))

(declare-datatypes ((array!41560 0))(
  ( (array!41561 (arr!19890 (Array (_ BitVec 32) (_ BitVec 64))) (size!20311 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41560)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744543 (= res!501656 (validKeyInArray!0 (select (arr!19890 a!3186) j!159)))))

(declare-fun b!744544 () Bool)

(declare-fun e!415925 () Bool)

(assert (=> b!744544 (= e!415928 e!415925)))

(declare-fun res!501645 () Bool)

(assert (=> b!744544 (=> (not res!501645) (not e!415925))))

(declare-datatypes ((SeekEntryResult!7497 0))(
  ( (MissingZero!7497 (index!32355 (_ BitVec 32))) (Found!7497 (index!32356 (_ BitVec 32))) (Intermediate!7497 (undefined!8309 Bool) (index!32357 (_ BitVec 32)) (x!63344 (_ BitVec 32))) (Undefined!7497) (MissingVacant!7497 (index!32358 (_ BitVec 32))) )
))
(declare-fun lt!330778 () SeekEntryResult!7497)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744544 (= res!501645 (or (= lt!330778 (MissingZero!7497 i!1173)) (= lt!330778 (MissingVacant!7497 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41560 (_ BitVec 32)) SeekEntryResult!7497)

(assert (=> b!744544 (= lt!330778 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!744545 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!415922 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41560 (_ BitVec 32)) SeekEntryResult!7497)

(assert (=> b!744545 (= e!415922 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19890 a!3186) j!159) a!3186 mask!3328) (Found!7497 j!159)))))

(declare-fun lt!330783 () SeekEntryResult!7497)

(declare-fun b!744547 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41560 (_ BitVec 32)) SeekEntryResult!7497)

(assert (=> b!744547 (= e!415922 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19890 a!3186) j!159) a!3186 mask!3328) lt!330783))))

(declare-fun b!744548 () Bool)

(declare-fun e!415927 () Bool)

(assert (=> b!744548 (= e!415927 true)))

(declare-fun lt!330785 () SeekEntryResult!7497)

(assert (=> b!744548 (= lt!330785 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19890 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744549 () Bool)

(declare-fun e!415926 () Bool)

(assert (=> b!744549 (= e!415925 e!415926)))

(declare-fun res!501649 () Bool)

(assert (=> b!744549 (=> (not res!501649) (not e!415926))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744549 (= res!501649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19890 a!3186) j!159) mask!3328) (select (arr!19890 a!3186) j!159) a!3186 mask!3328) lt!330783))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744549 (= lt!330783 (Intermediate!7497 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744550 () Bool)

(declare-fun res!501646 () Bool)

(assert (=> b!744550 (=> (not res!501646) (not e!415928))))

(assert (=> b!744550 (= res!501646 (and (= (size!20311 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20311 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20311 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744551 () Bool)

(declare-fun res!501653 () Bool)

(assert (=> b!744551 (=> (not res!501653) (not e!415925))))

(assert (=> b!744551 (= res!501653 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20311 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20311 a!3186))))))

(declare-fun b!744552 () Bool)

(declare-fun res!501651 () Bool)

(assert (=> b!744552 (=> (not res!501651) (not e!415926))))

(assert (=> b!744552 (= res!501651 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19890 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744553 () Bool)

(declare-fun e!415924 () Bool)

(assert (=> b!744553 (= e!415924 (not e!415927))))

(declare-fun res!501647 () Bool)

(assert (=> b!744553 (=> res!501647 e!415927)))

(declare-fun lt!330784 () SeekEntryResult!7497)

(assert (=> b!744553 (= res!501647 (or (not (is-Intermediate!7497 lt!330784)) (bvslt x!1131 (x!63344 lt!330784)) (not (= x!1131 (x!63344 lt!330784))) (not (= index!1321 (index!32357 lt!330784)))))))

(declare-fun e!415923 () Bool)

(assert (=> b!744553 e!415923))

(declare-fun res!501644 () Bool)

(assert (=> b!744553 (=> (not res!501644) (not e!415923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41560 (_ BitVec 32)) Bool)

(assert (=> b!744553 (= res!501644 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25474 0))(
  ( (Unit!25475) )
))
(declare-fun lt!330779 () Unit!25474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25474)

(assert (=> b!744553 (= lt!330779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744546 () Bool)

(declare-fun res!501652 () Bool)

(assert (=> b!744546 (=> (not res!501652) (not e!415928))))

(assert (=> b!744546 (= res!501652 (validKeyInArray!0 k!2102))))

(declare-fun res!501648 () Bool)

(assert (=> start!65434 (=> (not res!501648) (not e!415928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65434 (= res!501648 (validMask!0 mask!3328))))

(assert (=> start!65434 e!415928))

(assert (=> start!65434 true))

(declare-fun array_inv!15664 (array!41560) Bool)

(assert (=> start!65434 (array_inv!15664 a!3186)))

(declare-fun b!744554 () Bool)

(declare-fun res!501650 () Bool)

(assert (=> b!744554 (=> (not res!501650) (not e!415928))))

(declare-fun arrayContainsKey!0 (array!41560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744554 (= res!501650 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744555 () Bool)

(declare-fun res!501657 () Bool)

(assert (=> b!744555 (=> (not res!501657) (not e!415925))))

(declare-datatypes ((List!13945 0))(
  ( (Nil!13942) (Cons!13941 (h!15013 (_ BitVec 64)) (t!20268 List!13945)) )
))
(declare-fun arrayNoDuplicates!0 (array!41560 (_ BitVec 32) List!13945) Bool)

(assert (=> b!744555 (= res!501657 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13942))))

(declare-fun b!744556 () Bool)

(declare-fun res!501654 () Bool)

(assert (=> b!744556 (=> (not res!501654) (not e!415925))))

(assert (=> b!744556 (= res!501654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744557 () Bool)

(assert (=> b!744557 (= e!415926 e!415924)))

(declare-fun res!501643 () Bool)

(assert (=> b!744557 (=> (not res!501643) (not e!415924))))

(declare-fun lt!330780 () SeekEntryResult!7497)

(assert (=> b!744557 (= res!501643 (= lt!330780 lt!330784))))

(declare-fun lt!330781 () (_ BitVec 64))

(declare-fun lt!330782 () array!41560)

(assert (=> b!744557 (= lt!330784 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330781 lt!330782 mask!3328))))

(assert (=> b!744557 (= lt!330780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330781 mask!3328) lt!330781 lt!330782 mask!3328))))

(assert (=> b!744557 (= lt!330781 (select (store (arr!19890 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744557 (= lt!330782 (array!41561 (store (arr!19890 a!3186) i!1173 k!2102) (size!20311 a!3186)))))

(declare-fun e!415921 () Bool)

(declare-fun lt!330777 () SeekEntryResult!7497)

(declare-fun b!744558 () Bool)

(assert (=> b!744558 (= e!415921 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19890 a!3186) j!159) a!3186 mask!3328) lt!330777))))

(declare-fun b!744559 () Bool)

(assert (=> b!744559 (= e!415923 e!415921)))

(declare-fun res!501655 () Bool)

(assert (=> b!744559 (=> (not res!501655) (not e!415921))))

(assert (=> b!744559 (= res!501655 (= (seekEntryOrOpen!0 (select (arr!19890 a!3186) j!159) a!3186 mask!3328) lt!330777))))

(assert (=> b!744559 (= lt!330777 (Found!7497 j!159))))

(declare-fun b!744560 () Bool)

(declare-fun res!501642 () Bool)

(assert (=> b!744560 (=> (not res!501642) (not e!415926))))

(assert (=> b!744560 (= res!501642 e!415922)))

(declare-fun c!81831 () Bool)

(assert (=> b!744560 (= c!81831 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65434 res!501648) b!744550))

(assert (= (and b!744550 res!501646) b!744543))

(assert (= (and b!744543 res!501656) b!744546))

(assert (= (and b!744546 res!501652) b!744554))

(assert (= (and b!744554 res!501650) b!744544))

(assert (= (and b!744544 res!501645) b!744556))

(assert (= (and b!744556 res!501654) b!744555))

(assert (= (and b!744555 res!501657) b!744551))

(assert (= (and b!744551 res!501653) b!744549))

(assert (= (and b!744549 res!501649) b!744552))

(assert (= (and b!744552 res!501651) b!744560))

(assert (= (and b!744560 c!81831) b!744547))

(assert (= (and b!744560 (not c!81831)) b!744545))

(assert (= (and b!744560 res!501642) b!744557))

(assert (= (and b!744557 res!501643) b!744553))

(assert (= (and b!744553 res!501644) b!744559))

(assert (= (and b!744559 res!501655) b!744558))

(assert (= (and b!744553 (not res!501647)) b!744548))

(declare-fun m!695137 () Bool)

(assert (=> b!744545 m!695137))

(assert (=> b!744545 m!695137))

(declare-fun m!695139 () Bool)

(assert (=> b!744545 m!695139))

(assert (=> b!744543 m!695137))

(assert (=> b!744543 m!695137))

(declare-fun m!695141 () Bool)

(assert (=> b!744543 m!695141))

(declare-fun m!695143 () Bool)

(assert (=> b!744555 m!695143))

(declare-fun m!695145 () Bool)

(assert (=> b!744557 m!695145))

(declare-fun m!695147 () Bool)

(assert (=> b!744557 m!695147))

(declare-fun m!695149 () Bool)

(assert (=> b!744557 m!695149))

(declare-fun m!695151 () Bool)

(assert (=> b!744557 m!695151))

(declare-fun m!695153 () Bool)

(assert (=> b!744557 m!695153))

(assert (=> b!744557 m!695149))

(assert (=> b!744549 m!695137))

(assert (=> b!744549 m!695137))

(declare-fun m!695155 () Bool)

(assert (=> b!744549 m!695155))

(assert (=> b!744549 m!695155))

(assert (=> b!744549 m!695137))

(declare-fun m!695157 () Bool)

(assert (=> b!744549 m!695157))

(declare-fun m!695159 () Bool)

(assert (=> b!744552 m!695159))

(assert (=> b!744559 m!695137))

(assert (=> b!744559 m!695137))

(declare-fun m!695161 () Bool)

(assert (=> b!744559 m!695161))

(declare-fun m!695163 () Bool)

(assert (=> b!744544 m!695163))

(declare-fun m!695165 () Bool)

(assert (=> b!744556 m!695165))

(assert (=> b!744548 m!695137))

(assert (=> b!744548 m!695137))

(assert (=> b!744548 m!695139))

(declare-fun m!695167 () Bool)

(assert (=> b!744553 m!695167))

(declare-fun m!695169 () Bool)

(assert (=> b!744553 m!695169))

(assert (=> b!744558 m!695137))

(assert (=> b!744558 m!695137))

(declare-fun m!695171 () Bool)

(assert (=> b!744558 m!695171))

(declare-fun m!695173 () Bool)

(assert (=> b!744554 m!695173))

(declare-fun m!695175 () Bool)

(assert (=> b!744546 m!695175))

(declare-fun m!695177 () Bool)

(assert (=> start!65434 m!695177))

(declare-fun m!695179 () Bool)

(assert (=> start!65434 m!695179))

(assert (=> b!744547 m!695137))

(assert (=> b!744547 m!695137))

(declare-fun m!695181 () Bool)

(assert (=> b!744547 m!695181))

(push 1)

