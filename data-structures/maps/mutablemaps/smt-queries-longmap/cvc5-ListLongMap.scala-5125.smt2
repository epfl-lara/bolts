; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69592 () Bool)

(assert start!69592)

(declare-fun res!554188 () Bool)

(declare-fun e!448755 () Bool)

(assert (=> start!69592 (=> (not res!554188) (not e!448755))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69592 (= res!554188 (validMask!0 mask!3266))))

(assert (=> start!69592 e!448755))

(assert (=> start!69592 true))

(declare-datatypes ((array!44039 0))(
  ( (array!44040 (arr!21087 (Array (_ BitVec 32) (_ BitVec 64))) (size!21508 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44039)

(declare-fun array_inv!16861 (array!44039) Bool)

(assert (=> start!69592 (array_inv!16861 a!3170)))

(declare-fun b!810730 () Bool)

(declare-fun res!554184 () Bool)

(assert (=> b!810730 (=> (not res!554184) (not e!448755))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810730 (= res!554184 (validKeyInArray!0 (select (arr!21087 a!3170) j!153)))))

(declare-fun b!810731 () Bool)

(declare-fun res!554179 () Bool)

(declare-fun e!448751 () Bool)

(assert (=> b!810731 (=> (not res!554179) (not e!448751))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810731 (= res!554179 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21508 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21087 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21508 a!3170)) (= (select (arr!21087 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810732 () Bool)

(declare-fun res!554183 () Bool)

(assert (=> b!810732 (=> (not res!554183) (not e!448755))))

(assert (=> b!810732 (= res!554183 (and (= (size!21508 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21508 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21508 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810733 () Bool)

(declare-fun e!448754 () Bool)

(declare-fun e!448756 () Bool)

(assert (=> b!810733 (= e!448754 e!448756)))

(declare-fun res!554185 () Bool)

(assert (=> b!810733 (=> (not res!554185) (not e!448756))))

(declare-datatypes ((SeekEntryResult!8685 0))(
  ( (MissingZero!8685 (index!37107 (_ BitVec 32))) (Found!8685 (index!37108 (_ BitVec 32))) (Intermediate!8685 (undefined!9497 Bool) (index!37109 (_ BitVec 32)) (x!67946 (_ BitVec 32))) (Undefined!8685) (MissingVacant!8685 (index!37110 (_ BitVec 32))) )
))
(declare-fun lt!363468 () SeekEntryResult!8685)

(declare-fun lt!363469 () SeekEntryResult!8685)

(assert (=> b!810733 (= res!554185 (= lt!363468 lt!363469))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44039 (_ BitVec 32)) SeekEntryResult!8685)

(assert (=> b!810733 (= lt!363469 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21087 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44039 (_ BitVec 32)) SeekEntryResult!8685)

(assert (=> b!810733 (= lt!363468 (seekEntryOrOpen!0 (select (arr!21087 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810734 () Bool)

(assert (=> b!810734 (= e!448755 e!448751)))

(declare-fun res!554186 () Bool)

(assert (=> b!810734 (=> (not res!554186) (not e!448751))))

(declare-fun lt!363462 () SeekEntryResult!8685)

(assert (=> b!810734 (= res!554186 (or (= lt!363462 (MissingZero!8685 i!1163)) (= lt!363462 (MissingVacant!8685 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!810734 (= lt!363462 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810735 () Bool)

(declare-fun res!554178 () Bool)

(assert (=> b!810735 (=> (not res!554178) (not e!448751))))

(declare-datatypes ((List!15103 0))(
  ( (Nil!15100) (Cons!15099 (h!16228 (_ BitVec 64)) (t!21426 List!15103)) )
))
(declare-fun arrayNoDuplicates!0 (array!44039 (_ BitVec 32) List!15103) Bool)

(assert (=> b!810735 (= res!554178 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15100))))

(declare-fun b!810736 () Bool)

(assert (=> b!810736 (= e!448751 e!448754)))

(declare-fun res!554181 () Bool)

(assert (=> b!810736 (=> (not res!554181) (not e!448754))))

(declare-fun lt!363460 () SeekEntryResult!8685)

(declare-fun lt!363461 () SeekEntryResult!8685)

(assert (=> b!810736 (= res!554181 (= lt!363460 lt!363461))))

(declare-fun lt!363463 () (_ BitVec 64))

(declare-fun lt!363467 () array!44039)

(assert (=> b!810736 (= lt!363461 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363463 lt!363467 mask!3266))))

(assert (=> b!810736 (= lt!363460 (seekEntryOrOpen!0 lt!363463 lt!363467 mask!3266))))

(assert (=> b!810736 (= lt!363463 (select (store (arr!21087 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810736 (= lt!363467 (array!44040 (store (arr!21087 a!3170) i!1163 k!2044) (size!21508 a!3170)))))

(declare-fun b!810737 () Bool)

(declare-fun e!448752 () Bool)

(declare-fun lt!363465 () SeekEntryResult!8685)

(assert (=> b!810737 (= e!448752 (not (= lt!363461 lt!363465)))))

(declare-fun lt!363464 () (_ BitVec 32))

(assert (=> b!810737 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363464 vacantAfter!23 lt!363463 lt!363467 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363464 vacantBefore!23 (select (arr!21087 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27632 0))(
  ( (Unit!27633) )
))
(declare-fun lt!363466 () Unit!27632)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44039 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27632)

(assert (=> b!810737 (= lt!363466 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363464 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810737 (= lt!363464 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810738 () Bool)

(declare-fun res!554187 () Bool)

(assert (=> b!810738 (=> (not res!554187) (not e!448755))))

(declare-fun arrayContainsKey!0 (array!44039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810738 (= res!554187 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810739 () Bool)

(assert (=> b!810739 (= e!448756 e!448752)))

(declare-fun res!554182 () Bool)

(assert (=> b!810739 (=> (not res!554182) (not e!448752))))

(assert (=> b!810739 (= res!554182 (and (= lt!363469 lt!363465) (not (= (select (arr!21087 a!3170) index!1236) (select (arr!21087 a!3170) j!153)))))))

(assert (=> b!810739 (= lt!363465 (Found!8685 j!153))))

(declare-fun b!810740 () Bool)

(declare-fun res!554180 () Bool)

(assert (=> b!810740 (=> (not res!554180) (not e!448751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44039 (_ BitVec 32)) Bool)

(assert (=> b!810740 (= res!554180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810741 () Bool)

(declare-fun res!554177 () Bool)

(assert (=> b!810741 (=> (not res!554177) (not e!448755))))

(assert (=> b!810741 (= res!554177 (validKeyInArray!0 k!2044))))

(assert (= (and start!69592 res!554188) b!810732))

(assert (= (and b!810732 res!554183) b!810730))

(assert (= (and b!810730 res!554184) b!810741))

(assert (= (and b!810741 res!554177) b!810738))

(assert (= (and b!810738 res!554187) b!810734))

(assert (= (and b!810734 res!554186) b!810740))

(assert (= (and b!810740 res!554180) b!810735))

(assert (= (and b!810735 res!554178) b!810731))

(assert (= (and b!810731 res!554179) b!810736))

(assert (= (and b!810736 res!554181) b!810733))

(assert (= (and b!810733 res!554185) b!810739))

(assert (= (and b!810739 res!554182) b!810737))

(declare-fun m!753115 () Bool)

(assert (=> b!810740 m!753115))

(declare-fun m!753117 () Bool)

(assert (=> b!810730 m!753117))

(assert (=> b!810730 m!753117))

(declare-fun m!753119 () Bool)

(assert (=> b!810730 m!753119))

(assert (=> b!810737 m!753117))

(declare-fun m!753121 () Bool)

(assert (=> b!810737 m!753121))

(declare-fun m!753123 () Bool)

(assert (=> b!810737 m!753123))

(assert (=> b!810737 m!753117))

(declare-fun m!753125 () Bool)

(assert (=> b!810737 m!753125))

(declare-fun m!753127 () Bool)

(assert (=> b!810737 m!753127))

(declare-fun m!753129 () Bool)

(assert (=> b!810739 m!753129))

(assert (=> b!810739 m!753117))

(declare-fun m!753131 () Bool)

(assert (=> b!810738 m!753131))

(declare-fun m!753133 () Bool)

(assert (=> start!69592 m!753133))

(declare-fun m!753135 () Bool)

(assert (=> start!69592 m!753135))

(declare-fun m!753137 () Bool)

(assert (=> b!810736 m!753137))

(declare-fun m!753139 () Bool)

(assert (=> b!810736 m!753139))

(declare-fun m!753141 () Bool)

(assert (=> b!810736 m!753141))

(declare-fun m!753143 () Bool)

(assert (=> b!810736 m!753143))

(declare-fun m!753145 () Bool)

(assert (=> b!810734 m!753145))

(declare-fun m!753147 () Bool)

(assert (=> b!810741 m!753147))

(declare-fun m!753149 () Bool)

(assert (=> b!810731 m!753149))

(declare-fun m!753151 () Bool)

(assert (=> b!810731 m!753151))

(declare-fun m!753153 () Bool)

(assert (=> b!810735 m!753153))

(assert (=> b!810733 m!753117))

(assert (=> b!810733 m!753117))

(declare-fun m!753155 () Bool)

(assert (=> b!810733 m!753155))

(assert (=> b!810733 m!753117))

(declare-fun m!753157 () Bool)

(assert (=> b!810733 m!753157))

(push 1)

(assert (not b!810741))

(assert (not b!810737))

(assert (not b!810734))

(assert (not b!810730))

(assert (not b!810738))

(assert (not start!69592))

(assert (not b!810740))

(assert (not b!810735))

(assert (not b!810733))

(assert (not b!810736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!810898 () Bool)

(declare-fun e!448845 () SeekEntryResult!8685)

(assert (=> b!810898 (= e!448845 Undefined!8685)))

(declare-fun b!810899 () Bool)

(declare-fun e!448844 () SeekEntryResult!8685)

(assert (=> b!810899 (= e!448845 e!448844)))

(declare-fun c!88721 () Bool)

(declare-fun lt!363551 () (_ BitVec 64))

(assert (=> b!810899 (= c!88721 (= lt!363551 lt!363463))))

(declare-fun b!810900 () Bool)

(declare-fun e!448846 () SeekEntryResult!8685)

(assert (=> b!810900 (= e!448846 (MissingVacant!8685 vacantAfter!23))))

(declare-fun b!810902 () Bool)

(declare-fun c!88720 () Bool)

(assert (=> b!810902 (= c!88720 (= lt!363551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810902 (= e!448844 e!448846)))

(declare-fun b!810903 () Bool)

(assert (=> b!810903 (= e!448844 (Found!8685 lt!363464))))

(declare-fun d!104033 () Bool)

(declare-fun lt!363552 () SeekEntryResult!8685)

(assert (=> d!104033 (and (or (is-Undefined!8685 lt!363552) (not (is-Found!8685 lt!363552)) (and (bvsge (index!37108 lt!363552) #b00000000000000000000000000000000) (bvslt (index!37108 lt!363552) (size!21508 lt!363467)))) (or (is-Undefined!8685 lt!363552) (is-Found!8685 lt!363552) (not (is-MissingVacant!8685 lt!363552)) (not (= (index!37110 lt!363552) vacantAfter!23)) (and (bvsge (index!37110 lt!363552) #b00000000000000000000000000000000) (bvslt (index!37110 lt!363552) (size!21508 lt!363467)))) (or (is-Undefined!8685 lt!363552) (ite (is-Found!8685 lt!363552) (= (select (arr!21087 lt!363467) (index!37108 lt!363552)) lt!363463) (and (is-MissingVacant!8685 lt!363552) (= (index!37110 lt!363552) vacantAfter!23) (= (select (arr!21087 lt!363467) (index!37110 lt!363552)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104033 (= lt!363552 e!448845)))

(declare-fun c!88722 () Bool)

(assert (=> d!104033 (= c!88722 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!104033 (= lt!363551 (select (arr!21087 lt!363467) lt!363464))))

(assert (=> d!104033 (validMask!0 mask!3266)))

(assert (=> d!104033 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363464 vacantAfter!23 lt!363463 lt!363467 mask!3266) lt!363552)))

(declare-fun b!810901 () Bool)

(assert (=> b!810901 (= e!448846 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!363464 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantAfter!23 lt!363463 lt!363467 mask!3266))))

(assert (= (and d!104033 c!88722) b!810898))

(assert (= (and d!104033 (not c!88722)) b!810899))

(assert (= (and b!810899 c!88721) b!810903))

(assert (= (and b!810899 (not c!88721)) b!810902))

(assert (= (and b!810902 c!88720) b!810900))

(assert (= (and b!810902 (not c!88720)) b!810901))

(declare-fun m!753295 () Bool)

(assert (=> d!104033 m!753295))

(declare-fun m!753297 () Bool)

(assert (=> d!104033 m!753297))

(declare-fun m!753299 () Bool)

(assert (=> d!104033 m!753299))

(assert (=> d!104033 m!753133))

(declare-fun m!753301 () Bool)

(assert (=> b!810901 m!753301))

(assert (=> b!810901 m!753301))

(declare-fun m!753303 () Bool)

(assert (=> b!810901 m!753303))

(assert (=> b!810737 d!104033))

(declare-fun b!810910 () Bool)

(declare-fun e!448851 () SeekEntryResult!8685)

(assert (=> b!810910 (= e!448851 Undefined!8685)))

(declare-fun b!810911 () Bool)

(declare-fun e!448850 () SeekEntryResult!8685)

(assert (=> b!810911 (= e!448851 e!448850)))

(declare-fun lt!363555 () (_ BitVec 64))

(declare-fun c!88727 () Bool)

(assert (=> b!810911 (= c!88727 (= lt!363555 (select (arr!21087 a!3170) j!153)))))

(declare-fun b!810912 () Bool)

(declare-fun e!448852 () SeekEntryResult!8685)

(assert (=> b!810912 (= e!448852 (MissingVacant!8685 vacantBefore!23))))

(declare-fun b!810914 () Bool)

(declare-fun c!88726 () Bool)

(assert (=> b!810914 (= c!88726 (= lt!363555 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810914 (= e!448850 e!448852)))

(declare-fun b!810915 () Bool)

(assert (=> b!810915 (= e!448850 (Found!8685 lt!363464))))

(declare-fun lt!363556 () SeekEntryResult!8685)

(declare-fun d!104045 () Bool)

(assert (=> d!104045 (and (or (is-Undefined!8685 lt!363556) (not (is-Found!8685 lt!363556)) (and (bvsge (index!37108 lt!363556) #b00000000000000000000000000000000) (bvslt (index!37108 lt!363556) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363556) (is-Found!8685 lt!363556) (not (is-MissingVacant!8685 lt!363556)) (not (= (index!37110 lt!363556) vacantBefore!23)) (and (bvsge (index!37110 lt!363556) #b00000000000000000000000000000000) (bvslt (index!37110 lt!363556) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363556) (ite (is-Found!8685 lt!363556) (= (select (arr!21087 a!3170) (index!37108 lt!363556)) (select (arr!21087 a!3170) j!153)) (and (is-MissingVacant!8685 lt!363556) (= (index!37110 lt!363556) vacantBefore!23) (= (select (arr!21087 a!3170) (index!37110 lt!363556)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104045 (= lt!363556 e!448851)))

(declare-fun c!88728 () Bool)

(assert (=> d!104045 (= c!88728 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!104045 (= lt!363555 (select (arr!21087 a!3170) lt!363464))))

(assert (=> d!104045 (validMask!0 mask!3266)))

(assert (=> d!104045 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363464 vacantBefore!23 (select (arr!21087 a!3170) j!153) a!3170 mask!3266) lt!363556)))

(declare-fun b!810913 () Bool)

(assert (=> b!810913 (= e!448852 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!363464 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantBefore!23 (select (arr!21087 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!104045 c!88728) b!810910))

(assert (= (and d!104045 (not c!88728)) b!810911))

(assert (= (and b!810911 c!88727) b!810915))

(assert (= (and b!810911 (not c!88727)) b!810914))

(assert (= (and b!810914 c!88726) b!810912))

(assert (= (and b!810914 (not c!88726)) b!810913))

(declare-fun m!753313 () Bool)

(assert (=> d!104045 m!753313))

(declare-fun m!753315 () Bool)

(assert (=> d!104045 m!753315))

(declare-fun m!753317 () Bool)

(assert (=> d!104045 m!753317))

(assert (=> d!104045 m!753133))

(assert (=> b!810913 m!753301))

(assert (=> b!810913 m!753301))

(assert (=> b!810913 m!753117))

(declare-fun m!753319 () Bool)

(assert (=> b!810913 m!753319))

(assert (=> b!810737 d!104045))

(declare-fun d!104049 () Bool)

(declare-fun e!448870 () Bool)

(assert (=> d!104049 e!448870))

(declare-fun res!554284 () Bool)

(assert (=> d!104049 (=> (not res!554284) (not e!448870))))

(assert (=> d!104049 (= res!554284 (and (or (bvslt i!1163 #b00000000000000000000000000000000) (bvsge i!1163 (size!21508 a!3170)) (and (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21508 a!3170)))) (or (bvslt i!1163 #b00000000000000000000000000000000) (bvsge i!1163 (size!21508 a!3170)) (and (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21508 a!3170)))) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21508 a!3170))))))

(declare-fun lt!363570 () Unit!27632)

(declare-fun choose!112 (array!44039 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27632)

(assert (=> d!104049 (= lt!363570 (choose!112 a!3170 i!1163 k!2044 j!153 lt!363464 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(assert (=> d!104049 (validMask!0 mask!3266)))

(assert (=> d!104049 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363464 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266) lt!363570)))

(declare-fun b!810945 () Bool)

(assert (=> b!810945 (= e!448870 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363464 vacantAfter!23 (select (store (arr!21087 a!3170) i!1163 k!2044) j!153) (array!44040 (store (arr!21087 a!3170) i!1163 k!2044) (size!21508 a!3170)) mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363464 vacantBefore!23 (select (arr!21087 a!3170) j!153) a!3170 mask!3266)))))

(assert (= (and d!104049 res!554284) b!810945))

(declare-fun m!753343 () Bool)

(assert (=> d!104049 m!753343))

(assert (=> d!104049 m!753133))

(assert (=> b!810945 m!753117))

(assert (=> b!810945 m!753125))

(assert (=> b!810945 m!753117))

(assert (=> b!810945 m!753143))

(assert (=> b!810945 m!753143))

(declare-fun m!753345 () Bool)

(assert (=> b!810945 m!753345))

(assert (=> b!810945 m!753141))

(assert (=> b!810737 d!104049))

(declare-fun d!104057 () Bool)

(declare-fun lt!363579 () (_ BitVec 32))

(assert (=> d!104057 (and (bvsge lt!363579 #b00000000000000000000000000000000) (bvslt lt!363579 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!104057 (= lt!363579 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!104057 (validMask!0 mask!3266)))

(assert (=> d!104057 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!363579)))

(declare-fun bs!22442 () Bool)

(assert (= bs!22442 d!104057))

(declare-fun m!753349 () Bool)

(assert (=> bs!22442 m!753349))

(assert (=> bs!22442 m!753133))

(assert (=> b!810737 d!104057))

(declare-fun b!810952 () Bool)

(declare-fun e!448875 () SeekEntryResult!8685)

(assert (=> b!810952 (= e!448875 Undefined!8685)))

(declare-fun b!810953 () Bool)

(declare-fun e!448874 () SeekEntryResult!8685)

(assert (=> b!810953 (= e!448875 e!448874)))

(declare-fun c!88745 () Bool)

(declare-fun lt!363580 () (_ BitVec 64))

(assert (=> b!810953 (= c!88745 (= lt!363580 lt!363463))))

(declare-fun b!810954 () Bool)

(declare-fun e!448876 () SeekEntryResult!8685)

(assert (=> b!810954 (= e!448876 (MissingVacant!8685 vacantAfter!23))))

(declare-fun b!810956 () Bool)

(declare-fun c!88744 () Bool)

(assert (=> b!810956 (= c!88744 (= lt!363580 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810956 (= e!448874 e!448876)))

(declare-fun b!810957 () Bool)

(assert (=> b!810957 (= e!448874 (Found!8685 index!1236))))

(declare-fun lt!363581 () SeekEntryResult!8685)

(declare-fun d!104061 () Bool)

(assert (=> d!104061 (and (or (is-Undefined!8685 lt!363581) (not (is-Found!8685 lt!363581)) (and (bvsge (index!37108 lt!363581) #b00000000000000000000000000000000) (bvslt (index!37108 lt!363581) (size!21508 lt!363467)))) (or (is-Undefined!8685 lt!363581) (is-Found!8685 lt!363581) (not (is-MissingVacant!8685 lt!363581)) (not (= (index!37110 lt!363581) vacantAfter!23)) (and (bvsge (index!37110 lt!363581) #b00000000000000000000000000000000) (bvslt (index!37110 lt!363581) (size!21508 lt!363467)))) (or (is-Undefined!8685 lt!363581) (ite (is-Found!8685 lt!363581) (= (select (arr!21087 lt!363467) (index!37108 lt!363581)) lt!363463) (and (is-MissingVacant!8685 lt!363581) (= (index!37110 lt!363581) vacantAfter!23) (= (select (arr!21087 lt!363467) (index!37110 lt!363581)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104061 (= lt!363581 e!448875)))

(declare-fun c!88746 () Bool)

(assert (=> d!104061 (= c!88746 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!104061 (= lt!363580 (select (arr!21087 lt!363467) index!1236))))

(assert (=> d!104061 (validMask!0 mask!3266)))

(assert (=> d!104061 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363463 lt!363467 mask!3266) lt!363581)))

(declare-fun b!810955 () Bool)

(assert (=> b!810955 (= e!448876 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!363463 lt!363467 mask!3266))))

(assert (= (and d!104061 c!88746) b!810952))

(assert (= (and d!104061 (not c!88746)) b!810953))

(assert (= (and b!810953 c!88745) b!810957))

(assert (= (and b!810953 (not c!88745)) b!810956))

(assert (= (and b!810956 c!88744) b!810954))

(assert (= (and b!810956 (not c!88744)) b!810955))

(declare-fun m!753365 () Bool)

(assert (=> d!104061 m!753365))

(declare-fun m!753367 () Bool)

(assert (=> d!104061 m!753367))

(declare-fun m!753369 () Bool)

(assert (=> d!104061 m!753369))

(assert (=> d!104061 m!753133))

(assert (=> b!810955 m!753121))

(assert (=> b!810955 m!753121))

(declare-fun m!753371 () Bool)

(assert (=> b!810955 m!753371))

(assert (=> b!810736 d!104061))

(declare-fun b!811003 () Bool)

(declare-fun e!448909 () SeekEntryResult!8685)

(declare-fun lt!363608 () SeekEntryResult!8685)

(assert (=> b!811003 (= e!448909 (MissingZero!8685 (index!37109 lt!363608)))))

(declare-fun b!811004 () Bool)

(declare-fun e!448907 () SeekEntryResult!8685)

(assert (=> b!811004 (= e!448907 Undefined!8685)))

(declare-fun d!104065 () Bool)

(declare-fun lt!363609 () SeekEntryResult!8685)

(assert (=> d!104065 (and (or (is-Undefined!8685 lt!363609) (not (is-Found!8685 lt!363609)) (and (bvsge (index!37108 lt!363609) #b00000000000000000000000000000000) (bvslt (index!37108 lt!363609) (size!21508 lt!363467)))) (or (is-Undefined!8685 lt!363609) (is-Found!8685 lt!363609) (not (is-MissingZero!8685 lt!363609)) (and (bvsge (index!37107 lt!363609) #b00000000000000000000000000000000) (bvslt (index!37107 lt!363609) (size!21508 lt!363467)))) (or (is-Undefined!8685 lt!363609) (is-Found!8685 lt!363609) (is-MissingZero!8685 lt!363609) (not (is-MissingVacant!8685 lt!363609)) (and (bvsge (index!37110 lt!363609) #b00000000000000000000000000000000) (bvslt (index!37110 lt!363609) (size!21508 lt!363467)))) (or (is-Undefined!8685 lt!363609) (ite (is-Found!8685 lt!363609) (= (select (arr!21087 lt!363467) (index!37108 lt!363609)) lt!363463) (ite (is-MissingZero!8685 lt!363609) (= (select (arr!21087 lt!363467) (index!37107 lt!363609)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8685 lt!363609) (= (select (arr!21087 lt!363467) (index!37110 lt!363609)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!104065 (= lt!363609 e!448907)))

(declare-fun c!88762 () Bool)

(assert (=> d!104065 (= c!88762 (and (is-Intermediate!8685 lt!363608) (undefined!9497 lt!363608)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44039 (_ BitVec 32)) SeekEntryResult!8685)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!104065 (= lt!363608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!363463 mask!3266) lt!363463 lt!363467 mask!3266))))

(assert (=> d!104065 (validMask!0 mask!3266)))

(assert (=> d!104065 (= (seekEntryOrOpen!0 lt!363463 lt!363467 mask!3266) lt!363609)))

(declare-fun b!811005 () Bool)

(assert (=> b!811005 (= e!448909 (seekKeyOrZeroReturnVacant!0 (x!67946 lt!363608) (index!37109 lt!363608) (index!37109 lt!363608) lt!363463 lt!363467 mask!3266))))

(declare-fun b!811006 () Bool)

(declare-fun e!448908 () SeekEntryResult!8685)

(assert (=> b!811006 (= e!448908 (Found!8685 (index!37109 lt!363608)))))

(declare-fun b!811007 () Bool)

(declare-fun c!88764 () Bool)

(declare-fun lt!363610 () (_ BitVec 64))

(assert (=> b!811007 (= c!88764 (= lt!363610 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!811007 (= e!448908 e!448909)))

(declare-fun b!811008 () Bool)

(assert (=> b!811008 (= e!448907 e!448908)))

(assert (=> b!811008 (= lt!363610 (select (arr!21087 lt!363467) (index!37109 lt!363608)))))

(declare-fun c!88763 () Bool)

(assert (=> b!811008 (= c!88763 (= lt!363610 lt!363463))))

(assert (= (and d!104065 c!88762) b!811004))

(assert (= (and d!104065 (not c!88762)) b!811008))

(assert (= (and b!811008 c!88763) b!811006))

(assert (= (and b!811008 (not c!88763)) b!811007))

(assert (= (and b!811007 c!88764) b!811003))

(assert (= (and b!811007 (not c!88764)) b!811005))

(declare-fun m!753409 () Bool)

(assert (=> d!104065 m!753409))

(declare-fun m!753411 () Bool)

(assert (=> d!104065 m!753411))

(assert (=> d!104065 m!753133))

(assert (=> d!104065 m!753409))

(declare-fun m!753413 () Bool)

(assert (=> d!104065 m!753413))

(declare-fun m!753415 () Bool)

(assert (=> d!104065 m!753415))

(declare-fun m!753417 () Bool)

(assert (=> d!104065 m!753417))

(declare-fun m!753419 () Bool)

(assert (=> b!811005 m!753419))

(declare-fun m!753421 () Bool)

(assert (=> b!811008 m!753421))

(assert (=> b!810736 d!104065))

(declare-fun d!104077 () Bool)

(assert (=> d!104077 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69592 d!104077))

(declare-fun d!104083 () Bool)

(assert (=> d!104083 (= (array_inv!16861 a!3170) (bvsge (size!21508 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69592 d!104083))

(declare-fun d!104085 () Bool)

(declare-fun res!554304 () Bool)

(declare-fun e!448923 () Bool)

(assert (=> d!104085 (=> res!554304 e!448923)))

(assert (=> d!104085 (= res!554304 (= (select (arr!21087 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!104085 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!448923)))

(declare-fun b!811031 () Bool)

(declare-fun e!448924 () Bool)

(assert (=> b!811031 (= e!448923 e!448924)))

(declare-fun res!554305 () Bool)

(assert (=> b!811031 (=> (not res!554305) (not e!448924))))

(assert (=> b!811031 (= res!554305 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21508 a!3170)))))

(declare-fun b!811032 () Bool)

(assert (=> b!811032 (= e!448924 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!104085 (not res!554304)) b!811031))

(assert (= (and b!811031 res!554305) b!811032))

(declare-fun m!753437 () Bool)

(assert (=> d!104085 m!753437))

(declare-fun m!753439 () Bool)

(assert (=> b!811032 m!753439))

(assert (=> b!810738 d!104085))

(declare-fun b!811033 () Bool)

(declare-fun e!448926 () SeekEntryResult!8685)

(assert (=> b!811033 (= e!448926 Undefined!8685)))

(declare-fun b!811034 () Bool)

(declare-fun e!448925 () SeekEntryResult!8685)

(assert (=> b!811034 (= e!448926 e!448925)))

(declare-fun lt!363620 () (_ BitVec 64))

(declare-fun c!88775 () Bool)

(assert (=> b!811034 (= c!88775 (= lt!363620 (select (arr!21087 a!3170) j!153)))))

(declare-fun b!811035 () Bool)

(declare-fun e!448927 () SeekEntryResult!8685)

(assert (=> b!811035 (= e!448927 (MissingVacant!8685 vacantBefore!23))))

(declare-fun b!811037 () Bool)

(declare-fun c!88774 () Bool)

(assert (=> b!811037 (= c!88774 (= lt!363620 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!811037 (= e!448925 e!448927)))

(declare-fun b!811038 () Bool)

(assert (=> b!811038 (= e!448925 (Found!8685 index!1236))))

(declare-fun lt!363621 () SeekEntryResult!8685)

(declare-fun d!104087 () Bool)

(assert (=> d!104087 (and (or (is-Undefined!8685 lt!363621) (not (is-Found!8685 lt!363621)) (and (bvsge (index!37108 lt!363621) #b00000000000000000000000000000000) (bvslt (index!37108 lt!363621) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363621) (is-Found!8685 lt!363621) (not (is-MissingVacant!8685 lt!363621)) (not (= (index!37110 lt!363621) vacantBefore!23)) (and (bvsge (index!37110 lt!363621) #b00000000000000000000000000000000) (bvslt (index!37110 lt!363621) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363621) (ite (is-Found!8685 lt!363621) (= (select (arr!21087 a!3170) (index!37108 lt!363621)) (select (arr!21087 a!3170) j!153)) (and (is-MissingVacant!8685 lt!363621) (= (index!37110 lt!363621) vacantBefore!23) (= (select (arr!21087 a!3170) (index!37110 lt!363621)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104087 (= lt!363621 e!448926)))

(declare-fun c!88776 () Bool)

(assert (=> d!104087 (= c!88776 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!104087 (= lt!363620 (select (arr!21087 a!3170) index!1236))))

(assert (=> d!104087 (validMask!0 mask!3266)))

(assert (=> d!104087 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21087 a!3170) j!153) a!3170 mask!3266) lt!363621)))

(declare-fun b!811036 () Bool)

(assert (=> b!811036 (= e!448927 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21087 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!104087 c!88776) b!811033))

(assert (= (and d!104087 (not c!88776)) b!811034))

(assert (= (and b!811034 c!88775) b!811038))

(assert (= (and b!811034 (not c!88775)) b!811037))

(assert (= (and b!811037 c!88774) b!811035))

(assert (= (and b!811037 (not c!88774)) b!811036))

(declare-fun m!753441 () Bool)

(assert (=> d!104087 m!753441))

(declare-fun m!753443 () Bool)

(assert (=> d!104087 m!753443))

(assert (=> d!104087 m!753129))

(assert (=> d!104087 m!753133))

(assert (=> b!811036 m!753121))

(assert (=> b!811036 m!753121))

(assert (=> b!811036 m!753117))

(declare-fun m!753445 () Bool)

(assert (=> b!811036 m!753445))

(assert (=> b!810733 d!104087))

(declare-fun b!811039 () Bool)

(declare-fun e!448930 () SeekEntryResult!8685)

(declare-fun lt!363622 () SeekEntryResult!8685)

(assert (=> b!811039 (= e!448930 (MissingZero!8685 (index!37109 lt!363622)))))

(declare-fun b!811040 () Bool)

(declare-fun e!448928 () SeekEntryResult!8685)

(assert (=> b!811040 (= e!448928 Undefined!8685)))

(declare-fun d!104089 () Bool)

(declare-fun lt!363623 () SeekEntryResult!8685)

(assert (=> d!104089 (and (or (is-Undefined!8685 lt!363623) (not (is-Found!8685 lt!363623)) (and (bvsge (index!37108 lt!363623) #b00000000000000000000000000000000) (bvslt (index!37108 lt!363623) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363623) (is-Found!8685 lt!363623) (not (is-MissingZero!8685 lt!363623)) (and (bvsge (index!37107 lt!363623) #b00000000000000000000000000000000) (bvslt (index!37107 lt!363623) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363623) (is-Found!8685 lt!363623) (is-MissingZero!8685 lt!363623) (not (is-MissingVacant!8685 lt!363623)) (and (bvsge (index!37110 lt!363623) #b00000000000000000000000000000000) (bvslt (index!37110 lt!363623) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363623) (ite (is-Found!8685 lt!363623) (= (select (arr!21087 a!3170) (index!37108 lt!363623)) (select (arr!21087 a!3170) j!153)) (ite (is-MissingZero!8685 lt!363623) (= (select (arr!21087 a!3170) (index!37107 lt!363623)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8685 lt!363623) (= (select (arr!21087 a!3170) (index!37110 lt!363623)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!104089 (= lt!363623 e!448928)))

(declare-fun c!88777 () Bool)

(assert (=> d!104089 (= c!88777 (and (is-Intermediate!8685 lt!363622) (undefined!9497 lt!363622)))))

(assert (=> d!104089 (= lt!363622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21087 a!3170) j!153) mask!3266) (select (arr!21087 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!104089 (validMask!0 mask!3266)))

(assert (=> d!104089 (= (seekEntryOrOpen!0 (select (arr!21087 a!3170) j!153) a!3170 mask!3266) lt!363623)))

(declare-fun b!811041 () Bool)

(assert (=> b!811041 (= e!448930 (seekKeyOrZeroReturnVacant!0 (x!67946 lt!363622) (index!37109 lt!363622) (index!37109 lt!363622) (select (arr!21087 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811042 () Bool)

(declare-fun e!448929 () SeekEntryResult!8685)

(assert (=> b!811042 (= e!448929 (Found!8685 (index!37109 lt!363622)))))

(declare-fun b!811043 () Bool)

(declare-fun c!88779 () Bool)

(declare-fun lt!363624 () (_ BitVec 64))

(assert (=> b!811043 (= c!88779 (= lt!363624 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!811043 (= e!448929 e!448930)))

(declare-fun b!811044 () Bool)

(assert (=> b!811044 (= e!448928 e!448929)))

(assert (=> b!811044 (= lt!363624 (select (arr!21087 a!3170) (index!37109 lt!363622)))))

(declare-fun c!88778 () Bool)

(assert (=> b!811044 (= c!88778 (= lt!363624 (select (arr!21087 a!3170) j!153)))))

(assert (= (and d!104089 c!88777) b!811040))

(assert (= (and d!104089 (not c!88777)) b!811044))

(assert (= (and b!811044 c!88778) b!811042))

(assert (= (and b!811044 (not c!88778)) b!811043))

(assert (= (and b!811043 c!88779) b!811039))

(assert (= (and b!811043 (not c!88779)) b!811041))

(declare-fun m!753447 () Bool)

(assert (=> d!104089 m!753447))

(assert (=> d!104089 m!753117))

(declare-fun m!753449 () Bool)

(assert (=> d!104089 m!753449))

(assert (=> d!104089 m!753133))

(assert (=> d!104089 m!753117))

(assert (=> d!104089 m!753447))

(declare-fun m!753451 () Bool)

(assert (=> d!104089 m!753451))

(declare-fun m!753453 () Bool)

(assert (=> d!104089 m!753453))

(declare-fun m!753455 () Bool)

(assert (=> d!104089 m!753455))

(assert (=> b!811041 m!753117))

(declare-fun m!753457 () Bool)

(assert (=> b!811041 m!753457))

(declare-fun m!753459 () Bool)

(assert (=> b!811044 m!753459))

(assert (=> b!810733 d!104089))

(declare-fun b!811051 () Bool)

(declare-fun e!448937 () SeekEntryResult!8685)

(declare-fun lt!363631 () SeekEntryResult!8685)

(assert (=> b!811051 (= e!448937 (MissingZero!8685 (index!37109 lt!363631)))))

(declare-fun b!811052 () Bool)

(declare-fun e!448935 () SeekEntryResult!8685)

(assert (=> b!811052 (= e!448935 Undefined!8685)))

(declare-fun d!104091 () Bool)

(declare-fun lt!363632 () SeekEntryResult!8685)

(assert (=> d!104091 (and (or (is-Undefined!8685 lt!363632) (not (is-Found!8685 lt!363632)) (and (bvsge (index!37108 lt!363632) #b00000000000000000000000000000000) (bvslt (index!37108 lt!363632) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363632) (is-Found!8685 lt!363632) (not (is-MissingZero!8685 lt!363632)) (and (bvsge (index!37107 lt!363632) #b00000000000000000000000000000000) (bvslt (index!37107 lt!363632) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363632) (is-Found!8685 lt!363632) (is-MissingZero!8685 lt!363632) (not (is-MissingVacant!8685 lt!363632)) (and (bvsge (index!37110 lt!363632) #b00000000000000000000000000000000) (bvslt (index!37110 lt!363632) (size!21508 a!3170)))) (or (is-Undefined!8685 lt!363632) (ite (is-Found!8685 lt!363632) (= (select (arr!21087 a!3170) (index!37108 lt!363632)) k!2044) (ite (is-MissingZero!8685 lt!363632) (= (select (arr!21087 a!3170) (index!37107 lt!363632)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8685 lt!363632) (= (select (arr!21087 a!3170) (index!37110 lt!363632)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!104091 (= lt!363632 e!448935)))

(declare-fun c!88782 () Bool)

(assert (=> d!104091 (= c!88782 (and (is-Intermediate!8685 lt!363631) (undefined!9497 lt!363631)))))

(assert (=> d!104091 (= lt!363631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!104091 (validMask!0 mask!3266)))

(assert (=> d!104091 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!363632)))

(declare-fun b!811053 () Bool)

(assert (=> b!811053 (= e!448937 (seekKeyOrZeroReturnVacant!0 (x!67946 lt!363631) (index!37109 lt!363631) (index!37109 lt!363631) k!2044 a!3170 mask!3266))))

(declare-fun b!811054 () Bool)

(declare-fun e!448936 () SeekEntryResult!8685)

(assert (=> b!811054 (= e!448936 (Found!8685 (index!37109 lt!363631)))))

(declare-fun b!811055 () Bool)

(declare-fun c!88784 () Bool)

(declare-fun lt!363633 () (_ BitVec 64))

(assert (=> b!811055 (= c!88784 (= lt!363633 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!811055 (= e!448936 e!448937)))

(declare-fun b!811056 () Bool)

(assert (=> b!811056 (= e!448935 e!448936)))

(assert (=> b!811056 (= lt!363633 (select (arr!21087 a!3170) (index!37109 lt!363631)))))

(declare-fun c!88783 () Bool)

(assert (=> b!811056 (= c!88783 (= lt!363633 k!2044))))

(assert (= (and d!104091 c!88782) b!811052))

(assert (= (and d!104091 (not c!88782)) b!811056))

(assert (= (and b!811056 c!88783) b!811054))

(assert (= (and b!811056 (not c!88783)) b!811055))

(assert (= (and b!811055 c!88784) b!811051))

(assert (= (and b!811055 (not c!88784)) b!811053))

(declare-fun m!753461 () Bool)

(assert (=> d!104091 m!753461))

(declare-fun m!753463 () Bool)

(assert (=> d!104091 m!753463))

(assert (=> d!104091 m!753133))

(assert (=> d!104091 m!753461))

(declare-fun m!753465 () Bool)

(assert (=> d!104091 m!753465))

(declare-fun m!753467 () Bool)

(assert (=> d!104091 m!753467))

(declare-fun m!753469 () Bool)

(assert (=> d!104091 m!753469))

(declare-fun m!753471 () Bool)

(assert (=> b!811053 m!753471))

(declare-fun m!753473 () Bool)

(assert (=> b!811056 m!753473))

(assert (=> b!810734 d!104091))

(declare-fun d!104093 () Bool)

(assert (=> d!104093 (= (validKeyInArray!0 (select (arr!21087 a!3170) j!153)) (and (not (= (select (arr!21087 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21087 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!810730 d!104093))

(declare-fun d!104095 () Bool)

(assert (=> d!104095 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!810741 d!104095))

(declare-fun d!104097 () Bool)

(declare-fun res!554316 () Bool)

(declare-fun e!448955 () Bool)

(assert (=> d!104097 (=> res!554316 e!448955)))

(assert (=> d!104097 (= res!554316 (bvsge #b00000000000000000000000000000000 (size!21508 a!3170)))))

(assert (=> d!104097 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!448955)))

(declare-fun b!811083 () Bool)

(declare-fun e!448956 () Bool)

(declare-fun e!448957 () Bool)

(assert (=> b!811083 (= e!448956 e!448957)))

(declare-fun lt!363649 () (_ BitVec 64))

(assert (=> b!811083 (= lt!363649 (select (arr!21087 a!3170) #b00000000000000000000000000000000))))

(declare-fun lt!363650 () Unit!27632)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44039 (_ BitVec 64) (_ BitVec 32)) Unit!27632)

(assert (=> b!811083 (= lt!363650 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!363649 #b00000000000000000000000000000000))))

(assert (=> b!811083 (arrayContainsKey!0 a!3170 lt!363649 #b00000000000000000000000000000000)))

(declare-fun lt!363648 () Unit!27632)

(assert (=> b!811083 (= lt!363648 lt!363650)))

(declare-fun res!554317 () Bool)

(assert (=> b!811083 (= res!554317 (= (seekEntryOrOpen!0 (select (arr!21087 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8685 #b00000000000000000000000000000000)))))

(assert (=> b!811083 (=> (not res!554317) (not e!448957))))

(declare-fun b!811084 () Bool)

(declare-fun call!35469 () Bool)

(assert (=> b!811084 (= e!448956 call!35469)))

(declare-fun b!811085 () Bool)

(assert (=> b!811085 (= e!448957 call!35469)))

(declare-fun bm!35466 () Bool)

(assert (=> bm!35466 (= call!35469 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!811086 () Bool)

(assert (=> b!811086 (= e!448955 e!448956)))

(declare-fun c!88794 () Bool)

(assert (=> b!811086 (= c!88794 (validKeyInArray!0 (select (arr!21087 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!104097 (not res!554316)) b!811086))

(assert (= (and b!811086 c!88794) b!811083))

(assert (= (and b!811086 (not c!88794)) b!811084))

(assert (= (and b!811083 res!554317) b!811085))

(assert (= (or b!811085 b!811084) bm!35466))

(assert (=> b!811083 m!753437))

(declare-fun m!753505 () Bool)

(assert (=> b!811083 m!753505))

(declare-fun m!753507 () Bool)

(assert (=> b!811083 m!753507))

(assert (=> b!811083 m!753437))

(declare-fun m!753509 () Bool)

(assert (=> b!811083 m!753509))

(declare-fun m!753511 () Bool)

(assert (=> bm!35466 m!753511))

(assert (=> b!811086 m!753437))

(assert (=> b!811086 m!753437))

(declare-fun m!753513 () Bool)

(assert (=> b!811086 m!753513))

(assert (=> b!810740 d!104097))

(declare-fun bm!35469 () Bool)

(declare-fun call!35472 () Bool)

(declare-fun c!88797 () Bool)

(assert (=> bm!35469 (= call!35472 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88797 (Cons!15099 (select (arr!21087 a!3170) #b00000000000000000000000000000000) Nil!15100) Nil!15100)))))

(declare-fun d!104105 () Bool)

(declare-fun res!554328 () Bool)

(declare-fun e!448970 () Bool)

(assert (=> d!104105 (=> res!554328 e!448970)))

(assert (=> d!104105 (= res!554328 (bvsge #b00000000000000000000000000000000 (size!21508 a!3170)))))

(assert (=> d!104105 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15100) e!448970)))

(declare-fun b!811101 () Bool)

(declare-fun e!448972 () Bool)

(assert (=> b!811101 (= e!448970 e!448972)))

(declare-fun res!554329 () Bool)

(assert (=> b!811101 (=> (not res!554329) (not e!448972))))

(declare-fun e!448973 () Bool)

(assert (=> b!811101 (= res!554329 (not e!448973))))

(declare-fun res!554330 () Bool)

(assert (=> b!811101 (=> (not res!554330) (not e!448973))))

(assert (=> b!811101 (= res!554330 (validKeyInArray!0 (select (arr!21087 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!811102 () Bool)

(declare-fun e!448971 () Bool)

(assert (=> b!811102 (= e!448971 call!35472)))

(declare-fun b!811103 () Bool)

(declare-fun contains!4138 (List!15103 (_ BitVec 64)) Bool)

(assert (=> b!811103 (= e!448973 (contains!4138 Nil!15100 (select (arr!21087 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!811104 () Bool)

(assert (=> b!811104 (= e!448971 call!35472)))

(declare-fun b!811105 () Bool)

(assert (=> b!811105 (= e!448972 e!448971)))

(assert (=> b!811105 (= c!88797 (validKeyInArray!0 (select (arr!21087 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!104105 (not res!554328)) b!811101))

(assert (= (and b!811101 res!554330) b!811103))

(assert (= (and b!811101 res!554329) b!811105))

(assert (= (and b!811105 c!88797) b!811104))

(assert (= (and b!811105 (not c!88797)) b!811102))

(assert (= (or b!811104 b!811102) bm!35469))

(assert (=> bm!35469 m!753437))

(declare-fun m!753515 () Bool)

(assert (=> bm!35469 m!753515))

(assert (=> b!811101 m!753437))

(assert (=> b!811101 m!753437))

(assert (=> b!811101 m!753513))

(assert (=> b!811103 m!753437))

(assert (=> b!811103 m!753437))

(declare-fun m!753517 () Bool)

(assert (=> b!811103 m!753517))

(assert (=> b!811105 m!753437))

(assert (=> b!811105 m!753437))

(assert (=> b!811105 m!753513))

(assert (=> b!810735 d!104105))

(push 1)

