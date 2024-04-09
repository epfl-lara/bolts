; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66238 () Bool)

(assert start!66238)

(declare-datatypes ((array!42096 0))(
  ( (array!42097 (arr!20152 (Array (_ BitVec 32) (_ BitVec 64))) (size!20573 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42096)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!762410 () Bool)

(declare-fun e!424978 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7759 0))(
  ( (MissingZero!7759 (index!33403 (_ BitVec 32))) (Found!7759 (index!33404 (_ BitVec 32))) (Intermediate!7759 (undefined!8571 Bool) (index!33405 (_ BitVec 32)) (x!64340 (_ BitVec 32))) (Undefined!7759) (MissingVacant!7759 (index!33406 (_ BitVec 32))) )
))
(declare-fun lt!339548 () SeekEntryResult!7759)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42096 (_ BitVec 32)) SeekEntryResult!7759)

(assert (=> b!762410 (= e!424978 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20152 a!3186) j!159) a!3186 mask!3328) lt!339548)))))

(declare-fun b!762411 () Bool)

(declare-fun res!515689 () Bool)

(declare-fun e!424977 () Bool)

(assert (=> b!762411 (=> (not res!515689) (not e!424977))))

(declare-datatypes ((List!14207 0))(
  ( (Nil!14204) (Cons!14203 (h!15287 (_ BitVec 64)) (t!20530 List!14207)) )
))
(declare-fun arrayNoDuplicates!0 (array!42096 (_ BitVec 32) List!14207) Bool)

(assert (=> b!762411 (= res!515689 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14204))))

(declare-fun res!515687 () Bool)

(declare-fun e!424976 () Bool)

(assert (=> start!66238 (=> (not res!515687) (not e!424976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66238 (= res!515687 (validMask!0 mask!3328))))

(assert (=> start!66238 e!424976))

(assert (=> start!66238 true))

(declare-fun array_inv!15926 (array!42096) Bool)

(assert (=> start!66238 (array_inv!15926 a!3186)))

(declare-fun b!762412 () Bool)

(declare-fun res!515688 () Bool)

(assert (=> b!762412 (=> (not res!515688) (not e!424976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762412 (= res!515688 (validKeyInArray!0 (select (arr!20152 a!3186) j!159)))))

(declare-fun b!762413 () Bool)

(declare-fun res!515686 () Bool)

(assert (=> b!762413 (=> (not res!515686) (not e!424976))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762413 (= res!515686 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!762414 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42096 (_ BitVec 32)) SeekEntryResult!7759)

(assert (=> b!762414 (= e!424978 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20152 a!3186) j!159) a!3186 mask!3328) (Found!7759 j!159))))))

(declare-fun b!762415 () Bool)

(declare-fun res!515684 () Bool)

(assert (=> b!762415 (=> (not res!515684) (not e!424977))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762415 (= res!515684 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20573 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20573 a!3186))))))

(declare-fun b!762416 () Bool)

(declare-fun res!515682 () Bool)

(assert (=> b!762416 (=> (not res!515682) (not e!424976))))

(assert (=> b!762416 (= res!515682 (validKeyInArray!0 k0!2102))))

(declare-fun b!762417 () Bool)

(declare-fun res!515681 () Bool)

(assert (=> b!762417 (=> (not res!515681) (not e!424976))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762417 (= res!515681 (and (= (size!20573 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20573 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20573 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762418 () Bool)

(declare-fun res!515685 () Bool)

(declare-fun e!424979 () Bool)

(assert (=> b!762418 (=> (not res!515685) (not e!424979))))

(assert (=> b!762418 (= res!515685 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20152 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762419 () Bool)

(assert (=> b!762419 (= e!424979 false)))

(declare-fun lt!339550 () Bool)

(assert (=> b!762419 (= lt!339550 e!424978)))

(declare-fun c!83751 () Bool)

(assert (=> b!762419 (= c!83751 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762420 () Bool)

(assert (=> b!762420 (= e!424977 e!424979)))

(declare-fun res!515690 () Bool)

(assert (=> b!762420 (=> (not res!515690) (not e!424979))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762420 (= res!515690 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20152 a!3186) j!159) mask!3328) (select (arr!20152 a!3186) j!159) a!3186 mask!3328) lt!339548))))

(assert (=> b!762420 (= lt!339548 (Intermediate!7759 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762421 () Bool)

(declare-fun res!515691 () Bool)

(assert (=> b!762421 (=> (not res!515691) (not e!424977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42096 (_ BitVec 32)) Bool)

(assert (=> b!762421 (= res!515691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762422 () Bool)

(assert (=> b!762422 (= e!424976 e!424977)))

(declare-fun res!515683 () Bool)

(assert (=> b!762422 (=> (not res!515683) (not e!424977))))

(declare-fun lt!339549 () SeekEntryResult!7759)

(assert (=> b!762422 (= res!515683 (or (= lt!339549 (MissingZero!7759 i!1173)) (= lt!339549 (MissingVacant!7759 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42096 (_ BitVec 32)) SeekEntryResult!7759)

(assert (=> b!762422 (= lt!339549 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!66238 res!515687) b!762417))

(assert (= (and b!762417 res!515681) b!762412))

(assert (= (and b!762412 res!515688) b!762416))

(assert (= (and b!762416 res!515682) b!762413))

(assert (= (and b!762413 res!515686) b!762422))

(assert (= (and b!762422 res!515683) b!762421))

(assert (= (and b!762421 res!515691) b!762411))

(assert (= (and b!762411 res!515689) b!762415))

(assert (= (and b!762415 res!515684) b!762420))

(assert (= (and b!762420 res!515690) b!762418))

(assert (= (and b!762418 res!515685) b!762419))

(assert (= (and b!762419 c!83751) b!762410))

(assert (= (and b!762419 (not c!83751)) b!762414))

(declare-fun m!709203 () Bool)

(assert (=> b!762412 m!709203))

(assert (=> b!762412 m!709203))

(declare-fun m!709205 () Bool)

(assert (=> b!762412 m!709205))

(declare-fun m!709207 () Bool)

(assert (=> b!762416 m!709207))

(declare-fun m!709209 () Bool)

(assert (=> b!762422 m!709209))

(assert (=> b!762410 m!709203))

(assert (=> b!762410 m!709203))

(declare-fun m!709211 () Bool)

(assert (=> b!762410 m!709211))

(declare-fun m!709213 () Bool)

(assert (=> start!66238 m!709213))

(declare-fun m!709215 () Bool)

(assert (=> start!66238 m!709215))

(declare-fun m!709217 () Bool)

(assert (=> b!762418 m!709217))

(assert (=> b!762420 m!709203))

(assert (=> b!762420 m!709203))

(declare-fun m!709219 () Bool)

(assert (=> b!762420 m!709219))

(assert (=> b!762420 m!709219))

(assert (=> b!762420 m!709203))

(declare-fun m!709221 () Bool)

(assert (=> b!762420 m!709221))

(assert (=> b!762414 m!709203))

(assert (=> b!762414 m!709203))

(declare-fun m!709223 () Bool)

(assert (=> b!762414 m!709223))

(declare-fun m!709225 () Bool)

(assert (=> b!762421 m!709225))

(declare-fun m!709227 () Bool)

(assert (=> b!762411 m!709227))

(declare-fun m!709229 () Bool)

(assert (=> b!762413 m!709229))

(check-sat (not b!762422) (not b!762414) (not b!762410) (not b!762416) (not b!762411) (not b!762421) (not start!66238) (not b!762420) (not b!762413) (not b!762412))
(check-sat)
