; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67704 () Bool)

(assert start!67704)

(declare-fun b!784277 () Bool)

(declare-fun e!436072 () Bool)

(assert (=> b!784277 (= e!436072 true)))

(declare-fun e!436067 () Bool)

(assert (=> b!784277 e!436067))

(declare-fun res!530859 () Bool)

(assert (=> b!784277 (=> (not res!530859) (not e!436067))))

(declare-fun lt!349639 () (_ BitVec 64))

(assert (=> b!784277 (= res!530859 (= lt!349639 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27074 0))(
  ( (Unit!27075) )
))
(declare-fun lt!349638 () Unit!27074)

(declare-fun e!436077 () Unit!27074)

(assert (=> b!784277 (= lt!349638 e!436077)))

(declare-fun c!87125 () Bool)

(assert (=> b!784277 (= c!87125 (= lt!349639 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!436073 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42699 0))(
  ( (array!42700 (arr!20434 (Array (_ BitVec 32) (_ BitVec 64))) (size!20855 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42699)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!784278 () Bool)

(declare-datatypes ((SeekEntryResult!8041 0))(
  ( (MissingZero!8041 (index!34531 (_ BitVec 32))) (Found!8041 (index!34532 (_ BitVec 32))) (Intermediate!8041 (undefined!8853 Bool) (index!34533 (_ BitVec 32)) (x!65510 (_ BitVec 32))) (Undefined!8041) (MissingVacant!8041 (index!34534 (_ BitVec 32))) )
))
(declare-fun lt!349644 () SeekEntryResult!8041)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42699 (_ BitVec 32)) SeekEntryResult!8041)

(assert (=> b!784278 (= e!436073 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20434 a!3186) j!159) a!3186 mask!3328) lt!349644))))

(declare-fun b!784279 () Bool)

(declare-fun res!530858 () Bool)

(declare-fun e!436070 () Bool)

(assert (=> b!784279 (=> (not res!530858) (not e!436070))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784279 (= res!530858 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784280 () Bool)

(declare-fun res!530854 () Bool)

(assert (=> b!784280 (=> (not res!530854) (not e!436070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784280 (= res!530854 (validKeyInArray!0 k0!2102))))

(declare-fun b!784281 () Bool)

(declare-fun res!530850 () Bool)

(declare-fun e!436075 () Bool)

(assert (=> b!784281 (=> (not res!530850) (not e!436075))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!784281 (= res!530850 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20855 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20855 a!3186))))))

(declare-fun b!784282 () Bool)

(declare-fun res!530849 () Bool)

(assert (=> b!784282 (=> (not res!530849) (not e!436070))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784282 (= res!530849 (and (= (size!20855 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20855 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20855 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784283 () Bool)

(declare-fun res!530853 () Bool)

(assert (=> b!784283 (=> (not res!530853) (not e!436075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42699 (_ BitVec 32)) Bool)

(assert (=> b!784283 (= res!530853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!436071 () Bool)

(declare-fun b!784284 () Bool)

(assert (=> b!784284 (= e!436071 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20434 a!3186) j!159) a!3186 mask!3328) (Found!8041 j!159)))))

(declare-fun b!784285 () Bool)

(declare-fun res!530856 () Bool)

(assert (=> b!784285 (=> (not res!530856) (not e!436075))))

(declare-datatypes ((List!14489 0))(
  ( (Nil!14486) (Cons!14485 (h!15608 (_ BitVec 64)) (t!20812 List!14489)) )
))
(declare-fun arrayNoDuplicates!0 (array!42699 (_ BitVec 32) List!14489) Bool)

(assert (=> b!784285 (= res!530856 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14486))))

(declare-fun b!784286 () Bool)

(declare-fun lt!349641 () SeekEntryResult!8041)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42699 (_ BitVec 32)) SeekEntryResult!8041)

(assert (=> b!784286 (= e!436071 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20434 a!3186) j!159) a!3186 mask!3328) lt!349641))))

(declare-fun b!784287 () Bool)

(declare-fun res!530852 () Bool)

(assert (=> b!784287 (=> (not res!530852) (not e!436067))))

(declare-fun lt!349643 () array!42699)

(declare-fun lt!349645 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42699 (_ BitVec 32)) SeekEntryResult!8041)

(assert (=> b!784287 (= res!530852 (= (seekEntryOrOpen!0 lt!349645 lt!349643 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349645 lt!349643 mask!3328)))))

(declare-fun b!784288 () Bool)

(declare-fun Unit!27076 () Unit!27074)

(assert (=> b!784288 (= e!436077 Unit!27076)))

(declare-fun b!784289 () Bool)

(declare-fun e!436074 () Bool)

(declare-fun e!436078 () Bool)

(assert (=> b!784289 (= e!436074 e!436078)))

(declare-fun res!530848 () Bool)

(assert (=> b!784289 (=> res!530848 e!436078)))

(declare-fun lt!349636 () SeekEntryResult!8041)

(assert (=> b!784289 (= res!530848 (not (= lt!349636 lt!349644)))))

(assert (=> b!784289 (= lt!349636 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20434 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784290 () Bool)

(assert (=> b!784290 (= e!436078 e!436072)))

(declare-fun res!530842 () Bool)

(assert (=> b!784290 (=> res!530842 e!436072)))

(assert (=> b!784290 (= res!530842 (= lt!349639 lt!349645))))

(assert (=> b!784290 (= lt!349639 (select (store (arr!20434 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!784291 () Bool)

(declare-fun e!436076 () Bool)

(declare-fun e!436068 () Bool)

(assert (=> b!784291 (= e!436076 e!436068)))

(declare-fun res!530846 () Bool)

(assert (=> b!784291 (=> (not res!530846) (not e!436068))))

(declare-fun lt!349635 () SeekEntryResult!8041)

(declare-fun lt!349634 () SeekEntryResult!8041)

(assert (=> b!784291 (= res!530846 (= lt!349635 lt!349634))))

(assert (=> b!784291 (= lt!349634 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349645 lt!349643 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784291 (= lt!349635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349645 mask!3328) lt!349645 lt!349643 mask!3328))))

(assert (=> b!784291 (= lt!349645 (select (store (arr!20434 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!784291 (= lt!349643 (array!42700 (store (arr!20434 a!3186) i!1173 k0!2102) (size!20855 a!3186)))))

(declare-fun b!784292 () Bool)

(declare-fun lt!349640 () SeekEntryResult!8041)

(assert (=> b!784292 (= e!436067 (= lt!349640 lt!349636))))

(declare-fun b!784293 () Bool)

(assert (=> b!784293 (= e!436075 e!436076)))

(declare-fun res!530851 () Bool)

(assert (=> b!784293 (=> (not res!530851) (not e!436076))))

(assert (=> b!784293 (= res!530851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20434 a!3186) j!159) mask!3328) (select (arr!20434 a!3186) j!159) a!3186 mask!3328) lt!349641))))

(assert (=> b!784293 (= lt!349641 (Intermediate!8041 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784294 () Bool)

(declare-fun res!530855 () Bool)

(assert (=> b!784294 (=> (not res!530855) (not e!436070))))

(assert (=> b!784294 (= res!530855 (validKeyInArray!0 (select (arr!20434 a!3186) j!159)))))

(declare-fun b!784295 () Bool)

(declare-fun Unit!27077 () Unit!27074)

(assert (=> b!784295 (= e!436077 Unit!27077)))

(assert (=> b!784295 false))

(declare-fun b!784296 () Bool)

(declare-fun res!530843 () Bool)

(assert (=> b!784296 (=> (not res!530843) (not e!436076))))

(assert (=> b!784296 (= res!530843 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20434 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784297 () Bool)

(assert (=> b!784297 (= e!436070 e!436075)))

(declare-fun res!530844 () Bool)

(assert (=> b!784297 (=> (not res!530844) (not e!436075))))

(declare-fun lt!349642 () SeekEntryResult!8041)

(assert (=> b!784297 (= res!530844 (or (= lt!349642 (MissingZero!8041 i!1173)) (= lt!349642 (MissingVacant!8041 i!1173))))))

(assert (=> b!784297 (= lt!349642 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!530860 () Bool)

(assert (=> start!67704 (=> (not res!530860) (not e!436070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67704 (= res!530860 (validMask!0 mask!3328))))

(assert (=> start!67704 e!436070))

(assert (=> start!67704 true))

(declare-fun array_inv!16208 (array!42699) Bool)

(assert (=> start!67704 (array_inv!16208 a!3186)))

(declare-fun b!784298 () Bool)

(declare-fun res!530847 () Bool)

(assert (=> b!784298 (=> (not res!530847) (not e!436076))))

(assert (=> b!784298 (= res!530847 e!436071)))

(declare-fun c!87126 () Bool)

(assert (=> b!784298 (= c!87126 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784299 () Bool)

(assert (=> b!784299 (= e!436068 (not e!436074))))

(declare-fun res!530845 () Bool)

(assert (=> b!784299 (=> res!530845 e!436074)))

(get-info :version)

(assert (=> b!784299 (= res!530845 (or (not ((_ is Intermediate!8041) lt!349634)) (bvslt x!1131 (x!65510 lt!349634)) (not (= x!1131 (x!65510 lt!349634))) (not (= index!1321 (index!34533 lt!349634)))))))

(assert (=> b!784299 e!436073))

(declare-fun res!530857 () Bool)

(assert (=> b!784299 (=> (not res!530857) (not e!436073))))

(assert (=> b!784299 (= res!530857 (= lt!349640 lt!349644))))

(assert (=> b!784299 (= lt!349644 (Found!8041 j!159))))

(assert (=> b!784299 (= lt!349640 (seekEntryOrOpen!0 (select (arr!20434 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!784299 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349637 () Unit!27074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27074)

(assert (=> b!784299 (= lt!349637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67704 res!530860) b!784282))

(assert (= (and b!784282 res!530849) b!784294))

(assert (= (and b!784294 res!530855) b!784280))

(assert (= (and b!784280 res!530854) b!784279))

(assert (= (and b!784279 res!530858) b!784297))

(assert (= (and b!784297 res!530844) b!784283))

(assert (= (and b!784283 res!530853) b!784285))

(assert (= (and b!784285 res!530856) b!784281))

(assert (= (and b!784281 res!530850) b!784293))

(assert (= (and b!784293 res!530851) b!784296))

(assert (= (and b!784296 res!530843) b!784298))

(assert (= (and b!784298 c!87126) b!784286))

(assert (= (and b!784298 (not c!87126)) b!784284))

(assert (= (and b!784298 res!530847) b!784291))

(assert (= (and b!784291 res!530846) b!784299))

(assert (= (and b!784299 res!530857) b!784278))

(assert (= (and b!784299 (not res!530845)) b!784289))

(assert (= (and b!784289 (not res!530848)) b!784290))

(assert (= (and b!784290 (not res!530842)) b!784277))

(assert (= (and b!784277 c!87125) b!784295))

(assert (= (and b!784277 (not c!87125)) b!784288))

(assert (= (and b!784277 res!530859) b!784287))

(assert (= (and b!784287 res!530852) b!784292))

(declare-fun m!726677 () Bool)

(assert (=> b!784280 m!726677))

(declare-fun m!726679 () Bool)

(assert (=> b!784287 m!726679))

(declare-fun m!726681 () Bool)

(assert (=> b!784287 m!726681))

(declare-fun m!726683 () Bool)

(assert (=> b!784293 m!726683))

(assert (=> b!784293 m!726683))

(declare-fun m!726685 () Bool)

(assert (=> b!784293 m!726685))

(assert (=> b!784293 m!726685))

(assert (=> b!784293 m!726683))

(declare-fun m!726687 () Bool)

(assert (=> b!784293 m!726687))

(assert (=> b!784294 m!726683))

(assert (=> b!784294 m!726683))

(declare-fun m!726689 () Bool)

(assert (=> b!784294 m!726689))

(assert (=> b!784278 m!726683))

(assert (=> b!784278 m!726683))

(declare-fun m!726691 () Bool)

(assert (=> b!784278 m!726691))

(assert (=> b!784286 m!726683))

(assert (=> b!784286 m!726683))

(declare-fun m!726693 () Bool)

(assert (=> b!784286 m!726693))

(declare-fun m!726695 () Bool)

(assert (=> b!784279 m!726695))

(assert (=> b!784299 m!726683))

(assert (=> b!784299 m!726683))

(declare-fun m!726697 () Bool)

(assert (=> b!784299 m!726697))

(declare-fun m!726699 () Bool)

(assert (=> b!784299 m!726699))

(declare-fun m!726701 () Bool)

(assert (=> b!784299 m!726701))

(declare-fun m!726703 () Bool)

(assert (=> b!784283 m!726703))

(declare-fun m!726705 () Bool)

(assert (=> b!784285 m!726705))

(declare-fun m!726707 () Bool)

(assert (=> start!67704 m!726707))

(declare-fun m!726709 () Bool)

(assert (=> start!67704 m!726709))

(assert (=> b!784284 m!726683))

(assert (=> b!784284 m!726683))

(declare-fun m!726711 () Bool)

(assert (=> b!784284 m!726711))

(declare-fun m!726713 () Bool)

(assert (=> b!784297 m!726713))

(declare-fun m!726715 () Bool)

(assert (=> b!784291 m!726715))

(declare-fun m!726717 () Bool)

(assert (=> b!784291 m!726717))

(declare-fun m!726719 () Bool)

(assert (=> b!784291 m!726719))

(assert (=> b!784291 m!726715))

(declare-fun m!726721 () Bool)

(assert (=> b!784291 m!726721))

(declare-fun m!726723 () Bool)

(assert (=> b!784291 m!726723))

(assert (=> b!784289 m!726683))

(assert (=> b!784289 m!726683))

(assert (=> b!784289 m!726711))

(assert (=> b!784290 m!726719))

(declare-fun m!726725 () Bool)

(assert (=> b!784290 m!726725))

(declare-fun m!726727 () Bool)

(assert (=> b!784296 m!726727))

(check-sat (not b!784285) (not b!784299) (not b!784278) (not b!784293) (not b!784286) (not b!784279) (not start!67704) (not b!784291) (not b!784280) (not b!784287) (not b!784294) (not b!784283) (not b!784284) (not b!784297) (not b!784289))
(check-sat)
