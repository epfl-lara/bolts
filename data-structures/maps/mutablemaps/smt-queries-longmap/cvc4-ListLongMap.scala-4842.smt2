; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66770 () Bool)

(assert start!66770)

(declare-fun b!768845 () Bool)

(declare-fun e!428178 () Bool)

(declare-fun e!428170 () Bool)

(assert (=> b!768845 (= e!428178 e!428170)))

(declare-fun res!520019 () Bool)

(assert (=> b!768845 (=> (not res!520019) (not e!428170))))

(declare-datatypes ((SeekEntryResult!7847 0))(
  ( (MissingZero!7847 (index!33755 (_ BitVec 32))) (Found!7847 (index!33756 (_ BitVec 32))) (Intermediate!7847 (undefined!8659 Bool) (index!33757 (_ BitVec 32)) (x!64715 (_ BitVec 32))) (Undefined!7847) (MissingVacant!7847 (index!33758 (_ BitVec 32))) )
))
(declare-fun lt!342057 () SeekEntryResult!7847)

(declare-fun lt!342059 () SeekEntryResult!7847)

(assert (=> b!768845 (= res!520019 (= lt!342057 lt!342059))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!342062 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42287 0))(
  ( (array!42288 (arr!20240 (Array (_ BitVec 32) (_ BitVec 64))) (size!20661 (_ BitVec 32))) )
))
(declare-fun lt!342061 () array!42287)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42287 (_ BitVec 32)) SeekEntryResult!7847)

(assert (=> b!768845 (= lt!342059 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342062 lt!342061 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768845 (= lt!342057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342062 mask!3328) lt!342062 lt!342061 mask!3328))))

(declare-fun a!3186 () array!42287)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!768845 (= lt!342062 (select (store (arr!20240 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!768845 (= lt!342061 (array!42288 (store (arr!20240 a!3186) i!1173 k!2102) (size!20661 a!3186)))))

(declare-fun b!768846 () Bool)

(declare-fun e!428171 () Bool)

(assert (=> b!768846 (= e!428171 true)))

(declare-datatypes ((Unit!26424 0))(
  ( (Unit!26425) )
))
(declare-fun lt!342064 () Unit!26424)

(declare-fun e!428179 () Unit!26424)

(assert (=> b!768846 (= lt!342064 e!428179)))

(declare-fun c!84812 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!768846 (= c!84812 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!342058 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768846 (= lt!342058 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!768847 () Bool)

(declare-fun res!520016 () Bool)

(declare-fun e!428177 () Bool)

(assert (=> b!768847 (=> (not res!520016) (not e!428177))))

(declare-datatypes ((List!14295 0))(
  ( (Nil!14292) (Cons!14291 (h!15390 (_ BitVec 64)) (t!20618 List!14295)) )
))
(declare-fun arrayNoDuplicates!0 (array!42287 (_ BitVec 32) List!14295) Bool)

(assert (=> b!768847 (= res!520016 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14292))))

(declare-fun b!768848 () Bool)

(declare-fun res!520012 () Bool)

(declare-fun e!428175 () Bool)

(assert (=> b!768848 (=> (not res!520012) (not e!428175))))

(assert (=> b!768848 (= res!520012 (and (= (size!20661 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20661 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20661 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!768849 () Bool)

(declare-fun Unit!26426 () Unit!26424)

(assert (=> b!768849 (= e!428179 Unit!26426)))

(declare-fun lt!342065 () SeekEntryResult!7847)

(assert (=> b!768849 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342058 (select (arr!20240 a!3186) j!159) a!3186 mask!3328) lt!342065)))

(declare-fun b!768850 () Bool)

(declare-fun res!520013 () Bool)

(assert (=> b!768850 (=> (not res!520013) (not e!428177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42287 (_ BitVec 32)) Bool)

(assert (=> b!768850 (= res!520013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!768851 () Bool)

(declare-fun res!520027 () Bool)

(assert (=> b!768851 (=> (not res!520027) (not e!428178))))

(declare-fun e!428172 () Bool)

(assert (=> b!768851 (= res!520027 e!428172)))

(declare-fun c!84813 () Bool)

(assert (=> b!768851 (= c!84813 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!768852 () Bool)

(assert (=> b!768852 (= e!428175 e!428177)))

(declare-fun res!520023 () Bool)

(assert (=> b!768852 (=> (not res!520023) (not e!428177))))

(declare-fun lt!342067 () SeekEntryResult!7847)

(assert (=> b!768852 (= res!520023 (or (= lt!342067 (MissingZero!7847 i!1173)) (= lt!342067 (MissingVacant!7847 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42287 (_ BitVec 32)) SeekEntryResult!7847)

(assert (=> b!768852 (= lt!342067 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!768854 () Bool)

(declare-fun e!428176 () Bool)

(declare-fun e!428173 () Bool)

(assert (=> b!768854 (= e!428176 e!428173)))

(declare-fun res!520025 () Bool)

(assert (=> b!768854 (=> (not res!520025) (not e!428173))))

(declare-fun lt!342063 () SeekEntryResult!7847)

(assert (=> b!768854 (= res!520025 (= (seekEntryOrOpen!0 (select (arr!20240 a!3186) j!159) a!3186 mask!3328) lt!342063))))

(assert (=> b!768854 (= lt!342063 (Found!7847 j!159))))

(declare-fun b!768855 () Bool)

(assert (=> b!768855 (= e!428177 e!428178)))

(declare-fun res!520026 () Bool)

(assert (=> b!768855 (=> (not res!520026) (not e!428178))))

(assert (=> b!768855 (= res!520026 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20240 a!3186) j!159) mask!3328) (select (arr!20240 a!3186) j!159) a!3186 mask!3328) lt!342065))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!768855 (= lt!342065 (Intermediate!7847 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!768856 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42287 (_ BitVec 32)) SeekEntryResult!7847)

(assert (=> b!768856 (= e!428173 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20240 a!3186) j!159) a!3186 mask!3328) lt!342063))))

(declare-fun b!768857 () Bool)

(assert (=> b!768857 (= e!428172 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20240 a!3186) j!159) a!3186 mask!3328) (Found!7847 j!159)))))

(declare-fun b!768858 () Bool)

(declare-fun res!520015 () Bool)

(assert (=> b!768858 (=> (not res!520015) (not e!428175))))

(declare-fun arrayContainsKey!0 (array!42287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!768858 (= res!520015 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!768859 () Bool)

(declare-fun res!520017 () Bool)

(assert (=> b!768859 (=> (not res!520017) (not e!428177))))

(assert (=> b!768859 (= res!520017 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20661 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20661 a!3186))))))

(declare-fun b!768860 () Bool)

(assert (=> b!768860 (= e!428170 (not e!428171))))

(declare-fun res!520021 () Bool)

(assert (=> b!768860 (=> res!520021 e!428171)))

(assert (=> b!768860 (= res!520021 (or (not (is-Intermediate!7847 lt!342059)) (bvsge x!1131 (x!64715 lt!342059))))))

(assert (=> b!768860 e!428176))

(declare-fun res!520020 () Bool)

(assert (=> b!768860 (=> (not res!520020) (not e!428176))))

(assert (=> b!768860 (= res!520020 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342066 () Unit!26424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26424)

(assert (=> b!768860 (= lt!342066 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!768861 () Bool)

(declare-fun res!520018 () Bool)

(assert (=> b!768861 (=> (not res!520018) (not e!428178))))

(assert (=> b!768861 (= res!520018 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20240 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768862 () Bool)

(declare-fun res!520024 () Bool)

(assert (=> b!768862 (=> (not res!520024) (not e!428175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!768862 (= res!520024 (validKeyInArray!0 (select (arr!20240 a!3186) j!159)))))

(declare-fun b!768853 () Bool)

(assert (=> b!768853 (= e!428172 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20240 a!3186) j!159) a!3186 mask!3328) lt!342065))))

(declare-fun res!520014 () Bool)

(assert (=> start!66770 (=> (not res!520014) (not e!428175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66770 (= res!520014 (validMask!0 mask!3328))))

(assert (=> start!66770 e!428175))

(assert (=> start!66770 true))

(declare-fun array_inv!16014 (array!42287) Bool)

(assert (=> start!66770 (array_inv!16014 a!3186)))

(declare-fun b!768863 () Bool)

(declare-fun res!520022 () Bool)

(assert (=> b!768863 (=> (not res!520022) (not e!428175))))

(assert (=> b!768863 (= res!520022 (validKeyInArray!0 k!2102))))

(declare-fun b!768864 () Bool)

(declare-fun Unit!26427 () Unit!26424)

(assert (=> b!768864 (= e!428179 Unit!26427)))

(declare-fun lt!342060 () SeekEntryResult!7847)

(assert (=> b!768864 (= lt!342060 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20240 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!768864 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342058 resIntermediateIndex!5 (select (arr!20240 a!3186) j!159) a!3186 mask!3328) (Found!7847 j!159))))

(assert (= (and start!66770 res!520014) b!768848))

(assert (= (and b!768848 res!520012) b!768862))

(assert (= (and b!768862 res!520024) b!768863))

(assert (= (and b!768863 res!520022) b!768858))

(assert (= (and b!768858 res!520015) b!768852))

(assert (= (and b!768852 res!520023) b!768850))

(assert (= (and b!768850 res!520013) b!768847))

(assert (= (and b!768847 res!520016) b!768859))

(assert (= (and b!768859 res!520017) b!768855))

(assert (= (and b!768855 res!520026) b!768861))

(assert (= (and b!768861 res!520018) b!768851))

(assert (= (and b!768851 c!84813) b!768853))

(assert (= (and b!768851 (not c!84813)) b!768857))

(assert (= (and b!768851 res!520027) b!768845))

(assert (= (and b!768845 res!520019) b!768860))

(assert (= (and b!768860 res!520020) b!768854))

(assert (= (and b!768854 res!520025) b!768856))

(assert (= (and b!768860 (not res!520021)) b!768846))

(assert (= (and b!768846 c!84812) b!768849))

(assert (= (and b!768846 (not c!84812)) b!768864))

(declare-fun m!714399 () Bool)

(assert (=> b!768863 m!714399))

(declare-fun m!714401 () Bool)

(assert (=> b!768864 m!714401))

(assert (=> b!768864 m!714401))

(declare-fun m!714403 () Bool)

(assert (=> b!768864 m!714403))

(assert (=> b!768864 m!714401))

(declare-fun m!714405 () Bool)

(assert (=> b!768864 m!714405))

(assert (=> b!768862 m!714401))

(assert (=> b!768862 m!714401))

(declare-fun m!714407 () Bool)

(assert (=> b!768862 m!714407))

(assert (=> b!768856 m!714401))

(assert (=> b!768856 m!714401))

(declare-fun m!714409 () Bool)

(assert (=> b!768856 m!714409))

(declare-fun m!714411 () Bool)

(assert (=> b!768846 m!714411))

(assert (=> b!768857 m!714401))

(assert (=> b!768857 m!714401))

(assert (=> b!768857 m!714403))

(declare-fun m!714413 () Bool)

(assert (=> b!768847 m!714413))

(declare-fun m!714415 () Bool)

(assert (=> b!768858 m!714415))

(declare-fun m!714417 () Bool)

(assert (=> start!66770 m!714417))

(declare-fun m!714419 () Bool)

(assert (=> start!66770 m!714419))

(declare-fun m!714421 () Bool)

(assert (=> b!768860 m!714421))

(declare-fun m!714423 () Bool)

(assert (=> b!768860 m!714423))

(assert (=> b!768849 m!714401))

(assert (=> b!768849 m!714401))

(declare-fun m!714425 () Bool)

(assert (=> b!768849 m!714425))

(assert (=> b!768855 m!714401))

(assert (=> b!768855 m!714401))

(declare-fun m!714427 () Bool)

(assert (=> b!768855 m!714427))

(assert (=> b!768855 m!714427))

(assert (=> b!768855 m!714401))

(declare-fun m!714429 () Bool)

(assert (=> b!768855 m!714429))

(declare-fun m!714431 () Bool)

(assert (=> b!768861 m!714431))

(declare-fun m!714433 () Bool)

(assert (=> b!768850 m!714433))

(declare-fun m!714435 () Bool)

(assert (=> b!768852 m!714435))

(assert (=> b!768854 m!714401))

(assert (=> b!768854 m!714401))

(declare-fun m!714437 () Bool)

(assert (=> b!768854 m!714437))

(declare-fun m!714439 () Bool)

(assert (=> b!768845 m!714439))

(declare-fun m!714441 () Bool)

(assert (=> b!768845 m!714441))

(declare-fun m!714443 () Bool)

(assert (=> b!768845 m!714443))

(assert (=> b!768845 m!714439))

(declare-fun m!714445 () Bool)

(assert (=> b!768845 m!714445))

(declare-fun m!714447 () Bool)

(assert (=> b!768845 m!714447))

(assert (=> b!768853 m!714401))

(assert (=> b!768853 m!714401))

(declare-fun m!714449 () Bool)

(assert (=> b!768853 m!714449))

(push 1)

