; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44400 () Bool)

(assert start!44400)

(declare-fun b!487710 () Bool)

(declare-fun res!291133 () Bool)

(declare-fun e!286935 () Bool)

(assert (=> b!487710 (=> (not res!291133) (not e!286935))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487710 (= res!291133 (validKeyInArray!0 k0!2280))))

(declare-fun b!487711 () Bool)

(declare-fun res!291138 () Bool)

(assert (=> b!487711 (=> (not res!291138) (not e!286935))))

(declare-datatypes ((array!31566 0))(
  ( (array!31567 (arr!15172 (Array (_ BitVec 32) (_ BitVec 64))) (size!15536 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31566)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!487711 (= res!291138 (validKeyInArray!0 (select (arr!15172 a!3235) j!176)))))

(declare-fun b!487712 () Bool)

(declare-fun e!286936 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!220159 () (_ BitVec 32))

(assert (=> b!487712 (= e!286936 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!220159 #b00000000000000000000000000000000) (bvslt lt!220159 (bvadd #b00000000000000000000000000000001 mask!3524))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487712 (= lt!220159 (toIndex!0 (select (arr!15172 a!3235) j!176) mask!3524))))

(declare-fun e!286934 () Bool)

(assert (=> b!487712 e!286934))

(declare-fun res!291132 () Bool)

(assert (=> b!487712 (=> (not res!291132) (not e!286934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31566 (_ BitVec 32)) Bool)

(assert (=> b!487712 (= res!291132 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14230 0))(
  ( (Unit!14231) )
))
(declare-fun lt!220158 () Unit!14230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14230)

(assert (=> b!487712 (= lt!220158 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487713 () Bool)

(declare-fun res!291137 () Bool)

(assert (=> b!487713 (=> (not res!291137) (not e!286935))))

(declare-fun arrayContainsKey!0 (array!31566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487713 (= res!291137 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!291136 () Bool)

(assert (=> start!44400 (=> (not res!291136) (not e!286935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44400 (= res!291136 (validMask!0 mask!3524))))

(assert (=> start!44400 e!286935))

(assert (=> start!44400 true))

(declare-fun array_inv!10946 (array!31566) Bool)

(assert (=> start!44400 (array_inv!10946 a!3235)))

(declare-fun b!487714 () Bool)

(assert (=> b!487714 (= e!286935 e!286936)))

(declare-fun res!291140 () Bool)

(assert (=> b!487714 (=> (not res!291140) (not e!286936))))

(declare-datatypes ((SeekEntryResult!3646 0))(
  ( (MissingZero!3646 (index!16763 (_ BitVec 32))) (Found!3646 (index!16764 (_ BitVec 32))) (Intermediate!3646 (undefined!4458 Bool) (index!16765 (_ BitVec 32)) (x!45909 (_ BitVec 32))) (Undefined!3646) (MissingVacant!3646 (index!16766 (_ BitVec 32))) )
))
(declare-fun lt!220160 () SeekEntryResult!3646)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487714 (= res!291140 (or (= lt!220160 (MissingZero!3646 i!1204)) (= lt!220160 (MissingVacant!3646 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31566 (_ BitVec 32)) SeekEntryResult!3646)

(assert (=> b!487714 (= lt!220160 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!487715 () Bool)

(declare-fun res!291134 () Bool)

(assert (=> b!487715 (=> (not res!291134) (not e!286936))))

(declare-datatypes ((List!9383 0))(
  ( (Nil!9380) (Cons!9379 (h!10235 (_ BitVec 64)) (t!15619 List!9383)) )
))
(declare-fun arrayNoDuplicates!0 (array!31566 (_ BitVec 32) List!9383) Bool)

(assert (=> b!487715 (= res!291134 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9380))))

(declare-fun b!487716 () Bool)

(assert (=> b!487716 (= e!286934 (= (seekEntryOrOpen!0 (select (arr!15172 a!3235) j!176) a!3235 mask!3524) (Found!3646 j!176)))))

(declare-fun b!487717 () Bool)

(declare-fun res!291139 () Bool)

(assert (=> b!487717 (=> (not res!291139) (not e!286935))))

(assert (=> b!487717 (= res!291139 (and (= (size!15536 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15536 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15536 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487718 () Bool)

(declare-fun res!291135 () Bool)

(assert (=> b!487718 (=> (not res!291135) (not e!286936))))

(assert (=> b!487718 (= res!291135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44400 res!291136) b!487717))

(assert (= (and b!487717 res!291139) b!487711))

(assert (= (and b!487711 res!291138) b!487710))

(assert (= (and b!487710 res!291133) b!487713))

(assert (= (and b!487713 res!291137) b!487714))

(assert (= (and b!487714 res!291140) b!487718))

(assert (= (and b!487718 res!291135) b!487715))

(assert (= (and b!487715 res!291134) b!487712))

(assert (= (and b!487712 res!291132) b!487716))

(declare-fun m!467529 () Bool)

(assert (=> start!44400 m!467529))

(declare-fun m!467531 () Bool)

(assert (=> start!44400 m!467531))

(declare-fun m!467533 () Bool)

(assert (=> b!487713 m!467533))

(declare-fun m!467535 () Bool)

(assert (=> b!487710 m!467535))

(declare-fun m!467537 () Bool)

(assert (=> b!487712 m!467537))

(assert (=> b!487712 m!467537))

(declare-fun m!467539 () Bool)

(assert (=> b!487712 m!467539))

(declare-fun m!467541 () Bool)

(assert (=> b!487712 m!467541))

(declare-fun m!467543 () Bool)

(assert (=> b!487712 m!467543))

(declare-fun m!467545 () Bool)

(assert (=> b!487715 m!467545))

(declare-fun m!467547 () Bool)

(assert (=> b!487714 m!467547))

(assert (=> b!487716 m!467537))

(assert (=> b!487716 m!467537))

(declare-fun m!467549 () Bool)

(assert (=> b!487716 m!467549))

(assert (=> b!487711 m!467537))

(assert (=> b!487711 m!467537))

(declare-fun m!467551 () Bool)

(assert (=> b!487711 m!467551))

(declare-fun m!467553 () Bool)

(assert (=> b!487718 m!467553))

(check-sat (not b!487715) (not b!487714) (not b!487718) (not start!44400) (not b!487713) (not b!487710) (not b!487711) (not b!487716) (not b!487712))
(check-sat)
(get-model)

(declare-fun d!77583 () Bool)

(declare-fun lt!220175 () (_ BitVec 32))

(declare-fun lt!220174 () (_ BitVec 32))

(assert (=> d!77583 (= lt!220175 (bvmul (bvxor lt!220174 (bvlshr lt!220174 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77583 (= lt!220174 ((_ extract 31 0) (bvand (bvxor (select (arr!15172 a!3235) j!176) (bvlshr (select (arr!15172 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77583 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!291168 (let ((h!10237 ((_ extract 31 0) (bvand (bvxor (select (arr!15172 a!3235) j!176) (bvlshr (select (arr!15172 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!45911 (bvmul (bvxor h!10237 (bvlshr h!10237 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!45911 (bvlshr x!45911 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!291168 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!291168 #b00000000000000000000000000000000))))))

(assert (=> d!77583 (= (toIndex!0 (select (arr!15172 a!3235) j!176) mask!3524) (bvand (bvxor lt!220175 (bvlshr lt!220175 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!487712 d!77583))

(declare-fun b!487754 () Bool)

(declare-fun e!286955 () Bool)

(declare-fun call!31304 () Bool)

(assert (=> b!487754 (= e!286955 call!31304)))

(declare-fun d!77585 () Bool)

(declare-fun res!291174 () Bool)

(declare-fun e!286957 () Bool)

(assert (=> d!77585 (=> res!291174 e!286957)))

(assert (=> d!77585 (= res!291174 (bvsge j!176 (size!15536 a!3235)))))

(assert (=> d!77585 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!286957)))

(declare-fun b!487755 () Bool)

(assert (=> b!487755 (= e!286957 e!286955)))

(declare-fun c!58559 () Bool)

(assert (=> b!487755 (= c!58559 (validKeyInArray!0 (select (arr!15172 a!3235) j!176)))))

(declare-fun b!487756 () Bool)

(declare-fun e!286956 () Bool)

(assert (=> b!487756 (= e!286956 call!31304)))

(declare-fun bm!31301 () Bool)

(assert (=> bm!31301 (= call!31304 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!487757 () Bool)

(assert (=> b!487757 (= e!286955 e!286956)))

(declare-fun lt!220182 () (_ BitVec 64))

(assert (=> b!487757 (= lt!220182 (select (arr!15172 a!3235) j!176))))

(declare-fun lt!220184 () Unit!14230)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31566 (_ BitVec 64) (_ BitVec 32)) Unit!14230)

(assert (=> b!487757 (= lt!220184 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220182 j!176))))

(assert (=> b!487757 (arrayContainsKey!0 a!3235 lt!220182 #b00000000000000000000000000000000)))

(declare-fun lt!220183 () Unit!14230)

(assert (=> b!487757 (= lt!220183 lt!220184)))

(declare-fun res!291173 () Bool)

(assert (=> b!487757 (= res!291173 (= (seekEntryOrOpen!0 (select (arr!15172 a!3235) j!176) a!3235 mask!3524) (Found!3646 j!176)))))

(assert (=> b!487757 (=> (not res!291173) (not e!286956))))

(assert (= (and d!77585 (not res!291174)) b!487755))

(assert (= (and b!487755 c!58559) b!487757))

(assert (= (and b!487755 (not c!58559)) b!487754))

(assert (= (and b!487757 res!291173) b!487756))

(assert (= (or b!487756 b!487754) bm!31301))

(assert (=> b!487755 m!467537))

(assert (=> b!487755 m!467537))

(assert (=> b!487755 m!467551))

(declare-fun m!467581 () Bool)

(assert (=> bm!31301 m!467581))

(assert (=> b!487757 m!467537))

(declare-fun m!467583 () Bool)

(assert (=> b!487757 m!467583))

(declare-fun m!467585 () Bool)

(assert (=> b!487757 m!467585))

(assert (=> b!487757 m!467537))

(assert (=> b!487757 m!467549))

(assert (=> b!487712 d!77585))

(declare-fun d!77589 () Bool)

(assert (=> d!77589 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220196 () Unit!14230)

(declare-fun choose!38 (array!31566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14230)

(assert (=> d!77589 (= lt!220196 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77589 (validMask!0 mask!3524)))

(assert (=> d!77589 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220196)))

(declare-fun bs!15549 () Bool)

(assert (= bs!15549 d!77589))

(assert (=> bs!15549 m!467541))

(declare-fun m!467587 () Bool)

(assert (=> bs!15549 m!467587))

(assert (=> bs!15549 m!467529))

(assert (=> b!487712 d!77589))

(declare-fun b!487770 () Bool)

(declare-fun e!286967 () Bool)

(declare-fun call!31308 () Bool)

(assert (=> b!487770 (= e!286967 call!31308)))

(declare-fun d!77593 () Bool)

(declare-fun res!291183 () Bool)

(declare-fun e!286969 () Bool)

(assert (=> d!77593 (=> res!291183 e!286969)))

(assert (=> d!77593 (= res!291183 (bvsge #b00000000000000000000000000000000 (size!15536 a!3235)))))

(assert (=> d!77593 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286969)))

(declare-fun b!487771 () Bool)

(assert (=> b!487771 (= e!286969 e!286967)))

(declare-fun c!58563 () Bool)

(assert (=> b!487771 (= c!58563 (validKeyInArray!0 (select (arr!15172 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!487772 () Bool)

(declare-fun e!286968 () Bool)

(assert (=> b!487772 (= e!286968 call!31308)))

(declare-fun bm!31305 () Bool)

(assert (=> bm!31305 (= call!31308 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!487773 () Bool)

(assert (=> b!487773 (= e!286967 e!286968)))

(declare-fun lt!220197 () (_ BitVec 64))

(assert (=> b!487773 (= lt!220197 (select (arr!15172 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220199 () Unit!14230)

(assert (=> b!487773 (= lt!220199 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220197 #b00000000000000000000000000000000))))

(assert (=> b!487773 (arrayContainsKey!0 a!3235 lt!220197 #b00000000000000000000000000000000)))

(declare-fun lt!220198 () Unit!14230)

(assert (=> b!487773 (= lt!220198 lt!220199)))

(declare-fun res!291182 () Bool)

(assert (=> b!487773 (= res!291182 (= (seekEntryOrOpen!0 (select (arr!15172 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3646 #b00000000000000000000000000000000)))))

(assert (=> b!487773 (=> (not res!291182) (not e!286968))))

(assert (= (and d!77593 (not res!291183)) b!487771))

(assert (= (and b!487771 c!58563) b!487773))

(assert (= (and b!487771 (not c!58563)) b!487770))

(assert (= (and b!487773 res!291182) b!487772))

(assert (= (or b!487772 b!487770) bm!31305))

(declare-fun m!467601 () Bool)

(assert (=> b!487771 m!467601))

(assert (=> b!487771 m!467601))

(declare-fun m!467603 () Bool)

(assert (=> b!487771 m!467603))

(declare-fun m!467605 () Bool)

(assert (=> bm!31305 m!467605))

(assert (=> b!487773 m!467601))

(declare-fun m!467607 () Bool)

(assert (=> b!487773 m!467607))

(declare-fun m!467609 () Bool)

(assert (=> b!487773 m!467609))

(assert (=> b!487773 m!467601))

(declare-fun m!467611 () Bool)

(assert (=> b!487773 m!467611))

(assert (=> b!487718 d!77593))

(declare-fun d!77597 () Bool)

(assert (=> d!77597 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44400 d!77597))

(declare-fun d!77603 () Bool)

(assert (=> d!77603 (= (array_inv!10946 a!3235) (bvsge (size!15536 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44400 d!77603))

(declare-fun d!77607 () Bool)

(declare-fun res!291194 () Bool)

(declare-fun e!286983 () Bool)

(assert (=> d!77607 (=> res!291194 e!286983)))

(assert (=> d!77607 (= res!291194 (= (select (arr!15172 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!77607 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!286983)))

(declare-fun b!487790 () Bool)

(declare-fun e!286984 () Bool)

(assert (=> b!487790 (= e!286983 e!286984)))

(declare-fun res!291195 () Bool)

(assert (=> b!487790 (=> (not res!291195) (not e!286984))))

(assert (=> b!487790 (= res!291195 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15536 a!3235)))))

(declare-fun b!487791 () Bool)

(assert (=> b!487791 (= e!286984 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77607 (not res!291194)) b!487790))

(assert (= (and b!487790 res!291195) b!487791))

(assert (=> d!77607 m!467601))

(declare-fun m!467619 () Bool)

(assert (=> b!487791 m!467619))

(assert (=> b!487713 d!77607))

(declare-fun lt!220237 () SeekEntryResult!3646)

(declare-fun e!287021 () SeekEntryResult!3646)

(declare-fun b!487847 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31566 (_ BitVec 32)) SeekEntryResult!3646)

(assert (=> b!487847 (= e!287021 (seekKeyOrZeroReturnVacant!0 (x!45909 lt!220237) (index!16765 lt!220237) (index!16765 lt!220237) k0!2280 a!3235 mask!3524))))

(declare-fun d!77613 () Bool)

(declare-fun lt!220238 () SeekEntryResult!3646)

(get-info :version)

(assert (=> d!77613 (and (or ((_ is Undefined!3646) lt!220238) (not ((_ is Found!3646) lt!220238)) (and (bvsge (index!16764 lt!220238) #b00000000000000000000000000000000) (bvslt (index!16764 lt!220238) (size!15536 a!3235)))) (or ((_ is Undefined!3646) lt!220238) ((_ is Found!3646) lt!220238) (not ((_ is MissingZero!3646) lt!220238)) (and (bvsge (index!16763 lt!220238) #b00000000000000000000000000000000) (bvslt (index!16763 lt!220238) (size!15536 a!3235)))) (or ((_ is Undefined!3646) lt!220238) ((_ is Found!3646) lt!220238) ((_ is MissingZero!3646) lt!220238) (not ((_ is MissingVacant!3646) lt!220238)) (and (bvsge (index!16766 lt!220238) #b00000000000000000000000000000000) (bvslt (index!16766 lt!220238) (size!15536 a!3235)))) (or ((_ is Undefined!3646) lt!220238) (ite ((_ is Found!3646) lt!220238) (= (select (arr!15172 a!3235) (index!16764 lt!220238)) k0!2280) (ite ((_ is MissingZero!3646) lt!220238) (= (select (arr!15172 a!3235) (index!16763 lt!220238)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3646) lt!220238) (= (select (arr!15172 a!3235) (index!16766 lt!220238)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!287022 () SeekEntryResult!3646)

(assert (=> d!77613 (= lt!220238 e!287022)))

(declare-fun c!58588 () Bool)

(assert (=> d!77613 (= c!58588 (and ((_ is Intermediate!3646) lt!220237) (undefined!4458 lt!220237)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31566 (_ BitVec 32)) SeekEntryResult!3646)

(assert (=> d!77613 (= lt!220237 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!77613 (validMask!0 mask!3524)))

(assert (=> d!77613 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!220238)))

(declare-fun b!487848 () Bool)

(assert (=> b!487848 (= e!287022 Undefined!3646)))

(declare-fun b!487849 () Bool)

(assert (=> b!487849 (= e!287021 (MissingZero!3646 (index!16765 lt!220237)))))

(declare-fun b!487850 () Bool)

(declare-fun e!287023 () SeekEntryResult!3646)

(assert (=> b!487850 (= e!287022 e!287023)))

(declare-fun lt!220236 () (_ BitVec 64))

(assert (=> b!487850 (= lt!220236 (select (arr!15172 a!3235) (index!16765 lt!220237)))))

(declare-fun c!58586 () Bool)

(assert (=> b!487850 (= c!58586 (= lt!220236 k0!2280))))

(declare-fun b!487851 () Bool)

(assert (=> b!487851 (= e!287023 (Found!3646 (index!16765 lt!220237)))))

(declare-fun b!487852 () Bool)

(declare-fun c!58587 () Bool)

(assert (=> b!487852 (= c!58587 (= lt!220236 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!487852 (= e!287023 e!287021)))

(assert (= (and d!77613 c!58588) b!487848))

(assert (= (and d!77613 (not c!58588)) b!487850))

(assert (= (and b!487850 c!58586) b!487851))

(assert (= (and b!487850 (not c!58586)) b!487852))

(assert (= (and b!487852 c!58587) b!487849))

(assert (= (and b!487852 (not c!58587)) b!487847))

(declare-fun m!467655 () Bool)

(assert (=> b!487847 m!467655))

(declare-fun m!467657 () Bool)

(assert (=> d!77613 m!467657))

(declare-fun m!467659 () Bool)

(assert (=> d!77613 m!467659))

(declare-fun m!467661 () Bool)

(assert (=> d!77613 m!467661))

(assert (=> d!77613 m!467657))

(declare-fun m!467663 () Bool)

(assert (=> d!77613 m!467663))

(declare-fun m!467665 () Bool)

(assert (=> d!77613 m!467665))

(assert (=> d!77613 m!467529))

(declare-fun m!467667 () Bool)

(assert (=> b!487850 m!467667))

(assert (=> b!487714 d!77613))

(declare-fun d!77627 () Bool)

(assert (=> d!77627 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487710 d!77627))

(declare-fun d!77631 () Bool)

(declare-fun res!291233 () Bool)

(declare-fun e!287050 () Bool)

(assert (=> d!77631 (=> res!291233 e!287050)))

(assert (=> d!77631 (= res!291233 (bvsge #b00000000000000000000000000000000 (size!15536 a!3235)))))

(assert (=> d!77631 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9380) e!287050)))

(declare-fun b!487885 () Bool)

(declare-fun e!287052 () Bool)

(assert (=> b!487885 (= e!287050 e!287052)))

(declare-fun res!291231 () Bool)

(assert (=> b!487885 (=> (not res!291231) (not e!287052))))

(declare-fun e!287051 () Bool)

(assert (=> b!487885 (= res!291231 (not e!287051))))

(declare-fun res!291232 () Bool)

(assert (=> b!487885 (=> (not res!291232) (not e!287051))))

(assert (=> b!487885 (= res!291232 (validKeyInArray!0 (select (arr!15172 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!487886 () Bool)

(declare-fun e!287049 () Bool)

(declare-fun call!31320 () Bool)

(assert (=> b!487886 (= e!287049 call!31320)))

(declare-fun bm!31317 () Bool)

(declare-fun c!58596 () Bool)

(assert (=> bm!31317 (= call!31320 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58596 (Cons!9379 (select (arr!15172 a!3235) #b00000000000000000000000000000000) Nil!9380) Nil!9380)))))

(declare-fun b!487887 () Bool)

(assert (=> b!487887 (= e!287049 call!31320)))

(declare-fun b!487888 () Bool)

(declare-fun contains!2703 (List!9383 (_ BitVec 64)) Bool)

(assert (=> b!487888 (= e!287051 (contains!2703 Nil!9380 (select (arr!15172 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!487889 () Bool)

(assert (=> b!487889 (= e!287052 e!287049)))

(assert (=> b!487889 (= c!58596 (validKeyInArray!0 (select (arr!15172 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77631 (not res!291233)) b!487885))

(assert (= (and b!487885 res!291232) b!487888))

(assert (= (and b!487885 res!291231) b!487889))

(assert (= (and b!487889 c!58596) b!487887))

(assert (= (and b!487889 (not c!58596)) b!487886))

(assert (= (or b!487887 b!487886) bm!31317))

(assert (=> b!487885 m!467601))

(assert (=> b!487885 m!467601))

(assert (=> b!487885 m!467603))

(assert (=> bm!31317 m!467601))

(declare-fun m!467683 () Bool)

(assert (=> bm!31317 m!467683))

(assert (=> b!487888 m!467601))

(assert (=> b!487888 m!467601))

(declare-fun m!467685 () Bool)

(assert (=> b!487888 m!467685))

(assert (=> b!487889 m!467601))

(assert (=> b!487889 m!467601))

(assert (=> b!487889 m!467603))

(assert (=> b!487715 d!77631))

(declare-fun e!287057 () SeekEntryResult!3646)

(declare-fun b!487895 () Bool)

(declare-fun lt!220243 () SeekEntryResult!3646)

(assert (=> b!487895 (= e!287057 (seekKeyOrZeroReturnVacant!0 (x!45909 lt!220243) (index!16765 lt!220243) (index!16765 lt!220243) (select (arr!15172 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!77635 () Bool)

(declare-fun lt!220244 () SeekEntryResult!3646)

(assert (=> d!77635 (and (or ((_ is Undefined!3646) lt!220244) (not ((_ is Found!3646) lt!220244)) (and (bvsge (index!16764 lt!220244) #b00000000000000000000000000000000) (bvslt (index!16764 lt!220244) (size!15536 a!3235)))) (or ((_ is Undefined!3646) lt!220244) ((_ is Found!3646) lt!220244) (not ((_ is MissingZero!3646) lt!220244)) (and (bvsge (index!16763 lt!220244) #b00000000000000000000000000000000) (bvslt (index!16763 lt!220244) (size!15536 a!3235)))) (or ((_ is Undefined!3646) lt!220244) ((_ is Found!3646) lt!220244) ((_ is MissingZero!3646) lt!220244) (not ((_ is MissingVacant!3646) lt!220244)) (and (bvsge (index!16766 lt!220244) #b00000000000000000000000000000000) (bvslt (index!16766 lt!220244) (size!15536 a!3235)))) (or ((_ is Undefined!3646) lt!220244) (ite ((_ is Found!3646) lt!220244) (= (select (arr!15172 a!3235) (index!16764 lt!220244)) (select (arr!15172 a!3235) j!176)) (ite ((_ is MissingZero!3646) lt!220244) (= (select (arr!15172 a!3235) (index!16763 lt!220244)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3646) lt!220244) (= (select (arr!15172 a!3235) (index!16766 lt!220244)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!287058 () SeekEntryResult!3646)

(assert (=> d!77635 (= lt!220244 e!287058)))

(declare-fun c!58600 () Bool)

(assert (=> d!77635 (= c!58600 (and ((_ is Intermediate!3646) lt!220243) (undefined!4458 lt!220243)))))

(assert (=> d!77635 (= lt!220243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15172 a!3235) j!176) mask!3524) (select (arr!15172 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77635 (validMask!0 mask!3524)))

(assert (=> d!77635 (= (seekEntryOrOpen!0 (select (arr!15172 a!3235) j!176) a!3235 mask!3524) lt!220244)))

(declare-fun b!487896 () Bool)

(assert (=> b!487896 (= e!287058 Undefined!3646)))

(declare-fun b!487897 () Bool)

(assert (=> b!487897 (= e!287057 (MissingZero!3646 (index!16765 lt!220243)))))

(declare-fun b!487898 () Bool)

(declare-fun e!287059 () SeekEntryResult!3646)

(assert (=> b!487898 (= e!287058 e!287059)))

(declare-fun lt!220242 () (_ BitVec 64))

(assert (=> b!487898 (= lt!220242 (select (arr!15172 a!3235) (index!16765 lt!220243)))))

(declare-fun c!58598 () Bool)

(assert (=> b!487898 (= c!58598 (= lt!220242 (select (arr!15172 a!3235) j!176)))))

(declare-fun b!487899 () Bool)

(assert (=> b!487899 (= e!287059 (Found!3646 (index!16765 lt!220243)))))

(declare-fun b!487900 () Bool)

(declare-fun c!58599 () Bool)

(assert (=> b!487900 (= c!58599 (= lt!220242 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!487900 (= e!287059 e!287057)))

(assert (= (and d!77635 c!58600) b!487896))

(assert (= (and d!77635 (not c!58600)) b!487898))

(assert (= (and b!487898 c!58598) b!487899))

(assert (= (and b!487898 (not c!58598)) b!487900))

(assert (= (and b!487900 c!58599) b!487897))

(assert (= (and b!487900 (not c!58599)) b!487895))

(assert (=> b!487895 m!467537))

(declare-fun m!467689 () Bool)

(assert (=> b!487895 m!467689))

(assert (=> d!77635 m!467539))

(assert (=> d!77635 m!467537))

(declare-fun m!467693 () Bool)

(assert (=> d!77635 m!467693))

(declare-fun m!467695 () Bool)

(assert (=> d!77635 m!467695))

(assert (=> d!77635 m!467537))

(assert (=> d!77635 m!467539))

(declare-fun m!467697 () Bool)

(assert (=> d!77635 m!467697))

(declare-fun m!467699 () Bool)

(assert (=> d!77635 m!467699))

(assert (=> d!77635 m!467529))

(declare-fun m!467701 () Bool)

(assert (=> b!487898 m!467701))

(assert (=> b!487716 d!77635))

(declare-fun d!77639 () Bool)

(assert (=> d!77639 (= (validKeyInArray!0 (select (arr!15172 a!3235) j!176)) (and (not (= (select (arr!15172 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15172 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487711 d!77639))

(check-sat (not b!487757) (not d!77589) (not b!487773) (not b!487791) (not d!77635) (not d!77613) (not b!487885) (not b!487895) (not b!487771) (not bm!31301) (not b!487755) (not b!487888) (not b!487889) (not bm!31305) (not b!487847) (not bm!31317))
(check-sat)
