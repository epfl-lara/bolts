; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66270 () Bool)

(assert start!66270)

(declare-fun b!763051 () Bool)

(declare-fun res!516229 () Bool)

(declare-fun e!425215 () Bool)

(assert (=> b!763051 (=> (not res!516229) (not e!425215))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763051 (= res!516229 (validKeyInArray!0 k!2102))))

(declare-fun b!763052 () Bool)

(declare-fun res!516232 () Bool)

(declare-fun e!425216 () Bool)

(assert (=> b!763052 (=> (not res!516232) (not e!425216))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42128 0))(
  ( (array!42129 (arr!20168 (Array (_ BitVec 32) (_ BitVec 64))) (size!20589 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42128)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763052 (= res!516232 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20168 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763053 () Bool)

(declare-fun res!516226 () Bool)

(assert (=> b!763053 (=> (not res!516226) (not e!425215))))

(declare-fun arrayContainsKey!0 (array!42128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763053 (= res!516226 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763054 () Bool)

(declare-fun res!516233 () Bool)

(assert (=> b!763054 (=> (not res!516233) (not e!425215))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!763054 (= res!516233 (validKeyInArray!0 (select (arr!20168 a!3186) j!159)))))

(declare-fun b!763055 () Bool)

(declare-fun res!516227 () Bool)

(assert (=> b!763055 (=> (not res!516227) (not e!425215))))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!763055 (= res!516227 (and (= (size!20589 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20589 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20589 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763056 () Bool)

(declare-fun res!516236 () Bool)

(declare-fun e!425218 () Bool)

(assert (=> b!763056 (=> (not res!516236) (not e!425218))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763056 (= res!516236 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20589 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20589 a!3186))))))

(declare-fun res!516237 () Bool)

(assert (=> start!66270 (=> (not res!516237) (not e!425215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66270 (= res!516237 (validMask!0 mask!3328))))

(assert (=> start!66270 e!425215))

(assert (=> start!66270 true))

(declare-fun array_inv!15942 (array!42128) Bool)

(assert (=> start!66270 (array_inv!15942 a!3186)))

(declare-fun b!763057 () Bool)

(assert (=> b!763057 (= e!425218 e!425216)))

(declare-fun res!516230 () Bool)

(assert (=> b!763057 (=> (not res!516230) (not e!425216))))

(declare-datatypes ((SeekEntryResult!7775 0))(
  ( (MissingZero!7775 (index!33467 (_ BitVec 32))) (Found!7775 (index!33468 (_ BitVec 32))) (Intermediate!7775 (undefined!8587 Bool) (index!33469 (_ BitVec 32)) (x!64396 (_ BitVec 32))) (Undefined!7775) (MissingVacant!7775 (index!33470 (_ BitVec 32))) )
))
(declare-fun lt!339693 () SeekEntryResult!7775)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42128 (_ BitVec 32)) SeekEntryResult!7775)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763057 (= res!516230 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20168 a!3186) j!159) mask!3328) (select (arr!20168 a!3186) j!159) a!3186 mask!3328) lt!339693))))

(assert (=> b!763057 (= lt!339693 (Intermediate!7775 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763058 () Bool)

(declare-fun res!516234 () Bool)

(assert (=> b!763058 (=> (not res!516234) (not e!425218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42128 (_ BitVec 32)) Bool)

(assert (=> b!763058 (= res!516234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763059 () Bool)

(declare-fun e!425217 () Bool)

(assert (=> b!763059 (= e!425217 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20168 a!3186) j!159) a!3186 mask!3328) lt!339693))))

(declare-fun b!763060 () Bool)

(declare-fun res!516235 () Bool)

(assert (=> b!763060 (=> (not res!516235) (not e!425218))))

(declare-datatypes ((List!14223 0))(
  ( (Nil!14220) (Cons!14219 (h!15303 (_ BitVec 64)) (t!20546 List!14223)) )
))
(declare-fun arrayNoDuplicates!0 (array!42128 (_ BitVec 32) List!14223) Bool)

(assert (=> b!763060 (= res!516235 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14220))))

(declare-fun b!763061 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42128 (_ BitVec 32)) SeekEntryResult!7775)

(assert (=> b!763061 (= e!425217 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20168 a!3186) j!159) a!3186 mask!3328) (Found!7775 j!159)))))

(declare-fun b!763062 () Bool)

(declare-fun res!516228 () Bool)

(assert (=> b!763062 (=> (not res!516228) (not e!425216))))

(assert (=> b!763062 (= res!516228 e!425217)))

(declare-fun c!83799 () Bool)

(assert (=> b!763062 (= c!83799 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763063 () Bool)

(assert (=> b!763063 (= e!425215 e!425218)))

(declare-fun res!516231 () Bool)

(assert (=> b!763063 (=> (not res!516231) (not e!425218))))

(declare-fun lt!339692 () SeekEntryResult!7775)

(assert (=> b!763063 (= res!516231 (or (= lt!339692 (MissingZero!7775 i!1173)) (= lt!339692 (MissingVacant!7775 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42128 (_ BitVec 32)) SeekEntryResult!7775)

(assert (=> b!763063 (= lt!339692 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763064 () Bool)

(assert (=> b!763064 (= e!425216 false)))

(declare-fun lt!339694 () (_ BitVec 32))

(assert (=> b!763064 (= lt!339694 (toIndex!0 (select (store (arr!20168 a!3186) i!1173 k!2102) j!159) mask!3328))))

(assert (= (and start!66270 res!516237) b!763055))

(assert (= (and b!763055 res!516227) b!763054))

(assert (= (and b!763054 res!516233) b!763051))

(assert (= (and b!763051 res!516229) b!763053))

(assert (= (and b!763053 res!516226) b!763063))

(assert (= (and b!763063 res!516231) b!763058))

(assert (= (and b!763058 res!516234) b!763060))

(assert (= (and b!763060 res!516235) b!763056))

(assert (= (and b!763056 res!516236) b!763057))

(assert (= (and b!763057 res!516230) b!763052))

(assert (= (and b!763052 res!516232) b!763062))

(assert (= (and b!763062 c!83799) b!763059))

(assert (= (and b!763062 (not c!83799)) b!763061))

(assert (= (and b!763062 res!516228) b!763064))

(declare-fun m!709681 () Bool)

(assert (=> b!763061 m!709681))

(assert (=> b!763061 m!709681))

(declare-fun m!709683 () Bool)

(assert (=> b!763061 m!709683))

(declare-fun m!709685 () Bool)

(assert (=> b!763053 m!709685))

(declare-fun m!709687 () Bool)

(assert (=> b!763063 m!709687))

(declare-fun m!709689 () Bool)

(assert (=> start!66270 m!709689))

(declare-fun m!709691 () Bool)

(assert (=> start!66270 m!709691))

(declare-fun m!709693 () Bool)

(assert (=> b!763060 m!709693))

(assert (=> b!763059 m!709681))

(assert (=> b!763059 m!709681))

(declare-fun m!709695 () Bool)

(assert (=> b!763059 m!709695))

(declare-fun m!709697 () Bool)

(assert (=> b!763051 m!709697))

(declare-fun m!709699 () Bool)

(assert (=> b!763064 m!709699))

(declare-fun m!709701 () Bool)

(assert (=> b!763064 m!709701))

(assert (=> b!763064 m!709701))

(declare-fun m!709703 () Bool)

(assert (=> b!763064 m!709703))

(declare-fun m!709705 () Bool)

(assert (=> b!763058 m!709705))

(assert (=> b!763057 m!709681))

(assert (=> b!763057 m!709681))

(declare-fun m!709707 () Bool)

(assert (=> b!763057 m!709707))

(assert (=> b!763057 m!709707))

(assert (=> b!763057 m!709681))

(declare-fun m!709709 () Bool)

(assert (=> b!763057 m!709709))

(declare-fun m!709711 () Bool)

(assert (=> b!763052 m!709711))

(assert (=> b!763054 m!709681))

(assert (=> b!763054 m!709681))

(declare-fun m!709713 () Bool)

(assert (=> b!763054 m!709713))

(push 1)

