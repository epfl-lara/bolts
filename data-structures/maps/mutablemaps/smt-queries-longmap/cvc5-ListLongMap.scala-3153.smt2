; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44398 () Bool)

(assert start!44398)

(declare-fun res!291108 () Bool)

(declare-fun e!286924 () Bool)

(assert (=> start!44398 (=> (not res!291108) (not e!286924))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44398 (= res!291108 (validMask!0 mask!3524))))

(assert (=> start!44398 e!286924))

(assert (=> start!44398 true))

(declare-datatypes ((array!31564 0))(
  ( (array!31565 (arr!15171 (Array (_ BitVec 32) (_ BitVec 64))) (size!15535 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31564)

(declare-fun array_inv!10945 (array!31564) Bool)

(assert (=> start!44398 (array_inv!10945 a!3235)))

(declare-fun b!487683 () Bool)

(declare-fun res!291112 () Bool)

(assert (=> b!487683 (=> (not res!291112) (not e!286924))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487683 (= res!291112 (validKeyInArray!0 (select (arr!15171 a!3235) j!176)))))

(declare-fun b!487684 () Bool)

(declare-fun res!291113 () Bool)

(assert (=> b!487684 (=> (not res!291113) (not e!286924))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487684 (= res!291113 (and (= (size!15535 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15535 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15535 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487685 () Bool)

(declare-fun e!286923 () Bool)

(assert (=> b!487685 (= e!286924 e!286923)))

(declare-fun res!291106 () Bool)

(assert (=> b!487685 (=> (not res!291106) (not e!286923))))

(declare-datatypes ((SeekEntryResult!3645 0))(
  ( (MissingZero!3645 (index!16759 (_ BitVec 32))) (Found!3645 (index!16760 (_ BitVec 32))) (Intermediate!3645 (undefined!4457 Bool) (index!16761 (_ BitVec 32)) (x!45908 (_ BitVec 32))) (Undefined!3645) (MissingVacant!3645 (index!16762 (_ BitVec 32))) )
))
(declare-fun lt!220149 () SeekEntryResult!3645)

(assert (=> b!487685 (= res!291106 (or (= lt!220149 (MissingZero!3645 i!1204)) (= lt!220149 (MissingVacant!3645 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31564 (_ BitVec 32)) SeekEntryResult!3645)

(assert (=> b!487685 (= lt!220149 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487686 () Bool)

(declare-fun res!291110 () Bool)

(assert (=> b!487686 (=> (not res!291110) (not e!286924))))

(declare-fun arrayContainsKey!0 (array!31564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487686 (= res!291110 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487687 () Bool)

(declare-fun res!291111 () Bool)

(assert (=> b!487687 (=> (not res!291111) (not e!286923))))

(declare-datatypes ((List!9382 0))(
  ( (Nil!9379) (Cons!9378 (h!10234 (_ BitVec 64)) (t!15618 List!9382)) )
))
(declare-fun arrayNoDuplicates!0 (array!31564 (_ BitVec 32) List!9382) Bool)

(assert (=> b!487687 (= res!291111 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9379))))

(declare-fun b!487688 () Bool)

(declare-fun lt!220150 () (_ BitVec 32))

(assert (=> b!487688 (= e!286923 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!220150 #b00000000000000000000000000000000) (bvslt lt!220150 (bvadd #b00000000000000000000000000000001 mask!3524))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487688 (= lt!220150 (toIndex!0 (select (arr!15171 a!3235) j!176) mask!3524))))

(declare-fun e!286922 () Bool)

(assert (=> b!487688 e!286922))

(declare-fun res!291107 () Bool)

(assert (=> b!487688 (=> (not res!291107) (not e!286922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31564 (_ BitVec 32)) Bool)

(assert (=> b!487688 (= res!291107 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14228 0))(
  ( (Unit!14229) )
))
(declare-fun lt!220151 () Unit!14228)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14228)

(assert (=> b!487688 (= lt!220151 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487689 () Bool)

(declare-fun res!291105 () Bool)

(assert (=> b!487689 (=> (not res!291105) (not e!286923))))

(assert (=> b!487689 (= res!291105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487690 () Bool)

(declare-fun res!291109 () Bool)

(assert (=> b!487690 (=> (not res!291109) (not e!286924))))

(assert (=> b!487690 (= res!291109 (validKeyInArray!0 k!2280))))

(declare-fun b!487691 () Bool)

(assert (=> b!487691 (= e!286922 (= (seekEntryOrOpen!0 (select (arr!15171 a!3235) j!176) a!3235 mask!3524) (Found!3645 j!176)))))

(assert (= (and start!44398 res!291108) b!487684))

(assert (= (and b!487684 res!291113) b!487683))

(assert (= (and b!487683 res!291112) b!487690))

(assert (= (and b!487690 res!291109) b!487686))

(assert (= (and b!487686 res!291110) b!487685))

(assert (= (and b!487685 res!291106) b!487689))

(assert (= (and b!487689 res!291105) b!487687))

(assert (= (and b!487687 res!291111) b!487688))

(assert (= (and b!487688 res!291107) b!487691))

(declare-fun m!467503 () Bool)

(assert (=> b!487686 m!467503))

(declare-fun m!467505 () Bool)

(assert (=> b!487687 m!467505))

(declare-fun m!467507 () Bool)

(assert (=> start!44398 m!467507))

(declare-fun m!467509 () Bool)

(assert (=> start!44398 m!467509))

(declare-fun m!467511 () Bool)

(assert (=> b!487691 m!467511))

(assert (=> b!487691 m!467511))

(declare-fun m!467513 () Bool)

(assert (=> b!487691 m!467513))

(assert (=> b!487688 m!467511))

(assert (=> b!487688 m!467511))

(declare-fun m!467515 () Bool)

(assert (=> b!487688 m!467515))

(declare-fun m!467517 () Bool)

(assert (=> b!487688 m!467517))

(declare-fun m!467519 () Bool)

(assert (=> b!487688 m!467519))

(declare-fun m!467521 () Bool)

(assert (=> b!487685 m!467521))

(declare-fun m!467523 () Bool)

(assert (=> b!487690 m!467523))

(declare-fun m!467525 () Bool)

(assert (=> b!487689 m!467525))

(assert (=> b!487683 m!467511))

(assert (=> b!487683 m!467511))

(declare-fun m!467527 () Bool)

(assert (=> b!487683 m!467527))

(push 1)

(assert (not b!487688))

(assert (not b!487686))

(assert (not b!487689))

(assert (not b!487691))

(assert (not b!487687))

(assert (not b!487690))

(assert (not b!487683))

(assert (not start!44398))

(assert (not b!487685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!31304 () Bool)

(declare-fun call!31307 () Bool)

(assert (=> bm!31304 (= call!31307 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!77587 () Bool)

(declare-fun res!291180 () Bool)

(declare-fun e!286965 () Bool)

(assert (=> d!77587 (=> res!291180 e!286965)))

(assert (=> d!77587 (= res!291180 (bvsge #b00000000000000000000000000000000 (size!15535 a!3235)))))

(assert (=> d!77587 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286965)))

(declare-fun b!487766 () Bool)

(declare-fun e!286966 () Bool)

(assert (=> b!487766 (= e!286965 e!286966)))

(declare-fun c!58562 () Bool)

(assert (=> b!487766 (= c!58562 (validKeyInArray!0 (select (arr!15171 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!487767 () Bool)

(assert (=> b!487767 (= e!286966 call!31307)))

(declare-fun b!487768 () Bool)

(declare-fun e!286964 () Bool)

(assert (=> b!487768 (= e!286964 call!31307)))

(declare-fun b!487769 () Bool)

(assert (=> b!487769 (= e!286966 e!286964)))

(declare-fun lt!220195 () (_ BitVec 64))

(assert (=> b!487769 (= lt!220195 (select (arr!15171 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220193 () Unit!14228)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31564 (_ BitVec 64) (_ BitVec 32)) Unit!14228)

(assert (=> b!487769 (= lt!220193 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220195 #b00000000000000000000000000000000))))

(assert (=> b!487769 (arrayContainsKey!0 a!3235 lt!220195 #b00000000000000000000000000000000)))

(declare-fun lt!220194 () Unit!14228)

(assert (=> b!487769 (= lt!220194 lt!220193)))

(declare-fun res!291179 () Bool)

(assert (=> b!487769 (= res!291179 (= (seekEntryOrOpen!0 (select (arr!15171 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3645 #b00000000000000000000000000000000)))))

(assert (=> b!487769 (=> (not res!291179) (not e!286964))))

(assert (= (and d!77587 (not res!291180)) b!487766))

(assert (= (and b!487766 c!58562) b!487769))

(assert (= (and b!487766 (not c!58562)) b!487767))

(assert (= (and b!487769 res!291179) b!487768))

(assert (= (or b!487768 b!487767) bm!31304))

(declare-fun m!467589 () Bool)

(assert (=> bm!31304 m!467589))

(declare-fun m!467591 () Bool)

(assert (=> b!487766 m!467591))

(assert (=> b!487766 m!467591))

(declare-fun m!467593 () Bool)

(assert (=> b!487766 m!467593))

(assert (=> b!487769 m!467591))

(declare-fun m!467595 () Bool)

(assert (=> b!487769 m!467595))

(declare-fun m!467597 () Bool)

(assert (=> b!487769 m!467597))

(assert (=> b!487769 m!467591))

(declare-fun m!467599 () Bool)

(assert (=> b!487769 m!467599))

(assert (=> b!487689 d!77587))

(declare-fun d!77595 () Bool)

(assert (=> d!77595 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487690 d!77595))

(declare-fun d!77599 () Bool)

(assert (=> d!77599 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44398 d!77599))

(declare-fun d!77605 () Bool)

(assert (=> d!77605 (= (array_inv!10945 a!3235) (bvsge (size!15535 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44398 d!77605))

(declare-fun b!487841 () Bool)

(declare-fun e!287020 () SeekEntryResult!3645)

(declare-fun lt!220235 () SeekEntryResult!3645)

(assert (=> b!487841 (= e!287020 (Found!3645 (index!16761 lt!220235)))))

(declare-fun b!487842 () Bool)

(declare-fun c!58583 () Bool)

(declare-fun lt!220233 () (_ BitVec 64))

(assert (=> b!487842 (= c!58583 (= lt!220233 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287018 () SeekEntryResult!3645)

(assert (=> b!487842 (= e!287020 e!287018)))

(declare-fun b!487843 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31564 (_ BitVec 32)) SeekEntryResult!3645)

(assert (=> b!487843 (= e!287018 (seekKeyOrZeroReturnVacant!0 (x!45908 lt!220235) (index!16761 lt!220235) (index!16761 lt!220235) k!2280 a!3235 mask!3524))))

(declare-fun b!487844 () Bool)

(assert (=> b!487844 (= e!287018 (MissingZero!3645 (index!16761 lt!220235)))))

(declare-fun d!77609 () Bool)

(declare-fun lt!220234 () SeekEntryResult!3645)

(assert (=> d!77609 (and (or (is-Undefined!3645 lt!220234) (not (is-Found!3645 lt!220234)) (and (bvsge (index!16760 lt!220234) #b00000000000000000000000000000000) (bvslt (index!16760 lt!220234) (size!15535 a!3235)))) (or (is-Undefined!3645 lt!220234) (is-Found!3645 lt!220234) (not (is-MissingZero!3645 lt!220234)) (and (bvsge (index!16759 lt!220234) #b00000000000000000000000000000000) (bvslt (index!16759 lt!220234) (size!15535 a!3235)))) (or (is-Undefined!3645 lt!220234) (is-Found!3645 lt!220234) (is-MissingZero!3645 lt!220234) (not (is-MissingVacant!3645 lt!220234)) (and (bvsge (index!16762 lt!220234) #b00000000000000000000000000000000) (bvslt (index!16762 lt!220234) (size!15535 a!3235)))) (or (is-Undefined!3645 lt!220234) (ite (is-Found!3645 lt!220234) (= (select (arr!15171 a!3235) (index!16760 lt!220234)) k!2280) (ite (is-MissingZero!3645 lt!220234) (= (select (arr!15171 a!3235) (index!16759 lt!220234)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3645 lt!220234) (= (select (arr!15171 a!3235) (index!16762 lt!220234)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!287019 () SeekEntryResult!3645)

(assert (=> d!77609 (= lt!220234 e!287019)))

(declare-fun c!58585 () Bool)

(assert (=> d!77609 (= c!58585 (and (is-Intermediate!3645 lt!220235) (undefined!4457 lt!220235)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31564 (_ BitVec 32)) SeekEntryResult!3645)

(assert (=> d!77609 (= lt!220235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77609 (validMask!0 mask!3524)))

(assert (=> d!77609 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!220234)))

(declare-fun b!487845 () Bool)

(assert (=> b!487845 (= e!287019 Undefined!3645)))

(declare-fun b!487846 () Bool)

(assert (=> b!487846 (= e!287019 e!287020)))

(assert (=> b!487846 (= lt!220233 (select (arr!15171 a!3235) (index!16761 lt!220235)))))

(declare-fun c!58584 () Bool)

(assert (=> b!487846 (= c!58584 (= lt!220233 k!2280))))

(assert (= (and d!77609 c!58585) b!487845))

(assert (= (and d!77609 (not c!58585)) b!487846))

(assert (= (and b!487846 c!58584) b!487841))

(assert (= (and b!487846 (not c!58584)) b!487842))

(assert (= (and b!487842 c!58583) b!487844))

(assert (= (and b!487842 (not c!58583)) b!487843))

(declare-fun m!467641 () Bool)

(assert (=> b!487843 m!467641))

(declare-fun m!467643 () Bool)

(assert (=> d!77609 m!467643))

(declare-fun m!467645 () Bool)

(assert (=> d!77609 m!467645))

(declare-fun m!467647 () Bool)

(assert (=> d!77609 m!467647))

(declare-fun m!467649 () Bool)

(assert (=> d!77609 m!467649))

(assert (=> d!77609 m!467647))

(declare-fun m!467651 () Bool)

(assert (=> d!77609 m!467651))

(assert (=> d!77609 m!467507))

(declare-fun m!467653 () Bool)

(assert (=> b!487846 m!467653))

(assert (=> b!487685 d!77609))

(declare-fun d!77625 () Bool)

(declare-fun res!291217 () Bool)

(declare-fun e!287028 () Bool)

(assert (=> d!77625 (=> res!291217 e!287028)))

(assert (=> d!77625 (= res!291217 (= (select (arr!15171 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77625 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!287028)))

(declare-fun b!487857 () Bool)

(declare-fun e!287029 () Bool)

(assert (=> b!487857 (= e!287028 e!287029)))

(declare-fun res!291218 () Bool)

(assert (=> b!487857 (=> (not res!291218) (not e!287029))))

(assert (=> b!487857 (= res!291218 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15535 a!3235)))))

(declare-fun b!487858 () Bool)

(assert (=> b!487858 (= e!287029 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77625 (not res!291217)) b!487857))

(assert (= (and b!487857 res!291218) b!487858))

(assert (=> d!77625 m!467591))

(declare-fun m!467669 () Bool)

(assert (=> b!487858 m!467669))

(assert (=> b!487686 d!77625))

(declare-fun b!487859 () Bool)

(declare-fun e!287032 () SeekEntryResult!3645)

(declare-fun lt!220241 () SeekEntryResult!3645)

(assert (=> b!487859 (= e!287032 (Found!3645 (index!16761 lt!220241)))))

(declare-fun b!487860 () Bool)

(declare-fun c!58589 () Bool)

(declare-fun lt!220239 () (_ BitVec 64))

(assert (=> b!487860 (= c!58589 (= lt!220239 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287030 () SeekEntryResult!3645)

(assert (=> b!487860 (= e!287032 e!287030)))

(declare-fun b!487861 () Bool)

(assert (=> b!487861 (= e!287030 (seekKeyOrZeroReturnVacant!0 (x!45908 lt!220241) (index!16761 lt!220241) (index!16761 lt!220241) (select (arr!15171 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!487862 () Bool)

(assert (=> b!487862 (= e!287030 (MissingZero!3645 (index!16761 lt!220241)))))

(declare-fun d!77629 () Bool)

(declare-fun lt!220240 () SeekEntryResult!3645)

(assert (=> d!77629 (and (or (is-Undefined!3645 lt!220240) (not (is-Found!3645 lt!220240)) (and (bvsge (index!16760 lt!220240) #b00000000000000000000000000000000) (bvslt (index!16760 lt!220240) (size!15535 a!3235)))) (or (is-Undefined!3645 lt!220240) (is-Found!3645 lt!220240) (not (is-MissingZero!3645 lt!220240)) (and (bvsge (index!16759 lt!220240) #b00000000000000000000000000000000) (bvslt (index!16759 lt!220240) (size!15535 a!3235)))) (or (is-Undefined!3645 lt!220240) (is-Found!3645 lt!220240) (is-MissingZero!3645 lt!220240) (not (is-MissingVacant!3645 lt!220240)) (and (bvsge (index!16762 lt!220240) #b00000000000000000000000000000000) (bvslt (index!16762 lt!220240) (size!15535 a!3235)))) (or (is-Undefined!3645 lt!220240) (ite (is-Found!3645 lt!220240) (= (select (arr!15171 a!3235) (index!16760 lt!220240)) (select (arr!15171 a!3235) j!176)) (ite (is-MissingZero!3645 lt!220240) (= (select (arr!15171 a!3235) (index!16759 lt!220240)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3645 lt!220240) (= (select (arr!15171 a!3235) (index!16762 lt!220240)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!287031 () SeekEntryResult!3645)

(assert (=> d!77629 (= lt!220240 e!287031)))

(declare-fun c!58591 () Bool)

(assert (=> d!77629 (= c!58591 (and (is-Intermediate!3645 lt!220241) (undefined!4457 lt!220241)))))

(assert (=> d!77629 (= lt!220241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15171 a!3235) j!176) mask!3524) (select (arr!15171 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77629 (validMask!0 mask!3524)))

(assert (=> d!77629 (= (seekEntryOrOpen!0 (select (arr!15171 a!3235) j!176) a!3235 mask!3524) lt!220240)))

(declare-fun b!487863 () Bool)

(assert (=> b!487863 (= e!287031 Undefined!3645)))

(declare-fun b!487864 () Bool)

(assert (=> b!487864 (= e!287031 e!287032)))

(assert (=> b!487864 (= lt!220239 (select (arr!15171 a!3235) (index!16761 lt!220241)))))

(declare-fun c!58590 () Bool)

(assert (=> b!487864 (= c!58590 (= lt!220239 (select (arr!15171 a!3235) j!176)))))

(assert (= (and d!77629 c!58591) b!487863))

(assert (= (and d!77629 (not c!58591)) b!487864))

(assert (= (and b!487864 c!58590) b!487859))

(assert (= (and b!487864 (not c!58590)) b!487860))

(assert (= (and b!487860 c!58589) b!487862))

(assert (= (and b!487860 (not c!58589)) b!487861))

(assert (=> b!487861 m!467511))

(declare-fun m!467671 () Bool)

(assert (=> b!487861 m!467671))

(declare-fun m!467673 () Bool)

(assert (=> d!77629 m!467673))

(declare-fun m!467675 () Bool)

(assert (=> d!77629 m!467675))

(assert (=> d!77629 m!467515))

(assert (=> d!77629 m!467511))

(declare-fun m!467677 () Bool)

(assert (=> d!77629 m!467677))

(assert (=> d!77629 m!467511))

(assert (=> d!77629 m!467515))

(declare-fun m!467679 () Bool)

(assert (=> d!77629 m!467679))

(assert (=> d!77629 m!467507))

(declare-fun m!467681 () Bool)

(assert (=> b!487864 m!467681))

(assert (=> b!487691 d!77629))

(declare-fun b!487890 () Bool)

(declare-fun e!287055 () Bool)

(declare-fun contains!2704 (List!9382 (_ BitVec 64)) Bool)

(assert (=> b!487890 (= e!287055 (contains!2704 Nil!9379 (select (arr!15171 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!487891 () Bool)

(declare-fun e!287054 () Bool)

(declare-fun call!31321 () Bool)

(assert (=> b!487891 (= e!287054 call!31321)))

(declare-fun d!77633 () Bool)

(declare-fun res!291236 () Bool)

(declare-fun e!287056 () Bool)

(assert (=> d!77633 (=> res!291236 e!287056)))

(assert (=> d!77633 (= res!291236 (bvsge #b00000000000000000000000000000000 (size!15535 a!3235)))))

(assert (=> d!77633 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9379) e!287056)))

(declare-fun b!487892 () Bool)

(assert (=> b!487892 (= e!287054 call!31321)))

(declare-fun b!487893 () Bool)

(declare-fun e!287053 () Bool)

(assert (=> b!487893 (= e!287056 e!287053)))

(declare-fun res!291235 () Bool)

(assert (=> b!487893 (=> (not res!291235) (not e!287053))))

(assert (=> b!487893 (= res!291235 (not e!287055))))

(declare-fun res!291234 () Bool)

(assert (=> b!487893 (=> (not res!291234) (not e!287055))))

(assert (=> b!487893 (= res!291234 (validKeyInArray!0 (select (arr!15171 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31318 () Bool)

(declare-fun c!58597 () Bool)

(assert (=> bm!31318 (= call!31321 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58597 (Cons!9378 (select (arr!15171 a!3235) #b00000000000000000000000000000000) Nil!9379) Nil!9379)))))

(declare-fun b!487894 () Bool)

(assert (=> b!487894 (= e!287053 e!287054)))

(assert (=> b!487894 (= c!58597 (validKeyInArray!0 (select (arr!15171 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77633 (not res!291236)) b!487893))

(assert (= (and b!487893 res!291234) b!487890))

(assert (= (and b!487893 res!291235) b!487894))

(assert (= (and b!487894 c!58597) b!487892))

(assert (= (and b!487894 (not c!58597)) b!487891))

(assert (= (or b!487892 b!487891) bm!31318))

(assert (=> b!487890 m!467591))

(assert (=> b!487890 m!467591))

(declare-fun m!467687 () Bool)

(assert (=> b!487890 m!467687))

(assert (=> b!487893 m!467591))

(assert (=> b!487893 m!467591))

(assert (=> b!487893 m!467593))

(assert (=> bm!31318 m!467591))

(declare-fun m!467691 () Bool)

(assert (=> bm!31318 m!467691))

(assert (=> b!487894 m!467591))

(assert (=> b!487894 m!467591))

(assert (=> b!487894 m!467593))

(assert (=> b!487687 d!77633))

(declare-fun d!77637 () Bool)

(declare-fun lt!220256 () (_ BitVec 32))

(declare-fun lt!220255 () (_ BitVec 32))

(assert (=> d!77637 (= lt!220256 (bvmul (bvxor lt!220255 (bvlshr lt!220255 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77637 (= lt!220255 ((_ extract 31 0) (bvand (bvxor (select (arr!15171 a!3235) j!176) (bvlshr (select (arr!15171 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77637 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!291237 (let ((h!10239 ((_ extract 31 0) (bvand (bvxor (select (arr!15171 a!3235) j!176) (bvlshr (select (arr!15171 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!45913 (bvmul (bvxor h!10239 (bvlshr h!10239 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!45913 (bvlshr x!45913 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!291237 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!291237 #b00000000000000000000000000000000))))))

(assert (=> d!77637 (= (toIndex!0 (select (arr!15171 a!3235) j!176) mask!3524) (bvand (bvxor lt!220256 (bvlshr lt!220256 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!487688 d!77637))

(declare-fun call!31322 () Bool)

(declare-fun bm!31319 () Bool)

(assert (=> bm!31319 (= call!31322 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!77641 () Bool)

(declare-fun res!291239 () Bool)

(declare-fun e!287067 () Bool)

(assert (=> d!77641 (=> res!291239 e!287067)))

(assert (=> d!77641 (= res!291239 (bvsge j!176 (size!15535 a!3235)))))

(assert (=> d!77641 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!287067)))

(declare-fun b!487913 () Bool)

(declare-fun e!287068 () Bool)

(assert (=> b!487913 (= e!287067 e!287068)))

(declare-fun c!58607 () Bool)

(assert (=> b!487913 (= c!58607 (validKeyInArray!0 (select (arr!15171 a!3235) j!176)))))

(declare-fun b!487914 () Bool)

(assert (=> b!487914 (= e!287068 call!31322)))

(declare-fun b!487915 () Bool)

(declare-fun e!287066 () Bool)

(assert (=> b!487915 (= e!287066 call!31322)))

(declare-fun b!487916 () Bool)

(assert (=> b!487916 (= e!287068 e!287066)))

(declare-fun lt!220259 () (_ BitVec 64))

(assert (=> b!487916 (= lt!220259 (select (arr!15171 a!3235) j!176))))

(declare-fun lt!220257 () Unit!14228)

(assert (=> b!487916 (= lt!220257 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220259 j!176))))

(assert (=> b!487916 (arrayContainsKey!0 a!3235 lt!220259 #b00000000000000000000000000000000)))

(declare-fun lt!220258 () Unit!14228)

(assert (=> b!487916 (= lt!220258 lt!220257)))

(declare-fun res!291238 () Bool)

(assert (=> b!487916 (= res!291238 (= (seekEntryOrOpen!0 (select (arr!15171 a!3235) j!176) a!3235 mask!3524) (Found!3645 j!176)))))

(assert (=> b!487916 (=> (not res!291238) (not e!287066))))

(assert (= (and d!77641 (not res!291239)) b!487913))

(assert (= (and b!487913 c!58607) b!487916))

(assert (= (and b!487913 (not c!58607)) b!487914))

(assert (= (and b!487916 res!291238) b!487915))

(assert (= (or b!487915 b!487914) bm!31319))

(declare-fun m!467703 () Bool)

(assert (=> bm!31319 m!467703))

(assert (=> b!487913 m!467511))

(assert (=> b!487913 m!467511))

(assert (=> b!487913 m!467527))

(assert (=> b!487916 m!467511))

(declare-fun m!467705 () Bool)

(assert (=> b!487916 m!467705))

(declare-fun m!467707 () Bool)

(assert (=> b!487916 m!467707))

(assert (=> b!487916 m!467511))

(assert (=> b!487916 m!467513))

(assert (=> b!487688 d!77641))

(declare-fun d!77643 () Bool)

(assert (=> d!77643 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220265 () Unit!14228)

(declare-fun choose!38 (array!31564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14228)

(assert (=> d!77643 (= lt!220265 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77643 (validMask!0 mask!3524)))

(assert (=> d!77643 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220265)))

(declare-fun bs!15551 () Bool)

(assert (= bs!15551 d!77643))

(assert (=> bs!15551 m!467517))

(declare-fun m!467723 () Bool)

(assert (=> bs!15551 m!467723))

(assert (=> bs!15551 m!467507))

(assert (=> b!487688 d!77643))

(declare-fun d!77649 () Bool)

(assert (=> d!77649 (= (validKeyInArray!0 (select (arr!15171 a!3235) j!176)) (and (not (= (select (arr!15171 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15171 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487683 d!77649))

(push 1)

(assert (not b!487916))

(assert (not b!487893))

(assert (not bm!31319))

(assert (not b!487766))

(assert (not bm!31318))

(assert (not d!77643))

(assert (not b!487894))

(assert (not b!487861))

(assert (not bm!31304))

(assert (not b!487769))

(assert (not b!487843))

(assert (not d!77609))

(assert (not b!487858))

(assert (not b!487890))

(assert (not d!77629))

(assert (not b!487913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

