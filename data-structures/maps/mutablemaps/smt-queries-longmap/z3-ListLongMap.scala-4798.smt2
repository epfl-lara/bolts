; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65868 () Bool)

(assert start!65868)

(declare-fun b!758585 () Bool)

(declare-fun e!422947 () Bool)

(assert (=> b!758585 (= e!422947 true)))

(declare-datatypes ((SeekEntryResult!7714 0))(
  ( (MissingZero!7714 (index!33223 (_ BitVec 32))) (Found!7714 (index!33224 (_ BitVec 32))) (Intermediate!7714 (undefined!8526 Bool) (index!33225 (_ BitVec 32)) (x!64137 (_ BitVec 32))) (Undefined!7714) (MissingVacant!7714 (index!33226 (_ BitVec 32))) )
))
(declare-fun lt!338017 () SeekEntryResult!7714)

(declare-fun lt!338021 () SeekEntryResult!7714)

(assert (=> b!758585 (= lt!338017 lt!338021)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41994 0))(
  ( (array!41995 (arr!20107 (Array (_ BitVec 32) (_ BitVec 64))) (size!20528 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41994)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-datatypes ((Unit!26258 0))(
  ( (Unit!26259) )
))
(declare-fun lt!338030 () Unit!26258)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41994 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26258)

(assert (=> b!758585 (= lt!338030 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k0!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758586 () Bool)

(declare-fun e!422953 () Bool)

(declare-fun e!422950 () Bool)

(assert (=> b!758586 (= e!422953 e!422950)))

(declare-fun res!513334 () Bool)

(assert (=> b!758586 (=> (not res!513334) (not e!422950))))

(declare-fun lt!338027 () SeekEntryResult!7714)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41994 (_ BitVec 32)) SeekEntryResult!7714)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758586 (= res!513334 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20107 a!3186) j!159) mask!3328) (select (arr!20107 a!3186) j!159) a!3186 mask!3328) lt!338027))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758586 (= lt!338027 (Intermediate!7714 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758587 () Bool)

(declare-fun e!422951 () Bool)

(declare-fun e!422957 () Bool)

(assert (=> b!758587 (= e!422951 e!422957)))

(declare-fun res!513340 () Bool)

(assert (=> b!758587 (=> res!513340 e!422957)))

(declare-fun lt!338028 () (_ BitVec 64))

(declare-fun lt!338018 () (_ BitVec 64))

(assert (=> b!758587 (= res!513340 (= lt!338028 lt!338018))))

(assert (=> b!758587 (= lt!338028 (select (store (arr!20107 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!758588 () Bool)

(declare-fun e!422955 () Unit!26258)

(declare-fun Unit!26260 () Unit!26258)

(assert (=> b!758588 (= e!422955 Unit!26260)))

(declare-fun b!758589 () Bool)

(assert (=> b!758589 (= e!422957 e!422947)))

(declare-fun res!513332 () Bool)

(assert (=> b!758589 (=> res!513332 e!422947)))

(assert (=> b!758589 (= res!513332 (or (not (= (select (arr!20107 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!338025 () SeekEntryResult!7714)

(declare-fun lt!338019 () SeekEntryResult!7714)

(assert (=> b!758589 (and (= lt!338019 lt!338017) (= lt!338025 lt!338021))))

(declare-fun lt!338020 () array!41994)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41994 (_ BitVec 32)) SeekEntryResult!7714)

(assert (=> b!758589 (= lt!338017 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!338018 lt!338020 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41994 (_ BitVec 32)) SeekEntryResult!7714)

(assert (=> b!758589 (= lt!338019 (seekEntryOrOpen!0 lt!338018 lt!338020 mask!3328))))

(assert (=> b!758589 (= lt!338028 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!338016 () Unit!26258)

(assert (=> b!758589 (= lt!338016 e!422955)))

(declare-fun c!83010 () Bool)

(assert (=> b!758589 (= c!83010 (= lt!338028 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758590 () Bool)

(declare-fun res!513343 () Bool)

(assert (=> b!758590 (=> (not res!513343) (not e!422950))))

(declare-fun e!422954 () Bool)

(assert (=> b!758590 (= res!513343 e!422954)))

(declare-fun c!83009 () Bool)

(assert (=> b!758590 (= c!83009 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!513328 () Bool)

(declare-fun e!422952 () Bool)

(assert (=> start!65868 (=> (not res!513328) (not e!422952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65868 (= res!513328 (validMask!0 mask!3328))))

(assert (=> start!65868 e!422952))

(assert (=> start!65868 true))

(declare-fun array_inv!15881 (array!41994) Bool)

(assert (=> start!65868 (array_inv!15881 a!3186)))

(declare-fun b!758591 () Bool)

(declare-fun res!513331 () Bool)

(assert (=> b!758591 (=> (not res!513331) (not e!422953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41994 (_ BitVec 32)) Bool)

(assert (=> b!758591 (= res!513331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758592 () Bool)

(declare-fun res!513341 () Bool)

(assert (=> b!758592 (=> (not res!513341) (not e!422950))))

(assert (=> b!758592 (= res!513341 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20107 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758593 () Bool)

(declare-fun res!513344 () Bool)

(assert (=> b!758593 (=> (not res!513344) (not e!422952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758593 (= res!513344 (validKeyInArray!0 (select (arr!20107 a!3186) j!159)))))

(declare-fun b!758594 () Bool)

(assert (=> b!758594 (= e!422954 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20107 a!3186) j!159) a!3186 mask!3328) lt!338027))))

(declare-fun b!758595 () Bool)

(declare-fun Unit!26261 () Unit!26258)

(assert (=> b!758595 (= e!422955 Unit!26261)))

(assert (=> b!758595 false))

(declare-fun b!758596 () Bool)

(declare-fun res!513342 () Bool)

(assert (=> b!758596 (=> (not res!513342) (not e!422952))))

(assert (=> b!758596 (= res!513342 (and (= (size!20528 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20528 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20528 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758597 () Bool)

(declare-fun res!513333 () Bool)

(assert (=> b!758597 (=> (not res!513333) (not e!422952))))

(assert (=> b!758597 (= res!513333 (validKeyInArray!0 k0!2102))))

(declare-fun b!758598 () Bool)

(declare-fun res!513335 () Bool)

(assert (=> b!758598 (=> (not res!513335) (not e!422952))))

(declare-fun arrayContainsKey!0 (array!41994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758598 (= res!513335 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758599 () Bool)

(declare-fun e!422956 () Bool)

(assert (=> b!758599 (= e!422950 e!422956)))

(declare-fun res!513329 () Bool)

(assert (=> b!758599 (=> (not res!513329) (not e!422956))))

(declare-fun lt!338024 () SeekEntryResult!7714)

(declare-fun lt!338023 () SeekEntryResult!7714)

(assert (=> b!758599 (= res!513329 (= lt!338024 lt!338023))))

(assert (=> b!758599 (= lt!338023 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338018 lt!338020 mask!3328))))

(assert (=> b!758599 (= lt!338024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338018 mask!3328) lt!338018 lt!338020 mask!3328))))

(assert (=> b!758599 (= lt!338018 (select (store (arr!20107 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!758599 (= lt!338020 (array!41995 (store (arr!20107 a!3186) i!1173 k0!2102) (size!20528 a!3186)))))

(declare-fun b!758600 () Bool)

(declare-fun e!422948 () Bool)

(assert (=> b!758600 (= e!422948 e!422951)))

(declare-fun res!513336 () Bool)

(assert (=> b!758600 (=> res!513336 e!422951)))

(declare-fun lt!338022 () SeekEntryResult!7714)

(assert (=> b!758600 (= res!513336 (not (= lt!338021 lt!338022)))))

(assert (=> b!758600 (= lt!338021 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20107 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!422958 () Bool)

(declare-fun b!758601 () Bool)

(assert (=> b!758601 (= e!422958 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20107 a!3186) j!159) a!3186 mask!3328) lt!338022))))

(declare-fun b!758602 () Bool)

(assert (=> b!758602 (= e!422956 (not e!422948))))

(declare-fun res!513338 () Bool)

(assert (=> b!758602 (=> res!513338 e!422948)))

(get-info :version)

(assert (=> b!758602 (= res!513338 (or (not ((_ is Intermediate!7714) lt!338023)) (bvslt x!1131 (x!64137 lt!338023)) (not (= x!1131 (x!64137 lt!338023))) (not (= index!1321 (index!33225 lt!338023)))))))

(assert (=> b!758602 e!422958))

(declare-fun res!513337 () Bool)

(assert (=> b!758602 (=> (not res!513337) (not e!422958))))

(assert (=> b!758602 (= res!513337 (= lt!338025 lt!338022))))

(assert (=> b!758602 (= lt!338022 (Found!7714 j!159))))

(assert (=> b!758602 (= lt!338025 (seekEntryOrOpen!0 (select (arr!20107 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!758602 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338026 () Unit!26258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41994 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26258)

(assert (=> b!758602 (= lt!338026 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758603 () Bool)

(declare-fun res!513345 () Bool)

(assert (=> b!758603 (=> (not res!513345) (not e!422953))))

(assert (=> b!758603 (= res!513345 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20528 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20528 a!3186))))))

(declare-fun b!758604 () Bool)

(declare-fun res!513339 () Bool)

(assert (=> b!758604 (=> (not res!513339) (not e!422953))))

(declare-datatypes ((List!14162 0))(
  ( (Nil!14159) (Cons!14158 (h!15230 (_ BitVec 64)) (t!20485 List!14162)) )
))
(declare-fun arrayNoDuplicates!0 (array!41994 (_ BitVec 32) List!14162) Bool)

(assert (=> b!758604 (= res!513339 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14159))))

(declare-fun b!758605 () Bool)

(assert (=> b!758605 (= e!422954 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20107 a!3186) j!159) a!3186 mask!3328) (Found!7714 j!159)))))

(declare-fun b!758606 () Bool)

(assert (=> b!758606 (= e!422952 e!422953)))

(declare-fun res!513330 () Bool)

(assert (=> b!758606 (=> (not res!513330) (not e!422953))))

(declare-fun lt!338029 () SeekEntryResult!7714)

(assert (=> b!758606 (= res!513330 (or (= lt!338029 (MissingZero!7714 i!1173)) (= lt!338029 (MissingVacant!7714 i!1173))))))

(assert (=> b!758606 (= lt!338029 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!65868 res!513328) b!758596))

(assert (= (and b!758596 res!513342) b!758593))

(assert (= (and b!758593 res!513344) b!758597))

(assert (= (and b!758597 res!513333) b!758598))

(assert (= (and b!758598 res!513335) b!758606))

(assert (= (and b!758606 res!513330) b!758591))

(assert (= (and b!758591 res!513331) b!758604))

(assert (= (and b!758604 res!513339) b!758603))

(assert (= (and b!758603 res!513345) b!758586))

(assert (= (and b!758586 res!513334) b!758592))

(assert (= (and b!758592 res!513341) b!758590))

(assert (= (and b!758590 c!83009) b!758594))

(assert (= (and b!758590 (not c!83009)) b!758605))

(assert (= (and b!758590 res!513343) b!758599))

(assert (= (and b!758599 res!513329) b!758602))

(assert (= (and b!758602 res!513337) b!758601))

(assert (= (and b!758602 (not res!513338)) b!758600))

(assert (= (and b!758600 (not res!513336)) b!758587))

(assert (= (and b!758587 (not res!513340)) b!758589))

(assert (= (and b!758589 c!83010) b!758595))

(assert (= (and b!758589 (not c!83010)) b!758588))

(assert (= (and b!758589 (not res!513332)) b!758585))

(declare-fun m!706125 () Bool)

(assert (=> b!758600 m!706125))

(assert (=> b!758600 m!706125))

(declare-fun m!706127 () Bool)

(assert (=> b!758600 m!706127))

(declare-fun m!706129 () Bool)

(assert (=> b!758591 m!706129))

(declare-fun m!706131 () Bool)

(assert (=> b!758604 m!706131))

(declare-fun m!706133 () Bool)

(assert (=> b!758597 m!706133))

(assert (=> b!758593 m!706125))

(assert (=> b!758593 m!706125))

(declare-fun m!706135 () Bool)

(assert (=> b!758593 m!706135))

(assert (=> b!758601 m!706125))

(assert (=> b!758601 m!706125))

(declare-fun m!706137 () Bool)

(assert (=> b!758601 m!706137))

(assert (=> b!758605 m!706125))

(assert (=> b!758605 m!706125))

(assert (=> b!758605 m!706127))

(declare-fun m!706139 () Bool)

(assert (=> b!758585 m!706139))

(declare-fun m!706141 () Bool)

(assert (=> b!758592 m!706141))

(declare-fun m!706143 () Bool)

(assert (=> b!758589 m!706143))

(declare-fun m!706145 () Bool)

(assert (=> b!758589 m!706145))

(declare-fun m!706147 () Bool)

(assert (=> b!758589 m!706147))

(assert (=> b!758594 m!706125))

(assert (=> b!758594 m!706125))

(declare-fun m!706149 () Bool)

(assert (=> b!758594 m!706149))

(declare-fun m!706151 () Bool)

(assert (=> b!758599 m!706151))

(declare-fun m!706153 () Bool)

(assert (=> b!758599 m!706153))

(declare-fun m!706155 () Bool)

(assert (=> b!758599 m!706155))

(declare-fun m!706157 () Bool)

(assert (=> b!758599 m!706157))

(declare-fun m!706159 () Bool)

(assert (=> b!758599 m!706159))

(assert (=> b!758599 m!706153))

(assert (=> b!758602 m!706125))

(assert (=> b!758602 m!706125))

(declare-fun m!706161 () Bool)

(assert (=> b!758602 m!706161))

(declare-fun m!706163 () Bool)

(assert (=> b!758602 m!706163))

(declare-fun m!706165 () Bool)

(assert (=> b!758602 m!706165))

(assert (=> b!758587 m!706151))

(declare-fun m!706167 () Bool)

(assert (=> b!758587 m!706167))

(declare-fun m!706169 () Bool)

(assert (=> start!65868 m!706169))

(declare-fun m!706171 () Bool)

(assert (=> start!65868 m!706171))

(assert (=> b!758586 m!706125))

(assert (=> b!758586 m!706125))

(declare-fun m!706173 () Bool)

(assert (=> b!758586 m!706173))

(assert (=> b!758586 m!706173))

(assert (=> b!758586 m!706125))

(declare-fun m!706175 () Bool)

(assert (=> b!758586 m!706175))

(declare-fun m!706177 () Bool)

(assert (=> b!758598 m!706177))

(declare-fun m!706179 () Bool)

(assert (=> b!758606 m!706179))

(check-sat (not b!758589) (not b!758598) (not b!758606) (not b!758602) (not b!758586) (not start!65868) (not b!758593) (not b!758601) (not b!758597) (not b!758600) (not b!758599) (not b!758604) (not b!758585) (not b!758594) (not b!758591) (not b!758605))
(check-sat)
