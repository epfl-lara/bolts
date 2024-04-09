; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65722 () Bool)

(assert start!65722)

(declare-fun b!753571 () Bool)

(declare-datatypes ((Unit!25966 0))(
  ( (Unit!25967) )
))
(declare-fun e!420326 () Unit!25966)

(declare-fun Unit!25968 () Unit!25966)

(assert (=> b!753571 (= e!420326 Unit!25968)))

(assert (=> b!753571 false))

(declare-fun b!753572 () Bool)

(declare-fun res!509195 () Bool)

(declare-fun e!420330 () Bool)

(assert (=> b!753572 (=> (not res!509195) (not e!420330))))

(declare-datatypes ((array!41848 0))(
  ( (array!41849 (arr!20034 (Array (_ BitVec 32) (_ BitVec 64))) (size!20455 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41848)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753572 (= res!509195 (validKeyInArray!0 (select (arr!20034 a!3186) j!159)))))

(declare-fun b!753573 () Bool)

(declare-fun res!509207 () Bool)

(declare-fun e!420327 () Bool)

(assert (=> b!753573 (=> (not res!509207) (not e!420327))))

(declare-fun e!420322 () Bool)

(assert (=> b!753573 (= res!509207 e!420322)))

(declare-fun c!82571 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753573 (= c!82571 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753574 () Bool)

(declare-fun res!509196 () Bool)

(declare-fun e!420321 () Bool)

(assert (=> b!753574 (=> (not res!509196) (not e!420321))))

(declare-fun lt!335327 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!335319 () array!41848)

(declare-datatypes ((SeekEntryResult!7641 0))(
  ( (MissingZero!7641 (index!32931 (_ BitVec 32))) (Found!7641 (index!32932 (_ BitVec 32))) (Intermediate!7641 (undefined!8453 Bool) (index!32933 (_ BitVec 32)) (x!63872 (_ BitVec 32))) (Undefined!7641) (MissingVacant!7641 (index!32934 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41848 (_ BitVec 32)) SeekEntryResult!7641)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41848 (_ BitVec 32)) SeekEntryResult!7641)

(assert (=> b!753574 (= res!509196 (= (seekEntryOrOpen!0 lt!335327 lt!335319 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335327 lt!335319 mask!3328)))))

(declare-fun b!753576 () Bool)

(declare-fun res!509205 () Bool)

(assert (=> b!753576 (=> (not res!509205) (not e!420330))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!753576 (= res!509205 (validKeyInArray!0 k!2102))))

(declare-fun b!753577 () Bool)

(declare-fun res!509194 () Bool)

(declare-fun e!420319 () Bool)

(assert (=> b!753577 (=> (not res!509194) (not e!420319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41848 (_ BitVec 32)) Bool)

(assert (=> b!753577 (= res!509194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753578 () Bool)

(declare-fun lt!335320 () SeekEntryResult!7641)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41848 (_ BitVec 32)) SeekEntryResult!7641)

(assert (=> b!753578 (= e!420322 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20034 a!3186) j!159) a!3186 mask!3328) lt!335320))))

(declare-fun b!753579 () Bool)

(declare-fun e!420320 () Bool)

(declare-fun e!420328 () Bool)

(assert (=> b!753579 (= e!420320 (not e!420328))))

(declare-fun res!509204 () Bool)

(assert (=> b!753579 (=> res!509204 e!420328)))

(declare-fun lt!335322 () SeekEntryResult!7641)

(assert (=> b!753579 (= res!509204 (or (not (is-Intermediate!7641 lt!335322)) (bvslt x!1131 (x!63872 lt!335322)) (not (= x!1131 (x!63872 lt!335322))) (not (= index!1321 (index!32933 lt!335322)))))))

(declare-fun e!420323 () Bool)

(assert (=> b!753579 e!420323))

(declare-fun res!509192 () Bool)

(assert (=> b!753579 (=> (not res!509192) (not e!420323))))

(declare-fun lt!335330 () SeekEntryResult!7641)

(declare-fun lt!335326 () SeekEntryResult!7641)

(assert (=> b!753579 (= res!509192 (= lt!335330 lt!335326))))

(assert (=> b!753579 (= lt!335326 (Found!7641 j!159))))

(assert (=> b!753579 (= lt!335330 (seekEntryOrOpen!0 (select (arr!20034 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!753579 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335329 () Unit!25966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25966)

(assert (=> b!753579 (= lt!335329 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753580 () Bool)

(declare-fun lt!335323 () SeekEntryResult!7641)

(assert (=> b!753580 (= e!420321 (= lt!335330 lt!335323))))

(declare-fun b!753581 () Bool)

(declare-fun res!509201 () Bool)

(assert (=> b!753581 (=> (not res!509201) (not e!420327))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753581 (= res!509201 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20034 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753582 () Bool)

(assert (=> b!753582 (= e!420323 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20034 a!3186) j!159) a!3186 mask!3328) lt!335326))))

(declare-fun b!753583 () Bool)

(assert (=> b!753583 (= e!420322 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20034 a!3186) j!159) a!3186 mask!3328) (Found!7641 j!159)))))

(declare-fun b!753584 () Bool)

(declare-fun e!420324 () Bool)

(assert (=> b!753584 (= e!420324 true)))

(assert (=> b!753584 e!420321))

(declare-fun res!509193 () Bool)

(assert (=> b!753584 (=> (not res!509193) (not e!420321))))

(declare-fun lt!335321 () (_ BitVec 64))

(assert (=> b!753584 (= res!509193 (= lt!335321 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335324 () Unit!25966)

(assert (=> b!753584 (= lt!335324 e!420326)))

(declare-fun c!82572 () Bool)

(assert (=> b!753584 (= c!82572 (= lt!335321 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753585 () Bool)

(declare-fun res!509191 () Bool)

(assert (=> b!753585 (=> (not res!509191) (not e!420319))))

(declare-datatypes ((List!14089 0))(
  ( (Nil!14086) (Cons!14085 (h!15157 (_ BitVec 64)) (t!20412 List!14089)) )
))
(declare-fun arrayNoDuplicates!0 (array!41848 (_ BitVec 32) List!14089) Bool)

(assert (=> b!753585 (= res!509191 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14086))))

(declare-fun b!753586 () Bool)

(declare-fun res!509202 () Bool)

(assert (=> b!753586 (=> (not res!509202) (not e!420330))))

(assert (=> b!753586 (= res!509202 (and (= (size!20455 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20455 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20455 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753587 () Bool)

(declare-fun res!509200 () Bool)

(assert (=> b!753587 (=> (not res!509200) (not e!420330))))

(declare-fun arrayContainsKey!0 (array!41848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753587 (= res!509200 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753588 () Bool)

(declare-fun e!420329 () Bool)

(assert (=> b!753588 (= e!420328 e!420329)))

(declare-fun res!509208 () Bool)

(assert (=> b!753588 (=> res!509208 e!420329)))

(assert (=> b!753588 (= res!509208 (not (= lt!335323 lt!335326)))))

(assert (=> b!753588 (= lt!335323 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20034 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753589 () Bool)

(assert (=> b!753589 (= e!420327 e!420320)))

(declare-fun res!509206 () Bool)

(assert (=> b!753589 (=> (not res!509206) (not e!420320))))

(declare-fun lt!335325 () SeekEntryResult!7641)

(assert (=> b!753589 (= res!509206 (= lt!335325 lt!335322))))

(assert (=> b!753589 (= lt!335322 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335327 lt!335319 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753589 (= lt!335325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335327 mask!3328) lt!335327 lt!335319 mask!3328))))

(assert (=> b!753589 (= lt!335327 (select (store (arr!20034 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753589 (= lt!335319 (array!41849 (store (arr!20034 a!3186) i!1173 k!2102) (size!20455 a!3186)))))

(declare-fun b!753590 () Bool)

(assert (=> b!753590 (= e!420330 e!420319)))

(declare-fun res!509199 () Bool)

(assert (=> b!753590 (=> (not res!509199) (not e!420319))))

(declare-fun lt!335328 () SeekEntryResult!7641)

(assert (=> b!753590 (= res!509199 (or (= lt!335328 (MissingZero!7641 i!1173)) (= lt!335328 (MissingVacant!7641 i!1173))))))

(assert (=> b!753590 (= lt!335328 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!753591 () Bool)

(assert (=> b!753591 (= e!420329 e!420324)))

(declare-fun res!509198 () Bool)

(assert (=> b!753591 (=> res!509198 e!420324)))

(assert (=> b!753591 (= res!509198 (= lt!335321 lt!335327))))

(assert (=> b!753591 (= lt!335321 (select (store (arr!20034 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!509203 () Bool)

(assert (=> start!65722 (=> (not res!509203) (not e!420330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65722 (= res!509203 (validMask!0 mask!3328))))

(assert (=> start!65722 e!420330))

(assert (=> start!65722 true))

(declare-fun array_inv!15808 (array!41848) Bool)

(assert (=> start!65722 (array_inv!15808 a!3186)))

(declare-fun b!753575 () Bool)

(declare-fun res!509190 () Bool)

(assert (=> b!753575 (=> (not res!509190) (not e!420319))))

(assert (=> b!753575 (= res!509190 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20455 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20455 a!3186))))))

(declare-fun b!753592 () Bool)

(declare-fun Unit!25969 () Unit!25966)

(assert (=> b!753592 (= e!420326 Unit!25969)))

(declare-fun b!753593 () Bool)

(assert (=> b!753593 (= e!420319 e!420327)))

(declare-fun res!509197 () Bool)

(assert (=> b!753593 (=> (not res!509197) (not e!420327))))

(assert (=> b!753593 (= res!509197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20034 a!3186) j!159) mask!3328) (select (arr!20034 a!3186) j!159) a!3186 mask!3328) lt!335320))))

(assert (=> b!753593 (= lt!335320 (Intermediate!7641 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65722 res!509203) b!753586))

(assert (= (and b!753586 res!509202) b!753572))

(assert (= (and b!753572 res!509195) b!753576))

(assert (= (and b!753576 res!509205) b!753587))

(assert (= (and b!753587 res!509200) b!753590))

(assert (= (and b!753590 res!509199) b!753577))

(assert (= (and b!753577 res!509194) b!753585))

(assert (= (and b!753585 res!509191) b!753575))

(assert (= (and b!753575 res!509190) b!753593))

(assert (= (and b!753593 res!509197) b!753581))

(assert (= (and b!753581 res!509201) b!753573))

(assert (= (and b!753573 c!82571) b!753578))

(assert (= (and b!753573 (not c!82571)) b!753583))

(assert (= (and b!753573 res!509207) b!753589))

(assert (= (and b!753589 res!509206) b!753579))

(assert (= (and b!753579 res!509192) b!753582))

(assert (= (and b!753579 (not res!509204)) b!753588))

(assert (= (and b!753588 (not res!509208)) b!753591))

(assert (= (and b!753591 (not res!509198)) b!753584))

(assert (= (and b!753584 c!82572) b!753571))

(assert (= (and b!753584 (not c!82572)) b!753592))

(assert (= (and b!753584 res!509193) b!753574))

(assert (= (and b!753574 res!509196) b!753580))

(declare-fun m!702301 () Bool)

(assert (=> b!753583 m!702301))

(assert (=> b!753583 m!702301))

(declare-fun m!702303 () Bool)

(assert (=> b!753583 m!702303))

(assert (=> b!753582 m!702301))

(assert (=> b!753582 m!702301))

(declare-fun m!702305 () Bool)

(assert (=> b!753582 m!702305))

(assert (=> b!753579 m!702301))

(assert (=> b!753579 m!702301))

(declare-fun m!702307 () Bool)

(assert (=> b!753579 m!702307))

(declare-fun m!702309 () Bool)

(assert (=> b!753579 m!702309))

(declare-fun m!702311 () Bool)

(assert (=> b!753579 m!702311))

(declare-fun m!702313 () Bool)

(assert (=> start!65722 m!702313))

(declare-fun m!702315 () Bool)

(assert (=> start!65722 m!702315))

(declare-fun m!702317 () Bool)

(assert (=> b!753577 m!702317))

(assert (=> b!753588 m!702301))

(assert (=> b!753588 m!702301))

(assert (=> b!753588 m!702303))

(declare-fun m!702319 () Bool)

(assert (=> b!753581 m!702319))

(declare-fun m!702321 () Bool)

(assert (=> b!753574 m!702321))

(declare-fun m!702323 () Bool)

(assert (=> b!753574 m!702323))

(declare-fun m!702325 () Bool)

(assert (=> b!753590 m!702325))

(declare-fun m!702327 () Bool)

(assert (=> b!753587 m!702327))

(declare-fun m!702329 () Bool)

(assert (=> b!753591 m!702329))

(declare-fun m!702331 () Bool)

(assert (=> b!753591 m!702331))

(assert (=> b!753578 m!702301))

(assert (=> b!753578 m!702301))

(declare-fun m!702333 () Bool)

(assert (=> b!753578 m!702333))

(assert (=> b!753572 m!702301))

(assert (=> b!753572 m!702301))

(declare-fun m!702335 () Bool)

(assert (=> b!753572 m!702335))

(declare-fun m!702337 () Bool)

(assert (=> b!753576 m!702337))

(declare-fun m!702339 () Bool)

(assert (=> b!753589 m!702339))

(assert (=> b!753589 m!702329))

(declare-fun m!702341 () Bool)

(assert (=> b!753589 m!702341))

(declare-fun m!702343 () Bool)

(assert (=> b!753589 m!702343))

(assert (=> b!753589 m!702341))

(declare-fun m!702345 () Bool)

(assert (=> b!753589 m!702345))

(assert (=> b!753593 m!702301))

(assert (=> b!753593 m!702301))

(declare-fun m!702347 () Bool)

(assert (=> b!753593 m!702347))

(assert (=> b!753593 m!702347))

(assert (=> b!753593 m!702301))

(declare-fun m!702349 () Bool)

(assert (=> b!753593 m!702349))

(declare-fun m!702351 () Bool)

(assert (=> b!753585 m!702351))

(push 1)

