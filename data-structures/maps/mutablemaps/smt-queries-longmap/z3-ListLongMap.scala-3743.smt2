; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51472 () Bool)

(assert start!51472)

(declare-fun b!562335 () Bool)

(declare-fun e!324084 () Bool)

(declare-fun e!324083 () Bool)

(assert (=> b!562335 (= e!324084 e!324083)))

(declare-fun res!353640 () Bool)

(assert (=> b!562335 (=> (not res!353640) (not e!324083))))

(declare-datatypes ((SeekEntryResult!5398 0))(
  ( (MissingZero!5398 (index!23819 (_ BitVec 32))) (Found!5398 (index!23820 (_ BitVec 32))) (Intermediate!5398 (undefined!6210 Bool) (index!23821 (_ BitVec 32)) (x!52744 (_ BitVec 32))) (Undefined!5398) (MissingVacant!5398 (index!23822 (_ BitVec 32))) )
))
(declare-fun lt!256312 () SeekEntryResult!5398)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562335 (= res!353640 (or (= lt!256312 (MissingZero!5398 i!1132)) (= lt!256312 (MissingVacant!5398 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35291 0))(
  ( (array!35292 (arr!16942 (Array (_ BitVec 32) (_ BitVec 64))) (size!17306 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35291)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35291 (_ BitVec 32)) SeekEntryResult!5398)

(assert (=> b!562335 (= lt!256312 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562336 () Bool)

(declare-fun e!324079 () Bool)

(declare-fun e!324082 () Bool)

(assert (=> b!562336 (= e!324079 (not e!324082))))

(declare-fun res!353637 () Bool)

(assert (=> b!562336 (=> res!353637 e!324082)))

(declare-fun lt!256319 () SeekEntryResult!5398)

(get-info :version)

(assert (=> b!562336 (= res!353637 (or (undefined!6210 lt!256319) (not ((_ is Intermediate!5398) lt!256319))))))

(declare-fun lt!256313 () SeekEntryResult!5398)

(declare-fun lt!256308 () SeekEntryResult!5398)

(assert (=> b!562336 (= lt!256313 lt!256308)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!562336 (= lt!256308 (Found!5398 j!142))))

(assert (=> b!562336 (= lt!256313 (seekEntryOrOpen!0 (select (arr!16942 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35291 (_ BitVec 32)) Bool)

(assert (=> b!562336 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17570 0))(
  ( (Unit!17571) )
))
(declare-fun lt!256310 () Unit!17570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17570)

(assert (=> b!562336 (= lt!256310 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562338 () Bool)

(declare-fun res!353642 () Bool)

(assert (=> b!562338 (=> (not res!353642) (not e!324083))))

(assert (=> b!562338 (= res!353642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562339 () Bool)

(declare-fun e!324080 () Bool)

(declare-fun e!324085 () Bool)

(assert (=> b!562339 (= e!324080 e!324085)))

(declare-fun res!353648 () Bool)

(assert (=> b!562339 (=> res!353648 e!324085)))

(declare-fun lt!256307 () SeekEntryResult!5398)

(declare-fun lt!256317 () (_ BitVec 64))

(assert (=> b!562339 (= res!353648 (or (bvslt (index!23821 lt!256319) #b00000000000000000000000000000000) (bvsge (index!23821 lt!256319) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52744 lt!256319) #b01111111111111111111111111111110) (bvslt (x!52744 lt!256319) #b00000000000000000000000000000000) (not (= lt!256317 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16942 a!3118) i!1132 k0!1914) (index!23821 lt!256319)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256307 lt!256308))))))

(declare-fun lt!256306 () SeekEntryResult!5398)

(declare-fun lt!256318 () SeekEntryResult!5398)

(assert (=> b!562339 (= lt!256306 lt!256318)))

(declare-fun lt!256316 () array!35291)

(declare-fun lt!256309 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35291 (_ BitVec 32)) SeekEntryResult!5398)

(assert (=> b!562339 (= lt!256318 (seekKeyOrZeroReturnVacant!0 (x!52744 lt!256319) (index!23821 lt!256319) (index!23821 lt!256319) lt!256309 lt!256316 mask!3119))))

(assert (=> b!562339 (= lt!256306 (seekEntryOrOpen!0 lt!256309 lt!256316 mask!3119))))

(assert (=> b!562339 (= lt!256313 lt!256307)))

(assert (=> b!562339 (= lt!256307 (seekKeyOrZeroReturnVacant!0 (x!52744 lt!256319) (index!23821 lt!256319) (index!23821 lt!256319) (select (arr!16942 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562340 () Bool)

(declare-fun res!353643 () Bool)

(assert (=> b!562340 (=> (not res!353643) (not e!324083))))

(declare-datatypes ((List!11075 0))(
  ( (Nil!11072) (Cons!11071 (h!12074 (_ BitVec 64)) (t!17311 List!11075)) )
))
(declare-fun arrayNoDuplicates!0 (array!35291 (_ BitVec 32) List!11075) Bool)

(assert (=> b!562340 (= res!353643 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11072))))

(declare-fun b!562341 () Bool)

(assert (=> b!562341 (= e!324082 e!324080)))

(declare-fun res!353644 () Bool)

(assert (=> b!562341 (=> res!353644 e!324080)))

(assert (=> b!562341 (= res!353644 (or (= lt!256317 (select (arr!16942 a!3118) j!142)) (= lt!256317 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562341 (= lt!256317 (select (arr!16942 a!3118) (index!23821 lt!256319)))))

(declare-fun b!562342 () Bool)

(assert (=> b!562342 (= e!324083 e!324079)))

(declare-fun res!353646 () Bool)

(assert (=> b!562342 (=> (not res!353646) (not e!324079))))

(declare-fun lt!256315 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35291 (_ BitVec 32)) SeekEntryResult!5398)

(assert (=> b!562342 (= res!353646 (= lt!256319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256315 lt!256309 lt!256316 mask!3119)))))

(declare-fun lt!256311 () (_ BitVec 32))

(assert (=> b!562342 (= lt!256319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256311 (select (arr!16942 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562342 (= lt!256315 (toIndex!0 lt!256309 mask!3119))))

(assert (=> b!562342 (= lt!256309 (select (store (arr!16942 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562342 (= lt!256311 (toIndex!0 (select (arr!16942 a!3118) j!142) mask!3119))))

(assert (=> b!562342 (= lt!256316 (array!35292 (store (arr!16942 a!3118) i!1132 k0!1914) (size!17306 a!3118)))))

(declare-fun b!562343 () Bool)

(declare-fun res!353638 () Bool)

(assert (=> b!562343 (=> (not res!353638) (not e!324084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562343 (= res!353638 (validKeyInArray!0 (select (arr!16942 a!3118) j!142)))))

(declare-fun b!562344 () Bool)

(assert (=> b!562344 (= e!324085 (bvsge mask!3119 #b00000000000000000000000000000000))))

(assert (=> b!562344 (= lt!256307 lt!256318)))

(declare-fun lt!256314 () Unit!17570)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17570)

(assert (=> b!562344 (= lt!256314 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!52744 lt!256319) (index!23821 lt!256319) (index!23821 lt!256319) mask!3119))))

(declare-fun res!353645 () Bool)

(assert (=> start!51472 (=> (not res!353645) (not e!324084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51472 (= res!353645 (validMask!0 mask!3119))))

(assert (=> start!51472 e!324084))

(assert (=> start!51472 true))

(declare-fun array_inv!12716 (array!35291) Bool)

(assert (=> start!51472 (array_inv!12716 a!3118)))

(declare-fun b!562337 () Bool)

(declare-fun res!353639 () Bool)

(assert (=> b!562337 (=> (not res!353639) (not e!324084))))

(assert (=> b!562337 (= res!353639 (and (= (size!17306 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17306 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17306 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562345 () Bool)

(declare-fun res!353641 () Bool)

(assert (=> b!562345 (=> (not res!353641) (not e!324084))))

(assert (=> b!562345 (= res!353641 (validKeyInArray!0 k0!1914))))

(declare-fun b!562346 () Bool)

(declare-fun res!353647 () Bool)

(assert (=> b!562346 (=> (not res!353647) (not e!324084))))

(declare-fun arrayContainsKey!0 (array!35291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562346 (= res!353647 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51472 res!353645) b!562337))

(assert (= (and b!562337 res!353639) b!562343))

(assert (= (and b!562343 res!353638) b!562345))

(assert (= (and b!562345 res!353641) b!562346))

(assert (= (and b!562346 res!353647) b!562335))

(assert (= (and b!562335 res!353640) b!562338))

(assert (= (and b!562338 res!353642) b!562340))

(assert (= (and b!562340 res!353643) b!562342))

(assert (= (and b!562342 res!353646) b!562336))

(assert (= (and b!562336 (not res!353637)) b!562341))

(assert (= (and b!562341 (not res!353644)) b!562339))

(assert (= (and b!562339 (not res!353648)) b!562344))

(declare-fun m!540439 () Bool)

(assert (=> b!562345 m!540439))

(declare-fun m!540441 () Bool)

(assert (=> b!562344 m!540441))

(declare-fun m!540443 () Bool)

(assert (=> b!562346 m!540443))

(declare-fun m!540445 () Bool)

(assert (=> b!562341 m!540445))

(declare-fun m!540447 () Bool)

(assert (=> b!562341 m!540447))

(declare-fun m!540449 () Bool)

(assert (=> b!562335 m!540449))

(declare-fun m!540451 () Bool)

(assert (=> b!562338 m!540451))

(assert (=> b!562343 m!540445))

(assert (=> b!562343 m!540445))

(declare-fun m!540453 () Bool)

(assert (=> b!562343 m!540453))

(declare-fun m!540455 () Bool)

(assert (=> b!562340 m!540455))

(declare-fun m!540457 () Bool)

(assert (=> start!51472 m!540457))

(declare-fun m!540459 () Bool)

(assert (=> start!51472 m!540459))

(assert (=> b!562339 m!540445))

(declare-fun m!540461 () Bool)

(assert (=> b!562339 m!540461))

(assert (=> b!562339 m!540445))

(declare-fun m!540463 () Bool)

(assert (=> b!562339 m!540463))

(declare-fun m!540465 () Bool)

(assert (=> b!562339 m!540465))

(declare-fun m!540467 () Bool)

(assert (=> b!562339 m!540467))

(declare-fun m!540469 () Bool)

(assert (=> b!562339 m!540469))

(assert (=> b!562336 m!540445))

(assert (=> b!562336 m!540445))

(declare-fun m!540471 () Bool)

(assert (=> b!562336 m!540471))

(declare-fun m!540473 () Bool)

(assert (=> b!562336 m!540473))

(declare-fun m!540475 () Bool)

(assert (=> b!562336 m!540475))

(assert (=> b!562342 m!540445))

(declare-fun m!540477 () Bool)

(assert (=> b!562342 m!540477))

(declare-fun m!540479 () Bool)

(assert (=> b!562342 m!540479))

(declare-fun m!540481 () Bool)

(assert (=> b!562342 m!540481))

(assert (=> b!562342 m!540465))

(assert (=> b!562342 m!540445))

(declare-fun m!540483 () Bool)

(assert (=> b!562342 m!540483))

(declare-fun m!540485 () Bool)

(assert (=> b!562342 m!540485))

(assert (=> b!562342 m!540445))

(check-sat (not b!562340) (not b!562336) (not b!562339) (not b!562335) (not b!562344) (not b!562338) (not b!562345) (not start!51472) (not b!562342) (not b!562346) (not b!562343))
(check-sat)
