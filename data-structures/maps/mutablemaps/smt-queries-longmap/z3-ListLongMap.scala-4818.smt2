; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66268 () Bool)

(assert start!66268)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42126 0))(
  ( (array!42127 (arr!20167 (Array (_ BitVec 32) (_ BitVec 64))) (size!20588 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42126)

(declare-fun b!763009 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!425200 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7774 0))(
  ( (MissingZero!7774 (index!33463 (_ BitVec 32))) (Found!7774 (index!33464 (_ BitVec 32))) (Intermediate!7774 (undefined!8586 Bool) (index!33465 (_ BitVec 32)) (x!64395 (_ BitVec 32))) (Undefined!7774) (MissingVacant!7774 (index!33466 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42126 (_ BitVec 32)) SeekEntryResult!7774)

(assert (=> b!763009 (= e!425200 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20167 a!3186) j!159) a!3186 mask!3328) (Found!7774 j!159)))))

(declare-fun b!763010 () Bool)

(declare-fun e!425204 () Bool)

(declare-fun e!425203 () Bool)

(assert (=> b!763010 (= e!425204 e!425203)))

(declare-fun res!516195 () Bool)

(assert (=> b!763010 (=> (not res!516195) (not e!425203))))

(declare-fun lt!339683 () SeekEntryResult!7774)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763010 (= res!516195 (or (= lt!339683 (MissingZero!7774 i!1173)) (= lt!339683 (MissingVacant!7774 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42126 (_ BitVec 32)) SeekEntryResult!7774)

(assert (=> b!763010 (= lt!339683 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!763011 () Bool)

(declare-fun res!516192 () Bool)

(assert (=> b!763011 (=> (not res!516192) (not e!425203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42126 (_ BitVec 32)) Bool)

(assert (=> b!763011 (= res!516192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763012 () Bool)

(declare-fun res!516198 () Bool)

(assert (=> b!763012 (=> (not res!516198) (not e!425204))))

(declare-fun arrayContainsKey!0 (array!42126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763012 (= res!516198 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!516201 () Bool)

(assert (=> start!66268 (=> (not res!516201) (not e!425204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66268 (= res!516201 (validMask!0 mask!3328))))

(assert (=> start!66268 e!425204))

(assert (=> start!66268 true))

(declare-fun array_inv!15941 (array!42126) Bool)

(assert (=> start!66268 (array_inv!15941 a!3186)))

(declare-fun b!763013 () Bool)

(declare-fun res!516190 () Bool)

(declare-fun e!425201 () Bool)

(assert (=> b!763013 (=> (not res!516190) (not e!425201))))

(assert (=> b!763013 (= res!516190 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20167 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763014 () Bool)

(declare-fun res!516196 () Bool)

(assert (=> b!763014 (=> (not res!516196) (not e!425201))))

(assert (=> b!763014 (= res!516196 e!425200)))

(declare-fun c!83796 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763014 (= c!83796 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!339685 () SeekEntryResult!7774)

(declare-fun b!763015 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42126 (_ BitVec 32)) SeekEntryResult!7774)

(assert (=> b!763015 (= e!425200 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20167 a!3186) j!159) a!3186 mask!3328) lt!339685))))

(declare-fun b!763016 () Bool)

(declare-fun res!516191 () Bool)

(assert (=> b!763016 (=> (not res!516191) (not e!425203))))

(assert (=> b!763016 (= res!516191 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20588 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20588 a!3186))))))

(declare-fun b!763017 () Bool)

(assert (=> b!763017 (= e!425201 false)))

(declare-fun lt!339684 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763017 (= lt!339684 (toIndex!0 (select (store (arr!20167 a!3186) i!1173 k0!2102) j!159) mask!3328))))

(declare-fun b!763018 () Bool)

(declare-fun res!516200 () Bool)

(assert (=> b!763018 (=> (not res!516200) (not e!425204))))

(assert (=> b!763018 (= res!516200 (and (= (size!20588 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20588 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20588 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763019 () Bool)

(declare-fun res!516194 () Bool)

(assert (=> b!763019 (=> (not res!516194) (not e!425204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763019 (= res!516194 (validKeyInArray!0 k0!2102))))

(declare-fun b!763020 () Bool)

(declare-fun res!516197 () Bool)

(assert (=> b!763020 (=> (not res!516197) (not e!425204))))

(assert (=> b!763020 (= res!516197 (validKeyInArray!0 (select (arr!20167 a!3186) j!159)))))

(declare-fun b!763021 () Bool)

(declare-fun res!516199 () Bool)

(assert (=> b!763021 (=> (not res!516199) (not e!425203))))

(declare-datatypes ((List!14222 0))(
  ( (Nil!14219) (Cons!14218 (h!15302 (_ BitVec 64)) (t!20545 List!14222)) )
))
(declare-fun arrayNoDuplicates!0 (array!42126 (_ BitVec 32) List!14222) Bool)

(assert (=> b!763021 (= res!516199 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14219))))

(declare-fun b!763022 () Bool)

(assert (=> b!763022 (= e!425203 e!425201)))

(declare-fun res!516193 () Bool)

(assert (=> b!763022 (=> (not res!516193) (not e!425201))))

(assert (=> b!763022 (= res!516193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20167 a!3186) j!159) mask!3328) (select (arr!20167 a!3186) j!159) a!3186 mask!3328) lt!339685))))

(assert (=> b!763022 (= lt!339685 (Intermediate!7774 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66268 res!516201) b!763018))

(assert (= (and b!763018 res!516200) b!763020))

(assert (= (and b!763020 res!516197) b!763019))

(assert (= (and b!763019 res!516194) b!763012))

(assert (= (and b!763012 res!516198) b!763010))

(assert (= (and b!763010 res!516195) b!763011))

(assert (= (and b!763011 res!516192) b!763021))

(assert (= (and b!763021 res!516199) b!763016))

(assert (= (and b!763016 res!516191) b!763022))

(assert (= (and b!763022 res!516193) b!763013))

(assert (= (and b!763013 res!516190) b!763014))

(assert (= (and b!763014 c!83796) b!763015))

(assert (= (and b!763014 (not c!83796)) b!763009))

(assert (= (and b!763014 res!516196) b!763017))

(declare-fun m!709647 () Bool)

(assert (=> b!763011 m!709647))

(declare-fun m!709649 () Bool)

(assert (=> b!763022 m!709649))

(assert (=> b!763022 m!709649))

(declare-fun m!709651 () Bool)

(assert (=> b!763022 m!709651))

(assert (=> b!763022 m!709651))

(assert (=> b!763022 m!709649))

(declare-fun m!709653 () Bool)

(assert (=> b!763022 m!709653))

(assert (=> b!763015 m!709649))

(assert (=> b!763015 m!709649))

(declare-fun m!709655 () Bool)

(assert (=> b!763015 m!709655))

(declare-fun m!709657 () Bool)

(assert (=> b!763010 m!709657))

(declare-fun m!709659 () Bool)

(assert (=> b!763021 m!709659))

(declare-fun m!709661 () Bool)

(assert (=> b!763013 m!709661))

(assert (=> b!763020 m!709649))

(assert (=> b!763020 m!709649))

(declare-fun m!709663 () Bool)

(assert (=> b!763020 m!709663))

(declare-fun m!709665 () Bool)

(assert (=> b!763012 m!709665))

(assert (=> b!763009 m!709649))

(assert (=> b!763009 m!709649))

(declare-fun m!709667 () Bool)

(assert (=> b!763009 m!709667))

(declare-fun m!709669 () Bool)

(assert (=> start!66268 m!709669))

(declare-fun m!709671 () Bool)

(assert (=> start!66268 m!709671))

(declare-fun m!709673 () Bool)

(assert (=> b!763017 m!709673))

(declare-fun m!709675 () Bool)

(assert (=> b!763017 m!709675))

(assert (=> b!763017 m!709675))

(declare-fun m!709677 () Bool)

(assert (=> b!763017 m!709677))

(declare-fun m!709679 () Bool)

(assert (=> b!763019 m!709679))

(check-sat (not b!763015) (not b!763021) (not b!763010) (not b!763019) (not start!66268) (not b!763022) (not b!763009) (not b!763017) (not b!763012) (not b!763020) (not b!763011))
(check-sat)
