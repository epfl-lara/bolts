; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46784 () Bool)

(assert start!46784)

(declare-fun b!516439 () Bool)

(declare-fun res!316154 () Bool)

(declare-fun e!301387 () Bool)

(assert (=> b!516439 (=> (not res!316154) (not e!301387))))

(declare-datatypes ((array!33056 0))(
  ( (array!33057 (arr!15893 (Array (_ BitVec 32) (_ BitVec 64))) (size!16257 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33056)

(declare-datatypes ((List!10104 0))(
  ( (Nil!10101) (Cons!10100 (h!10998 (_ BitVec 64)) (t!16340 List!10104)) )
))
(declare-fun arrayNoDuplicates!0 (array!33056 (_ BitVec 32) List!10104) Bool)

(assert (=> b!516439 (= res!316154 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10101))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!301383 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!516440 () Bool)

(declare-datatypes ((SeekEntryResult!4367 0))(
  ( (MissingZero!4367 (index!19656 (_ BitVec 32))) (Found!4367 (index!19657 (_ BitVec 32))) (Intermediate!4367 (undefined!5179 Bool) (index!19658 (_ BitVec 32)) (x!48637 (_ BitVec 32))) (Undefined!4367) (MissingVacant!4367 (index!19659 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33056 (_ BitVec 32)) SeekEntryResult!4367)

(assert (=> b!516440 (= e!301383 (= (seekEntryOrOpen!0 (select (arr!15893 a!3235) j!176) a!3235 mask!3524) (Found!4367 j!176)))))

(declare-fun b!516441 () Bool)

(declare-fun res!316159 () Bool)

(declare-fun e!301386 () Bool)

(assert (=> b!516441 (=> (not res!316159) (not e!301386))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516441 (= res!316159 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516443 () Bool)

(declare-fun res!316161 () Bool)

(assert (=> b!516443 (=> (not res!316161) (not e!301386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516443 (= res!316161 (validKeyInArray!0 k!2280))))

(declare-fun b!516444 () Bool)

(assert (=> b!516444 (= e!301386 e!301387)))

(declare-fun res!316155 () Bool)

(assert (=> b!516444 (=> (not res!316155) (not e!301387))))

(declare-fun lt!236467 () SeekEntryResult!4367)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516444 (= res!316155 (or (= lt!236467 (MissingZero!4367 i!1204)) (= lt!236467 (MissingVacant!4367 i!1204))))))

(assert (=> b!516444 (= lt!236467 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516445 () Bool)

(declare-fun e!301384 () Bool)

(assert (=> b!516445 (= e!301387 (not e!301384))))

(declare-fun res!316157 () Bool)

(assert (=> b!516445 (=> res!316157 e!301384)))

(declare-fun lt!236469 () (_ BitVec 32))

(declare-fun lt!236468 () SeekEntryResult!4367)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33056 (_ BitVec 32)) SeekEntryResult!4367)

(assert (=> b!516445 (= res!316157 (= lt!236468 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236469 (select (store (arr!15893 a!3235) i!1204 k!2280) j!176) (array!33057 (store (arr!15893 a!3235) i!1204 k!2280) (size!16257 a!3235)) mask!3524)))))

(declare-fun lt!236470 () (_ BitVec 32))

(assert (=> b!516445 (= lt!236468 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236470 (select (arr!15893 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516445 (= lt!236469 (toIndex!0 (select (store (arr!15893 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516445 (= lt!236470 (toIndex!0 (select (arr!15893 a!3235) j!176) mask!3524))))

(assert (=> b!516445 e!301383))

(declare-fun res!316160 () Bool)

(assert (=> b!516445 (=> (not res!316160) (not e!301383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33056 (_ BitVec 32)) Bool)

(assert (=> b!516445 (= res!316160 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15984 0))(
  ( (Unit!15985) )
))
(declare-fun lt!236471 () Unit!15984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33056 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15984)

(assert (=> b!516445 (= lt!236471 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516446 () Bool)

(assert (=> b!516446 (= e!301384 (or (not (= (select (arr!15893 a!3235) (index!19658 lt!236468)) (select (arr!15893 a!3235) j!176))) (bvsle (x!48637 lt!236468) #b01111111111111111111111111111110)))))

(assert (=> b!516446 (and (bvslt (x!48637 lt!236468) #b01111111111111111111111111111110) (or (= (select (arr!15893 a!3235) (index!19658 lt!236468)) (select (arr!15893 a!3235) j!176)) (= (select (arr!15893 a!3235) (index!19658 lt!236468)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15893 a!3235) (index!19658 lt!236468)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516447 () Bool)

(declare-fun res!316162 () Bool)

(assert (=> b!516447 (=> res!316162 e!301384)))

(assert (=> b!516447 (= res!316162 (or (undefined!5179 lt!236468) (not (is-Intermediate!4367 lt!236468))))))

(declare-fun b!516442 () Bool)

(declare-fun res!316163 () Bool)

(assert (=> b!516442 (=> (not res!316163) (not e!301386))))

(assert (=> b!516442 (= res!316163 (and (= (size!16257 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16257 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16257 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!316153 () Bool)

(assert (=> start!46784 (=> (not res!316153) (not e!301386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46784 (= res!316153 (validMask!0 mask!3524))))

(assert (=> start!46784 e!301386))

(assert (=> start!46784 true))

(declare-fun array_inv!11667 (array!33056) Bool)

(assert (=> start!46784 (array_inv!11667 a!3235)))

(declare-fun b!516448 () Bool)

(declare-fun res!316156 () Bool)

(assert (=> b!516448 (=> (not res!316156) (not e!301387))))

(assert (=> b!516448 (= res!316156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516449 () Bool)

(declare-fun res!316158 () Bool)

(assert (=> b!516449 (=> (not res!316158) (not e!301386))))

(assert (=> b!516449 (= res!316158 (validKeyInArray!0 (select (arr!15893 a!3235) j!176)))))

(assert (= (and start!46784 res!316153) b!516442))

(assert (= (and b!516442 res!316163) b!516449))

(assert (= (and b!516449 res!316158) b!516443))

(assert (= (and b!516443 res!316161) b!516441))

(assert (= (and b!516441 res!316159) b!516444))

(assert (= (and b!516444 res!316155) b!516448))

(assert (= (and b!516448 res!316156) b!516439))

(assert (= (and b!516439 res!316154) b!516445))

(assert (= (and b!516445 res!316160) b!516440))

(assert (= (and b!516445 (not res!316157)) b!516447))

(assert (= (and b!516447 (not res!316162)) b!516446))

(declare-fun m!497993 () Bool)

(assert (=> b!516441 m!497993))

(declare-fun m!497995 () Bool)

(assert (=> b!516445 m!497995))

(declare-fun m!497997 () Bool)

(assert (=> b!516445 m!497997))

(declare-fun m!497999 () Bool)

(assert (=> b!516445 m!497999))

(assert (=> b!516445 m!497999))

(declare-fun m!498001 () Bool)

(assert (=> b!516445 m!498001))

(declare-fun m!498003 () Bool)

(assert (=> b!516445 m!498003))

(declare-fun m!498005 () Bool)

(assert (=> b!516445 m!498005))

(assert (=> b!516445 m!498003))

(declare-fun m!498007 () Bool)

(assert (=> b!516445 m!498007))

(assert (=> b!516445 m!498003))

(declare-fun m!498009 () Bool)

(assert (=> b!516445 m!498009))

(assert (=> b!516445 m!497999))

(declare-fun m!498011 () Bool)

(assert (=> b!516445 m!498011))

(declare-fun m!498013 () Bool)

(assert (=> b!516444 m!498013))

(declare-fun m!498015 () Bool)

(assert (=> b!516439 m!498015))

(declare-fun m!498017 () Bool)

(assert (=> b!516448 m!498017))

(assert (=> b!516440 m!498003))

(assert (=> b!516440 m!498003))

(declare-fun m!498019 () Bool)

(assert (=> b!516440 m!498019))

(declare-fun m!498021 () Bool)

(assert (=> b!516443 m!498021))

(assert (=> b!516449 m!498003))

(assert (=> b!516449 m!498003))

(declare-fun m!498023 () Bool)

(assert (=> b!516449 m!498023))

(declare-fun m!498025 () Bool)

(assert (=> start!46784 m!498025))

(declare-fun m!498027 () Bool)

(assert (=> start!46784 m!498027))

(declare-fun m!498029 () Bool)

(assert (=> b!516446 m!498029))

(assert (=> b!516446 m!498003))

(push 1)

