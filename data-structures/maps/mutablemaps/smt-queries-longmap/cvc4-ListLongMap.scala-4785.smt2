; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65792 () Bool)

(assert start!65792)

(declare-fun b!755986 () Bool)

(declare-fun res!511197 () Bool)

(declare-fun e!421584 () Bool)

(assert (=> b!755986 (=> (not res!511197) (not e!421584))))

(declare-datatypes ((array!41918 0))(
  ( (array!41919 (arr!20069 (Array (_ BitVec 32) (_ BitVec 64))) (size!20490 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41918)

(declare-datatypes ((List!14124 0))(
  ( (Nil!14121) (Cons!14120 (h!15192 (_ BitVec 64)) (t!20447 List!14124)) )
))
(declare-fun arrayNoDuplicates!0 (array!41918 (_ BitVec 32) List!14124) Bool)

(assert (=> b!755986 (= res!511197 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14121))))

(declare-fun b!755987 () Bool)

(declare-fun res!511202 () Bool)

(declare-fun e!421589 () Bool)

(assert (=> b!755987 (=> (not res!511202) (not e!421589))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755987 (= res!511202 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755988 () Bool)

(assert (=> b!755988 (= e!421589 e!421584)))

(declare-fun res!511196 () Bool)

(assert (=> b!755988 (=> (not res!511196) (not e!421584))))

(declare-datatypes ((SeekEntryResult!7676 0))(
  ( (MissingZero!7676 (index!33071 (_ BitVec 32))) (Found!7676 (index!33072 (_ BitVec 32))) (Intermediate!7676 (undefined!8488 Bool) (index!33073 (_ BitVec 32)) (x!63995 (_ BitVec 32))) (Undefined!7676) (MissingVacant!7676 (index!33074 (_ BitVec 32))) )
))
(declare-fun lt!336586 () SeekEntryResult!7676)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755988 (= res!511196 (or (= lt!336586 (MissingZero!7676 i!1173)) (= lt!336586 (MissingVacant!7676 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41918 (_ BitVec 32)) SeekEntryResult!7676)

(assert (=> b!755988 (= lt!336586 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!755990 () Bool)

(declare-fun e!421582 () Bool)

(assert (=> b!755990 (= e!421582 true)))

(declare-fun e!421587 () Bool)

(assert (=> b!755990 e!421587))

(declare-fun res!511192 () Bool)

(assert (=> b!755990 (=> (not res!511192) (not e!421587))))

(declare-fun lt!336579 () (_ BitVec 64))

(assert (=> b!755990 (= res!511192 (= lt!336579 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26106 0))(
  ( (Unit!26107) )
))
(declare-fun lt!336581 () Unit!26106)

(declare-fun e!421588 () Unit!26106)

(assert (=> b!755990 (= lt!336581 e!421588)))

(declare-fun c!82782 () Bool)

(assert (=> b!755990 (= c!82782 (= lt!336579 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755991 () Bool)

(declare-fun Unit!26108 () Unit!26106)

(assert (=> b!755991 (= e!421588 Unit!26108)))

(assert (=> b!755991 false))

(declare-fun b!755992 () Bool)

(declare-fun res!511185 () Bool)

(assert (=> b!755992 (=> (not res!511185) (not e!421587))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!336589 () (_ BitVec 64))

(declare-fun lt!336587 () array!41918)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41918 (_ BitVec 32)) SeekEntryResult!7676)

(assert (=> b!755992 (= res!511185 (= (seekEntryOrOpen!0 lt!336589 lt!336587 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336589 lt!336587 mask!3328)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!336588 () SeekEntryResult!7676)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!421590 () Bool)

(declare-fun b!755993 () Bool)

(assert (=> b!755993 (= e!421590 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20069 a!3186) j!159) a!3186 mask!3328) lt!336588))))

(declare-fun b!755994 () Bool)

(declare-fun res!511194 () Bool)

(assert (=> b!755994 (=> (not res!511194) (not e!421584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41918 (_ BitVec 32)) Bool)

(assert (=> b!755994 (= res!511194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755995 () Bool)

(declare-fun e!421579 () Bool)

(assert (=> b!755995 (= e!421584 e!421579)))

(declare-fun res!511189 () Bool)

(assert (=> b!755995 (=> (not res!511189) (not e!421579))))

(declare-fun lt!336582 () SeekEntryResult!7676)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41918 (_ BitVec 32)) SeekEntryResult!7676)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755995 (= res!511189 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20069 a!3186) j!159) mask!3328) (select (arr!20069 a!3186) j!159) a!3186 mask!3328) lt!336582))))

(assert (=> b!755995 (= lt!336582 (Intermediate!7676 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755996 () Bool)

(declare-fun e!421585 () Bool)

(assert (=> b!755996 (= e!421579 e!421585)))

(declare-fun res!511190 () Bool)

(assert (=> b!755996 (=> (not res!511190) (not e!421585))))

(declare-fun lt!336583 () SeekEntryResult!7676)

(declare-fun lt!336585 () SeekEntryResult!7676)

(assert (=> b!755996 (= res!511190 (= lt!336583 lt!336585))))

(assert (=> b!755996 (= lt!336585 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336589 lt!336587 mask!3328))))

(assert (=> b!755996 (= lt!336583 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336589 mask!3328) lt!336589 lt!336587 mask!3328))))

(assert (=> b!755996 (= lt!336589 (select (store (arr!20069 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755996 (= lt!336587 (array!41919 (store (arr!20069 a!3186) i!1173 k!2102) (size!20490 a!3186)))))

(declare-fun b!755997 () Bool)

(declare-fun Unit!26109 () Unit!26106)

(assert (=> b!755997 (= e!421588 Unit!26109)))

(declare-fun b!755998 () Bool)

(declare-fun res!511200 () Bool)

(assert (=> b!755998 (=> (not res!511200) (not e!421589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755998 (= res!511200 (validKeyInArray!0 (select (arr!20069 a!3186) j!159)))))

(declare-fun b!755999 () Bool)

(declare-fun res!511186 () Bool)

(assert (=> b!755999 (=> (not res!511186) (not e!421589))))

(assert (=> b!755999 (= res!511186 (and (= (size!20490 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20490 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20490 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756000 () Bool)

(declare-fun lt!336590 () SeekEntryResult!7676)

(declare-fun lt!336580 () SeekEntryResult!7676)

(assert (=> b!756000 (= e!421587 (= lt!336590 lt!336580))))

(declare-fun b!756001 () Bool)

(declare-fun res!511199 () Bool)

(assert (=> b!756001 (=> (not res!511199) (not e!421584))))

(assert (=> b!756001 (= res!511199 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20490 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20490 a!3186))))))

(declare-fun b!756002 () Bool)

(declare-fun res!511201 () Bool)

(assert (=> b!756002 (=> (not res!511201) (not e!421579))))

(declare-fun e!421583 () Bool)

(assert (=> b!756002 (= res!511201 e!421583)))

(declare-fun c!82781 () Bool)

(assert (=> b!756002 (= c!82781 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755989 () Bool)

(declare-fun e!421580 () Bool)

(assert (=> b!755989 (= e!421580 e!421582)))

(declare-fun res!511195 () Bool)

(assert (=> b!755989 (=> res!511195 e!421582)))

(assert (=> b!755989 (= res!511195 (= lt!336579 lt!336589))))

(assert (=> b!755989 (= lt!336579 (select (store (arr!20069 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!511187 () Bool)

(assert (=> start!65792 (=> (not res!511187) (not e!421589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65792 (= res!511187 (validMask!0 mask!3328))))

(assert (=> start!65792 e!421589))

(assert (=> start!65792 true))

(declare-fun array_inv!15843 (array!41918) Bool)

(assert (=> start!65792 (array_inv!15843 a!3186)))

(declare-fun b!756003 () Bool)

(assert (=> b!756003 (= e!421583 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20069 a!3186) j!159) a!3186 mask!3328) lt!336582))))

(declare-fun b!756004 () Bool)

(declare-fun res!511188 () Bool)

(assert (=> b!756004 (=> (not res!511188) (not e!421579))))

(assert (=> b!756004 (= res!511188 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20069 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756005 () Bool)

(declare-fun e!421586 () Bool)

(assert (=> b!756005 (= e!421586 e!421580)))

(declare-fun res!511198 () Bool)

(assert (=> b!756005 (=> res!511198 e!421580)))

(assert (=> b!756005 (= res!511198 (not (= lt!336580 lt!336588)))))

(assert (=> b!756005 (= lt!336580 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20069 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756006 () Bool)

(assert (=> b!756006 (= e!421583 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20069 a!3186) j!159) a!3186 mask!3328) (Found!7676 j!159)))))

(declare-fun b!756007 () Bool)

(assert (=> b!756007 (= e!421585 (not e!421586))))

(declare-fun res!511193 () Bool)

(assert (=> b!756007 (=> res!511193 e!421586)))

(assert (=> b!756007 (= res!511193 (or (not (is-Intermediate!7676 lt!336585)) (bvslt x!1131 (x!63995 lt!336585)) (not (= x!1131 (x!63995 lt!336585))) (not (= index!1321 (index!33073 lt!336585)))))))

(assert (=> b!756007 e!421590))

(declare-fun res!511191 () Bool)

(assert (=> b!756007 (=> (not res!511191) (not e!421590))))

(assert (=> b!756007 (= res!511191 (= lt!336590 lt!336588))))

(assert (=> b!756007 (= lt!336588 (Found!7676 j!159))))

(assert (=> b!756007 (= lt!336590 (seekEntryOrOpen!0 (select (arr!20069 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756007 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336584 () Unit!26106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41918 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26106)

(assert (=> b!756007 (= lt!336584 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756008 () Bool)

(declare-fun res!511203 () Bool)

(assert (=> b!756008 (=> (not res!511203) (not e!421589))))

(assert (=> b!756008 (= res!511203 (validKeyInArray!0 k!2102))))

(assert (= (and start!65792 res!511187) b!755999))

(assert (= (and b!755999 res!511186) b!755998))

(assert (= (and b!755998 res!511200) b!756008))

(assert (= (and b!756008 res!511203) b!755987))

(assert (= (and b!755987 res!511202) b!755988))

(assert (= (and b!755988 res!511196) b!755994))

(assert (= (and b!755994 res!511194) b!755986))

(assert (= (and b!755986 res!511197) b!756001))

(assert (= (and b!756001 res!511199) b!755995))

(assert (= (and b!755995 res!511189) b!756004))

(assert (= (and b!756004 res!511188) b!756002))

(assert (= (and b!756002 c!82781) b!756003))

(assert (= (and b!756002 (not c!82781)) b!756006))

(assert (= (and b!756002 res!511201) b!755996))

(assert (= (and b!755996 res!511190) b!756007))

(assert (= (and b!756007 res!511191) b!755993))

(assert (= (and b!756007 (not res!511193)) b!756005))

(assert (= (and b!756005 (not res!511198)) b!755989))

(assert (= (and b!755989 (not res!511195)) b!755990))

(assert (= (and b!755990 c!82782) b!755991))

(assert (= (and b!755990 (not c!82782)) b!755997))

(assert (= (and b!755990 res!511192) b!755992))

(assert (= (and b!755992 res!511185) b!756000))

(declare-fun m!704121 () Bool)

(assert (=> b!755988 m!704121))

(declare-fun m!704123 () Bool)

(assert (=> b!755989 m!704123))

(declare-fun m!704125 () Bool)

(assert (=> b!755989 m!704125))

(declare-fun m!704127 () Bool)

(assert (=> b!755995 m!704127))

(assert (=> b!755995 m!704127))

(declare-fun m!704129 () Bool)

(assert (=> b!755995 m!704129))

(assert (=> b!755995 m!704129))

(assert (=> b!755995 m!704127))

(declare-fun m!704131 () Bool)

(assert (=> b!755995 m!704131))

(declare-fun m!704133 () Bool)

(assert (=> b!756008 m!704133))

(declare-fun m!704135 () Bool)

(assert (=> b!756004 m!704135))

(assert (=> b!755998 m!704127))

(assert (=> b!755998 m!704127))

(declare-fun m!704137 () Bool)

(assert (=> b!755998 m!704137))

(declare-fun m!704139 () Bool)

(assert (=> start!65792 m!704139))

(declare-fun m!704141 () Bool)

(assert (=> start!65792 m!704141))

(declare-fun m!704143 () Bool)

(assert (=> b!755986 m!704143))

(declare-fun m!704145 () Bool)

(assert (=> b!755992 m!704145))

(declare-fun m!704147 () Bool)

(assert (=> b!755992 m!704147))

(assert (=> b!756003 m!704127))

(assert (=> b!756003 m!704127))

(declare-fun m!704149 () Bool)

(assert (=> b!756003 m!704149))

(assert (=> b!756007 m!704127))

(assert (=> b!756007 m!704127))

(declare-fun m!704151 () Bool)

(assert (=> b!756007 m!704151))

(declare-fun m!704153 () Bool)

(assert (=> b!756007 m!704153))

(declare-fun m!704155 () Bool)

(assert (=> b!756007 m!704155))

(declare-fun m!704157 () Bool)

(assert (=> b!755987 m!704157))

(assert (=> b!755993 m!704127))

(assert (=> b!755993 m!704127))

(declare-fun m!704159 () Bool)

(assert (=> b!755993 m!704159))

(assert (=> b!756006 m!704127))

(assert (=> b!756006 m!704127))

(declare-fun m!704161 () Bool)

(assert (=> b!756006 m!704161))

(assert (=> b!756005 m!704127))

(assert (=> b!756005 m!704127))

(assert (=> b!756005 m!704161))

(declare-fun m!704163 () Bool)

(assert (=> b!755996 m!704163))

(declare-fun m!704165 () Bool)

(assert (=> b!755996 m!704165))

(assert (=> b!755996 m!704123))

(declare-fun m!704167 () Bool)

(assert (=> b!755996 m!704167))

(assert (=> b!755996 m!704163))

(declare-fun m!704169 () Bool)

(assert (=> b!755996 m!704169))

(declare-fun m!704171 () Bool)

(assert (=> b!755994 m!704171))

(push 1)

