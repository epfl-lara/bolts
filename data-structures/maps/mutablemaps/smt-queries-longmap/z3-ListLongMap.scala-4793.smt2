; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65838 () Bool)

(assert start!65838)

(declare-fun b!757574 () Bool)

(declare-fun res!512512 () Bool)

(declare-fun e!422411 () Bool)

(assert (=> b!757574 (=> (not res!512512) (not e!422411))))

(declare-fun e!422418 () Bool)

(assert (=> b!757574 (= res!512512 e!422418)))

(declare-fun c!82919 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757574 (= c!82919 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757575 () Bool)

(declare-fun res!512497 () Bool)

(declare-fun e!422408 () Bool)

(assert (=> b!757575 (=> (not res!512497) (not e!422408))))

(declare-datatypes ((array!41964 0))(
  ( (array!41965 (arr!20092 (Array (_ BitVec 32) (_ BitVec 64))) (size!20513 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41964)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41964 (_ BitVec 32)) Bool)

(assert (=> b!757575 (= res!512497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757576 () Bool)

(declare-fun e!422414 () Bool)

(declare-fun e!422409 () Bool)

(assert (=> b!757576 (= e!422414 e!422409)))

(declare-fun res!512507 () Bool)

(assert (=> b!757576 (=> res!512507 e!422409)))

(declare-datatypes ((SeekEntryResult!7699 0))(
  ( (MissingZero!7699 (index!33163 (_ BitVec 32))) (Found!7699 (index!33164 (_ BitVec 32))) (Intermediate!7699 (undefined!8511 Bool) (index!33165 (_ BitVec 32)) (x!64082 (_ BitVec 32))) (Undefined!7699) (MissingVacant!7699 (index!33166 (_ BitVec 32))) )
))
(declare-fun lt!337409 () SeekEntryResult!7699)

(declare-fun lt!337410 () SeekEntryResult!7699)

(assert (=> b!757576 (= res!512507 (not (= lt!337409 lt!337410)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41964 (_ BitVec 32)) SeekEntryResult!7699)

(assert (=> b!757576 (= lt!337409 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20092 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757577 () Bool)

(assert (=> b!757577 (= e!422408 e!422411)))

(declare-fun res!512508 () Bool)

(assert (=> b!757577 (=> (not res!512508) (not e!422411))))

(declare-fun lt!337408 () SeekEntryResult!7699)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41964 (_ BitVec 32)) SeekEntryResult!7699)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757577 (= res!512508 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20092 a!3186) j!159) mask!3328) (select (arr!20092 a!3186) j!159) a!3186 mask!3328) lt!337408))))

(assert (=> b!757577 (= lt!337408 (Intermediate!7699 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757578 () Bool)

(declare-fun res!512509 () Bool)

(declare-fun e!422407 () Bool)

(assert (=> b!757578 (=> (not res!512509) (not e!422407))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757578 (= res!512509 (and (= (size!20513 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20513 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20513 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757579 () Bool)

(declare-fun e!422410 () Bool)

(assert (=> b!757579 (= e!422411 e!422410)))

(declare-fun res!512506 () Bool)

(assert (=> b!757579 (=> (not res!512506) (not e!422410))))

(declare-fun lt!337416 () SeekEntryResult!7699)

(declare-fun lt!337418 () SeekEntryResult!7699)

(assert (=> b!757579 (= res!512506 (= lt!337416 lt!337418))))

(declare-fun lt!337415 () (_ BitVec 64))

(declare-fun lt!337417 () array!41964)

(assert (=> b!757579 (= lt!337418 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337415 lt!337417 mask!3328))))

(assert (=> b!757579 (= lt!337416 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337415 mask!3328) lt!337415 lt!337417 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!757579 (= lt!337415 (select (store (arr!20092 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!757579 (= lt!337417 (array!41965 (store (arr!20092 a!3186) i!1173 k0!2102) (size!20513 a!3186)))))

(declare-fun b!757580 () Bool)

(assert (=> b!757580 (= e!422407 e!422408)))

(declare-fun res!512514 () Bool)

(assert (=> b!757580 (=> (not res!512514) (not e!422408))))

(declare-fun lt!337411 () SeekEntryResult!7699)

(assert (=> b!757580 (= res!512514 (or (= lt!337411 (MissingZero!7699 i!1173)) (= lt!337411 (MissingVacant!7699 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41964 (_ BitVec 32)) SeekEntryResult!7699)

(assert (=> b!757580 (= lt!337411 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!757581 () Bool)

(assert (=> b!757581 (= e!422418 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20092 a!3186) j!159) a!3186 mask!3328) (Found!7699 j!159)))))

(declare-fun b!757582 () Bool)

(declare-datatypes ((Unit!26198 0))(
  ( (Unit!26199) )
))
(declare-fun e!422413 () Unit!26198)

(declare-fun Unit!26200 () Unit!26198)

(assert (=> b!757582 (= e!422413 Unit!26200)))

(declare-fun b!757583 () Bool)

(assert (=> b!757583 (= e!422418 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20092 a!3186) j!159) a!3186 mask!3328) lt!337408))))

(declare-fun b!757584 () Bool)

(declare-fun res!512499 () Bool)

(assert (=> b!757584 (=> (not res!512499) (not e!422411))))

(assert (=> b!757584 (= res!512499 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20092 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757573 () Bool)

(declare-fun res!512496 () Bool)

(assert (=> b!757573 (=> (not res!512496) (not e!422407))))

(declare-fun arrayContainsKey!0 (array!41964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757573 (= res!512496 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!512498 () Bool)

(assert (=> start!65838 (=> (not res!512498) (not e!422407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65838 (= res!512498 (validMask!0 mask!3328))))

(assert (=> start!65838 e!422407))

(assert (=> start!65838 true))

(declare-fun array_inv!15866 (array!41964) Bool)

(assert (=> start!65838 (array_inv!15866 a!3186)))

(declare-fun b!757585 () Bool)

(declare-fun e!422417 () Bool)

(declare-fun lt!337412 () SeekEntryResult!7699)

(assert (=> b!757585 (= e!422417 (= lt!337412 lt!337409))))

(declare-fun b!757586 () Bool)

(declare-fun e!422415 () Bool)

(assert (=> b!757586 (= e!422415 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20092 a!3186) j!159) a!3186 mask!3328) lt!337410))))

(declare-fun b!757587 () Bool)

(declare-fun Unit!26201 () Unit!26198)

(assert (=> b!757587 (= e!422413 Unit!26201)))

(assert (=> b!757587 false))

(declare-fun b!757588 () Bool)

(declare-fun e!422416 () Bool)

(assert (=> b!757588 (= e!422409 e!422416)))

(declare-fun res!512511 () Bool)

(assert (=> b!757588 (=> res!512511 e!422416)))

(declare-fun lt!337413 () (_ BitVec 64))

(assert (=> b!757588 (= res!512511 (= lt!337413 lt!337415))))

(assert (=> b!757588 (= lt!337413 (select (store (arr!20092 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!757589 () Bool)

(declare-fun res!512502 () Bool)

(assert (=> b!757589 (=> (not res!512502) (not e!422408))))

(declare-datatypes ((List!14147 0))(
  ( (Nil!14144) (Cons!14143 (h!15215 (_ BitVec 64)) (t!20470 List!14147)) )
))
(declare-fun arrayNoDuplicates!0 (array!41964 (_ BitVec 32) List!14147) Bool)

(assert (=> b!757589 (= res!512502 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14144))))

(declare-fun b!757590 () Bool)

(assert (=> b!757590 (= e!422416 true)))

(assert (=> b!757590 e!422417))

(declare-fun res!512503 () Bool)

(assert (=> b!757590 (=> (not res!512503) (not e!422417))))

(assert (=> b!757590 (= res!512503 (= lt!337413 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337407 () Unit!26198)

(assert (=> b!757590 (= lt!337407 e!422413)))

(declare-fun c!82920 () Bool)

(assert (=> b!757590 (= c!82920 (= lt!337413 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757591 () Bool)

(declare-fun res!512501 () Bool)

(assert (=> b!757591 (=> (not res!512501) (not e!422407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757591 (= res!512501 (validKeyInArray!0 k0!2102))))

(declare-fun b!757592 () Bool)

(declare-fun res!512500 () Bool)

(assert (=> b!757592 (=> (not res!512500) (not e!422408))))

(assert (=> b!757592 (= res!512500 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20513 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20513 a!3186))))))

(declare-fun b!757593 () Bool)

(declare-fun res!512504 () Bool)

(assert (=> b!757593 (=> (not res!512504) (not e!422407))))

(assert (=> b!757593 (= res!512504 (validKeyInArray!0 (select (arr!20092 a!3186) j!159)))))

(declare-fun b!757594 () Bool)

(assert (=> b!757594 (= e!422410 (not e!422414))))

(declare-fun res!512510 () Bool)

(assert (=> b!757594 (=> res!512510 e!422414)))

(get-info :version)

(assert (=> b!757594 (= res!512510 (or (not ((_ is Intermediate!7699) lt!337418)) (bvslt x!1131 (x!64082 lt!337418)) (not (= x!1131 (x!64082 lt!337418))) (not (= index!1321 (index!33165 lt!337418)))))))

(assert (=> b!757594 e!422415))

(declare-fun res!512505 () Bool)

(assert (=> b!757594 (=> (not res!512505) (not e!422415))))

(assert (=> b!757594 (= res!512505 (= lt!337412 lt!337410))))

(assert (=> b!757594 (= lt!337410 (Found!7699 j!159))))

(assert (=> b!757594 (= lt!337412 (seekEntryOrOpen!0 (select (arr!20092 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757594 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337414 () Unit!26198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41964 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26198)

(assert (=> b!757594 (= lt!337414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757595 () Bool)

(declare-fun res!512513 () Bool)

(assert (=> b!757595 (=> (not res!512513) (not e!422417))))

(assert (=> b!757595 (= res!512513 (= (seekEntryOrOpen!0 lt!337415 lt!337417 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337415 lt!337417 mask!3328)))))

(assert (= (and start!65838 res!512498) b!757578))

(assert (= (and b!757578 res!512509) b!757593))

(assert (= (and b!757593 res!512504) b!757591))

(assert (= (and b!757591 res!512501) b!757573))

(assert (= (and b!757573 res!512496) b!757580))

(assert (= (and b!757580 res!512514) b!757575))

(assert (= (and b!757575 res!512497) b!757589))

(assert (= (and b!757589 res!512502) b!757592))

(assert (= (and b!757592 res!512500) b!757577))

(assert (= (and b!757577 res!512508) b!757584))

(assert (= (and b!757584 res!512499) b!757574))

(assert (= (and b!757574 c!82919) b!757583))

(assert (= (and b!757574 (not c!82919)) b!757581))

(assert (= (and b!757574 res!512512) b!757579))

(assert (= (and b!757579 res!512506) b!757594))

(assert (= (and b!757594 res!512505) b!757586))

(assert (= (and b!757594 (not res!512510)) b!757576))

(assert (= (and b!757576 (not res!512507)) b!757588))

(assert (= (and b!757588 (not res!512511)) b!757590))

(assert (= (and b!757590 c!82920) b!757587))

(assert (= (and b!757590 (not c!82920)) b!757582))

(assert (= (and b!757590 res!512503) b!757595))

(assert (= (and b!757595 res!512513) b!757585))

(declare-fun m!705317 () Bool)

(assert (=> start!65838 m!705317))

(declare-fun m!705319 () Bool)

(assert (=> start!65838 m!705319))

(declare-fun m!705321 () Bool)

(assert (=> b!757589 m!705321))

(declare-fun m!705323 () Bool)

(assert (=> b!757586 m!705323))

(assert (=> b!757586 m!705323))

(declare-fun m!705325 () Bool)

(assert (=> b!757586 m!705325))

(declare-fun m!705327 () Bool)

(assert (=> b!757580 m!705327))

(declare-fun m!705329 () Bool)

(assert (=> b!757573 m!705329))

(assert (=> b!757593 m!705323))

(assert (=> b!757593 m!705323))

(declare-fun m!705331 () Bool)

(assert (=> b!757593 m!705331))

(declare-fun m!705333 () Bool)

(assert (=> b!757584 m!705333))

(declare-fun m!705335 () Bool)

(assert (=> b!757579 m!705335))

(declare-fun m!705337 () Bool)

(assert (=> b!757579 m!705337))

(declare-fun m!705339 () Bool)

(assert (=> b!757579 m!705339))

(assert (=> b!757579 m!705337))

(declare-fun m!705341 () Bool)

(assert (=> b!757579 m!705341))

(declare-fun m!705343 () Bool)

(assert (=> b!757579 m!705343))

(declare-fun m!705345 () Bool)

(assert (=> b!757575 m!705345))

(assert (=> b!757583 m!705323))

(assert (=> b!757583 m!705323))

(declare-fun m!705347 () Bool)

(assert (=> b!757583 m!705347))

(assert (=> b!757576 m!705323))

(assert (=> b!757576 m!705323))

(declare-fun m!705349 () Bool)

(assert (=> b!757576 m!705349))

(assert (=> b!757594 m!705323))

(assert (=> b!757594 m!705323))

(declare-fun m!705351 () Bool)

(assert (=> b!757594 m!705351))

(declare-fun m!705353 () Bool)

(assert (=> b!757594 m!705353))

(declare-fun m!705355 () Bool)

(assert (=> b!757594 m!705355))

(assert (=> b!757581 m!705323))

(assert (=> b!757581 m!705323))

(assert (=> b!757581 m!705349))

(assert (=> b!757577 m!705323))

(assert (=> b!757577 m!705323))

(declare-fun m!705357 () Bool)

(assert (=> b!757577 m!705357))

(assert (=> b!757577 m!705357))

(assert (=> b!757577 m!705323))

(declare-fun m!705359 () Bool)

(assert (=> b!757577 m!705359))

(assert (=> b!757588 m!705335))

(declare-fun m!705361 () Bool)

(assert (=> b!757588 m!705361))

(declare-fun m!705363 () Bool)

(assert (=> b!757591 m!705363))

(declare-fun m!705365 () Bool)

(assert (=> b!757595 m!705365))

(declare-fun m!705367 () Bool)

(assert (=> b!757595 m!705367))

(check-sat (not b!757580) (not b!757591) (not b!757577) (not b!757573) (not b!757576) (not b!757593) (not start!65838) (not b!757575) (not b!757581) (not b!757586) (not b!757589) (not b!757583) (not b!757579) (not b!757594) (not b!757595))
(check-sat)
