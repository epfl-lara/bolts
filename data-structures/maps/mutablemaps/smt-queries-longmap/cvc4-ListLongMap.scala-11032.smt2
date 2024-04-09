; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129074 () Bool)

(assert start!129074)

(declare-fun res!1033189 () Bool)

(declare-fun e!844583 () Bool)

(assert (=> start!129074 (=> (not res!1033189) (not e!844583))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129074 (= res!1033189 (validMask!0 mask!2512))))

(assert (=> start!129074 e!844583))

(assert (=> start!129074 true))

(declare-datatypes ((array!100843 0))(
  ( (array!100844 (arr!48654 (Array (_ BitVec 32) (_ BitVec 64))) (size!49205 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100843)

(declare-fun array_inv!37599 (array!100843) Bool)

(assert (=> start!129074 (array_inv!37599 a!2804)))

(declare-fun b!1513206 () Bool)

(declare-fun res!1033183 () Bool)

(assert (=> b!1513206 (=> (not res!1033183) (not e!844583))))

(declare-datatypes ((List!35317 0))(
  ( (Nil!35314) (Cons!35313 (h!36726 (_ BitVec 64)) (t!50018 List!35317)) )
))
(declare-fun arrayNoDuplicates!0 (array!100843 (_ BitVec 32) List!35317) Bool)

(assert (=> b!1513206 (= res!1033183 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35314))))

(declare-fun b!1513207 () Bool)

(declare-fun res!1033194 () Bool)

(assert (=> b!1513207 (=> (not res!1033194) (not e!844583))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513207 (= res!1033194 (validKeyInArray!0 (select (arr!48654 a!2804) j!70)))))

(declare-fun b!1513208 () Bool)

(declare-fun e!844580 () Bool)

(declare-fun e!844586 () Bool)

(assert (=> b!1513208 (= e!844580 e!844586)))

(declare-fun res!1033184 () Bool)

(assert (=> b!1513208 (=> (not res!1033184) (not e!844586))))

(declare-fun lt!655873 () array!100843)

(declare-fun lt!655870 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12846 0))(
  ( (MissingZero!12846 (index!53778 (_ BitVec 32))) (Found!12846 (index!53779 (_ BitVec 32))) (Intermediate!12846 (undefined!13658 Bool) (index!53780 (_ BitVec 32)) (x!135505 (_ BitVec 32))) (Undefined!12846) (MissingVacant!12846 (index!53781 (_ BitVec 32))) )
))
(declare-fun lt!655869 () SeekEntryResult!12846)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100843 (_ BitVec 32)) SeekEntryResult!12846)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513208 (= res!1033184 (= lt!655869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655870 mask!2512) lt!655870 lt!655873 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513208 (= lt!655870 (select (store (arr!48654 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513208 (= lt!655873 (array!100844 (store (arr!48654 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49205 a!2804)))))

(declare-fun b!1513209 () Bool)

(assert (=> b!1513209 (= e!844586 (not true))))

(declare-fun e!844581 () Bool)

(assert (=> b!1513209 e!844581))

(declare-fun res!1033188 () Bool)

(assert (=> b!1513209 (=> (not res!1033188) (not e!844581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100843 (_ BitVec 32)) Bool)

(assert (=> b!1513209 (= res!1033188 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50516 0))(
  ( (Unit!50517) )
))
(declare-fun lt!655872 () Unit!50516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50516)

(assert (=> b!1513209 (= lt!655872 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513210 () Bool)

(declare-fun res!1033193 () Bool)

(assert (=> b!1513210 (=> (not res!1033193) (not e!844583))))

(assert (=> b!1513210 (= res!1033193 (validKeyInArray!0 (select (arr!48654 a!2804) i!961)))))

(declare-fun b!1513211 () Bool)

(declare-fun e!844585 () Bool)

(declare-fun e!844582 () Bool)

(assert (=> b!1513211 (= e!844585 e!844582)))

(declare-fun res!1033186 () Bool)

(assert (=> b!1513211 (=> (not res!1033186) (not e!844582))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100843 (_ BitVec 32)) SeekEntryResult!12846)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100843 (_ BitVec 32)) SeekEntryResult!12846)

(assert (=> b!1513211 (= res!1033186 (= (seekEntryOrOpen!0 (select (arr!48654 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48654 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513212 () Bool)

(declare-fun res!1033191 () Bool)

(assert (=> b!1513212 (=> (not res!1033191) (not e!844580))))

(declare-fun lt!655871 () SeekEntryResult!12846)

(assert (=> b!1513212 (= res!1033191 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48654 a!2804) j!70) a!2804 mask!2512) lt!655871))))

(declare-fun b!1513213 () Bool)

(declare-fun res!1033192 () Bool)

(assert (=> b!1513213 (=> (not res!1033192) (not e!844583))))

(assert (=> b!1513213 (= res!1033192 (and (= (size!49205 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49205 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49205 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513214 () Bool)

(assert (=> b!1513214 (= e!844583 e!844580)))

(declare-fun res!1033190 () Bool)

(assert (=> b!1513214 (=> (not res!1033190) (not e!844580))))

(assert (=> b!1513214 (= res!1033190 (= lt!655869 lt!655871))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513214 (= lt!655871 (Intermediate!12846 false resIndex!21 resX!21))))

(assert (=> b!1513214 (= lt!655869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48654 a!2804) j!70) mask!2512) (select (arr!48654 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513215 () Bool)

(assert (=> b!1513215 (= e!844581 e!844585)))

(declare-fun res!1033181 () Bool)

(assert (=> b!1513215 (=> res!1033181 e!844585)))

(assert (=> b!1513215 (= res!1033181 (or (not (= (select (arr!48654 a!2804) j!70) lt!655870)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48654 a!2804) index!487) (select (arr!48654 a!2804) j!70)) (not (= (select (arr!48654 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513216 () Bool)

(assert (=> b!1513216 (= e!844582 (= (seekEntryOrOpen!0 lt!655870 lt!655873 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655870 lt!655873 mask!2512)))))

(declare-fun b!1513217 () Bool)

(declare-fun res!1033185 () Bool)

(assert (=> b!1513217 (=> (not res!1033185) (not e!844581))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100843 (_ BitVec 32)) SeekEntryResult!12846)

(assert (=> b!1513217 (= res!1033185 (= (seekEntry!0 (select (arr!48654 a!2804) j!70) a!2804 mask!2512) (Found!12846 j!70)))))

(declare-fun b!1513218 () Bool)

(declare-fun res!1033182 () Bool)

(assert (=> b!1513218 (=> (not res!1033182) (not e!844583))))

(assert (=> b!1513218 (= res!1033182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513219 () Bool)

(declare-fun res!1033187 () Bool)

(assert (=> b!1513219 (=> (not res!1033187) (not e!844583))))

(assert (=> b!1513219 (= res!1033187 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49205 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49205 a!2804))))))

(assert (= (and start!129074 res!1033189) b!1513213))

(assert (= (and b!1513213 res!1033192) b!1513210))

(assert (= (and b!1513210 res!1033193) b!1513207))

(assert (= (and b!1513207 res!1033194) b!1513218))

(assert (= (and b!1513218 res!1033182) b!1513206))

(assert (= (and b!1513206 res!1033183) b!1513219))

(assert (= (and b!1513219 res!1033187) b!1513214))

(assert (= (and b!1513214 res!1033190) b!1513212))

(assert (= (and b!1513212 res!1033191) b!1513208))

(assert (= (and b!1513208 res!1033184) b!1513209))

(assert (= (and b!1513209 res!1033188) b!1513217))

(assert (= (and b!1513217 res!1033185) b!1513215))

(assert (= (and b!1513215 (not res!1033181)) b!1513211))

(assert (= (and b!1513211 res!1033186) b!1513216))

(declare-fun m!1396103 () Bool)

(assert (=> b!1513208 m!1396103))

(assert (=> b!1513208 m!1396103))

(declare-fun m!1396105 () Bool)

(assert (=> b!1513208 m!1396105))

(declare-fun m!1396107 () Bool)

(assert (=> b!1513208 m!1396107))

(declare-fun m!1396109 () Bool)

(assert (=> b!1513208 m!1396109))

(declare-fun m!1396111 () Bool)

(assert (=> b!1513211 m!1396111))

(assert (=> b!1513211 m!1396111))

(declare-fun m!1396113 () Bool)

(assert (=> b!1513211 m!1396113))

(assert (=> b!1513211 m!1396111))

(declare-fun m!1396115 () Bool)

(assert (=> b!1513211 m!1396115))

(assert (=> b!1513212 m!1396111))

(assert (=> b!1513212 m!1396111))

(declare-fun m!1396117 () Bool)

(assert (=> b!1513212 m!1396117))

(declare-fun m!1396119 () Bool)

(assert (=> b!1513218 m!1396119))

(declare-fun m!1396121 () Bool)

(assert (=> b!1513209 m!1396121))

(declare-fun m!1396123 () Bool)

(assert (=> b!1513209 m!1396123))

(assert (=> b!1513217 m!1396111))

(assert (=> b!1513217 m!1396111))

(declare-fun m!1396125 () Bool)

(assert (=> b!1513217 m!1396125))

(declare-fun m!1396127 () Bool)

(assert (=> b!1513210 m!1396127))

(assert (=> b!1513210 m!1396127))

(declare-fun m!1396129 () Bool)

(assert (=> b!1513210 m!1396129))

(assert (=> b!1513207 m!1396111))

(assert (=> b!1513207 m!1396111))

(declare-fun m!1396131 () Bool)

(assert (=> b!1513207 m!1396131))

(declare-fun m!1396133 () Bool)

(assert (=> start!129074 m!1396133))

(declare-fun m!1396135 () Bool)

(assert (=> start!129074 m!1396135))

(declare-fun m!1396137 () Bool)

(assert (=> b!1513216 m!1396137))

(declare-fun m!1396139 () Bool)

(assert (=> b!1513216 m!1396139))

(assert (=> b!1513214 m!1396111))

(assert (=> b!1513214 m!1396111))

(declare-fun m!1396141 () Bool)

(assert (=> b!1513214 m!1396141))

(assert (=> b!1513214 m!1396141))

(assert (=> b!1513214 m!1396111))

(declare-fun m!1396143 () Bool)

(assert (=> b!1513214 m!1396143))

(assert (=> b!1513215 m!1396111))

(declare-fun m!1396145 () Bool)

(assert (=> b!1513215 m!1396145))

(declare-fun m!1396147 () Bool)

(assert (=> b!1513206 m!1396147))

(push 1)

