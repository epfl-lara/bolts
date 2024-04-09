; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66286 () Bool)

(assert start!66286)

(declare-fun b!763369 () Bool)

(declare-fun res!516501 () Bool)

(declare-fun e!425337 () Bool)

(assert (=> b!763369 (=> (not res!516501) (not e!425337))))

(declare-datatypes ((array!42144 0))(
  ( (array!42145 (arr!20176 (Array (_ BitVec 32) (_ BitVec 64))) (size!20597 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42144)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!763369 (= res!516501 (and (= (size!20597 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20597 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20597 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763370 () Bool)

(declare-fun res!516506 () Bool)

(declare-fun e!425339 () Bool)

(assert (=> b!763370 (=> (not res!516506) (not e!425339))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!763370 (= res!516506 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20176 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763371 () Bool)

(declare-fun e!425338 () Bool)

(assert (=> b!763371 (= e!425337 e!425338)))

(declare-fun res!516502 () Bool)

(assert (=> b!763371 (=> (not res!516502) (not e!425338))))

(declare-datatypes ((SeekEntryResult!7783 0))(
  ( (MissingZero!7783 (index!33499 (_ BitVec 32))) (Found!7783 (index!33500 (_ BitVec 32))) (Intermediate!7783 (undefined!8595 Bool) (index!33501 (_ BitVec 32)) (x!64428 (_ BitVec 32))) (Undefined!7783) (MissingVacant!7783 (index!33502 (_ BitVec 32))) )
))
(declare-fun lt!339780 () SeekEntryResult!7783)

(assert (=> b!763371 (= res!516502 (or (= lt!339780 (MissingZero!7783 i!1173)) (= lt!339780 (MissingVacant!7783 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42144 (_ BitVec 32)) SeekEntryResult!7783)

(assert (=> b!763371 (= lt!339780 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!763372 () Bool)

(assert (=> b!763372 (= e!425338 e!425339)))

(declare-fun res!516497 () Bool)

(assert (=> b!763372 (=> (not res!516497) (not e!425339))))

(declare-fun lt!339781 () SeekEntryResult!7783)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42144 (_ BitVec 32)) SeekEntryResult!7783)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763372 (= res!516497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20176 a!3186) j!159) mask!3328) (select (arr!20176 a!3186) j!159) a!3186 mask!3328) lt!339781))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763372 (= lt!339781 (Intermediate!7783 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763373 () Bool)

(declare-fun res!516500 () Bool)

(assert (=> b!763373 (=> (not res!516500) (not e!425337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763373 (= res!516500 (validKeyInArray!0 (select (arr!20176 a!3186) j!159)))))

(declare-fun b!763374 () Bool)

(declare-fun res!516498 () Bool)

(assert (=> b!763374 (=> (not res!516498) (not e!425337))))

(assert (=> b!763374 (= res!516498 (validKeyInArray!0 k0!2102))))

(declare-fun b!763375 () Bool)

(declare-fun res!516507 () Bool)

(assert (=> b!763375 (=> (not res!516507) (not e!425337))))

(declare-fun arrayContainsKey!0 (array!42144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763375 (= res!516507 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763377 () Bool)

(declare-fun res!516503 () Bool)

(assert (=> b!763377 (=> (not res!516503) (not e!425338))))

(declare-datatypes ((List!14231 0))(
  ( (Nil!14228) (Cons!14227 (h!15311 (_ BitVec 64)) (t!20554 List!14231)) )
))
(declare-fun arrayNoDuplicates!0 (array!42144 (_ BitVec 32) List!14231) Bool)

(assert (=> b!763377 (= res!516503 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14228))))

(declare-fun b!763378 () Bool)

(declare-fun res!516504 () Bool)

(assert (=> b!763378 (=> (not res!516504) (not e!425338))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!763378 (= res!516504 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20597 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20597 a!3186))))))

(declare-fun b!763379 () Bool)

(declare-fun res!516496 () Bool)

(assert (=> b!763379 (=> (not res!516496) (not e!425339))))

(declare-fun e!425336 () Bool)

(assert (=> b!763379 (= res!516496 e!425336)))

(declare-fun c!83823 () Bool)

(assert (=> b!763379 (= c!83823 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763380 () Bool)

(declare-fun res!516505 () Bool)

(assert (=> b!763380 (=> (not res!516505) (not e!425338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42144 (_ BitVec 32)) Bool)

(assert (=> b!763380 (= res!516505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763381 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42144 (_ BitVec 32)) SeekEntryResult!7783)

(assert (=> b!763381 (= e!425336 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20176 a!3186) j!159) a!3186 mask!3328) (Found!7783 j!159)))))

(declare-fun b!763382 () Bool)

(assert (=> b!763382 (= e!425336 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20176 a!3186) j!159) a!3186 mask!3328) lt!339781))))

(declare-fun b!763376 () Bool)

(assert (=> b!763376 (= e!425339 false)))

(declare-fun lt!339779 () SeekEntryResult!7783)

(declare-fun lt!339784 () array!42144)

(declare-fun lt!339783 () (_ BitVec 64))

(assert (=> b!763376 (= lt!339779 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339783 lt!339784 mask!3328))))

(declare-fun lt!339782 () SeekEntryResult!7783)

(assert (=> b!763376 (= lt!339782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339783 mask!3328) lt!339783 lt!339784 mask!3328))))

(assert (=> b!763376 (= lt!339783 (select (store (arr!20176 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!763376 (= lt!339784 (array!42145 (store (arr!20176 a!3186) i!1173 k0!2102) (size!20597 a!3186)))))

(declare-fun res!516499 () Bool)

(assert (=> start!66286 (=> (not res!516499) (not e!425337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66286 (= res!516499 (validMask!0 mask!3328))))

(assert (=> start!66286 e!425337))

(assert (=> start!66286 true))

(declare-fun array_inv!15950 (array!42144) Bool)

(assert (=> start!66286 (array_inv!15950 a!3186)))

(assert (= (and start!66286 res!516499) b!763369))

(assert (= (and b!763369 res!516501) b!763373))

(assert (= (and b!763373 res!516500) b!763374))

(assert (= (and b!763374 res!516498) b!763375))

(assert (= (and b!763375 res!516507) b!763371))

(assert (= (and b!763371 res!516502) b!763380))

(assert (= (and b!763380 res!516505) b!763377))

(assert (= (and b!763377 res!516503) b!763378))

(assert (= (and b!763378 res!516504) b!763372))

(assert (= (and b!763372 res!516497) b!763370))

(assert (= (and b!763370 res!516506) b!763379))

(assert (= (and b!763379 c!83823) b!763382))

(assert (= (and b!763379 (not c!83823)) b!763381))

(assert (= (and b!763379 res!516496) b!763376))

(declare-fun m!709921 () Bool)

(assert (=> b!763381 m!709921))

(assert (=> b!763381 m!709921))

(declare-fun m!709923 () Bool)

(assert (=> b!763381 m!709923))

(declare-fun m!709925 () Bool)

(assert (=> start!66286 m!709925))

(declare-fun m!709927 () Bool)

(assert (=> start!66286 m!709927))

(declare-fun m!709929 () Bool)

(assert (=> b!763380 m!709929))

(declare-fun m!709931 () Bool)

(assert (=> b!763370 m!709931))

(declare-fun m!709933 () Bool)

(assert (=> b!763371 m!709933))

(declare-fun m!709935 () Bool)

(assert (=> b!763376 m!709935))

(declare-fun m!709937 () Bool)

(assert (=> b!763376 m!709937))

(declare-fun m!709939 () Bool)

(assert (=> b!763376 m!709939))

(declare-fun m!709941 () Bool)

(assert (=> b!763376 m!709941))

(assert (=> b!763376 m!709939))

(declare-fun m!709943 () Bool)

(assert (=> b!763376 m!709943))

(assert (=> b!763382 m!709921))

(assert (=> b!763382 m!709921))

(declare-fun m!709945 () Bool)

(assert (=> b!763382 m!709945))

(declare-fun m!709947 () Bool)

(assert (=> b!763375 m!709947))

(declare-fun m!709949 () Bool)

(assert (=> b!763374 m!709949))

(assert (=> b!763373 m!709921))

(assert (=> b!763373 m!709921))

(declare-fun m!709951 () Bool)

(assert (=> b!763373 m!709951))

(declare-fun m!709953 () Bool)

(assert (=> b!763377 m!709953))

(assert (=> b!763372 m!709921))

(assert (=> b!763372 m!709921))

(declare-fun m!709955 () Bool)

(assert (=> b!763372 m!709955))

(assert (=> b!763372 m!709955))

(assert (=> b!763372 m!709921))

(declare-fun m!709957 () Bool)

(assert (=> b!763372 m!709957))

(check-sat (not b!763372) (not b!763377) (not b!763380) (not b!763376) (not b!763371) (not start!66286) (not b!763381) (not b!763373) (not b!763375) (not b!763374) (not b!763382))
(check-sat)
