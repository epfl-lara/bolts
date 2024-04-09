; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66274 () Bool)

(assert start!66274)

(declare-fun b!763130 () Bool)

(declare-fun e!425249 () Bool)

(declare-fun e!425245 () Bool)

(assert (=> b!763130 (= e!425249 e!425245)))

(declare-fun res!516296 () Bool)

(assert (=> b!763130 (=> (not res!516296) (not e!425245))))

(declare-datatypes ((SeekEntryResult!7777 0))(
  ( (MissingZero!7777 (index!33475 (_ BitVec 32))) (Found!7777 (index!33476 (_ BitVec 32))) (Intermediate!7777 (undefined!8589 Bool) (index!33477 (_ BitVec 32)) (x!64406 (_ BitVec 32))) (Undefined!7777) (MissingVacant!7777 (index!33478 (_ BitVec 32))) )
))
(declare-fun lt!339711 () SeekEntryResult!7777)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763130 (= res!516296 (or (= lt!339711 (MissingZero!7777 i!1173)) (= lt!339711 (MissingVacant!7777 i!1173))))))

(declare-datatypes ((array!42132 0))(
  ( (array!42133 (arr!20170 (Array (_ BitVec 32) (_ BitVec 64))) (size!20591 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42132)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42132 (_ BitVec 32)) SeekEntryResult!7777)

(assert (=> b!763130 (= lt!339711 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!763131 () Bool)

(declare-fun res!516301 () Bool)

(declare-fun e!425248 () Bool)

(assert (=> b!763131 (=> (not res!516301) (not e!425248))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!763131 (= res!516301 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20170 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763132 () Bool)

(declare-fun res!516297 () Bool)

(assert (=> b!763132 (=> (not res!516297) (not e!425249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763132 (= res!516297 (validKeyInArray!0 k0!2102))))

(declare-fun b!763133 () Bool)

(assert (=> b!763133 (= e!425245 e!425248)))

(declare-fun res!516299 () Bool)

(assert (=> b!763133 (=> (not res!516299) (not e!425248))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!339712 () SeekEntryResult!7777)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42132 (_ BitVec 32)) SeekEntryResult!7777)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763133 (= res!516299 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20170 a!3186) j!159) mask!3328) (select (arr!20170 a!3186) j!159) a!3186 mask!3328) lt!339712))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763133 (= lt!339712 (Intermediate!7777 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763134 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!425246 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!763134 (= e!425246 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20170 a!3186) j!159) a!3186 mask!3328) lt!339712)))))

(declare-fun b!763135 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42132 (_ BitVec 32)) SeekEntryResult!7777)

(assert (=> b!763135 (= e!425246 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20170 a!3186) j!159) a!3186 mask!3328) (Found!7777 j!159))))))

(declare-fun b!763136 () Bool)

(declare-fun res!516294 () Bool)

(assert (=> b!763136 (=> (not res!516294) (not e!425249))))

(assert (=> b!763136 (= res!516294 (validKeyInArray!0 (select (arr!20170 a!3186) j!159)))))

(declare-fun res!516298 () Bool)

(assert (=> start!66274 (=> (not res!516298) (not e!425249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66274 (= res!516298 (validMask!0 mask!3328))))

(assert (=> start!66274 e!425249))

(assert (=> start!66274 true))

(declare-fun array_inv!15944 (array!42132) Bool)

(assert (=> start!66274 (array_inv!15944 a!3186)))

(declare-fun b!763137 () Bool)

(declare-fun res!516293 () Bool)

(assert (=> b!763137 (=> (not res!516293) (not e!425249))))

(assert (=> b!763137 (= res!516293 (and (= (size!20591 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20591 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20591 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763138 () Bool)

(declare-fun res!516302 () Bool)

(assert (=> b!763138 (=> (not res!516302) (not e!425245))))

(declare-datatypes ((List!14225 0))(
  ( (Nil!14222) (Cons!14221 (h!15305 (_ BitVec 64)) (t!20548 List!14225)) )
))
(declare-fun arrayNoDuplicates!0 (array!42132 (_ BitVec 32) List!14225) Bool)

(assert (=> b!763138 (= res!516302 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14222))))

(declare-fun b!763139 () Bool)

(declare-fun res!516303 () Bool)

(assert (=> b!763139 (=> (not res!516303) (not e!425249))))

(declare-fun arrayContainsKey!0 (array!42132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763139 (= res!516303 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763140 () Bool)

(declare-fun res!516300 () Bool)

(assert (=> b!763140 (=> (not res!516300) (not e!425245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42132 (_ BitVec 32)) Bool)

(assert (=> b!763140 (= res!516300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763141 () Bool)

(assert (=> b!763141 (= e!425248 false)))

(declare-fun lt!339710 () Bool)

(assert (=> b!763141 (= lt!339710 e!425246)))

(declare-fun c!83805 () Bool)

(assert (=> b!763141 (= c!83805 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763142 () Bool)

(declare-fun res!516295 () Bool)

(assert (=> b!763142 (=> (not res!516295) (not e!425245))))

(assert (=> b!763142 (= res!516295 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20591 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20591 a!3186))))))

(assert (= (and start!66274 res!516298) b!763137))

(assert (= (and b!763137 res!516293) b!763136))

(assert (= (and b!763136 res!516294) b!763132))

(assert (= (and b!763132 res!516297) b!763139))

(assert (= (and b!763139 res!516303) b!763130))

(assert (= (and b!763130 res!516296) b!763140))

(assert (= (and b!763140 res!516300) b!763138))

(assert (= (and b!763138 res!516302) b!763142))

(assert (= (and b!763142 res!516295) b!763133))

(assert (= (and b!763133 res!516299) b!763131))

(assert (= (and b!763131 res!516301) b!763141))

(assert (= (and b!763141 c!83805) b!763134))

(assert (= (and b!763141 (not c!83805)) b!763135))

(declare-fun m!709743 () Bool)

(assert (=> b!763139 m!709743))

(declare-fun m!709745 () Bool)

(assert (=> b!763138 m!709745))

(declare-fun m!709747 () Bool)

(assert (=> b!763135 m!709747))

(assert (=> b!763135 m!709747))

(declare-fun m!709749 () Bool)

(assert (=> b!763135 m!709749))

(declare-fun m!709751 () Bool)

(assert (=> b!763140 m!709751))

(assert (=> b!763136 m!709747))

(assert (=> b!763136 m!709747))

(declare-fun m!709753 () Bool)

(assert (=> b!763136 m!709753))

(declare-fun m!709755 () Bool)

(assert (=> start!66274 m!709755))

(declare-fun m!709757 () Bool)

(assert (=> start!66274 m!709757))

(assert (=> b!763134 m!709747))

(assert (=> b!763134 m!709747))

(declare-fun m!709759 () Bool)

(assert (=> b!763134 m!709759))

(assert (=> b!763133 m!709747))

(assert (=> b!763133 m!709747))

(declare-fun m!709761 () Bool)

(assert (=> b!763133 m!709761))

(assert (=> b!763133 m!709761))

(assert (=> b!763133 m!709747))

(declare-fun m!709763 () Bool)

(assert (=> b!763133 m!709763))

(declare-fun m!709765 () Bool)

(assert (=> b!763132 m!709765))

(declare-fun m!709767 () Bool)

(assert (=> b!763130 m!709767))

(declare-fun m!709769 () Bool)

(assert (=> b!763131 m!709769))

(check-sat (not b!763139) (not b!763133) (not start!66274) (not b!763132) (not b!763135) (not b!763138) (not b!763130) (not b!763136) (not b!763134) (not b!763140))
(check-sat)
