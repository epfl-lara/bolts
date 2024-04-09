; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66242 () Bool)

(assert start!66242)

(declare-fun b!762488 () Bool)

(declare-fun res!515751 () Bool)

(declare-fun e!425008 () Bool)

(assert (=> b!762488 (=> (not res!515751) (not e!425008))))

(declare-datatypes ((array!42100 0))(
  ( (array!42101 (arr!20154 (Array (_ BitVec 32) (_ BitVec 64))) (size!20575 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42100)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42100 (_ BitVec 32)) Bool)

(assert (=> b!762488 (= res!515751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762489 () Bool)

(declare-fun res!515747 () Bool)

(declare-fun e!425007 () Bool)

(assert (=> b!762489 (=> (not res!515747) (not e!425007))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762489 (= res!515747 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762490 () Bool)

(declare-fun res!515753 () Bool)

(assert (=> b!762490 (=> (not res!515753) (not e!425007))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762490 (= res!515753 (and (= (size!20575 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20575 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20575 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762491 () Bool)

(declare-fun res!515748 () Bool)

(assert (=> b!762491 (=> (not res!515748) (not e!425007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762491 (= res!515748 (validKeyInArray!0 k!2102))))

(declare-fun b!762492 () Bool)

(declare-fun e!425006 () Bool)

(assert (=> b!762492 (= e!425006 false)))

(declare-fun lt!339566 () Bool)

(declare-fun e!425005 () Bool)

(assert (=> b!762492 (= lt!339566 e!425005)))

(declare-fun c!83757 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762492 (= c!83757 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762493 () Bool)

(declare-fun res!515752 () Bool)

(assert (=> b!762493 (=> (not res!515752) (not e!425008))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!762493 (= res!515752 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20575 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20575 a!3186))))))

(declare-fun res!515754 () Bool)

(assert (=> start!66242 (=> (not res!515754) (not e!425007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66242 (= res!515754 (validMask!0 mask!3328))))

(assert (=> start!66242 e!425007))

(assert (=> start!66242 true))

(declare-fun array_inv!15928 (array!42100) Bool)

(assert (=> start!66242 (array_inv!15928 a!3186)))

(declare-fun b!762494 () Bool)

(assert (=> b!762494 (= e!425007 e!425008)))

(declare-fun res!515750 () Bool)

(assert (=> b!762494 (=> (not res!515750) (not e!425008))))

(declare-datatypes ((SeekEntryResult!7761 0))(
  ( (MissingZero!7761 (index!33411 (_ BitVec 32))) (Found!7761 (index!33412 (_ BitVec 32))) (Intermediate!7761 (undefined!8573 Bool) (index!33413 (_ BitVec 32)) (x!64350 (_ BitVec 32))) (Undefined!7761) (MissingVacant!7761 (index!33414 (_ BitVec 32))) )
))
(declare-fun lt!339568 () SeekEntryResult!7761)

(assert (=> b!762494 (= res!515750 (or (= lt!339568 (MissingZero!7761 i!1173)) (= lt!339568 (MissingVacant!7761 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42100 (_ BitVec 32)) SeekEntryResult!7761)

(assert (=> b!762494 (= lt!339568 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762495 () Bool)

(declare-fun res!515756 () Bool)

(assert (=> b!762495 (=> (not res!515756) (not e!425008))))

(declare-datatypes ((List!14209 0))(
  ( (Nil!14206) (Cons!14205 (h!15289 (_ BitVec 64)) (t!20532 List!14209)) )
))
(declare-fun arrayNoDuplicates!0 (array!42100 (_ BitVec 32) List!14209) Bool)

(assert (=> b!762495 (= res!515756 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14206))))

(declare-fun b!762496 () Bool)

(assert (=> b!762496 (= e!425008 e!425006)))

(declare-fun res!515757 () Bool)

(assert (=> b!762496 (=> (not res!515757) (not e!425006))))

(declare-fun lt!339567 () SeekEntryResult!7761)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42100 (_ BitVec 32)) SeekEntryResult!7761)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762496 (= res!515757 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20154 a!3186) j!159) mask!3328) (select (arr!20154 a!3186) j!159) a!3186 mask!3328) lt!339567))))

(assert (=> b!762496 (= lt!339567 (Intermediate!7761 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762497 () Bool)

(declare-fun res!515749 () Bool)

(assert (=> b!762497 (=> (not res!515749) (not e!425006))))

(assert (=> b!762497 (= res!515749 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20154 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762498 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42100 (_ BitVec 32)) SeekEntryResult!7761)

(assert (=> b!762498 (= e!425005 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20154 a!3186) j!159) a!3186 mask!3328) (Found!7761 j!159))))))

(declare-fun b!762499 () Bool)

(declare-fun res!515755 () Bool)

(assert (=> b!762499 (=> (not res!515755) (not e!425007))))

(assert (=> b!762499 (= res!515755 (validKeyInArray!0 (select (arr!20154 a!3186) j!159)))))

(declare-fun b!762500 () Bool)

(assert (=> b!762500 (= e!425005 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20154 a!3186) j!159) a!3186 mask!3328) lt!339567)))))

(assert (= (and start!66242 res!515754) b!762490))

(assert (= (and b!762490 res!515753) b!762499))

(assert (= (and b!762499 res!515755) b!762491))

(assert (= (and b!762491 res!515748) b!762489))

(assert (= (and b!762489 res!515747) b!762494))

(assert (= (and b!762494 res!515750) b!762488))

(assert (= (and b!762488 res!515751) b!762495))

(assert (= (and b!762495 res!515756) b!762493))

(assert (= (and b!762493 res!515752) b!762496))

(assert (= (and b!762496 res!515757) b!762497))

(assert (= (and b!762497 res!515749) b!762492))

(assert (= (and b!762492 c!83757) b!762500))

(assert (= (and b!762492 (not c!83757)) b!762498))

(declare-fun m!709259 () Bool)

(assert (=> b!762497 m!709259))

(declare-fun m!709261 () Bool)

(assert (=> b!762498 m!709261))

(assert (=> b!762498 m!709261))

(declare-fun m!709263 () Bool)

(assert (=> b!762498 m!709263))

(declare-fun m!709265 () Bool)

(assert (=> b!762491 m!709265))

(assert (=> b!762499 m!709261))

(assert (=> b!762499 m!709261))

(declare-fun m!709267 () Bool)

(assert (=> b!762499 m!709267))

(declare-fun m!709269 () Bool)

(assert (=> start!66242 m!709269))

(declare-fun m!709271 () Bool)

(assert (=> start!66242 m!709271))

(declare-fun m!709273 () Bool)

(assert (=> b!762488 m!709273))

(declare-fun m!709275 () Bool)

(assert (=> b!762489 m!709275))

(declare-fun m!709277 () Bool)

(assert (=> b!762495 m!709277))

(assert (=> b!762500 m!709261))

(assert (=> b!762500 m!709261))

(declare-fun m!709279 () Bool)

(assert (=> b!762500 m!709279))

(assert (=> b!762496 m!709261))

(assert (=> b!762496 m!709261))

(declare-fun m!709281 () Bool)

(assert (=> b!762496 m!709281))

(assert (=> b!762496 m!709281))

(assert (=> b!762496 m!709261))

(declare-fun m!709283 () Bool)

(assert (=> b!762496 m!709283))

(declare-fun m!709285 () Bool)

(assert (=> b!762494 m!709285))

(push 1)

