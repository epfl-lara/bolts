; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45102 () Bool)

(assert start!45102)

(declare-fun b!494845 () Bool)

(declare-fun e!290325 () Bool)

(declare-fun e!290328 () Bool)

(assert (=> b!494845 (= e!290325 (not e!290328))))

(declare-fun res!297573 () Bool)

(assert (=> b!494845 (=> res!297573 e!290328)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3859 0))(
  ( (MissingZero!3859 (index!17615 (_ BitVec 32))) (Found!3859 (index!17616 (_ BitVec 32))) (Intermediate!3859 (undefined!4671 Bool) (index!17617 (_ BitVec 32)) (x!46708 (_ BitVec 32))) (Undefined!3859) (MissingVacant!3859 (index!17618 (_ BitVec 32))) )
))
(declare-fun lt!224073 () SeekEntryResult!3859)

(declare-fun lt!224075 () (_ BitVec 32))

(declare-datatypes ((array!32007 0))(
  ( (array!32008 (arr!15385 (Array (_ BitVec 32) (_ BitVec 64))) (size!15749 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32007)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32007 (_ BitVec 32)) SeekEntryResult!3859)

(assert (=> b!494845 (= res!297573 (= lt!224073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224075 (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235)) mask!3524)))))

(declare-fun lt!224074 () (_ BitVec 32))

(assert (=> b!494845 (= lt!224073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224074 (select (arr!15385 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494845 (= lt!224075 (toIndex!0 (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494845 (= lt!224074 (toIndex!0 (select (arr!15385 a!3235) j!176) mask!3524))))

(declare-fun e!290327 () Bool)

(assert (=> b!494845 e!290327))

(declare-fun res!297575 () Bool)

(assert (=> b!494845 (=> (not res!297575) (not e!290327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32007 (_ BitVec 32)) Bool)

(assert (=> b!494845 (= res!297575 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14656 0))(
  ( (Unit!14657) )
))
(declare-fun lt!224072 () Unit!14656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14656)

(assert (=> b!494845 (= lt!224072 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494846 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32007 (_ BitVec 32)) SeekEntryResult!3859)

(assert (=> b!494846 (= e!290327 (= (seekEntryOrOpen!0 (select (arr!15385 a!3235) j!176) a!3235 mask!3524) (Found!3859 j!176)))))

(declare-fun b!494847 () Bool)

(declare-fun res!297572 () Bool)

(declare-fun e!290326 () Bool)

(assert (=> b!494847 (=> (not res!297572) (not e!290326))))

(assert (=> b!494847 (= res!297572 (and (= (size!15749 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15749 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15749 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!297571 () Bool)

(assert (=> start!45102 (=> (not res!297571) (not e!290326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45102 (= res!297571 (validMask!0 mask!3524))))

(assert (=> start!45102 e!290326))

(assert (=> start!45102 true))

(declare-fun array_inv!11159 (array!32007) Bool)

(assert (=> start!45102 (array_inv!11159 a!3235)))

(declare-fun b!494848 () Bool)

(assert (=> b!494848 (= e!290328 (or (not (= (select (arr!15385 a!3235) (index!17617 lt!224073)) (select (arr!15385 a!3235) j!176))) (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> b!494848 (and (bvslt (x!46708 lt!224073) #b01111111111111111111111111111110) (or (= (select (arr!15385 a!3235) (index!17617 lt!224073)) (select (arr!15385 a!3235) j!176)) (= (select (arr!15385 a!3235) (index!17617 lt!224073)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15385 a!3235) (index!17617 lt!224073)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!494849 () Bool)

(declare-fun res!297574 () Bool)

(assert (=> b!494849 (=> (not res!297574) (not e!290325))))

(declare-datatypes ((List!9596 0))(
  ( (Nil!9593) (Cons!9592 (h!10460 (_ BitVec 64)) (t!15832 List!9596)) )
))
(declare-fun arrayNoDuplicates!0 (array!32007 (_ BitVec 32) List!9596) Bool)

(assert (=> b!494849 (= res!297574 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9593))))

(declare-fun b!494850 () Bool)

(declare-fun res!297570 () Bool)

(assert (=> b!494850 (=> (not res!297570) (not e!290325))))

(assert (=> b!494850 (= res!297570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494851 () Bool)

(declare-fun res!297569 () Bool)

(assert (=> b!494851 (=> (not res!297569) (not e!290326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494851 (= res!297569 (validKeyInArray!0 (select (arr!15385 a!3235) j!176)))))

(declare-fun b!494852 () Bool)

(declare-fun res!297567 () Bool)

(assert (=> b!494852 (=> (not res!297567) (not e!290326))))

(assert (=> b!494852 (= res!297567 (validKeyInArray!0 k0!2280))))

(declare-fun b!494853 () Bool)

(assert (=> b!494853 (= e!290326 e!290325)))

(declare-fun res!297566 () Bool)

(assert (=> b!494853 (=> (not res!297566) (not e!290325))))

(declare-fun lt!224071 () SeekEntryResult!3859)

(assert (=> b!494853 (= res!297566 (or (= lt!224071 (MissingZero!3859 i!1204)) (= lt!224071 (MissingVacant!3859 i!1204))))))

(assert (=> b!494853 (= lt!224071 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!494854 () Bool)

(declare-fun res!297568 () Bool)

(assert (=> b!494854 (=> (not res!297568) (not e!290326))))

(declare-fun arrayContainsKey!0 (array!32007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494854 (= res!297568 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494855 () Bool)

(declare-fun res!297565 () Bool)

(assert (=> b!494855 (=> res!297565 e!290328)))

(get-info :version)

(assert (=> b!494855 (= res!297565 (or (undefined!4671 lt!224073) (not ((_ is Intermediate!3859) lt!224073))))))

(assert (= (and start!45102 res!297571) b!494847))

(assert (= (and b!494847 res!297572) b!494851))

(assert (= (and b!494851 res!297569) b!494852))

(assert (= (and b!494852 res!297567) b!494854))

(assert (= (and b!494854 res!297568) b!494853))

(assert (= (and b!494853 res!297566) b!494850))

(assert (= (and b!494850 res!297570) b!494849))

(assert (= (and b!494849 res!297574) b!494845))

(assert (= (and b!494845 res!297575) b!494846))

(assert (= (and b!494845 (not res!297573)) b!494855))

(assert (= (and b!494855 (not res!297565)) b!494848))

(declare-fun m!476037 () Bool)

(assert (=> start!45102 m!476037))

(declare-fun m!476039 () Bool)

(assert (=> start!45102 m!476039))

(declare-fun m!476041 () Bool)

(assert (=> b!494851 m!476041))

(assert (=> b!494851 m!476041))

(declare-fun m!476043 () Bool)

(assert (=> b!494851 m!476043))

(declare-fun m!476045 () Bool)

(assert (=> b!494850 m!476045))

(assert (=> b!494846 m!476041))

(assert (=> b!494846 m!476041))

(declare-fun m!476047 () Bool)

(assert (=> b!494846 m!476047))

(declare-fun m!476049 () Bool)

(assert (=> b!494853 m!476049))

(declare-fun m!476051 () Bool)

(assert (=> b!494845 m!476051))

(declare-fun m!476053 () Bool)

(assert (=> b!494845 m!476053))

(declare-fun m!476055 () Bool)

(assert (=> b!494845 m!476055))

(assert (=> b!494845 m!476041))

(declare-fun m!476057 () Bool)

(assert (=> b!494845 m!476057))

(assert (=> b!494845 m!476041))

(declare-fun m!476059 () Bool)

(assert (=> b!494845 m!476059))

(assert (=> b!494845 m!476041))

(declare-fun m!476061 () Bool)

(assert (=> b!494845 m!476061))

(assert (=> b!494845 m!476055))

(declare-fun m!476063 () Bool)

(assert (=> b!494845 m!476063))

(assert (=> b!494845 m!476055))

(declare-fun m!476065 () Bool)

(assert (=> b!494845 m!476065))

(declare-fun m!476067 () Bool)

(assert (=> b!494848 m!476067))

(assert (=> b!494848 m!476041))

(declare-fun m!476069 () Bool)

(assert (=> b!494849 m!476069))

(declare-fun m!476071 () Bool)

(assert (=> b!494852 m!476071))

(declare-fun m!476073 () Bool)

(assert (=> b!494854 m!476073))

(check-sat (not b!494853) (not start!45102) (not b!494850) (not b!494849) (not b!494851) (not b!494854) (not b!494846) (not b!494852) (not b!494845))
(check-sat)
(get-model)

(declare-fun b!494899 () Bool)

(declare-fun e!290355 () Bool)

(declare-fun call!31409 () Bool)

(assert (=> b!494899 (= e!290355 call!31409)))

(declare-fun d!78115 () Bool)

(declare-fun res!297616 () Bool)

(declare-fun e!290353 () Bool)

(assert (=> d!78115 (=> res!297616 e!290353)))

(assert (=> d!78115 (= res!297616 (bvsge #b00000000000000000000000000000000 (size!15749 a!3235)))))

(assert (=> d!78115 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9593) e!290353)))

(declare-fun b!494900 () Bool)

(declare-fun e!290354 () Bool)

(declare-fun contains!2719 (List!9596 (_ BitVec 64)) Bool)

(assert (=> b!494900 (= e!290354 (contains!2719 Nil!9593 (select (arr!15385 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!494901 () Bool)

(declare-fun e!290356 () Bool)

(assert (=> b!494901 (= e!290356 e!290355)))

(declare-fun c!58916 () Bool)

(assert (=> b!494901 (= c!58916 (validKeyInArray!0 (select (arr!15385 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!494902 () Bool)

(assert (=> b!494902 (= e!290355 call!31409)))

(declare-fun bm!31406 () Bool)

(assert (=> bm!31406 (= call!31409 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58916 (Cons!9592 (select (arr!15385 a!3235) #b00000000000000000000000000000000) Nil!9593) Nil!9593)))))

(declare-fun b!494903 () Bool)

(assert (=> b!494903 (= e!290353 e!290356)))

(declare-fun res!297615 () Bool)

(assert (=> b!494903 (=> (not res!297615) (not e!290356))))

(assert (=> b!494903 (= res!297615 (not e!290354))))

(declare-fun res!297617 () Bool)

(assert (=> b!494903 (=> (not res!297617) (not e!290354))))

(assert (=> b!494903 (= res!297617 (validKeyInArray!0 (select (arr!15385 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78115 (not res!297616)) b!494903))

(assert (= (and b!494903 res!297617) b!494900))

(assert (= (and b!494903 res!297615) b!494901))

(assert (= (and b!494901 c!58916) b!494899))

(assert (= (and b!494901 (not c!58916)) b!494902))

(assert (= (or b!494899 b!494902) bm!31406))

(declare-fun m!476113 () Bool)

(assert (=> b!494900 m!476113))

(assert (=> b!494900 m!476113))

(declare-fun m!476115 () Bool)

(assert (=> b!494900 m!476115))

(assert (=> b!494901 m!476113))

(assert (=> b!494901 m!476113))

(declare-fun m!476117 () Bool)

(assert (=> b!494901 m!476117))

(assert (=> bm!31406 m!476113))

(declare-fun m!476119 () Bool)

(assert (=> bm!31406 m!476119))

(assert (=> b!494903 m!476113))

(assert (=> b!494903 m!476113))

(assert (=> b!494903 m!476117))

(assert (=> b!494849 d!78115))

(declare-fun b!494912 () Bool)

(declare-fun e!290365 () Bool)

(declare-fun call!31412 () Bool)

(assert (=> b!494912 (= e!290365 call!31412)))

(declare-fun d!78117 () Bool)

(declare-fun res!297622 () Bool)

(declare-fun e!290363 () Bool)

(assert (=> d!78117 (=> res!297622 e!290363)))

(assert (=> d!78117 (= res!297622 (bvsge #b00000000000000000000000000000000 (size!15749 a!3235)))))

(assert (=> d!78117 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!290363)))

(declare-fun b!494913 () Bool)

(declare-fun e!290364 () Bool)

(assert (=> b!494913 (= e!290364 e!290365)))

(declare-fun lt!224099 () (_ BitVec 64))

(assert (=> b!494913 (= lt!224099 (select (arr!15385 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!224098 () Unit!14656)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32007 (_ BitVec 64) (_ BitVec 32)) Unit!14656)

(assert (=> b!494913 (= lt!224098 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!224099 #b00000000000000000000000000000000))))

(assert (=> b!494913 (arrayContainsKey!0 a!3235 lt!224099 #b00000000000000000000000000000000)))

(declare-fun lt!224097 () Unit!14656)

(assert (=> b!494913 (= lt!224097 lt!224098)))

(declare-fun res!297623 () Bool)

(assert (=> b!494913 (= res!297623 (= (seekEntryOrOpen!0 (select (arr!15385 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3859 #b00000000000000000000000000000000)))))

(assert (=> b!494913 (=> (not res!297623) (not e!290365))))

(declare-fun b!494914 () Bool)

(assert (=> b!494914 (= e!290364 call!31412)))

(declare-fun bm!31409 () Bool)

(assert (=> bm!31409 (= call!31412 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!494915 () Bool)

(assert (=> b!494915 (= e!290363 e!290364)))

(declare-fun c!58919 () Bool)

(assert (=> b!494915 (= c!58919 (validKeyInArray!0 (select (arr!15385 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78117 (not res!297622)) b!494915))

(assert (= (and b!494915 c!58919) b!494913))

(assert (= (and b!494915 (not c!58919)) b!494914))

(assert (= (and b!494913 res!297623) b!494912))

(assert (= (or b!494912 b!494914) bm!31409))

(assert (=> b!494913 m!476113))

(declare-fun m!476121 () Bool)

(assert (=> b!494913 m!476121))

(declare-fun m!476123 () Bool)

(assert (=> b!494913 m!476123))

(assert (=> b!494913 m!476113))

(declare-fun m!476125 () Bool)

(assert (=> b!494913 m!476125))

(declare-fun m!476127 () Bool)

(assert (=> bm!31409 m!476127))

(assert (=> b!494915 m!476113))

(assert (=> b!494915 m!476113))

(assert (=> b!494915 m!476117))

(assert (=> b!494850 d!78117))

(declare-fun d!78119 () Bool)

(assert (=> d!78119 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45102 d!78119))

(declare-fun d!78121 () Bool)

(assert (=> d!78121 (= (array_inv!11159 a!3235) (bvsge (size!15749 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45102 d!78121))

(declare-fun d!78123 () Bool)

(declare-fun lt!224107 () SeekEntryResult!3859)

(assert (=> d!78123 (and (or ((_ is Undefined!3859) lt!224107) (not ((_ is Found!3859) lt!224107)) (and (bvsge (index!17616 lt!224107) #b00000000000000000000000000000000) (bvslt (index!17616 lt!224107) (size!15749 a!3235)))) (or ((_ is Undefined!3859) lt!224107) ((_ is Found!3859) lt!224107) (not ((_ is MissingZero!3859) lt!224107)) (and (bvsge (index!17615 lt!224107) #b00000000000000000000000000000000) (bvslt (index!17615 lt!224107) (size!15749 a!3235)))) (or ((_ is Undefined!3859) lt!224107) ((_ is Found!3859) lt!224107) ((_ is MissingZero!3859) lt!224107) (not ((_ is MissingVacant!3859) lt!224107)) (and (bvsge (index!17618 lt!224107) #b00000000000000000000000000000000) (bvslt (index!17618 lt!224107) (size!15749 a!3235)))) (or ((_ is Undefined!3859) lt!224107) (ite ((_ is Found!3859) lt!224107) (= (select (arr!15385 a!3235) (index!17616 lt!224107)) k0!2280) (ite ((_ is MissingZero!3859) lt!224107) (= (select (arr!15385 a!3235) (index!17615 lt!224107)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3859) lt!224107) (= (select (arr!15385 a!3235) (index!17618 lt!224107)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!290398 () SeekEntryResult!3859)

(assert (=> d!78123 (= lt!224107 e!290398)))

(declare-fun c!58930 () Bool)

(declare-fun lt!224106 () SeekEntryResult!3859)

(assert (=> d!78123 (= c!58930 (and ((_ is Intermediate!3859) lt!224106) (undefined!4671 lt!224106)))))

(assert (=> d!78123 (= lt!224106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!78123 (validMask!0 mask!3524)))

(assert (=> d!78123 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!224107)))

(declare-fun b!494955 () Bool)

(declare-fun c!58931 () Bool)

(declare-fun lt!224108 () (_ BitVec 64))

(assert (=> b!494955 (= c!58931 (= lt!224108 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!290396 () SeekEntryResult!3859)

(declare-fun e!290397 () SeekEntryResult!3859)

(assert (=> b!494955 (= e!290396 e!290397)))

(declare-fun b!494956 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32007 (_ BitVec 32)) SeekEntryResult!3859)

(assert (=> b!494956 (= e!290397 (seekKeyOrZeroReturnVacant!0 (x!46708 lt!224106) (index!17617 lt!224106) (index!17617 lt!224106) k0!2280 a!3235 mask!3524))))

(declare-fun b!494957 () Bool)

(assert (=> b!494957 (= e!290397 (MissingZero!3859 (index!17617 lt!224106)))))

(declare-fun b!494958 () Bool)

(assert (=> b!494958 (= e!290398 Undefined!3859)))

(declare-fun b!494959 () Bool)

(assert (=> b!494959 (= e!290396 (Found!3859 (index!17617 lt!224106)))))

(declare-fun b!494960 () Bool)

(assert (=> b!494960 (= e!290398 e!290396)))

(assert (=> b!494960 (= lt!224108 (select (arr!15385 a!3235) (index!17617 lt!224106)))))

(declare-fun c!58929 () Bool)

(assert (=> b!494960 (= c!58929 (= lt!224108 k0!2280))))

(assert (= (and d!78123 c!58930) b!494958))

(assert (= (and d!78123 (not c!58930)) b!494960))

(assert (= (and b!494960 c!58929) b!494959))

(assert (= (and b!494960 (not c!58929)) b!494955))

(assert (= (and b!494955 c!58931) b!494957))

(assert (= (and b!494955 (not c!58931)) b!494956))

(declare-fun m!476143 () Bool)

(assert (=> d!78123 m!476143))

(declare-fun m!476145 () Bool)

(assert (=> d!78123 m!476145))

(assert (=> d!78123 m!476143))

(assert (=> d!78123 m!476037))

(declare-fun m!476147 () Bool)

(assert (=> d!78123 m!476147))

(declare-fun m!476149 () Bool)

(assert (=> d!78123 m!476149))

(declare-fun m!476151 () Bool)

(assert (=> d!78123 m!476151))

(declare-fun m!476153 () Bool)

(assert (=> b!494956 m!476153))

(declare-fun m!476155 () Bool)

(assert (=> b!494960 m!476155))

(assert (=> b!494853 d!78123))

(declare-fun d!78141 () Bool)

(declare-fun res!297649 () Bool)

(declare-fun e!290403 () Bool)

(assert (=> d!78141 (=> res!297649 e!290403)))

(assert (=> d!78141 (= res!297649 (= (select (arr!15385 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!78141 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!290403)))

(declare-fun b!494965 () Bool)

(declare-fun e!290404 () Bool)

(assert (=> b!494965 (= e!290403 e!290404)))

(declare-fun res!297650 () Bool)

(assert (=> b!494965 (=> (not res!297650) (not e!290404))))

(assert (=> b!494965 (= res!297650 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15749 a!3235)))))

(declare-fun b!494966 () Bool)

(assert (=> b!494966 (= e!290404 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78141 (not res!297649)) b!494965))

(assert (= (and b!494965 res!297650) b!494966))

(assert (=> d!78141 m!476113))

(declare-fun m!476157 () Bool)

(assert (=> b!494966 m!476157))

(assert (=> b!494854 d!78141))

(declare-fun d!78143 () Bool)

(assert (=> d!78143 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!494852 d!78143))

(declare-fun d!78145 () Bool)

(declare-fun lt!224126 () (_ BitVec 32))

(declare-fun lt!224125 () (_ BitVec 32))

(assert (=> d!78145 (= lt!224126 (bvmul (bvxor lt!224125 (bvlshr lt!224125 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78145 (= lt!224125 ((_ extract 31 0) (bvand (bvxor (select (arr!15385 a!3235) j!176) (bvlshr (select (arr!15385 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78145 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!297651 (let ((h!10462 ((_ extract 31 0) (bvand (bvxor (select (arr!15385 a!3235) j!176) (bvlshr (select (arr!15385 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46710 (bvmul (bvxor h!10462 (bvlshr h!10462 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46710 (bvlshr x!46710 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!297651 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!297651 #b00000000000000000000000000000000))))))

(assert (=> d!78145 (= (toIndex!0 (select (arr!15385 a!3235) j!176) mask!3524) (bvand (bvxor lt!224126 (bvlshr lt!224126 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!494845 d!78145))

(declare-fun b!494997 () Bool)

(declare-fun e!290422 () Bool)

(declare-fun call!31416 () Bool)

(assert (=> b!494997 (= e!290422 call!31416)))

(declare-fun d!78147 () Bool)

(declare-fun res!297652 () Bool)

(declare-fun e!290420 () Bool)

(assert (=> d!78147 (=> res!297652 e!290420)))

(assert (=> d!78147 (= res!297652 (bvsge j!176 (size!15749 a!3235)))))

(assert (=> d!78147 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!290420)))

(declare-fun b!494998 () Bool)

(declare-fun e!290421 () Bool)

(assert (=> b!494998 (= e!290421 e!290422)))

(declare-fun lt!224132 () (_ BitVec 64))

(assert (=> b!494998 (= lt!224132 (select (arr!15385 a!3235) j!176))))

(declare-fun lt!224131 () Unit!14656)

(assert (=> b!494998 (= lt!224131 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!224132 j!176))))

(assert (=> b!494998 (arrayContainsKey!0 a!3235 lt!224132 #b00000000000000000000000000000000)))

(declare-fun lt!224130 () Unit!14656)

(assert (=> b!494998 (= lt!224130 lt!224131)))

(declare-fun res!297653 () Bool)

(assert (=> b!494998 (= res!297653 (= (seekEntryOrOpen!0 (select (arr!15385 a!3235) j!176) a!3235 mask!3524) (Found!3859 j!176)))))

(assert (=> b!494998 (=> (not res!297653) (not e!290422))))

(declare-fun b!494999 () Bool)

(assert (=> b!494999 (= e!290421 call!31416)))

(declare-fun bm!31413 () Bool)

(assert (=> bm!31413 (= call!31416 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!495000 () Bool)

(assert (=> b!495000 (= e!290420 e!290421)))

(declare-fun c!58947 () Bool)

(assert (=> b!495000 (= c!58947 (validKeyInArray!0 (select (arr!15385 a!3235) j!176)))))

(assert (= (and d!78147 (not res!297652)) b!495000))

(assert (= (and b!495000 c!58947) b!494998))

(assert (= (and b!495000 (not c!58947)) b!494999))

(assert (= (and b!494998 res!297653) b!494997))

(assert (= (or b!494997 b!494999) bm!31413))

(assert (=> b!494998 m!476041))

(declare-fun m!476171 () Bool)

(assert (=> b!494998 m!476171))

(declare-fun m!476173 () Bool)

(assert (=> b!494998 m!476173))

(assert (=> b!494998 m!476041))

(assert (=> b!494998 m!476047))

(declare-fun m!476175 () Bool)

(assert (=> bm!31413 m!476175))

(assert (=> b!495000 m!476041))

(assert (=> b!495000 m!476041))

(assert (=> b!495000 m!476043))

(assert (=> b!494845 d!78147))

(declare-fun lt!224162 () SeekEntryResult!3859)

(declare-fun b!495059 () Bool)

(assert (=> b!495059 (and (bvsge (index!17617 lt!224162) #b00000000000000000000000000000000) (bvslt (index!17617 lt!224162) (size!15749 (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235)))))))

(declare-fun res!297677 () Bool)

(assert (=> b!495059 (= res!297677 (= (select (arr!15385 (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235))) (index!17617 lt!224162)) (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176)))))

(declare-fun e!290461 () Bool)

(assert (=> b!495059 (=> res!297677 e!290461)))

(declare-fun e!290463 () Bool)

(assert (=> b!495059 (= e!290463 e!290461)))

(declare-fun e!290460 () SeekEntryResult!3859)

(declare-fun b!495060 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495060 (= e!290460 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!224075 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235)) mask!3524))))

(declare-fun b!495061 () Bool)

(assert (=> b!495061 (and (bvsge (index!17617 lt!224162) #b00000000000000000000000000000000) (bvslt (index!17617 lt!224162) (size!15749 (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235)))))))

(assert (=> b!495061 (= e!290461 (= (select (arr!15385 (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235))) (index!17617 lt!224162)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!495062 () Bool)

(assert (=> b!495062 (and (bvsge (index!17617 lt!224162) #b00000000000000000000000000000000) (bvslt (index!17617 lt!224162) (size!15749 (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235)))))))

(declare-fun res!297679 () Bool)

(assert (=> b!495062 (= res!297679 (= (select (arr!15385 (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235))) (index!17617 lt!224162)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!495062 (=> res!297679 e!290461)))

(declare-fun b!495063 () Bool)

(declare-fun e!290464 () Bool)

(assert (=> b!495063 (= e!290464 (bvsge (x!46708 lt!224162) #b01111111111111111111111111111110))))

(declare-fun d!78153 () Bool)

(assert (=> d!78153 e!290464))

(declare-fun c!58968 () Bool)

(assert (=> d!78153 (= c!58968 (and ((_ is Intermediate!3859) lt!224162) (undefined!4671 lt!224162)))))

(declare-fun e!290462 () SeekEntryResult!3859)

(assert (=> d!78153 (= lt!224162 e!290462)))

(declare-fun c!58967 () Bool)

(assert (=> d!78153 (= c!58967 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!224163 () (_ BitVec 64))

(assert (=> d!78153 (= lt!224163 (select (arr!15385 (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235))) lt!224075))))

(assert (=> d!78153 (validMask!0 mask!3524)))

(assert (=> d!78153 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224075 (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) (array!32008 (store (arr!15385 a!3235) i!1204 k0!2280) (size!15749 a!3235)) mask!3524) lt!224162)))

(declare-fun b!495064 () Bool)

(assert (=> b!495064 (= e!290462 (Intermediate!3859 true lt!224075 #b00000000000000000000000000000000))))

(declare-fun b!495065 () Bool)

(assert (=> b!495065 (= e!290462 e!290460)))

(declare-fun c!58969 () Bool)

(assert (=> b!495065 (= c!58969 (or (= lt!224163 (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!224163 lt!224163) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495066 () Bool)

(assert (=> b!495066 (= e!290460 (Intermediate!3859 false lt!224075 #b00000000000000000000000000000000))))

(declare-fun b!495067 () Bool)

(assert (=> b!495067 (= e!290464 e!290463)))

(declare-fun res!297678 () Bool)

(assert (=> b!495067 (= res!297678 (and ((_ is Intermediate!3859) lt!224162) (not (undefined!4671 lt!224162)) (bvslt (x!46708 lt!224162) #b01111111111111111111111111111110) (bvsge (x!46708 lt!224162) #b00000000000000000000000000000000) (bvsge (x!46708 lt!224162) #b00000000000000000000000000000000)))))

(assert (=> b!495067 (=> (not res!297678) (not e!290463))))

(assert (= (and d!78153 c!58967) b!495064))

(assert (= (and d!78153 (not c!58967)) b!495065))

(assert (= (and b!495065 c!58969) b!495066))

(assert (= (and b!495065 (not c!58969)) b!495060))

(assert (= (and d!78153 c!58968) b!495063))

(assert (= (and d!78153 (not c!58968)) b!495067))

(assert (= (and b!495067 res!297678) b!495059))

(assert (= (and b!495059 (not res!297677)) b!495062))

(assert (= (and b!495062 (not res!297679)) b!495061))

(declare-fun m!476203 () Bool)

(assert (=> b!495060 m!476203))

(assert (=> b!495060 m!476203))

(assert (=> b!495060 m!476055))

(declare-fun m!476205 () Bool)

(assert (=> b!495060 m!476205))

(declare-fun m!476207 () Bool)

(assert (=> b!495061 m!476207))

(declare-fun m!476209 () Bool)

(assert (=> d!78153 m!476209))

(assert (=> d!78153 m!476037))

(assert (=> b!495059 m!476207))

(assert (=> b!495062 m!476207))

(assert (=> b!494845 d!78153))

(declare-fun d!78169 () Bool)

(assert (=> d!78169 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!224181 () Unit!14656)

(declare-fun choose!38 (array!32007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14656)

(assert (=> d!78169 (= lt!224181 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78169 (validMask!0 mask!3524)))

(assert (=> d!78169 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!224181)))

(declare-fun bs!15777 () Bool)

(assert (= bs!15777 d!78169))

(assert (=> bs!15777 m!476061))

(declare-fun m!476237 () Bool)

(assert (=> bs!15777 m!476237))

(assert (=> bs!15777 m!476037))

(assert (=> b!494845 d!78169))

(declare-fun d!78177 () Bool)

(declare-fun lt!224184 () (_ BitVec 32))

(declare-fun lt!224183 () (_ BitVec 32))

(assert (=> d!78177 (= lt!224184 (bvmul (bvxor lt!224183 (bvlshr lt!224183 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78177 (= lt!224183 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78177 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!297651 (let ((h!10462 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46710 (bvmul (bvxor h!10462 (bvlshr h!10462 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46710 (bvlshr x!46710 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!297651 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!297651 #b00000000000000000000000000000000))))))

(assert (=> d!78177 (= (toIndex!0 (select (store (arr!15385 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!224184 (bvlshr lt!224184 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!494845 d!78177))

(declare-fun b!495104 () Bool)

(declare-fun lt!224190 () SeekEntryResult!3859)

(assert (=> b!495104 (and (bvsge (index!17617 lt!224190) #b00000000000000000000000000000000) (bvslt (index!17617 lt!224190) (size!15749 a!3235)))))

(declare-fun res!297691 () Bool)

(assert (=> b!495104 (= res!297691 (= (select (arr!15385 a!3235) (index!17617 lt!224190)) (select (arr!15385 a!3235) j!176)))))

(declare-fun e!290486 () Bool)

(assert (=> b!495104 (=> res!297691 e!290486)))

(declare-fun e!290488 () Bool)

(assert (=> b!495104 (= e!290488 e!290486)))

(declare-fun e!290485 () SeekEntryResult!3859)

(declare-fun b!495105 () Bool)

(assert (=> b!495105 (= e!290485 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!224074 #b00000000000000000000000000000000 mask!3524) (select (arr!15385 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!495106 () Bool)

(assert (=> b!495106 (and (bvsge (index!17617 lt!224190) #b00000000000000000000000000000000) (bvslt (index!17617 lt!224190) (size!15749 a!3235)))))

(assert (=> b!495106 (= e!290486 (= (select (arr!15385 a!3235) (index!17617 lt!224190)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!495107 () Bool)

(assert (=> b!495107 (and (bvsge (index!17617 lt!224190) #b00000000000000000000000000000000) (bvslt (index!17617 lt!224190) (size!15749 a!3235)))))

(declare-fun res!297693 () Bool)

(assert (=> b!495107 (= res!297693 (= (select (arr!15385 a!3235) (index!17617 lt!224190)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!495107 (=> res!297693 e!290486)))

(declare-fun b!495108 () Bool)

(declare-fun e!290489 () Bool)

(assert (=> b!495108 (= e!290489 (bvsge (x!46708 lt!224190) #b01111111111111111111111111111110))))

(declare-fun d!78183 () Bool)

(assert (=> d!78183 e!290489))

(declare-fun c!58983 () Bool)

(assert (=> d!78183 (= c!58983 (and ((_ is Intermediate!3859) lt!224190) (undefined!4671 lt!224190)))))

(declare-fun e!290487 () SeekEntryResult!3859)

(assert (=> d!78183 (= lt!224190 e!290487)))

(declare-fun c!58982 () Bool)

(assert (=> d!78183 (= c!58982 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!224191 () (_ BitVec 64))

(assert (=> d!78183 (= lt!224191 (select (arr!15385 a!3235) lt!224074))))

(assert (=> d!78183 (validMask!0 mask!3524)))

(assert (=> d!78183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224074 (select (arr!15385 a!3235) j!176) a!3235 mask!3524) lt!224190)))

(declare-fun b!495109 () Bool)

(assert (=> b!495109 (= e!290487 (Intermediate!3859 true lt!224074 #b00000000000000000000000000000000))))

(declare-fun b!495110 () Bool)

(assert (=> b!495110 (= e!290487 e!290485)))

(declare-fun c!58984 () Bool)

(assert (=> b!495110 (= c!58984 (or (= lt!224191 (select (arr!15385 a!3235) j!176)) (= (bvadd lt!224191 lt!224191) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495111 () Bool)

(assert (=> b!495111 (= e!290485 (Intermediate!3859 false lt!224074 #b00000000000000000000000000000000))))

(declare-fun b!495112 () Bool)

(assert (=> b!495112 (= e!290489 e!290488)))

(declare-fun res!297692 () Bool)

(assert (=> b!495112 (= res!297692 (and ((_ is Intermediate!3859) lt!224190) (not (undefined!4671 lt!224190)) (bvslt (x!46708 lt!224190) #b01111111111111111111111111111110) (bvsge (x!46708 lt!224190) #b00000000000000000000000000000000) (bvsge (x!46708 lt!224190) #b00000000000000000000000000000000)))))

(assert (=> b!495112 (=> (not res!297692) (not e!290488))))

(assert (= (and d!78183 c!58982) b!495109))

(assert (= (and d!78183 (not c!58982)) b!495110))

(assert (= (and b!495110 c!58984) b!495111))

(assert (= (and b!495110 (not c!58984)) b!495105))

(assert (= (and d!78183 c!58983) b!495108))

(assert (= (and d!78183 (not c!58983)) b!495112))

(assert (= (and b!495112 res!297692) b!495104))

(assert (= (and b!495104 (not res!297691)) b!495107))

(assert (= (and b!495107 (not res!297693)) b!495106))

(declare-fun m!476255 () Bool)

(assert (=> b!495105 m!476255))

(assert (=> b!495105 m!476255))

(assert (=> b!495105 m!476041))

(declare-fun m!476257 () Bool)

(assert (=> b!495105 m!476257))

(declare-fun m!476259 () Bool)

(assert (=> b!495106 m!476259))

(declare-fun m!476261 () Bool)

(assert (=> d!78183 m!476261))

(assert (=> d!78183 m!476037))

(assert (=> b!495104 m!476259))

(assert (=> b!495107 m!476259))

(assert (=> b!494845 d!78183))

(declare-fun d!78185 () Bool)

(declare-fun lt!224193 () SeekEntryResult!3859)

(assert (=> d!78185 (and (or ((_ is Undefined!3859) lt!224193) (not ((_ is Found!3859) lt!224193)) (and (bvsge (index!17616 lt!224193) #b00000000000000000000000000000000) (bvslt (index!17616 lt!224193) (size!15749 a!3235)))) (or ((_ is Undefined!3859) lt!224193) ((_ is Found!3859) lt!224193) (not ((_ is MissingZero!3859) lt!224193)) (and (bvsge (index!17615 lt!224193) #b00000000000000000000000000000000) (bvslt (index!17615 lt!224193) (size!15749 a!3235)))) (or ((_ is Undefined!3859) lt!224193) ((_ is Found!3859) lt!224193) ((_ is MissingZero!3859) lt!224193) (not ((_ is MissingVacant!3859) lt!224193)) (and (bvsge (index!17618 lt!224193) #b00000000000000000000000000000000) (bvslt (index!17618 lt!224193) (size!15749 a!3235)))) (or ((_ is Undefined!3859) lt!224193) (ite ((_ is Found!3859) lt!224193) (= (select (arr!15385 a!3235) (index!17616 lt!224193)) (select (arr!15385 a!3235) j!176)) (ite ((_ is MissingZero!3859) lt!224193) (= (select (arr!15385 a!3235) (index!17615 lt!224193)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3859) lt!224193) (= (select (arr!15385 a!3235) (index!17618 lt!224193)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!290492 () SeekEntryResult!3859)

(assert (=> d!78185 (= lt!224193 e!290492)))

(declare-fun c!58986 () Bool)

(declare-fun lt!224192 () SeekEntryResult!3859)

(assert (=> d!78185 (= c!58986 (and ((_ is Intermediate!3859) lt!224192) (undefined!4671 lt!224192)))))

(assert (=> d!78185 (= lt!224192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15385 a!3235) j!176) mask!3524) (select (arr!15385 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78185 (validMask!0 mask!3524)))

(assert (=> d!78185 (= (seekEntryOrOpen!0 (select (arr!15385 a!3235) j!176) a!3235 mask!3524) lt!224193)))

(declare-fun b!495113 () Bool)

(declare-fun c!58987 () Bool)

(declare-fun lt!224194 () (_ BitVec 64))

(assert (=> b!495113 (= c!58987 (= lt!224194 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!290490 () SeekEntryResult!3859)

(declare-fun e!290491 () SeekEntryResult!3859)

(assert (=> b!495113 (= e!290490 e!290491)))

(declare-fun b!495114 () Bool)

(assert (=> b!495114 (= e!290491 (seekKeyOrZeroReturnVacant!0 (x!46708 lt!224192) (index!17617 lt!224192) (index!17617 lt!224192) (select (arr!15385 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!495115 () Bool)

(assert (=> b!495115 (= e!290491 (MissingZero!3859 (index!17617 lt!224192)))))

(declare-fun b!495116 () Bool)

(assert (=> b!495116 (= e!290492 Undefined!3859)))

(declare-fun b!495117 () Bool)

(assert (=> b!495117 (= e!290490 (Found!3859 (index!17617 lt!224192)))))

(declare-fun b!495118 () Bool)

(assert (=> b!495118 (= e!290492 e!290490)))

(assert (=> b!495118 (= lt!224194 (select (arr!15385 a!3235) (index!17617 lt!224192)))))

(declare-fun c!58985 () Bool)

(assert (=> b!495118 (= c!58985 (= lt!224194 (select (arr!15385 a!3235) j!176)))))

(assert (= (and d!78185 c!58986) b!495116))

(assert (= (and d!78185 (not c!58986)) b!495118))

(assert (= (and b!495118 c!58985) b!495117))

(assert (= (and b!495118 (not c!58985)) b!495113))

(assert (= (and b!495113 c!58987) b!495115))

(assert (= (and b!495113 (not c!58987)) b!495114))

(assert (=> d!78185 m!476057))

(assert (=> d!78185 m!476041))

(declare-fun m!476263 () Bool)

(assert (=> d!78185 m!476263))

(assert (=> d!78185 m!476041))

(assert (=> d!78185 m!476057))

(assert (=> d!78185 m!476037))

(declare-fun m!476265 () Bool)

(assert (=> d!78185 m!476265))

(declare-fun m!476267 () Bool)

(assert (=> d!78185 m!476267))

(declare-fun m!476269 () Bool)

(assert (=> d!78185 m!476269))

(assert (=> b!495114 m!476041))

(declare-fun m!476271 () Bool)

(assert (=> b!495114 m!476271))

(declare-fun m!476273 () Bool)

(assert (=> b!495118 m!476273))

(assert (=> b!494846 d!78185))

(declare-fun d!78187 () Bool)

(assert (=> d!78187 (= (validKeyInArray!0 (select (arr!15385 a!3235) j!176)) (and (not (= (select (arr!15385 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15385 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!494851 d!78187))

(check-sat (not b!495000) (not b!494900) (not b!494956) (not bm!31409) (not d!78123) (not b!495060) (not d!78183) (not d!78169) (not b!495105) (not b!494903) (not b!494901) (not bm!31413) (not bm!31406) (not b!494998) (not b!494915) (not d!78185) (not b!495114) (not b!494966) (not d!78153) (not b!494913))
(check-sat)
