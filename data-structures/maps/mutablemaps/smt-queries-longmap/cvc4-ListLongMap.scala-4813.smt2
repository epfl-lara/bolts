; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66240 () Bool)

(assert start!66240)

(declare-fun b!762449 () Bool)

(declare-fun res!515718 () Bool)

(declare-fun e!424993 () Bool)

(assert (=> b!762449 (=> (not res!515718) (not e!424993))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42098 0))(
  ( (array!42099 (arr!20153 (Array (_ BitVec 32) (_ BitVec 64))) (size!20574 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42098)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762449 (= res!515718 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20153 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762450 () Bool)

(declare-fun res!515714 () Bool)

(declare-fun e!424992 () Bool)

(assert (=> b!762450 (=> (not res!515714) (not e!424992))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!762450 (= res!515714 (and (= (size!20574 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20574 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20574 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762451 () Bool)

(declare-fun res!515723 () Bool)

(assert (=> b!762451 (=> (not res!515723) (not e!424992))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762451 (= res!515723 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!515724 () Bool)

(assert (=> start!66240 (=> (not res!515724) (not e!424992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66240 (= res!515724 (validMask!0 mask!3328))))

(assert (=> start!66240 e!424992))

(assert (=> start!66240 true))

(declare-fun array_inv!15927 (array!42098) Bool)

(assert (=> start!66240 (array_inv!15927 a!3186)))

(declare-fun b!762452 () Bool)

(declare-fun res!515722 () Bool)

(declare-fun e!424994 () Bool)

(assert (=> b!762452 (=> (not res!515722) (not e!424994))))

(declare-datatypes ((List!14208 0))(
  ( (Nil!14205) (Cons!14204 (h!15288 (_ BitVec 64)) (t!20531 List!14208)) )
))
(declare-fun arrayNoDuplicates!0 (array!42098 (_ BitVec 32) List!14208) Bool)

(assert (=> b!762452 (= res!515722 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14205))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!424991 () Bool)

(declare-fun b!762453 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7760 0))(
  ( (MissingZero!7760 (index!33407 (_ BitVec 32))) (Found!7760 (index!33408 (_ BitVec 32))) (Intermediate!7760 (undefined!8572 Bool) (index!33409 (_ BitVec 32)) (x!64341 (_ BitVec 32))) (Undefined!7760) (MissingVacant!7760 (index!33410 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42098 (_ BitVec 32)) SeekEntryResult!7760)

(assert (=> b!762453 (= e!424991 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20153 a!3186) j!159) a!3186 mask!3328) (Found!7760 j!159))))))

(declare-fun b!762454 () Bool)

(declare-fun res!515716 () Bool)

(assert (=> b!762454 (=> (not res!515716) (not e!424994))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762454 (= res!515716 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20574 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20574 a!3186))))))

(declare-fun b!762455 () Bool)

(declare-fun res!515715 () Bool)

(assert (=> b!762455 (=> (not res!515715) (not e!424994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42098 (_ BitVec 32)) Bool)

(assert (=> b!762455 (= res!515715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!339557 () SeekEntryResult!7760)

(declare-fun b!762456 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42098 (_ BitVec 32)) SeekEntryResult!7760)

(assert (=> b!762456 (= e!424991 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20153 a!3186) j!159) a!3186 mask!3328) lt!339557)))))

(declare-fun b!762457 () Bool)

(declare-fun res!515720 () Bool)

(assert (=> b!762457 (=> (not res!515720) (not e!424992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762457 (= res!515720 (validKeyInArray!0 k!2102))))

(declare-fun b!762458 () Bool)

(declare-fun res!515717 () Bool)

(assert (=> b!762458 (=> (not res!515717) (not e!424992))))

(assert (=> b!762458 (= res!515717 (validKeyInArray!0 (select (arr!20153 a!3186) j!159)))))

(declare-fun b!762459 () Bool)

(assert (=> b!762459 (= e!424994 e!424993)))

(declare-fun res!515719 () Bool)

(assert (=> b!762459 (=> (not res!515719) (not e!424993))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762459 (= res!515719 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20153 a!3186) j!159) mask!3328) (select (arr!20153 a!3186) j!159) a!3186 mask!3328) lt!339557))))

(assert (=> b!762459 (= lt!339557 (Intermediate!7760 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762460 () Bool)

(assert (=> b!762460 (= e!424992 e!424994)))

(declare-fun res!515721 () Bool)

(assert (=> b!762460 (=> (not res!515721) (not e!424994))))

(declare-fun lt!339559 () SeekEntryResult!7760)

(assert (=> b!762460 (= res!515721 (or (= lt!339559 (MissingZero!7760 i!1173)) (= lt!339559 (MissingVacant!7760 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42098 (_ BitVec 32)) SeekEntryResult!7760)

(assert (=> b!762460 (= lt!339559 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762461 () Bool)

(assert (=> b!762461 (= e!424993 false)))

(declare-fun lt!339558 () Bool)

(assert (=> b!762461 (= lt!339558 e!424991)))

(declare-fun c!83754 () Bool)

(assert (=> b!762461 (= c!83754 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66240 res!515724) b!762450))

(assert (= (and b!762450 res!515714) b!762458))

(assert (= (and b!762458 res!515717) b!762457))

(assert (= (and b!762457 res!515720) b!762451))

(assert (= (and b!762451 res!515723) b!762460))

(assert (= (and b!762460 res!515721) b!762455))

(assert (= (and b!762455 res!515715) b!762452))

(assert (= (and b!762452 res!515722) b!762454))

(assert (= (and b!762454 res!515716) b!762459))

(assert (= (and b!762459 res!515719) b!762449))

(assert (= (and b!762449 res!515718) b!762461))

(assert (= (and b!762461 c!83754) b!762456))

(assert (= (and b!762461 (not c!83754)) b!762453))

(declare-fun m!709231 () Bool)

(assert (=> b!762452 m!709231))

(declare-fun m!709233 () Bool)

(assert (=> start!66240 m!709233))

(declare-fun m!709235 () Bool)

(assert (=> start!66240 m!709235))

(declare-fun m!709237 () Bool)

(assert (=> b!762453 m!709237))

(assert (=> b!762453 m!709237))

(declare-fun m!709239 () Bool)

(assert (=> b!762453 m!709239))

(declare-fun m!709241 () Bool)

(assert (=> b!762449 m!709241))

(declare-fun m!709243 () Bool)

(assert (=> b!762460 m!709243))

(assert (=> b!762459 m!709237))

(assert (=> b!762459 m!709237))

(declare-fun m!709245 () Bool)

(assert (=> b!762459 m!709245))

(assert (=> b!762459 m!709245))

(assert (=> b!762459 m!709237))

(declare-fun m!709247 () Bool)

(assert (=> b!762459 m!709247))

(declare-fun m!709249 () Bool)

(assert (=> b!762451 m!709249))

(declare-fun m!709251 () Bool)

(assert (=> b!762455 m!709251))

(declare-fun m!709253 () Bool)

(assert (=> b!762457 m!709253))

(assert (=> b!762456 m!709237))

(assert (=> b!762456 m!709237))

(declare-fun m!709255 () Bool)

(assert (=> b!762456 m!709255))

(assert (=> b!762458 m!709237))

(assert (=> b!762458 m!709237))

(declare-fun m!709257 () Bool)

(assert (=> b!762458 m!709257))

(push 1)

