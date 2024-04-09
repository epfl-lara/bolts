; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66244 () Bool)

(assert start!66244)

(declare-fun b!762527 () Bool)

(declare-fun res!515788 () Bool)

(declare-fun e!425020 () Bool)

(assert (=> b!762527 (=> (not res!515788) (not e!425020))))

(declare-datatypes ((array!42102 0))(
  ( (array!42103 (arr!20155 (Array (_ BitVec 32) (_ BitVec 64))) (size!20576 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42102)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!762527 (= res!515788 (and (= (size!20576 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20576 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20576 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762528 () Bool)

(declare-fun e!425021 () Bool)

(assert (=> b!762528 (= e!425020 e!425021)))

(declare-fun res!515783 () Bool)

(assert (=> b!762528 (=> (not res!515783) (not e!425021))))

(declare-datatypes ((SeekEntryResult!7762 0))(
  ( (MissingZero!7762 (index!33415 (_ BitVec 32))) (Found!7762 (index!33416 (_ BitVec 32))) (Intermediate!7762 (undefined!8574 Bool) (index!33417 (_ BitVec 32)) (x!64351 (_ BitVec 32))) (Undefined!7762) (MissingVacant!7762 (index!33418 (_ BitVec 32))) )
))
(declare-fun lt!339575 () SeekEntryResult!7762)

(assert (=> b!762528 (= res!515783 (or (= lt!339575 (MissingZero!7762 i!1173)) (= lt!339575 (MissingVacant!7762 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42102 (_ BitVec 32)) SeekEntryResult!7762)

(assert (=> b!762528 (= lt!339575 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!762529 () Bool)

(declare-fun res!515784 () Bool)

(assert (=> b!762529 (=> (not res!515784) (not e!425021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42102 (_ BitVec 32)) Bool)

(assert (=> b!762529 (= res!515784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762530 () Bool)

(declare-fun res!515786 () Bool)

(declare-fun e!425024 () Bool)

(assert (=> b!762530 (=> (not res!515786) (not e!425024))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!762530 (= res!515786 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20155 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762531 () Bool)

(declare-fun res!515785 () Bool)

(assert (=> b!762531 (=> (not res!515785) (not e!425021))))

(declare-datatypes ((List!14210 0))(
  ( (Nil!14207) (Cons!14206 (h!15290 (_ BitVec 64)) (t!20533 List!14210)) )
))
(declare-fun arrayNoDuplicates!0 (array!42102 (_ BitVec 32) List!14210) Bool)

(assert (=> b!762531 (= res!515785 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14207))))

(declare-fun b!762532 () Bool)

(declare-fun res!515789 () Bool)

(assert (=> b!762532 (=> (not res!515789) (not e!425020))))

(declare-fun arrayContainsKey!0 (array!42102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762532 (= res!515789 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!425022 () Bool)

(declare-fun b!762533 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42102 (_ BitVec 32)) SeekEntryResult!7762)

(assert (=> b!762533 (= e!425022 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20155 a!3186) j!159) a!3186 mask!3328) (Found!7762 j!159))))))

(declare-fun res!515781 () Bool)

(assert (=> start!66244 (=> (not res!515781) (not e!425020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66244 (= res!515781 (validMask!0 mask!3328))))

(assert (=> start!66244 e!425020))

(assert (=> start!66244 true))

(declare-fun array_inv!15929 (array!42102) Bool)

(assert (=> start!66244 (array_inv!15929 a!3186)))

(declare-fun b!762534 () Bool)

(declare-fun res!515780 () Bool)

(assert (=> b!762534 (=> (not res!515780) (not e!425020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762534 (= res!515780 (validKeyInArray!0 (select (arr!20155 a!3186) j!159)))))

(declare-fun b!762535 () Bool)

(declare-fun res!515787 () Bool)

(assert (=> b!762535 (=> (not res!515787) (not e!425021))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762535 (= res!515787 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20576 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20576 a!3186))))))

(declare-fun b!762536 () Bool)

(declare-fun lt!339577 () SeekEntryResult!7762)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42102 (_ BitVec 32)) SeekEntryResult!7762)

(assert (=> b!762536 (= e!425022 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20155 a!3186) j!159) a!3186 mask!3328) lt!339577)))))

(declare-fun b!762537 () Bool)

(declare-fun res!515782 () Bool)

(assert (=> b!762537 (=> (not res!515782) (not e!425020))))

(assert (=> b!762537 (= res!515782 (validKeyInArray!0 k0!2102))))

(declare-fun b!762538 () Bool)

(assert (=> b!762538 (= e!425021 e!425024)))

(declare-fun res!515790 () Bool)

(assert (=> b!762538 (=> (not res!515790) (not e!425024))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762538 (= res!515790 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20155 a!3186) j!159) mask!3328) (select (arr!20155 a!3186) j!159) a!3186 mask!3328) lt!339577))))

(assert (=> b!762538 (= lt!339577 (Intermediate!7762 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762539 () Bool)

(assert (=> b!762539 (= e!425024 false)))

(declare-fun lt!339576 () Bool)

(assert (=> b!762539 (= lt!339576 e!425022)))

(declare-fun c!83760 () Bool)

(assert (=> b!762539 (= c!83760 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66244 res!515781) b!762527))

(assert (= (and b!762527 res!515788) b!762534))

(assert (= (and b!762534 res!515780) b!762537))

(assert (= (and b!762537 res!515782) b!762532))

(assert (= (and b!762532 res!515789) b!762528))

(assert (= (and b!762528 res!515783) b!762529))

(assert (= (and b!762529 res!515784) b!762531))

(assert (= (and b!762531 res!515785) b!762535))

(assert (= (and b!762535 res!515787) b!762538))

(assert (= (and b!762538 res!515790) b!762530))

(assert (= (and b!762530 res!515786) b!762539))

(assert (= (and b!762539 c!83760) b!762536))

(assert (= (and b!762539 (not c!83760)) b!762533))

(declare-fun m!709287 () Bool)

(assert (=> b!762536 m!709287))

(assert (=> b!762536 m!709287))

(declare-fun m!709289 () Bool)

(assert (=> b!762536 m!709289))

(assert (=> b!762533 m!709287))

(assert (=> b!762533 m!709287))

(declare-fun m!709291 () Bool)

(assert (=> b!762533 m!709291))

(declare-fun m!709293 () Bool)

(assert (=> b!762531 m!709293))

(assert (=> b!762538 m!709287))

(assert (=> b!762538 m!709287))

(declare-fun m!709295 () Bool)

(assert (=> b!762538 m!709295))

(assert (=> b!762538 m!709295))

(assert (=> b!762538 m!709287))

(declare-fun m!709297 () Bool)

(assert (=> b!762538 m!709297))

(declare-fun m!709299 () Bool)

(assert (=> b!762532 m!709299))

(declare-fun m!709301 () Bool)

(assert (=> b!762529 m!709301))

(declare-fun m!709303 () Bool)

(assert (=> start!66244 m!709303))

(declare-fun m!709305 () Bool)

(assert (=> start!66244 m!709305))

(declare-fun m!709307 () Bool)

(assert (=> b!762530 m!709307))

(declare-fun m!709309 () Bool)

(assert (=> b!762528 m!709309))

(assert (=> b!762534 m!709287))

(assert (=> b!762534 m!709287))

(declare-fun m!709311 () Bool)

(assert (=> b!762534 m!709311))

(declare-fun m!709313 () Bool)

(assert (=> b!762537 m!709313))

(check-sat (not b!762532) (not b!762528) (not b!762533) (not b!762529) (not b!762536) (not b!762538) (not b!762534) (not b!762531) (not start!66244) (not b!762537))
(check-sat)
