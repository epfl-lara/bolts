; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67180 () Bool)

(assert start!67180)

(declare-fun b!776263 () Bool)

(declare-fun e!431997 () Bool)

(declare-fun e!432000 () Bool)

(assert (=> b!776263 (= e!431997 e!432000)))

(declare-fun res!525238 () Bool)

(assert (=> b!776263 (=> (not res!525238) (not e!432000))))

(declare-datatypes ((array!42490 0))(
  ( (array!42491 (arr!20337 (Array (_ BitVec 32) (_ BitVec 64))) (size!20758 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42490)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7944 0))(
  ( (MissingZero!7944 (index!34143 (_ BitVec 32))) (Found!7944 (index!34144 (_ BitVec 32))) (Intermediate!7944 (undefined!8756 Bool) (index!34145 (_ BitVec 32)) (x!65112 (_ BitVec 32))) (Undefined!7944) (MissingVacant!7944 (index!34146 (_ BitVec 32))) )
))
(declare-fun lt!345865 () SeekEntryResult!7944)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42490 (_ BitVec 32)) SeekEntryResult!7944)

(assert (=> b!776263 (= res!525238 (= (seekEntryOrOpen!0 (select (arr!20337 a!3186) j!159) a!3186 mask!3328) lt!345865))))

(assert (=> b!776263 (= lt!345865 (Found!7944 j!159))))

(declare-fun b!776264 () Bool)

(declare-fun res!525245 () Bool)

(declare-fun e!431995 () Bool)

(assert (=> b!776264 (=> (not res!525245) (not e!431995))))

(declare-datatypes ((List!14392 0))(
  ( (Nil!14389) (Cons!14388 (h!15496 (_ BitVec 64)) (t!20715 List!14392)) )
))
(declare-fun arrayNoDuplicates!0 (array!42490 (_ BitVec 32) List!14392) Bool)

(assert (=> b!776264 (= res!525245 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14389))))

(declare-fun b!776265 () Bool)

(declare-fun res!525247 () Bool)

(assert (=> b!776265 (=> (not res!525247) (not e!431995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42490 (_ BitVec 32)) Bool)

(assert (=> b!776265 (= res!525247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776266 () Bool)

(declare-fun res!525243 () Bool)

(declare-fun e!431998 () Bool)

(assert (=> b!776266 (=> (not res!525243) (not e!431998))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776266 (= res!525243 (validKeyInArray!0 k!2102))))

(declare-fun b!776267 () Bool)

(assert (=> b!776267 (= e!431998 e!431995)))

(declare-fun res!525236 () Bool)

(assert (=> b!776267 (=> (not res!525236) (not e!431995))))

(declare-fun lt!345863 () SeekEntryResult!7944)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776267 (= res!525236 (or (= lt!345863 (MissingZero!7944 i!1173)) (= lt!345863 (MissingVacant!7944 i!1173))))))

(assert (=> b!776267 (= lt!345863 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!776268 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42490 (_ BitVec 32)) SeekEntryResult!7944)

(assert (=> b!776268 (= e!432000 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20337 a!3186) j!159) a!3186 mask!3328) lt!345865))))

(declare-fun b!776269 () Bool)

(declare-fun res!525249 () Bool)

(assert (=> b!776269 (=> (not res!525249) (not e!431995))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!776269 (= res!525249 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20758 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20758 a!3186))))))

(declare-fun b!776271 () Bool)

(declare-fun res!525248 () Bool)

(assert (=> b!776271 (=> (not res!525248) (not e!431998))))

(assert (=> b!776271 (= res!525248 (validKeyInArray!0 (select (arr!20337 a!3186) j!159)))))

(declare-fun b!776272 () Bool)

(declare-fun e!431996 () Bool)

(assert (=> b!776272 (= e!431996 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20337 a!3186) j!159) a!3186 mask!3328) (Found!7944 j!159)))))

(declare-fun b!776273 () Bool)

(declare-fun e!431994 () Bool)

(assert (=> b!776273 (= e!431995 e!431994)))

(declare-fun res!525246 () Bool)

(assert (=> b!776273 (=> (not res!525246) (not e!431994))))

(declare-fun lt!345868 () SeekEntryResult!7944)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42490 (_ BitVec 32)) SeekEntryResult!7944)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776273 (= res!525246 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20337 a!3186) j!159) mask!3328) (select (arr!20337 a!3186) j!159) a!3186 mask!3328) lt!345868))))

(assert (=> b!776273 (= lt!345868 (Intermediate!7944 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776274 () Bool)

(assert (=> b!776274 (= e!431996 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20337 a!3186) j!159) a!3186 mask!3328) lt!345868))))

(declare-fun b!776275 () Bool)

(declare-fun res!525235 () Bool)

(assert (=> b!776275 (=> (not res!525235) (not e!431994))))

(assert (=> b!776275 (= res!525235 e!431996)))

(declare-fun c!85914 () Bool)

(assert (=> b!776275 (= c!85914 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776276 () Bool)

(declare-fun res!525241 () Bool)

(assert (=> b!776276 (=> (not res!525241) (not e!431998))))

(assert (=> b!776276 (= res!525241 (and (= (size!20758 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20758 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20758 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776270 () Bool)

(declare-fun res!525240 () Bool)

(assert (=> b!776270 (=> (not res!525240) (not e!431998))))

(declare-fun arrayContainsKey!0 (array!42490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776270 (= res!525240 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!525239 () Bool)

(assert (=> start!67180 (=> (not res!525239) (not e!431998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67180 (= res!525239 (validMask!0 mask!3328))))

(assert (=> start!67180 e!431998))

(assert (=> start!67180 true))

(declare-fun array_inv!16111 (array!42490) Bool)

(assert (=> start!67180 (array_inv!16111 a!3186)))

(declare-fun b!776277 () Bool)

(declare-fun e!432001 () Bool)

(declare-fun e!431993 () Bool)

(assert (=> b!776277 (= e!432001 (not e!431993))))

(declare-fun res!525244 () Bool)

(assert (=> b!776277 (=> res!525244 e!431993)))

(declare-fun lt!345864 () SeekEntryResult!7944)

(assert (=> b!776277 (= res!525244 (or (not (is-Intermediate!7944 lt!345864)) (bvslt x!1131 (x!65112 lt!345864)) (not (= x!1131 (x!65112 lt!345864))) (not (= index!1321 (index!34145 lt!345864)))))))

(assert (=> b!776277 e!431997))

(declare-fun res!525242 () Bool)

(assert (=> b!776277 (=> (not res!525242) (not e!431997))))

(assert (=> b!776277 (= res!525242 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26782 0))(
  ( (Unit!26783) )
))
(declare-fun lt!345870 () Unit!26782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26782)

(assert (=> b!776277 (= lt!345870 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776278 () Bool)

(assert (=> b!776278 (= e!431994 e!432001)))

(declare-fun res!525237 () Bool)

(assert (=> b!776278 (=> (not res!525237) (not e!432001))))

(declare-fun lt!345867 () SeekEntryResult!7944)

(assert (=> b!776278 (= res!525237 (= lt!345867 lt!345864))))

(declare-fun lt!345871 () (_ BitVec 64))

(declare-fun lt!345866 () array!42490)

(assert (=> b!776278 (= lt!345864 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345871 lt!345866 mask!3328))))

(assert (=> b!776278 (= lt!345867 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345871 mask!3328) lt!345871 lt!345866 mask!3328))))

(assert (=> b!776278 (= lt!345871 (select (store (arr!20337 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776278 (= lt!345866 (array!42491 (store (arr!20337 a!3186) i!1173 k!2102) (size!20758 a!3186)))))

(declare-fun b!776279 () Bool)

(declare-fun res!525250 () Bool)

(assert (=> b!776279 (=> (not res!525250) (not e!431994))))

(assert (=> b!776279 (= res!525250 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20337 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776280 () Bool)

(assert (=> b!776280 (= e!431993 true)))

(declare-fun lt!345869 () SeekEntryResult!7944)

(assert (=> b!776280 (= lt!345869 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20337 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67180 res!525239) b!776276))

(assert (= (and b!776276 res!525241) b!776271))

(assert (= (and b!776271 res!525248) b!776266))

(assert (= (and b!776266 res!525243) b!776270))

(assert (= (and b!776270 res!525240) b!776267))

(assert (= (and b!776267 res!525236) b!776265))

(assert (= (and b!776265 res!525247) b!776264))

(assert (= (and b!776264 res!525245) b!776269))

(assert (= (and b!776269 res!525249) b!776273))

(assert (= (and b!776273 res!525246) b!776279))

(assert (= (and b!776279 res!525250) b!776275))

(assert (= (and b!776275 c!85914) b!776274))

(assert (= (and b!776275 (not c!85914)) b!776272))

(assert (= (and b!776275 res!525235) b!776278))

(assert (= (and b!776278 res!525237) b!776277))

(assert (= (and b!776277 res!525242) b!776263))

(assert (= (and b!776263 res!525238) b!776268))

(assert (= (and b!776277 (not res!525244)) b!776280))

(declare-fun m!720427 () Bool)

(assert (=> b!776264 m!720427))

(declare-fun m!720429 () Bool)

(assert (=> b!776278 m!720429))

(declare-fun m!720431 () Bool)

(assert (=> b!776278 m!720431))

(declare-fun m!720433 () Bool)

(assert (=> b!776278 m!720433))

(declare-fun m!720435 () Bool)

(assert (=> b!776278 m!720435))

(declare-fun m!720437 () Bool)

(assert (=> b!776278 m!720437))

(assert (=> b!776278 m!720435))

(declare-fun m!720439 () Bool)

(assert (=> b!776263 m!720439))

(assert (=> b!776263 m!720439))

(declare-fun m!720441 () Bool)

(assert (=> b!776263 m!720441))

(assert (=> b!776280 m!720439))

(assert (=> b!776280 m!720439))

(declare-fun m!720443 () Bool)

(assert (=> b!776280 m!720443))

(declare-fun m!720445 () Bool)

(assert (=> b!776277 m!720445))

(declare-fun m!720447 () Bool)

(assert (=> b!776277 m!720447))

(declare-fun m!720449 () Bool)

(assert (=> start!67180 m!720449))

(declare-fun m!720451 () Bool)

(assert (=> start!67180 m!720451))

(assert (=> b!776274 m!720439))

(assert (=> b!776274 m!720439))

(declare-fun m!720453 () Bool)

(assert (=> b!776274 m!720453))

(declare-fun m!720455 () Bool)

(assert (=> b!776279 m!720455))

(declare-fun m!720457 () Bool)

(assert (=> b!776265 m!720457))

(declare-fun m!720459 () Bool)

(assert (=> b!776267 m!720459))

(declare-fun m!720461 () Bool)

(assert (=> b!776270 m!720461))

(assert (=> b!776271 m!720439))

(assert (=> b!776271 m!720439))

(declare-fun m!720463 () Bool)

(assert (=> b!776271 m!720463))

(assert (=> b!776268 m!720439))

(assert (=> b!776268 m!720439))

(declare-fun m!720465 () Bool)

(assert (=> b!776268 m!720465))

(assert (=> b!776273 m!720439))

(assert (=> b!776273 m!720439))

(declare-fun m!720467 () Bool)

(assert (=> b!776273 m!720467))

(assert (=> b!776273 m!720467))

(assert (=> b!776273 m!720439))

(declare-fun m!720469 () Bool)

(assert (=> b!776273 m!720469))

(declare-fun m!720471 () Bool)

(assert (=> b!776266 m!720471))

(assert (=> b!776272 m!720439))

(assert (=> b!776272 m!720439))

(assert (=> b!776272 m!720443))

(push 1)

