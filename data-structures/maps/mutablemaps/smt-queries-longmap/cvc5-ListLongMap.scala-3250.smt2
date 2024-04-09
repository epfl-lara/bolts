; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45382 () Bool)

(assert start!45382)

(declare-fun b!498138 () Bool)

(declare-fun res!300403 () Bool)

(declare-fun e!291977 () Bool)

(assert (=> b!498138 (=> (not res!300403) (not e!291977))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498138 (= res!300403 (validKeyInArray!0 k!2280))))

(declare-fun b!498139 () Bool)

(declare-fun e!291976 () Bool)

(declare-fun e!291974 () Bool)

(assert (=> b!498139 (= e!291976 e!291974)))

(declare-fun res!300400 () Bool)

(assert (=> b!498139 (=> res!300400 e!291974)))

(declare-datatypes ((SeekEntryResult!3936 0))(
  ( (MissingZero!3936 (index!17926 (_ BitVec 32))) (Found!3936 (index!17927 (_ BitVec 32))) (Intermediate!3936 (undefined!4748 Bool) (index!17928 (_ BitVec 32)) (x!47008 (_ BitVec 32))) (Undefined!3936) (MissingVacant!3936 (index!17929 (_ BitVec 32))) )
))
(declare-fun lt!225675 () SeekEntryResult!3936)

(declare-fun lt!225680 () (_ BitVec 32))

(declare-datatypes ((array!32167 0))(
  ( (array!32168 (arr!15462 (Array (_ BitVec 32) (_ BitVec 64))) (size!15826 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32167)

(assert (=> b!498139 (= res!300400 (or (bvsgt #b00000000000000000000000000000000 (x!47008 lt!225675)) (bvsgt (x!47008 lt!225675) #b01111111111111111111111111111110) (bvslt lt!225680 #b00000000000000000000000000000000) (bvsge lt!225680 (size!15826 a!3235)) (bvslt (index!17928 lt!225675) #b00000000000000000000000000000000) (bvsge (index!17928 lt!225675) (size!15826 a!3235)) (not (= lt!225675 (Intermediate!3936 false (index!17928 lt!225675) (x!47008 lt!225675))))))))

(assert (=> b!498139 (and (or (= (select (arr!15462 a!3235) (index!17928 lt!225675)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15462 a!3235) (index!17928 lt!225675)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15462 a!3235) (index!17928 lt!225675)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15462 a!3235) (index!17928 lt!225675)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14834 0))(
  ( (Unit!14835) )
))
(declare-fun lt!225678 () Unit!14834)

(declare-fun e!291972 () Unit!14834)

(assert (=> b!498139 (= lt!225678 e!291972)))

(declare-fun c!59147 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498139 (= c!59147 (= (select (arr!15462 a!3235) (index!17928 lt!225675)) (select (arr!15462 a!3235) j!176)))))

(assert (=> b!498139 (and (bvslt (x!47008 lt!225675) #b01111111111111111111111111111110) (or (= (select (arr!15462 a!3235) (index!17928 lt!225675)) (select (arr!15462 a!3235) j!176)) (= (select (arr!15462 a!3235) (index!17928 lt!225675)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15462 a!3235) (index!17928 lt!225675)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498140 () Bool)

(declare-fun res!300408 () Bool)

(assert (=> b!498140 (=> res!300408 e!291976)))

(assert (=> b!498140 (= res!300408 (or (undefined!4748 lt!225675) (not (is-Intermediate!3936 lt!225675))))))

(declare-fun b!498141 () Bool)

(declare-fun Unit!14836 () Unit!14834)

(assert (=> b!498141 (= e!291972 Unit!14836)))

(declare-fun b!498142 () Bool)

(declare-fun res!300402 () Bool)

(assert (=> b!498142 (=> (not res!300402) (not e!291977))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498142 (= res!300402 (and (= (size!15826 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15826 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15826 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498143 () Bool)

(declare-fun res!300398 () Bool)

(declare-fun e!291979 () Bool)

(assert (=> b!498143 (=> (not res!300398) (not e!291979))))

(declare-datatypes ((List!9673 0))(
  ( (Nil!9670) (Cons!9669 (h!10543 (_ BitVec 64)) (t!15909 List!9673)) )
))
(declare-fun arrayNoDuplicates!0 (array!32167 (_ BitVec 32) List!9673) Bool)

(assert (=> b!498143 (= res!300398 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9670))))

(declare-fun b!498144 () Bool)

(assert (=> b!498144 (= e!291977 e!291979)))

(declare-fun res!300407 () Bool)

(assert (=> b!498144 (=> (not res!300407) (not e!291979))))

(declare-fun lt!225671 () SeekEntryResult!3936)

(assert (=> b!498144 (= res!300407 (or (= lt!225671 (MissingZero!3936 i!1204)) (= lt!225671 (MissingVacant!3936 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32167 (_ BitVec 32)) SeekEntryResult!3936)

(assert (=> b!498144 (= lt!225671 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498145 () Bool)

(assert (=> b!498145 (= e!291979 (not e!291976))))

(declare-fun res!300405 () Bool)

(assert (=> b!498145 (=> res!300405 e!291976)))

(declare-fun lt!225676 () (_ BitVec 32))

(declare-fun lt!225673 () array!32167)

(declare-fun lt!225672 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32167 (_ BitVec 32)) SeekEntryResult!3936)

(assert (=> b!498145 (= res!300405 (= lt!225675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225676 lt!225672 lt!225673 mask!3524)))))

(assert (=> b!498145 (= lt!225675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225680 (select (arr!15462 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498145 (= lt!225676 (toIndex!0 lt!225672 mask!3524))))

(assert (=> b!498145 (= lt!225672 (select (store (arr!15462 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498145 (= lt!225680 (toIndex!0 (select (arr!15462 a!3235) j!176) mask!3524))))

(assert (=> b!498145 (= lt!225673 (array!32168 (store (arr!15462 a!3235) i!1204 k!2280) (size!15826 a!3235)))))

(declare-fun e!291978 () Bool)

(assert (=> b!498145 e!291978))

(declare-fun res!300399 () Bool)

(assert (=> b!498145 (=> (not res!300399) (not e!291978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32167 (_ BitVec 32)) Bool)

(assert (=> b!498145 (= res!300399 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225677 () Unit!14834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14834)

(assert (=> b!498145 (= lt!225677 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!300409 () Bool)

(assert (=> start!45382 (=> (not res!300409) (not e!291977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45382 (= res!300409 (validMask!0 mask!3524))))

(assert (=> start!45382 e!291977))

(assert (=> start!45382 true))

(declare-fun array_inv!11236 (array!32167) Bool)

(assert (=> start!45382 (array_inv!11236 a!3235)))

(declare-fun b!498146 () Bool)

(declare-fun Unit!14837 () Unit!14834)

(assert (=> b!498146 (= e!291972 Unit!14837)))

(declare-fun lt!225674 () Unit!14834)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32167 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14834)

(assert (=> b!498146 (= lt!225674 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225680 #b00000000000000000000000000000000 (index!17928 lt!225675) (x!47008 lt!225675) mask!3524))))

(declare-fun res!300401 () Bool)

(assert (=> b!498146 (= res!300401 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225680 lt!225672 lt!225673 mask!3524) (Intermediate!3936 false (index!17928 lt!225675) (x!47008 lt!225675))))))

(declare-fun e!291973 () Bool)

(assert (=> b!498146 (=> (not res!300401) (not e!291973))))

(assert (=> b!498146 e!291973))

(declare-fun b!498147 () Bool)

(declare-fun res!300410 () Bool)

(assert (=> b!498147 (=> (not res!300410) (not e!291979))))

(assert (=> b!498147 (= res!300410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498148 () Bool)

(assert (=> b!498148 (= e!291973 false)))

(declare-fun b!498149 () Bool)

(declare-fun res!300406 () Bool)

(assert (=> b!498149 (=> (not res!300406) (not e!291977))))

(declare-fun arrayContainsKey!0 (array!32167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498149 (= res!300406 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498150 () Bool)

(declare-fun res!300404 () Bool)

(assert (=> b!498150 (=> (not res!300404) (not e!291977))))

(assert (=> b!498150 (= res!300404 (validKeyInArray!0 (select (arr!15462 a!3235) j!176)))))

(declare-fun b!498151 () Bool)

(assert (=> b!498151 (= e!291974 true)))

(declare-fun lt!225679 () SeekEntryResult!3936)

(assert (=> b!498151 (= lt!225679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225680 lt!225672 lt!225673 mask!3524))))

(declare-fun b!498152 () Bool)

(assert (=> b!498152 (= e!291978 (= (seekEntryOrOpen!0 (select (arr!15462 a!3235) j!176) a!3235 mask!3524) (Found!3936 j!176)))))

(assert (= (and start!45382 res!300409) b!498142))

(assert (= (and b!498142 res!300402) b!498150))

(assert (= (and b!498150 res!300404) b!498138))

(assert (= (and b!498138 res!300403) b!498149))

(assert (= (and b!498149 res!300406) b!498144))

(assert (= (and b!498144 res!300407) b!498147))

(assert (= (and b!498147 res!300410) b!498143))

(assert (= (and b!498143 res!300398) b!498145))

(assert (= (and b!498145 res!300399) b!498152))

(assert (= (and b!498145 (not res!300405)) b!498140))

(assert (= (and b!498140 (not res!300408)) b!498139))

(assert (= (and b!498139 c!59147) b!498146))

(assert (= (and b!498139 (not c!59147)) b!498141))

(assert (= (and b!498146 res!300401) b!498148))

(assert (= (and b!498139 (not res!300400)) b!498151))

(declare-fun m!479449 () Bool)

(assert (=> b!498146 m!479449))

(declare-fun m!479451 () Bool)

(assert (=> b!498146 m!479451))

(declare-fun m!479453 () Bool)

(assert (=> b!498150 m!479453))

(assert (=> b!498150 m!479453))

(declare-fun m!479455 () Bool)

(assert (=> b!498150 m!479455))

(assert (=> b!498151 m!479451))

(declare-fun m!479457 () Bool)

(assert (=> b!498149 m!479457))

(declare-fun m!479459 () Bool)

(assert (=> b!498143 m!479459))

(declare-fun m!479461 () Bool)

(assert (=> b!498138 m!479461))

(declare-fun m!479463 () Bool)

(assert (=> b!498139 m!479463))

(assert (=> b!498139 m!479453))

(declare-fun m!479465 () Bool)

(assert (=> start!45382 m!479465))

(declare-fun m!479467 () Bool)

(assert (=> start!45382 m!479467))

(declare-fun m!479469 () Bool)

(assert (=> b!498144 m!479469))

(declare-fun m!479471 () Bool)

(assert (=> b!498145 m!479471))

(declare-fun m!479473 () Bool)

(assert (=> b!498145 m!479473))

(declare-fun m!479475 () Bool)

(assert (=> b!498145 m!479475))

(assert (=> b!498145 m!479453))

(declare-fun m!479477 () Bool)

(assert (=> b!498145 m!479477))

(declare-fun m!479479 () Bool)

(assert (=> b!498145 m!479479))

(assert (=> b!498145 m!479453))

(declare-fun m!479481 () Bool)

(assert (=> b!498145 m!479481))

(assert (=> b!498145 m!479453))

(declare-fun m!479483 () Bool)

(assert (=> b!498145 m!479483))

(declare-fun m!479485 () Bool)

(assert (=> b!498145 m!479485))

(assert (=> b!498152 m!479453))

(assert (=> b!498152 m!479453))

(declare-fun m!479487 () Bool)

(assert (=> b!498152 m!479487))

(declare-fun m!479489 () Bool)

(assert (=> b!498147 m!479489))

(push 1)

