; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65122 () Bool)

(assert start!65122)

(declare-fun b!734512 () Bool)

(declare-fun res!493520 () Bool)

(declare-fun e!411020 () Bool)

(assert (=> b!734512 (=> (not res!493520) (not e!411020))))

(declare-datatypes ((array!41248 0))(
  ( (array!41249 (arr!19734 (Array (_ BitVec 32) (_ BitVec 64))) (size!20155 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41248)

(declare-datatypes ((List!13789 0))(
  ( (Nil!13786) (Cons!13785 (h!14857 (_ BitVec 64)) (t!20112 List!13789)) )
))
(declare-fun arrayNoDuplicates!0 (array!41248 (_ BitVec 32) List!13789) Bool)

(assert (=> b!734512 (= res!493520 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13786))))

(declare-fun res!493519 () Bool)

(declare-fun e!411026 () Bool)

(assert (=> start!65122 (=> (not res!493519) (not e!411026))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65122 (= res!493519 (validMask!0 mask!3328))))

(assert (=> start!65122 e!411026))

(assert (=> start!65122 true))

(declare-fun array_inv!15508 (array!41248) Bool)

(assert (=> start!65122 (array_inv!15508 a!3186)))

(declare-fun b!734513 () Bool)

(declare-fun e!411027 () Bool)

(assert (=> b!734513 (= e!411020 e!411027)))

(declare-fun res!493532 () Bool)

(assert (=> b!734513 (=> (not res!493532) (not e!411027))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7341 0))(
  ( (MissingZero!7341 (index!31731 (_ BitVec 32))) (Found!7341 (index!31732 (_ BitVec 32))) (Intermediate!7341 (undefined!8153 Bool) (index!31733 (_ BitVec 32)) (x!62772 (_ BitVec 32))) (Undefined!7341) (MissingVacant!7341 (index!31734 (_ BitVec 32))) )
))
(declare-fun lt!325554 () SeekEntryResult!7341)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41248 (_ BitVec 32)) SeekEntryResult!7341)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734513 (= res!493532 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19734 a!3186) j!159) mask!3328) (select (arr!19734 a!3186) j!159) a!3186 mask!3328) lt!325554))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!734513 (= lt!325554 (Intermediate!7341 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!734514 () Bool)

(declare-fun res!493526 () Bool)

(declare-fun e!411018 () Bool)

(assert (=> b!734514 (=> res!493526 e!411018)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41248 (_ BitVec 32)) SeekEntryResult!7341)

(assert (=> b!734514 (= res!493526 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19734 a!3186) j!159) a!3186 mask!3328) (Found!7341 j!159)))))

(declare-fun b!734515 () Bool)

(assert (=> b!734515 (= e!411026 e!411020)))

(declare-fun res!493528 () Bool)

(assert (=> b!734515 (=> (not res!493528) (not e!411020))))

(declare-fun lt!325548 () SeekEntryResult!7341)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!734515 (= res!493528 (or (= lt!325548 (MissingZero!7341 i!1173)) (= lt!325548 (MissingVacant!7341 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41248 (_ BitVec 32)) SeekEntryResult!7341)

(assert (=> b!734515 (= lt!325548 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!734516 () Bool)

(declare-fun res!493521 () Bool)

(assert (=> b!734516 (=> (not res!493521) (not e!411020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41248 (_ BitVec 32)) Bool)

(assert (=> b!734516 (= res!493521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!734517 () Bool)

(declare-fun res!493534 () Bool)

(assert (=> b!734517 (=> (not res!493534) (not e!411026))))

(declare-fun arrayContainsKey!0 (array!41248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734517 (= res!493534 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734518 () Bool)

(declare-fun res!493535 () Bool)

(assert (=> b!734518 (=> (not res!493535) (not e!411027))))

(assert (=> b!734518 (= res!493535 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19734 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734519 () Bool)

(declare-fun res!493533 () Bool)

(assert (=> b!734519 (=> (not res!493533) (not e!411020))))

(assert (=> b!734519 (= res!493533 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20155 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20155 a!3186))))))

(declare-fun lt!325553 () (_ BitVec 32))

(declare-fun b!734520 () Bool)

(assert (=> b!734520 (= e!411018 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!325553 #b00000000000000000000000000000000) (bvsge lt!325553 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!734521 () Bool)

(declare-fun e!411019 () Bool)

(assert (=> b!734521 (= e!411027 e!411019)))

(declare-fun res!493523 () Bool)

(assert (=> b!734521 (=> (not res!493523) (not e!411019))))

(declare-fun lt!325556 () SeekEntryResult!7341)

(declare-fun lt!325551 () SeekEntryResult!7341)

(assert (=> b!734521 (= res!493523 (= lt!325556 lt!325551))))

(declare-fun lt!325550 () array!41248)

(declare-fun lt!325549 () (_ BitVec 64))

(assert (=> b!734521 (= lt!325551 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325549 lt!325550 mask!3328))))

(assert (=> b!734521 (= lt!325556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325549 mask!3328) lt!325549 lt!325550 mask!3328))))

(assert (=> b!734521 (= lt!325549 (select (store (arr!19734 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!734521 (= lt!325550 (array!41249 (store (arr!19734 a!3186) i!1173 k!2102) (size!20155 a!3186)))))

(declare-fun b!734522 () Bool)

(declare-fun res!493522 () Bool)

(assert (=> b!734522 (=> (not res!493522) (not e!411027))))

(declare-fun e!411022 () Bool)

(assert (=> b!734522 (= res!493522 e!411022)))

(declare-fun c!80877 () Bool)

(assert (=> b!734522 (= c!80877 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734523 () Bool)

(assert (=> b!734523 (= e!411022 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19734 a!3186) j!159) a!3186 mask!3328) (Found!7341 j!159)))))

(declare-fun b!734524 () Bool)

(declare-fun e!411021 () Bool)

(assert (=> b!734524 (= e!411021 e!411018)))

(declare-fun res!493536 () Bool)

(assert (=> b!734524 (=> res!493536 e!411018)))

(assert (=> b!734524 (= res!493536 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734524 (= lt!325553 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun lt!325552 () SeekEntryResult!7341)

(declare-fun e!411025 () Bool)

(declare-fun b!734525 () Bool)

(assert (=> b!734525 (= e!411025 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19734 a!3186) j!159) a!3186 mask!3328) lt!325552))))

(declare-fun b!734526 () Bool)

(assert (=> b!734526 (= e!411022 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19734 a!3186) j!159) a!3186 mask!3328) lt!325554))))

(declare-fun b!734527 () Bool)

(declare-fun res!493524 () Bool)

(assert (=> b!734527 (=> (not res!493524) (not e!411026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734527 (= res!493524 (validKeyInArray!0 (select (arr!19734 a!3186) j!159)))))

(declare-fun b!734528 () Bool)

(declare-fun res!493527 () Bool)

(assert (=> b!734528 (=> (not res!493527) (not e!411026))))

(assert (=> b!734528 (= res!493527 (validKeyInArray!0 k!2102))))

(declare-fun b!734529 () Bool)

(declare-fun e!411024 () Bool)

(assert (=> b!734529 (= e!411024 e!411025)))

(declare-fun res!493531 () Bool)

(assert (=> b!734529 (=> (not res!493531) (not e!411025))))

(assert (=> b!734529 (= res!493531 (= (seekEntryOrOpen!0 (select (arr!19734 a!3186) j!159) a!3186 mask!3328) lt!325552))))

(assert (=> b!734529 (= lt!325552 (Found!7341 j!159))))

(declare-fun b!734530 () Bool)

(declare-fun res!493530 () Bool)

(assert (=> b!734530 (=> (not res!493530) (not e!411026))))

(assert (=> b!734530 (= res!493530 (and (= (size!20155 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20155 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20155 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734531 () Bool)

(assert (=> b!734531 (= e!411019 (not e!411021))))

(declare-fun res!493529 () Bool)

(assert (=> b!734531 (=> res!493529 e!411021)))

(assert (=> b!734531 (= res!493529 (or (not (is-Intermediate!7341 lt!325551)) (bvsge x!1131 (x!62772 lt!325551))))))

(assert (=> b!734531 e!411024))

(declare-fun res!493525 () Bool)

(assert (=> b!734531 (=> (not res!493525) (not e!411024))))

(assert (=> b!734531 (= res!493525 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25000 0))(
  ( (Unit!25001) )
))
(declare-fun lt!325555 () Unit!25000)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41248 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25000)

(assert (=> b!734531 (= lt!325555 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65122 res!493519) b!734530))

(assert (= (and b!734530 res!493530) b!734527))

(assert (= (and b!734527 res!493524) b!734528))

(assert (= (and b!734528 res!493527) b!734517))

(assert (= (and b!734517 res!493534) b!734515))

(assert (= (and b!734515 res!493528) b!734516))

(assert (= (and b!734516 res!493521) b!734512))

(assert (= (and b!734512 res!493520) b!734519))

(assert (= (and b!734519 res!493533) b!734513))

(assert (= (and b!734513 res!493532) b!734518))

(assert (= (and b!734518 res!493535) b!734522))

(assert (= (and b!734522 c!80877) b!734526))

(assert (= (and b!734522 (not c!80877)) b!734523))

(assert (= (and b!734522 res!493522) b!734521))

(assert (= (and b!734521 res!493523) b!734531))

(assert (= (and b!734531 res!493525) b!734529))

(assert (= (and b!734529 res!493531) b!734525))

(assert (= (and b!734531 (not res!493529)) b!734524))

(assert (= (and b!734524 (not res!493536)) b!734514))

(assert (= (and b!734514 (not res!493526)) b!734520))

(declare-fun m!687157 () Bool)

(assert (=> b!734516 m!687157))

(declare-fun m!687159 () Bool)

(assert (=> b!734524 m!687159))

(declare-fun m!687161 () Bool)

(assert (=> b!734527 m!687161))

(assert (=> b!734527 m!687161))

(declare-fun m!687163 () Bool)

(assert (=> b!734527 m!687163))

(assert (=> b!734523 m!687161))

(assert (=> b!734523 m!687161))

(declare-fun m!687165 () Bool)

(assert (=> b!734523 m!687165))

(declare-fun m!687167 () Bool)

(assert (=> b!734515 m!687167))

(declare-fun m!687169 () Bool)

(assert (=> b!734531 m!687169))

(declare-fun m!687171 () Bool)

(assert (=> b!734531 m!687171))

(declare-fun m!687173 () Bool)

(assert (=> b!734521 m!687173))

(declare-fun m!687175 () Bool)

(assert (=> b!734521 m!687175))

(assert (=> b!734521 m!687173))

(declare-fun m!687177 () Bool)

(assert (=> b!734521 m!687177))

(declare-fun m!687179 () Bool)

(assert (=> b!734521 m!687179))

(declare-fun m!687181 () Bool)

(assert (=> b!734521 m!687181))

(declare-fun m!687183 () Bool)

(assert (=> b!734517 m!687183))

(assert (=> b!734529 m!687161))

(assert (=> b!734529 m!687161))

(declare-fun m!687185 () Bool)

(assert (=> b!734529 m!687185))

(assert (=> b!734514 m!687161))

(assert (=> b!734514 m!687161))

(assert (=> b!734514 m!687165))

(declare-fun m!687187 () Bool)

(assert (=> start!65122 m!687187))

(declare-fun m!687189 () Bool)

(assert (=> start!65122 m!687189))

(declare-fun m!687191 () Bool)

(assert (=> b!734528 m!687191))

(assert (=> b!734525 m!687161))

(assert (=> b!734525 m!687161))

(declare-fun m!687193 () Bool)

(assert (=> b!734525 m!687193))

(assert (=> b!734513 m!687161))

(assert (=> b!734513 m!687161))

(declare-fun m!687195 () Bool)

(assert (=> b!734513 m!687195))

(assert (=> b!734513 m!687195))

(assert (=> b!734513 m!687161))

(declare-fun m!687197 () Bool)

(assert (=> b!734513 m!687197))

(declare-fun m!687199 () Bool)

(assert (=> b!734518 m!687199))

(assert (=> b!734526 m!687161))

(assert (=> b!734526 m!687161))

(declare-fun m!687201 () Bool)

(assert (=> b!734526 m!687201))

(declare-fun m!687203 () Bool)

(assert (=> b!734512 m!687203))

(push 1)

(assert (not b!734521))

(assert (not b!734527))

(assert (not b!734516))

(assert (not b!734529))

(assert (not b!734523))

(assert (not b!734514))

(assert (not b!734525))

(assert (not b!734526))

(assert (not b!734512))

(assert (not b!734517))

(assert (not b!734515))

(assert (not b!734528))

(assert (not b!734513))

(assert (not b!734524))

(assert (not start!65122))

(assert (not b!734531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

