; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65756 () Bool)

(assert start!65756)

(declare-fun b!754744 () Bool)

(declare-fun res!510163 () Bool)

(declare-fun e!420936 () Bool)

(assert (=> b!754744 (=> (not res!510163) (not e!420936))))

(declare-datatypes ((array!41882 0))(
  ( (array!41883 (arr!20051 (Array (_ BitVec 32) (_ BitVec 64))) (size!20472 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41882)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41882 (_ BitVec 32)) Bool)

(assert (=> b!754744 (= res!510163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!754745 () Bool)

(declare-fun res!510177 () Bool)

(declare-fun e!420937 () Bool)

(assert (=> b!754745 (=> (not res!510177) (not e!420937))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754745 (= res!510177 (and (= (size!20472 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20472 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20472 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754746 () Bool)

(declare-fun e!420932 () Bool)

(declare-fun e!420940 () Bool)

(assert (=> b!754746 (= e!420932 (not e!420940))))

(declare-fun res!510161 () Bool)

(assert (=> b!754746 (=> res!510161 e!420940)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7658 0))(
  ( (MissingZero!7658 (index!32999 (_ BitVec 32))) (Found!7658 (index!33000 (_ BitVec 32))) (Intermediate!7658 (undefined!8470 Bool) (index!33001 (_ BitVec 32)) (x!63929 (_ BitVec 32))) (Undefined!7658) (MissingVacant!7658 (index!33002 (_ BitVec 32))) )
))
(declare-fun lt!335939 () SeekEntryResult!7658)

(assert (=> b!754746 (= res!510161 (or (not (is-Intermediate!7658 lt!335939)) (bvslt x!1131 (x!63929 lt!335939)) (not (= x!1131 (x!63929 lt!335939))) (not (= index!1321 (index!33001 lt!335939)))))))

(declare-fun e!420931 () Bool)

(assert (=> b!754746 e!420931))

(declare-fun res!510175 () Bool)

(assert (=> b!754746 (=> (not res!510175) (not e!420931))))

(declare-fun lt!335933 () SeekEntryResult!7658)

(declare-fun lt!335932 () SeekEntryResult!7658)

(assert (=> b!754746 (= res!510175 (= lt!335933 lt!335932))))

(assert (=> b!754746 (= lt!335932 (Found!7658 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41882 (_ BitVec 32)) SeekEntryResult!7658)

(assert (=> b!754746 (= lt!335933 (seekEntryOrOpen!0 (select (arr!20051 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!754746 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26034 0))(
  ( (Unit!26035) )
))
(declare-fun lt!335942 () Unit!26034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26034)

(assert (=> b!754746 (= lt!335942 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754747 () Bool)

(declare-fun e!420934 () Unit!26034)

(declare-fun Unit!26036 () Unit!26034)

(assert (=> b!754747 (= e!420934 Unit!26036)))

(assert (=> b!754747 false))

(declare-fun b!754748 () Bool)

(declare-fun res!510159 () Bool)

(assert (=> b!754748 (=> (not res!510159) (not e!420936))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754748 (= res!510159 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20472 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20472 a!3186))))))

(declare-fun b!754749 () Bool)

(declare-fun e!420938 () Bool)

(declare-fun e!420933 () Bool)

(assert (=> b!754749 (= e!420938 e!420933)))

(declare-fun res!510173 () Bool)

(assert (=> b!754749 (=> res!510173 e!420933)))

(declare-fun lt!335931 () (_ BitVec 64))

(declare-fun lt!335935 () (_ BitVec 64))

(assert (=> b!754749 (= res!510173 (= lt!335931 lt!335935))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!754749 (= lt!335931 (select (store (arr!20051 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!754751 () Bool)

(declare-fun res!510170 () Bool)

(assert (=> b!754751 (=> (not res!510170) (not e!420937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754751 (= res!510170 (validKeyInArray!0 (select (arr!20051 a!3186) j!159)))))

(declare-fun b!754752 () Bool)

(declare-fun res!510168 () Bool)

(assert (=> b!754752 (=> (not res!510168) (not e!420937))))

(declare-fun arrayContainsKey!0 (array!41882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754752 (= res!510168 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!335937 () SeekEntryResult!7658)

(declare-fun b!754753 () Bool)

(declare-fun e!420942 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41882 (_ BitVec 32)) SeekEntryResult!7658)

(assert (=> b!754753 (= e!420942 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20051 a!3186) j!159) a!3186 mask!3328) lt!335937))))

(declare-fun b!754754 () Bool)

(declare-fun res!510176 () Bool)

(declare-fun e!420939 () Bool)

(assert (=> b!754754 (=> (not res!510176) (not e!420939))))

(declare-fun lt!335934 () array!41882)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41882 (_ BitVec 32)) SeekEntryResult!7658)

(assert (=> b!754754 (= res!510176 (= (seekEntryOrOpen!0 lt!335935 lt!335934 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335935 lt!335934 mask!3328)))))

(declare-fun b!754755 () Bool)

(assert (=> b!754755 (= e!420931 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20051 a!3186) j!159) a!3186 mask!3328) lt!335932))))

(declare-fun b!754756 () Bool)

(assert (=> b!754756 (= e!420937 e!420936)))

(declare-fun res!510162 () Bool)

(assert (=> b!754756 (=> (not res!510162) (not e!420936))))

(declare-fun lt!335941 () SeekEntryResult!7658)

(assert (=> b!754756 (= res!510162 (or (= lt!335941 (MissingZero!7658 i!1173)) (= lt!335941 (MissingVacant!7658 i!1173))))))

(assert (=> b!754756 (= lt!335941 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754757 () Bool)

(declare-fun res!510160 () Bool)

(assert (=> b!754757 (=> (not res!510160) (not e!420937))))

(assert (=> b!754757 (= res!510160 (validKeyInArray!0 k!2102))))

(declare-fun b!754758 () Bool)

(assert (=> b!754758 (= e!420933 true)))

(assert (=> b!754758 e!420939))

(declare-fun res!510171 () Bool)

(assert (=> b!754758 (=> (not res!510171) (not e!420939))))

(assert (=> b!754758 (= res!510171 (= lt!335931 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335938 () Unit!26034)

(assert (=> b!754758 (= lt!335938 e!420934)))

(declare-fun c!82673 () Bool)

(assert (=> b!754758 (= c!82673 (= lt!335931 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754759 () Bool)

(declare-fun e!420941 () Bool)

(assert (=> b!754759 (= e!420936 e!420941)))

(declare-fun res!510165 () Bool)

(assert (=> b!754759 (=> (not res!510165) (not e!420941))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754759 (= res!510165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20051 a!3186) j!159) mask!3328) (select (arr!20051 a!3186) j!159) a!3186 mask!3328) lt!335937))))

(assert (=> b!754759 (= lt!335937 (Intermediate!7658 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!510164 () Bool)

(assert (=> start!65756 (=> (not res!510164) (not e!420937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65756 (= res!510164 (validMask!0 mask!3328))))

(assert (=> start!65756 e!420937))

(assert (=> start!65756 true))

(declare-fun array_inv!15825 (array!41882) Bool)

(assert (=> start!65756 (array_inv!15825 a!3186)))

(declare-fun b!754750 () Bool)

(declare-fun lt!335936 () SeekEntryResult!7658)

(assert (=> b!754750 (= e!420939 (= lt!335933 lt!335936))))

(declare-fun b!754760 () Bool)

(declare-fun res!510169 () Bool)

(assert (=> b!754760 (=> (not res!510169) (not e!420941))))

(assert (=> b!754760 (= res!510169 e!420942)))

(declare-fun c!82674 () Bool)

(assert (=> b!754760 (= c!82674 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754761 () Bool)

(assert (=> b!754761 (= e!420940 e!420938)))

(declare-fun res!510166 () Bool)

(assert (=> b!754761 (=> res!510166 e!420938)))

(assert (=> b!754761 (= res!510166 (not (= lt!335936 lt!335932)))))

(assert (=> b!754761 (= lt!335936 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20051 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754762 () Bool)

(declare-fun res!510172 () Bool)

(assert (=> b!754762 (=> (not res!510172) (not e!420941))))

(assert (=> b!754762 (= res!510172 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20051 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754763 () Bool)

(declare-fun Unit!26037 () Unit!26034)

(assert (=> b!754763 (= e!420934 Unit!26037)))

(declare-fun b!754764 () Bool)

(declare-fun res!510174 () Bool)

(assert (=> b!754764 (=> (not res!510174) (not e!420936))))

(declare-datatypes ((List!14106 0))(
  ( (Nil!14103) (Cons!14102 (h!15174 (_ BitVec 64)) (t!20429 List!14106)) )
))
(declare-fun arrayNoDuplicates!0 (array!41882 (_ BitVec 32) List!14106) Bool)

(assert (=> b!754764 (= res!510174 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14103))))

(declare-fun b!754765 () Bool)

(assert (=> b!754765 (= e!420941 e!420932)))

(declare-fun res!510167 () Bool)

(assert (=> b!754765 (=> (not res!510167) (not e!420932))))

(declare-fun lt!335940 () SeekEntryResult!7658)

(assert (=> b!754765 (= res!510167 (= lt!335940 lt!335939))))

(assert (=> b!754765 (= lt!335939 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335935 lt!335934 mask!3328))))

(assert (=> b!754765 (= lt!335940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335935 mask!3328) lt!335935 lt!335934 mask!3328))))

(assert (=> b!754765 (= lt!335935 (select (store (arr!20051 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754765 (= lt!335934 (array!41883 (store (arr!20051 a!3186) i!1173 k!2102) (size!20472 a!3186)))))

(declare-fun b!754766 () Bool)

(assert (=> b!754766 (= e!420942 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20051 a!3186) j!159) a!3186 mask!3328) (Found!7658 j!159)))))

(assert (= (and start!65756 res!510164) b!754745))

(assert (= (and b!754745 res!510177) b!754751))

(assert (= (and b!754751 res!510170) b!754757))

(assert (= (and b!754757 res!510160) b!754752))

(assert (= (and b!754752 res!510168) b!754756))

(assert (= (and b!754756 res!510162) b!754744))

(assert (= (and b!754744 res!510163) b!754764))

(assert (= (and b!754764 res!510174) b!754748))

(assert (= (and b!754748 res!510159) b!754759))

(assert (= (and b!754759 res!510165) b!754762))

(assert (= (and b!754762 res!510172) b!754760))

(assert (= (and b!754760 c!82674) b!754753))

(assert (= (and b!754760 (not c!82674)) b!754766))

(assert (= (and b!754760 res!510169) b!754765))

(assert (= (and b!754765 res!510167) b!754746))

(assert (= (and b!754746 res!510175) b!754755))

(assert (= (and b!754746 (not res!510161)) b!754761))

(assert (= (and b!754761 (not res!510166)) b!754749))

(assert (= (and b!754749 (not res!510173)) b!754758))

(assert (= (and b!754758 c!82673) b!754747))

(assert (= (and b!754758 (not c!82673)) b!754763))

(assert (= (and b!754758 res!510171) b!754754))

(assert (= (and b!754754 res!510176) b!754750))

(declare-fun m!703185 () Bool)

(assert (=> b!754764 m!703185))

(declare-fun m!703187 () Bool)

(assert (=> b!754756 m!703187))

(declare-fun m!703189 () Bool)

(assert (=> b!754761 m!703189))

(assert (=> b!754761 m!703189))

(declare-fun m!703191 () Bool)

(assert (=> b!754761 m!703191))

(declare-fun m!703193 () Bool)

(assert (=> start!65756 m!703193))

(declare-fun m!703195 () Bool)

(assert (=> start!65756 m!703195))

(declare-fun m!703197 () Bool)

(assert (=> b!754752 m!703197))

(declare-fun m!703199 () Bool)

(assert (=> b!754754 m!703199))

(declare-fun m!703201 () Bool)

(assert (=> b!754754 m!703201))

(assert (=> b!754746 m!703189))

(assert (=> b!754746 m!703189))

(declare-fun m!703203 () Bool)

(assert (=> b!754746 m!703203))

(declare-fun m!703205 () Bool)

(assert (=> b!754746 m!703205))

(declare-fun m!703207 () Bool)

(assert (=> b!754746 m!703207))

(declare-fun m!703209 () Bool)

(assert (=> b!754757 m!703209))

(assert (=> b!754751 m!703189))

(assert (=> b!754751 m!703189))

(declare-fun m!703211 () Bool)

(assert (=> b!754751 m!703211))

(declare-fun m!703213 () Bool)

(assert (=> b!754744 m!703213))

(declare-fun m!703215 () Bool)

(assert (=> b!754762 m!703215))

(assert (=> b!754759 m!703189))

(assert (=> b!754759 m!703189))

(declare-fun m!703217 () Bool)

(assert (=> b!754759 m!703217))

(assert (=> b!754759 m!703217))

(assert (=> b!754759 m!703189))

(declare-fun m!703219 () Bool)

(assert (=> b!754759 m!703219))

(declare-fun m!703221 () Bool)

(assert (=> b!754765 m!703221))

(declare-fun m!703223 () Bool)

(assert (=> b!754765 m!703223))

(declare-fun m!703225 () Bool)

(assert (=> b!754765 m!703225))

(assert (=> b!754765 m!703223))

(declare-fun m!703227 () Bool)

(assert (=> b!754765 m!703227))

(declare-fun m!703229 () Bool)

(assert (=> b!754765 m!703229))

(assert (=> b!754749 m!703227))

(declare-fun m!703231 () Bool)

(assert (=> b!754749 m!703231))

(assert (=> b!754753 m!703189))

(assert (=> b!754753 m!703189))

(declare-fun m!703233 () Bool)

(assert (=> b!754753 m!703233))

(assert (=> b!754755 m!703189))

(assert (=> b!754755 m!703189))

(declare-fun m!703235 () Bool)

(assert (=> b!754755 m!703235))

(assert (=> b!754766 m!703189))

(assert (=> b!754766 m!703189))

(assert (=> b!754766 m!703191))

(push 1)

