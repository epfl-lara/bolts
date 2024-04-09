; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66278 () Bool)

(assert start!66278)

(declare-datatypes ((array!42136 0))(
  ( (array!42137 (arr!20172 (Array (_ BitVec 32) (_ BitVec 64))) (size!20593 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42136)

(declare-fun e!425275 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7779 0))(
  ( (MissingZero!7779 (index!33483 (_ BitVec 32))) (Found!7779 (index!33484 (_ BitVec 32))) (Intermediate!7779 (undefined!8591 Bool) (index!33485 (_ BitVec 32)) (x!64416 (_ BitVec 32))) (Undefined!7779) (MissingVacant!7779 (index!33486 (_ BitVec 32))) )
))
(declare-fun lt!339730 () SeekEntryResult!7779)

(declare-fun b!763208 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42136 (_ BitVec 32)) SeekEntryResult!7779)

(assert (=> b!763208 (= e!425275 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20172 a!3186) j!159) a!3186 mask!3328) lt!339730)))))

(declare-fun res!516360 () Bool)

(declare-fun e!425279 () Bool)

(assert (=> start!66278 (=> (not res!516360) (not e!425279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66278 (= res!516360 (validMask!0 mask!3328))))

(assert (=> start!66278 e!425279))

(assert (=> start!66278 true))

(declare-fun array_inv!15946 (array!42136) Bool)

(assert (=> start!66278 (array_inv!15946 a!3186)))

(declare-fun b!763209 () Bool)

(declare-fun res!516365 () Bool)

(declare-fun e!425278 () Bool)

(assert (=> b!763209 (=> (not res!516365) (not e!425278))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763209 (= res!516365 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20172 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763210 () Bool)

(declare-fun res!516364 () Bool)

(declare-fun e!425277 () Bool)

(assert (=> b!763210 (=> (not res!516364) (not e!425277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42136 (_ BitVec 32)) Bool)

(assert (=> b!763210 (= res!516364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763211 () Bool)

(declare-fun res!516363 () Bool)

(assert (=> b!763211 (=> (not res!516363) (not e!425279))))

(assert (=> b!763211 (= res!516363 (and (= (size!20593 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20593 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20593 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763212 () Bool)

(assert (=> b!763212 (= e!425278 false)))

(declare-fun lt!339729 () Bool)

(assert (=> b!763212 (= lt!339729 e!425275)))

(declare-fun c!83811 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763212 (= c!83811 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763213 () Bool)

(assert (=> b!763213 (= e!425279 e!425277)))

(declare-fun res!516367 () Bool)

(assert (=> b!763213 (=> (not res!516367) (not e!425277))))

(declare-fun lt!339728 () SeekEntryResult!7779)

(assert (=> b!763213 (= res!516367 (or (= lt!339728 (MissingZero!7779 i!1173)) (= lt!339728 (MissingVacant!7779 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42136 (_ BitVec 32)) SeekEntryResult!7779)

(assert (=> b!763213 (= lt!339728 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763214 () Bool)

(declare-fun res!516366 () Bool)

(assert (=> b!763214 (=> (not res!516366) (not e!425279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763214 (= res!516366 (validKeyInArray!0 k!2102))))

(declare-fun b!763215 () Bool)

(declare-fun res!516359 () Bool)

(assert (=> b!763215 (=> (not res!516359) (not e!425279))))

(assert (=> b!763215 (= res!516359 (validKeyInArray!0 (select (arr!20172 a!3186) j!159)))))

(declare-fun b!763216 () Bool)

(declare-fun res!516368 () Bool)

(assert (=> b!763216 (=> (not res!516368) (not e!425277))))

(assert (=> b!763216 (= res!516368 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20593 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20593 a!3186))))))

(declare-fun b!763217 () Bool)

(declare-fun res!516361 () Bool)

(assert (=> b!763217 (=> (not res!516361) (not e!425277))))

(declare-datatypes ((List!14227 0))(
  ( (Nil!14224) (Cons!14223 (h!15307 (_ BitVec 64)) (t!20550 List!14227)) )
))
(declare-fun arrayNoDuplicates!0 (array!42136 (_ BitVec 32) List!14227) Bool)

(assert (=> b!763217 (= res!516361 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14224))))

(declare-fun b!763218 () Bool)

(assert (=> b!763218 (= e!425277 e!425278)))

(declare-fun res!516369 () Bool)

(assert (=> b!763218 (=> (not res!516369) (not e!425278))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763218 (= res!516369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20172 a!3186) j!159) mask!3328) (select (arr!20172 a!3186) j!159) a!3186 mask!3328) lt!339730))))

(assert (=> b!763218 (= lt!339730 (Intermediate!7779 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763219 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42136 (_ BitVec 32)) SeekEntryResult!7779)

(assert (=> b!763219 (= e!425275 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20172 a!3186) j!159) a!3186 mask!3328) (Found!7779 j!159))))))

(declare-fun b!763220 () Bool)

(declare-fun res!516362 () Bool)

(assert (=> b!763220 (=> (not res!516362) (not e!425279))))

(declare-fun arrayContainsKey!0 (array!42136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763220 (= res!516362 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!66278 res!516360) b!763211))

(assert (= (and b!763211 res!516363) b!763215))

(assert (= (and b!763215 res!516359) b!763214))

(assert (= (and b!763214 res!516366) b!763220))

(assert (= (and b!763220 res!516362) b!763213))

(assert (= (and b!763213 res!516367) b!763210))

(assert (= (and b!763210 res!516364) b!763217))

(assert (= (and b!763217 res!516361) b!763216))

(assert (= (and b!763216 res!516368) b!763218))

(assert (= (and b!763218 res!516369) b!763209))

(assert (= (and b!763209 res!516365) b!763212))

(assert (= (and b!763212 c!83811) b!763208))

(assert (= (and b!763212 (not c!83811)) b!763219))

(declare-fun m!709799 () Bool)

(assert (=> b!763208 m!709799))

(assert (=> b!763208 m!709799))

(declare-fun m!709801 () Bool)

(assert (=> b!763208 m!709801))

(declare-fun m!709803 () Bool)

(assert (=> b!763217 m!709803))

(assert (=> b!763215 m!709799))

(assert (=> b!763215 m!709799))

(declare-fun m!709805 () Bool)

(assert (=> b!763215 m!709805))

(declare-fun m!709807 () Bool)

(assert (=> b!763214 m!709807))

(declare-fun m!709809 () Bool)

(assert (=> start!66278 m!709809))

(declare-fun m!709811 () Bool)

(assert (=> start!66278 m!709811))

(declare-fun m!709813 () Bool)

(assert (=> b!763209 m!709813))

(declare-fun m!709815 () Bool)

(assert (=> b!763210 m!709815))

(declare-fun m!709817 () Bool)

(assert (=> b!763220 m!709817))

(assert (=> b!763219 m!709799))

(assert (=> b!763219 m!709799))

(declare-fun m!709819 () Bool)

(assert (=> b!763219 m!709819))

(declare-fun m!709821 () Bool)

(assert (=> b!763213 m!709821))

(assert (=> b!763218 m!709799))

(assert (=> b!763218 m!709799))

(declare-fun m!709823 () Bool)

(assert (=> b!763218 m!709823))

(assert (=> b!763218 m!709823))

(assert (=> b!763218 m!709799))

(declare-fun m!709825 () Bool)

(assert (=> b!763218 m!709825))

(push 1)

