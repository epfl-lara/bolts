; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52906 () Bool)

(assert start!52906)

(declare-fun b!576378 () Bool)

(declare-fun e!331590 () Bool)

(declare-fun e!331592 () Bool)

(assert (=> b!576378 (= e!331590 (not e!331592))))

(declare-fun res!364762 () Bool)

(assert (=> b!576378 (=> res!364762 e!331592)))

(declare-fun lt!263688 () Bool)

(declare-datatypes ((SeekEntryResult!5707 0))(
  ( (MissingZero!5707 (index!25055 (_ BitVec 32))) (Found!5707 (index!25056 (_ BitVec 32))) (Intermediate!5707 (undefined!6519 Bool) (index!25057 (_ BitVec 32)) (x!53973 (_ BitVec 32))) (Undefined!5707) (MissingVacant!5707 (index!25058 (_ BitVec 32))) )
))
(declare-fun lt!263686 () SeekEntryResult!5707)

(assert (=> b!576378 (= res!364762 (or (and (not lt!263688) (undefined!6519 lt!263686)) (and (not lt!263688) (not (undefined!6519 lt!263686)))))))

(get-info :version)

(assert (=> b!576378 (= lt!263688 (not ((_ is Intermediate!5707) lt!263686)))))

(declare-fun lt!263687 () SeekEntryResult!5707)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!576378 (= lt!263687 (Found!5707 j!142))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35948 0))(
  ( (array!35949 (arr!17251 (Array (_ BitVec 32) (_ BitVec 64))) (size!17615 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35948)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35948 (_ BitVec 32)) SeekEntryResult!5707)

(assert (=> b!576378 (= lt!263687 (seekEntryOrOpen!0 (select (arr!17251 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35948 (_ BitVec 32)) Bool)

(assert (=> b!576378 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18116 0))(
  ( (Unit!18117) )
))
(declare-fun lt!263685 () Unit!18116)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35948 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18116)

(assert (=> b!576378 (= lt!263685 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576379 () Bool)

(declare-fun res!364766 () Bool)

(declare-fun e!331593 () Bool)

(assert (=> b!576379 (=> (not res!364766) (not e!331593))))

(declare-datatypes ((List!11384 0))(
  ( (Nil!11381) (Cons!11380 (h!12422 (_ BitVec 64)) (t!17620 List!11384)) )
))
(declare-fun arrayNoDuplicates!0 (array!35948 (_ BitVec 32) List!11384) Bool)

(assert (=> b!576379 (= res!364766 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11381))))

(declare-fun b!576380 () Bool)

(assert (=> b!576380 (= e!331593 e!331590)))

(declare-fun res!364769 () Bool)

(assert (=> b!576380 (=> (not res!364769) (not e!331590))))

(declare-fun lt!263692 () (_ BitVec 64))

(declare-fun lt!263690 () array!35948)

(declare-fun lt!263689 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35948 (_ BitVec 32)) SeekEntryResult!5707)

(assert (=> b!576380 (= res!364769 (= lt!263686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263689 lt!263692 lt!263690 mask!3119)))))

(declare-fun lt!263693 () (_ BitVec 32))

(assert (=> b!576380 (= lt!263686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263693 (select (arr!17251 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576380 (= lt!263689 (toIndex!0 lt!263692 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576380 (= lt!263692 (select (store (arr!17251 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!576380 (= lt!263693 (toIndex!0 (select (arr!17251 a!3118) j!142) mask!3119))))

(assert (=> b!576380 (= lt!263690 (array!35949 (store (arr!17251 a!3118) i!1132 k0!1914) (size!17615 a!3118)))))

(declare-fun b!576381 () Bool)

(assert (=> b!576381 (= e!331592 (= lt!263687 (seekEntryOrOpen!0 lt!263692 lt!263690 mask!3119)))))

(declare-fun b!576382 () Bool)

(declare-fun res!364760 () Bool)

(declare-fun e!331594 () Bool)

(assert (=> b!576382 (=> (not res!364760) (not e!331594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576382 (= res!364760 (validKeyInArray!0 (select (arr!17251 a!3118) j!142)))))

(declare-fun b!576383 () Bool)

(declare-fun res!364764 () Bool)

(assert (=> b!576383 (=> (not res!364764) (not e!331594))))

(declare-fun arrayContainsKey!0 (array!35948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576383 (= res!364764 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!576384 () Bool)

(assert (=> b!576384 (= e!331594 e!331593)))

(declare-fun res!364767 () Bool)

(assert (=> b!576384 (=> (not res!364767) (not e!331593))))

(declare-fun lt!263691 () SeekEntryResult!5707)

(assert (=> b!576384 (= res!364767 (or (= lt!263691 (MissingZero!5707 i!1132)) (= lt!263691 (MissingVacant!5707 i!1132))))))

(assert (=> b!576384 (= lt!263691 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!576377 () Bool)

(declare-fun res!364768 () Bool)

(assert (=> b!576377 (=> (not res!364768) (not e!331593))))

(assert (=> b!576377 (= res!364768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!364765 () Bool)

(assert (=> start!52906 (=> (not res!364765) (not e!331594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52906 (= res!364765 (validMask!0 mask!3119))))

(assert (=> start!52906 e!331594))

(assert (=> start!52906 true))

(declare-fun array_inv!13025 (array!35948) Bool)

(assert (=> start!52906 (array_inv!13025 a!3118)))

(declare-fun b!576385 () Bool)

(declare-fun res!364763 () Bool)

(assert (=> b!576385 (=> (not res!364763) (not e!331594))))

(assert (=> b!576385 (= res!364763 (and (= (size!17615 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17615 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17615 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576386 () Bool)

(declare-fun res!364761 () Bool)

(assert (=> b!576386 (=> (not res!364761) (not e!331594))))

(assert (=> b!576386 (= res!364761 (validKeyInArray!0 k0!1914))))

(assert (= (and start!52906 res!364765) b!576385))

(assert (= (and b!576385 res!364763) b!576382))

(assert (= (and b!576382 res!364760) b!576386))

(assert (= (and b!576386 res!364761) b!576383))

(assert (= (and b!576383 res!364764) b!576384))

(assert (= (and b!576384 res!364767) b!576377))

(assert (= (and b!576377 res!364768) b!576379))

(assert (= (and b!576379 res!364766) b!576380))

(assert (= (and b!576380 res!364769) b!576378))

(assert (= (and b!576378 (not res!364762)) b!576381))

(declare-fun m!555405 () Bool)

(assert (=> b!576379 m!555405))

(declare-fun m!555407 () Bool)

(assert (=> b!576380 m!555407))

(declare-fun m!555409 () Bool)

(assert (=> b!576380 m!555409))

(assert (=> b!576380 m!555407))

(declare-fun m!555411 () Bool)

(assert (=> b!576380 m!555411))

(declare-fun m!555413 () Bool)

(assert (=> b!576380 m!555413))

(declare-fun m!555415 () Bool)

(assert (=> b!576380 m!555415))

(assert (=> b!576380 m!555407))

(declare-fun m!555417 () Bool)

(assert (=> b!576380 m!555417))

(declare-fun m!555419 () Bool)

(assert (=> b!576380 m!555419))

(declare-fun m!555421 () Bool)

(assert (=> b!576383 m!555421))

(declare-fun m!555423 () Bool)

(assert (=> b!576384 m!555423))

(declare-fun m!555425 () Bool)

(assert (=> b!576381 m!555425))

(declare-fun m!555427 () Bool)

(assert (=> b!576377 m!555427))

(assert (=> b!576382 m!555407))

(assert (=> b!576382 m!555407))

(declare-fun m!555429 () Bool)

(assert (=> b!576382 m!555429))

(declare-fun m!555431 () Bool)

(assert (=> b!576386 m!555431))

(declare-fun m!555433 () Bool)

(assert (=> start!52906 m!555433))

(declare-fun m!555435 () Bool)

(assert (=> start!52906 m!555435))

(assert (=> b!576378 m!555407))

(assert (=> b!576378 m!555407))

(declare-fun m!555437 () Bool)

(assert (=> b!576378 m!555437))

(declare-fun m!555439 () Bool)

(assert (=> b!576378 m!555439))

(declare-fun m!555441 () Bool)

(assert (=> b!576378 m!555441))

(check-sat (not b!576382) (not b!576379) (not b!576381) (not b!576378) (not b!576377) (not b!576384) (not b!576380) (not b!576386) (not start!52906) (not b!576383))
(check-sat)
(get-model)

(declare-fun b!576429 () Bool)

(declare-fun c!66180 () Bool)

(declare-fun lt!263727 () (_ BitVec 64))

(assert (=> b!576429 (= c!66180 (= lt!263727 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331616 () SeekEntryResult!5707)

(declare-fun e!331617 () SeekEntryResult!5707)

(assert (=> b!576429 (= e!331616 e!331617)))

(declare-fun b!576430 () Bool)

(declare-fun lt!263728 () SeekEntryResult!5707)

(assert (=> b!576430 (= e!331617 (MissingZero!5707 (index!25057 lt!263728)))))

(declare-fun b!576431 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35948 (_ BitVec 32)) SeekEntryResult!5707)

(assert (=> b!576431 (= e!331617 (seekKeyOrZeroReturnVacant!0 (x!53973 lt!263728) (index!25057 lt!263728) (index!25057 lt!263728) lt!263692 lt!263690 mask!3119))))

(declare-fun b!576432 () Bool)

(declare-fun e!331618 () SeekEntryResult!5707)

(assert (=> b!576432 (= e!331618 Undefined!5707)))

(declare-fun b!576433 () Bool)

(assert (=> b!576433 (= e!331618 e!331616)))

(assert (=> b!576433 (= lt!263727 (select (arr!17251 lt!263690) (index!25057 lt!263728)))))

(declare-fun c!66181 () Bool)

(assert (=> b!576433 (= c!66181 (= lt!263727 lt!263692))))

(declare-fun b!576434 () Bool)

(assert (=> b!576434 (= e!331616 (Found!5707 (index!25057 lt!263728)))))

(declare-fun d!85291 () Bool)

(declare-fun lt!263729 () SeekEntryResult!5707)

(assert (=> d!85291 (and (or ((_ is Undefined!5707) lt!263729) (not ((_ is Found!5707) lt!263729)) (and (bvsge (index!25056 lt!263729) #b00000000000000000000000000000000) (bvslt (index!25056 lt!263729) (size!17615 lt!263690)))) (or ((_ is Undefined!5707) lt!263729) ((_ is Found!5707) lt!263729) (not ((_ is MissingZero!5707) lt!263729)) (and (bvsge (index!25055 lt!263729) #b00000000000000000000000000000000) (bvslt (index!25055 lt!263729) (size!17615 lt!263690)))) (or ((_ is Undefined!5707) lt!263729) ((_ is Found!5707) lt!263729) ((_ is MissingZero!5707) lt!263729) (not ((_ is MissingVacant!5707) lt!263729)) (and (bvsge (index!25058 lt!263729) #b00000000000000000000000000000000) (bvslt (index!25058 lt!263729) (size!17615 lt!263690)))) (or ((_ is Undefined!5707) lt!263729) (ite ((_ is Found!5707) lt!263729) (= (select (arr!17251 lt!263690) (index!25056 lt!263729)) lt!263692) (ite ((_ is MissingZero!5707) lt!263729) (= (select (arr!17251 lt!263690) (index!25055 lt!263729)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5707) lt!263729) (= (select (arr!17251 lt!263690) (index!25058 lt!263729)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85291 (= lt!263729 e!331618)))

(declare-fun c!66182 () Bool)

(assert (=> d!85291 (= c!66182 (and ((_ is Intermediate!5707) lt!263728) (undefined!6519 lt!263728)))))

(assert (=> d!85291 (= lt!263728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!263692 mask!3119) lt!263692 lt!263690 mask!3119))))

(assert (=> d!85291 (validMask!0 mask!3119)))

(assert (=> d!85291 (= (seekEntryOrOpen!0 lt!263692 lt!263690 mask!3119) lt!263729)))

(assert (= (and d!85291 c!66182) b!576432))

(assert (= (and d!85291 (not c!66182)) b!576433))

(assert (= (and b!576433 c!66181) b!576434))

(assert (= (and b!576433 (not c!66181)) b!576429))

(assert (= (and b!576429 c!66180) b!576430))

(assert (= (and b!576429 (not c!66180)) b!576431))

(declare-fun m!555481 () Bool)

(assert (=> b!576431 m!555481))

(declare-fun m!555483 () Bool)

(assert (=> b!576433 m!555483))

(assert (=> d!85291 m!555413))

(declare-fun m!555485 () Bool)

(assert (=> d!85291 m!555485))

(assert (=> d!85291 m!555413))

(declare-fun m!555487 () Bool)

(assert (=> d!85291 m!555487))

(declare-fun m!555489 () Bool)

(assert (=> d!85291 m!555489))

(assert (=> d!85291 m!555433))

(declare-fun m!555491 () Bool)

(assert (=> d!85291 m!555491))

(assert (=> b!576381 d!85291))

(declare-fun d!85293 () Bool)

(assert (=> d!85293 (= (validKeyInArray!0 (select (arr!17251 a!3118) j!142)) (and (not (= (select (arr!17251 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17251 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!576382 d!85293))

(declare-fun b!576477 () Bool)

(declare-fun e!331651 () Bool)

(declare-fun lt!263752 () SeekEntryResult!5707)

(assert (=> b!576477 (= e!331651 (bvsge (x!53973 lt!263752) #b01111111111111111111111111111110))))

(declare-fun e!331649 () SeekEntryResult!5707)

(declare-fun b!576478 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576478 (= e!331649 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!263689 #b00000000000000000000000000000000 mask!3119) lt!263692 lt!263690 mask!3119))))

(declare-fun d!85295 () Bool)

(assert (=> d!85295 e!331651))

(declare-fun c!66197 () Bool)

(assert (=> d!85295 (= c!66197 (and ((_ is Intermediate!5707) lt!263752) (undefined!6519 lt!263752)))))

(declare-fun e!331647 () SeekEntryResult!5707)

(assert (=> d!85295 (= lt!263752 e!331647)))

(declare-fun c!66196 () Bool)

(assert (=> d!85295 (= c!66196 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!263753 () (_ BitVec 64))

(assert (=> d!85295 (= lt!263753 (select (arr!17251 lt!263690) lt!263689))))

(assert (=> d!85295 (validMask!0 mask!3119)))

(assert (=> d!85295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263689 lt!263692 lt!263690 mask!3119) lt!263752)))

(declare-fun b!576479 () Bool)

(assert (=> b!576479 (and (bvsge (index!25057 lt!263752) #b00000000000000000000000000000000) (bvslt (index!25057 lt!263752) (size!17615 lt!263690)))))

(declare-fun e!331648 () Bool)

(assert (=> b!576479 (= e!331648 (= (select (arr!17251 lt!263690) (index!25057 lt!263752)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!576480 () Bool)

(assert (=> b!576480 (= e!331647 e!331649)))

(declare-fun c!66195 () Bool)

(assert (=> b!576480 (= c!66195 (or (= lt!263753 lt!263692) (= (bvadd lt!263753 lt!263753) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!576481 () Bool)

(declare-fun e!331650 () Bool)

(assert (=> b!576481 (= e!331651 e!331650)))

(declare-fun res!364818 () Bool)

(assert (=> b!576481 (= res!364818 (and ((_ is Intermediate!5707) lt!263752) (not (undefined!6519 lt!263752)) (bvslt (x!53973 lt!263752) #b01111111111111111111111111111110) (bvsge (x!53973 lt!263752) #b00000000000000000000000000000000) (bvsge (x!53973 lt!263752) #b00000000000000000000000000000000)))))

(assert (=> b!576481 (=> (not res!364818) (not e!331650))))

(declare-fun b!576482 () Bool)

(assert (=> b!576482 (= e!331649 (Intermediate!5707 false lt!263689 #b00000000000000000000000000000000))))

(declare-fun b!576483 () Bool)

(assert (=> b!576483 (and (bvsge (index!25057 lt!263752) #b00000000000000000000000000000000) (bvslt (index!25057 lt!263752) (size!17615 lt!263690)))))

(declare-fun res!364819 () Bool)

(assert (=> b!576483 (= res!364819 (= (select (arr!17251 lt!263690) (index!25057 lt!263752)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!576483 (=> res!364819 e!331648)))

(declare-fun b!576484 () Bool)

(assert (=> b!576484 (and (bvsge (index!25057 lt!263752) #b00000000000000000000000000000000) (bvslt (index!25057 lt!263752) (size!17615 lt!263690)))))

(declare-fun res!364820 () Bool)

(assert (=> b!576484 (= res!364820 (= (select (arr!17251 lt!263690) (index!25057 lt!263752)) lt!263692))))

(assert (=> b!576484 (=> res!364820 e!331648)))

(assert (=> b!576484 (= e!331650 e!331648)))

(declare-fun b!576485 () Bool)

(assert (=> b!576485 (= e!331647 (Intermediate!5707 true lt!263689 #b00000000000000000000000000000000))))

(assert (= (and d!85295 c!66196) b!576485))

(assert (= (and d!85295 (not c!66196)) b!576480))

(assert (= (and b!576480 c!66195) b!576482))

(assert (= (and b!576480 (not c!66195)) b!576478))

(assert (= (and d!85295 c!66197) b!576477))

(assert (= (and d!85295 (not c!66197)) b!576481))

(assert (= (and b!576481 res!364818) b!576484))

(assert (= (and b!576484 (not res!364820)) b!576483))

(assert (= (and b!576483 (not res!364819)) b!576479))

(declare-fun m!555517 () Bool)

(assert (=> d!85295 m!555517))

(assert (=> d!85295 m!555433))

(declare-fun m!555519 () Bool)

(assert (=> b!576478 m!555519))

(assert (=> b!576478 m!555519))

(declare-fun m!555521 () Bool)

(assert (=> b!576478 m!555521))

(declare-fun m!555523 () Bool)

(assert (=> b!576484 m!555523))

(assert (=> b!576479 m!555523))

(assert (=> b!576483 m!555523))

(assert (=> b!576380 d!85295))

(declare-fun b!576486 () Bool)

(declare-fun e!331656 () Bool)

(declare-fun lt!263754 () SeekEntryResult!5707)

(assert (=> b!576486 (= e!331656 (bvsge (x!53973 lt!263754) #b01111111111111111111111111111110))))

(declare-fun e!331654 () SeekEntryResult!5707)

(declare-fun b!576487 () Bool)

(assert (=> b!576487 (= e!331654 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!263693 #b00000000000000000000000000000000 mask!3119) (select (arr!17251 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!85307 () Bool)

(assert (=> d!85307 e!331656))

(declare-fun c!66200 () Bool)

(assert (=> d!85307 (= c!66200 (and ((_ is Intermediate!5707) lt!263754) (undefined!6519 lt!263754)))))

(declare-fun e!331652 () SeekEntryResult!5707)

(assert (=> d!85307 (= lt!263754 e!331652)))

(declare-fun c!66199 () Bool)

(assert (=> d!85307 (= c!66199 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!263755 () (_ BitVec 64))

(assert (=> d!85307 (= lt!263755 (select (arr!17251 a!3118) lt!263693))))

(assert (=> d!85307 (validMask!0 mask!3119)))

(assert (=> d!85307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263693 (select (arr!17251 a!3118) j!142) a!3118 mask!3119) lt!263754)))

(declare-fun b!576488 () Bool)

(assert (=> b!576488 (and (bvsge (index!25057 lt!263754) #b00000000000000000000000000000000) (bvslt (index!25057 lt!263754) (size!17615 a!3118)))))

(declare-fun e!331653 () Bool)

(assert (=> b!576488 (= e!331653 (= (select (arr!17251 a!3118) (index!25057 lt!263754)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!576489 () Bool)

(assert (=> b!576489 (= e!331652 e!331654)))

(declare-fun c!66198 () Bool)

(assert (=> b!576489 (= c!66198 (or (= lt!263755 (select (arr!17251 a!3118) j!142)) (= (bvadd lt!263755 lt!263755) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!576490 () Bool)

(declare-fun e!331655 () Bool)

(assert (=> b!576490 (= e!331656 e!331655)))

(declare-fun res!364821 () Bool)

(assert (=> b!576490 (= res!364821 (and ((_ is Intermediate!5707) lt!263754) (not (undefined!6519 lt!263754)) (bvslt (x!53973 lt!263754) #b01111111111111111111111111111110) (bvsge (x!53973 lt!263754) #b00000000000000000000000000000000) (bvsge (x!53973 lt!263754) #b00000000000000000000000000000000)))))

(assert (=> b!576490 (=> (not res!364821) (not e!331655))))

(declare-fun b!576491 () Bool)

(assert (=> b!576491 (= e!331654 (Intermediate!5707 false lt!263693 #b00000000000000000000000000000000))))

(declare-fun b!576492 () Bool)

(assert (=> b!576492 (and (bvsge (index!25057 lt!263754) #b00000000000000000000000000000000) (bvslt (index!25057 lt!263754) (size!17615 a!3118)))))

(declare-fun res!364822 () Bool)

(assert (=> b!576492 (= res!364822 (= (select (arr!17251 a!3118) (index!25057 lt!263754)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!576492 (=> res!364822 e!331653)))

(declare-fun b!576493 () Bool)

(assert (=> b!576493 (and (bvsge (index!25057 lt!263754) #b00000000000000000000000000000000) (bvslt (index!25057 lt!263754) (size!17615 a!3118)))))

(declare-fun res!364823 () Bool)

(assert (=> b!576493 (= res!364823 (= (select (arr!17251 a!3118) (index!25057 lt!263754)) (select (arr!17251 a!3118) j!142)))))

(assert (=> b!576493 (=> res!364823 e!331653)))

(assert (=> b!576493 (= e!331655 e!331653)))

(declare-fun b!576494 () Bool)

(assert (=> b!576494 (= e!331652 (Intermediate!5707 true lt!263693 #b00000000000000000000000000000000))))

(assert (= (and d!85307 c!66199) b!576494))

(assert (= (and d!85307 (not c!66199)) b!576489))

(assert (= (and b!576489 c!66198) b!576491))

(assert (= (and b!576489 (not c!66198)) b!576487))

(assert (= (and d!85307 c!66200) b!576486))

(assert (= (and d!85307 (not c!66200)) b!576490))

(assert (= (and b!576490 res!364821) b!576493))

(assert (= (and b!576493 (not res!364823)) b!576492))

(assert (= (and b!576492 (not res!364822)) b!576488))

(declare-fun m!555525 () Bool)

(assert (=> d!85307 m!555525))

(assert (=> d!85307 m!555433))

(declare-fun m!555527 () Bool)

(assert (=> b!576487 m!555527))

(assert (=> b!576487 m!555527))

(assert (=> b!576487 m!555407))

(declare-fun m!555529 () Bool)

(assert (=> b!576487 m!555529))

(declare-fun m!555531 () Bool)

(assert (=> b!576493 m!555531))

(assert (=> b!576488 m!555531))

(assert (=> b!576492 m!555531))

(assert (=> b!576380 d!85307))

(declare-fun d!85309 () Bool)

(declare-fun lt!263761 () (_ BitVec 32))

(declare-fun lt!263760 () (_ BitVec 32))

(assert (=> d!85309 (= lt!263761 (bvmul (bvxor lt!263760 (bvlshr lt!263760 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85309 (= lt!263760 ((_ extract 31 0) (bvand (bvxor lt!263692 (bvlshr lt!263692 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85309 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!364824 (let ((h!12424 ((_ extract 31 0) (bvand (bvxor lt!263692 (bvlshr lt!263692 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53976 (bvmul (bvxor h!12424 (bvlshr h!12424 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53976 (bvlshr x!53976 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!364824 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!364824 #b00000000000000000000000000000000))))))

(assert (=> d!85309 (= (toIndex!0 lt!263692 mask!3119) (bvand (bvxor lt!263761 (bvlshr lt!263761 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!576380 d!85309))

(declare-fun d!85311 () Bool)

(declare-fun lt!263763 () (_ BitVec 32))

(declare-fun lt!263762 () (_ BitVec 32))

(assert (=> d!85311 (= lt!263763 (bvmul (bvxor lt!263762 (bvlshr lt!263762 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85311 (= lt!263762 ((_ extract 31 0) (bvand (bvxor (select (arr!17251 a!3118) j!142) (bvlshr (select (arr!17251 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85311 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!364824 (let ((h!12424 ((_ extract 31 0) (bvand (bvxor (select (arr!17251 a!3118) j!142) (bvlshr (select (arr!17251 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53976 (bvmul (bvxor h!12424 (bvlshr h!12424 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53976 (bvlshr x!53976 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!364824 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!364824 #b00000000000000000000000000000000))))))

(assert (=> d!85311 (= (toIndex!0 (select (arr!17251 a!3118) j!142) mask!3119) (bvand (bvxor lt!263763 (bvlshr lt!263763 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!576380 d!85311))

(declare-fun d!85313 () Bool)

(assert (=> d!85313 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52906 d!85313))

(declare-fun d!85319 () Bool)

(assert (=> d!85319 (= (array_inv!13025 a!3118) (bvsge (size!17615 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52906 d!85319))

(declare-fun d!85321 () Bool)

(assert (=> d!85321 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!576386 d!85321))

(declare-fun b!576535 () Bool)

(declare-fun c!66220 () Bool)

(declare-fun lt!263785 () (_ BitVec 64))

(assert (=> b!576535 (= c!66220 (= lt!263785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331678 () SeekEntryResult!5707)

(declare-fun e!331679 () SeekEntryResult!5707)

(assert (=> b!576535 (= e!331678 e!331679)))

(declare-fun b!576536 () Bool)

(declare-fun lt!263786 () SeekEntryResult!5707)

(assert (=> b!576536 (= e!331679 (MissingZero!5707 (index!25057 lt!263786)))))

(declare-fun b!576537 () Bool)

(assert (=> b!576537 (= e!331679 (seekKeyOrZeroReturnVacant!0 (x!53973 lt!263786) (index!25057 lt!263786) (index!25057 lt!263786) k0!1914 a!3118 mask!3119))))

(declare-fun b!576538 () Bool)

(declare-fun e!331680 () SeekEntryResult!5707)

(assert (=> b!576538 (= e!331680 Undefined!5707)))

(declare-fun b!576539 () Bool)

(assert (=> b!576539 (= e!331680 e!331678)))

(assert (=> b!576539 (= lt!263785 (select (arr!17251 a!3118) (index!25057 lt!263786)))))

(declare-fun c!66221 () Bool)

(assert (=> b!576539 (= c!66221 (= lt!263785 k0!1914))))

(declare-fun b!576540 () Bool)

(assert (=> b!576540 (= e!331678 (Found!5707 (index!25057 lt!263786)))))

(declare-fun d!85323 () Bool)

(declare-fun lt!263787 () SeekEntryResult!5707)

(assert (=> d!85323 (and (or ((_ is Undefined!5707) lt!263787) (not ((_ is Found!5707) lt!263787)) (and (bvsge (index!25056 lt!263787) #b00000000000000000000000000000000) (bvslt (index!25056 lt!263787) (size!17615 a!3118)))) (or ((_ is Undefined!5707) lt!263787) ((_ is Found!5707) lt!263787) (not ((_ is MissingZero!5707) lt!263787)) (and (bvsge (index!25055 lt!263787) #b00000000000000000000000000000000) (bvslt (index!25055 lt!263787) (size!17615 a!3118)))) (or ((_ is Undefined!5707) lt!263787) ((_ is Found!5707) lt!263787) ((_ is MissingZero!5707) lt!263787) (not ((_ is MissingVacant!5707) lt!263787)) (and (bvsge (index!25058 lt!263787) #b00000000000000000000000000000000) (bvslt (index!25058 lt!263787) (size!17615 a!3118)))) (or ((_ is Undefined!5707) lt!263787) (ite ((_ is Found!5707) lt!263787) (= (select (arr!17251 a!3118) (index!25056 lt!263787)) k0!1914) (ite ((_ is MissingZero!5707) lt!263787) (= (select (arr!17251 a!3118) (index!25055 lt!263787)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5707) lt!263787) (= (select (arr!17251 a!3118) (index!25058 lt!263787)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85323 (= lt!263787 e!331680)))

(declare-fun c!66222 () Bool)

(assert (=> d!85323 (= c!66222 (and ((_ is Intermediate!5707) lt!263786) (undefined!6519 lt!263786)))))

(assert (=> d!85323 (= lt!263786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!85323 (validMask!0 mask!3119)))

(assert (=> d!85323 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!263787)))

(assert (= (and d!85323 c!66222) b!576538))

(assert (= (and d!85323 (not c!66222)) b!576539))

(assert (= (and b!576539 c!66221) b!576540))

(assert (= (and b!576539 (not c!66221)) b!576535))

(assert (= (and b!576535 c!66220) b!576536))

(assert (= (and b!576535 (not c!66220)) b!576537))

(declare-fun m!555563 () Bool)

(assert (=> b!576537 m!555563))

(declare-fun m!555565 () Bool)

(assert (=> b!576539 m!555565))

(declare-fun m!555567 () Bool)

(assert (=> d!85323 m!555567))

(declare-fun m!555569 () Bool)

(assert (=> d!85323 m!555569))

(assert (=> d!85323 m!555567))

(declare-fun m!555571 () Bool)

(assert (=> d!85323 m!555571))

(declare-fun m!555573 () Bool)

(assert (=> d!85323 m!555573))

(assert (=> d!85323 m!555433))

(declare-fun m!555579 () Bool)

(assert (=> d!85323 m!555579))

(assert (=> b!576384 d!85323))

(declare-fun d!85327 () Bool)

(declare-fun res!364843 () Bool)

(declare-fun e!331705 () Bool)

(assert (=> d!85327 (=> res!364843 e!331705)))

(assert (=> d!85327 (= res!364843 (bvsge #b00000000000000000000000000000000 (size!17615 a!3118)))))

(assert (=> d!85327 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11381) e!331705)))

(declare-fun b!576571 () Bool)

(declare-fun e!331703 () Bool)

(declare-fun call!32739 () Bool)

(assert (=> b!576571 (= e!331703 call!32739)))

(declare-fun b!576572 () Bool)

(declare-fun e!331704 () Bool)

(declare-fun contains!2900 (List!11384 (_ BitVec 64)) Bool)

(assert (=> b!576572 (= e!331704 (contains!2900 Nil!11381 (select (arr!17251 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32736 () Bool)

(declare-fun c!66231 () Bool)

(assert (=> bm!32736 (= call!32739 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66231 (Cons!11380 (select (arr!17251 a!3118) #b00000000000000000000000000000000) Nil!11381) Nil!11381)))))

(declare-fun b!576573 () Bool)

(declare-fun e!331706 () Bool)

(assert (=> b!576573 (= e!331706 e!331703)))

(assert (=> b!576573 (= c!66231 (validKeyInArray!0 (select (arr!17251 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!576574 () Bool)

(assert (=> b!576574 (= e!331705 e!331706)))

(declare-fun res!364842 () Bool)

(assert (=> b!576574 (=> (not res!364842) (not e!331706))))

(assert (=> b!576574 (= res!364842 (not e!331704))))

(declare-fun res!364841 () Bool)

(assert (=> b!576574 (=> (not res!364841) (not e!331704))))

(assert (=> b!576574 (= res!364841 (validKeyInArray!0 (select (arr!17251 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!576575 () Bool)

(assert (=> b!576575 (= e!331703 call!32739)))

(assert (= (and d!85327 (not res!364843)) b!576574))

(assert (= (and b!576574 res!364841) b!576572))

(assert (= (and b!576574 res!364842) b!576573))

(assert (= (and b!576573 c!66231) b!576575))

(assert (= (and b!576573 (not c!66231)) b!576571))

(assert (= (or b!576575 b!576571) bm!32736))

(declare-fun m!555601 () Bool)

(assert (=> b!576572 m!555601))

(assert (=> b!576572 m!555601))

(declare-fun m!555603 () Bool)

(assert (=> b!576572 m!555603))

(assert (=> bm!32736 m!555601))

(declare-fun m!555605 () Bool)

(assert (=> bm!32736 m!555605))

(assert (=> b!576573 m!555601))

(assert (=> b!576573 m!555601))

(declare-fun m!555609 () Bool)

(assert (=> b!576573 m!555609))

(assert (=> b!576574 m!555601))

(assert (=> b!576574 m!555601))

(assert (=> b!576574 m!555609))

(assert (=> b!576379 d!85327))

(declare-fun bm!32740 () Bool)

(declare-fun call!32743 () Bool)

(assert (=> bm!32740 (= call!32743 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!576589 () Bool)

(declare-fun e!331717 () Bool)

(declare-fun e!331718 () Bool)

(assert (=> b!576589 (= e!331717 e!331718)))

(declare-fun lt!263807 () (_ BitVec 64))

(assert (=> b!576589 (= lt!263807 (select (arr!17251 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!263808 () Unit!18116)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35948 (_ BitVec 64) (_ BitVec 32)) Unit!18116)

(assert (=> b!576589 (= lt!263808 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!263807 #b00000000000000000000000000000000))))

(assert (=> b!576589 (arrayContainsKey!0 a!3118 lt!263807 #b00000000000000000000000000000000)))

(declare-fun lt!263806 () Unit!18116)

(assert (=> b!576589 (= lt!263806 lt!263808)))

(declare-fun res!364851 () Bool)

(assert (=> b!576589 (= res!364851 (= (seekEntryOrOpen!0 (select (arr!17251 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5707 #b00000000000000000000000000000000)))))

(assert (=> b!576589 (=> (not res!364851) (not e!331718))))

(declare-fun d!85339 () Bool)

(declare-fun res!364852 () Bool)

(declare-fun e!331719 () Bool)

(assert (=> d!85339 (=> res!364852 e!331719)))

(assert (=> d!85339 (= res!364852 (bvsge #b00000000000000000000000000000000 (size!17615 a!3118)))))

(assert (=> d!85339 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!331719)))

(declare-fun b!576590 () Bool)

(assert (=> b!576590 (= e!331719 e!331717)))

(declare-fun c!66235 () Bool)

(assert (=> b!576590 (= c!66235 (validKeyInArray!0 (select (arr!17251 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!576591 () Bool)

(assert (=> b!576591 (= e!331718 call!32743)))

(declare-fun b!576592 () Bool)

(assert (=> b!576592 (= e!331717 call!32743)))

(assert (= (and d!85339 (not res!364852)) b!576590))

(assert (= (and b!576590 c!66235) b!576589))

(assert (= (and b!576590 (not c!66235)) b!576592))

(assert (= (and b!576589 res!364851) b!576591))

(assert (= (or b!576591 b!576592) bm!32740))

(declare-fun m!555613 () Bool)

(assert (=> bm!32740 m!555613))

(assert (=> b!576589 m!555601))

(declare-fun m!555615 () Bool)

(assert (=> b!576589 m!555615))

(declare-fun m!555617 () Bool)

(assert (=> b!576589 m!555617))

(assert (=> b!576589 m!555601))

(declare-fun m!555619 () Bool)

(assert (=> b!576589 m!555619))

(assert (=> b!576590 m!555601))

(assert (=> b!576590 m!555601))

(assert (=> b!576590 m!555609))

(assert (=> b!576377 d!85339))

(declare-fun d!85343 () Bool)

(declare-fun res!364857 () Bool)

(declare-fun e!331730 () Bool)

(assert (=> d!85343 (=> res!364857 e!331730)))

(assert (=> d!85343 (= res!364857 (= (select (arr!17251 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!85343 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!331730)))

(declare-fun b!576609 () Bool)

(declare-fun e!331731 () Bool)

(assert (=> b!576609 (= e!331730 e!331731)))

(declare-fun res!364858 () Bool)

(assert (=> b!576609 (=> (not res!364858) (not e!331731))))

(assert (=> b!576609 (= res!364858 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17615 a!3118)))))

(declare-fun b!576610 () Bool)

(assert (=> b!576610 (= e!331731 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85343 (not res!364857)) b!576609))

(assert (= (and b!576609 res!364858) b!576610))

(assert (=> d!85343 m!555601))

(declare-fun m!555635 () Bool)

(assert (=> b!576610 m!555635))

(assert (=> b!576383 d!85343))

(declare-fun b!576611 () Bool)

(declare-fun c!66242 () Bool)

(declare-fun lt!263815 () (_ BitVec 64))

(assert (=> b!576611 (= c!66242 (= lt!263815 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331732 () SeekEntryResult!5707)

(declare-fun e!331733 () SeekEntryResult!5707)

(assert (=> b!576611 (= e!331732 e!331733)))

(declare-fun b!576612 () Bool)

(declare-fun lt!263816 () SeekEntryResult!5707)

(assert (=> b!576612 (= e!331733 (MissingZero!5707 (index!25057 lt!263816)))))

(declare-fun b!576613 () Bool)

(assert (=> b!576613 (= e!331733 (seekKeyOrZeroReturnVacant!0 (x!53973 lt!263816) (index!25057 lt!263816) (index!25057 lt!263816) (select (arr!17251 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!576614 () Bool)

(declare-fun e!331734 () SeekEntryResult!5707)

(assert (=> b!576614 (= e!331734 Undefined!5707)))

(declare-fun b!576615 () Bool)

(assert (=> b!576615 (= e!331734 e!331732)))

(assert (=> b!576615 (= lt!263815 (select (arr!17251 a!3118) (index!25057 lt!263816)))))

(declare-fun c!66243 () Bool)

(assert (=> b!576615 (= c!66243 (= lt!263815 (select (arr!17251 a!3118) j!142)))))

(declare-fun b!576616 () Bool)

(assert (=> b!576616 (= e!331732 (Found!5707 (index!25057 lt!263816)))))

(declare-fun d!85351 () Bool)

(declare-fun lt!263817 () SeekEntryResult!5707)

(assert (=> d!85351 (and (or ((_ is Undefined!5707) lt!263817) (not ((_ is Found!5707) lt!263817)) (and (bvsge (index!25056 lt!263817) #b00000000000000000000000000000000) (bvslt (index!25056 lt!263817) (size!17615 a!3118)))) (or ((_ is Undefined!5707) lt!263817) ((_ is Found!5707) lt!263817) (not ((_ is MissingZero!5707) lt!263817)) (and (bvsge (index!25055 lt!263817) #b00000000000000000000000000000000) (bvslt (index!25055 lt!263817) (size!17615 a!3118)))) (or ((_ is Undefined!5707) lt!263817) ((_ is Found!5707) lt!263817) ((_ is MissingZero!5707) lt!263817) (not ((_ is MissingVacant!5707) lt!263817)) (and (bvsge (index!25058 lt!263817) #b00000000000000000000000000000000) (bvslt (index!25058 lt!263817) (size!17615 a!3118)))) (or ((_ is Undefined!5707) lt!263817) (ite ((_ is Found!5707) lt!263817) (= (select (arr!17251 a!3118) (index!25056 lt!263817)) (select (arr!17251 a!3118) j!142)) (ite ((_ is MissingZero!5707) lt!263817) (= (select (arr!17251 a!3118) (index!25055 lt!263817)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5707) lt!263817) (= (select (arr!17251 a!3118) (index!25058 lt!263817)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85351 (= lt!263817 e!331734)))

(declare-fun c!66244 () Bool)

(assert (=> d!85351 (= c!66244 (and ((_ is Intermediate!5707) lt!263816) (undefined!6519 lt!263816)))))

(assert (=> d!85351 (= lt!263816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17251 a!3118) j!142) mask!3119) (select (arr!17251 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!85351 (validMask!0 mask!3119)))

(assert (=> d!85351 (= (seekEntryOrOpen!0 (select (arr!17251 a!3118) j!142) a!3118 mask!3119) lt!263817)))

(assert (= (and d!85351 c!66244) b!576614))

(assert (= (and d!85351 (not c!66244)) b!576615))

(assert (= (and b!576615 c!66243) b!576616))

(assert (= (and b!576615 (not c!66243)) b!576611))

(assert (= (and b!576611 c!66242) b!576612))

(assert (= (and b!576611 (not c!66242)) b!576613))

(assert (=> b!576613 m!555407))

(declare-fun m!555649 () Bool)

(assert (=> b!576613 m!555649))

(declare-fun m!555651 () Bool)

(assert (=> b!576615 m!555651))

(assert (=> d!85351 m!555417))

(assert (=> d!85351 m!555407))

(declare-fun m!555653 () Bool)

(assert (=> d!85351 m!555653))

(assert (=> d!85351 m!555407))

(assert (=> d!85351 m!555417))

(declare-fun m!555655 () Bool)

(assert (=> d!85351 m!555655))

(declare-fun m!555657 () Bool)

(assert (=> d!85351 m!555657))

(assert (=> d!85351 m!555433))

(declare-fun m!555659 () Bool)

(assert (=> d!85351 m!555659))

(assert (=> b!576378 d!85351))

(declare-fun call!32744 () Bool)

(declare-fun bm!32741 () Bool)

(assert (=> bm!32741 (= call!32744 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!576617 () Bool)

(declare-fun e!331735 () Bool)

(declare-fun e!331736 () Bool)

(assert (=> b!576617 (= e!331735 e!331736)))

(declare-fun lt!263819 () (_ BitVec 64))

(assert (=> b!576617 (= lt!263819 (select (arr!17251 a!3118) j!142))))

(declare-fun lt!263820 () Unit!18116)

(assert (=> b!576617 (= lt!263820 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!263819 j!142))))

(assert (=> b!576617 (arrayContainsKey!0 a!3118 lt!263819 #b00000000000000000000000000000000)))

(declare-fun lt!263818 () Unit!18116)

(assert (=> b!576617 (= lt!263818 lt!263820)))

(declare-fun res!364859 () Bool)

(assert (=> b!576617 (= res!364859 (= (seekEntryOrOpen!0 (select (arr!17251 a!3118) j!142) a!3118 mask!3119) (Found!5707 j!142)))))

(assert (=> b!576617 (=> (not res!364859) (not e!331736))))

(declare-fun d!85357 () Bool)

(declare-fun res!364860 () Bool)

(declare-fun e!331737 () Bool)

(assert (=> d!85357 (=> res!364860 e!331737)))

(assert (=> d!85357 (= res!364860 (bvsge j!142 (size!17615 a!3118)))))

(assert (=> d!85357 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!331737)))

(declare-fun b!576618 () Bool)

(assert (=> b!576618 (= e!331737 e!331735)))

(declare-fun c!66245 () Bool)

(assert (=> b!576618 (= c!66245 (validKeyInArray!0 (select (arr!17251 a!3118) j!142)))))

(declare-fun b!576619 () Bool)

(assert (=> b!576619 (= e!331736 call!32744)))

(declare-fun b!576620 () Bool)

(assert (=> b!576620 (= e!331735 call!32744)))

(assert (= (and d!85357 (not res!364860)) b!576618))

(assert (= (and b!576618 c!66245) b!576617))

(assert (= (and b!576618 (not c!66245)) b!576620))

(assert (= (and b!576617 res!364859) b!576619))

(assert (= (or b!576619 b!576620) bm!32741))

(declare-fun m!555661 () Bool)

(assert (=> bm!32741 m!555661))

(assert (=> b!576617 m!555407))

(declare-fun m!555663 () Bool)

(assert (=> b!576617 m!555663))

(declare-fun m!555665 () Bool)

(assert (=> b!576617 m!555665))

(assert (=> b!576617 m!555407))

(assert (=> b!576617 m!555437))

(assert (=> b!576618 m!555407))

(assert (=> b!576618 m!555407))

(assert (=> b!576618 m!555429))

(assert (=> b!576378 d!85357))

(declare-fun d!85359 () Bool)

(assert (=> d!85359 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!263827 () Unit!18116)

(declare-fun choose!38 (array!35948 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18116)

(assert (=> d!85359 (= lt!263827 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!85359 (validMask!0 mask!3119)))

(assert (=> d!85359 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!263827)))

(declare-fun bs!17816 () Bool)

(assert (= bs!17816 d!85359))

(assert (=> bs!17816 m!555439))

(declare-fun m!555667 () Bool)

(assert (=> bs!17816 m!555667))

(assert (=> bs!17816 m!555433))

(assert (=> b!576378 d!85359))

(check-sat (not bm!32736) (not bm!32741) (not d!85295) (not b!576617) (not b!576478) (not b!576618) (not b!576613) (not b!576590) (not b!576589) (not b!576537) (not b!576574) (not bm!32740) (not d!85307) (not d!85359) (not d!85323) (not d!85351) (not b!576487) (not d!85291) (not b!576610) (not b!576431) (not b!576572) (not b!576573))
(check-sat)
