; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51842 () Bool)

(assert start!51842)

(declare-fun b!566567 () Bool)

(declare-fun res!357492 () Bool)

(declare-fun e!326068 () Bool)

(assert (=> b!566567 (=> (not res!357492) (not e!326068))))

(declare-datatypes ((array!35547 0))(
  ( (array!35548 (arr!17067 (Array (_ BitVec 32) (_ BitVec 64))) (size!17431 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35547)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35547 (_ BitVec 32)) Bool)

(assert (=> b!566567 (= res!357492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566568 () Bool)

(declare-fun res!357490 () Bool)

(declare-fun e!326067 () Bool)

(assert (=> b!566568 (=> (not res!357490) (not e!326067))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566568 (= res!357490 (and (= (size!17431 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17431 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17431 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566569 () Bool)

(assert (=> b!566569 (= e!326067 e!326068)))

(declare-fun res!357493 () Bool)

(assert (=> b!566569 (=> (not res!357493) (not e!326068))))

(declare-datatypes ((SeekEntryResult!5523 0))(
  ( (MissingZero!5523 (index!24319 (_ BitVec 32))) (Found!5523 (index!24320 (_ BitVec 32))) (Intermediate!5523 (undefined!6335 Bool) (index!24321 (_ BitVec 32)) (x!53217 (_ BitVec 32))) (Undefined!5523) (MissingVacant!5523 (index!24322 (_ BitVec 32))) )
))
(declare-fun lt!258250 () SeekEntryResult!5523)

(assert (=> b!566569 (= res!357493 (or (= lt!258250 (MissingZero!5523 i!1132)) (= lt!258250 (MissingVacant!5523 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35547 (_ BitVec 32)) SeekEntryResult!5523)

(assert (=> b!566569 (= lt!258250 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!566570 () Bool)

(declare-fun res!357488 () Bool)

(assert (=> b!566570 (=> (not res!357488) (not e!326067))))

(declare-fun arrayContainsKey!0 (array!35547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566570 (= res!357488 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566571 () Bool)

(declare-fun e!326065 () Bool)

(declare-fun lt!258254 () SeekEntryResult!5523)

(assert (=> b!566571 (= e!326065 (not (or (not (is-Intermediate!5523 lt!258254)) (undefined!6335 lt!258254) (and (bvsge (index!24321 lt!258254) #b00000000000000000000000000000000) (bvslt (index!24321 lt!258254) (size!17431 a!3118))))))))

(declare-fun e!326064 () Bool)

(assert (=> b!566571 e!326064))

(declare-fun res!357494 () Bool)

(assert (=> b!566571 (=> (not res!357494) (not e!326064))))

(assert (=> b!566571 (= res!357494 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17748 0))(
  ( (Unit!17749) )
))
(declare-fun lt!258253 () Unit!17748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35547 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17748)

(assert (=> b!566571 (= lt!258253 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566572 () Bool)

(declare-fun res!357491 () Bool)

(assert (=> b!566572 (=> (not res!357491) (not e!326067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566572 (= res!357491 (validKeyInArray!0 (select (arr!17067 a!3118) j!142)))))

(declare-fun b!566573 () Bool)

(declare-fun res!357486 () Bool)

(assert (=> b!566573 (=> (not res!357486) (not e!326068))))

(declare-datatypes ((List!11200 0))(
  ( (Nil!11197) (Cons!11196 (h!12205 (_ BitVec 64)) (t!17436 List!11200)) )
))
(declare-fun arrayNoDuplicates!0 (array!35547 (_ BitVec 32) List!11200) Bool)

(assert (=> b!566573 (= res!357486 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11197))))

(declare-fun b!566574 () Bool)

(assert (=> b!566574 (= e!326064 (= (seekEntryOrOpen!0 (select (arr!17067 a!3118) j!142) a!3118 mask!3119) (Found!5523 j!142)))))

(declare-fun b!566575 () Bool)

(declare-fun res!357487 () Bool)

(assert (=> b!566575 (=> (not res!357487) (not e!326067))))

(assert (=> b!566575 (= res!357487 (validKeyInArray!0 k!1914))))

(declare-fun b!566576 () Bool)

(assert (=> b!566576 (= e!326068 e!326065)))

(declare-fun res!357489 () Bool)

(assert (=> b!566576 (=> (not res!357489) (not e!326065))))

(declare-fun lt!258252 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35547 (_ BitVec 32)) SeekEntryResult!5523)

(assert (=> b!566576 (= res!357489 (= lt!258254 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258252 (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118)) mask!3119)))))

(declare-fun lt!258251 () (_ BitVec 32))

(assert (=> b!566576 (= lt!258254 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258251 (select (arr!17067 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566576 (= lt!258252 (toIndex!0 (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!566576 (= lt!258251 (toIndex!0 (select (arr!17067 a!3118) j!142) mask!3119))))

(declare-fun res!357485 () Bool)

(assert (=> start!51842 (=> (not res!357485) (not e!326067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51842 (= res!357485 (validMask!0 mask!3119))))

(assert (=> start!51842 e!326067))

(assert (=> start!51842 true))

(declare-fun array_inv!12841 (array!35547) Bool)

(assert (=> start!51842 (array_inv!12841 a!3118)))

(assert (= (and start!51842 res!357485) b!566568))

(assert (= (and b!566568 res!357490) b!566572))

(assert (= (and b!566572 res!357491) b!566575))

(assert (= (and b!566575 res!357487) b!566570))

(assert (= (and b!566570 res!357488) b!566569))

(assert (= (and b!566569 res!357493) b!566567))

(assert (= (and b!566567 res!357492) b!566573))

(assert (= (and b!566573 res!357486) b!566576))

(assert (= (and b!566576 res!357489) b!566571))

(assert (= (and b!566571 res!357494) b!566574))

(declare-fun m!545203 () Bool)

(assert (=> b!566570 m!545203))

(declare-fun m!545205 () Bool)

(assert (=> b!566575 m!545205))

(declare-fun m!545207 () Bool)

(assert (=> b!566573 m!545207))

(declare-fun m!545209 () Bool)

(assert (=> b!566574 m!545209))

(assert (=> b!566574 m!545209))

(declare-fun m!545211 () Bool)

(assert (=> b!566574 m!545211))

(declare-fun m!545213 () Bool)

(assert (=> b!566567 m!545213))

(declare-fun m!545215 () Bool)

(assert (=> start!51842 m!545215))

(declare-fun m!545217 () Bool)

(assert (=> start!51842 m!545217))

(declare-fun m!545219 () Bool)

(assert (=> b!566569 m!545219))

(assert (=> b!566576 m!545209))

(declare-fun m!545221 () Bool)

(assert (=> b!566576 m!545221))

(assert (=> b!566576 m!545209))

(declare-fun m!545223 () Bool)

(assert (=> b!566576 m!545223))

(assert (=> b!566576 m!545223))

(declare-fun m!545225 () Bool)

(assert (=> b!566576 m!545225))

(declare-fun m!545227 () Bool)

(assert (=> b!566576 m!545227))

(assert (=> b!566576 m!545209))

(declare-fun m!545229 () Bool)

(assert (=> b!566576 m!545229))

(assert (=> b!566576 m!545223))

(declare-fun m!545231 () Bool)

(assert (=> b!566576 m!545231))

(assert (=> b!566572 m!545209))

(assert (=> b!566572 m!545209))

(declare-fun m!545233 () Bool)

(assert (=> b!566572 m!545233))

(declare-fun m!545235 () Bool)

(assert (=> b!566571 m!545235))

(declare-fun m!545237 () Bool)

(assert (=> b!566571 m!545237))

(push 1)

(assert (not b!566573))

(assert (not b!566574))

(assert (not b!566567))

(assert (not b!566571))

(assert (not b!566569))

(assert (not b!566575))

(assert (not b!566572))

(assert (not b!566570))

(assert (not b!566576))

(assert (not start!51842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!566691 () Bool)

(declare-fun e!326133 () SeekEntryResult!5523)

(assert (=> b!566691 (= e!326133 (Intermediate!5523 true lt!258252 #b00000000000000000000000000000000))))

(declare-fun b!566692 () Bool)

(declare-fun e!326135 () SeekEntryResult!5523)

(assert (=> b!566692 (= e!326135 (Intermediate!5523 false lt!258252 #b00000000000000000000000000000000))))

(declare-fun b!566693 () Bool)

(assert (=> b!566693 (= e!326133 e!326135)))

(declare-fun c!64908 () Bool)

(declare-fun lt!258310 () (_ BitVec 64))

(assert (=> b!566693 (= c!64908 (or (= lt!258310 (select (store (arr!17067 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!258310 lt!258310) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566694 () Bool)

(declare-fun lt!258311 () SeekEntryResult!5523)

(assert (=> b!566694 (and (bvsge (index!24321 lt!258311) #b00000000000000000000000000000000) (bvslt (index!24321 lt!258311) (size!17431 (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118)))))))

(declare-fun res!357575 () Bool)

(assert (=> b!566694 (= res!357575 (= (select (arr!17067 (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118))) (index!24321 lt!258311)) (select (store (arr!17067 a!3118) i!1132 k!1914) j!142)))))

(declare-fun e!326137 () Bool)

(assert (=> b!566694 (=> res!357575 e!326137)))

(declare-fun e!326134 () Bool)

(assert (=> b!566694 (= e!326134 e!326137)))

(declare-fun b!566695 () Bool)

(declare-fun e!326136 () Bool)

(assert (=> b!566695 (= e!326136 e!326134)))

(declare-fun res!357573 () Bool)

(assert (=> b!566695 (= res!357573 (and (is-Intermediate!5523 lt!258311) (not (undefined!6335 lt!258311)) (bvslt (x!53217 lt!258311) #b01111111111111111111111111111110) (bvsge (x!53217 lt!258311) #b00000000000000000000000000000000) (bvsge (x!53217 lt!258311) #b00000000000000000000000000000000)))))

(assert (=> b!566695 (=> (not res!357573) (not e!326134))))

(declare-fun b!566696 () Bool)

(assert (=> b!566696 (and (bvsge (index!24321 lt!258311) #b00000000000000000000000000000000) (bvslt (index!24321 lt!258311) (size!17431 (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118)))))))

(declare-fun res!357574 () Bool)

(assert (=> b!566696 (= res!357574 (= (select (arr!17067 (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118))) (index!24321 lt!258311)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566696 (=> res!357574 e!326137)))

(declare-fun d!84083 () Bool)

(assert (=> d!84083 e!326136))

(declare-fun c!64909 () Bool)

(assert (=> d!84083 (= c!64909 (and (is-Intermediate!5523 lt!258311) (undefined!6335 lt!258311)))))

(assert (=> d!84083 (= lt!258311 e!326133)))

(declare-fun c!64910 () Bool)

(assert (=> d!84083 (= c!64910 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84083 (= lt!258310 (select (arr!17067 (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118))) lt!258252))))

(assert (=> d!84083 (validMask!0 mask!3119)))

(assert (=> d!84083 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258252 (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118)) mask!3119) lt!258311)))

(declare-fun b!566697 () Bool)

(assert (=> b!566697 (and (bvsge (index!24321 lt!258311) #b00000000000000000000000000000000) (bvslt (index!24321 lt!258311) (size!17431 (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118)))))))

(assert (=> b!566697 (= e!326137 (= (select (arr!17067 (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118))) (index!24321 lt!258311)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!566698 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566698 (= e!326135 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258252 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) (array!35548 (store (arr!17067 a!3118) i!1132 k!1914) (size!17431 a!3118)) mask!3119))))

(declare-fun b!566699 () Bool)

(assert (=> b!566699 (= e!326136 (bvsge (x!53217 lt!258311) #b01111111111111111111111111111110))))

(assert (= (and d!84083 c!64910) b!566691))

(assert (= (and d!84083 (not c!64910)) b!566693))

(assert (= (and b!566693 c!64908) b!566692))

(assert (= (and b!566693 (not c!64908)) b!566698))

(assert (= (and d!84083 c!64909) b!566699))

(assert (= (and d!84083 (not c!64909)) b!566695))

(assert (= (and b!566695 res!357573) b!566694))

(assert (= (and b!566694 (not res!357575)) b!566696))

(assert (= (and b!566696 (not res!357574)) b!566697))

(declare-fun m!545337 () Bool)

(assert (=> b!566696 m!545337))

(assert (=> b!566697 m!545337))

(declare-fun m!545339 () Bool)

(assert (=> d!84083 m!545339))

(assert (=> d!84083 m!545215))

(assert (=> b!566694 m!545337))

(declare-fun m!545341 () Bool)

(assert (=> b!566698 m!545341))

(assert (=> b!566698 m!545341))

(assert (=> b!566698 m!545223))

(declare-fun m!545343 () Bool)

(assert (=> b!566698 m!545343))

(assert (=> b!566576 d!84083))

(declare-fun b!566700 () Bool)

(declare-fun e!326138 () SeekEntryResult!5523)

(assert (=> b!566700 (= e!326138 (Intermediate!5523 true lt!258251 #b00000000000000000000000000000000))))

(declare-fun b!566701 () Bool)

(declare-fun e!326140 () SeekEntryResult!5523)

(assert (=> b!566701 (= e!326140 (Intermediate!5523 false lt!258251 #b00000000000000000000000000000000))))

(declare-fun b!566702 () Bool)

(assert (=> b!566702 (= e!326138 e!326140)))

(declare-fun c!64911 () Bool)

(declare-fun lt!258312 () (_ BitVec 64))

(assert (=> b!566702 (= c!64911 (or (= lt!258312 (select (arr!17067 a!3118) j!142)) (= (bvadd lt!258312 lt!258312) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566703 () Bool)

(declare-fun lt!258313 () SeekEntryResult!5523)

(assert (=> b!566703 (and (bvsge (index!24321 lt!258313) #b00000000000000000000000000000000) (bvslt (index!24321 lt!258313) (size!17431 a!3118)))))

(declare-fun res!357578 () Bool)

(assert (=> b!566703 (= res!357578 (= (select (arr!17067 a!3118) (index!24321 lt!258313)) (select (arr!17067 a!3118) j!142)))))

(declare-fun e!326142 () Bool)

(assert (=> b!566703 (=> res!357578 e!326142)))

(declare-fun e!326139 () Bool)

(assert (=> b!566703 (= e!326139 e!326142)))

(declare-fun b!566704 () Bool)

(declare-fun e!326141 () Bool)

(assert (=> b!566704 (= e!326141 e!326139)))

(declare-fun res!357576 () Bool)

(assert (=> b!566704 (= res!357576 (and (is-Intermediate!5523 lt!258313) (not (undefined!6335 lt!258313)) (bvslt (x!53217 lt!258313) #b01111111111111111111111111111110) (bvsge (x!53217 lt!258313) #b00000000000000000000000000000000) (bvsge (x!53217 lt!258313) #b00000000000000000000000000000000)))))

(assert (=> b!566704 (=> (not res!357576) (not e!326139))))

(declare-fun b!566705 () Bool)

(assert (=> b!566705 (and (bvsge (index!24321 lt!258313) #b00000000000000000000000000000000) (bvslt (index!24321 lt!258313) (size!17431 a!3118)))))

(declare-fun res!357577 () Bool)

(assert (=> b!566705 (= res!357577 (= (select (arr!17067 a!3118) (index!24321 lt!258313)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566705 (=> res!357577 e!326142)))

(declare-fun d!84093 () Bool)

(assert (=> d!84093 e!326141))

(declare-fun c!64912 () Bool)

(assert (=> d!84093 (= c!64912 (and (is-Intermediate!5523 lt!258313) (undefined!6335 lt!258313)))))

(assert (=> d!84093 (= lt!258313 e!326138)))

(declare-fun c!64913 () Bool)

(assert (=> d!84093 (= c!64913 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84093 (= lt!258312 (select (arr!17067 a!3118) lt!258251))))

(assert (=> d!84093 (validMask!0 mask!3119)))

(assert (=> d!84093 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258251 (select (arr!17067 a!3118) j!142) a!3118 mask!3119) lt!258313)))

(declare-fun b!566706 () Bool)

(assert (=> b!566706 (and (bvsge (index!24321 lt!258313) #b00000000000000000000000000000000) (bvslt (index!24321 lt!258313) (size!17431 a!3118)))))

(assert (=> b!566706 (= e!326142 (= (select (arr!17067 a!3118) (index!24321 lt!258313)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!566707 () Bool)

(assert (=> b!566707 (= e!326140 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258251 #b00000000000000000000000000000000 mask!3119) (select (arr!17067 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566708 () Bool)

(assert (=> b!566708 (= e!326141 (bvsge (x!53217 lt!258313) #b01111111111111111111111111111110))))

(assert (= (and d!84093 c!64913) b!566700))

(assert (= (and d!84093 (not c!64913)) b!566702))

(assert (= (and b!566702 c!64911) b!566701))

(assert (= (and b!566702 (not c!64911)) b!566707))

(assert (= (and d!84093 c!64912) b!566708))

(assert (= (and d!84093 (not c!64912)) b!566704))

(assert (= (and b!566704 res!357576) b!566703))

(assert (= (and b!566703 (not res!357578)) b!566705))

(assert (= (and b!566705 (not res!357577)) b!566706))

(declare-fun m!545345 () Bool)

(assert (=> b!566705 m!545345))

(assert (=> b!566706 m!545345))

(declare-fun m!545347 () Bool)

(assert (=> d!84093 m!545347))

(assert (=> d!84093 m!545215))

(assert (=> b!566703 m!545345))

(declare-fun m!545349 () Bool)

(assert (=> b!566707 m!545349))

(assert (=> b!566707 m!545349))

(assert (=> b!566707 m!545209))

(declare-fun m!545351 () Bool)

(assert (=> b!566707 m!545351))

(assert (=> b!566576 d!84093))

(declare-fun d!84099 () Bool)

(declare-fun lt!258328 () (_ BitVec 32))

(declare-fun lt!258327 () (_ BitVec 32))

(assert (=> d!84099 (= lt!258328 (bvmul (bvxor lt!258327 (bvlshr lt!258327 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84099 (= lt!258327 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84099 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357579 (let ((h!12208 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53221 (bvmul (bvxor h!12208 (bvlshr h!12208 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53221 (bvlshr x!53221 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357579 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357579 #b00000000000000000000000000000000))))))

(assert (=> d!84099 (= (toIndex!0 (select (store (arr!17067 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!258328 (bvlshr lt!258328 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566576 d!84099))

(declare-fun d!84103 () Bool)

(declare-fun lt!258330 () (_ BitVec 32))

(declare-fun lt!258329 () (_ BitVec 32))

(assert (=> d!84103 (= lt!258330 (bvmul (bvxor lt!258329 (bvlshr lt!258329 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84103 (= lt!258329 ((_ extract 31 0) (bvand (bvxor (select (arr!17067 a!3118) j!142) (bvlshr (select (arr!17067 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84103 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357579 (let ((h!12208 ((_ extract 31 0) (bvand (bvxor (select (arr!17067 a!3118) j!142) (bvlshr (select (arr!17067 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53221 (bvmul (bvxor h!12208 (bvlshr h!12208 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53221 (bvlshr x!53221 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357579 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357579 #b00000000000000000000000000000000))))))

(assert (=> d!84103 (= (toIndex!0 (select (arr!17067 a!3118) j!142) mask!3119) (bvand (bvxor lt!258330 (bvlshr lt!258330 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566576 d!84103))

(declare-fun d!84105 () Bool)

(assert (=> d!84105 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51842 d!84105))

(declare-fun d!84111 () Bool)

(assert (=> d!84111 (= (array_inv!12841 a!3118) (bvsge (size!17431 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51842 d!84111))

(declare-fun b!566772 () Bool)

(declare-fun e!326190 () Bool)

(declare-fun call!32508 () Bool)

(assert (=> b!566772 (= e!326190 call!32508)))

(declare-fun bm!32505 () Bool)

(assert (=> bm!32505 (= call!32508 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!566773 () Bool)

(declare-fun e!326188 () Bool)

(assert (=> b!566773 (= e!326188 e!326190)))

(declare-fun c!64932 () Bool)

(assert (=> b!566773 (= c!64932 (validKeyInArray!0 (select (arr!17067 a!3118) j!142)))))

(declare-fun d!84113 () Bool)

(declare-fun res!357607 () Bool)

(assert (=> d!84113 (=> res!357607 e!326188)))

(assert (=> d!84113 (= res!357607 (bvsge j!142 (size!17431 a!3118)))))

(assert (=> d!84113 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326188)))

(declare-fun b!566774 () Bool)

(declare-fun e!326189 () Bool)

(assert (=> b!566774 (= e!326189 call!32508)))

(declare-fun b!566775 () Bool)

(assert (=> b!566775 (= e!326190 e!326189)))

(declare-fun lt!258352 () (_ BitVec 64))

(assert (=> b!566775 (= lt!258352 (select (arr!17067 a!3118) j!142))))

(declare-fun lt!258354 () Unit!17748)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35547 (_ BitVec 64) (_ BitVec 32)) Unit!17748)

(assert (=> b!566775 (= lt!258354 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258352 j!142))))

(assert (=> b!566775 (arrayContainsKey!0 a!3118 lt!258352 #b00000000000000000000000000000000)))

(declare-fun lt!258353 () Unit!17748)

(assert (=> b!566775 (= lt!258353 lt!258354)))

(declare-fun res!357608 () Bool)

(assert (=> b!566775 (= res!357608 (= (seekEntryOrOpen!0 (select (arr!17067 a!3118) j!142) a!3118 mask!3119) (Found!5523 j!142)))))

(assert (=> b!566775 (=> (not res!357608) (not e!326189))))

(assert (= (and d!84113 (not res!357607)) b!566773))

(assert (= (and b!566773 c!64932) b!566775))

(assert (= (and b!566773 (not c!64932)) b!566772))

(assert (= (and b!566775 res!357608) b!566774))

(assert (= (or b!566774 b!566772) bm!32505))

(declare-fun m!545391 () Bool)

(assert (=> bm!32505 m!545391))

(assert (=> b!566773 m!545209))

(assert (=> b!566773 m!545209))

(assert (=> b!566773 m!545233))

(assert (=> b!566775 m!545209))

(declare-fun m!545393 () Bool)

(assert (=> b!566775 m!545393))

(declare-fun m!545395 () Bool)

(assert (=> b!566775 m!545395))

(assert (=> b!566775 m!545209))

(assert (=> b!566775 m!545211))

(assert (=> b!566571 d!84113))

(declare-fun d!84123 () Bool)

(assert (=> d!84123 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258364 () Unit!17748)

(declare-fun choose!38 (array!35547 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17748)

(assert (=> d!84123 (= lt!258364 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84123 (validMask!0 mask!3119)))

(assert (=> d!84123 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258364)))

(declare-fun bs!17600 () Bool)

(assert (= bs!17600 d!84123))

(assert (=> bs!17600 m!545235))

(declare-fun m!545409 () Bool)

(assert (=> bs!17600 m!545409))

(assert (=> bs!17600 m!545215))

(assert (=> b!566571 d!84123))

(declare-fun d!84131 () Bool)

(assert (=> d!84131 (= (validKeyInArray!0 (select (arr!17067 a!3118) j!142)) (and (not (= (select (arr!17067 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17067 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566572 d!84131))

(declare-fun b!566800 () Bool)

(declare-fun e!326206 () Bool)

(declare-fun call!32509 () Bool)

(assert (=> b!566800 (= e!326206 call!32509)))

(declare-fun bm!32506 () Bool)

(assert (=> bm!32506 (= call!32509 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!566801 () Bool)

(declare-fun e!326204 () Bool)

(assert (=> b!566801 (= e!326204 e!326206)))

(declare-fun c!64942 () Bool)

(assert (=> b!566801 (= c!64942 (validKeyInArray!0 (select (arr!17067 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84133 () Bool)

(declare-fun res!357615 () Bool)

(assert (=> d!84133 (=> res!357615 e!326204)))

(assert (=> d!84133 (= res!357615 (bvsge #b00000000000000000000000000000000 (size!17431 a!3118)))))

(assert (=> d!84133 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326204)))

(declare-fun b!566802 () Bool)

(declare-fun e!326205 () Bool)

(assert (=> b!566802 (= e!326205 call!32509)))

(declare-fun b!566803 () Bool)

(assert (=> b!566803 (= e!326206 e!326205)))

(declare-fun lt!258365 () (_ BitVec 64))

(assert (=> b!566803 (= lt!258365 (select (arr!17067 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258367 () Unit!17748)

(assert (=> b!566803 (= lt!258367 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258365 #b00000000000000000000000000000000))))

(assert (=> b!566803 (arrayContainsKey!0 a!3118 lt!258365 #b00000000000000000000000000000000)))

(declare-fun lt!258366 () Unit!17748)

(assert (=> b!566803 (= lt!258366 lt!258367)))

(declare-fun res!357616 () Bool)

(assert (=> b!566803 (= res!357616 (= (seekEntryOrOpen!0 (select (arr!17067 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5523 #b00000000000000000000000000000000)))))

(assert (=> b!566803 (=> (not res!357616) (not e!326205))))

(assert (= (and d!84133 (not res!357615)) b!566801))

(assert (= (and b!566801 c!64942) b!566803))

(assert (= (and b!566801 (not c!64942)) b!566800))

(assert (= (and b!566803 res!357616) b!566802))

(assert (= (or b!566802 b!566800) bm!32506))

(declare-fun m!545411 () Bool)

(assert (=> bm!32506 m!545411))

(declare-fun m!545413 () Bool)

(assert (=> b!566801 m!545413))

(assert (=> b!566801 m!545413))

(declare-fun m!545415 () Bool)

(assert (=> b!566801 m!545415))

(assert (=> b!566803 m!545413))

(declare-fun m!545417 () Bool)

(assert (=> b!566803 m!545417))

(declare-fun m!545419 () Bool)

(assert (=> b!566803 m!545419))

(assert (=> b!566803 m!545413))

(declare-fun m!545421 () Bool)

(assert (=> b!566803 m!545421))

(assert (=> b!566567 d!84133))

(declare-fun d!84135 () Bool)

(declare-fun res!357634 () Bool)

(declare-fun e!326231 () Bool)

(assert (=> d!84135 (=> res!357634 e!326231)))

(assert (=> d!84135 (= res!357634 (bvsge #b00000000000000000000000000000000 (size!17431 a!3118)))))

(assert (=> d!84135 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11197) e!326231)))

(declare-fun b!566836 () Bool)

(declare-fun e!326229 () Bool)

(declare-fun call!32513 () Bool)

(assert (=> b!566836 (= e!326229 call!32513)))

(declare-fun b!566837 () Bool)

(declare-fun e!326230 () Bool)

(assert (=> b!566837 (= e!326230 e!326229)))

(declare-fun c!64952 () Bool)

(assert (=> b!566837 (= c!64952 (validKeyInArray!0 (select (arr!17067 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32510 () Bool)

(assert (=> bm!32510 (= call!32513 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64952 (Cons!11196 (select (arr!17067 a!3118) #b00000000000000000000000000000000) Nil!11197) Nil!11197)))))

(declare-fun b!566838 () Bool)

(declare-fun e!326228 () Bool)

(declare-fun contains!2872 (List!11200 (_ BitVec 64)) Bool)

(assert (=> b!566838 (= e!326228 (contains!2872 Nil!11197 (select (arr!17067 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566839 () Bool)

(assert (=> b!566839 (= e!326229 call!32513)))

(declare-fun b!566840 () Bool)

(assert (=> b!566840 (= e!326231 e!326230)))

(declare-fun res!357632 () Bool)

(assert (=> b!566840 (=> (not res!357632) (not e!326230))))

(assert (=> b!566840 (= res!357632 (not e!326228))))

(declare-fun res!357633 () Bool)

(assert (=> b!566840 (=> (not res!357633) (not e!326228))))

(assert (=> b!566840 (= res!357633 (validKeyInArray!0 (select (arr!17067 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84135 (not res!357634)) b!566840))

(assert (= (and b!566840 res!357633) b!566838))

(assert (= (and b!566840 res!357632) b!566837))

(assert (= (and b!566837 c!64952) b!566836))

(assert (= (and b!566837 (not c!64952)) b!566839))

(assert (= (or b!566836 b!566839) bm!32510))

(assert (=> b!566837 m!545413))

(assert (=> b!566837 m!545413))

(assert (=> b!566837 m!545415))

(assert (=> bm!32510 m!545413))

(declare-fun m!545449 () Bool)

(assert (=> bm!32510 m!545449))

(assert (=> b!566838 m!545413))

(assert (=> b!566838 m!545413))

(declare-fun m!545451 () Bool)

(assert (=> b!566838 m!545451))

(assert (=> b!566840 m!545413))

(assert (=> b!566840 m!545413))

(assert (=> b!566840 m!545415))

(assert (=> b!566573 d!84135))

(declare-fun b!566910 () Bool)

(declare-fun e!326273 () SeekEntryResult!5523)

(declare-fun lt!258408 () SeekEntryResult!5523)

(assert (=> b!566910 (= e!326273 (Found!5523 (index!24321 lt!258408)))))

(declare-fun b!566911 () Bool)

(declare-fun e!326275 () SeekEntryResult!5523)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35547 (_ BitVec 32)) SeekEntryResult!5523)

(assert (=> b!566911 (= e!326275 (seekKeyOrZeroReturnVacant!0 (x!53217 lt!258408) (index!24321 lt!258408) (index!24321 lt!258408) (select (arr!17067 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!84149 () Bool)

(declare-fun lt!258409 () SeekEntryResult!5523)

(assert (=> d!84149 (and (or (is-Undefined!5523 lt!258409) (not (is-Found!5523 lt!258409)) (and (bvsge (index!24320 lt!258409) #b00000000000000000000000000000000) (bvslt (index!24320 lt!258409) (size!17431 a!3118)))) (or (is-Undefined!5523 lt!258409) (is-Found!5523 lt!258409) (not (is-MissingZero!5523 lt!258409)) (and (bvsge (index!24319 lt!258409) #b00000000000000000000000000000000) (bvslt (index!24319 lt!258409) (size!17431 a!3118)))) (or (is-Undefined!5523 lt!258409) (is-Found!5523 lt!258409) (is-MissingZero!5523 lt!258409) (not (is-MissingVacant!5523 lt!258409)) (and (bvsge (index!24322 lt!258409) #b00000000000000000000000000000000) (bvslt (index!24322 lt!258409) (size!17431 a!3118)))) (or (is-Undefined!5523 lt!258409) (ite (is-Found!5523 lt!258409) (= (select (arr!17067 a!3118) (index!24320 lt!258409)) (select (arr!17067 a!3118) j!142)) (ite (is-MissingZero!5523 lt!258409) (= (select (arr!17067 a!3118) (index!24319 lt!258409)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5523 lt!258409) (= (select (arr!17067 a!3118) (index!24322 lt!258409)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!326274 () SeekEntryResult!5523)

(assert (=> d!84149 (= lt!258409 e!326274)))

(declare-fun c!64979 () Bool)

(assert (=> d!84149 (= c!64979 (and (is-Intermediate!5523 lt!258408) (undefined!6335 lt!258408)))))

(assert (=> d!84149 (= lt!258408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17067 a!3118) j!142) mask!3119) (select (arr!17067 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84149 (validMask!0 mask!3119)))

(assert (=> d!84149 (= (seekEntryOrOpen!0 (select (arr!17067 a!3118) j!142) a!3118 mask!3119) lt!258409)))

(declare-fun b!566912 () Bool)

(assert (=> b!566912 (= e!326274 Undefined!5523)))

(declare-fun b!566913 () Bool)

(assert (=> b!566913 (= e!326275 (MissingZero!5523 (index!24321 lt!258408)))))

(declare-fun b!566914 () Bool)

(declare-fun c!64978 () Bool)

(declare-fun lt!258410 () (_ BitVec 64))

(assert (=> b!566914 (= c!64978 (= lt!258410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566914 (= e!326273 e!326275)))

(declare-fun b!566915 () Bool)

(assert (=> b!566915 (= e!326274 e!326273)))

(assert (=> b!566915 (= lt!258410 (select (arr!17067 a!3118) (index!24321 lt!258408)))))

(declare-fun c!64977 () Bool)

(assert (=> b!566915 (= c!64977 (= lt!258410 (select (arr!17067 a!3118) j!142)))))

(assert (= (and d!84149 c!64979) b!566912))

(assert (= (and d!84149 (not c!64979)) b!566915))

(assert (= (and b!566915 c!64977) b!566910))

(assert (= (and b!566915 (not c!64977)) b!566914))

(assert (= (and b!566914 c!64978) b!566913))

(assert (= (and b!566914 (not c!64978)) b!566911))

(assert (=> b!566911 m!545209))

(declare-fun m!545487 () Bool)

(assert (=> b!566911 m!545487))

(declare-fun m!545489 () Bool)

(assert (=> d!84149 m!545489))

(declare-fun m!545491 () Bool)

(assert (=> d!84149 m!545491))

(assert (=> d!84149 m!545215))

(assert (=> d!84149 m!545209))

(assert (=> d!84149 m!545221))

(assert (=> d!84149 m!545221))

(assert (=> d!84149 m!545209))

(declare-fun m!545493 () Bool)

(assert (=> d!84149 m!545493))

(declare-fun m!545495 () Bool)

(assert (=> d!84149 m!545495))

(declare-fun m!545497 () Bool)

(assert (=> b!566915 m!545497))

(assert (=> b!566574 d!84149))

(declare-fun b!566916 () Bool)

(declare-fun e!326276 () SeekEntryResult!5523)

(declare-fun lt!258411 () SeekEntryResult!5523)

(assert (=> b!566916 (= e!326276 (Found!5523 (index!24321 lt!258411)))))

(declare-fun e!326278 () SeekEntryResult!5523)

(declare-fun b!566917 () Bool)

(assert (=> b!566917 (= e!326278 (seekKeyOrZeroReturnVacant!0 (x!53217 lt!258411) (index!24321 lt!258411) (index!24321 lt!258411) k!1914 a!3118 mask!3119))))

(declare-fun d!84161 () Bool)

(declare-fun lt!258412 () SeekEntryResult!5523)

(assert (=> d!84161 (and (or (is-Undefined!5523 lt!258412) (not (is-Found!5523 lt!258412)) (and (bvsge (index!24320 lt!258412) #b00000000000000000000000000000000) (bvslt (index!24320 lt!258412) (size!17431 a!3118)))) (or (is-Undefined!5523 lt!258412) (is-Found!5523 lt!258412) (not (is-MissingZero!5523 lt!258412)) (and (bvsge (index!24319 lt!258412) #b00000000000000000000000000000000) (bvslt (index!24319 lt!258412) (size!17431 a!3118)))) (or (is-Undefined!5523 lt!258412) (is-Found!5523 lt!258412) (is-MissingZero!5523 lt!258412) (not (is-MissingVacant!5523 lt!258412)) (and (bvsge (index!24322 lt!258412) #b00000000000000000000000000000000) (bvslt (index!24322 lt!258412) (size!17431 a!3118)))) (or (is-Undefined!5523 lt!258412) (ite (is-Found!5523 lt!258412) (= (select (arr!17067 a!3118) (index!24320 lt!258412)) k!1914) (ite (is-MissingZero!5523 lt!258412) (= (select (arr!17067 a!3118) (index!24319 lt!258412)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5523 lt!258412) (= (select (arr!17067 a!3118) (index!24322 lt!258412)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!326277 () SeekEntryResult!5523)

(assert (=> d!84161 (= lt!258412 e!326277)))

(declare-fun c!64982 () Bool)

(assert (=> d!84161 (= c!64982 (and (is-Intermediate!5523 lt!258411) (undefined!6335 lt!258411)))))

(assert (=> d!84161 (= lt!258411 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84161 (validMask!0 mask!3119)))

(assert (=> d!84161 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!258412)))

(declare-fun b!566918 () Bool)

(assert (=> b!566918 (= e!326277 Undefined!5523)))

(declare-fun b!566919 () Bool)

(assert (=> b!566919 (= e!326278 (MissingZero!5523 (index!24321 lt!258411)))))

(declare-fun b!566920 () Bool)

(declare-fun c!64981 () Bool)

(declare-fun lt!258413 () (_ BitVec 64))

(assert (=> b!566920 (= c!64981 (= lt!258413 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566920 (= e!326276 e!326278)))

(declare-fun b!566921 () Bool)

(assert (=> b!566921 (= e!326277 e!326276)))

(assert (=> b!566921 (= lt!258413 (select (arr!17067 a!3118) (index!24321 lt!258411)))))

(declare-fun c!64980 () Bool)

(assert (=> b!566921 (= c!64980 (= lt!258413 k!1914))))

(assert (= (and d!84161 c!64982) b!566918))

(assert (= (and d!84161 (not c!64982)) b!566921))

(assert (= (and b!566921 c!64980) b!566916))

(assert (= (and b!566921 (not c!64980)) b!566920))

(assert (= (and b!566920 c!64981) b!566919))

(assert (= (and b!566920 (not c!64981)) b!566917))

(declare-fun m!545499 () Bool)

(assert (=> b!566917 m!545499))

(declare-fun m!545501 () Bool)

(assert (=> d!84161 m!545501))

(declare-fun m!545503 () Bool)

(assert (=> d!84161 m!545503))

(assert (=> d!84161 m!545215))

(declare-fun m!545505 () Bool)

(assert (=> d!84161 m!545505))

(assert (=> d!84161 m!545505))

(declare-fun m!545507 () Bool)

(assert (=> d!84161 m!545507))

(declare-fun m!545509 () Bool)

(assert (=> d!84161 m!545509))

(declare-fun m!545511 () Bool)

(assert (=> b!566921 m!545511))

(assert (=> b!566569 d!84161))

(declare-fun d!84163 () Bool)

(declare-fun res!357661 () Bool)

(declare-fun e!326283 () Bool)

(assert (=> d!84163 (=> res!357661 e!326283)))

(assert (=> d!84163 (= res!357661 (= (select (arr!17067 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84163 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!326283)))

(declare-fun b!566926 () Bool)

(declare-fun e!326284 () Bool)

(assert (=> b!566926 (= e!326283 e!326284)))

(declare-fun res!357662 () Bool)

(assert (=> b!566926 (=> (not res!357662) (not e!326284))))

(assert (=> b!566926 (= res!357662 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17431 a!3118)))))

(declare-fun b!566927 () Bool)

(assert (=> b!566927 (= e!326284 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84163 (not res!357661)) b!566926))

(assert (= (and b!566926 res!357662) b!566927))

(assert (=> d!84163 m!545413))

(declare-fun m!545513 () Bool)

(assert (=> b!566927 m!545513))

(assert (=> b!566570 d!84163))

(declare-fun d!84165 () Bool)

(assert (=> d!84165 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566575 d!84165))

(push 1)

(assert (not b!566927))

(assert (not d!84161))

(assert (not bm!32510))

(assert (not b!566773))

(assert (not b!566911))

(assert (not d!84083))

(assert (not b!566840))

(assert (not d!84149))

(assert (not b!566917))

(assert (not d!84123))

(assert (not b!566698))

(assert (not b!566837))

(assert (not bm!32505))

(assert (not b!566775))

(assert (not b!566838))

(assert (not b!566801))

(assert (not d!84093))

(assert (not b!566803))

(assert (not b!566707))

(assert (not bm!32506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

