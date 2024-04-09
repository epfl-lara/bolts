; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66280 () Bool)

(assert start!66280)

(declare-datatypes ((array!42138 0))(
  ( (array!42139 (arr!20173 (Array (_ BitVec 32) (_ BitVec 64))) (size!20594 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42138)

(declare-datatypes ((SeekEntryResult!7780 0))(
  ( (MissingZero!7780 (index!33487 (_ BitVec 32))) (Found!7780 (index!33488 (_ BitVec 32))) (Intermediate!7780 (undefined!8592 Bool) (index!33489 (_ BitVec 32)) (x!64417 (_ BitVec 32))) (Undefined!7780) (MissingVacant!7780 (index!33490 (_ BitVec 32))) )
))
(declare-fun lt!339738 () SeekEntryResult!7780)

(declare-fun b!763247 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!425294 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42138 (_ BitVec 32)) SeekEntryResult!7780)

(assert (=> b!763247 (= e!425294 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20173 a!3186) j!159) a!3186 mask!3328) lt!339738)))))

(declare-fun b!763248 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42138 (_ BitVec 32)) SeekEntryResult!7780)

(assert (=> b!763248 (= e!425294 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20173 a!3186) j!159) a!3186 mask!3328) (Found!7780 j!159))))))

(declare-fun b!763250 () Bool)

(declare-fun res!516392 () Bool)

(declare-fun e!425291 () Bool)

(assert (=> b!763250 (=> (not res!516392) (not e!425291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763250 (= res!516392 (validKeyInArray!0 (select (arr!20173 a!3186) j!159)))))

(declare-fun b!763251 () Bool)

(declare-fun res!516396 () Bool)

(assert (=> b!763251 (=> (not res!516396) (not e!425291))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763251 (= res!516396 (and (= (size!20594 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20594 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20594 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763252 () Bool)

(declare-fun res!516393 () Bool)

(assert (=> b!763252 (=> (not res!516393) (not e!425291))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763252 (= res!516393 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763253 () Bool)

(declare-fun res!516401 () Bool)

(declare-fun e!425293 () Bool)

(assert (=> b!763253 (=> (not res!516401) (not e!425293))))

(assert (=> b!763253 (= res!516401 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20173 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763254 () Bool)

(declare-fun e!425292 () Bool)

(assert (=> b!763254 (= e!425292 e!425293)))

(declare-fun res!516394 () Bool)

(assert (=> b!763254 (=> (not res!516394) (not e!425293))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763254 (= res!516394 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20173 a!3186) j!159) mask!3328) (select (arr!20173 a!3186) j!159) a!3186 mask!3328) lt!339738))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763254 (= lt!339738 (Intermediate!7780 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763255 () Bool)

(declare-fun res!516395 () Bool)

(assert (=> b!763255 (=> (not res!516395) (not e!425292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42138 (_ BitVec 32)) Bool)

(assert (=> b!763255 (= res!516395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!516399 () Bool)

(assert (=> start!66280 (=> (not res!516399) (not e!425291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66280 (= res!516399 (validMask!0 mask!3328))))

(assert (=> start!66280 e!425291))

(assert (=> start!66280 true))

(declare-fun array_inv!15947 (array!42138) Bool)

(assert (=> start!66280 (array_inv!15947 a!3186)))

(declare-fun b!763249 () Bool)

(declare-fun res!516398 () Bool)

(assert (=> b!763249 (=> (not res!516398) (not e!425292))))

(assert (=> b!763249 (= res!516398 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20594 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20594 a!3186))))))

(declare-fun b!763256 () Bool)

(declare-fun res!516397 () Bool)

(assert (=> b!763256 (=> (not res!516397) (not e!425292))))

(declare-datatypes ((List!14228 0))(
  ( (Nil!14225) (Cons!14224 (h!15308 (_ BitVec 64)) (t!20551 List!14228)) )
))
(declare-fun arrayNoDuplicates!0 (array!42138 (_ BitVec 32) List!14228) Bool)

(assert (=> b!763256 (= res!516397 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14225))))

(declare-fun b!763257 () Bool)

(declare-fun res!516400 () Bool)

(assert (=> b!763257 (=> (not res!516400) (not e!425291))))

(assert (=> b!763257 (= res!516400 (validKeyInArray!0 k0!2102))))

(declare-fun b!763258 () Bool)

(assert (=> b!763258 (= e!425291 e!425292)))

(declare-fun res!516402 () Bool)

(assert (=> b!763258 (=> (not res!516402) (not e!425292))))

(declare-fun lt!339739 () SeekEntryResult!7780)

(assert (=> b!763258 (= res!516402 (or (= lt!339739 (MissingZero!7780 i!1173)) (= lt!339739 (MissingVacant!7780 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42138 (_ BitVec 32)) SeekEntryResult!7780)

(assert (=> b!763258 (= lt!339739 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!763259 () Bool)

(assert (=> b!763259 (= e!425293 false)))

(declare-fun lt!339737 () Bool)

(assert (=> b!763259 (= lt!339737 e!425294)))

(declare-fun c!83814 () Bool)

(assert (=> b!763259 (= c!83814 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66280 res!516399) b!763251))

(assert (= (and b!763251 res!516396) b!763250))

(assert (= (and b!763250 res!516392) b!763257))

(assert (= (and b!763257 res!516400) b!763252))

(assert (= (and b!763252 res!516393) b!763258))

(assert (= (and b!763258 res!516402) b!763255))

(assert (= (and b!763255 res!516395) b!763256))

(assert (= (and b!763256 res!516397) b!763249))

(assert (= (and b!763249 res!516398) b!763254))

(assert (= (and b!763254 res!516394) b!763253))

(assert (= (and b!763253 res!516401) b!763259))

(assert (= (and b!763259 c!83814) b!763247))

(assert (= (and b!763259 (not c!83814)) b!763248))

(declare-fun m!709827 () Bool)

(assert (=> b!763247 m!709827))

(assert (=> b!763247 m!709827))

(declare-fun m!709829 () Bool)

(assert (=> b!763247 m!709829))

(declare-fun m!709831 () Bool)

(assert (=> start!66280 m!709831))

(declare-fun m!709833 () Bool)

(assert (=> start!66280 m!709833))

(declare-fun m!709835 () Bool)

(assert (=> b!763252 m!709835))

(declare-fun m!709837 () Bool)

(assert (=> b!763258 m!709837))

(declare-fun m!709839 () Bool)

(assert (=> b!763257 m!709839))

(declare-fun m!709841 () Bool)

(assert (=> b!763256 m!709841))

(assert (=> b!763250 m!709827))

(assert (=> b!763250 m!709827))

(declare-fun m!709843 () Bool)

(assert (=> b!763250 m!709843))

(assert (=> b!763254 m!709827))

(assert (=> b!763254 m!709827))

(declare-fun m!709845 () Bool)

(assert (=> b!763254 m!709845))

(assert (=> b!763254 m!709845))

(assert (=> b!763254 m!709827))

(declare-fun m!709847 () Bool)

(assert (=> b!763254 m!709847))

(assert (=> b!763248 m!709827))

(assert (=> b!763248 m!709827))

(declare-fun m!709849 () Bool)

(assert (=> b!763248 m!709849))

(declare-fun m!709851 () Bool)

(assert (=> b!763253 m!709851))

(declare-fun m!709853 () Bool)

(assert (=> b!763255 m!709853))

(check-sat (not b!763248) (not b!763247) (not b!763250) (not b!763256) (not b!763258) (not start!66280) (not b!763255) (not b!763252) (not b!763257) (not b!763254))
(check-sat)
