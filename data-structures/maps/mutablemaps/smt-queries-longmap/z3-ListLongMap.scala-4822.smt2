; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66292 () Bool)

(assert start!66292)

(declare-fun b!763495 () Bool)

(declare-fun res!516610 () Bool)

(declare-fun e!425381 () Bool)

(assert (=> b!763495 (=> (not res!516610) (not e!425381))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763495 (= res!516610 (validKeyInArray!0 k0!2102))))

(declare-fun b!763496 () Bool)

(declare-fun res!516604 () Bool)

(declare-fun e!425383 () Bool)

(assert (=> b!763496 (=> (not res!516604) (not e!425383))))

(declare-datatypes ((array!42150 0))(
  ( (array!42151 (arr!20179 (Array (_ BitVec 32) (_ BitVec 64))) (size!20600 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42150)

(declare-datatypes ((List!14234 0))(
  ( (Nil!14231) (Cons!14230 (h!15314 (_ BitVec 64)) (t!20557 List!14234)) )
))
(declare-fun arrayNoDuplicates!0 (array!42150 (_ BitVec 32) List!14234) Bool)

(assert (=> b!763496 (= res!516604 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14231))))

(declare-fun b!763497 () Bool)

(declare-fun e!425382 () Bool)

(assert (=> b!763497 (= e!425382 false)))

(declare-fun lt!339837 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!339833 () array!42150)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7786 0))(
  ( (MissingZero!7786 (index!33511 (_ BitVec 32))) (Found!7786 (index!33512 (_ BitVec 32))) (Intermediate!7786 (undefined!8598 Bool) (index!33513 (_ BitVec 32)) (x!64439 (_ BitVec 32))) (Undefined!7786) (MissingVacant!7786 (index!33514 (_ BitVec 32))) )
))
(declare-fun lt!339835 () SeekEntryResult!7786)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42150 (_ BitVec 32)) SeekEntryResult!7786)

(assert (=> b!763497 (= lt!339835 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339837 lt!339833 mask!3328))))

(declare-fun lt!339838 () SeekEntryResult!7786)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763497 (= lt!339838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339837 mask!3328) lt!339837 lt!339833 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!763497 (= lt!339837 (select (store (arr!20179 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!763497 (= lt!339833 (array!42151 (store (arr!20179 a!3186) i!1173 k0!2102) (size!20600 a!3186)))))

(declare-fun res!516608 () Bool)

(assert (=> start!66292 (=> (not res!516608) (not e!425381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66292 (= res!516608 (validMask!0 mask!3328))))

(assert (=> start!66292 e!425381))

(assert (=> start!66292 true))

(declare-fun array_inv!15953 (array!42150) Bool)

(assert (=> start!66292 (array_inv!15953 a!3186)))

(declare-fun b!763498 () Bool)

(declare-fun res!516609 () Bool)

(assert (=> b!763498 (=> (not res!516609) (not e!425381))))

(assert (=> b!763498 (= res!516609 (validKeyInArray!0 (select (arr!20179 a!3186) j!159)))))

(declare-fun b!763499 () Bool)

(assert (=> b!763499 (= e!425381 e!425383)))

(declare-fun res!516615 () Bool)

(assert (=> b!763499 (=> (not res!516615) (not e!425383))))

(declare-fun lt!339834 () SeekEntryResult!7786)

(assert (=> b!763499 (= res!516615 (or (= lt!339834 (MissingZero!7786 i!1173)) (= lt!339834 (MissingVacant!7786 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42150 (_ BitVec 32)) SeekEntryResult!7786)

(assert (=> b!763499 (= lt!339834 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!763500 () Bool)

(declare-fun res!516612 () Bool)

(assert (=> b!763500 (=> (not res!516612) (not e!425381))))

(declare-fun arrayContainsKey!0 (array!42150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763500 (= res!516612 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763501 () Bool)

(assert (=> b!763501 (= e!425383 e!425382)))

(declare-fun res!516613 () Bool)

(assert (=> b!763501 (=> (not res!516613) (not e!425382))))

(declare-fun lt!339836 () SeekEntryResult!7786)

(assert (=> b!763501 (= res!516613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20179 a!3186) j!159) mask!3328) (select (arr!20179 a!3186) j!159) a!3186 mask!3328) lt!339836))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763501 (= lt!339836 (Intermediate!7786 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763502 () Bool)

(declare-fun e!425384 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42150 (_ BitVec 32)) SeekEntryResult!7786)

(assert (=> b!763502 (= e!425384 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20179 a!3186) j!159) a!3186 mask!3328) (Found!7786 j!159)))))

(declare-fun b!763503 () Bool)

(declare-fun res!516614 () Bool)

(assert (=> b!763503 (=> (not res!516614) (not e!425383))))

(assert (=> b!763503 (= res!516614 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20600 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20600 a!3186))))))

(declare-fun b!763504 () Bool)

(declare-fun res!516611 () Bool)

(assert (=> b!763504 (=> (not res!516611) (not e!425381))))

(assert (=> b!763504 (= res!516611 (and (= (size!20600 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20600 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20600 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763505 () Bool)

(declare-fun res!516606 () Bool)

(assert (=> b!763505 (=> (not res!516606) (not e!425382))))

(assert (=> b!763505 (= res!516606 e!425384)))

(declare-fun c!83832 () Bool)

(assert (=> b!763505 (= c!83832 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763506 () Bool)

(declare-fun res!516607 () Bool)

(assert (=> b!763506 (=> (not res!516607) (not e!425382))))

(assert (=> b!763506 (= res!516607 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20179 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763507 () Bool)

(assert (=> b!763507 (= e!425384 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20179 a!3186) j!159) a!3186 mask!3328) lt!339836))))

(declare-fun b!763508 () Bool)

(declare-fun res!516605 () Bool)

(assert (=> b!763508 (=> (not res!516605) (not e!425383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42150 (_ BitVec 32)) Bool)

(assert (=> b!763508 (= res!516605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66292 res!516608) b!763504))

(assert (= (and b!763504 res!516611) b!763498))

(assert (= (and b!763498 res!516609) b!763495))

(assert (= (and b!763495 res!516610) b!763500))

(assert (= (and b!763500 res!516612) b!763499))

(assert (= (and b!763499 res!516615) b!763508))

(assert (= (and b!763508 res!516605) b!763496))

(assert (= (and b!763496 res!516604) b!763503))

(assert (= (and b!763503 res!516614) b!763501))

(assert (= (and b!763501 res!516613) b!763506))

(assert (= (and b!763506 res!516607) b!763505))

(assert (= (and b!763505 c!83832) b!763507))

(assert (= (and b!763505 (not c!83832)) b!763502))

(assert (= (and b!763505 res!516606) b!763497))

(declare-fun m!710035 () Bool)

(assert (=> b!763497 m!710035))

(declare-fun m!710037 () Bool)

(assert (=> b!763497 m!710037))

(declare-fun m!710039 () Bool)

(assert (=> b!763497 m!710039))

(declare-fun m!710041 () Bool)

(assert (=> b!763497 m!710041))

(assert (=> b!763497 m!710035))

(declare-fun m!710043 () Bool)

(assert (=> b!763497 m!710043))

(declare-fun m!710045 () Bool)

(assert (=> b!763500 m!710045))

(declare-fun m!710047 () Bool)

(assert (=> b!763496 m!710047))

(declare-fun m!710049 () Bool)

(assert (=> b!763499 m!710049))

(declare-fun m!710051 () Bool)

(assert (=> start!66292 m!710051))

(declare-fun m!710053 () Bool)

(assert (=> start!66292 m!710053))

(declare-fun m!710055 () Bool)

(assert (=> b!763498 m!710055))

(assert (=> b!763498 m!710055))

(declare-fun m!710057 () Bool)

(assert (=> b!763498 m!710057))

(declare-fun m!710059 () Bool)

(assert (=> b!763506 m!710059))

(assert (=> b!763501 m!710055))

(assert (=> b!763501 m!710055))

(declare-fun m!710061 () Bool)

(assert (=> b!763501 m!710061))

(assert (=> b!763501 m!710061))

(assert (=> b!763501 m!710055))

(declare-fun m!710063 () Bool)

(assert (=> b!763501 m!710063))

(assert (=> b!763502 m!710055))

(assert (=> b!763502 m!710055))

(declare-fun m!710065 () Bool)

(assert (=> b!763502 m!710065))

(assert (=> b!763507 m!710055))

(assert (=> b!763507 m!710055))

(declare-fun m!710067 () Bool)

(assert (=> b!763507 m!710067))

(declare-fun m!710069 () Bool)

(assert (=> b!763495 m!710069))

(declare-fun m!710071 () Bool)

(assert (=> b!763508 m!710071))

(check-sat (not b!763498) (not b!763501) (not b!763495) (not b!763502) (not b!763507) (not b!763499) (not start!66292) (not b!763497) (not b!763508) (not b!763496) (not b!763500))
(check-sat)
